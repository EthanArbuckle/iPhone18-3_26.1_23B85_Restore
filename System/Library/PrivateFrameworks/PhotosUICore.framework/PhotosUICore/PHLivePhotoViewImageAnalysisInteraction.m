@interface PHLivePhotoViewImageAnalysisInteraction
- (BOOL)livePhotoView:(id)a3 canBeginInteractivePlaybackAtPoint:(CGPoint)a4 inView:(id)a5;
- (PHLivePhotoView)livePhotoView;
- (_TtC12PhotosUICore39PHLivePhotoViewImageAnalysisInteraction)init;
- (void)imageAnalysisInteraction:(id)a3 livePhotoShouldPlay:(BOOL)a4;
@end

@implementation PHLivePhotoViewImageAnalysisInteraction

- (PHLivePhotoView)livePhotoView
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)livePhotoView:(id)a3 canBeginInteractivePlaybackAtPoint:(CGPoint)a4 inView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  v11 = self;
  v12 = sub_1A4424AB0(v10, x, y);

  return v12 & 1;
}

- (_TtC12PhotosUICore39PHLivePhotoViewImageAnalysisInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)imageAnalysisInteraction:(id)a3 livePhotoShouldPlay:(BOOL)a4
{
  v4 = a4;
  v5 = *((*MEMORY[0x1E69E7D40] & *self) + 0x60);
  v9 = self;
  v6 = v5();
  if (v6)
  {
    v7 = &selRef_livePhotoViewInteractionStartPlayback_;
    if (!v4)
    {
      v7 = &selRef_livePhotoViewInteractionStopPlayback_;
    }

    v8 = v6;
    [v6 *v7];
  }
}

@end