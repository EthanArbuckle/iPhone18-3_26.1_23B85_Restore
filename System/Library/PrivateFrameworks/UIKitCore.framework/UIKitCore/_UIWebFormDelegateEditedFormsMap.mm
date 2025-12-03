@interface _UIWebFormDelegateEditedFormsMap
- (_UIWebFormDelegateEditedFormsMap)init;
- (id)objectForKey:(id)key;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation _UIWebFormDelegateEditedFormsMap

- (_UIWebFormDelegateEditedFormsMap)init
{
  v4.receiver = self;
  v4.super_class = _UIWebFormDelegateEditedFormsMap;
  v2 = [(_UIWebFormDelegateEditedFormsMap *)&v4 init];
  if (v2)
  {
    v2->_lifetimeHelper = [MEMORY[0x1E695DF70] array];
    v2->_map = [MEMORY[0x1E695DF90] dictionary];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIWebFormDelegateEditedFormsMap;
  [(_UIWebFormDelegateEditedFormsMap *)&v3 dealloc];
}

- (id)objectForKey:(id)key
{
  map = self->_map;
  v4 = [(_UIWebFormDelegateEditedFormsMap *)self _keyForWebFrame:key];

  return [(NSMutableDictionary *)map objectForKey:v4];
}

- (void)removeAllObjects
{
  [(NSMutableDictionary *)self->_map removeAllObjects];
  lifetimeHelper = self->_lifetimeHelper;

  [(NSMutableArray *)lifetimeHelper removeAllObjects];
}

- (void)removeObjectForKey:(id)key
{
  [(NSMutableDictionary *)self->_map removeObjectForKey:[(_UIWebFormDelegateEditedFormsMap *)self _keyForWebFrame:?]];
  lifetimeHelper = self->_lifetimeHelper;

  [(NSMutableArray *)lifetimeHelper removeObject:key];
}

- (void)setObject:(id)object forKey:(id)key
{
  if (([(NSMutableArray *)self->_lifetimeHelper containsObject:key]& 1) == 0)
  {
    [(NSMutableArray *)self->_lifetimeHelper addObject:key];
  }

  map = self->_map;
  v8 = [(_UIWebFormDelegateEditedFormsMap *)self _keyForWebFrame:key];

  [(NSMutableDictionary *)map setObject:object forKey:v8];
}

@end