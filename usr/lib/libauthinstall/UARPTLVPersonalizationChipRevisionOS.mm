@interface UARPTLVPersonalizationChipRevisionOS
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationChipRevisionOS)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setChipRevision:(unsigned int)revision;
@end

@implementation UARPTLVPersonalizationChipRevisionOS

- (UARPTLVPersonalizationChipRevisionOS)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationChipRevisionOS;
  return [(UARPMetaDataTLV32OS *)&v3 init];
}

- (void)setChipRevision:(unsigned int)revision
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(&selfCopy->super.super._tlvLength + 1) = revision;
  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationChipRevisionOS metaDataTableEntry];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %u>", v5, *(&self->super.super._tlvLength + 1)];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationChipRevisionOS tlvType];
  v4 = *(&self->super.super._tlvLength + 1);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationChipRevisionOS;
  v5 = [(UARPMetaDataTLV32OS *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 1);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationChipRevisionOS;
  v3 = [(UARPMetaDataTLV32OS *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[0] = @"Personalization Chip Revision";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{+[UARPTLVPersonalizationChipRevisionOS tlvType](UARPTLVPersonalizationChipRevisionOS, "tlvType")}];
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

    [v5 setChipRevision:unsignedLongValue];
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
    [v5 setChipRevision:uarpHtonl(*value)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end