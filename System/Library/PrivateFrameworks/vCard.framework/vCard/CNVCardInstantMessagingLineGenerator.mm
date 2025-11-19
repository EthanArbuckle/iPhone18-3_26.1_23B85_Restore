@interface CNVCardInstantMessagingLineGenerator
+ (id)instantMessageUsernameWithSchemeForUsername:(id)a3 service:(id)a4;
+ (id)serviceTypeStringForInstantMessageService:(id)a3;
- (id)lineWithValue:(id)a3 label:(id)a4;
- (id)makeLineWithName:(id)a3 value:(id)a4;
- (id)standardLabelsForLabel:(id)a3;
@end

@implementation CNVCardInstantMessagingLineGenerator

- (id)makeLineWithName:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 valueForKey:@"username"];
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v12 = 0;
  }

  else
  {
    v13 = [v8 valueForKey:@"service"];
    v14 = [CNVCardValueEncoder encodeValue:v11];
    v15 = [objc_opt_class() instantMessageUsernameWithSchemeForUsername:v14 service:v13];
    v17.receiver = self;
    v17.super_class = CNVCardInstantMessagingLineGenerator;
    v12 = [(CNVCardLineGenerator *)&v17 makeLineWithName:v6 value:v15];
  }

  return v12;
}

- (id)lineWithValue:(id)a3 label:(id)a4
{
  v14.receiver = self;
  v14.super_class = CNVCardInstantMessagingLineGenerator;
  v5 = a3;
  v6 = [(CNVCardLineGenerator *)&v14 lineWithValue:v5 label:a4];
  v7 = [v5 valueForKey:{@"service", v14.receiver, v14.super_class}];
  v8 = [v5 valueForKey:@"userIdentifier"];
  v9 = [objc_opt_class() serviceTypeStringForInstantMessageService:v7];
  v10 = [v5 valueForKey:@"teamIdentifier"];
  v11 = [v5 valueForKey:@"bundleIdentifiers"];

  if ([v11 count])
  {
    v12 = [v11 componentsJoinedByString:{@", "}];
  }

  else
  {
    v12 = 0;
  }

  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    [v6 insertParameterWithName:@"X-SERVICE-TYPE" value:v9 atIndex:0];
  }

  [v6 addParameterWithName:@"x-userid" value:v8];
  [v6 addParameterWithName:@"x-bundleidentifiers" value:v12];
  [v6 addParameterWithName:@"x-teamidentifier" value:v10];

  return v6;
}

+ (id)serviceTypeStringForInstantMessageService:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AIMInstant"])
  {
    v4 = @"AIM";
  }

  else if ([v3 isEqualToString:@"FacebookInstant"])
  {
    v4 = @"Facebook";
  }

  else if ([v3 isEqualToString:@"GaduGaduInstant"])
  {
    v4 = @"GaduGadu";
  }

  else if ([v3 isEqualToString:@"GoogleTalkInstant"])
  {
    v4 = @"GoogleTalk";
  }

  else if ([v3 isEqualToString:@"ICQInstant"])
  {
    v4 = @"ICQ";
  }

  else if ([v3 isEqualToString:@"JabberInstant"])
  {
    v4 = @"Jabber";
  }

  else if ([v3 isEqualToString:@"MSNInstant"])
  {
    v4 = @"MSN";
  }

  else if ([v3 isEqualToString:@"QQInstant"])
  {
    v4 = @"QQ";
  }

  else if ([v3 isEqualToString:@"SkypeInstant"])
  {
    v4 = @"Skype";
  }

  else if ([v3 isEqualToString:@"YahooInstant"])
  {
    v4 = @"Yahoo";
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (id)instantMessageUsernameWithSchemeForUsername:(id)a3 service:(id)a4
{
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MEMORY[0x277CCA900];
  v7 = a3;
  v8 = [v6 URLPathAllowedCharacterSet];
  v9 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v8];

  v22[0] = @"AIMInstant";
  v22[1] = @"ICQInstant";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  LODWORD(v7) = [v10 containsObject:v5];

  if (v7)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"aim:%@", v9];
    goto LABEL_14;
  }

  v21[0] = @"FacebookInstant";
  v21[1] = @"GoogleTalkInstant";
  v21[2] = @"JabberInstant";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v12 = [v11 containsObject:v5];

  if (v12)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"xmpp:%@", v9];
    goto LABEL_14;
  }

  if ([v5 isEqualToString:@"MSNInstant"])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"msnim:%@", v9];
    goto LABEL_14;
  }

  v20[0] = @"GaduGaduInstant";
  v20[1] = @"QQInstant";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v14 = [v13 containsObject:v5];

  if (v14)
  {
    v15 = MEMORY[0x277CCACA8];
LABEL_9:
    [v15 stringWithFormat:@"x-apple:%@", v9];
    goto LABEL_14;
  }

  if ([v5 isEqualToString:@"SkypeInstant"])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"skype:%@", v9];
  }

  else
  {
    v16 = [v5 isEqualToString:@"YahooInstant"];
    v15 = MEMORY[0x277CCACA8];
    if (!v16)
    {
      goto LABEL_9;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"ymsgr:%@", v9];
  }

  v17 = LABEL_14:;

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)standardLabelsForLabel:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"MobileMe"])
  {
    v10[0] = @"MobileMe";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CNVCardInstantMessagingLineGenerator;
    v5 = [(CNVCardLineGenerator *)&v9 standardLabelsForLabel:v4];
  }

  v6 = v5;

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end