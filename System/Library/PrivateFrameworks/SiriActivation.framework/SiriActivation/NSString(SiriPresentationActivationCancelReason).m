@interface NSString(SiriPresentationActivationCancelReason)
+ (__CFString)stringWithSiriPresentationActivationCancelReason:()SiriPresentationActivationCancelReason;
- (uint64_t)cancelReason;
@end

@implementation NSString(SiriPresentationActivationCancelReason)

+ (__CFString)stringWithSiriPresentationActivationCancelReason:()SiriPresentationActivationCancelReason
{
  if ((a3 - 1) > 4)
  {
    return @"SiriPresentationActivationCancelReasonShellEvent";
  }

  else
  {
    return off_1E82F3FE0[a3 - 1];
  }
}

- (uint64_t)cancelReason
{
  v2 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationActivationCancelReason:0];
  v3 = [a1 isEqualToString:v2];

  v4 = 0;
  if ((v3 & 1) == 0)
  {
    v4 = 1;
    v5 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationActivationCancelReason:1];
    v6 = [a1 isEqualToString:v5];

    if ((v6 & 1) == 0)
    {
      v4 = 2;
      v7 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationActivationCancelReason:2];
      v8 = [a1 isEqualToString:v7];

      if ((v8 & 1) == 0)
      {
        v4 = 3;
        v9 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationActivationCancelReason:3];
        v10 = [a1 isEqualToString:v9];

        if ((v10 & 1) == 0)
        {
          v4 = 4;
          v11 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationActivationCancelReason:4];
          v12 = [a1 isEqualToString:v11];

          if ((v12 & 1) == 0)
          {
            v13 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationActivationCancelReason:5];
            v14 = [a1 isEqualToString:v13];

            if (v14)
            {
              return 5;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return v4;
}

@end