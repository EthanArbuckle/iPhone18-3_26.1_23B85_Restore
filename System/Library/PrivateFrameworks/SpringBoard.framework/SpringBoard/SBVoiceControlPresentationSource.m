@interface SBVoiceControlPresentationSource
+ (id)sourceFromBluetoothDevice:(id)a3;
+ (id)sourceFromHeadsetButton;
+ (id)sourceFromHomeButton;
- (BluetoothDevice)bluetoothDevice;
- (id)_initWithSourceType:(int64_t)a3;
- (void)bluetoothDevice;
@end

@implementation SBVoiceControlPresentationSource

+ (id)sourceFromBluetoothDevice:(id)a3
{
  v5 = a3;
  v6 = [[a1 alloc] _initWithSourceType:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 8), a3);
  }

  return v7;
}

+ (id)sourceFromHeadsetButton
{
  v2 = [[a1 alloc] _initWithSourceType:2];

  return v2;
}

+ (id)sourceFromHomeButton
{
  v2 = [[a1 alloc] _initWithSourceType:0];

  return v2;
}

- (id)_initWithSourceType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBVoiceControlPresentationSource;
  result = [(SBVoiceControlPresentationSource *)&v5 init];
  if (result)
  {
    *(result + 2) = a3;
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
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"SBVoiceControlPresentationSource.m" lineNumber:41 description:{@"%@ can only be called when the source type is Bluetooth", v4}];
}

@end