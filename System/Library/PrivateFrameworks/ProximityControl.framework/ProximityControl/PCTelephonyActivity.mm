@interface PCTelephonyActivity
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (PCTelephonyActivity)initWithActivity:(id)activity;
- (id)bundleIdentifier;
- (id)callImage;
- (id)callUUID;
- (id)contactIdentifier;
- (id)conversationUUID;
- (id)dateConnected;
- (id)description;
- (id)displayName;
- (id)image;
- (id)initFromKnownCall:(id)call;
- (id)initFromKnownConversation:(id)conversation;
- (id)initFromSensitiveCall:(id)call;
- (id)initFromSensitiveConversation:(id)conversation;
- (id)title;
- (int)service;
@end

@implementation PCTelephonyActivity

- (id)initFromSensitiveCall:(id)call
{
  callCopy = call;
  v18.receiver = self;
  v18.super_class = PCTelephonyActivity;
  v5 = [(PCTelephonyActivity *)&v18 initWithActivityType:@"com.apple.ProximityControl.activity.call"];
  v6 = v5;
  if (v5)
  {
    makeIneligibleForProcessing(v5);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    callUUID = [callCopy callUUID];
    [v7 setObject:callUUID forKey:@"callUUID"];

    mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
    v10 = [mEMORY[0x277D6EDF8] activeConversationForCall:callCopy];

    if (v10)
    {
      uUID = [v10 UUID];
      uUIDString = [uUID UUIDString];
      [v7 setObject:uUIDString forKey:@"conversationUUID"];
    }

    sourceIdentifier = [callCopy sourceIdentifier];

    if (sourceIdentifier)
    {
      sourceIdentifier2 = [callCopy sourceIdentifier];
      [v7 setObject:sourceIdentifier2 forKey:@"sourceAppID"];
    }

    if ([callCopy service])
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(callCopy, "service")}];
      [v7 setObject:v15 forKey:@"service"];
    }

    v16 = [v7 copy];
    [(PCTelephonyActivity *)v6 setUserInfo:v16];

    v6->_hostedOnCurrentDeviceIsValid = 0;
    v6->_hostedOnCurrentDevice = 0;
    v6->_isVideo = [callCopy isVideo];
  }

  return v6;
}

- (id)initFromKnownCall:(id)call
{
  callCopy = call;
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
  callUUID = [callCopy callUUID];
  [v7 setObject:callUUID forKey:@"callUUID"];

  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  v10 = [mEMORY[0x277D6EDF8] activeConversationForCall:callCopy];

  if (v10)
  {
    uUID = [v10 UUID];
    uUIDString = [uUID UUIDString];
    [v7 setObject:uUIDString forKey:@"conversationUUID"];
  }

  sourceIdentifier = [callCopy sourceIdentifier];

  if (sourceIdentifier)
  {
    sourceIdentifier2 = [callCopy sourceIdentifier];
    [v7 setObject:sourceIdentifier2 forKey:@"sourceAppID"];
  }

  dateConnected = [callCopy dateConnected];

  if (dateConnected)
  {
    dateConnected2 = [callCopy dateConnected];
    [v7 setObject:dateConnected2 forKey:@"dateCon"];
  }

  if ([callCopy service])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(callCopy, "service")}];
    [v7 setObject:v17 forKey:@"service"];
  }

  suggestedDisplayName = [callCopy suggestedDisplayName];

  if (suggestedDisplayName)
  {
    suggestedDisplayName2 = [callCopy suggestedDisplayName];
LABEL_16:
    v22 = suggestedDisplayName2;
    [v7 setObject:suggestedDisplayName2 forKey:@"displayName"];

    goto LABEL_17;
  }

  displayName = [callCopy displayName];

  if (displayName)
  {
    suggestedDisplayName2 = [callCopy displayName];
    goto LABEL_16;
  }

  displayFirstName = [callCopy displayFirstName];

  if (displayFirstName)
  {
    suggestedDisplayName2 = [callCopy displayFirstName];
    goto LABEL_16;
  }

LABEL_17:
  contactIdentifiers = [callCopy contactIdentifiers];
  firstObject = [contactIdentifiers firstObject];

  if (firstObject)
  {
    [v7 setObject:firstObject forKey:@"contactID"];
  }

  v25 = [v7 copy];
  [(PCTelephonyActivity *)v6 setUserInfo:v25];

  v6->_hostedOnCurrentDeviceIsValid = 1;
  v6->_hostedOnCurrentDevice = [callCopy isHostedOnCurrentDevice];
  v6->_isVideo = [callCopy isVideo];

LABEL_20:
  return v6;
}

- (id)initFromSensitiveConversation:(id)conversation
{
  conversationCopy = conversation;
  v15.receiver = self;
  v15.super_class = PCTelephonyActivity;
  v5 = [(PCTelephonyActivity *)&v15 initWithActivityType:@"com.apple.ProximityControl.activity.call"];
  v6 = v5;
  if (v5)
  {
    makeIneligibleForProcessing(v5);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    uUID = [conversationCopy UUID];
    uUIDString = [uUID UUIDString];
    [v7 setObject:uUIDString forKey:@"conversationUUID"];

    bundleIdentifier = [conversationCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      [v7 setObject:*MEMORY[0x277D6EF78] forKey:@"sourceAppID"];
    }

    resolvedAudioVideoMode = [conversationCopy resolvedAudioVideoMode];
    if (resolvedAudioVideoMode == 1)
    {
      v12 = &unk_2873A4AE0;
    }

    else
    {
      if (resolvedAudioVideoMode != 2)
      {
LABEL_9:
        v13 = [v7 copy];
        [(PCTelephonyActivity *)v6 setUserInfo:v13];

        v6->_hostedOnCurrentDeviceIsValid = 0;
        v6->_hostedOnCurrentDevice = 0;
        v6->_isVideo = [conversationCopy resolvedAudioVideoMode] == 2;

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

- (id)initFromKnownConversation:(id)conversation
{
  conversationCopy = conversation;
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
  uUID = [conversationCopy UUID];
  uUIDString = [uUID UUIDString];
  [v7 setObject:uUIDString forKey:@"conversationUUID"];

  bundleIdentifier = [conversationCopy bundleIdentifier];

  if (bundleIdentifier)
  {
    [v7 setObject:*MEMORY[0x277D6EF78] forKey:@"sourceAppID"];
  }

  resolvedAudioVideoMode = [conversationCopy resolvedAudioVideoMode];
  if (resolvedAudioVideoMode == 1)
  {
    v12 = &unk_2873A4AE0;
    goto LABEL_8;
  }

  if (resolvedAudioVideoMode == 2)
  {
    v12 = &unk_2873A4AF8;
LABEL_8:
    [v7 setObject:v12 forKey:@"service"];
  }

  displayName = [conversationCopy displayName];
  if (displayName)
  {
    [v7 setObject:displayName forKey:@"displayName"];
  }

  v14 = [v7 copy];
  [(PCTelephonyActivity *)v6 setUserInfo:v14];

  v6->_hostedOnCurrentDeviceIsValid = 1;
  presentationContext = [conversationCopy presentationContext];
  v6->_hostedOnCurrentDevice = [presentationContext mode] == 2;

  v6->_isVideo = [conversationCopy resolvedAudioVideoMode] == 2;
LABEL_12:

  return v6;
}

- (PCTelephonyActivity)initWithActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v6 = [@"com.apple.ProximityControl.activity.call" isEqualToString:activityType];

  if (v6)
  {
    activityType2 = [activityCopy activityType];
    v12.receiver = self;
    v12.super_class = PCTelephonyActivity;
    v8 = [(PCTelephonyActivity *)&v12 initWithActivityType:activityType2];

    if (v8)
    {
      makeIneligibleForProcessing(v8);
      userInfo = [activityCopy userInfo];
      [(PCTelephonyActivity *)v8 setUserInfo:userInfo];
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)title
{
  service = [(PCTelephonyActivity *)self service];
  v3 = 2;
  if (service == 2)
  {
    v3 = 4;
  }

  if (service == 3)
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
  displayName = [(PCTelephonyActivity *)self displayName];
  dateConnected = [(PCTelephonyActivity *)self dateConnected];
  v5 = dateConnected;
  if (displayName && dateConnected)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:v5];
    v7 = [PCActivityUtility formattedDurationFor:?];

    title = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", displayName, v7];
  }

  else
  {
    title = [(PCTelephonyActivity *)self title];
  }

  return title;
}

- (BOOL)isValid
{
  userInfo = [(PCTelephonyActivity *)self userInfo];

  if (!userInfo)
  {
    return 0;
  }

  userInfo2 = [(PCTelephonyActivity *)self userInfo];
  allKeys = [userInfo2 allKeys];
  v6 = [allKeys count] != 0;

  return v6;
}

- (id)dateConnected
{
  userInfo = [(PCTelephonyActivity *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(PCTelephonyActivity *)self userInfo];
    v5 = [userInfo2 objectForKey:@"dateCon"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)displayName
{
  userInfo = [(PCTelephonyActivity *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(PCTelephonyActivity *)self userInfo];
    v5 = [userInfo2 objectForKey:@"displayName"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)callUUID
{
  userInfo = [(PCTelephonyActivity *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(PCTelephonyActivity *)self userInfo];
    v5 = [userInfo2 objectForKey:@"callUUID"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)conversationUUID
{
  userInfo = [(PCTelephonyActivity *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(PCTelephonyActivity *)self userInfo];
    v5 = [userInfo2 objectForKey:@"conversationUUID"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)contactIdentifier
{
  userInfo = [(PCTelephonyActivity *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(PCTelephonyActivity *)self userInfo];
    v5 = [userInfo2 objectForKey:@"contactID"];
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
    mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
    contactStore = [mEMORY[0x277D6EDF8] contactStore];
    descriptorForRequiredKeys = [MEMORY[0x277CBDBD0] descriptorForRequiredKeys];
    v6 = *MEMORY[0x277CBD028];
    v28[0] = descriptorForRequiredKeys;
    v28[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];

    contactIdentifier = [(PCTelephonyActivity *)self contactIdentifier];
    v26 = 0;
    v9 = [contactStore unifiedContactWithIdentifier:contactIdentifier keysToFetch:v7 error:&v26];
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
    defaultSettings = [MEMORY[0x277CBDBD8] defaultSettings];
    v15 = [v13 initWithSettings:defaultSettings];

    v16 = MEMORY[0x277CBDBE0];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
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
  userInfo = [(PCTelephonyActivity *)self userInfo];
  v3 = [userInfo objectForKey:@"service"];

  if (!v3)
  {
    return 0;
  }

  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)bundleIdentifier
{
  userInfo = [(PCTelephonyActivity *)self userInfo];
  v4 = [userInfo objectForKey:@"sourceAppID"];

  if (!v4)
  {
    userInfo2 = [(PCTelephonyActivity *)self userInfo];
    v6 = [userInfo2 objectForKey:@"service"];

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
  bundleIdentifier = [(PCTelephonyActivity *)self bundleIdentifier];
  v3 = [PCActivityUtility iconForBundleIdentifier:bundleIdentifier];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  pcactivityType = [equalCopy pcactivityType];
  if (pcactivityType == [(PCTelephonyActivity *)self pcactivityType])
  {
    dateConnected = [equalCopy dateConnected];
    dateConnected2 = [(PCTelephonyActivity *)self dateConnected];
    v8 = [dateConnected isEqual:dateConnected2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end