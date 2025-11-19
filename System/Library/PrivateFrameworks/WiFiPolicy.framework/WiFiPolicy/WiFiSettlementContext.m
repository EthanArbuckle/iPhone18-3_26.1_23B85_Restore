@interface WiFiSettlementContext
+ (BOOL)networkQualifiesForSettlement:(id)a3;
- (BOOL)compareWithScanResults:(id)a3;
- (WiFiSettlementContext)initWithNetworks:(id)a3 maxCount:(unint64_t)a4;
- (void)_updateStrongestNetworks:(id)a3;
@end

@implementation WiFiSettlementContext

- (WiFiSettlementContext)initWithNetworks:(id)a3 maxCount:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = WiFiSettlementContext;
  v7 = [(WiFiSettlementContext *)&v11 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    creationDate = v7->_creationDate;
    v7->_creationDate = v8;

    v7->_maxCount = a4;
    [(WiFiSettlementContext *)v7 _updateStrongestNetworks:v6];
  }

  return v7;
}

- (void)_updateStrongestNetworks:(id)a3
{
  v4 = [a3 allObjects];
  v5 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_4];
  v12 = [v4 filteredArrayUsingPredicate:v5];

  v6 = [v12 networksSortedBySignalStrengthWithMaxCount:{-[WiFiSettlementContext maxCount](self, "maxCount")}];
  strongestNetworks = self->_strongestNetworks;
  self->_strongestNetworks = v6;

  v8 = MEMORY[0x277CBEB98];
  v9 = [(NSArray *)self->_strongestNetworks mapObjectsUsingBlock:&__block_literal_global_6];
  v10 = [v8 setWithArray:v9];
  strongestBSSIDs = self->_strongestBSSIDs;
  self->_strongestBSSIDs = v10;
}

- (BOOL)compareWithScanResults:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          if ([WiFiSettlementContext networkQualifiesForSettlement:v10, v17])
          {
            v11 = [(WiFiSettlementContext *)self strongestBSSIDs];
            v12 = [v10 BSSID];
            v13 = [v11 containsObject:v12];

            if (v13)
            {
              v14 = 1;
              goto LABEL_13;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_13:
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)networkQualifiesForSettlement:(id)a3
{
  v3 = a3;
  v4 = [v3 scanProperties];
  v5 = [v4 objectForKey:@"CARPLAY_NETWORK"];

  if (v5 || ([v3 scanProperties], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKey:", @"APPLE_DEVICE_IE"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v9 = 0;
  }

  else
  {
    v8 = [v3 BSSID];
    v9 = v8 != 0;
  }

  return v9;
}

@end