@interface _PUIDPointerShapeMorphingAnimationProxy
- (_PUIDPointerShapeMorphingAnimationProxy)init;
- (void)setValue:(id)value forKey:(id)key;
- (void)setValue:(id)value forKeyPath:(id)path;
@end

@implementation _PUIDPointerShapeMorphingAnimationProxy

- (_PUIDPointerShapeMorphingAnimationProxy)init
{
  v6.receiver = self;
  v6.super_class = _PUIDPointerShapeMorphingAnimationProxy;
  v2 = [(_PUIDPointerShapeMorphingAnimationProxy *)&v6 init];
  if (v2)
  {
    v3 = [[NSMutableDictionary alloc] initWithCapacity:1];
    storage = v2->_storage;
    v2->_storage = v3;
  }

  return v2;
}

- (void)setValue:(id)value forKey:(id)key
{
  storage = self->_storage;
  if (value)
  {
    [(NSMutableDictionary *)storage setObject:value forKey:key];
  }

  else
  {
    [(NSMutableDictionary *)storage removeObjectForKey:key];
  }
}

- (void)setValue:(id)value forKeyPath:(id)path
{
  storage = self->_storage;
  if (value)
  {
    [(NSMutableDictionary *)storage setObject:value forKey:path];
  }

  else
  {
    [(NSMutableDictionary *)storage removeObjectForKey:path];
  }
}

@end