@interface PSSGMessageSetupResources
+ (id)messageWithResourceRequest:(id)request sender:(id)sender;
@end

@implementation PSSGMessageSetupResources

+ (id)messageWithResourceRequest:(id)request sender:(id)sender
{
  senderCopy = sender;
  requestCopy = request;
  v7 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageSetupResources alloc] initWithType:43 sender:senderCopy request:requestCopy];

  return v7;
}

@end