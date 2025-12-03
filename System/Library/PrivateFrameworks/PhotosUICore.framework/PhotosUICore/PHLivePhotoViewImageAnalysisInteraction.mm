@interface PHLivePhotoViewImageAnalysisInteraction
- (BOOL)livePhotoView:(id)view canBeginInteractivePlaybackAtPoint:(CGPoint)point inView:(id)inView;
- (PHLivePhotoView)livePhotoView;
- (_TtC12PhotosUICore39PHLivePhotoViewImageAnalysisInteraction)init;
- (void)imageAnalysisInteraction:(id)interaction livePhotoShouldPlay:(BOOL)play;
@end

@implementation PHLivePhotoViewImageAnalysisInteraction

- (PHLivePhotoView)livePhotoView
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)livePhotoView:(id)view canBeginInteractivePlaybackAtPoint:(CGPoint)point inView:(id)inView
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  inViewCopy = inView;
  selfCopy = self;
  v12 = sub_1A4424AB0(inViewCopy, x, y);

  return v12 & 1;
}

- (_TtC12PhotosUICore39PHLivePhotoViewImageAnalysisInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)imageAnalysisInteraction:(id)interaction livePhotoShouldPlay:(BOOL)play
{
  playCopy = play;
  v5 = *((*MEMORY[0x1E69E7D40] & *self) + 0x60);
  selfCopy = self;
  v6 = v5();
  if (v6)
  {
    v7 = &selRef_livePhotoViewInteractionStartPlayback_;
    if (!playCopy)
    {
      v7 = &selRef_livePhotoViewInteractionStopPlayback_;
    }

    v8 = v6;
    [v6 *v7];
  }
}

@end