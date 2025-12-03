@interface ALCentralCoreBluetooth
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManagerDidUpdateState:(id)state;
@end

@implementation ALCentralCoreBluetooth

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  peripheralCopy = peripheral;
  iCopy = i;
  selfCopy = self;
  sub_100349BE0(peripheralCopy, v10, iCopy);
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_100346E94(stateCopy);
}

@end