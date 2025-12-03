@interface PSSGMessageSHReportProcessMonitorEventLog
+ (id)messageWithData:(id)data sender:(id)sender;
@end

@implementation PSSGMessageSHReportProcessMonitorEventLog

+ (id)messageWithData:(id)data sender:(id)sender
{
  senderCopy = sender;
  dataCopy = data;
  v7 = [(PSSGMessageBase *)[PSSGMessageSHReportProcessMonitorEventLog alloc] initWithType:36 string1:senderCopy data:dataCopy];

  return v7;
}

@end