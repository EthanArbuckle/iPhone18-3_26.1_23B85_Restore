@interface NSString(SiriPresentationIdentifier)
+ (__CFString)stringWithSiriPresentationIdentifier:()SiriPresentationIdentifier;
- (uint64_t)siriPresentationIdentifier;
@end

@implementation NSString(SiriPresentationIdentifier)

- (uint64_t)siriPresentationIdentifier
{
  v2 = 1;
  v3 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:1];
  v4 = [self isEqualToString:v3];

  if ((v4 & 1) == 0)
  {
    v2 = 2;
    v5 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:2];
    v6 = [self isEqualToString:v5];

    if ((v6 & 1) == 0)
    {
      v2 = 3;
      v7 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:3];
      v8 = [self isEqualToString:v7];

      if ((v8 & 1) == 0)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:4];
        v10 = [self isEqualToString:v9];

        if (v10)
        {
          return 4;
        }

        else
        {
          return 3;
        }
      }
    }
  }

  return v2;
}

+ (__CFString)stringWithSiriPresentationIdentifier:()SiriPresentationIdentifier
{
  if (a3 >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown siri presentation identifier : %li>", a3];
  }

  else
  {
    v4 = off_1E82F3FB8[a3];
  }

  return v4;
}

@end