@interface UARPTLVPersonalizationFTABSubfileESECOS
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationFTABSubfileESECOS)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setEsec:(unsigned __int16)esec;
@end

@implementation UARPTLVPersonalizationFTABSubfileESECOS

- (UARPTLVPersonalizationFTABSubfileESECOS)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationFTABSubfileESECOS;
  return [(UARPMetaDataTLV16OS *)&v3 init];
}

- (void)setEsec:(unsigned __int16)esec
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(&selfCopy->super.super._tlvLength + 2) = esec;
  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationFTABSubfileESECOS metaDataTableEntry];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %u>", v5, *(&self->super.super._tlvLength + 2)];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationFTABSubfileESECOS tlvType];
  v4 = *(&self->super.super._tlvLength + 2);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationFTABSubfileESECOS;
  v5 = [(UARPMetaDataTLV16OS *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 2);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationFTABSubfileESECOS;
  v3 = [(UARPMetaDataTLV16OS *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[0] = @"Personalization FTAB Payload Security Mode";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{+[UARPTLVPersonalizationFTABSubfileESECOS tlvType](UARPTLVPersonalizationFTABSubfileESECOS, "tlvType")}];
  v7[1] = v2;
  v3 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

+ (id)tlvFromPropertyListValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = valueCopy;
    v5 = objc_opt_new();
    unsignedShortValue = [v4 unsignedShortValue];

    [v5 setEsec:unsignedShortValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  if (length == 2)
  {
    v5 = objc_opt_new();
    [v5 setEsec:uarpHtons(*value)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end