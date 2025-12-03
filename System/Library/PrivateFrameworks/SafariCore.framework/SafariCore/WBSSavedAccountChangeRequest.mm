@interface WBSSavedAccountChangeRequest
- (BOOL)hasAdditionalSitesChange;
- (BOOL)hasChanges;
- (BOOL)hasCustomTitleChange;
- (BOOL)hasNotesEntryChange;
- (BOOL)hasPasswordChange;
- (BOOL)hasSitesChange;
- (BOOL)hasTOTPGeneratorChange;
- (BOOL)hasUserChange;
- (void)setSavedAccount:(id)account;
@end

@implementation WBSSavedAccountChangeRequest

- (void)setSavedAccount:(id)account
{
  accountCopy = account;
  if ((WBSIsEqual(accountCopy, self->_savedAccount) & 1) == 0)
  {
    objc_storeStrong(&self->_savedAccount, account);
    user = [accountCopy user];
    v6 = [user copy];
    user = self->_user;
    self->_user = v6;

    password = [accountCopy password];
    v9 = [password copy];
    password = self->_password;
    self->_password = v9;

    sites = [accountCopy sites];
    v12 = [sites mutableCopy];
    sites = self->_sites;
    self->_sites = v12;

    totpGenerators = [accountCopy totpGenerators];
    firstObject = [totpGenerators firstObject];
    totpGenerator = self->_totpGenerator;
    self->_totpGenerator = firstObject;

    notesEntry = [accountCopy notesEntry];
    v18 = [notesEntry copy];
    notesEntry = self->_notesEntry;
    self->_notesEntry = v18;

    customTitle = [accountCopy customTitle];
    v21 = [customTitle copy];
    customTitle = self->_customTitle;
    self->_customTitle = v21;

    additionalSites = [accountCopy additionalSites];
    v24 = [additionalSites copy];
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
  user = [(WBSSavedAccount *)self->_savedAccount user];
  LOBYTE(user) = WBSIsEqual(user, user);

  return user ^ 1;
}

- (BOOL)hasPasswordChange
{
  if (([(WBSSavedAccount *)self->_savedAccount credentialTypes]& 1) != 0)
  {
    password = self->_password;
    password = [(WBSSavedAccount *)self->_savedAccount password];
    v3 = WBSIsEqual(password, password) ^ 1;
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
    sites = [(WBSSavedAccount *)self->_savedAccount sites];
    v7 = WBSIsEqual(sites, sites) ^ 1;
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
  totpGenerators = [(WBSSavedAccount *)self->_savedAccount totpGenerators];
  firstObject = [totpGenerators firstObject];
  LOBYTE(totpGenerator) = WBSIsEqual(totpGenerator, firstObject);

  return totpGenerator ^ 1;
}

- (BOOL)hasNotesEntryChange
{
  notesEntry = self->_notesEntry;
  notesEntry = [(WBSSavedAccount *)self->_savedAccount notesEntry];
  if (WBSIsEqual(notesEntry, notesEntry))
  {
    v5 = 0;
  }

  else if ([(NSString *)self->_notesEntry length])
  {
    v5 = 1;
  }

  else
  {
    notesEntry2 = [(WBSSavedAccount *)self->_savedAccount notesEntry];
    v5 = [notesEntry2 length] != 0;
  }

  return v5;
}

- (BOOL)hasCustomTitleChange
{
  customTitle = self->_customTitle;
  customTitle = [(WBSSavedAccount *)self->_savedAccount customTitle];
  if (WBSIsEqual(customTitle, customTitle))
  {
    v5 = 0;
  }

  else if ([(NSString *)self->_customTitle length])
  {
    v5 = 1;
  }

  else
  {
    customTitle2 = [(WBSSavedAccount *)self->_savedAccount customTitle];
    v5 = [customTitle2 length] != 0;
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
  additionalSites = [(WBSSavedAccountChangeRequest *)self additionalSites];
  if ([additionalSites count])
  {
  }

  else
  {
    additionalSites2 = [(WBSSavedAccount *)self->_savedAccount additionalSites];
    v5 = [additionalSites2 count];

    if (!v5)
    {
      LOBYTE(v8) = 0;
      return v8;
    }
  }

  additionalSites3 = [(WBSSavedAccountChangeRequest *)self additionalSites];
  additionalSites4 = [(WBSSavedAccount *)self->_savedAccount additionalSites];
  v8 = WBSIsEqual(additionalSites3, additionalSites4) ^ 1;

  return v8;
}

@end