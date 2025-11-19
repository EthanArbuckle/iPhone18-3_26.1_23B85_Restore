@interface HighlightsHitTestResult
- (_TtC12PhotosUICore23HighlightsHitTestResult)initWithSpriteReference:(id)a3 layout:(id)a4 identifier:(id)a5 userDataProvider:(id)a6;
- (id)px_photosViewTouchableHitTestResultTouchAction;
@end

@implementation HighlightsHitTestResult

- (id)px_photosViewTouchableHitTestResultTouchAction
{
  v2 = *(self + OBJC_IVAR____TtC12PhotosUICore23HighlightsHitTestResult_px_photosViewTouchableHitTestResultTouchAction + 8);
  v5[4] = *(self + OBJC_IVAR____TtC12PhotosUICore23HighlightsHitTestResult_px_photosViewTouchableHitTestResultTouchAction);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1A46B6240;
  v5[3] = &block_descriptor_4;
  v3 = _Block_copy(v5);

  return v3;
}

- (_TtC12PhotosUICore23HighlightsHitTestResult)initWithSpriteReference:(id)a3 layout:(id)a4 identifier:(id)a5 userDataProvider:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end