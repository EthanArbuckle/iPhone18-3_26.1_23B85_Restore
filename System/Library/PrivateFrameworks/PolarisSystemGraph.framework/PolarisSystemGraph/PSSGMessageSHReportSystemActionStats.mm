@interface PSSGMessageSHReportSystemActionStats
+ (id)messageWithData:(id)data sender:(id)sender;
@end

@implementation PSSGMessageSHReportSystemActionStats

+ (id)messageWithData:(id)data sender:(id)sender
{
  senderCopy = sender;
  dataCopy = data;
  v7 = [(PSSGMessageBase *)[PSSGMessageSHReportSystemActionStats alloc] initWithType:35 string1:senderCopy data:dataCopy];

  return v7;
}

@end