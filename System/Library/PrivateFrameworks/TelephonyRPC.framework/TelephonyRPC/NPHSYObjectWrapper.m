@interface NPHSYObjectWrapper
- (NPHSYObjectWrapper)initWithSYObject:(id)a3 type:(int64_t)a4;
@end

@implementation NPHSYObjectWrapper

- (NPHSYObjectWrapper)initWithSYObject:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = NPHSYObjectWrapper;
  v8 = [(NPHSYObjectWrapper *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_wrappedObject, a3);
    v9->_type = a4;
    v10 = v9;
  }

  return v9;
}

@end