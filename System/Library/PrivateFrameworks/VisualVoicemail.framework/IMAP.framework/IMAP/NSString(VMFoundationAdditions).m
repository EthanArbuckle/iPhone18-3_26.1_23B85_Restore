@interface NSString(VMFoundationAdditions)
- (uint64_t)vf_lossyDefaultCStringBytes;
@end

@implementation NSString(VMFoundationAdditions)

- (uint64_t)vf_lossyDefaultCStringBytes
{
  v2 = [a1 _fastCStringContents:1];
  if (!v2)
  {
    v3 = [a1 length];
    v8 = 0;
    v9 = 0;
    if ([a1 getBytes:0 maxLength:0x7FFFFFFFFFFFFFFELL usedLength:&v9 encoding:1 options:1 range:0 remainingRange:{v3, 0}])
    {
      v4 = [MEMORY[0x277CBEB28] dataWithLength:v9 + 1];
      v2 = [v4 mutableBytes];
      if (v2 && ([a1 getBytes:v2 maxLength:v9 usedLength:&v8 encoding:1 options:1 range:0 remainingRange:{v3, 0}] & 1) != 0)
      {
        v5 = v8;
        v6 = v9;

        if (v5 == v6)
        {
          *(v2 + v9) = 0;
        }
      }

      else
      {
      }
    }
  }

  return v2;
}

@end