@interface SUCoreErrorAttributes
+ (id)descriptionForIndication:(int64_t)indication;
+ (id)nameForIndication:(int64_t)indication;
- (id)description;
- (id)initForDomain:(id)domain withCode:(int64_t)code ofCodeName:(id)name indicating:(int64_t)indicating ifKeyTrue:(id)true keyMatchTrueMap:(id)map;
@end

@implementation SUCoreErrorAttributes

- (id)initForDomain:(id)domain withCode:(int64_t)code ofCodeName:(id)name indicating:(int64_t)indicating ifKeyTrue:(id)true keyMatchTrueMap:(id)map
{
  domainCopy = domain;
  nameCopy = name;
  trueCopy = true;
  mapCopy = map;
  v22.receiver = self;
  v22.super_class = SUCoreErrorAttributes;
  v18 = [(SUCoreErrorAttributes *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_domain, domain);
    v19->_code = code;
    objc_storeStrong(&v19->_codeName, name);
    v19->_indications = indicating;
    objc_storeStrong(&v19->_keyMatchTrue, true);
    objc_storeStrong(&v19->_keyMatchTrueMap, map);
  }

  return v19;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  domain = [(SUCoreErrorAttributes *)self domain];
  code = [(SUCoreErrorAttributes *)self code];
  codeName = [(SUCoreErrorAttributes *)self codeName];
  indications = [(SUCoreErrorAttributes *)self indications];
  keyMatchTrue = [(SUCoreErrorAttributes *)self keyMatchTrue];
  if (keyMatchTrue)
  {
    keyMatchTrue2 = [(SUCoreErrorAttributes *)self keyMatchTrue];
  }

  else
  {
    keyMatchTrue2 = @"NONE";
  }

  keyMatchTrueMap = [(SUCoreErrorAttributes *)self keyMatchTrueMap];
  v11 = @"DEFINED";
  if (!keyMatchTrueMap)
  {
    v11 = @"NONE";
  }

  v12 = [v3 initWithFormat:@"domain(%@), code(%d), codeName(%@), indications(0x%08llX), keyMatchTrue(%@), keyMatchTrueMap(%@)", domain, code, codeName, indications, keyMatchTrue2, v11];

  if (keyMatchTrue)
  {
  }

  return v12;
}

+ (id)nameForIndication:(int64_t)indication
{
  if (indication > 15)
  {
    if (indication <= 63)
    {
      if (indication == 16)
      {
        return @"TATSUDeclinedAuthorization";
      }

      if (indication == 32)
      {
        return @"PallasNoPMVMatchFound";
      }
    }

    else
    {
      switch(indication)
      {
        case 64:
          return @"PallasNoBuildVersionMatchFound";
        case 128:
          return @"DownloadTimedOut";
        case 255:
          return @"All";
      }
    }
  }

  else if (indication <= 1)
  {
    if (!indication)
    {
      return @"None";
    }

    if (indication == 1)
    {
      return @"NetworkRequired";
    }
  }

  else
  {
    switch(indication)
    {
      case 2:
        return @"FullReplacementRequired";
      case 4:
        return @"FilesystemSpaceRequired";
      case 8:
        return @"AlternateInstallerRecommended";
    }
  }

  return @"Unknown Error Indication";
}

+ (id)descriptionForIndication:(int64_t)indication
{
  if (indication > 15)
  {
    if (indication <= 63)
    {
      if (indication == 16)
      {
        return @"TATSU declined to authorize this user for this install.";
      }

      if (indication == 32)
      {
        return @"Pallas returned no match found for requested PMV (HTTP 422).";
      }
    }

    else
    {
      switch(indication)
      {
        case 64:
          return @"Pallas returned no match found for requested Build Version.";
        case 128:
          return @"Download has timedout.";
        case 255:
          return @"All possible error indications.";
      }
    }
  }

  else if (indication <= 1)
  {
    if (!indication)
    {
      return @"No indications associated with error attributes";
    }

    if (indication == 1)
    {
      return @"Network access is required.";
    }
  }

  else
  {
    switch(indication)
    {
      case 2:
        return @"Full replacement is required [as opposed to incremental patch].";
      case 4:
        return @"Additional filesystem space is required.";
      case 8:
        return @"Current device configuration requires an alternate installer to perform the update.";
    }
  }

  return @"Unknown Error Indication";
}

@end