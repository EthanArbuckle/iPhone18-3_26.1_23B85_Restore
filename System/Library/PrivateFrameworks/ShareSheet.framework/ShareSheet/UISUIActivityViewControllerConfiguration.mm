@interface UISUIActivityViewControllerConfiguration
- (CGSize)iconSize;
- (NSDirectionalEdgeInsets)hostLayoutMargins;
- (UISUIActivityViewControllerConfiguration)initWithCoder:(id)coder;
- (id)_contextForMatchingActivityItems:(id)items activityItemValues:(id)values activityItemValueClasses:(id)classes;
- (id)availableActivityItemValueClasses;
- (id)contextForMatchingByActivityItemValueClasses;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISUIActivityViewControllerConfiguration

- (UISUIActivityViewControllerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UISUIActivityViewControllerConfiguration *)self init];
  if (v5)
  {
    v6 = share_sheet_log();
    v7 = share_sheet_log();
    v8 = os_signpost_id_make_with_pointer(v7, v5);

    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "UISUIAVCConfigurationDecode", &unk_18B437ED2, buf, 2u);
    }

    v9 = NSStringFromSelector(sel_preferredWidth);
    [coderCopy decodeDoubleForKey:v9];
    [(UISUIActivityViewControllerConfiguration *)v5 setPreferredWidth:?];

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = NSStringFromSelector(sel_hostActivityConfigurations);
    v14 = [coderCopy decodeObjectOfClasses:v12 forKey:v13];
    [(UISUIActivityViewControllerConfiguration *)v5 setHostActivityConfigurations:v14];

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = NSStringFromSelector(sel_hostHiddenActivityConfigurations);
    v19 = [coderCopy decodeObjectOfClasses:v17 forKey:v18];
    [(UISUIActivityViewControllerConfiguration *)v5 setHostHiddenActivityConfigurations:v19];

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = NSStringFromSelector(sel_activityTypesToCreateInShareService);
    v24 = [coderCopy decodeObjectOfClasses:v22 forKey:v23];
    [(UISUIActivityViewControllerConfiguration *)v5 setActivityTypesToCreateInShareService:v24];

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = NSStringFromSelector(sel_activityItemValueClassNames);
    v29 = [coderCopy decodeObjectOfClasses:v27 forKey:v28];
    [(UISUIActivityViewControllerConfiguration *)v5 setActivityItemValueClassNames:v29];

    v30 = _UISecureStandardPropertyListClasses();
    v31 = NSStringFromSelector(sel_activityItemValueExtensionMatchingDictionaries);
    v32 = [coderCopy decodeObjectOfClasses:v30 forKey:v31];
    [(UISUIActivityViewControllerConfiguration *)v5 setActivityItemValueExtensionMatchingDictionaries:v32];

    v33 = objc_opt_class();
    v34 = NSStringFromSelector(sel_securityScopedURLsForMatching);
    v35 = [coderCopy decodeObjectOfClass:v33 forKey:v34];
    [(UISUIActivityViewControllerConfiguration *)v5 setSecurityScopedURLsForMatching:v35];

    v36 = NSStringFromSelector(sel_allowsEmbedding);
    -[UISUIActivityViewControllerConfiguration setAllowsEmbedding:](v5, "setAllowsEmbedding:", [coderCopy decodeBoolForKey:v36]);

    v37 = NSStringFromSelector(sel_isContentManaged);
    -[UISUIActivityViewControllerConfiguration setIsContentManaged:](v5, "setIsContentManaged:", [coderCopy decodeBoolForKey:v37]);

    v38 = NSStringFromSelector(sel_shouldMatchOnlyUserElectedExtensions);
    -[UISUIActivityViewControllerConfiguration setShouldMatchOnlyUserElectedExtensions:](v5, "setShouldMatchOnlyUserElectedExtensions:", [coderCopy decodeBoolForKey:v38]);

    v39 = NSStringFromSelector(sel_shouldExcludeiCloudAddToDriveActivity);
    -[UISUIActivityViewControllerConfiguration setShouldExcludeiCloudAddToDriveActivity:](v5, "setShouldExcludeiCloudAddToDriveActivity:", [coderCopy decodeBoolForKey:v39]);

    v40 = NSStringFromSelector(sel_shouldExcludeiCloudSharingActivity);
    -[UISUIActivityViewControllerConfiguration setShouldExcludeiCloudSharingActivity:](v5, "setShouldExcludeiCloudSharingActivity:", [coderCopy decodeBoolForKey:v40]);

    v41 = NSStringFromSelector(sel_shouldSkipPeopleSuggestions);
    -[UISUIActivityViewControllerConfiguration setShouldSkipPeopleSuggestions:](v5, "setShouldSkipPeopleSuggestions:", [coderCopy decodeBoolForKey:v41]);

    v42 = NSStringFromSelector(sel_canExcludeExtensionActivities);
    -[UISUIActivityViewControllerConfiguration setCanExcludeExtensionActivities:](v5, "setCanExcludeExtensionActivities:", [coderCopy decodeBoolForKey:v42]);

    v43 = NSStringFromSelector(sel_canShowShareSheetPlugIns);
    -[UISUIActivityViewControllerConfiguration setCanShowShareSheetPlugIns:](v5, "setCanShowShareSheetPlugIns:", [coderCopy decodeBoolForKey:v43]);

    v44 = NSStringFromSelector(sel_whitelistActionActivitiesOnly);
    -[UISUIActivityViewControllerConfiguration setWhitelistActionActivitiesOnly:](v5, "setWhitelistActionActivitiesOnly:", [coderCopy decodeBoolForKey:v44]);

    v45 = NSStringFromSelector(sel_linkedBeforeYukon);
    -[UISUIActivityViewControllerConfiguration setLinkedBeforeYukon:](v5, "setLinkedBeforeYukon:", [coderCopy decodeBoolForKey:v45]);

    v46 = NSStringFromSelector(sel_numberOfVisibleSharingActivities);
    -[UISUIActivityViewControllerConfiguration setNumberOfVisibleSharingActivities:](v5, "setNumberOfVisibleSharingActivities:", [coderCopy decodeIntegerForKey:v46]);

    v47 = NSStringFromSelector(sel_numberOfVisibleActionActivities);
    -[UISUIActivityViewControllerConfiguration setNumberOfVisibleActionActivities:](v5, "setNumberOfVisibleActionActivities:", [coderCopy decodeIntegerForKey:v47]);

    v48 = NSStringFromSelector(sel_hostIdiom);
    -[UISUIActivityViewControllerConfiguration setHostIdiom:](v5, "setHostIdiom:", [coderCopy decodeIntegerForKey:v48]);

    v49 = NSStringFromSelector(sel_requestPeopleSuggestionsData);
    -[UISUIActivityViewControllerConfiguration setRequestPeopleSuggestionsData:](v5, "setRequestPeopleSuggestionsData:", [coderCopy decodeBoolForKey:v49]);

    v50 = NSStringFromSelector(sel_useSlotsForPeopleSuggestions);
    -[UISUIActivityViewControllerConfiguration setUseSlotsForPeopleSuggestions:](v5, "setUseSlotsForPeopleSuggestions:", [coderCopy decodeBoolForKey:v50]);

    v51 = MEMORY[0x1E695DFD8];
    v52 = objc_opt_class();
    v53 = [v51 setWithObjects:{v52, objc_opt_class(), 0}];
    v54 = NSStringFromSelector(sel_includedActivityTypes);
    v55 = [coderCopy decodeObjectOfClasses:v53 forKey:v54];
    [(UISUIActivityViewControllerConfiguration *)v5 setIncludedActivityTypes:v55];

    v56 = MEMORY[0x1E695DFD8];
    v57 = objc_opt_class();
    v58 = [v56 setWithObjects:{v57, objc_opt_class(), 0}];
    v59 = NSStringFromSelector(sel_excludedActivityTypes);
    v60 = [coderCopy decodeObjectOfClasses:v58 forKey:v59];
    [(UISUIActivityViewControllerConfiguration *)v5 setExcludedActivityTypes:v60];

    v61 = MEMORY[0x1E695DFD8];
    v62 = objc_opt_class();
    v63 = [v61 setWithObjects:{v62, objc_opt_class(), 0}];
    v64 = NSStringFromSelector(sel_activityTypeOrder);
    v65 = [coderCopy decodeObjectOfClasses:v63 forKey:v64];
    [(UISUIActivityViewControllerConfiguration *)v5 setActivityTypeOrder:v65];

    v66 = NSStringFromSelector(sel_excludedActivityCategories);
    -[UISUIActivityViewControllerConfiguration setExcludedActivityCategories:](v5, "setExcludedActivityCategories:", [coderCopy decodeIntegerForKey:v66]);

    v67 = NSStringFromSelector(sel_sharingStyle);
    -[UISUIActivityViewControllerConfiguration setSharingStyle:](v5, "setSharingStyle:", [coderCopy decodeIntegerForKey:v67]);

    v68 = NSStringFromSelector(sel__unitTest_disableExcludingSourceApplicationFromOpenActivities);
    v5->__unitTest_disableExcludingSourceApplicationFromOpenActivities = [coderCopy decodeBoolForKey:v68];

    v69 = MEMORY[0x1E695DFD8];
    v70 = objc_opt_class();
    v71 = [v69 setWithObjects:{v70, objc_opt_class(), 0}];
    v72 = NSStringFromSelector(sel_urlsBeingShared);
    v73 = [coderCopy decodeObjectOfClasses:v71 forKey:v72];
    [(UISUIActivityViewControllerConfiguration *)v5 setUrlsBeingShared:v73];

    v74 = MEMORY[0x1E695DFD8];
    v75 = objc_opt_class();
    v76 = [v74 setWithObjects:{v75, objc_opt_class(), 0}];
    v77 = NSStringFromSelector(sel_linkPresentationDataForActivityItems);
    v78 = [coderCopy decodeObjectOfClasses:v76 forKey:v77];
    [(UISUIActivityViewControllerConfiguration *)v5 setLinkPresentationDataForActivityItems:v78];

    v79 = objc_opt_class();
    v80 = NSStringFromSelector(sel_hostTintColor);
    v81 = [coderCopy decodeObjectOfClass:v79 forKey:v80];
    [(UISUIActivityViewControllerConfiguration *)v5 setHostTintColor:v81];

    v82 = MEMORY[0x1E695DFD8];
    v83 = objc_opt_class();
    v84 = [v82 setWithObjects:{v83, objc_opt_class(), 0}];
    v85 = NSStringFromSelector(sel_initialPhotosAssetDetails);
    v86 = [coderCopy decodeObjectOfClasses:v84 forKey:v85];
    [(UISUIActivityViewControllerConfiguration *)v5 setInitialPhotosAssetDetails:v86];

    v87 = objc_opt_class();
    v88 = NSStringFromSelector(sel_sessionID);
    v89 = [coderCopy decodeObjectOfClass:v87 forKey:v88];
    [(UISUIActivityViewControllerConfiguration *)v5 setSessionID:v89];

    v90 = objc_opt_class();
    v91 = NSStringFromSelector(sel_hostTraitCollection);
    v92 = [coderCopy decodeObjectOfClass:v90 forKey:v91];
    [(UISUIActivityViewControllerConfiguration *)v5 setHostTraitCollection:v92];

    v93 = objc_opt_class();
    v94 = NSStringFromSelector(sel_hostLocale);
    v95 = [coderCopy decodeObjectOfClass:v93 forKey:v94];
    [(UISUIActivityViewControllerConfiguration *)v5 setHostLocale:v95];

    v96 = objc_opt_class();
    v97 = NSStringFromSelector(sel_hostLayoutMargins);
    v98 = [coderCopy decodeObjectOfClass:v96 forKey:v97];
    v135 = NSDirectionalEdgeInsetsFromString(v98);
    [(UISUIActivityViewControllerConfiguration *)v5 setHostLayoutMargins:v135.top, v135.leading, v135.bottom, v135.trailing];

    v99 = MEMORY[0x1E695DFD8];
    v100 = objc_opt_class();
    v101 = [v99 setWithObjects:{v100, objc_opt_class(), 0}];
    v102 = NSStringFromSelector(sel_typeIdentifiersForShortcutsMatching);
    v103 = [coderCopy decodeObjectOfClasses:v101 forKey:v102];
    [(UISUIActivityViewControllerConfiguration *)v5 setTypeIdentifiersForShortcutsMatching:v103];

    v104 = MEMORY[0x1E695DFD8];
    v105 = objc_opt_class();
    v106 = [v104 setWithObjects:{v105, objc_opt_class(), 0}];
    v107 = NSStringFromSelector(sel_preferredLocalizations);
    v108 = [coderCopy decodeObjectOfClasses:v106 forKey:v107];
    [(UISUIActivityViewControllerConfiguration *)v5 setPreferredLocalizations:v108];

    v109 = NSStringFromSelector(sel_iconSize);
    [coderCopy decodeCGSizeForKey:v109];
    [(UISUIActivityViewControllerConfiguration *)v5 setIconSize:?];

    v110 = NSStringFromSelector(sel_iconScale);
    [coderCopy decodeDoubleForKey:v110];
    [(UISUIActivityViewControllerConfiguration *)v5 setIconScale:?];

    v111 = NSStringFromSelector(sel_isCollaborative);
    -[UISUIActivityViewControllerConfiguration setIsCollaborative:](v5, "setIsCollaborative:", [coderCopy decodeBoolForKey:v111]);

    v112 = objc_opt_class();
    v113 = NSStringFromSelector(sel_collaborationType);
    v114 = [coderCopy decodeObjectOfClass:v112 forKey:v113];
    [(UISUIActivityViewControllerConfiguration *)v5 setCollaborationType:v114];

    v115 = objc_opt_class();
    v116 = NSStringFromSelector(sel_collaborationIsPostShare);
    v117 = [coderCopy decodeObjectOfClass:v115 forKey:v116];
    [(UISUIActivityViewControllerConfiguration *)v5 setCollaborationIsPostShare:v117];

    v118 = MEMORY[0x1E695DFD8];
    v119 = objc_opt_class();
    v120 = [v118 setWithObjects:{v119, objc_opt_class(), 0}];
    v121 = NSStringFromSelector(sel_recipients);
    v122 = [coderCopy decodeObjectOfClasses:v120 forKey:v121];
    [(UISUIActivityViewControllerConfiguration *)v5 setRecipients:v122];

    v123 = objc_opt_class();
    v124 = NSStringFromSelector(sel_testingSnapshot);
    v125 = [coderCopy decodeObjectOfClass:v123 forKey:v124];
    [(UISUIActivityViewControllerConfiguration *)v5 setTestingSnapshot:v125];

    v126 = objc_opt_class();
    v127 = NSStringFromSelector(sel_testingReferenceSnapshot);
    v128 = [coderCopy decodeObjectOfClass:v126 forKey:v127];
    [(UISUIActivityViewControllerConfiguration *)v5 setTestingReferenceSnapshot:v128];

    v129 = share_sheet_log();
    v130 = share_sheet_log();
    v131 = os_signpost_id_make_with_pointer(v130, v5);

    if (v131 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v129))
    {
      *v133 = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v129, OS_SIGNPOST_INTERVAL_END, v131, "UISUIAVCConfigurationDecode", &unk_18B437ED2, v133, 2u);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(UISUIActivityViewControllerConfiguration *)self preferredWidth];
  v5 = v4;
  v6 = NSStringFromSelector(sel_preferredWidth);
  [coderCopy encodeDouble:v6 forKey:v5];

  hostActivityConfigurations = [(UISUIActivityViewControllerConfiguration *)self hostActivityConfigurations];
  v8 = NSStringFromSelector(sel_hostActivityConfigurations);
  [coderCopy encodeObject:hostActivityConfigurations forKey:v8];

  hostHiddenActivityConfigurations = [(UISUIActivityViewControllerConfiguration *)self hostHiddenActivityConfigurations];
  v10 = NSStringFromSelector(sel_hostHiddenActivityConfigurations);
  [coderCopy encodeObject:hostHiddenActivityConfigurations forKey:v10];

  activityTypesToCreateInShareService = [(UISUIActivityViewControllerConfiguration *)self activityTypesToCreateInShareService];
  v12 = NSStringFromSelector(sel_activityTypesToCreateInShareService);
  [coderCopy encodeObject:activityTypesToCreateInShareService forKey:v12];

  activityItemValueClassNames = [(UISUIActivityViewControllerConfiguration *)self activityItemValueClassNames];
  v14 = NSStringFromSelector(sel_activityItemValueClassNames);
  [coderCopy encodeObject:activityItemValueClassNames forKey:v14];

  activityItemValueExtensionMatchingDictionaries = [(UISUIActivityViewControllerConfiguration *)self activityItemValueExtensionMatchingDictionaries];
  v16 = NSStringFromSelector(sel_activityItemValueExtensionMatchingDictionaries);
  [coderCopy encodeObject:activityItemValueExtensionMatchingDictionaries forKey:v16];

  securityScopedURLsForMatching = [(UISUIActivityViewControllerConfiguration *)self securityScopedURLsForMatching];
  v18 = NSStringFromSelector(sel_securityScopedURLsForMatching);
  [coderCopy encodeObject:securityScopedURLsForMatching forKey:v18];

  allowsEmbedding = [(UISUIActivityViewControllerConfiguration *)self allowsEmbedding];
  v20 = NSStringFromSelector(sel_allowsEmbedding);
  [coderCopy encodeBool:allowsEmbedding forKey:v20];

  isContentManaged = [(UISUIActivityViewControllerConfiguration *)self isContentManaged];
  v22 = NSStringFromSelector(sel_isContentManaged);
  [coderCopy encodeBool:isContentManaged forKey:v22];

  shouldMatchOnlyUserElectedExtensions = [(UISUIActivityViewControllerConfiguration *)self shouldMatchOnlyUserElectedExtensions];
  v24 = NSStringFromSelector(sel_shouldMatchOnlyUserElectedExtensions);
  [coderCopy encodeBool:shouldMatchOnlyUserElectedExtensions forKey:v24];

  shouldExcludeiCloudAddToDriveActivity = [(UISUIActivityViewControllerConfiguration *)self shouldExcludeiCloudAddToDriveActivity];
  v26 = NSStringFromSelector(sel_shouldExcludeiCloudAddToDriveActivity);
  [coderCopy encodeBool:shouldExcludeiCloudAddToDriveActivity forKey:v26];

  shouldExcludeiCloudSharingActivity = [(UISUIActivityViewControllerConfiguration *)self shouldExcludeiCloudSharingActivity];
  v28 = NSStringFromSelector(sel_shouldExcludeiCloudSharingActivity);
  [coderCopy encodeBool:shouldExcludeiCloudSharingActivity forKey:v28];

  shouldSkipPeopleSuggestions = [(UISUIActivityViewControllerConfiguration *)self shouldSkipPeopleSuggestions];
  v30 = NSStringFromSelector(sel_shouldSkipPeopleSuggestions);
  [coderCopy encodeBool:shouldSkipPeopleSuggestions forKey:v30];

  canExcludeExtensionActivities = [(UISUIActivityViewControllerConfiguration *)self canExcludeExtensionActivities];
  v32 = NSStringFromSelector(sel_canExcludeExtensionActivities);
  [coderCopy encodeBool:canExcludeExtensionActivities forKey:v32];

  canShowShareSheetPlugIns = [(UISUIActivityViewControllerConfiguration *)self canShowShareSheetPlugIns];
  v34 = NSStringFromSelector(sel_canShowShareSheetPlugIns);
  [coderCopy encodeBool:canShowShareSheetPlugIns forKey:v34];

  whitelistActionActivitiesOnly = [(UISUIActivityViewControllerConfiguration *)self whitelistActionActivitiesOnly];
  v36 = NSStringFromSelector(sel_whitelistActionActivitiesOnly);
  [coderCopy encodeBool:whitelistActionActivitiesOnly forKey:v36];

  linkedBeforeYukon = [(UISUIActivityViewControllerConfiguration *)self linkedBeforeYukon];
  v38 = NSStringFromSelector(sel_linkedBeforeYukon);
  [coderCopy encodeBool:linkedBeforeYukon forKey:v38];

  numberOfVisibleSharingActivities = [(UISUIActivityViewControllerConfiguration *)self numberOfVisibleSharingActivities];
  v40 = NSStringFromSelector(sel_numberOfVisibleSharingActivities);
  [coderCopy encodeInteger:numberOfVisibleSharingActivities forKey:v40];

  numberOfVisibleActionActivities = [(UISUIActivityViewControllerConfiguration *)self numberOfVisibleActionActivities];
  v42 = NSStringFromSelector(sel_numberOfVisibleActionActivities);
  [coderCopy encodeInteger:numberOfVisibleActionActivities forKey:v42];

  hostIdiom = [(UISUIActivityViewControllerConfiguration *)self hostIdiom];
  v44 = NSStringFromSelector(sel_hostIdiom);
  [coderCopy encodeInteger:hostIdiom forKey:v44];

  requestPeopleSuggestionsData = [(UISUIActivityViewControllerConfiguration *)self requestPeopleSuggestionsData];
  v46 = NSStringFromSelector(sel_requestPeopleSuggestionsData);
  [coderCopy encodeBool:requestPeopleSuggestionsData forKey:v46];

  useSlotsForPeopleSuggestions = [(UISUIActivityViewControllerConfiguration *)self useSlotsForPeopleSuggestions];
  v48 = NSStringFromSelector(sel_useSlotsForPeopleSuggestions);
  [coderCopy encodeBool:useSlotsForPeopleSuggestions forKey:v48];

  includedActivityTypes = [(UISUIActivityViewControllerConfiguration *)self includedActivityTypes];
  v50 = NSStringFromSelector(sel_includedActivityTypes);
  [coderCopy encodeObject:includedActivityTypes forKey:v50];

  excludedActivityTypes = [(UISUIActivityViewControllerConfiguration *)self excludedActivityTypes];
  v52 = NSStringFromSelector(sel_excludedActivityTypes);
  [coderCopy encodeObject:excludedActivityTypes forKey:v52];

  activityTypeOrder = [(UISUIActivityViewControllerConfiguration *)self activityTypeOrder];
  v54 = NSStringFromSelector(sel_activityTypeOrder);
  [coderCopy encodeObject:activityTypeOrder forKey:v54];

  excludedActivityCategories = [(UISUIActivityViewControllerConfiguration *)self excludedActivityCategories];
  v56 = NSStringFromSelector(sel_excludedActivityCategories);
  [coderCopy encodeInteger:excludedActivityCategories forKey:v56];

  sharingStyle = [(UISUIActivityViewControllerConfiguration *)self sharingStyle];
  v58 = NSStringFromSelector(sel_sharingStyle);
  [coderCopy encodeInteger:sharingStyle forKey:v58];

  linkPresentationDataForActivityItems = [(UISUIActivityViewControllerConfiguration *)self linkPresentationDataForActivityItems];
  v60 = NSStringFromSelector(sel_linkPresentationDataForActivityItems);
  [coderCopy encodeObject:linkPresentationDataForActivityItems forKey:v60];

  if (_isUnitTesting_onceToken != -1)
  {
    [UISUIActivityViewControllerConfiguration encodeWithCoder:];
  }

  if (_isUnitTesting_isUnitTesting == 1)
  {
    v61 = _unitTest_disableExcludingSourceApplicationFromOpenActivities_defaultValue;
    v62 = NSStringFromSelector(sel__unitTest_disableExcludingSourceApplicationFromOpenActivities);
    [coderCopy encodeBool:v61 forKey:v62];
  }

  urlsBeingShared = [(UISUIActivityViewControllerConfiguration *)self urlsBeingShared];
  v64 = NSStringFromSelector(sel_urlsBeingShared);
  [coderCopy encodeObject:urlsBeingShared forKey:v64];

  hostTintColor = [(UISUIActivityViewControllerConfiguration *)self hostTintColor];
  v66 = NSStringFromSelector(sel_hostTintColor);
  [coderCopy encodeObject:hostTintColor forKey:v66];

  initialPhotosAssetDetails = [(UISUIActivityViewControllerConfiguration *)self initialPhotosAssetDetails];
  v68 = NSStringFromSelector(sel_initialPhotosAssetDetails);
  [coderCopy encodeObject:initialPhotosAssetDetails forKey:v68];

  sessionID = [(UISUIActivityViewControllerConfiguration *)self sessionID];
  v70 = NSStringFromSelector(sel_sessionID);
  [coderCopy encodeObject:sessionID forKey:v70];

  hostTraitCollection = [(UISUIActivityViewControllerConfiguration *)self hostTraitCollection];
  v72 = NSStringFromSelector(sel_hostTraitCollection);
  [coderCopy encodeObject:hostTraitCollection forKey:v72];

  hostLocale = [(UISUIActivityViewControllerConfiguration *)self hostLocale];
  v74 = NSStringFromSelector(sel_hostLocale);
  [coderCopy encodeObject:hostLocale forKey:v74];

  [(UISUIActivityViewControllerConfiguration *)self hostLayoutMargins];
  v75 = NSStringFromDirectionalEdgeInsets(v103);
  v76 = NSStringFromSelector(sel_hostLayoutMargins);
  [coderCopy encodeObject:v75 forKey:v76];

  typeIdentifiersForShortcutsMatching = [(UISUIActivityViewControllerConfiguration *)self typeIdentifiersForShortcutsMatching];
  v78 = NSStringFromSelector(sel_typeIdentifiersForShortcutsMatching);
  [coderCopy encodeObject:typeIdentifiersForShortcutsMatching forKey:v78];

  preferredLocalizations = [(UISUIActivityViewControllerConfiguration *)self preferredLocalizations];
  v80 = NSStringFromSelector(sel_preferredLocalizations);
  [coderCopy encodeObject:preferredLocalizations forKey:v80];

  [(UISUIActivityViewControllerConfiguration *)self iconSize];
  v82 = v81;
  v84 = v83;
  v85 = NSStringFromSelector(sel_iconSize);
  [coderCopy encodeCGSize:v85 forKey:{v82, v84}];

  [(UISUIActivityViewControllerConfiguration *)self iconScale];
  v87 = v86;
  v88 = NSStringFromSelector(sel_iconScale);
  [coderCopy encodeDouble:v88 forKey:v87];

  isCollaborative = [(UISUIActivityViewControllerConfiguration *)self isCollaborative];
  v90 = NSStringFromSelector(sel_isCollaborative);
  [coderCopy encodeBool:isCollaborative forKey:v90];

  collaborationType = [(UISUIActivityViewControllerConfiguration *)self collaborationType];
  v92 = NSStringFromSelector(sel_collaborationType);
  [coderCopy encodeObject:collaborationType forKey:v92];

  collaborationIsPostShare = [(UISUIActivityViewControllerConfiguration *)self collaborationIsPostShare];
  v94 = NSStringFromSelector(sel_collaborationIsPostShare);
  [coderCopy encodeObject:collaborationIsPostShare forKey:v94];

  recipients = [(UISUIActivityViewControllerConfiguration *)self recipients];
  v96 = NSStringFromSelector(sel_recipients);
  [coderCopy encodeObject:recipients forKey:v96];

  testingSnapshot = [(UISUIActivityViewControllerConfiguration *)self testingSnapshot];
  v98 = NSStringFromSelector(sel_testingSnapshot);
  [coderCopy encodeObject:testingSnapshot forKey:v98];

  testingReferenceSnapshot = [(UISUIActivityViewControllerConfiguration *)self testingReferenceSnapshot];
  v100 = NSStringFromSelector(sel_testingReferenceSnapshot);
  [coderCopy encodeObject:testingReferenceSnapshot forKey:v100];
}

- (id)description
{
  v13 = objc_opt_class();
  NSAppendPrintF();
  v18 = 0;
  v14 = [(UISUIActivityViewControllerConfiguration *)self sessionID:v13];
  NSAppendPrintF();
  v3 = v18;

  if ([(UISUIActivityViewControllerConfiguration *)self isContentManaged])
  {
    NSAppendPrintF();
    v4 = v3;

    v3 = v4;
  }

  includedActivityTypes = [(UISUIActivityViewControllerConfiguration *)self includedActivityTypes];
  v6 = [includedActivityTypes count];

  if (v6)
  {
    includedActivityTypes2 = [(UISUIActivityViewControllerConfiguration *)self includedActivityTypes];
    NSAppendPrintF();
    v7 = v3;

    v3 = v7;
  }

  excludedActivityTypes = [(UISUIActivityViewControllerConfiguration *)self excludedActivityTypes];
  v9 = [excludedActivityTypes count];

  if (v9)
  {
    excludedActivityTypes2 = [(UISUIActivityViewControllerConfiguration *)self excludedActivityTypes];
    NSAppendPrintF();
    v10 = v3;

    v3 = v10;
  }

  activityItemValueExtensionMatchingDictionaries = [(UISUIActivityViewControllerConfiguration *)self activityItemValueExtensionMatchingDictionaries];
  NSAppendPrintF();
  v11 = v3;

  return v3;
}

- (id)contextForMatchingByActivityItemValueClasses
{
  availableActivityItemValueClasses = [(UISUIActivityViewControllerConfiguration *)self availableActivityItemValueClasses];
  v4 = [(UISUIActivityViewControllerConfiguration *)self _contextForMatchingActivityItems:0 activityItemValues:0 activityItemValueClasses:availableActivityItemValueClasses];

  return v4;
}

- (id)_contextForMatchingActivityItems:(id)items activityItemValues:(id)values activityItemValueClasses:(id)classes
{
  v36 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  classesCopy = classes;
  itemsCopy = MEMORY[0x1E695E0F0];
  if (items)
  {
    itemsCopy = items;
  }

  v11 = itemsCopy;
  array = [MEMORY[0x1E695DF70] array];
  v13 = array;
  if (valuesCopy)
  {
    [array addObjectsFromArray:valuesCopy];
  }

  else
  {
    securityScopedURLsForMatching = [(UISUIActivityViewControllerConfiguration *)self securityScopedURLsForMatching];

    if (securityScopedURLsForMatching)
    {
      v30 = classesCopy;
      securityScopedURLsForMatching2 = [(UISUIActivityViewControllerConfiguration *)self securityScopedURLsForMatching];
      array2 = [MEMORY[0x1E695DF70] array];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v29 = securityScopedURLsForMatching2;
      securityScopedResources = [securityScopedURLsForMatching2 securityScopedResources];
      v18 = [securityScopedResources countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v32;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(securityScopedResources);
            }

            v22 = [*(*(&v31 + 1) + 8 * i) url];
            [array2 addObject:v22];
          }

          v19 = [securityScopedResources countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v19);
      }

      [v13 addObjectsFromArray:array2];
      classesCopy = v30;
    }
  }

  v23 = [[_UIActivityMatchingContext alloc] initWithActivityItems:v11 itemValues:v13];
  [(_UIActivityMatchingContext *)v23 setActivityItemValueClasses:classesCopy];
  activityItemValueExtensionMatchingDictionaries = [(UISUIActivityViewControllerConfiguration *)self activityItemValueExtensionMatchingDictionaries];
  [(_UIActivityMatchingContext *)v23 setActivityItemValueExtensionMatchingDictionaries:activityItemValueExtensionMatchingDictionaries];

  [(_UIActivityMatchingContext *)v23 setIsContentManaged:[(UISUIActivityViewControllerConfiguration *)self isContentManaged]];
  [(_UIActivityMatchingContext *)v23 setShouldMatchOnlyUserElectedExtensions:[(UISUIActivityViewControllerConfiguration *)self shouldMatchOnlyUserElectedExtensions]];
  [(_UIActivityMatchingContext *)v23 setShouldExcludeiCloudAddToDriveActivity:[(UISUIActivityViewControllerConfiguration *)self shouldExcludeiCloudAddToDriveActivity]];
  [(_UIActivityMatchingContext *)v23 setShouldExcludeiCloudSharingActivity:[(UISUIActivityViewControllerConfiguration *)self shouldExcludeiCloudSharingActivity]];
  [(_UIActivityMatchingContext *)v23 setWhitelistActionActivitiesOnly:[(UISUIActivityViewControllerConfiguration *)self whitelistActionActivitiesOnly]];
  activityTypeOrder = [(UISUIActivityViewControllerConfiguration *)self activityTypeOrder];
  [(_UIActivityMatchingContext *)v23 setActivityTypeOrder:activityTypeOrder];

  includedActivityTypes = [(UISUIActivityViewControllerConfiguration *)self includedActivityTypes];
  [(_UIActivityMatchingContext *)v23 setIncludedActivityTypes:includedActivityTypes];

  excludedActivityTypes = [(UISUIActivityViewControllerConfiguration *)self excludedActivityTypes];
  [(_UIActivityMatchingContext *)v23 setExcludedActivityTypes:excludedActivityTypes];

  [(_UIActivityMatchingContext *)v23 setExcludedActivityCategories:[(UISUIActivityViewControllerConfiguration *)self excludedActivityCategories]];
  [(_UIActivityMatchingContext *)v23 setCanExcludeExtensionActivities:[(UISUIActivityViewControllerConfiguration *)self canExcludeExtensionActivities]];
  [(_UIActivityMatchingContext *)v23 setSharingStyle:[(UISUIActivityViewControllerConfiguration *)self sharingStyle]];

  return v23;
}

- (id)availableActivityItemValueClasses
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  activityItemValueClassNames = [(UISUIActivityViewControllerConfiguration *)self activityItemValueClassNames];
  v5 = [activityItemValueClassNames countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(activityItemValueClassNames);
        }

        v9 = NSClassFromString(*(*(&v11 + 1) + 8 * i));
        if (v9)
        {
          [array addObject:v9];
        }
      }

      v6 = [activityItemValueClassNames countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (NSDirectionalEdgeInsets)hostLayoutMargins
{
  top = self->_hostLayoutMargins.top;
  leading = self->_hostLayoutMargins.leading;
  bottom = self->_hostLayoutMargins.bottom;
  trailing = self->_hostLayoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (CGSize)iconSize
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end