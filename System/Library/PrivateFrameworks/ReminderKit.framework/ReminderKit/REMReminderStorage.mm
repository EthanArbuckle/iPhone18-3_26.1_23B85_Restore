@interface REMReminderStorage
+ (BOOL)isDate:(id)date overdueAtReferenceDate:(id)referenceDate allDay:(BOOL)day floatingDateSecondsFromGMT:(int64_t)t floatingDateTargetTimeZone:(id)zone showAllDayRemindersAsOverdue:(BOOL)overdue showTimedRemindersAsOverdue:(BOOL)asOverdue;
+ (id)newObjectID;
+ (id)notesReplicaIDSourceWithAccountID:(id)d reminderID:(id)iD;
+ (id)objectIDWithUUID:(id)d;
+ (id)titleReplicaIDSourceWithAccountID:(id)d reminderID:(id)iD;
- (BOOL)hasUnfetchedDueDateDeltaAlerts;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOverdue;
- (BOOL)isRecurrent;
- (BOOL)isUnsupported;
- (NSString)legacyNotificationIdentifier;
- (REMReminderStorage)initWithCoder:(id)coder;
- (REMReminderStorage)initWithObjectID:(id)d listID:(id)iD accountID:(id)accountID;
- (REMResolutionTokenMap)resolutionTokenMap;
- (id)cdKeyToStorageKeyMap;
- (id)copyWithZone:(_NSZone *)zone;
- (id)currentAssignment;
- (id)datesDebugDescriptionInTimeZone:(id)zone;
- (id)description;
- (id)effectiveDisplayDateComponents_forCalendar;
- (id)notesDocument;
- (id)notesReplicaIDSource;
- (id)titleDocument;
- (id)titleReplicaIDSource;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)resolutionTokenMap;
- (void)setAlternativeDisplayDateDateForCalendarWithDateComponents:(id)components;
- (void)setFetchedDueDateDeltaAlerts:(id)alerts;
- (void)setNotesDocument:(id)document;
- (void)setStoreGenerationIfNeeded:(unint64_t)needed;
- (void)setTitleDocument:(id)document;
- (void)updateDisplayDate;
@end

@implementation REMReminderStorage

- (REMReminderStorage)initWithObjectID:(id)d listID:(id)iD accountID:(id)accountID
{
  dCopy = d;
  iDCopy = iD;
  accountIDCopy = accountID;
  v26.receiver = self;
  v26.super_class = REMReminderStorage;
  v12 = [(REMReminderStorage *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_objectID, d);
    uuid = [dCopy uuid];
    uUIDString = [uuid UUIDString];
    daCalendarItemUniqueIdentifier = v13->_daCalendarItemUniqueIdentifier;
    v13->_daCalendarItemUniqueIdentifier = uUIDString;

    objc_storeStrong(&v13->_listID, iD);
    objc_storeStrong(&v13->_accountID, accountID);
    v17 = objc_alloc_init(REMResolutionTokenMap);
    resolutionTokenMap = v13->_resolutionTokenMap;
    v13->_resolutionTokenMap = v17;

    data = [MEMORY[0x1E695DEF0] data];
    resolutionTokenMapData = v13->_resolutionTokenMapData;
    v13->_resolutionTokenMapData = data;

    v21 = [MEMORY[0x1E695DFD8] set];
    subtaskIDsToUndelete = v13->_subtaskIDsToUndelete;
    v13->_subtaskIDsToUndelete = v21;

    v23 = [MEMORY[0x1E695DFD8] set];
    hashtagIDsToUndelete = v13->_hashtagIDsToUndelete;
    v13->_hashtagIDsToUndelete = v23;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [REMReminderStorage alloc];
  objectID = [(REMReminderStorage *)self objectID];
  listID = [(REMReminderStorage *)self listID];
  accountID = [(REMReminderStorage *)self accountID];
  v8 = [(REMReminderStorage *)v4 initWithObjectID:objectID listID:listID accountID:accountID];

  parentReminderID = [(REMReminderStorage *)self parentReminderID];
  [v8 setParentReminderID:parentReminderID];

  daCalendarItemUniqueIdentifier = [(REMReminderStorage *)self daCalendarItemUniqueIdentifier];
  [v8 setDaCalendarItemUniqueIdentifier:daCalendarItemUniqueIdentifier];

  externalIdentifier = [(REMReminderStorage *)self externalIdentifier];
  [v8 setExternalIdentifier:externalIdentifier];

  externalModificationTag = [(REMReminderStorage *)self externalModificationTag];
  [v8 setExternalModificationTag:externalModificationTag];

  daSyncToken = [(REMReminderStorage *)self daSyncToken];
  [v8 setDaSyncToken:daSyncToken];

  daPushKey = [(REMReminderStorage *)self daPushKey];
  [v8 setDaPushKey:daPushKey];

  titleDocumentData = [(REMReminderStorage *)self titleDocumentData];
  [v8 setTitleDocumentData:titleDocumentData];

  titleAsString = [(REMReminderStorage *)self titleAsString];
  [v8 setTitleAsString:titleAsString];

  primaryLocaleInferredFromLastUsedKeyboard = [(REMReminderStorage *)self primaryLocaleInferredFromLastUsedKeyboard];
  [v8 setPrimaryLocaleInferredFromLastUsedKeyboard:primaryLocaleInferredFromLastUsedKeyboard];

  [v8 setCompleted:{-[REMReminderStorage isCompleted](self, "isCompleted")}];
  completionDate = [(REMReminderStorage *)self completionDate];
  [v8 setCompletionDate:completionDate];

  [v8 setPriority:{-[REMReminderStorage priority](self, "priority")}];
  [v8 setFlagged:{-[REMReminderStorage flagged](self, "flagged")}];
  startDateComponents = [(REMReminderStorage *)self startDateComponents];
  [v8 setStartDateComponents:startDateComponents];

  dueDateComponents = [(REMReminderStorage *)self dueDateComponents];
  [v8 setDueDateComponents:dueDateComponents];

  timeZone = [(REMReminderStorage *)self timeZone];
  [v8 setTimeZone:timeZone];

  [v8 setAllDay:{-[REMReminderStorage allDay](self, "allDay")}];
  creationDate = [(REMReminderStorage *)self creationDate];
  [v8 setCreationDate:creationDate];

  lastModifiedDate = [(REMReminderStorage *)self lastModifiedDate];
  [v8 setLastModifiedDate:lastModifiedDate];

  recurrenceRules = [(REMReminderStorage *)self recurrenceRules];
  [v8 setRecurrenceRules:recurrenceRules];

  notesDocumentData = [(REMReminderStorage *)self notesDocumentData];
  [v8 setNotesDocumentData:notesDocumentData];

  notesAsString = [(REMReminderStorage *)self notesAsString];
  [v8 setNotesAsString:notesAsString];

  attachments = [(REMReminderStorage *)self attachments];
  [v8 setAttachments:attachments];

  alarms = [(REMReminderStorage *)self alarms];
  [v8 setAlarms:alarms];

  assignments = [(REMReminderStorage *)self assignments];
  [v8 setAssignments:assignments];

  hashtags = [(REMReminderStorage *)self hashtags];
  [v8 setHashtags:hashtags];

  dueDateDeltaAlertsData = [(REMReminderStorage *)self dueDateDeltaAlertsData];
  [v8 setDueDateDeltaAlertsData:dueDateDeltaAlertsData];

  dueDateDeltaAlertsToUpsert = [(REMReminderStorage *)self dueDateDeltaAlertsToUpsert];
  [v8 setDueDateDeltaAlertsToUpsert:dueDateDeltaAlertsToUpsert];

  dueDateDeltaAlertIdentifiersToDelete = [(REMReminderStorage *)self dueDateDeltaAlertIdentifiersToDelete];
  [v8 setDueDateDeltaAlertIdentifiersToDelete:dueDateDeltaAlertIdentifiersToDelete];

  v34 = [(REMResolutionTokenMap *)self->_resolutionTokenMap copy];
  v35 = *(v8 + 184);
  *(v8 + 184) = v34;

  resolutionTokenMapData = [(REMReminderStorage *)self resolutionTokenMapData];
  [v8 setResolutionTokenMapData:resolutionTokenMapData];

  contactHandles = [(REMReminderStorage *)self contactHandles];
  [v8 setContactHandles:contactHandles];

  [v8 setIcsDisplayOrder:{-[REMReminderStorage icsDisplayOrder](self, "icsDisplayOrder")}];
  icsUrl = [(REMReminderStorage *)self icsUrl];
  [v8 setIcsUrl:icsUrl];

  importedICSData = [(REMReminderStorage *)self importedICSData];
  [v8 setImportedICSData:importedICSData];

  [v8 setPrefersUrgentPresentationStyleForDateAlarms:{-[REMReminderStorage prefersUrgentPresentationStyleForDateAlarms](self, "prefersUrgentPresentationStyleForDateAlarms")}];
  subtaskIDsToUndelete = [(REMReminderStorage *)self subtaskIDsToUndelete];
  v41 = [subtaskIDsToUndelete copy];
  [v8 setSubtaskIDsToUndelete:v41];

  hashtagIDsToUndelete = [(REMReminderStorage *)self hashtagIDsToUndelete];
  v43 = [hashtagIDsToUndelete copy];
  [v8 setHashtagIDsToUndelete:v43];

  userActivity = [(REMReminderStorage *)self userActivity];
  v45 = [userActivity copy];
  [v8 setUserActivity:v45];

  batchCreationID = [(REMReminderStorage *)self batchCreationID];
  v47 = [batchCreationID copy];
  [v8 setBatchCreationID:v47];

  siriFoundInAppsData = [(REMReminderStorage *)self siriFoundInAppsData];
  v49 = [siriFoundInAppsData copy];
  [v8 setSiriFoundInAppsData:v49];

  [v8 setSiriFoundInAppsUserConfirmation:{-[REMReminderStorage siriFoundInAppsUserConfirmation](self, "siriFoundInAppsUserConfirmation")}];
  lastBannerPresentationDate = [(REMReminderStorage *)self lastBannerPresentationDate];
  [v8 setLastBannerPresentationDate:lastBannerPresentationDate];

  displayDate = [(REMReminderStorage *)self displayDate];
  [v8 setDisplayDate:displayDate];

  [v8 setMinimumSupportedVersion:{-[REMReminderStorage minimumSupportedVersion](self, "minimumSupportedVersion")}];
  [v8 setEffectiveMinimumSupportedVersion:{-[REMReminderStorage effectiveMinimumSupportedVersion](self, "effectiveMinimumSupportedVersion")}];
  *(v8 + 8) = self->_hasDeserializedTitleDocument;
  *(v8 + 9) = self->_hasDeserializedNotesDocument;
  objc_storeStrong((v8 + 16), self->_deserializedTitleDocumentCache);
  objc_storeStrong((v8 + 24), self->_deserializedNotesDocumentCache);
  *(v8 + 32) = self->_storeGeneration;
  *(v8 + 40) = self->_copyGeneration + 1;
  v52 = [(NSArray *)self->_fetchedDueDateDeltaAlerts copy];
  v53 = *(v8 + 48);
  *(v8 + 48) = v52;

  alternativeDisplayDateDate_forCalendar = [(REMReminderStorage *)self alternativeDisplayDateDate_forCalendar];
  [v8 setAlternativeDisplayDateDate_forCalendar:alternativeDisplayDateDate_forCalendar];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  v278 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectID = [(REMReminderStorage *)self objectID];
      objectID2 = [(REMReminderStorage *)v6 objectID];
      v9 = objectID2;
      if (objectID == objectID2)
      {
      }

      else
      {
        objectID3 = [(REMReminderStorage *)self objectID];
        objectID4 = [(REMReminderStorage *)v6 objectID];
        v12 = [objectID3 isEqual:objectID4];

        if (!v12)
        {
          goto LABEL_183;
        }
      }

      listID = [(REMReminderStorage *)self listID];
      listID2 = [(REMReminderStorage *)v6 listID];
      v16 = listID2;
      if (listID == listID2)
      {
      }

      else
      {
        listID3 = [(REMReminderStorage *)self listID];
        listID4 = [(REMReminderStorage *)v6 listID];
        v19 = [listID3 isEqual:listID4];

        if (!v19)
        {
          goto LABEL_183;
        }
      }

      accountID = [(REMReminderStorage *)self accountID];
      accountID2 = [(REMReminderStorage *)v6 accountID];
      v22 = accountID2;
      if (accountID == accountID2)
      {
      }

      else
      {
        accountID3 = [(REMReminderStorage *)self accountID];
        accountID4 = [(REMReminderStorage *)v6 accountID];
        v25 = [accountID3 isEqual:accountID4];

        if (!v25)
        {
          goto LABEL_183;
        }
      }

      parentReminderID = [(REMReminderStorage *)self parentReminderID];
      parentReminderID2 = [(REMReminderStorage *)v6 parentReminderID];
      v28 = parentReminderID2;
      if (parentReminderID == parentReminderID2)
      {
      }

      else
      {
        parentReminderID3 = [(REMReminderStorage *)self parentReminderID];
        parentReminderID4 = [(REMReminderStorage *)v6 parentReminderID];
        v31 = [parentReminderID3 isEqual:parentReminderID4];

        if (!v31)
        {
          goto LABEL_183;
        }
      }

      daCalendarItemUniqueIdentifier = [(REMReminderStorage *)self daCalendarItemUniqueIdentifier];
      daCalendarItemUniqueIdentifier2 = [(REMReminderStorage *)v6 daCalendarItemUniqueIdentifier];
      v34 = daCalendarItemUniqueIdentifier2;
      if (daCalendarItemUniqueIdentifier == daCalendarItemUniqueIdentifier2)
      {
      }

      else
      {
        daCalendarItemUniqueIdentifier3 = [(REMReminderStorage *)self daCalendarItemUniqueIdentifier];
        daCalendarItemUniqueIdentifier4 = [(REMReminderStorage *)v6 daCalendarItemUniqueIdentifier];
        v37 = [daCalendarItemUniqueIdentifier3 isEqual:daCalendarItemUniqueIdentifier4];

        if (!v37)
        {
          goto LABEL_183;
        }
      }

      externalIdentifier = [(REMReminderStorage *)self externalIdentifier];
      externalIdentifier2 = [(REMReminderStorage *)v6 externalIdentifier];
      v40 = externalIdentifier2;
      if (externalIdentifier == externalIdentifier2)
      {
      }

      else
      {
        externalIdentifier3 = [(REMReminderStorage *)self externalIdentifier];
        externalIdentifier4 = [(REMReminderStorage *)v6 externalIdentifier];
        v43 = [externalIdentifier3 isEqual:externalIdentifier4];

        if (!v43)
        {
          goto LABEL_183;
        }
      }

      externalModificationTag = [(REMReminderStorage *)self externalModificationTag];
      externalModificationTag2 = [(REMReminderStorage *)v6 externalModificationTag];
      v46 = externalModificationTag2;
      if (externalModificationTag == externalModificationTag2)
      {
      }

      else
      {
        externalModificationTag3 = [(REMReminderStorage *)self externalModificationTag];
        externalModificationTag4 = [(REMReminderStorage *)v6 externalModificationTag];
        v49 = [externalModificationTag3 isEqual:externalModificationTag4];

        if (!v49)
        {
          goto LABEL_183;
        }
      }

      daSyncToken = [(REMReminderStorage *)self daSyncToken];
      daSyncToken2 = [(REMReminderStorage *)v6 daSyncToken];
      v52 = daSyncToken2;
      if (daSyncToken == daSyncToken2)
      {
      }

      else
      {
        daSyncToken3 = [(REMReminderStorage *)self daSyncToken];
        daSyncToken4 = [(REMReminderStorage *)v6 daSyncToken];
        v55 = [daSyncToken3 isEqual:daSyncToken4];

        if (!v55)
        {
          goto LABEL_183;
        }
      }

      daPushKey = [(REMReminderStorage *)self daPushKey];
      daPushKey2 = [(REMReminderStorage *)v6 daPushKey];
      v58 = daPushKey2;
      if (daPushKey == daPushKey2)
      {
      }

      else
      {
        daPushKey3 = [(REMReminderStorage *)self daPushKey];
        daPushKey4 = [(REMReminderStorage *)v6 daPushKey];
        v61 = [daPushKey3 isEqual:daPushKey4];

        if (!v61)
        {
          goto LABEL_183;
        }
      }

      minimumSupportedVersion = [(REMReminderStorage *)self minimumSupportedVersion];
      if (minimumSupportedVersion != [(REMReminderStorage *)v6 minimumSupportedVersion])
      {
        goto LABEL_183;
      }

      effectiveMinimumSupportedVersion = [(REMReminderStorage *)self effectiveMinimumSupportedVersion];
      if (effectiveMinimumSupportedVersion != [(REMReminderStorage *)v6 effectiveMinimumSupportedVersion])
      {
        goto LABEL_183;
      }

      isCompleted = [(REMReminderStorage *)self isCompleted];
      if (isCompleted != [(REMReminderStorage *)v6 isCompleted])
      {
        goto LABEL_183;
      }

      completionDate = [(REMReminderStorage *)self completionDate];
      completionDate2 = [(REMReminderStorage *)v6 completionDate];
      v67 = completionDate2;
      if (completionDate == completionDate2)
      {
      }

      else
      {
        completionDate3 = [(REMReminderStorage *)self completionDate];
        completionDate4 = [(REMReminderStorage *)v6 completionDate];
        v70 = [completionDate3 isEqual:completionDate4];

        if (!v70)
        {
          goto LABEL_183;
        }
      }

      priority = [(REMReminderStorage *)self priority];
      if (priority != [(REMReminderStorage *)v6 priority])
      {
        goto LABEL_183;
      }

      flagged = [(REMReminderStorage *)self flagged];
      if (flagged != [(REMReminderStorage *)v6 flagged])
      {
        goto LABEL_183;
      }

      startDateComponents = [(REMReminderStorage *)self startDateComponents];
      startDateComponents2 = [(REMReminderStorage *)v6 startDateComponents];
      v75 = startDateComponents2;
      if (startDateComponents == startDateComponents2)
      {
      }

      else
      {
        startDateComponents3 = [(REMReminderStorage *)self startDateComponents];
        startDateComponents4 = [(REMReminderStorage *)v6 startDateComponents];
        v78 = [startDateComponents3 isEqual:startDateComponents4];

        if (!v78)
        {
          goto LABEL_183;
        }
      }

      dueDateComponents = [(REMReminderStorage *)self dueDateComponents];
      dueDateComponents2 = [(REMReminderStorage *)v6 dueDateComponents];
      v81 = dueDateComponents2;
      if (dueDateComponents == dueDateComponents2)
      {
      }

      else
      {
        dueDateComponents3 = [(REMReminderStorage *)self dueDateComponents];
        dueDateComponents4 = [(REMReminderStorage *)v6 dueDateComponents];
        v84 = [dueDateComponents3 isEqual:dueDateComponents4];

        if (!v84)
        {
          goto LABEL_183;
        }
      }

      timeZone = [(REMReminderStorage *)self timeZone];
      timeZone2 = [(REMReminderStorage *)v6 timeZone];
      v87 = timeZone2;
      if (timeZone == timeZone2)
      {
      }

      else
      {
        timeZone3 = [(REMReminderStorage *)self timeZone];
        timeZone4 = [(REMReminderStorage *)v6 timeZone];
        v90 = [timeZone3 isEqual:timeZone4];

        if (!v90)
        {
          goto LABEL_183;
        }
      }

      primaryLocaleInferredFromLastUsedKeyboard = [(REMReminderStorage *)self primaryLocaleInferredFromLastUsedKeyboard];
      primaryLocaleInferredFromLastUsedKeyboard2 = [(REMReminderStorage *)v6 primaryLocaleInferredFromLastUsedKeyboard];
      v93 = primaryLocaleInferredFromLastUsedKeyboard2;
      if (primaryLocaleInferredFromLastUsedKeyboard == primaryLocaleInferredFromLastUsedKeyboard2)
      {
      }

      else
      {
        primaryLocaleInferredFromLastUsedKeyboard3 = [(REMReminderStorage *)self primaryLocaleInferredFromLastUsedKeyboard];
        primaryLocaleInferredFromLastUsedKeyboard4 = [(REMReminderStorage *)v6 primaryLocaleInferredFromLastUsedKeyboard];
        v96 = [primaryLocaleInferredFromLastUsedKeyboard3 isEqual:primaryLocaleInferredFromLastUsedKeyboard4];

        if (!v96)
        {
          goto LABEL_183;
        }
      }

      allDay = [(REMReminderStorage *)self allDay];
      if (allDay == [(REMReminderStorage *)v6 allDay])
      {
        creationDate = [(REMReminderStorage *)self creationDate];
        creationDate2 = [(REMReminderStorage *)v6 creationDate];
        v100 = creationDate2;
        if (creationDate == creationDate2)
        {
        }

        else
        {
          creationDate3 = [(REMReminderStorage *)self creationDate];
          creationDate4 = [(REMReminderStorage *)v6 creationDate];
          v103 = [creationDate3 isEqual:creationDate4];

          if (!v103)
          {
            goto LABEL_183;
          }
        }

        lastModifiedDate = [(REMReminderStorage *)self lastModifiedDate];
        lastModifiedDate2 = [(REMReminderStorage *)v6 lastModifiedDate];
        v106 = lastModifiedDate2;
        if (lastModifiedDate == lastModifiedDate2)
        {
        }

        else
        {
          lastModifiedDate3 = [(REMReminderStorage *)self lastModifiedDate];
          lastModifiedDate4 = [(REMReminderStorage *)v6 lastModifiedDate];
          v109 = [lastModifiedDate3 isEqual:lastModifiedDate4];

          if (!v109)
          {
            goto LABEL_183;
          }
        }

        recurrenceRules = [(REMReminderStorage *)self recurrenceRules];
        recurrenceRules2 = [(REMReminderStorage *)v6 recurrenceRules];
        v112 = recurrenceRules2;
        if (recurrenceRules == recurrenceRules2)
        {
        }

        else
        {
          recurrenceRules3 = [(REMReminderStorage *)self recurrenceRules];
          recurrenceRules4 = [(REMReminderStorage *)v6 recurrenceRules];
          v115 = [recurrenceRules3 isEqual:recurrenceRules4];

          if (!v115)
          {
            goto LABEL_183;
          }
        }

        attachments = [(REMReminderStorage *)self attachments];
        attachments2 = [(REMReminderStorage *)v6 attachments];
        v118 = attachments2;
        if (attachments == attachments2)
        {
        }

        else
        {
          attachments3 = [(REMReminderStorage *)self attachments];
          attachments4 = [(REMReminderStorage *)v6 attachments];
          v121 = [attachments3 isEqual:attachments4];

          if (!v121)
          {
            goto LABEL_183;
          }
        }

        alarms = [(REMReminderStorage *)self alarms];
        alarms2 = [(REMReminderStorage *)v6 alarms];
        v124 = alarms2;
        if (alarms == alarms2)
        {
        }

        else
        {
          alarms3 = [(REMReminderStorage *)self alarms];
          alarms4 = [(REMReminderStorage *)v6 alarms];
          v127 = [alarms3 isEqual:alarms4];

          if (!v127)
          {
            goto LABEL_183;
          }
        }

        assignments = [(REMReminderStorage *)self assignments];
        assignments2 = [(REMReminderStorage *)v6 assignments];
        v130 = assignments2;
        if (assignments == assignments2)
        {
        }

        else
        {
          assignments3 = [(REMReminderStorage *)self assignments];
          assignments4 = [(REMReminderStorage *)v6 assignments];
          v133 = [assignments3 isEqual:assignments4];

          if (!v133)
          {
            goto LABEL_183;
          }
        }

        hashtags = [(REMReminderStorage *)self hashtags];
        hashtags2 = [(REMReminderStorage *)v6 hashtags];
        v136 = hashtags2;
        if (hashtags == hashtags2)
        {
        }

        else
        {
          hashtags3 = [(REMReminderStorage *)self hashtags];
          hashtags4 = [(REMReminderStorage *)v6 hashtags];
          v139 = [hashtags3 isEqual:hashtags4];

          if (!v139)
          {
            goto LABEL_183;
          }
        }

        dueDateDeltaAlertsData = [(REMReminderStorage *)self dueDateDeltaAlertsData];
        dueDateDeltaAlertsData2 = [(REMReminderStorage *)v6 dueDateDeltaAlertsData];
        v142 = dueDateDeltaAlertsData2;
        if (dueDateDeltaAlertsData == dueDateDeltaAlertsData2)
        {
        }

        else
        {
          dueDateDeltaAlertsData3 = [(REMReminderStorage *)self dueDateDeltaAlertsData];
          dueDateDeltaAlertsData4 = [(REMReminderStorage *)v6 dueDateDeltaAlertsData];
          v145 = [dueDateDeltaAlertsData3 isEqual:dueDateDeltaAlertsData4];

          if (!v145)
          {
            goto LABEL_183;
          }
        }

        dueDateDeltaAlertsToUpsert = [(REMReminderStorage *)self dueDateDeltaAlertsToUpsert];
        dueDateDeltaAlertsToUpsert2 = [(REMReminderStorage *)v6 dueDateDeltaAlertsToUpsert];
        v148 = dueDateDeltaAlertsToUpsert2;
        if (dueDateDeltaAlertsToUpsert == dueDateDeltaAlertsToUpsert2)
        {
        }

        else
        {
          dueDateDeltaAlertsToUpsert3 = [(REMReminderStorage *)self dueDateDeltaAlertsToUpsert];
          dueDateDeltaAlertsToUpsert4 = [(REMReminderStorage *)v6 dueDateDeltaAlertsToUpsert];
          v151 = [dueDateDeltaAlertsToUpsert3 isEqual:dueDateDeltaAlertsToUpsert4];

          if (!v151)
          {
            goto LABEL_183;
          }
        }

        dueDateDeltaAlertIdentifiersToDelete = [(REMReminderStorage *)self dueDateDeltaAlertIdentifiersToDelete];
        dueDateDeltaAlertIdentifiersToDelete2 = [(REMReminderStorage *)v6 dueDateDeltaAlertIdentifiersToDelete];
        v154 = dueDateDeltaAlertIdentifiersToDelete2;
        if (dueDateDeltaAlertIdentifiersToDelete == dueDateDeltaAlertIdentifiersToDelete2)
        {
        }

        else
        {
          dueDateDeltaAlertIdentifiersToDelete3 = [(REMReminderStorage *)self dueDateDeltaAlertIdentifiersToDelete];
          dueDateDeltaAlertIdentifiersToDelete4 = [(REMReminderStorage *)v6 dueDateDeltaAlertIdentifiersToDelete];
          v157 = [dueDateDeltaAlertIdentifiersToDelete3 isEqual:dueDateDeltaAlertIdentifiersToDelete4];

          if (!v157)
          {
            goto LABEL_183;
          }
        }

        contactHandles = [(REMReminderStorage *)self contactHandles];
        contactHandles2 = [(REMReminderStorage *)v6 contactHandles];
        v160 = contactHandles2;
        if (contactHandles == contactHandles2)
        {
        }

        else
        {
          contactHandles3 = [(REMReminderStorage *)self contactHandles];
          contactHandles4 = [(REMReminderStorage *)v6 contactHandles];
          v163 = [contactHandles3 isEqual:contactHandles4];

          if (!v163)
          {
            goto LABEL_183;
          }
        }

        icsDisplayOrder = [(REMReminderStorage *)self icsDisplayOrder];
        if (icsDisplayOrder == [(REMReminderStorage *)v6 icsDisplayOrder])
        {
          icsUrl = [(REMReminderStorage *)self icsUrl];
          icsUrl2 = [(REMReminderStorage *)v6 icsUrl];
          v167 = icsUrl2;
          if (icsUrl == icsUrl2)
          {
          }

          else
          {
            icsUrl3 = [(REMReminderStorage *)self icsUrl];
            icsUrl4 = [(REMReminderStorage *)v6 icsUrl];
            v170 = [icsUrl3 isEqual:icsUrl4];

            if (!v170)
            {
              goto LABEL_183;
            }
          }

          importedICSData = [(REMReminderStorage *)self importedICSData];
          importedICSData2 = [(REMReminderStorage *)v6 importedICSData];
          v173 = importedICSData2;
          if (importedICSData == importedICSData2)
          {
          }

          else
          {
            importedICSData3 = [(REMReminderStorage *)self importedICSData];
            importedICSData4 = [(REMReminderStorage *)v6 importedICSData];
            v176 = [importedICSData3 isEqual:importedICSData4];

            if (!v176)
            {
              goto LABEL_183;
            }
          }

          prefersUrgentPresentationStyleForDateAlarms = [(REMReminderStorage *)self prefersUrgentPresentationStyleForDateAlarms];
          if (prefersUrgentPresentationStyleForDateAlarms == [(REMReminderStorage *)v6 prefersUrgentPresentationStyleForDateAlarms])
          {
            subtaskIDsToUndelete = [(REMReminderStorage *)self subtaskIDsToUndelete];
            subtaskIDsToUndelete2 = [(REMReminderStorage *)v6 subtaskIDsToUndelete];
            v180 = subtaskIDsToUndelete2;
            if (subtaskIDsToUndelete == subtaskIDsToUndelete2)
            {
            }

            else
            {
              subtaskIDsToUndelete3 = [(REMReminderStorage *)self subtaskIDsToUndelete];
              subtaskIDsToUndelete4 = [(REMReminderStorage *)v6 subtaskIDsToUndelete];
              v183 = [subtaskIDsToUndelete3 isEqual:subtaskIDsToUndelete4];

              if (!v183)
              {
                goto LABEL_183;
              }
            }

            hashtagIDsToUndelete = [(REMReminderStorage *)self hashtagIDsToUndelete];
            hashtagIDsToUndelete2 = [(REMReminderStorage *)v6 hashtagIDsToUndelete];
            v186 = hashtagIDsToUndelete2;
            if (hashtagIDsToUndelete == hashtagIDsToUndelete2)
            {
            }

            else
            {
              hashtagIDsToUndelete3 = [(REMReminderStorage *)self hashtagIDsToUndelete];
              hashtagIDsToUndelete4 = [(REMReminderStorage *)v6 hashtagIDsToUndelete];
              v189 = [hashtagIDsToUndelete3 isEqual:hashtagIDsToUndelete4];

              if (!v189)
              {
                goto LABEL_183;
              }
            }

            userActivity = [(REMReminderStorage *)self userActivity];
            userActivity2 = [(REMReminderStorage *)v6 userActivity];
            v192 = userActivity2;
            if (userActivity == userActivity2)
            {
            }

            else
            {
              userActivity3 = [(REMReminderStorage *)self userActivity];
              userActivity4 = [(REMReminderStorage *)v6 userActivity];
              v195 = [userActivity3 isEqual:userActivity4];

              if (!v195)
              {
                goto LABEL_183;
              }
            }

            batchCreationID = [(REMReminderStorage *)self batchCreationID];
            batchCreationID2 = [(REMReminderStorage *)v6 batchCreationID];
            v198 = batchCreationID2;
            if (batchCreationID == batchCreationID2)
            {
            }

            else
            {
              batchCreationID3 = [(REMReminderStorage *)self batchCreationID];
              batchCreationID4 = [(REMReminderStorage *)v6 batchCreationID];
              v201 = [batchCreationID3 isEqual:batchCreationID4];

              if (!v201)
              {
                goto LABEL_183;
              }
            }

            siriFoundInAppsData = [(REMReminderStorage *)self siriFoundInAppsData];
            siriFoundInAppsData2 = [(REMReminderStorage *)v6 siriFoundInAppsData];
            v204 = siriFoundInAppsData2;
            if (siriFoundInAppsData == siriFoundInAppsData2)
            {
            }

            else
            {
              siriFoundInAppsData3 = [(REMReminderStorage *)self siriFoundInAppsData];
              siriFoundInAppsData4 = [(REMReminderStorage *)v6 siriFoundInAppsData];
              v207 = [siriFoundInAppsData3 isEqual:siriFoundInAppsData4];

              if (!v207)
              {
                goto LABEL_183;
              }
            }

            siriFoundInAppsUserConfirmation = [(REMReminderStorage *)self siriFoundInAppsUserConfirmation];
            if (siriFoundInAppsUserConfirmation == [(REMReminderStorage *)v6 siriFoundInAppsUserConfirmation])
            {
              lastBannerPresentationDate = [(REMReminderStorage *)self lastBannerPresentationDate];
              lastBannerPresentationDate2 = [(REMReminderStorage *)v6 lastBannerPresentationDate];
              v211 = lastBannerPresentationDate2;
              if (lastBannerPresentationDate == lastBannerPresentationDate2)
              {
              }

              else
              {
                lastBannerPresentationDate3 = [(REMReminderStorage *)self lastBannerPresentationDate];
                lastBannerPresentationDate4 = [(REMReminderStorage *)v6 lastBannerPresentationDate];
                v214 = [lastBannerPresentationDate3 isEqual:lastBannerPresentationDate4];

                if (!v214)
                {
                  goto LABEL_183;
                }
              }

              displayDate = [(REMReminderStorage *)self displayDate];
              displayDate2 = [(REMReminderStorage *)v6 displayDate];
              v217 = displayDate2;
              if (displayDate == displayDate2)
              {
              }

              else
              {
                displayDate3 = [(REMReminderStorage *)self displayDate];
                displayDate4 = [(REMReminderStorage *)v6 displayDate];
                v220 = [displayDate3 isEqual:displayDate4];

                if (!v220)
                {
                  goto LABEL_183;
                }
              }

              alternativeDisplayDateDate_forCalendar = [(REMReminderStorage *)self alternativeDisplayDateDate_forCalendar];
              alternativeDisplayDateDate_forCalendar2 = [(REMReminderStorage *)v6 alternativeDisplayDateDate_forCalendar];
              v223 = alternativeDisplayDateDate_forCalendar2;
              if (alternativeDisplayDateDate_forCalendar == alternativeDisplayDateDate_forCalendar2)
              {
              }

              else
              {
                alternativeDisplayDateDate_forCalendar3 = [(REMReminderStorage *)self alternativeDisplayDateDate_forCalendar];
                alternativeDisplayDateDate_forCalendar4 = [(REMReminderStorage *)v6 alternativeDisplayDateDate_forCalendar];
                v226 = [alternativeDisplayDateDate_forCalendar3 isEqual:alternativeDisplayDateDate_forCalendar4];

                if (!v226)
                {
                  goto LABEL_183;
                }
              }

              titleDocumentData = [(REMReminderStorage *)self titleDocumentData];
              if (titleDocumentData || ([(REMReminderStorage *)v6 titleDocumentData], (v230 = objc_claimAutoreleasedReturnValue()) == 0))
              {
                titleDocumentData2 = [(REMReminderStorage *)self titleDocumentData];
                if (titleDocumentData2)
                {
                  titleDocumentData3 = [(REMReminderStorage *)v6 titleDocumentData];

                  if (titleDocumentData)
                  {
                  }

                  if (!titleDocumentData3)
                  {
                    goto LABEL_183;
                  }
                }

                else
                {

                  if (titleDocumentData)
                  {
                  }
                }

                if (!self->_hasDeserializedTitleDocument)
                {
                  v231 = +[REMLogStore read];
                  if (os_log_type_enabled(v231, OS_LOG_TYPE_FAULT))
                  {
                    [REMReminderStorage isEqual:];
                  }
                }

                titleDocument = [(REMReminderStorage *)self titleDocument];
                titleDocument2 = [(REMReminderStorage *)v6 titleDocument];
                v234 = titleDocument2;
                if (titleDocument == titleDocument2)
                {
                }

                else
                {
                  titleDocument3 = [(REMReminderStorage *)self titleDocument];
                  titleDocument4 = [(REMReminderStorage *)v6 titleDocument];
                  v237 = [titleDocument3 isEqual:titleDocument4];

                  if (!v237)
                  {
                    goto LABEL_183;
                  }
                }

                titleAsString = [(REMReminderStorage *)self titleAsString];
                titleAsString2 = [(REMReminderStorage *)v6 titleAsString];
                v240 = titleAsString2;
                if (titleAsString == titleAsString2)
                {
                }

                else
                {
                  titleAsString3 = [(REMReminderStorage *)self titleAsString];
                  titleAsString4 = [(REMReminderStorage *)v6 titleAsString];
                  v243 = [titleAsString3 isEqual:titleAsString4];

                  if (!v243)
                  {
                    goto LABEL_183;
                  }
                }

                notesDocumentData = [(REMReminderStorage *)self notesDocumentData];
                if (notesDocumentData || ([(REMReminderStorage *)v6 notesDocumentData], (v230 = objc_claimAutoreleasedReturnValue()) == 0))
                {
                  notesDocumentData2 = [(REMReminderStorage *)self notesDocumentData];
                  if (notesDocumentData2)
                  {
                    notesDocumentData3 = [(REMReminderStorage *)v6 notesDocumentData];

                    if (notesDocumentData)
                    {
                    }

                    if (!notesDocumentData3)
                    {
                      goto LABEL_183;
                    }
                  }

                  else
                  {

                    if (notesDocumentData)
                    {
                    }
                  }

                  if (!self->_hasDeserializedNotesDocument)
                  {
                    v249 = +[REMLogStore read];
                    if (os_log_type_enabled(v249, OS_LOG_TYPE_FAULT))
                    {
                      [REMReminderStorage isEqual:];
                    }
                  }

                  notesDocument = [(REMReminderStorage *)self notesDocument];
                  notesDocument2 = [(REMReminderStorage *)v6 notesDocument];
                  v252 = notesDocument2;
                  if (notesDocument == notesDocument2)
                  {
                  }

                  else
                  {
                    notesDocument3 = [(REMReminderStorage *)self notesDocument];
                    notesDocument4 = [(REMReminderStorage *)v6 notesDocument];
                    v255 = [notesDocument3 isEqual:notesDocument4];

                    if (!v255)
                    {
                      goto LABEL_183;
                    }
                  }

                  notesAsString = [(REMReminderStorage *)self notesAsString];
                  notesAsString2 = [(REMReminderStorage *)v6 notesAsString];
                  v258 = notesAsString2;
                  if (notesAsString == notesAsString2)
                  {
                  }

                  else
                  {
                    notesAsString3 = [(REMReminderStorage *)self notesAsString];
                    notesAsString4 = [(REMReminderStorage *)v6 notesAsString];
                    v261 = [notesAsString3 isEqual:notesAsString4];

                    if (!v261)
                    {
                      goto LABEL_183;
                    }
                  }

                  if (!self->_resolutionTokenMap || v6->_resolutionTokenMap)
                  {
                    v262 = +[REMLogStore read];
                    if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
                    {
                      v268 = objc_opt_class();
                      v269 = NSStringFromClass(v268);
                      resolutionTokenMap = self->_resolutionTokenMap;
                      v271 = v6->_resolutionTokenMap;
                      v272 = 138543874;
                      v273 = v269;
                      v274 = 2112;
                      v275 = resolutionTokenMap;
                      v276 = 2112;
                      v277 = v271;
                      _os_log_error_impl(&dword_19A0DB000, v262, OS_LOG_TYPE_ERROR, "You are about to trigger decoding the resolution token map from JSON data. This is probably not what you want for performance to trigger it from -isEqual:, unless you are running Tests then it's fine {class: %{public}@, self-map: %@, other-map: %@}", &v272, 0x20u);
                    }
                  }

                  resolutionTokenMap = [(REMReminderStorage *)self resolutionTokenMap];
                  resolutionTokenMap2 = [(REMReminderStorage *)v6 resolutionTokenMap];
                  v265 = resolutionTokenMap2;
                  if (resolutionTokenMap == resolutionTokenMap2)
                  {

                    v13 = 1;
                  }

                  else
                  {
                    resolutionTokenMap3 = [(REMReminderStorage *)self resolutionTokenMap];
                    resolutionTokenMap4 = [(REMReminderStorage *)v6 resolutionTokenMap];
                    v13 = [resolutionTokenMap3 isEqual:resolutionTokenMap4];
                  }

                  goto LABEL_184;
                }
              }
            }
          }
        }
      }
    }

LABEL_183:
    v13 = 0;
LABEL_184:

    goto LABEL_185;
  }

  v13 = 1;
LABEL_185:

  v247 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (unint64_t)hash
{
  objectID = [(REMReminderStorage *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (REMReminderStorage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v86 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listID"];
  v87 = v6;
  v88 = v5;
  v7 = [REMReminderStorage initWithObjectID:"initWithObjectID:listID:accountID:" listID:v6 accountID:?];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentReminderID"];
  [(REMReminderStorage *)v7 setParentReminderID:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daCalendarItemUniqueIdentifier"];
  [(REMReminderStorage *)v7 setDaCalendarItemUniqueIdentifier:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
  [(REMReminderStorage *)v7 setExternalIdentifier:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalModificationTag"];
  [(REMReminderStorage *)v7 setExternalModificationTag:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daSyncToken"];
  [(REMReminderStorage *)v7 setDaSyncToken:v12];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daPushKey"];
  [(REMReminderStorage *)v7 setDaPushKey:v13];

  -[REMReminderStorage setMinimumSupportedVersion:](v7, "setMinimumSupportedVersion:", [coderCopy decodeIntegerForKey:@"minimumSupportedVersion"]);
  -[REMReminderStorage setEffectiveMinimumSupportedVersion:](v7, "setEffectiveMinimumSupportedVersion:", [coderCopy decodeIntegerForKey:@"effectiveMinimumSupportedVersion"]);
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleDocumentData"];
  [(REMReminderStorage *)v7 setTitleDocumentData:v14];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleAsString"];
  [(REMReminderStorage *)v7 setTitleAsString:v15];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryLocaleInferredFromLastUsedKeyboard"];
  [(REMReminderStorage *)v7 setPrimaryLocaleInferredFromLastUsedKeyboard:v16];

  -[REMReminderStorage setCompleted:](v7, "setCompleted:", [coderCopy decodeBoolForKey:@"isCompleted"]);
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"completionDate"];
  [(REMReminderStorage *)v7 setCompletionDate:v17];

  -[REMReminderStorage setPriority:](v7, "setPriority:", [coderCopy decodeIntegerForKey:@"priority"]);
  -[REMReminderStorage setFlagged:](v7, "setFlagged:", [coderCopy decodeIntegerForKey:@"flagged"]);
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDateComponents"];
  [(REMReminderStorage *)v7 setStartDateComponents:v18];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dueDateComponents"];
  [(REMReminderStorage *)v7 setDueDateComponents:v19];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
  [(REMReminderStorage *)v7 setTimeZone:v20];

  -[REMReminderStorage setAllDay:](v7, "setAllDay:", [coderCopy decodeBoolForKey:@"allDay"]);
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [(REMReminderStorage *)v7 setCreationDate:v21];

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedDate"];
  [(REMReminderStorage *)v7 setLastModifiedDate:v22];

  v23 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
  v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"recurrenceRules"];
  [(REMReminderStorage *)v7 setRecurrenceRules:v26];

  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notesDocumentData"];
  [(REMReminderStorage *)v7 setNotesDocumentData:v27];

  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notesAsString"];
  [(REMReminderStorage *)v7 setNotesAsString:v28];

  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
  v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"attachments"];
  [(REMReminderStorage *)v7 setAttachments:v32];

  v33 = MEMORY[0x1E695DFD8];
  v34 = objc_opt_class();
  v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
  v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"alarms"];
  [(REMReminderStorage *)v7 setAlarms:v36];

  v37 = MEMORY[0x1E695DFD8];
  v38 = objc_opt_class();
  v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
  v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"assignments"];
  [(REMReminderStorage *)v7 setAssignments:v40];

  v41 = MEMORY[0x1E695DFD8];
  v42 = objc_opt_class();
  v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
  v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"hashtags"];
  [(REMReminderStorage *)v7 setHashtags:v44];

  v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dueDateDeltaAlertsData"];
  [(REMReminderStorage *)v7 setDueDateDeltaAlertsData:v45];

  v46 = MEMORY[0x1E695DFD8];
  v47 = objc_opt_class();
  v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
  v49 = [coderCopy decodeObjectOfClasses:v48 forKey:@"dueDateDeltaAlertsToUpsert"];
  [(REMReminderStorage *)v7 setDueDateDeltaAlertsToUpsert:v49];

  v50 = MEMORY[0x1E695DFD8];
  v51 = objc_opt_class();
  v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
  v53 = [coderCopy decodeObjectOfClasses:v52 forKey:@"dueDateDeltaAlertIdentifiersToDelete"];
  [(REMReminderStorage *)v7 setDueDateDeltaAlertIdentifiersToDelete:v53];

  -[REMReminderStorage setIcsDisplayOrder:](v7, "setIcsDisplayOrder:", [coderCopy decodeIntegerForKey:@"icsDisplayOrder"]);
  v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icsUrl"];
  [(REMReminderStorage *)v7 setIcsUrl:v54];

  v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"importedICSData"];
  [(REMReminderStorage *)v7 setImportedICSData:v55];

  -[REMReminderStorage setPrefersUrgentPresentationStyleForDateAlarms:](v7, "setPrefersUrgentPresentationStyleForDateAlarms:", [coderCopy decodeBoolForKey:@"prefersUrgentPresentationStyleForDateAlarms"]);
  v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userActivity"];
  [(REMReminderStorage *)v7 setUserActivity:v56];

  v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batchCreationID"];
  [(REMReminderStorage *)v7 setBatchCreationID:v57];

  v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"siriFoundInAppsData"];
  [(REMReminderStorage *)v7 setSiriFoundInAppsData:v58];

  v59 = [coderCopy decodeIntegerForKey:@"siriFoundInAppsUserConfirmation"];
  if (v59 >= 3)
  {
    v60 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
    {
      [(REMReminderStorage *)v59 initWithCoder:v60];
    }

    v59 = 0;
  }

  [(REMReminderStorage *)v7 setSiriFoundInAppsUserConfirmation:v59];
  v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastBannerPresentationDate"];
  [(REMReminderStorage *)v7 setLastBannerPresentationDate:v61];

  v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayDate"];
  [(REMReminderStorage *)v7 setDisplayDate:v62];

  v63 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMapData"];
  v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMap"];
  if (v64)
  {
    objc_storeStrong(&v7->_resolutionTokenMap, v64);
    resolutionTokenMapData = v7->_resolutionTokenMapData;
    v7->_resolutionTokenMapData = 0;
  }

  else
  {
    resolutionTokenMap = v7->_resolutionTokenMap;
    v7->_resolutionTokenMap = 0;

    v67 = v63;
    resolutionTokenMapData = v7->_resolutionTokenMapData;
    v7->_resolutionTokenMapData = v67;
  }

  v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactHandles"];
  if (v68)
  {
    [(REMReminderStorage *)v7 setContactHandles:v68];
  }

  v69 = MEMORY[0x1E695DFD8];
  v70 = objc_opt_class();
  v71 = [v69 setWithObjects:{v70, objc_opt_class(), 0}];
  v72 = [coderCopy decodeObjectOfClasses:v71 forKey:@"subtaskIDsToUndelete"];

  if (v72)
  {
    v73 = [MEMORY[0x1E695DFD8] setWithArray:v72];
    [(REMReminderStorage *)v7 setSubtaskIDsToUndelete:v73];
  }

  v74 = MEMORY[0x1E695DFD8];
  v75 = objc_opt_class();
  v76 = [v74 setWithObjects:{v75, objc_opt_class(), 0}];
  v77 = [coderCopy decodeObjectOfClasses:v76 forKey:@"hashtagIDsToUndelete"];

  if (v77)
  {
    v78 = [MEMORY[0x1E695DFD8] setWithArray:v77];
    [(REMReminderStorage *)v7 setHashtagIDsToUndelete:v78];
  }

  v79 = MEMORY[0x1E695DFD8];
  v80 = objc_opt_class();
  v81 = [v79 setWithObjects:{v80, objc_opt_class(), 0}];
  v82 = [coderCopy decodeObjectOfClasses:v81 forKey:@"fetchedDueDateDeltaAlerts"];
  fetchedDueDateDeltaAlerts = v7->_fetchedDueDateDeltaAlerts;
  v7->_fetchedDueDateDeltaAlerts = v82;

  v84 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alternativeDisplayDateDate_forCalendar"];
  [(REMReminderStorage *)v7 setAlternativeDisplayDateDate_forCalendar:v84];

  return v7;
}

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  objectID = [(REMReminderStorage *)self objectID];
  attachments = [(REMReminderStorage *)self attachments];
  v6 = [attachments count];
  alarms = [(REMReminderStorage *)self alarms];
  v8 = [alarms count];
  assignments = [(REMReminderStorage *)self assignments];
  v10 = [assignments count];
  hashtags = [(REMReminderStorage *)self hashtags];
  v12 = [v14 stringWithFormat:@"<%@: %p objectID: %@, attachments.count: %ld, alarms.count: %ld, assignments.count: %ld, hashtags.count: %ld>", v3, self, objectID, v6, v8, v10, objc_msgSend(hashtags, "count")];

  return v12;
}

- (id)datesDebugDescriptionInTimeZone:(id)zone
{
  zoneCopy = zone;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v57 = zoneCopy;
  v6 = [MEMORY[0x1E696AC80] rem_formatterWithTimeZone:zoneCopy];
  startDateComponents = [(REMReminderStorage *)self startDateComponents];

  v8 = 0x1E696A000uLL;
  if (startDateComponents)
  {
    startDateComponents2 = [(REMReminderStorage *)self startDateComponents];
    v10 = [v6 rem_stringFromDateComponents:startDateComponents2];

    v11 = MEMORY[0x1E696AEC0];
    startDateComponents3 = [(REMReminderStorage *)self startDateComponents];
    timeZone = [startDateComponents3 timeZone];
    v14 = [v11 stringWithFormat:@"startDate: %@ tz: %@", v10, timeZone];
    [v5 addObject:v14];
  }

  dueDateComponents = [(REMReminderStorage *)self dueDateComponents];

  if (dueDateComponents)
  {
    dueDateComponents2 = [(REMReminderStorage *)self dueDateComponents];
    v17 = [v6 rem_stringFromDateComponents:dueDateComponents2];

    v18 = MEMORY[0x1E696AEC0];
    dueDateComponents3 = [(REMReminderStorage *)self dueDateComponents];
    timeZone2 = [dueDateComponents3 timeZone];
    v21 = [v18 stringWithFormat:@"dueDate: %@ tz: %@", v17, timeZone2];
    [v5 addObject:v21];
  }

  displayDate = [(REMReminderStorage *)self displayDate];

  if (displayDate)
  {
    displayDate2 = [(REMReminderStorage *)self displayDate];
    date = [displayDate2 date];
    v25 = [v6 stringFromDate:date];

    v26 = MEMORY[0x1E696AEC0];
    displayDate3 = [(REMReminderStorage *)self displayDate];
    timeZone3 = [displayDate3 timeZone];
    v29 = [v26 stringWithFormat:@"displayDate: %@ tz: %@", v25, timeZone3];
    [v5 addObject:v29];
  }

  v58 = v6;
  alarms = [(REMReminderStorage *)self alarms];
  v31 = [alarms count];

  if (v31)
  {
    v32 = 0;
    v33 = 0x1E7506000uLL;
    v34 = @"alarm[%ld]: %@";
    v59 = v5;
    do
    {
      alarms2 = [(REMReminderStorage *)self alarms];
      v36 = [alarms2 objectAtIndexedSubscript:v32];

      trigger = [v36 trigger];
      v38 = *(v33 + 2352);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      trigger2 = [v36 trigger];
      v41 = trigger2;
      if (isKindOfClass)
      {
        dateComponents = [trigger2 dateComponents];
        v43 = [v58 rem_stringFromDateComponents:dateComponents];

        v44 = *(v8 + 3776);
        [v41 dateComponents];
        selfCopy = self;
        v46 = v34;
        v48 = v47 = v33;
        timeZone4 = [v48 timeZone];
        v50 = [v44 stringWithFormat:@"%@ tz: %@", v43, timeZone4];

        v8 = 0x1E696A000;
        v33 = v47;
        v34 = v46;
        self = selfCopy;
      }

      else
      {
        v51 = objc_opt_class();
        v50 = NSStringFromClass(v51);
      }

      v52 = [*(v8 + 3776) stringWithFormat:v34, v32, v50];
      v5 = v59;
      [v59 addObject:v52];

      ++v32;
      alarms3 = [(REMReminderStorage *)self alarms];
      v54 = [alarms3 count];

      v55 = v32 >= v54;
      v8 = 0x1E696A000;
    }

    while (!v55);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectID = [(REMReminderStorage *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];

  listID = [(REMReminderStorage *)self listID];
  [coderCopy encodeObject:listID forKey:@"listID"];

  accountID = [(REMReminderStorage *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  parentReminderID = [(REMReminderStorage *)self parentReminderID];
  [coderCopy encodeObject:parentReminderID forKey:@"parentReminderID"];

  daCalendarItemUniqueIdentifier = [(REMReminderStorage *)self daCalendarItemUniqueIdentifier];
  [coderCopy encodeObject:daCalendarItemUniqueIdentifier forKey:@"daCalendarItemUniqueIdentifier"];

  externalIdentifier = [(REMReminderStorage *)self externalIdentifier];
  [coderCopy encodeObject:externalIdentifier forKey:@"externalIdentifier"];

  externalModificationTag = [(REMReminderStorage *)self externalModificationTag];
  [coderCopy encodeObject:externalModificationTag forKey:@"externalModificationTag"];

  daSyncToken = [(REMReminderStorage *)self daSyncToken];
  [coderCopy encodeObject:daSyncToken forKey:@"daSyncToken"];

  daPushKey = [(REMReminderStorage *)self daPushKey];
  [coderCopy encodeObject:daPushKey forKey:@"daPushKey"];

  [coderCopy encodeInteger:-[REMReminderStorage minimumSupportedVersion](self forKey:{"minimumSupportedVersion"), @"minimumSupportedVersion"}];
  [coderCopy encodeInteger:-[REMReminderStorage effectiveMinimumSupportedVersion](self forKey:{"effectiveMinimumSupportedVersion"), @"effectiveMinimumSupportedVersion"}];
  [coderCopy encodeBool:-[REMReminderStorage isCompleted](self forKey:{"isCompleted"), @"isCompleted"}];
  completionDate = [(REMReminderStorage *)self completionDate];
  [coderCopy encodeObject:completionDate forKey:@"completionDate"];

  [coderCopy encodeInteger:-[REMReminderStorage priority](self forKey:{"priority"), @"priority"}];
  [coderCopy encodeInteger:-[REMReminderStorage flagged](self forKey:{"flagged"), @"flagged"}];
  startDateComponents = [(REMReminderStorage *)self startDateComponents];
  [coderCopy encodeObject:startDateComponents forKey:@"startDateComponents"];

  dueDateComponents = [(REMReminderStorage *)self dueDateComponents];
  [coderCopy encodeObject:dueDateComponents forKey:@"dueDateComponents"];

  primaryLocaleInferredFromLastUsedKeyboard = [(REMReminderStorage *)self primaryLocaleInferredFromLastUsedKeyboard];
  [coderCopy encodeObject:primaryLocaleInferredFromLastUsedKeyboard forKey:@"primaryLocaleInferredFromLastUsedKeyboard"];

  timeZone = [(REMReminderStorage *)self timeZone];
  [coderCopy encodeObject:timeZone forKey:@"timeZone"];

  [coderCopy encodeBool:-[REMReminderStorage allDay](self forKey:{"allDay"), @"allDay"}];
  creationDate = [(REMReminderStorage *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];

  lastModifiedDate = [(REMReminderStorage *)self lastModifiedDate];
  [coderCopy encodeObject:lastModifiedDate forKey:@"lastModifiedDate"];

  recurrenceRules = [(REMReminderStorage *)self recurrenceRules];
  [coderCopy encodeObject:recurrenceRules forKey:@"recurrenceRules"];

  attachments = [(REMReminderStorage *)self attachments];
  [coderCopy encodeObject:attachments forKey:@"attachments"];

  alarms = [(REMReminderStorage *)self alarms];
  [coderCopy encodeObject:alarms forKey:@"alarms"];

  assignments = [(REMReminderStorage *)self assignments];
  [coderCopy encodeObject:assignments forKey:@"assignments"];

  hashtags = [(REMReminderStorage *)self hashtags];
  [coderCopy encodeObject:hashtags forKey:@"hashtags"];

  dueDateDeltaAlertsData = [(REMReminderStorage *)self dueDateDeltaAlertsData];
  [coderCopy encodeObject:dueDateDeltaAlertsData forKey:@"dueDateDeltaAlertsData"];

  dueDateDeltaAlertsToUpsert = [(REMReminderStorage *)self dueDateDeltaAlertsToUpsert];
  [coderCopy encodeObject:dueDateDeltaAlertsToUpsert forKey:@"dueDateDeltaAlertsToUpsert"];

  dueDateDeltaAlertIdentifiersToDelete = [(REMReminderStorage *)self dueDateDeltaAlertIdentifiersToDelete];
  [coderCopy encodeObject:dueDateDeltaAlertIdentifiersToDelete forKey:@"dueDateDeltaAlertIdentifiersToDelete"];

  contactHandles = [(REMReminderStorage *)self contactHandles];
  [coderCopy encodeObject:contactHandles forKey:@"contactHandles"];

  [coderCopy encodeInteger:-[REMReminderStorage icsDisplayOrder](self forKey:{"icsDisplayOrder"), @"icsDisplayOrder"}];
  icsUrl = [(REMReminderStorage *)self icsUrl];
  [coderCopy encodeObject:icsUrl forKey:@"icsUrl"];

  importedICSData = [(REMReminderStorage *)self importedICSData];
  [coderCopy encodeObject:importedICSData forKey:@"importedICSData"];

  [coderCopy encodeBool:-[REMReminderStorage prefersUrgentPresentationStyleForDateAlarms](self forKey:{"prefersUrgentPresentationStyleForDateAlarms"), @"prefersUrgentPresentationStyleForDateAlarms"}];
  userActivity = [(REMReminderStorage *)self userActivity];
  [coderCopy encodeObject:userActivity forKey:@"userActivity"];

  batchCreationID = [(REMReminderStorage *)self batchCreationID];
  [coderCopy encodeObject:batchCreationID forKey:@"batchCreationID"];

  siriFoundInAppsData = [(REMReminderStorage *)self siriFoundInAppsData];
  [coderCopy encodeObject:siriFoundInAppsData forKey:@"siriFoundInAppsData"];

  [coderCopy encodeInteger:-[REMReminderStorage siriFoundInAppsUserConfirmation](self forKey:{"siriFoundInAppsUserConfirmation"), @"siriFoundInAppsUserConfirmation"}];
  lastBannerPresentationDate = [(REMReminderStorage *)self lastBannerPresentationDate];
  [coderCopy encodeObject:lastBannerPresentationDate forKey:@"lastBannerPresentationDate"];

  displayDate = [(REMReminderStorage *)self displayDate];
  [coderCopy encodeObject:displayDate forKey:@"displayDate"];

  if (self->_hasDeserializedTitleDocument)
  {
    if (self->_deserializedTitleDocumentCache)
    {
      titleDocumentData = [(REMReminderStorage *)self titleDocumentData];
      v37 = [titleDocumentData length];

      if (!v37)
      {
        serializedData = [(REMCRMergeableStringDocument *)self->_deserializedTitleDocumentCache serializedData];
        [(REMReminderStorage *)self setTitleDocumentData:serializedData];
      }
    }

    else
    {
      [(REMReminderStorage *)self setTitleDocumentData:0];
    }
  }

  titleDocumentData2 = [(REMReminderStorage *)self titleDocumentData];
  [coderCopy encodeObject:titleDocumentData2 forKey:@"titleDocumentData"];

  titleAsString = [(REMReminderStorage *)self titleAsString];
  [coderCopy encodeObject:titleAsString forKey:@"titleAsString"];

  if (self->_hasDeserializedNotesDocument)
  {
    if (self->_deserializedNotesDocumentCache)
    {
      notesDocumentData = [(REMReminderStorage *)self notesDocumentData];
      v42 = [notesDocumentData length];

      if (!v42)
      {
        serializedData2 = [(REMCRMergeableStringDocument *)self->_deserializedNotesDocumentCache serializedData];
        [(REMReminderStorage *)self setNotesDocumentData:serializedData2];
      }
    }

    else
    {
      [(REMReminderStorage *)self setNotesDocumentData:0];
    }
  }

  notesDocumentData2 = [(REMReminderStorage *)self notesDocumentData];
  [coderCopy encodeObject:notesDocumentData2 forKey:@"notesDocumentData"];

  notesAsString = [(REMReminderStorage *)self notesAsString];
  [coderCopy encodeObject:notesAsString forKey:@"notesAsString"];

  resolutionTokenMap = self->_resolutionTokenMap;
  if (resolutionTokenMap)
  {
    [coderCopy encodeObject:resolutionTokenMap forKey:@"resolutionTokenMap"];
    [coderCopy encodeObject:0 forKey:@"resolutionTokenMapData"];
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"resolutionTokenMap"];
    resolutionTokenMapData = [(REMReminderStorage *)self resolutionTokenMapData];
    [coderCopy encodeObject:resolutionTokenMapData forKey:@"resolutionTokenMapData"];
  }

  subtaskIDsToUndelete = [(REMReminderStorage *)self subtaskIDsToUndelete];
  allObjects = [subtaskIDsToUndelete allObjects];
  [coderCopy encodeObject:allObjects forKey:@"subtaskIDsToUndelete"];

  hashtagIDsToUndelete = [(REMReminderStorage *)self hashtagIDsToUndelete];
  allObjects2 = [hashtagIDsToUndelete allObjects];
  [coderCopy encodeObject:allObjects2 forKey:@"hashtagIDsToUndelete"];

  [coderCopy encodeObject:self->_fetchedDueDateDeltaAlerts forKey:@"fetchedDueDateDeltaAlerts"];
  alternativeDisplayDateDate_forCalendar = [(REMReminderStorage *)self alternativeDisplayDateDate_forCalendar];
  [coderCopy encodeObject:alternativeDisplayDateDate_forCalendar forKey:@"alternativeDisplayDateDate_forCalendar"];
}

- (void)setStoreGenerationIfNeeded:(unint64_t)needed
{
  if (!self->_storeGeneration)
  {
    self->_storeGeneration = needed;
  }
}

- (id)titleDocument
{
  if (self->_hasDeserializedTitleDocument)
  {
    v3 = self->_deserializedTitleDocumentCache;
  }

  else
  {
    self->_hasDeserializedTitleDocument = 1;
    titleDocumentData = [(REMReminderStorage *)self titleDocumentData];
    titleReplicaIDSource = [(REMReminderStorage *)self titleReplicaIDSource];
    objectID = [(REMReminderStorage *)self objectID];
    v3 = [REMCRMergeableStringDocument documentFromSerializedData:titleDocumentData replicaIDSource:titleReplicaIDSource forKey:@"titleDocument" ofObjectID:objectID];

    titleDocumentData2 = [(REMReminderStorage *)self titleDocumentData];

    if (!titleDocumentData2 || v3)
    {
      objc_storeStrong(&self->_deserializedTitleDocumentCache, v3);
    }

    else
    {
      v8 = +[REMLogStore read];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(REMReminderStorage *)v8 titleDocument];
      }
    }
  }

  return v3;
}

- (void)setTitleDocument:(id)document
{
  documentCopy = document;
  self->_hasDeserializedTitleDocument = 1;
  objc_storeStrong(&self->_deserializedTitleDocumentCache, document);
  string = [documentCopy string];
  [(REMReminderStorage *)self setTitleAsString:string];

  if (documentCopy)
  {
    data = [MEMORY[0x1E695DEF0] data];
    [(REMReminderStorage *)self setTitleDocumentData:data];
  }

  else
  {
    [(REMReminderStorage *)self setTitleDocumentData:0];
  }
}

- (id)notesDocument
{
  if (self->_hasDeserializedNotesDocument)
  {
    v3 = self->_deserializedNotesDocumentCache;
  }

  else
  {
    self->_hasDeserializedNotesDocument = 1;
    notesDocumentData = [(REMReminderStorage *)self notesDocumentData];
    notesReplicaIDSource = [(REMReminderStorage *)self notesReplicaIDSource];
    objectID = [(REMReminderStorage *)self objectID];
    v3 = [REMCRMergeableStringDocument documentFromSerializedData:notesDocumentData replicaIDSource:notesReplicaIDSource forKey:@"notesDocument" ofObjectID:objectID];

    notesDocumentData2 = [(REMReminderStorage *)self notesDocumentData];

    if (!notesDocumentData2 || v3)
    {
      objc_storeStrong(&self->_deserializedNotesDocumentCache, v3);
    }

    else
    {
      v8 = +[REMLogStore read];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(REMReminderStorage *)v8 notesDocument];
      }
    }
  }

  return v3;
}

- (void)setNotesDocument:(id)document
{
  documentCopy = document;
  self->_hasDeserializedNotesDocument = 1;
  objc_storeStrong(&self->_deserializedNotesDocumentCache, document);
  string = [documentCopy string];
  [(REMReminderStorage *)self setNotesAsString:string];

  if (documentCopy)
  {
    data = [MEMORY[0x1E695DEF0] data];
    [(REMReminderStorage *)self setNotesDocumentData:data];
  }

  else
  {
    [(REMReminderStorage *)self setNotesDocumentData:0];
  }
}

- (NSString)legacyNotificationIdentifier
{
  daCalendarItemUniqueIdentifier = [(REMReminderStorage *)self daCalendarItemUniqueIdentifier];
  if (daCalendarItemUniqueIdentifier)
  {
    if (legacyNotificationIdentifier_onceToken != -1)
    {
      [REMReminderStorage legacyNotificationIdentifier];
    }

    v3 = [daCalendarItemUniqueIdentifier stringByAddingPercentEncodingWithAllowedCharacters:legacyNotificationIdentifier_allowedCharacters];
    if (v3)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"x-apple-eventkit-alert-x-apple-reminder://%@", v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __50__REMReminderStorage_legacyNotificationIdentifier__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInString:{@"/?&:$+, ;=@"}];
  v1 = [v3 copy];
  v2 = legacyNotificationIdentifier_allowedCharacters;
  legacyNotificationIdentifier_allowedCharacters = v1;
}

- (id)currentAssignment
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  assignments = [(REMReminderStorage *)self assignments];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__REMReminderStorage_currentAssignment__block_invoke;
  v5[3] = &unk_1E7507A50;
  v5[4] = &v6;
  [assignments enumerateObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__REMReminderStorage_currentAssignment__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v12 = v4;
  if (v8)
  {
    [v7 orderValue];
    v10 = v9;
    [v12 orderValue];
    if (v10 > v11)
    {
      goto LABEL_5;
    }

    v6 = (*(*(a1 + 32) + 8) + 40);
  }

  objc_storeStrong(v6, a2);
LABEL_5:
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
  effectiveMinimumSupportedVersion = [(REMReminderStorage *)self effectiveMinimumSupportedVersion];

  return rem_isUnsupportedVersionByRuntime(effectiveMinimumSupportedVersion);
}

- (id)cdKeyToStorageKeyMap
{
  objectID = [(REMReminderStorage *)self objectID];
  entityName = [objectID entityName];
  v4 = +[REMTemplate cdEntityNameForSavedReminder];
  v5 = [entityName isEqualToString:v4];

  if (v5)
  {
    if (cdSavedReminderKeyToStorageKeyMap_onceToken != -1)
    {
      [REMReminderStorage cdKeyToStorageKeyMap];
    }

    v6 = &cdSavedReminderKeyToStorageKeyMap_mapping;
  }

  else
  {
    if (cdReminderKeyToStorageKeyMap_onceToken != -1)
    {
      [REMReminderStorage cdKeyToStorageKeyMap];
    }

    v6 = &cdReminderKeyToStorageKeyMap_mapping;
  }

  v7 = *v6;

  return v7;
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
    resolutionTokenMapData = [(REMReminderStorage *)self resolutionTokenMapData];
    if (!resolutionTokenMapData)
    {
      v7 = +[REMLogStore read];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(REMReminderStorage *)self resolutionTokenMap];
      }
    }

    cdKeyToStorageKeyMap = [(REMReminderStorage *)self cdKeyToStorageKeyMap];
    v9 = [REMResolutionTokenMap resolutionTokenMapWithJSONData:resolutionTokenMapData keyMap:cdKeyToStorageKeyMap];

    objc_storeStrong(p_resolutionTokenMap, v9);
    v5 = v9;
  }

  return v5;
}

+ (id)titleReplicaIDSourceWithAccountID:(id)d reminderID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v7 = [[REMReplicaIDSource alloc] initWithAccountID:dCopy objectID:iDCopy property:@"titleDocument"];

  return v7;
}

+ (id)notesReplicaIDSourceWithAccountID:(id)d reminderID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v7 = [[REMReplicaIDSource alloc] initWithAccountID:dCopy objectID:iDCopy property:@"notesDocument"];

  return v7;
}

- (id)titleReplicaIDSource
{
  accountID = [(REMReminderStorage *)self accountID];
  objectID = [(REMReminderStorage *)self objectID];
  v5 = [REMReminderStorage titleReplicaIDSourceWithAccountID:accountID reminderID:objectID];

  return v5;
}

- (id)notesReplicaIDSource
{
  accountID = [(REMReminderStorage *)self accountID];
  objectID = [(REMReminderStorage *)self objectID];
  v5 = [REMReminderStorage notesReplicaIDSourceWithAccountID:accountID reminderID:objectID];

  return v5;
}

- (void)updateDisplayDate
{
  v3 = [REMDisplayDate alloc];
  dueDateComponents = [(REMReminderStorage *)self dueDateComponents];
  alarms = [(REMReminderStorage *)self alarms];
  v5 = [(REMDisplayDate *)v3 initWithDueDateComponents:dueDateComponents alarms:alarms];
  [(REMReminderStorage *)self setDisplayDate:v5];
}

+ (BOOL)isDate:(id)date overdueAtReferenceDate:(id)referenceDate allDay:(BOOL)day floatingDateSecondsFromGMT:(int64_t)t floatingDateTargetTimeZone:(id)zone showAllDayRemindersAsOverdue:(BOOL)overdue showTimedRemindersAsOverdue:(BOOL)asOverdue
{
  overdueCopy = overdue;
  dateCopy = date;
  referenceDateCopy = referenceDate;
  zoneCopy = zone;
  if (!day)
  {
    if (asOverdue)
    {
      [referenceDateCopy timeIntervalSinceDate:dateCopy];
      v21 = v22 > 0.0;
      goto LABEL_7;
    }

LABEL_6:
    v21 = 0;
    goto LABEL_7;
  }

  if (!overdueCopy)
  {
    goto LABEL_6;
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v18 = [currentCalendar startOfDayForDate:referenceDateCopy];

  v19 = [v18 dateByAddingTimeInterval:{(objc_msgSend(zoneCopy, "secondsFromGMT") - t)}];

  [v19 timeIntervalSinceDate:dateCopy];
  v21 = v20 > 0.0;

LABEL_7:
  return v21;
}

- (BOOL)isOverdue
{
  displayDate = [(REMReminderStorage *)self displayDate];

  if (!displayDate)
  {
    return 0;
  }

  v4 = +[REMUserDefaults daemonUserDefaults];
  v5 = [v4 treatRemindersAsNotOverdue] ^ 1;

  displayDate2 = [(REMReminderStorage *)self displayDate];
  date = [displayDate2 date];
  date2 = [MEMORY[0x1E695DF00] date];
  displayDate3 = [(REMReminderStorage *)self displayDate];
  isAllDay = [displayDate3 isAllDay];
  displayDate4 = [(REMReminderStorage *)self displayDate];
  floatingDateSecondsFromGMT = [displayDate4 floatingDateSecondsFromGMT];
  defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  if (v5)
  {
    v15 = +[REMUserDefaults daemonUserDefaults];
    LOBYTE(v17) = v5;
    v14 = +[REMReminderStorage isDate:overdueAtReferenceDate:allDay:floatingDateSecondsFromGMT:floatingDateTargetTimeZone:showAllDayRemindersAsOverdue:showTimedRemindersAsOverdue:](REMReminderStorage, "isDate:overdueAtReferenceDate:allDay:floatingDateSecondsFromGMT:floatingDateTargetTimeZone:showAllDayRemindersAsOverdue:showTimedRemindersAsOverdue:", date, date2, isAllDay, floatingDateSecondsFromGMT, defaultTimeZone, [v15 showRemindersAsOverdue], v17);
  }

  else
  {
    LOBYTE(v17) = v5;
    v14 = [REMReminderStorage isDate:date overdueAtReferenceDate:date2 allDay:isAllDay floatingDateSecondsFromGMT:floatingDateSecondsFromGMT floatingDateTargetTimeZone:defaultTimeZone showAllDayRemindersAsOverdue:0 showTimedRemindersAsOverdue:v17];
  }

  return v14;
}

- (BOOL)isRecurrent
{
  recurrenceRules = [(REMReminderStorage *)self recurrenceRules];
  v3 = [recurrenceRules count] != 0;

  return v3;
}

- (BOOL)hasUnfetchedDueDateDeltaAlerts
{
  dueDateDeltaAlertsData = [(REMReminderStorage *)self dueDateDeltaAlertsData];
  if (dueDateDeltaAlertsData)
  {
    fetchedDueDateDeltaAlerts = [(REMReminderStorage *)self fetchedDueDateDeltaAlerts];
    v5 = fetchedDueDateDeltaAlerts == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setFetchedDueDateDeltaAlerts:(id)alerts
{
  v4 = [alerts copy];
  fetchedDueDateDeltaAlerts = self->_fetchedDueDateDeltaAlerts;
  self->_fetchedDueDateDeltaAlerts = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)effectiveDisplayDateComponents_forCalendar
{
  displayDate = [(REMReminderStorage *)self displayDate];
  if (displayDate)
  {
    alternativeDisplayDateDate_forCalendar = [(REMReminderStorage *)self alternativeDisplayDateDate_forCalendar];
    if (alternativeDisplayDateDate_forCalendar && ([(REMReminderStorage *)self isCompleted]|| ![(REMReminderStorage *)self isRecurrent]))
    {
      timeZone = [displayDate timeZone];
      v7 = MEMORY[0x1E695DF10];
      isAllDay = [displayDate isAllDay];
      if (timeZone)
      {
        [v7 rem_dateComponentsWithDate:alternativeDisplayDateDate_forCalendar timeZone:timeZone isAllDay:isAllDay];
      }

      else
      {
        [v7 rem_dateComponentsWithDateUsingArchivingTimeZone:alternativeDisplayDateDate_forCalendar isAllDay:isAllDay];
      }
      dateComponentsRepresentation = ;
    }

    else
    {
      dateComponentsRepresentation = [displayDate dateComponentsRepresentation];
    }
  }

  else
  {
    dateComponentsRepresentation = 0;
  }

  return dateComponentsRepresentation;
}

- (void)setAlternativeDisplayDateDateForCalendarWithDateComponents:(id)components
{
  componentsCopy = components;
  timeZone = [componentsCopy timeZone];
  if (componentsCopy)
  {
    if (timeZone)
    {
      [MEMORY[0x1E695DF10] rem_dateWithDateComponents:componentsCopy timeZone:timeZone];
    }

    else
    {
      [MEMORY[0x1E695DF10] rem_dateWithDateComponentsUsingArchivingTimeZone:componentsCopy];
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  [(REMReminderStorage *)self setAlternativeDisplayDateDate_forCalendar:v5];
}

- (void)isEqual:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_4(&dword_19A0DB000, v0, v1, "Tried to compare two REMReminderStorage instances without first deserializing their CRDT titleDocument {self: %@, other: %@}");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)isEqual:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_4(&dword_19A0DB000, v0, v1, "Tried to compare two REMReminderStorage instances without first deserializing their CRDT notesDocument {self: %@, other: %@}");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMSiriFoundInAppsUserConfirmation %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)resolutionTokenMap
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_0_6();
  selfCopy = self;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Nil resolutionTokenMapData when reading resolutionTokenMap from reminder storage. Initialize an empty map {class: %{public}@, reminder: %@}", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end