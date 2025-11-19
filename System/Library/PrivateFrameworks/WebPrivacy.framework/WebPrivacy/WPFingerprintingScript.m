@interface WPFingerprintingScript
- (WPFingerprintingScript)initWithHost:(id)a3 isFirstParty:(BOOL)a4 isTopDomain:(BOOL)a5 allowedCategories:(unint64_t)a6;
- (id)description;
@end

@implementation WPFingerprintingScript

- (WPFingerprintingScript)initWithHost:(id)a3 isFirstParty:(BOOL)a4 isTopDomain:(BOOL)a5 allowedCategories:(unint64_t)a6
{
  v11 = a3;
  v16.receiver = self;
  v16.super_class = WPFingerprintingScript;
  v12 = [(WPFingerprintingScript *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_host, a3);
    v13->_firstParty = a4;
    v13->_topDomain = a5;
    v13->_allowedCategories = a6;
    v14 = v13;
  }

  return v13;
}

- (id)description
{
  allowedCategories = self->_allowedCategories;
  if (allowedCategories)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = namesFromScriptCategories(allowedCategories);
    v6 = [v5 componentsJoinedByString:{@", "}];
    v7 = [v4 stringWithFormat:@" allowed=%@", v6];
  }

  else
  {
    v7 = &stru_2882BDF38;
  }

  if (self->_topDomain)
  {
    v8 = @"(*.)";
  }

  else
  {
    v8 = &stru_2882BDF38;
  }

  if (self->_firstParty)
  {
    v9 = @"1p";
  }

  else
  {
    v9 = @"3p";
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@ (%@)%@", v8, self->_host, v9, v7];

  return v10;
}

@end