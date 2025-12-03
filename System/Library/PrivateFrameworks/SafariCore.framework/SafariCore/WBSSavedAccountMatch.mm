@interface WBSSavedAccountMatch
- (NSDate)lastUsedDateAffectingAutoFillSortOrder;
- (WBSSavedAccountMatch)initWithSavedAccount:(id)account protectionSpace:(id)space context:(id)context matchLevel:(int64_t)level autoFillPasskey:(id)passkey;
- (id)_simplifiedHost;
- (id)debugDescription;
- (id)userVisibleDomainForAutoFillWithPageURL:(id)l;
- (int64_t)compare:(id)compare;
@end

@implementation WBSSavedAccountMatch

- (WBSSavedAccountMatch)initWithSavedAccount:(id)account protectionSpace:(id)space context:(id)context matchLevel:(int64_t)level autoFillPasskey:(id)passkey
{
  accountCopy = account;
  spaceCopy = space;
  contextCopy = context;
  passkeyCopy = passkey;
  v28.receiver = self;
  v28.super_class = WBSSavedAccountMatch;
  v17 = [(WBSSavedAccountMatch *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_savedAccount, account);
    v19 = [spaceCopy copy];
    protectionSpace = v18->_protectionSpace;
    v18->_protectionSpace = v19;

    objc_storeStrong(&v18->_context, context);
    v18->_matchLevel = level;
    host = [spaceCopy host];
    host = v18->_host;
    v18->_host = host;

    if (!v18->_host)
    {
      relyingPartyIdentifier = [passkeyCopy relyingPartyIdentifier];
      v24 = [relyingPartyIdentifier copy];
      v25 = v18->_host;
      v18->_host = v24;
    }

    objc_storeStrong(&v18->_autoFillPasskey, passkey);
    v26 = v18;
  }

  return v18;
}

- (id)userVisibleDomainForAutoFillWithPageURL:(id)l
{
  v4 = [MEMORY[0x1E695AC58] safari_HTMLFormProtectionSpaceForURL:l];
  protectionSpaces = [(WBSSavedAccount *)self->_savedAccount protectionSpaces];
  v6 = [protectionSpaces containsObject:v4];

  if (v6)
  {
    [v4 safari_userVisibleSiteForProtectionSpace];
  }

  else
  {
    [(WBSSavedAccount *)self->_savedAccount userVisibleDomain];
  }
  v7 = ;

  return v7;
}

- (NSDate)lastUsedDateAffectingAutoFillSortOrder
{
  savedAccount = self->_savedAccount;
  _simplifiedHost = [(WBSSavedAccountMatch *)self _simplifiedHost];
  v5 = [(WBSSavedAccount *)savedAccount lastUsedDateForSite:_simplifiedHost inContext:self->_context];

  return v5;
}

- (id)_simplifiedHost
{
  host = [(NSURLProtectionSpace *)self->_protectionSpace host];
  safari_simplifiedSiteNameForCredentialLookup = [host safari_simplifiedSiteNameForCredentialLookup];

  return safari_simplifiedSiteNameForCredentialLookup;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  savedAccount = [(WBSSavedAccountMatch *)self savedAccount];
  isAppleIDPasskey = [savedAccount isAppleIDPasskey];

  if ((isAppleIDPasskey & 1) == 0)
  {
    lastUsedDateAffectingAutoFillSortOrder = [(WBSSavedAccountMatch *)self lastUsedDateAffectingAutoFillSortOrder];
    lastUsedDateAffectingAutoFillSortOrder2 = [compareCopy lastUsedDateAffectingAutoFillSortOrder];
    v10 = lastUsedDateAffectingAutoFillSortOrder2;
    if (lastUsedDateAffectingAutoFillSortOrder && lastUsedDateAffectingAutoFillSortOrder2)
    {
      if ([lastUsedDateAffectingAutoFillSortOrder compare:lastUsedDateAffectingAutoFillSortOrder2] == -1)
      {
        v7 = 1;
      }

      else
      {
        v7 = -1;
      }

      goto LABEL_21;
    }

    if (lastUsedDateAffectingAutoFillSortOrder)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (lastUsedDateAffectingAutoFillSortOrder | lastUsedDateAffectingAutoFillSortOrder2)
    {
      goto LABEL_21;
    }

    v11 = [(WBSSavedAccount *)self->_savedAccount isDefaultCredentialForFullyQualifiedHostname:self->_host];
    savedAccount2 = [compareCopy savedAccount];
    v13 = [savedAccount2 isDefaultCredentialForFullyQualifiedHostname:self->_host];

    if (v11 && !v13)
    {
      goto LABEL_14;
    }

    if (v11 || (v13 & 1) == 0)
    {
      credentialTypes = [(WBSSavedAccount *)self->_savedAccount credentialTypes];
      savedAccount3 = [compareCopy savedAccount];
      credentialTypes2 = [savedAccount3 credentialTypes];

      if ((credentialTypes & 2) != 0 && (credentialTypes2 & 2) == 0)
      {
LABEL_14:
        v7 = -1;
LABEL_21:

        goto LABEL_22;
      }

      if ((credentialTypes & 2) != 0 || (credentialTypes2 & 2) == 0)
      {
        savedAccount = self->_savedAccount;
        savedAccount4 = [compareCopy savedAccount];
        v7 = [(WBSSavedAccount *)savedAccount compare:savedAccount4];

        goto LABEL_21;
      }
    }

    v7 = 1;
    goto LABEL_21;
  }

  v7 = -1;
LABEL_22:

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  savedAccount = self->_savedAccount;
  protectionSpace = self->_protectionSpace;
  identifier = [(WBSAutoFillPasskey *)self->_autoFillPasskey identifier];
  v9 = [v3 stringWithFormat:@"<%@: %p savedAccount = %@; protection space = %@; passkey identifier = %@>", v5, self, savedAccount, protectionSpace, identifier];;

  return v9;
}

@end