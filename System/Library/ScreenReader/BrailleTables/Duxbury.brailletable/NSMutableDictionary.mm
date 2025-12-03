@interface NSMutableDictionary
- (void)setArrayObject:(id)object forKey:(id)key;
@end

@implementation NSMutableDictionary

- (void)setArrayObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v7 = [(NSMutableDictionary *)self objectForKeyedSubscript:keyCopy];
  if (!v7)
  {
    v7 = +[NSMutableArray array];
    [(NSMutableDictionary *)self setObject:v7 forKeyedSubscript:keyCopy];
  }

  [v7 addObject:objectCopy];
}

@end