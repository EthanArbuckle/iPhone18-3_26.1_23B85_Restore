@interface PGGraphPublicEventNode
+ (MARelation)businessOfPublicEvent;
+ (MARelation)categoryOfPublicEvent;
+ (MARelation)momentOfPublicEvent;
+ (MARelation)performerOfPublicEvent;
+ (id)filter;
- (BOOL)hasProperties:(id)a3;
- (NSSet)categories;
- (NSSet)localizedCategories;
- (NSSet)performers;
- (NSSet)preciseLocalizedCategoryNames;
- (NSString)description;
- (NSString)featureIdentifier;
- (PGGraphBusinessNode)businessNode;
- (PGGraphPublicEventNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (PGGraphPublicEventNode)initWithMUID:(unint64_t)a3 name:(id)a4 expectedAttendance:(int64_t)a5 publicEventIdentifier:(id)a6;
- (PGGraphPublicEventNodeCollection)collection;
- (PHPublicEventInfo)publicEventInfo;
- (PPNamedEntity)pg_namedEntity;
- (id)associatedNodesForRemoval;
- (id)keywordDescription;
- (id)propertyDictionary;
- (int)_eventInfoCategory;
@end

@implementation PGGraphPublicEventNode

- (int)_eventInfoCategory
{
  v20 = *MEMORY[0x277D85DE8];
  if (_eventInfoCategory_onceToken != -1)
  {
    dispatch_once(&_eventInfoCategory_onceToken, &__block_literal_global_3967);
  }

  v3 = [(PGGraphPublicEventNode *)self categories];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [_eventInfoCategory_eventInfoCategoryByPublicEventCategory objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * i), v15}];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    if ([v4 containsObject:&unk_284482268])
    {
      v11 = 5;
    }

    else if ([v4 containsObject:&unk_284482298])
    {
      v11 = 7;
    }

    else
    {
      v12 = [v4 anyObject];
      v11 = [v12 intValue];
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

void __61__PGGraphPublicEventNode_PublicEventInfo___eventInfoCategory__block_invoke()
{
  v12[8] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D27780] appleEvents];
  v11[0] = v0;
  v12[0] = &unk_284482208;
  v1 = [MEMORY[0x277D27780] artsAndMuseums];
  v11[1] = v1;
  v12[1] = &unk_284482220;
  v2 = [MEMORY[0x277D27780] dance];
  v11[2] = v2;
  v12[2] = &unk_284482238;
  v3 = [MEMORY[0x277D27780] festivalsAndFairs];
  v11[3] = v3;
  v12[3] = &unk_284482250;
  v4 = [MEMORY[0x277D27780] musicConcerts];
  v11[4] = v4;
  v12[4] = &unk_284482268;
  v5 = [MEMORY[0x277D27780] nightLife];
  v11[5] = v5;
  v12[5] = &unk_284482280;
  v6 = [MEMORY[0x277D27780] sports];
  v11[6] = v6;
  v12[6] = &unk_284482298;
  v7 = [MEMORY[0x277D27780] theater];
  v11[7] = v7;
  v12[7] = &unk_2844822B0;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:8];
  v9 = _eventInfoCategory_eventInfoCategoryByPublicEventCategory;
  _eventInfoCategory_eventInfoCategoryByPublicEventCategory = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (PHPublicEventInfo)publicEventInfo
{
  v3 = [(PGGraphPublicEventNode *)self eventIdentifier];
  v4 = [v3 isEqualToString:&stru_2843F5C58];

  if (v4)
  {
    v5 = +[PGLogging sharedLogging];
    v6 = [v5 loggingConnection];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v18 = 0;
      v7 = "PGGraphPublicEventNode.publicEventInfo empty public event identifier, returning nil";
      v8 = &v18;
LABEL_8:
      _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, v7, v8, 2u);
    }
  }

  else
  {
    v9 = [(PGGraphPublicEventNode *)self _eventInfoCategory];
    if (v9)
    {
      v10 = v9;
      v11 = objc_alloc(MEMORY[0x277CD9968]);
      v12 = [(PGGraphPublicEventNode *)self eventIdentifier];
      v13 = [(PGGraphPublicEventNode *)self name];
      v14 = [v11 initWithEventID:v12 eventTitle:v13 eventCategory:v10];

      goto LABEL_10;
    }

    v15 = +[PGLogging sharedLogging];
    v6 = [v15 loggingConnection];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v17 = 0;
      v7 = "PGGraphPublicEventNode.publicEventInfo unknown event info category, returning nil";
      v8 = &v17;
      goto LABEL_8;
    }
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (PPNamedEntity)pg_namedEntity
{
  v3 = [(PGGraphPublicEventNode *)self name];
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [(PGGraphPublicEventNode *)self categories];
    v6 = [v5 anyObject];

    v7 = v6;
    if (namedEntityCategoryFromPublicEventCategory_onceToken != -1)
    {
      dispatch_once(&namedEntityCategoryFromPublicEventCategory_onceToken, &__block_literal_global_125);
    }

    v8 = [namedEntityCategoryFromPublicEventCategory_namedEntityCategoryByPublicEventCategory objectForKeyedSubscript:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 unsignedIntegerValue];
    }

    else
    {
      v10 = 2;
    }

    v12 = [MEMORY[0x277CBEAF8] currentLocale];
    v13 = [v12 localeIdentifier];

    v11 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v4 category:v10 language:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PGGraphPublicEventNode *)self name];
  v7 = [v3 stringWithFormat:@"%@|%@|%llu", v5, v6, -[PGGraphPublicEventNode muid](self, "muid")];

  return v7;
}

- (id)associatedNodesForRemoval
{
  v3 = [MEMORY[0x277CBEB58] set];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PGGraphPublicEventNode_associatedNodesForRemoval__block_invoke;
  aBlock[3] = &unk_278886B68;
  v4 = v3;
  v16 = v4;
  v5 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__PGGraphPublicEventNode_associatedNodesForRemoval__block_invoke_2;
  v13[3] = &unk_278886B90;
  v6 = v5;
  v14 = v6;
  [(PGGraphPublicEventNode *)self enumeratePublicEventCategoryNodesUsingBlock:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__PGGraphPublicEventNode_associatedNodesForRemoval__block_invoke_3;
  v11[3] = &unk_278886BB8;
  v12 = v6;
  v7 = v6;
  [(PGGraphPublicEventNode *)self enumeratePerformerNodesUsingBlock:v11];
  v8 = v12;
  v9 = v4;

  return v4;
}

void __51__PGGraphPublicEventNode_associatedNodesForRemoval__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = a2;
  v7 = a3;
  if (v8 && [v8 countOfEdgesWithLabel:v7 domain:a4] == 1)
  {
    [*(a1 + 32) addObject:v8];
  }
}

- (id)keywordDescription
{
  v3 = [(PGGraphPublicEventNode *)self categories];
  v4 = [v3 allObjects];

  v5 = [(PGGraphPublicEventNode *)self performers];
  v6 = [v5 allObjects];

  v7 = MEMORY[0x277CCACA8];
  v8 = [(PGGraphPublicEventNode *)self name];
  v9 = [v4 componentsJoinedByString:{@", "}];
  v10 = [v6 componentsJoinedByString:{@", "}];
  v11 = [v7 stringWithFormat:@"%@ [%@] [%@]", v8, v9, v10];

  return v11;
}

- (NSSet)preciseLocalizedCategoryNames
{
  v3 = [MEMORY[0x277CBEB58] set];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__PGGraphPublicEventNode_preciseLocalizedCategoryNames__block_invoke;
  v8[3] = &unk_278886B40;
  v4 = v3;
  v9 = v4;
  v10 = v11;
  [(PGGraphPublicEventNode *)self enumerateLocalizedSubcategoryNodesUsingBlock:v8];
  if (![v4 count])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__PGGraphPublicEventNode_preciseLocalizedCategoryNames__block_invoke_2;
    v6[3] = &unk_278887118;
    v7 = v4;
    [(PGGraphPublicEventNode *)self enumeratePublicEventCategoryNodesUsingBlock:v6];
  }

  _Block_object_dispose(v11, 8);

  return v4;
}

void __55__PGGraphPublicEventNode_preciseLocalizedCategoryNames__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 level];
  if (![*(a1 + 32) count] || (v4 = *(*(*(a1 + 40) + 8) + 24), v3 > v4))
  {
    [*(a1 + 32) removeAllObjects];
    *(*(*(a1 + 40) + 8) + 24) = v3;
LABEL_4:
    v5 = *(a1 + 32);
    v6 = [v8 label];
    [v5 addObject:v6];

    v7 = v8;
    goto LABEL_5;
  }

  v7 = v8;
  if (v3 == v4)
  {
    goto LABEL_4;
  }

LABEL_5:
}

void __55__PGGraphPublicEventNode_preciseLocalizedCategoryNames__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 localizedName];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (PGGraphBusinessNode)businessNode
{
  v2 = [(PGGraphPublicEventNode *)self collection];
  v3 = [v2 businessNodes];
  v4 = [v3 anyNode];

  return v4;
}

- (NSSet)performers
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(PGGraphPublicEventNode *)self collection];
  v5 = [v4 performerNodes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__PGGraphPublicEventNode_performers__block_invoke;
  v8[3] = &unk_27888B480;
  v6 = v3;
  v9 = v6;
  [v5 enumerateStringPropertyValuesForKey:@"name" withBlock:v8];

  return v6;
}

void __36__PGGraphPublicEventNode_performers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v6 = [v4 length];
    v5 = v7;
    if (v6)
    {
      [*(a1 + 32) addObject:v7];
      v5 = v7;
    }
  }
}

- (NSSet)localizedCategories
{
  v3 = [MEMORY[0x277CBEB58] set];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__PGGraphPublicEventNode_localizedCategories__block_invoke;
  v11[3] = &unk_278887118;
  v4 = v3;
  v12 = v4;
  [(PGGraphPublicEventNode *)self enumeratePublicEventCategoryNodesUsingBlock:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__PGGraphPublicEventNode_localizedCategories__block_invoke_2;
  v9[3] = &unk_278886B18;
  v5 = v4;
  v10 = v5;
  [(PGGraphPublicEventNode *)self enumerateLocalizedSubcategoryNodesUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __45__PGGraphPublicEventNode_localizedCategories__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 localizedName];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

void __45__PGGraphPublicEventNode_localizedCategories__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (NSSet)categories
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__PGGraphPublicEventNode_categories__block_invoke;
  v6[3] = &unk_278887118;
  v4 = v3;
  v7 = v4;
  [(PGGraphPublicEventNode *)self enumeratePublicEventCategoryNodesUsingBlock:v6];

  return v4;
}

void __36__PGGraphPublicEventNode_categories__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 label];
  [v2 addObject:v3];
}

- (PGGraphPublicEventNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphPublicEventNodeCollection alloc] initWithNode:self];

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = PGGraphPublicEventNode;
  v4 = [(PGGraphOptimizedNode *)&v9 description];
  v5 = v4;
  if (self->_canUseWithoutBusiness)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v3 stringWithFormat:@"%@ (%@, %llu, %d, %@, %@)", v4, self->_name, self->_muid, self->_expectedAttendance, self->_eventIdentifier, v6];

  return v7;
}

- (id)propertyDictionary
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"id";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_muid];
  name = self->_name;
  v13[0] = v3;
  v13[1] = name;
  v12[1] = @"name";
  v12[2] = @"attdc";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_expectedAttendance];
  eventIdentifier = self->_eventIdentifier;
  v13[2] = v5;
  v13[3] = eventIdentifier;
  v12[3] = @"eventID";
  v12[4] = @"canUseWithoutBusiness";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_canUseWithoutBusiness];
  v13[4] = v7;
  v12[5] = @"supportsEventExperience";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsEventExperience];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectForKeyedSubscript:@"id"];
    v7 = v6;
    if (v6 && [v6 unsignedIntegerValue] != self->_muid)
    {
      goto LABEL_17;
    }

    v8 = [v5 objectForKeyedSubscript:@"name"];
    v7 = v8;
    if (v8)
    {
      if (![v8 isEqual:self->_name])
      {
        goto LABEL_17;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"attdc"];
    v7 = v9;
    if (v9)
    {
      if ([v9 integerValue] != self->_expectedAttendance)
      {
        goto LABEL_17;
      }
    }

    v10 = [v5 objectForKeyedSubscript:@"eventID"];
    v7 = v10;
    if (v10)
    {
      if (![v10 isEqual:self->_eventIdentifier])
      {
        goto LABEL_17;
      }
    }

    v11 = [v5 objectForKeyedSubscript:@"canUseWithoutBusiness"];
    v7 = v11;
    if (v11)
    {
      if (self->_canUseWithoutBusiness != [v11 BOOLValue])
      {
        goto LABEL_17;
      }
    }

    v12 = [v5 objectForKeyedSubscript:@"supportsEventExperience"];
    v7 = v12;
    if (v12 && self->_supportsEventExperience != [v12 BOOLValue])
    {
LABEL_17:
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (PGGraphPublicEventNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v6 = a5;
  v7 = [v6 objectForKeyedSubscript:@"id"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v6 objectForKeyedSubscript:@"name"];
  v10 = [v6 objectForKeyedSubscript:@"attdc"];
  v11 = [v10 integerValue];

  v12 = [v6 objectForKeyedSubscript:@"eventID"];
  v13 = [(PGGraphPublicEventNode *)self initWithMUID:v8 name:v9 expectedAttendance:v11 publicEventIdentifier:v12];
  if (v13)
  {
    if (_os_feature_enabled_impl())
    {
      v14 = [v6 objectForKeyedSubscript:@"supportsEventExperience"];
      v13->_supportsEventExperience = [v14 BOOLValue];

      v15 = [v6 objectForKeyedSubscript:@"canUseWithoutBusiness"];
      v13->_canUseWithoutBusiness = [v15 BOOLValue];
    }

    v16 = v13;
  }

  return v13;
}

- (PGGraphPublicEventNode)initWithMUID:(unint64_t)a3 name:(id)a4 expectedAttendance:(int64_t)a5 publicEventIdentifier:(id)a6
{
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = PGGraphPublicEventNode;
  v13 = [(PGGraphNode *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_muid = a3;
    objc_storeStrong(&v13->_name, a4);
    v14->_expectedAttendance = a5;
    objc_storeStrong(&v14->_eventIdentifier, a6);
  }

  return v14;
}

+ (MARelation)businessOfPublicEvent
{
  v2 = +[PGGraphPublicEventBusinessEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)performerOfPublicEvent
{
  v2 = +[PGGraphPerformerEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (MARelation)momentOfPublicEvent
{
  v2 = +[PGGraphPublicEventEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (MARelation)categoryOfPublicEvent
{
  v2 = +[PGGraphPublicEventCategoryEdge filter];
  v3 = [v2 outRelation];

  return v3;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"PublicEvent" domain:900];

  return v2;
}

@end