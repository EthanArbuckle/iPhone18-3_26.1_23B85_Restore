@interface UARPTLVPersonalizationRequiredOS
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)a3;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVPersonalizationRequiredOS)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setIsRequired:(unsigned int)a3;
@end

@implementation UARPTLVPersonalizationRequiredOS

- (UARPTLVPersonalizationRequiredOS)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationRequiredOS;
  return [(UARPMetaDataTLV32OS *)&v3 init];
}

- (void)setIsRequired:(unsigned int)a3
{
  v4 = self;
  objc_sync_enter(v4);
  *(&v4->super.super._tlvLength + 1) = a3;
  objc_sync_exit(v4);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationRequiredOS metaDataTableEntry];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = v5;
  if (*(&self->super.super._tlvLength + 1))
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
  v3 = +[UARPTLVPersonalizationRequiredOS tlvType];
  v4 = *(&self->super.super._tlvLength + 1);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationRequiredOS;
  v5 = [(UARPMetaDataTLV32OS *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 1);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationRequiredOS;
  v3 = [(UARPMetaDataTLV32OS *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[0] = @"Personalization Required";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{+[UARPTLVPersonalizationRequiredOS tlvType](UARPTLVPersonalizationRequiredOS, "tlvType")}];
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
    v6 = [v4 unsignedLongValue];

    [v5 setIsRequired:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4
{
  if (a3 == 4)
  {
    v5 = objc_opt_new();
    [v5 setIsRequired:uarpHtonl(*a4)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end