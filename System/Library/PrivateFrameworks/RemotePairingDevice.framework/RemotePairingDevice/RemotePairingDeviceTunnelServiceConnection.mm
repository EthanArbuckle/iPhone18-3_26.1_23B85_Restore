@interface RemotePairingDeviceTunnelServiceConnection
- (id)copyRemoteUnlockDeviceKeyForTunnelWithTunnelName:(id)name error:(id *)error;
@end

@implementation RemotePairingDeviceTunnelServiceConnection

- (id)copyRemoteUnlockDeviceKeyForTunnelWithTunnelName:(id)name error:(id *)error
{
  sub_26203A1BC();
  selfCopy = self;
  v6 = RemotePairingDeviceTunnelServiceConnection.copyRemoteUnlockDeviceKeyForTunnel(tunnelName:)();
  v8 = v7;

  v9 = sub_26203952C();
  sub_261F6BFFC(v6, v8);
  return v9;
}

@end