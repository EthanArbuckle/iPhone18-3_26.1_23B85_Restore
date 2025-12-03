@interface TRIFetchRetryUtils
+ (id)fetchRetryDateFromRetryAfterSeconds:(id)seconds isDeferral:(BOOL)deferral isRetryable:(BOOL)retryable isNonDiscretionary:(BOOL)discretionary;
@end

@implementation TRIFetchRetryUtils

+ (id)fetchRetryDateFromRetryAfterSeconds:(id)seconds isDeferral:(BOOL)deferral isRetryable:(BOOL)retryable isNonDiscretionary:(BOOL)discretionary
{
  discretionaryCopy = discretionary;
  retryableCopy = retryable;
  deferralCopy = deferral;
  secondsCopy = seconds;
  v10 = secondsCopy;
  if (secondsCopy)
  {
    v11 = MEMORY[0x277CBEAA8];
    [secondsCopy doubleValue];
    v13 = v11;
LABEL_5:
    v14 = [v13 dateWithTimeIntervalSinceNow:v12];
    goto LABEL_6;
  }

  if (deferralCopy)
  {
    v13 = MEMORY[0x277CBEAA8];
    v12 = 3600.0;
    goto LABEL_5;
  }

  if (retryableCopy)
  {
    v13 = MEMORY[0x277CBEAA8];
    if (discretionaryCopy)
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