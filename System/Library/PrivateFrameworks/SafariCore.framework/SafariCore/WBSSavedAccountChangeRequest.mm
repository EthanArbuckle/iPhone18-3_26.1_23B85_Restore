@interface WBSSavedAccountChangeRequest
- (BOOL)hasAdditionalSitesChange;
- (BOOL)hasChanges;
- (BOOL)hasCustomTitleChange;
- (BOOL)hasNotesEntryChange;
- (BOOL)hasPasswordChange;
- (BOOL)hasSitesChange;
- (BOOL)hasTOTPGeneratorChange;
- (BOOL)hasUserChange;
- (void)setSavedAccount:(id)a3;
@end

@implementation WBSSavedAccountChangeRequest

- (void)setSavedAccount:(id)a3
{
  v26 = a3;
  if ((WBSIsEqual(v26, self->_savedAccount) & 1) == 0)
  {
    objc_storeStrong(&self->_savedAccount, a3);
    v5 = [v26 user];
    v6 = [v5 copy];
    user = self->_user;
    self->_user = v6;

    v8 = [v26 password];
    v9 = [v8 copy];
    password = self->_password;
    self->_password = v9;

    v11 = [v26 sites];
    v12 = [v11 mutableCopy];
    sites = self->_sites;
    self->_sites = v12;

    v14 = [v26 totpGenerators];
    v15 = [v14 firstObject];
    totpGenerator = self->_totpGenerator;
    self->_totpGenerator = v15;

    v17 = [v26 notesEntry];
    v18 = [v17 copy];
    notesEntry = self->_notesEntry;
    self->_notesEntry = v18;

    v20 = [v26 customTitle];
    v21 = [v20 copy];
    customTitle = self->_customTitle;
    self->_customTitle = v21;

    v23 = [v26 additionalSites];
    v24 = [v23 copy];
    additionalSites = self->_additionalSites;
    self->_additionalSites = v24;
  }
}

void *__48__WBSSavedAccountChangeRequest_userVisibleSites__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 _web_decodeHostName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

- (BOOL)hasChanges
{
  if ([(WBSSavedAccountChangeRequest *)self hasUserChange]|| [(WBSSavedAccountChangeRequest *)self hasPasswordChange]|| [(WBSSavedAccountChangeRequest *)self hasSitesChange]|| [(WBSSavedAccountChangeRequest *)self hasTOTPGeneratorChange]|| [(WBSSavedAccountChangeRequest *)self hasNotesEntryChange]|| [(WBSSavedAccountChangeRequest *)self hasCustomTitleChange]|| [(WBSSavedAccountChangeRequest *)self isAddingPasswordToAccountWithPasskey]|| [(WBSSavedAccountChangeRequest *)self hasAdditionalSitesChange])
  {
    return 1;
  }

  return [(WBSSavedAccountChangeRequest *)self shouldClearHistory];
}

- (BOOL)hasUserChange
{
  user = self->_user;
  v3 = [(WBSSavedAccount *)self->_savedAccount user];
  LOBYTE(user) = WBSIsEqual(user, v3);

  return user ^ 1;
}

- (BOOL)hasPasswordChange
{
  if (([(WBSSavedAccount *)self->_savedAccount credentialTypes]& 1) != 0)
  {
    password = self->_password;
    v5 = [(WBSSavedAccount *)self->_savedAccount password];
    v3 = WBSIsEqual(password, v5) ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)hasSitesChange
{
  if (-[NSMutableArray count](self->_sites, "count") || (-[WBSSavedAccount sites](self->_savedAccount, "sites"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    sites = self->_sites;
    v6 = [(WBSSavedAccount *)self->_savedAccount sites];
    v7 = WBSIsEqual(sites, v6) ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)hasTOTPGeneratorChange
{
  totpGenerator = self->_totpGenerator;
  v3 = [(WBSSavedAccount *)self->_savedAccount totpGenerators];
  v4 = [v3 firstObject];
  LOBYTE(totpGenerator) = WBSIsEqual(totpGenerator, v4);

  return totpGenerator ^ 1;
}

- (BOOL)hasNotesEntryChange
{
  notesEntry = self->_notesEntry;
  v4 = [(WBSSavedAccount *)self->_savedAccount notesEntry];
  if (WBSIsEqual(notesEntry, v4))
  {
    v5 = 0;
  }

  else if ([(NSString *)self->_notesEntry length])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(WBSSavedAccount *)self->_savedAccount notesEntry];
    v5 = [v6 length] != 0;
  }

  return v5;
}

- (BOOL)hasCustomTitleChange
{
  customTitle = self->_customTitle;
  v4 = [(WBSSavedAccount *)self->_savedAccount customTitle];
  if (WBSIsEqual(customTitle, v4))
  {
    v5 = 0;
  }

  else if ([(NSString *)self->_customTitle length])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(WBSSavedAccount *)self->_savedAccount customTitle];
    v5 = [v6 length] != 0;
  }

  return v5;
}

void *__47__WBSSavedAccountChangeRequest_additionalSites__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 safari_stringByTrimmingWhitespace];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)hasAdditionalSitesChange
{
  v3 = [(WBSSavedAccountChangeRequest *)self additionalSites];
  if ([v3 count])
  {
  }

  else
  {
    v4 = [(WBSSavedAccount *)self->_savedAccount additionalSites];
    v5 = [v4 count];

    if (!v5)
    {
      LOBYTE(v8) = 0;
      return v8;
    }
  }

  v6 = [(WBSSavedAccountChangeRequest *)self additionalSites];
  v7 = [(WBSSavedAccount *)self->_savedAccount additionalSites];
  v8 = WBSIsEqual(v6, v7) ^ 1;

  return v8;
}

@end