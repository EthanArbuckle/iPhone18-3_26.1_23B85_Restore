@interface REMReminderChangeItem
+ (id)resolutionTokenKeyForChangedKeyInREMReminderChangeItemOfREMCDReminder:(id)a3;
+ (id)resolutionTokenKeyForChangedKeyInREMReminderChangeItemOfREMCDSavedReminder:(id)a3;
+ (void)_ensureDueDateDeltaAlertsAreFetchedIfNecessary:(id)a3;
+ (void)initialize;
- (BOOL)canSetAlternativeDisplayDateDateForCalendar;
- (BOOL)isSubtask;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)a3;
- (NSAttributedString)notes;
- (NSAttributedString)title;
- (NSString)description;
- (NSString)notesAsString;
- (NSString)primaryLocaleInferredFromLastUsedKeyboard;
- (NSString)titleAsString;
- (REMAccountCapabilities)accountCapabilities;
- (REMDueDateDeltaAlert)fetchedCurrentDueDateDeltaAlert;
- (REMListChangeItem)listChangeItem;
- (REMReminderAssignmentContextChangeItem)assignmentContext;
- (REMReminderAttachmentContextChangeItem)attachmentContext;
- (REMReminderChangeItem)initWithObjectID:(id)a3 title:(id)a4 insertIntoListChangeItem:(id)a5;
- (REMReminderChangeItem)initWithObjectID:(id)a3 title:(id)a4 insertIntoParentReminderSubtaskContextChangeItem:(id)a5;
- (REMReminderChangeItem)initWithReminderChangeItem:(id)a3 insertIntoListChangeItem:(id)a4;
- (REMReminderChangeItem)initWithReminderChangeItem:(id)a3 insertIntoParentReminderSubtaskContextChangeItem:(id)a4;
- (REMReminderChangeItem)initWithSaveRequest:(id)a3 storage:(id)a4 accountCapabilities:(id)a5 changedKeysObserver:(id)a6;
- (REMReminderDueDateDeltaAlertContextChangeItem)dueDateDeltaAlertContext;
- (REMReminderFlaggedContextChangeItem)flaggedContext;
- (REMReminderHashtagContextChangeItem)hashtagContext;
- (REMReminderSubtaskContextChangeItem)subtaskContext;
- (double)nextRecurrentAdvanceAmountForDateComponents:(id)a3 afterDate:(id)a4;
- (id)_cleanupOriginalAlarmsForSnoozing;
- (id)_editDocument:(id)a3 replicaIDSource:(id)a4 newString:(id)a5;
- (id)addAlarmWithTrigger:(id)a3;
- (id)addRecurrenceRuleWithFrequency:(int64_t)a3 interval:(int64_t)a4 end:(id)a5;
- (id)addRecurrenceRuleWithFrequency:(int64_t)a3 interval:(int64_t)a4 firstDayOfTheWeek:(int64_t)a5 daysOfTheWeek:(id)a6 daysOfTheMonth:(id)a7 monthsOfTheYear:(id)a8 weeksOfTheYear:(id)a9 daysOfTheYear:(id)a10 setPositions:(id)a11 end:(id)a12;
- (id)changedKeys;
- (id)confirmForSiriFoundInAppsAppendingToList:(id)a3;
- (id)datesDebugDescriptionInTimeZone:(id)a3;
- (id)dedupedAndFilteredNonSnoozeAlarms:(id)a3;
- (id)duplicateForRecurrenceUsingReminderID:(id)a3;
- (id)nextRecurrentDueDateComponentsAfter:(id)a3;
- (id)removeFromListAllowingUndo;
- (id)resolutionTokenKeyForChangedKey:(id)a3;
- (id)shallowCopyWithSaveRequest:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (void)_copyAlarmsInto:(id)a3;
- (void)_createSnoozeAlarmWithDateComponents:(id)a3;
- (void)accountCapabilities;
- (void)addAlarm:(id)a3 updateDisplayDate:(BOOL)a4;
- (void)advanceForwardDateAlarmsAfterDate:(id)a3;
- (void)advanceForwardRecurrenceAfterNow;
- (void)advanceForwardToNextRecurrenceAfterDate:(id)a3;
- (void)clearAlternativeDisplayDateDateForCalendarIfInvalid;
- (void)clearAlternativeDisplayDateDateForCalendarWithReason:(id)a3;
- (void)copyInto:(id)a3;
- (void)decrementRecurrenceRuleEndCount;
- (void)insertRecurrenceRule:(id)a3 afterRecurrenceRule:(id)a4;
- (void)insertRecurrenceRule:(id)a3 beforeRecurrenceRule:(id)a4;
- (void)rejectForSiriFoundInApps;
- (void)removeAlarm:(id)a3 updateDisplayDate:(BOOL)a4;
- (void)removeAllAlarms;
- (void)removeAllRecurrenceRules;
- (void)removeAllSnoozeAlarms;
- (void)removeRecurrenceRule:(id)a3;
- (void)setAlarms:(id)a3;
- (void)setAlarms:(id)a3 updateDisplayDate:(BOOL)a4;
- (void)setAlternativeDisplayDateDateForCalendarToPreviousRecurrentDateBefore:(id)a3 recurrenceRules:(id)a4;
- (void)setAlternativeDisplayDateDateForCalendarWithDateComponents:(id)a3;
- (void)setAlternativeDisplayDateDateForCalendarWithNormalizedDate:(id)a3;
- (void)setDueDateComponents:(id)a3;
- (void)setDueDateComponentsWithAlarmsIfNeeded:(id)a3;
- (void)setIcsDisplayOrder:(unint64_t)a3;
- (void)setNotes:(id)a3;
- (void)setNotesAsString:(id)a3;
- (void)setPrimaryLocaleInferredFromLastUsedKeyboard:(id)a3;
- (void)setRecurrenceRules:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleAsString:(id)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)snoozeFromDueDateForFutureIntegralMultipleOfTimeInterval:(double)a3;
- (void)snoozeFromNowForTimeInterval:(double)a3;
- (void)snoozeToDate:(id)a3;
- (void)snoozeToNextThirds;
- (void)updateAccountCapabilities:(id)a3;
- (void)updateDisplayDate;
@end

@implementation REMReminderChangeItem

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = __sKeysToObserve;
    __sKeysToObserve = &unk_1F0D99850;

    v3 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D99868];
    v4 = __resolutionTokenKeyDenylistForREMReminderChangeItemOfREMCDReminder;
    __resolutionTokenKeyDenylistForREMReminderChangeItemOfREMCDReminder = v3;

    __resolutionTokenKeyDenylistForREMReminderChangeItemOfREMCDSavedReminder = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D99880];

    MEMORY[0x1EEE66BB8]();
  }
}

- (REMReminderChangeItem)initWithSaveRequest:(id)a3 storage:(id)a4 accountCapabilities:(id)a5 changedKeysObserver:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v12)
  {
    v22.receiver = self;
    v22.super_class = REMReminderChangeItem;
    v15 = [(REMReminderChangeItem *)&v22 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_saveRequest, a3);
      objc_storeStrong(&v16->_storage, a4);
      objc_storeStrong(&v16->_changedKeysObserver, a6);
      saveRequest = v16->_saveRequest;
      v18 = [(REMReminderStorage *)v16->_storage objectID];
      [(REMSaveRequest *)saveRequest _trackAccountCapabilities:v13 forObjectID:v18];
    }

    self = v16;
    v19 = self;
  }

  else
  {
    v20 = +[REMLogStore write];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [REMReminderChangeItem initWithSaveRequest:storage:accountCapabilities:changedKeysObserver:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "storage");
    v19 = 0;
  }

  return v19;
}

- (REMReminderChangeItem)initWithObjectID:(id)a3 title:(id)a4 insertIntoListChangeItem:(id)a5
{
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 accountID];
  v12 = [REMReminderStorage alloc];
  v13 = [v10 objectID];
  v14 = [(REMReminderStorage *)v12 initWithObjectID:v8 listID:v13 accountID:v11];

  if (!v9)
  {
    v9 = &stru_1F0D67F00;
  }

  v15 = [REMCRMergeableStringDocument alloc];
  v16 = [(REMReminderStorage *)v14 titleReplicaIDSource];
  v17 = [(REMCRMergeableStringDocument *)v15 initWithReplicaIDSource:v16 string:v9];

  [(REMReminderStorage *)v14 setTitleDocument:v17];
  [v10 lowLevelAddReminderIDToOrdering:v8 withParentReminderChangeItem:0];
  v18 = [v10 groceryContextChangeItem];
  v19 = [v18 shouldCategorizeGroceryItems];

  if (v19)
  {
    v20 = [v10 groceryContextChangeItem];
    v32[0] = v8;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    [v20 categorizeGroceryItemsWithReminderIDs:v21];
  }

  v22 = [v10 autoCategorizeContextChangeItem];
  v23 = [v22 shouldAutoCategorizeItems];

  if (v23)
  {
    v24 = [v10 autoCategorizeContextChangeItem];
    v31 = v8;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    [v24 categorizeAutoCategorizationItemsWithReminderIDs:v25];
  }

  v26 = [v10 saveRequest];
  v27 = [v10 accountCapabilities];
  v28 = [(REMReminderChangeItem *)self initWithSaveRequest:v26 storage:v14 accountCapabilities:v27 observeInitialValues:1];

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

- (REMReminderChangeItem)initWithObjectID:(id)a3 title:(id)a4 insertIntoParentReminderSubtaskContextChangeItem:(id)a5
{
  v35[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [a5 reminderChangeItem];
  v10 = [v9 accountID];
  v11 = [REMReminderStorage alloc];
  v12 = [v9 listID];
  v13 = [(REMReminderStorage *)v11 initWithObjectID:v7 listID:v12 accountID:v10];

  v14 = [v9 objectID];
  [(REMReminderStorage *)v13 setParentReminderID:v14];

  if (!v8)
  {
    v8 = &stru_1F0D67F00;
  }

  v15 = [REMCRMergeableStringDocument alloc];
  v16 = [(REMReminderStorage *)v13 titleReplicaIDSource];
  v17 = [(REMCRMergeableStringDocument *)v15 initWithReplicaIDSource:v16 string:v8];

  [(REMReminderStorage *)v13 setTitleDocument:v17];
  v18 = [v9 saveRequest];
  v19 = [v18 _updateListWithReminderChangeItem:v9];
  if (!v19)
  {
    [REMReminderChangeItem initWithObjectID:title:insertIntoParentReminderSubtaskContextChangeItem:];
  }

  [v19 lowLevelAddReminderIDToOrdering:v7 withParentReminderChangeItem:{v9, self}];
  v20 = [v19 groceryContextChangeItem];
  v21 = [v20 shouldCategorizeGroceryItems];

  if (v21)
  {
    v22 = [v19 groceryContextChangeItem];
    v35[0] = v7;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    [v22 categorizeGroceryItemsWithReminderIDs:v23];
  }

  v24 = [v19 autoCategorizeContextChangeItem];
  v25 = [v24 shouldAutoCategorizeItems];

  if (v25)
  {
    v26 = [v19 autoCategorizeContextChangeItem];
    v34 = v7;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [v26 categorizeAutoCategorizationItemsWithReminderIDs:v27];
  }

  v28 = [v9 accountCapabilities];
  v29 = [v33 initWithSaveRequest:v18 storage:v13 accountCapabilities:v28 observeInitialValues:1];

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (REMReminderChangeItem)initWithReminderChangeItem:(id)a3 insertIntoListChangeItem:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = +[REMReminder newObjectID];
  v9 = [REMReminderStorage alloc];
  v10 = [v6 objectID];
  v11 = [v6 accountID];
  v12 = [(REMReminderStorage *)v9 initWithObjectID:v8 listID:v10 accountID:v11];

  [v6 lowLevelAddReminderIDToOrdering:v8 withParentReminderChangeItem:0];
  v13 = [v6 groceryContextChangeItem];
  LODWORD(v11) = [v13 shouldCategorizeGroceryItems];

  if (v11)
  {
    v14 = [v6 groceryContextChangeItem];
    v26[0] = v8;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [v14 categorizeGroceryItemsWithReminderIDs:v15];
  }

  v16 = [v6 autoCategorizeContextChangeItem];
  v17 = [v16 shouldAutoCategorizeItems];

  if (v17)
  {
    v18 = [v6 autoCategorizeContextChangeItem];
    v25 = v8;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    [v18 categorizeAutoCategorizationItemsWithReminderIDs:v19];
  }

  v20 = [v7 saveRequest];
  v21 = [v6 accountCapabilities];
  v22 = [(REMReminderChangeItem *)self initWithSaveRequest:v20 storage:v12 accountCapabilities:v21 observeInitialValues:1];

  [v7 copyInto:v22];
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (REMReminderChangeItem)initWithReminderChangeItem:(id)a3 insertIntoParentReminderSubtaskContextChangeItem:(id)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = +[REMReminder newObjectID];
  v8 = [v5 reminderChangeItem];

  v9 = [v8 accountID];
  v10 = [REMReminderStorage alloc];
  v11 = [v8 listID];
  v12 = [(REMReminderStorage *)v10 initWithObjectID:v7 listID:v11 accountID:v9];

  v13 = [v8 objectID];
  [(REMReminderStorage *)v12 setParentReminderID:v13];

  v14 = [v8 saveRequest];
  v15 = [v14 _updateListWithReminderChangeItem:v8];
  if (!v15)
  {
    [REMReminderChangeItem initWithObjectID:title:insertIntoParentReminderSubtaskContextChangeItem:];
  }

  [v15 lowLevelAddReminderIDToOrdering:v7 withParentReminderChangeItem:{v8, self}];
  v16 = [v15 groceryContextChangeItem];
  v17 = [v16 shouldCategorizeGroceryItems];

  if (v17)
  {
    v18 = [v15 groceryContextChangeItem];
    v32[0] = v7;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    [v18 categorizeGroceryItemsWithReminderIDs:v19];
  }

  v20 = [v15 autoCategorizeContextChangeItem];
  v21 = [v20 shouldAutoCategorizeItems];

  if (v21)
  {
    v22 = [v15 autoCategorizeContextChangeItem];
    v31 = v7;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    [v22 categorizeAutoCategorizationItemsWithReminderIDs:v23];
  }

  v24 = [v6 saveRequest];
  v25 = [v8 accountCapabilities];
  v26 = [v30 initWithSaveRequest:v24 storage:v12 accountCapabilities:v25 observeInitialValues:1];

  [v6 copyInto:v26];
  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (REMAccountCapabilities)accountCapabilities
{
  v3 = [(REMReminderChangeItem *)self storage];
  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = v3;
  v5 = [(REMReminderChangeItem *)self saveRequest];
  v6 = [(REMReminderChangeItem *)self objectID];
  v7 = [v5 _trackedAccountCapabilitiesForObjectID:v6];

  if (!v7)
  {
LABEL_3:
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(REMReminderChangeItem *)self accountCapabilities];
    }

    v7 = [[REMAccountCapabilities alloc] initWithAccountType:0];
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMReminderChangeItem *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (id)datesDebugDescriptionInTimeZone:(id)a3
{
  v4 = a3;
  v5 = [(REMReminderChangeItem *)self storage];
  v6 = [v5 datesDebugDescriptionInTimeZone:v4];

  return v6;
}

- (id)duplicateForRecurrenceUsingReminderID:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(REMReminderChangeItem *)v5 saveRequest];
  v7 = [(REMReminderChangeItem *)v5 titleAsString];
  v8 = [v7 copy];
  v9 = v8;
  v10 = &stru_1F0D67F00;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [(REMReminderChangeItem *)v5 accountCapabilities];
  v13 = [v12 insertsCompletedRecurrentCloneAtTail];

  v14 = [(REMReminderChangeItem *)v5 parentReminderID];

  if (v14)
  {
    v15 = [(REMReminderChangeItem *)v5 parentReminderID];
    v16 = [v6 _trackedReminderChangeItemForObjectID:v15];

    v17 = [v16 subtaskContext];
    if (v17)
    {
      v18 = [v6 addReminderWithTitle:v11 toReminderSubtaskContextChangeItem:v17 reminderObjectID:v4];
      [v17 insertReminderChangeItem:v18 beforeReminderChangeItem:v5];
    }

    else
    {
      v20 = +[REMLogStore write];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [REMReminderChangeItem duplicateForRecurrenceUsingReminderID:v5];
      }

      v18 = 0;
    }
  }

  else
  {
    v19 = [(REMReminderChangeItem *)v5 listID];

    if (!v19)
    {
      v25 = +[REMLogStore write];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        [REMReminderChangeItem duplicateForRecurrenceUsingReminderID:v25];
      }

      v18 = 0;
      goto LABEL_22;
    }

    v16 = [v6 _updateListWithReminderChangeItem:v5];
    if (v16)
    {
      v18 = [v6 addReminderWithTitle:v11 toListChangeItem:v16 reminderObjectID:v4];
      if (v13)
      {
        [v16 insertReminderChangeItem:v18 adjacentToReminderChangeItem:0 isAfter:1 withParentReminderChangeItem:0];
      }

      else
      {
        [v16 insertReminderChangeItem:v18 beforeReminderChangeItem:v5];
      }
    }

    else
    {
      v32 = +[REMLogStore write];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        [REMReminderChangeItem duplicateForRecurrenceUsingReminderID:v5];
      }

      v18 = 0;
    }
  }

  if (v18)
  {
    [(REMReminderChangeItem *)v5 copyInto:v18];
    v21 = [(REMReminderChangeItem *)v5 assignmentContext];
    if (v21)
    {
      v22 = v21;
      v23 = [v18 assignmentContext];

      if (v23)
      {
        v24 = [(REMReminderChangeItem *)v5 assignmentContext];
        v25 = [v24 currentAssignment];

        if (v25)
        {
          v26 = [v18 assignmentContext];
          v27 = [v25 assigneeID];
          v28 = [v25 originatorID];
          v29 = [v26 addAssignmentWithAssigneeID:v27 originatorID:v28 status:{-[NSObject status](v25, "status")}];

          v30 = [v25 assignedDate];
          [v29 setAssignedDate:v30];
        }

LABEL_22:
      }
    }
  }

  return v18;
}

- (void)copyInto:(id)a3
{
  v135 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  v6 = [(REMReminderChangeItem *)v5 title];
  v7 = [v6 copy];
  [v4 setTitle:v7];

  v8 = [(REMReminderChangeItem *)v5 notes];
  v9 = [v8 copy];
  [v4 setNotes:v9];

  v10 = [(REMReminderChangeItem *)v5 creationDate];
  v11 = [v10 copy];
  [v4 setCreationDate:v11];

  v12 = [(REMReminderChangeItem *)v5 lastModifiedDate];
  v13 = [v12 copy];
  [v4 setLastModifiedDate:v13];

  [v4 setCompleted:{-[REMReminderChangeItem isCompleted](v5, "isCompleted")}];
  v14 = [(REMReminderChangeItem *)v5 completionDate];
  v15 = [v14 copy];
  [v4 setCompletionDate:v15];

  [v4 setPrefersUrgentPresentationStyleForDateAlarms:{-[REMReminderChangeItem prefersUrgentPresentationStyleForDateAlarms](v5, "prefersUrgentPresentationStyleForDateAlarms")}];
  [v4 setPriority:{-[REMReminderChangeItem priority](v5, "priority")}];
  v16 = [(REMReminderChangeItem *)v5 startDateComponents];
  v17 = [v16 copy];
  [v4 setStartDateComponents:v17];

  v18 = [(REMReminderChangeItem *)v5 dueDateComponents];
  v19 = [v18 copy];
  [v4 setDueDateComponents:v19];

  v20 = [(REMReminderChangeItem *)v5 lastBannerPresentationDate];
  v21 = [v20 copy];
  [v4 setLastBannerPresentationDate:v21];

  v22 = [(REMReminderChangeItem *)v5 userActivity];
  v23 = [v22 copy];
  [v4 setUserActivity:v23];

  v24 = [(REMReminderChangeItem *)v5 batchCreationID];
  v25 = [v24 copy];
  [v4 setBatchCreationID:v25];

  v26 = [(REMReminderChangeItem *)v5 icsUrl];
  v27 = [v26 copy];
  [v4 setIcsUrl:v27];

  v28 = [(REMReminderChangeItem *)v5 alternativeDisplayDateDate_forCalendar];
  [v4 setAlternativeDisplayDateDate_forCalendar:v28];

  [v4 removeAllRecurrenceRules];
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v107 = v5;
  obj = [(REMReminderChangeItem *)v5 recurrenceRules];
  v29 = [obj countByEnumeratingWithState:&v127 objects:v134 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v128;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v128 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v127 + 1) + 8 * i);
        v34 = [REMRecurrenceRule alloc];
        v35 = +[REMRecurrenceRule newObjectID];
        v36 = [v4 accountID];
        v37 = [v4 objectID];
        v38 = [(REMRecurrenceRule *)v34 initWithRecurrenceRule:v33 objectID:v35 accountID:v36 reminderID:v37];

        [v4 addRecurrenceRule:v38];
      }

      v30 = [obj countByEnumeratingWithState:&v127 objects:v134 count:16];
    }

    while (v30);
  }

  v39 = v107;
  [(REMReminderChangeItem *)v107 _copyAlarmsInto:v4];
  [(REMReminderChangeItem *)v107 subtaskContext];

  v40 = [(REMReminderChangeItem *)v107 attachmentContext];
  if (v40)
  {
    v41 = v40;
    v42 = [v4 attachmentContext];

    if (v42)
    {
      v43 = [v4 attachmentContext];
      [v43 removeAllAttachments];

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v44 = [(REMReminderChangeItem *)v107 attachmentContext];
      v45 = [v44 attachments];

      obja = v45;
      v46 = [v45 countByEnumeratingWithState:&v123 objects:v133 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v124;
        do
        {
          for (j = 0; j != v47; ++j)
          {
            if (*v124 != v48)
            {
              objc_enumerationMutation(obja);
            }

            v50 = *(*(&v123 + 1) + 8 * j);
            v51 = [REMAttachment alloc];
            v52 = [objc_opt_class() newObjectID];
            v53 = [v4 accountID];
            v54 = [v4 objectID];
            v55 = [(REMAttachment *)v51 initWithAttachment:v50 objectID:v52 accountID:v53 reminderID:v54];

            v56 = [v4 attachmentContext];
            [v56 addAttachment:v55];
          }

          v47 = [obja countByEnumeratingWithState:&v123 objects:v133 count:16];
        }

        while (v47);
      }

      v39 = v107;
    }
  }

  v57 = [(REMReminderChangeItem *)v39 flaggedContext];
  if (v57)
  {
    v58 = v57;
    v59 = [v4 flaggedContext];

    if (v59)
    {
      v60 = [(REMReminderChangeItem *)v39 flaggedContext];
      v61 = [v60 flagged];
      v62 = [v4 flaggedContext];
      [v62 setFlagged:v61];
    }
  }

  v63 = [v4 assignmentContext];

  if (v63)
  {
    v64 = [v4 assignmentContext];
    [v64 removeAllAssignments];
  }

  v65 = [v4 hashtagContext];

  if (!v65)
  {
    goto LABEL_51;
  }

  v66 = [v4 hashtagContext];
  [v66 removeAllHashtags];

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v67 = [(REMReminderChangeItem *)v39 hashtagContext];
  v68 = [v67 hashtags];

  objb = [v68 countByEnumeratingWithState:&v119 objects:v132 count:16];
  if (!objb)
  {

    v69 = 0;
    v94 = 0;
    goto LABEL_50;
  }

  v69 = 0;
  v110 = 0;
  v111 = 0;
  v108 = v68;
  v109 = *v120;
  do
  {
    for (k = 0; k != objb; k = k + 1)
    {
      v71 = v69;
      if (*v120 != v109)
      {
        objc_enumerationMutation(v108);
      }

      v72 = *(*(&v119 + 1) + 8 * k);
      v73 = [REMHashtag alloc];
      v74 = [objc_opt_class() newObjectID];
      v75 = [v4 accountID];
      v76 = [v4 objectID];
      v77 = [v72 type];
      v78 = [v72 name];
      v79 = [(REMHashtag *)v73 initWithObjectID:v74 accountID:v75 reminderID:v76 type:v77 name:v78];

      v80 = [v4 hashtagContext];
      [v80 addHashtag:v79];

      if ([v72 type] != 1)
      {
        v69 = v71;
        goto LABEL_42;
      }

      v81 = objc_alloc_init(TTREMHashtag);
      v82 = [v72 objectIdentifier];
      [(TTREMHashtag *)v81 setObjectIdentifier:v82];

      v83 = objc_alloc_init(TTREMHashtag);
      v84 = [(REMHashtag *)v79 objectIdentifier];
      [(TTREMHashtag *)v83 setObjectIdentifier:v84];

      v85 = v111;
      v69 = v71;
      if (v111)
      {
        goto LABEL_33;
      }

      v86 = [v4 title];

      if (v86)
      {
        v87 = objc_alloc(MEMORY[0x1E696AD40]);
        v88 = [v4 title];
        v89 = [v87 initWithAttributedString:v88];

        v85 = v89;
LABEL_33:
        if (!v71)
        {
          goto LABEL_34;
        }

        goto LABEL_41;
      }

      v85 = 0;
      if (!v71)
      {
LABEL_34:
        v90 = v85;
        v91 = [v4 notes];

        if (v91)
        {
          v92 = objc_alloc(MEMORY[0x1E696AD40]);
          v93 = [v4 notes];
          v69 = [v92 initWithAttributedString:v93];
        }

        else
        {
          v69 = 0;
        }

        v85 = v90;
      }

LABEL_41:
      v111 = v85;
      LODWORD(v110) = [v85 rem_replaceTTREMHashtag:v81 withTTREMHashtag:v83] | v110;
      HIDWORD(v110) |= [v69 rem_replaceTTREMHashtag:v81 withTTREMHashtag:v83];

LABEL_42:
    }

    objb = [v108 countByEnumeratingWithState:&v119 objects:v132 count:16];
  }

  while (objb);

  if (v110)
  {
    [v4 setTitle:v111];
  }

  v39 = v107;
  if ((v110 & 0x100000000) != 0)
  {
    [v4 setNotes:v69];
  }

  v94 = v111;
LABEL_50:

LABEL_51:
  v95 = [v4 dueDateDeltaAlertContext];

  if (v95)
  {
    [objc_opt_class() _ensureDueDateDeltaAlertsAreFetchedIfNecessary:v4];
    v96 = [v4 dueDateDeltaAlertContext];
    [v96 removeAllFetchedDueDateDeltaAlerts];

    [objc_opt_class() _ensureDueDateDeltaAlertsAreFetchedIfNecessary:v39];
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v97 = [(REMReminderChangeItem *)v39 storage];
    v98 = [v97 fetchedDueDateDeltaAlerts];

    v99 = [v98 countByEnumeratingWithState:&v115 objects:v131 count:16];
    if (v99)
    {
      v100 = v99;
      v101 = *v116;
      do
      {
        for (m = 0; m != v100; ++m)
        {
          if (*v116 != v101)
          {
            objc_enumerationMutation(v98);
          }

          v103 = *(*(&v115 + 1) + 8 * m);
          v104 = [v4 dueDateDeltaAlertContext];
          v105 = [v104 addDueDateDeltaAlertWithDueDateDeltaAlert:v103];
        }

        v100 = [v98 countByEnumeratingWithState:&v115 objects:v131 count:16];
      }

      while (v100);
    }

    v39 = v107;
  }

  v106 = *MEMORY[0x1E69E9840];
}

+ (void)_ensureDueDateDeltaAlertsAreFetchedIfNecessary:(id)a3
{
  v3 = a3;
  v4 = [v3 storage];
  v5 = [v4 hasUnfetchedDueDateDeltaAlerts];

  if (v5)
  {
    v6 = [v3 saveRequest];
    v7 = [v6 store];

    v8 = [v3 remObjectID];
    v9 = +[REMReminderFetchOptions fetchOptionsIncludingDueDateDeltaAlerts];
    v15 = 0;
    v10 = [v7 fetchReminderWithObjectID:v8 fetchOptions:v9 error:&v15];
    v11 = v15;

    if (v11)
    {
      v12 = +[REMLogStore write];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[REMReminderChangeItem _ensureDueDateDeltaAlertsAreFetchedIfNecessary:];
      }
    }

    else
    {
      v13 = [v10 storage];
      v12 = [v13 fetchedDueDateDeltaAlerts];

      if ([v12 count])
      {
        v14 = [v3 storage];
        [v14 setFetchedDueDateDeltaAlerts:v12];
      }
    }
  }
}

- (void)_copyAlarmsInto:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  v36 = v4;
  [v4 removeAllAlarms];
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v7 = [(REMReminderChangeItem *)v5 alarms];
  v37 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = [(REMReminderChangeItem *)v5 alarms];
  v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v35 = v5;
  v11 = [(REMReminderChangeItem *)v5 alarms];
  v12 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v43;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v42 + 1) + 8 * i);
        v17 = [REMAlarm alloc];
        v18 = +[REMAlarm newObjectID];
        v19 = [(REMAlarm *)v17 initWithAlarm:v16 objectID:v18];

        [v10 addObject:v19];
        v20 = [v16 alarmUID];
        if (v20)
        {
          v21 = v20;
          v22 = [(REMAlarm *)v19 alarmUID];

          if (v22)
          {
            v23 = [(REMAlarm *)v19 alarmUID];
            v24 = [v16 alarmUID];
            [v37 setObject:v23 forKeyedSubscript:v24];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v13);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = v10;
  v26 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v39;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v38 + 1) + 8 * j);
        v31 = [v30 originalAlarmUID];

        if (v31)
        {
          v32 = [v30 originalAlarmUID];
          v33 = [v37 objectForKeyedSubscript:v32];
          [v30 setOriginalAlarmUID:v33];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v27);
  }

  [v36 setAlarms:v25];
  v34 = *MEMORY[0x1E69E9840];
}

- (id)dedupedAndFilteredNonSnoozeAlarms:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v48 = objc_opt_new();
  v51 = objc_opt_new();
  v47 = objc_opt_new();
  v4 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v53 objects:v61 count:16];
  v52 = v4;
  if (!v6)
  {
    v49 = 0;
    goto LABEL_31;
  }

  v7 = v6;
  v49 = 0;
  v8 = *v54;
  v50 = v5;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v54 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v53 + 1) + 8 * i);
      if (([v10 isSnooze] & 1) == 0)
      {
        v11 = [v10 trigger];
        v12 = [v11 isTemporal];

        if (!v12)
        {
          [v4 addObject:v10];
          continue;
        }

        v13 = objc_opt_class();
        v14 = [v10 trigger];
        v15 = REMDynamicCast(v13, v14);

        if (v15)
        {
          [v15 timeInterval];
          if (v16 >= 3153600000.0)
          {
LABEL_26:

            continue;
          }

          v17 = MEMORY[0x1E696AD98];
          [v15 timeInterval];
          v18 = [v17 numberWithDouble:?];
          v19 = [v51 containsObject:v18];

          if (v19)
          {
            v5 = v50;
            goto LABEL_26;
          }

          [v4 addObject:v10];
          v34 = MEMORY[0x1E696AD98];
          [v15 timeInterval];
          v23 = [v34 numberWithDouble:?];
          [v51 addObject:v23];
          v5 = v50;
LABEL_25:

          goto LABEL_26;
        }

        v20 = v5;
        v21 = objc_opt_class();
        v22 = [v10 trigger];
        v23 = REMDynamicCast(v21, v22);

        if (!v23 || ([v23 dateComponents], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
        {
          v5 = v20;
          v4 = v52;
          goto LABEL_25;
        }

        v25 = [v23 dateComponents];
        v26 = [v25 rem_stringRepresentation];

        if (([v48 containsObject:v26] & 1) == 0)
        {
          [v47 addObject:v10];
          [v48 addObject:v26];
          if (v49)
          {
            v45 = v26;
            v27 = objc_opt_class();
            v28 = [v49 trigger];
            v29 = REMDynamicCast(v27, v28);

            v30 = [v23 dateComponents];
            v46 = v29;
            v31 = [v29 dateComponents];
            v32 = [v30 rem_compare:v31];

            if (v32 == -1)
            {
              v33 = v10;

              v49 = v33;
            }

            v5 = v20;

            v4 = v52;
            v26 = v45;
            goto LABEL_24;
          }

          v49 = v10;
        }

        v5 = v20;
        v4 = v52;
LABEL_24:

        goto LABEL_25;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v53 objects:v61 count:16];
  }

  while (v7);
LABEL_31:

  v35 = v51;
  if ([v47 count])
  {
    v36 = [(REMReminderChangeItem *)self accountCapabilities];
    v37 = [v36 supportsMultipleDateAlarmsOnRecurrence];

    if (v37)
    {
      v4 = v52;
      [v52 addObjectsFromArray:v47];
      v35 = v51;
    }

    else
    {
      v35 = v51;
      v4 = v52;
      if (v49)
      {
        [v52 addObject:v49];
        v38 = +[REMLogStore write];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = [(REMReminderChangeItem *)self objectID];
          v40 = [v47 count];
          *buf = 138543618;
          v58 = v39;
          v59 = 2048;
          v60 = v40;
          _os_log_impl(&dword_19A0DB000, v38, OS_LOG_TYPE_INFO, "Only keeping earliest date alarm of reminder {reminderID: %{public}@, supportsMultipleDateAlarmsOnRecurrence: false, dateAlarms count:%lu}", buf, 0x16u);

          v35 = v51;
          v4 = v52;
        }
      }
    }
  }

  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

- (void)advanceForwardRecurrenceAfterNow
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)advanceForwardToNextRecurrenceAfterDate:(id)a3
{
  v4 = a3;
  v5 = [(REMReminderChangeItem *)self dueDateComponents];
  [(REMReminderChangeItem *)self nextRecurrentAdvanceAmountForDateComponents:v5 afterDate:v4];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v14 = +[REMLogStore write];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [REMReminderChangeItem advanceForwardToNextRecurrenceAfterDate:?];
    }
  }

  else
  {
    v8 = [(REMReminderChangeItem *)self dueDateComponents];

    if (v8)
    {
      v9 = [(REMReminderChangeItem *)self dueDateComponents];
      v10 = [v9 rem_dateComponentsByAddingTimeInterval:v7];

      [(REMReminderChangeItem *)self setDueDateComponents:v10];
    }

    v11 = [(REMReminderChangeItem *)self startDateComponents];

    if (v11)
    {
      v12 = [(REMReminderChangeItem *)self startDateComponents];
      v13 = [v12 rem_dateComponentsByAddingTimeInterval:v7];

      [(REMReminderChangeItem *)self setStartDateComponents:v13];
    }

    [(REMReminderChangeItem *)self advanceForwardDateAlarmsAfterDate:v4];
    [(REMReminderChangeItem *)self decrementRecurrenceRuleEndCount];
  }
}

- (void)advanceForwardDateAlarmsAfterDate:(id)a3
{
  v103 = *MEMORY[0x1E69E9840];
  v76 = a3;
  v4 = [(REMReminderChangeItem *)self alarms];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = [(REMReminderChangeItem *)self dedupedAndFilteredNonSnoozeAlarms:v6];

  v85 = objc_opt_new();
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v86 objects:v102 count:16];
  if (!v9)
  {

    v50 = 0;
    goto LABEL_48;
  }

  v11 = v9;
  v83 = self;
  v80 = 0;
  v81 = 0;
  v12 = 0;
  v13 = *v87;
  v14 = 0x1E7506000uLL;
  *&v10 = 138543618;
  v71 = v10;
  v84 = v8;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v87 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v86 + 1) + 8 * i);
      v17 = [v16 trigger];
      v18 = [v17 isTemporal];

      if (!v18)
      {
        [v85 addObject:v16];
        continue;
      }

      v19 = *(v14 + 2376);
      v20 = objc_opt_class();
      v21 = [v16 trigger];
      v22 = REMDynamicCast(v20, v21);

      if (v22)
      {
        v23 = objc_alloc(*(v14 + 2376));
        [v22 timeInterval];
        v24 = [v23 initWithTimeInterval:?];
        v25 = [[REMAlarm alloc] initWithTrigger:v24];
        [v85 addObject:v25];
LABEL_27:

        v8 = v84;
        goto LABEL_28;
      }

      v26 = objc_opt_class();
      v27 = [v16 trigger];
      v24 = REMDynamicCast(v26, v27);

      if (v24)
      {
        v28 = [(REMReminderChangeItem *)v83 dueDateComponents];
        v25 = [v28 timeZone];

        if (v25)
        {
          v25 = v25;
          v29 = MEMORY[0x1E695DF10];
          v30 = [v24 dateComponents];
          v31 = [v29 rem_dateWithDateComponents:v30 timeZone:v25];

          v32 = [MEMORY[0x1E695DF10] rem_dateComponentsWithDate:v31 timeZone:v25 isAllDay:0];
          [(REMReminderChangeItem *)v83 nextRecurrentAdvanceAmountForDateComponents:v32 afterDate:v76];
          if (v33 != 0.0)
          {
            v34 = v33;
            v78 = v32;
            v79 = v31;
            v35 = [v24 dateComponents];
            v36 = [v35 rem_dateComponentsByAddingTimeInterval:v34];

            v82 = [[REMAlarmDateTrigger alloc] initWithDateComponents:v36];
            v77 = [[REMAlarm alloc] initWithTrigger:v82];
            [v85 addObject:?];
            v37 = +[REMLogStore write];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v75 = [(REMReminderChangeItem *)v83 objectID];
              [v24 dateComponents];
              v38 = v74 = v37;
              v39 = [(REMAlarmDateTrigger *)v82 dateComponents];
              v72 = [MEMORY[0x1E695DFE8] defaultTimeZone];
              v73 = v36;
              v40 = [MEMORY[0x1E695DFE8] systemTimeZone];
              v41 = [MEMORY[0x1E695DFE8] localTimeZone];
              *buf = 138544642;
              v91 = v75;
              v92 = 2114;
              v93 = v38;
              v94 = 2114;
              v95 = v39;
              v96 = 2114;
              v97 = v72;
              v98 = 2114;
              v99 = v40;
              v100 = 2114;
              v101 = v41;
              v42 = v41;
              _os_log_impl(&dword_19A0DB000, v74, OS_LOG_TYPE_DEFAULT, "AdvanceRecurrence: Advancing forward alarm of reminder with new date trigger {reminderID: %{public}@, oldDateTrigger: %{public}@, newDateTrigger: %{public}@, defaultTimeZone: %{public}@}, systemTimeZone: %{public}@, localTimeZone: %{public}@};", buf, 0x3Eu);

              v37 = v74;
              v36 = v73;
            }

            v43 = v80;
            if (!v80 || [v36 rem_compare:v80] == -1)
            {
              v44 = v36;

              v43 = v44;
            }

            v32 = v78;
            v80 = v43;

            v81 = 1;
            v31 = v79;
          }
        }

        else
        {
          v45 = +[REMLogStore write];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
          {
            v46 = [(REMReminderChangeItem *)v83 objectID];
            v47 = [(REMReminderChangeItem *)v83 dueDateComponents];
            *buf = v71;
            v91 = v46;
            v92 = 2114;
            v93 = v47;
            _os_log_fault_impl(&dword_19A0DB000, v45, OS_LOG_TYPE_FAULT, "AdvanceRecurrence: Unable to advance forward date alarm for reminder with dueDate missing timezone {reminderID: %{public}@, dueDate: %{public}@}", buf, 0x16u);
          }
        }

        v12 = 1;
        goto LABEL_27;
      }

LABEL_28:

      v14 = 0x1E7506000;
    }

    v11 = [v8 countByEnumeratingWithState:&v86 objects:v102 count:16];
  }

  while (v11);

  if ((v12 & 1) == 0)
  {
LABEL_46:
    self = v83;
LABEL_47:
    v50 = v80;
    goto LABEL_48;
  }

  if ((v81 & 1) == 0)
  {
    v56 = [(REMReminderChangeItem *)v83 dueDateComponents];
    v62 = [[REMAlarmDateTrigger alloc] initWithDateComponents:v56];
    v63 = [[REMAlarm alloc] initWithTrigger:v62];
    [v85 addObject:v63];
    v64 = +[REMLogStore write];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      v65 = [(REMReminderChangeItem *)v83 objectID];
      v66 = [(REMReminderChangeItem *)v83 dueDateComponents];
      *buf = v71;
      v91 = v65;
      v92 = 2114;
      v93 = v66;
      _os_log_impl(&dword_19A0DB000, v64, OS_LOG_TYPE_INFO, "AdvanceRecurrence: Adding new date alarm of reminder with dueDate {reminderID: %{public}@, dueDate: %{public}@}; failed to advance forward any previous date alarms", buf, 0x16u);
    }

    goto LABEL_44;
  }

  self = v83;
  v48 = [(REMReminderChangeItem *)v83 accountCapabilities];
  if (([v48 supportsMultipleDateAlarmsOnRecurrence] & 1) != 0 || !v80)
  {

    goto LABEL_47;
  }

  v49 = [(REMReminderChangeItem *)v83 dueDateComponents];
  v50 = v80;
  v51 = [v49 isEqual:v80];

  if (v51)
  {
    goto LABEL_48;
  }

  v52 = [(REMReminderChangeItem *)v83 dueDateComponents];
  v53 = [v52 timeZone];
  v54 = [v80 timeZone];
  v55 = [v53 isEqual:v54];

  v56 = +[REMLogStore write];
  v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
  if (!v55)
  {
    if (!v57)
    {
      goto LABEL_45;
    }

    v62 = [(REMReminderChangeItem *)v83 objectID];
    v68 = [(REMReminderChangeItem *)v83 dueDateComponents];
    v69 = [v68 rem_stringRepresentation];
    v70 = [v80 rem_stringRepresentation];
    *buf = 138543874;
    v91 = v62;
    v92 = 2114;
    v93 = v69;
    v94 = 2114;
    v95 = v70;
    _os_log_impl(&dword_19A0DB000, v56, OS_LOG_TYPE_DEFAULT, "AdvanceRecurrence: Skipped fixing dueDate drift to match displayDate since timezone does not match {reminderID: %{public}@, dueDate: %{public}@, displayDate: %{public}@};", buf, 0x20u);

LABEL_44:
LABEL_45:

    goto LABEL_46;
  }

  if (v57)
  {
    v58 = [(REMReminderChangeItem *)v83 objectID];
    v59 = [(REMReminderChangeItem *)v83 dueDateComponents];
    v60 = [v59 rem_stringRepresentation];
    v61 = [v80 rem_stringRepresentation];
    *buf = 138543874;
    v91 = v58;
    v92 = 2114;
    v93 = v60;
    v94 = 2114;
    v95 = v61;
    _os_log_impl(&dword_19A0DB000, v56, OS_LOG_TYPE_DEFAULT, "AdvanceRecurrence: Fixing dueDate drift to match displayDate {reminderID: %{public}@, dueDate: %{public}@, displayDate: %{public}@};", buf, 0x20u);
  }

  self = v83;
  v50 = v80;
  [(REMReminderChangeItem *)v83 setDueDateComponents:v80];
LABEL_48:
  [(REMReminderChangeItem *)self setAlarms:v85];

  v67 = *MEMORY[0x1E69E9840];
}

- (void)decrementRecurrenceRuleEndCount
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(REMReminderChangeItem *)self recurrenceRules];
  [(REMReminderChangeItem *)self removeAllRecurrenceRules];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v29;
    v8 = 0x1E7506000uLL;
    *&v5 = 138543874;
    v26 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v10 recurrenceEnd];
        v12 = [v11 occurrenceCount];

        if (v12 < 2)
        {
          [(REMReminderChangeItem *)self addRecurrenceRule:v10];
          v14 = [*(v8 + 3368) write];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v22 = [(REMReminderChangeItem *)self objectID];
            v23 = [v10 objectID];
            v24 = [v10 iCalendarDescription];
            *buf = v26;
            v33 = v22;
            v34 = 2114;
            v35 = v23;
            v36 = 2114;
            v37 = v24;
            _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_INFO, "AdvanceRecurrence: Keep old recurrence rule of reminder {reminderID: %{public}@, recurrenceRuleID: %{public}@, recurrenceRule: %{public}@};", buf, 0x20u);

            v8 = 0x1E7506000;
          }
        }

        else
        {
          v13 = [v10 recurrenceEnd];
          v14 = +[REMRecurrenceEnd recurrenceEndWithOccurrenceCount:](REMRecurrenceEnd, "recurrenceEndWithOccurrenceCount:", [v13 occurrenceCount] - 1);

          v15 = [REMRecurrenceRule alloc];
          v16 = +[REMRecurrenceRule newObjectID];
          v17 = [(REMRecurrenceRule *)v15 initWithRecurrenceRule:v10 objectID:v16 end:v14];

          [(REMReminderChangeItem *)self addRecurrenceRule:v17];
          v18 = [*(v8 + 3368) write];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = [(REMReminderChangeItem *)self objectID];
            v20 = [(REMRecurrenceRule *)v17 objectID];
            v21 = [(REMRecurrenceRule *)v17 iCalendarDescription];
            *buf = v26;
            v33 = v19;
            v34 = 2114;
            v35 = v20;
            v36 = 2114;
            v37 = v21;
            _os_log_impl(&dword_19A0DB000, v18, OS_LOG_TYPE_INFO, "AdvanceRecurrence: New recurrence rules of reminder {reminderID: %{public}@, recurrenceRuleID: %{public}@, recurrenceRule: %{public}@};", buf, 0x20u);

            v8 = 0x1E7506000;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v6);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)canSetAlternativeDisplayDateDateForCalendar
{
  v3 = [(REMReminderChangeItem *)self displayDate];
  if (v3)
  {
    if (([(REMReminderChangeItem *)self isCompleted]& 1) != 0)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = [(REMReminderChangeItem *)self isRecurrent]^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)clearAlternativeDisplayDateDateForCalendarIfInvalid
{
  v3 = [(REMReminderChangeItem *)self alternativeDisplayDateDate_forCalendar];
  if (v3)
  {
    v4 = v3;
    v5 = [(REMReminderChangeItem *)self canSetAlternativeDisplayDateDateForCalendar];

    if (!v5)
    {

      [(REMReminderChangeItem *)self clearAlternativeDisplayDateDateForCalendarWithReason:@"incomplete & recurrent"];
    }
  }
}

- (void)clearAlternativeDisplayDateDateForCalendarWithReason:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(REMReminderChangeItem *)self objectID];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_DEFAULT, "setCompleted: clear alternativeDisplayDateDate_forCalendar {reason: %{public}@, reminderID: %{public}@}", &v8, 0x16u);
  }

  [(REMReminderChangeItem *)self setAlternativeDisplayDateDate_forCalendar:0];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setAlternativeDisplayDateDateForCalendarWithDateComponents:(id)a3
{
  v4 = a3;
  if (v4 && ![(REMReminderChangeItem *)self canSetAlternativeDisplayDateDateForCalendar])
  {
    v6 = +[REMLogStore write];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [REMReminderChangeItem setAlternativeDisplayDateDateForCalendarWithDateComponents:?];
    }
  }

  else
  {
    v5 = [(REMReminderChangeItem *)self storage];
    [v5 setAlternativeDisplayDateDateForCalendarWithDateComponents:v4];
  }
}

- (void)setAlternativeDisplayDateDateForCalendarWithNormalizedDate:(id)a3
{
  v4 = a3;
  if (v4 && ![(REMReminderChangeItem *)self canSetAlternativeDisplayDateDateForCalendar])
  {
    v6 = +[REMLogStore write];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [REMReminderChangeItem setAlternativeDisplayDateDateForCalendarWithDateComponents:?];
    }
  }

  else
  {
    v5 = [(REMReminderChangeItem *)self storage];
    [v5 setAlternativeDisplayDateDate_forCalendar:v4];
  }
}

- (void)setAlternativeDisplayDateDateForCalendarToPreviousRecurrentDateBefore:(id)a3 recurrenceRules:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(REMReminderChangeItem *)self canSetAlternativeDisplayDateDateForCalendar])
  {
    v8 = [(REMReminderChangeItem *)self displayDate];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 timeZone];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [MEMORY[0x1E695DFE8] defaultTimeZone];
      }

      v13 = v12;

      v14 = [v9 date];
      v15 = [REMRecurrenceRule previousRecurrentDueDateBefore:v6 dueDate:v14 timeZone:v13 allDay:[v9 isAllDay] recurrenceRules:v7];

      if (v15)
      {
        v16 = [REMDisplayDate alloc];
        v17 = [v9 isAllDay];
        v18 = [v9 timeZone];
        v19 = -[REMDisplayDate initWithDate:allDay:timeZone:floatingDateSecondsFromGMT:](v16, "initWithDate:allDay:timeZone:floatingDateSecondsFromGMT:", v15, v17, v18, [v13 secondsFromGMT]);

        v20 = +[REMLogStore write];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [(REMReminderChangeItem *)self objectID];
          v26 = 138543618;
          v27 = v19;
          v28 = 2114;
          v29 = v21;
          _os_log_impl(&dword_19A0DB000, v20, OS_LOG_TYPE_DEFAULT, "setAlternativeDisplayDate: set previousRecurrentDueDate {displayDate: %{public}@, reminderID: %{public}@}", &v26, 0x16u);
        }

        v22 = [v19 dateComponentsRepresentation];
        v23 = [(REMReminderChangeItem *)self storage];
        [v23 setAlternativeDisplayDateDateForCalendarWithDateComponents:v22];
      }

      else
      {
        v19 = +[REMLogStore write];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v24 = [(REMReminderChangeItem *)self objectID];
          v26 = 138543362;
          v27 = v24;
          _os_log_impl(&dword_19A0DB000, v19, OS_LOG_TYPE_INFO, "setAlternativeDisplayDate: previousRecurrentDueDateBefore is nil {reminderID: %{public}@}", &v26, 0xCu);
        }
      }
    }
  }

  else
  {
    v9 = +[REMLogStore write];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [REMReminderChangeItem setAlternativeDisplayDateDateForCalendarWithDateComponents:?];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)shallowCopyWithSaveRequest:(id)a3
{
  v5 = a3;
  v6 = [(REMReminderChangeItem *)self storage];

  if (v6)
  {
    v7 = [(REMReminderChangeItem *)self objectID];
    v8 = [v5 _trackedAccountCapabilitiesForObjectID:v7];

    if (v8)
    {
LABEL_16:
      v13 = [REMReminderChangeItem alloc];
      v14 = [(REMReminderChangeItem *)self storage];
      v15 = [(REMReminderChangeItem *)self changedKeysObserver];
      v12 = [(REMReminderChangeItem *)v13 initWithSaveRequest:v5 storage:v14 accountCapabilities:v8 changedKeysObserver:v15];

      goto LABEL_17;
    }

    v9 = [(REMReminderChangeItem *)self objectID];

    if (v9)
    {
      if (!v5)
      {
LABEL_15:
        v8 = [[REMAccountCapabilities alloc] initWithAccountType:0];
        goto LABEL_16;
      }

      v10 = +[REMLogStore write];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(REMReminderChangeItem *)self shallowCopyWithSaveRequest:a2, v10];
      }
    }

    else
    {
      v10 = +[REMLogStore write];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [REMReminderChangeItem shallowCopyWithSaveRequest:];
      }
    }

    goto LABEL_15;
  }

  v11 = +[REMLogStore write];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    [REMReminderChangeItem shallowCopyWithSaveRequest:];
  }

  v12 = [(REMReminderChangeItem *)self storage];

  if (v12)
  {
    v12 = 0;
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "self.storage");
  }

LABEL_17:

  return v12;
}

- (REMListChangeItem)listChangeItem
{
  v3 = [(REMReminderChangeItem *)self listID];
  if (v3)
  {
    v4 = [(REMReminderChangeItem *)self saveRequest];
    v5 = [v4 _trackedListChangeItemForObjectID:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSAttributedString)title
{
  v2 = [(REMReminderChangeItem *)self storage];
  v3 = [v2 titleDocument];
  v4 = [v3 attributedString];

  return v4;
}

- (NSString)titleAsString
{
  v2 = [(REMReminderChangeItem *)self storage];
  v3 = [v2 titleAsString];

  return v3;
}

- (id)_editDocument:(id)a3 replicaIDSource:(id)a4 newString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!(v8 | v10))
  {
    v14 = 0;
    goto LABEL_12;
  }

  v11 = v10;
  if (v10)
  {
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_8:
    v15 = [[REMMutableCRMergeableStringDocument alloc] initWithReplicaIDSource:v9];
LABEL_10:
    v16 = v15;
    v17 = [(REMReminderChangeItem *)self saveRequest];
    v18 = [v17 replicaManagerProvider];
    [(REMMutableCRMergeableStringDocument *)v16 setReplicaManagerProvider:v18];

    v14 = [(REMMutableCRMergeableStringDocument *)v16 wipeAndReplaceWithString:v11];

    goto LABEL_11;
  }

  v11 = objc_alloc_init(MEMORY[0x1E696AAB0]);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_4:
  v12 = [v8 attributedString];
  v13 = [v11 isEqualToAttributedString:v12];

  if (!v13)
  {
    v15 = [v8 mutableDocument];
    goto LABEL_10;
  }

  v14 = v8;
LABEL_11:

LABEL_12:

  return v14;
}

- (void)setPrimaryLocaleInferredFromLastUsedKeyboard:(id)a3
{
  v4 = a3;
  v5 = [(REMReminderChangeItem *)self storage];
  [v5 setPrimaryLocaleInferredFromLastUsedKeyboard:v4];
}

- (NSString)primaryLocaleInferredFromLastUsedKeyboard
{
  v2 = [(REMReminderChangeItem *)self storage];
  v3 = [v2 primaryLocaleInferredFromLastUsedKeyboard];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(REMReminderChangeItem *)self storage];
  v12 = [v5 titleReplicaIDSource];

  v6 = [(REMReminderChangeItem *)self storage];
  v7 = [v6 titleDocument];
  v8 = [(REMReminderChangeItem *)self _editDocument:v7 replicaIDSource:v12 newString:v4];

  v9 = [(REMReminderChangeItem *)self storage];
  [v9 setTitleDocument:v8];

  v10 = [(REMReminderChangeItem *)self changedKeysObserver];
  [v10 keyDidChange:@"titleDocument"];

  v11 = [(REMReminderChangeItem *)self changedKeysObserver];
  [v11 keyDidChange:@"titleDocumentData"];
}

- (void)setTitleAsString:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AAB0];
    v5 = a3;
    v6 = [[v4 alloc] initWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  [(REMReminderChangeItem *)self setTitle:v6];
}

- (NSAttributedString)notes
{
  v2 = [(REMReminderChangeItem *)self storage];
  v3 = [v2 notesDocument];
  v4 = [v3 attributedString];

  return v4;
}

- (NSString)notesAsString
{
  v2 = [(REMReminderChangeItem *)self storage];
  v3 = [v2 notesAsString];

  return v3;
}

- (void)setNotes:(id)a3
{
  v4 = a3;
  v5 = [(REMReminderChangeItem *)self storage];
  v12 = [v5 notesReplicaIDSource];

  v6 = [(REMReminderChangeItem *)self storage];
  v7 = [v6 notesDocument];
  v8 = [(REMReminderChangeItem *)self _editDocument:v7 replicaIDSource:v12 newString:v4];

  v9 = [(REMReminderChangeItem *)self storage];
  [v9 setNotesDocument:v8];

  v10 = [(REMReminderChangeItem *)self changedKeysObserver];
  [v10 keyDidChange:@"notesDocument"];

  v11 = [(REMReminderChangeItem *)self changedKeysObserver];
  [v11 keyDidChange:@"notesDocumentData"];
}

- (void)setNotesAsString:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AAB0];
    v5 = a3;
    v6 = [[v4 alloc] initWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  [(REMReminderChangeItem *)self setNotes:v6];
}

- (void)setDueDateComponents:(id)a3
{
  v4 = a3;
  v5 = [(REMReminderChangeItem *)self dueDateComponents];
  v12 = [v4 rem_gregorianEquivalent];

  v6 = [(REMReminderChangeItem *)self storage];
  [v6 setDueDateComponents:v12];

  v7 = [(REMReminderChangeItem *)self storage];
  [v7 updateDisplayDate];

  if (v12)
  {
    v8 = [v12 rem_isAllDayDateComponents];
    v9 = [(REMReminderChangeItem *)self storage];
    [v9 setAllDay:v8];

    if (v8)
    {
      v10 = 0;
    }

    else
    {
      v9 = [v12 timeZone];
      v10 = [v9 name];
    }

    v11 = [(REMReminderChangeItem *)self storage];
    [v11 setTimeZone:v10];

    if ((v8 & 1) == 0)
    {
    }

    if (!v5 || ([v5 isEqual:v12] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v5)
  {
LABEL_11:
    [(REMReminderChangeItem *)self clearAlternativeDisplayDateDateForCalendarWithReason:@"Due date changed"];
  }
}

- (void)setDueDateComponentsWithAlarmsIfNeeded:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [a3 rem_gregorianEquivalent];
  v5 = [v4 rem_isAllDayDateComponents];
  if (v4)
  {
    if (v5)
    {
      [v4 setTimeZone:0];
    }

    else
    {
      v6 = [v4 timeZone];

      if (!v6)
      {
        v7 = [MEMORY[0x1E695DFE8] defaultTimeZone];
        [v4 setTimeZone:v7];
      }
    }
  }

  [(REMReminderChangeItem *)self setDueDateComponents:v4];
  [(REMReminderChangeItem *)self removeAllSnoozeAlarms];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [(REMReminderChangeItem *)self alarms];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v21 = v5;
    v11 = 0;
    v12 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 trigger];
        v16 = [v15 isTemporal];

        if (v16)
        {
          [(REMReminderChangeItem *)self removeAlarm:v14 updateDisplayDate:0];
          v11 = 1;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);

    LOBYTE(v5) = v21;
    if (v11)
    {
      [(REMReminderChangeItem *)self updateDisplayDate];
    }

    if (v4)
    {
LABEL_18:
      if ((v5 & 1) == 0)
      {
        v17 = [[REMAlarmDateTrigger alloc] initWithDateComponents:v4];
        v18 = [(REMReminderChangeItem *)self addAlarmWithTrigger:v17];
LABEL_23:

        goto LABEL_24;
      }

      goto LABEL_24;
    }
  }

  else
  {

    if (v4)
    {
      goto LABEL_18;
    }
  }

  [(REMReminderChangeItem *)self removeAllRecurrenceRules];
  v19 = [(REMReminderChangeItem *)self dueDateDeltaAlertContext];

  if (v19)
  {
    [objc_opt_class() _ensureDueDateDeltaAlertsAreFetchedIfNecessary:self];
    v17 = [(REMReminderChangeItem *)self dueDateDeltaAlertContext];
    [(REMAlarmDateTrigger *)v17 removeAllFetchedDueDateDeltaAlerts];
    goto LABEL_23;
  }

LABEL_24:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setIcsDisplayOrder:(unint64_t)a3
{
  v5 = [(REMReminderChangeItem *)self storage];
  v6 = [v5 icsDisplayOrder];

  if (v6 != a3)
  {
    v7 = [(REMReminderChangeItem *)self saveRequest];
    v8 = [v7 _updateListWithReminderChangeItem:self];

    if (v8)
    {
      [v8 setRemindersICSDisplayOrderChanged:1];
      v9 = [(REMReminderChangeItem *)self storage];
      [v9 setIcsDisplayOrder:a3];

      v10 = [(REMReminderChangeItem *)self changedKeysObserver];
      [v10 keyDidChange:@"icsDisplayOrder"];
    }

    else
    {
      [REMReminderChangeItem setIcsDisplayOrder:?];
      v10 = v11;
    }
  }
}

- (id)addRecurrenceRuleWithFrequency:(int64_t)a3 interval:(int64_t)a4 end:(id)a5
{
  v8 = a5;
  v9 = +[REMRecurrenceRule newObjectID];
  v10 = [REMRecurrenceRule alloc];
  v11 = [(REMReminderChangeItem *)self accountID];
  v12 = [(REMReminderChangeItem *)self objectID];
  v13 = [(REMRecurrenceRule *)v10 initRecurrenceRuleWithObjectID:v9 accountID:v11 reminderID:v12 frequency:a3 interval:a4 end:v8];

  [(REMReminderChangeItem *)self addRecurrenceRule:v13];

  return v13;
}

- (id)addRecurrenceRuleWithFrequency:(int64_t)a3 interval:(int64_t)a4 firstDayOfTheWeek:(int64_t)a5 daysOfTheWeek:(id)a6 daysOfTheMonth:(id)a7 monthsOfTheYear:(id)a8 weeksOfTheYear:(id)a9 daysOfTheYear:(id)a10 setPositions:(id)a11 end:(id)a12
{
  v16 = a12;
  v28 = a11;
  v27 = a10;
  v26 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v29 = +[REMRecurrenceRule newObjectID];
  v25 = [REMRecurrenceRule alloc];
  v20 = [(REMReminderChangeItem *)self accountID];
  v21 = [(REMReminderChangeItem *)self objectID];
  v22 = v20;
  v23 = [(REMRecurrenceRule *)v25 initRecurrenceRuleWithObjectID:v29 accountID:v20 reminderID:v21 frequency:a3 interval:a4 firstDayOfTheWeek:a5 daysOfTheWeek:v19 daysOfTheMonth:v18 monthsOfTheYear:v17 weeksOfTheYear:v26 daysOfTheYear:v27 setPositions:v28 end:v16];

  [(REMReminderChangeItem *)self addRecurrenceRule:v23];

  return v23;
}

- (void)insertRecurrenceRule:(id)a3 beforeRecurrenceRule:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[REMLogStore write];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = self;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Adding recurrenceRule before recurrenceRule {reminderChangeItem: %@, recurrenceRule: %@, siblisngRecurrenceRule: %@}", &v13, 0x20u);
  }

  v9 = [(REMReminderChangeItem *)self recurrenceRules];
  v10 = [v9 mutableCopy];

  if (v10)
  {
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!v7)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_9;
    }
  }

  v11 = [v10 indexOfObject:v7];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

LABEL_9:
  [v10 insertObject:v6 atIndex:v11];
  [(REMReminderChangeItem *)self setRecurrenceRules:v10];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)insertRecurrenceRule:(id)a3 afterRecurrenceRule:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[REMLogStore write];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = self;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Adding recurrenceRule after recurrenceRule {reminderChangeItem: %@, recurrenceRule: %@, siblisngRecurrenceRule: %@}", &v13, 0x20u);
  }

  v9 = [(REMReminderChangeItem *)self recurrenceRules];
  v10 = [v9 mutableCopy];

  if (v10)
  {
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v11 = [v10 indexOfObject:v7];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 insertObject:v6 atIndex:v11 + 1];
    goto LABEL_10;
  }

LABEL_8:
  [v10 addObject:v6];
LABEL_10:
  [(REMReminderChangeItem *)self setRecurrenceRules:v10];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeRecurrenceRule:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Removing recurrenceRule {reminderChangeItem: %@, recurrenceRule: %@}", &v9, 0x16u);
  }

  v6 = [(REMReminderChangeItem *)self recurrenceRules];
  v7 = [v6 mutableCopy];

  [v7 removeObject:v4];
  [(REMReminderChangeItem *)self setRecurrenceRules:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeAllRecurrenceRules
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_INFO, "Removing all recurrenceRules {reminderChangeItem: %@}", &v5, 0xCu);
  }

  [(REMReminderChangeItem *)self setRecurrenceRules:MEMORY[0x1E695E0F0]];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setRecurrenceRules:(id)a3
{
  v4 = a3;
  v5 = [(REMReminderChangeItem *)self storage];
  [v5 setRecurrenceRules:v4];

  [(REMReminderChangeItem *)self clearAlternativeDisplayDateDateForCalendarIfInvalid];
}

- (double)nextRecurrentAdvanceAmountForDateComponents:(id)a3 afterDate:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = a4;
    v8 = [v6 timeZone];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    }

    v12 = v10;

    v13 = [MEMORY[0x1E695DF10] rem_dateWithDateComponents:v6 timeZone:v12];
    v14 = [v6 rem_isAllDayDateComponents];
    v15 = [v7 laterDate:v13];

    v16 = [(REMReminderChangeItem *)self recurrenceRules];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    v19 = [REMRecurrenceRule nextRecurrentDueDateAfter:v15 dueDate:v13 timeZone:v12 allDay:v14 recurrenceRules:v18];

    if (v19)
    {
      [v19 timeIntervalSinceDate:v13];
      v11 = v20;
    }

    else
    {
      v11 = 0.0;
    }
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

- (id)nextRecurrentDueDateComponentsAfter:(id)a3
{
  v4 = a3;
  v5 = [(REMReminderChangeItem *)self dueDateComponents];
  v6 = [v5 timeZone];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  v9 = v8;

  v10 = [MEMORY[0x1E695DF10] rem_dateWithDateComponents:v5 timeZone:v9];
  v11 = [v5 rem_isAllDayDateComponents];
  v12 = [v4 laterDate:v10];

  v13 = [(REMReminderChangeItem *)self recurrenceRules];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  v16 = [REMRecurrenceRule nextRecurrentDueDateAfter:v12 dueDate:v10 timeZone:v9 allDay:v11 recurrenceRules:v15];

  if (v16)
  {
    v17 = [MEMORY[0x1E695DF10] rem_dateComponentsWithDate:v16 timeZone:v9 isAllDay:v11];
    v18 = [v5 timeZone];

    if (!v18)
    {
      v19 = [v17 rem_strippingTimeZone];

      v17 = v19;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)addAlarmWithTrigger:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMReminderChangeItem *)self dueDateComponents];

    if (!v5)
    {
      v6 = +[REMLogStore write];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [REMReminderChangeItem addAlarmWithTrigger:v6];
      }
    }
  }

  v7 = [[REMAlarm alloc] initWithTrigger:v4];
  [(REMReminderChangeItem *)self addAlarm:v7];

  return v7;
}

- (void)addAlarm:(id)a3 updateDisplayDate:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[REMLogStore write];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_INFO, "Adding alarm  {reminderChangeItem: %@, alarm: %@}", &v13, 0x16u);
  }

  v8 = [(REMReminderChangeItem *)self alarms];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v9 addObject:v6];
  v10 = [(REMReminderChangeItem *)self storage];
  [v10 setAlarms:v9];

  if (v4)
  {
    v11 = [(REMReminderChangeItem *)self storage];
    [v11 updateDisplayDate];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setAlarms:(id)a3
{
  v4 = [a3 copy];
  v5 = [(REMReminderChangeItem *)self storage];
  [v5 setAlarms:v4];

  v6 = [(REMReminderChangeItem *)self storage];
  [v6 updateDisplayDate];
}

- (void)setAlarms:(id)a3 updateDisplayDate:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 copy];
  v7 = [(REMReminderChangeItem *)self storage];
  [v7 setAlarms:v6];

  if (v4)
  {
    v8 = [(REMReminderChangeItem *)self storage];
    [v8 updateDisplayDate];
  }
}

- (void)removeAlarm:(id)a3 updateDisplayDate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(REMReminderChangeItem *)self alarms];
  v10 = [v7 mutableCopy];

  [v10 removeObject:v6];
  v8 = [(REMReminderChangeItem *)self storage];
  [v8 setAlarms:v10];

  if (v4)
  {
    v9 = [(REMReminderChangeItem *)self storage];
    [v9 updateDisplayDate];
  }
}

- (void)removeAllAlarms
{
  v3 = [(REMReminderChangeItem *)self storage];
  [v3 setAlarms:MEMORY[0x1E695E0F0]];

  v4 = [(REMReminderChangeItem *)self storage];
  [v4 updateDisplayDate];
}

- (void)updateDisplayDate
{
  v2 = [(REMReminderChangeItem *)self storage];
  [v2 updateDisplayDate];
}

- (BOOL)isSubtask
{
  v2 = [(REMReminderChangeItem *)self parentReminderID];
  v3 = v2 != 0;

  return v3;
}

- (REMReminderSubtaskContextChangeItem)subtaskContext
{
  v3 = [(REMReminderChangeItem *)self accountCapabilities];
  if ([v3 supportsSubtasks])
  {
    v4 = [(REMReminderChangeItem *)self isSubtask];

    if (!v4)
    {
      v5 = [[REMReminderSubtaskContextChangeItem alloc] initWithReminderChangeItem:self];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (REMReminderAttachmentContextChangeItem)attachmentContext
{
  v3 = [(REMReminderChangeItem *)self accountCapabilities];
  v4 = [v3 supportsAttachments];

  if (v4)
  {
    v5 = [[REMReminderAttachmentContextChangeItem alloc] initWithReminderChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (REMReminderFlaggedContextChangeItem)flaggedContext
{
  v3 = [(REMReminderChangeItem *)self accountCapabilities];
  v4 = [v3 supportsFlagged];

  if (v4)
  {
    v5 = [[REMReminderFlaggedContextChangeItem alloc] initWithReminderChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (REMReminderAssignmentContextChangeItem)assignmentContext
{
  v3 = [(REMReminderChangeItem *)self accountCapabilities];
  v4 = [v3 supportsAssignments];

  if (v4)
  {
    v5 = [[REMReminderAssignmentContextChangeItem alloc] initWithReminderChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (REMReminderHashtagContextChangeItem)hashtagContext
{
  v3 = [(REMReminderChangeItem *)self accountCapabilities];
  v4 = [v3 supportsHashtags];

  if (v4)
  {
    v5 = [[REMReminderHashtagContextChangeItem alloc] initWithReminderChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (REMReminderDueDateDeltaAlertContextChangeItem)dueDateDeltaAlertContext
{
  v3 = [(REMReminderChangeItem *)self accountCapabilities];
  v4 = [v3 supportsDueDateDeltaAlerts];

  if (v4)
  {
    v5 = [[REMReminderDueDateDeltaAlertContextChangeItem alloc] initWithReminderChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (REMDueDateDeltaAlert)fetchedCurrentDueDateDeltaAlert
{
  v2 = [(REMReminderChangeItem *)self storage];
  v3 = [v2 fetchedDueDateDeltaAlerts];
  v4 = [v3 lastObject];

  return v4;
}

- (id)removeFromListAllowingUndo
{
  v3 = [(REMReminderChangeItem *)self listID];

  if (v3)
  {
    v4 = [(REMReminderChangeItem *)self saveRequest];
    v5 = [v4 _updateListWithReminderChangeItem:self];

    v6 = [(REMReminderChangeItem *)self objectID];
    v3 = [v5 lowLevelRemoveReminderIDFromOrdering:v6];
  }

  [(REMReminderChangeItem *)self setListID:0];
  [(REMReminderChangeItem *)self setParentReminderID:0];

  return v3;
}

- (void)updateAccountCapabilities:(id)a3
{
  v4 = a3;
  [(REMReminderChangeItem *)self willChangeValueForKey:@"accountCapabilities"];
  v5 = [(REMReminderChangeItem *)self saveRequest];
  v6 = [(REMReminderChangeItem *)self objectID];
  [v5 _trackAccountCapabilities:v4 forObjectID:v6];

  [(REMReminderChangeItem *)self didChangeValueForKey:@"accountCapabilities"];
}

- (id)changedKeys
{
  v2 = [(REMReminderChangeItem *)self changedKeysObserver];
  v3 = [v2 changedKeys];

  return v3;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(REMReminderChangeItem *)self storage];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = REMReminderChangeItem;
  if ([(REMReminderChangeItem *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(REMReminderChangeItem *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMReminderChangeItem *)self saveRequest];
  v9 = [v8 isSaved];

  if (v9)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_INFO, "REMSaveRequest.isSaved MUST be FALSE", v12, 2u);
    }
  }

  v11 = [(REMReminderChangeItem *)self storage];
  [v11 setValue:v7 forKey:v6];
}

+ (id)resolutionTokenKeyForChangedKeyInREMReminderChangeItemOfREMCDReminder:(id)a3
{
  v3 = __resolutionTokenKeyDenylistForREMReminderChangeItemOfREMCDReminder;
  v4 = a3;
  if ([v3 containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

+ (id)resolutionTokenKeyForChangedKeyInREMReminderChangeItemOfREMCDSavedReminder:(id)a3
{
  v3 = __resolutionTokenKeyDenylistForREMReminderChangeItemOfREMCDSavedReminder;
  v4 = a3;
  if ([v3 containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

- (id)resolutionTokenKeyForChangedKey:(id)a3
{
  v4 = a3;
  v5 = [(REMReminderChangeItem *)self objectID];
  v6 = [v5 entityName];
  v7 = +[REMTemplate cdEntityNameForSavedReminder];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    [REMReminderChangeItem resolutionTokenKeyForChangedKeyInREMReminderChangeItemOfREMCDSavedReminder:v4];
  }

  else
  {
    [REMReminderChangeItem resolutionTokenKeyForChangedKeyInREMReminderChangeItemOfREMCDReminder:v4];
  }
  v9 = ;

  return v9;
}

- (BOOL)isUnsupported
{
  v2 = [(REMReminderChangeItem *)self storage];
  v3 = [v2 isUnsupported];

  return v3;
}

- (id)confirmForSiriFoundInAppsAppendingToList:(id)a3
{
  v4 = a3;
  v5 = [(REMReminderChangeItem *)self saveRequest];
  v6 = [v5 addReminderWithTitle:&stru_1F0D67F00 toListChangeItem:v4];

  [(REMReminderChangeItem *)self copyInto:v6];
  [(REMReminderChangeItem *)self setCompleted:1];
  [(REMReminderChangeItem *)self setSiriFoundInAppsUserConfirmation:1];

  return v6;
}

- (void)rejectForSiriFoundInApps
{
  [(REMReminderChangeItem *)self setCompleted:1];

  [(REMReminderChangeItem *)self setSiriFoundInAppsUserConfirmation:2];
}

- (void)removeAllSnoozeAlarms
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(REMReminderChangeItem *)self alarms];
  v4 = v3;
  v5 = MEMORY[0x1E695E0F0];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 isSnooze])
        {
          [(REMReminderChangeItem *)self removeAlarm:v13 updateDisplayDate:0];
          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);

    if (v10)
    {
      [(REMReminderChangeItem *)self updateDisplayDate];
    }
  }

  else
  {
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)snoozeFromNowForTimeInterval:(double)a3
{
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v5 dateByAddingTimeInterval:a3];

  [(REMReminderChangeItem *)self snoozeToDate:v6];
}

- (void)snoozeToDate:(id)a3
{
  v4 = MEMORY[0x1E695DF10];
  v5 = MEMORY[0x1E695DFE8];
  v6 = a3;
  v7 = [v5 defaultTimeZone];
  v8 = [v4 rem_dateComponentsWithDate:v6 timeZone:v7 isAllDay:0];

  [(REMReminderChangeItem *)self _createSnoozeAlarmWithDateComponents:v8];
}

- (void)snoozeToNextThirds
{
  v3 = MEMORY[0x1E695DF10];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  v7 = [v3 rem_dateComponentsWithDate:v4 timeZone:v5 isAllDay:0];

  v6 = objc_opt_class();
  [v7 setHour:{objc_msgSend(v6, "nextThirdsHour:", objc_msgSend(objc_opt_class(), "nextThirdsHourFromHour:", objc_msgSend(v7, "hour")))}];
  [v7 setMinute:0];
  [v7 setSecond:0];
  [(REMReminderChangeItem *)self _createSnoozeAlarmWithDateComponents:v7];
}

- (void)snoozeFromDueDateForFutureIntegralMultipleOfTimeInterval:(double)a3
{
  v15 = [(REMReminderChangeItem *)self dueDateComponents];
  if (v15)
  {
    v5 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v6 = [MEMORY[0x1E695DF10] rem_dateWithDateComponents:v15 timeZone:v5];
    v7 = [MEMORY[0x1E695DF00] date];
    [(REMReminderChangeItem *)self _timeIntervalToAddSinceStartDate:v6 withNow:v7 step:a3];
    v9 = v8;

    v10 = [v15 rem_dateComponentsByAddingTimeInterval:v9];
    [(REMReminderChangeItem *)self _createSnoozeAlarmWithDateComponents:v10];
  }

  else
  {
    v11 = [(REMReminderChangeItem *)self displayDate];
    v5 = [v11 date];

    if (v5)
    {
      v12 = [MEMORY[0x1E695DF00] date];
      [(REMReminderChangeItem *)self _timeIntervalToAddSinceStartDate:v5 withNow:v12 step:a3];
      v14 = v13;

      [v5 dateByAddingTimeInterval:v14];
    }

    else
    {
      [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:a3];
    }
    v6 = ;
    [(REMReminderChangeItem *)self snoozeToDate:v6];
  }
}

- (void)_createSnoozeAlarmWithDateComponents:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = [(REMReminderChangeItem *)self _cleanupOriginalAlarmsForSnoozing];
    v6 = [[REMAlarmDateTrigger alloc] initWithDateComponents:v4];

    v7 = [(REMReminderChangeItem *)self addAlarmWithTrigger:v6];
    [v7 setOriginalAlarmUID:v5];
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 description];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Adding snooze alarm: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_cleanupOriginalAlarmsForSnoozing
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [(REMReminderChangeItem *)self alarms];
  v4 = v3;
  v5 = MEMORY[0x1E695E0F0];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v34 = [MEMORY[0x1E695DF00] date];
  v7 = [(REMReminderChangeItem *)self dedupedAndFilteredNonSnoozeAlarms:v6];
  v8 = [v6 count];
  v33 = v8 != [v7 count];
  [(REMReminderChangeItem *)self setAlarms:v7 updateDisplayDate:0];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        if ([v15 isOriginal])
        {
          v16 = +[REMLogStore write];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v15 description];
            *buf = 138412290;
            v40 = v17;
            _os_log_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_INFO, "Acknowledging original alarm: %@", buf, 0xCu);
          }

          if (!v12 || ([v15 trigger], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isTemporal"), v18, v19))
          {
            v20 = [v15 alarmUID];

            v12 = v20;
          }

          v21 = [v15 trigger];
          v22 = [v21 isTemporal];

          if (v22)
          {
            [(REMReminderChangeItem *)self removeAlarm:v15 updateDisplayDate:0];
            v23 = [REMAlarm alloc];
            v24 = +[REMAlarm newObjectID];
            v25 = [(REMAlarm *)v23 initWithAlarm:v15 objectID:v24];

            [(REMReminderChangeItem *)self addAlarm:v25 updateDisplayDate:0];
            [v25 setAcknowledgedDate:v34];
            v26 = [v15 alarmUID];
            [v25 setAlarmUID:v26];

            v27 = +[REMLogStore write];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = [v25 description];
              *buf = 138412290;
              v40 = v28;
              _os_log_impl(&dword_19A0DB000, v27, OS_LOG_TYPE_INFO, "Replacing alarm with acknowledged version: %@", buf, 0xCu);
            }

            v33 = 1;
          }

          else
          {
            v25 = +[REMLogStore write];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v29 = [v15 description];
              *buf = 138412290;
              v40 = v29;
              _os_log_impl(&dword_19A0DB000, v25, OS_LOG_TYPE_INFO, "Not replacing non-temporal alarm: %@", buf, 0xCu);
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  if (v33)
  {
    [(REMReminderChangeItem *)self updateDisplayDate];
  }

  v30 = v12;

  v31 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)initWithSaveRequest:storage:accountCapabilities:changedKeysObserver:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = NSStringFromSelector(v0);
  v5 = [v1 stringWithFormat:@"%@.%@", v3, v4];
  OUTLINED_FUNCTION_0();
  v10 = "storage";
  OUTLINED_FUNCTION_3(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithObjectID:title:insertIntoParentReminderSubtaskContextChangeItem:.cold.1()
{
  v0 = +[REMLogStore write];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v1, v2, v3, v4, v5, 2u);
  }
}

- (void)accountCapabilities
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)duplicateForRecurrenceUsingReminderID:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 parentReminderID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)duplicateForRecurrenceUsingReminderID:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 listID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_ensureDueDateDeltaAlertsAreFetchedIfNecessary:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v7 = *MEMORY[0x1E69E9840];
  v1 = [v0 remObjectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)advanceForwardToNextRecurrenceAfterDate:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setAlternativeDisplayDateDateForCalendarWithDateComponents:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)shallowCopyWithSaveRequest:(NSObject *)a3 .cold.1(void *a1, const char *a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  v10 = [v6 stringWithFormat:@"%@.%@", v8, v9];
  v11 = [a1 objectID];
  *buf = 138543618;
  v14 = v10;
  v15 = 2114;
  v16 = v11;
  _os_log_fault_impl(&dword_19A0DB000, a3, OS_LOG_TYPE_FAULT, "[%{public}@] _trackedAccountCapabilitiesForObjectID should NOT yield nil result when copying this change item with a non-nil save request {objectID: %{public}@}", buf, 0x16u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)shallowCopyWithSaveRequest:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(v0);
  v7 = [v3 stringWithFormat:@"%@.%@", v5, v6];
  v11 = 138543618;
  v12 = v7;
  v13 = 2112;
  v14 = v2;
  OUTLINED_FUNCTION_3(&dword_19A0DB000, v8, v9, "[%{public}@] self.objectID should not be nil when copying this change item {self: %@}", &v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)shallowCopyWithSaveRequest:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = NSStringFromSelector(v0);
  v5 = [v1 stringWithFormat:@"%@.%@", v3, v4];
  OUTLINED_FUNCTION_0();
  v10 = "self.storage";
  OUTLINED_FUNCTION_3(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setIcsDisplayOrder:(NSObject *)a1 .cold.1(NSObject **a1)
{
  v2 = +[REMLogStore write];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_19A0DB000, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (listChangeItem == nil) -- listChangeItem is nil. Unable to update list when setting icsDisplayOrder.", v3, 2u);
  }

  *a1 = v2;
}

@end