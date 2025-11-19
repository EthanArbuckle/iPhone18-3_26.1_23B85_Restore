@interface UARPTLVPersonalizationNonceHashOS
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)a3;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVPersonalizationNonceHashOS)init;
- (id)description;
- (id)generateTLV;
- (void)setNonceHash:(id)a3;
@end

@implementation UARPTLVPersonalizationNonceHashOS

- (UARPTLVPersonalizationNonceHashOS)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationNonceHashOS;
  return [(UARPMetaDataTLVDataOS *)&v3 init];
}

- (void)setNonceHash:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 copy];
  nonceHash = v5->_nonceHash;
  v5->_nonceHash = v6;

  objc_sync_exit(v5);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationNonceHashOS metaDataTableEntry];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %@>", v5, self->_nonceHash];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationNonceHashOS tlvType];
  nonceHash = self->_nonceHash;
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationNonceHashOS;
  v5 = [(UARPMetaDataTLVDataOS *)&v7 generateTLV:v3 tlvValue:nonceHash];

  return v5;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[0] = @"Personalization Nonce Hash";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{+[UARPTLVPersonalizationNonceHashOS tlvType](UARPTLVPersonalizationNonceHashOS, "tlvType")}];
  v7[1] = v2;
  v3 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

+ (id)tlvFromPropertyListValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_new();
    [v4 setNonceHash:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = objc_opt_new();
  v7 = [MEMORY[0x29EDB8DA0] dataWithBytes:a4 length:a3];
  [v6 setNonceHash:v7];

  return v6;
}

@end