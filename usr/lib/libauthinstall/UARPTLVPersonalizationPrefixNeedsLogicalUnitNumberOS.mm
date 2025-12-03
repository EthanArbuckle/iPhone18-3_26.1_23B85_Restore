@interface UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberOS
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberOS)init;
- (id)generateTLV;
- (id)tlvValue;
- (void)setPrefixNeedsLogicalUnitNumber:(unsigned __int8)number;
@end

@implementation UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberOS

- (UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberOS)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberOS;
  return [(UARPMetaDataTLV8OS *)&v3 init];
}

- (void)setPrefixNeedsLogicalUnitNumber:(unsigned __int8)number
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(&selfCopy->super.super._tlvLength + 4) = number;
  objc_sync_exit(selfCopy);
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberOS tlvType];
  v4 = *(&self->super.super._tlvLength + 4);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberOS;
  v5 = [(UARPMetaDataTLV8OS *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 4);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberOS;
  v3 = [(UARPMetaDataTLV8OS *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[0] = @"Personalization Prefix Needs Logical Unit Number";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{+[UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberOS tlvType](UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberOS, "tlvType")}];
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
    unsignedCharValue = [v4 unsignedCharValue];

    [v5 setPrefixNeedsLogicalUnitNumber:unsignedCharValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  if (length == 1)
  {
    v5 = objc_opt_new();
    [v5 setPrefixNeedsLogicalUnitNumber:*value];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end