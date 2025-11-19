@interface TNFollowUpItemConfiguration
- (TNFollowUpItemConfiguration)initWithPrimaryAccountAltDSID:(id)a3 expirationDate:(id)a4;
- (id)description;
@end

@implementation TNFollowUpItemConfiguration

- (TNFollowUpItemConfiguration)initWithPrimaryAccountAltDSID:(id)a3 expirationDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TNFollowUpItemConfiguration;
  v9 = [(TNFollowUpItemConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_expirationDate, a4);
    objc_storeStrong(&v10->_primaryAccountAltDSID, a3);
  }

  return v10;
}

- (id)description
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = MEMORY[0x277CCACA8];
  v6 = [(TNFollowUpItemConfiguration *)self expirationDate];
  v7 = [v5 stringWithFormat:@"expirationDate: %@", v6];
  v16[0] = v7;
  v8 = MEMORY[0x277CCACA8];
  v9 = [(TNFollowUpItemConfiguration *)self primaryAccountAltDSID];
  v10 = [v8 stringWithFormat:@"primaryHandle: %@", v9];
  v16[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v12 = [v11 componentsJoinedByString:@" "];;
  v13 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v12];;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end