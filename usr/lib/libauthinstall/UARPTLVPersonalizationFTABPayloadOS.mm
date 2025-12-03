@interface UARPTLVPersonalizationFTABPayloadOS
+ (id)metaDataTableEntry;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationFTABPayloadOS)init;
- (id)description;
- (void)setTLVs:(id)vs;
@end

@implementation UARPTLVPersonalizationFTABPayloadOS

- (UARPTLVPersonalizationFTABPayloadOS)init
{
  v6.receiver = self;
  v6.super_class = UARPTLVPersonalizationFTABPayloadOS;
  v2 = [(UARPMetaDataTLVOS *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    tlvs = v2->_tlvs;
    v2->_tlvs = v3;
  }

  return v2;
}

- (void)setTLVs:(id)vs
{
  vsCopy = vs;
  bytes = [vsCopy bytes];
  if ([vsCopy length])
  {
    v6 = 0;
    do
    {
      if (v6 + 4 > [vsCopy length])
      {
        break;
      }

      v7 = uarpHtonl(*(bytes + v6));
      v8 = v6 + 8;
      if (v6 + 8 > [vsCopy length])
      {
        break;
      }

      v9 = uarpHtonl(*(bytes + v6 + 4));
      v6 = v8 + v9;
      if (v6 > [vsCopy length])
      {
        break;
      }

      v10 = [UARPMetaDataTLVOS tlvFromType:v7 length:v9 value:bytes + v8];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      [(NSMutableArray *)self->_tlvs addObject:v10];
    }

    while (v6 < [vsCopy length]);
  }
}

- (id)description
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = +[UARPTLVPersonalizationFTABPayloadOS metaDataTableEntry];
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  [v4 appendFormat:@"<%@: \r", v5];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_tlvs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v4 appendFormat:@"        <%@>\r", *(*(&v14 + 1) + 8 * i)];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [v4 appendFormat:@"    >"];
  v11 = [MEMORY[0x29EDBA0F8] stringWithString:v4];

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[0] = @"Personalization FTAB Payload";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{+[UARPTLVPersonalizationFTABPayloadOS tlvType](UARPTLVPersonalizationFTABPayloadOS, "tlvType")}];
  v7[1] = v2;
  v3 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  v4 = [MEMORY[0x29EDB8DA0] dataWithBytes:value length:length];
  v5 = objc_opt_new();
  [v5 setTLVs:v4];

  return v5;
}

@end