@interface PXPhotosSearchResultsCollectionsViewFactory
+ (id)createViewWithCollectionSectionProvider:(id)provider hostViewController:(id)controller containerInfo:(id)info viewDelegate:(id)delegate selectionDelegate:(id)selectionDelegate;
- (PXPhotosSearchResultsCollectionsViewFactory)init;
@end

@implementation PXPhotosSearchResultsCollectionsViewFactory

+ (id)createViewWithCollectionSectionProvider:(id)provider hostViewController:(id)controller containerInfo:(id)info viewDelegate:(id)delegate selectionDelegate:(id)selectionDelegate
{
  providerCopy = provider;
  controllerCopy = controller;
  infoCopy = info;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = sub_1A4171AC0(providerCopy, controller, infoCopy, delegate);

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