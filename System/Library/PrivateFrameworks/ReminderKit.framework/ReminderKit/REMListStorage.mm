@interface REMListStorage
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
+ (id)reminderIDUUIDStringsJSONDataFromReminderIDsMergeableOrdering:(id)ordering error:(id *)error;
+ (id)reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUnsupported;
- (NSOrderedSet)reminderIDsMergeableOrdering;
- (NSString)displayName;
- (REMListStorage)initWithCoder:(id)coder;
- (REMListStorage)initWithObjectID:(id)d accountID:(id)iD name:(id)name;
- (REMListStorage)initWithObjectID:(id)d accountID:(id)iD name:(id)name isGroup:(BOOL)group reminderIDsMergeableOrderingData:(id)data;
- (REMResolutionTokenMap)resolutionTokenMap;
- (id)cdKeyToStorageKeyMap;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)ekColor;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)reminderIDsMergeableOrdering;
- (void)resolutionTokenMap;
- (void)setReminderIDsMergeableOrdering:(id)ordering;
- (void)setStoreGenerationIfNeeded:(unint64_t)needed;
@end

@implementation REMListStorage

- (NSString)displayName
{
  name = [(REMListStorage *)self name];
  v4 = [REMDisplayNameUtils displayNameFromListName:name isPlaceholder:[(REMListStorage *)self isPlaceholder]];

  return v4;
}

- (REMListStorage)initWithObjectID:(id)d accountID:(id)iD name:(id)name
{
  v8 = MEMORY[0x1E695DFB8];
  nameCopy = name;
  iDCopy = iD;
  dCopy = d;
  orderedSet = [v8 orderedSet];
  v13 = [(REMListStorage *)self initWithObjectID:dCopy accountID:iDCopy name:nameCopy isGroup:0 reminderIDsMergeableOrdering:orderedSet];

  return v13;
}

- (REMListStorage)initWithObjectID:(id)d accountID:(id)iD name:(id)name isGroup:(BOOL)group reminderIDsMergeableOrderingData:(id)data
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  dataCopy = data;
  v42.receiver = self;
  v42.super_class = REMListStorage;
  v17 = [(REMListStorage *)&v42 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_objectID, d);
    objc_storeStrong(&v18->_accountID, iD);
    v18->_isGroup = group;
    objc_storeStrong(&v18->_name, name);
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

    dictionary = [MEMORY[0x1E695DF20] dictionary];
    reminderIDsOrderingHints = v18->_reminderIDsOrderingHints;
    v18->_reminderIDsOrderingHints = dictionary;

    if (dataCopy)
    {
      data = dataCopy;
    }

    else
    {
      data = [MEMORY[0x1E695DEF0] data];
    }

    reminderIDsMergeableOrderingData = v18->_reminderIDsMergeableOrderingData;
    v18->_reminderIDsMergeableOrderingData = data;

    v29 = objc_alloc_init(REMResolutionTokenMap);
    resolutionTokenMap = v18->_resolutionTokenMap;
    v18->_resolutionTokenMap = v29;

    data2 = [MEMORY[0x1E695DEF0] data];
    resolutionTokenMapData = v18->_resolutionTokenMapData;
    v18->_resolutionTokenMapData = data2;

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [REMListStorage alloc];
  objectID = [(REMListStorage *)self objectID];
  accountID = [(REMListStorage *)self accountID];
  name = [(REMListStorage *)self name];
  isGroup = [(REMListStorage *)self isGroup];
  reminderIDsMergeableOrderingData = [(REMListStorage *)self reminderIDsMergeableOrderingData];
  v10 = [(REMListStorage *)v4 initWithObjectID:objectID accountID:accountID name:name isGroup:isGroup reminderIDsMergeableOrderingData:reminderIDsMergeableOrderingData];

  v11 = [(NSOrderedSet *)self->_reminderIDsMergeableOrdering copy];
  [(REMListStorage *)v10 setReminderIDsMergeableOrdering:v11];

  [(REMListStorage *)v10 setIsGroup:[(REMListStorage *)self isGroup]];
  externalIdentifier = [(REMListStorage *)self externalIdentifier];
  [(REMListStorage *)v10 setExternalIdentifier:externalIdentifier];

  externalModificationTag = [(REMListStorage *)self externalModificationTag];
  [(REMListStorage *)v10 setExternalModificationTag:externalModificationTag];

  daSyncToken = [(REMListStorage *)self daSyncToken];
  [(REMListStorage *)v10 setDaSyncToken:daSyncToken];

  daPushKey = [(REMListStorage *)self daPushKey];
  [(REMListStorage *)v10 setDaPushKey:daPushKey];

  daExternalIdentificationTag = [(REMListStorage *)self daExternalIdentificationTag];
  [(REMListStorage *)v10 setDaExternalIdentificationTag:daExternalIdentificationTag];

  daBulkRequests = [(REMListStorage *)self daBulkRequests];
  [(REMListStorage *)v10 setDaBulkRequests:daBulkRequests];

  [(REMListStorage *)v10 setDaDisplayOrder:[(REMListStorage *)self daDisplayOrder]];
  [(REMListStorage *)v10 setDaIsEventOnlyContainer:[(REMListStorage *)self daIsEventOnlyContainer]];
  [(REMListStorage *)v10 setDaIsReadOnly:[(REMListStorage *)self daIsReadOnly]];
  [(REMListStorage *)v10 setDaIsImmutable:[(REMListStorage *)self daIsImmutable]];
  [(REMListStorage *)v10 setDaIsNotificationsCollection:[(REMListStorage *)self daIsNotificationsCollection]];
  [(REMListStorage *)v10 setMinimumSupportedVersion:[(REMListStorage *)self minimumSupportedVersion]];
  [(REMListStorage *)v10 setEffectiveMinimumSupportedVersion:[(REMListStorage *)self effectiveMinimumSupportedVersion]];
  color = [(REMListStorage *)self color];
  [(REMListStorage *)v10 setColor:color];

  badgeEmblem = [(REMListStorage *)self badgeEmblem];
  [(REMListStorage *)v10 setBadgeEmblem:badgeEmblem];

  [(REMListStorage *)v10 setShouldCategorizeGroceryItems:[(REMListStorage *)self shouldCategorizeGroceryItems]];
  [(REMListStorage *)v10 setShouldSuggestConversionToGroceryList:[(REMListStorage *)self shouldSuggestConversionToGroceryList]];
  groceryLocaleID = [(REMListStorage *)self groceryLocaleID];
  [(REMListStorage *)v10 setGroceryLocaleID:groceryLocaleID];

  unsavedReminderIDsForCategorization = [(REMListStorage *)self unsavedReminderIDsForCategorization];
  v22 = [unsavedReminderIDsForCategorization copy];
  [(REMListStorage *)v10 setUnsavedReminderIDsForCategorization:v22];

  [(REMListStorage *)v10 setShouldAutoCategorizeItems:[(REMListStorage *)self shouldAutoCategorizeItems]];
  lastUserAccessDate = [(REMListStorage *)self lastUserAccessDate];
  [(REMListStorage *)v10 setLastUserAccessDate:lastUserAccessDate];

  [(REMListStorage *)v10 setShowingLargeAttachments:[(REMListStorage *)self showingLargeAttachments]];
  parentAccountID = [(REMListStorage *)self parentAccountID];
  [(REMListStorage *)v10 setParentAccountID:parentAccountID];

  parentListID = [(REMListStorage *)self parentListID];
  [(REMListStorage *)v10 setParentListID:parentListID];

  v26 = [(REMResolutionTokenMap *)self->_resolutionTokenMap copy];
  resolutionTokenMap = v10->_resolutionTokenMap;
  v10->_resolutionTokenMap = v26;

  resolutionTokenMapData = [(REMListStorage *)self resolutionTokenMapData];
  [(REMListStorage *)v10 setResolutionTokenMapData:resolutionTokenMapData];

  reminderIDsOrderingHints = [(REMListStorage *)self reminderIDsOrderingHints];
  v30 = [reminderIDsOrderingHints copy];
  [(REMListStorage *)v10 setReminderIDsOrderingHints:v30];

  reminderIDsToUndelete = [(REMListStorage *)self reminderIDsToUndelete];
  v32 = [reminderIDsToUndelete copy];
  [(REMListStorage *)v10 setReminderIDsToUndelete:v32];

  childListIDsToUndelete = [(REMListStorage *)self childListIDsToUndelete];
  v34 = [childListIDsToUndelete copy];
  [(REMListStorage *)v10 setChildListIDsToUndelete:v34];

  childSmartListIDsToUndelete = [(REMListStorage *)self childSmartListIDsToUndelete];
  v36 = [childSmartListIDsToUndelete copy];
  [(REMListStorage *)v10 setChildSmartListIDsToUndelete:v36];

  sectionIDsToUndelete = [(REMListStorage *)self sectionIDsToUndelete];
  v38 = [sectionIDsToUndelete copy];
  [(REMListStorage *)v10 setSectionIDsToUndelete:v38];

  [(REMListStorage *)v10 setRemindersICSDisplayOrderChanged:[(REMListStorage *)self remindersICSDisplayOrderChanged]];
  templateID = [(REMListStorage *)self templateID];
  [(REMListStorage *)v10 setTemplateID:templateID];

  sharedOwnerName = [(REMListStorage *)self sharedOwnerName];
  [(REMListStorage *)v10 setSharedOwnerName:sharedOwnerName];

  sharedOwnerAddress = [(REMListStorage *)self sharedOwnerAddress];
  [(REMListStorage *)v10 setSharedOwnerAddress:sharedOwnerAddress];

  [(REMListStorage *)v10 setSharingStatus:[(REMListStorage *)self sharingStatus]];
  sharees = [(REMListStorage *)self sharees];
  [(REMListStorage *)v10 setSharees:sharees];

  sharedOwnerID = [(REMListStorage *)self sharedOwnerID];
  [(REMListStorage *)v10 setSharedOwnerID:sharedOwnerID];

  calDAVNotifications = [(REMListStorage *)self calDAVNotifications];
  [(REMListStorage *)v10 setCalDAVNotifications:calDAVNotifications];

  [(REMListStorage *)v10 setIsPlaceholder:[(REMListStorage *)self isPlaceholder]];
  currentUserShareParticipantID = [(REMListStorage *)self currentUserShareParticipantID];
  [(REMListStorage *)v10 setCurrentUserShareParticipantID:currentUserShareParticipantID];

  sortingStyle = [(REMListStorage *)self sortingStyle];
  [(REMListStorage *)v10 setSortingStyle:sortingStyle];

  pinnedDate = [(REMListStorage *)self pinnedDate];
  [(REMListStorage *)v10 setPinnedDate:pinnedDate];

  mostRecentTargetTemplateIdentifier = [(REMListStorage *)self mostRecentTargetTemplateIdentifier];
  [(REMListStorage *)v10 setMostRecentTargetTemplateIdentifier:mostRecentTargetTemplateIdentifier];

  [(REMListStorage *)v10 setShouldUpdateSectionsOrdering:[(REMListStorage *)self shouldUpdateSectionsOrdering]];
  [(REMListStorage *)v10 setIsAutoCategorizationSupportedInCurrentAppVersion:[(REMListStorage *)self isAutoCategorizationSupportedInCurrentAppVersion]];
  [(REMListStorage *)v10 setIsSuggestedRemindersSupportedInCurrentAppVersion:[(REMListStorage *)self isSuggestedRemindersSupportedInCurrentAppVersion]];
  unsavedSectionIDsOrdering = [(REMListStorage *)self unsavedSectionIDsOrdering];
  v50 = [unsavedSectionIDsOrdering copy];
  [(REMListStorage *)v10 setUnsavedSectionIDsOrdering:v50];

  unsavedMembershipsOfRemindersInSections = [(REMListStorage *)self unsavedMembershipsOfRemindersInSections];
  v52 = [unsavedMembershipsOfRemindersInSections copy];
  [(REMListStorage *)v10 setUnsavedMembershipsOfRemindersInSections:v52];

  v10->_storeGeneration = self->_storeGeneration;
  v10->_copyGeneration = self->_copyGeneration + 1;
  return v10;
}

- (REMListStorage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v117 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [coderCopy decodeBoolForKey:@"isGroup"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v116 = [coderCopy decodeObjectOfClasses:v10 forKey:@"reminderIDsToUndelete"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = v12;
  v15 = v5;
  v16 = [v11 setWithObjects:{v14, v13, 0}];
  v115 = [coderCopy decodeObjectOfClasses:v16 forKey:@"childListIDsToUndelete"];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = v18;
  v21 = v6;
  v22 = [v17 setWithObjects:{v20, v19, 0}];
  v114 = [coderCopy decodeObjectOfClasses:v22 forKey:@"childSmartListIDsToUndelete"];

  v23 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
  v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"sectionIDsToUndelete"];

  if (v15 && v21)
  {
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reminderIDsMergeableOrderingData"];
    v28 = [(REMListStorage *)self initWithObjectID:v15 accountID:v117 name:v21 isGroup:v7 reminderIDsMergeableOrderingData:v27];
    if (v28)
    {
      v111 = v27;
      v29 = MEMORY[0x1E695DFD8];
      v30 = objc_opt_class();
      v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
      v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"reminderIDsMergeableOrdering"];

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
      v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
      color = v28->_color;
      v28->_color = v39;

      v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"badgeEmblem"];
      badgeEmblem = v28->_badgeEmblem;
      v28->_badgeEmblem = v41;

      v28->_shouldCategorizeGroceryItems = [coderCopy decodeBoolForKey:@"shouldCategorizeGroceryItems"];
      v28->_shouldSuggestConversionToGroceryList = [coderCopy decodeBoolForKey:@"shouldSuggestConversionToGroceryList"];
      v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groceryLocaleID"];
      groceryLocaleID = v28->_groceryLocaleID;
      v28->_groceryLocaleID = v43;

      v45 = MEMORY[0x1E695DFD8];
      v46 = objc_opt_class();
      v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
      v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"unsavedReminderIDsForCategorization"];

      v109 = v48;
      objc_storeStrong(&v28->_unsavedReminderIDsForCategorization, v48);
      v28->_shouldAutoCategorizeItems = [coderCopy decodeBoolForKey:@"shouldAutoCategorizeItems"];
      v28->_showingLargeAttachments = [coderCopy decodeBoolForKey:@"showingLargeAttachments"];
      v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentAccountID"];
      parentAccountID = v28->_parentAccountID;
      v28->_parentAccountID = v49;

      v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentListID"];
      parentListID = v28->_parentListID;
      v28->_parentListID = v51;

      v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMapData"];
      v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMap"];
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
      v62 = [coderCopy decodeObjectOfClasses:v61 forKey:@"reminderIDsOrderingHints"];
      v63 = v62;
      if (v62)
      {
        dictionary = v62;
      }

      else
      {
        dictionary = [MEMORY[0x1E695DF20] dictionary];
      }

      reminderIDsOrderingHints = v28->_reminderIDsOrderingHints;
      v28->_reminderIDsOrderingHints = dictionary;

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

      v28->_remindersICSDisplayOrderChanged = [coderCopy decodeBoolForKey:@"remindersICSDisplayOrderChanged"];
      v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
      [(REMListStorage *)v28 setExternalIdentifier:v74];

      v75 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalModificationTag"];
      [(REMListStorage *)v28 setExternalModificationTag:v75];

      v76 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daSyncToken"];
      [(REMListStorage *)v28 setDaSyncToken:v76];

      v77 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daPushKey"];
      [(REMListStorage *)v28 setDaPushKey:v77];

      v78 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daExternalIdentificationTag"];
      [(REMListStorage *)v28 setDaExternalIdentificationTag:v78];

      -[REMListStorage setDaDisplayOrder:](v28, "setDaDisplayOrder:", [coderCopy decodeIntegerForKey:@"daDisplayOrder"]);
      -[REMListStorage setDaIsEventOnlyContainer:](v28, "setDaIsEventOnlyContainer:", [coderCopy decodeBoolForKey:@"daIsEventOnlyContainer"]);
      -[REMListStorage setDaIsReadOnly:](v28, "setDaIsReadOnly:", [coderCopy decodeBoolForKey:@"daIsReadOnly"]);
      -[REMListStorage setDaIsImmutable:](v28, "setDaIsImmutable:", [coderCopy decodeBoolForKey:@"daIsImmutable"]);
      -[REMListStorage setDaIsNotificationsCollection:](v28, "setDaIsNotificationsCollection:", [coderCopy decodeBoolForKey:@"daIsNotificationsCollection"]);
      -[REMListStorage setMinimumSupportedVersion:](v28, "setMinimumSupportedVersion:", [coderCopy decodeIntegerForKey:@"minimumSupportedVersion"]);
      -[REMListStorage setEffectiveMinimumSupportedVersion:](v28, "setEffectiveMinimumSupportedVersion:", [coderCopy decodeIntegerForKey:@"effectiveMinimumSupportedVersion"]);
      v79 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUserAccessDate"];
      [(REMListStorage *)v28 setLastUserAccessDate:v79];

      v80 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"templateID"];
      [(REMListStorage *)v28 setTemplateID:v80];

      v81 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedOwnerName"];
      [(REMListStorage *)v28 setSharedOwnerName:v81];

      v82 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedOwnerAddress"];
      [(REMListStorage *)v28 setSharedOwnerAddress:v82];

      v83 = [coderCopy decodeIntegerForKey:@"sharingStatus"];
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
      v88 = [coderCopy decodeObjectOfClasses:v87 forKey:@"sharees"];
      [(REMListStorage *)v28 setSharees:v88];

      v89 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedOwnerID"];
      [(REMListStorage *)v28 setSharedOwnerID:v89];

      v90 = MEMORY[0x1E695DFD8];
      v91 = objc_opt_class();
      v92 = [v90 setWithObjects:{v91, objc_opt_class(), 0}];
      v93 = [coderCopy decodeObjectOfClasses:v92 forKey:@"calDAVNotifications"];
      [(REMListStorage *)v28 setCalDAVNotifications:v93];

      -[REMListStorage setIsPlaceholder:](v28, "setIsPlaceholder:", [coderCopy decodeBoolForKey:@"isPlaceholder"]);
      v94 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentUserShareParticipantID"];
      [(REMListStorage *)v28 setCurrentUserShareParticipantID:v94];

      v95 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sortingStyle"];
      [(REMListStorage *)v28 setSortingStyle:v95];

      v96 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pinnedDate"];
      [(REMListStorage *)v28 setPinnedDate:v96];

      v97 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentTargetTemplateIdentifier"];
      [(REMListStorage *)v28 setMostRecentTargetTemplateIdentifier:v97];

      -[REMListStorage setShouldUpdateSectionsOrdering:](v28, "setShouldUpdateSectionsOrdering:", [coderCopy decodeBoolForKey:@"shouldUpdateSectionsOrdering"]);
      -[REMListStorage setIsAutoCategorizationSupportedInCurrentAppVersion:](v28, "setIsAutoCategorizationSupportedInCurrentAppVersion:", [coderCopy decodeBoolForKey:@"isAutoCategorizationSupportedInCurrentAppVersion"]);
      -[REMListStorage setIsSuggestedRemindersSupportedInCurrentAppVersion:](v28, "setIsSuggestedRemindersSupportedInCurrentAppVersion:", [coderCopy decodeBoolForKey:@"isSuggestedRemindersSupportedInCurrentAppVersion"]);
      v98 = MEMORY[0x1E695DFD8];
      v99 = objc_opt_class();
      v100 = [v98 setWithObjects:{v99, objc_opt_class(), 0}];
      v101 = [coderCopy decodeObjectOfClasses:v100 forKey:@"unsavedSectionIDsOrdering"];
      [(REMListStorage *)v28 setUnsavedSectionIDsOrdering:v101];

      v102 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unsavedMembershipsOfRemindersInSections"];
      [(REMListStorage *)v28 setUnsavedMembershipsOfRemindersInSections:v102];

      v103 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daBulkRequests"];
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
    selfCopy = self;
  }

  else
  {
    v36 = +[REMLogStore read];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      [REMListStorage initWithCoder:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setStoreGenerationIfNeeded:(unint64_t)needed
{
  if (!self->_storeGeneration)
  {
    self->_storeGeneration = needed;
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectID = [(REMListStorage *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];

  accountID = [(REMListStorage *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  [coderCopy encodeBool:-[REMListStorage isGroup](self forKey:{"isGroup"), @"isGroup"}];
  externalIdentifier = [(REMListStorage *)self externalIdentifier];
  [coderCopy encodeObject:externalIdentifier forKey:@"externalIdentifier"];

  externalModificationTag = [(REMListStorage *)self externalModificationTag];
  [coderCopy encodeObject:externalModificationTag forKey:@"externalModificationTag"];

  daSyncToken = [(REMListStorage *)self daSyncToken];
  [coderCopy encodeObject:daSyncToken forKey:@"daSyncToken"];

  daPushKey = [(REMListStorage *)self daPushKey];
  [coderCopy encodeObject:daPushKey forKey:@"daPushKey"];

  daExternalIdentificationTag = [(REMListStorage *)self daExternalIdentificationTag];
  [coderCopy encodeObject:daExternalIdentificationTag forKey:@"daExternalIdentificationTag"];

  [coderCopy encodeInteger:-[REMListStorage daDisplayOrder](self forKey:{"daDisplayOrder"), @"daDisplayOrder"}];
  [coderCopy encodeBool:-[REMListStorage daIsEventOnlyContainer](self forKey:{"daIsEventOnlyContainer"), @"daIsEventOnlyContainer"}];
  [coderCopy encodeBool:-[REMListStorage daIsReadOnly](self forKey:{"daIsReadOnly"), @"daIsReadOnly"}];
  [coderCopy encodeBool:-[REMListStorage daIsImmutable](self forKey:{"daIsImmutable"), @"daIsImmutable"}];
  [coderCopy encodeBool:-[REMListStorage daIsNotificationsCollection](self forKey:{"daIsNotificationsCollection"), @"daIsNotificationsCollection"}];
  [coderCopy encodeInteger:-[REMListStorage minimumSupportedVersion](self forKey:{"minimumSupportedVersion"), @"minimumSupportedVersion"}];
  [coderCopy encodeInteger:-[REMListStorage effectiveMinimumSupportedVersion](self forKey:{"effectiveMinimumSupportedVersion"), @"effectiveMinimumSupportedVersion"}];
  lastUserAccessDate = [(REMListStorage *)self lastUserAccessDate];
  [coderCopy encodeObject:lastUserAccessDate forKey:@"lastUserAccessDate"];

  name = [(REMListStorage *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  color = [(REMListStorage *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  badgeEmblem = [(REMListStorage *)self badgeEmblem];
  [coderCopy encodeObject:badgeEmblem forKey:@"badgeEmblem"];

  [coderCopy encodeBool:-[REMListStorage shouldCategorizeGroceryItems](self forKey:{"shouldCategorizeGroceryItems"), @"shouldCategorizeGroceryItems"}];
  [coderCopy encodeBool:-[REMListStorage shouldSuggestConversionToGroceryList](self forKey:{"shouldSuggestConversionToGroceryList"), @"shouldSuggestConversionToGroceryList"}];
  groceryLocaleID = [(REMListStorage *)self groceryLocaleID];
  [coderCopy encodeObject:groceryLocaleID forKey:@"groceryLocaleID"];

  unsavedReminderIDsForCategorization = [(REMListStorage *)self unsavedReminderIDsForCategorization];
  [coderCopy encodeObject:unsavedReminderIDsForCategorization forKey:@"unsavedReminderIDsForCategorization"];

  [coderCopy encodeBool:-[REMListStorage shouldAutoCategorizeItems](self forKey:{"shouldAutoCategorizeItems"), @"shouldAutoCategorizeItems"}];
  [coderCopy encodeBool:-[REMListStorage showingLargeAttachments](self forKey:{"showingLargeAttachments"), @"showingLargeAttachments"}];
  parentAccountID = [(REMListStorage *)self parentAccountID];
  [coderCopy encodeObject:parentAccountID forKey:@"parentAccountID"];

  parentListID = [(REMListStorage *)self parentListID];
  [coderCopy encodeObject:parentListID forKey:@"parentListID"];

  reminderIDsMergeableOrdering = self->_reminderIDsMergeableOrdering;
  if (reminderIDsMergeableOrdering)
  {
    array = [(NSOrderedSet *)reminderIDsMergeableOrdering array];
    [coderCopy encodeObject:array forKey:@"reminderIDsMergeableOrdering"];

    [coderCopy encodeObject:0 forKey:@"reminderIDsMergeableOrderingData"];
  }

  else
  {
    reminderIDsMergeableOrderingData = [(REMListStorage *)self reminderIDsMergeableOrderingData];

    if (!reminderIDsMergeableOrderingData)
    {
      [REMListStorage encodeWithCoder:?];
    }

    [coderCopy encodeObject:0 forKey:@"reminderIDsMergeableOrdering"];
    reminderIDsMergeableOrderingData2 = [(REMListStorage *)self reminderIDsMergeableOrderingData];
    [coderCopy encodeObject:reminderIDsMergeableOrderingData2 forKey:@"reminderIDsMergeableOrderingData"];
  }

  resolutionTokenMap = self->_resolutionTokenMap;
  if (resolutionTokenMap)
  {
    [coderCopy encodeObject:resolutionTokenMap forKey:@"resolutionTokenMap"];
    [coderCopy encodeObject:0 forKey:@"resolutionTokenMapData"];
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"resolutionTokenMap"];
    resolutionTokenMapData = [(REMListStorage *)self resolutionTokenMapData];
    [coderCopy encodeObject:resolutionTokenMapData forKey:@"resolutionTokenMapData"];
  }

  reminderIDsOrderingHints = [(REMListStorage *)self reminderIDsOrderingHints];
  [coderCopy encodeObject:reminderIDsOrderingHints forKey:@"reminderIDsOrderingHints"];

  reminderIDsToUndelete = [(REMListStorage *)self reminderIDsToUndelete];
  allObjects = [reminderIDsToUndelete allObjects];
  [coderCopy encodeObject:allObjects forKey:@"reminderIDsToUndelete"];

  childListIDsToUndelete = [(REMListStorage *)self childListIDsToUndelete];
  allObjects2 = [childListIDsToUndelete allObjects];
  [coderCopy encodeObject:allObjects2 forKey:@"childListIDsToUndelete"];

  childSmartListIDsToUndelete = [(REMListStorage *)self childSmartListIDsToUndelete];
  allObjects3 = [childSmartListIDsToUndelete allObjects];
  [coderCopy encodeObject:allObjects3 forKey:@"childSmartListIDsToUndelete"];

  sectionIDsToUndelete = [(REMListStorage *)self sectionIDsToUndelete];
  allObjects4 = [sectionIDsToUndelete allObjects];
  [coderCopy encodeObject:allObjects4 forKey:@"sectionIDsToUndelete"];

  [coderCopy encodeBool:-[REMListStorage remindersICSDisplayOrderChanged](self forKey:{"remindersICSDisplayOrderChanged"), @"remindersICSDisplayOrderChanged"}];
  templateID = [(REMListStorage *)self templateID];
  [coderCopy encodeObject:templateID forKey:@"templateID"];

  sharedOwnerName = [(REMListStorage *)self sharedOwnerName];
  [coderCopy encodeObject:sharedOwnerName forKey:@"sharedOwnerName"];

  sharedOwnerAddress = [(REMListStorage *)self sharedOwnerAddress];
  [coderCopy encodeObject:sharedOwnerAddress forKey:@"sharedOwnerAddress"];

  [coderCopy encodeInteger:-[REMListStorage sharingStatus](self forKey:{"sharingStatus"), @"sharingStatus"}];
  sharees = [(REMListStorage *)self sharees];
  [coderCopy encodeObject:sharees forKey:@"sharees"];

  sharedOwnerID = [(REMListStorage *)self sharedOwnerID];
  [coderCopy encodeObject:sharedOwnerID forKey:@"sharedOwnerID"];

  calDAVNotifications = [(REMListStorage *)self calDAVNotifications];
  [coderCopy encodeObject:calDAVNotifications forKey:@"calDAVNotifications"];

  [coderCopy encodeBool:-[REMListStorage isPlaceholder](self forKey:{"isPlaceholder"), @"isPlaceholder"}];
  currentUserShareParticipantID = [(REMListStorage *)self currentUserShareParticipantID];
  [coderCopy encodeObject:currentUserShareParticipantID forKey:@"currentUserShareParticipantID"];

  sortingStyle = [(REMListStorage *)self sortingStyle];
  [coderCopy encodeObject:sortingStyle forKey:@"sortingStyle"];

  pinnedDate = [(REMListStorage *)self pinnedDate];
  [coderCopy encodeObject:pinnedDate forKey:@"pinnedDate"];

  mostRecentTargetTemplateIdentifier = [(REMListStorage *)self mostRecentTargetTemplateIdentifier];
  [coderCopy encodeObject:mostRecentTargetTemplateIdentifier forKey:@"mostRecentTargetTemplateIdentifier"];

  [coderCopy encodeBool:-[REMListStorage shouldUpdateSectionsOrdering](self forKey:{"shouldUpdateSectionsOrdering"), @"shouldUpdateSectionsOrdering"}];
  [coderCopy encodeBool:-[REMListStorage isAutoCategorizationSupportedInCurrentAppVersion](self forKey:{"isAutoCategorizationSupportedInCurrentAppVersion"), @"isAutoCategorizationSupportedInCurrentAppVersion"}];
  [coderCopy encodeBool:-[REMListStorage isSuggestedRemindersSupportedInCurrentAppVersion](self forKey:{"isSuggestedRemindersSupportedInCurrentAppVersion"), @"isSuggestedRemindersSupportedInCurrentAppVersion"}];
  unsavedSectionIDsOrdering = [(REMListStorage *)self unsavedSectionIDsOrdering];
  [coderCopy encodeObject:unsavedSectionIDsOrdering forKey:@"unsavedSectionIDsOrdering"];

  unsavedMembershipsOfRemindersInSections = [(REMListStorage *)self unsavedMembershipsOfRemindersInSections];
  [coderCopy encodeObject:unsavedMembershipsOfRemindersInSections forKey:@"unsavedMembershipsOfRemindersInSections"];

  daBulkRequests = [(REMListStorage *)self daBulkRequests];

  if (daBulkRequests)
  {
    v48 = MEMORY[0x1E696AE40];
    daBulkRequests2 = [(REMListStorage *)self daBulkRequests];
    v50 = [v48 dataWithPropertyList:daBulkRequests2 format:100 options:0 error:0];
  }

  else
  {
    v50 = 0;
  }

  [coderCopy encodeObject:v50 forKey:@"daBulkRequests"];
}

- (BOOL)isEqual:(id)equal
{
  v246 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectID = [(REMListStorage *)self objectID];
      objectID2 = [(REMListStorage *)v6 objectID];
      v9 = objectID2;
      if (objectID == objectID2)
      {
      }

      else
      {
        objectID3 = [(REMListStorage *)self objectID];
        objectID4 = [(REMListStorage *)v6 objectID];
        v12 = [objectID3 isEqual:objectID4];

        if (!v12)
        {
          goto LABEL_162;
        }
      }

      isGroup = [(REMListStorage *)self isGroup];
      if (isGroup == [(REMListStorage *)v6 isGroup])
      {
        accountID = [(REMListStorage *)self accountID];
        accountID2 = [(REMListStorage *)v6 accountID];
        v17 = accountID2;
        if (accountID == accountID2)
        {
        }

        else
        {
          accountID3 = [(REMListStorage *)self accountID];
          accountID4 = [(REMListStorage *)v6 accountID];
          v20 = [accountID3 isEqual:accountID4];

          if (!v20)
          {
            goto LABEL_162;
          }
        }

        externalIdentifier = [(REMListStorage *)self externalIdentifier];
        externalIdentifier2 = [(REMListStorage *)v6 externalIdentifier];
        v23 = externalIdentifier2;
        if (externalIdentifier == externalIdentifier2)
        {
        }

        else
        {
          externalIdentifier3 = [(REMListStorage *)self externalIdentifier];
          externalIdentifier4 = [(REMListStorage *)v6 externalIdentifier];
          v26 = [externalIdentifier3 isEqual:externalIdentifier4];

          if (!v26)
          {
            goto LABEL_162;
          }
        }

        externalModificationTag = [(REMListStorage *)self externalModificationTag];
        externalModificationTag2 = [(REMListStorage *)v6 externalModificationTag];
        v29 = externalModificationTag2;
        if (externalModificationTag == externalModificationTag2)
        {
        }

        else
        {
          externalModificationTag3 = [(REMListStorage *)self externalModificationTag];
          externalModificationTag4 = [(REMListStorage *)v6 externalModificationTag];
          v32 = [externalModificationTag3 isEqual:externalModificationTag4];

          if (!v32)
          {
            goto LABEL_162;
          }
        }

        daSyncToken = [(REMListStorage *)self daSyncToken];
        daSyncToken2 = [(REMListStorage *)v6 daSyncToken];
        v35 = daSyncToken2;
        if (daSyncToken == daSyncToken2)
        {
        }

        else
        {
          daSyncToken3 = [(REMListStorage *)self daSyncToken];
          daSyncToken4 = [(REMListStorage *)v6 daSyncToken];
          v38 = [daSyncToken3 isEqual:daSyncToken4];

          if (!v38)
          {
            goto LABEL_162;
          }
        }

        daPushKey = [(REMListStorage *)self daPushKey];
        daPushKey2 = [(REMListStorage *)v6 daPushKey];
        v41 = daPushKey2;
        if (daPushKey == daPushKey2)
        {
        }

        else
        {
          daPushKey3 = [(REMListStorage *)self daPushKey];
          daPushKey4 = [(REMListStorage *)v6 daPushKey];
          v44 = [daPushKey3 isEqual:daPushKey4];

          if (!v44)
          {
            goto LABEL_162;
          }
        }

        daExternalIdentificationTag = [(REMListStorage *)self daExternalIdentificationTag];
        daExternalIdentificationTag2 = [(REMListStorage *)v6 daExternalIdentificationTag];
        v47 = daExternalIdentificationTag2;
        if (daExternalIdentificationTag == daExternalIdentificationTag2)
        {
        }

        else
        {
          daExternalIdentificationTag3 = [(REMListStorage *)self daExternalIdentificationTag];
          daExternalIdentificationTag4 = [(REMListStorage *)v6 daExternalIdentificationTag];
          v50 = [daExternalIdentificationTag3 isEqual:daExternalIdentificationTag4];

          if (!v50)
          {
            goto LABEL_162;
          }
        }

        daBulkRequests = [(REMListStorage *)self daBulkRequests];
        daBulkRequests2 = [(REMListStorage *)v6 daBulkRequests];
        v53 = daBulkRequests2;
        if (daBulkRequests == daBulkRequests2)
        {
        }

        else
        {
          daBulkRequests3 = [(REMListStorage *)self daBulkRequests];
          daBulkRequests4 = [(REMListStorage *)v6 daBulkRequests];
          v56 = [daBulkRequests3 isEqual:daBulkRequests4];

          if (!v56)
          {
            goto LABEL_162;
          }
        }

        daDisplayOrder = [(REMListStorage *)self daDisplayOrder];
        if (daDisplayOrder != [(REMListStorage *)v6 daDisplayOrder])
        {
          goto LABEL_162;
        }

        daIsEventOnlyContainer = [(REMListStorage *)self daIsEventOnlyContainer];
        if (daIsEventOnlyContainer != [(REMListStorage *)v6 daIsEventOnlyContainer])
        {
          goto LABEL_162;
        }

        daIsReadOnly = [(REMListStorage *)self daIsReadOnly];
        if (daIsReadOnly != [(REMListStorage *)v6 daIsReadOnly])
        {
          goto LABEL_162;
        }

        daIsImmutable = [(REMListStorage *)self daIsImmutable];
        if (daIsImmutable != [(REMListStorage *)v6 daIsImmutable])
        {
          goto LABEL_162;
        }

        daIsNotificationsCollection = [(REMListStorage *)self daIsNotificationsCollection];
        if (daIsNotificationsCollection != [(REMListStorage *)v6 daIsNotificationsCollection])
        {
          goto LABEL_162;
        }

        minimumSupportedVersion = [(REMListStorage *)self minimumSupportedVersion];
        if (minimumSupportedVersion != [(REMListStorage *)v6 minimumSupportedVersion])
        {
          goto LABEL_162;
        }

        effectiveMinimumSupportedVersion = [(REMListStorage *)self effectiveMinimumSupportedVersion];
        if (effectiveMinimumSupportedVersion != [(REMListStorage *)v6 effectiveMinimumSupportedVersion])
        {
          goto LABEL_162;
        }

        lastUserAccessDate = [(REMListStorage *)self lastUserAccessDate];
        lastUserAccessDate2 = [(REMListStorage *)v6 lastUserAccessDate];
        v66 = lastUserAccessDate2;
        if (lastUserAccessDate == lastUserAccessDate2)
        {
        }

        else
        {
          lastUserAccessDate3 = [(REMListStorage *)self lastUserAccessDate];
          lastUserAccessDate4 = [(REMListStorage *)v6 lastUserAccessDate];
          v69 = [lastUserAccessDate3 isEqual:lastUserAccessDate4];

          if (!v69)
          {
            goto LABEL_162;
          }
        }

        name = [(REMListStorage *)self name];
        name2 = [(REMListStorage *)v6 name];
        v72 = name2;
        if (name == name2)
        {
        }

        else
        {
          name3 = [(REMListStorage *)self name];
          name4 = [(REMListStorage *)v6 name];
          v75 = [name3 isEqual:name4];

          if (!v75)
          {
            goto LABEL_162;
          }
        }

        color = [(REMListStorage *)self color];
        color2 = [(REMListStorage *)v6 color];
        v78 = color2;
        if (color == color2)
        {
        }

        else
        {
          color3 = [(REMListStorage *)self color];
          color4 = [(REMListStorage *)v6 color];
          v81 = [color3 isEqual:color4];

          if (!v81)
          {
            goto LABEL_162;
          }
        }

        badgeEmblem = [(REMListStorage *)self badgeEmblem];
        badgeEmblem2 = [(REMListStorage *)v6 badgeEmblem];
        v84 = badgeEmblem2;
        if (badgeEmblem == badgeEmblem2)
        {
        }

        else
        {
          badgeEmblem3 = [(REMListStorage *)self badgeEmblem];
          badgeEmblem4 = [(REMListStorage *)v6 badgeEmblem];
          v87 = [badgeEmblem3 isEqual:badgeEmblem4];

          if (!v87)
          {
            goto LABEL_162;
          }
        }

        shouldCategorizeGroceryItems = [(REMListStorage *)self shouldCategorizeGroceryItems];
        if (shouldCategorizeGroceryItems != [(REMListStorage *)v6 shouldCategorizeGroceryItems])
        {
          goto LABEL_162;
        }

        shouldSuggestConversionToGroceryList = [(REMListStorage *)self shouldSuggestConversionToGroceryList];
        if (shouldSuggestConversionToGroceryList != [(REMListStorage *)v6 shouldSuggestConversionToGroceryList])
        {
          goto LABEL_162;
        }

        groceryLocaleID = [(REMListStorage *)self groceryLocaleID];
        groceryLocaleID2 = [(REMListStorage *)v6 groceryLocaleID];
        v92 = groceryLocaleID2;
        if (groceryLocaleID == groceryLocaleID2)
        {
        }

        else
        {
          groceryLocaleID3 = [(REMListStorage *)self groceryLocaleID];
          groceryLocaleID4 = [(REMListStorage *)v6 groceryLocaleID];
          v95 = [groceryLocaleID3 isEqual:groceryLocaleID4];

          if (!v95)
          {
            goto LABEL_162;
          }
        }

        unsavedReminderIDsForCategorization = [(REMListStorage *)self unsavedReminderIDsForCategorization];
        unsavedReminderIDsForCategorization2 = [(REMListStorage *)v6 unsavedReminderIDsForCategorization];
        v98 = unsavedReminderIDsForCategorization2;
        if (unsavedReminderIDsForCategorization == unsavedReminderIDsForCategorization2)
        {
        }

        else
        {
          unsavedReminderIDsForCategorization3 = [(REMListStorage *)self unsavedReminderIDsForCategorization];
          unsavedReminderIDsForCategorization4 = [(REMListStorage *)v6 unsavedReminderIDsForCategorization];
          v101 = [unsavedReminderIDsForCategorization3 isEqual:unsavedReminderIDsForCategorization4];

          if (!v101)
          {
            goto LABEL_162;
          }
        }

        shouldAutoCategorizeItems = [(REMListStorage *)self shouldAutoCategorizeItems];
        if (shouldAutoCategorizeItems != [(REMListStorage *)v6 shouldAutoCategorizeItems])
        {
          goto LABEL_162;
        }

        showingLargeAttachments = [(REMListStorage *)self showingLargeAttachments];
        if (showingLargeAttachments != [(REMListStorage *)v6 showingLargeAttachments])
        {
          goto LABEL_162;
        }

        parentAccountID = [(REMListStorage *)self parentAccountID];
        parentAccountID2 = [(REMListStorage *)v6 parentAccountID];
        v106 = parentAccountID2;
        if (parentAccountID == parentAccountID2)
        {
        }

        else
        {
          parentAccountID3 = [(REMListStorage *)self parentAccountID];
          parentAccountID4 = [(REMListStorage *)v6 parentAccountID];
          v109 = [parentAccountID3 isEqual:parentAccountID4];

          if (!v109)
          {
            goto LABEL_162;
          }
        }

        parentListID = [(REMListStorage *)self parentListID];
        parentListID2 = [(REMListStorage *)v6 parentListID];
        v112 = parentListID2;
        if (parentListID == parentListID2)
        {
        }

        else
        {
          parentListID3 = [(REMListStorage *)self parentListID];
          parentListID4 = [(REMListStorage *)v6 parentListID];
          v115 = [parentListID3 isEqual:parentListID4];

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

        reminderIDsMergeableOrdering = [(REMListStorage *)self reminderIDsMergeableOrdering];
        reminderIDsMergeableOrdering2 = [(REMListStorage *)v6 reminderIDsMergeableOrdering];
        v119 = reminderIDsMergeableOrdering2;
        if (reminderIDsMergeableOrdering == reminderIDsMergeableOrdering2)
        {
        }

        else
        {
          reminderIDsMergeableOrdering3 = [(REMListStorage *)self reminderIDsMergeableOrdering];
          reminderIDsMergeableOrdering4 = [(REMListStorage *)v6 reminderIDsMergeableOrdering];
          v122 = [reminderIDsMergeableOrdering3 isEqual:reminderIDsMergeableOrdering4];

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

        resolutionTokenMap = [(REMListStorage *)self resolutionTokenMap];
        resolutionTokenMap2 = [(REMListStorage *)v6 resolutionTokenMap];
        v126 = resolutionTokenMap2;
        if (resolutionTokenMap == resolutionTokenMap2)
        {
        }

        else
        {
          resolutionTokenMap3 = [(REMListStorage *)self resolutionTokenMap];
          resolutionTokenMap4 = [(REMListStorage *)v6 resolutionTokenMap];
          v129 = [resolutionTokenMap3 isEqual:resolutionTokenMap4];

          if (!v129)
          {
            goto LABEL_162;
          }
        }

        reminderIDsToUndelete = [(REMListStorage *)self reminderIDsToUndelete];
        reminderIDsToUndelete2 = [(REMListStorage *)v6 reminderIDsToUndelete];
        v132 = reminderIDsToUndelete2;
        if (reminderIDsToUndelete == reminderIDsToUndelete2)
        {
        }

        else
        {
          reminderIDsToUndelete3 = [(REMListStorage *)self reminderIDsToUndelete];
          reminderIDsToUndelete4 = [(REMListStorage *)v6 reminderIDsToUndelete];
          v135 = [reminderIDsToUndelete3 isEqual:reminderIDsToUndelete4];

          if (!v135)
          {
            goto LABEL_162;
          }
        }

        childListIDsToUndelete = [(REMListStorage *)self childListIDsToUndelete];
        childListIDsToUndelete2 = [(REMListStorage *)v6 childListIDsToUndelete];
        v138 = childListIDsToUndelete2;
        if (childListIDsToUndelete == childListIDsToUndelete2)
        {
        }

        else
        {
          childListIDsToUndelete3 = [(REMListStorage *)self childListIDsToUndelete];
          childListIDsToUndelete4 = [(REMListStorage *)v6 childListIDsToUndelete];
          v141 = [childListIDsToUndelete3 isEqual:childListIDsToUndelete4];

          if (!v141)
          {
            goto LABEL_162;
          }
        }

        childSmartListIDsToUndelete = [(REMListStorage *)self childSmartListIDsToUndelete];
        childSmartListIDsToUndelete2 = [(REMListStorage *)v6 childSmartListIDsToUndelete];
        v144 = childSmartListIDsToUndelete2;
        if (childSmartListIDsToUndelete == childSmartListIDsToUndelete2)
        {
        }

        else
        {
          childSmartListIDsToUndelete3 = [(REMListStorage *)self childSmartListIDsToUndelete];
          childSmartListIDsToUndelete4 = [(REMListStorage *)v6 childSmartListIDsToUndelete];
          v147 = [childSmartListIDsToUndelete3 isEqual:childSmartListIDsToUndelete4];

          if (!v147)
          {
            goto LABEL_162;
          }
        }

        sectionIDsToUndelete = [(REMListStorage *)self sectionIDsToUndelete];
        sectionIDsToUndelete2 = [(REMListStorage *)v6 sectionIDsToUndelete];
        v150 = sectionIDsToUndelete2;
        if (sectionIDsToUndelete == sectionIDsToUndelete2)
        {
        }

        else
        {
          sectionIDsToUndelete3 = [(REMListStorage *)self sectionIDsToUndelete];
          sectionIDsToUndelete4 = [(REMListStorage *)v6 sectionIDsToUndelete];
          v153 = [sectionIDsToUndelete3 isEqual:sectionIDsToUndelete4];

          if (!v153)
          {
            goto LABEL_162;
          }
        }

        remindersICSDisplayOrderChanged = [(REMListStorage *)self remindersICSDisplayOrderChanged];
        if (remindersICSDisplayOrderChanged == [(REMListStorage *)v6 remindersICSDisplayOrderChanged])
        {
          templateID = [(REMListStorage *)self templateID];
          templateID2 = [(REMListStorage *)v6 templateID];
          v157 = templateID2;
          if (templateID == templateID2)
          {
          }

          else
          {
            templateID3 = [(REMListStorage *)self templateID];
            templateID4 = [(REMListStorage *)v6 templateID];
            v160 = [templateID3 isEqual:templateID4];

            if (!v160)
            {
              goto LABEL_162;
            }
          }

          sharedOwnerName = [(REMListStorage *)self sharedOwnerName];
          sharedOwnerName2 = [(REMListStorage *)v6 sharedOwnerName];
          v171 = sharedOwnerName2;
          if (sharedOwnerName == sharedOwnerName2)
          {
          }

          else
          {
            sharedOwnerName3 = [(REMListStorage *)self sharedOwnerName];
            sharedOwnerName4 = [(REMListStorage *)v6 sharedOwnerName];
            v174 = [sharedOwnerName3 isEqual:sharedOwnerName4];

            if (!v174)
            {
              goto LABEL_162;
            }
          }

          sharedOwnerAddress = [(REMListStorage *)self sharedOwnerAddress];
          sharedOwnerAddress2 = [(REMListStorage *)v6 sharedOwnerAddress];
          v177 = sharedOwnerAddress2;
          if (sharedOwnerAddress == sharedOwnerAddress2)
          {
          }

          else
          {
            sharedOwnerAddress3 = [(REMListStorage *)self sharedOwnerAddress];
            sharedOwnerAddress4 = [(REMListStorage *)v6 sharedOwnerAddress];
            v180 = [sharedOwnerAddress3 isEqual:sharedOwnerAddress4];

            if (!v180)
            {
              goto LABEL_162;
            }
          }

          sharingStatus = [(REMListStorage *)self sharingStatus];
          if (sharingStatus == [(REMListStorage *)v6 sharingStatus])
          {
            sharees = [(REMListStorage *)self sharees];
            sharees2 = [(REMListStorage *)v6 sharees];
            v184 = sharees2;
            if (sharees == sharees2)
            {
            }

            else
            {
              sharees3 = [(REMListStorage *)self sharees];
              sharees4 = [(REMListStorage *)v6 sharees];
              v187 = [sharees3 isEqual:sharees4];

              if (!v187)
              {
                goto LABEL_162;
              }
            }

            sharedOwnerID = [(REMListStorage *)self sharedOwnerID];
            sharedOwnerID2 = [(REMListStorage *)v6 sharedOwnerID];
            v190 = sharedOwnerID2;
            if (sharedOwnerID == sharedOwnerID2)
            {
            }

            else
            {
              sharedOwnerID3 = [(REMListStorage *)self sharedOwnerID];
              sharedOwnerID4 = [(REMListStorage *)v6 sharedOwnerID];
              v193 = [sharedOwnerID3 isEqual:sharedOwnerID4];

              if (!v193)
              {
                goto LABEL_162;
              }
            }

            calDAVNotifications = [(REMListStorage *)self calDAVNotifications];
            calDAVNotifications2 = [(REMListStorage *)v6 calDAVNotifications];
            v196 = calDAVNotifications2;
            if (calDAVNotifications == calDAVNotifications2)
            {
            }

            else
            {
              calDAVNotifications3 = [(REMListStorage *)self calDAVNotifications];
              calDAVNotifications4 = [(REMListStorage *)v6 calDAVNotifications];
              v199 = [calDAVNotifications3 isEqual:calDAVNotifications4];

              if (!v199)
              {
                goto LABEL_162;
              }
            }

            isPlaceholder = [(REMListStorage *)self isPlaceholder];
            if (isPlaceholder == [(REMListStorage *)v6 isPlaceholder])
            {
              currentUserShareParticipantID = [(REMListStorage *)self currentUserShareParticipantID];
              currentUserShareParticipantID2 = [(REMListStorage *)v6 currentUserShareParticipantID];
              v203 = currentUserShareParticipantID2;
              if (currentUserShareParticipantID == currentUserShareParticipantID2)
              {
              }

              else
              {
                currentUserShareParticipantID3 = [(REMListStorage *)self currentUserShareParticipantID];
                currentUserShareParticipantID4 = [(REMListStorage *)v6 currentUserShareParticipantID];
                v206 = [currentUserShareParticipantID3 isEqual:currentUserShareParticipantID4];

                if (!v206)
                {
                  goto LABEL_162;
                }
              }

              sortingStyle = [(REMListStorage *)self sortingStyle];
              sortingStyle2 = [(REMListStorage *)v6 sortingStyle];
              v209 = sortingStyle2;
              if (sortingStyle == sortingStyle2)
              {
              }

              else
              {
                sortingStyle3 = [(REMListStorage *)self sortingStyle];
                sortingStyle4 = [(REMListStorage *)v6 sortingStyle];
                v212 = [sortingStyle3 isEqual:sortingStyle4];

                if (!v212)
                {
                  goto LABEL_162;
                }
              }

              pinnedDate = [(REMListStorage *)self pinnedDate];
              pinnedDate2 = [(REMListStorage *)v6 pinnedDate];
              v215 = pinnedDate2;
              if (pinnedDate == pinnedDate2)
              {
              }

              else
              {
                pinnedDate3 = [(REMListStorage *)self pinnedDate];
                pinnedDate4 = [(REMListStorage *)v6 pinnedDate];
                v218 = [pinnedDate3 isEqual:pinnedDate4];

                if (!v218)
                {
                  goto LABEL_162;
                }
              }

              mostRecentTargetTemplateIdentifier = [(REMListStorage *)self mostRecentTargetTemplateIdentifier];
              mostRecentTargetTemplateIdentifier2 = [(REMListStorage *)v6 mostRecentTargetTemplateIdentifier];
              v221 = mostRecentTargetTemplateIdentifier2;
              if (mostRecentTargetTemplateIdentifier == mostRecentTargetTemplateIdentifier2)
              {
              }

              else
              {
                mostRecentTargetTemplateIdentifier3 = [(REMListStorage *)self mostRecentTargetTemplateIdentifier];
                mostRecentTargetTemplateIdentifier4 = [(REMListStorage *)v6 mostRecentTargetTemplateIdentifier];
                v224 = [mostRecentTargetTemplateIdentifier3 isEqual:mostRecentTargetTemplateIdentifier4];

                if (!v224)
                {
                  goto LABEL_162;
                }
              }

              shouldUpdateSectionsOrdering = [(REMListStorage *)self shouldUpdateSectionsOrdering];
              if (shouldUpdateSectionsOrdering != [(REMListStorage *)v6 shouldUpdateSectionsOrdering])
              {
                goto LABEL_162;
              }

              isAutoCategorizationSupportedInCurrentAppVersion = [(REMListStorage *)self isAutoCategorizationSupportedInCurrentAppVersion];
              if (isAutoCategorizationSupportedInCurrentAppVersion != [(REMListStorage *)v6 isAutoCategorizationSupportedInCurrentAppVersion])
              {
                goto LABEL_162;
              }

              isSuggestedRemindersSupportedInCurrentAppVersion = [(REMListStorage *)self isSuggestedRemindersSupportedInCurrentAppVersion];
              if (isSuggestedRemindersSupportedInCurrentAppVersion != [(REMListStorage *)v6 isSuggestedRemindersSupportedInCurrentAppVersion])
              {
                goto LABEL_162;
              }

              unsavedSectionIDsOrdering = [(REMListStorage *)self unsavedSectionIDsOrdering];
              unsavedSectionIDsOrdering2 = [(REMListStorage *)v6 unsavedSectionIDsOrdering];
              v230 = unsavedSectionIDsOrdering2;
              if (unsavedSectionIDsOrdering == unsavedSectionIDsOrdering2)
              {
              }

              else
              {
                unsavedSectionIDsOrdering3 = [(REMListStorage *)self unsavedSectionIDsOrdering];
                unsavedSectionIDsOrdering4 = [(REMListStorage *)v6 unsavedSectionIDsOrdering];
                v233 = [unsavedSectionIDsOrdering3 isEqual:unsavedSectionIDsOrdering4];

                if (!v233)
                {
                  goto LABEL_162;
                }
              }

              unsavedMembershipsOfRemindersInSections = [(REMListStorage *)self unsavedMembershipsOfRemindersInSections];
              unsavedMembershipsOfRemindersInSections2 = [(REMListStorage *)v6 unsavedMembershipsOfRemindersInSections];
              if (unsavedMembershipsOfRemindersInSections == unsavedMembershipsOfRemindersInSections2)
              {
                v13 = 1;
              }

              else
              {
                unsavedMembershipsOfRemindersInSections3 = [(REMListStorage *)self unsavedMembershipsOfRemindersInSections];
                unsavedMembershipsOfRemindersInSections4 = [(REMListStorage *)v6 unsavedMembershipsOfRemindersInSections];
                v13 = [unsavedMembershipsOfRemindersInSections3 isEqual:unsavedMembershipsOfRemindersInSections4];
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
  objectID = [(REMListStorage *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(REMListStorage *)self objectID];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, objectID];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(REMListStorage *)self name];
  objectID = [(REMListStorage *)self objectID];
  v7 = [v3 stringWithFormat:@"<%@: %p %@ %@ [%ld.%ld]>", v4, self, name, objectID, self->_storeGeneration, self->_copyGeneration];

  return v7;
}

- (id)ekColor
{
  color = [(REMListStorage *)self color];
  v3 = color;
  if (color)
  {
    v4 = color;
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

  reminderIDsMergeableOrderingData = [(REMListStorage *)self reminderIDsMergeableOrderingData];
  if (!reminderIDsMergeableOrderingData)
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
  v7 = [objc_opt_class() reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:reminderIDsMergeableOrderingData error:&v17];
  v8 = v17;
  v9 = +[REMLogStore read];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    objectID = [(REMListStorage *)self objectID];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
    *buf = 138543874;
    v19 = objectID;
    v20 = 2048;
    selfCopy = self;
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

- (void)setReminderIDsMergeableOrdering:(id)ordering
{
  orderingCopy = ordering;
  objc_storeStrong(&self->_reminderIDsMergeableOrdering, ordering);
  if (orderingCopy)
  {
    reminderIDsMergeableOrderingData = self->_reminderIDsMergeableOrderingData;
    self->_reminderIDsMergeableOrderingData = 0;
  }
}

+ (id)newObjectID
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [self objectIDWithUUID:uUID];

  return v4;
}

+ (id)objectIDWithUUID:(id)d
{
  dCopy = d;
  cdEntityName = [self cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:dCopy entityName:cdEntityName];

  return v6;
}

- (BOOL)isUnsupported
{
  effectiveMinimumSupportedVersion = [(REMListStorage *)self effectiveMinimumSupportedVersion];

  return rem_isUnsupportedVersionByRuntime(effectiveMinimumSupportedVersion);
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
    resolutionTokenMapData = [(REMListStorage *)self resolutionTokenMapData];
    if (!resolutionTokenMapData)
    {
      v7 = +[REMLogStore read];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [REMListStorage resolutionTokenMap];
      }
    }

    cdKeyToStorageKeyMap = [(REMListStorage *)self cdKeyToStorageKeyMap];
    v9 = [REMResolutionTokenMap resolutionTokenMapWithJSONData:resolutionTokenMapData keyMap:cdKeyToStorageKeyMap];

    objc_storeStrong(p_resolutionTokenMap, v9);
    v5 = v9;
  }

  return v5;
}

+ (id)reminderIDUUIDStringsJSONDataFromReminderIDsMergeableOrdering:(id)ordering error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  orderingCopy = ordering;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(orderingCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = orderingCopy;
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

        uuid = [*(*(&v21 + 1) + 8 * i) uuid];
        uUIDString = [uuid UUIDString];

        if (uUIDString)
        {
          [v6 addObject:uUIDString];
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

  if (error)
  {
    v17 = v15;
    *error = v15;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:(id)data error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy)
  {
    if (![dataCopy length])
    {
      orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
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
        errorCopy = error;
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

        error = errorCopy;
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
    if (error)
    {
      v22 = v9;
      *error = v9;
    }

    orderedSet = v11;

    goto LABEL_29;
  }

  v20 = +[REMLogStore read];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    +[REMListStorage reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:error:];
  }

  orderedSet = 0;
LABEL_29:

  v23 = *MEMORY[0x1E69E9840];

  return orderedSet;
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