@interface NetworkReachabilityMonitor
- (void)handleNetworkReachabilityDidChange:(id)a3;
@end

@implementation NetworkReachabilityMonitor

- (void)handleNetworkReachabilityDidChange:(id)a3
{
  v3 = sub_26CD39DEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CD39DCC();

  sub_26CC571E0();

  (*(v4 + 8))(v7, v3);
}

@end