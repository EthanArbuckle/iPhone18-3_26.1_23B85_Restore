@interface UARPMetaDataTLV64OS
- (UARPMetaDataTLV64OS)init;
- (id)generateTLV:(unsigned int)v tlvValue:(unint64_t)value;
- (id)tlvValue:(unint64_t)value;
@end

@implementation UARPMetaDataTLV64OS

- (UARPMetaDataTLV64OS)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV64OS;
  return [(UARPMetaDataTLVOS *)&v3 init];
}

- (id)generateTLV:(unsigned int)v tlvValue:(unint64_t)value
{
  v7 = objc_alloc_init(MEMORY[0x29EDB8DF8]);
  v12 = uarpHtonl(v);
  [v7 appendBytes:&v12 length:4];
  v11 = uarpHtonl(8u);
  [v7 appendBytes:&v11 length:4];
  v8 = [(UARPMetaDataTLV64OS *)self tlvValue:value];
  [v7 appendData:v8];
  v9 = [MEMORY[0x29EDB8DA0] dataWithData:v7];

  return v9;
}

- (id)tlvValue:(unint64_t)value
{
  v5 = uarpHtonll(value);
  v3 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:&v5 length:8];

  return v3;
}

@end