@interface BRCBasehashSaltInfo
- (BRCBasehashSaltInfo)init;
- (BRCBasehashSaltInfo)initWithBasehashSaltInfo:(id)a3;
- (BRCBasehashSaltInfo)initWithRecord:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (BRCBasehashSaltInfo)initWithBasehashSaltInfo:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BRCBasehashSaltInfo;
  v5 = [(BRCBasehashSaltInfo *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_saltingState = *(v4 + 2);
    v7 = [*(v4 + 2) copy];
    childBasehashSalt = v6->_childBasehashSalt;
    v6->_childBasehashSalt = v7;

    v9 = [*(v4 + 4) copy];
    basehashSaltValidation = v6->_basehashSaltValidation;
    v6->_basehashSaltValidation = v9;

    v11 = [*(v4 + 3) copy];
    childBasehashSaltValidation = v6->_childBasehashSaltValidation;
    v6->_childBasehashSaltValidation = v11;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithBasehashSaltInfo:self];
}

- (BRCBasehashSaltInfo)initWithRecord:(id)a3
{
  v4 = a3;
  v5 = [(BRCBasehashSaltInfo *)self init];
  if (v5)
  {
    v6 = [BRCUserDefaults defaultsForMangledID:0];
    v7 = [v6 supportsEnhancedDrivePrivacy];

    if (v7)
    {
      v8 = [v4 encryptedValues];
      v9 = [v8 objectForKeyedSubscript:@"childBasehashSalt"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v4 encryptedValues];
        v11 = [v10 objectForKeyedSubscript:@"childBasehashSalt"];
        childBasehashSalt = v5->_childBasehashSalt;
        v5->_childBasehashSalt = v11;
      }

      v13 = [v4 objectForKeyedSubscript:@"saltingState"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v4 objectForKeyedSubscript:@"saltingState"];
        v5->_saltingState = [v14 intValue];
      }

      v15 = [v4 objectForKeyedSubscript:@"basehashSaltValidationKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v4 objectForKeyedSubscript:@"basehashSaltValidationKey"];
        basehashSaltValidation = v5->_basehashSaltValidation;
        v5->_basehashSaltValidation = v16;
      }

      v18 = [v4 objectForKeyedSubscript:@"childBasehashSaltValidationKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v4 objectForKeyedSubscript:@"childBasehashSaltValidationKey"];
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
  v5 = [(BRCBasehashSaltInfo *)self saltingState];
  if (v5 > 3)
  {
    v6 = @"no server item";
  }

  else
  {
    v6 = off_278500C70[v5];
  }

  v7 = [(BRCBasehashSaltInfo *)self basehashSaltValidation];
  v8 = [v3 stringWithFormat:@"<%@ saltingState:'%@' basehashValidation: '%@' >", v4, v6, v7];

  return v8;
}

@end