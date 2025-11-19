@interface SUCoreErrorAttributes
+ (id)descriptionForIndication:(int64_t)a3;
+ (id)nameForIndication:(int64_t)a3;
- (id)description;
- (id)initForDomain:(id)a3 withCode:(int64_t)a4 ofCodeName:(id)a5 indicating:(int64_t)a6 ifKeyTrue:(id)a7 keyMatchTrueMap:(id)a8;
@end

@implementation SUCoreErrorAttributes

- (id)initForDomain:(id)a3 withCode:(int64_t)a4 ofCodeName:(id)a5 indicating:(int64_t)a6 ifKeyTrue:(id)a7 keyMatchTrueMap:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = SUCoreErrorAttributes;
  v18 = [(SUCoreErrorAttributes *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_domain, a3);
    v19->_code = a4;
    objc_storeStrong(&v19->_codeName, a5);
    v19->_indications = a6;
    objc_storeStrong(&v19->_keyMatchTrue, a7);
    objc_storeStrong(&v19->_keyMatchTrueMap, a8);
  }

  return v19;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SUCoreErrorAttributes *)self domain];
  v5 = [(SUCoreErrorAttributes *)self code];
  v6 = [(SUCoreErrorAttributes *)self codeName];
  v7 = [(SUCoreErrorAttributes *)self indications];
  v8 = [(SUCoreErrorAttributes *)self keyMatchTrue];
  if (v8)
  {
    v9 = [(SUCoreErrorAttributes *)self keyMatchTrue];
  }

  else
  {
    v9 = @"NONE";
  }

  v10 = [(SUCoreErrorAttributes *)self keyMatchTrueMap];
  v11 = @"DEFINED";
  if (!v10)
  {
    v11 = @"NONE";
  }

  v12 = [v3 initWithFormat:@"domain(%@), code(%d), codeName(%@), indications(0x%08llX), keyMatchTrue(%@), keyMatchTrueMap(%@)", v4, v5, v6, v7, v9, v11];

  if (v8)
  {
  }

  return v12;
}

+ (id)nameForIndication:(int64_t)a3
{
  if (a3 > 15)
  {
    if (a3 <= 63)
    {
      if (a3 == 16)
      {
        return @"TATSUDeclinedAuthorization";
      }

      if (a3 == 32)
      {
        return @"PallasNoPMVMatchFound";
      }
    }

    else
    {
      switch(a3)
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

  else if (a3 <= 1)
  {
    if (!a3)
    {
      return @"None";
    }

    if (a3 == 1)
    {
      return @"NetworkRequired";
    }
  }

  else
  {
    switch(a3)
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

+ (id)descriptionForIndication:(int64_t)a3
{
  if (a3 > 15)
  {
    if (a3 <= 63)
    {
      if (a3 == 16)
      {
        return @"TATSU declined to authorize this user for this install.";
      }

      if (a3 == 32)
      {
        return @"Pallas returned no match found for requested PMV (HTTP 422).";
      }
    }

    else
    {
      switch(a3)
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

  else if (a3 <= 1)
  {
    if (!a3)
    {
      return @"No indications associated with error attributes";
    }

    if (a3 == 1)
    {
      return @"Network access is required.";
    }
  }

  else
  {
    switch(a3)
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