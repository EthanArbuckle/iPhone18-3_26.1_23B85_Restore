@interface REDonatedAction
+ (BOOL)supportedActivityType:(id)type forBundleID:(id)d;
+ (id)bundleIdForExtensionId:(id)id;
- (BOOL)isEqual:(id)equal;
- (NSString)localBundleIdentifier;
- (NSString)remoteBundleIdentifier;
- (REDonatedAction)initWithCoder:(id)coder;
- (id)_initInteractionWithEvent:(id)event filtered:(BOOL)filtered;
- (id)_initRelevantShortcutWithEvent:(id)event filtered:(BOOL)filtered;
- (id)_initUserActivityWithEvent:(id)event filtered:(BOOL)filtered;
- (id)_shortcutFilter;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)generateMetrics;
- (unint64_t)_hashRelevanceProviders:(id)providers;
- (unint64_t)trainingActionIdentifier;
- (void)_loadDuetEvent:(id)event;
- (void)_loadShortcutIdentifiersFromIntent:(id)intent;
- (void)_loadShortcutIdentifiersFromUserActivity:(id)activity;
- (void)encodeWithCoder:(id)coder;
- (void)loadIntent:(id)intent;
- (void)loadRelevantShortcut:(id)shortcut;
- (void)loadUserActivity:(id)activity;
@end

@implementation REDonatedAction

+ (id)bundleIdForExtensionId:(id)id
{
  idCopy = id;
  v4 = idCopy;
  if (bundleIdForExtensionId__onceToken == -1)
  {
    if (idCopy)
    {
LABEL_3:
      v5 = [bundleIdForExtensionId__pluginIdToBundleId objectForKeyedSubscript:v4];
      goto LABEL_6;
    }
  }

  else
  {
    +[REDonatedAction bundleIdForExtensionId:];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

void __42__REDonatedAction_bundleIdForExtensionId___block_invoke()
{
  v0 = bundleIdForExtensionId__pluginIdToBundleId;
  bundleIdForExtensionId__pluginIdToBundleId = &unk_283BBDB98;
}

+ (BOOL)supportedActivityType:(id)type forBundleID:(id)d
{
  typeCopy = type;
  dCopy = d;
  v16 = 0;
  v7 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v16];
  v8 = v16;
  if (!v7)
  {
    teamIdentifier = RELogForDomain(14);
    if (os_log_type_enabled(teamIdentifier, OS_LOG_TYPE_ERROR))
    {
      +[REDonatedAction supportedActivityType:forBundleID:];
    }

    LOBYTE(isInstalled) = 0;
    goto LABEL_10;
  }

  applicationState = [v7 applicationState];
  isInstalled = [applicationState isInstalled];

  if (isInstalled)
  {
    teamIdentifier = [v7 teamIdentifier];
    v12 = *MEMORY[0x277CBECE8];
    v13 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType();
    userActivityTypes = [v7 userActivityTypes];
    if ([userActivityTypes containsObject:v13])
    {
      LOBYTE(isInstalled) = 1;
    }

    else
    {
      LOBYTE(isInstalled) = [userActivityTypes containsObject:typeCopy];
    }

LABEL_10:
  }

  return isInstalled;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    identifier = [equalCopy identifier];
    identifier2 = [(REDonatedAction *)self identifier];
    v7 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_initInteractionWithEvent:(id)event filtered:(BOOL)filtered
{
  filteredCopy = filtered;
  eventCopy = event;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2050000000;
  v7 = get_DKIntentMetadataKeyClass_softClass_0;
  v63 = get_DKIntentMetadataKeyClass_softClass_0;
  if (!get_DKIntentMetadataKeyClass_softClass_0)
  {
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __get_DKIntentMetadataKeyClass_block_invoke_0;
    v59[3] = &unk_2785F9BC0;
    v59[4] = &v60;
    __get_DKIntentMetadataKeyClass_block_invoke_0(v59);
    v7 = v61[3];
  }

  v8 = v7;
  _Block_object_dispose(&v60, 8);
  serializedInteraction = [v7 serializedInteraction];
  metadata = [eventCopy metadata];
  v11 = [metadata objectForKeyedSubscript:serializedInteraction];

  v58 = 0;
  v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v58];
  v13 = v58;
  intent = [v12 intent];
  v15 = intent;
  if (intent)
  {
    v52 = filteredCopy;
    v56 = v12;
    v16 = REParametersForIntent(intent);
    v17 = v16;
    if (v16)
    {
      v54 = v13;
      v18 = eventCopy;
      v19 = v11;
      v20 = serializedInteraction;
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v16, "re_actionIdentifierHashValue")}];
      v22 = v21;
      v23 = RESimplifiedParametersForIntent(v15);
      v24 = v23;
      v25 = v23 != 0;
      if (v23)
      {
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "re_actionIdentifierHashValue")}];
        v27 = v26;
      }

      else
      {
        v26 = 0;
      }

      serializedInteraction = v20;
      v11 = v19;
      eventCopy = v18;
      v13 = v54;
    }

    else
    {
      v21 = 0;
      v26 = 0;
      v25 = 0;
    }

    v55 = v21;
    v29 = v26;
    if (v25 || !v52)
    {
      v53 = v29;
      v57.receiver = self;
      v57.super_class = REDonatedAction;
      v30 = [(REDonatedAction *)&v57 init];
      if (v30)
      {
        v51 = serializedInteraction;
        extensionBundleId = [v15 extensionBundleId];
        v32 = [REDonatedAction bundleIdForExtensionId:extensionBundleId];
        v33 = v32;
        if (v32)
        {
          bundleID = v32;
        }

        else
        {
          source = [eventCopy source];
          bundleID = [source bundleID];
        }

        v35 = [REIdentifier alloc];
        uUID = [eventCopy UUID];
        uUIDString = [uUID UUIDString];
        v38 = [(REIdentifier *)v35 initWithDataSource:bundleID section:&stru_283B97458 identifier:uUIDString];
        donationIdentifier = v30->_donationIdentifier;
        v30->_donationIdentifier = v38;

        v30->_type = 1;
        startDate = [eventCopy startDate];
        creationDate = v30->_creationDate;
        v30->_creationDate = startDate;

        localCreationDate = [eventCopy localCreationDate];
        localSaveDate = v30->_localSaveDate;
        v30->_localSaveDate = localCreationDate;

        objc_storeStrong(&v30->_actionTypeIdentifier, v21);
        objc_storeStrong(&v30->_simplifiedActionTypeIdentifier, v26);
        source2 = [eventCopy source];
        deviceID = [source2 deviceID];
        v30->_localDonation = deviceID == 0;

        _className = [v15 _className];
        intentTypeName = v30->_intentTypeName;
        v30->_intentTypeName = _className;

        v30->_isIntentBacked = 1;
        relevanceProviders = v30->_relevanceProviders;
        v30->_relevanceProviders = MEMORY[0x277CBEBF8];

        v30->_filteredShortcutType = 0;
        [(REDonatedAction *)v30 _loadShortcutIdentifiersFromIntent:v15];

        serializedInteraction = v51;
      }

      self = v30;
      selfCopy = self;
      v12 = v56;
      v29 = v53;
    }

    else
    {
      selfCopy = 0;
      v12 = v56;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_initUserActivityWithEvent:(id)event filtered:(BOOL)filtered
{
  filteredCopy = filtered;
  eventCopy = event;
  isEligibleForPrediction = [get_DKApplicationActivityMetadataKeyClass() isEligibleForPrediction];
  metadata = [eventCopy metadata];
  v9 = [metadata objectForKeyedSubscript:isEligibleForPrediction];

  if ([v9 BOOLValue])
  {
    activityType = [get_DKApplicationActivityMetadataKeyClass() activityType];
    metadata2 = [eventCopy metadata];
    v12 = [metadata2 objectForKeyedSubscript:activityType];

    value = [eventCopy value];
    stringValue = [value stringValue];

    if ([REDonatedAction supportedActivityType:v12 forBundleID:stringValue]|| !filteredCopy)
    {
      userActivityRequiredString = [get_DKApplicationActivityMetadataKeyClass() userActivityRequiredString];
      metadata3 = [eventCopy metadata];
      v36 = userActivityRequiredString;
      v18 = [metadata3 objectForKeyedSubscript:userActivityRequiredString];

      v35 = v18;
      if (v18)
      {
        v18 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityStrings:v18 secondaryString:0 optionalData:0];
      }

      v19 = REExtractUserActivity(v18);
      if (v19 || !filteredCopy)
      {
        v37.receiver = self;
        v37.super_class = REDonatedAction;
        v20 = [(REDonatedAction *)&v37 init];
        if (v20)
        {
          v33 = [REIdentifier alloc];
          [eventCopy UUID];
          v21 = v34 = v18;
          uUIDString = [v21 UUIDString];
          v23 = [(REIdentifier *)v33 initWithDataSource:stringValue section:&stru_283B97458 identifier:uUIDString];
          donationIdentifier = v20->_donationIdentifier;
          v20->_donationIdentifier = v23;

          v18 = v34;
          v20->_type = 0;
          startDate = [eventCopy startDate];
          creationDate = v20->_creationDate;
          v20->_creationDate = startDate;

          localCreationDate = [eventCopy localCreationDate];
          localSaveDate = v20->_localSaveDate;
          v20->_localSaveDate = localCreationDate;

          objc_storeStrong(&v20->_actionTypeIdentifier, v19);
          objc_storeStrong(&v20->_simplifiedActionTypeIdentifier, v19);
          objc_storeStrong(&v20->_activityType, v12);
          source = [eventCopy source];
          deviceID = [source deviceID];
          v20->_localDonation = deviceID == 0;

          v20->_isIntentBacked = 0;
          relevanceProviders = v20->_relevanceProviders;
          v20->_relevanceProviders = MEMORY[0x277CBEBF8];

          v20->_filteredShortcutType = 0;
          [(REDonatedAction *)v20 _loadShortcutIdentifiersFromUserActivity:v34];
        }

        self = v20;
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_initRelevantShortcutWithEvent:(id)event filtered:(BOOL)filtered
{
  filteredCopy = filtered;
  eventCopy = event;
  relevantShortcut = [eventCopy relevantShortcut];
  watchTemplate = [relevantShortcut watchTemplate];
  if (watchTemplate)
  {

    goto LABEL_3;
  }

  widgetKind = [relevantShortcut widgetKind];

  if (!widgetKind)
  {
LABEL_3:
    stringValue = [eventCopy stringValue];
    shortcut = [relevantShortcut shortcut];
    intent = [shortcut intent];

    v77 = relevantShortcut;
    if (intent)
    {
      v12 = intent;
      v13 = REParametersForIntent(v12);
      v14 = v13;
      v15 = filteredCopy;
      if (v13)
      {
        v74 = eventCopy;
        v16 = intent;
        v17 = stringValue;
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v13, "re_actionIdentifierHashValue")}];
        v19 = v18;
        v20 = RESimplifiedParametersForIntent(v12);
        v21 = v20;
        v22 = v20 != 0;
        if (v20)
        {
          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v20, "re_actionIdentifierHashValue")}];
          v24 = v23;
        }

        else
        {
          v23 = 0;
        }

        stringValue = v17;
        intent = v16;
        eventCopy = v74;
      }

      else
      {
        v18 = 0;
        v23 = 0;
        v22 = 0;
      }

      v27 = v18;
      v28 = v23;
      filteredCopy = v15;
      if (!v22 && v15)
      {
        selfCopy = 0;
        relevantShortcut = v77;
LABEL_40:

        goto LABEL_41;
      }

      v29 = v27;
      extensionBundleId = [v12 extensionBundleId];
      v31 = [REDonatedAction bundleIdForExtensionId:extensionBundleId];
      v32 = v31;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = stringValue;
      }

      v34 = v33;
      v35 = stringValue;
      stringValue = v34;

      v27 = v29;
      relevantShortcut = v77;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    shortcut2 = [relevantShortcut shortcut];
    userActivity = [shortcut2 userActivity];

    if (userActivity)
    {
      v70 = v28;
      v71 = intent;
      activityType = [userActivity activityType];
      v72 = stringValue;
      v39 = stringValue;
      source = [eventCopy source];
      deviceID = [source deviceID];

      v75 = activityType;
      if (deviceID)
      {
        v42 = [objc_alloc(MEMORY[0x277CD42D0]) initWithUserActivityType:activityType launchableAppBundleId:v39];
        defaultResolver = [MEMORY[0x277CD3BF0] defaultResolver];
        [defaultResolver resolveUserActivityExecutionInfo:v42];
        v44 = filteredCopy;
        v46 = v45 = userActivity;
        [v46 launchableAppBundleId];
        v47 = v27;
        v49 = v48 = self;

        userActivity = v45;
        filteredCopy = v44;
        activityType = v75;

        v39 = v49;
        self = v48;
        v27 = v47;
      }

      v28 = v70;
      if (![REDonatedAction supportedActivityType:activityType forBundleID:v39]&& filteredCopy)
      {
        intent = v71;
        stringValue = v72;
        relevantShortcut = v77;
LABEL_31:

LABEL_32:
        selfCopy = 0;
LABEL_39:

        goto LABEL_40;
      }

      v50 = REExtractUserActivity(userActivity);

      intent = v71;
      relevantShortcut = v77;
      if (!v50 && filteredCopy)
      {
        v27 = 0;
        stringValue = v72;
        goto LABEL_31;
      }

      v27 = v50;

      v28 = v27;
      stringValue = v72;
    }

    else if (!intent)
    {
      goto LABEL_32;
    }

    v78.receiver = self;
    v78.super_class = REDonatedAction;
    v51 = [(REDonatedAction *)&v78 init];
    if (v51)
    {
      v52 = stringValue;
      v73 = userActivity == 0;
      v76 = userActivity;
      v53 = [REIdentifier alloc];
      [eventCopy UUID];
      v55 = v54 = v28;
      uUIDString = [v55 UUIDString];
      v57 = [(REIdentifier *)v53 initWithDataSource:v52 section:&stru_283B97458 identifier:uUIDString];
      donationIdentifier = v51->_donationIdentifier;
      v51->_donationIdentifier = v57;

      v28 = v54;
      v51->_type = 2;
      startDate = [eventCopy startDate];
      creationDate = v51->_creationDate;
      v51->_creationDate = startDate;

      localCreationDate = [eventCopy localCreationDate];
      localSaveDate = v51->_localSaveDate;
      v51->_localSaveDate = localCreationDate;

      objc_storeStrong(&v51->_actionTypeIdentifier, v27);
      objc_storeStrong(&v51->_simplifiedActionTypeIdentifier, v54);
      relevanceProviders = [relevantShortcut relevanceProviders];
      v51->_relevanceProvidersHash = [(REDonatedAction *)v51 _hashRelevanceProviders:relevanceProviders];

      source2 = [eventCopy source];
      deviceID2 = [source2 deviceID];
      v51->_localDonation = deviceID2 == 0;

      v51->_isIntentBacked = v73;
      stringValue = v52;
      relevanceProviders2 = [relevantShortcut relevanceProviders];
      v67 = RERelevanceProviderForRelevanceProviders(relevanceProviders2, v52);
      relevanceProviders = v51->_relevanceProviders;
      v51->_relevanceProviders = v67;

      v51->_filteredShortcutType = 0;
      if (intent)
      {
        [(REDonatedAction *)v51 _loadShortcutIdentifiersFromIntent:intent];
        userActivity = v76;
      }

      else
      {
        userActivity = v76;
        [(REDonatedAction *)v51 _loadShortcutIdentifiersFromUserActivity:v76];
      }
    }

    self = v51;
    selfCopy = self;
    goto LABEL_39;
  }

  selfCopy = 0;
LABEL_41:

  return selfCopy;
}

- (id)_shortcutFilter
{
  if (_shortcutFilter_onceToken != -1)
  {
    [REDonatedAction _shortcutFilter];
  }

  v3 = _shortcutFilter_Filter;

  return v3;
}

uint64_t __34__REDonatedAction__shortcutFilter__block_invoke()
{
  v0 = objc_alloc_init(REShortcutFilter);
  v1 = _shortcutFilter_Filter;
  _shortcutFilter_Filter = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)_loadShortcutIdentifiersFromIntent:(id)intent
{
  self->_filteredShortcutType = 1;
  intentCopy = intent;
  _shortcutFilter = [(REDonatedAction *)self _shortcutFilter];
  v16 = [_shortcutFilter intentByFilteringIntent:intentCopy withLevel:1];

  _shortcutFilter2 = [(REDonatedAction *)self _shortcutFilter];
  v7 = [_shortcutFilter2 intentByFilteringIntent:intentCopy withLevel:0];

  _shortcutFilter3 = [(REDonatedAction *)self _shortcutFilter];
  bundleIdentifier = [(REDonatedAction *)self bundleIdentifier];
  v10 = [_shortcutFilter3 identifierForIntent:v16 bundleIdentifier:bundleIdentifier];
  appLevelIdentifier = self->_appLevelIdentifier;
  self->_appLevelIdentifier = v10;

  _shortcutFilter4 = [(REDonatedAction *)self _shortcutFilter];
  bundleIdentifier2 = [(REDonatedAction *)self bundleIdentifier];
  v14 = [_shortcutFilter4 identifierForIntent:v7 bundleIdentifier:bundleIdentifier2];
  eventLevelIdentifier = self->_eventLevelIdentifier;
  self->_eventLevelIdentifier = v14;
}

- (void)_loadShortcutIdentifiersFromUserActivity:(id)activity
{
  self->_filteredShortcutType = 1;
  activityCopy = activity;
  _shortcutFilter = [(REDonatedAction *)self _shortcutFilter];
  v16 = [_shortcutFilter userActivityByFilteringUserActivity:activityCopy withLevel:1];

  _shortcutFilter2 = [(REDonatedAction *)self _shortcutFilter];
  v7 = [_shortcutFilter2 userActivityByFilteringUserActivity:activityCopy withLevel:0];

  _shortcutFilter3 = [(REDonatedAction *)self _shortcutFilter];
  bundleIdentifier = [(REDonatedAction *)self bundleIdentifier];
  v10 = [_shortcutFilter3 identifierForUserActivity:v16 bundleIdentifier:bundleIdentifier];
  appLevelIdentifier = self->_appLevelIdentifier;
  self->_appLevelIdentifier = v10;

  _shortcutFilter4 = [(REDonatedAction *)self _shortcutFilter];
  bundleIdentifier2 = [(REDonatedAction *)self bundleIdentifier];
  v14 = [_shortcutFilter4 identifierForUserActivity:v7 bundleIdentifier:bundleIdentifier2];
  eventLevelIdentifier = self->_eventLevelIdentifier;
  self->_eventLevelIdentifier = v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  type = [(REDonatedAction *)self type];
  if (type > 2)
  {
    v6 = &stru_283B97458;
  }

  else
  {
    v6 = *(&off_2785FD698 + type);
  }

  bundleIdentifier = [(REDonatedAction *)self bundleIdentifier];
  identifier = [(REDonatedAction *)self identifier];
  v9 = [v3 stringWithFormat:@"<%@: %p> %@ %@ %@", v4, self, v6, bundleIdentifier, identifier];

  return v9;
}

- (unint64_t)_hashRelevanceProviders:(id)providers
{
  v16 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [providersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(providersCopy);
        }

        v6 ^= [*(*(&v11 + 1) + 8 * i) hash];
      }

      v5 = [providersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (NSString)remoteBundleIdentifier
{
  isLocalDonation = [(REDonatedAction *)self isLocalDonation];
  bundleIdentifier = [(REDonatedAction *)self bundleIdentifier];
  v5 = bundleIdentifier;
  if (isLocalDonation)
  {
    v6 = RERemoteApplicationIdentifierForLocalApplication(bundleIdentifier);

    v5 = v6;
  }

  return v5;
}

- (NSString)localBundleIdentifier
{
  isLocalDonation = [(REDonatedAction *)self isLocalDonation];
  bundleIdentifier = [(REDonatedAction *)self bundleIdentifier];
  v5 = bundleIdentifier;
  if (!isLocalDonation)
  {
    v6 = RELocalApplicationIdentifierForRemoteApplication(bundleIdentifier);

    v5 = v6;
  }

  return v5;
}

- (unint64_t)trainingActionIdentifier
{
  if (self->_isIntentBacked)
  {
    [(REDonatedAction *)self simplifiedActionTypeIdentifier];
  }

  else
  {
    [(REDonatedAction *)self actionTypeIdentifier];
  }
  v2 = ;
  re_actionIdentifierHashValue = [v2 re_actionIdentifierHashValue];

  return re_actionIdentifierHashValue;
}

- (id)generateMetrics
{
  v65 = *MEMORY[0x277D85DE8];
  if ([(REDonatedAction *)self type]!= 2)
  {
    v17 = 0;
    goto LABEL_58;
  }

  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  event = [(REDonatedAction *)self event];
  relevantShortcut = [event relevantShortcut];

  shortcut = [relevantShortcut shortcut];
  intent = [shortcut intent];

  shortcut2 = [relevantShortcut shortcut];
  userActivity = [shortcut2 userActivity];

  v10 = @"none";
  v11 = v10;
  if (intent)
  {
    watchTemplate = [relevantShortcut watchTemplate];

    v13 = REShortcutTypeIntent;
    if (watchTemplate)
    {
      v13 = REShortcutTypeIntentWithTemplate;
    }

    v14 = *v13;

    v56 = v14;
    [v3 setObject:v14 forKey:@"shortcutType"];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v3 setObject:v16 forKey:@"intentType"];
  }

  else
  {
    v18 = v10;
    if (userActivity)
    {
      watchTemplate2 = [relevantShortcut watchTemplate];

      v20 = REShortcutTypeActivity;
      if (watchTemplate2)
      {
        v20 = REShortcutTypeActivityWithTemplate;
      }

      v18 = *v20;
    }

    v56 = v18;
    [v3 setObject:v18 forKey:@"shortcutType"];
  }

  v21 = v11;
  watchTemplate3 = [relevantShortcut watchTemplate];

  v57 = userActivity;
  if (watchTemplate3)
  {
    watchTemplate4 = [relevantShortcut watchTemplate];
    image = [watchTemplate4 image];

    v25 = v21;
    if (!image)
    {
      goto LABEL_20;
    }

    v26 = RESourceTemplate;
  }

  else
  {
    keyImage = [intent keyImage];

    if (keyImage)
    {
      v26 = RESourceIntent;
    }

    else
    {
      shortcut3 = [relevantShortcut shortcut];
      activityImage = [shortcut3 activityImage];

      v25 = v21;
      if (!activityImage)
      {
        goto LABEL_20;
      }

      v26 = RESourceActivity;
    }
  }

  v25 = *v26;

LABEL_20:
  [v3 setObject:v25 forKey:@"imageSource"];
  v30 = v21;
  watchTemplate5 = [relevantShortcut watchTemplate];

  v58 = intent;
  if (watchTemplate5)
  {
    watchTemplate6 = [relevantShortcut watchTemplate];
    subtitle = [watchTemplate6 subtitle];

    if (subtitle)
    {
      v34 = RESourceTemplate;
LABEL_27:
      v38 = *v34;

      v30 = v38;
    }
  }

  else
  {
    _subtitle = [intent _subtitle];

    if (_subtitle)
    {
      v34 = RESourceIntent;
      goto LABEL_27;
    }

    shortcut4 = [relevantShortcut shortcut];
    activitySubtitle = [shortcut4 activitySubtitle];

    if (activitySubtitle)
    {
      v34 = RESourceActivity;
      goto LABEL_27;
    }
  }

  v59 = v3;
  [v3 setObject:v30 forKey:@"subtitleSource"];
  relevanceProviders = [relevantShortcut relevanceProviders];
  v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(relevanceProviders, "count")}];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v41 = relevanceProviders;
  v42 = [v41 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (!v42)
  {
    goto LABEL_57;
  }

  v43 = v42;
  v44 = *v61;
  do
  {
    v45 = 0;
    do
    {
      if (*v61 != v44)
      {
        objc_enumerationMutation(v41);
      }

      v46 = *(*(&v60 + 1) + 8 * v45);
      objc_opt_class();
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v48 = @"date";
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        v49 = objc_opt_isKindOfClass();
        v48 = @"location";
        if ((v49 & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_37;
          }

          situation = [v46 situation];
          if (situation > 4)
          {
            if (situation <= 6)
            {
              v48 = @"routineGym";
              if (situation != 5)
              {
                v48 = @"routineCommute";
              }
            }

            else if (situation == 7)
            {
              v48 = @"routineHeadphones";
            }

            else
            {
              v48 = @"routineWorkout";
              if (situation != 8)
              {
                v48 = @"routineActivity";
                if (situation != 9)
                {
                  goto LABEL_37;
                }
              }
            }
          }

          else if (situation <= 1)
          {
            v48 = @"routineMorning";
            if (situation)
            {
              v48 = @"routineEvening";
              if (situation != 1)
              {
                goto LABEL_37;
              }
            }
          }

          else
          {
            v48 = @"routineHome";
            if (situation != 2)
            {
              v48 = @"routineWork";
              if (situation != 3)
              {
                v48 = @"routineSchool";
              }
            }
          }
        }
      }

      v50 = v48;
      if (v50)
      {
        v51 = v50;
        [v40 addObject:v50];
      }

LABEL_37:
      ++v45;
    }

    while (v43 != v45);
    v53 = [v41 countByEnumeratingWithState:&v60 objects:v64 count:16];
    v43 = v53;
  }

  while (v53);
LABEL_57:

  [v59 setObject:v40 forKey:@"relevanceProvider"];
  v17 = [v59 copy];

LABEL_58:
  v54 = *MEMORY[0x277D85DE8];

  return v17;
}

- (REDonatedAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = REDonatedAction;
  v5 = [(REDonatedAction *)&v29 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v8 = [[REIdentifier alloc] initWithDataSource:v6 section:&stru_283B97458 identifier:v7];
    donationIdentifier = v5->_donationIdentifier;
    v5->_donationIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localSaveDate"];
    localSaveDate = v5->_localSaveDate;
    v5->_localSaveDate = v12;

    v5->_localDonation = [coderCopy decodeBoolForKey:@"localDonation"];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"actionTypeIdentifier"];
    actionTypeIdentifier = v5->_actionTypeIdentifier;
    v5->_actionTypeIdentifier = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"simplifiedActionTypeIdentifier"];
    simplifiedActionTypeIdentifier = v5->_simplifiedActionTypeIdentifier;
    v5->_simplifiedActionTypeIdentifier = v22;

    v5->_isIntentBacked = [coderCopy decodeBoolForKey:@"isIntentBacked"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventLevelIdentifier"];
    eventLevelIdentifier = v5->_eventLevelIdentifier;
    v5->_eventLevelIdentifier = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appLevelIdentifier"];
    appLevelIdentifier = v5->_appLevelIdentifier;
    v5->_appLevelIdentifier = v26;

    v5->_filteredShortcutType = [coderCopy decodeIntegerForKey:@"filteredShortcutType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  bundleIdentifier = [(REDonatedAction *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  identifier = [(REDonatedAction *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_localSaveDate forKey:@"localSaveDate"];
  [coderCopy encodeBool:self->_localDonation forKey:@"localDonation"];
  [coderCopy encodeObject:self->_actionTypeIdentifier forKey:@"actionTypeIdentifier"];
  [coderCopy encodeObject:self->_simplifiedActionTypeIdentifier forKey:@"simplifiedActionTypeIdentifier"];
  [coderCopy encodeBool:self->_isIntentBacked forKey:@"isIntentBacked"];
  [coderCopy encodeObject:self->_eventLevelIdentifier forKey:@"eventLevelIdentifier"];
  [coderCopy encodeObject:self->_appLevelIdentifier forKey:@"appLevelIdentifier"];
  [coderCopy encodeInteger:self->_filteredShortcutType forKey:@"filteredShortcutType"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 16) = self->_type;
  objc_storeStrong((v4 + 40), self->_donationIdentifier);
  objc_storeStrong((v4 + 24), self->_creationDate);
  objc_storeStrong((v4 + 32), self->_localSaveDate);
  *(v4 + 9) = self->_localDonation;
  objc_storeStrong((v4 + 48), self->_actionTypeIdentifier);
  objc_storeStrong((v4 + 56), self->_simplifiedActionTypeIdentifier);
  *(v4 + 8) = self->_isIntentBacked;
  objc_storeStrong((v4 + 64), self->_eventLevelIdentifier);
  objc_storeStrong((v4 + 72), self->_appLevelIdentifier);
  *(v4 + 80) = self->_filteredShortcutType;
  return v4;
}

- (void)_loadDuetEvent:(id)event
{
  eventCopy = event;
  if (_loadDuetEvent__onceToken != -1)
  {
    [REDonatedAction(LoadSiriAction) _loadDuetEvent:];
  }

  nextAvailableQueue = [_loadDuetEvent__QueuePool nextAvailableQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__REDonatedAction_LoadSiriAction___loadDuetEvent___block_invoke_2;
  block[3] = &unk_2785F99C8;
  block[4] = self;
  v9 = nextAvailableQueue;
  v10 = eventCopy;
  v6 = eventCopy;
  v7 = nextAvailableQueue;
  dispatch_async(v7, block);
}

uint64_t __50__REDonatedAction_LoadSiriAction___loadDuetEvent___block_invoke()
{
  v0 = [[REDispatchQueuePool alloc] initWithQueueCount:2 prefix:@"com.apple.RelevanceEngine.REDonatedActionEventLoader"];
  v1 = _loadDuetEvent__QueuePool;
  _loadDuetEvent__QueuePool = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __50__REDonatedAction_LoadSiriAction___loadDuetEvent___block_invoke_2(uint64_t a1)
{
  v2 = +[(RESingleton *)REDuetKnowledgeStore];
  v3 = [*(a1 + 32) identifier];
  v4 = [v2 queryForDuetEventWithIdentifier:v3];

  v5 = +[(RESingleton *)REDuetKnowledgeStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__REDonatedAction_LoadSiriAction___loadDuetEvent___block_invoke_3;
  v7[3] = &unk_2785FBA10;
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v5 executeQuery:v4 responseQueue:v6 completion:v7];
}

void __50__REDonatedAction_LoadSiriAction___loadDuetEvent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (CoreDuetLibraryCore_2())
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2050000000;
    v4 = get_DKEventClass_softClass_0;
    v10 = get_DKEventClass_softClass_0;
    if (!get_DKEventClass_softClass_0)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __get_DKEventClass_block_invoke_0;
      v6[3] = &unk_2785F9BC0;
      v6[4] = &v7;
      __get_DKEventClass_block_invoke_0(v6);
      v4 = v8[3];
    }

    v5 = v4;
    _Block_object_dispose(&v7, 8);
    objc_opt_isKindOfClass();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)loadUserActivity:(id)activity
{
  activityCopy = activity;
  if (activityCopy)
  {
    if (REProcessIsRelevanced())
    {
      RERaiseInternalException(*MEMORY[0x277CBE648], @"%s is not allowed from relevanced!", v5, v6, v7, v8, v9, v10, "[REDonatedAction(LoadSiriAction) loadUserActivity:]");
      goto LABEL_10;
    }

    if (!CoreDuetLibraryCore_2())
    {
      v11 = RELogForDomain(15);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [REDonatedAction(LoadSiriAction) loadUserActivity:];
      }

      goto LABEL_10;
    }

    if ([(REDonatedAction *)self type])
    {
LABEL_10:
      (*(activityCopy + 2))(activityCopy, 0, 0);
      goto LABEL_11;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__REDonatedAction_LoadSiriAction__loadUserActivity___block_invoke;
    v12[3] = &unk_2785FDF80;
    v12[4] = self;
    v13 = activityCopy;
    [(REDonatedAction *)self _loadDuetEvent:v12];
  }

LABEL_11:
}

void __52__REDonatedAction_LoadSiriAction__loadUserActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [get_DKApplicationActivityMetadataKeyClass_0() userActivityRequiredString];
    v5 = [get_DKApplicationActivityMetadataKeyClass_0() title];
    v6 = [v3 metadata];
    v7 = [v6 objectForKeyedSubscript:v4];

    v8 = [v3 metadata];
    v9 = [v8 objectForKeyedSubscript:v5];

    v10 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityStrings:v7 secondaryString:v9 optionalData:0];
    if (!v10)
    {
      v11 = RELogForDomain(15);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __52__REDonatedAction_LoadSiriAction__loadUserActivity___block_invoke_cold_1();
      }
    }

    v12 = *(a1 + 40);
    v13 = [v3 interaction];
    (*(v12 + 16))(v12, v13, v10);
  }

  else
  {
    v14 = RELogForDomain(15);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __52__REDonatedAction_LoadSiriAction__loadUserActivity___block_invoke_cold_2();
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)loadIntent:(id)intent
{
  intentCopy = intent;
  if (intentCopy)
  {
    if (REProcessIsRelevanced())
    {
      RERaiseInternalException(*MEMORY[0x277CBE648], @"%s is not allowed from relevanced!", v5, v6, v7, v8, v9, v10, "[REDonatedAction(LoadSiriAction) loadIntent:]");
      goto LABEL_10;
    }

    if (!CoreDuetLibraryCore_2())
    {
      v11 = RELogForDomain(15);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [REDonatedAction(LoadSiriAction) loadUserActivity:];
      }

      goto LABEL_10;
    }

    if ([(REDonatedAction *)self type]!= 1)
    {
LABEL_10:
      (*(intentCopy + 2))(intentCopy, 0, 0);
      goto LABEL_11;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__REDonatedAction_LoadSiriAction__loadIntent___block_invoke;
    v12[3] = &unk_2785FDF80;
    v12[4] = self;
    v13 = intentCopy;
    [(REDonatedAction *)self _loadDuetEvent:v12];
  }

LABEL_11:
}

void __46__REDonatedAction_LoadSiriAction__loadIntent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v11 = [*(a1 + 32) bundleIdentifier];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v12 = get_DKIntentMetadataKeyClass_softClass_1;
    v32 = get_DKIntentMetadataKeyClass_softClass_1;
    if (!get_DKIntentMetadataKeyClass_softClass_1)
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __get_DKIntentMetadataKeyClass_block_invoke_1;
      v28[3] = &unk_2785F9BC0;
      v28[4] = &v29;
      __get_DKIntentMetadataKeyClass_block_invoke_1(v28, v4, v5, v6, v7, v8, v9, v10, v25);
      v12 = v30[3];
    }

    v13 = v12;
    _Block_object_dispose(&v29, 8);
    v14 = [v12 intentClass];
    v15 = [v3 metadata];
    v16 = [v15 objectForKeyedSubscript:v14];

    v17 = +[RESiriActionsDonationsWhitelist sharedInstance];
    v18 = [v17 intentIsWhitelistedForBundleID:v11 andTypeName:v16];

    if (v18)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __46__REDonatedAction_LoadSiriAction__loadIntent___block_invoke_2;
      v26[3] = &unk_2785FDFA8;
      v19 = *(a1 + 40);
      v26[4] = *(a1 + 32);
      v27 = v19;
      [v3 fetchInteractionWithPopulatedKeyImage:v26];
    }

    else
    {
      v21 = [v3 interaction];
      if (!v21)
      {
        v22 = RELogForDomain(15);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          __46__REDonatedAction_LoadSiriAction__loadIntent___block_invoke_cold_1((a1 + 32));
        }
      }

      v23 = *(a1 + 40);
      v24 = [v21 intent];
      (*(v23 + 16))(v23, v21, v24);
    }
  }

  else
  {
    v20 = RELogForDomain(15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __46__REDonatedAction_LoadSiriAction__loadIntent___block_invoke_cold_2(a1);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __46__REDonatedAction_LoadSiriAction__loadIntent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = RELogForDomain(15);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__REDonatedAction_LoadSiriAction__loadIntent___block_invoke_2_cold_1();
    }
  }

  v5 = *(a1 + 40);
  v6 = [v3 intent];
  (*(v5 + 16))(v5, v3, v6);
}

- (void)loadRelevantShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  if (shortcutCopy)
  {
    if (REProcessIsRelevanced())
    {
      RERaiseInternalException(*MEMORY[0x277CBE648], @"%s is not allowed from relevanced!", v5, v6, v7, v8, v9, v10, "[REDonatedAction(LoadSiriAction) loadRelevantShortcut:]");
LABEL_6:
      (*(shortcutCopy + 2))(shortcutCopy, 0, 0);
      goto LABEL_7;
    }

    if ([(REDonatedAction *)self type]!= 2)
    {
      goto LABEL_6;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__REDonatedAction_LoadSiriAction__loadRelevantShortcut___block_invoke;
    v11[3] = &unk_2785FDF80;
    v11[4] = self;
    v12 = shortcutCopy;
    [(REDonatedAction *)self _loadDuetEvent:v11];
  }

LABEL_7:
}

void __56__REDonatedAction_LoadSiriAction__loadRelevantShortcut___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 relevantShortcut];
    if (!v5)
    {
      v6 = RELogForDomain(15);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __56__REDonatedAction_LoadSiriAction__loadRelevantShortcut___block_invoke_cold_1();
      }
    }

    v7 = *(a1 + 40);
    v8 = [v4 interaction];
    (*(v7 + 16))(v7, v8, v5);
  }

  else
  {
    v9 = RELogForDomain(15);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __56__REDonatedAction_LoadSiriAction__loadRelevantShortcut___block_invoke_cold_2();
    }

    (*(*(a1 + 40) + 16))();
  }
}

+ (void)supportedActivityType:forBundleID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(&dword_22859F000, v0, OS_LOG_TYPE_ERROR, "Could not make bundle for %@ - %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithEvent:filtered:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_22859F000, v0, OS_LOG_TYPE_DEBUG, "Unsupported stream type: %@ (event: %@)", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __52__REDonatedAction_LoadSiriAction__loadUserActivity___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_5_0(v2) bundleIdentifier];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4_2() identifier];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_6(&dword_22859F000, v4, v5, "Unable to load user activity with bundle ID: %@ (%@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __52__REDonatedAction_LoadSiriAction__loadUserActivity___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_5_0(v2) bundleIdentifier];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4_2() identifier];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_6(&dword_22859F000, v4, v5, "Unable to load user activity (event) with bundle ID: %@ (%@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __46__REDonatedAction_LoadSiriAction__loadIntent___block_invoke_cold_1(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*a1 bundleIdentifier];
  v3 = [*a1 identifier];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6_1(&dword_22859F000, v4, v5, "Unable to load interaction with bundle ID: %@ (%@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __46__REDonatedAction_LoadSiriAction__loadIntent___block_invoke_cold_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [*v1 identifier];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6_1(&dword_22859F000, v4, v5, "Unable to load interaction event with bundle ID: %@ (%@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __46__REDonatedAction_LoadSiriAction__loadIntent___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_5_0(v2) bundleIdentifier];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4_2() identifier];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_6(&dword_22859F000, v4, v5, "Unable to load interaction with image with bundle ID: %@ (%@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __56__REDonatedAction_LoadSiriAction__loadRelevantShortcut___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_5_0(v2) bundleIdentifier];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4_2() identifier];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_6(&dword_22859F000, v4, v5, "Unable to load relevant shortcut with bundle ID: %@ (%@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __56__REDonatedAction_LoadSiriAction__loadRelevantShortcut___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_5_0(v2) bundleIdentifier];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4_2() identifier];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_6(&dword_22859F000, v4, v5, "Unable to load relevant shortcut event with bundle ID: %@ (%@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end