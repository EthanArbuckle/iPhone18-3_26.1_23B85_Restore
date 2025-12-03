@interface VCUserActivityDonation
+ (id)timestampDateFormatter;
- (BOOL)isEqual:(id)equal;
- (NSString)fullDescription;
- (NSString)sourceAppIdentifierForDisplay;
- (NSString)sourceAppIdentifierForLaunching;
- (NSString)subtitle;
- (NSString)suggestedPhrase;
- (NSString)title;
- (NSUserActivity)userActivity;
- (VCUserActivityDonation)initWithEvent:(id)event;
- (VCUserActivityDonation)initWithUserActivity:(id)activity identifier:(id)identifier sourceAppIdentifier:(id)appIdentifier date:(id)date;
- (id)dateString;
- (id)uniqueProperty;
@end

@implementation VCUserActivityDonation

- (id)uniqueProperty
{
  userActivity = [(VCUserActivityDonation *)self userActivity];
  userInfo = [userActivity userInfo];
  v5 = [userInfo mutableCopy];

  userActivity2 = [(VCUserActivityDonation *)self userActivity];
  requiredUserInfoKeys = [userActivity2 requiredUserInfoKeys];

  if (requiredUserInfoKeys)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __40__VCUserActivityDonation_uniqueProperty__block_invoke;
    v20 = &unk_1E7AFFDA8;
    v21 = requiredUserInfoKeys;
    v22 = v5;
    [v22 enumerateKeysAndObjectsUsingBlock:&v17];
  }

  v8 = [(VCUserActivityDonation *)self sourceAppIdentifierForDisplay:v17];
  if (v8)
  {
    [(VCUserActivityDonation *)self sourceAppIdentifierForDisplay];
  }

  else
  {
    [(VCUserActivityDonation *)self sourceAppIdentifier];
  }
  v9 = ;
  [v5 setObject:v9 forKeyedSubscript:@"VCUserActivitySourceAppIdentifier"];

  userActivity3 = [(VCUserActivityDonation *)self userActivity];
  activityType = [userActivity3 activityType];
  [v5 setObject:activityType forKeyedSubscript:@"VCUserActivityType"];

  userActivity4 = [(VCUserActivityDonation *)self userActivity];
  webpageURL = [userActivity4 webpageURL];

  if (webpageURL)
  {
    userActivity5 = [(VCUserActivityDonation *)self userActivity];
    webpageURL2 = [userActivity5 webpageURL];
    [v5 setObject:webpageURL2 forKeyedSubscript:@"VCUserActivityWebpageURL"];
  }

  return v5;
}

void __40__VCUserActivityDonation_uniqueProperty__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if (([*(a1 + 32) containsObject:v4] & 1) == 0)
    {
      v5 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315394;
        v8 = "[VCUserActivityDonation uniqueProperty]_block_invoke";
        v9 = 2112;
        v10 = v4;
        _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_DEFAULT, "%s %@ is not a required key; ignoring it in the donation's uniqueProperty.", &v7, 0x16u);
      }

      [*(a1 + 40) removeObjectForKey:v4];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (NSString)suggestedPhrase
{
  userActivity = [(VCUserActivityDonation *)self userActivity];
  suggestedInvocationPhrase = [userActivity suggestedInvocationPhrase];

  return suggestedInvocationPhrase;
}

- (NSString)fullDescription
{
  userActivity = [(VCUserActivityDonation *)self userActivity];
  v15 = MEMORY[0x1E696AEC0];
  title = [userActivity title];
  activityType = [userActivity activityType];
  sourceAppIdentifier = [(VCUserActivityDonation *)self sourceAppIdentifier];
  dateString = [(VCUserActivityDonation *)self dateString];
  requiredUserInfoKeys = [userActivity requiredUserInfoKeys];
  userInfo = [userActivity userInfo];
  webpageURL = [userActivity webpageURL];
  if ([userActivity _isEligibleForPrediction])
  {
    v11 = @"Yes";
  }

  else
  {
    v11 = @"No";
  }

  interaction = [userActivity interaction];
  v13 = [v15 stringWithFormat:@"Title: %@\nActivity Type: %@\nBundle Identifier: %@\nDate: %@\nRequired User Info Keys: %@\nUser Info: %@\nWeb Page URL: %@\nEligible For Prediction: %@\nInteraction: %@\n", title, activityType, sourceAppIdentifier, dateString, requiredUserInfoKeys, userInfo, webpageURL, v11, interaction];

  return v13;
}

- (NSString)subtitle
{
  sourceAppIdentifierForDisplay = [(VCUserActivityDonation *)self sourceAppIdentifierForDisplay];
  v4 = [sourceAppIdentifierForDisplay isEqualToString:@"com.apple.mobilenotes"];

  if (v4)
  {
    activitySubtitle = 0;
  }

  else
  {
    shortcut = [(VCUserActivityDonation *)self shortcut];
    activitySubtitle = [shortcut activitySubtitle];
  }

  return activitySubtitle;
}

- (NSString)title
{
  userActivity = [(VCUserActivityDonation *)self userActivity];
  title = [userActivity title];

  return title;
}

- (id)dateString
{
  timestampDateFormatter = [objc_opt_class() timestampDateFormatter];
  date = [(VCUserActivityDonation *)self date];
  v5 = [timestampDateFormatter stringFromDate:date];

  return v5;
}

- (NSString)sourceAppIdentifierForLaunching
{
  shortcut = [(VCUserActivityDonation *)self shortcut];
  activityBundleIdentifier = [shortcut activityBundleIdentifier];

  return activityBundleIdentifier;
}

- (NSString)sourceAppIdentifierForDisplay
{
  shortcut = [(VCUserActivityDonation *)self shortcut];
  activityBundleIdentifier = [shortcut activityBundleIdentifier];

  return activityBundleIdentifier;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_identifier isEqualToString:equalCopy->_identifier];
  }

  return v5;
}

- (NSUserActivity)userActivity
{
  shortcut = [(VCUserActivityDonation *)self shortcut];
  userActivity = [shortcut userActivity];

  return userActivity;
}

- (VCUserActivityDonation)initWithEvent:(id)event
{
  v63 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v47 = eventCopy;
  if (eventCopy)
  {
    v5 = eventCopy;
    metadata = [v5 metadata];
    userActivityRequiredString = [MEMORY[0x1E6997948] userActivityRequiredString];
    v51 = [metadata objectForKeyedSubscript:userActivityRequiredString];

    if (v51)
    {
      v53 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityStrings:v51 secondaryString:0 optionalData:0];
      metadata2 = [v5 metadata];
      suggestedInvocationPhrase = [MEMORY[0x1E6997948] suggestedInvocationPhrase];
      v10 = [metadata2 objectForKeyedSubscript:suggestedInvocationPhrase];
      [v53 setSuggestedInvocationPhrase:v10];

      metadata3 = [v5 metadata];
      isEligibleForPrediction = [MEMORY[0x1E6997948] isEligibleForPrediction];
      v46 = [metadata3 objectForKeyedSubscript:isEligibleForPrediction];

      if (v46)
      {
        [v53 setEligibleForPrediction:{-[NSObject BOOLValue](v46, "BOOLValue")}];
      }

      metadata4 = [v5 metadata];
      itemRelatedContentURL = [MEMORY[0x1E6997948] itemRelatedContentURL];
      v50 = [metadata4 objectForKeyedSubscript:itemRelatedContentURL];

      metadata5 = [v5 metadata];
      itemRelatedUniqueIdentifier = [MEMORY[0x1E6997948] itemRelatedUniqueIdentifier];
      v49 = [metadata5 objectForKeyedSubscript:itemRelatedUniqueIdentifier];

      metadata6 = [v5 metadata];
      contentDescription = [MEMORY[0x1E6997948] contentDescription];
      v48 = [metadata6 objectForKeyedSubscript:contentDescription];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v60 = __Block_byref_object_copy__1140;
      v61 = __Block_byref_object_dispose__1141;
      v62 = 0;
      v19 = dispatch_semaphore_create(0);
      defaultSearchableIndex = [MEMORY[0x1E6964E78] defaultSearchableIndex];
      v20 = *MEMORY[0x1E6964C08];
      v58[0] = @"_kMDItemThumbnailDataPath";
      v58[1] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
      source = [v5 source];
      bundleID = [source bundleID];
      metadata7 = [v5 metadata];
      itemIdentifier = [MEMORY[0x1E6997948] itemIdentifier];
      v26 = [metadata7 objectForKeyedSubscript:itemIdentifier];
      v57 = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
      v28 = *MEMORY[0x1E696A378];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __VCUserActivityFromEvent_block_invoke;
      v54[3] = &unk_1E7AFFDD0;
      v56 = buf;
      v29 = v19;
      v55 = v29;
      [defaultSearchableIndex slowFetchAttributes:v21 protectionClass:v28 bundleID:bundleID identifiers:v27 completionHandler:v54];

      v30 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v29, v30);
      if (v50 || v49 || v48 || *(*&buf[8] + 40))
      {
        v31 = objc_alloc(MEMORY[0x1E6964E90]);
        identifier = [*MEMORY[0x1E6982D50] identifier];
        v33 = [v31 initWithItemContentType:identifier];

        [v33 setRelatedUniqueIdentifier:v49];
        [v33 setContentURL:v50];
        [v33 setContentDescription:v48];
        [v33 setThumbnailURL:*(*&buf[8] + 40)];
        [v53 setContentAttributeSet:v33];
      }

      _Block_object_dispose(buf, 8);
      v34 = v46;
    }

    else
    {
      v34 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        metadata8 = [v5 metadata];
        *buf = 136315394;
        *&buf[4] = "VCUserActivityFromEvent";
        *&buf[12] = 2112;
        *&buf[14] = metadata8;
        _os_log_impl(&dword_1B1DE3000, v34, OS_LOG_TYPE_DEFAULT, "%s Missing user activity required string from event.metadata=%@", buf, 0x16u);
      }

      v53 = 0;
    }

    if (v53)
    {
      uUID = [v5 UUID];
      uUIDString = [uUID UUIDString];
      value = [v5 value];
      stringValue = [value stringValue];
      startDate = [v5 startDate];
      self = [(VCUserActivityDonation *)self initWithUserActivity:v53 identifier:uUIDString sourceAppIdentifier:stringValue date:startDate];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCUserActivityDonation.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"event"}];

    selfCopy = 0;
  }

  v42 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (VCUserActivityDonation)initWithUserActivity:(id)activity identifier:(id)identifier sourceAppIdentifier:(id)appIdentifier date:(id)date
{
  activityCopy = activity;
  identifierCopy = identifier;
  appIdentifierCopy = appIdentifier;
  dateCopy = date;
  if (activityCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCUserActivityDonation.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"userActivity"}];

    if (identifierCopy)
    {
LABEL_3:
      if (appIdentifierCopy)
      {
        goto LABEL_4;
      }

LABEL_12:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCUserActivityDonation.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"sourceAppIdentifier"}];

      if (dateCopy)
      {
        goto LABEL_5;
      }

LABEL_13:
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCUserActivityDonation.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"date"}];

      goto LABEL_14;
    }
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"VCUserActivityDonation.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!appIdentifierCopy)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (!dateCopy)
  {
    goto LABEL_13;
  }

LABEL_5:
  selfCopy = 0;
  if (activityCopy && identifierCopy && appIdentifierCopy)
  {
    v29.receiver = self;
    v29.super_class = VCUserActivityDonation;
    self = [(VCUserActivityDonation *)&v29 init];
    if (self)
    {
      v16 = objc_alloc(MEMORY[0x1E696EA38]);
      v17 = INDisplayableOrLaunchableBundleIdForBundleIdFromUserActivity();
      v18 = [v16 initWithUserActivity:activityCopy bundleIdentifier:v17];
      shortcut = self->_shortcut;
      self->_shortcut = v18;

      v20 = [identifierCopy copy];
      identifier = self->_identifier;
      self->_identifier = v20;

      v22 = [appIdentifierCopy copy];
      sourceAppIdentifier = self->_sourceAppIdentifier;
      self->_sourceAppIdentifier = v22;

      objc_storeStrong(&self->_date, date);
      self = self;
      selfCopy = self;
      goto LABEL_15;
    }

LABEL_14:
    selfCopy = 0;
  }

LABEL_15:

  return selfCopy;
}

+ (id)timestampDateFormatter
{
  if (timestampDateFormatter_onceToken != -1)
  {
    dispatch_once(&timestampDateFormatter_onceToken, &__block_literal_global_1160);
  }

  v3 = timestampDateFormatter_dateFormatter;

  return v3;
}

uint64_t __48__VCUserActivityDonation_timestampDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = timestampDateFormatter_dateFormatter;
  timestampDateFormatter_dateFormatter = v0;

  [timestampDateFormatter_dateFormatter setDateStyle:1];
  v2 = timestampDateFormatter_dateFormatter;

  return [v2 setTimeStyle:1];
}

@end