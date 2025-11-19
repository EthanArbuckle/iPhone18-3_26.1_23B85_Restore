@interface UARPMetaDataTLVStringOS
- (UARPMetaDataTLVStringOS)init;
- (id)generateTLV:(unsigned int)a3 tlvValue:(id)a4;
- (id)tlvValue:(id)a3;
@end

@implementation UARPMetaDataTLVStringOS

- (UARPMetaDataTLVStringOS)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLVStringOS;
  return [(UARPMetaDataTLVOS *)&v3 init];
}

- (id)generateTLV:(unsigned int)a3 tlvValue:(id)a4
{
  v6 = MEMORY[0x29EDB8DF8];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  v13 = uarpHtonl(a3);
  [v8 appendBytes:&v13 length:4];
  v12 = uarpHtonl([v7 length]);
  [v8 appendBytes:&v12 length:4];
  v9 = [(UARPMetaDataTLVStringOS *)self tlvValue:v7];

  [v8 appendData:v9];
  v10 = [MEMORY[0x29EDB8DA0] dataWithData:v8];

  return v10;
}

- (id)tlvValue:(id)a3
{
  v3 = MEMORY[0x29EDB8DA0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 UTF8String];
  v7 = [v4 length];

  v8 = [v5 initWithBytes:v6 length:v7];

  return v8;
}

@end