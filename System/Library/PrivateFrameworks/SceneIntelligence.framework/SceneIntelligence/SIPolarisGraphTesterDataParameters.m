@interface SIPolarisGraphTesterDataParameters
- (id)streamFromParameters;
@end

@implementation SIPolarisGraphTesterDataParameters

- (id)streamFromParameters
{
  v4 = vdupq_n_s64(1uLL);
  v2 = [MEMORY[0x277D3E690] dataStreamWithResourceKey:self->_resourceKey options:&v4 length:self->_dataSize];

  return v2;
}

@end