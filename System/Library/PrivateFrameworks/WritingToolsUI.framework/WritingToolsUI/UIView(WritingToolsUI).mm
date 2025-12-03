@interface UIView(WritingToolsUI)
- (BOOL)_WTIsDarkMode;
@end

@implementation UIView(WritingToolsUI)

- (BOOL)_WTIsDarkMode
{
  traitCollection = [self traitCollection];
  v2 = [traitCollection userInterfaceStyle] == 2;

  return v2;
}

@end