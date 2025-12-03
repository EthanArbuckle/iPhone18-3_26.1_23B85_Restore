@interface _UIStaticScrollbarButton
- (BOOL)canBecomeFocused;
@end

@implementation _UIStaticScrollbarButton

- (BOOL)canBecomeFocused
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] != 3;

  return v3;
}

@end