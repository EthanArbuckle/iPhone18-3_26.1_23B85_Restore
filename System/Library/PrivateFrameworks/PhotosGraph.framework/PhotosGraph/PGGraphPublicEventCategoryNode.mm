@interface PGGraphPublicEventCategoryNode
+ (MARelation)publicEventOfCategory;
+ (id)filter;
+ (id)filterWithCategories:(id)a3;
+ (id)filterWithCategory:(id)a3;
- (BOOL)hasProperties:(id)a3;
- (NSString)description;
- (PGGraphPublicEventCategoryNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (PGGraphPublicEventCategoryNode)initWithLabel:(id)a3 localizedName:(id)a4;
- (PGGraphPublicEventCategoryNodeCollection)collection;
- (id)associatedNodesForRemoval;
- (id)propertyDictionary;
@end

@implementation PGGraphPublicEventCategoryNode

- (id)associatedNodesForRemoval
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__PGGraphPublicEventCategoryNode_associatedNodesForRemoval__block_invoke;
  v6[3] = &unk_27888B590;
  v4 = v3;
  v7 = v4;
  [(MANode *)self enumerateNeighborEdgesAndNodesThroughEdgesWithLabel:@"LOCALIZED_SUBCATEGORY" domain:902 usingBlock:v6];

  return v4;
}

void __59__PGGraphPublicEventCategoryNode_associatedNodesForRemoval__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 countOfEdgesWithLabel:@"LOCALIZED_SUBCATEGORY" domain:902] == 1)
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphPublicEventCategoryNode;
  v4 = [(PGGraphOptimizedNode *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ (%@)", v4, self->_localizedName];

  return v5;
}

- (id)propertyDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  localizedName = self->_localizedName;
  if (localizedName)
  {
    v6 = @"lcln";
    v7[0] = localizedName;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEC10];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectForKeyedSubscript:@"lcln"];
    v7 = v6;
    v8 = !v6 || [v6 isEqual:self->_localizedName];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (PGGraphPublicEventCategoryNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphPublicEventCategoryNodeCollection alloc] initWithNode:self];

  return v2;
}

- (PGGraphPublicEventCategoryNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v7 = a3;
  v8 = [a5 objectForKeyedSubscript:@"lcln"];
  v9 = [(PGGraphPublicEventCategoryNode *)self initWithLabel:v7 localizedName:v8];

  return v9;
}

- (PGGraphPublicEventCategoryNode)initWithLabel:(id)a3 localizedName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PGGraphPublicEventCategoryNode;
  v8 = [(PGGraphNode *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    label = v8->_label;
    v8->_label = v9;

    objc_storeStrong(&v8->_localizedName, a4);
  }

  return v8;
}

+ (MARelation)publicEventOfCategory
{
  v2 = +[PGGraphPublicEventCategoryEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

+ (id)filterWithCategories:(id)a3
{
  v3 = MEMORY[0x277D22C78];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithLabels:v4 domain:901 properties:MEMORY[0x277CBEC10]];

  return v6;
}

+ (id)filterWithCategory:(id)a3
{
  v3 = MEMORY[0x277D22C78];
  v4 = a3;
  v5 = [[v3 alloc] initWithLabel:v4 domain:901];

  return v5;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:901];

  return v2;
}

@end