@interface RMModelStatusTestDictionaryValue
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithKey1:(id)a3;
+ (id)buildWithKey1:(id)a3 key2:(id)a4;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelStatusTestDictionaryValue

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

+ (id)buildWithKey1:(id)a3 key2:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setStatusKey1:v6];

  [v7 setStatusKey2:v5];

  return v7;
}

+ (id)buildRequiredOnlyWithKey1:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setStatusKey1:v3];

  return v4;
}

+ (id)supportedOS
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_28746D088;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A2E0];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A2F8];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746D0A0;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A310];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A328];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746D0B8;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A340];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A358];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746D0D0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A370];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A388];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746D0E8;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A3A0];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A3B8];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746D100;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A3D0];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A3E8];
  v23[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v30[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelStatusTestDictionaryValue allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"key1" forKeyPath:@"statusKey1" isRequired:1 defaultValue:0 error:a5])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"key2" forKeyPath:@"statusKey2" isRequired:0 defaultValue:0 error:a5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelStatusTestDictionaryValue *)self statusKey1];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"key1" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelStatusTestDictionaryValue *)self statusKey2];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"key2" value:v6 isRequired:0 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMModelStatusTestDictionaryValue;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_statusKey1 copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_statusKey2 copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end