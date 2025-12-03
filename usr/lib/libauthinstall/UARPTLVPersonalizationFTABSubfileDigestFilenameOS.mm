@interface UARPTLVPersonalizationFTABSubfileDigestFilenameOS
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationFTABSubfileDigestFilenameOS)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setFilename:(id)filename;
@end

@implementation UARPTLVPersonalizationFTABSubfileDigestFilenameOS

- (UARPTLVPersonalizationFTABSubfileDigestFilenameOS)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationFTABSubfileDigestFilenameOS;
  return [(UARPMetaDataTLVStringOS *)&v3 init];
}

- (void)setFilename:(id)filename
{
  filenameCopy = filename;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [filenameCopy copy];
  filename = selfCopy->_filename;
  selfCopy->_filename = v6;

  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationFTABSubfileDigestFilenameOS metaDataTableEntry];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %@>", v5, self->_filename];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationFTABSubfileDigestFilenameOS tlvType];
  filename = self->_filename;
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationFTABSubfileDigestFilenameOS;
  v5 = [(UARPMetaDataTLVStringOS *)&v7 generateTLV:v3 tlvValue:filename];

  return v5;
}

- (id)tlvValue
{
  filename = self->_filename;
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationFTABSubfileDigestFilenameOS;
  v3 = [(UARPMetaDataTLVStringOS *)&v5 tlvValue:filename];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[0] = &unk_2A1EFD040;
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{+[UARPTLVPersonalizationFTABSubfileDigestFilenameOS tlvType](UARPTLVPersonalizationFTABSubfileDigestFilenameOS, "tlvType")}];
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
    [v4 setFilename:valueCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  v4 = strndup(value, length);
  v5 = objc_opt_new();
  v6 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v4];
  [v5 setFilename:v6];

  free(v4);

  return v5;
}

@end