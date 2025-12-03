@interface PSSGMessageSHRequestProcessMonitorStats
+ (id)messageWithSessionName:(id)name;
@end

@implementation PSSGMessageSHRequestProcessMonitorStats

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [(PSSGMessageBase *)[PSSGMessageSHRequestProcessMonitorStats alloc] initWithType:7 string1:nameCopy];

  return v4;
}

@end