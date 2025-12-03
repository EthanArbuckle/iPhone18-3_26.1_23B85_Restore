@interface UARPTLVPersonalizedManifestOS
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizedManifestOS)init;
- (id)description;
- (id)generateTLV;
- (void)setManifest:(id)manifest;
@end

@implementation UARPTLVPersonalizedManifestOS

- (UARPTLVPersonalizedManifestOS)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizedManifestOS;
  return [(UARPMetaDataTLVDataOS *)&v3 init];
}

- (void)setManifest:(id)manifest
{
  manifestCopy = manifest;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [manifestCopy copy];
  manifest = selfCopy->_manifest;
  selfCopy->_manifest = v6;

  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizedManifestOS metaDataTableEntry];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %@>", v5, self->_manifest];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizedManifestOS tlvType];
  manifest = self->_manifest;
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizedManifestOS;
  v5 = [(UARPMetaDataTLVDataOS *)&v7 generateTLV:v3 tlvValue:manifest];

  return v5;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[0] = @"Personalized Manifest";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{+[UARPTLVPersonalizedManifestOS tlvType](UARPTLVPersonalizedManifestOS, "tlvType")}];
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
    v4 = objc_opt_new();
    [v4 setManifest:valueCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  v6 = objc_opt_new();
  v7 = [MEMORY[0x29EDB8DA0] dataWithBytes:value length:length];
  [v6 setManifest:v7];

  return v6;
}

@end