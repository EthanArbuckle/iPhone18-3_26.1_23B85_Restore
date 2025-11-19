@interface _UITextInputImplicitObjectWrapper
+ (id)wrapperForObject:(id)a3;
- (id)weakObject;
@end

@implementation _UITextInputImplicitObjectWrapper

+ (id)wrapperForObject:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setWeakObject:v4];

  return v5;
}

- (id)weakObject
{
  WeakRetained = objc_loadWeakRetained(&self->_weakObject);

  return WeakRetained;
}

@end