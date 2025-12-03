@interface PXStoryChromeButtonFactory
+ (Class)buttonClassWithGlassEffect:(BOOL)effect;
- (_TtC12PhotosUICore26PXStoryChromeButtonFactory)init;
@end

@implementation PXStoryChromeButtonFactory

+ (Class)buttonClassWithGlassEffect:(BOOL)effect
{
  if (effect && MEMORY[0x1A590D320](self, a2))
  {
    type metadata accessor for PXStoryChromeSystemButton();
  }

  else
  {
    sub_1A486B778();
  }

  return swift_getObjCClassFromMetadata();
}

- (_TtC12PhotosUICore26PXStoryChromeButtonFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PXStoryChromeButtonFactory();
  return [(PXStoryChromeButtonFactory *)&v3 init];
}

@end