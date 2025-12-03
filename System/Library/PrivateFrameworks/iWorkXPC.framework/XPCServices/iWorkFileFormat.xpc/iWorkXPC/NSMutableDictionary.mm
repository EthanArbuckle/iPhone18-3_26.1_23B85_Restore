@interface NSMutableDictionary
- (id)tsu_objectForKey:(id)key withDefaultOfClass:(Class)class;
- (id)tsu_objectForKey:(id)key withDefaultUsingBlock:(id)block;
- (void)tsu_setNonNilObject:(id)object forKey:(id)key;
- (void)tsu_setNonNilValueForKey:(id)key fromDictionary:(id)dictionary;
@end

@implementation NSMutableDictionary

- (id)tsu_objectForKey:(id)key withDefaultUsingBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v8 = [(NSMutableDictionary *)self objectForKeyedSubscript:keyCopy];
  if (!v8)
  {
    v8 = blockCopy[2](blockCopy);
    [(NSMutableDictionary *)self setObject:v8 forKeyedSubscript:keyCopy];
  }

  return v8;
}

- (id)tsu_objectForKey:(id)key withDefaultOfClass:(Class)class
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000ADE20;
  v6[3] = &unk_1001CECB8;
  v6[4] = class;
  v4 = [(NSMutableDictionary *)self tsu_objectForKey:key withDefaultUsingBlock:v6];

  return v4;
}

- (void)tsu_setNonNilValueForKey:(id)key fromDictionary:(id)dictionary
{
  keyCopy = key;
  v7 = [dictionary objectForKeyedSubscript:keyCopy];
  [(NSMutableDictionary *)self tsu_setNonNilObject:v7 forKey:keyCopy];
}

- (void)tsu_setNonNilObject:(id)object forKey:(id)key
{
  if (object)
  {
    [(NSMutableDictionary *)self setObject:object forKeyedSubscript:key];
  }
}

@end