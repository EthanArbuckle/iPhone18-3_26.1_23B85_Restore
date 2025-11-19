@interface UARPMetaDataTLV8OS
- (UARPMetaDataTLV8OS)init;
- (id)tlvValue:(unsigned __int8)a3;
@end

@implementation UARPMetaDataTLV8OS

- (UARPMetaDataTLV8OS)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV8OS;
  return [(UARPMetaDataTLVOS *)&v3 init];
}

- (id)tlvValue:(unsigned __int8)a3
{
  v5 = a3;
  v3 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:&v5 length:1];

  return v3;
}

@end