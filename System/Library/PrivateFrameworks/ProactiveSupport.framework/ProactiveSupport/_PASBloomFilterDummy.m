@interface _PASBloomFilterDummy
- (_PASBloomFilterDummy)initWithResult:(BOOL)a3;
@end

@implementation _PASBloomFilterDummy

- (_PASBloomFilterDummy)initWithResult:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _PASBloomFilterDummy;
  result = [(_PASBloomFilter *)&v5 initDummy];
  if (result)
  {
    *(&result->super._hashArrayLength + 4) = a3;
  }

  return result;
}

@end