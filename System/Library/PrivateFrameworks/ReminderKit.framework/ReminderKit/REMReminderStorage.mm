@interface REMReminderStorage
+ (BOOL)isDate:(id)a3 overdueAtReferenceDate:(id)a4 allDay:(BOOL)a5 floatingDateSecondsFromGMT:(int64_t)a6 floatingDateTargetTimeZone:(id)a7 showAllDayRemindersAsOverdue:(BOOL)a8 showTimedRemindersAsOverdue:(BOOL)a9;
+ (id)newObjectID;
+ (id)notesReplicaIDSourceWithAccountID:(id)a3 reminderID:(id)a4;
+ (id)objectIDWithUUID:(id)a3;
+ (id)titleReplicaIDSourceWithAccountID:(id)a3 reminderID:(id)a4;
- (BOOL)hasUnfetchedDueDateDeltaAlerts;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOverdue;
- (BOOL)isRecurrent;
- (BOOL)isUnsupported;
- (NSString)legacyNotificationIdentifier;
- (REMReminderStorage)initWithCoder:(id)a3;
- (REMReminderStorage)initWithObjectID:(id)a3 listID:(id)a4 accountID:(id)a5;
- (REMResolutionTokenMap)resolutionTokenMap;
- (id)cdKeyToStorageKeyMap;
- (id)copyWithZone:(_NSZone *)a3;
- (id)currentAssignment;
- (id)datesDebugDescriptionInTimeZone:(id)a3;
- (id)description;
- (id)effectiveDisplayDateComponents_forCalendar;
- (id)notesDocument;
- (id)notesReplicaIDSource;
- (id)titleDocument;
- (id)titleReplicaIDSource;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)resolutionTokenMap;
- (void)setAlternativeDisplayDateDateForCalendarWithDateComponents:(id)a3;
- (void)setFetchedDueDateDeltaAlerts:(id)a3;
- (void)setNotesDocument:(id)a3;
- (void)setStoreGenerationIfNeeded:(unint64_t)a3;
- (void)setTitleDocument:(id)a3;
- (void)updateDisplayDate;
@end

@implementation REMReminderStorage

- (REMReminderStorage)initWithObjectID:(id)a3 listID:(id)a4 accountID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = REMReminderStorage;
  v12 = [(REMReminderStorage *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_objectID, a3);
    v14 = [v9 uuid];
    v15 = [v14 UUIDString];
    daCalendarItemUniqueIdentifier = v13->_daCalendarItemUniqueIdentifier;
    v13->_daCalendarItemUniqueIdentifier = v15;

    objc_storeStrong(&v13->_listID, a4);
    objc_storeStrong(&v13->_accountID, a5);
    v17 = objc_alloc_init(REMResolutionTokenMap);
    resolutionTokenMap = v13->_resolutionTokenMap;
    v13->_resolutionTokenMap = v17;

    v19 = [MEMORY[0x1E695DEF0] data];
    resolutionTokenMapData = v13->_resolutionTokenMapData;
    v13->_resolutionTokenMapData = v19;

    v21 = [MEMORY[0x1E695DFD8] set];
    subtaskIDsToUndelete = v13->_subtaskIDsToUndelete;
    v13->_subtaskIDsToUndelete = v21;

    v23 = [MEMORY[0x1E695DFD8] set];
    hashtagIDsToUndelete = v13->_hashtagIDsToUndelete;
    v13->_hashtagIDsToUndelete = v23;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [REMReminderStorage alloc];
  v5 = [(REMReminderStorage *)self objectID];
  v6 = [(REMReminderStorage *)self listID];
  v7 = [(REMReminderStorage *)self accountID];
  v8 = [(REMReminderStorage *)v4 initWithObjectID:v5 listID:v6 accountID:v7];

  v9 = [(REMReminderStorage *)self parentReminderID];
  [v8 setParentReminderID:v9];

  v10 = [(REMReminderStorage *)self daCalendarItemUniqueIdentifier];
  [v8 setDaCalendarItemUniqueIdentifier:v10];

  v11 = [(REMReminderStorage *)self externalIdentifier];
  [v8 setExternalIdentifier:v11];

  v12 = [(REMReminderStorage *)self externalModificationTag];
  [v8 setExternalModificationTag:v12];

  v13 = [(REMReminderStorage *)self daSyncToken];
  [v8 setDaSyncToken:v13];

  v14 = [(REMReminderStorage *)self daPushKey];
  [v8 setDaPushKey:v14];

  v15 = [(REMReminderStorage *)self titleDocumentData];
  [v8 setTitleDocumentData:v15];

  v16 = [(REMReminderStorage *)self titleAsString];
  [v8 setTitleAsString:v16];

  v17 = [(REMReminderStorage *)self primaryLocaleInferredFromLastUsedKeyboard];
  [v8 setPrimaryLocaleInferredFromLastUsedKeyboard:v17];

  [v8 setCompleted:{-[REMReminderStorage isCompleted](self, "isCompleted")}];
  v18 = [(REMReminderStorage *)self completionDate];
  [v8 setCompletionDate:v18];

  [v8 setPriority:{-[REMReminderStorage priority](self, "priority")}];
  [v8 setFlagged:{-[REMReminderStorage flagged](self, "flagged")}];
  v19 = [(REMReminderStorage *)self startDateComponents];
  [v8 setStartDateComponents:v19];

  v20 = [(REMReminderStorage *)self dueDateComponents];
  [v8 setDueDateComponents:v20];

  v21 = [(REMReminderStorage *)self timeZone];
  [v8 setTimeZone:v21];

  [v8 setAllDay:{-[REMReminderStorage allDay](self, "allDay")}];
  v22 = [(REMReminderStorage *)self creationDate];
  [v8 setCreationDate:v22];

  v23 = [(REMReminderStorage *)self lastModifiedDate];
  [v8 setLastModifiedDate:v23];

  v24 = [(REMReminderStorage *)self recurrenceRules];
  [v8 setRecurrenceRules:v24];

  v25 = [(REMReminderStorage *)self notesDocumentData];
  [v8 setNotesDocumentData:v25];

  v26 = [(REMReminderStorage *)self notesAsString];
  [v8 setNotesAsString:v26];

  v27 = [(REMReminderStorage *)self attachments];
  [v8 setAttachments:v27];

  v28 = [(REMReminderStorage *)self alarms];
  [v8 setAlarms:v28];

  v29 = [(REMReminderStorage *)self assignments];
  [v8 setAssignments:v29];

  v30 = [(REMReminderStorage *)self hashtags];
  [v8 setHashtags:v30];

  v31 = [(REMReminderStorage *)self dueDateDeltaAlertsData];
  [v8 setDueDateDeltaAlertsData:v31];

  v32 = [(REMReminderStorage *)self dueDateDeltaAlertsToUpsert];
  [v8 setDueDateDeltaAlertsToUpsert:v32];

  v33 = [(REMReminderStorage *)self dueDateDeltaAlertIdentifiersToDelete];
  [v8 setDueDateDeltaAlertIdentifiersToDelete:v33];

  v34 = [(REMResolutionTokenMap *)self->_resolutionTokenMap copy];
  v35 = *(v8 + 184);
  *(v8 + 184) = v34;

  v36 = [(REMReminderStorage *)self resolutionTokenMapData];
  [v8 setResolutionTokenMapData:v36];

  v37 = [(REMReminderStorage *)self contactHandles];
  [v8 setContactHandles:v37];

  [v8 setIcsDisplayOrder:{-[REMReminderStorage icsDisplayOrder](self, "icsDisplayOrder")}];
  v38 = [(REMReminderStorage *)self icsUrl];
  [v8 setIcsUrl:v38];

  v39 = [(REMReminderStorage *)self importedICSData];
  [v8 setImportedICSData:v39];

  [v8 setPrefersUrgentPresentationStyleForDateAlarms:{-[REMReminderStorage prefersUrgentPresentationStyleForDateAlarms](self, "prefersUrgentPresentationStyleForDateAlarms")}];
  v40 = [(REMReminderStorage *)self subtaskIDsToUndelete];
  v41 = [v40 copy];
  [v8 setSubtaskIDsToUndelete:v41];

  v42 = [(REMReminderStorage *)self hashtagIDsToUndelete];
  v43 = [v42 copy];
  [v8 setHashtagIDsToUndelete:v43];

  v44 = [(REMReminderStorage *)self userActivity];
  v45 = [v44 copy];
  [v8 setUserActivity:v45];

  v46 = [(REMReminderStorage *)self batchCreationID];
  v47 = [v46 copy];
  [v8 setBatchCreationID:v47];

  v48 = [(REMReminderStorage *)self siriFoundInAppsData];
  v49 = [v48 copy];
  [v8 setSiriFoundInAppsData:v49];

  [v8 setSiriFoundInAppsUserConfirmation:{-[REMReminderStorage siriFoundInAppsUserConfirmation](self, "siriFoundInAppsUserConfirmation")}];
  v50 = [(REMReminderStorage *)self lastBannerPresentationDate];
  [v8 setLastBannerPresentationDate:v50];

  v51 = [(REMReminderStorage *)self displayDate];
  [v8 setDisplayDate:v51];

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

  v54 = [(REMReminderStorage *)self alternativeDisplayDateDate_forCalendar];
  [v8 setAlternativeDisplayDateDate_forCalendar:v54];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v278 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMReminderStorage *)self objectID];
      v8 = [(REMReminderStorage *)v6 objectID];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMReminderStorage *)self objectID];
        v11 = [(REMReminderStorage *)v6 objectID];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_183;
        }
      }

      v14 = [(REMReminderStorage *)self listID];
      v15 = [(REMReminderStorage *)v6 listID];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(REMReminderStorage *)self listID];
        v18 = [(REMReminderStorage *)v6 listID];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_183;
        }
      }

      v20 = [(REMReminderStorage *)self accountID];
      v21 = [(REMReminderStorage *)v6 accountID];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(REMReminderStorage *)self accountID];
        v24 = [(REMReminderStorage *)v6 accountID];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_183;
        }
      }

      v26 = [(REMReminderStorage *)self parentReminderID];
      v27 = [(REMReminderStorage *)v6 parentReminderID];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(REMReminderStorage *)self parentReminderID];
        v30 = [(REMReminderStorage *)v6 parentReminderID];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_183;
        }
      }

      v32 = [(REMReminderStorage *)self daCalendarItemUniqueIdentifier];
      v33 = [(REMReminderStorage *)v6 daCalendarItemUniqueIdentifier];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(REMReminderStorage *)self daCalendarItemUniqueIdentifier];
        v36 = [(REMReminderStorage *)v6 daCalendarItemUniqueIdentifier];
        v37 = [v35 isEqual:v36];

        if (!v37)
        {
          goto LABEL_183;
        }
      }

      v38 = [(REMReminderStorage *)self externalIdentifier];
      v39 = [(REMReminderStorage *)v6 externalIdentifier];
      v40 = v39;
      if (v38 == v39)
      {
      }

      else
      {
        v41 = [(REMReminderStorage *)self externalIdentifier];
        v42 = [(REMReminderStorage *)v6 externalIdentifier];
        v43 = [v41 isEqual:v42];

        if (!v43)
        {
          goto LABEL_183;
        }
      }

      v44 = [(REMReminderStorage *)self externalModificationTag];
      v45 = [(REMReminderStorage *)v6 externalModificationTag];
      v46 = v45;
      if (v44 == v45)
      {
      }

      else
      {
        v47 = [(REMReminderStorage *)self externalModificationTag];
        v48 = [(REMReminderStorage *)v6 externalModificationTag];
        v49 = [v47 isEqual:v48];

        if (!v49)
        {
          goto LABEL_183;
        }
      }

      v50 = [(REMReminderStorage *)self daSyncToken];
      v51 = [(REMReminderStorage *)v6 daSyncToken];
      v52 = v51;
      if (v50 == v51)
      {
      }

      else
      {
        v53 = [(REMReminderStorage *)self daSyncToken];
        v54 = [(REMReminderStorage *)v6 daSyncToken];
        v55 = [v53 isEqual:v54];

        if (!v55)
        {
          goto LABEL_183;
        }
      }

      v56 = [(REMReminderStorage *)self daPushKey];
      v57 = [(REMReminderStorage *)v6 daPushKey];
      v58 = v57;
      if (v56 == v57)
      {
      }

      else
      {
        v59 = [(REMReminderStorage *)self daPushKey];
        v60 = [(REMReminderStorage *)v6 daPushKey];
        v61 = [v59 isEqual:v60];

        if (!v61)
        {
          goto LABEL_183;
        }
      }

      v62 = [(REMReminderStorage *)self minimumSupportedVersion];
      if (v62 != [(REMReminderStorage *)v6 minimumSupportedVersion])
      {
        goto LABEL_183;
      }

      v63 = [(REMReminderStorage *)self effectiveMinimumSupportedVersion];
      if (v63 != [(REMReminderStorage *)v6 effectiveMinimumSupportedVersion])
      {
        goto LABEL_183;
      }

      v64 = [(REMReminderStorage *)self isCompleted];
      if (v64 != [(REMReminderStorage *)v6 isCompleted])
      {
        goto LABEL_183;
      }

      v65 = [(REMReminderStorage *)self completionDate];
      v66 = [(REMReminderStorage *)v6 completionDate];
      v67 = v66;
      if (v65 == v66)
      {
      }

      else
      {
        v68 = [(REMReminderStorage *)self completionDate];
        v69 = [(REMReminderStorage *)v6 completionDate];
        v70 = [v68 isEqual:v69];

        if (!v70)
        {
          goto LABEL_183;
        }
      }

      v71 = [(REMReminderStorage *)self priority];
      if (v71 != [(REMReminderStorage *)v6 priority])
      {
        goto LABEL_183;
      }

      v72 = [(REMReminderStorage *)self flagged];
      if (v72 != [(REMReminderStorage *)v6 flagged])
      {
        goto LABEL_183;
      }

      v73 = [(REMReminderStorage *)self startDateComponents];
      v74 = [(REMReminderStorage *)v6 startDateComponents];
      v75 = v74;
      if (v73 == v74)
      {
      }

      else
      {
        v76 = [(REMReminderStorage *)self startDateComponents];
        v77 = [(REMReminderStorage *)v6 startDateComponents];
        v78 = [v76 isEqual:v77];

        if (!v78)
        {
          goto LABEL_183;
        }
      }

      v79 = [(REMReminderStorage *)self dueDateComponents];
      v80 = [(REMReminderStorage *)v6 dueDateComponents];
      v81 = v80;
      if (v79 == v80)
      {
      }

      else
      {
        v82 = [(REMReminderStorage *)self dueDateComponents];
        v83 = [(REMReminderStorage *)v6 dueDateComponents];
        v84 = [v82 isEqual:v83];

        if (!v84)
        {
          goto LABEL_183;
        }
      }

      v85 = [(REMReminderStorage *)self timeZone];
      v86 = [(REMReminderStorage *)v6 timeZone];
      v87 = v86;
      if (v85 == v86)
      {
      }

      else
      {
        v88 = [(REMReminderStorage *)self timeZone];
        v89 = [(REMReminderStorage *)v6 timeZone];
        v90 = [v88 isEqual:v89];

        if (!v90)
        {
          goto LABEL_183;
        }
      }

      v91 = [(REMReminderStorage *)self primaryLocaleInferredFromLastUsedKeyboard];
      v92 = [(REMReminderStorage *)v6 primaryLocaleInferredFromLastUsedKeyboard];
      v93 = v92;
      if (v91 == v92)
      {
      }

      else
      {
        v94 = [(REMReminderStorage *)self primaryLocaleInferredFromLastUsedKeyboard];
        v95 = [(REMReminderStorage *)v6 primaryLocaleInferredFromLastUsedKeyboard];
        v96 = [v94 isEqual:v95];

        if (!v96)
        {
          goto LABEL_183;
        }
      }

      v97 = [(REMReminderStorage *)self allDay];
      if (v97 == [(REMReminderStorage *)v6 allDay])
      {
        v98 = [(REMReminderStorage *)self creationDate];
        v99 = [(REMReminderStorage *)v6 creationDate];
        v100 = v99;
        if (v98 == v99)
        {
        }

        else
        {
          v101 = [(REMReminderStorage *)self creationDate];
          v102 = [(REMReminderStorage *)v6 creationDate];
          v103 = [v101 isEqual:v102];

          if (!v103)
          {
            goto LABEL_183;
          }
        }

        v104 = [(REMReminderStorage *)self lastModifiedDate];
        v105 = [(REMReminderStorage *)v6 lastModifiedDate];
        v106 = v105;
        if (v104 == v105)
        {
        }

        else
        {
          v107 = [(REMReminderStorage *)self lastModifiedDate];
          v108 = [(REMReminderStorage *)v6 lastModifiedDate];
          v109 = [v107 isEqual:v108];

          if (!v109)
          {
            goto LABEL_183;
          }
        }

        v110 = [(REMReminderStorage *)self recurrenceRules];
        v111 = [(REMReminderStorage *)v6 recurrenceRules];
        v112 = v111;
        if (v110 == v111)
        {
        }

        else
        {
          v113 = [(REMReminderStorage *)self recurrenceRules];
          v114 = [(REMReminderStorage *)v6 recurrenceRules];
          v115 = [v113 isEqual:v114];

          if (!v115)
          {
            goto LABEL_183;
          }
        }

        v116 = [(REMReminderStorage *)self attachments];
        v117 = [(REMReminderStorage *)v6 attachments];
        v118 = v117;
        if (v116 == v117)
        {
        }

        else
        {
          v119 = [(REMReminderStorage *)self attachments];
          v120 = [(REMReminderStorage *)v6 attachments];
          v121 = [v119 isEqual:v120];

          if (!v121)
          {
            goto LABEL_183;
          }
        }

        v122 = [(REMReminderStorage *)self alarms];
        v123 = [(REMReminderStorage *)v6 alarms];
        v124 = v123;
        if (v122 == v123)
        {
        }

        else
        {
          v125 = [(REMReminderStorage *)self alarms];
          v126 = [(REMReminderStorage *)v6 alarms];
          v127 = [v125 isEqual:v126];

          if (!v127)
          {
            goto LABEL_183;
          }
        }

        v128 = [(REMReminderStorage *)self assignments];
        v129 = [(REMReminderStorage *)v6 assignments];
        v130 = v129;
        if (v128 == v129)
        {
        }

        else
        {
          v131 = [(REMReminderStorage *)self assignments];
          v132 = [(REMReminderStorage *)v6 assignments];
          v133 = [v131 isEqual:v132];

          if (!v133)
          {
            goto LABEL_183;
          }
        }

        v134 = [(REMReminderStorage *)self hashtags];
        v135 = [(REMReminderStorage *)v6 hashtags];
        v136 = v135;
        if (v134 == v135)
        {
        }

        else
        {
          v137 = [(REMReminderStorage *)self hashtags];
          v138 = [(REMReminderStorage *)v6 hashtags];
          v139 = [v137 isEqual:v138];

          if (!v139)
          {
            goto LABEL_183;
          }
        }

        v140 = [(REMReminderStorage *)self dueDateDeltaAlertsData];
        v141 = [(REMReminderStorage *)v6 dueDateDeltaAlertsData];
        v142 = v141;
        if (v140 == v141)
        {
        }

        else
        {
          v143 = [(REMReminderStorage *)self dueDateDeltaAlertsData];
          v144 = [(REMReminderStorage *)v6 dueDateDeltaAlertsData];
          v145 = [v143 isEqual:v144];

          if (!v145)
          {
            goto LABEL_183;
          }
        }

        v146 = [(REMReminderStorage *)self dueDateDeltaAlertsToUpsert];
        v147 = [(REMReminderStorage *)v6 dueDateDeltaAlertsToUpsert];
        v148 = v147;
        if (v146 == v147)
        {
        }

        else
        {
          v149 = [(REMReminderStorage *)self dueDateDeltaAlertsToUpsert];
          v150 = [(REMReminderStorage *)v6 dueDateDeltaAlertsToUpsert];
          v151 = [v149 isEqual:v150];

          if (!v151)
          {
            goto LABEL_183;
          }
        }

        v152 = [(REMReminderStorage *)self dueDateDeltaAlertIdentifiersToDelete];
        v153 = [(REMReminderStorage *)v6 dueDateDeltaAlertIdentifiersToDelete];
        v154 = v153;
        if (v152 == v153)
        {
        }

        else
        {
          v155 = [(REMReminderStorage *)self dueDateDeltaAlertIdentifiersToDelete];
          v156 = [(REMReminderStorage *)v6 dueDateDeltaAlertIdentifiersToDelete];
          v157 = [v155 isEqual:v156];

          if (!v157)
          {
            goto LABEL_183;
          }
        }

        v158 = [(REMReminderStorage *)self contactHandles];
        v159 = [(REMReminderStorage *)v6 contactHandles];
        v160 = v159;
        if (v158 == v159)
        {
        }

        else
        {
          v161 = [(REMReminderStorage *)self contactHandles];
          v162 = [(REMReminderStorage *)v6 contactHandles];
          v163 = [v161 isEqual:v162];

          if (!v163)
          {
            goto LABEL_183;
          }
        }

        v164 = [(REMReminderStorage *)self icsDisplayOrder];
        if (v164 == [(REMReminderStorage *)v6 icsDisplayOrder])
        {
          v165 = [(REMReminderStorage *)self icsUrl];
          v166 = [(REMReminderStorage *)v6 icsUrl];
          v167 = v166;
          if (v165 == v166)
          {
          }

          else
          {
            v168 = [(REMReminderStorage *)self icsUrl];
            v169 = [(REMReminderStorage *)v6 icsUrl];
            v170 = [v168 isEqual:v169];

            if (!v170)
            {
              goto LABEL_183;
            }
          }

          v171 = [(REMReminderStorage *)self importedICSData];
          v172 = [(REMReminderStorage *)v6 importedICSData];
          v173 = v172;
          if (v171 == v172)
          {
          }

          else
          {
            v174 = [(REMReminderStorage *)self importedICSData];
            v175 = [(REMReminderStorage *)v6 importedICSData];
            v176 = [v174 isEqual:v175];

            if (!v176)
            {
              goto LABEL_183;
            }
          }

          v177 = [(REMReminderStorage *)self prefersUrgentPresentationStyleForDateAlarms];
          if (v177 == [(REMReminderStorage *)v6 prefersUrgentPresentationStyleForDateAlarms])
          {
            v178 = [(REMReminderStorage *)self subtaskIDsToUndelete];
            v179 = [(REMReminderStorage *)v6 subtaskIDsToUndelete];
            v180 = v179;
            if (v178 == v179)
            {
            }

            else
            {
              v181 = [(REMReminderStorage *)self subtaskIDsToUndelete];
              v182 = [(REMReminderStorage *)v6 subtaskIDsToUndelete];
              v183 = [v181 isEqual:v182];

              if (!v183)
              {
                goto LABEL_183;
              }
            }

            v184 = [(REMReminderStorage *)self hashtagIDsToUndelete];
            v185 = [(REMReminderStorage *)v6 hashtagIDsToUndelete];
            v186 = v185;
            if (v184 == v185)
            {
            }

            else
            {
              v187 = [(REMReminderStorage *)self hashtagIDsToUndelete];
              v188 = [(REMReminderStorage *)v6 hashtagIDsToUndelete];
              v189 = [v187 isEqual:v188];

              if (!v189)
              {
                goto LABEL_183;
              }
            }

            v190 = [(REMReminderStorage *)self userActivity];
            v191 = [(REMReminderStorage *)v6 userActivity];
            v192 = v191;
            if (v190 == v191)
            {
            }

            else
            {
              v193 = [(REMReminderStorage *)self userActivity];
              v194 = [(REMReminderStorage *)v6 userActivity];
              v195 = [v193 isEqual:v194];

              if (!v195)
              {
                goto LABEL_183;
              }
            }

            v196 = [(REMReminderStorage *)self batchCreationID];
            v197 = [(REMReminderStorage *)v6 batchCreationID];
            v198 = v197;
            if (v196 == v197)
            {
            }

            else
            {
              v199 = [(REMReminderStorage *)self batchCreationID];
              v200 = [(REMReminderStorage *)v6 batchCreationID];
              v201 = [v199 isEqual:v200];

              if (!v201)
              {
                goto LABEL_183;
              }
            }

            v202 = [(REMReminderStorage *)self siriFoundInAppsData];
            v203 = [(REMReminderStorage *)v6 siriFoundInAppsData];
            v204 = v203;
            if (v202 == v203)
            {
            }

            else
            {
              v205 = [(REMReminderStorage *)self siriFoundInAppsData];
              v206 = [(REMReminderStorage *)v6 siriFoundInAppsData];
              v207 = [v205 isEqual:v206];

              if (!v207)
              {
                goto LABEL_183;
              }
            }

            v208 = [(REMReminderStorage *)self siriFoundInAppsUserConfirmation];
            if (v208 == [(REMReminderStorage *)v6 siriFoundInAppsUserConfirmation])
            {
              v209 = [(REMReminderStorage *)self lastBannerPresentationDate];
              v210 = [(REMReminderStorage *)v6 lastBannerPresentationDate];
              v211 = v210;
              if (v209 == v210)
              {
              }

              else
              {
                v212 = [(REMReminderStorage *)self lastBannerPresentationDate];
                v213 = [(REMReminderStorage *)v6 lastBannerPresentationDate];
                v214 = [v212 isEqual:v213];

                if (!v214)
                {
                  goto LABEL_183;
                }
              }

              v215 = [(REMReminderStorage *)self displayDate];
              v216 = [(REMReminderStorage *)v6 displayDate];
              v217 = v216;
              if (v215 == v216)
              {
              }

              else
              {
                v218 = [(REMReminderStorage *)self displayDate];
                v219 = [(REMReminderStorage *)v6 displayDate];
                v220 = [v218 isEqual:v219];

                if (!v220)
                {
                  goto LABEL_183;
                }
              }

              v221 = [(REMReminderStorage *)self alternativeDisplayDateDate_forCalendar];
              v222 = [(REMReminderStorage *)v6 alternativeDisplayDateDate_forCalendar];
              v223 = v222;
              if (v221 == v222)
              {
              }

              else
              {
                v224 = [(REMReminderStorage *)self alternativeDisplayDateDate_forCalendar];
                v225 = [(REMReminderStorage *)v6 alternativeDisplayDateDate_forCalendar];
                v226 = [v224 isEqual:v225];

                if (!v226)
                {
                  goto LABEL_183;
                }
              }

              v227 = [(REMReminderStorage *)self titleDocumentData];
              if (v227 || ([(REMReminderStorage *)v6 titleDocumentData], (v230 = objc_claimAutoreleasedReturnValue()) == 0))
              {
                v228 = [(REMReminderStorage *)self titleDocumentData];
                if (v228)
                {
                  v229 = [(REMReminderStorage *)v6 titleDocumentData];

                  if (v227)
                  {
                  }

                  if (!v229)
                  {
                    goto LABEL_183;
                  }
                }

                else
                {

                  if (v227)
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

                v232 = [(REMReminderStorage *)self titleDocument];
                v233 = [(REMReminderStorage *)v6 titleDocument];
                v234 = v233;
                if (v232 == v233)
                {
                }

                else
                {
                  v235 = [(REMReminderStorage *)self titleDocument];
                  v236 = [(REMReminderStorage *)v6 titleDocument];
                  v237 = [v235 isEqual:v236];

                  if (!v237)
                  {
                    goto LABEL_183;
                  }
                }

                v238 = [(REMReminderStorage *)self titleAsString];
                v239 = [(REMReminderStorage *)v6 titleAsString];
                v240 = v239;
                if (v238 == v239)
                {
                }

                else
                {
                  v241 = [(REMReminderStorage *)self titleAsString];
                  v242 = [(REMReminderStorage *)v6 titleAsString];
                  v243 = [v241 isEqual:v242];

                  if (!v243)
                  {
                    goto LABEL_183;
                  }
                }

                v244 = [(REMReminderStorage *)self notesDocumentData];
                if (v244 || ([(REMReminderStorage *)v6 notesDocumentData], (v230 = objc_claimAutoreleasedReturnValue()) == 0))
                {
                  v245 = [(REMReminderStorage *)self notesDocumentData];
                  if (v245)
                  {
                    v246 = [(REMReminderStorage *)v6 notesDocumentData];

                    if (v244)
                    {
                    }

                    if (!v246)
                    {
                      goto LABEL_183;
                    }
                  }

                  else
                  {

                    if (v244)
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

                  v250 = [(REMReminderStorage *)self notesDocument];
                  v251 = [(REMReminderStorage *)v6 notesDocument];
                  v252 = v251;
                  if (v250 == v251)
                  {
                  }

                  else
                  {
                    v253 = [(REMReminderStorage *)self notesDocument];
                    v254 = [(REMReminderStorage *)v6 notesDocument];
                    v255 = [v253 isEqual:v254];

                    if (!v255)
                    {
                      goto LABEL_183;
                    }
                  }

                  v256 = [(REMReminderStorage *)self notesAsString];
                  v257 = [(REMReminderStorage *)v6 notesAsString];
                  v258 = v257;
                  if (v256 == v257)
                  {
                  }

                  else
                  {
                    v259 = [(REMReminderStorage *)self notesAsString];
                    v260 = [(REMReminderStorage *)v6 notesAsString];
                    v261 = [v259 isEqual:v260];

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

                  v263 = [(REMReminderStorage *)self resolutionTokenMap];
                  v264 = [(REMReminderStorage *)v6 resolutionTokenMap];
                  v265 = v264;
                  if (v263 == v264)
                  {

                    v13 = 1;
                  }

                  else
                  {
                    v266 = [(REMReminderStorage *)self resolutionTokenMap];
                    v267 = [(REMReminderStorage *)v6 resolutionTokenMap];
                    v13 = [v266 isEqual:v267];
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
  v2 = [(REMReminderStorage *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (REMReminderStorage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v86 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listID"];
  v87 = v6;
  v88 = v5;
  v7 = [REMReminderStorage initWithObjectID:"initWithObjectID:listID:accountID:" listID:v6 accountID:?];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentReminderID"];
  [(REMReminderStorage *)v7 setParentReminderID:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"daCalendarItemUniqueIdentifier"];
  [(REMReminderStorage *)v7 setDaCalendarItemUniqueIdentifier:v9];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
  [(REMReminderStorage *)v7 setExternalIdentifier:v10];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalModificationTag"];
  [(REMReminderStorage *)v7 setExternalModificationTag:v11];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"daSyncToken"];
  [(REMReminderStorage *)v7 setDaSyncToken:v12];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"daPushKey"];
  [(REMReminderStorage *)v7 setDaPushKey:v13];

  -[REMReminderStorage setMinimumSupportedVersion:](v7, "setMinimumSupportedVersion:", [v4 decodeIntegerForKey:@"minimumSupportedVersion"]);
  -[REMReminderStorage setEffectiveMinimumSupportedVersion:](v7, "setEffectiveMinimumSupportedVersion:", [v4 decodeIntegerForKey:@"effectiveMinimumSupportedVersion"]);
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleDocumentData"];
  [(REMReminderStorage *)v7 setTitleDocumentData:v14];

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleAsString"];
  [(REMReminderStorage *)v7 setTitleAsString:v15];

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryLocaleInferredFromLastUsedKeyboard"];
  [(REMReminderStorage *)v7 setPrimaryLocaleInferredFromLastUsedKeyboard:v16];

  -[REMReminderStorage setCompleted:](v7, "setCompleted:", [v4 decodeBoolForKey:@"isCompleted"]);
  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"completionDate"];
  [(REMReminderStorage *)v7 setCompletionDate:v17];

  -[REMReminderStorage setPriority:](v7, "setPriority:", [v4 decodeIntegerForKey:@"priority"]);
  -[REMReminderStorage setFlagged:](v7, "setFlagged:", [v4 decodeIntegerForKey:@"flagged"]);
  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDateComponents"];
  [(REMReminderStorage *)v7 setStartDateComponents:v18];

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dueDateComponents"];
  [(REMReminderStorage *)v7 setDueDateComponents:v19];

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
  [(REMReminderStorage *)v7 setTimeZone:v20];

  -[REMReminderStorage setAllDay:](v7, "setAllDay:", [v4 decodeBoolForKey:@"allDay"]);
  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [(REMReminderStorage *)v7 setCreationDate:v21];

  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedDate"];
  [(REMReminderStorage *)v7 setLastModifiedDate:v22];

  v23 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
  v26 = [v4 decodeObjectOfClasses:v25 forKey:@"recurrenceRules"];
  [(REMReminderStorage *)v7 setRecurrenceRules:v26];

  v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notesDocumentData"];
  [(REMReminderStorage *)v7 setNotesDocumentData:v27];

  v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notesAsString"];
  [(REMReminderStorage *)v7 setNotesAsString:v28];

  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
  v32 = [v4 decodeObjectOfClasses:v31 forKey:@"attachments"];
  [(REMReminderStorage *)v7 setAttachments:v32];

  v33 = MEMORY[0x1E695DFD8];
  v34 = objc_opt_class();
  v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
  v36 = [v4 decodeObjectOfClasses:v35 forKey:@"alarms"];
  [(REMReminderStorage *)v7 setAlarms:v36];

  v37 = MEMORY[0x1E695DFD8];
  v38 = objc_opt_class();
  v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
  v40 = [v4 decodeObjectOfClasses:v39 forKey:@"assignments"];
  [(REMReminderStorage *)v7 setAssignments:v40];

  v41 = MEMORY[0x1E695DFD8];
  v42 = objc_opt_class();
  v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
  v44 = [v4 decodeObjectOfClasses:v43 forKey:@"hashtags"];
  [(REMReminderStorage *)v7 setHashtags:v44];

  v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dueDateDeltaAlertsData"];
  [(REMReminderStorage *)v7 setDueDateDeltaAlertsData:v45];

  v46 = MEMORY[0x1E695DFD8];
  v47 = objc_opt_class();
  v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
  v49 = [v4 decodeObjectOfClasses:v48 forKey:@"dueDateDeltaAlertsToUpsert"];
  [(REMReminderStorage *)v7 setDueDateDeltaAlertsToUpsert:v49];

  v50 = MEMORY[0x1E695DFD8];
  v51 = objc_opt_class();
  v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
  v53 = [v4 decodeObjectOfClasses:v52 forKey:@"dueDateDeltaAlertIdentifiersToDelete"];
  [(REMReminderStorage *)v7 setDueDateDeltaAlertIdentifiersToDelete:v53];

  -[REMReminderStorage setIcsDisplayOrder:](v7, "setIcsDisplayOrder:", [v4 decodeIntegerForKey:@"icsDisplayOrder"]);
  v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icsUrl"];
  [(REMReminderStorage *)v7 setIcsUrl:v54];

  v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"importedICSData"];
  [(REMReminderStorage *)v7 setImportedICSData:v55];

  -[REMReminderStorage setPrefersUrgentPresentationStyleForDateAlarms:](v7, "setPrefersUrgentPresentationStyleForDateAlarms:", [v4 decodeBoolForKey:@"prefersUrgentPresentationStyleForDateAlarms"]);
  v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userActivity"];
  [(REMReminderStorage *)v7 setUserActivity:v56];

  v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batchCreationID"];
  [(REMReminderStorage *)v7 setBatchCreationID:v57];

  v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"siriFoundInAppsData"];
  [(REMReminderStorage *)v7 setSiriFoundInAppsData:v58];

  v59 = [v4 decodeIntegerForKey:@"siriFoundInAppsUserConfirmation"];
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
  v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastBannerPresentationDate"];
  [(REMReminderStorage *)v7 setLastBannerPresentationDate:v61];

  v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayDate"];
  [(REMReminderStorage *)v7 setDisplayDate:v62];

  v63 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMapData"];
  v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMap"];
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

  v68 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactHandles"];
  if (v68)
  {
    [(REMReminderStorage *)v7 setContactHandles:v68];
  }

  v69 = MEMORY[0x1E695DFD8];
  v70 = objc_opt_class();
  v71 = [v69 setWithObjects:{v70, objc_opt_class(), 0}];
  v72 = [v4 decodeObjectOfClasses:v71 forKey:@"subtaskIDsToUndelete"];

  if (v72)
  {
    v73 = [MEMORY[0x1E695DFD8] setWithArray:v72];
    [(REMReminderStorage *)v7 setSubtaskIDsToUndelete:v73];
  }

  v74 = MEMORY[0x1E695DFD8];
  v75 = objc_opt_class();
  v76 = [v74 setWithObjects:{v75, objc_opt_class(), 0}];
  v77 = [v4 decodeObjectOfClasses:v76 forKey:@"hashtagIDsToUndelete"];

  if (v77)
  {
    v78 = [MEMORY[0x1E695DFD8] setWithArray:v77];
    [(REMReminderStorage *)v7 setHashtagIDsToUndelete:v78];
  }

  v79 = MEMORY[0x1E695DFD8];
  v80 = objc_opt_class();
  v81 = [v79 setWithObjects:{v80, objc_opt_class(), 0}];
  v82 = [v4 decodeObjectOfClasses:v81 forKey:@"fetchedDueDateDeltaAlerts"];
  fetchedDueDateDeltaAlerts = v7->_fetchedDueDateDeltaAlerts;
  v7->_fetchedDueDateDeltaAlerts = v82;

  v84 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alternativeDisplayDateDate_forCalendar"];
  [(REMReminderStorage *)v7 setAlternativeDisplayDateDate_forCalendar:v84];

  return v7;
}

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = [(REMReminderStorage *)self objectID];
  v5 = [(REMReminderStorage *)self attachments];
  v6 = [v5 count];
  v7 = [(REMReminderStorage *)self alarms];
  v8 = [v7 count];
  v9 = [(REMReminderStorage *)self assignments];
  v10 = [v9 count];
  v11 = [(REMReminderStorage *)self hashtags];
  v12 = [v14 stringWithFormat:@"<%@: %p objectID: %@, attachments.count: %ld, alarms.count: %ld, assignments.count: %ld, hashtags.count: %ld>", v3, self, v4, v6, v8, v10, objc_msgSend(v11, "count")];

  return v12;
}

- (id)datesDebugDescriptionInTimeZone:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v57 = v4;
  v6 = [MEMORY[0x1E696AC80] rem_formatterWithTimeZone:v4];
  v7 = [(REMReminderStorage *)self startDateComponents];

  v8 = 0x1E696A000uLL;
  if (v7)
  {
    v9 = [(REMReminderStorage *)self startDateComponents];
    v10 = [v6 rem_stringFromDateComponents:v9];

    v11 = MEMORY[0x1E696AEC0];
    v12 = [(REMReminderStorage *)self startDateComponents];
    v13 = [v12 timeZone];
    v14 = [v11 stringWithFormat:@"startDate: %@ tz: %@", v10, v13];
    [v5 addObject:v14];
  }

  v15 = [(REMReminderStorage *)self dueDateComponents];

  if (v15)
  {
    v16 = [(REMReminderStorage *)self dueDateComponents];
    v17 = [v6 rem_stringFromDateComponents:v16];

    v18 = MEMORY[0x1E696AEC0];
    v19 = [(REMReminderStorage *)self dueDateComponents];
    v20 = [v19 timeZone];
    v21 = [v18 stringWithFormat:@"dueDate: %@ tz: %@", v17, v20];
    [v5 addObject:v21];
  }

  v22 = [(REMReminderStorage *)self displayDate];

  if (v22)
  {
    v23 = [(REMReminderStorage *)self displayDate];
    v24 = [v23 date];
    v25 = [v6 stringFromDate:v24];

    v26 = MEMORY[0x1E696AEC0];
    v27 = [(REMReminderStorage *)self displayDate];
    v28 = [v27 timeZone];
    v29 = [v26 stringWithFormat:@"displayDate: %@ tz: %@", v25, v28];
    [v5 addObject:v29];
  }

  v58 = v6;
  v30 = [(REMReminderStorage *)self alarms];
  v31 = [v30 count];

  if (v31)
  {
    v32 = 0;
    v33 = 0x1E7506000uLL;
    v34 = @"alarm[%ld]: %@";
    v59 = v5;
    do
    {
      v35 = [(REMReminderStorage *)self alarms];
      v36 = [v35 objectAtIndexedSubscript:v32];

      v37 = [v36 trigger];
      v38 = *(v33 + 2352);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v40 = [v36 trigger];
      v41 = v40;
      if (isKindOfClass)
      {
        v42 = [v40 dateComponents];
        v43 = [v58 rem_stringFromDateComponents:v42];

        v44 = *(v8 + 3776);
        [v41 dateComponents];
        v45 = self;
        v46 = v34;
        v48 = v47 = v33;
        v49 = [v48 timeZone];
        v50 = [v44 stringWithFormat:@"%@ tz: %@", v43, v49];

        v8 = 0x1E696A000;
        v33 = v47;
        v34 = v46;
        self = v45;
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
      v53 = [(REMReminderStorage *)self alarms];
      v54 = [v53 count];

      v55 = v32 >= v54;
      v8 = 0x1E696A000;
    }

    while (!v55);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v53 = a3;
  v4 = [(REMReminderStorage *)self objectID];
  [v53 encodeObject:v4 forKey:@"objectID"];

  v5 = [(REMReminderStorage *)self listID];
  [v53 encodeObject:v5 forKey:@"listID"];

  v6 = [(REMReminderStorage *)self accountID];
  [v53 encodeObject:v6 forKey:@"accountID"];

  v7 = [(REMReminderStorage *)self parentReminderID];
  [v53 encodeObject:v7 forKey:@"parentReminderID"];

  v8 = [(REMReminderStorage *)self daCalendarItemUniqueIdentifier];
  [v53 encodeObject:v8 forKey:@"daCalendarItemUniqueIdentifier"];

  v9 = [(REMReminderStorage *)self externalIdentifier];
  [v53 encodeObject:v9 forKey:@"externalIdentifier"];

  v10 = [(REMReminderStorage *)self externalModificationTag];
  [v53 encodeObject:v10 forKey:@"externalModificationTag"];

  v11 = [(REMReminderStorage *)self daSyncToken];
  [v53 encodeObject:v11 forKey:@"daSyncToken"];

  v12 = [(REMReminderStorage *)self daPushKey];
  [v53 encodeObject:v12 forKey:@"daPushKey"];

  [v53 encodeInteger:-[REMReminderStorage minimumSupportedVersion](self forKey:{"minimumSupportedVersion"), @"minimumSupportedVersion"}];
  [v53 encodeInteger:-[REMReminderStorage effectiveMinimumSupportedVersion](self forKey:{"effectiveMinimumSupportedVersion"), @"effectiveMinimumSupportedVersion"}];
  [v53 encodeBool:-[REMReminderStorage isCompleted](self forKey:{"isCompleted"), @"isCompleted"}];
  v13 = [(REMReminderStorage *)self completionDate];
  [v53 encodeObject:v13 forKey:@"completionDate"];

  [v53 encodeInteger:-[REMReminderStorage priority](self forKey:{"priority"), @"priority"}];
  [v53 encodeInteger:-[REMReminderStorage flagged](self forKey:{"flagged"), @"flagged"}];
  v14 = [(REMReminderStorage *)self startDateComponents];
  [v53 encodeObject:v14 forKey:@"startDateComponents"];

  v15 = [(REMReminderStorage *)self dueDateComponents];
  [v53 encodeObject:v15 forKey:@"dueDateComponents"];

  v16 = [(REMReminderStorage *)self primaryLocaleInferredFromLastUsedKeyboard];
  [v53 encodeObject:v16 forKey:@"primaryLocaleInferredFromLastUsedKeyboard"];

  v17 = [(REMReminderStorage *)self timeZone];
  [v53 encodeObject:v17 forKey:@"timeZone"];

  [v53 encodeBool:-[REMReminderStorage allDay](self forKey:{"allDay"), @"allDay"}];
  v18 = [(REMReminderStorage *)self creationDate];
  [v53 encodeObject:v18 forKey:@"creationDate"];

  v19 = [(REMReminderStorage *)self lastModifiedDate];
  [v53 encodeObject:v19 forKey:@"lastModifiedDate"];

  v20 = [(REMReminderStorage *)self recurrenceRules];
  [v53 encodeObject:v20 forKey:@"recurrenceRules"];

  v21 = [(REMReminderStorage *)self attachments];
  [v53 encodeObject:v21 forKey:@"attachments"];

  v22 = [(REMReminderStorage *)self alarms];
  [v53 encodeObject:v22 forKey:@"alarms"];

  v23 = [(REMReminderStorage *)self assignments];
  [v53 encodeObject:v23 forKey:@"assignments"];

  v24 = [(REMReminderStorage *)self hashtags];
  [v53 encodeObject:v24 forKey:@"hashtags"];

  v25 = [(REMReminderStorage *)self dueDateDeltaAlertsData];
  [v53 encodeObject:v25 forKey:@"dueDateDeltaAlertsData"];

  v26 = [(REMReminderStorage *)self dueDateDeltaAlertsToUpsert];
  [v53 encodeObject:v26 forKey:@"dueDateDeltaAlertsToUpsert"];

  v27 = [(REMReminderStorage *)self dueDateDeltaAlertIdentifiersToDelete];
  [v53 encodeObject:v27 forKey:@"dueDateDeltaAlertIdentifiersToDelete"];

  v28 = [(REMReminderStorage *)self contactHandles];
  [v53 encodeObject:v28 forKey:@"contactHandles"];

  [v53 encodeInteger:-[REMReminderStorage icsDisplayOrder](self forKey:{"icsDisplayOrder"), @"icsDisplayOrder"}];
  v29 = [(REMReminderStorage *)self icsUrl];
  [v53 encodeObject:v29 forKey:@"icsUrl"];

  v30 = [(REMReminderStorage *)self importedICSData];
  [v53 encodeObject:v30 forKey:@"importedICSData"];

  [v53 encodeBool:-[REMReminderStorage prefersUrgentPresentationStyleForDateAlarms](self forKey:{"prefersUrgentPresentationStyleForDateAlarms"), @"prefersUrgentPresentationStyleForDateAlarms"}];
  v31 = [(REMReminderStorage *)self userActivity];
  [v53 encodeObject:v31 forKey:@"userActivity"];

  v32 = [(REMReminderStorage *)self batchCreationID];
  [v53 encodeObject:v32 forKey:@"batchCreationID"];

  v33 = [(REMReminderStorage *)self siriFoundInAppsData];
  [v53 encodeObject:v33 forKey:@"siriFoundInAppsData"];

  [v53 encodeInteger:-[REMReminderStorage siriFoundInAppsUserConfirmation](self forKey:{"siriFoundInAppsUserConfirmation"), @"siriFoundInAppsUserConfirmation"}];
  v34 = [(REMReminderStorage *)self lastBannerPresentationDate];
  [v53 encodeObject:v34 forKey:@"lastBannerPresentationDate"];

  v35 = [(REMReminderStorage *)self displayDate];
  [v53 encodeObject:v35 forKey:@"displayDate"];

  if (self->_hasDeserializedTitleDocument)
  {
    if (self->_deserializedTitleDocumentCache)
    {
      v36 = [(REMReminderStorage *)self titleDocumentData];
      v37 = [v36 length];

      if (!v37)
      {
        v38 = [(REMCRMergeableStringDocument *)self->_deserializedTitleDocumentCache serializedData];
        [(REMReminderStorage *)self setTitleDocumentData:v38];
      }
    }

    else
    {
      [(REMReminderStorage *)self setTitleDocumentData:0];
    }
  }

  v39 = [(REMReminderStorage *)self titleDocumentData];
  [v53 encodeObject:v39 forKey:@"titleDocumentData"];

  v40 = [(REMReminderStorage *)self titleAsString];
  [v53 encodeObject:v40 forKey:@"titleAsString"];

  if (self->_hasDeserializedNotesDocument)
  {
    if (self->_deserializedNotesDocumentCache)
    {
      v41 = [(REMReminderStorage *)self notesDocumentData];
      v42 = [v41 length];

      if (!v42)
      {
        v43 = [(REMCRMergeableStringDocument *)self->_deserializedNotesDocumentCache serializedData];
        [(REMReminderStorage *)self setNotesDocumentData:v43];
      }
    }

    else
    {
      [(REMReminderStorage *)self setNotesDocumentData:0];
    }
  }

  v44 = [(REMReminderStorage *)self notesDocumentData];
  [v53 encodeObject:v44 forKey:@"notesDocumentData"];

  v45 = [(REMReminderStorage *)self notesAsString];
  [v53 encodeObject:v45 forKey:@"notesAsString"];

  resolutionTokenMap = self->_resolutionTokenMap;
  if (resolutionTokenMap)
  {
    [v53 encodeObject:resolutionTokenMap forKey:@"resolutionTokenMap"];
    [v53 encodeObject:0 forKey:@"resolutionTokenMapData"];
  }

  else
  {
    [v53 encodeObject:0 forKey:@"resolutionTokenMap"];
    v47 = [(REMReminderStorage *)self resolutionTokenMapData];
    [v53 encodeObject:v47 forKey:@"resolutionTokenMapData"];
  }

  v48 = [(REMReminderStorage *)self subtaskIDsToUndelete];
  v49 = [v48 allObjects];
  [v53 encodeObject:v49 forKey:@"subtaskIDsToUndelete"];

  v50 = [(REMReminderStorage *)self hashtagIDsToUndelete];
  v51 = [v50 allObjects];
  [v53 encodeObject:v51 forKey:@"hashtagIDsToUndelete"];

  [v53 encodeObject:self->_fetchedDueDateDeltaAlerts forKey:@"fetchedDueDateDeltaAlerts"];
  v52 = [(REMReminderStorage *)self alternativeDisplayDateDate_forCalendar];
  [v53 encodeObject:v52 forKey:@"alternativeDisplayDateDate_forCalendar"];
}

- (void)setStoreGenerationIfNeeded:(unint64_t)a3
{
  if (!self->_storeGeneration)
  {
    self->_storeGeneration = a3;
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
    v4 = [(REMReminderStorage *)self titleDocumentData];
    v5 = [(REMReminderStorage *)self titleReplicaIDSource];
    v6 = [(REMReminderStorage *)self objectID];
    v3 = [REMCRMergeableStringDocument documentFromSerializedData:v4 replicaIDSource:v5 forKey:@"titleDocument" ofObjectID:v6];

    v7 = [(REMReminderStorage *)self titleDocumentData];

    if (!v7 || v3)
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

- (void)setTitleDocument:(id)a3
{
  v7 = a3;
  self->_hasDeserializedTitleDocument = 1;
  objc_storeStrong(&self->_deserializedTitleDocumentCache, a3);
  v5 = [v7 string];
  [(REMReminderStorage *)self setTitleAsString:v5];

  if (v7)
  {
    v6 = [MEMORY[0x1E695DEF0] data];
    [(REMReminderStorage *)self setTitleDocumentData:v6];
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
    v4 = [(REMReminderStorage *)self notesDocumentData];
    v5 = [(REMReminderStorage *)self notesReplicaIDSource];
    v6 = [(REMReminderStorage *)self objectID];
    v3 = [REMCRMergeableStringDocument documentFromSerializedData:v4 replicaIDSource:v5 forKey:@"notesDocument" ofObjectID:v6];

    v7 = [(REMReminderStorage *)self notesDocumentData];

    if (!v7 || v3)
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

- (void)setNotesDocument:(id)a3
{
  v7 = a3;
  self->_hasDeserializedNotesDocument = 1;
  objc_storeStrong(&self->_deserializedNotesDocumentCache, a3);
  v5 = [v7 string];
  [(REMReminderStorage *)self setNotesAsString:v5];

  if (v7)
  {
    v6 = [MEMORY[0x1E695DEF0] data];
    [(REMReminderStorage *)self setNotesDocumentData:v6];
  }

  else
  {
    [(REMReminderStorage *)self setNotesDocumentData:0];
  }
}

- (NSString)legacyNotificationIdentifier
{
  v2 = [(REMReminderStorage *)self daCalendarItemUniqueIdentifier];
  if (v2)
  {
    if (legacyNotificationIdentifier_onceToken != -1)
    {
      [REMReminderStorage legacyNotificationIdentifier];
    }

    v3 = [v2 stringByAddingPercentEncodingWithAllowedCharacters:legacyNotificationIdentifier_allowedCharacters];
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
  v2 = [(REMReminderStorage *)self assignments];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__REMReminderStorage_currentAssignment__block_invoke;
  v5[3] = &unk_1E7507A50;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

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
  v2 = [(REMReminderStorage *)self effectiveMinimumSupportedVersion];

  return rem_isUnsupportedVersionByRuntime(v2);
}

- (id)cdKeyToStorageKeyMap
{
  v2 = [(REMReminderStorage *)self objectID];
  v3 = [v2 entityName];
  v4 = +[REMTemplate cdEntityNameForSavedReminder];
  v5 = [v3 isEqualToString:v4];

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
    v6 = [(REMReminderStorage *)self resolutionTokenMapData];
    if (!v6)
    {
      v7 = +[REMLogStore read];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(REMReminderStorage *)self resolutionTokenMap];
      }
    }

    v8 = [(REMReminderStorage *)self cdKeyToStorageKeyMap];
    v9 = [REMResolutionTokenMap resolutionTokenMapWithJSONData:v6 keyMap:v8];

    objc_storeStrong(p_resolutionTokenMap, v9);
    v5 = v9;
  }

  return v5;
}

+ (id)titleReplicaIDSourceWithAccountID:(id)a3 reminderID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[REMReplicaIDSource alloc] initWithAccountID:v6 objectID:v5 property:@"titleDocument"];

  return v7;
}

+ (id)notesReplicaIDSourceWithAccountID:(id)a3 reminderID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[REMReplicaIDSource alloc] initWithAccountID:v6 objectID:v5 property:@"notesDocument"];

  return v7;
}

- (id)titleReplicaIDSource
{
  v3 = [(REMReminderStorage *)self accountID];
  v4 = [(REMReminderStorage *)self objectID];
  v5 = [REMReminderStorage titleReplicaIDSourceWithAccountID:v3 reminderID:v4];

  return v5;
}

- (id)notesReplicaIDSource
{
  v3 = [(REMReminderStorage *)self accountID];
  v4 = [(REMReminderStorage *)self objectID];
  v5 = [REMReminderStorage notesReplicaIDSourceWithAccountID:v3 reminderID:v4];

  return v5;
}

- (void)updateDisplayDate
{
  v3 = [REMDisplayDate alloc];
  v6 = [(REMReminderStorage *)self dueDateComponents];
  v4 = [(REMReminderStorage *)self alarms];
  v5 = [(REMDisplayDate *)v3 initWithDueDateComponents:v6 alarms:v4];
  [(REMReminderStorage *)self setDisplayDate:v5];
}

+ (BOOL)isDate:(id)a3 overdueAtReferenceDate:(id)a4 allDay:(BOOL)a5 floatingDateSecondsFromGMT:(int64_t)a6 floatingDateTargetTimeZone:(id)a7 showAllDayRemindersAsOverdue:(BOOL)a8 showTimedRemindersAsOverdue:(BOOL)a9
{
  v9 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  if (!a5)
  {
    if (a9)
    {
      [v15 timeIntervalSinceDate:v14];
      v21 = v22 > 0.0;
      goto LABEL_7;
    }

LABEL_6:
    v21 = 0;
    goto LABEL_7;
  }

  if (!v9)
  {
    goto LABEL_6;
  }

  v17 = [MEMORY[0x1E695DEE8] currentCalendar];
  v18 = [v17 startOfDayForDate:v15];

  v19 = [v18 dateByAddingTimeInterval:{(objc_msgSend(v16, "secondsFromGMT") - a6)}];

  [v19 timeIntervalSinceDate:v14];
  v21 = v20 > 0.0;

LABEL_7:
  return v21;
}

- (BOOL)isOverdue
{
  v3 = [(REMReminderStorage *)self displayDate];

  if (!v3)
  {
    return 0;
  }

  v4 = +[REMUserDefaults daemonUserDefaults];
  v5 = [v4 treatRemindersAsNotOverdue] ^ 1;

  v6 = [(REMReminderStorage *)self displayDate];
  v7 = [v6 date];
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [(REMReminderStorage *)self displayDate];
  v10 = [v9 isAllDay];
  v11 = [(REMReminderStorage *)self displayDate];
  v12 = [v11 floatingDateSecondsFromGMT];
  v13 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  if (v5)
  {
    v15 = +[REMUserDefaults daemonUserDefaults];
    LOBYTE(v17) = v5;
    v14 = +[REMReminderStorage isDate:overdueAtReferenceDate:allDay:floatingDateSecondsFromGMT:floatingDateTargetTimeZone:showAllDayRemindersAsOverdue:showTimedRemindersAsOverdue:](REMReminderStorage, "isDate:overdueAtReferenceDate:allDay:floatingDateSecondsFromGMT:floatingDateTargetTimeZone:showAllDayRemindersAsOverdue:showTimedRemindersAsOverdue:", v7, v8, v10, v12, v13, [v15 showRemindersAsOverdue], v17);
  }

  else
  {
    LOBYTE(v17) = v5;
    v14 = [REMReminderStorage isDate:v7 overdueAtReferenceDate:v8 allDay:v10 floatingDateSecondsFromGMT:v12 floatingDateTargetTimeZone:v13 showAllDayRemindersAsOverdue:0 showTimedRemindersAsOverdue:v17];
  }

  return v14;
}

- (BOOL)isRecurrent
{
  v2 = [(REMReminderStorage *)self recurrenceRules];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)hasUnfetchedDueDateDeltaAlerts
{
  v3 = [(REMReminderStorage *)self dueDateDeltaAlertsData];
  if (v3)
  {
    v4 = [(REMReminderStorage *)self fetchedDueDateDeltaAlerts];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setFetchedDueDateDeltaAlerts:(id)a3
{
  v4 = [a3 copy];
  fetchedDueDateDeltaAlerts = self->_fetchedDueDateDeltaAlerts;
  self->_fetchedDueDateDeltaAlerts = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)effectiveDisplayDateComponents_forCalendar
{
  v3 = [(REMReminderStorage *)self displayDate];
  if (v3)
  {
    v4 = [(REMReminderStorage *)self alternativeDisplayDateDate_forCalendar];
    if (v4 && ([(REMReminderStorage *)self isCompleted]|| ![(REMReminderStorage *)self isRecurrent]))
    {
      v6 = [v3 timeZone];
      v7 = MEMORY[0x1E695DF10];
      v8 = [v3 isAllDay];
      if (v6)
      {
        [v7 rem_dateComponentsWithDate:v4 timeZone:v6 isAllDay:v8];
      }

      else
      {
        [v7 rem_dateComponentsWithDateUsingArchivingTimeZone:v4 isAllDay:v8];
      }
      v5 = ;
    }

    else
    {
      v5 = [v3 dateComponentsRepresentation];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAlternativeDisplayDateDateForCalendarWithDateComponents:(id)a3
{
  v6 = a3;
  v4 = [v6 timeZone];
  if (v6)
  {
    if (v4)
    {
      [MEMORY[0x1E695DF10] rem_dateWithDateComponents:v6 timeZone:v4];
    }

    else
    {
      [MEMORY[0x1E695DF10] rem_dateWithDateComponentsUsingArchivingTimeZone:v6];
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
  v8 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Nil resolutionTokenMapData when reading resolutionTokenMap from reminder storage. Initialize an empty map {class: %{public}@, reminder: %@}", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end