@interface PSSGMessageCompletedResourceRequestWithStrides
+ (id)messageWithResourceRequest:(id)a3 sender:(id)a4;
@end

@implementation PSSGMessageCompletedResourceRequestWithStrides

+ (id)messageWithResourceRequest:(id)a3 sender:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageCompletedResourceRequestWithStrides alloc] initWithType:27 sender:v5 request:v6];

  return v7;
}

@end