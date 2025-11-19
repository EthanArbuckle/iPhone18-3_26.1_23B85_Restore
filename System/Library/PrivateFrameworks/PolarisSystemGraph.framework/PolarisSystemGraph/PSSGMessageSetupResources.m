@interface PSSGMessageSetupResources
+ (id)messageWithResourceRequest:(id)a3 sender:(id)a4;
@end

@implementation PSSGMessageSetupResources

+ (id)messageWithResourceRequest:(id)a3 sender:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageSetupResources alloc] initWithType:43 sender:v5 request:v6];

  return v7;
}

@end