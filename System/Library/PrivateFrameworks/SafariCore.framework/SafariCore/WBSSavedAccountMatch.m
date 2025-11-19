@interface WBSSavedAccountMatch
- (NSDate)lastUsedDateAffectingAutoFillSortOrder;
- (WBSSavedAccountMatch)initWithSavedAccount:(id)a3 protectionSpace:(id)a4 context:(id)a5 matchLevel:(int64_t)a6 autoFillPasskey:(id)a7;
- (id)_simplifiedHost;
- (id)debugDescription;
- (id)userVisibleDomainForAutoFillWithPageURL:(id)a3;
- (int64_t)compare:(id)a3;
@end

@implementation WBSSavedAccountMatch

- (WBSSavedAccountMatch)initWithSavedAccount:(id)a3 protectionSpace:(id)a4 context:(id)a5 matchLevel:(int64_t)a6 autoFillPasskey:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v28.receiver = self;
  v28.super_class = WBSSavedAccountMatch;
  v17 = [(WBSSavedAccountMatch *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_savedAccount, a3);
    v19 = [v14 copy];
    protectionSpace = v18->_protectionSpace;
    v18->_protectionSpace = v19;

    objc_storeStrong(&v18->_context, a5);
    v18->_matchLevel = a6;
    v21 = [v14 host];
    host = v18->_host;
    v18->_host = v21;

    if (!v18->_host)
    {
      v23 = [v16 relyingPartyIdentifier];
      v24 = [v23 copy];
      v25 = v18->_host;
      v18->_host = v24;
    }

    objc_storeStrong(&v18->_autoFillPasskey, a7);
    v26 = v18;
  }

  return v18;
}

- (id)userVisibleDomainForAutoFillWithPageURL:(id)a3
{
  v4 = [MEMORY[0x1E695AC58] safari_HTMLFormProtectionSpaceForURL:a3];
  v5 = [(WBSSavedAccount *)self->_savedAccount protectionSpaces];
  v6 = [v5 containsObject:v4];

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
  v4 = [(WBSSavedAccountMatch *)self _simplifiedHost];
  v5 = [(WBSSavedAccount *)savedAccount lastUsedDateForSite:v4 inContext:self->_context];

  return v5;
}

- (id)_simplifiedHost
{
  v2 = [(NSURLProtectionSpace *)self->_protectionSpace host];
  v3 = [v2 safari_simplifiedSiteNameForCredentialLookup];

  return v3;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(WBSSavedAccountMatch *)self savedAccount];
  v6 = [v5 isAppleIDPasskey];

  if ((v6 & 1) == 0)
  {
    v8 = [(WBSSavedAccountMatch *)self lastUsedDateAffectingAutoFillSortOrder];
    v9 = [v4 lastUsedDateAffectingAutoFillSortOrder];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 compare:v9] == -1)
      {
        v7 = 1;
      }

      else
      {
        v7 = -1;
      }

      goto LABEL_21;
    }

    if (v8)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (v8 | v9)
    {
      goto LABEL_21;
    }

    v11 = [(WBSSavedAccount *)self->_savedAccount isDefaultCredentialForFullyQualifiedHostname:self->_host];
    v12 = [v4 savedAccount];
    v13 = [v12 isDefaultCredentialForFullyQualifiedHostname:self->_host];

    if (v11 && !v13)
    {
      goto LABEL_14;
    }

    if (v11 || (v13 & 1) == 0)
    {
      v14 = [(WBSSavedAccount *)self->_savedAccount credentialTypes];
      v15 = [v4 savedAccount];
      v16 = [v15 credentialTypes];

      if ((v14 & 2) != 0 && (v16 & 2) == 0)
      {
LABEL_14:
        v7 = -1;
LABEL_21:

        goto LABEL_22;
      }

      if ((v14 & 2) != 0 || (v16 & 2) == 0)
      {
        savedAccount = self->_savedAccount;
        v19 = [v4 savedAccount];
        v7 = [(WBSSavedAccount *)savedAccount compare:v19];

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
  v8 = [(WBSAutoFillPasskey *)self->_autoFillPasskey identifier];
  v9 = [v3 stringWithFormat:@"<%@: %p savedAccount = %@; protection space = %@; passkey identifier = %@>", v5, self, savedAccount, protectionSpace, v8];;

  return v9;
}

@end