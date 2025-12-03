@interface NSLayoutConstraint(UIKitSwiftHelpers)
- (BOOL)_ui_secondItemIsEqualToObject:()UIKitSwiftHelpers;
@end

@implementation NSLayoutConstraint(UIKitSwiftHelpers)

- (BOOL)_ui_secondItemIsEqualToObject:()UIKitSwiftHelpers
{
  v4 = a3;
  v5 = [self secondItem] == v4;

  return v5;
}

@end