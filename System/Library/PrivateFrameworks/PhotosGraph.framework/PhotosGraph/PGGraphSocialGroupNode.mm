@interface PGGraphSocialGroupNode
+ (MARelation)memberOfSocialGroup;
+ (NSArray)importanceSortDescriptors;
+ (id)filter;
+ (id)filterWithSocialGroupIdentifier:(int64_t)a3;
+ (id)memberSortDescriptors;
+ (id)momentOfSocialGroup;
+ (int64_t)identifierForMemberNodes:(id)a3;
- (BOOL)hasProperties:(id)a3;
- (BOOL)isFrequentSocialGroup;
- (NSArray)sortedMemberNodes;
- (NSSet)memberNodes;
- (NSSet)personNodes;
- (NSSet)petNodes;
- (NSString)description;
- (NSString)featureIdentifier;
- (PGGraphSocialGroupNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (PGGraphSocialGroupNode)initWithSocialGroupIdentifier:(int64_t)a3 importance:(double)a4 isUserVerified:(BOOL)a5;
- (PGGraphSocialGroupNodeCollection)collection;
- (id)persistedUUID;
- (id)propertyDictionary;
- (id)socialGroupNameWithServiceManager:(id)a3;
- (unint64_t)rankInGraph:(id)a3;
- (void)updatePropertiesWithPersistedSocialGroup:(id)a3 graph:(id)a4;
@end

@implementation PGGraphSocialGroupNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PGGraphSocialGroupNode *)self UUID];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, v6];

  return v7;
}

- (BOOL)isFrequentSocialGroup
{
  v2 = [(PGGraphSocialGroupNode *)self collection];
  v3 = [v2 momentNodes];
  v4 = [v3 temporarySet];

  v5 = [PGGraphMomentNode firstAndLastMomentNodesInMomentNodes:v4];
  v6 = [v5 firstObject];
  v7 = [v5 lastObject];
  v8 = [v4 count];
  v9 = [v7 universalEndDate];
  v10 = [v6 universalStartDate];
  [v9 timeIntervalSinceDate:v10];
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

- (id)socialGroupNameWithServiceManager:(id)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
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
  [v5 enumeratePersonsForIdentifiers:v8 usingBlock:v27];

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
      v16 = [v12 firstObject];
      v19 = [v16 objectForKey:@"name"];
      v17 = [v18 stringWithFormat:@"%@ and Me", v19];
    }

    else
    {
      v20 = +[PGLogging sharedLogging];
      v16 = [v20 loggingConnection];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_ERROR, "Social Group has no named people in it", buf, 2u);
      }

      v17 = @"Unnamed Persons";
    }
  }

  else
  {
    v16 = [v12 valueForKey:@"name"];
    v17 = [v16 componentsJoinedByString:@", "];
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
  v2 = [(PGGraphSocialGroupNode *)self collection];
  v3 = [v2 petNodes];
  v4 = [v3 temporarySet];

  return v4;
}

- (NSSet)personNodes
{
  v2 = [(PGGraphSocialGroupNode *)self collection];
  v3 = [v2 personNodes];
  v4 = [v3 temporarySet];

  return v4;
}

- (NSArray)sortedMemberNodes
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(PGGraphSocialGroupNode *)self memberNodes];
  v4 = [PGGraph socialGroupMemberSortDescriptorForSocialGroupNode:self];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [v3 sortedArrayUsingDescriptors:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSSet)memberNodes
{
  v2 = [(PGGraphSocialGroupNode *)self collection];
  v3 = [v2 memberNodes];
  v4 = [v3 temporarySet];

  return v4;
}

- (unint64_t)rankInGraph:(id)a3
{
  v4 = [a3 socialGroupNodesSortedByImportance];
  v5 = [v4 indexOfObject:self];

  return v5;
}

- (void)updatePropertiesWithPersistedSocialGroup:(id)a3 graph:(id)a4
{
  v6 = a4;
  v7 = [a3 uuid];
  [v6 persistModelProperty:v7 forKey:@"persistedUUID" forNodeWithIdentifier:{-[MANode identifier](self, "identifier")}];
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

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 count])
  {
    goto LABEL_11;
  }

  v6 = [v5 objectForKeyedSubscript:@"id"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 intValue];
    if (v8 != [(NSNumber *)self->_uuid intValue])
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
    v14 = [v12 stringValue];
    v15 = v14 == self->_persistedUUID;
  }

  else
  {
LABEL_11:
    v15 = 1;
  }

LABEL_13:

  return v15;
}

- (PGGraphSocialGroupNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v6 = a5;
  v7 = [v6 objectForKeyedSubscript:@"id"];
  v8 = [v7 integerValue];

  v9 = [v6 objectForKeyedSubscript:@"importance"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v6 objectForKeyedSubscript:@"isUserVerified"];
  v13 = [v12 BOOLValue];

  v14 = [v6 objectForKeyedSubscript:@"persistedUUID"];

  v15 = [(PGGraphSocialGroupNode *)self initWithSocialGroupIdentifier:v8 importance:v13 isUserVerified:v11];
  persistedUUID = v15->_persistedUUID;
  v15->_persistedUUID = v14;

  return v15;
}

- (PGGraphSocialGroupNode)initWithSocialGroupIdentifier:(int64_t)a3 importance:(double)a4 isUserVerified:(BOOL)a5
{
  v13.receiver = self;
  v13.super_class = PGGraphSocialGroupNode;
  v8 = [(PGGraphNode *)&v13 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    uuid = v8->_uuid;
    v8->_uuid = v9;

    v8->_importance = a4;
    v8->_isUserVerified = a5;
    persistedUUID = v8->_persistedUUID;
    v8->_persistedUUID = &stru_2843F5C58;
  }

  return v8;
}

+ (MARelation)memberOfSocialGroup
{
  v2 = +[PGGraphBelongsToEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (id)momentOfSocialGroup
{
  v2 = +[PGGraphSocialGroupEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (int64_t)identifierForMemberNodes:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[PGGraphSocialGroupNode memberSortDescriptors];
  v18 = v3;
  v5 = [v3 sortedArrayUsingDescriptors:v4];

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
        v13 = [v12 localIdentifier];
        if ([v13 length])
        {
          v9 ^= [v13 hash];
        }

        else
        {
          v14 = +[PGLogging sharedLogging];
          v15 = [v14 loggingConnection];

          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v12;
            _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "Error: Member node with no UUID: %@", buf, 0xCu);
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

+ (id)filterWithSocialGroupIdentifier:(int64_t)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 filter];
  v10 = @"id";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"SocialGroup" domain:302];

  return v2;
}

@end