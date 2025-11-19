@interface PCTelephonyActivity
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (PCTelephonyActivity)initWithActivity:(id)a3;
- (id)bundleIdentifier;
- (id)callImage;
- (id)callUUID;
- (id)contactIdentifier;
- (id)conversationUUID;
- (id)dateConnected;
- (id)description;
- (id)displayName;
- (id)image;
- (id)initFromKnownCall:(id)a3;
- (id)initFromKnownConversation:(id)a3;
- (id)initFromSensitiveCall:(id)a3;
- (id)initFromSensitiveConversation:(id)a3;
- (id)title;
- (int)service;
@end

@implementation PCTelephonyActivity

- (id)initFromSensitiveCall:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PCTelephonyActivity;
  v5 = [(PCTelephonyActivity *)&v18 initWithActivityType:@"com.apple.ProximityControl.activity.call"];
  v6 = v5;
  if (v5)
  {
    makeIneligibleForProcessing(v5);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = [v4 callUUID];
    [v7 setObject:v8 forKey:@"callUUID"];

    v9 = [MEMORY[0x277D6EDF8] sharedInstance];
    v10 = [v9 activeConversationForCall:v4];

    if (v10)
    {
      v11 = [v10 UUID];
      v12 = [v11 UUIDString];
      [v7 setObject:v12 forKey:@"conversationUUID"];
    }

    v13 = [v4 sourceIdentifier];

    if (v13)
    {
      v14 = [v4 sourceIdentifier];
      [v7 setObject:v14 forKey:@"sourceAppID"];
    }

    if ([v4 service])
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "service")}];
      [v7 setObject:v15 forKey:@"service"];
    }

    v16 = [v7 copy];
    [(PCTelephonyActivity *)v6 setUserInfo:v16];

    v6->_hostedOnCurrentDeviceIsValid = 0;
    v6->_hostedOnCurrentDevice = 0;
    v6->_isVideo = [v4 isVideo];
  }

  return v6;
}

- (id)initFromKnownCall:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PCTelephonyActivity;
  v5 = [(PCTelephonyActivity *)&v27 initWithActivityType:@"com.apple.ProximityControl.activity.call"];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_20;
  }

  makeIneligibleForProcessing(v5);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v4 callUUID];
  [v7 setObject:v8 forKey:@"callUUID"];

  v9 = [MEMORY[0x277D6EDF8] sharedInstance];
  v10 = [v9 activeConversationForCall:v4];

  if (v10)
  {
    v11 = [v10 UUID];
    v12 = [v11 UUIDString];
    [v7 setObject:v12 forKey:@"conversationUUID"];
  }

  v13 = [v4 sourceIdentifier];

  if (v13)
  {
    v14 = [v4 sourceIdentifier];
    [v7 setObject:v14 forKey:@"sourceAppID"];
  }

  v15 = [v4 dateConnected];

  if (v15)
  {
    v16 = [v4 dateConnected];
    [v7 setObject:v16 forKey:@"dateCon"];
  }

  if ([v4 service])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "service")}];
    [v7 setObject:v17 forKey:@"service"];
  }

  v18 = [v4 suggestedDisplayName];

  if (v18)
  {
    v19 = [v4 suggestedDisplayName];
LABEL_16:
    v22 = v19;
    [v7 setObject:v19 forKey:@"displayName"];

    goto LABEL_17;
  }

  v20 = [v4 displayName];

  if (v20)
  {
    v19 = [v4 displayName];
    goto LABEL_16;
  }

  v21 = [v4 displayFirstName];

  if (v21)
  {
    v19 = [v4 displayFirstName];
    goto LABEL_16;
  }

LABEL_17:
  v23 = [v4 contactIdentifiers];
  v24 = [v23 firstObject];

  if (v24)
  {
    [v7 setObject:v24 forKey:@"contactID"];
  }

  v25 = [v7 copy];
  [(PCTelephonyActivity *)v6 setUserInfo:v25];

  v6->_hostedOnCurrentDeviceIsValid = 1;
  v6->_hostedOnCurrentDevice = [v4 isHostedOnCurrentDevice];
  v6->_isVideo = [v4 isVideo];

LABEL_20:
  return v6;
}

- (id)initFromSensitiveConversation:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PCTelephonyActivity;
  v5 = [(PCTelephonyActivity *)&v15 initWithActivityType:@"com.apple.ProximityControl.activity.call"];
  v6 = v5;
  if (v5)
  {
    makeIneligibleForProcessing(v5);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = [v4 UUID];
    v9 = [v8 UUIDString];
    [v7 setObject:v9 forKey:@"conversationUUID"];

    v10 = [v4 bundleIdentifier];

    if (v10)
    {
      [v7 setObject:*MEMORY[0x277D6EF78] forKey:@"sourceAppID"];
    }

    v11 = [v4 resolvedAudioVideoMode];
    if (v11 == 1)
    {
      v12 = &unk_2873A4AE0;
    }

    else
    {
      if (v11 != 2)
      {
LABEL_9:
        v13 = [v7 copy];
        [(PCTelephonyActivity *)v6 setUserInfo:v13];

        v6->_hostedOnCurrentDeviceIsValid = 0;
        v6->_hostedOnCurrentDevice = 0;
        v6->_isVideo = [v4 resolvedAudioVideoMode] == 2;

        goto LABEL_10;
      }

      v12 = &unk_2873A4AF8;
    }

    [v7 setObject:v12 forKey:@"service"];
    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

- (id)initFromKnownConversation:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PCTelephonyActivity;
  v5 = [(PCTelephonyActivity *)&v17 initWithActivityType:@"com.apple.ProximityControl.activity.call"];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

  makeIneligibleForProcessing(v5);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v4 UUID];
  v9 = [v8 UUIDString];
  [v7 setObject:v9 forKey:@"conversationUUID"];

  v10 = [v4 bundleIdentifier];

  if (v10)
  {
    [v7 setObject:*MEMORY[0x277D6EF78] forKey:@"sourceAppID"];
  }

  v11 = [v4 resolvedAudioVideoMode];
  if (v11 == 1)
  {
    v12 = &unk_2873A4AE0;
    goto LABEL_8;
  }

  if (v11 == 2)
  {
    v12 = &unk_2873A4AF8;
LABEL_8:
    [v7 setObject:v12 forKey:@"service"];
  }

  v13 = [v4 displayName];
  if (v13)
  {
    [v7 setObject:v13 forKey:@"displayName"];
  }

  v14 = [v7 copy];
  [(PCTelephonyActivity *)v6 setUserInfo:v14];

  v6->_hostedOnCurrentDeviceIsValid = 1;
  v15 = [v4 presentationContext];
  v6->_hostedOnCurrentDevice = [v15 mode] == 2;

  v6->_isVideo = [v4 resolvedAudioVideoMode] == 2;
LABEL_12:

  return v6;
}

- (PCTelephonyActivity)initWithActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  v6 = [@"com.apple.ProximityControl.activity.call" isEqualToString:v5];

  if (v6)
  {
    v7 = [v4 activityType];
    v12.receiver = self;
    v12.super_class = PCTelephonyActivity;
    v8 = [(PCTelephonyActivity *)&v12 initWithActivityType:v7];

    if (v8)
    {
      makeIneligibleForProcessing(v8);
      v9 = [v4 userInfo];
      [(PCTelephonyActivity *)v8 setUserInfo:v9];
    }

    self = v8;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)title
{
  v2 = [(PCTelephonyActivity *)self service];
  v3 = 2;
  if (v2 == 2)
  {
    v3 = 4;
  }

  if (v2 == 3)
  {
    v4 = 5;
  }

  else
  {
    v4 = v3;
  }

  return [PCLocalizedString localizedStringForKey:v4];
}

- (id)description
{
  v3 = [(PCTelephonyActivity *)self displayName];
  v4 = [(PCTelephonyActivity *)self dateConnected];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSinceDate:v5];
    v7 = [PCActivityUtility formattedDurationFor:?];

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", v3, v7];
  }

  else
  {
    v8 = [(PCTelephonyActivity *)self title];
  }

  return v8;
}

- (BOOL)isValid
{
  v3 = [(PCTelephonyActivity *)self userInfo];

  if (!v3)
  {
    return 0;
  }

  v4 = [(PCTelephonyActivity *)self userInfo];
  v5 = [v4 allKeys];
  v6 = [v5 count] != 0;

  return v6;
}

- (id)dateConnected
{
  v3 = [(PCTelephonyActivity *)self userInfo];

  if (v3)
  {
    v4 = [(PCTelephonyActivity *)self userInfo];
    v5 = [v4 objectForKey:@"dateCon"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)displayName
{
  v3 = [(PCTelephonyActivity *)self userInfo];

  if (v3)
  {
    v4 = [(PCTelephonyActivity *)self userInfo];
    v5 = [v4 objectForKey:@"displayName"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)callUUID
{
  v3 = [(PCTelephonyActivity *)self userInfo];

  if (v3)
  {
    v4 = [(PCTelephonyActivity *)self userInfo];
    v5 = [v4 objectForKey:@"callUUID"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)conversationUUID
{
  v3 = [(PCTelephonyActivity *)self userInfo];

  if (v3)
  {
    v4 = [(PCTelephonyActivity *)self userInfo];
    v5 = [v4 objectForKey:@"conversationUUID"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)contactIdentifier
{
  v3 = [(PCTelephonyActivity *)self userInfo];

  if (v3)
  {
    v4 = [(PCTelephonyActivity *)self userInfo];
    v5 = [v4 objectForKey:@"contactID"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)callImage
{
  v28[2] = *MEMORY[0x277D85DE8];
  callImage = self->_callImage;
  if (!callImage)
  {
    v25 = [MEMORY[0x277D6EDF8] sharedInstance];
    v4 = [v25 contactStore];
    v5 = [MEMORY[0x277CBDBD0] descriptorForRequiredKeys];
    v6 = *MEMORY[0x277CBD028];
    v28[0] = v5;
    v28[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];

    v8 = [(PCTelephonyActivity *)self contactIdentifier];
    v26 = 0;
    v9 = [v4 unifiedContactWithIdentifier:v8 keysToFetch:v7 error:&v26];
    v10 = v26;

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_opt_new();
    }

    v12 = v11;
    v13 = objc_alloc(MEMORY[0x277CBDBD0]);
    v14 = [MEMORY[0x277CBDBD8] defaultSettings];
    v15 = [v13 initWithSettings:v14];

    v16 = MEMORY[0x277CBDBE0];
    v17 = [MEMORY[0x277D759A0] mainScreen];
    [v17 scale];
    v19 = [v16 scopeWithPointSize:0 scale:0 rightToLeft:44.0 style:{44.0, v18}];

    v27 = v12;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v21 = [v15 avatarImageForContacts:v20 scope:v19];
    v22 = self->_callImage;
    self->_callImage = v21;

    callImage = self->_callImage;
  }

  v23 = *MEMORY[0x277D85DE8];

  return callImage;
}

- (int)service
{
  v2 = [(PCTelephonyActivity *)self userInfo];
  v3 = [v2 objectForKey:@"service"];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 integerValue];

  return v4;
}

- (id)bundleIdentifier
{
  v3 = [(PCTelephonyActivity *)self userInfo];
  v4 = [v3 objectForKey:@"sourceAppID"];

  if (!v4)
  {
    v5 = [(PCTelephonyActivity *)self userInfo];
    v6 = [v5 objectForKey:@"service"];

    v4 = @"com.apple.mobilephone";
    if (v6 && [v6 integerValue] == 3)
    {
      v4 = @"com.apple.facetime";
    }
  }

  return v4;
}

- (id)image
{
  v2 = [(PCTelephonyActivity *)self bundleIdentifier];
  v3 = [PCActivityUtility iconForBundleIdentifier:v2];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 pcactivityType];
  if (v5 == [(PCTelephonyActivity *)self pcactivityType])
  {
    v6 = [v4 dateConnected];
    v7 = [(PCTelephonyActivity *)self dateConnected];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end