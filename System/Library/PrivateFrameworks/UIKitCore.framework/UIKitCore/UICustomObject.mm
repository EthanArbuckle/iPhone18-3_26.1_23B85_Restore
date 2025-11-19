@interface UICustomObject
- (UICustomObject)initWithCoder:(id)a3;
@end

@implementation UICustomObject

- (UICustomObject)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = UICustomObject;
  return [(UICustomObject *)&v4 init];
}

@end