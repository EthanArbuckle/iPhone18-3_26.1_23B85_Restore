@interface NSString(VMFoundationAdditions)
- (uint64_t)vf_lossyDefaultCStringBytes;
@end

@implementation NSString(VMFoundationAdditions)

- (uint64_t)vf_lossyDefaultCStringBytes
{
  mutableBytes = [self _fastCStringContents:1];
  if (!mutableBytes)
  {
    v3 = [self length];
    v8 = 0;
    v9 = 0;
    if ([self getBytes:0 maxLength:0x7FFFFFFFFFFFFFFELL usedLength:&v9 encoding:1 options:1 range:0 remainingRange:{v3, 0}])
    {
      v4 = [MEMORY[0x277CBEB28] dataWithLength:v9 + 1];
      mutableBytes = [v4 mutableBytes];
      if (mutableBytes && ([self getBytes:mutableBytes maxLength:v9 usedLength:&v8 encoding:1 options:1 range:0 remainingRange:{v3, 0}] & 1) != 0)
      {
        v5 = v8;
        v6 = v9;

        if (v5 == v6)
        {
          *(mutableBytes + v9) = 0;
        }
      }

      else
      {
      }
    }
  }

  return mutableBytes;
}

@end