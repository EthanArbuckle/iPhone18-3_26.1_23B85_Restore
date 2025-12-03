@interface _UITextInputImplicitObjectWrapper
+ (id)wrapperForObject:(id)object;
- (id)weakObject;
@end

@implementation _UITextInputImplicitObjectWrapper

+ (id)wrapperForObject:(id)object
{
  objectCopy = object;
  v5 = objc_alloc_init(self);
  [v5 setWeakObject:objectCopy];

  return v5;
}

- (id)weakObject
{
  WeakRetained = objc_loadWeakRetained(&self->_weakObject);

  return WeakRetained;
}

@end