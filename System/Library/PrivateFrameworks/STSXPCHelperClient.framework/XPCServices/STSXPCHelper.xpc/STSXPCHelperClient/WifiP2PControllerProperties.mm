@interface WifiP2PControllerProperties
- (id)description;
@end

@implementation WifiP2PControllerProperties

- (id)description
{
  if (self)
  {
    supportedBandsBitmap = self->_supportedBandsBitmap;
    v4 = self->_operatingChannel;
    operatingClass = self->_operatingClass;
    supportedCiphterSuites = self->_supportedCiphterSuites;
  }

  else
  {
    operatingClass = 0;
    supportedBandsBitmap = 0;
    v4 = 0;
    supportedCiphterSuites = 0;
  }

  v7 = [NSString stringWithFormat:@"{supportedBands=0x%x, channel=%@, operatingClass=%d, supportedCiphers=%@}", supportedBandsBitmap, v4, operatingClass, supportedCiphterSuites];

  return v7;
}

@end