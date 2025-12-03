@interface PGGraphBusinessCategoryNode
+ (MARelation)businessOfCategory;
+ (id)filter;
+ (id)filterWithCategories:(id)categories;
+ (id)filterWithCategory:(id)category;
- (PGGraphBusinessCategoryNode)initWithLabel:(id)label;
- (PGGraphBusinessCategoryNodeCollection)collection;
@end

@implementation PGGraphBusinessCategoryNode

- (PGGraphBusinessCategoryNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphBusinessCategoryNodeCollection alloc] initWithNode:self];

  return v2;
}

- (PGGraphBusinessCategoryNode)initWithLabel:(id)label
{
  labelCopy = label;
  v9.receiver = self;
  v9.super_class = PGGraphBusinessCategoryNode;
  v5 = [(PGGraphNode *)&v9 init];
  if (v5)
  {
    v6 = [labelCopy copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

+ (id)filterWithCategory:(id)category
{
  v3 = MEMORY[0x277D22C78];
  categoryCopy = category;
  v5 = [[v3 alloc] initWithLabel:categoryCopy domain:504];

  return v5;
}

+ (id)filterWithCategories:(id)categories
{
  v3 = MEMORY[0x277D22C78];
  categoriesCopy = categories;
  v5 = [v3 alloc];
  v6 = [v5 initWithLabels:categoriesCopy domain:504 properties:MEMORY[0x277CBEC10]];

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
  inRelation = [v2 inRelation];

  return inRelation;
}

@end