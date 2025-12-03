@interface SXComponentBlueprintFactory
- (id)componentBlueprintForComponent:(id)component layout:(id)layout sizer:(id)sizer;
@end

@implementation SXComponentBlueprintFactory

- (id)componentBlueprintForComponent:(id)component layout:(id)layout sizer:(id)sizer
{
  componentCopy = component;
  v8 = 0;
  if (componentCopy && sizer)
  {
    sizerCopy = sizer;
    layoutCopy = layout;
    v11 = objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v11 = objc_opt_class();
    }

    v8 = [[v11 alloc] initWithComponent:componentCopy componentLayout:layoutCopy componentSizer:sizerCopy];
  }

  return v8;
}

@end