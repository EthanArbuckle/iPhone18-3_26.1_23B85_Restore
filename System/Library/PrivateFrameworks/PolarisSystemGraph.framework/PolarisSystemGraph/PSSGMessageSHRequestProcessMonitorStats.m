@interface PSSGMessageSHRequestProcessMonitorStats
+ (id)messageWithSessionName:(id)a3;
@end

@implementation PSSGMessageSHRequestProcessMonitorStats

+ (id)messageWithSessionName:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessageSHRequestProcessMonitorStats alloc] initWithType:7 string1:v3];

  return v4;
}

@end