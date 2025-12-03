@interface PGGraphPublicEventCategoryNode
+ (MARelation)publicEventOfCategory;
+ (id)filter;
+ (id)filterWithCategories:(id)categories;
+ (id)filterWithCategory:(id)category;
- (BOOL)hasProperties:(id)properties;
- (NSString)description;
- (PGGraphPublicEventCategoryNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphPublicEventCategoryNode)initWithLabel:(id)label localizedName:(id)name;
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

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
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

- (PGGraphPublicEventCategoryNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  labelCopy = label;
  v8 = [properties objectForKeyedSubscript:@"lcln"];
  v9 = [(PGGraphPublicEventCategoryNode *)self initWithLabel:labelCopy localizedName:v8];

  return v9;
}

- (PGGraphPublicEventCategoryNode)initWithLabel:(id)label localizedName:(id)name
{
  labelCopy = label;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = PGGraphPublicEventCategoryNode;
  v8 = [(PGGraphNode *)&v12 init];
  if (v8)
  {
    v9 = [labelCopy copy];
    label = v8->_label;
    v8->_label = v9;

    objc_storeStrong(&v8->_localizedName, name);
  }

  return v8;
}

+ (MARelation)publicEventOfCategory
{
  v2 = +[PGGraphPublicEventCategoryEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (id)filterWithCategories:(id)categories
{
  v3 = MEMORY[0x277D22C78];
  categoriesCopy = categories;
  v5 = [v3 alloc];
  v6 = [v5 initWithLabels:categoriesCopy domain:901 properties:MEMORY[0x277CBEC10]];

  return v6;
}

+ (id)filterWithCategory:(id)category
{
  v3 = MEMORY[0x277D22C78];
  categoryCopy = category;
  v5 = [[v3 alloc] initWithLabel:categoryCopy domain:901];

  return v5;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:901];

  return v2;
}

@end