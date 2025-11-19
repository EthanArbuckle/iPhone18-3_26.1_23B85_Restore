@interface SharedWithYouItemObserver
- (_TtC12PhotosUICore25SharedWithYouItemObserver)init;
- (void)assetFetchResultProvider:(id)a3 didChangeAssetFetchResult:(id)a4 forAssetCollection:(id)a5;
- (void)socialLayerHighlightProvider:(id)a3 didChangeSocialLayerHighlight:(id)a4 forAsset:(id)a5;
@end

@implementation SharedWithYouItemObserver

- (void)assetFetchResultProvider:(id)a3 didChangeAssetFetchResult:(id)a4 forAssetCollection:(id)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  sub_1A414618C(a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)socialLayerHighlightProvider:(id)a3 didChangeSocialLayerHighlight:(id)a4 forAsset:(id)a5
{
  v7 = a4;
  v8 = self;
  sub_1A4144034(a4);
}

- (_TtC12PhotosUICore25SharedWithYouItemObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end