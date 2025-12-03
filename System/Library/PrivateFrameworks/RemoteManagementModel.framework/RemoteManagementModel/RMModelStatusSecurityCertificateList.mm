@interface RMModelStatusSecurityCertificateList
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier subjectSummary:(id)summary isIdentity:(id)identity data:(id)data;
+ (id)buildWithIdentifier:(id)identifier removed:(id)removed declarationIdentifier:(id)declarationIdentifier subjectSummary:(id)summary isIdentity:(id)identity data:(id)data;
+ (id)supportedOS;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RMModelStatusSecurityCertificateList

+ (NSSet)allowedStatusKeys
{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"identifier";
  v7[1] = @"_removed";
  v7[2] = @"declaration-identifier";
  v7[3] = @"subject-summary";
  v7[4] = @"is-identity";
  v7[5] = @"data";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)identifier removed:(id)removed declarationIdentifier:(id)declarationIdentifier subjectSummary:(id)summary isIdentity:(id)identity data:(id)data
{
  dataCopy = data;
  identityCopy = identity;
  summaryCopy = summary;
  declarationIdentifierCopy = declarationIdentifier;
  removedCopy = removed;
  identifierCopy = identifier;
  v19 = objc_opt_new();
  [v19 setStatusIdentifier:identifierCopy];

  if (removedCopy)
  {
    v20 = removedCopy;
  }

  else
  {
    v20 = MEMORY[0x277CBEC28];
  }

  [v19 setStatusRemoved:v20];

  [v19 setStatusDeclarationIdentifier:declarationIdentifierCopy];
  [v19 setStatusSubjectSummary:summaryCopy];

  [v19 setStatusIsIdentity:identityCopy];
  [v19 setStatusData:dataCopy];

  return v19;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier subjectSummary:(id)summary isIdentity:(id)identity data:(id)data
{
  dataCopy = data;
  identityCopy = identity;
  summaryCopy = summary;
  identifierCopy = identifier;
  v13 = objc_opt_new();
  [v13 setStatusIdentifier:identifierCopy];

  [v13 setStatusSubjectSummary:summaryCopy];
  [v13 setStatusIsIdentity:identityCopy];

  [v13 setStatusData:dataCopy];

  return v13;
}

+ (id)supportedOS
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_28746CC98;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469B90];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469BA8];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746CCB0;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469BC0];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469BD8];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746CCC8;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469BF0];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469C08];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746CCE0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469C20];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469C38];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746CCF8;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469C50];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469C68];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746CD10;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469C80];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469C98];
  v23[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v30[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = RMModelStatusSecurityCertificateList;
  v4 = [(RMModelPayloadBase *)&v18 copyWithZone:zone];
  v5 = [(NSString *)self->_statusIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSNumber *)self->_statusRemoved copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_statusDeclarationIdentifier copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_statusSubjectSummary copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSNumber *)self->_statusIsIdentity copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSData *)self->_statusData copy];
  v16 = v4[7];
  v4[7] = v15;

  return v4;
}

@end