@interface AAUSBDeivce
- (id)description;
@end

@implementation AAUSBDeivce

- (id)description
{
  model = self->_model;
  color = self->_color;
  pid = self->_pid;
  name = self->_name;
  btAddress = self->_btAddress;
  NSAppendPrintF();

  return 0;
}

@end