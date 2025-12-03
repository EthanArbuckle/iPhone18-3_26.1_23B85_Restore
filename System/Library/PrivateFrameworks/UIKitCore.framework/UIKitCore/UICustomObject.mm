@interface UICustomObject
- (UICustomObject)initWithCoder:(id)coder;
@end

@implementation UICustomObject

- (UICustomObject)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = UICustomObject;
  return [(UICustomObject *)&v4 init];
}

@end