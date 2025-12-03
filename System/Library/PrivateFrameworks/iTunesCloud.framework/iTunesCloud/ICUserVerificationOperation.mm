@interface ICUserVerificationOperation
+ (id)operationWithVerificationRequest:(id)request;
@end

@implementation ICUserVerificationOperation

+ (id)operationWithVerificationRequest:(id)request
{
  requestCopy = request;
  verificationContext = [requestCopy verificationContext];
  if ([verificationContext verificationStyle])
  {
    v5 = 0;
  }

  else
  {
    v5 = objc_alloc_init(ICACAccountVerificationOperation);
    if (v5)
    {
      v6 = [requestCopy copy];
      verificationRequest = v5->super._verificationRequest;
      v5->super._verificationRequest = v6;
    }
  }

  return v5;
}

@end