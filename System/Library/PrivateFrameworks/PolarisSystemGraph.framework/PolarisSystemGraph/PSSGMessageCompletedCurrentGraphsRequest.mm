@interface PSSGMessageCompletedCurrentGraphsRequest
+ (id)messageWithSessionName:(id)name;
@end

@implementation PSSGMessageCompletedCurrentGraphsRequest

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [(PSSGMessageBase *)[PSSGMessageCompletedCurrentGraphsRequest alloc] initWithType:38 string1:nameCopy];

  return v4;
}

@end