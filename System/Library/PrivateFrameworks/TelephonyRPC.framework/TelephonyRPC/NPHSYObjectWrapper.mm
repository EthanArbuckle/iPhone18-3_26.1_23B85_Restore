@interface NPHSYObjectWrapper
- (NPHSYObjectWrapper)initWithSYObject:(id)object type:(int64_t)type;
@end

@implementation NPHSYObjectWrapper

- (NPHSYObjectWrapper)initWithSYObject:(id)object type:(int64_t)type
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = NPHSYObjectWrapper;
  v8 = [(NPHSYObjectWrapper *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_wrappedObject, object);
    v9->_type = type;
    v10 = v9;
  }

  return v9;
}

@end