@interface REDonatedAction
+ (BOOL)supportedActivityType:(id)a3 forBundleID:(id)a4;
+ (id)bundleIdForExtensionId:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)localBundleIdentifier;
- (NSString)remoteBundleIdentifier;
- (REDonatedAction)initWithCoder:(id)a3;
- (id)_initInteractionWithEvent:(id)a3 filtered:(BOOL)a4;
- (id)_initRelevantShortcutWithEvent:(id)a3 filtered:(BOOL)a4;
- (id)_initUserActivityWithEvent:(id)a3 filtered:(BOOL)a4;
- (id)_shortcutFilter;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)generateMetrics;
- (unint64_t)_hashRelevanceProviders:(id)a3;
- (unint64_t)trainingActionIdentifier;
- (void)_loadDuetEvent:(id)a3;
- (void)_loadShortcutIdentifiersFromIntent:(id)a3;
- (void)_loadShortcutIdentifiersFromUserActivity:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)loadIntent:(id)a3;
- (void)loadRelevantShortcut:(id)a3;
- (void)loadUserActivity:(id)a3;
@end

@implementation REDonatedAction

+ (id)bundleIdForExtensionId:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (bundleIdForExtensionId__onceToken == -1)
  {
    if (v3)
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

+ (BOOL)supportedActivityType:(id)a3 forBundleID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v7 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v6 allowPlaceholder:0 error:&v16];
  v8 = v16;
  if (!v7)
  {
    v11 = RELogForDomain(14);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[REDonatedAction supportedActivityType:forBundleID:];
    }

    LOBYTE(v10) = 0;
    goto LABEL_10;
  }

  v9 = [v7 applicationState];
  v10 = [v9 isInstalled];

  if (v10)
  {
    v11 = [v7 teamIdentifier];
    v12 = *MEMORY[0x277CBECE8];
    v13 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType();
    v14 = [v7 userActivityTypes];
    if ([v14 containsObject:v13])
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      LOBYTE(v10) = [v14 containsObject:v5];
    }

LABEL_10:
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 identifier];
    v6 = [(REDonatedAction *)self identifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_initInteractionWithEvent:(id)a3 filtered:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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
  v9 = [v7 serializedInteraction];
  v10 = [v6 metadata];
  v11 = [v10 objectForKeyedSubscript:v9];

  v58 = 0;
  v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v58];
  v13 = v58;
  v14 = [v12 intent];
  v15 = v14;
  if (v14)
  {
    v52 = v4;
    v56 = v12;
    v16 = REParametersForIntent(v14);
    v17 = v16;
    if (v16)
    {
      v54 = v13;
      v18 = v6;
      v19 = v11;
      v20 = v9;
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

      v9 = v20;
      v11 = v19;
      v6 = v18;
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
        v51 = v9;
        v31 = [v15 extensionBundleId];
        v32 = [REDonatedAction bundleIdForExtensionId:v31];
        v33 = v32;
        if (v32)
        {
          v50 = v32;
        }

        else
        {
          v34 = [v6 source];
          v50 = [v34 bundleID];
        }

        v35 = [REIdentifier alloc];
        v36 = [v6 UUID];
        v37 = [v36 UUIDString];
        v38 = [(REIdentifier *)v35 initWithDataSource:v50 section:&stru_283B97458 identifier:v37];
        donationIdentifier = v30->_donationIdentifier;
        v30->_donationIdentifier = v38;

        v30->_type = 1;
        v40 = [v6 startDate];
        creationDate = v30->_creationDate;
        v30->_creationDate = v40;

        v42 = [v6 localCreationDate];
        localSaveDate = v30->_localSaveDate;
        v30->_localSaveDate = v42;

        objc_storeStrong(&v30->_actionTypeIdentifier, v21);
        objc_storeStrong(&v30->_simplifiedActionTypeIdentifier, v26);
        v44 = [v6 source];
        v45 = [v44 deviceID];
        v30->_localDonation = v45 == 0;

        v46 = [v15 _className];
        intentTypeName = v30->_intentTypeName;
        v30->_intentTypeName = v46;

        v30->_isIntentBacked = 1;
        relevanceProviders = v30->_relevanceProviders;
        v30->_relevanceProviders = MEMORY[0x277CBEBF8];

        v30->_filteredShortcutType = 0;
        [(REDonatedAction *)v30 _loadShortcutIdentifiersFromIntent:v15];

        v9 = v51;
      }

      self = v30;
      v28 = self;
      v12 = v56;
      v29 = v53;
    }

    else
    {
      v28 = 0;
      v12 = v56;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)_initUserActivityWithEvent:(id)a3 filtered:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [get_DKApplicationActivityMetadataKeyClass() isEligibleForPrediction];
  v8 = [v6 metadata];
  v9 = [v8 objectForKeyedSubscript:v7];

  if ([v9 BOOLValue])
  {
    v10 = [get_DKApplicationActivityMetadataKeyClass() activityType];
    v11 = [v6 metadata];
    v12 = [v11 objectForKeyedSubscript:v10];

    v13 = [v6 value];
    v14 = [v13 stringValue];

    if ([REDonatedAction supportedActivityType:v12 forBundleID:v14]|| !v4)
    {
      v16 = [get_DKApplicationActivityMetadataKeyClass() userActivityRequiredString];
      v17 = [v6 metadata];
      v36 = v16;
      v18 = [v17 objectForKeyedSubscript:v16];

      v35 = v18;
      if (v18)
      {
        v18 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityStrings:v18 secondaryString:0 optionalData:0];
      }

      v19 = REExtractUserActivity(v18);
      if (v19 || !v4)
      {
        v37.receiver = self;
        v37.super_class = REDonatedAction;
        v20 = [(REDonatedAction *)&v37 init];
        if (v20)
        {
          v33 = [REIdentifier alloc];
          [v6 UUID];
          v21 = v34 = v18;
          v22 = [v21 UUIDString];
          v23 = [(REIdentifier *)v33 initWithDataSource:v14 section:&stru_283B97458 identifier:v22];
          donationIdentifier = v20->_donationIdentifier;
          v20->_donationIdentifier = v23;

          v18 = v34;
          v20->_type = 0;
          v25 = [v6 startDate];
          creationDate = v20->_creationDate;
          v20->_creationDate = v25;

          v27 = [v6 localCreationDate];
          localSaveDate = v20->_localSaveDate;
          v20->_localSaveDate = v27;

          objc_storeStrong(&v20->_actionTypeIdentifier, v19);
          objc_storeStrong(&v20->_simplifiedActionTypeIdentifier, v19);
          objc_storeStrong(&v20->_activityType, v12);
          v29 = [v6 source];
          v30 = [v29 deviceID];
          v20->_localDonation = v30 == 0;

          v20->_isIntentBacked = 0;
          relevanceProviders = v20->_relevanceProviders;
          v20->_relevanceProviders = MEMORY[0x277CBEBF8];

          v20->_filteredShortcutType = 0;
          [(REDonatedAction *)v20 _loadShortcutIdentifiersFromUserActivity:v34];
        }

        self = v20;
        v15 = self;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_initRelevantShortcutWithEvent:(id)a3 filtered:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 relevantShortcut];
  v8 = [v7 watchTemplate];
  if (v8)
  {

    goto LABEL_3;
  }

  v25 = [v7 widgetKind];

  if (!v25)
  {
LABEL_3:
    v9 = [v6 stringValue];
    v10 = [v7 shortcut];
    v11 = [v10 intent];

    v77 = v7;
    if (v11)
    {
      v12 = v11;
      v13 = REParametersForIntent(v12);
      v14 = v13;
      v15 = v4;
      if (v13)
      {
        v74 = v6;
        v16 = v11;
        v17 = v9;
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

        v9 = v17;
        v11 = v16;
        v6 = v74;
      }

      else
      {
        v18 = 0;
        v23 = 0;
        v22 = 0;
      }

      v27 = v18;
      v28 = v23;
      v4 = v15;
      if (!v22 && v15)
      {
        v26 = 0;
        v7 = v77;
LABEL_40:

        goto LABEL_41;
      }

      v29 = v27;
      v30 = [v12 extensionBundleId];
      v31 = [REDonatedAction bundleIdForExtensionId:v30];
      v32 = v31;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = v9;
      }

      v34 = v33;
      v35 = v9;
      v9 = v34;

      v27 = v29;
      v7 = v77;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v36 = [v7 shortcut];
    v37 = [v36 userActivity];

    if (v37)
    {
      v70 = v28;
      v71 = v11;
      v38 = [v37 activityType];
      v72 = v9;
      v39 = v9;
      v40 = [v6 source];
      v41 = [v40 deviceID];

      v75 = v38;
      if (v41)
      {
        v42 = [objc_alloc(MEMORY[0x277CD42D0]) initWithUserActivityType:v38 launchableAppBundleId:v39];
        v43 = [MEMORY[0x277CD3BF0] defaultResolver];
        [v43 resolveUserActivityExecutionInfo:v42];
        v44 = v4;
        v46 = v45 = v37;
        [v46 launchableAppBundleId];
        v47 = v27;
        v49 = v48 = self;

        v37 = v45;
        v4 = v44;
        v38 = v75;

        v39 = v49;
        self = v48;
        v27 = v47;
      }

      v28 = v70;
      if (![REDonatedAction supportedActivityType:v38 forBundleID:v39]&& v4)
      {
        v11 = v71;
        v9 = v72;
        v7 = v77;
LABEL_31:

LABEL_32:
        v26 = 0;
LABEL_39:

        goto LABEL_40;
      }

      v50 = REExtractUserActivity(v37);

      v11 = v71;
      v7 = v77;
      if (!v50 && v4)
      {
        v27 = 0;
        v9 = v72;
        goto LABEL_31;
      }

      v27 = v50;

      v28 = v27;
      v9 = v72;
    }

    else if (!v11)
    {
      goto LABEL_32;
    }

    v78.receiver = self;
    v78.super_class = REDonatedAction;
    v51 = [(REDonatedAction *)&v78 init];
    if (v51)
    {
      v52 = v9;
      v73 = v37 == 0;
      v76 = v37;
      v53 = [REIdentifier alloc];
      [v6 UUID];
      v55 = v54 = v28;
      v56 = [v55 UUIDString];
      v57 = [(REIdentifier *)v53 initWithDataSource:v52 section:&stru_283B97458 identifier:v56];
      donationIdentifier = v51->_donationIdentifier;
      v51->_donationIdentifier = v57;

      v28 = v54;
      v51->_type = 2;
      v59 = [v6 startDate];
      creationDate = v51->_creationDate;
      v51->_creationDate = v59;

      v61 = [v6 localCreationDate];
      localSaveDate = v51->_localSaveDate;
      v51->_localSaveDate = v61;

      objc_storeStrong(&v51->_actionTypeIdentifier, v27);
      objc_storeStrong(&v51->_simplifiedActionTypeIdentifier, v54);
      v63 = [v7 relevanceProviders];
      v51->_relevanceProvidersHash = [(REDonatedAction *)v51 _hashRelevanceProviders:v63];

      v64 = [v6 source];
      v65 = [v64 deviceID];
      v51->_localDonation = v65 == 0;

      v51->_isIntentBacked = v73;
      v9 = v52;
      v66 = [v7 relevanceProviders];
      v67 = RERelevanceProviderForRelevanceProviders(v66, v52);
      relevanceProviders = v51->_relevanceProviders;
      v51->_relevanceProviders = v67;

      v51->_filteredShortcutType = 0;
      if (v11)
      {
        [(REDonatedAction *)v51 _loadShortcutIdentifiersFromIntent:v11];
        v37 = v76;
      }

      else
      {
        v37 = v76;
        [(REDonatedAction *)v51 _loadShortcutIdentifiersFromUserActivity:v76];
      }
    }

    self = v51;
    v26 = self;
    goto LABEL_39;
  }

  v26 = 0;
LABEL_41:

  return v26;
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

- (void)_loadShortcutIdentifiersFromIntent:(id)a3
{
  self->_filteredShortcutType = 1;
  v4 = a3;
  v5 = [(REDonatedAction *)self _shortcutFilter];
  v16 = [v5 intentByFilteringIntent:v4 withLevel:1];

  v6 = [(REDonatedAction *)self _shortcutFilter];
  v7 = [v6 intentByFilteringIntent:v4 withLevel:0];

  v8 = [(REDonatedAction *)self _shortcutFilter];
  v9 = [(REDonatedAction *)self bundleIdentifier];
  v10 = [v8 identifierForIntent:v16 bundleIdentifier:v9];
  appLevelIdentifier = self->_appLevelIdentifier;
  self->_appLevelIdentifier = v10;

  v12 = [(REDonatedAction *)self _shortcutFilter];
  v13 = [(REDonatedAction *)self bundleIdentifier];
  v14 = [v12 identifierForIntent:v7 bundleIdentifier:v13];
  eventLevelIdentifier = self->_eventLevelIdentifier;
  self->_eventLevelIdentifier = v14;
}

- (void)_loadShortcutIdentifiersFromUserActivity:(id)a3
{
  self->_filteredShortcutType = 1;
  v4 = a3;
  v5 = [(REDonatedAction *)self _shortcutFilter];
  v16 = [v5 userActivityByFilteringUserActivity:v4 withLevel:1];

  v6 = [(REDonatedAction *)self _shortcutFilter];
  v7 = [v6 userActivityByFilteringUserActivity:v4 withLevel:0];

  v8 = [(REDonatedAction *)self _shortcutFilter];
  v9 = [(REDonatedAction *)self bundleIdentifier];
  v10 = [v8 identifierForUserActivity:v16 bundleIdentifier:v9];
  appLevelIdentifier = self->_appLevelIdentifier;
  self->_appLevelIdentifier = v10;

  v12 = [(REDonatedAction *)self _shortcutFilter];
  v13 = [(REDonatedAction *)self bundleIdentifier];
  v14 = [v12 identifierForUserActivity:v7 bundleIdentifier:v13];
  eventLevelIdentifier = self->_eventLevelIdentifier;
  self->_eventLevelIdentifier = v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(REDonatedAction *)self type];
  if (v5 > 2)
  {
    v6 = &stru_283B97458;
  }

  else
  {
    v6 = *(&off_2785FD698 + v5);
  }

  v7 = [(REDonatedAction *)self bundleIdentifier];
  v8 = [(REDonatedAction *)self identifier];
  v9 = [v3 stringWithFormat:@"<%@: %p> %@ %@ %@", v4, self, v6, v7, v8];

  return v9;
}

- (unint64_t)_hashRelevanceProviders:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v6 ^= [*(*(&v11 + 1) + 8 * i) hash];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(REDonatedAction *)self isLocalDonation];
  v4 = [(REDonatedAction *)self bundleIdentifier];
  v5 = v4;
  if (v3)
  {
    v6 = RERemoteApplicationIdentifierForLocalApplication(v4);

    v5 = v6;
  }

  return v5;
}

- (NSString)localBundleIdentifier
{
  v3 = [(REDonatedAction *)self isLocalDonation];
  v4 = [(REDonatedAction *)self bundleIdentifier];
  v5 = v4;
  if (!v3)
  {
    v6 = RELocalApplicationIdentifierForRemoteApplication(v4);

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
  v3 = [v2 re_actionIdentifierHashValue];

  return v3;
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
  v4 = [(REDonatedAction *)self event];
  v5 = [v4 relevantShortcut];

  v6 = [v5 shortcut];
  v7 = [v6 intent];

  v8 = [v5 shortcut];
  v9 = [v8 userActivity];

  v10 = @"none";
  v11 = v10;
  if (v7)
  {
    v12 = [v5 watchTemplate];

    v13 = REShortcutTypeIntent;
    if (v12)
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
    if (v9)
    {
      v19 = [v5 watchTemplate];

      v20 = REShortcutTypeActivity;
      if (v19)
      {
        v20 = REShortcutTypeActivityWithTemplate;
      }

      v18 = *v20;
    }

    v56 = v18;
    [v3 setObject:v18 forKey:@"shortcutType"];
  }

  v21 = v11;
  v22 = [v5 watchTemplate];

  v57 = v9;
  if (v22)
  {
    v23 = [v5 watchTemplate];
    v24 = [v23 image];

    v25 = v21;
    if (!v24)
    {
      goto LABEL_20;
    }

    v26 = RESourceTemplate;
  }

  else
  {
    v27 = [v7 keyImage];

    if (v27)
    {
      v26 = RESourceIntent;
    }

    else
    {
      v28 = [v5 shortcut];
      v29 = [v28 activityImage];

      v25 = v21;
      if (!v29)
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
  v31 = [v5 watchTemplate];

  v58 = v7;
  if (v31)
  {
    v32 = [v5 watchTemplate];
    v33 = [v32 subtitle];

    if (v33)
    {
      v34 = RESourceTemplate;
LABEL_27:
      v38 = *v34;

      v30 = v38;
    }
  }

  else
  {
    v35 = [v7 _subtitle];

    if (v35)
    {
      v34 = RESourceIntent;
      goto LABEL_27;
    }

    v36 = [v5 shortcut];
    v37 = [v36 activitySubtitle];

    if (v37)
    {
      v34 = RESourceActivity;
      goto LABEL_27;
    }
  }

  v59 = v3;
  [v3 setObject:v30 forKey:@"subtitleSource"];
  v39 = [v5 relevanceProviders];
  v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v39, "count")}];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v41 = v39;
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

          v52 = [v46 situation];
          if (v52 > 4)
          {
            if (v52 <= 6)
            {
              v48 = @"routineGym";
              if (v52 != 5)
              {
                v48 = @"routineCommute";
              }
            }

            else if (v52 == 7)
            {
              v48 = @"routineHeadphones";
            }

            else
            {
              v48 = @"routineWorkout";
              if (v52 != 8)
              {
                v48 = @"routineActivity";
                if (v52 != 9)
                {
                  goto LABEL_37;
                }
              }
            }
          }

          else if (v52 <= 1)
          {
            v48 = @"routineMorning";
            if (v52)
            {
              v48 = @"routineEvening";
              if (v52 != 1)
              {
                goto LABEL_37;
              }
            }
          }

          else
          {
            v48 = @"routineHome";
            if (v52 != 2)
            {
              v48 = @"routineWork";
              if (v52 != 3)
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

- (REDonatedAction)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = REDonatedAction;
  v5 = [(REDonatedAction *)&v29 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v8 = [[REIdentifier alloc] initWithDataSource:v6 section:&stru_283B97458 identifier:v7];
    donationIdentifier = v5->_donationIdentifier;
    v5->_donationIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localSaveDate"];
    localSaveDate = v5->_localSaveDate;
    v5->_localSaveDate = v12;

    v5->_localDonation = [v4 decodeBoolForKey:@"localDonation"];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"actionTypeIdentifier"];
    actionTypeIdentifier = v5->_actionTypeIdentifier;
    v5->_actionTypeIdentifier = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"simplifiedActionTypeIdentifier"];
    simplifiedActionTypeIdentifier = v5->_simplifiedActionTypeIdentifier;
    v5->_simplifiedActionTypeIdentifier = v22;

    v5->_isIntentBacked = [v4 decodeBoolForKey:@"isIntentBacked"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventLevelIdentifier"];
    eventLevelIdentifier = v5->_eventLevelIdentifier;
    v5->_eventLevelIdentifier = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appLevelIdentifier"];
    appLevelIdentifier = v5->_appLevelIdentifier;
    v5->_appLevelIdentifier = v26;

    v5->_filteredShortcutType = [v4 decodeIntegerForKey:@"filteredShortcutType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v7 = a3;
  [v7 encodeInteger:type forKey:@"type"];
  v5 = [(REDonatedAction *)self bundleIdentifier];
  [v7 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(REDonatedAction *)self identifier];
  [v7 encodeObject:v6 forKey:@"identifier"];

  [v7 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v7 encodeObject:self->_localSaveDate forKey:@"localSaveDate"];
  [v7 encodeBool:self->_localDonation forKey:@"localDonation"];
  [v7 encodeObject:self->_actionTypeIdentifier forKey:@"actionTypeIdentifier"];
  [v7 encodeObject:self->_simplifiedActionTypeIdentifier forKey:@"simplifiedActionTypeIdentifier"];
  [v7 encodeBool:self->_isIntentBacked forKey:@"isIntentBacked"];
  [v7 encodeObject:self->_eventLevelIdentifier forKey:@"eventLevelIdentifier"];
  [v7 encodeObject:self->_appLevelIdentifier forKey:@"appLevelIdentifier"];
  [v7 encodeInteger:self->_filteredShortcutType forKey:@"filteredShortcutType"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)_loadDuetEvent:(id)a3
{
  v4 = a3;
  if (_loadDuetEvent__onceToken != -1)
  {
    [REDonatedAction(LoadSiriAction) _loadDuetEvent:];
  }

  v5 = [_loadDuetEvent__QueuePool nextAvailableQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__REDonatedAction_LoadSiriAction___loadDuetEvent___block_invoke_2;
  block[3] = &unk_2785F99C8;
  block[4] = self;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
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

- (void)loadUserActivity:(id)a3
{
  v4 = a3;
  if (v4)
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
      (*(v4 + 2))(v4, 0, 0);
      goto LABEL_11;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__REDonatedAction_LoadSiriAction__loadUserActivity___block_invoke;
    v12[3] = &unk_2785FDF80;
    v12[4] = self;
    v13 = v4;
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

- (void)loadIntent:(id)a3
{
  v4 = a3;
  if (v4)
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
      (*(v4 + 2))(v4, 0, 0);
      goto LABEL_11;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__REDonatedAction_LoadSiriAction__loadIntent___block_invoke;
    v12[3] = &unk_2785FDF80;
    v12[4] = self;
    v13 = v4;
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

- (void)loadRelevantShortcut:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (REProcessIsRelevanced())
    {
      RERaiseInternalException(*MEMORY[0x277CBE648], @"%s is not allowed from relevanced!", v5, v6, v7, v8, v9, v10, "[REDonatedAction(LoadSiriAction) loadRelevantShortcut:]");
LABEL_6:
      (*(v4 + 2))(v4, 0, 0);
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
    v12 = v4;
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