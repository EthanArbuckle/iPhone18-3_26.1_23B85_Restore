@interface PSSGMessageCompletedResourceRequestWithStrides
+ (id)messageWithResourceRequest:(id)request sender:(id)sender;
@end

@implementation PSSGMessageCompletedResourceRequestWithStrides

+ (id)messageWithResourceRequest:(id)request sender:(id)sender
{
  senderCopy = sender;
  requestCopy = request;
  v7 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageCompletedResourceRequestWithStrides alloc] initWithType:27 sender:senderCopy request:requestCopy];

  return v7;
}

@end