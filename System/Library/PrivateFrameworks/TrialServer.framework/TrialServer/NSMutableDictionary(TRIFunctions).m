@interface NSMutableDictionary(TRIFunctions)
- (id)tri_setContextValueWithName:()TRIFunctions value:;
@end

@implementation NSMutableDictionary(TRIFunctions)

- (id)tri_setContextValueWithName:()TRIFunctions value:
{
  v6 = a4;
  [a1 setObject:v6 forKeyedSubscript:a3];

  return v6;
}

@end