@interface UARPTLVPersonalizationECIDOS
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationECIDOS)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setEcID:(unint64_t)d;
@end

@implementation UARPTLVPersonalizationECIDOS

- (UARPTLVPersonalizationECIDOS)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationECIDOS;
  return [(UARPMetaDataTLV64OS *)&v3 init];
}

- (void)setEcID:(unint64_t)d
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_ecID = d;
  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationECIDOS metaDataTableEntry];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: 0x%016llx>", v5, self->_ecID];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationECIDOS tlvType];
  ecID = self->_ecID;
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationECIDOS;
  v5 = [(UARPMetaDataTLV64OS *)&v7 generateTLV:v3 tlvValue:ecID];

  return v5;
}

- (id)tlvValue
{
  ecID = self->_ecID;
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationECIDOS;
  v3 = [(UARPMetaDataTLV64OS *)&v5 tlvValue:ecID];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[0] = @"Personalization ECID";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{+[UARPTLVPersonalizationECIDOS tlvType](UARPTLVPersonalizationECIDOS, "tlvType")}];
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
    unsignedLongLongValue = [v4 unsignedLongLongValue];

    [v5 setEcID:unsignedLongLongValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  if (length == 8)
  {
    v5 = objc_opt_new();
    [v5 setEcID:uarpHtonll(*value)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end