@interface ALCentralCoreBluetooth
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManagerDidUpdateState:(id)a3;
@end

@implementation ALCentralCoreBluetooth

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = self;
  sub_100349BE0(v12, v10, v13);
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100346E94(v4);
}

@end