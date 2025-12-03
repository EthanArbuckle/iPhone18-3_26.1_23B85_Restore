@interface CNVCardInstantMessageParser
+ (id)handleWithUsername:(id)username userIdentifier:(id)identifier service:(id)service bundleIdentifiers:(id)identifiers teamIdentifier:(id)teamIdentifier;
+ (id)serviceForString:(id)string;
+ (id)valueWithService:(id)service existingHandles:(id)handles parser:(id)parser;
@end

@implementation CNVCardInstantMessageParser

+ (id)valueWithService:(id)service existingHandles:(id)handles parser:(id)parser
{
  serviceCopy = service;
  parserCopy = parser;
  handlesCopy = handles;
  v11 = [parserCopy firstValueForParameterWithName:@"X-TEAMIDENTIFIER"];
  v12 = [parserCopy firstParameterWithName:@"X-BUNDLEIDENTIFIERS"];
  values = [v12 values];

  v14 = [parserCopy firstValueForParameterWithName:@"X-USERID"];
  parseStringValue = [parserCopy parseStringValue];
  [parserCopy advancePastSemicolon];

  v16 = [parseStringValue componentsSeparatedByString:@":"];
  if ([v16 count] >= 2)
  {
    v17 = [v16 mutableCopy];
    selfCopy = self;
    if ((*(*MEMORY[0x277CFBD30] + 16))())
    {
      firstObject = [v17 firstObject];
      v19 = [CNVCardInstantMessageParser serviceForString:firstObject];

      serviceCopy = v19;
    }

    [v17 removeObjectAtIndex:{0, selfCopy}];
    v20 = [v17 componentsJoinedByString:@":"];

    stringByRemovingPercentEncoding = [v20 stringByRemovingPercentEncoding];
    v22 = stringByRemovingPercentEncoding;
    if (stringByRemovingPercentEncoding)
    {
      v23 = stringByRemovingPercentEncoding;

      v20 = v23;
    }

    self = v31;

    parseStringValue = v20;
  }

  v24 = [self handleWithUsername:parseStringValue userIdentifier:v14 service:serviceCopy bundleIdentifiers:values teamIdentifier:v11];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __71__CNVCardInstantMessageParser_valueWithService_existingHandles_parser___block_invoke;
  v32[3] = &unk_27A710D68;
  v33 = v24;
  v25 = v24;
  v26 = [handlesCopy _cn_any:v32];

  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v28 = v27;

  return v27;
}

uint64_t __71__CNVCardInstantMessageParser_valueWithService_existingHandles_parser___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  v4 = [v2 isEqual:v3];

  return v4;
}

+ (id)handleWithUsername:(id)username userIdentifier:(id)identifier service:(id)service bundleIdentifiers:(id)identifiers teamIdentifier:(id)teamIdentifier
{
  usernameCopy = username;
  identifiersCopy = identifiers;
  v13 = MEMORY[0x277CBEB38];
  teamIdentifierCopy = teamIdentifier;
  serviceCopy = service;
  identifierCopy = identifier;
  dictionary = [v13 dictionary];
  if ([identifiersCopy count] == 1)
  {
    firstObject = [identifiersCopy firstObject];
    v19 = [firstObject componentsSeparatedByString:{@", "}];

    identifiersCopy = v19;
  }

  [dictionary _cn_setNonNilObject:usernameCopy forKey:@"username"];
  [dictionary _cn_setNonNilObject:identifierCopy forKey:@"userIdentifier"];

  [dictionary _cn_setNonNilObject:teamIdentifierCopy forKey:@"teamIdentifier"];
  [dictionary _cn_setNonNilObject:identifiersCopy forKey:@"bundleIdentifiers"];
  if (serviceCopy)
  {
    v20 = serviceCopy;
  }

  else
  {
    v20 = &stru_288651EC0;
  }

  [dictionary setObject:v20 forKey:@"service"];

  return dictionary;
}

+ (id)serviceForString:(id)string
{
  stringCopy = string;
  lowercaseString = [(__CFString *)stringCopy lowercaseString];
  v5 = [(__CFString *)stringCopy length];
  if (v5 > 5)
  {
    if (v5 > 7)
    {
      if (v5 == 8)
      {
        if ([lowercaseString isEqualToString:@"facebook"])
        {
          v7 = CNVCardInstantMessageServiceFacebook;
          goto LABEL_36;
        }

        v10 = [lowercaseString isEqualToString:@"gadugadu"];
        v11 = CNVCardInstantMessageServiceGaduGadu;
LABEL_21:
        v6 = *v11;
        if (!v10)
        {
          v6 = stringCopy;
        }

        goto LABEL_37;
      }

      v6 = stringCopy;
      if (v5 == 10)
      {
        v10 = [lowercaseString isEqualToString:@"googletalk"];
        v11 = CNVCardInstantMessageServiceGoogleTalk;
        goto LABEL_21;
      }

      goto LABEL_37;
    }

    if (v5 != 6)
    {
      v8 = [lowercaseString isEqualToString:@"x-apple"];
      v6 = stringCopy;
      if (v8)
      {
        v9 = 0;
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v12 = @"jabber";
LABEL_20:
    v10 = [lowercaseString isEqualToString:v12];
    v11 = CNVCardInstantMessageServiceJabber;
    goto LABEL_21;
  }

  if (v5 > 3)
  {
    if (v5 != 4)
    {
      if ([lowercaseString isEqualToString:@"gtalk"])
      {
        v7 = CNVCardInstantMessageServiceGoogleTalk;
        goto LABEL_36;
      }

      if ([lowercaseString isEqualToString:@"skype"])
      {
        v7 = CNVCardInstantMessageServiceSkype;
        goto LABEL_36;
      }

      if ([lowercaseString isEqualToString:@"yahoo"] || objc_msgSend(lowercaseString, "isEqualToString:", @"ymsgr"))
      {
        v7 = CNVCardInstantMessageServiceYahoo;
        goto LABEL_36;
      }

      v13 = @"msnim";
      goto LABEL_32;
    }

    v12 = @"xmpp";
    goto LABEL_20;
  }

  if (v5 == 2)
  {
    v10 = [lowercaseString isEqualToString:@"qq"];
    v11 = CNVCardInstantMessageServiceQQ;
    goto LABEL_21;
  }

  v6 = stringCopy;
  if (v5 == 3)
  {
    if ([lowercaseString isEqualToString:@"aim"])
    {
      v7 = CNVCardInstantMessageServiceAIM;
LABEL_36:
      v6 = *v7;
      goto LABEL_37;
    }

    if ([lowercaseString isEqualToString:@"icq"])
    {
      v7 = CNVCardInstantMessageServiceICQ;
      goto LABEL_36;
    }

    v13 = @"msn";
LABEL_32:
    v10 = [lowercaseString isEqualToString:v13];
    v11 = CNVCardInstantMessageServiceMSN;
    goto LABEL_21;
  }

LABEL_37:
  v9 = v6;
LABEL_38:

  return v9;
}

@end