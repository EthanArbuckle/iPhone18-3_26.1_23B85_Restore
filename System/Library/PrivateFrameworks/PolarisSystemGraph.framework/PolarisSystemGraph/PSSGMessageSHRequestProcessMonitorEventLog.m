@interface PSSGMessageSHRequestProcessMonitorEventLog
+ (id)messageWithSessionName:(id)a3;
@end

@implementation PSSGMessageSHRequestProcessMonitorEventLog

+ (id)messageWithSessionName:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessageSHRequestProcessMonitorEventLog alloc] initWithType:9 string1:v3];

  return v4;
}

@end