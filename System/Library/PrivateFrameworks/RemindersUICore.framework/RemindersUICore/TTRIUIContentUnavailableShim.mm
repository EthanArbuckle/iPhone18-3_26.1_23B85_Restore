@interface TTRIUIContentUnavailableShim
+ (id)instanceWrappingImpl:(id)impl;
- (TTRIUIContentUnavailableShim)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TTRIUIContentUnavailableShim

+ (id)instanceWrappingImpl:(id)impl
{
  implCopy = impl;
  if (implCopy)
  {
    v5 = objc_alloc_init(objc_opt_class());
    objc_storeStrong(v5 + 1, impl);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TTRIUIContentUnavailableShim)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [objc_alloc(objc_msgSend(objc_opt_class() "implClass"))];

  if (v5)
  {
    v6 = [objc_opt_class() instanceWrappingImpl:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(NSCopying *)self->_impl copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

@end