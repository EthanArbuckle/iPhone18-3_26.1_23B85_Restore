@interface PSSGMessageSHReportProcessMonitorStats
+ (id)messageWithData:(id)data sender:(id)sender;
@end

@implementation PSSGMessageSHReportProcessMonitorStats

+ (id)messageWithData:(id)data sender:(id)sender
{
  senderCopy = sender;
  dataCopy = data;
  v7 = [(PSSGMessageBase *)[PSSGMessageSHReportProcessMonitorStats alloc] initWithType:34 string1:senderCopy data:dataCopy];

  return v7;
}

@end