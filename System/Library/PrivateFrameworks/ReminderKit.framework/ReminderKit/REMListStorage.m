@interface REMListStorage
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
+ (id)reminderIDUUIDStringsJSONDataFromReminderIDsMergeableOrdering:(id)a3 error:(id *)a4;
+ (id)reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUnsupported;
- (NSOrderedSet)reminderIDsMergeableOrdering;
- (NSString)displayName;
- (REMListStorage)initWithCoder:(id)a3;
- (REMListStorage)initWithObjectID:(id)a3 accountID:(id)a4 name:(id)a5;
- (REMListStorage)initWithObjectID:(id)a3 accountID:(id)a4 name:(id)a5 isGroup:(BOOL)a6 reminderIDsMergeableOrderingData:(id)a7;
- (REMResolutionTokenMap)resolutionTokenMap;
- (id)cdKeyToStorageKeyMap;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)ekColor;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)reminderIDsMergeableOrdering;
- (void)resolutionTokenMap;
- (void)setReminderIDsMergeableOrdering:(id)a3;
- (void)setStoreGenerationIfNeeded:(unint64_t)a3;
@end

@implementation REMListStorage

- (NSString)displayName
{
  v3 = [(REMListStorage *)self name];
  v4 = [REMDisplayNameUtils displayNameFromListName:v3 isPlaceholder:[(REMListStorage *)self isPlaceholder]];

  return v4;
}

- (REMListStorage)initWithObjectID:(id)a3 accountID:(id)a4 name:(id)a5
{
  v8 = MEMORY[0x1E695DFB8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 orderedSet];
  v13 = [(REMListStorage *)self initWithObjectID:v11 accountID:v10 name:v9 isGroup:0 reminderIDsMergeableOrdering:v12];

  return v13;
}

- (REMListStorage)initWithObjectID:(id)a3 accountID:(id)a4 name:(id)a5 isGroup:(BOOL)a6 reminderIDsMergeableOrderingData:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v42.receiver = self;
  v42.super_class = REMListStorage;
  v17 = [(REMListStorage *)&v42 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_objectID, a3);
    objc_storeStrong(&v18->_accountID, a4);
    v18->_isGroup = a6;
    objc_storeStrong(&v18->_name, a5);
    pinnedDate = v18->_pinnedDate;
    v18->_pinnedDate = 0;

    *&v18->_shouldCategorizeGroceryItems = 0;
    groceryLocaleID = v18->_groceryLocaleID;
    v18->_groceryLocaleID = 0;

    unsavedReminderIDsForCategorization = v18->_unsavedReminderIDsForCategorization;
    v18->_unsavedReminderIDsForCategorization = 0;

    v18->_shouldAutoCategorizeItems = 0;
    mostRecentTargetTemplateIdentifier = v18->_mostRecentTargetTemplateIdentifier;
    v18->_mostRecentTargetTemplateIdentifier = 0;

    v18->_shouldUpdateSectionsOrdering = 0;
    *&v18->_isAutoCategorizationSupportedInCurrentAppVersion = 0;
    unsavedSectionIDsOrdering = v18->_unsavedSectionIDsOrdering;
    v18->_unsavedSectionIDsOrdering = 0;

    unsavedMembershipsOfRemindersInSections = v18->_unsavedMembershipsOfRemindersInSections;
    v18->_unsavedMembershipsOfRemindersInSections = 0;

    v25 = [MEMORY[0x1E695DF20] dictionary];
    reminderIDsOrderingHints = v18->_reminderIDsOrderingHints;
    v18->_reminderIDsOrderingHints = v25;

    if (v16)
    {
      v27 = v16;
    }

    else
    {
      v27 = [MEMORY[0x1E695DEF0] data];
    }

    reminderIDsMergeableOrderingData = v18->_reminderIDsMergeableOrderingData;
    v18->_reminderIDsMergeableOrderingData = v27;

    v29 = objc_alloc_init(REMResolutionTokenMap);
    resolutionTokenMap = v18->_resolutionTokenMap;
    v18->_resolutionTokenMap = v29;

    v31 = [MEMORY[0x1E695DEF0] data];
    resolutionTokenMapData = v18->_resolutionTokenMapData;
    v18->_resolutionTokenMapData = v31;

    v33 = [MEMORY[0x1E695DFD8] set];
    reminderIDsToUndelete = v18->_reminderIDsToUndelete;
    v18->_reminderIDsToUndelete = v33;

    v35 = [MEMORY[0x1E695DFD8] set];
    childListIDsToUndelete = v18->_childListIDsToUndelete;
    v18->_childListIDsToUndelete = v35;

    v37 = [MEMORY[0x1E695DFD8] set];
    childSmartListIDsToUndelete = v18->_childSmartListIDsToUndelete;
    v18->_childSmartListIDsToUndelete = v37;

    v39 = [MEMORY[0x1E695DFD8] set];
    sectionIDsToUndelete = v18->_sectionIDsToUndelete;
    v18->_sectionIDsToUndelete = v39;

    v18->_sharingStatus = 0;
    v18->_storeGeneration = 0;
    *&v18->_remindersICSDisplayOrderChanged = 0;
    v18->_daIsNotificationsCollection = 0;
    [(REMListStorage *)v18 setSortingStyle:@"manual"];
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [REMListStorage alloc];
  v5 = [(REMListStorage *)self objectID];
  v6 = [(REMListStorage *)self accountID];
  v7 = [(REMListStorage *)self name];
  v8 = [(REMListStorage *)self isGroup];
  v9 = [(REMListStorage *)self reminderIDsMergeableOrderingData];
  v10 = [(REMListStorage *)v4 initWithObjectID:v5 accountID:v6 name:v7 isGroup:v8 reminderIDsMergeableOrderingData:v9];

  v11 = [(NSOrderedSet *)self->_reminderIDsMergeableOrdering copy];
  [(REMListStorage *)v10 setReminderIDsMergeableOrdering:v11];

  [(REMListStorage *)v10 setIsGroup:[(REMListStorage *)self isGroup]];
  v12 = [(REMListStorage *)self externalIdentifier];
  [(REMListStorage *)v10 setExternalIdentifier:v12];

  v13 = [(REMListStorage *)self externalModificationTag];
  [(REMListStorage *)v10 setExternalModificationTag:v13];

  v14 = [(REMListStorage *)self daSyncToken];
  [(REMListStorage *)v10 setDaSyncToken:v14];

  v15 = [(REMListStorage *)self daPushKey];
  [(REMListStorage *)v10 setDaPushKey:v15];

  v16 = [(REMListStorage *)self daExternalIdentificationTag];
  [(REMListStorage *)v10 setDaExternalIdentificationTag:v16];

  v17 = [(REMListStorage *)self daBulkRequests];
  [(REMListStorage *)v10 setDaBulkRequests:v17];

  [(REMListStorage *)v10 setDaDisplayOrder:[(REMListStorage *)self daDisplayOrder]];
  [(REMListStorage *)v10 setDaIsEventOnlyContainer:[(REMListStorage *)self daIsEventOnlyContainer]];
  [(REMListStorage *)v10 setDaIsReadOnly:[(REMListStorage *)self daIsReadOnly]];
  [(REMListStorage *)v10 setDaIsImmutable:[(REMListStorage *)self daIsImmutable]];
  [(REMListStorage *)v10 setDaIsNotificationsCollection:[(REMListStorage *)self daIsNotificationsCollection]];
  [(REMListStorage *)v10 setMinimumSupportedVersion:[(REMListStorage *)self minimumSupportedVersion]];
  [(REMListStorage *)v10 setEffectiveMinimumSupportedVersion:[(REMListStorage *)self effectiveMinimumSupportedVersion]];
  v18 = [(REMListStorage *)self color];
  [(REMListStorage *)v10 setColor:v18];

  v19 = [(REMListStorage *)self badgeEmblem];
  [(REMListStorage *)v10 setBadgeEmblem:v19];

  [(REMListStorage *)v10 setShouldCategorizeGroceryItems:[(REMListStorage *)self shouldCategorizeGroceryItems]];
  [(REMListStorage *)v10 setShouldSuggestConversionToGroceryList:[(REMListStorage *)self shouldSuggestConversionToGroceryList]];
  v20 = [(REMListStorage *)self groceryLocaleID];
  [(REMListStorage *)v10 setGroceryLocaleID:v20];

  v21 = [(REMListStorage *)self unsavedReminderIDsForCategorization];
  v22 = [v21 copy];
  [(REMListStorage *)v10 setUnsavedReminderIDsForCategorization:v22];

  [(REMListStorage *)v10 setShouldAutoCategorizeItems:[(REMListStorage *)self shouldAutoCategorizeItems]];
  v23 = [(REMListStorage *)self lastUserAccessDate];
  [(REMListStorage *)v10 setLastUserAccessDate:v23];

  [(REMListStorage *)v10 setShowingLargeAttachments:[(REMListStorage *)self showingLargeAttachments]];
  v24 = [(REMListStorage *)self parentAccountID];
  [(REMListStorage *)v10 setParentAccountID:v24];

  v25 = [(REMListStorage *)self parentListID];
  [(REMListStorage *)v10 setParentListID:v25];

  v26 = [(REMResolutionTokenMap *)self->_resolutionTokenMap copy];
  resolutionTokenMap = v10->_resolutionTokenMap;
  v10->_resolutionTokenMap = v26;

  v28 = [(REMListStorage *)self resolutionTokenMapData];
  [(REMListStorage *)v10 setResolutionTokenMapData:v28];

  v29 = [(REMListStorage *)self reminderIDsOrderingHints];
  v30 = [v29 copy];
  [(REMListStorage *)v10 setReminderIDsOrderingHints:v30];

  v31 = [(REMListStorage *)self reminderIDsToUndelete];
  v32 = [v31 copy];
  [(REMListStorage *)v10 setReminderIDsToUndelete:v32];

  v33 = [(REMListStorage *)self childListIDsToUndelete];
  v34 = [v33 copy];
  [(REMListStorage *)v10 setChildListIDsToUndelete:v34];

  v35 = [(REMListStorage *)self childSmartListIDsToUndelete];
  v36 = [v35 copy];
  [(REMListStorage *)v10 setChildSmartListIDsToUndelete:v36];

  v37 = [(REMListStorage *)self sectionIDsToUndelete];
  v38 = [v37 copy];
  [(REMListStorage *)v10 setSectionIDsToUndelete:v38];

  [(REMListStorage *)v10 setRemindersICSDisplayOrderChanged:[(REMListStorage *)self remindersICSDisplayOrderChanged]];
  v39 = [(REMListStorage *)self templateID];
  [(REMListStorage *)v10 setTemplateID:v39];

  v40 = [(REMListStorage *)self sharedOwnerName];
  [(REMListStorage *)v10 setSharedOwnerName:v40];

  v41 = [(REMListStorage *)self sharedOwnerAddress];
  [(REMListStorage *)v10 setSharedOwnerAddress:v41];

  [(REMListStorage *)v10 setSharingStatus:[(REMListStorage *)self sharingStatus]];
  v42 = [(REMListStorage *)self sharees];
  [(REMListStorage *)v10 setSharees:v42];

  v43 = [(REMListStorage *)self sharedOwnerID];
  [(REMListStorage *)v10 setSharedOwnerID:v43];

  v44 = [(REMListStorage *)self calDAVNotifications];
  [(REMListStorage *)v10 setCalDAVNotifications:v44];

  [(REMListStorage *)v10 setIsPlaceholder:[(REMListStorage *)self isPlaceholder]];
  v45 = [(REMListStorage *)self currentUserShareParticipantID];
  [(REMListStorage *)v10 setCurrentUserShareParticipantID:v45];

  v46 = [(REMListStorage *)self sortingStyle];
  [(REMListStorage *)v10 setSortingStyle:v46];

  v47 = [(REMListStorage *)self pinnedDate];
  [(REMListStorage *)v10 setPinnedDate:v47];

  v48 = [(REMListStorage *)self mostRecentTargetTemplateIdentifier];
  [(REMListStorage *)v10 setMostRecentTargetTemplateIdentifier:v48];

  [(REMListStorage *)v10 setShouldUpdateSectionsOrdering:[(REMListStorage *)self shouldUpdateSectionsOrdering]];
  [(REMListStorage *)v10 setIsAutoCategorizationSupportedInCurrentAppVersion:[(REMListStorage *)self isAutoCategorizationSupportedInCurrentAppVersion]];
  [(REMListStorage *)v10 setIsSuggestedRemindersSupportedInCurrentAppVersion:[(REMListStorage *)self isSuggestedRemindersSupportedInCurrentAppVersion]];
  v49 = [(REMListStorage *)self unsavedSectionIDsOrdering];
  v50 = [v49 copy];
  [(REMListStorage *)v10 setUnsavedSectionIDsOrdering:v50];

  v51 = [(REMListStorage *)self unsavedMembershipsOfRemindersInSections];
  v52 = [v51 copy];
  [(REMListStorage *)v10 setUnsavedMembershipsOfRemindersInSections:v52];

  v10->_storeGeneration = self->_storeGeneration;
  v10->_copyGeneration = self->_copyGeneration + 1;
  return v10;
}

- (REMListStorage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v117 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [v4 decodeBoolForKey:@"isGroup"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v116 = [v4 decodeObjectOfClasses:v10 forKey:@"reminderIDsToUndelete"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = v12;
  v15 = v5;
  v16 = [v11 setWithObjects:{v14, v13, 0}];
  v115 = [v4 decodeObjectOfClasses:v16 forKey:@"childListIDsToUndelete"];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = v18;
  v21 = v6;
  v22 = [v17 setWithObjects:{v20, v19, 0}];
  v114 = [v4 decodeObjectOfClasses:v22 forKey:@"childSmartListIDsToUndelete"];

  v23 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
  v26 = [v4 decodeObjectOfClasses:v25 forKey:@"sectionIDsToUndelete"];

  if (v15 && v21)
  {
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reminderIDsMergeableOrderingData"];
    v28 = [(REMListStorage *)self initWithObjectID:v15 accountID:v117 name:v21 isGroup:v7 reminderIDsMergeableOrderingData:v27];
    if (v28)
    {
      v111 = v27;
      v29 = MEMORY[0x1E695DFD8];
      v30 = objc_opt_class();
      v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
      v32 = [v4 decodeObjectOfClasses:v31 forKey:@"reminderIDsMergeableOrdering"];

      if (v32)
      {
        v33 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v32];
        reminderIDsMergeableOrdering = v28->_reminderIDsMergeableOrdering;
        v28->_reminderIDsMergeableOrdering = v33;

        v35 = 208;
      }

      else
      {
        v35 = 8;
      }

      v110 = v32;
      v38 = *(&v28->super.isa + v35);
      *(&v28->super.isa + v35) = 0;

      if (!v28->_reminderIDsMergeableOrdering && !v28->_reminderIDsMergeableOrderingData)
      {
        [REMListStorage initWithCoder:];
      }

      v112 = v26;
      v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
      color = v28->_color;
      v28->_color = v39;

      v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"badgeEmblem"];
      badgeEmblem = v28->_badgeEmblem;
      v28->_badgeEmblem = v41;

      v28->_shouldCategorizeGroceryItems = [v4 decodeBoolForKey:@"shouldCategorizeGroceryItems"];
      v28->_shouldSuggestConversionToGroceryList = [v4 decodeBoolForKey:@"shouldSuggestConversionToGroceryList"];
      v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groceryLocaleID"];
      groceryLocaleID = v28->_groceryLocaleID;
      v28->_groceryLocaleID = v43;

      v45 = MEMORY[0x1E695DFD8];
      v46 = objc_opt_class();
      v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
      v48 = [v4 decodeObjectOfClasses:v47 forKey:@"unsavedReminderIDsForCategorization"];

      v109 = v48;
      objc_storeStrong(&v28->_unsavedReminderIDsForCategorization, v48);
      v28->_shouldAutoCategorizeItems = [v4 decodeBoolForKey:@"shouldAutoCategorizeItems"];
      v28->_showingLargeAttachments = [v4 decodeBoolForKey:@"showingLargeAttachments"];
      v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentAccountID"];
      parentAccountID = v28->_parentAccountID;
      v28->_parentAccountID = v49;

      v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentListID"];
      parentListID = v28->_parentListID;
      v28->_parentListID = v51;

      v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMapData"];
      v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMap"];
      v113 = v15;
      v107 = v54;
      v108 = v53;
      if (v54)
      {
        objc_storeStrong(&v28->_resolutionTokenMap, v54);
        resolutionTokenMapData = v28->_resolutionTokenMapData;
        v28->_resolutionTokenMapData = 0;
      }

      else
      {
        resolutionTokenMap = v28->_resolutionTokenMap;
        v28->_resolutionTokenMap = 0;

        v57 = v53;
        resolutionTokenMapData = v28->_resolutionTokenMapData;
        v28->_resolutionTokenMapData = v57;
      }

      v58 = MEMORY[0x1E695DFD8];
      v59 = objc_opt_class();
      v60 = objc_opt_class();
      v61 = [v58 setWithObjects:{v59, v60, objc_opt_class(), 0}];
      v62 = [v4 decodeObjectOfClasses:v61 forKey:@"reminderIDsOrderingHints"];
      v63 = v62;
      if (v62)
      {
        v64 = v62;
      }

      else
      {
        v64 = [MEMORY[0x1E695DF20] dictionary];
      }

      reminderIDsOrderingHints = v28->_reminderIDsOrderingHints;
      v28->_reminderIDsOrderingHints = v64;

      v66 = [MEMORY[0x1E695DFD8] setWithArray:v116];
      reminderIDsToUndelete = v28->_reminderIDsToUndelete;
      v28->_reminderIDsToUndelete = v66;

      v68 = [MEMORY[0x1E695DFD8] setWithArray:v115];
      childListIDsToUndelete = v28->_childListIDsToUndelete;
      v28->_childListIDsToUndelete = v68;

      v70 = [MEMORY[0x1E695DFD8] setWithArray:v114];
      childSmartListIDsToUndelete = v28->_childSmartListIDsToUndelete;
      v28->_childSmartListIDsToUndelete = v70;

      v26 = v112;
      v72 = [MEMORY[0x1E695DFD8] setWithArray:v112];
      sectionIDsToUndelete = v28->_sectionIDsToUndelete;
      v28->_sectionIDsToUndelete = v72;

      v28->_remindersICSDisplayOrderChanged = [v4 decodeBoolForKey:@"remindersICSDisplayOrderChanged"];
      v74 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
      [(REMListStorage *)v28 setExternalIdentifier:v74];

      v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalModificationTag"];
      [(REMListStorage *)v28 setExternalModificationTag:v75];

      v76 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"daSyncToken"];
      [(REMListStorage *)v28 setDaSyncToken:v76];

      v77 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"daPushKey"];
      [(REMListStorage *)v28 setDaPushKey:v77];

      v78 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"daExternalIdentificationTag"];
      [(REMListStorage *)v28 setDaExternalIdentificationTag:v78];

      -[REMListStorage setDaDisplayOrder:](v28, "setDaDisplayOrder:", [v4 decodeIntegerForKey:@"daDisplayOrder"]);
      -[REMListStorage setDaIsEventOnlyContainer:](v28, "setDaIsEventOnlyContainer:", [v4 decodeBoolForKey:@"daIsEventOnlyContainer"]);
      -[REMListStorage setDaIsReadOnly:](v28, "setDaIsReadOnly:", [v4 decodeBoolForKey:@"daIsReadOnly"]);
      -[REMListStorage setDaIsImmutable:](v28, "setDaIsImmutable:", [v4 decodeBoolForKey:@"daIsImmutable"]);
      -[REMListStorage setDaIsNotificationsCollection:](v28, "setDaIsNotificationsCollection:", [v4 decodeBoolForKey:@"daIsNotificationsCollection"]);
      -[REMListStorage setMinimumSupportedVersion:](v28, "setMinimumSupportedVersion:", [v4 decodeIntegerForKey:@"minimumSupportedVersion"]);
      -[REMListStorage setEffectiveMinimumSupportedVersion:](v28, "setEffectiveMinimumSupportedVersion:", [v4 decodeIntegerForKey:@"effectiveMinimumSupportedVersion"]);
      v79 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUserAccessDate"];
      [(REMListStorage *)v28 setLastUserAccessDate:v79];

      v80 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"templateID"];
      [(REMListStorage *)v28 setTemplateID:v80];

      v81 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedOwnerName"];
      [(REMListStorage *)v28 setSharedOwnerName:v81];

      v82 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedOwnerAddress"];
      [(REMListStorage *)v28 setSharedOwnerAddress:v82];

      v83 = [v4 decodeIntegerForKey:@"sharingStatus"];
      if (v83 >= 5)
      {
        v84 = os_log_create("com.apple.reminderkit", "default");
        if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
        {
          [REMListStorage initWithCoder:];
        }

        v83 = 0;
      }

      [(REMListStorage *)v28 setSharingStatus:v83];
      v85 = MEMORY[0x1E695DFD8];
      v86 = objc_opt_class();
      v87 = [v85 setWithObjects:{v86, objc_opt_class(), 0}];
      v88 = [v4 decodeObjectOfClasses:v87 forKey:@"sharees"];
      [(REMListStorage *)v28 setSharees:v88];

      v89 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedOwnerID"];
      [(REMListStorage *)v28 setSharedOwnerID:v89];

      v90 = MEMORY[0x1E695DFD8];
      v91 = objc_opt_class();
      v92 = [v90 setWithObjects:{v91, objc_opt_class(), 0}];
      v93 = [v4 decodeObjectOfClasses:v92 forKey:@"calDAVNotifications"];
      [(REMListStorage *)v28 setCalDAVNotifications:v93];

      -[REMListStorage setIsPlaceholder:](v28, "setIsPlaceholder:", [v4 decodeBoolForKey:@"isPlaceholder"]);
      v94 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentUserShareParticipantID"];
      [(REMListStorage *)v28 setCurrentUserShareParticipantID:v94];

      v95 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sortingStyle"];
      [(REMListStorage *)v28 setSortingStyle:v95];

      v96 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pinnedDate"];
      [(REMListStorage *)v28 setPinnedDate:v96];

      v97 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentTargetTemplateIdentifier"];
      [(REMListStorage *)v28 setMostRecentTargetTemplateIdentifier:v97];

      -[REMListStorage setShouldUpdateSectionsOrdering:](v28, "setShouldUpdateSectionsOrdering:", [v4 decodeBoolForKey:@"shouldUpdateSectionsOrdering"]);
      -[REMListStorage setIsAutoCategorizationSupportedInCurrentAppVersion:](v28, "setIsAutoCategorizationSupportedInCurrentAppVersion:", [v4 decodeBoolForKey:@"isAutoCategorizationSupportedInCurrentAppVersion"]);
      -[REMListStorage setIsSuggestedRemindersSupportedInCurrentAppVersion:](v28, "setIsSuggestedRemindersSupportedInCurrentAppVersion:", [v4 decodeBoolForKey:@"isSuggestedRemindersSupportedInCurrentAppVersion"]);
      v98 = MEMORY[0x1E695DFD8];
      v99 = objc_opt_class();
      v100 = [v98 setWithObjects:{v99, objc_opt_class(), 0}];
      v101 = [v4 decodeObjectOfClasses:v100 forKey:@"unsavedSectionIDsOrdering"];
      [(REMListStorage *)v28 setUnsavedSectionIDsOrdering:v101];

      v102 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unsavedMembershipsOfRemindersInSections"];
      [(REMListStorage *)v28 setUnsavedMembershipsOfRemindersInSections:v102];

      v103 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"daBulkRequests"];
      if (v103)
      {
        v104 = [MEMORY[0x1E696AE40] propertyListWithData:v103 options:0 format:0 error:0];
        daBulkRequests = v28->_daBulkRequests;
        v28->_daBulkRequests = v104;
      }

      v15 = v113;
      v27 = v111;
    }

    self = v28;
    v37 = self;
  }

  else
  {
    v36 = +[REMLogStore read];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      [REMListStorage initWithCoder:];
    }

    v37 = 0;
  }

  return v37;
}

- (void)setStoreGenerationIfNeeded:(unint64_t)a3
{
  if (!self->_storeGeneration)
  {
    self->_storeGeneration = a3;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMListStorage *)self objectID];
  [v4 encodeObject:v5 forKey:@"objectID"];

  v6 = [(REMListStorage *)self accountID];
  [v4 encodeObject:v6 forKey:@"accountID"];

  [v4 encodeBool:-[REMListStorage isGroup](self forKey:{"isGroup"), @"isGroup"}];
  v7 = [(REMListStorage *)self externalIdentifier];
  [v4 encodeObject:v7 forKey:@"externalIdentifier"];

  v8 = [(REMListStorage *)self externalModificationTag];
  [v4 encodeObject:v8 forKey:@"externalModificationTag"];

  v9 = [(REMListStorage *)self daSyncToken];
  [v4 encodeObject:v9 forKey:@"daSyncToken"];

  v10 = [(REMListStorage *)self daPushKey];
  [v4 encodeObject:v10 forKey:@"daPushKey"];

  v11 = [(REMListStorage *)self daExternalIdentificationTag];
  [v4 encodeObject:v11 forKey:@"daExternalIdentificationTag"];

  [v4 encodeInteger:-[REMListStorage daDisplayOrder](self forKey:{"daDisplayOrder"), @"daDisplayOrder"}];
  [v4 encodeBool:-[REMListStorage daIsEventOnlyContainer](self forKey:{"daIsEventOnlyContainer"), @"daIsEventOnlyContainer"}];
  [v4 encodeBool:-[REMListStorage daIsReadOnly](self forKey:{"daIsReadOnly"), @"daIsReadOnly"}];
  [v4 encodeBool:-[REMListStorage daIsImmutable](self forKey:{"daIsImmutable"), @"daIsImmutable"}];
  [v4 encodeBool:-[REMListStorage daIsNotificationsCollection](self forKey:{"daIsNotificationsCollection"), @"daIsNotificationsCollection"}];
  [v4 encodeInteger:-[REMListStorage minimumSupportedVersion](self forKey:{"minimumSupportedVersion"), @"minimumSupportedVersion"}];
  [v4 encodeInteger:-[REMListStorage effectiveMinimumSupportedVersion](self forKey:{"effectiveMinimumSupportedVersion"), @"effectiveMinimumSupportedVersion"}];
  v12 = [(REMListStorage *)self lastUserAccessDate];
  [v4 encodeObject:v12 forKey:@"lastUserAccessDate"];

  v13 = [(REMListStorage *)self name];
  [v4 encodeObject:v13 forKey:@"name"];

  v14 = [(REMListStorage *)self color];
  [v4 encodeObject:v14 forKey:@"color"];

  v15 = [(REMListStorage *)self badgeEmblem];
  [v4 encodeObject:v15 forKey:@"badgeEmblem"];

  [v4 encodeBool:-[REMListStorage shouldCategorizeGroceryItems](self forKey:{"shouldCategorizeGroceryItems"), @"shouldCategorizeGroceryItems"}];
  [v4 encodeBool:-[REMListStorage shouldSuggestConversionToGroceryList](self forKey:{"shouldSuggestConversionToGroceryList"), @"shouldSuggestConversionToGroceryList"}];
  v16 = [(REMListStorage *)self groceryLocaleID];
  [v4 encodeObject:v16 forKey:@"groceryLocaleID"];

  v17 = [(REMListStorage *)self unsavedReminderIDsForCategorization];
  [v4 encodeObject:v17 forKey:@"unsavedReminderIDsForCategorization"];

  [v4 encodeBool:-[REMListStorage shouldAutoCategorizeItems](self forKey:{"shouldAutoCategorizeItems"), @"shouldAutoCategorizeItems"}];
  [v4 encodeBool:-[REMListStorage showingLargeAttachments](self forKey:{"showingLargeAttachments"), @"showingLargeAttachments"}];
  v18 = [(REMListStorage *)self parentAccountID];
  [v4 encodeObject:v18 forKey:@"parentAccountID"];

  v19 = [(REMListStorage *)self parentListID];
  [v4 encodeObject:v19 forKey:@"parentListID"];

  reminderIDsMergeableOrdering = self->_reminderIDsMergeableOrdering;
  if (reminderIDsMergeableOrdering)
  {
    v21 = [(NSOrderedSet *)reminderIDsMergeableOrdering array];
    [v4 encodeObject:v21 forKey:@"reminderIDsMergeableOrdering"];

    [v4 encodeObject:0 forKey:@"reminderIDsMergeableOrderingData"];
  }

  else
  {
    v22 = [(REMListStorage *)self reminderIDsMergeableOrderingData];

    if (!v22)
    {
      [REMListStorage encodeWithCoder:?];
    }

    [v4 encodeObject:0 forKey:@"reminderIDsMergeableOrdering"];
    v23 = [(REMListStorage *)self reminderIDsMergeableOrderingData];
    [v4 encodeObject:v23 forKey:@"reminderIDsMergeableOrderingData"];
  }

  resolutionTokenMap = self->_resolutionTokenMap;
  if (resolutionTokenMap)
  {
    [v4 encodeObject:resolutionTokenMap forKey:@"resolutionTokenMap"];
    [v4 encodeObject:0 forKey:@"resolutionTokenMapData"];
  }

  else
  {
    [v4 encodeObject:0 forKey:@"resolutionTokenMap"];
    v25 = [(REMListStorage *)self resolutionTokenMapData];
    [v4 encodeObject:v25 forKey:@"resolutionTokenMapData"];
  }

  v26 = [(REMListStorage *)self reminderIDsOrderingHints];
  [v4 encodeObject:v26 forKey:@"reminderIDsOrderingHints"];

  v27 = [(REMListStorage *)self reminderIDsToUndelete];
  v28 = [v27 allObjects];
  [v4 encodeObject:v28 forKey:@"reminderIDsToUndelete"];

  v29 = [(REMListStorage *)self childListIDsToUndelete];
  v30 = [v29 allObjects];
  [v4 encodeObject:v30 forKey:@"childListIDsToUndelete"];

  v31 = [(REMListStorage *)self childSmartListIDsToUndelete];
  v32 = [v31 allObjects];
  [v4 encodeObject:v32 forKey:@"childSmartListIDsToUndelete"];

  v33 = [(REMListStorage *)self sectionIDsToUndelete];
  v34 = [v33 allObjects];
  [v4 encodeObject:v34 forKey:@"sectionIDsToUndelete"];

  [v4 encodeBool:-[REMListStorage remindersICSDisplayOrderChanged](self forKey:{"remindersICSDisplayOrderChanged"), @"remindersICSDisplayOrderChanged"}];
  v35 = [(REMListStorage *)self templateID];
  [v4 encodeObject:v35 forKey:@"templateID"];

  v36 = [(REMListStorage *)self sharedOwnerName];
  [v4 encodeObject:v36 forKey:@"sharedOwnerName"];

  v37 = [(REMListStorage *)self sharedOwnerAddress];
  [v4 encodeObject:v37 forKey:@"sharedOwnerAddress"];

  [v4 encodeInteger:-[REMListStorage sharingStatus](self forKey:{"sharingStatus"), @"sharingStatus"}];
  v38 = [(REMListStorage *)self sharees];
  [v4 encodeObject:v38 forKey:@"sharees"];

  v39 = [(REMListStorage *)self sharedOwnerID];
  [v4 encodeObject:v39 forKey:@"sharedOwnerID"];

  v40 = [(REMListStorage *)self calDAVNotifications];
  [v4 encodeObject:v40 forKey:@"calDAVNotifications"];

  [v4 encodeBool:-[REMListStorage isPlaceholder](self forKey:{"isPlaceholder"), @"isPlaceholder"}];
  v41 = [(REMListStorage *)self currentUserShareParticipantID];
  [v4 encodeObject:v41 forKey:@"currentUserShareParticipantID"];

  v42 = [(REMListStorage *)self sortingStyle];
  [v4 encodeObject:v42 forKey:@"sortingStyle"];

  v43 = [(REMListStorage *)self pinnedDate];
  [v4 encodeObject:v43 forKey:@"pinnedDate"];

  v44 = [(REMListStorage *)self mostRecentTargetTemplateIdentifier];
  [v4 encodeObject:v44 forKey:@"mostRecentTargetTemplateIdentifier"];

  [v4 encodeBool:-[REMListStorage shouldUpdateSectionsOrdering](self forKey:{"shouldUpdateSectionsOrdering"), @"shouldUpdateSectionsOrdering"}];
  [v4 encodeBool:-[REMListStorage isAutoCategorizationSupportedInCurrentAppVersion](self forKey:{"isAutoCategorizationSupportedInCurrentAppVersion"), @"isAutoCategorizationSupportedInCurrentAppVersion"}];
  [v4 encodeBool:-[REMListStorage isSuggestedRemindersSupportedInCurrentAppVersion](self forKey:{"isSuggestedRemindersSupportedInCurrentAppVersion"), @"isSuggestedRemindersSupportedInCurrentAppVersion"}];
  v45 = [(REMListStorage *)self unsavedSectionIDsOrdering];
  [v4 encodeObject:v45 forKey:@"unsavedSectionIDsOrdering"];

  v46 = [(REMListStorage *)self unsavedMembershipsOfRemindersInSections];
  [v4 encodeObject:v46 forKey:@"unsavedMembershipsOfRemindersInSections"];

  v47 = [(REMListStorage *)self daBulkRequests];

  if (v47)
  {
    v48 = MEMORY[0x1E696AE40];
    v49 = [(REMListStorage *)self daBulkRequests];
    v50 = [v48 dataWithPropertyList:v49 format:100 options:0 error:0];
  }

  else
  {
    v50 = 0;
  }

  [v4 encodeObject:v50 forKey:@"daBulkRequests"];
}

- (BOOL)isEqual:(id)a3
{
  v246 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMListStorage *)self objectID];
      v8 = [(REMListStorage *)v6 objectID];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMListStorage *)self objectID];
        v11 = [(REMListStorage *)v6 objectID];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_162;
        }
      }

      v14 = [(REMListStorage *)self isGroup];
      if (v14 == [(REMListStorage *)v6 isGroup])
      {
        v15 = [(REMListStorage *)self accountID];
        v16 = [(REMListStorage *)v6 accountID];
        v17 = v16;
        if (v15 == v16)
        {
        }

        else
        {
          v18 = [(REMListStorage *)self accountID];
          v19 = [(REMListStorage *)v6 accountID];
          v20 = [v18 isEqual:v19];

          if (!v20)
          {
            goto LABEL_162;
          }
        }

        v21 = [(REMListStorage *)self externalIdentifier];
        v22 = [(REMListStorage *)v6 externalIdentifier];
        v23 = v22;
        if (v21 == v22)
        {
        }

        else
        {
          v24 = [(REMListStorage *)self externalIdentifier];
          v25 = [(REMListStorage *)v6 externalIdentifier];
          v26 = [v24 isEqual:v25];

          if (!v26)
          {
            goto LABEL_162;
          }
        }

        v27 = [(REMListStorage *)self externalModificationTag];
        v28 = [(REMListStorage *)v6 externalModificationTag];
        v29 = v28;
        if (v27 == v28)
        {
        }

        else
        {
          v30 = [(REMListStorage *)self externalModificationTag];
          v31 = [(REMListStorage *)v6 externalModificationTag];
          v32 = [v30 isEqual:v31];

          if (!v32)
          {
            goto LABEL_162;
          }
        }

        v33 = [(REMListStorage *)self daSyncToken];
        v34 = [(REMListStorage *)v6 daSyncToken];
        v35 = v34;
        if (v33 == v34)
        {
        }

        else
        {
          v36 = [(REMListStorage *)self daSyncToken];
          v37 = [(REMListStorage *)v6 daSyncToken];
          v38 = [v36 isEqual:v37];

          if (!v38)
          {
            goto LABEL_162;
          }
        }

        v39 = [(REMListStorage *)self daPushKey];
        v40 = [(REMListStorage *)v6 daPushKey];
        v41 = v40;
        if (v39 == v40)
        {
        }

        else
        {
          v42 = [(REMListStorage *)self daPushKey];
          v43 = [(REMListStorage *)v6 daPushKey];
          v44 = [v42 isEqual:v43];

          if (!v44)
          {
            goto LABEL_162;
          }
        }

        v45 = [(REMListStorage *)self daExternalIdentificationTag];
        v46 = [(REMListStorage *)v6 daExternalIdentificationTag];
        v47 = v46;
        if (v45 == v46)
        {
        }

        else
        {
          v48 = [(REMListStorage *)self daExternalIdentificationTag];
          v49 = [(REMListStorage *)v6 daExternalIdentificationTag];
          v50 = [v48 isEqual:v49];

          if (!v50)
          {
            goto LABEL_162;
          }
        }

        v51 = [(REMListStorage *)self daBulkRequests];
        v52 = [(REMListStorage *)v6 daBulkRequests];
        v53 = v52;
        if (v51 == v52)
        {
        }

        else
        {
          v54 = [(REMListStorage *)self daBulkRequests];
          v55 = [(REMListStorage *)v6 daBulkRequests];
          v56 = [v54 isEqual:v55];

          if (!v56)
          {
            goto LABEL_162;
          }
        }

        v57 = [(REMListStorage *)self daDisplayOrder];
        if (v57 != [(REMListStorage *)v6 daDisplayOrder])
        {
          goto LABEL_162;
        }

        v58 = [(REMListStorage *)self daIsEventOnlyContainer];
        if (v58 != [(REMListStorage *)v6 daIsEventOnlyContainer])
        {
          goto LABEL_162;
        }

        v59 = [(REMListStorage *)self daIsReadOnly];
        if (v59 != [(REMListStorage *)v6 daIsReadOnly])
        {
          goto LABEL_162;
        }

        v60 = [(REMListStorage *)self daIsImmutable];
        if (v60 != [(REMListStorage *)v6 daIsImmutable])
        {
          goto LABEL_162;
        }

        v61 = [(REMListStorage *)self daIsNotificationsCollection];
        if (v61 != [(REMListStorage *)v6 daIsNotificationsCollection])
        {
          goto LABEL_162;
        }

        v62 = [(REMListStorage *)self minimumSupportedVersion];
        if (v62 != [(REMListStorage *)v6 minimumSupportedVersion])
        {
          goto LABEL_162;
        }

        v63 = [(REMListStorage *)self effectiveMinimumSupportedVersion];
        if (v63 != [(REMListStorage *)v6 effectiveMinimumSupportedVersion])
        {
          goto LABEL_162;
        }

        v64 = [(REMListStorage *)self lastUserAccessDate];
        v65 = [(REMListStorage *)v6 lastUserAccessDate];
        v66 = v65;
        if (v64 == v65)
        {
        }

        else
        {
          v67 = [(REMListStorage *)self lastUserAccessDate];
          v68 = [(REMListStorage *)v6 lastUserAccessDate];
          v69 = [v67 isEqual:v68];

          if (!v69)
          {
            goto LABEL_162;
          }
        }

        v70 = [(REMListStorage *)self name];
        v71 = [(REMListStorage *)v6 name];
        v72 = v71;
        if (v70 == v71)
        {
        }

        else
        {
          v73 = [(REMListStorage *)self name];
          v74 = [(REMListStorage *)v6 name];
          v75 = [v73 isEqual:v74];

          if (!v75)
          {
            goto LABEL_162;
          }
        }

        v76 = [(REMListStorage *)self color];
        v77 = [(REMListStorage *)v6 color];
        v78 = v77;
        if (v76 == v77)
        {
        }

        else
        {
          v79 = [(REMListStorage *)self color];
          v80 = [(REMListStorage *)v6 color];
          v81 = [v79 isEqual:v80];

          if (!v81)
          {
            goto LABEL_162;
          }
        }

        v82 = [(REMListStorage *)self badgeEmblem];
        v83 = [(REMListStorage *)v6 badgeEmblem];
        v84 = v83;
        if (v82 == v83)
        {
        }

        else
        {
          v85 = [(REMListStorage *)self badgeEmblem];
          v86 = [(REMListStorage *)v6 badgeEmblem];
          v87 = [v85 isEqual:v86];

          if (!v87)
          {
            goto LABEL_162;
          }
        }

        v88 = [(REMListStorage *)self shouldCategorizeGroceryItems];
        if (v88 != [(REMListStorage *)v6 shouldCategorizeGroceryItems])
        {
          goto LABEL_162;
        }

        v89 = [(REMListStorage *)self shouldSuggestConversionToGroceryList];
        if (v89 != [(REMListStorage *)v6 shouldSuggestConversionToGroceryList])
        {
          goto LABEL_162;
        }

        v90 = [(REMListStorage *)self groceryLocaleID];
        v91 = [(REMListStorage *)v6 groceryLocaleID];
        v92 = v91;
        if (v90 == v91)
        {
        }

        else
        {
          v93 = [(REMListStorage *)self groceryLocaleID];
          v94 = [(REMListStorage *)v6 groceryLocaleID];
          v95 = [v93 isEqual:v94];

          if (!v95)
          {
            goto LABEL_162;
          }
        }

        v96 = [(REMListStorage *)self unsavedReminderIDsForCategorization];
        v97 = [(REMListStorage *)v6 unsavedReminderIDsForCategorization];
        v98 = v97;
        if (v96 == v97)
        {
        }

        else
        {
          v99 = [(REMListStorage *)self unsavedReminderIDsForCategorization];
          v100 = [(REMListStorage *)v6 unsavedReminderIDsForCategorization];
          v101 = [v99 isEqual:v100];

          if (!v101)
          {
            goto LABEL_162;
          }
        }

        v102 = [(REMListStorage *)self shouldAutoCategorizeItems];
        if (v102 != [(REMListStorage *)v6 shouldAutoCategorizeItems])
        {
          goto LABEL_162;
        }

        v103 = [(REMListStorage *)self showingLargeAttachments];
        if (v103 != [(REMListStorage *)v6 showingLargeAttachments])
        {
          goto LABEL_162;
        }

        v104 = [(REMListStorage *)self parentAccountID];
        v105 = [(REMListStorage *)v6 parentAccountID];
        v106 = v105;
        if (v104 == v105)
        {
        }

        else
        {
          v107 = [(REMListStorage *)self parentAccountID];
          v108 = [(REMListStorage *)v6 parentAccountID];
          v109 = [v107 isEqual:v108];

          if (!v109)
          {
            goto LABEL_162;
          }
        }

        v110 = [(REMListStorage *)self parentListID];
        v111 = [(REMListStorage *)v6 parentListID];
        v112 = v111;
        if (v110 == v111)
        {
        }

        else
        {
          v113 = [(REMListStorage *)self parentListID];
          v114 = [(REMListStorage *)v6 parentListID];
          v115 = [v113 isEqual:v114];

          if (!v115)
          {
            goto LABEL_162;
          }
        }

        if (!self->_reminderIDsMergeableOrdering || v6->_reminderIDsMergeableOrdering)
        {
          v116 = +[REMLogStore read];
          if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
          {
            v161 = objc_opt_class();
            v162 = NSStringFromClass(v161);
            reminderIDsMergeableOrdering = self->_reminderIDsMergeableOrdering;
            v164 = v6->_reminderIDsMergeableOrdering;
            v240 = 138543874;
            v241 = v162;
            v242 = 2112;
            v243 = reminderIDsMergeableOrdering;
            v244 = 2112;
            v245 = v164;
            _os_log_error_impl(&dword_19A0DB000, v116, OS_LOG_TYPE_ERROR, "You are about to trigger decoding the reminderIDsMergeableordering. This is probably not what you want for performance to trigger it from -isEqual:, unless you are running Tests then it's fine {class: %{public}@, self-idsOrdering: %@, other-idsOrdering: %@}", &v240, 0x20u);
          }
        }

        v117 = [(REMListStorage *)self reminderIDsMergeableOrdering];
        v118 = [(REMListStorage *)v6 reminderIDsMergeableOrdering];
        v119 = v118;
        if (v117 == v118)
        {
        }

        else
        {
          v120 = [(REMListStorage *)self reminderIDsMergeableOrdering];
          v121 = [(REMListStorage *)v6 reminderIDsMergeableOrdering];
          v122 = [v120 isEqual:v121];

          if (!v122)
          {
            goto LABEL_162;
          }
        }

        if (!self->_resolutionTokenMap || v6->_resolutionTokenMap)
        {
          v123 = +[REMLogStore read];
          if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            v165 = objc_opt_class();
            v166 = NSStringFromClass(v165);
            resolutionTokenMap = self->_resolutionTokenMap;
            v168 = v6->_resolutionTokenMap;
            v240 = 138543874;
            v241 = v166;
            v242 = 2112;
            v243 = resolutionTokenMap;
            v244 = 2112;
            v245 = v168;
            _os_log_error_impl(&dword_19A0DB000, v123, OS_LOG_TYPE_ERROR, "You are about to trigger decoding the resolution token map from JSON data. This is probably not what you want for performance to trigger it from -isEqual:, unless you are running Tests then it's fine {class: %{public}@, self-map: %@, other-map: %@}", &v240, 0x20u);
          }
        }

        v124 = [(REMListStorage *)self resolutionTokenMap];
        v125 = [(REMListStorage *)v6 resolutionTokenMap];
        v126 = v125;
        if (v124 == v125)
        {
        }

        else
        {
          v127 = [(REMListStorage *)self resolutionTokenMap];
          v128 = [(REMListStorage *)v6 resolutionTokenMap];
          v129 = [v127 isEqual:v128];

          if (!v129)
          {
            goto LABEL_162;
          }
        }

        v130 = [(REMListStorage *)self reminderIDsToUndelete];
        v131 = [(REMListStorage *)v6 reminderIDsToUndelete];
        v132 = v131;
        if (v130 == v131)
        {
        }

        else
        {
          v133 = [(REMListStorage *)self reminderIDsToUndelete];
          v134 = [(REMListStorage *)v6 reminderIDsToUndelete];
          v135 = [v133 isEqual:v134];

          if (!v135)
          {
            goto LABEL_162;
          }
        }

        v136 = [(REMListStorage *)self childListIDsToUndelete];
        v137 = [(REMListStorage *)v6 childListIDsToUndelete];
        v138 = v137;
        if (v136 == v137)
        {
        }

        else
        {
          v139 = [(REMListStorage *)self childListIDsToUndelete];
          v140 = [(REMListStorage *)v6 childListIDsToUndelete];
          v141 = [v139 isEqual:v140];

          if (!v141)
          {
            goto LABEL_162;
          }
        }

        v142 = [(REMListStorage *)self childSmartListIDsToUndelete];
        v143 = [(REMListStorage *)v6 childSmartListIDsToUndelete];
        v144 = v143;
        if (v142 == v143)
        {
        }

        else
        {
          v145 = [(REMListStorage *)self childSmartListIDsToUndelete];
          v146 = [(REMListStorage *)v6 childSmartListIDsToUndelete];
          v147 = [v145 isEqual:v146];

          if (!v147)
          {
            goto LABEL_162;
          }
        }

        v148 = [(REMListStorage *)self sectionIDsToUndelete];
        v149 = [(REMListStorage *)v6 sectionIDsToUndelete];
        v150 = v149;
        if (v148 == v149)
        {
        }

        else
        {
          v151 = [(REMListStorage *)self sectionIDsToUndelete];
          v152 = [(REMListStorage *)v6 sectionIDsToUndelete];
          v153 = [v151 isEqual:v152];

          if (!v153)
          {
            goto LABEL_162;
          }
        }

        v154 = [(REMListStorage *)self remindersICSDisplayOrderChanged];
        if (v154 == [(REMListStorage *)v6 remindersICSDisplayOrderChanged])
        {
          v155 = [(REMListStorage *)self templateID];
          v156 = [(REMListStorage *)v6 templateID];
          v157 = v156;
          if (v155 == v156)
          {
          }

          else
          {
            v158 = [(REMListStorage *)self templateID];
            v159 = [(REMListStorage *)v6 templateID];
            v160 = [v158 isEqual:v159];

            if (!v160)
            {
              goto LABEL_162;
            }
          }

          v169 = [(REMListStorage *)self sharedOwnerName];
          v170 = [(REMListStorage *)v6 sharedOwnerName];
          v171 = v170;
          if (v169 == v170)
          {
          }

          else
          {
            v172 = [(REMListStorage *)self sharedOwnerName];
            v173 = [(REMListStorage *)v6 sharedOwnerName];
            v174 = [v172 isEqual:v173];

            if (!v174)
            {
              goto LABEL_162;
            }
          }

          v175 = [(REMListStorage *)self sharedOwnerAddress];
          v176 = [(REMListStorage *)v6 sharedOwnerAddress];
          v177 = v176;
          if (v175 == v176)
          {
          }

          else
          {
            v178 = [(REMListStorage *)self sharedOwnerAddress];
            v179 = [(REMListStorage *)v6 sharedOwnerAddress];
            v180 = [v178 isEqual:v179];

            if (!v180)
            {
              goto LABEL_162;
            }
          }

          v181 = [(REMListStorage *)self sharingStatus];
          if (v181 == [(REMListStorage *)v6 sharingStatus])
          {
            v182 = [(REMListStorage *)self sharees];
            v183 = [(REMListStorage *)v6 sharees];
            v184 = v183;
            if (v182 == v183)
            {
            }

            else
            {
              v185 = [(REMListStorage *)self sharees];
              v186 = [(REMListStorage *)v6 sharees];
              v187 = [v185 isEqual:v186];

              if (!v187)
              {
                goto LABEL_162;
              }
            }

            v188 = [(REMListStorage *)self sharedOwnerID];
            v189 = [(REMListStorage *)v6 sharedOwnerID];
            v190 = v189;
            if (v188 == v189)
            {
            }

            else
            {
              v191 = [(REMListStorage *)self sharedOwnerID];
              v192 = [(REMListStorage *)v6 sharedOwnerID];
              v193 = [v191 isEqual:v192];

              if (!v193)
              {
                goto LABEL_162;
              }
            }

            v194 = [(REMListStorage *)self calDAVNotifications];
            v195 = [(REMListStorage *)v6 calDAVNotifications];
            v196 = v195;
            if (v194 == v195)
            {
            }

            else
            {
              v197 = [(REMListStorage *)self calDAVNotifications];
              v198 = [(REMListStorage *)v6 calDAVNotifications];
              v199 = [v197 isEqual:v198];

              if (!v199)
              {
                goto LABEL_162;
              }
            }

            v200 = [(REMListStorage *)self isPlaceholder];
            if (v200 == [(REMListStorage *)v6 isPlaceholder])
            {
              v201 = [(REMListStorage *)self currentUserShareParticipantID];
              v202 = [(REMListStorage *)v6 currentUserShareParticipantID];
              v203 = v202;
              if (v201 == v202)
              {
              }

              else
              {
                v204 = [(REMListStorage *)self currentUserShareParticipantID];
                v205 = [(REMListStorage *)v6 currentUserShareParticipantID];
                v206 = [v204 isEqual:v205];

                if (!v206)
                {
                  goto LABEL_162;
                }
              }

              v207 = [(REMListStorage *)self sortingStyle];
              v208 = [(REMListStorage *)v6 sortingStyle];
              v209 = v208;
              if (v207 == v208)
              {
              }

              else
              {
                v210 = [(REMListStorage *)self sortingStyle];
                v211 = [(REMListStorage *)v6 sortingStyle];
                v212 = [v210 isEqual:v211];

                if (!v212)
                {
                  goto LABEL_162;
                }
              }

              v213 = [(REMListStorage *)self pinnedDate];
              v214 = [(REMListStorage *)v6 pinnedDate];
              v215 = v214;
              if (v213 == v214)
              {
              }

              else
              {
                v216 = [(REMListStorage *)self pinnedDate];
                v217 = [(REMListStorage *)v6 pinnedDate];
                v218 = [v216 isEqual:v217];

                if (!v218)
                {
                  goto LABEL_162;
                }
              }

              v219 = [(REMListStorage *)self mostRecentTargetTemplateIdentifier];
              v220 = [(REMListStorage *)v6 mostRecentTargetTemplateIdentifier];
              v221 = v220;
              if (v219 == v220)
              {
              }

              else
              {
                v222 = [(REMListStorage *)self mostRecentTargetTemplateIdentifier];
                v223 = [(REMListStorage *)v6 mostRecentTargetTemplateIdentifier];
                v224 = [v222 isEqual:v223];

                if (!v224)
                {
                  goto LABEL_162;
                }
              }

              v225 = [(REMListStorage *)self shouldUpdateSectionsOrdering];
              if (v225 != [(REMListStorage *)v6 shouldUpdateSectionsOrdering])
              {
                goto LABEL_162;
              }

              v226 = [(REMListStorage *)self isAutoCategorizationSupportedInCurrentAppVersion];
              if (v226 != [(REMListStorage *)v6 isAutoCategorizationSupportedInCurrentAppVersion])
              {
                goto LABEL_162;
              }

              v227 = [(REMListStorage *)self isSuggestedRemindersSupportedInCurrentAppVersion];
              if (v227 != [(REMListStorage *)v6 isSuggestedRemindersSupportedInCurrentAppVersion])
              {
                goto LABEL_162;
              }

              v228 = [(REMListStorage *)self unsavedSectionIDsOrdering];
              v229 = [(REMListStorage *)v6 unsavedSectionIDsOrdering];
              v230 = v229;
              if (v228 == v229)
              {
              }

              else
              {
                v231 = [(REMListStorage *)self unsavedSectionIDsOrdering];
                v232 = [(REMListStorage *)v6 unsavedSectionIDsOrdering];
                v233 = [v231 isEqual:v232];

                if (!v233)
                {
                  goto LABEL_162;
                }
              }

              v236 = [(REMListStorage *)self unsavedMembershipsOfRemindersInSections];
              v237 = [(REMListStorage *)v6 unsavedMembershipsOfRemindersInSections];
              if (v236 == v237)
              {
                v13 = 1;
              }

              else
              {
                v238 = [(REMListStorage *)self unsavedMembershipsOfRemindersInSections];
                v239 = [(REMListStorage *)v6 unsavedMembershipsOfRemindersInSections];
                v13 = [v238 isEqual:v239];
              }

              goto LABEL_163;
            }
          }
        }
      }
    }

LABEL_162:
    v13 = 0;
LABEL_163:

    goto LABEL_164;
  }

  v13 = 1;
LABEL_164:

  v234 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMListStorage *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMListStorage *)self objectID];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMListStorage *)self name];
  v6 = [(REMListStorage *)self objectID];
  v7 = [v3 stringWithFormat:@"<%@: %p %@ %@ [%ld.%ld]>", v4, self, v5, v6, self->_storeGeneration, self->_copyGeneration];

  return v7;
}

- (id)ekColor
{
  v2 = [(REMListStorage *)self color];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [REMColor colorWithHexString:@"#007AFF"];
  }

  v5 = v4;

  return v5;
}

- (NSOrderedSet)reminderIDsMergeableOrdering
{
  v24 = *MEMORY[0x1E69E9840];
  p_reminderIDsMergeableOrdering = &self->_reminderIDsMergeableOrdering;
  v4 = self->_reminderIDsMergeableOrdering;
  if (v4)
  {
    v5 = v4;
    goto LABEL_15;
  }

  v6 = [(REMListStorage *)self reminderIDsMergeableOrderingData];
  if (!v6)
  {
    v13 = +[REMLogStore read];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(REMListStorage *)self reminderIDsMergeableOrdering];
    }

    v8 = [REMError internalErrorWithDebugDescription:@"reminderIDsMergeableOrderingData is nil when trying to deserialize from list storage"];
    goto LABEL_11;
  }

  v17 = 0;
  v7 = [objc_opt_class() reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:v6 error:&v17];
  v8 = v17;
  v9 = +[REMLogStore read];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(REMListStorage *)self objectID];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
    *buf = 138543874;
    v19 = v10;
    v20 = 2048;
    v21 = self;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_19A0DB000, v9, OS_LOG_TYPE_INFO, "REMListStorage reminderIDsMergeableOrdering deserialized {objectID: %{public}@, self: %p, orderedSet.count: %@}", buf, 0x20u);
  }

  if (!v7)
  {
LABEL_11:
    v14 = +[REMLogStore read];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [REMListStorage reminderIDsMergeableOrdering];
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    goto LABEL_14;
  }

  reminderIDsMergeableOrderingData = self->_reminderIDsMergeableOrderingData;
  self->_reminderIDsMergeableOrderingData = 0;

LABEL_14:
  objc_storeStrong(p_reminderIDsMergeableOrdering, v7);
  v5 = v7;

LABEL_15:
  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setReminderIDsMergeableOrdering:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_reminderIDsMergeableOrdering, a3);
  if (v6)
  {
    reminderIDsMergeableOrderingData = self->_reminderIDsMergeableOrderingData;
    self->_reminderIDsMergeableOrderingData = 0;
  }
}

+ (id)newObjectID
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [a1 objectIDWithUUID:v3];

  return v4;
}

+ (id)objectIDWithUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:v4 entityName:v5];

  return v6;
}

- (BOOL)isUnsupported
{
  v2 = [(REMListStorage *)self effectiveMinimumSupportedVersion];

  return rem_isUnsupportedVersionByRuntime(v2);
}

- (id)cdKeyToStorageKeyMap
{
  if (cdKeyToStorageKeyMap_onceToken_1 != -1)
  {
    [REMListStorage cdKeyToStorageKeyMap];
  }

  v3 = cdKeyToStorageKeyMap_mapping_1;

  return v3;
}

- (REMResolutionTokenMap)resolutionTokenMap
{
  p_resolutionTokenMap = &self->_resolutionTokenMap;
  v4 = self->_resolutionTokenMap;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(REMListStorage *)self resolutionTokenMapData];
    if (!v6)
    {
      v7 = +[REMLogStore read];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [REMListStorage resolutionTokenMap];
      }
    }

    v8 = [(REMListStorage *)self cdKeyToStorageKeyMap];
    v9 = [REMResolutionTokenMap resolutionTokenMapWithJSONData:v6 keyMap:v8];

    objc_storeStrong(p_resolutionTokenMap, v9);
    v5 = v9;
  }

  return v5;
}

+ (id)reminderIDUUIDStringsJSONDataFromReminderIDsMergeableOrdering:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v21 + 1) + 8 * i) uuid];
        v13 = [v12 UUIDString];

        if (v13)
        {
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v20 = 0;
  v14 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:0 error:&v20];
  v15 = v20;
  if (!v14)
  {
    v16 = +[REMLogStore read];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      +[REMListStorage reminderIDUUIDStringsJSONDataFromReminderIDsMergeableOrdering:error:];
    }
  }

  if (a4)
  {
    v17 = v15;
    *a4 = v15;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (![v5 length])
    {
      v21 = [MEMORY[0x1E695DFA0] orderedSet];
      goto LABEL_29;
    }

    v7 = objc_autoreleasePoolPush();
    v33 = 0;
    v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:&v33];
    v9 = v33;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v9;
        v27 = v7;
        v28 = a4;
        v25 = v8;
        v10 = v8;
        v11 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v10, "count")}];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v29 objects:v36 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v30;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v30 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v29 + 1) + 8 * i);
              v18 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v17];
              if (v18)
              {
                v19 = [REMReminderStorage objectIDWithUUID:v18];
                [v11 addObject:v19];
              }

              else
              {
                v19 = +[REMLogStore read];
                if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412290;
                  v35 = v17;
                  _os_log_fault_impl(&dword_19A0DB000, v19, OS_LOG_TYPE_FAULT, "Failed to create uuid from string. Skipping objectID from list {uuidString: %@}", buf, 0xCu);
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v29 objects:v36 count:16];
          }

          while (v14);
        }

        a4 = v28;
        v9 = v26;
        v7 = v27;
        v8 = v25;
        goto LABEL_26;
      }

      v12 = +[REMLogStore read];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        +[REMListStorage reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:error:];
      }
    }

    else
    {
      v12 = +[REMLogStore read];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        +[REMListStorage reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:error:];
      }
    }

    v11 = 0;
LABEL_26:

    objc_autoreleasePoolPop(v7);
    if (a4)
    {
      v22 = v9;
      *a4 = v9;
    }

    v21 = v11;

    goto LABEL_29;
  }

  v20 = +[REMLogStore read];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    +[REMListStorage reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:error:];
  }

  v21 = 0;
LABEL_29:

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)initWithObjectID:accountID:name:isGroup:reminderIDsMergeableOrdering:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3(&dword_19A0DB000, v0, v1, "Failed to serialize provided reminderIDsMergeableOrdering. Using emptyArray {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_4(&dword_19A0DB000, v0, v1, "Attempted to decode REMListStorage missing objectID, name, reminderIDs {objectID: %{public}@, name: %{sensitive}@}");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = +[REMLogStore read];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3(&dword_19A0DB000, v0, v1, "Unknown REMListSharingStatus %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[REMLogStore read];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = [a1 objectID];
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)reminderIDsMergeableOrdering
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_ERROR, "Failed to read reminderIDsMergeableOrdering from data. Returning empty set {error: %@}", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)resolutionTokenMap
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_ERROR, "Nil resolutionTokenMapData when reading resolutionTokenMap from list storage. Initialize an empty map {list: %@}", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)reminderIDUUIDStringsJSONDataFromReminderIDsMergeableOrdering:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_4(&dword_19A0DB000, v0, v1, "Failed to serialize uuidStrings {error: %@, uuidStrings: %@}");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v1 = v0;
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_4(&dword_19A0DB000, v0, v1, "Failed to deserialize reminderIDsMergeableOrdering data. Returning nil {error: %@, list: %@}");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:error:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3(&dword_19A0DB000, v0, v1, "Missing reminderIDsMergeableOrderingData. Returning nil {list: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end