@interface FBScene(IntelligenceSupport)
- (id)ui_intelligenceComponent;
@end

@implementation FBScene(IntelligenceSupport)

- (id)ui_intelligenceComponent
{
  ui_intelligenceComponentIfExists = [self ui_intelligenceComponentIfExists];
  v3 = ui_intelligenceComponentIfExists;
  if (ui_intelligenceComponentIfExists)
  {
    ui_intelligenceComponentIfExists2 = ui_intelligenceComponentIfExists;
  }

  else
  {
    [self addExtension:objc_opt_class()];
    ui_intelligenceComponentIfExists2 = [self ui_intelligenceComponentIfExists];
  }

  v5 = ui_intelligenceComponentIfExists2;

  return v5;
}

@end