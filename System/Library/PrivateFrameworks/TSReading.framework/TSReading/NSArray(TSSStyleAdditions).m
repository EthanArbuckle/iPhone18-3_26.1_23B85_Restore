@interface NSArray(TSSStyleAdditions)
- (uint64_t)propertyAtIndex:()TSSStyleAdditions;
@end

@implementation NSArray(TSSStyleAdditions)

- (uint64_t)propertyAtIndex:()TSSStyleAdditions
{
  v3 = [a1 objectAtIndexedSubscript:a3];

  return [v3 unsignedIntValue];
}

@end