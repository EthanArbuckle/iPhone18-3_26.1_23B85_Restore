@interface PSSGMessageSHRequestSystemActionStats
+ (id)messageWithSessionName:(id)a3;
@end

@implementation PSSGMessageSHRequestSystemActionStats

+ (id)messageWithSessionName:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessageSHRequestSystemActionStats alloc] initWithType:8 string1:v3];

  return v4;
}

@end