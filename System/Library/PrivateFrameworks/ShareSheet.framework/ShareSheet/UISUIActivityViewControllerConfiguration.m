@interface UISUIActivityViewControllerConfiguration
- (CGSize)iconSize;
- (NSDirectionalEdgeInsets)hostLayoutMargins;
- (UISUIActivityViewControllerConfiguration)initWithCoder:(id)a3;
- (id)_contextForMatchingActivityItems:(id)a3 activityItemValues:(id)a4 activityItemValueClasses:(id)a5;
- (id)availableActivityItemValueClasses;
- (id)contextForMatchingByActivityItemValueClasses;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UISUIActivityViewControllerConfiguration

- (UISUIActivityViewControllerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
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
    [v4 decodeDoubleForKey:v9];
    [(UISUIActivityViewControllerConfiguration *)v5 setPreferredWidth:?];

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = NSStringFromSelector(sel_hostActivityConfigurations);
    v14 = [v4 decodeObjectOfClasses:v12 forKey:v13];
    [(UISUIActivityViewControllerConfiguration *)v5 setHostActivityConfigurations:v14];

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = NSStringFromSelector(sel_hostHiddenActivityConfigurations);
    v19 = [v4 decodeObjectOfClasses:v17 forKey:v18];
    [(UISUIActivityViewControllerConfiguration *)v5 setHostHiddenActivityConfigurations:v19];

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = NSStringFromSelector(sel_activityTypesToCreateInShareService);
    v24 = [v4 decodeObjectOfClasses:v22 forKey:v23];
    [(UISUIActivityViewControllerConfiguration *)v5 setActivityTypesToCreateInShareService:v24];

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = NSStringFromSelector(sel_activityItemValueClassNames);
    v29 = [v4 decodeObjectOfClasses:v27 forKey:v28];
    [(UISUIActivityViewControllerConfiguration *)v5 setActivityItemValueClassNames:v29];

    v30 = _UISecureStandardPropertyListClasses();
    v31 = NSStringFromSelector(sel_activityItemValueExtensionMatchingDictionaries);
    v32 = [v4 decodeObjectOfClasses:v30 forKey:v31];
    [(UISUIActivityViewControllerConfiguration *)v5 setActivityItemValueExtensionMatchingDictionaries:v32];

    v33 = objc_opt_class();
    v34 = NSStringFromSelector(sel_securityScopedURLsForMatching);
    v35 = [v4 decodeObjectOfClass:v33 forKey:v34];
    [(UISUIActivityViewControllerConfiguration *)v5 setSecurityScopedURLsForMatching:v35];

    v36 = NSStringFromSelector(sel_allowsEmbedding);
    -[UISUIActivityViewControllerConfiguration setAllowsEmbedding:](v5, "setAllowsEmbedding:", [v4 decodeBoolForKey:v36]);

    v37 = NSStringFromSelector(sel_isContentManaged);
    -[UISUIActivityViewControllerConfiguration setIsContentManaged:](v5, "setIsContentManaged:", [v4 decodeBoolForKey:v37]);

    v38 = NSStringFromSelector(sel_shouldMatchOnlyUserElectedExtensions);
    -[UISUIActivityViewControllerConfiguration setShouldMatchOnlyUserElectedExtensions:](v5, "setShouldMatchOnlyUserElectedExtensions:", [v4 decodeBoolForKey:v38]);

    v39 = NSStringFromSelector(sel_shouldExcludeiCloudAddToDriveActivity);
    -[UISUIActivityViewControllerConfiguration setShouldExcludeiCloudAddToDriveActivity:](v5, "setShouldExcludeiCloudAddToDriveActivity:", [v4 decodeBoolForKey:v39]);

    v40 = NSStringFromSelector(sel_shouldExcludeiCloudSharingActivity);
    -[UISUIActivityViewControllerConfiguration setShouldExcludeiCloudSharingActivity:](v5, "setShouldExcludeiCloudSharingActivity:", [v4 decodeBoolForKey:v40]);

    v41 = NSStringFromSelector(sel_shouldSkipPeopleSuggestions);
    -[UISUIActivityViewControllerConfiguration setShouldSkipPeopleSuggestions:](v5, "setShouldSkipPeopleSuggestions:", [v4 decodeBoolForKey:v41]);

    v42 = NSStringFromSelector(sel_canExcludeExtensionActivities);
    -[UISUIActivityViewControllerConfiguration setCanExcludeExtensionActivities:](v5, "setCanExcludeExtensionActivities:", [v4 decodeBoolForKey:v42]);

    v43 = NSStringFromSelector(sel_canShowShareSheetPlugIns);
    -[UISUIActivityViewControllerConfiguration setCanShowShareSheetPlugIns:](v5, "setCanShowShareSheetPlugIns:", [v4 decodeBoolForKey:v43]);

    v44 = NSStringFromSelector(sel_whitelistActionActivitiesOnly);
    -[UISUIActivityViewControllerConfiguration setWhitelistActionActivitiesOnly:](v5, "setWhitelistActionActivitiesOnly:", [v4 decodeBoolForKey:v44]);

    v45 = NSStringFromSelector(sel_linkedBeforeYukon);
    -[UISUIActivityViewControllerConfiguration setLinkedBeforeYukon:](v5, "setLinkedBeforeYukon:", [v4 decodeBoolForKey:v45]);

    v46 = NSStringFromSelector(sel_numberOfVisibleSharingActivities);
    -[UISUIActivityViewControllerConfiguration setNumberOfVisibleSharingActivities:](v5, "setNumberOfVisibleSharingActivities:", [v4 decodeIntegerForKey:v46]);

    v47 = NSStringFromSelector(sel_numberOfVisibleActionActivities);
    -[UISUIActivityViewControllerConfiguration setNumberOfVisibleActionActivities:](v5, "setNumberOfVisibleActionActivities:", [v4 decodeIntegerForKey:v47]);

    v48 = NSStringFromSelector(sel_hostIdiom);
    -[UISUIActivityViewControllerConfiguration setHostIdiom:](v5, "setHostIdiom:", [v4 decodeIntegerForKey:v48]);

    v49 = NSStringFromSelector(sel_requestPeopleSuggestionsData);
    -[UISUIActivityViewControllerConfiguration setRequestPeopleSuggestionsData:](v5, "setRequestPeopleSuggestionsData:", [v4 decodeBoolForKey:v49]);

    v50 = NSStringFromSelector(sel_useSlotsForPeopleSuggestions);
    -[UISUIActivityViewControllerConfiguration setUseSlotsForPeopleSuggestions:](v5, "setUseSlotsForPeopleSuggestions:", [v4 decodeBoolForKey:v50]);

    v51 = MEMORY[0x1E695DFD8];
    v52 = objc_opt_class();
    v53 = [v51 setWithObjects:{v52, objc_opt_class(), 0}];
    v54 = NSStringFromSelector(sel_includedActivityTypes);
    v55 = [v4 decodeObjectOfClasses:v53 forKey:v54];
    [(UISUIActivityViewControllerConfiguration *)v5 setIncludedActivityTypes:v55];

    v56 = MEMORY[0x1E695DFD8];
    v57 = objc_opt_class();
    v58 = [v56 setWithObjects:{v57, objc_opt_class(), 0}];
    v59 = NSStringFromSelector(sel_excludedActivityTypes);
    v60 = [v4 decodeObjectOfClasses:v58 forKey:v59];
    [(UISUIActivityViewControllerConfiguration *)v5 setExcludedActivityTypes:v60];

    v61 = MEMORY[0x1E695DFD8];
    v62 = objc_opt_class();
    v63 = [v61 setWithObjects:{v62, objc_opt_class(), 0}];
    v64 = NSStringFromSelector(sel_activityTypeOrder);
    v65 = [v4 decodeObjectOfClasses:v63 forKey:v64];
    [(UISUIActivityViewControllerConfiguration *)v5 setActivityTypeOrder:v65];

    v66 = NSStringFromSelector(sel_excludedActivityCategories);
    -[UISUIActivityViewControllerConfiguration setExcludedActivityCategories:](v5, "setExcludedActivityCategories:", [v4 decodeIntegerForKey:v66]);

    v67 = NSStringFromSelector(sel_sharingStyle);
    -[UISUIActivityViewControllerConfiguration setSharingStyle:](v5, "setSharingStyle:", [v4 decodeIntegerForKey:v67]);

    v68 = NSStringFromSelector(sel__unitTest_disableExcludingSourceApplicationFromOpenActivities);
    v5->__unitTest_disableExcludingSourceApplicationFromOpenActivities = [v4 decodeBoolForKey:v68];

    v69 = MEMORY[0x1E695DFD8];
    v70 = objc_opt_class();
    v71 = [v69 setWithObjects:{v70, objc_opt_class(), 0}];
    v72 = NSStringFromSelector(sel_urlsBeingShared);
    v73 = [v4 decodeObjectOfClasses:v71 forKey:v72];
    [(UISUIActivityViewControllerConfiguration *)v5 setUrlsBeingShared:v73];

    v74 = MEMORY[0x1E695DFD8];
    v75 = objc_opt_class();
    v76 = [v74 setWithObjects:{v75, objc_opt_class(), 0}];
    v77 = NSStringFromSelector(sel_linkPresentationDataForActivityItems);
    v78 = [v4 decodeObjectOfClasses:v76 forKey:v77];
    [(UISUIActivityViewControllerConfiguration *)v5 setLinkPresentationDataForActivityItems:v78];

    v79 = objc_opt_class();
    v80 = NSStringFromSelector(sel_hostTintColor);
    v81 = [v4 decodeObjectOfClass:v79 forKey:v80];
    [(UISUIActivityViewControllerConfiguration *)v5 setHostTintColor:v81];

    v82 = MEMORY[0x1E695DFD8];
    v83 = objc_opt_class();
    v84 = [v82 setWithObjects:{v83, objc_opt_class(), 0}];
    v85 = NSStringFromSelector(sel_initialPhotosAssetDetails);
    v86 = [v4 decodeObjectOfClasses:v84 forKey:v85];
    [(UISUIActivityViewControllerConfiguration *)v5 setInitialPhotosAssetDetails:v86];

    v87 = objc_opt_class();
    v88 = NSStringFromSelector(sel_sessionID);
    v89 = [v4 decodeObjectOfClass:v87 forKey:v88];
    [(UISUIActivityViewControllerConfiguration *)v5 setSessionID:v89];

    v90 = objc_opt_class();
    v91 = NSStringFromSelector(sel_hostTraitCollection);
    v92 = [v4 decodeObjectOfClass:v90 forKey:v91];
    [(UISUIActivityViewControllerConfiguration *)v5 setHostTraitCollection:v92];

    v93 = objc_opt_class();
    v94 = NSStringFromSelector(sel_hostLocale);
    v95 = [v4 decodeObjectOfClass:v93 forKey:v94];
    [(UISUIActivityViewControllerConfiguration *)v5 setHostLocale:v95];

    v96 = objc_opt_class();
    v97 = NSStringFromSelector(sel_hostLayoutMargins);
    v98 = [v4 decodeObjectOfClass:v96 forKey:v97];
    v135 = NSDirectionalEdgeInsetsFromString(v98);
    [(UISUIActivityViewControllerConfiguration *)v5 setHostLayoutMargins:v135.top, v135.leading, v135.bottom, v135.trailing];

    v99 = MEMORY[0x1E695DFD8];
    v100 = objc_opt_class();
    v101 = [v99 setWithObjects:{v100, objc_opt_class(), 0}];
    v102 = NSStringFromSelector(sel_typeIdentifiersForShortcutsMatching);
    v103 = [v4 decodeObjectOfClasses:v101 forKey:v102];
    [(UISUIActivityViewControllerConfiguration *)v5 setTypeIdentifiersForShortcutsMatching:v103];

    v104 = MEMORY[0x1E695DFD8];
    v105 = objc_opt_class();
    v106 = [v104 setWithObjects:{v105, objc_opt_class(), 0}];
    v107 = NSStringFromSelector(sel_preferredLocalizations);
    v108 = [v4 decodeObjectOfClasses:v106 forKey:v107];
    [(UISUIActivityViewControllerConfiguration *)v5 setPreferredLocalizations:v108];

    v109 = NSStringFromSelector(sel_iconSize);
    [v4 decodeCGSizeForKey:v109];
    [(UISUIActivityViewControllerConfiguration *)v5 setIconSize:?];

    v110 = NSStringFromSelector(sel_iconScale);
    [v4 decodeDoubleForKey:v110];
    [(UISUIActivityViewControllerConfiguration *)v5 setIconScale:?];

    v111 = NSStringFromSelector(sel_isCollaborative);
    -[UISUIActivityViewControllerConfiguration setIsCollaborative:](v5, "setIsCollaborative:", [v4 decodeBoolForKey:v111]);

    v112 = objc_opt_class();
    v113 = NSStringFromSelector(sel_collaborationType);
    v114 = [v4 decodeObjectOfClass:v112 forKey:v113];
    [(UISUIActivityViewControllerConfiguration *)v5 setCollaborationType:v114];

    v115 = objc_opt_class();
    v116 = NSStringFromSelector(sel_collaborationIsPostShare);
    v117 = [v4 decodeObjectOfClass:v115 forKey:v116];
    [(UISUIActivityViewControllerConfiguration *)v5 setCollaborationIsPostShare:v117];

    v118 = MEMORY[0x1E695DFD8];
    v119 = objc_opt_class();
    v120 = [v118 setWithObjects:{v119, objc_opt_class(), 0}];
    v121 = NSStringFromSelector(sel_recipients);
    v122 = [v4 decodeObjectOfClasses:v120 forKey:v121];
    [(UISUIActivityViewControllerConfiguration *)v5 setRecipients:v122];

    v123 = objc_opt_class();
    v124 = NSStringFromSelector(sel_testingSnapshot);
    v125 = [v4 decodeObjectOfClass:v123 forKey:v124];
    [(UISUIActivityViewControllerConfiguration *)v5 setTestingSnapshot:v125];

    v126 = objc_opt_class();
    v127 = NSStringFromSelector(sel_testingReferenceSnapshot);
    v128 = [v4 decodeObjectOfClass:v126 forKey:v127];
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

- (void)encodeWithCoder:(id)a3
{
  v101 = a3;
  [(UISUIActivityViewControllerConfiguration *)self preferredWidth];
  v5 = v4;
  v6 = NSStringFromSelector(sel_preferredWidth);
  [v101 encodeDouble:v6 forKey:v5];

  v7 = [(UISUIActivityViewControllerConfiguration *)self hostActivityConfigurations];
  v8 = NSStringFromSelector(sel_hostActivityConfigurations);
  [v101 encodeObject:v7 forKey:v8];

  v9 = [(UISUIActivityViewControllerConfiguration *)self hostHiddenActivityConfigurations];
  v10 = NSStringFromSelector(sel_hostHiddenActivityConfigurations);
  [v101 encodeObject:v9 forKey:v10];

  v11 = [(UISUIActivityViewControllerConfiguration *)self activityTypesToCreateInShareService];
  v12 = NSStringFromSelector(sel_activityTypesToCreateInShareService);
  [v101 encodeObject:v11 forKey:v12];

  v13 = [(UISUIActivityViewControllerConfiguration *)self activityItemValueClassNames];
  v14 = NSStringFromSelector(sel_activityItemValueClassNames);
  [v101 encodeObject:v13 forKey:v14];

  v15 = [(UISUIActivityViewControllerConfiguration *)self activityItemValueExtensionMatchingDictionaries];
  v16 = NSStringFromSelector(sel_activityItemValueExtensionMatchingDictionaries);
  [v101 encodeObject:v15 forKey:v16];

  v17 = [(UISUIActivityViewControllerConfiguration *)self securityScopedURLsForMatching];
  v18 = NSStringFromSelector(sel_securityScopedURLsForMatching);
  [v101 encodeObject:v17 forKey:v18];

  v19 = [(UISUIActivityViewControllerConfiguration *)self allowsEmbedding];
  v20 = NSStringFromSelector(sel_allowsEmbedding);
  [v101 encodeBool:v19 forKey:v20];

  v21 = [(UISUIActivityViewControllerConfiguration *)self isContentManaged];
  v22 = NSStringFromSelector(sel_isContentManaged);
  [v101 encodeBool:v21 forKey:v22];

  v23 = [(UISUIActivityViewControllerConfiguration *)self shouldMatchOnlyUserElectedExtensions];
  v24 = NSStringFromSelector(sel_shouldMatchOnlyUserElectedExtensions);
  [v101 encodeBool:v23 forKey:v24];

  v25 = [(UISUIActivityViewControllerConfiguration *)self shouldExcludeiCloudAddToDriveActivity];
  v26 = NSStringFromSelector(sel_shouldExcludeiCloudAddToDriveActivity);
  [v101 encodeBool:v25 forKey:v26];

  v27 = [(UISUIActivityViewControllerConfiguration *)self shouldExcludeiCloudSharingActivity];
  v28 = NSStringFromSelector(sel_shouldExcludeiCloudSharingActivity);
  [v101 encodeBool:v27 forKey:v28];

  v29 = [(UISUIActivityViewControllerConfiguration *)self shouldSkipPeopleSuggestions];
  v30 = NSStringFromSelector(sel_shouldSkipPeopleSuggestions);
  [v101 encodeBool:v29 forKey:v30];

  v31 = [(UISUIActivityViewControllerConfiguration *)self canExcludeExtensionActivities];
  v32 = NSStringFromSelector(sel_canExcludeExtensionActivities);
  [v101 encodeBool:v31 forKey:v32];

  v33 = [(UISUIActivityViewControllerConfiguration *)self canShowShareSheetPlugIns];
  v34 = NSStringFromSelector(sel_canShowShareSheetPlugIns);
  [v101 encodeBool:v33 forKey:v34];

  v35 = [(UISUIActivityViewControllerConfiguration *)self whitelistActionActivitiesOnly];
  v36 = NSStringFromSelector(sel_whitelistActionActivitiesOnly);
  [v101 encodeBool:v35 forKey:v36];

  v37 = [(UISUIActivityViewControllerConfiguration *)self linkedBeforeYukon];
  v38 = NSStringFromSelector(sel_linkedBeforeYukon);
  [v101 encodeBool:v37 forKey:v38];

  v39 = [(UISUIActivityViewControllerConfiguration *)self numberOfVisibleSharingActivities];
  v40 = NSStringFromSelector(sel_numberOfVisibleSharingActivities);
  [v101 encodeInteger:v39 forKey:v40];

  v41 = [(UISUIActivityViewControllerConfiguration *)self numberOfVisibleActionActivities];
  v42 = NSStringFromSelector(sel_numberOfVisibleActionActivities);
  [v101 encodeInteger:v41 forKey:v42];

  v43 = [(UISUIActivityViewControllerConfiguration *)self hostIdiom];
  v44 = NSStringFromSelector(sel_hostIdiom);
  [v101 encodeInteger:v43 forKey:v44];

  v45 = [(UISUIActivityViewControllerConfiguration *)self requestPeopleSuggestionsData];
  v46 = NSStringFromSelector(sel_requestPeopleSuggestionsData);
  [v101 encodeBool:v45 forKey:v46];

  v47 = [(UISUIActivityViewControllerConfiguration *)self useSlotsForPeopleSuggestions];
  v48 = NSStringFromSelector(sel_useSlotsForPeopleSuggestions);
  [v101 encodeBool:v47 forKey:v48];

  v49 = [(UISUIActivityViewControllerConfiguration *)self includedActivityTypes];
  v50 = NSStringFromSelector(sel_includedActivityTypes);
  [v101 encodeObject:v49 forKey:v50];

  v51 = [(UISUIActivityViewControllerConfiguration *)self excludedActivityTypes];
  v52 = NSStringFromSelector(sel_excludedActivityTypes);
  [v101 encodeObject:v51 forKey:v52];

  v53 = [(UISUIActivityViewControllerConfiguration *)self activityTypeOrder];
  v54 = NSStringFromSelector(sel_activityTypeOrder);
  [v101 encodeObject:v53 forKey:v54];

  v55 = [(UISUIActivityViewControllerConfiguration *)self excludedActivityCategories];
  v56 = NSStringFromSelector(sel_excludedActivityCategories);
  [v101 encodeInteger:v55 forKey:v56];

  v57 = [(UISUIActivityViewControllerConfiguration *)self sharingStyle];
  v58 = NSStringFromSelector(sel_sharingStyle);
  [v101 encodeInteger:v57 forKey:v58];

  v59 = [(UISUIActivityViewControllerConfiguration *)self linkPresentationDataForActivityItems];
  v60 = NSStringFromSelector(sel_linkPresentationDataForActivityItems);
  [v101 encodeObject:v59 forKey:v60];

  if (_isUnitTesting_onceToken != -1)
  {
    [UISUIActivityViewControllerConfiguration encodeWithCoder:];
  }

  if (_isUnitTesting_isUnitTesting == 1)
  {
    v61 = _unitTest_disableExcludingSourceApplicationFromOpenActivities_defaultValue;
    v62 = NSStringFromSelector(sel__unitTest_disableExcludingSourceApplicationFromOpenActivities);
    [v101 encodeBool:v61 forKey:v62];
  }

  v63 = [(UISUIActivityViewControllerConfiguration *)self urlsBeingShared];
  v64 = NSStringFromSelector(sel_urlsBeingShared);
  [v101 encodeObject:v63 forKey:v64];

  v65 = [(UISUIActivityViewControllerConfiguration *)self hostTintColor];
  v66 = NSStringFromSelector(sel_hostTintColor);
  [v101 encodeObject:v65 forKey:v66];

  v67 = [(UISUIActivityViewControllerConfiguration *)self initialPhotosAssetDetails];
  v68 = NSStringFromSelector(sel_initialPhotosAssetDetails);
  [v101 encodeObject:v67 forKey:v68];

  v69 = [(UISUIActivityViewControllerConfiguration *)self sessionID];
  v70 = NSStringFromSelector(sel_sessionID);
  [v101 encodeObject:v69 forKey:v70];

  v71 = [(UISUIActivityViewControllerConfiguration *)self hostTraitCollection];
  v72 = NSStringFromSelector(sel_hostTraitCollection);
  [v101 encodeObject:v71 forKey:v72];

  v73 = [(UISUIActivityViewControllerConfiguration *)self hostLocale];
  v74 = NSStringFromSelector(sel_hostLocale);
  [v101 encodeObject:v73 forKey:v74];

  [(UISUIActivityViewControllerConfiguration *)self hostLayoutMargins];
  v75 = NSStringFromDirectionalEdgeInsets(v103);
  v76 = NSStringFromSelector(sel_hostLayoutMargins);
  [v101 encodeObject:v75 forKey:v76];

  v77 = [(UISUIActivityViewControllerConfiguration *)self typeIdentifiersForShortcutsMatching];
  v78 = NSStringFromSelector(sel_typeIdentifiersForShortcutsMatching);
  [v101 encodeObject:v77 forKey:v78];

  v79 = [(UISUIActivityViewControllerConfiguration *)self preferredLocalizations];
  v80 = NSStringFromSelector(sel_preferredLocalizations);
  [v101 encodeObject:v79 forKey:v80];

  [(UISUIActivityViewControllerConfiguration *)self iconSize];
  v82 = v81;
  v84 = v83;
  v85 = NSStringFromSelector(sel_iconSize);
  [v101 encodeCGSize:v85 forKey:{v82, v84}];

  [(UISUIActivityViewControllerConfiguration *)self iconScale];
  v87 = v86;
  v88 = NSStringFromSelector(sel_iconScale);
  [v101 encodeDouble:v88 forKey:v87];

  v89 = [(UISUIActivityViewControllerConfiguration *)self isCollaborative];
  v90 = NSStringFromSelector(sel_isCollaborative);
  [v101 encodeBool:v89 forKey:v90];

  v91 = [(UISUIActivityViewControllerConfiguration *)self collaborationType];
  v92 = NSStringFromSelector(sel_collaborationType);
  [v101 encodeObject:v91 forKey:v92];

  v93 = [(UISUIActivityViewControllerConfiguration *)self collaborationIsPostShare];
  v94 = NSStringFromSelector(sel_collaborationIsPostShare);
  [v101 encodeObject:v93 forKey:v94];

  v95 = [(UISUIActivityViewControllerConfiguration *)self recipients];
  v96 = NSStringFromSelector(sel_recipients);
  [v101 encodeObject:v95 forKey:v96];

  v97 = [(UISUIActivityViewControllerConfiguration *)self testingSnapshot];
  v98 = NSStringFromSelector(sel_testingSnapshot);
  [v101 encodeObject:v97 forKey:v98];

  v99 = [(UISUIActivityViewControllerConfiguration *)self testingReferenceSnapshot];
  v100 = NSStringFromSelector(sel_testingReferenceSnapshot);
  [v101 encodeObject:v99 forKey:v100];
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

  v5 = [(UISUIActivityViewControllerConfiguration *)self includedActivityTypes];
  v6 = [v5 count];

  if (v6)
  {
    v15 = [(UISUIActivityViewControllerConfiguration *)self includedActivityTypes];
    NSAppendPrintF();
    v7 = v3;

    v3 = v7;
  }

  v8 = [(UISUIActivityViewControllerConfiguration *)self excludedActivityTypes];
  v9 = [v8 count];

  if (v9)
  {
    v16 = [(UISUIActivityViewControllerConfiguration *)self excludedActivityTypes];
    NSAppendPrintF();
    v10 = v3;

    v3 = v10;
  }

  v17 = [(UISUIActivityViewControllerConfiguration *)self activityItemValueExtensionMatchingDictionaries];
  NSAppendPrintF();
  v11 = v3;

  return v3;
}

- (id)contextForMatchingByActivityItemValueClasses
{
  v3 = [(UISUIActivityViewControllerConfiguration *)self availableActivityItemValueClasses];
  v4 = [(UISUIActivityViewControllerConfiguration *)self _contextForMatchingActivityItems:0 activityItemValues:0 activityItemValueClasses:v3];

  return v4;
}

- (id)_contextForMatchingActivityItems:(id)a3 activityItemValues:(id)a4 activityItemValueClasses:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695E0F0];
  if (a3)
  {
    v10 = a3;
  }

  v11 = v10;
  v12 = [MEMORY[0x1E695DF70] array];
  v13 = v12;
  if (v8)
  {
    [v12 addObjectsFromArray:v8];
  }

  else
  {
    v14 = [(UISUIActivityViewControllerConfiguration *)self securityScopedURLsForMatching];

    if (v14)
    {
      v30 = v9;
      v15 = [(UISUIActivityViewControllerConfiguration *)self securityScopedURLsForMatching];
      v16 = [MEMORY[0x1E695DF70] array];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v29 = v15;
      v17 = [v15 securityScopedResources];
      v18 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
              objc_enumerationMutation(v17);
            }

            v22 = [*(*(&v31 + 1) + 8 * i) url];
            [v16 addObject:v22];
          }

          v19 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v19);
      }

      [v13 addObjectsFromArray:v16];
      v9 = v30;
    }
  }

  v23 = [[_UIActivityMatchingContext alloc] initWithActivityItems:v11 itemValues:v13];
  [(_UIActivityMatchingContext *)v23 setActivityItemValueClasses:v9];
  v24 = [(UISUIActivityViewControllerConfiguration *)self activityItemValueExtensionMatchingDictionaries];
  [(_UIActivityMatchingContext *)v23 setActivityItemValueExtensionMatchingDictionaries:v24];

  [(_UIActivityMatchingContext *)v23 setIsContentManaged:[(UISUIActivityViewControllerConfiguration *)self isContentManaged]];
  [(_UIActivityMatchingContext *)v23 setShouldMatchOnlyUserElectedExtensions:[(UISUIActivityViewControllerConfiguration *)self shouldMatchOnlyUserElectedExtensions]];
  [(_UIActivityMatchingContext *)v23 setShouldExcludeiCloudAddToDriveActivity:[(UISUIActivityViewControllerConfiguration *)self shouldExcludeiCloudAddToDriveActivity]];
  [(_UIActivityMatchingContext *)v23 setShouldExcludeiCloudSharingActivity:[(UISUIActivityViewControllerConfiguration *)self shouldExcludeiCloudSharingActivity]];
  [(_UIActivityMatchingContext *)v23 setWhitelistActionActivitiesOnly:[(UISUIActivityViewControllerConfiguration *)self whitelistActionActivitiesOnly]];
  v25 = [(UISUIActivityViewControllerConfiguration *)self activityTypeOrder];
  [(_UIActivityMatchingContext *)v23 setActivityTypeOrder:v25];

  v26 = [(UISUIActivityViewControllerConfiguration *)self includedActivityTypes];
  [(_UIActivityMatchingContext *)v23 setIncludedActivityTypes:v26];

  v27 = [(UISUIActivityViewControllerConfiguration *)self excludedActivityTypes];
  [(_UIActivityMatchingContext *)v23 setExcludedActivityTypes:v27];

  [(_UIActivityMatchingContext *)v23 setExcludedActivityCategories:[(UISUIActivityViewControllerConfiguration *)self excludedActivityCategories]];
  [(_UIActivityMatchingContext *)v23 setCanExcludeExtensionActivities:[(UISUIActivityViewControllerConfiguration *)self canExcludeExtensionActivities]];
  [(_UIActivityMatchingContext *)v23 setSharingStyle:[(UISUIActivityViewControllerConfiguration *)self sharingStyle]];

  return v23;
}

- (id)availableActivityItemValueClasses
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(UISUIActivityViewControllerConfiguration *)self activityItemValueClassNames];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = NSClassFromString(*(*(&v11 + 1) + 8 * i));
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
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