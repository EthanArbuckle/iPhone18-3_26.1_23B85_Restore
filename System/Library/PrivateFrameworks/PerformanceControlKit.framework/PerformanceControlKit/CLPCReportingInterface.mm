@interface CLPCReportingInterface
+ (id)createClient:(id *)client;
@end

@implementation CLPCReportingInterface

+ (id)createClient:(id *)client
{
  v3 = [[CLPCReportingClient alloc] init:client];

  return v3;
}

@end