@interface FBScene(IntelligenceSupport)
- (id)ui_intelligenceComponent;
@end

@implementation FBScene(IntelligenceSupport)

- (id)ui_intelligenceComponent
{
  v2 = [a1 ui_intelligenceComponentIfExists];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    [a1 addExtension:objc_opt_class()];
    v4 = [a1 ui_intelligenceComponentIfExists];
  }

  v5 = v4;

  return v5;
}

@end