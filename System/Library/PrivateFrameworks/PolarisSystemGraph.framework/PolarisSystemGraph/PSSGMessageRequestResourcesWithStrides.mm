@interface PSSGMessageRequestResourcesWithStrides
+ (id)messageWithResourceRequest:(id)request sender:(id)sender;
@end

@implementation PSSGMessageRequestResourcesWithStrides

+ (id)messageWithResourceRequest:(id)request sender:(id)sender
{
  senderCopy = sender;
  requestCopy = request;
  v7 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageRequestResourcesWithStrides alloc] initWithType:26 sender:senderCopy request:requestCopy];

  return v7;
}

@end