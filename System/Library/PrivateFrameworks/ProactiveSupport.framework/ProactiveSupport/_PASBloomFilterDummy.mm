@interface _PASBloomFilterDummy
- (_PASBloomFilterDummy)initWithResult:(BOOL)result;
@end

@implementation _PASBloomFilterDummy

- (_PASBloomFilterDummy)initWithResult:(BOOL)result
{
  v5.receiver = self;
  v5.super_class = _PASBloomFilterDummy;
  result = [(_PASBloomFilter *)&v5 initDummy];
  if (result)
  {
    *(&result->super._hashArrayLength + 4) = result;
  }

  return result;
}

@end