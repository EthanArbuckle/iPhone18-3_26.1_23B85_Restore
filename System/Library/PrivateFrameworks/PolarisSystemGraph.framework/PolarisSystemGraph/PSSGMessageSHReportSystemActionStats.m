@interface PSSGMessageSHReportSystemActionStats
+ (id)messageWithData:(id)a3 sender:(id)a4;
@end

@implementation PSSGMessageSHReportSystemActionStats

+ (id)messageWithData:(id)a3 sender:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(PSSGMessageBase *)[PSSGMessageSHReportSystemActionStats alloc] initWithType:35 string1:v5 data:v6];

  return v7;
}

@end