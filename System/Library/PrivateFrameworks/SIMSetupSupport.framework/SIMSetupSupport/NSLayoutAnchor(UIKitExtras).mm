@interface NSLayoutAnchor(UIKitExtras)
- (id)constraintEqualToAnchor:()UIKitExtras constant:priority:;
@end

@implementation NSLayoutAnchor(UIKitExtras)

- (id)constraintEqualToAnchor:()UIKitExtras constant:priority:
{
  v4 = [a1 constraintEqualToAnchor:? constant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

@end