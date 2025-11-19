@interface _UITabBarVisualProviderFactory
+ (Class)visualProviderClassForIdiom:(int64_t)a3;
- (_UITabBarVisualProviderFactory)init;
@end

@implementation _UITabBarVisualProviderFactory

+ (Class)visualProviderClassForIdiom:(int64_t)a3
{
  if (a3 == 1)
  {
    type metadata accessor for _UITabBarVisualProvider_FloatingPad();
  }

  else if (a3 == 3)
  {
    type metadata accessor for _UITabBarVisualProvider_FloatingCarPlay();
  }

  else
  {
    type metadata accessor for _UITabBarVisualProvider_Floating();
  }

  return swift_getObjCClassFromMetadata();
}

- (_UITabBarVisualProviderFactory)init
{
  v3.receiver = self;
  v3.super_class = _UITabBarVisualProviderFactory;
  return [(_UITabBarVisualProviderFactory *)&v3 init];
}

@end