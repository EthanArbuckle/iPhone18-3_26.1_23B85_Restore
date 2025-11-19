@interface SKDevice
- (id)description;
@end

@implementation SKDevice

- (id)description
{
  v3 = [objc_opt_class() description];
  identifier = self->_identifier;
  blePSM = self->_blePSM;
  v4 = NSPrintF();

  return v4;
}

@end