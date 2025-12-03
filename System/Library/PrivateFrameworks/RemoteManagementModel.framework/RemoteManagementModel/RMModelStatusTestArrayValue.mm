@interface RMModelStatusTestArrayValue
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithKey1:(id)key1;
+ (id)buildWithKey1:(id)key1 key2:(id)key2;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelStatusTestArrayValue

+ (NSSet)allowedStatusKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"key1";
  v7[1] = @"key2";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithKey1:(id)key1 key2:(id)key2
{
  key2Copy = key2;
  key1Copy = key1;
  v7 = objc_opt_new();
  [v7 setStatusKey1:key1Copy];

  [v7 setStatusKey2:key2Copy];

  return v7;
}

+ (id)buildRequiredOnlyWithKey1:(id)key1
{
  key1Copy = key1;
  v4 = objc_opt_new();
  [v4 setStatusKey1:key1Copy];

  return v4;
}

+ (id)supportedOS
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_28746CF68;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A0A0];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A0B8];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746CF80;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A0D0];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A0E8];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746CF98;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A100];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A118];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746CFB0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A130];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A148];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746CFC8;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A160];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A178];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746CFE0;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A190];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A1A8];
  v23[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v30[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelStatusTestArrayValue allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"key1" forKeyPath:@"statusKey1" isRequired:1 defaultValue:0 error:error])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"key2" forKeyPath:@"statusKey2" isRequired:0 defaultValue:0 error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  statusKey1 = [(RMModelStatusTestArrayValue *)self statusKey1];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"key1" value:statusKey1 isRequired:1 defaultValue:0];

  statusKey2 = [(RMModelStatusTestArrayValue *)self statusKey2];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"key2" value:statusKey2 isRequired:0 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelStatusTestArrayValue;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_statusKey1 copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_statusKey2 copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end