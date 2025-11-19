@interface PSSGMessageSHUpdateGraphs
+ (id)messageWithGraphData:(id)a3 sender:(id)a4;
@end

@implementation PSSGMessageSHUpdateGraphs

+ (id)messageWithGraphData:(id)a3 sender:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(PSSGMessageBase *)[PSSGMessageSHUpdateGraphs alloc] initWithType:5 string1:v5 data:v6];

  return v7;
}

@end