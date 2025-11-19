@interface PSSGMessagePublishCurrentGraphs
+ (id)messageWithGraphs:(id)a3 sender:(id)a4;
@end

@implementation PSSGMessagePublishCurrentGraphs

+ (id)messageWithGraphs:(id)a3 sender:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(PSSGMessageBase *)[PSSGMessagePublishCurrentGraphs alloc] initWithType:28 string1:v5 data:v6];

  return v7;
}

@end