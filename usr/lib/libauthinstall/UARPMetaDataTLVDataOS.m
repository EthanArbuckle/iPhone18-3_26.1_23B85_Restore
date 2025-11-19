@interface UARPMetaDataTLVDataOS
- (UARPMetaDataTLVDataOS)init;
- (id)generateTLV:(unsigned int)a3 tlvValue:(id)a4;
@end

@implementation UARPMetaDataTLVDataOS

- (UARPMetaDataTLVDataOS)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLVDataOS;
  return [(UARPMetaDataTLVOS *)&v3 init];
}

- (id)generateTLV:(unsigned int)a3 tlvValue:(id)a4
{
  v5 = MEMORY[0x29EDB8DF8];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  v11 = uarpHtonl(a3);
  [v7 appendBytes:&v11 length:4];
  v10 = uarpHtonl([v6 length]);
  [v7 appendBytes:&v10 length:4];
  [v7 appendData:v6];

  v8 = [MEMORY[0x29EDB8DA0] dataWithData:v7];

  return v8;
}

@end