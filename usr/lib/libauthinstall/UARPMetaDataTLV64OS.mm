@interface UARPMetaDataTLV64OS
- (UARPMetaDataTLV64OS)init;
- (id)generateTLV:(unsigned int)a3 tlvValue:(unint64_t)a4;
- (id)tlvValue:(unint64_t)a3;
@end

@implementation UARPMetaDataTLV64OS

- (UARPMetaDataTLV64OS)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV64OS;
  return [(UARPMetaDataTLVOS *)&v3 init];
}

- (id)generateTLV:(unsigned int)a3 tlvValue:(unint64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x29EDB8DF8]);
  v12 = uarpHtonl(a3);
  [v7 appendBytes:&v12 length:4];
  v11 = uarpHtonl(8u);
  [v7 appendBytes:&v11 length:4];
  v8 = [(UARPMetaDataTLV64OS *)self tlvValue:a4];
  [v7 appendData:v8];
  v9 = [MEMORY[0x29EDB8DA0] dataWithData:v7];

  return v9;
}

- (id)tlvValue:(unint64_t)a3
{
  v5 = uarpHtonll(a3);
  v3 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:&v5 length:8];

  return v3;
}

@end