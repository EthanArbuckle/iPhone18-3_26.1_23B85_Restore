@interface PSSGMessageRequestCurrentGraphs
+ (id)messageWithSessionName:(id)name;
@end

@implementation PSSGMessageRequestCurrentGraphs

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [(PSSGMessageBase *)[PSSGMessageRequestCurrentGraphs alloc] initWithType:37 string1:nameCopy];

  return v4;
}

@end