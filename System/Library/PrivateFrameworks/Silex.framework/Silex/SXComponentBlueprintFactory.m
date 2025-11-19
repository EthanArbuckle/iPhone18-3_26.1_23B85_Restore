@interface SXComponentBlueprintFactory
- (id)componentBlueprintForComponent:(id)a3 layout:(id)a4 sizer:(id)a5;
@end

@implementation SXComponentBlueprintFactory

- (id)componentBlueprintForComponent:(id)a3 layout:(id)a4 sizer:(id)a5
{
  v7 = a3;
  v8 = 0;
  if (v7 && a5)
  {
    v9 = a5;
    v10 = a4;
    v11 = objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v11 = objc_opt_class();
    }

    v8 = [[v11 alloc] initWithComponent:v7 componentLayout:v10 componentSizer:v9];
  }

  return v8;
}

@end