@interface WBSSavedAccountMatchCriteria
+ (id)criteriaForExactFQDNPasswordMatchesOfURL:(id)a3;
+ (id)criteriaForNonAutofillablePasskeyWithCredentialIdentifier:(id)a3 relyingPartyURL:(id)a4;
- (BOOL)queryShouldIncludeSavedAccountsWithDoNotSaveMarkers;
- (NSSet)associatedDomainsForURL;
- (WBSSavedAccountMatchCriteria)initWithURL:(id)a3 options:(unint64_t)a4 userNameQuery:(id)a5 passkeyCredentialIdentifier:(id)a6 associatedDomainsManager:(id)a7 webFrameIdentifier:(id)a8;
- (id)_optionsDescription;
- (id)description;
- (id)urlWithoutWWWSubdomainFromURL:(id)a3;
@end

@implementation WBSSavedAccountMatchCriteria

+ (id)criteriaForExactFQDNPasswordMatchesOfURL:(id)a3
{
  v4 = a3;
  v5 = +[WBSStringQuery queryThatMatchesEverything];
  v6 = [[a1 alloc] initWithURL:v4 options:16 userNameQuery:v5 associatedDomainsManager:0 webFrameIdentifier:0];

  return v6;
}

+ (id)criteriaForNonAutofillablePasskeyWithCredentialIdentifier:(id)a3 relyingPartyURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[WBSStringQuery queryThatMatchesEverything];
  v9 = [[a1 alloc] initWithURL:v6 options:48 userNameQuery:v8 passkeyCredentialIdentifier:v7 associatedDomainsManager:0 webFrameIdentifier:0];

  return v9;
}

- (WBSSavedAccountMatchCriteria)initWithURL:(id)a3 options:(unint64_t)a4 userNameQuery:(id)a5 passkeyCredentialIdentifier:(id)a6 associatedDomainsManager:(id)a7 webFrameIdentifier:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v29.receiver = self;
  v29.super_class = WBSSavedAccountMatchCriteria;
  v19 = [(WBSSavedAccountMatchCriteria *)&v29 init];
  v20 = v19;
  if (v19)
  {
    v21 = [(WBSSavedAccountMatchCriteria *)v19 urlWithoutWWWSubdomainFromURL:v14];
    URL = v20->_URL;
    v20->_URL = v21;

    v20->_options = a4;
    objc_storeStrong(&v20->_userNameQuery, a5);
    objc_storeStrong(&v20->_associatedDomainsManager, a7);
    v23 = +[WBSSavedAccountContext defaultContext];
    context = v20->_context;
    v20->_context = v23;

    v25 = [v16 copy];
    passkeyCredentialIdentifier = v20->_passkeyCredentialIdentifier;
    v20->_passkeyCredentialIdentifier = v25;

    if ((a4 & 0x70) == 0)
    {
      objc_storeStrong(&v20->_webFrameIdentifier, a8);
    }

    v27 = v20;
  }

  return v20;
}

- (BOOL)queryShouldIncludeSavedAccountsWithDoNotSaveMarkers
{
  if ((self->_options & 4) != 0)
  {
    return 1;
  }

  v2 = [(WBSStringQuery *)self->_userNameQuery string];
  v3 = +[WBSDontSaveMarker dontSaveMarker];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (NSSet)associatedDomainsForURL
{
  if ([(WBSSavedAccountMatchCriteria *)self queryShouldReturnSavedAccountsMatchingAssociatedDomains])
  {
    associatedDomainsManager = self->_associatedDomainsManager;
    v4 = [(NSURL *)self->_URL host];
    v5 = [v4 safari_stringByRemovingWwwDotPrefix];
    v6 = [(WBSAutoFillAssociatedDomainsManager *)associatedDomainsManager domainsWithAssociatedCredentialsForDomain:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] set];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = WBSSavedAccountMatchCriteria;
  v4 = [(WBSSavedAccountMatchCriteria *)&v11 description];
  v5 = [(NSURL *)self->_URL absoluteString];
  v6 = [(WBSStringQuery *)self->_userNameQuery string];
  v7 = [(WBSStringQuery *)self->_userNameQuery matchingTypeDescriptionString];
  v8 = [(WBSSavedAccountMatchCriteria *)self _optionsDescription];
  v9 = [v3 stringWithFormat:@"<%@ url=%@ userNameQuery='%@', '%@'; options=%@; associatedDomains=%@ context=%@; passkeyCredentialID=%@; webFrameID=%@;>", v4, v5, v6, v7, v8, self->_associatedDomainsManager, self->_context, self->_passkeyCredentialIdentifier, self->_webFrameIdentifier];;

  return v9;
}

- (id)_optionsDescription
{
  if (self->_options)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = v3;
    options = self->_options;
    if (options)
    {
      [v3 addObject:@"highLevelAndSimplifiedDomains"];
      options = self->_options;
      if ((options & 2) == 0)
      {
LABEL_4:
        if ((options & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((options & 2) == 0)
    {
      goto LABEL_4;
    }

    [v4 addObject:@"quirkAffiliatedDomains"];
    options = self->_options;
    if ((options & 4) == 0)
    {
LABEL_5:
      if ((options & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    [v4 addObject:@"doNotSave"];
    options = self->_options;
    if ((options & 8) == 0)
    {
LABEL_6:
      if ((options & 0x10) == 0)
      {
LABEL_8:
        v6 = [v4 componentsJoinedByString:@" | "];

        goto LABEL_10;
      }

LABEL_7:
      [v4 addObject:@"autoFillPasskeys"];
      goto LABEL_8;
    }

LABEL_16:
    [v4 addObject:@"emptyUsername"];
    if ((self->_options & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = @"none";
LABEL_10:

  return v6;
}

- (id)urlWithoutWWWSubdomainFromURL:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x1E696AF20] componentsWithURL:a3 resolvingAgainstBaseURL:0];
    v4 = [v3 host];
    v5 = [v4 safari_stringByRemovingWwwDotPrefix];
    [v3 setHost:v5];

    v6 = [v3 URL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end