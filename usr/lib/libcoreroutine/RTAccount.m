@interface RTAccount
- (RTAccount)initWithACAccount:(id)a3 underageAccount:(BOOL)a4;
- (id)appleIDs;
- (id)description;
@end

@implementation RTAccount

- (RTAccount)initWithACAccount:(id)a3 underageAccount:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v17.receiver = self;
  v17.super_class = RTAccount;
  v7 = [(RTAccount *)&v17 init];
  if (v7)
  {
    v8 = [v6 aa_personID];
    [(RTAccount *)v7 setDsid:v8];

    v9 = [v6 aa_firstName];
    [(RTAccount *)v7 setFirstName:v9];

    v10 = [v6 aa_lastName];
    [(RTAccount *)v7 setLastName:v10];

    -[RTAccount setPrimaryEmailVerified:](v7, "setPrimaryEmailVerified:", [v6 aa_isPrimaryEmailVerified]);
    v11 = [v6 username];
    [(RTAccount *)v7 setAppleID:v11];

    v12 = [v6 aa_altDSID];
    [(RTAccount *)v7 setAltDSID:v12];

    v13 = [v6 aa_primaryEmail];
    [(RTAccount *)v7 setPrimaryEmail:v13];

    v14 = [v6 appleID];
    [(RTAccount *)v7 setAppleIDAlias:v14];

    v15 = [v6 aa_appleIDAliases];
    [(RTAccount *)v7 setAppleIDAliases:v15];

    [(RTAccount *)v7 setUnderageAccount:v4];
  }

  return v7;
}

- (id)appleIDs
{
  v3 = objc_opt_new();
  v4 = [(RTAccount *)self dsid];

  if (v4)
  {
    v5 = [(RTAccount *)self dsid];
    [v3 addObject:v5];
  }

  v6 = [(RTAccount *)self appleID];

  if (v6)
  {
    v7 = [(RTAccount *)self appleID];
    [v3 addObject:v7];
  }

  if ([(RTAccount *)self primaryEmailVerified])
  {
    v8 = [(RTAccount *)self primaryEmail];

    if (v8)
    {
      v9 = [(RTAccount *)self primaryEmail];
      [v3 addObject:v9];
    }
  }

  v10 = [(RTAccount *)self appleIDAlias];

  if (v10)
  {
    v11 = [(RTAccount *)self appleIDAlias];
    [v3 addObject:v11];
  }

  v12 = [(RTAccount *)self appleIDAliases];
  [v3 addObjectsFromArray:v12];

  return v3;
}

- (id)description
{
  if (self->_underageAccount)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"DSID: %@, Apple ID: %@, Primary Email: %@, Apple ID Alias: %@, Apple ID Aliases, %@, Underage, %@", self->_dsid, self->_appleID, self->_primaryEmail, self->_appleIDAlias, self->_appleIDAliases, v2];
}

@end