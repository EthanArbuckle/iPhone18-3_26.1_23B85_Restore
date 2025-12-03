@interface TUCall(TCSClientServer)
- (uint64_t)tc_useUnderlyingRemoteUplinkMuted;
- (void)tc_setUseUnderlyingRemoteUplinkMuted:()TCSClientServer;
@end

@implementation TUCall(TCSClientServer)

- (void)tc_setUseUnderlyingRemoteUplinkMuted:()TCSClientServer
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, sel_tc_useUnderlyingRemoteUplinkMuted, v2, 3);
}

- (uint64_t)tc_useUnderlyingRemoteUplinkMuted
{
  v1 = objc_getAssociatedObject(self, sel_tc_useUnderlyingRemoteUplinkMuted);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end