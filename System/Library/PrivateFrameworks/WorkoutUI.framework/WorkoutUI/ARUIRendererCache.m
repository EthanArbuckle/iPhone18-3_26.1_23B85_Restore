@interface ARUIRendererCache
+ (ARUIRenderer)sharedRenderer;
- (_TtC9WorkoutUI17ARUIRendererCache)init;
@end

@implementation ARUIRendererCache

+ (ARUIRenderer)sharedRenderer
{
  if (one-time initialization token for sharedRenderer != -1)
  {
    swift_once();
  }

  v3 = static ARUIRendererCache.sharedRenderer;

  return v3;
}

- (_TtC9WorkoutUI17ARUIRendererCache)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ARUIRendererCache();
  return [(ARUIRendererCache *)&v3 init];
}

@end