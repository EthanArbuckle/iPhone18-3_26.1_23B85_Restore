@interface BRCAccountFacade
- (BOOL)isInCarry;
- (BRCAccountFacade)initWithAccountDSID:(id)a3;
- (int)rampNumber;
@end

@implementation BRCAccountFacade

- (int)rampNumber
{
  v2 = [(BRDSIDString *)self->_accountDSID brc_SHA256];
  if ([v2 length] < 9)
  {
    v4 = -1;
  }

  else
  {
    v3 = [v2 bytes];
    v4 = *v3 - 100 * ((*v3 / 0x64uLL) & 0x3FFFFFFF);
  }

  return v4;
}

- (BOOL)isInCarry
{
  isInCarry = self->_isInCarry;
  if (isInCarry)
  {

    return [(NSNumber *)isInCarry BOOLValue];
  }

  else
  {
    v5 = +[BRCAccountHandler currentiCloudAccount];
    if ([v5 br_isEnabledForCloudDocs])
    {
      v6 = [(BRCAccountFacade *)self accountDSID];
      v7 = [v5 br_dsid];
      v8 = [v6 isEqualToString:v7];

      if (v8)
      {
        v9 = [v5 propertiesForDataclass:*MEMORY[0x277CB90D8]];
        v10 = [v9 objectForKeyedSubscript:@"url"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
          v12 = [v11 host];
          v13 = [v12 componentsSeparatedByString:@"-"];
          v14 = [v13 firstObject];

          v15 = [BRCUserDefaults defaultsForMangledID:0];
          v16 = [v15 carryPartitions];

          if (v14 && ([v16 containsObject:v14] & 1) != 0)
          {
            v17 = MEMORY[0x277CBEC38];
          }

          else
          {
            v17 = MEMORY[0x277CBEC28];
          }

          v18 = self->_isInCarry;
          self->_isInCarry = v17;
        }
      }
    }

    v19 = [(NSNumber *)self->_isInCarry BOOLValue];

    return v19;
  }
}

- (BRCAccountFacade)initWithAccountDSID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRCAccountFacade;
  v6 = [(BRCAccountFacade *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountDSID, a3);
  }

  return v7;
}

@end