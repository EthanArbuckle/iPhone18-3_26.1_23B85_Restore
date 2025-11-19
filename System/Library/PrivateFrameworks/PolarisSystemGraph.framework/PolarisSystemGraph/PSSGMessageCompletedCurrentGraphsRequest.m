@interface PSSGMessageCompletedCurrentGraphsRequest
+ (id)messageWithSessionName:(id)a3;
@end

@implementation PSSGMessageCompletedCurrentGraphsRequest

+ (id)messageWithSessionName:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessageCompletedCurrentGraphsRequest alloc] initWithType:38 string1:v3];

  return v4;
}

@end