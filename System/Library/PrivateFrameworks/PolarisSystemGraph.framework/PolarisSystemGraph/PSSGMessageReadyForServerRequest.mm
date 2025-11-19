@interface PSSGMessageReadyForServerRequest
+ (id)messageWithSessionName:(id)a3;
@end

@implementation PSSGMessageReadyForServerRequest

+ (id)messageWithSessionName:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessageReadyForServerRequest alloc] initWithType:2 string1:v3];

  return v4;
}

@end