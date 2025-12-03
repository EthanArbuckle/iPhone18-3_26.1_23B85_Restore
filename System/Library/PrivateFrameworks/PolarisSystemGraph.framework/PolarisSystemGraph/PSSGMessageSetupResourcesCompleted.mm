@interface PSSGMessageSetupResourcesCompleted
+ (id)messageWithResourceRequest:(id)request sender:(id)sender;
@end

@implementation PSSGMessageSetupResourcesCompleted

+ (id)messageWithResourceRequest:(id)request sender:(id)sender
{
  senderCopy = sender;
  requestCopy = request;
  v7 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageSetupResourcesCompleted alloc] initWithType:18 sender:senderCopy request:requestCopy];

  return v7;
}

@end