@interface UIView(WritingToolsUI)
- (BOOL)_WTIsDarkMode;
@end

@implementation UIView(WritingToolsUI)

- (BOOL)_WTIsDarkMode
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceStyle] == 2;

  return v2;
}

@end