@interface UARPTLVPersonalizationSoCLiveNonceOS
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)a3;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVPersonalizationSoCLiveNonceOS)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setLiveNonce:(unsigned __int8)a3;
@end

@implementation UARPTLVPersonalizationSoCLiveNonceOS

- (UARPTLVPersonalizationSoCLiveNonceOS)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationSoCLiveNonceOS;
  return [(UARPMetaDataTLV8OS *)&v3 init];
}

- (void)setLiveNonce:(unsigned __int8)a3
{
  v4 = self;
  objc_sync_enter(v4);
  *(&v4->super.super._tlvLength + 4) = a3;
  objc_sync_exit(v4);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationSoCLiveNonceOS metaDataTableEntry];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = v5;
  if (*(&self->super.super._tlvLength + 4))
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v4 stringWithFormat:@"<%@: %@>", v5, v7];

  return v8;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationSoCLiveNonceOS tlvType];
  v4 = *(&self->super.super._tlvLength + 4);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationSoCLiveNonceOS;
  v5 = [(UARPMetaDataTLV8OS *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 4);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationSoCLiveNonceOS;
  v3 = [(UARPMetaDataTLV8OS *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[0] = @"Personalization SoC Live Nonce";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{+[UARPTLVPersonalizationSoCLiveNonceOS tlvType](UARPTLVPersonalizationSoCLiveNonceOS, "tlvType")}];
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
    v4 = v3;
    v5 = objc_opt_new();
    v6 = [v4 unsignedCharValue];

    [v5 setLiveNonce:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4
{
  if (a3 == 1)
  {
    v5 = objc_opt_new();
    [v5 setLiveNonce:*a4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end