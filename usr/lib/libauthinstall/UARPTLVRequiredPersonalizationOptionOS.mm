@interface UARPTLVRequiredPersonalizationOptionOS
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVRequiredPersonalizationOptionOS)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setTssOption:(unsigned int)option;
@end

@implementation UARPTLVRequiredPersonalizationOptionOS

- (UARPTLVRequiredPersonalizationOptionOS)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVRequiredPersonalizationOptionOS;
  return [(UARPMetaDataTLV32OS *)&v3 init];
}

- (void)setTssOption:(unsigned int)option
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(&selfCopy->super.super._tlvLength + 1) = option;
  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVRequiredPersonalizationOptionOS metaDataTableEntry];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [UARPMetaDataTLVOS tlvTypeName:*(&self->super.super._tlvLength + 1)];
  v7 = [v4 stringWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

- (id)generateTLV
{
  v3 = +[UARPTLVRequiredPersonalizationOptionOS tlvType];
  v4 = *(&self->super.super._tlvLength + 1);
  v7.receiver = self;
  v7.super_class = UARPTLVRequiredPersonalizationOptionOS;
  v5 = [(UARPMetaDataTLV32OS *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 1);
  v5.receiver = self;
  v5.super_class = UARPTLVRequiredPersonalizationOptionOS;
  v3 = [(UARPMetaDataTLV32OS *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[0] = @"Required Personalization Option";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{+[UARPTLVRequiredPersonalizationOptionOS tlvType](UARPTLVRequiredPersonalizationOptionOS, "tlvType")}];
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
    unsignedLongValue = [v4 unsignedLongValue];

    [v5 setTssOption:unsignedLongValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  if (length == 4)
  {
    v5 = objc_opt_new();
    [v5 setTssOption:uarpHtonl(*value)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end