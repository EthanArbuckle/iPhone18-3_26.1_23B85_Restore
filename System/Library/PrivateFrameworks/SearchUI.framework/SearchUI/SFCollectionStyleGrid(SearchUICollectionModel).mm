@interface SFCollectionStyleGrid(SearchUICollectionModel)
- (id)searchUISectionModelForCardRowModels:()SearchUICollectionModel section:expandedCollectionSections:;
@end

@implementation SFCollectionStyleGrid(SearchUICollectionModel)

- (id)searchUISectionModelForCardRowModels:()SearchUICollectionModel section:expandedCollectionSections:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[SearchUISectionModel sectionModelWithGridRowModels:numberOfColumns:gridStyle:section:expandedCollectionSections:](SearchUISectionModel, "sectionModelWithGridRowModels:numberOfColumns:gridStyle:section:expandedCollectionSections:", v10, [self numberOfColumns], objc_msgSend(self, "gridStyle"), v9, v8);

  return v11;
}

@end