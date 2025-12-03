@interface SUEmptyObject
- (SUEmptyObject)initWithCoder:(id)coder;
@end

@implementation SUEmptyObject

- (SUEmptyObject)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SUEmptyObject;
  return [(SUEmptyObject *)&v4 init];
}

@end