@interface PSSGMessageResourceRequestsFailed
+ (id)messageWithResourceRequest:(id)request sender:(id)sender;
@end

@implementation PSSGMessageResourceRequestsFailed

+ (id)messageWithResourceRequest:(id)request sender:(id)sender
{
  senderCopy = sender;
  requestCopy = request;
  v7 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageResourceRequestsFailed alloc] initWithType:29 sender:senderCopy request:requestCopy];

  return v7;
}

@end