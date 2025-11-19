@interface NSData(SynapseExtensions)
- (uint64_t)_sy_containsUnsignedShort:()SynapseExtensions inRange:;
@end

@implementation NSData(SynapseExtensions)

- (uint64_t)_sy_containsUnsignedShort:()SynapseExtensions inRange:
{
  if (!a5)
  {
    return 0;
  }

  v9 = [a1 bytes];
  if (*(v9 + 2 * (a4 + a5) - 2) < a3 || *(v9 + 2 * a4) > a3)
  {
    return 0;
  }

  v12 = *(v9 + 2 * (a4 + (a5 >> 1)));
  if (v12 <= a3)
  {
    if (v12 >= a3)
    {
      return 1;
    }

    v13 = a5 - (a5 >> 1);
    a4 += a5 >> 1;
  }

  else
  {
    v13 = a5 >> 1;
  }

  return [a1 _sy_containsUnsignedShort:a3 inRange:{a4, v13}];
}

@end