@interface UARPMetaDataTLV16OS
- (UARPMetaDataTLV16OS)init;
- (id)tlvValue:(unsigned __int16)value;
@end

@implementation UARPMetaDataTLV16OS

- (UARPMetaDataTLV16OS)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV16OS;
  return [(UARPMetaDataTLVOS *)&v3 init];
}

- (id)tlvValue:(unsigned __int16)value
{
  v5 = uarpHtons(value);
  v3 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:&v5 length:2];

  return v3;
}

@end