@interface TRIFetchRetryUtils
+ (id)fetchRetryDateFromRetryAfterSeconds:(id)a3 isDeferral:(BOOL)a4 isRetryable:(BOOL)a5 isNonDiscretionary:(BOOL)a6;
@end

@implementation TRIFetchRetryUtils

+ (id)fetchRetryDateFromRetryAfterSeconds:(id)a3 isDeferral:(BOOL)a4 isRetryable:(BOOL)a5 isNonDiscretionary:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x277CBEAA8];
    [v9 doubleValue];
    v13 = v11;
LABEL_5:
    v14 = [v13 dateWithTimeIntervalSinceNow:v12];
    goto LABEL_6;
  }

  if (v8)
  {
    v13 = MEMORY[0x277CBEAA8];
    v12 = 3600.0;
    goto LABEL_5;
  }

  if (v7)
  {
    v13 = MEMORY[0x277CBEAA8];
    if (v6)
    {
      v12 = 300.0;
    }

    else
    {
      v12 = 1200.0;
    }

    goto LABEL_5;
  }

  v14 = 0;
LABEL_6:

  return v14;
}

@end