@interface UARPMetaDataTLV8OS
- (UARPMetaDataTLV8OS)init;
- (id)tlvValue:(unsigned __int8)value;
@end

@implementation UARPMetaDataTLV8OS

- (UARPMetaDataTLV8OS)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV8OS;
  return [(UARPMetaDataTLVOS *)&v3 init];
}

- (id)tlvValue:(unsigned __int8)value
{
  valueCopy = value;
  v3 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:&valueCopy length:1];

  return v3;
}

@end