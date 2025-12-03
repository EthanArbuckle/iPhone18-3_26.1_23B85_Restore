@interface BRCAccountFacade
- (BOOL)isInCarry;
- (BRCAccountFacade)initWithAccountDSID:(id)d;
- (int)rampNumber;
@end

@implementation BRCAccountFacade

- (int)rampNumber
{
  brc_SHA256 = [(BRDSIDString *)self->_accountDSID brc_SHA256];
  if ([brc_SHA256 length] < 9)
  {
    v4 = -1;
  }

  else
  {
    bytes = [brc_SHA256 bytes];
    v4 = *bytes - 100 * ((*bytes / 0x64uLL) & 0x3FFFFFFF);
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
      accountDSID = [(BRCAccountFacade *)self accountDSID];
      br_dsid = [v5 br_dsid];
      v8 = [accountDSID isEqualToString:br_dsid];

      if (v8)
      {
        v9 = [v5 propertiesForDataclass:*MEMORY[0x277CB90D8]];
        v10 = [v9 objectForKeyedSubscript:@"url"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
          host = [v11 host];
          v13 = [host componentsSeparatedByString:@"-"];
          firstObject = [v13 firstObject];

          v15 = [BRCUserDefaults defaultsForMangledID:0];
          carryPartitions = [v15 carryPartitions];

          if (firstObject && ([carryPartitions containsObject:firstObject] & 1) != 0)
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

    bOOLValue = [(NSNumber *)self->_isInCarry BOOLValue];

    return bOOLValue;
  }
}

- (BRCAccountFacade)initWithAccountDSID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = BRCAccountFacade;
  v6 = [(BRCAccountFacade *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountDSID, d);
  }

  return v7;
}

@end