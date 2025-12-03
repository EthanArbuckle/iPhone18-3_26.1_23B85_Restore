@interface WBSSavedAccountMatchCriteria
+ (id)criteriaForExactFQDNPasswordMatchesOfURL:(id)l;
+ (id)criteriaForNonAutofillablePasskeyWithCredentialIdentifier:(id)identifier relyingPartyURL:(id)l;
- (BOOL)queryShouldIncludeSavedAccountsWithDoNotSaveMarkers;
- (NSSet)associatedDomainsForURL;
- (WBSSavedAccountMatchCriteria)initWithURL:(id)l options:(unint64_t)options userNameQuery:(id)query passkeyCredentialIdentifier:(id)identifier associatedDomainsManager:(id)manager webFrameIdentifier:(id)frameIdentifier;
- (id)_optionsDescription;
- (id)description;
- (id)urlWithoutWWWSubdomainFromURL:(id)l;
@end

@implementation WBSSavedAccountMatchCriteria

+ (id)criteriaForExactFQDNPasswordMatchesOfURL:(id)l
{
  lCopy = l;
  v5 = +[WBSStringQuery queryThatMatchesEverything];
  v6 = [[self alloc] initWithURL:lCopy options:16 userNameQuery:v5 associatedDomainsManager:0 webFrameIdentifier:0];

  return v6;
}

+ (id)criteriaForNonAutofillablePasskeyWithCredentialIdentifier:(id)identifier relyingPartyURL:(id)l
{
  lCopy = l;
  identifierCopy = identifier;
  v8 = +[WBSStringQuery queryThatMatchesEverything];
  v9 = [[self alloc] initWithURL:lCopy options:48 userNameQuery:v8 passkeyCredentialIdentifier:identifierCopy associatedDomainsManager:0 webFrameIdentifier:0];

  return v9;
}

- (WBSSavedAccountMatchCriteria)initWithURL:(id)l options:(unint64_t)options userNameQuery:(id)query passkeyCredentialIdentifier:(id)identifier associatedDomainsManager:(id)manager webFrameIdentifier:(id)frameIdentifier
{
  lCopy = l;
  queryCopy = query;
  identifierCopy = identifier;
  managerCopy = manager;
  frameIdentifierCopy = frameIdentifier;
  v29.receiver = self;
  v29.super_class = WBSSavedAccountMatchCriteria;
  v19 = [(WBSSavedAccountMatchCriteria *)&v29 init];
  v20 = v19;
  if (v19)
  {
    v21 = [(WBSSavedAccountMatchCriteria *)v19 urlWithoutWWWSubdomainFromURL:lCopy];
    URL = v20->_URL;
    v20->_URL = v21;

    v20->_options = options;
    objc_storeStrong(&v20->_userNameQuery, query);
    objc_storeStrong(&v20->_associatedDomainsManager, manager);
    v23 = +[WBSSavedAccountContext defaultContext];
    context = v20->_context;
    v20->_context = v23;

    v25 = [identifierCopy copy];
    passkeyCredentialIdentifier = v20->_passkeyCredentialIdentifier;
    v20->_passkeyCredentialIdentifier = v25;

    if ((options & 0x70) == 0)
    {
      objc_storeStrong(&v20->_webFrameIdentifier, frameIdentifier);
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

  string = [(WBSStringQuery *)self->_userNameQuery string];
  v3 = +[WBSDontSaveMarker dontSaveMarker];
  v4 = [string isEqualToString:v3];

  return v4;
}

- (NSSet)associatedDomainsForURL
{
  if ([(WBSSavedAccountMatchCriteria *)self queryShouldReturnSavedAccountsMatchingAssociatedDomains])
  {
    associatedDomainsManager = self->_associatedDomainsManager;
    host = [(NSURL *)self->_URL host];
    safari_stringByRemovingWwwDotPrefix = [host safari_stringByRemovingWwwDotPrefix];
    v6 = [(WBSAutoFillAssociatedDomainsManager *)associatedDomainsManager domainsWithAssociatedCredentialsForDomain:safari_stringByRemovingWwwDotPrefix];
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
  absoluteString = [(NSURL *)self->_URL absoluteString];
  string = [(WBSStringQuery *)self->_userNameQuery string];
  matchingTypeDescriptionString = [(WBSStringQuery *)self->_userNameQuery matchingTypeDescriptionString];
  _optionsDescription = [(WBSSavedAccountMatchCriteria *)self _optionsDescription];
  v9 = [v3 stringWithFormat:@"<%@ url=%@ userNameQuery='%@', '%@'; options=%@; associatedDomains=%@ context=%@; passkeyCredentialID=%@; webFrameID=%@;>", v4, absoluteString, string, matchingTypeDescriptionString, _optionsDescription, self->_associatedDomainsManager, self->_context, self->_passkeyCredentialIdentifier, self->_webFrameIdentifier];;

  return v9;
}

- (id)_optionsDescription
{
  if (self->_options)
  {
    array = [MEMORY[0x1E695DF70] array];
    v4 = array;
    options = self->_options;
    if (options)
    {
      [array addObject:@"highLevelAndSimplifiedDomains"];
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

- (id)urlWithoutWWWSubdomainFromURL:(id)l
{
  if (l)
  {
    v3 = [MEMORY[0x1E696AF20] componentsWithURL:l resolvingAgainstBaseURL:0];
    host = [v3 host];
    safari_stringByRemovingWwwDotPrefix = [host safari_stringByRemovingWwwDotPrefix];
    [v3 setHost:safari_stringByRemovingWwwDotPrefix];

    v6 = [v3 URL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end