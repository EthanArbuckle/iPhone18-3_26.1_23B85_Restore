@interface NSMutableDictionary
- (id)tsu_objectForKey:(id)a3 withDefaultOfClass:(Class)a4;
- (id)tsu_objectForKey:(id)a3 withDefaultUsingBlock:(id)a4;
- (void)tsu_setNonNilObject:(id)a3 forKey:(id)a4;
- (void)tsu_setNonNilValueForKey:(id)a3 fromDictionary:(id)a4;
@end

@implementation NSMutableDictionary

- (id)tsu_objectForKey:(id)a3 withDefaultUsingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self objectForKeyedSubscript:v6];
  if (!v8)
  {
    v8 = v7[2](v7);
    [(NSMutableDictionary *)self setObject:v8 forKeyedSubscript:v6];
  }

  return v8;
}

- (id)tsu_objectForKey:(id)a3 withDefaultOfClass:(Class)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000ADE20;
  v6[3] = &unk_1001CECB8;
  v6[4] = a4;
  v4 = [(NSMutableDictionary *)self tsu_objectForKey:a3 withDefaultUsingBlock:v6];

  return v4;
}

- (void)tsu_setNonNilValueForKey:(id)a3 fromDictionary:(id)a4
{
  v6 = a3;
  v7 = [a4 objectForKeyedSubscript:v6];
  [(NSMutableDictionary *)self tsu_setNonNilObject:v7 forKey:v6];
}

- (void)tsu_setNonNilObject:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    [(NSMutableDictionary *)self setObject:a3 forKeyedSubscript:a4];
  }
}

@end