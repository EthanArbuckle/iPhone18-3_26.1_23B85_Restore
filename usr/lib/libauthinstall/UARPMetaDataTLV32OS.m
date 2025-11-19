@interface UARPMetaDataTLV32OS
- (UARPMetaDataTLV32OS)init;
- (id)tlvValue:(unsigned int)a3;
@end

@implementation UARPMetaDataTLV32OS

- (UARPMetaDataTLV32OS)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV32OS;
  return [(UARPMetaDataTLVOS *)&v3 init];
}

- (id)tlvValue:(unsigned int)a3
{
  v5 = uarpHtonl(a3);
  v3 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:&v5 length:4];

  return v3;
}

@end