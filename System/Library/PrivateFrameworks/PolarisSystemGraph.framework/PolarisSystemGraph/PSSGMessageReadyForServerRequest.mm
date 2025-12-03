@interface PSSGMessageReadyForServerRequest
+ (id)messageWithSessionName:(id)name;
@end

@implementation PSSGMessageReadyForServerRequest

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [(PSSGMessageBase *)[PSSGMessageReadyForServerRequest alloc] initWithType:2 string1:nameCopy];

  return v4;
}

@end