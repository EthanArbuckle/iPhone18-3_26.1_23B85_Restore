@interface PGGraphBusinessCategoryNode
+ (MARelation)businessOfCategory;
+ (id)filter;
+ (id)filterWithCategories:(id)a3;
+ (id)filterWithCategory:(id)a3;
- (PGGraphBusinessCategoryNode)initWithLabel:(id)a3;
- (PGGraphBusinessCategoryNodeCollection)collection;
@end

@implementation PGGraphBusinessCategoryNode

- (PGGraphBusinessCategoryNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphBusinessCategoryNodeCollection alloc] initWithNode:self];

  return v2;
}

- (PGGraphBusinessCategoryNode)initWithLabel:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphBusinessCategoryNode;
  v5 = [(PGGraphNode *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

+ (id)filterWithCategory:(id)a3
{
  v3 = MEMORY[0x277D22C78];
  v4 = a3;
  v5 = [[v3 alloc] initWithLabel:v4 domain:504];

  return v5;
}

+ (id)filterWithCategories:(id)a3
{
  v3 = MEMORY[0x277D22C78];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithLabels:v4 domain:504 properties:MEMORY[0x277CBEC10]];

  return v6;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:504];

  return v2;
}

+ (MARelation)businessOfCategory
{
  v2 = +[PGGraphBusinessCategoryEdge filter];
  v3 = [v2 inRelation];

  return v3;
}

@end