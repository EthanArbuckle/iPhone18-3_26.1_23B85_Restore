@interface PGGraphSocialGroupNode
+ (MARelation)memberOfSocialGroup;
+ (NSArray)importanceSortDescriptors;
+ (id)filter;
+ (id)filterWithSocialGroupIdentifier:(int64_t)identifier;
+ (id)memberSortDescriptors;
+ (id)momentOfSocialGroup;
+ (int64_t)identifierForMemberNodes:(id)nodes;
- (BOOL)hasProperties:(id)properties;
- (BOOL)isFrequentSocialGroup;
- (NSArray)sortedMemberNodes;
- (NSSet)memberNodes;
- (NSSet)personNodes;
- (NSSet)petNodes;
- (NSString)description;
- (NSString)featureIdentifier;
- (PGGraphSocialGroupNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphSocialGroupNode)initWithSocialGroupIdentifier:(int64_t)identifier importance:(double)importance isUserVerified:(BOOL)verified;
- (PGGraphSocialGroupNodeCollection)collection;
- (id)persistedUUID;
- (id)propertyDictionary;
- (id)socialGroupNameWithServiceManager:(id)manager;
- (unint64_t)rankInGraph:(id)graph;
- (void)updatePropertiesWithPersistedSocialGroup:(id)group graph:(id)graph;
@end

@implementation PGGraphSocialGroupNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uUID = [(PGGraphSocialGroupNode *)self UUID];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, uUID];

  return v7;
}

- (BOOL)isFrequentSocialGroup
{
  collection = [(PGGraphSocialGroupNode *)self collection];
  momentNodes = [collection momentNodes];
  temporarySet = [momentNodes temporarySet];

  v5 = [PGGraphMomentNode firstAndLastMomentNodesInMomentNodes:temporarySet];
  firstObject = [v5 firstObject];
  lastObject = [v5 lastObject];
  v8 = [temporarySet count];
  universalEndDate = [lastObject universalEndDate];
  universalStartDate = [firstObject universalStartDate];
  [universalEndDate timeIntervalSinceDate:universalStartDate];
  v12 = v11;

  if (v12 >= 31536000.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 31536000.0;
  }

  v14 = v8 / (v13 / 31536000.0) >= 10.0;

  return v14;
}

- (id)socialGroupNameWithServiceManager:(id)manager
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  managerCopy = manager;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __60__PGGraphSocialGroupNode_socialGroupNameWithServiceManager___block_invoke;
  v29[3] = &unk_27888B4A8;
  v8 = v7;
  v30 = v8;
  [(PGGraphSocialGroupNode *)self enumerateMemberNodesUsingBlock:v29];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __60__PGGraphSocialGroupNode_socialGroupNameWithServiceManager___block_invoke_2;
  v27[3] = &unk_278884E78;
  v10 = v9;
  v28 = v10;
  [managerCopy enumeratePersonsForIdentifiers:v8 usingBlock:v27];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __60__PGGraphSocialGroupNode_socialGroupNameWithServiceManager___block_invoke_3;
  v24[3] = &unk_278884EA0;
  v11 = v10;
  v25 = v11;
  v12 = v6;
  v26 = v12;
  [(PGGraphSocialGroupNode *)self enumerateMemberEdgesAndNodesUsingBlock:v24];
  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"importance" ascending:0];
  v31[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [v12 sortUsingDescriptors:v14];

  v15 = [v12 count];
  if (v15 < 2)
  {
    if (v15 == 1)
    {
      v18 = MEMORY[0x277CCACA8];
      firstObject = [v12 firstObject];
      v19 = [firstObject objectForKey:@"name"];
      v17 = [v18 stringWithFormat:@"%@ and Me", v19];
    }

    else
    {
      v20 = +[PGLogging sharedLogging];
      firstObject = [v20 loggingConnection];

      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, firstObject, OS_LOG_TYPE_ERROR, "Social Group has no named people in it", buf, 2u);
      }

      v17 = @"Unnamed Persons";
    }
  }

  else
  {
    firstObject = [v12 valueForKey:@"name"];
    v17 = [firstObject componentsJoinedByString:@", "];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

void __60__PGGraphSocialGroupNode_socialGroupNameWithServiceManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contactIdentifier];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v5 = [v3 length];
    v4 = v6;
    if (v5)
    {
      [*(a1 + 32) addObject:v6];
      v4 = v6;
    }
  }
}

void __60__PGGraphSocialGroupNode_socialGroupNameWithServiceManager___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 firstName];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v8 CNIdentifier];
    [v4 setObject:v3 forKeyedSubscript:v5];
  }

  else
  {
    v5 = [v8 fullName];
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [v8 CNIdentifier];
      [v6 setObject:v5 forKeyedSubscript:v7];
    }
  }
}

void __60__PGGraphSocialGroupNode_socialGroupNameWithServiceManager___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 contactIdentifier];
  v8 = v7;
  if (v7 && [v7 length])
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      if ([v9 length])
      {
LABEL_10:
        v13 = *(a1 + 40);
        v18[0] = @"name";
        v18[1] = @"importance";
        v19[0] = v11;
        v14 = MEMORY[0x277CCABB0];
        [v5 importance];
        v15 = [v14 numberWithDouble:?];
        v19[1] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
        [v13 addObject:v16];

        goto LABEL_11;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 name];

  if (v11 && [v11 length])
  {
    goto LABEL_10;
  }

  v12 = [v6 localIdentifier];

  v11 = v12;
  if (v12)
  {
    goto LABEL_10;
  }

LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
}

- (NSSet)petNodes
{
  collection = [(PGGraphSocialGroupNode *)self collection];
  petNodes = [collection petNodes];
  temporarySet = [petNodes temporarySet];

  return temporarySet;
}

- (NSSet)personNodes
{
  collection = [(PGGraphSocialGroupNode *)self collection];
  personNodes = [collection personNodes];
  temporarySet = [personNodes temporarySet];

  return temporarySet;
}

- (NSArray)sortedMemberNodes
{
  v9[1] = *MEMORY[0x277D85DE8];
  memberNodes = [(PGGraphSocialGroupNode *)self memberNodes];
  v4 = [PGGraph socialGroupMemberSortDescriptorForSocialGroupNode:self];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [memberNodes sortedArrayUsingDescriptors:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSSet)memberNodes
{
  collection = [(PGGraphSocialGroupNode *)self collection];
  memberNodes = [collection memberNodes];
  temporarySet = [memberNodes temporarySet];

  return temporarySet;
}

- (unint64_t)rankInGraph:(id)graph
{
  socialGroupNodesSortedByImportance = [graph socialGroupNodesSortedByImportance];
  v5 = [socialGroupNodesSortedByImportance indexOfObject:self];

  return v5;
}

- (void)updatePropertiesWithPersistedSocialGroup:(id)group graph:(id)graph
{
  graphCopy = graph;
  uuid = [group uuid];
  [graphCopy persistModelProperty:uuid forKey:@"persistedUUID" forNodeWithIdentifier:{-[MANode identifier](self, "identifier")}];
}

- (id)persistedUUID
{
  persistedUUID = [(NSString *)self->_persistedUUID length];
  if (persistedUUID)
  {
    persistedUUID = self->_persistedUUID;
  }

  return persistedUUID;
}

- (PGGraphSocialGroupNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphSocialGroupNodeCollection alloc] initWithNode:self];

  return v2;
}

- (NSString)description
{
  if (self->_isUserVerified)
  {
    v2 = @"user-verified";
  }

  else
  {
    v2 = @"graph-verified";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"PGGraphSocialGroupNode (%@, %f, %@) persistedUUID: %@", self->_uuid, *&self->_importance, v2, self->_persistedUUID];
}

- (id)propertyDictionary
{
  v11[4] = *MEMORY[0x277D85DE8];
  uuid = self->_uuid;
  v10[0] = @"id";
  v10[1] = @"persistedUUID";
  persistedUUID = self->_persistedUUID;
  if (!persistedUUID)
  {
    persistedUUID = &stru_2843F5C58;
  }

  v11[0] = uuid;
  v11[1] = persistedUUID;
  v10[2] = @"importance";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_importance];
  v11[2] = v5;
  v10[3] = @"isUserVerified";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isUserVerified];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (!propertiesCopy || ![propertiesCopy count])
  {
    goto LABEL_11;
  }

  v6 = [v5 objectForKeyedSubscript:@"id"];
  v7 = v6;
  if (v6)
  {
    intValue = [v6 intValue];
    if (intValue != [(NSNumber *)self->_uuid intValue])
    {
      goto LABEL_12;
    }
  }

  v9 = [v5 objectForKeyedSubscript:@"importance"];
  v7 = v9;
  if (v9)
  {
    [v9 doubleValue];
    if (v10 != self->_importance)
    {
      goto LABEL_12;
    }
  }

  v11 = [v5 objectForKeyedSubscript:@"isUserVerified"];
  v7 = v11;
  if (v11)
  {
    if (self->_isUserVerified != [v11 BOOLValue])
    {
LABEL_12:

      v15 = 0;
      goto LABEL_13;
    }
  }

  v12 = [v5 objectForKeyedSubscript:@"persistedUUID"];
  if (v12)
  {
    v13 = v12;
    stringValue = [v12 stringValue];
    v15 = stringValue == self->_persistedUUID;
  }

  else
  {
LABEL_11:
    v15 = 1;
  }

LABEL_13:

  return v15;
}

- (PGGraphSocialGroupNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  v7 = [propertiesCopy objectForKeyedSubscript:@"id"];
  integerValue = [v7 integerValue];

  v9 = [propertiesCopy objectForKeyedSubscript:@"importance"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [propertiesCopy objectForKeyedSubscript:@"isUserVerified"];
  bOOLValue = [v12 BOOLValue];

  v14 = [propertiesCopy objectForKeyedSubscript:@"persistedUUID"];

  v15 = [(PGGraphSocialGroupNode *)self initWithSocialGroupIdentifier:integerValue importance:bOOLValue isUserVerified:v11];
  persistedUUID = v15->_persistedUUID;
  v15->_persistedUUID = v14;

  return v15;
}

- (PGGraphSocialGroupNode)initWithSocialGroupIdentifier:(int64_t)identifier importance:(double)importance isUserVerified:(BOOL)verified
{
  v13.receiver = self;
  v13.super_class = PGGraphSocialGroupNode;
  v8 = [(PGGraphNode *)&v13 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:identifier];
    uuid = v8->_uuid;
    v8->_uuid = v9;

    v8->_importance = importance;
    v8->_isUserVerified = verified;
    persistedUUID = v8->_persistedUUID;
    v8->_persistedUUID = &stru_2843F5C58;
  }

  return v8;
}

+ (MARelation)memberOfSocialGroup
{
  v2 = +[PGGraphBelongsToEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (id)momentOfSocialGroup
{
  v2 = +[PGGraphSocialGroupEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (int64_t)identifierForMemberNodes:(id)nodes
{
  v26 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v4 = +[PGGraphSocialGroupNode memberSortDescriptors];
  v18 = nodesCopy;
  v5 = [nodesCopy sortedArrayUsingDescriptors:v4];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        localIdentifier = [v12 localIdentifier];
        if ([localIdentifier length])
        {
          v9 ^= [localIdentifier hash];
        }

        else
        {
          v14 = +[PGLogging sharedLogging];
          loggingConnection = [v14 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v12;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error: Member node with no UUID: %@", buf, 0xCu);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)memberSortDescriptors
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"contactIdentifier" ascending:0];
  v7[0] = v2;
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"localIdentifier" ascending:0];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (NSArray)importanceSortDescriptors
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"isUserVerified" ascending:0];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"importance" ascending:{0, v2}];
  v8[1] = v3;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:0];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)filterWithSocialGroupIdentifier:(int64_t)identifier
{
  v11[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v10 = @"id";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:identifier];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [filter filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"SocialGroup" domain:302];

  return v2;
}

@end