@interface UARPTLVPersonalizationManifestSuffixOS
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)a3;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVPersonalizationManifestSuffixOS)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setManifestSuffix:(id)a3;
@end

@implementation UARPTLVPersonalizationManifestSuffixOS

- (UARPTLVPersonalizationManifestSuffixOS)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationManifestSuffixOS;
  return [(UARPMetaDataTLVStringOS *)&v3 init];
}

- (void)setManifestSuffix:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 copy];
  manifestSuffix = v5->_manifestSuffix;
  v5->_manifestSuffix = v6;

  objc_sync_exit(v5);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationManifestSuffixOS metaDataTableEntry];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %@>", v5, self->_manifestSuffix];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationManifestSuffixOS tlvType];
  manifestSuffix = self->_manifestSuffix;
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationManifestSuffixOS;
  v5 = [(UARPMetaDataTLVStringOS *)&v7 generateTLV:v3 tlvValue:manifestSuffix];

  return v5;
}

- (id)tlvValue
{
  manifestSuffix = self->_manifestSuffix;
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationManifestSuffixOS;
  v3 = [(UARPMetaDataTLVStringOS *)&v5 tlvValue:manifestSuffix];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[0] = @"Personalization Manifest Suffix";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{+[UARPTLVPersonalizationManifestSuffixOS tlvType](UARPTLVPersonalizationManifestSuffixOS, "tlvType")}];
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
    [v4 setManifestSuffix:v3];
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
  v7 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:a4 length:a3 encoding:4];
  [v6 setManifestSuffix:v7];

  return v6;
}

@end