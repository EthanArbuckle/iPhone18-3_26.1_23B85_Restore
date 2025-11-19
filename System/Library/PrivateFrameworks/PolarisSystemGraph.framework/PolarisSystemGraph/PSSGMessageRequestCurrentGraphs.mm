@interface PSSGMessageRequestCurrentGraphs
+ (id)messageWithSessionName:(id)a3;
@end

@implementation PSSGMessageRequestCurrentGraphs

+ (id)messageWithSessionName:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessageRequestCurrentGraphs alloc] initWithType:37 string1:v3];

  return v4;
}

@end