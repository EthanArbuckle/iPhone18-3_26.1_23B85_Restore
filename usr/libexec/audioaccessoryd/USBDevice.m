@interface USBDevice
- (id)description;
@end

@implementation USBDevice

- (id)description
{
  color = self->_color;
  pairingMode = self->_pairingMode;
  usbModel = self->_usbModel;
  pid = self->_pid;
  btAddress = self->_btAddress;
  usbName = self->_usbName;
  NSAppendPrintF();

  return 0;
}

@end