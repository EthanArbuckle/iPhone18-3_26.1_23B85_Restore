@interface RMModelStatusSoftwareUpdateFailureReason
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithCount:(id)a3;
+ (id)buildWithCount:(id)a3 reason:(id)a4 timestamp:(id)a5;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelStatusSoftwareUpdateFailureReason

+ (NSSet)allowedStatusKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"count";
  v7[1] = @"reason";
  v7[2] = @"timestamp";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithCount:(id)a3 reason:(id)a4 timestamp:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setStatusCount:v9];

  [v10 setStatusReason:v8];
  [v10 setStatusTimestamp:v7];

  return v10;
}

+ (id)buildRequiredOnlyWithCount:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setStatusCount:v3];

  return v4;
}

+ (id)supportedOS
{
  v26[5] = *MEMORY[0x277D85DE8];
  v25[0] = &unk_28746CD88;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469CE0];
  v24[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469CF8];
  v24[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v26[0] = v17;
  v25[1] = &unk_28746CDA0;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469D10];
  v23[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469D28];
  v23[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v26[1] = v14;
  v25[2] = &unk_28746CDD0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469D40];
  v22[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469D58];
  v22[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v26[2] = v4;
  v25[3] = &unk_28746CDB8;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469D70];
  v21[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469D88];
  v21[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v26[3] = v7;
  v25[4] = &unk_28746CDE8;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469DA0];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469DB8];
  v20[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v26[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelStatusSoftwareUpdateFailureReason allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadIntegerFromDictionary:v7 usingKey:@"count" forKeyPath:@"statusCount" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"reason" forKeyPath:@"statusReason" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"timestamp" forKeyPath:@"statusTimestamp" isRequired:0 defaultValue:0 error:a5];
  return v13;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelStatusSoftwareUpdateFailureReason *)self statusCount];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"count" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelStatusSoftwareUpdateFailureReason *)self statusReason];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"reason" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelStatusSoftwareUpdateFailureReason *)self statusTimestamp];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"timestamp" value:v7 isRequired:0 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMModelStatusSoftwareUpdateFailureReason;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:a3];
  v5 = [(NSNumber *)self->_statusCount copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_statusReason copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_statusTimestamp copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end