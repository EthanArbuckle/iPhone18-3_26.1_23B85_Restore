@interface SFCollectionStyleRow(SearchUICollectionModel)
- (id)searchUISectionModelForCardRowModels:()SearchUICollectionModel section:expandedCollectionSections:;
@end

@implementation SFCollectionStyleRow(SearchUICollectionModel)

- (id)searchUISectionModelForCardRowModels:()SearchUICollectionModel section:expandedCollectionSections:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[SearchUISectionModel sectionModelWithRows:drawPlattersIfNecessary:section:expandedCollectionSections:](SearchUISectionModel, "sectionModelWithRows:drawPlattersIfNecessary:section:expandedCollectionSections:", v10, [self drawPlattersIfNecessary], v9, v8);

  return v11;
}

@end