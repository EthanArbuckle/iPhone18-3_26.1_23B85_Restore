@interface UARPTLVPersonalizationPayloadTagOS
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationPayloadTagOS)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setTag:(id)tag;
@end

@implementation UARPTLVPersonalizationPayloadTagOS

- (UARPTLVPersonalizationPayloadTagOS)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationPayloadTagOS;
  return [(UARPMetaDataTLVOS *)&v3 init];
}

- (void)setTag:(id)tag
{
  tagCopy = tag;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [tagCopy copy];
  tag = selfCopy->_tag;
  selfCopy->_tag = v6;

  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationPayloadTagOS metaDataTableEntry];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %@>", v5, self->_tag];

  return v6;
}

- (id)generateTLV
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DF8]);
  v8 = uarpHtonl(+[UARPTLVPersonalizationPayloadTagOS tlvType]);
  [v3 appendBytes:&v8 length:4];
  v7 = uarpHtonl(4u);
  [v3 appendBytes:&v7 length:4];
  tlvValue = [(UARPTLVPersonalizationPayloadTagOS *)self tlvValue];
  [v3 appendData:tlvValue];

  v5 = [MEMORY[0x29EDB8DA0] dataWithData:v3];

  return v5;
}

- (id)tlvValue
{
  v4 = [(UARPAssetTagOS *)self->_tag tag];
  v2 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:&v4 length:4];

  return v2;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[0] = @"Personalization Payload Tag";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{+[UARPTLVPersonalizationPayloadTagOS tlvType](UARPTLVPersonalizationPayloadTagOS, "tlvType")}];
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
    if ([v4 length] == 4)
    {
      uTF8String = [v4 UTF8String];
      v6 = objc_opt_new();
      v7 = [[UARPAssetTagOS alloc] initWithChar1:*uTF8String char2:uTF8String[1] char3:uTF8String[2] char4:uTF8String[3]];
      [v6 setTag:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  if (length == 4)
  {
    v5 = objc_opt_new();
    v6 = [[UARPAssetTagOS alloc] initWithChar1:*value char2:*(value + 1) char3:*(value + 2) char4:*(value + 3)];
    [v5 setTag:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end