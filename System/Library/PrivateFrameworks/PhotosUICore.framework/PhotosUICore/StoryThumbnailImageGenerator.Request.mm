@interface StoryThumbnailImageGenerator.Request
- (BOOL)engine:(id)engine shouldRenderLayout:(id)layout sprites:(id)sprites;
- (_TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request)init;
- (void)engineSetNeedsUpdate:(id)update;
@end

@implementation StoryThumbnailImageGenerator.Request

- (BOOL)engine:(id)engine shouldRenderLayout:(id)layout sprites:(id)sprites
{
  engineCopy = engine;
  layoutCopy = layout;
  spritesCopy = sprites;
  selfCopy = self;
  LOBYTE(self) = sub_1A44AB448(engineCopy, layoutCopy, spritesCopy);

  return self & 1;
}

- (void)engineSetNeedsUpdate:(id)update
{
  if (*(&self->super.isa + OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_waitingForResources) == 1)
  {
    [update updateIfNeeded];
  }
}

- (_TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end