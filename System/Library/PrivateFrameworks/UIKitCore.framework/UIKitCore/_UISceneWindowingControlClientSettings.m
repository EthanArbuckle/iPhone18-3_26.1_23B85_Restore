@interface _UISceneWindowingControlClientSettings
+ (void)configureSetting:(id)a3;
@end

@implementation _UISceneWindowingControlClientSettings

+ (void)configureSetting:(id)a3
{
  v3 = a3;
  if ([v3 matchesProperty:sel_preferredWindowingControlStyleType])
  {
    [v3 setDescriptionProvider:&__block_literal_global_447];
  }
}

@end