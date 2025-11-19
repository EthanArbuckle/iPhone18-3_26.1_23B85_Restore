@interface RemotePairingDeviceTunnelServiceConnection
- (id)copyRemoteUnlockDeviceKeyForTunnelWithTunnelName:(id)a3 error:(id *)a4;
@end

@implementation RemotePairingDeviceTunnelServiceConnection

- (id)copyRemoteUnlockDeviceKeyForTunnelWithTunnelName:(id)a3 error:(id *)a4
{
  sub_26203A1BC();
  v5 = self;
  v6 = RemotePairingDeviceTunnelServiceConnection.copyRemoteUnlockDeviceKeyForTunnel(tunnelName:)();
  v8 = v7;

  v9 = sub_26203952C();
  sub_261F6BFFC(v6, v8);
  return v9;
}

@end