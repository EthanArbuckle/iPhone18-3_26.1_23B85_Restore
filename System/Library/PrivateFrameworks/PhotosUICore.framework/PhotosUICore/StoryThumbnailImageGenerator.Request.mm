@interface StoryThumbnailImageGenerator.Request
- (BOOL)engine:(id)a3 shouldRenderLayout:(id)a4 sprites:(id)a5;
- (_TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request)init;
- (void)engineSetNeedsUpdate:(id)a3;
@end

@implementation StoryThumbnailImageGenerator.Request

- (BOOL)engine:(id)a3 shouldRenderLayout:(id)a4 sprites:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  LOBYTE(self) = sub_1A44AB448(v8, v9, v10);

  return self & 1;
}

- (void)engineSetNeedsUpdate:(id)a3
{
  if (*(&self->super.isa + OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_waitingForResources) == 1)
  {
    [a3 updateIfNeeded];
  }
}

- (_TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end