@interface PSSGMessageSHRequestProcessMonitorEventLog
+ (id)messageWithSessionName:(id)name;
@end

@implementation PSSGMessageSHRequestProcessMonitorEventLog

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [(PSSGMessageBase *)[PSSGMessageSHRequestProcessMonitorEventLog alloc] initWithType:9 string1:nameCopy];

  return v4;
}

@end