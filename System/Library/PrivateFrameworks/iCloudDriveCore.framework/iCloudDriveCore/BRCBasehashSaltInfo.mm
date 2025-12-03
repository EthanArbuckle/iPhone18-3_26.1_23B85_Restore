@interface BRCBasehashSaltInfo
- (BRCBasehashSaltInfo)init;
- (BRCBasehashSaltInfo)initWithBasehashSaltInfo:(id)info;
- (BRCBasehashSaltInfo)initWithRecord:(id)record;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation BRCBasehashSaltInfo

- (BRCBasehashSaltInfo)init
{
  v8.receiver = self;
  v8.super_class = BRCBasehashSaltInfo;
  v2 = [(BRCBasehashSaltInfo *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_saltingState = 1;
    childBasehashSalt = v2->_childBasehashSalt;
    v2->_childBasehashSalt = 0;

    basehashSaltValidation = v3->_basehashSaltValidation;
    v3->_basehashSaltValidation = 0;

    childBasehashSaltValidation = v3->_childBasehashSaltValidation;
    v3->_childBasehashSaltValidation = 0;
  }

  return v3;
}

- (BRCBasehashSaltInfo)initWithBasehashSaltInfo:(id)info
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = BRCBasehashSaltInfo;
  v5 = [(BRCBasehashSaltInfo *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_saltingState = *(infoCopy + 2);
    v7 = [*(infoCopy + 2) copy];
    childBasehashSalt = v6->_childBasehashSalt;
    v6->_childBasehashSalt = v7;

    v9 = [*(infoCopy + 4) copy];
    basehashSaltValidation = v6->_basehashSaltValidation;
    v6->_basehashSaltValidation = v9;

    v11 = [*(infoCopy + 3) copy];
    childBasehashSaltValidation = v6->_childBasehashSaltValidation;
    v6->_childBasehashSaltValidation = v11;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithBasehashSaltInfo:self];
}

- (BRCBasehashSaltInfo)initWithRecord:(id)record
{
  recordCopy = record;
  v5 = [(BRCBasehashSaltInfo *)self init];
  if (v5)
  {
    v6 = [BRCUserDefaults defaultsForMangledID:0];
    supportsEnhancedDrivePrivacy = [v6 supportsEnhancedDrivePrivacy];

    if (supportsEnhancedDrivePrivacy)
    {
      encryptedValues = [recordCopy encryptedValues];
      v9 = [encryptedValues objectForKeyedSubscript:@"childBasehashSalt"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        encryptedValues2 = [recordCopy encryptedValues];
        v11 = [encryptedValues2 objectForKeyedSubscript:@"childBasehashSalt"];
        childBasehashSalt = v5->_childBasehashSalt;
        v5->_childBasehashSalt = v11;
      }

      v13 = [recordCopy objectForKeyedSubscript:@"saltingState"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [recordCopy objectForKeyedSubscript:@"saltingState"];
        v5->_saltingState = [v14 intValue];
      }

      v15 = [recordCopy objectForKeyedSubscript:@"basehashSaltValidationKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [recordCopy objectForKeyedSubscript:@"basehashSaltValidationKey"];
        basehashSaltValidation = v5->_basehashSaltValidation;
        v5->_basehashSaltValidation = v16;
      }

      v18 = [recordCopy objectForKeyedSubscript:@"childBasehashSaltValidationKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [recordCopy objectForKeyedSubscript:@"childBasehashSaltValidationKey"];
        childBasehashSaltValidation = v5->_childBasehashSaltValidation;
        v5->_childBasehashSaltValidation = v19;
      }
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  saltingState = [(BRCBasehashSaltInfo *)self saltingState];
  if (saltingState > 3)
  {
    v6 = @"no server item";
  }

  else
  {
    v6 = off_278500C70[saltingState];
  }

  basehashSaltValidation = [(BRCBasehashSaltInfo *)self basehashSaltValidation];
  v8 = [v3 stringWithFormat:@"<%@ saltingState:'%@' basehashValidation: '%@' >", v4, v6, basehashSaltValidation];

  return v8;
}

@end