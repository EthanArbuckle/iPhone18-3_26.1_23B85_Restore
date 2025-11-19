@interface _PUIDPointerShapeMorphingAnimationProxy
- (_PUIDPointerShapeMorphingAnimationProxy)init;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)setValue:(id)a3 forKeyPath:(id)a4;
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

- (void)setValue:(id)a3 forKey:(id)a4
{
  storage = self->_storage;
  if (a3)
  {
    [(NSMutableDictionary *)storage setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)storage removeObjectForKey:a4];
  }
}

- (void)setValue:(id)a3 forKeyPath:(id)a4
{
  storage = self->_storage;
  if (a3)
  {
    [(NSMutableDictionary *)storage setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)storage removeObjectForKey:a4];
  }
}

@end