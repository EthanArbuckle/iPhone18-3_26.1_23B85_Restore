@interface PowerUIBluetoothHandlerFake
- (id)init:(id)init;
- (void)dealloc;
@end

@implementation PowerUIBluetoothHandlerFake

- (id)init:(id)init
{
  initCopy = init;
  v8.receiver = self;
  v8.super_class = PowerUIBluetoothHandlerFake;
  v5 = [(PowerUIBluetoothHandler *)&v8 init];
  v5->_fakeDevice = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  fakeDeviceAddress = v5->_fakeDeviceAddress;
  v5->_fakeDeviceAddress = initCopy;

  v5->_fakeDeviceConnected = 1;
  return v5;
}

- (void)dealloc
{
  free(self->_fakeDevice);
  v3.receiver = self;
  v3.super_class = PowerUIBluetoothHandlerFake;
  [(PowerUIBluetoothHandlerFake *)&v3 dealloc];
}

@end