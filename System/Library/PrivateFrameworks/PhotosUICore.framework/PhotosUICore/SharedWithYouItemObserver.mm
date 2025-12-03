@interface SharedWithYouItemObserver
- (_TtC12PhotosUICore25SharedWithYouItemObserver)init;
- (void)assetFetchResultProvider:(id)provider didChangeAssetFetchResult:(id)result forAssetCollection:(id)collection;
- (void)socialLayerHighlightProvider:(id)provider didChangeSocialLayerHighlight:(id)highlight forAsset:(id)asset;
@end

@implementation SharedWithYouItemObserver

- (void)assetFetchResultProvider:(id)provider didChangeAssetFetchResult:(id)result forAssetCollection:(id)collection
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A414618C(result);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)socialLayerHighlightProvider:(id)provider didChangeSocialLayerHighlight:(id)highlight forAsset:(id)asset
{
  highlightCopy = highlight;
  selfCopy = self;
  sub_1A4144034(highlight);
}

- (_TtC12PhotosUICore25SharedWithYouItemObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end