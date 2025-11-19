@interface CNVCardInstantMessageParser
+ (id)handleWithUsername:(id)a3 userIdentifier:(id)a4 service:(id)a5 bundleIdentifiers:(id)a6 teamIdentifier:(id)a7;
+ (id)serviceForString:(id)a3;
+ (id)valueWithService:(id)a3 existingHandles:(id)a4 parser:(id)a5;
@end

@implementation CNVCardInstantMessageParser

+ (id)valueWithService:(id)a3 existingHandles:(id)a4 parser:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v9 firstValueForParameterWithName:@"X-TEAMIDENTIFIER"];
  v12 = [v9 firstParameterWithName:@"X-BUNDLEIDENTIFIERS"];
  v13 = [v12 values];

  v14 = [v9 firstValueForParameterWithName:@"X-USERID"];
  v15 = [v9 parseStringValue];
  [v9 advancePastSemicolon];

  v16 = [v15 componentsSeparatedByString:@":"];
  if ([v16 count] >= 2)
  {
    v17 = [v16 mutableCopy];
    v30 = a1;
    if ((*(*MEMORY[0x277CFBD30] + 16))())
    {
      v18 = [v17 firstObject];
      v19 = [CNVCardInstantMessageParser serviceForString:v18];

      v8 = v19;
    }

    [v17 removeObjectAtIndex:{0, v30}];
    v20 = [v17 componentsJoinedByString:@":"];

    v21 = [v20 stringByRemovingPercentEncoding];
    v22 = v21;
    if (v21)
    {
      v23 = v21;

      v20 = v23;
    }

    a1 = v31;

    v15 = v20;
  }

  v24 = [a1 handleWithUsername:v15 userIdentifier:v14 service:v8 bundleIdentifiers:v13 teamIdentifier:v11];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __71__CNVCardInstantMessageParser_valueWithService_existingHandles_parser___block_invoke;
  v32[3] = &unk_27A710D68;
  v33 = v24;
  v25 = v24;
  v26 = [v10 _cn_any:v32];

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

+ (id)handleWithUsername:(id)a3 userIdentifier:(id)a4 service:(id)a5 bundleIdentifiers:(id)a6 teamIdentifier:(id)a7
{
  v11 = a3;
  v12 = a6;
  v13 = MEMORY[0x277CBEB38];
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = [v13 dictionary];
  if ([v12 count] == 1)
  {
    v18 = [v12 firstObject];
    v19 = [v18 componentsSeparatedByString:{@", "}];

    v12 = v19;
  }

  [v17 _cn_setNonNilObject:v11 forKey:@"username"];
  [v17 _cn_setNonNilObject:v16 forKey:@"userIdentifier"];

  [v17 _cn_setNonNilObject:v14 forKey:@"teamIdentifier"];
  [v17 _cn_setNonNilObject:v12 forKey:@"bundleIdentifiers"];
  if (v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = &stru_288651EC0;
  }

  [v17 setObject:v20 forKey:@"service"];

  return v17;
}

+ (id)serviceForString:(id)a3
{
  v3 = a3;
  v4 = [(__CFString *)v3 lowercaseString];
  v5 = [(__CFString *)v3 length];
  if (v5 > 5)
  {
    if (v5 > 7)
    {
      if (v5 == 8)
      {
        if ([v4 isEqualToString:@"facebook"])
        {
          v7 = CNVCardInstantMessageServiceFacebook;
          goto LABEL_36;
        }

        v10 = [v4 isEqualToString:@"gadugadu"];
        v11 = CNVCardInstantMessageServiceGaduGadu;
LABEL_21:
        v6 = *v11;
        if (!v10)
        {
          v6 = v3;
        }

        goto LABEL_37;
      }

      v6 = v3;
      if (v5 == 10)
      {
        v10 = [v4 isEqualToString:@"googletalk"];
        v11 = CNVCardInstantMessageServiceGoogleTalk;
        goto LABEL_21;
      }

      goto LABEL_37;
    }

    if (v5 != 6)
    {
      v8 = [v4 isEqualToString:@"x-apple"];
      v6 = v3;
      if (v8)
      {
        v9 = 0;
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v12 = @"jabber";
LABEL_20:
    v10 = [v4 isEqualToString:v12];
    v11 = CNVCardInstantMessageServiceJabber;
    goto LABEL_21;
  }

  if (v5 > 3)
  {
    if (v5 != 4)
    {
      if ([v4 isEqualToString:@"gtalk"])
      {
        v7 = CNVCardInstantMessageServiceGoogleTalk;
        goto LABEL_36;
      }

      if ([v4 isEqualToString:@"skype"])
      {
        v7 = CNVCardInstantMessageServiceSkype;
        goto LABEL_36;
      }

      if ([v4 isEqualToString:@"yahoo"] || objc_msgSend(v4, "isEqualToString:", @"ymsgr"))
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
    v10 = [v4 isEqualToString:@"qq"];
    v11 = CNVCardInstantMessageServiceQQ;
    goto LABEL_21;
  }

  v6 = v3;
  if (v5 == 3)
  {
    if ([v4 isEqualToString:@"aim"])
    {
      v7 = CNVCardInstantMessageServiceAIM;
LABEL_36:
      v6 = *v7;
      goto LABEL_37;
    }

    if ([v4 isEqualToString:@"icq"])
    {
      v7 = CNVCardInstantMessageServiceICQ;
      goto LABEL_36;
    }

    v13 = @"msn";
LABEL_32:
    v10 = [v4 isEqualToString:v13];
    v11 = CNVCardInstantMessageServiceMSN;
    goto LABEL_21;
  }

LABEL_37:
  v9 = v6;
LABEL_38:

  return v9;
}

@end