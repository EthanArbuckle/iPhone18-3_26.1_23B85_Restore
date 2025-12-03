@interface REMReminderChangeItem
+ (id)resolutionTokenKeyForChangedKeyInREMReminderChangeItemOfREMCDReminder:(id)reminder;
+ (id)resolutionTokenKeyForChangedKeyInREMReminderChangeItemOfREMCDSavedReminder:(id)reminder;
+ (void)_ensureDueDateDeltaAlertsAreFetchedIfNecessary:(id)necessary;
+ (void)initialize;
- (BOOL)canSetAlternativeDisplayDateDateForCalendar;
- (BOOL)isSubtask;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)selector;
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
- (REMReminderChangeItem)initWithObjectID:(id)d title:(id)title insertIntoListChangeItem:(id)item;
- (REMReminderChangeItem)initWithObjectID:(id)d title:(id)title insertIntoParentReminderSubtaskContextChangeItem:(id)item;
- (REMReminderChangeItem)initWithReminderChangeItem:(id)item insertIntoListChangeItem:(id)changeItem;
- (REMReminderChangeItem)initWithReminderChangeItem:(id)item insertIntoParentReminderSubtaskContextChangeItem:(id)changeItem;
- (REMReminderChangeItem)initWithSaveRequest:(id)request storage:(id)storage accountCapabilities:(id)capabilities changedKeysObserver:(id)observer;
- (REMReminderDueDateDeltaAlertContextChangeItem)dueDateDeltaAlertContext;
- (REMReminderFlaggedContextChangeItem)flaggedContext;
- (REMReminderHashtagContextChangeItem)hashtagContext;
- (REMReminderSubtaskContextChangeItem)subtaskContext;
- (double)nextRecurrentAdvanceAmountForDateComponents:(id)components afterDate:(id)date;
- (id)_cleanupOriginalAlarmsForSnoozing;
- (id)_editDocument:(id)document replicaIDSource:(id)source newString:(id)string;
- (id)addAlarmWithTrigger:(id)trigger;
- (id)addRecurrenceRuleWithFrequency:(int64_t)frequency interval:(int64_t)interval end:(id)end;
- (id)addRecurrenceRuleWithFrequency:(int64_t)frequency interval:(int64_t)interval firstDayOfTheWeek:(int64_t)week daysOfTheWeek:(id)theWeek daysOfTheMonth:(id)month monthsOfTheYear:(id)year weeksOfTheYear:(id)theYear daysOfTheYear:(id)self0 setPositions:(id)self1 end:(id)self2;
- (id)changedKeys;
- (id)confirmForSiriFoundInAppsAppendingToList:(id)list;
- (id)datesDebugDescriptionInTimeZone:(id)zone;
- (id)dedupedAndFilteredNonSnoozeAlarms:(id)alarms;
- (id)duplicateForRecurrenceUsingReminderID:(id)d;
- (id)nextRecurrentDueDateComponentsAfter:(id)after;
- (id)removeFromListAllowingUndo;
- (id)resolutionTokenKeyForChangedKey:(id)key;
- (id)shallowCopyWithSaveRequest:(id)request;
- (id)valueForUndefinedKey:(id)key;
- (void)_copyAlarmsInto:(id)into;
- (void)_createSnoozeAlarmWithDateComponents:(id)components;
- (void)accountCapabilities;
- (void)addAlarm:(id)alarm updateDisplayDate:(BOOL)date;
- (void)advanceForwardDateAlarmsAfterDate:(id)date;
- (void)advanceForwardRecurrenceAfterNow;
- (void)advanceForwardToNextRecurrenceAfterDate:(id)date;
- (void)clearAlternativeDisplayDateDateForCalendarIfInvalid;
- (void)clearAlternativeDisplayDateDateForCalendarWithReason:(id)reason;
- (void)copyInto:(id)into;
- (void)decrementRecurrenceRuleEndCount;
- (void)insertRecurrenceRule:(id)rule afterRecurrenceRule:(id)recurrenceRule;
- (void)insertRecurrenceRule:(id)rule beforeRecurrenceRule:(id)recurrenceRule;
- (void)rejectForSiriFoundInApps;
- (void)removeAlarm:(id)alarm updateDisplayDate:(BOOL)date;
- (void)removeAllAlarms;
- (void)removeAllRecurrenceRules;
- (void)removeAllSnoozeAlarms;
- (void)removeRecurrenceRule:(id)rule;
- (void)setAlarms:(id)alarms;
- (void)setAlarms:(id)alarms updateDisplayDate:(BOOL)date;
- (void)setAlternativeDisplayDateDateForCalendarToPreviousRecurrentDateBefore:(id)before recurrenceRules:(id)rules;
- (void)setAlternativeDisplayDateDateForCalendarWithDateComponents:(id)components;
- (void)setAlternativeDisplayDateDateForCalendarWithNormalizedDate:(id)date;
- (void)setDueDateComponents:(id)components;
- (void)setDueDateComponentsWithAlarmsIfNeeded:(id)needed;
- (void)setIcsDisplayOrder:(unint64_t)order;
- (void)setNotes:(id)notes;
- (void)setNotesAsString:(id)string;
- (void)setPrimaryLocaleInferredFromLastUsedKeyboard:(id)keyboard;
- (void)setRecurrenceRules:(id)rules;
- (void)setTitle:(id)title;
- (void)setTitleAsString:(id)string;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)snoozeFromDueDateForFutureIntegralMultipleOfTimeInterval:(double)interval;
- (void)snoozeFromNowForTimeInterval:(double)interval;
- (void)snoozeToDate:(id)date;
- (void)snoozeToNextThirds;
- (void)updateAccountCapabilities:(id)capabilities;
- (void)updateDisplayDate;
@end

@implementation REMReminderChangeItem

+ (void)initialize
{
  if (objc_opt_class() == self)
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

- (REMReminderChangeItem)initWithSaveRequest:(id)request storage:(id)storage accountCapabilities:(id)capabilities changedKeysObserver:(id)observer
{
  requestCopy = request;
  storageCopy = storage;
  capabilitiesCopy = capabilities;
  observerCopy = observer;
  if (storageCopy)
  {
    v22.receiver = self;
    v22.super_class = REMReminderChangeItem;
    v15 = [(REMReminderChangeItem *)&v22 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_saveRequest, request);
      objc_storeStrong(&v16->_storage, storage);
      objc_storeStrong(&v16->_changedKeysObserver, observer);
      saveRequest = v16->_saveRequest;
      objectID = [(REMReminderStorage *)v16->_storage objectID];
      [(REMSaveRequest *)saveRequest _trackAccountCapabilities:capabilitiesCopy forObjectID:objectID];
    }

    self = v16;
    selfCopy = self;
  }

  else
  {
    v20 = +[REMLogStore write];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [REMReminderChangeItem initWithSaveRequest:storage:accountCapabilities:changedKeysObserver:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "storage");
    selfCopy = 0;
  }

  return selfCopy;
}

- (REMReminderChangeItem)initWithObjectID:(id)d title:(id)title insertIntoListChangeItem:(id)item
{
  v32[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  titleCopy = title;
  itemCopy = item;
  accountID = [itemCopy accountID];
  v12 = [REMReminderStorage alloc];
  objectID = [itemCopy objectID];
  v14 = [(REMReminderStorage *)v12 initWithObjectID:dCopy listID:objectID accountID:accountID];

  if (!titleCopy)
  {
    titleCopy = &stru_1F0D67F00;
  }

  v15 = [REMCRMergeableStringDocument alloc];
  titleReplicaIDSource = [(REMReminderStorage *)v14 titleReplicaIDSource];
  v17 = [(REMCRMergeableStringDocument *)v15 initWithReplicaIDSource:titleReplicaIDSource string:titleCopy];

  [(REMReminderStorage *)v14 setTitleDocument:v17];
  [itemCopy lowLevelAddReminderIDToOrdering:dCopy withParentReminderChangeItem:0];
  groceryContextChangeItem = [itemCopy groceryContextChangeItem];
  shouldCategorizeGroceryItems = [groceryContextChangeItem shouldCategorizeGroceryItems];

  if (shouldCategorizeGroceryItems)
  {
    groceryContextChangeItem2 = [itemCopy groceryContextChangeItem];
    v32[0] = dCopy;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    [groceryContextChangeItem2 categorizeGroceryItemsWithReminderIDs:v21];
  }

  autoCategorizeContextChangeItem = [itemCopy autoCategorizeContextChangeItem];
  shouldAutoCategorizeItems = [autoCategorizeContextChangeItem shouldAutoCategorizeItems];

  if (shouldAutoCategorizeItems)
  {
    autoCategorizeContextChangeItem2 = [itemCopy autoCategorizeContextChangeItem];
    v31 = dCopy;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    [autoCategorizeContextChangeItem2 categorizeAutoCategorizationItemsWithReminderIDs:v25];
  }

  saveRequest = [itemCopy saveRequest];
  accountCapabilities = [itemCopy accountCapabilities];
  v28 = [(REMReminderChangeItem *)self initWithSaveRequest:saveRequest storage:v14 accountCapabilities:accountCapabilities observeInitialValues:1];

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

- (REMReminderChangeItem)initWithObjectID:(id)d title:(id)title insertIntoParentReminderSubtaskContextChangeItem:(id)item
{
  v35[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  titleCopy = title;
  reminderChangeItem = [item reminderChangeItem];
  accountID = [reminderChangeItem accountID];
  v11 = [REMReminderStorage alloc];
  listID = [reminderChangeItem listID];
  v13 = [(REMReminderStorage *)v11 initWithObjectID:dCopy listID:listID accountID:accountID];

  objectID = [reminderChangeItem objectID];
  [(REMReminderStorage *)v13 setParentReminderID:objectID];

  if (!titleCopy)
  {
    titleCopy = &stru_1F0D67F00;
  }

  v15 = [REMCRMergeableStringDocument alloc];
  titleReplicaIDSource = [(REMReminderStorage *)v13 titleReplicaIDSource];
  v17 = [(REMCRMergeableStringDocument *)v15 initWithReplicaIDSource:titleReplicaIDSource string:titleCopy];

  [(REMReminderStorage *)v13 setTitleDocument:v17];
  saveRequest = [reminderChangeItem saveRequest];
  v19 = [saveRequest _updateListWithReminderChangeItem:reminderChangeItem];
  if (!v19)
  {
    [REMReminderChangeItem initWithObjectID:title:insertIntoParentReminderSubtaskContextChangeItem:];
  }

  [v19 lowLevelAddReminderIDToOrdering:dCopy withParentReminderChangeItem:{reminderChangeItem, self}];
  groceryContextChangeItem = [v19 groceryContextChangeItem];
  shouldCategorizeGroceryItems = [groceryContextChangeItem shouldCategorizeGroceryItems];

  if (shouldCategorizeGroceryItems)
  {
    groceryContextChangeItem2 = [v19 groceryContextChangeItem];
    v35[0] = dCopy;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    [groceryContextChangeItem2 categorizeGroceryItemsWithReminderIDs:v23];
  }

  autoCategorizeContextChangeItem = [v19 autoCategorizeContextChangeItem];
  shouldAutoCategorizeItems = [autoCategorizeContextChangeItem shouldAutoCategorizeItems];

  if (shouldAutoCategorizeItems)
  {
    autoCategorizeContextChangeItem2 = [v19 autoCategorizeContextChangeItem];
    v34 = dCopy;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [autoCategorizeContextChangeItem2 categorizeAutoCategorizationItemsWithReminderIDs:v27];
  }

  accountCapabilities = [reminderChangeItem accountCapabilities];
  v29 = [v33 initWithSaveRequest:saveRequest storage:v13 accountCapabilities:accountCapabilities observeInitialValues:1];

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (REMReminderChangeItem)initWithReminderChangeItem:(id)item insertIntoListChangeItem:(id)changeItem
{
  v26[1] = *MEMORY[0x1E69E9840];
  changeItemCopy = changeItem;
  itemCopy = item;
  v8 = +[REMReminder newObjectID];
  v9 = [REMReminderStorage alloc];
  objectID = [changeItemCopy objectID];
  accountID = [changeItemCopy accountID];
  v12 = [(REMReminderStorage *)v9 initWithObjectID:v8 listID:objectID accountID:accountID];

  [changeItemCopy lowLevelAddReminderIDToOrdering:v8 withParentReminderChangeItem:0];
  groceryContextChangeItem = [changeItemCopy groceryContextChangeItem];
  LODWORD(accountID) = [groceryContextChangeItem shouldCategorizeGroceryItems];

  if (accountID)
  {
    groceryContextChangeItem2 = [changeItemCopy groceryContextChangeItem];
    v26[0] = v8;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [groceryContextChangeItem2 categorizeGroceryItemsWithReminderIDs:v15];
  }

  autoCategorizeContextChangeItem = [changeItemCopy autoCategorizeContextChangeItem];
  shouldAutoCategorizeItems = [autoCategorizeContextChangeItem shouldAutoCategorizeItems];

  if (shouldAutoCategorizeItems)
  {
    autoCategorizeContextChangeItem2 = [changeItemCopy autoCategorizeContextChangeItem];
    v25 = v8;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    [autoCategorizeContextChangeItem2 categorizeAutoCategorizationItemsWithReminderIDs:v19];
  }

  saveRequest = [itemCopy saveRequest];
  accountCapabilities = [changeItemCopy accountCapabilities];
  v22 = [(REMReminderChangeItem *)self initWithSaveRequest:saveRequest storage:v12 accountCapabilities:accountCapabilities observeInitialValues:1];

  [itemCopy copyInto:v22];
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (REMReminderChangeItem)initWithReminderChangeItem:(id)item insertIntoParentReminderSubtaskContextChangeItem:(id)changeItem
{
  v32[1] = *MEMORY[0x1E69E9840];
  changeItemCopy = changeItem;
  itemCopy = item;
  v7 = +[REMReminder newObjectID];
  reminderChangeItem = [changeItemCopy reminderChangeItem];

  accountID = [reminderChangeItem accountID];
  v10 = [REMReminderStorage alloc];
  listID = [reminderChangeItem listID];
  v12 = [(REMReminderStorage *)v10 initWithObjectID:v7 listID:listID accountID:accountID];

  objectID = [reminderChangeItem objectID];
  [(REMReminderStorage *)v12 setParentReminderID:objectID];

  saveRequest = [reminderChangeItem saveRequest];
  v15 = [saveRequest _updateListWithReminderChangeItem:reminderChangeItem];
  if (!v15)
  {
    [REMReminderChangeItem initWithObjectID:title:insertIntoParentReminderSubtaskContextChangeItem:];
  }

  [v15 lowLevelAddReminderIDToOrdering:v7 withParentReminderChangeItem:{reminderChangeItem, self}];
  groceryContextChangeItem = [v15 groceryContextChangeItem];
  shouldCategorizeGroceryItems = [groceryContextChangeItem shouldCategorizeGroceryItems];

  if (shouldCategorizeGroceryItems)
  {
    groceryContextChangeItem2 = [v15 groceryContextChangeItem];
    v32[0] = v7;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    [groceryContextChangeItem2 categorizeGroceryItemsWithReminderIDs:v19];
  }

  autoCategorizeContextChangeItem = [v15 autoCategorizeContextChangeItem];
  shouldAutoCategorizeItems = [autoCategorizeContextChangeItem shouldAutoCategorizeItems];

  if (shouldAutoCategorizeItems)
  {
    autoCategorizeContextChangeItem2 = [v15 autoCategorizeContextChangeItem];
    v31 = v7;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    [autoCategorizeContextChangeItem2 categorizeAutoCategorizationItemsWithReminderIDs:v23];
  }

  saveRequest2 = [itemCopy saveRequest];
  accountCapabilities = [reminderChangeItem accountCapabilities];
  v26 = [v30 initWithSaveRequest:saveRequest2 storage:v12 accountCapabilities:accountCapabilities observeInitialValues:1];

  [itemCopy copyInto:v26];
  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (REMAccountCapabilities)accountCapabilities
{
  storage = [(REMReminderChangeItem *)self storage];
  if (!storage)
  {
    goto LABEL_3;
  }

  v4 = storage;
  saveRequest = [(REMReminderChangeItem *)self saveRequest];
  objectID = [(REMReminderChangeItem *)self objectID];
  v7 = [saveRequest _trackedAccountCapabilitiesForObjectID:objectID];

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
  storage = [(REMReminderChangeItem *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, storage];

  return v6;
}

- (id)datesDebugDescriptionInTimeZone:(id)zone
{
  zoneCopy = zone;
  storage = [(REMReminderChangeItem *)self storage];
  v6 = [storage datesDebugDescriptionInTimeZone:zoneCopy];

  return v6;
}

- (id)duplicateForRecurrenceUsingReminderID:(id)d
{
  dCopy = d;
  selfCopy = self;
  saveRequest = [(REMReminderChangeItem *)selfCopy saveRequest];
  titleAsString = [(REMReminderChangeItem *)selfCopy titleAsString];
  v8 = [titleAsString copy];
  v9 = v8;
  v10 = &stru_1F0D67F00;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  accountCapabilities = [(REMReminderChangeItem *)selfCopy accountCapabilities];
  insertsCompletedRecurrentCloneAtTail = [accountCapabilities insertsCompletedRecurrentCloneAtTail];

  parentReminderID = [(REMReminderChangeItem *)selfCopy parentReminderID];

  if (parentReminderID)
  {
    parentReminderID2 = [(REMReminderChangeItem *)selfCopy parentReminderID];
    v16 = [saveRequest _trackedReminderChangeItemForObjectID:parentReminderID2];

    subtaskContext = [v16 subtaskContext];
    if (subtaskContext)
    {
      v18 = [saveRequest addReminderWithTitle:v11 toReminderSubtaskContextChangeItem:subtaskContext reminderObjectID:dCopy];
      [subtaskContext insertReminderChangeItem:v18 beforeReminderChangeItem:selfCopy];
    }

    else
    {
      v20 = +[REMLogStore write];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [REMReminderChangeItem duplicateForRecurrenceUsingReminderID:selfCopy];
      }

      v18 = 0;
    }
  }

  else
  {
    listID = [(REMReminderChangeItem *)selfCopy listID];

    if (!listID)
    {
      currentAssignment = +[REMLogStore write];
      if (os_log_type_enabled(currentAssignment, OS_LOG_TYPE_FAULT))
      {
        [REMReminderChangeItem duplicateForRecurrenceUsingReminderID:currentAssignment];
      }

      v18 = 0;
      goto LABEL_22;
    }

    v16 = [saveRequest _updateListWithReminderChangeItem:selfCopy];
    if (v16)
    {
      v18 = [saveRequest addReminderWithTitle:v11 toListChangeItem:v16 reminderObjectID:dCopy];
      if (insertsCompletedRecurrentCloneAtTail)
      {
        [v16 insertReminderChangeItem:v18 adjacentToReminderChangeItem:0 isAfter:1 withParentReminderChangeItem:0];
      }

      else
      {
        [v16 insertReminderChangeItem:v18 beforeReminderChangeItem:selfCopy];
      }
    }

    else
    {
      v32 = +[REMLogStore write];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        [REMReminderChangeItem duplicateForRecurrenceUsingReminderID:selfCopy];
      }

      v18 = 0;
    }
  }

  if (v18)
  {
    [(REMReminderChangeItem *)selfCopy copyInto:v18];
    assignmentContext = [(REMReminderChangeItem *)selfCopy assignmentContext];
    if (assignmentContext)
    {
      v22 = assignmentContext;
      assignmentContext2 = [v18 assignmentContext];

      if (assignmentContext2)
      {
        assignmentContext3 = [(REMReminderChangeItem *)selfCopy assignmentContext];
        currentAssignment = [assignmentContext3 currentAssignment];

        if (currentAssignment)
        {
          assignmentContext4 = [v18 assignmentContext];
          assigneeID = [currentAssignment assigneeID];
          originatorID = [currentAssignment originatorID];
          v29 = [assignmentContext4 addAssignmentWithAssigneeID:assigneeID originatorID:originatorID status:{-[NSObject status](currentAssignment, "status")}];

          assignedDate = [currentAssignment assignedDate];
          [v29 setAssignedDate:assignedDate];
        }

LABEL_22:
      }
    }
  }

  return v18;
}

- (void)copyInto:(id)into
{
  v135 = *MEMORY[0x1E69E9840];
  intoCopy = into;
  selfCopy = self;
  title = [(REMReminderChangeItem *)selfCopy title];
  v7 = [title copy];
  [intoCopy setTitle:v7];

  notes = [(REMReminderChangeItem *)selfCopy notes];
  v9 = [notes copy];
  [intoCopy setNotes:v9];

  creationDate = [(REMReminderChangeItem *)selfCopy creationDate];
  v11 = [creationDate copy];
  [intoCopy setCreationDate:v11];

  lastModifiedDate = [(REMReminderChangeItem *)selfCopy lastModifiedDate];
  v13 = [lastModifiedDate copy];
  [intoCopy setLastModifiedDate:v13];

  [intoCopy setCompleted:{-[REMReminderChangeItem isCompleted](selfCopy, "isCompleted")}];
  completionDate = [(REMReminderChangeItem *)selfCopy completionDate];
  v15 = [completionDate copy];
  [intoCopy setCompletionDate:v15];

  [intoCopy setPrefersUrgentPresentationStyleForDateAlarms:{-[REMReminderChangeItem prefersUrgentPresentationStyleForDateAlarms](selfCopy, "prefersUrgentPresentationStyleForDateAlarms")}];
  [intoCopy setPriority:{-[REMReminderChangeItem priority](selfCopy, "priority")}];
  startDateComponents = [(REMReminderChangeItem *)selfCopy startDateComponents];
  v17 = [startDateComponents copy];
  [intoCopy setStartDateComponents:v17];

  dueDateComponents = [(REMReminderChangeItem *)selfCopy dueDateComponents];
  v19 = [dueDateComponents copy];
  [intoCopy setDueDateComponents:v19];

  lastBannerPresentationDate = [(REMReminderChangeItem *)selfCopy lastBannerPresentationDate];
  v21 = [lastBannerPresentationDate copy];
  [intoCopy setLastBannerPresentationDate:v21];

  userActivity = [(REMReminderChangeItem *)selfCopy userActivity];
  v23 = [userActivity copy];
  [intoCopy setUserActivity:v23];

  batchCreationID = [(REMReminderChangeItem *)selfCopy batchCreationID];
  v25 = [batchCreationID copy];
  [intoCopy setBatchCreationID:v25];

  icsUrl = [(REMReminderChangeItem *)selfCopy icsUrl];
  v27 = [icsUrl copy];
  [intoCopy setIcsUrl:v27];

  alternativeDisplayDateDate_forCalendar = [(REMReminderChangeItem *)selfCopy alternativeDisplayDateDate_forCalendar];
  [intoCopy setAlternativeDisplayDateDate_forCalendar:alternativeDisplayDateDate_forCalendar];

  [intoCopy removeAllRecurrenceRules];
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v107 = selfCopy;
  obj = [(REMReminderChangeItem *)selfCopy recurrenceRules];
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
        accountID = [intoCopy accountID];
        objectID = [intoCopy objectID];
        v38 = [(REMRecurrenceRule *)v34 initWithRecurrenceRule:v33 objectID:v35 accountID:accountID reminderID:objectID];

        [intoCopy addRecurrenceRule:v38];
      }

      v30 = [obj countByEnumeratingWithState:&v127 objects:v134 count:16];
    }

    while (v30);
  }

  v39 = v107;
  [(REMReminderChangeItem *)v107 _copyAlarmsInto:intoCopy];
  [(REMReminderChangeItem *)v107 subtaskContext];

  attachmentContext = [(REMReminderChangeItem *)v107 attachmentContext];
  if (attachmentContext)
  {
    v41 = attachmentContext;
    attachmentContext2 = [intoCopy attachmentContext];

    if (attachmentContext2)
    {
      attachmentContext3 = [intoCopy attachmentContext];
      [attachmentContext3 removeAllAttachments];

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      attachmentContext4 = [(REMReminderChangeItem *)v107 attachmentContext];
      attachments = [attachmentContext4 attachments];

      obja = attachments;
      v46 = [attachments countByEnumeratingWithState:&v123 objects:v133 count:16];
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
            newObjectID = [objc_opt_class() newObjectID];
            accountID2 = [intoCopy accountID];
            objectID2 = [intoCopy objectID];
            v55 = [(REMAttachment *)v51 initWithAttachment:v50 objectID:newObjectID accountID:accountID2 reminderID:objectID2];

            attachmentContext5 = [intoCopy attachmentContext];
            [attachmentContext5 addAttachment:v55];
          }

          v47 = [obja countByEnumeratingWithState:&v123 objects:v133 count:16];
        }

        while (v47);
      }

      v39 = v107;
    }
  }

  flaggedContext = [(REMReminderChangeItem *)v39 flaggedContext];
  if (flaggedContext)
  {
    v58 = flaggedContext;
    flaggedContext2 = [intoCopy flaggedContext];

    if (flaggedContext2)
    {
      flaggedContext3 = [(REMReminderChangeItem *)v39 flaggedContext];
      flagged = [flaggedContext3 flagged];
      flaggedContext4 = [intoCopy flaggedContext];
      [flaggedContext4 setFlagged:flagged];
    }
  }

  assignmentContext = [intoCopy assignmentContext];

  if (assignmentContext)
  {
    assignmentContext2 = [intoCopy assignmentContext];
    [assignmentContext2 removeAllAssignments];
  }

  hashtagContext = [intoCopy hashtagContext];

  if (!hashtagContext)
  {
    goto LABEL_51;
  }

  hashtagContext2 = [intoCopy hashtagContext];
  [hashtagContext2 removeAllHashtags];

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  hashtagContext3 = [(REMReminderChangeItem *)v39 hashtagContext];
  hashtags = [hashtagContext3 hashtags];

  objb = [hashtags countByEnumeratingWithState:&v119 objects:v132 count:16];
  if (!objb)
  {

    v69 = 0;
    v94 = 0;
    goto LABEL_50;
  }

  v69 = 0;
  v110 = 0;
  v111 = 0;
  v108 = hashtags;
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
      newObjectID2 = [objc_opt_class() newObjectID];
      accountID3 = [intoCopy accountID];
      objectID3 = [intoCopy objectID];
      type = [v72 type];
      name = [v72 name];
      v79 = [(REMHashtag *)v73 initWithObjectID:newObjectID2 accountID:accountID3 reminderID:objectID3 type:type name:name];

      hashtagContext4 = [intoCopy hashtagContext];
      [hashtagContext4 addHashtag:v79];

      if ([v72 type] != 1)
      {
        v69 = v71;
        goto LABEL_42;
      }

      v81 = objc_alloc_init(TTREMHashtag);
      objectIdentifier = [v72 objectIdentifier];
      [(TTREMHashtag *)v81 setObjectIdentifier:objectIdentifier];

      v83 = objc_alloc_init(TTREMHashtag);
      objectIdentifier2 = [(REMHashtag *)v79 objectIdentifier];
      [(TTREMHashtag *)v83 setObjectIdentifier:objectIdentifier2];

      v85 = v111;
      v69 = v71;
      if (v111)
      {
        goto LABEL_33;
      }

      title2 = [intoCopy title];

      if (title2)
      {
        v87 = objc_alloc(MEMORY[0x1E696AD40]);
        title3 = [intoCopy title];
        v89 = [v87 initWithAttributedString:title3];

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
        notes2 = [intoCopy notes];

        if (notes2)
        {
          v92 = objc_alloc(MEMORY[0x1E696AD40]);
          notes3 = [intoCopy notes];
          v69 = [v92 initWithAttributedString:notes3];
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
    [intoCopy setTitle:v111];
  }

  v39 = v107;
  if ((v110 & 0x100000000) != 0)
  {
    [intoCopy setNotes:v69];
  }

  v94 = v111;
LABEL_50:

LABEL_51:
  dueDateDeltaAlertContext = [intoCopy dueDateDeltaAlertContext];

  if (dueDateDeltaAlertContext)
  {
    [objc_opt_class() _ensureDueDateDeltaAlertsAreFetchedIfNecessary:intoCopy];
    dueDateDeltaAlertContext2 = [intoCopy dueDateDeltaAlertContext];
    [dueDateDeltaAlertContext2 removeAllFetchedDueDateDeltaAlerts];

    [objc_opt_class() _ensureDueDateDeltaAlertsAreFetchedIfNecessary:v39];
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    storage = [(REMReminderChangeItem *)v39 storage];
    fetchedDueDateDeltaAlerts = [storage fetchedDueDateDeltaAlerts];

    v99 = [fetchedDueDateDeltaAlerts countByEnumeratingWithState:&v115 objects:v131 count:16];
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
            objc_enumerationMutation(fetchedDueDateDeltaAlerts);
          }

          v103 = *(*(&v115 + 1) + 8 * m);
          dueDateDeltaAlertContext3 = [intoCopy dueDateDeltaAlertContext];
          v105 = [dueDateDeltaAlertContext3 addDueDateDeltaAlertWithDueDateDeltaAlert:v103];
        }

        v100 = [fetchedDueDateDeltaAlerts countByEnumeratingWithState:&v115 objects:v131 count:16];
      }

      while (v100);
    }

    v39 = v107;
  }

  v106 = *MEMORY[0x1E69E9840];
}

+ (void)_ensureDueDateDeltaAlertsAreFetchedIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  storage = [necessaryCopy storage];
  hasUnfetchedDueDateDeltaAlerts = [storage hasUnfetchedDueDateDeltaAlerts];

  if (hasUnfetchedDueDateDeltaAlerts)
  {
    saveRequest = [necessaryCopy saveRequest];
    store = [saveRequest store];

    remObjectID = [necessaryCopy remObjectID];
    v9 = +[REMReminderFetchOptions fetchOptionsIncludingDueDateDeltaAlerts];
    v15 = 0;
    v10 = [store fetchReminderWithObjectID:remObjectID fetchOptions:v9 error:&v15];
    v11 = v15;

    if (v11)
    {
      fetchedDueDateDeltaAlerts = +[REMLogStore write];
      if (os_log_type_enabled(fetchedDueDateDeltaAlerts, OS_LOG_TYPE_ERROR))
      {
        +[REMReminderChangeItem _ensureDueDateDeltaAlertsAreFetchedIfNecessary:];
      }
    }

    else
    {
      storage2 = [v10 storage];
      fetchedDueDateDeltaAlerts = [storage2 fetchedDueDateDeltaAlerts];

      if ([fetchedDueDateDeltaAlerts count])
      {
        storage3 = [necessaryCopy storage];
        [storage3 setFetchedDueDateDeltaAlerts:fetchedDueDateDeltaAlerts];
      }
    }
  }
}

- (void)_copyAlarmsInto:(id)into
{
  v48 = *MEMORY[0x1E69E9840];
  intoCopy = into;
  selfCopy = self;
  v36 = intoCopy;
  [intoCopy removeAllAlarms];
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  alarms = [(REMReminderChangeItem *)selfCopy alarms];
  v37 = [v6 initWithCapacity:{objc_msgSend(alarms, "count")}];

  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  alarms2 = [(REMReminderChangeItem *)selfCopy alarms];
  v10 = [v8 initWithCapacity:{objc_msgSend(alarms2, "count")}];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v35 = selfCopy;
  alarms3 = [(REMReminderChangeItem *)selfCopy alarms];
  v12 = [alarms3 countByEnumeratingWithState:&v42 objects:v47 count:16];
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
          objc_enumerationMutation(alarms3);
        }

        v16 = *(*(&v42 + 1) + 8 * i);
        v17 = [REMAlarm alloc];
        v18 = +[REMAlarm newObjectID];
        v19 = [(REMAlarm *)v17 initWithAlarm:v16 objectID:v18];

        [v10 addObject:v19];
        alarmUID = [v16 alarmUID];
        if (alarmUID)
        {
          v21 = alarmUID;
          alarmUID2 = [(REMAlarm *)v19 alarmUID];

          if (alarmUID2)
          {
            alarmUID3 = [(REMAlarm *)v19 alarmUID];
            alarmUID4 = [v16 alarmUID];
            [v37 setObject:alarmUID3 forKeyedSubscript:alarmUID4];
          }
        }
      }

      v13 = [alarms3 countByEnumeratingWithState:&v42 objects:v47 count:16];
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
        originalAlarmUID = [v30 originalAlarmUID];

        if (originalAlarmUID)
        {
          originalAlarmUID2 = [v30 originalAlarmUID];
          v33 = [v37 objectForKeyedSubscript:originalAlarmUID2];
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

- (id)dedupedAndFilteredNonSnoozeAlarms:(id)alarms
{
  v62 = *MEMORY[0x1E69E9840];
  alarmsCopy = alarms;
  v48 = objc_opt_new();
  v51 = objc_opt_new();
  v47 = objc_opt_new();
  v4 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v5 = alarmsCopy;
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
        trigger = [v10 trigger];
        isTemporal = [trigger isTemporal];

        if (!isTemporal)
        {
          [v4 addObject:v10];
          continue;
        }

        v13 = objc_opt_class();
        trigger2 = [v10 trigger];
        v15 = REMDynamicCast(v13, trigger2);

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
        trigger3 = [v10 trigger];
        v23 = REMDynamicCast(v21, trigger3);

        if (!v23 || ([v23 dateComponents], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
        {
          v5 = v20;
          v4 = v52;
          goto LABEL_25;
        }

        dateComponents = [v23 dateComponents];
        rem_stringRepresentation = [dateComponents rem_stringRepresentation];

        if (([v48 containsObject:rem_stringRepresentation] & 1) == 0)
        {
          [v47 addObject:v10];
          [v48 addObject:rem_stringRepresentation];
          if (v49)
          {
            v45 = rem_stringRepresentation;
            v27 = objc_opt_class();
            trigger4 = [v49 trigger];
            v29 = REMDynamicCast(v27, trigger4);

            dateComponents2 = [v23 dateComponents];
            v46 = v29;
            dateComponents3 = [v29 dateComponents];
            v32 = [dateComponents2 rem_compare:dateComponents3];

            if (v32 == -1)
            {
              v33 = v10;

              v49 = v33;
            }

            v5 = v20;

            v4 = v52;
            rem_stringRepresentation = v45;
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
    accountCapabilities = [(REMReminderChangeItem *)self accountCapabilities];
    supportsMultipleDateAlarmsOnRecurrence = [accountCapabilities supportsMultipleDateAlarmsOnRecurrence];

    if (supportsMultipleDateAlarmsOnRecurrence)
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
          objectID = [(REMReminderChangeItem *)self objectID];
          v40 = [v47 count];
          *buf = 138543618;
          v58 = objectID;
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
  objectID = [self objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)advanceForwardToNextRecurrenceAfterDate:(id)date
{
  dateCopy = date;
  dueDateComponents = [(REMReminderChangeItem *)self dueDateComponents];
  [(REMReminderChangeItem *)self nextRecurrentAdvanceAmountForDateComponents:dueDateComponents afterDate:dateCopy];
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
    dueDateComponents2 = [(REMReminderChangeItem *)self dueDateComponents];

    if (dueDateComponents2)
    {
      dueDateComponents3 = [(REMReminderChangeItem *)self dueDateComponents];
      v10 = [dueDateComponents3 rem_dateComponentsByAddingTimeInterval:v7];

      [(REMReminderChangeItem *)self setDueDateComponents:v10];
    }

    startDateComponents = [(REMReminderChangeItem *)self startDateComponents];

    if (startDateComponents)
    {
      startDateComponents2 = [(REMReminderChangeItem *)self startDateComponents];
      v13 = [startDateComponents2 rem_dateComponentsByAddingTimeInterval:v7];

      [(REMReminderChangeItem *)self setStartDateComponents:v13];
    }

    [(REMReminderChangeItem *)self advanceForwardDateAlarmsAfterDate:dateCopy];
    [(REMReminderChangeItem *)self decrementRecurrenceRuleEndCount];
  }
}

- (void)advanceForwardDateAlarmsAfterDate:(id)date
{
  v103 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  alarms = [(REMReminderChangeItem *)self alarms];
  v5 = alarms;
  if (alarms)
  {
    v6 = alarms;
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
  selfCopy = self;
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
      trigger = [v16 trigger];
      isTemporal = [trigger isTemporal];

      if (!isTemporal)
      {
        [v85 addObject:v16];
        continue;
      }

      v19 = *(v14 + 2376);
      v20 = objc_opt_class();
      trigger2 = [v16 trigger];
      v22 = REMDynamicCast(v20, trigger2);

      if (v22)
      {
        v23 = objc_alloc(*(v14 + 2376));
        [v22 timeInterval];
        v24 = [v23 initWithTimeInterval:?];
        timeZone = [[REMAlarm alloc] initWithTrigger:v24];
        [v85 addObject:timeZone];
LABEL_27:

        v8 = v84;
        goto LABEL_28;
      }

      v26 = objc_opt_class();
      trigger3 = [v16 trigger];
      v24 = REMDynamicCast(v26, trigger3);

      if (v24)
      {
        dueDateComponents = [(REMReminderChangeItem *)selfCopy dueDateComponents];
        timeZone = [dueDateComponents timeZone];

        if (timeZone)
        {
          timeZone = timeZone;
          v29 = MEMORY[0x1E695DF10];
          dateComponents = [v24 dateComponents];
          v31 = [v29 rem_dateWithDateComponents:dateComponents timeZone:timeZone];

          v32 = [MEMORY[0x1E695DF10] rem_dateComponentsWithDate:v31 timeZone:timeZone isAllDay:0];
          [(REMReminderChangeItem *)selfCopy nextRecurrentAdvanceAmountForDateComponents:v32 afterDate:dateCopy];
          if (v33 != 0.0)
          {
            v34 = v33;
            v78 = v32;
            v79 = v31;
            dateComponents2 = [v24 dateComponents];
            v36 = [dateComponents2 rem_dateComponentsByAddingTimeInterval:v34];

            v82 = [[REMAlarmDateTrigger alloc] initWithDateComponents:v36];
            v77 = [[REMAlarm alloc] initWithTrigger:v82];
            [v85 addObject:?];
            v37 = +[REMLogStore write];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              objectID = [(REMReminderChangeItem *)selfCopy objectID];
              [v24 dateComponents];
              v38 = v74 = v37;
              dateComponents3 = [(REMAlarmDateTrigger *)v82 dateComponents];
              defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
              v73 = v36;
              systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
              localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
              *buf = 138544642;
              v91 = objectID;
              v92 = 2114;
              v93 = v38;
              v94 = 2114;
              v95 = dateComponents3;
              v96 = 2114;
              v97 = defaultTimeZone;
              v98 = 2114;
              v99 = systemTimeZone;
              v100 = 2114;
              v101 = localTimeZone;
              v42 = localTimeZone;
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
            objectID2 = [(REMReminderChangeItem *)selfCopy objectID];
            dueDateComponents2 = [(REMReminderChangeItem *)selfCopy dueDateComponents];
            *buf = v71;
            v91 = objectID2;
            v92 = 2114;
            v93 = dueDateComponents2;
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
    self = selfCopy;
LABEL_47:
    v50 = v80;
    goto LABEL_48;
  }

  if ((v81 & 1) == 0)
  {
    dueDateComponents3 = [(REMReminderChangeItem *)selfCopy dueDateComponents];
    objectID4 = [[REMAlarmDateTrigger alloc] initWithDateComponents:dueDateComponents3];
    v63 = [[REMAlarm alloc] initWithTrigger:objectID4];
    [v85 addObject:v63];
    v64 = +[REMLogStore write];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      objectID3 = [(REMReminderChangeItem *)selfCopy objectID];
      dueDateComponents4 = [(REMReminderChangeItem *)selfCopy dueDateComponents];
      *buf = v71;
      v91 = objectID3;
      v92 = 2114;
      v93 = dueDateComponents4;
      _os_log_impl(&dword_19A0DB000, v64, OS_LOG_TYPE_INFO, "AdvanceRecurrence: Adding new date alarm of reminder with dueDate {reminderID: %{public}@, dueDate: %{public}@}; failed to advance forward any previous date alarms", buf, 0x16u);
    }

    goto LABEL_44;
  }

  self = selfCopy;
  accountCapabilities = [(REMReminderChangeItem *)selfCopy accountCapabilities];
  if (([accountCapabilities supportsMultipleDateAlarmsOnRecurrence] & 1) != 0 || !v80)
  {

    goto LABEL_47;
  }

  dueDateComponents5 = [(REMReminderChangeItem *)selfCopy dueDateComponents];
  v50 = v80;
  v51 = [dueDateComponents5 isEqual:v80];

  if (v51)
  {
    goto LABEL_48;
  }

  dueDateComponents6 = [(REMReminderChangeItem *)selfCopy dueDateComponents];
  timeZone2 = [dueDateComponents6 timeZone];
  timeZone3 = [v80 timeZone];
  v55 = [timeZone2 isEqual:timeZone3];

  dueDateComponents3 = +[REMLogStore write];
  v57 = os_log_type_enabled(dueDateComponents3, OS_LOG_TYPE_DEFAULT);
  if (!v55)
  {
    if (!v57)
    {
      goto LABEL_45;
    }

    objectID4 = [(REMReminderChangeItem *)selfCopy objectID];
    dueDateComponents7 = [(REMReminderChangeItem *)selfCopy dueDateComponents];
    rem_stringRepresentation = [dueDateComponents7 rem_stringRepresentation];
    rem_stringRepresentation2 = [v80 rem_stringRepresentation];
    *buf = 138543874;
    v91 = objectID4;
    v92 = 2114;
    v93 = rem_stringRepresentation;
    v94 = 2114;
    v95 = rem_stringRepresentation2;
    _os_log_impl(&dword_19A0DB000, dueDateComponents3, OS_LOG_TYPE_DEFAULT, "AdvanceRecurrence: Skipped fixing dueDate drift to match displayDate since timezone does not match {reminderID: %{public}@, dueDate: %{public}@, displayDate: %{public}@};", buf, 0x20u);

LABEL_44:
LABEL_45:

    goto LABEL_46;
  }

  if (v57)
  {
    objectID5 = [(REMReminderChangeItem *)selfCopy objectID];
    dueDateComponents8 = [(REMReminderChangeItem *)selfCopy dueDateComponents];
    rem_stringRepresentation3 = [dueDateComponents8 rem_stringRepresentation];
    rem_stringRepresentation4 = [v80 rem_stringRepresentation];
    *buf = 138543874;
    v91 = objectID5;
    v92 = 2114;
    v93 = rem_stringRepresentation3;
    v94 = 2114;
    v95 = rem_stringRepresentation4;
    _os_log_impl(&dword_19A0DB000, dueDateComponents3, OS_LOG_TYPE_DEFAULT, "AdvanceRecurrence: Fixing dueDate drift to match displayDate {reminderID: %{public}@, dueDate: %{public}@, displayDate: %{public}@};", buf, 0x20u);
  }

  self = selfCopy;
  v50 = v80;
  [(REMReminderChangeItem *)selfCopy setDueDateComponents:v80];
LABEL_48:
  [(REMReminderChangeItem *)self setAlarms:v85];

  v67 = *MEMORY[0x1E69E9840];
}

- (void)decrementRecurrenceRuleEndCount
{
  v39 = *MEMORY[0x1E69E9840];
  recurrenceRules = [(REMReminderChangeItem *)self recurrenceRules];
  [(REMReminderChangeItem *)self removeAllRecurrenceRules];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = recurrenceRules;
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
        recurrenceEnd = [v10 recurrenceEnd];
        occurrenceCount = [recurrenceEnd occurrenceCount];

        if (occurrenceCount < 2)
        {
          [(REMReminderChangeItem *)self addRecurrenceRule:v10];
          write = [*(v8 + 3368) write];
          if (os_log_type_enabled(write, OS_LOG_TYPE_INFO))
          {
            objectID = [(REMReminderChangeItem *)self objectID];
            objectID2 = [v10 objectID];
            iCalendarDescription = [v10 iCalendarDescription];
            *buf = v26;
            v33 = objectID;
            v34 = 2114;
            v35 = objectID2;
            v36 = 2114;
            v37 = iCalendarDescription;
            _os_log_impl(&dword_19A0DB000, write, OS_LOG_TYPE_INFO, "AdvanceRecurrence: Keep old recurrence rule of reminder {reminderID: %{public}@, recurrenceRuleID: %{public}@, recurrenceRule: %{public}@};", buf, 0x20u);

            v8 = 0x1E7506000;
          }
        }

        else
        {
          recurrenceEnd2 = [v10 recurrenceEnd];
          write = +[REMRecurrenceEnd recurrenceEndWithOccurrenceCount:](REMRecurrenceEnd, "recurrenceEndWithOccurrenceCount:", [recurrenceEnd2 occurrenceCount] - 1);

          v15 = [REMRecurrenceRule alloc];
          v16 = +[REMRecurrenceRule newObjectID];
          v17 = [(REMRecurrenceRule *)v15 initWithRecurrenceRule:v10 objectID:v16 end:write];

          [(REMReminderChangeItem *)self addRecurrenceRule:v17];
          write2 = [*(v8 + 3368) write];
          if (os_log_type_enabled(write2, OS_LOG_TYPE_INFO))
          {
            objectID3 = [(REMReminderChangeItem *)self objectID];
            objectID4 = [(REMRecurrenceRule *)v17 objectID];
            iCalendarDescription2 = [(REMRecurrenceRule *)v17 iCalendarDescription];
            *buf = v26;
            v33 = objectID3;
            v34 = 2114;
            v35 = objectID4;
            v36 = 2114;
            v37 = iCalendarDescription2;
            _os_log_impl(&dword_19A0DB000, write2, OS_LOG_TYPE_INFO, "AdvanceRecurrence: New recurrence rules of reminder {reminderID: %{public}@, recurrenceRuleID: %{public}@, recurrenceRule: %{public}@};", buf, 0x20u);

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
  displayDate = [(REMReminderChangeItem *)self displayDate];
  if (displayDate)
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
  alternativeDisplayDateDate_forCalendar = [(REMReminderChangeItem *)self alternativeDisplayDateDate_forCalendar];
  if (alternativeDisplayDateDate_forCalendar)
  {
    v4 = alternativeDisplayDateDate_forCalendar;
    canSetAlternativeDisplayDateDateForCalendar = [(REMReminderChangeItem *)self canSetAlternativeDisplayDateDateForCalendar];

    if (!canSetAlternativeDisplayDateDateForCalendar)
    {

      [(REMReminderChangeItem *)self clearAlternativeDisplayDateDateForCalendarWithReason:@"incomplete & recurrent"];
    }
  }
}

- (void)clearAlternativeDisplayDateDateForCalendarWithReason:(id)reason
{
  v12 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    objectID = [(REMReminderChangeItem *)self objectID];
    v8 = 138543618;
    v9 = reasonCopy;
    v10 = 2114;
    v11 = objectID;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_DEFAULT, "setCompleted: clear alternativeDisplayDateDate_forCalendar {reason: %{public}@, reminderID: %{public}@}", &v8, 0x16u);
  }

  [(REMReminderChangeItem *)self setAlternativeDisplayDateDate_forCalendar:0];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setAlternativeDisplayDateDateForCalendarWithDateComponents:(id)components
{
  componentsCopy = components;
  if (componentsCopy && ![(REMReminderChangeItem *)self canSetAlternativeDisplayDateDateForCalendar])
  {
    v6 = +[REMLogStore write];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [REMReminderChangeItem setAlternativeDisplayDateDateForCalendarWithDateComponents:?];
    }
  }

  else
  {
    storage = [(REMReminderChangeItem *)self storage];
    [storage setAlternativeDisplayDateDateForCalendarWithDateComponents:componentsCopy];
  }
}

- (void)setAlternativeDisplayDateDateForCalendarWithNormalizedDate:(id)date
{
  dateCopy = date;
  if (dateCopy && ![(REMReminderChangeItem *)self canSetAlternativeDisplayDateDateForCalendar])
  {
    v6 = +[REMLogStore write];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [REMReminderChangeItem setAlternativeDisplayDateDateForCalendarWithDateComponents:?];
    }
  }

  else
  {
    storage = [(REMReminderChangeItem *)self storage];
    [storage setAlternativeDisplayDateDate_forCalendar:dateCopy];
  }
}

- (void)setAlternativeDisplayDateDateForCalendarToPreviousRecurrentDateBefore:(id)before recurrenceRules:(id)rules
{
  v30 = *MEMORY[0x1E69E9840];
  beforeCopy = before;
  rulesCopy = rules;
  if ([(REMReminderChangeItem *)self canSetAlternativeDisplayDateDateForCalendar])
  {
    displayDate = [(REMReminderChangeItem *)self displayDate];
    v9 = displayDate;
    if (displayDate)
    {
      timeZone = [displayDate timeZone];
      v11 = timeZone;
      if (timeZone)
      {
        defaultTimeZone = timeZone;
      }

      else
      {
        defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
      }

      v13 = defaultTimeZone;

      date = [v9 date];
      v15 = [REMRecurrenceRule previousRecurrentDueDateBefore:beforeCopy dueDate:date timeZone:v13 allDay:[v9 isAllDay] recurrenceRules:rulesCopy];

      if (v15)
      {
        v16 = [REMDisplayDate alloc];
        isAllDay = [v9 isAllDay];
        timeZone2 = [v9 timeZone];
        v19 = -[REMDisplayDate initWithDate:allDay:timeZone:floatingDateSecondsFromGMT:](v16, "initWithDate:allDay:timeZone:floatingDateSecondsFromGMT:", v15, isAllDay, timeZone2, [v13 secondsFromGMT]);

        v20 = +[REMLogStore write];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          objectID = [(REMReminderChangeItem *)self objectID];
          v26 = 138543618;
          v27 = v19;
          v28 = 2114;
          v29 = objectID;
          _os_log_impl(&dword_19A0DB000, v20, OS_LOG_TYPE_DEFAULT, "setAlternativeDisplayDate: set previousRecurrentDueDate {displayDate: %{public}@, reminderID: %{public}@}", &v26, 0x16u);
        }

        dateComponentsRepresentation = [v19 dateComponentsRepresentation];
        storage = [(REMReminderChangeItem *)self storage];
        [storage setAlternativeDisplayDateDateForCalendarWithDateComponents:dateComponentsRepresentation];
      }

      else
      {
        v19 = +[REMLogStore write];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          objectID2 = [(REMReminderChangeItem *)self objectID];
          v26 = 138543362;
          v27 = objectID2;
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

- (id)shallowCopyWithSaveRequest:(id)request
{
  requestCopy = request;
  storage = [(REMReminderChangeItem *)self storage];

  if (storage)
  {
    objectID = [(REMReminderChangeItem *)self objectID];
    v8 = [requestCopy _trackedAccountCapabilitiesForObjectID:objectID];

    if (v8)
    {
LABEL_16:
      v13 = [REMReminderChangeItem alloc];
      storage2 = [(REMReminderChangeItem *)self storage];
      changedKeysObserver = [(REMReminderChangeItem *)self changedKeysObserver];
      storage3 = [(REMReminderChangeItem *)v13 initWithSaveRequest:requestCopy storage:storage2 accountCapabilities:v8 changedKeysObserver:changedKeysObserver];

      goto LABEL_17;
    }

    objectID2 = [(REMReminderChangeItem *)self objectID];

    if (objectID2)
    {
      if (!requestCopy)
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

  storage3 = [(REMReminderChangeItem *)self storage];

  if (storage3)
  {
    storage3 = 0;
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "self.storage");
  }

LABEL_17:

  return storage3;
}

- (REMListChangeItem)listChangeItem
{
  listID = [(REMReminderChangeItem *)self listID];
  if (listID)
  {
    saveRequest = [(REMReminderChangeItem *)self saveRequest];
    v5 = [saveRequest _trackedListChangeItemForObjectID:listID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSAttributedString)title
{
  storage = [(REMReminderChangeItem *)self storage];
  titleDocument = [storage titleDocument];
  attributedString = [titleDocument attributedString];

  return attributedString;
}

- (NSString)titleAsString
{
  storage = [(REMReminderChangeItem *)self storage];
  titleAsString = [storage titleAsString];

  return titleAsString;
}

- (id)_editDocument:(id)document replicaIDSource:(id)source newString:(id)string
{
  documentCopy = document;
  sourceCopy = source;
  stringCopy = string;
  if (!(documentCopy | stringCopy))
  {
    v14 = 0;
    goto LABEL_12;
  }

  v11 = stringCopy;
  if (stringCopy)
  {
    if (documentCopy)
    {
      goto LABEL_4;
    }

LABEL_8:
    mutableDocument = [[REMMutableCRMergeableStringDocument alloc] initWithReplicaIDSource:sourceCopy];
LABEL_10:
    v16 = mutableDocument;
    saveRequest = [(REMReminderChangeItem *)self saveRequest];
    replicaManagerProvider = [saveRequest replicaManagerProvider];
    [(REMMutableCRMergeableStringDocument *)v16 setReplicaManagerProvider:replicaManagerProvider];

    v14 = [(REMMutableCRMergeableStringDocument *)v16 wipeAndReplaceWithString:v11];

    goto LABEL_11;
  }

  v11 = objc_alloc_init(MEMORY[0x1E696AAB0]);
  if (!documentCopy)
  {
    goto LABEL_8;
  }

LABEL_4:
  attributedString = [documentCopy attributedString];
  v13 = [v11 isEqualToAttributedString:attributedString];

  if (!v13)
  {
    mutableDocument = [documentCopy mutableDocument];
    goto LABEL_10;
  }

  v14 = documentCopy;
LABEL_11:

LABEL_12:

  return v14;
}

- (void)setPrimaryLocaleInferredFromLastUsedKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  storage = [(REMReminderChangeItem *)self storage];
  [storage setPrimaryLocaleInferredFromLastUsedKeyboard:keyboardCopy];
}

- (NSString)primaryLocaleInferredFromLastUsedKeyboard
{
  storage = [(REMReminderChangeItem *)self storage];
  primaryLocaleInferredFromLastUsedKeyboard = [storage primaryLocaleInferredFromLastUsedKeyboard];

  return primaryLocaleInferredFromLastUsedKeyboard;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  storage = [(REMReminderChangeItem *)self storage];
  titleReplicaIDSource = [storage titleReplicaIDSource];

  storage2 = [(REMReminderChangeItem *)self storage];
  titleDocument = [storage2 titleDocument];
  v8 = [(REMReminderChangeItem *)self _editDocument:titleDocument replicaIDSource:titleReplicaIDSource newString:titleCopy];

  storage3 = [(REMReminderChangeItem *)self storage];
  [storage3 setTitleDocument:v8];

  changedKeysObserver = [(REMReminderChangeItem *)self changedKeysObserver];
  [changedKeysObserver keyDidChange:@"titleDocument"];

  changedKeysObserver2 = [(REMReminderChangeItem *)self changedKeysObserver];
  [changedKeysObserver2 keyDidChange:@"titleDocumentData"];
}

- (void)setTitleAsString:(id)string
{
  if (string)
  {
    v4 = MEMORY[0x1E696AAB0];
    stringCopy = string;
    v6 = [[v4 alloc] initWithString:stringCopy];
  }

  else
  {
    v6 = 0;
  }

  [(REMReminderChangeItem *)self setTitle:v6];
}

- (NSAttributedString)notes
{
  storage = [(REMReminderChangeItem *)self storage];
  notesDocument = [storage notesDocument];
  attributedString = [notesDocument attributedString];

  return attributedString;
}

- (NSString)notesAsString
{
  storage = [(REMReminderChangeItem *)self storage];
  notesAsString = [storage notesAsString];

  return notesAsString;
}

- (void)setNotes:(id)notes
{
  notesCopy = notes;
  storage = [(REMReminderChangeItem *)self storage];
  notesReplicaIDSource = [storage notesReplicaIDSource];

  storage2 = [(REMReminderChangeItem *)self storage];
  notesDocument = [storage2 notesDocument];
  v8 = [(REMReminderChangeItem *)self _editDocument:notesDocument replicaIDSource:notesReplicaIDSource newString:notesCopy];

  storage3 = [(REMReminderChangeItem *)self storage];
  [storage3 setNotesDocument:v8];

  changedKeysObserver = [(REMReminderChangeItem *)self changedKeysObserver];
  [changedKeysObserver keyDidChange:@"notesDocument"];

  changedKeysObserver2 = [(REMReminderChangeItem *)self changedKeysObserver];
  [changedKeysObserver2 keyDidChange:@"notesDocumentData"];
}

- (void)setNotesAsString:(id)string
{
  if (string)
  {
    v4 = MEMORY[0x1E696AAB0];
    stringCopy = string;
    v6 = [[v4 alloc] initWithString:stringCopy];
  }

  else
  {
    v6 = 0;
  }

  [(REMReminderChangeItem *)self setNotes:v6];
}

- (void)setDueDateComponents:(id)components
{
  componentsCopy = components;
  dueDateComponents = [(REMReminderChangeItem *)self dueDateComponents];
  rem_gregorianEquivalent = [componentsCopy rem_gregorianEquivalent];

  storage = [(REMReminderChangeItem *)self storage];
  [storage setDueDateComponents:rem_gregorianEquivalent];

  storage2 = [(REMReminderChangeItem *)self storage];
  [storage2 updateDisplayDate];

  if (rem_gregorianEquivalent)
  {
    rem_isAllDayDateComponents = [rem_gregorianEquivalent rem_isAllDayDateComponents];
    storage3 = [(REMReminderChangeItem *)self storage];
    [storage3 setAllDay:rem_isAllDayDateComponents];

    if (rem_isAllDayDateComponents)
    {
      name = 0;
    }

    else
    {
      storage3 = [rem_gregorianEquivalent timeZone];
      name = [storage3 name];
    }

    storage4 = [(REMReminderChangeItem *)self storage];
    [storage4 setTimeZone:name];

    if ((rem_isAllDayDateComponents & 1) == 0)
    {
    }

    if (!dueDateComponents || ([dueDateComponents isEqual:rem_gregorianEquivalent] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (dueDateComponents)
  {
LABEL_11:
    [(REMReminderChangeItem *)self clearAlternativeDisplayDateDateForCalendarWithReason:@"Due date changed"];
  }
}

- (void)setDueDateComponentsWithAlarmsIfNeeded:(id)needed
{
  v27 = *MEMORY[0x1E69E9840];
  rem_gregorianEquivalent = [needed rem_gregorianEquivalent];
  rem_isAllDayDateComponents = [rem_gregorianEquivalent rem_isAllDayDateComponents];
  if (rem_gregorianEquivalent)
  {
    if (rem_isAllDayDateComponents)
    {
      [rem_gregorianEquivalent setTimeZone:0];
    }

    else
    {
      timeZone = [rem_gregorianEquivalent timeZone];

      if (!timeZone)
      {
        defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
        [rem_gregorianEquivalent setTimeZone:defaultTimeZone];
      }
    }
  }

  [(REMReminderChangeItem *)self setDueDateComponents:rem_gregorianEquivalent];
  [(REMReminderChangeItem *)self removeAllSnoozeAlarms];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  alarms = [(REMReminderChangeItem *)self alarms];
  v9 = [alarms countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v21 = rem_isAllDayDateComponents;
    v11 = 0;
    v12 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(alarms);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        trigger = [v14 trigger];
        isTemporal = [trigger isTemporal];

        if (isTemporal)
        {
          [(REMReminderChangeItem *)self removeAlarm:v14 updateDisplayDate:0];
          v11 = 1;
        }
      }

      v10 = [alarms countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);

    LOBYTE(rem_isAllDayDateComponents) = v21;
    if (v11)
    {
      [(REMReminderChangeItem *)self updateDisplayDate];
    }

    if (rem_gregorianEquivalent)
    {
LABEL_18:
      if ((rem_isAllDayDateComponents & 1) == 0)
      {
        dueDateDeltaAlertContext2 = [[REMAlarmDateTrigger alloc] initWithDateComponents:rem_gregorianEquivalent];
        v18 = [(REMReminderChangeItem *)self addAlarmWithTrigger:dueDateDeltaAlertContext2];
LABEL_23:

        goto LABEL_24;
      }

      goto LABEL_24;
    }
  }

  else
  {

    if (rem_gregorianEquivalent)
    {
      goto LABEL_18;
    }
  }

  [(REMReminderChangeItem *)self removeAllRecurrenceRules];
  dueDateDeltaAlertContext = [(REMReminderChangeItem *)self dueDateDeltaAlertContext];

  if (dueDateDeltaAlertContext)
  {
    [objc_opt_class() _ensureDueDateDeltaAlertsAreFetchedIfNecessary:self];
    dueDateDeltaAlertContext2 = [(REMReminderChangeItem *)self dueDateDeltaAlertContext];
    [(REMAlarmDateTrigger *)dueDateDeltaAlertContext2 removeAllFetchedDueDateDeltaAlerts];
    goto LABEL_23;
  }

LABEL_24:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setIcsDisplayOrder:(unint64_t)order
{
  storage = [(REMReminderChangeItem *)self storage];
  icsDisplayOrder = [storage icsDisplayOrder];

  if (icsDisplayOrder != order)
  {
    saveRequest = [(REMReminderChangeItem *)self saveRequest];
    v8 = [saveRequest _updateListWithReminderChangeItem:self];

    if (v8)
    {
      [v8 setRemindersICSDisplayOrderChanged:1];
      storage2 = [(REMReminderChangeItem *)self storage];
      [storage2 setIcsDisplayOrder:order];

      changedKeysObserver = [(REMReminderChangeItem *)self changedKeysObserver];
      [changedKeysObserver keyDidChange:@"icsDisplayOrder"];
    }

    else
    {
      [REMReminderChangeItem setIcsDisplayOrder:?];
      changedKeysObserver = v11;
    }
  }
}

- (id)addRecurrenceRuleWithFrequency:(int64_t)frequency interval:(int64_t)interval end:(id)end
{
  endCopy = end;
  v9 = +[REMRecurrenceRule newObjectID];
  v10 = [REMRecurrenceRule alloc];
  accountID = [(REMReminderChangeItem *)self accountID];
  objectID = [(REMReminderChangeItem *)self objectID];
  v13 = [(REMRecurrenceRule *)v10 initRecurrenceRuleWithObjectID:v9 accountID:accountID reminderID:objectID frequency:frequency interval:interval end:endCopy];

  [(REMReminderChangeItem *)self addRecurrenceRule:v13];

  return v13;
}

- (id)addRecurrenceRuleWithFrequency:(int64_t)frequency interval:(int64_t)interval firstDayOfTheWeek:(int64_t)week daysOfTheWeek:(id)theWeek daysOfTheMonth:(id)month monthsOfTheYear:(id)year weeksOfTheYear:(id)theYear daysOfTheYear:(id)self0 setPositions:(id)self1 end:(id)self2
{
  endCopy = end;
  positionsCopy = positions;
  ofTheYearCopy = ofTheYear;
  theYearCopy = theYear;
  yearCopy = year;
  monthCopy = month;
  theWeekCopy = theWeek;
  v29 = +[REMRecurrenceRule newObjectID];
  v25 = [REMRecurrenceRule alloc];
  accountID = [(REMReminderChangeItem *)self accountID];
  objectID = [(REMReminderChangeItem *)self objectID];
  v22 = accountID;
  v23 = [(REMRecurrenceRule *)v25 initRecurrenceRuleWithObjectID:v29 accountID:accountID reminderID:objectID frequency:frequency interval:interval firstDayOfTheWeek:week daysOfTheWeek:theWeekCopy daysOfTheMonth:monthCopy monthsOfTheYear:yearCopy weeksOfTheYear:theYearCopy daysOfTheYear:ofTheYearCopy setPositions:positionsCopy end:endCopy];

  [(REMReminderChangeItem *)self addRecurrenceRule:v23];

  return v23;
}

- (void)insertRecurrenceRule:(id)rule beforeRecurrenceRule:(id)recurrenceRule
{
  v19 = *MEMORY[0x1E69E9840];
  ruleCopy = rule;
  recurrenceRuleCopy = recurrenceRule;
  v8 = +[REMLogStore write];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    selfCopy = self;
    v15 = 2112;
    v16 = ruleCopy;
    v17 = 2112;
    v18 = recurrenceRuleCopy;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Adding recurrenceRule before recurrenceRule {reminderChangeItem: %@, recurrenceRule: %@, siblisngRecurrenceRule: %@}", &v13, 0x20u);
  }

  recurrenceRules = [(REMReminderChangeItem *)self recurrenceRules];
  v10 = [recurrenceRules mutableCopy];

  if (v10)
  {
    if (!recurrenceRuleCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!recurrenceRuleCopy)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_9;
    }
  }

  v11 = [v10 indexOfObject:recurrenceRuleCopy];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

LABEL_9:
  [v10 insertObject:ruleCopy atIndex:v11];
  [(REMReminderChangeItem *)self setRecurrenceRules:v10];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)insertRecurrenceRule:(id)rule afterRecurrenceRule:(id)recurrenceRule
{
  v19 = *MEMORY[0x1E69E9840];
  ruleCopy = rule;
  recurrenceRuleCopy = recurrenceRule;
  v8 = +[REMLogStore write];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    selfCopy = self;
    v15 = 2112;
    v16 = ruleCopy;
    v17 = 2112;
    v18 = recurrenceRuleCopy;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Adding recurrenceRule after recurrenceRule {reminderChangeItem: %@, recurrenceRule: %@, siblisngRecurrenceRule: %@}", &v13, 0x20u);
  }

  recurrenceRules = [(REMReminderChangeItem *)self recurrenceRules];
  v10 = [recurrenceRules mutableCopy];

  if (v10)
  {
    if (!recurrenceRuleCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!recurrenceRuleCopy)
    {
      goto LABEL_8;
    }
  }

  v11 = [v10 indexOfObject:recurrenceRuleCopy];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 insertObject:ruleCopy atIndex:v11 + 1];
    goto LABEL_10;
  }

LABEL_8:
  [v10 addObject:ruleCopy];
LABEL_10:
  [(REMReminderChangeItem *)self setRecurrenceRules:v10];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeRecurrenceRule:(id)rule
{
  v13 = *MEMORY[0x1E69E9840];
  ruleCopy = rule;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = ruleCopy;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Removing recurrenceRule {reminderChangeItem: %@, recurrenceRule: %@}", &v9, 0x16u);
  }

  recurrenceRules = [(REMReminderChangeItem *)self recurrenceRules];
  v7 = [recurrenceRules mutableCopy];

  [v7 removeObject:ruleCopy];
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
    selfCopy = self;
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_INFO, "Removing all recurrenceRules {reminderChangeItem: %@}", &v5, 0xCu);
  }

  [(REMReminderChangeItem *)self setRecurrenceRules:MEMORY[0x1E695E0F0]];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setRecurrenceRules:(id)rules
{
  rulesCopy = rules;
  storage = [(REMReminderChangeItem *)self storage];
  [storage setRecurrenceRules:rulesCopy];

  [(REMReminderChangeItem *)self clearAlternativeDisplayDateDateForCalendarIfInvalid];
}

- (double)nextRecurrentAdvanceAmountForDateComponents:(id)components afterDate:(id)date
{
  componentsCopy = components;
  if (componentsCopy)
  {
    dateCopy = date;
    timeZone = [componentsCopy timeZone];
    v9 = timeZone;
    if (timeZone)
    {
      defaultTimeZone = timeZone;
    }

    else
    {
      defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    }

    v12 = defaultTimeZone;

    v13 = [MEMORY[0x1E695DF10] rem_dateWithDateComponents:componentsCopy timeZone:v12];
    rem_isAllDayDateComponents = [componentsCopy rem_isAllDayDateComponents];
    v15 = [dateCopy laterDate:v13];

    recurrenceRules = [(REMReminderChangeItem *)self recurrenceRules];
    v17 = recurrenceRules;
    if (recurrenceRules)
    {
      v18 = recurrenceRules;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    v19 = [REMRecurrenceRule nextRecurrentDueDateAfter:v15 dueDate:v13 timeZone:v12 allDay:rem_isAllDayDateComponents recurrenceRules:v18];

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

- (id)nextRecurrentDueDateComponentsAfter:(id)after
{
  afterCopy = after;
  dueDateComponents = [(REMReminderChangeItem *)self dueDateComponents];
  timeZone = [dueDateComponents timeZone];
  v7 = timeZone;
  if (timeZone)
  {
    defaultTimeZone = timeZone;
  }

  else
  {
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  v9 = defaultTimeZone;

  v10 = [MEMORY[0x1E695DF10] rem_dateWithDateComponents:dueDateComponents timeZone:v9];
  rem_isAllDayDateComponents = [dueDateComponents rem_isAllDayDateComponents];
  v12 = [afterCopy laterDate:v10];

  recurrenceRules = [(REMReminderChangeItem *)self recurrenceRules];
  v14 = recurrenceRules;
  if (recurrenceRules)
  {
    v15 = recurrenceRules;
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  v16 = [REMRecurrenceRule nextRecurrentDueDateAfter:v12 dueDate:v10 timeZone:v9 allDay:rem_isAllDayDateComponents recurrenceRules:v15];

  if (v16)
  {
    v17 = [MEMORY[0x1E695DF10] rem_dateComponentsWithDate:v16 timeZone:v9 isAllDay:rem_isAllDayDateComponents];
    timeZone2 = [dueDateComponents timeZone];

    if (!timeZone2)
    {
      rem_strippingTimeZone = [v17 rem_strippingTimeZone];

      v17 = rem_strippingTimeZone;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)addAlarmWithTrigger:(id)trigger
{
  triggerCopy = trigger;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dueDateComponents = [(REMReminderChangeItem *)self dueDateComponents];

    if (!dueDateComponents)
    {
      v6 = +[REMLogStore write];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [REMReminderChangeItem addAlarmWithTrigger:v6];
      }
    }
  }

  v7 = [[REMAlarm alloc] initWithTrigger:triggerCopy];
  [(REMReminderChangeItem *)self addAlarm:v7];

  return v7;
}

- (void)addAlarm:(id)alarm updateDisplayDate:(BOOL)date
{
  dateCopy = date;
  v17 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  v7 = +[REMLogStore write];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = alarmCopy;
    _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_INFO, "Adding alarm  {reminderChangeItem: %@, alarm: %@}", &v13, 0x16u);
  }

  alarms = [(REMReminderChangeItem *)self alarms];
  v9 = [alarms mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v9 addObject:alarmCopy];
  storage = [(REMReminderChangeItem *)self storage];
  [storage setAlarms:v9];

  if (dateCopy)
  {
    storage2 = [(REMReminderChangeItem *)self storage];
    [storage2 updateDisplayDate];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setAlarms:(id)alarms
{
  v4 = [alarms copy];
  storage = [(REMReminderChangeItem *)self storage];
  [storage setAlarms:v4];

  storage2 = [(REMReminderChangeItem *)self storage];
  [storage2 updateDisplayDate];
}

- (void)setAlarms:(id)alarms updateDisplayDate:(BOOL)date
{
  dateCopy = date;
  v6 = [alarms copy];
  storage = [(REMReminderChangeItem *)self storage];
  [storage setAlarms:v6];

  if (dateCopy)
  {
    storage2 = [(REMReminderChangeItem *)self storage];
    [storage2 updateDisplayDate];
  }
}

- (void)removeAlarm:(id)alarm updateDisplayDate:(BOOL)date
{
  dateCopy = date;
  alarmCopy = alarm;
  alarms = [(REMReminderChangeItem *)self alarms];
  v10 = [alarms mutableCopy];

  [v10 removeObject:alarmCopy];
  storage = [(REMReminderChangeItem *)self storage];
  [storage setAlarms:v10];

  if (dateCopy)
  {
    storage2 = [(REMReminderChangeItem *)self storage];
    [storage2 updateDisplayDate];
  }
}

- (void)removeAllAlarms
{
  storage = [(REMReminderChangeItem *)self storage];
  [storage setAlarms:MEMORY[0x1E695E0F0]];

  storage2 = [(REMReminderChangeItem *)self storage];
  [storage2 updateDisplayDate];
}

- (void)updateDisplayDate
{
  storage = [(REMReminderChangeItem *)self storage];
  [storage updateDisplayDate];
}

- (BOOL)isSubtask
{
  parentReminderID = [(REMReminderChangeItem *)self parentReminderID];
  v3 = parentReminderID != 0;

  return v3;
}

- (REMReminderSubtaskContextChangeItem)subtaskContext
{
  accountCapabilities = [(REMReminderChangeItem *)self accountCapabilities];
  if ([accountCapabilities supportsSubtasks])
  {
    isSubtask = [(REMReminderChangeItem *)self isSubtask];

    if (!isSubtask)
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
  accountCapabilities = [(REMReminderChangeItem *)self accountCapabilities];
  supportsAttachments = [accountCapabilities supportsAttachments];

  if (supportsAttachments)
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
  accountCapabilities = [(REMReminderChangeItem *)self accountCapabilities];
  supportsFlagged = [accountCapabilities supportsFlagged];

  if (supportsFlagged)
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
  accountCapabilities = [(REMReminderChangeItem *)self accountCapabilities];
  supportsAssignments = [accountCapabilities supportsAssignments];

  if (supportsAssignments)
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
  accountCapabilities = [(REMReminderChangeItem *)self accountCapabilities];
  supportsHashtags = [accountCapabilities supportsHashtags];

  if (supportsHashtags)
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
  accountCapabilities = [(REMReminderChangeItem *)self accountCapabilities];
  supportsDueDateDeltaAlerts = [accountCapabilities supportsDueDateDeltaAlerts];

  if (supportsDueDateDeltaAlerts)
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
  storage = [(REMReminderChangeItem *)self storage];
  fetchedDueDateDeltaAlerts = [storage fetchedDueDateDeltaAlerts];
  lastObject = [fetchedDueDateDeltaAlerts lastObject];

  return lastObject;
}

- (id)removeFromListAllowingUndo
{
  listID = [(REMReminderChangeItem *)self listID];

  if (listID)
  {
    saveRequest = [(REMReminderChangeItem *)self saveRequest];
    v5 = [saveRequest _updateListWithReminderChangeItem:self];

    objectID = [(REMReminderChangeItem *)self objectID];
    listID = [v5 lowLevelRemoveReminderIDFromOrdering:objectID];
  }

  [(REMReminderChangeItem *)self setListID:0];
  [(REMReminderChangeItem *)self setParentReminderID:0];

  return listID;
}

- (void)updateAccountCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  [(REMReminderChangeItem *)self willChangeValueForKey:@"accountCapabilities"];
  saveRequest = [(REMReminderChangeItem *)self saveRequest];
  objectID = [(REMReminderChangeItem *)self objectID];
  [saveRequest _trackAccountCapabilities:capabilitiesCopy forObjectID:objectID];

  [(REMReminderChangeItem *)self didChangeValueForKey:@"accountCapabilities"];
}

- (id)changedKeys
{
  changedKeysObserver = [(REMReminderChangeItem *)self changedKeysObserver];
  changedKeys = [changedKeysObserver changedKeys];

  return changedKeys;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  storage = [(REMReminderChangeItem *)self storage];
  v6 = [storage valueForKey:keyCopy];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = REMReminderChangeItem;
  if ([(REMReminderChangeItem *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    storage = [(REMReminderChangeItem *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  saveRequest = [(REMReminderChangeItem *)self saveRequest];
  isSaved = [saveRequest isSaved];

  if (isSaved)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_INFO, "REMSaveRequest.isSaved MUST be FALSE", v12, 2u);
    }
  }

  storage = [(REMReminderChangeItem *)self storage];
  [storage setValue:valueCopy forKey:keyCopy];
}

+ (id)resolutionTokenKeyForChangedKeyInREMReminderChangeItemOfREMCDReminder:(id)reminder
{
  v3 = __resolutionTokenKeyDenylistForREMReminderChangeItemOfREMCDReminder;
  reminderCopy = reminder;
  if ([v3 containsObject:reminderCopy])
  {
    v5 = 0;
  }

  else
  {
    v5 = reminderCopy;
  }

  v6 = v5;

  return v5;
}

+ (id)resolutionTokenKeyForChangedKeyInREMReminderChangeItemOfREMCDSavedReminder:(id)reminder
{
  v3 = __resolutionTokenKeyDenylistForREMReminderChangeItemOfREMCDSavedReminder;
  reminderCopy = reminder;
  if ([v3 containsObject:reminderCopy])
  {
    v5 = 0;
  }

  else
  {
    v5 = reminderCopy;
  }

  v6 = v5;

  return v5;
}

- (id)resolutionTokenKeyForChangedKey:(id)key
{
  keyCopy = key;
  objectID = [(REMReminderChangeItem *)self objectID];
  entityName = [objectID entityName];
  v7 = +[REMTemplate cdEntityNameForSavedReminder];
  v8 = [entityName isEqualToString:v7];

  if (v8)
  {
    [REMReminderChangeItem resolutionTokenKeyForChangedKeyInREMReminderChangeItemOfREMCDSavedReminder:keyCopy];
  }

  else
  {
    [REMReminderChangeItem resolutionTokenKeyForChangedKeyInREMReminderChangeItemOfREMCDReminder:keyCopy];
  }
  v9 = ;

  return v9;
}

- (BOOL)isUnsupported
{
  storage = [(REMReminderChangeItem *)self storage];
  isUnsupported = [storage isUnsupported];

  return isUnsupported;
}

- (id)confirmForSiriFoundInAppsAppendingToList:(id)list
{
  listCopy = list;
  saveRequest = [(REMReminderChangeItem *)self saveRequest];
  v6 = [saveRequest addReminderWithTitle:&stru_1F0D67F00 toListChangeItem:listCopy];

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
  alarms = [(REMReminderChangeItem *)self alarms];
  v4 = alarms;
  v5 = MEMORY[0x1E695E0F0];
  if (alarms)
  {
    v5 = alarms;
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

- (void)snoozeFromNowForTimeInterval:(double)interval
{
  date = [MEMORY[0x1E695DF00] date];
  v6 = [date dateByAddingTimeInterval:interval];

  [(REMReminderChangeItem *)self snoozeToDate:v6];
}

- (void)snoozeToDate:(id)date
{
  v4 = MEMORY[0x1E695DF10];
  v5 = MEMORY[0x1E695DFE8];
  dateCopy = date;
  defaultTimeZone = [v5 defaultTimeZone];
  v8 = [v4 rem_dateComponentsWithDate:dateCopy timeZone:defaultTimeZone isAllDay:0];

  [(REMReminderChangeItem *)self _createSnoozeAlarmWithDateComponents:v8];
}

- (void)snoozeToNextThirds
{
  v3 = MEMORY[0x1E695DF10];
  date = [MEMORY[0x1E695DF00] date];
  defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  v7 = [v3 rem_dateComponentsWithDate:date timeZone:defaultTimeZone isAllDay:0];

  v6 = objc_opt_class();
  [v7 setHour:{objc_msgSend(v6, "nextThirdsHour:", objc_msgSend(objc_opt_class(), "nextThirdsHourFromHour:", objc_msgSend(v7, "hour")))}];
  [v7 setMinute:0];
  [v7 setSecond:0];
  [(REMReminderChangeItem *)self _createSnoozeAlarmWithDateComponents:v7];
}

- (void)snoozeFromDueDateForFutureIntegralMultipleOfTimeInterval:(double)interval
{
  dueDateComponents = [(REMReminderChangeItem *)self dueDateComponents];
  if (dueDateComponents)
  {
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v6 = [MEMORY[0x1E695DF10] rem_dateWithDateComponents:dueDateComponents timeZone:defaultTimeZone];
    date = [MEMORY[0x1E695DF00] date];
    [(REMReminderChangeItem *)self _timeIntervalToAddSinceStartDate:v6 withNow:date step:interval];
    v9 = v8;

    v10 = [dueDateComponents rem_dateComponentsByAddingTimeInterval:v9];
    [(REMReminderChangeItem *)self _createSnoozeAlarmWithDateComponents:v10];
  }

  else
  {
    displayDate = [(REMReminderChangeItem *)self displayDate];
    defaultTimeZone = [displayDate date];

    if (defaultTimeZone)
    {
      date2 = [MEMORY[0x1E695DF00] date];
      [(REMReminderChangeItem *)self _timeIntervalToAddSinceStartDate:defaultTimeZone withNow:date2 step:interval];
      v14 = v13;

      [defaultTimeZone dateByAddingTimeInterval:v14];
    }

    else
    {
      [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:interval];
    }
    v6 = ;
    [(REMReminderChangeItem *)self snoozeToDate:v6];
  }
}

- (void)_createSnoozeAlarmWithDateComponents:(id)components
{
  v13 = *MEMORY[0x1E69E9840];
  if (components)
  {
    componentsCopy = components;
    _cleanupOriginalAlarmsForSnoozing = [(REMReminderChangeItem *)self _cleanupOriginalAlarmsForSnoozing];
    v6 = [[REMAlarmDateTrigger alloc] initWithDateComponents:componentsCopy];

    v7 = [(REMReminderChangeItem *)self addAlarmWithTrigger:v6];
    [v7 setOriginalAlarmUID:_cleanupOriginalAlarmsForSnoozing];
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
  alarms = [(REMReminderChangeItem *)self alarms];
  v4 = alarms;
  v5 = MEMORY[0x1E695E0F0];
  if (alarms)
  {
    v5 = alarms;
  }

  v6 = v5;

  date = [MEMORY[0x1E695DF00] date];
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
            alarmUID = [v15 alarmUID];

            v12 = alarmUID;
          }

          trigger = [v15 trigger];
          isTemporal = [trigger isTemporal];

          if (isTemporal)
          {
            [(REMReminderChangeItem *)self removeAlarm:v15 updateDisplayDate:0];
            v23 = [REMAlarm alloc];
            v24 = +[REMAlarm newObjectID];
            v25 = [(REMAlarm *)v23 initWithAlarm:v15 objectID:v24];

            [(REMReminderChangeItem *)self addAlarm:v25 updateDisplayDate:0];
            [v25 setAcknowledgedDate:date];
            alarmUID2 = [v15 alarmUID];
            [v25 setAlarmUID:alarmUID2];

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
  objectID = [self objectID];
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