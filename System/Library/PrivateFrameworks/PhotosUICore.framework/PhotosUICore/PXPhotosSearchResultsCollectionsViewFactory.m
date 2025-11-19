@interface PXPhotosSearchResultsCollectionsViewFactory
+ (id)createViewWithCollectionSectionProvider:(id)a3 hostViewController:(id)a4 containerInfo:(id)a5 viewDelegate:(id)a6 selectionDelegate:(id)a7;
- (PXPhotosSearchResultsCollectionsViewFactory)init;
@end

@implementation PXPhotosSearchResultsCollectionsViewFactory

+ (id)createViewWithCollectionSectionProvider:(id)a3 hostViewController:(id)a4 containerInfo:(id)a5 viewDelegate:(id)a6 selectionDelegate:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = sub_1A4171AC0(v10, a4, v12, a6);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v13;
}

- (PXPhotosSearchResultsCollectionsViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosSearchResultsCollectionsViewFactory();
  return [(PXPhotosSearchResultsCollectionsViewFactory *)&v3 init];
}

@end