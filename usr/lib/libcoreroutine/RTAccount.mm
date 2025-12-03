@interface RTAccount
- (RTAccount)initWithACAccount:(id)account underageAccount:(BOOL)underageAccount;
- (id)appleIDs;
- (id)description;
@end

@implementation RTAccount

- (RTAccount)initWithACAccount:(id)account underageAccount:(BOOL)underageAccount
{
  underageAccountCopy = underageAccount;
  accountCopy = account;
  v17.receiver = self;
  v17.super_class = RTAccount;
  v7 = [(RTAccount *)&v17 init];
  if (v7)
  {
    aa_personID = [accountCopy aa_personID];
    [(RTAccount *)v7 setDsid:aa_personID];

    aa_firstName = [accountCopy aa_firstName];
    [(RTAccount *)v7 setFirstName:aa_firstName];

    aa_lastName = [accountCopy aa_lastName];
    [(RTAccount *)v7 setLastName:aa_lastName];

    -[RTAccount setPrimaryEmailVerified:](v7, "setPrimaryEmailVerified:", [accountCopy aa_isPrimaryEmailVerified]);
    username = [accountCopy username];
    [(RTAccount *)v7 setAppleID:username];

    aa_altDSID = [accountCopy aa_altDSID];
    [(RTAccount *)v7 setAltDSID:aa_altDSID];

    aa_primaryEmail = [accountCopy aa_primaryEmail];
    [(RTAccount *)v7 setPrimaryEmail:aa_primaryEmail];

    appleID = [accountCopy appleID];
    [(RTAccount *)v7 setAppleIDAlias:appleID];

    aa_appleIDAliases = [accountCopy aa_appleIDAliases];
    [(RTAccount *)v7 setAppleIDAliases:aa_appleIDAliases];

    [(RTAccount *)v7 setUnderageAccount:underageAccountCopy];
  }

  return v7;
}

- (id)appleIDs
{
  v3 = objc_opt_new();
  dsid = [(RTAccount *)self dsid];

  if (dsid)
  {
    dsid2 = [(RTAccount *)self dsid];
    [v3 addObject:dsid2];
  }

  appleID = [(RTAccount *)self appleID];

  if (appleID)
  {
    appleID2 = [(RTAccount *)self appleID];
    [v3 addObject:appleID2];
  }

  if ([(RTAccount *)self primaryEmailVerified])
  {
    primaryEmail = [(RTAccount *)self primaryEmail];

    if (primaryEmail)
    {
      primaryEmail2 = [(RTAccount *)self primaryEmail];
      [v3 addObject:primaryEmail2];
    }
  }

  appleIDAlias = [(RTAccount *)self appleIDAlias];

  if (appleIDAlias)
  {
    appleIDAlias2 = [(RTAccount *)self appleIDAlias];
    [v3 addObject:appleIDAlias2];
  }

  appleIDAliases = [(RTAccount *)self appleIDAliases];
  [v3 addObjectsFromArray:appleIDAliases];

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