@interface NSMutableDictionary
- (void)setArrayObject:(id)a3 forKey:(id)a4;
@end

@implementation NSMutableDictionary

- (void)setArrayObject:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = +[NSMutableArray array];
    [(NSMutableDictionary *)self setObject:v7 forKeyedSubscript:v6];
  }

  [v7 addObject:v8];
}

@end