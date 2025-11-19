@interface NSNumber(CRDT_Additions)
- (uint64_t)initWithCRCoder:()CRDT_Additions;
- (void)encodeWithCRCoder:()CRDT_Additions;
- (void)mergeWith:()CRDT_Additions;
@end

@implementation NSNumber(CRDT_Additions)

- (void)mergeWith:()CRDT_Additions
{
  v5 = a3;
  if (([a1 isEqual:?] & 1) == 0)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Cannot merge NSNumber with different value." userInfo:0];
    objc_exception_throw(v4);
  }
}

- (uint64_t)initWithCRCoder:()CRDT_Additions
{
  v4 = a3;
  if ([v4 hasDecodableValueForKey:@"integerValue"])
  {
    v5 = [a1 initWithInteger:{objc_msgSend(v4, "decodeInt32ForKey:", @"integerValue"}];
  }

  else if ([v4 hasDecodableValueForKey:@"doubleValue"])
  {
    [v4 decodeDoubleForKey:@"doubleValue"];
    v5 = [a1 initWithDouble:?];
  }

  else
  {
    v5 = [a1 init];
  }

  v6 = v5;

  return v6;
}

- (void)encodeWithCRCoder:()CRDT_Additions
{
  v5 = a3;
  Type = CFNumberGetType(a1);
  if (Type <= kCFNumberCGFloatType)
  {
    if (((1 << Type) & 0xCF9E) != 0)
    {
      [v5 encodeInt64:-[__CFNumber integerValue](a1 forKey:{"integerValue"), @"integerValue"}];
    }

    else if (((1 << Type) & 0x13060) != 0)
    {
      [(__CFNumber *)a1 doubleValue];
      [v5 encodeDouble:@"doubleValue" forKey:?];
    }
  }
}

@end