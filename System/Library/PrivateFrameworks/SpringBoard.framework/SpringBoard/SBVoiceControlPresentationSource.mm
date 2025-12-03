@interface SBVoiceControlPresentationSource
+ (id)sourceFromBluetoothDevice:(id)device;
+ (id)sourceFromHeadsetButton;
+ (id)sourceFromHomeButton;
- (BluetoothDevice)bluetoothDevice;
- (id)_initWithSourceType:(int64_t)type;
- (void)bluetoothDevice;
@end

@implementation SBVoiceControlPresentationSource

+ (id)sourceFromBluetoothDevice:(id)device
{
  deviceCopy = device;
  v6 = [[self alloc] _initWithSourceType:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 8), device);
  }

  return v7;
}

+ (id)sourceFromHeadsetButton
{
  v2 = [[self alloc] _initWithSourceType:2];

  return v2;
}

+ (id)sourceFromHomeButton
{
  v2 = [[self alloc] _initWithSourceType:0];

  return v2;
}

- (id)_initWithSourceType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = SBVoiceControlPresentationSource;
  result = [(SBVoiceControlPresentationSource *)&v5 init];
  if (result)
  {
    *(result + 2) = type;
  }

  return result;
}

- (BluetoothDevice)bluetoothDevice
{
  if ([(SBVoiceControlPresentationSource *)self sourceType]!= 1)
  {
    [(SBVoiceControlPresentationSource *)a2 bluetoothDevice];
  }

  bluetoothDevice = self->_bluetoothDevice;

  return bluetoothDevice;
}

- (void)bluetoothDevice
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(self);
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBVoiceControlPresentationSource.m" lineNumber:41 description:{@"%@ can only be called when the source type is Bluetooth", v4}];
}

@end