@interface ICUserVerificationOperation
+ (id)operationWithVerificationRequest:(id)a3;
@end

@implementation ICUserVerificationOperation

+ (id)operationWithVerificationRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 verificationContext];
  if ([v4 verificationStyle])
  {
    v5 = 0;
  }

  else
  {
    v5 = objc_alloc_init(ICACAccountVerificationOperation);
    if (v5)
    {
      v6 = [v3 copy];
      verificationRequest = v5->super._verificationRequest;
      v5->super._verificationRequest = v6;
    }
  }

  return v5;
}

@end