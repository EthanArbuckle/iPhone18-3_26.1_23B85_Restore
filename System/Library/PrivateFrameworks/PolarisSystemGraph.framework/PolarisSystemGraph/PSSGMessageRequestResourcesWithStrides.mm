@interface PSSGMessageRequestResourcesWithStrides
+ (id)messageWithResourceRequest:(id)a3 sender:(id)a4;
@end

@implementation PSSGMessageRequestResourcesWithStrides

+ (id)messageWithResourceRequest:(id)a3 sender:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageRequestResourcesWithStrides alloc] initWithType:26 sender:v5 request:v6];

  return v7;
}

@end