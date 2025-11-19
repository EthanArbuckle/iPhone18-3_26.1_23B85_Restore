@interface PSSGMessageResourceRequestsFailed
+ (id)messageWithResourceRequest:(id)a3 sender:(id)a4;
@end

@implementation PSSGMessageResourceRequestsFailed

+ (id)messageWithResourceRequest:(id)a3 sender:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageResourceRequestsFailed alloc] initWithType:29 sender:v5 request:v6];

  return v7;
}

@end