@interface NSDictionary(TRIFunctions)
- (id)tri_contextValueWithName:()TRIFunctions;
@end

@implementation NSDictionary(TRIFunctions)

- (id)tri_contextValueWithName:()TRIFunctions
{
  v4 = a3;
  v5 = [self objectForKeyedSubscript:v4];
  if (!v5)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"The expression context doesn't contain the key %@", v4];
    v10 = [v8 exceptionWithName:@"KeyNotFoundException" reason:v9 userInfo:0];
    v11 = v10;

    objc_exception_throw(v10);
  }

  v6 = v5;

  return v6;
}

@end