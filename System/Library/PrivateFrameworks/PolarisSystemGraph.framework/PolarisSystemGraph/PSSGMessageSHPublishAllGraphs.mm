@interface PSSGMessageSHPublishAllGraphs
+ (id)messageWithData:(id)a3 sender:(id)a4;
@end

@implementation PSSGMessageSHPublishAllGraphs

+ (id)messageWithData:(id)a3 sender:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(PSSGMessageBase *)[PSSGMessageSHPublishAllGraphs alloc] initWithType:33 string1:v5 data:v6];

  return v7;
}

@end