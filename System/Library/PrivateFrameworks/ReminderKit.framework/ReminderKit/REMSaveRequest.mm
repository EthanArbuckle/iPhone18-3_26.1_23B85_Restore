@interface REMSaveRequest
- (BOOL)_changeItemsAreAllEmpty;
- (BOOL)saveSynchronouslyWithError:(id *)error;
- (BOOL)updateReminderChangeItem:(id)item fromICSData:(id)data isNew:(BOOL)new withOptions:(id)options error:(id *)error;
- (REMSaveRequest)initWithStore:(id)store;
- (REMSaveRequestNotifyChangeDelegate)notifyChangeDelegate;
- (id)__addAccountWithType:(int64_t)type name:(id)name accountObjectID:(id)d;
- (id)_addTestOnlyExtraPrimaryCKAccountWithName:(id)name accountObjectID:(id)d;
- (id)_addTestOnlyPrimaryCKAccountWithName:(id)name accountObjectID:(id)d;
- (id)_copyReminder:(id)reminder toListChangeItem:(id)item;
- (id)_copyReminder:(id)reminder toReminderSubtaskContextChangeItem:(id)item;
- (id)_copyReminderChangeItem:(id)item toListChangeItem:(id)changeItem;
- (id)_copyReminderChangeItem:(id)item toReminderSubtaskContextChangeItem:(id)changeItem;
- (id)_iCalendarDataFromICSTodoItem:(id)item icsCalendar:(id)calendar;
- (id)_trackedAccountCapabilitiesForObjectID:(id)d;
- (id)_trackedAccountChangeItemForObjectID:(id)d;
- (id)_trackedListChangeItemForObjectID:(id)d;
- (id)_trackedListSectionChangeItemForObjectID:(id)d;
- (id)_trackedReminderChangeItemForObjectID:(id)d;
- (id)_trackedSmartListChangeItemForObjectID:(id)d;
- (id)_trackedSmartListSectionChangeItemForObjectID:(id)d;
- (id)_trackedTemplateChangeItemForObjectID:(id)d;
- (id)_trackedTemplateSectionChangeItemForObjectID:(id)d;
- (id)_updateAccountWithListChangeItem:(id)item;
- (id)_updateListStorage:(id)storage accountCapabilities:(id)capabilities;
- (id)_updateListWithReminderChangeItem:(id)item;
- (id)addCustomSmartListWithName:(id)name toAccountChangeItem:(id)item smartListObjectID:(id)d;
- (id)addCustomSmartListWithName:(id)name toListSublistContextChangeItem:(id)item smartListObjectID:(id)d;
- (id)addGroupWithName:(id)name toAccountGroupContextChangeItem:(id)item groupObjectID:(id)d;
- (id)addListSectionWithDisplayName:(id)name toListSectionContextChangeItem:(id)item listSectionObjectID:(id)d;
- (id)addListUsingPublicTemplateWithREMListRepresentation:(id)representation toAccountChangeItem:(id)item;
- (id)addListUsingTemplate:(id)template toAccountChangeItem:(id)item;
- (id)addListWithName:(id)name toAccountChangeItem:(id)item listObjectID:(id)d;
- (id)addListWithName:(id)name toListSublistContextChangeItem:(id)item listObjectID:(id)d;
- (id)addReminderWithTitle:(id)title toListChangeItem:(id)item reminderObjectID:(id)d;
- (id)addReminderWithTitle:(id)title toReminderSubtaskContextChangeItem:(id)item reminderObjectID:(id)d;
- (id)addSmartListSectionWithDisplayName:(id)name toSmartListSectionContextChangeItem:(id)item smartListSectionObjectID:(id)d;
- (id)addTemplateSectionWithDisplayName:(id)name toTemplateSectionContextChangeItem:(id)item templateSectionObjectID:(id)d;
- (id)addTemplateWithName:(id)name configuration:(id)configuration toAccountChangeItem:(id)item;
- (id)addTemplateWithName:(id)name configuration:(id)configuration toAccountChangeItem:(id)item templateObjectID:(id)d;
- (id)advanceForwardRecurrenceAfterNowAndCreateIncompleteCloneWithoutRecurrenceRulesAndSubtasks;
- (id)advanceForwardRecurrenceAndCreateCompletedCloneWithoutRecurrenceRulesAndSubtasksAfterDate:(id)date;
- (id)description;
- (id)icsDueOrEndDateWithICSCalendarItem:(id)item options:(id)options;
- (id)importRemindersFromICSData:(id)data insertIntoListChangeItem:(id)item error:(id *)error;
- (id)updateAccount:(id)account;
- (id)updateList:(id)list;
- (id)updateListSection:(id)section;
- (id)updateReminder:(id)reminder;
- (id)updateSmartList:(id)list;
- (id)updateSmartListSection:(id)section;
- (id)updateTemplate:(id)template;
- (id)updateTemplateSection:(id)section;
- (void)_addAlarmsToReminderChangeItem:(id)item withICSAlarm:(id)alarm icsCalendar:(id)calendar;
- (void)_populateAlarmsInReminderChangeItem:(id)item withICSAlarms:(id)alarms icsCalendar:(id)calendar;
- (void)_populateRecurrencesInReminderChangeItem:(id)item withICSComponent:(id)component icsCalendar:(id)calendar;
- (void)_populateReminderChangeItem:(id)item withICSTodoItem:(id)todoItem icsCalendar:(id)calendar isNew:(BOOL)new withOptions:(id)options;
- (void)_prepareSave:(id)save;
- (void)_trackAccountCapabilities:(id)capabilities forObjectID:(id)d;
- (void)_trackAccountChangeItem:(id)item;
- (void)_trackListChangeItem:(id)item;
- (void)_trackListSectionChangeItem:(id)item;
- (void)_trackReminderChangeItem:(id)item;
- (void)_trackSmartListChangeItem:(id)item;
- (void)_trackSmartListSectionChangeItem:(id)item;
- (void)_trackTemplateChangeItem:(id)item;
- (void)_trackTemplateSectionChangeItem:(id)item;
- (void)_updateResolutionTokenMapForChangeItem:(id)item;
- (void)_updateTrackedAccountChangeItem:(id)item withObjectID:(id)d;
- (void)_updateTrackedListChangeItem:(id)item withObjectID:(id)d;
- (void)_updateTrackedReminderChangeItem:(id)item withObjectID:(id)d;
- (void)_updateTrackedSmartListChangeItem:(id)item withObjectID:(id)d;
- (void)_willSaveAccountChangeItems:(id)items listChangeItems:(id)changeItems listSectionChangeItems:(id)sectionChangeItems smartListChangeItems:(id)listChangeItems smartListSectionChangeItems:(id)listSectionChangeItems templateChangeItems:(id)templateChangeItems templateSectionChangeItems:(id)templateSectionChangeItems reminderChangeItems:(id)self0;
- (void)advanceForwardRecurrenceAfterNowAndCreateIncompleteCloneWithoutRecurrenceRulesAndSubtasks;
- (void)notifyChangeDelegateForSaveSuccess:(BOOL)success;
- (void)performPreSaveActions;
- (void)preFetchDueDateDeltaAlertsForCompletedRecurrenceClone;
- (void)preFlightActionSaveAndUpdateParentsOfRecurrentSubtasksWithLogPrefix:(id)prefix;
- (void)saveWithQueue:(id)queue completion:(id)completion;
- (void)updateUIDInReminderChangeItem:(id)item fromICSComponent:(id)component icsCalendar:(id)calendar;
@end

@implementation REMSaveRequest

- (id)importRemindersFromICSData:(id)data insertIntoListChangeItem:(id)item error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  itemCopy = item;
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0x1E7506000uLL;
  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    objectID = [itemCopy objectID];
    *buf = 138412290;
    v52 = objectID;
    _os_log_impl(&dword_19A0DB000, v12, OS_LOG_TYPE_INFO, "Importing ICS data into list change item {%@}.", buf, 0xCu);
  }

  v50 = 0;
  v14 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithData:dataCopy options:0 error:&v50];
  v15 = v50;
  if (v15 || !v14)
  {
    v34 = +[REMLogStore write];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [REMSaveRequest(Importing) importRemindersFromICSData:v15 insertIntoListChangeItem:v34 error:?];
    }

    if (error)
    {
      v35 = v15;
      *error = v15;
    }
  }

  else
  {
    saveRequest = [itemCopy saveRequest];
    if ([saveRequest updateLastModifiedDates])
    {
      [saveRequest setUpdateLastModifiedDates:0];
    }

    v39 = dataCopy;
    v17 = saveRequest;
    if ([saveRequest cloneCompletedRecurrentRemindersAtSave])
    {
      [saveRequest setCloneCompletedRecurrentRemindersAtSave:0];
    }

    v38 = v14;
    [v14 calendar];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = v49 = 0u;
    obj = [v45 componentKeys];
    v44 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v44)
    {
      v43 = *v47;
      v40 = saveRequest;
      v41 = array;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v47 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v46 + 1) + 8 * i);
          v20 = [v45 componentForKey:v19];
          if (!v20)
          {
            write = [*(v11 + 3368) write];
            if (os_log_type_enabled(write, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v52 = v19;
              _os_log_impl(&dword_19A0DB000, write, OS_LOG_TYPE_INFO, "Could not find a component with {key: %@}.", buf, 0xCu);
            }
          }

          v22 = objc_opt_class();
          v23 = REMDynamicCast(v22, v20);
          v24 = v23;
          if (v23)
          {
            rem_nonNilSummary = [v23 rem_nonNilSummary];
            v26 = [v17 addReminderWithTitle:rem_nonNilSummary toListChangeItem:itemCopy];

            [(REMSaveRequest *)self _populateReminderChangeItem:v26 withICSTodoItem:v24 icsCalendar:v45 isNew:1 withOptions:0];
            v27 = [(REMSaveRequest *)self _iCalendarDataFromICSTodoItem:v24 icsCalendar:v45];
            [v26 setImportedICSData:v27];

            [array addObject:v26];
            write2 = [*(v11 + 3368) write];
            if (os_log_type_enabled(write2, OS_LOG_TYPE_INFO))
            {
              objectID2 = [v26 objectID];
              [itemCopy objectID];
              v30 = v11;
              selfCopy = self;
              v33 = v32 = itemCopy;
              *buf = 138412546;
              v52 = objectID2;
              v53 = 2112;
              v54 = v33;
              _os_log_impl(&dword_19A0DB000, write2, OS_LOG_TYPE_INFO, "Added ICSTodo as reminder change item into list change item {reminder: %@, list: %@}.", buf, 0x16u);

              itemCopy = v32;
              self = selfCopy;
              v11 = v30;
              v17 = v40;

              array = v41;
            }
          }
        }

        v44 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v44);
    }

    v14 = v38;
    dataCopy = v39;
    v15 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];

  return array;
}

- (BOOL)updateReminderChangeItem:(id)item fromICSData:(id)data isNew:(BOOL)new withOptions:(id)options error:(id *)error
{
  newCopy = new;
  v48 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  dataCopy = data;
  optionsCopy = options;
  v44 = 0;
  v15 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithData:dataCopy options:0 error:&v44];
  v16 = v44;
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15 == 0;
  }

  if (v17)
  {
    v18 = +[REMLogStore write];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [REMSaveRequest(Importing) importRemindersFromICSData:v16 insertIntoListChangeItem:v18 error:?];
    }

    if (error)
    {
      v19 = v16;
      v20 = 0;
      *error = v16;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    selfCopy = self;
    v39 = newCopy;
    calendar = [v15 calendar];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    componentKeys = [calendar componentKeys];
    v23 = [componentKeys countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v23)
    {
      v24 = v23;
      v35 = v16;
      v36 = v15;
      v37 = optionsCopy;
      v25 = *v41;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(componentKeys);
          }

          v27 = *(*(&v40 + 1) + 8 * i);
          v28 = [calendar componentForKey:v27];
          if (!v28)
          {
            v29 = +[REMLogStore write];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v46 = v27;
              _os_log_impl(&dword_19A0DB000, v29, OS_LOG_TYPE_INFO, "Could not find a component with {key: %@}.", buf, 0xCu);
            }
          }

          v30 = objc_opt_class();
          v31 = REMDynamicCast(v30, v28);
          if (v31)
          {
            v32 = v31;
            optionsCopy = v37;
            [(REMSaveRequest *)selfCopy updateReminderChangeItem:itemCopy fromICSTodo:v31 icsCalendar:calendar isNew:v39 withOptions:v37];

            v20 = 1;
            goto LABEL_24;
          }
        }

        v24 = [componentKeys countByEnumeratingWithState:&v40 objects:v47 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }

      v20 = 0;
      optionsCopy = v37;
LABEL_24:
      v16 = v35;
      v15 = v36;
    }

    else
    {
      v20 = 0;
    }
  }

  v33 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)updateUIDInReminderChangeItem:(id)item fromICSComponent:(id)component icsCalendar:(id)calendar
{
  v23 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  componentCopy = component;
  calendarCopy = calendar;
  recurrence_id = [componentCopy recurrence_id];

  if (recurrence_id)
  {
    recurrence_id2 = [componentCopy recurrence_id];
    recurrence_id = [recurrence_id2 rem_dateWithICSCalendar:calendarCopy];
  }

  v12 = [componentCopy uid];
  if (recurrence_id)
  {
    [recurrence_id timeIntervalSinceReferenceDate];
    if (fabs(v13) >= 2.22044605e-16)
    {
      v14 = [componentCopy uid];
      v15 = REMGetRecurrenceUIDFromRealUID(v14, recurrence_id);

      v12 = v15;
    }
  }

  if (v12)
  {
    v16 = +[REMLogStore write];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      objectID = [itemCopy objectID];
      v19 = 138412546;
      v20 = objectID;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_INFO, "Setting ICS item UID to reminder change item {%@, uid: %@}.", &v19, 0x16u);
    }

    [itemCopy setDaCalendarItemUniqueIdentifier:v12];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)_iCalendarDataFromICSTodoItem:(id)item icsCalendar:(id)calendar
{
  v12[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  calendarCopy = calendar;
  v7 = objc_alloc_init(MEMORY[0x1E69E3C68]);
  if (v7)
  {
    [v7 setX_calendarserver_access:{objc_msgSend(calendarCopy, "x_calendarserver_access")}];
    v12[0] = itemCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v7 setComponents:v8 options:2];

    v9 = _iCalendarDataFromICSCalendar(v7, 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_populateReminderChangeItem:(id)item withICSTodoItem:(id)todoItem icsCalendar:(id)calendar isNew:(BOOL)new withOptions:(id)options
{
  newCopy = new;
  v71 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  todoItemCopy = todoItem;
  calendarCopy = calendar;
  optionsCopy = options;
  rem_nonNilSummary = [todoItemCopy rem_nonNilSummary];
  [itemCopy setTitleAsString:rem_nonNilSummary];

  v16 = [todoItemCopy description];

  if (v16)
  {
    v17 = [todoItemCopy description];
    [itemCopy setNotesAsString:v17];
  }

  last_modified = [todoItemCopy last_modified];
  if (!last_modified)
  {
    last_modified = [todoItemCopy dtstamp];
  }

  v62 = last_modified;
  rem_dateAsUTC = [last_modified rem_dateAsUTC];
  [itemCopy setLastModifiedDate:rem_dateAsUTC];

  created = [todoItemCopy created];
  rem_dateAsUTC2 = [created rem_dateAsUTC];

  [itemCopy setCreationDate:rem_dateAsUTC2];
  [itemCopy setPriority:{objc_msgSend(todoItemCopy, "priority")}];
  v22 = [(REMSaveRequest *)self icsDueOrEndDateWithICSCalendarItem:todoItemCopy options:optionsCopy];
  v65 = v22;
  if (v22)
  {
    v23 = v22;
    components = [v22 components];
    [itemCopy setDueDateComponents:components];

    v25 = [calendarCopy systemTimeZoneForDate:v23];
    dueDateComponents = [itemCopy dueDateComponents];
    [dueDateComponents setTimeZone:v25];
  }

  else
  {
    [itemCopy setDueDateComponents:0];
  }

  v61 = rem_dateAsUTC2;
  v63 = optionsCopy;
  v64 = calendarCopy;
  [(REMSaveRequest *)self updateUIDInReminderChangeItem:itemCopy fromICSComponent:todoItemCopy icsCalendar:calendarCopy];
  v27 = [todoItemCopy url];

  if (v27)
  {
    v28 = [todoItemCopy url];
    [itemCopy setIcsUrl:v28];
  }

  array = [MEMORY[0x1E695DF70] array];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  components2 = [todoItemCopy components];
  v31 = [components2 countByEnumeratingWithState:&v66 objects:v70 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v67;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v67 != v33)
        {
          objc_enumerationMutation(components2);
        }

        v35 = *(*(&v66 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v35];
        }
      }

      v32 = [components2 countByEnumeratingWithState:&v66 objects:v70 count:16];
    }

    while (v32);
  }

  [(REMSaveRequest *)self _populateAlarmsInReminderChangeItem:itemCopy withICSAlarms:array icsCalendar:v64];
  [(REMSaveRequest *)self _populateRecurrencesInReminderChangeItem:itemCopy withICSComponent:todoItemCopy icsCalendar:v64];
  completed = [todoItemCopy completed];
  rem_dateAsUTC3 = [completed rem_dateAsUTC];

  if (!rem_dateAsUTC3)
  {
    if ([todoItemCopy percentComplete] == 100 || objc_msgSend(todoItemCopy, "status") == 4)
    {
      if (v65)
      {
        [v65 rem_dateWithICSCalendar:v64];
      }

      else
      {
        [MEMORY[0x1E695DF00] date];
      }
      rem_dateAsUTC3 = ;
    }

    else
    {
      rem_dateAsUTC3 = 0;
    }
  }

  [itemCopy setCompleted:rem_dateAsUTC3 != 0];
  [itemCopy setCompletionDate:rem_dateAsUTC3];
  x_apple_activity = [todoItemCopy x_apple_activity];
  v39 = [x_apple_activity count];

  if (v39)
  {
    v40 = objc_opt_class();
    x_apple_activity2 = [todoItemCopy x_apple_activity];
    firstObject = [x_apple_activity2 firstObject];
    v43 = REMCheckedDynamicCast(v40, firstObject);

    v44 = objc_opt_class();
    value = [v43 value];
    v46 = REMCheckedDynamicCast(v44, value);

    if (v46)
    {
      v47 = [[REMUserActivity alloc] initWithUniversalLink:v46];
      [itemCopy setUserActivity:v47];
    }
  }

  x_apple_appLinkData = [todoItemCopy x_apple_appLinkData];

  if (x_apple_appLinkData)
  {
    v49 = [REMUserActivity alloc];
    x_apple_appLinkData2 = [todoItemCopy x_apple_appLinkData];
    v51 = [(REMUserActivity *)v49 initWithUserActivityData:x_apple_appLinkData2];
    [itemCopy setUserActivity:v51];
  }

  x_apple_sort_order = [todoItemCopy x_apple_sort_order];
  if (!x_apple_sort_order && !v61)
  {
    v53 = +[REMLogStore write];
    v54 = v63;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      [REMSaveRequest(Importing) _populateReminderChangeItem:todoItemCopy withICSTodoItem:? icsCalendar:? isNew:? withOptions:?];
    }

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    [itemCopy setIcsDisplayOrder:v56];
    goto LABEL_40;
  }

  [itemCopy setIcsDisplayOrder:x_apple_sort_order];
  v54 = v63;
  if (newCopy)
  {
    date = [itemCopy listChangeItem];
    [date setRemindersICSDisplayOrderChanged:1];
LABEL_40:
  }

  x_apple_alternative_due_date_for_calendar = [todoItemCopy x_apple_alternative_due_date_for_calendar];
  rem_dateAsUTC4 = [x_apple_alternative_due_date_for_calendar rem_dateAsUTC];

  [itemCopy setAlternativeDisplayDateDateForCalendarWithNormalizedDate:rem_dateAsUTC4];
  v59 = *MEMORY[0x1E69E9840];
}

- (id)icsDueOrEndDateWithICSCalendarItem:(id)item options:(id)options
{
  itemCopy = item;
  optionsCopy = options;
  v7 = [itemCopy due];

  if (!v7)
  {
    v8 = objc_opt_class();
    v9 = [optionsCopy valueForKey:@"ImportOptionConsiderDTENDForDueDate"];
    v10 = REMDynamicCast(v8, v9);

    if ([v10 unsignedIntegerValue] == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11 = [itemCopy performSelector:sel_dtend];

      goto LABEL_7;
    }
  }

  v11 = [itemCopy due];
LABEL_7:

  return v11;
}

- (void)_populateAlarmsInReminderChangeItem:(id)item withICSAlarms:(id)alarms icsCalendar:(id)calendar
{
  v34 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  alarmsCopy = alarms;
  calendarCopy = calendar;
  [itemCopy removeAllAlarms];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = alarmsCopy;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    v27 = *v30;
    v28 = itemCopy;
    v26 = v11;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        if (![v16 action])
        {
          trigger = [v16 trigger];
          if ([trigger isDurationBased])
          {
          }

          else
          {
            trigger2 = [v16 trigger];
            [trigger2 value];
            v19 = calendarCopy;
            v21 = v20 = self;
            [v21 components];
            v23 = v22 = v13;
            v24 = REMIsInvalidICSAlarmDateComponents(v23);

            v13 = v22;
            self = v20;
            calendarCopy = v19;
            v11 = v26;
            v14 = v27;

            itemCopy = v28;
            if (v24)
            {
              continue;
            }
          }
        }

        [(REMSaveRequest *)self _addAlarmsToReminderChangeItem:itemCopy withICSAlarm:v16 icsCalendar:calendarCopy];
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_addAlarmsToReminderChangeItem:(id)item withICSAlarm:(id)alarm icsCalendar:(id)calendar
{
  v106 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  alarmCopy = alarm;
  calendarCopy = calendar;
  array = [MEMORY[0x1E695DF70] array];
  makeUID = [alarmCopy uid];
  if (![makeUID length])
  {
    x_wr_alarmuid = [alarmCopy x_wr_alarmuid];

    makeUID = x_wr_alarmuid;
  }

  v13 = +[REMLogStore write];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [REMSaveRequest(Importing) _addAlarmsToReminderChangeItem:makeUID withICSAlarm:itemCopy icsCalendar:v13];
  }

  if (!makeUID)
  {
    makeUID = [MEMORY[0x1E69E3C80] makeUID];
    v14 = +[REMLogStore write];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      objectID = [itemCopy objectID];
      *buf = 138412546;
      v103 = makeUID;
      v104 = 2112;
      v105 = objectID;
      _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_INFO, "Imported ICS alarm has no UID, generating one {alarmUID: %@, reminderID: %@}.", buf, 0x16u);
    }
  }

  trigger = [alarmCopy trigger];
  isDurationBased = [trigger isDurationBased];
  v91 = trigger;
  value = [trigger value];
  if (isDurationBased)
  {
    v19 = [REMAlarmTimeIntervalTrigger alloc];
    [value timeInterval];
    v20 = [(REMAlarmTimeIntervalTrigger *)v19 initWithTimeInterval:?];
    components = [itemCopy addAlarmWithTrigger:v20];
    [components setAlarmUID:makeUID];
    [array addObject:components];
  }

  else
  {
    v22 = array;
    v20 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithValue:value];
    components = [(REMAlarmTimeIntervalTrigger *)v20 components];
    v23 = [calendarCopy systemTimeZoneForDate:v20];
    [components setTimeZone:v23];

    if ((REMIsInvalidICSAlarmDateComponents(components) & 1) == 0)
    {
      v24 = [[REMAlarmDateTrigger alloc] initWithDateComponents:components];
      [itemCopy addAlarmWithTrigger:v24];
      v26 = v25 = makeUID;
      [v26 setAlarmUID:v25];
      [v22 addObject:v26];

      makeUID = v25;
    }

    array = v22;
  }

  x_apple_proximity = [alarmCopy x_apple_proximity];
  if ([x_apple_proximity isEqualToString:*MEMORY[0x1E69E4078]])
  {
    v28 = 1;
  }

  else if ([x_apple_proximity isEqualToString:*MEMORY[0x1E69E4088]])
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  x_apple_proximity2 = [alarmCopy x_apple_proximity];
  if ([x_apple_proximity2 isEqualToString:*MEMORY[0x1E69E4080]])
  {
    v30 = 1;
  }

  else if ([x_apple_proximity2 isEqualToString:*MEMORY[0x1E69E4090]])
  {
    v30 = 2;
  }

  else
  {
    v30 = 0;
  }

  x_apple_structured_location = [alarmCopy x_apple_structured_location];
  location = [alarmCopy location];
  v90 = x_apple_structured_location;
  if (v28 | v30 || x_apple_structured_location | location)
  {
    if ((v28 | v30) != 0 && (x_apple_structured_location | location) != 0)
    {
      if (![array count])
      {
        goto LABEL_38;
      }

      v32 = +[REMLogStore write];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        objectID2 = [itemCopy objectID];
        *buf = 138412546;
        v103 = makeUID;
        v104 = 2112;
        v105 = objectID2;
        _os_log_impl(&dword_19A0DB000, v32, OS_LOG_TYPE_INFO, "Importing a Proximity/Location trigger when we have already imported a TimeInterval/Date trigger from the same ICSAlarm. So we found a concrete case that they co-exist. {alarmUID: %@, reminderID: %@}", buf, 0x16u);
      }
    }

    else
    {
      if (x_apple_structured_location | location)
      {
        if (!(v28 | v30))
        {
          v34 = +[REMLogStore write];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [REMSaveRequest(Importing) _addAlarmsToReminderChangeItem:makeUID withICSAlarm:itemCopy icsCalendar:?];
          }

          v28 = 1;
          goto LABEL_39;
        }

LABEL_38:
        if (!v28)
        {
          if (v30)
          {
            v30 = [[REMAlarmVehicleTrigger alloc] initWithEvent:v30];
          }

          goto LABEL_67;
        }

LABEL_39:
        v85 = itemCopy;
        v35 = alarmCopy;
        x_apple_structured_location2 = [v35 x_apple_structured_location];
        location2 = [v35 location];

        if (x_apple_structured_location2)
        {
          v87 = calendarCopy;
          v83 = array;
          v38 = [REMStructuredLocation alloc];
          title = [x_apple_structured_location2 title];
          v40 = [(REMStructuredLocation *)v38 initWithTitle:title];

          value2 = [x_apple_structured_location2 value];
          scheme = [value2 scheme];
          lowercaseString = [scheme lowercaseString];
          v44 = [lowercaseString isEqualToString:@"geo"];

          v84 = value2;
          if (v44)
          {
            absoluteString = [value2 absoluteString];
            v46 = [absoluteString substringFromIndex:4];
            v47 = [v46 rangeOfString:@";"];
            v81 = location2;
            if (v48)
            {
              v49 = [v46 substringToIndex:v47];

              v46 = v49;
            }

            calendarCopy = v87;
            v50 = makeUID;
            v51 = [v46 componentsSeparatedByString:{@", ", v81}];
            if ([v51 count] == 2)
            {
              v52 = [v51 objectAtIndex:0];
              [v52 doubleValue];
              [(REMStructuredLocation *)v40 setLatitude:?];

              v53 = [v51 objectAtIndex:1];
              [v53 doubleValue];
              [(REMStructuredLocation *)v40 setLongitude:?];
            }

            else
            {
              v53 = +[REMLogStore write];
              if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v103 = v46;
                _os_log_impl(&dword_19A0DB000, v53, OS_LOG_TYPE_INFO, "Ignoring invalid coordinates when converting location from ICS: %@", buf, 0xCu);
              }
            }

            makeUID = v50;
            location2 = v82;
          }

          else
          {
            absoluteString = +[REMLogStore write];
            if (os_log_type_enabled(absoluteString, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v103 = value2;
              _os_log_impl(&dword_19A0DB000, absoluteString, OS_LOG_TYPE_INFO, "Ignoring unexpected location URL scheme when converting location from ICS: %@.", buf, 0xCu);
            }

            calendarCopy = v87;
          }

          v54 = [x_apple_structured_location2 parameterValueForName:@"X-APPLE-RADIUS"];
          if (!v54)
          {
            v54 = [x_apple_structured_location2 parameterValueForName:@"X-Apple-Radius"];
          }

          [v54 doubleValue];
          [(REMStructuredLocation *)v40 setRadius:?];
          address = [x_apple_structured_location2 address];
          [(REMStructuredLocation *)v40 setAddress:address];

          routing = [x_apple_structured_location2 routing];
          [(REMStructuredLocation *)v40 setRouting:routing];

          v57 = [x_apple_structured_location2 parameterValueForName:@"X-APPLE-REFERENCEFRAME"];
          if (v57)
          {
            [(REMStructuredLocation *)v40 setReferenceFrameString:v57];
          }

          v58 = [x_apple_structured_location2 parameterValueForName:@"X-APPLE-ABUID"];
          if (v58 || ([x_apple_structured_location2 parameterValueForName:@"X-Apple-ABUID"], (v58 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v59 = v58;
            [(REMStructuredLocation *)v40 setContactLabel:v58];
          }

          mapKitHandle = [x_apple_structured_location2 mapKitHandle];
          if (mapKitHandle)
          {
            [(REMStructuredLocation *)v40 setMapKitHandle:mapKitHandle];
          }

          array = v83;
        }

        else
        {
          if (!location2)
          {
            location2 = &stru_1F0D67F00;
          }

          v40 = [[REMStructuredLocation alloc] initWithTitle:location2];
        }

        v30 = [[REMAlarmLocationTrigger alloc] initWithStructuredLocation:v40 proximity:v28];
        itemCopy = v85;
LABEL_67:
        v61 = [itemCopy addAlarmWithTrigger:v30];
        [v61 setAlarmUID:makeUID];
        [array addObject:v61];

        goto LABEL_68;
      }

      v32 = +[REMLogStore write];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [REMSaveRequest(Importing) _addAlarmsToReminderChangeItem:makeUID withICSAlarm:itemCopy icsCalendar:?];
      }
    }

    goto LABEL_38;
  }

LABEL_68:
  acknowledged = [alarmCopy acknowledged];

  if (acknowledged)
  {
    acknowledged2 = [alarmCopy acknowledged];
    v64 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithValue:acknowledged2];
    v65 = [v64 rem_dateWithICSCalendar:calendarCopy];
  }

  else
  {
    v65 = 0;
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v66 = array;
  v67 = [v66 countByEnumeratingWithState:&v96 objects:v101 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v97;
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v97 != v69)
        {
          objc_enumerationMutation(v66);
        }

        [*(*(&v96 + 1) + 8 * i) setAcknowledgedDate:v65];
      }

      v68 = [v66 countByEnumeratingWithState:&v96 objects:v101 count:16];
    }

    while (v68);
  }

  relatedTo = [alarmCopy relatedTo];

  if (relatedTo)
  {
    v86 = makeUID;
    v88 = calendarCopy;
    v72 = itemCopy;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v73 = v66;
    v74 = [v73 countByEnumeratingWithState:&v92 objects:v100 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v93;
      do
      {
        for (j = 0; j != v75; ++j)
        {
          if (*v93 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v78 = *(*(&v92 + 1) + 8 * j);
          relatedTo2 = [alarmCopy relatedTo];
          [v78 setOriginalAlarmUID:relatedTo2];
        }

        v75 = [v73 countByEnumeratingWithState:&v92 objects:v100 count:16];
      }

      while (v75);
    }

    itemCopy = v72;
    makeUID = v86;
    calendarCopy = v88;
  }

  v80 = *MEMORY[0x1E69E9840];
}

- (void)_populateRecurrencesInReminderChangeItem:(id)item withICSComponent:(id)component icsCalendar:(id)calendar
{
  v85 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  componentCopy = component;
  [itemCopy removeAllRecurrenceRules];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v53 = componentCopy;
  obj = [componentCopy rrule];
  v8 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v73;
    v11 = 0x1E696A000uLL;
    v54 = *v73;
    do
    {
      v12 = 0;
      v55 = v9;
      do
      {
        if (*v73 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v72 + 1) + 8 * v12);
        v14 = *(v11 + 3776);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_46;
        }

        accountID = [itemCopy accountID];
        objectID = [itemCopy objectID];
        v16 = v13;
        v68 = accountID;
        freq = [v16 freq];
        v18 = freq;
        if (freq <= 3)
        {
          if ((freq - 1) < 3)
          {
            v20 = +[REMLogStore write];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              LODWORD(v82) = v18;
              v21 = v20;
              v22 = "Encountered an ICS frequency that we don't handle: %d. Defaulting to daily";
              goto LABEL_52;
            }

LABEL_20:

            goto LABEL_21;
          }

LABEL_19:
          v20 = +[REMLogStore write];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v82) = v18;
            v21 = v20;
            v22 = "Encountered an unknown ICS frequency: %d";
LABEL_52:
            _os_log_error_impl(&dword_19A0DB000, v21, OS_LOG_TYPE_ERROR, v22, buf, 8u);
          }

          goto LABEL_20;
        }

        if (freq > 5)
        {
          if (freq == 6)
          {
            v19 = 2;
            goto LABEL_18;
          }

          if (freq == 7)
          {
            v19 = 3;
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        if (freq != 4)
        {
          v19 = 1;
LABEL_18:
          v66 = v19;
          goto LABEL_22;
        }

LABEL_21:
        v66 = 0;
LABEL_22:
        interval = [v16 interval];
        integerValue = [interval integerValue];

        wkst = [v16 wkst];
        v25 = wkst;
        if (wkst)
        {
          v64 = REMWeekdayFromICSWeekday([wkst integerValue]);
        }

        else
        {
          v64 = 0;
        }

        until = [v16 until];
        v67 = v25;
        if (until)
        {
          v27 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithValue:until];
          rem_dateAsUTC = [v27 rem_dateAsUTC];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v29 = [rem_dateAsUTC dateByAddingTimeInterval:86399.0];

            rem_dateAsUTC = v29;
          }

          v61 = [REMRecurrenceEnd recurrenceEndWithEndDate:rem_dateAsUTC];

          goto LABEL_31;
        }

        v30 = [v16 count];

        if (v30)
        {
          v27 = [v16 count];
          v61 = +[REMRecurrenceEnd recurrenceEndWithOccurrenceCount:](REMRecurrenceEnd, "recurrenceEndWithOccurrenceCount:", [v27 unsignedIntegerValue]);
LABEL_31:

          goto LABEL_32;
        }

        v61 = 0;
LABEL_32:
        v65 = until;
        v69 = v13;
        v70 = v12;
        v31 = v16;
        byday = [v16 byday];
        v60 = byday;
        if ([byday count])
        {
          v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(byday, "count")}];
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v34 = byday;
          v35 = [v34 countByEnumeratingWithState:&v76 objects:buf count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v77;
            do
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v77 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v76 + 1) + 8 * i);
                v40 = REMWeekdayFromICSWeekday([v39 weekday]);
                number = [v39 number];
                v42 = +[REMRecurrenceDayOfWeek dayOfWeek:weekNumber:](REMRecurrenceDayOfWeek, "dayOfWeek:weekNumber:", v40, [number integerValue]);

                [v33 addObject:v42];
              }

              v36 = [v34 countByEnumeratingWithState:&v76 objects:buf count:16];
            }

            while (v36);
          }
        }

        else
        {
          v33 = 0;
        }

        v43 = integerValue;
        if (integerValue <= 1)
        {
          v43 = 1;
        }

        v63 = v43;
        v58 = +[REMRecurrenceRule newObjectID];
        v59 = [REMRecurrenceRule alloc];
        v44 = v31;
        bymonthday = [v31 bymonthday];
        bymonth = [v31 bymonth];
        byweekno = [v31 byweekno];
        byyearday = [v31 byyearday];
        bysetpos = [v31 bysetpos];
        v49 = [(REMRecurrenceRule *)v59 initRecurrenceRuleWithObjectID:v58 accountID:v68 reminderID:objectID frequency:v66 interval:v63 firstDayOfTheWeek:v64 daysOfTheWeek:v33 daysOfTheMonth:bymonthday monthsOfTheYear:bymonth weeksOfTheYear:byweekno daysOfTheYear:byyearday setPositions:bysetpos end:v61];

        v10 = v54;
        v9 = v55;
        v11 = 0x1E696A000;
        v13 = v69;
        v12 = v70;
        if (v49)
        {
          [itemCopy addRecurrenceRule:v49];
          goto LABEL_48;
        }

LABEL_46:
        v49 = +[REMLogStore write];
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          objectID2 = [itemCopy objectID];
          *buf = 138412546;
          v82 = v13;
          v83 = 2112;
          v84 = objectID2;
          _os_log_error_impl(&dword_19A0DB000, v49, OS_LOG_TYPE_ERROR, "Couldn't populate the recurrence rule {icsRecurrence: %@, reminderID: %@}", buf, 0x16u);
        }

LABEL_48:

        ++v12;
      }

      while (v12 != v9);
      v51 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
      v9 = v51;
    }

    while (v51);
  }

  v52 = *MEMORY[0x1E69E9840];
}

- (REMSaveRequest)initWithStore:(id)store
{
  storeCopy = store;
  if (!storeCopy)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "store");
  }

  v39.receiver = self;
  v39.super_class = REMSaveRequest;
  v6 = [(REMSaveRequest *)&v39 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    trackedAccountChangeItems = v7->_trackedAccountChangeItems;
    v7->_trackedAccountChangeItems = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    trackedListChangeItems = v7->_trackedListChangeItems;
    v7->_trackedListChangeItems = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    trackedSmartListChangeItems = v7->_trackedSmartListChangeItems;
    v7->_trackedSmartListChangeItems = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    trackedTemplateChangeItems = v7->_trackedTemplateChangeItems;
    v7->_trackedTemplateChangeItems = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    trackedReminderChangeItems = v7->_trackedReminderChangeItems;
    v7->_trackedReminderChangeItems = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    trackedAccountCapabilities = v7->_trackedAccountCapabilities;
    v7->_trackedAccountCapabilities = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    trackedListSectionChangeItems = v7->_trackedListSectionChangeItems;
    v7->_trackedListSectionChangeItems = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    trackedSmartListSectionChangeItems = v7->_trackedSmartListSectionChangeItems;
    v7->_trackedSmartListSectionChangeItems = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    trackedTemplateSectionChangeItems = v7->_trackedTemplateSectionChangeItems;
    v7->_trackedTemplateSectionChangeItems = v24;

    v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    saveRequestChangeEvents = v7->_saveRequestChangeEvents;
    v7->_saveRequestChangeEvents = v26;

    *&v7->_updateLastModifiedDates = 1;
    v7->_cloneCompletedRecurrentRemindersAtSave = 1;
    v7->_syncToCloudKit = 1;
    mode = [storeCopy mode];
    if (mode > 2)
    {
      if (mode != 3)
      {
        if (mode != 4)
        {
          goto LABEL_22;
        }

        v32 = +[REMLogStore write];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19A0DB000, v32, OS_LOG_TYPE_INFO, "Creating saveRequest in AccountDataMoving mode", buf, 2u);
        }

        v7->_cloneCompletedRecurrentRemindersAtSave = 0;
LABEL_21:
        v7->_updateLastModifiedDates = 0;
LABEL_22:
        if (!v7->_replicaManagerProvider)
        {
          v35 = [[_REMDefaultReplicaManagerProvider alloc] initWithStore:storeCopy];
          replicaManagerProvider = v7->_replicaManagerProvider;
          v7->_replicaManagerProvider = v35;
        }

        goto LABEL_24;
      }

      v33 = +[REMLogStore write];
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
LABEL_20:

        *&v7->_cloneCompletedRecurrentRemindersAtSave = 256;
        goto LABEL_21;
      }

      *buf = 0;
      v34 = "Creating saveRequest in EventKitSync mode";
    }

    else
    {
      if (mode != 1)
      {
        if (mode == 2)
        {
          v29 = +[REMLogStore write];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19A0DB000, v29, OS_LOG_TYPE_INFO, "Creating saveRequest in CalDAV-Sync mode", buf, 2u);
          }

          *&v7->_cloneCompletedRecurrentRemindersAtSave = 256;
          v7->_updateLastModifiedDates = 0;
          replicaManagerProviderForCalDAVSync = [storeCopy replicaManagerProviderForCalDAVSync];
          v31 = v7->_replicaManagerProvider;
          v7->_replicaManagerProvider = replicaManagerProviderForCalDAVSync;
        }

        goto LABEL_22;
      }

      v33 = +[REMLogStore write];
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v34 = "Creating saveRequest in migration mode";
    }

    _os_log_impl(&dword_19A0DB000, v33, OS_LOG_TYPE_INFO, v34, buf, 2u);
    goto LABEL_20;
  }

LABEL_24:

  return v7;
}

- (id)description
{
  v19 = MEMORY[0x1E696AEC0];
  v17 = objc_opt_class();
  trackedAccountChangeItems = [(REMSaveRequest *)self trackedAccountChangeItems];
  v16 = [trackedAccountChangeItems count];
  trackedListChangeItems = [(REMSaveRequest *)self trackedListChangeItems];
  v15 = [trackedListChangeItems count];
  trackedSmartListChangeItems = [(REMSaveRequest *)self trackedSmartListChangeItems];
  v14 = [trackedSmartListChangeItems count];
  trackedTemplateChangeItems = [(REMSaveRequest *)self trackedTemplateChangeItems];
  v4 = [trackedTemplateChangeItems count];
  trackedReminderChangeItems = [(REMSaveRequest *)self trackedReminderChangeItems];
  v6 = [trackedReminderChangeItems count];
  trackedListSectionChangeItems = [(REMSaveRequest *)self trackedListSectionChangeItems];
  v8 = [trackedListSectionChangeItems count];
  trackedSmartListSectionChangeItems = [(REMSaveRequest *)self trackedSmartListSectionChangeItems];
  v10 = [trackedSmartListSectionChangeItems count];
  trackedTemplateSectionChangeItems = [(REMSaveRequest *)self trackedTemplateSectionChangeItems];
  v12 = [v19 stringWithFormat:@"<%@: %p acounts.count: %ld, lists.count: %ld, smartLists.count: %ld, templates.count: %ld, reminders.count: %ld, listSections.count: %ld>, smartListSections.count: %ld, templateSections.count: %ld>", v17, self, v16, v15, v14, v4, v6, v8, v10, objc_msgSend(trackedTemplateSectionChangeItems, "count")];

  return v12;
}

- (id)updateAccount:(id)account
{
  accountCopy = account;
  v5 = accountCopy;
  if (accountCopy)
  {
    storage = [accountCopy storage];
    if (storage)
    {
      objectID = [v5 objectID];
      if (objectID)
      {
        v8 = [(REMSaveRequest *)self _trackedAccountChangeItemForObjectID:objectID];
        if (!v8)
        {
          v9 = [REMAccountChangeItem alloc];
          capabilities = [v5 capabilities];
          v8 = [(REMAccountChangeItem *)v9 initWithSaveRequest:self storage:storage capabilities:capabilities observeInitialValues:0];

          [(REMSaveRequest *)self _trackAccountChangeItem:v8];
        }
      }

      else
      {
        v13 = +[REMLogStore write];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          [REMListSectionsDataView fetchListSectionWithObjectID:error:];
        }

        NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
        v8 = 0;
      }
    }

    else
    {
      v12 = +[REMLogStore write];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [REMSaveRequest updateAccount:];
      }

      NSLog(&cfstr_SIsUnexpectedl.isa, "accountStorage");
      v8 = 0;
    }
  }

  else
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest updateAccount:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "account");
    v8 = 0;
  }

  return v8;
}

- (id)_updateAccountWithListChangeItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy)
  {
    parentAccountID = [itemCopy parentAccountID];
    if (parentAccountID)
    {
      v7 = [(REMSaveRequest *)self _trackedAccountChangeItemForObjectID:parentAccountID];
      if (!v7)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Assertion Failure. Missing REMAccountChangeItem associated with REMListChangeItem. {listChangeItem: %@}", v5}];
      }
    }

    else
    {
      v9 = +[REMLogStore write];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [REMSaveRequest _updateAccountWithListChangeItem:];
      }

      NSLog(&cfstr_SIsUnexpectedl.isa, "accountObjectID");
      v7 = 0;
    }
  }

  else
  {
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _updateAccountWithListChangeItem:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "listChangeItem");
    v7 = 0;
  }

  return v7;
}

- (id)addGroupWithName:(id)name toAccountGroupContextChangeItem:(id)item groupObjectID:(id)d
{
  nameCopy = name;
  itemCopy = item;
  dCopy = d;
  if (nameCopy)
  {
    if (itemCopy)
    {
LABEL_3:
      if (!dCopy)
      {
        dCopy = +[REMList newObjectID];
      }

      accountChangeItem = [itemCopy accountChangeItem];
      saveRequest = [accountChangeItem saveRequest];

      if (saveRequest != self)
      {
        v13 = MEMORY[0x1E695DF30];
        v14 = *MEMORY[0x1E695D930];
        saveRequest2 = [accountChangeItem saveRequest];
        [v13 raise:v14 format:{@"accountChangeItem (%@) has incorrect saveRequest (%@). Expected %@", accountChangeItem, saveRequest2, self}];
      }

      v16 = [[REMListChangeItem alloc] initWithObjectID:dCopy name:nameCopy insertIntoAccountChangeItem:accountChangeItem isGroup:1];
      [(REMSaveRequest *)self _trackListChangeItem:v16];

      goto LABEL_12;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "name");
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  v17 = +[REMLogStore write];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest addGroupWithName:toAccountGroupContextChangeItem:groupObjectID:];
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "accountGroupContextChangeItem");
  v16 = 0;
LABEL_12:

  return v16;
}

- (id)addListWithName:(id)name toAccountChangeItem:(id)item listObjectID:(id)d
{
  nameCopy = name;
  itemCopy = item;
  dCopy = d;
  if (nameCopy)
  {
    if (itemCopy)
    {
LABEL_3:
      saveRequest = [itemCopy saveRequest];

      if (saveRequest != self)
      {
        v12 = MEMORY[0x1E695DF30];
        v13 = *MEMORY[0x1E695D930];
        saveRequest2 = [itemCopy saveRequest];
        [v12 raise:v13 format:{@"accountChangeItem (%@) has incorrect saveRequest (%@). Expected %@", itemCopy, saveRequest2, self}];
      }

      if (!dCopy)
      {
        dCopy = +[REMList newObjectID];
      }

      v15 = [[REMListChangeItem alloc] initWithObjectID:dCopy name:nameCopy insertIntoAccountChangeItem:itemCopy];
      [(REMSaveRequest *)self _trackListChangeItem:v15];
      goto LABEL_12;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "name");
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  v16 = +[REMLogStore write];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest addListWithName:toAccountChangeItem:listObjectID:];
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "accountChangeItem");
  v15 = 0;
LABEL_12:

  return v15;
}

- (id)addListWithName:(id)name toListSublistContextChangeItem:(id)item listObjectID:(id)d
{
  nameCopy = name;
  itemCopy = item;
  dCopy = d;
  if (nameCopy)
  {
    if (itemCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    NSLog(&cfstr_SIsUnexpectedl.isa, "listSublistContextChangeItem");
    if (dCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "name");
  if (!itemCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (dCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  dCopy = +[REMList newObjectID];
LABEL_4:
  listChangeItem = [itemCopy listChangeItem];
  saveRequest = [listChangeItem saveRequest];

  if (saveRequest != self)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D930];
    saveRequest2 = [listChangeItem saveRequest];
    [v13 raise:v14 format:{@"listSublistContextChangeItem (%@) has incorrect saveRequest (%@). Expected %@", itemCopy, saveRequest2, self}];
  }

  v16 = [[REMListChangeItem alloc] initWithObjectID:dCopy name:nameCopy insertIntoListSublistContextChangeItem:itemCopy];
  [(REMSaveRequest *)self _trackListChangeItem:v16];

  return v16;
}

- (id)addListUsingTemplate:(id)template toAccountChangeItem:(id)item
{
  templateCopy = template;
  itemCopy = item;
  templatesContextChangeItem = [itemCopy templatesContextChangeItem];

  if (templatesContextChangeItem)
  {
    name = [templateCopy name];

    if (!name)
    {
      v10 = +[REMLogStore write];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [REMSaveRequest addListUsingTemplate:templateCopy toAccountChangeItem:?];
      }
    }

    name2 = [templateCopy name];
    v12 = [(REMSaveRequest *)self addListWithName:name2 toAccountChangeItem:itemCopy listObjectID:0];
    color = [templateCopy color];
    [v12 setColor:color];

    badgeEmblem = [templateCopy badgeEmblem];
    [v12 setBadgeEmblem:badgeEmblem];

    [v12 setShowingLargeAttachments:{objc_msgSend(templateCopy, "showingLargeAttachments")}];
    sortingStyle = [templateCopy sortingStyle];
    [v12 setSortingStyle:sortingStyle];

    objectID = [templateCopy objectID];
    [v12 setTemplateID:objectID];
  }

  else
  {
    name2 = +[REMLogStore write];
    if (os_log_type_enabled(name2, OS_LOG_TYPE_ERROR))
    {
      [REMSaveRequest addListUsingTemplate:itemCopy toAccountChangeItem:?];
    }

    v12 = 0;
  }

  return v12;
}

- (id)addListUsingPublicTemplateWithREMListRepresentation:(id)representation toAccountChangeItem:(id)item
{
  representationCopy = representation;
  itemCopy = item;
  templatesContextChangeItem = [itemCopy templatesContextChangeItem];

  if (templatesContextChangeItem)
  {
    name = [representationCopy name];

    if (!name)
    {
      v10 = +[REMLogStore write];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [REMSaveRequest addListUsingPublicTemplateWithREMListRepresentation:representationCopy toAccountChangeItem:?];
      }
    }

    name2 = [representationCopy name];
    v12 = [(REMSaveRequest *)self addListWithName:name2 toAccountChangeItem:itemCopy listObjectID:0];
    color = [representationCopy color];
    [v12 setColor:color];

    badgeEmblem = [representationCopy badgeEmblem];
    [v12 setBadgeEmblem:badgeEmblem];

    [v12 setShowingLargeAttachments:{objc_msgSend(representationCopy, "showingLargeAttachments")}];
    sortingStyle = [representationCopy sortingStyle];
    [v12 setSortingStyle:sortingStyle];

    objectID = [representationCopy objectID];
    [v12 setTemplateID:objectID];
  }

  else
  {
    name2 = +[REMLogStore write];
    if (os_log_type_enabled(name2, OS_LOG_TYPE_ERROR))
    {
      [REMSaveRequest addListUsingPublicTemplateWithREMListRepresentation:itemCopy toAccountChangeItem:?];
    }

    v12 = 0;
  }

  return v12;
}

- (id)updateList:(id)list
{
  listCopy = list;
  v5 = listCopy;
  if (listCopy)
  {
    storage = [listCopy storage];
    if (storage)
    {
      account = [v5 account];
      v8 = [(REMSaveRequest *)self updateAccount:account];

      parentList = [v5 parentList];
      if (parentList)
      {
        v10 = [(REMSaveRequest *)self updateList:parentList];
      }

      storage2 = [v5 storage];
      account2 = [v5 account];
      capabilities = [account2 capabilities];
      v14 = [(REMSaveRequest *)self _updateListStorage:storage2 accountCapabilities:capabilities];
    }

    else
    {
      v16 = +[REMLogStore write];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [REMSaveRequest updateList:];
      }

      NSLog(&cfstr_SIsUnexpectedl.isa, "listStorage");
      v14 = 0;
    }
  }

  else
  {
    v15 = +[REMLogStore write];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest updateList:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "list");
    v14 = 0;
  }

  return v14;
}

- (id)_updateListStorage:(id)storage accountCapabilities:(id)capabilities
{
  storageCopy = storage;
  capabilitiesCopy = capabilities;
  v8 = capabilitiesCopy;
  if (!storageCopy)
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest updateList:];
    }

    v12 = "listStorage";
    goto LABEL_12;
  }

  if (!capabilitiesCopy)
  {
    v13 = +[REMLogStore write];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _updateListStorage:accountCapabilities:];
    }

    v12 = "accountCapabilities";
LABEL_12:
    NSLog(&cfstr_SIsUnexpectedl.isa, v12);
    v10 = 0;
    goto LABEL_17;
  }

  objectID = [storageCopy objectID];
  if (objectID)
  {
    v10 = [(REMSaveRequest *)self _trackedListChangeItemForObjectID:objectID];
    if (!v10)
    {
      v10 = [[REMListChangeItem alloc] initWithSaveRequest:self storage:storageCopy accountCapabilities:v8 observeInitialValues:0];
      [(REMSaveRequest *)self _trackListChangeItem:v10];
    }
  }

  else
  {
    v14 = +[REMLogStore write];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [REMListSectionsDataView fetchListSectionWithObjectID:error:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
    v10 = 0;
  }

LABEL_17:

  return v10;
}

- (id)_updateListWithReminderChangeItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (!itemCopy)
  {
    v9 = +[REMLogStore write];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _updateListWithReminderChangeItem:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "reminderChangeItem");
    goto LABEL_12;
  }

  storage = [itemCopy storage];

  if (!storage)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _updateListWithReminderChangeItem:];
    }

    storage2 = [v5 storage];

    if (!storage2)
    {
      NSLog(&cfstr_SIsUnexpectedl.isa, "reminderChangeItem.storage");
      goto LABEL_17;
    }

LABEL_12:
    storage2 = 0;
    goto LABEL_17;
  }

  listID = [v5 listID];
  if (listID)
  {
    storage2 = [(REMSaveRequest *)self _trackedListChangeItemForObjectID:listID];
    if (!storage2)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Assertion Failure. Missing REMListChangeItem associated with REMReminderChangeItem. {reminderChangeItem: %@}", v5}];
    }
  }

  else
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [REMListSectionsDataView fetchListSectionsWithListObjectID:error:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "listObjectID");
    storage2 = 0;
  }

LABEL_17:

  return storage2;
}

- (id)addCustomSmartListWithName:(id)name toAccountChangeItem:(id)item smartListObjectID:(id)d
{
  nameCopy = name;
  itemCopy = item;
  dCopy = d;
  if (nameCopy)
  {
    if (itemCopy)
    {
LABEL_3:
      saveRequest = [itemCopy saveRequest];

      v12 = MEMORY[0x1E695D930];
      if (saveRequest != self)
      {
        v13 = MEMORY[0x1E695DF30];
        v14 = *MEMORY[0x1E695D930];
        saveRequest2 = [itemCopy saveRequest];
        [v13 raise:v14 format:{@"accountChangeItem (%@) has incorrect saveRequest (%@). Expected %@", itemCopy, saveRequest2, self}];
      }

      capabilities = [itemCopy capabilities];
      supportsCustomSmartLists = [capabilities supportsCustomSmartLists];

      if ((supportsCustomSmartLists & 1) == 0)
      {
        v18 = MEMORY[0x1E695DF30];
        v19 = *v12;
        objectID = [itemCopy objectID];
        [v18 raise:v19 format:{@"Cannot add CSL because the given accountChangeItem does not support it {accountID: %@}", objectID}];
      }

      if (dCopy)
      {
        v21 = dCopy;
      }

      else
      {
        v21 = +[REMSmartList newObjectID];
      }

      v24 = v21;
      v23 = [[REMSmartListChangeItem alloc] initWithCustomSmartListObjectID:v21 insertIntoAccountChangeItem:itemCopy];
      [(REMSaveRequest *)self _trackSmartListChangeItem:v23];
      [(REMSmartListChangeItem *)v23 setName:nameCopy];

      goto LABEL_15;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "name");
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  v22 = +[REMLogStore write];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest addListWithName:toAccountChangeItem:listObjectID:];
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "accountChangeItem");
  v23 = 0;
LABEL_15:

  return v23;
}

- (id)updateSmartList:(id)list
{
  listCopy = list;
  v5 = listCopy;
  if (listCopy)
  {
    storage = [listCopy storage];
    v7 = storage;
    if (storage)
    {
      objectID = [storage objectID];
      if (objectID)
      {
        v9 = [(REMSaveRequest *)self _trackedSmartListChangeItemForObjectID:objectID];
        if (!v9)
        {
          v9 = -[REMSmartListChangeItem initWithSaveRequest:storage:observeInitialValues:]([REMSmartListChangeItem alloc], "initWithSaveRequest:storage:observeInitialValues:", self, v7, [v5 isPersisted] ^ 1);
          [(REMSaveRequest *)self _trackSmartListChangeItem:v9];
        }
      }

      else
      {
        v12 = +[REMLogStore write];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          [REMListSectionsDataView fetchListSectionWithObjectID:error:];
        }

        NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
        v9 = 0;
      }
    }

    else
    {
      v11 = +[REMLogStore write];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [REMSaveRequest updateSmartList:];
      }

      NSLog(&cfstr_SIsUnexpectedl.isa, "smartListStorage");
      v9 = 0;
    }
  }

  else
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest updateSmartList:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "smartList");
    v9 = 0;
  }

  return v9;
}

- (id)addTemplateWithName:(id)name configuration:(id)configuration toAccountChangeItem:(id)item templateObjectID:(id)d
{
  nameCopy = name;
  configurationCopy = configuration;
  itemCopy = item;
  dCopy = d;
  if (nameCopy)
  {
    if (configurationCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    NSLog(&cfstr_SIsUnexpectedl.isa, "configuration");
    if (itemCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "name");
  if (!configurationCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (itemCopy)
  {
LABEL_4:
    saveRequest = [itemCopy saveRequest];

    if (saveRequest != self)
    {
      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D930];
      saveRequest2 = [itemCopy saveRequest];
      [v15 raise:v16 format:{@"accountChangeItem (%@) has incorrect saveRequest (%@). Expected %@", itemCopy, saveRequest2, self}];
    }

    v18 = [[REMTemplateChangeItem alloc] initWithObjectID:dCopy name:nameCopy configuration:configurationCopy insertIntoAccountChangeItem:itemCopy];
    [(REMSaveRequest *)self _trackTemplateChangeItem:v18];
    goto LABEL_12;
  }

LABEL_9:
  v19 = +[REMLogStore write];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest addListWithName:toAccountChangeItem:listObjectID:];
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "accountChangeItem");
  v18 = 0;
LABEL_12:

  return v18;
}

- (id)addTemplateWithName:(id)name configuration:(id)configuration toAccountChangeItem:(id)item
{
  itemCopy = item;
  configurationCopy = configuration;
  nameCopy = name;
  v11 = +[REMTemplate newObjectID];
  v12 = [(REMSaveRequest *)self addTemplateWithName:nameCopy configuration:configurationCopy toAccountChangeItem:itemCopy templateObjectID:v11];

  return v12;
}

- (id)updateTemplate:(id)template
{
  templateCopy = template;
  v5 = templateCopy;
  if (templateCopy)
  {
    storage = [templateCopy storage];
    v7 = storage;
    if (storage)
    {
      objectID = [storage objectID];
      if (objectID)
      {
        v9 = [(REMSaveRequest *)self _trackedTemplateChangeItemForObjectID:objectID];
        if (!v9)
        {
          v9 = -[REMTemplateChangeItem initWithSaveRequest:storage:observeInitialValues:]([REMTemplateChangeItem alloc], "initWithSaveRequest:storage:observeInitialValues:", self, v7, [v5 isPersisted] ^ 1);
          [(REMSaveRequest *)self _trackTemplateChangeItem:v9];
        }
      }

      else
      {
        v12 = +[REMLogStore write];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          [REMListSectionsDataView fetchListSectionWithObjectID:error:];
        }

        NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
        v9 = 0;
      }
    }

    else
    {
      v11 = +[REMLogStore write];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [REMSaveRequest updateTemplate:];
      }

      NSLog(&cfstr_SIsUnexpectedl.isa, "templateStorage");
      v9 = 0;
    }
  }

  else
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest updateTemplate:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "remTemplate");
    v9 = 0;
  }

  return v9;
}

- (id)addReminderWithTitle:(id)title toListChangeItem:(id)item reminderObjectID:(id)d
{
  titleCopy = title;
  itemCopy = item;
  dCopy = d;
  if (titleCopy)
  {
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "title");
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "listChangeItem");
LABEL_3:
  objectID = [itemCopy objectID];
  entityName = [objectID entityName];
  v13 = +[REMTemplate cdEntityName];
  v14 = [entityName isEqualToString:v13];

  if (dCopy)
  {
    entityName2 = [dCopy entityName];
    if (v14)
    {
      v16 = +[REMTemplate cdEntityNameForSavedReminder];
      v17 = [entityName2 isEqualToString:v16];

      if ((v17 & 1) == 0)
      {
        [REMSaveRequest addReminderWithTitle:toListChangeItem:reminderObjectID:];
      }
    }

    else
    {
      v19 = +[REMReminder cdEntityName];
      v20 = [entityName2 isEqualToString:v19];

      if ((v20 & 1) == 0)
      {
        [REMSaveRequest addReminderWithTitle:toListChangeItem:reminderObjectID:];
      }
    }
  }

  else
  {
    if (v14)
    {
      v18 = +[REMTemplate newObjectIDForSavedReminder];
    }

    else
    {
      v18 = +[REMReminder newObjectID];
    }

    dCopy = v18;
  }

  saveRequest = [itemCopy saveRequest];

  v22 = MEMORY[0x1E695D930];
  if (saveRequest != self)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D930];
    saveRequest2 = [itemCopy saveRequest];
    [v23 raise:v24 format:{@"listChangeItem (%@) has incorrect saveRequest (%@). Expected %@", itemCopy, saveRequest2, self}];
  }

  if ([itemCopy isGroup])
  {
    [MEMORY[0x1E695DF30] raise:*v22 format:{@"listChangeItem is a group and adding reminder to group is not currently supported {listChangeItem: %@}", itemCopy}];
  }

  v26 = [[REMReminderChangeItem alloc] initWithObjectID:dCopy title:titleCopy insertIntoListChangeItem:itemCopy];
  [(REMSaveRequest *)self _trackReminderChangeItem:v26];

  return v26;
}

- (id)addReminderWithTitle:(id)title toReminderSubtaskContextChangeItem:(id)item reminderObjectID:(id)d
{
  titleCopy = title;
  itemCopy = item;
  dCopy = d;
  if (titleCopy)
  {
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "title");
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "parentReminderSubtaskContextChangeItem");
LABEL_3:
  reminderChangeItem = [itemCopy reminderChangeItem];
  objectID = [reminderChangeItem objectID];
  entityName = [objectID entityName];
  v14 = +[REMTemplate cdEntityNameForSavedReminder];
  v15 = [entityName isEqualToString:v14];

  if (dCopy)
  {
    entityName2 = [dCopy entityName];
    if (v15)
    {
      v17 = +[REMTemplate cdEntityNameForSavedReminder];
      v18 = [entityName2 isEqualToString:v17];

      if ((v18 & 1) == 0)
      {
        [REMSaveRequest addReminderWithTitle:toReminderSubtaskContextChangeItem:reminderObjectID:];
      }
    }

    else
    {
      v20 = +[REMReminder cdEntityName];
      v21 = [entityName2 isEqualToString:v20];

      if ((v21 & 1) == 0)
      {
        [REMSaveRequest addReminderWithTitle:toReminderSubtaskContextChangeItem:reminderObjectID:];
      }
    }
  }

  else
  {
    if (v15)
    {
      v19 = +[REMTemplate newObjectIDForSavedReminder];
    }

    else
    {
      v19 = +[REMReminder newObjectID];
    }

    dCopy = v19;
  }

  reminderChangeItem2 = [itemCopy reminderChangeItem];
  saveRequest = [reminderChangeItem2 saveRequest];

  if (saveRequest != self)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D930];
    saveRequest2 = [reminderChangeItem2 saveRequest];
    [v24 raise:v25 format:{@"parentReminderChangeItem (%@) has incorrect saveRequest (%@). Expected %@", reminderChangeItem2, saveRequest2, self}];
  }

  v27 = [[REMReminderChangeItem alloc] initWithObjectID:dCopy title:titleCopy insertIntoParentReminderSubtaskContextChangeItem:itemCopy];
  [(REMSaveRequest *)self _trackReminderChangeItem:v27];

  return v27;
}

- (id)updateReminder:(id)reminder
{
  reminderCopy = reminder;
  v5 = reminderCopy;
  if (reminderCopy)
  {
    storage = [reminderCopy storage];
    if (storage)
    {
      objectID = [v5 objectID];
      if (objectID)
      {
        v8 = [(REMSaveRequest *)self _trackedReminderChangeItemForObjectID:objectID];
        if (!v8)
        {
          v9 = [REMReminderChangeItem alloc];
          storage2 = [v5 storage];
          account = [v5 account];
          capabilities = [account capabilities];
          v8 = [(REMReminderChangeItem *)v9 initWithSaveRequest:self storage:storage2 accountCapabilities:capabilities observeInitialValues:0];

          [(REMSaveRequest *)self _trackReminderChangeItem:v8];
        }

        list = [v5 list];
        v14 = [(REMSaveRequest *)self updateList:list];
      }

      else
      {
        v17 = +[REMLogStore write];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          [REMListSectionsDataView fetchListSectionWithObjectID:error:];
        }

        NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
        v8 = 0;
      }
    }

    else
    {
      v16 = +[REMLogStore write];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [REMSaveRequest updateReminder:];
      }

      NSLog(&cfstr_SIsUnexpectedl.isa, "storage");
      v8 = 0;
    }
  }

  else
  {
    v15 = +[REMLogStore write];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest updateReminder:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "reminder");
    v8 = 0;
  }

  return v8;
}

- (id)addListSectionWithDisplayName:(id)name toListSectionContextChangeItem:(id)item listSectionObjectID:(id)d
{
  nameCopy = name;
  itemCopy = item;
  dCopy = d;
  if (nameCopy)
  {
    if (itemCopy)
    {
LABEL_3:
      listChangeItem = [itemCopy listChangeItem];
      saveRequest = [listChangeItem saveRequest];

      if (saveRequest != self)
      {
        v13 = MEMORY[0x1E695DF30];
        v14 = *MEMORY[0x1E695D930];
        saveRequest2 = [listChangeItem saveRequest];
        [v13 raise:v14 format:{@"listSectionContextChangeItem.listChangeItem (%@) has incorrect saveRequest (%@). Expected %@", listChangeItem, saveRequest2, self}];
      }

      if (!dCopy)
      {
        dCopy = +[REMListSection newObjectID];
      }

      v16 = [[REMListSectionChangeItem alloc] initWithObjectID:dCopy displayName:nameCopy insertIntoListChangeItem:listChangeItem];
      v17 = [MEMORY[0x1E695DF00] now];
      [(REMListSectionChangeItem *)v16 setCreationDate:v17];

      [(REMSaveRequest *)self _trackListSectionChangeItem:v16];
      [itemCopy setShouldUpdateSectionsOrdering:1];

      goto LABEL_12;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "displayName");
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  v18 = +[REMLogStore write];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest addListSectionWithDisplayName:toListSectionContextChangeItem:listSectionObjectID:];
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "listSectionContextChangeItem");
  v16 = 0;
LABEL_12:

  return v16;
}

- (id)updateListSection:(id)section
{
  sectionCopy = section;
  v5 = sectionCopy;
  if (sectionCopy)
  {
    storage = [sectionCopy storage];
    if (storage)
    {
      objectID = [v5 objectID];
      if (objectID)
      {
        v8 = [(REMSaveRequest *)self _trackedListSectionChangeItemForObjectID:objectID];
        if (!v8)
        {
          v9 = [REMListSectionChangeItem alloc];
          storage2 = [v5 storage];
          accountCapabilities = [v5 accountCapabilities];
          v8 = [(REMBaseSectionChangeItem *)v9 initWithSaveRequest:self storage:storage2 accountCapabilities:accountCapabilities observeInitialValues:0];

          [(REMSaveRequest *)self _trackListSectionChangeItem:v8];
        }

        list = [v5 list];
        v13 = [(REMSaveRequest *)self updateList:list];
      }

      else
      {
        v16 = +[REMLogStore write];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          [REMListSectionsDataView fetchListSectionWithObjectID:error:];
        }

        NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
        v8 = 0;
      }
    }

    else
    {
      v15 = +[REMLogStore write];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [REMSaveRequest updateReminder:];
      }

      NSLog(&cfstr_SIsUnexpectedl.isa, "storage");
      v8 = 0;
    }
  }

  else
  {
    v14 = +[REMLogStore write];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest updateListSection:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "remListSection");
    v8 = 0;
  }

  return v8;
}

- (id)addSmartListSectionWithDisplayName:(id)name toSmartListSectionContextChangeItem:(id)item smartListSectionObjectID:(id)d
{
  nameCopy = name;
  itemCopy = item;
  dCopy = d;
  if (nameCopy)
  {
    if (itemCopy)
    {
LABEL_3:
      smartListChangeItem = [itemCopy smartListChangeItem];
      saveRequest = [smartListChangeItem saveRequest];

      if (saveRequest != self)
      {
        v13 = MEMORY[0x1E695DF30];
        v14 = *MEMORY[0x1E695D930];
        saveRequest2 = [smartListChangeItem saveRequest];
        [v13 raise:v14 format:{@"smartListSectionContextChangeItem.smartListChangeItem (%@) has incorrect saveRequest (%@). Expected %@", smartListChangeItem, saveRequest2, self}];
      }

      if (!dCopy)
      {
        dCopy = +[REMSmartListSection newObjectID];
      }

      v16 = [[REMSmartListSectionChangeItem alloc] initWithObjectID:dCopy displayName:nameCopy insertIntoSmartListChangeItem:smartListChangeItem];
      v17 = [MEMORY[0x1E695DF00] now];
      [(REMSmartListSectionChangeItem *)v16 setCreationDate:v17];

      [(REMSaveRequest *)self _trackSmartListSectionChangeItem:v16];
      [itemCopy setShouldUpdateSectionsOrdering:1];

      goto LABEL_12;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "displayName");
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  v18 = +[REMLogStore write];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest addSmartListSectionWithDisplayName:toSmartListSectionContextChangeItem:smartListSectionObjectID:];
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "smartListSectionContextChangeItem");
  v16 = 0;
LABEL_12:

  return v16;
}

- (id)updateSmartListSection:(id)section
{
  sectionCopy = section;
  v5 = sectionCopy;
  if (sectionCopy)
  {
    storage = [sectionCopy storage];
    if (storage)
    {
      objectID = [v5 objectID];
      if (objectID)
      {
        v8 = [(REMSaveRequest *)self _trackedSmartListSectionChangeItemForObjectID:objectID];
        if (!v8)
        {
          v9 = [REMSmartListSectionChangeItem alloc];
          storage2 = [v5 storage];
          accountCapabilities = [v5 accountCapabilities];
          v8 = [(REMBaseSectionChangeItem *)v9 initWithSaveRequest:self storage:storage2 accountCapabilities:accountCapabilities observeInitialValues:0];

          [(REMSaveRequest *)self _trackSmartListSectionChangeItem:v8];
        }

        smartList = [v5 smartList];
        v13 = [(REMSaveRequest *)self updateSmartList:smartList];
      }

      else
      {
        v16 = +[REMLogStore write];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          [REMListSectionsDataView fetchListSectionWithObjectID:error:];
        }

        NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
        v8 = 0;
      }
    }

    else
    {
      v15 = +[REMLogStore write];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [REMSaveRequest updateReminder:];
      }

      NSLog(&cfstr_SIsUnexpectedl.isa, "storage");
      v8 = 0;
    }
  }

  else
  {
    v14 = +[REMLogStore write];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest updateSmartListSection:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "remSmartListSection");
    v8 = 0;
  }

  return v8;
}

- (id)addTemplateSectionWithDisplayName:(id)name toTemplateSectionContextChangeItem:(id)item templateSectionObjectID:(id)d
{
  nameCopy = name;
  itemCopy = item;
  dCopy = d;
  if (nameCopy)
  {
    if (itemCopy)
    {
LABEL_3:
      templateChangeItem = [itemCopy templateChangeItem];
      saveRequest = [templateChangeItem saveRequest];

      if (saveRequest != self)
      {
        v13 = MEMORY[0x1E695DF30];
        v14 = *MEMORY[0x1E695D930];
        saveRequest2 = [templateChangeItem saveRequest];
        [v13 raise:v14 format:{@"templateSectionContextChangeItem.templateChangeItem (%@) has incorrect saveRequest (%@). Expected %@", templateChangeItem, saveRequest2, self}];
      }

      if (!dCopy)
      {
        dCopy = +[REMTemplateSection newObjectID];
      }

      v16 = [[REMTemplateSectionChangeItem alloc] initWithObjectID:dCopy displayName:nameCopy insertIntoTemplateChangeItem:templateChangeItem];
      v17 = [MEMORY[0x1E695DF00] now];
      [(REMTemplateSectionChangeItem *)v16 setCreationDate:v17];

      [(REMSaveRequest *)self _trackTemplateSectionChangeItem:v16];
      [itemCopy setShouldUpdateSectionsOrdering:1];

      goto LABEL_12;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "displayName");
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  v18 = +[REMLogStore write];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest addTemplateSectionWithDisplayName:toTemplateSectionContextChangeItem:templateSectionObjectID:];
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "templateSectionContextChangeItem");
  v16 = 0;
LABEL_12:

  return v16;
}

- (id)updateTemplateSection:(id)section
{
  sectionCopy = section;
  v5 = sectionCopy;
  if (sectionCopy)
  {
    storage = [sectionCopy storage];
    if (storage)
    {
      objectID = [v5 objectID];
      if (objectID)
      {
        v8 = [(REMSaveRequest *)self _trackedTemplateSectionChangeItemForObjectID:objectID];
        if (!v8)
        {
          v9 = [REMTemplateSectionChangeItem alloc];
          storage2 = [v5 storage];
          accountCapabilities = [v5 accountCapabilities];
          v8 = [(REMBaseSectionChangeItem *)v9 initWithSaveRequest:self storage:storage2 accountCapabilities:accountCapabilities observeInitialValues:0];

          [(REMSaveRequest *)self _trackTemplateSectionChangeItem:v8];
        }

        parentTemplate = [v5 parentTemplate];
        v13 = [(REMSaveRequest *)self updateTemplate:parentTemplate];
      }

      else
      {
        v16 = +[REMLogStore write];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          [REMListSectionsDataView fetchListSectionWithObjectID:error:];
        }

        NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
        v8 = 0;
      }
    }

    else
    {
      v15 = +[REMLogStore write];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [REMSaveRequest updateReminder:];
      }

      NSLog(&cfstr_SIsUnexpectedl.isa, "storage");
      v8 = 0;
    }
  }

  else
  {
    v14 = +[REMLogStore write];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest updateTemplateSection:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "remTemplateSection");
    v8 = 0;
  }

  return v8;
}

- (void)_updateResolutionTokenMapForChangeItem:(id)item
{
  v28 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  resolutionTokenMap = [itemCopy resolutionTokenMap];
  if (resolutionTokenMap)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    changedKeys = [itemCopy changedKeys];
    v7 = [changedKeys countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(changedKeys);
          }

          v11 = [itemCopy resolutionTokenKeyForChangedKey:*(*(&v22 + 1) + 8 * i)];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [changedKeys countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [resolutionTokenMap updateForKey:{*(*(&v18 + 1) + 8 * j), v18}];
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v12 = +[REMLogStore write];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [REMSaveRequest _updateResolutionTokenMapForChangeItem:v12];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_willSaveAccountChangeItems:(id)items listChangeItems:(id)changeItems listSectionChangeItems:(id)sectionChangeItems smartListChangeItems:(id)listChangeItems smartListSectionChangeItems:(id)listSectionChangeItems templateChangeItems:(id)templateChangeItems templateSectionChangeItems:(id)templateSectionChangeItems reminderChangeItems:(id)self0
{
  v140 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  changeItemsCopy = changeItems;
  sectionChangeItemsCopy = sectionChangeItems;
  listChangeItemsCopy = listChangeItems;
  listSectionChangeItemsCopy = listSectionChangeItems;
  templateChangeItemsCopy = templateChangeItems;
  templateSectionChangeItemsCopy = templateSectionChangeItems;
  reminderChangeItemsCopy = reminderChangeItems;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  obj = itemsCopy;
  v21 = [obj countByEnumeratingWithState:&v128 objects:v139 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v129;
    do
    {
      v24 = 0;
      do
      {
        if (*v129 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v128 + 1) + 8 * v24);
        v26 = objc_autoreleasePoolPush();
        [(REMSaveRequest *)self _updateResolutionTokenMapForChangeItem:v25];
        objc_autoreleasePoolPop(v26);
        ++v24;
      }

      while (v22 != v24);
      v22 = [obj countByEnumeratingWithState:&v128 objects:v139 count:16];
    }

    while (v22);
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v27 = changeItemsCopy;
  v28 = [v27 countByEnumeratingWithState:&v124 objects:v138 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v125;
    do
    {
      v31 = 0;
      do
      {
        if (*v125 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v124 + 1) + 8 * v31);
        v33 = objc_autoreleasePoolPush();
        [(REMSaveRequest *)self _updateResolutionTokenMapForChangeItem:v32];
        objc_autoreleasePoolPop(v33);
        ++v31;
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v124 objects:v138 count:16];
    }

    while (v29);
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v94 = sectionChangeItemsCopy;
  v34 = [v94 countByEnumeratingWithState:&v120 objects:v137 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v121;
    do
    {
      v37 = 0;
      do
      {
        if (*v121 != v36)
        {
          objc_enumerationMutation(v94);
        }

        v38 = *(*(&v120 + 1) + 8 * v37);
        v39 = objc_autoreleasePoolPush();
        [(REMSaveRequest *)self _updateResolutionTokenMapForChangeItem:v38];
        objc_autoreleasePoolPop(v39);
        ++v37;
      }

      while (v35 != v37);
      v35 = [v94 countByEnumeratingWithState:&v120 objects:v137 count:16];
    }

    while (v35);
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v93 = listChangeItemsCopy;
  v40 = [v93 countByEnumeratingWithState:&v116 objects:v136 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v117;
    do
    {
      v43 = 0;
      do
      {
        if (*v117 != v42)
        {
          objc_enumerationMutation(v93);
        }

        v44 = *(*(&v116 + 1) + 8 * v43);
        v45 = objc_autoreleasePoolPush();
        [(REMSaveRequest *)self _updateResolutionTokenMapForChangeItem:v44];
        objc_autoreleasePoolPop(v45);
        ++v43;
      }

      while (v41 != v43);
      v41 = [v93 countByEnumeratingWithState:&v116 objects:v136 count:16];
    }

    while (v41);
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v92 = listSectionChangeItemsCopy;
  v46 = [v92 countByEnumeratingWithState:&v112 objects:v135 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v113;
    do
    {
      v49 = 0;
      do
      {
        if (*v113 != v48)
        {
          objc_enumerationMutation(v92);
        }

        v50 = *(*(&v112 + 1) + 8 * v49);
        v51 = objc_autoreleasePoolPush();
        [(REMSaveRequest *)self _updateResolutionTokenMapForChangeItem:v50];
        objc_autoreleasePoolPop(v51);
        ++v49;
      }

      while (v47 != v49);
      v47 = [v92 countByEnumeratingWithState:&v112 objects:v135 count:16];
    }

    while (v47);
  }

  v89 = v27;

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v52 = templateChangeItemsCopy;
  v53 = [v52 countByEnumeratingWithState:&v108 objects:v134 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v109;
    do
    {
      v56 = 0;
      do
      {
        if (*v109 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v108 + 1) + 8 * v56);
        v58 = objc_autoreleasePoolPush();
        [(REMSaveRequest *)self _updateResolutionTokenMapForChangeItem:v57];
        objc_autoreleasePoolPop(v58);
        ++v56;
      }

      while (v54 != v56);
      v54 = [v52 countByEnumeratingWithState:&v108 objects:v134 count:16];
    }

    while (v54);
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v59 = templateSectionChangeItemsCopy;
  v60 = [v59 countByEnumeratingWithState:&v104 objects:v133 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v105;
    do
    {
      v63 = 0;
      do
      {
        if (*v105 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v104 + 1) + 8 * v63);
        v65 = objc_autoreleasePoolPush();
        [(REMSaveRequest *)self _updateResolutionTokenMapForChangeItem:v64];
        objc_autoreleasePoolPop(v65);
        ++v63;
      }

      while (v61 != v63);
      v61 = [v59 countByEnumeratingWithState:&v104 objects:v133 count:16];
    }

    while (v61);
  }

  v87 = v59;
  v88 = v52;

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v91 = reminderChangeItemsCopy;
  v99 = [v91 countByEnumeratingWithState:&v100 objects:v132 count:16];
  if (v99)
  {
    v66 = 0x1E695D000uLL;
    v97 = *v101;
    do
    {
      v67 = 0;
      do
      {
        if (*v101 != v97)
        {
          objc_enumerationMutation(v91);
        }

        v68 = *(*(&v100 + 1) + 8 * v67);
        v69 = objc_autoreleasePoolPush();
        date = [*(v66 + 3840) date];
        creationDate = [v68 creationDate];

        if (!creationDate)
        {
          [v68 setCreationDate:date];
        }

        if (-[REMSaveRequest updateLastModifiedDates](self, "updateLastModifiedDates") || ([v68 lastModifiedDate], v72 = objc_claimAutoreleasedReturnValue(), v72, !v72))
        {
          [v68 setLastModifiedDate:date];
        }

        [(REMSaveRequest *)self _updateResolutionTokenMapForChangeItem:v68];
        WeakRetained = objc_loadWeakRetained(&self->_notifyChangeDelegate);

        if (WeakRetained)
        {
          listChangeItem = [v68 listChangeItem];
          sharees = [listChangeItem sharees];
          v76 = +[REMList isSharedWithShareeCount:sharingStatus:](REMList, "isSharedWithShareeCount:sharingStatus:", [sharees count], objc_msgSend(listChangeItem, "sharingStatus"));

          if (v76)
          {
            changedKeys = [v68 changedKeys];
            v78 = [changedKeys containsObject:@"objectID"];

            changedKeys2 = [v68 changedKeys];
            if ([changedKeys2 containsObject:@"titleDocument"])
            {
              goto LABEL_65;
            }

            changedKeys3 = [v68 changedKeys];
            if ([changedKeys3 containsObject:@"notesDocument"])
            {

LABEL_65:
              if ((v78 & 1) == 0)
              {
LABEL_66:
                v81 = &unk_1F0D99B20;
                goto LABEL_69;
              }

LABEL_68:
              v81 = &unk_1F0D99B08;
LABEL_69:
              saveRequestChangeEvents = [(REMSaveRequest *)self saveRequestChangeEvents];
              [saveRequestChangeEvents addObject:v81];

              v66 = 0x1E695D000;
            }

            else
            {
              changedKeys4 = [v68 changedKeys];
              v83 = [changedKeys4 containsObject:@"hashtags"];

              if (v78)
              {
                goto LABEL_68;
              }

              v66 = 0x1E695D000;
              if (v83)
              {
                goto LABEL_66;
              }
            }
          }
        }

        objc_autoreleasePoolPop(v69);
        ++v67;
      }

      while (v99 != v67);
      v85 = [v91 countByEnumeratingWithState:&v100 objects:v132 count:16];
      v99 = v85;
    }

    while (v85);
  }

  v86 = *MEMORY[0x1E69E9840];
}

- (void)saveWithQueue:(id)queue completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  completionCopy = completion;
  v8 = completionCopy;
  if (queueCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "queue");
    if (v8)
    {
      goto LABEL_3;
    }
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "completion");
LABEL_3:
  if ([(REMSaveRequest *)self _changeItemsAreAllEmpty])
  {
    author = [(REMSaveRequest *)self author];
    if ([author isEqualToString:@"com.apple.eventkitsyncd"])
    {

LABEL_9:
      v11 = +[REMLogStore write];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        author2 = [(REMSaveRequest *)self author];
        *buf = 138543618;
        v24 = author2;
        v25 = 1024;
        saveIsNoopIfNoChangedKeys = [(REMSaveRequest *)self saveIsNoopIfNoChangedKeys];
        _os_log_impl(&dword_19A0DB000, v11, OS_LOG_TYPE_DEFAULT, "Save Request has no changed keys. Opted to return early as no-op. {author: %{public}@, saveIsNoopIfNoChangedKeys: %d}", buf, 0x12u);
      }

      store = [(REMSaveRequest *)self store];
      [store processNoOpSaveRequest:self queue:queueCopy completion:v8];
      goto LABEL_18;
    }

    saveIsNoopIfNoChangedKeys2 = [(REMSaveRequest *)self saveIsNoopIfNoChangedKeys];

    if (saveIsNoopIfNoChangedKeys2)
    {
      goto LABEL_9;
    }

    v14 = +[REMLogStore write];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      author3 = [(REMSaveRequest *)self author];
      *buf = 138543362;
      v24 = author3;
      _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_DEFAULT, "LOOKATME: Save Request has no changed keys. Save will continue. Revisit if caller should avoid such saves. {author: %{public}@}", buf, 0xCu);
    }
  }

  [(REMSaveRequest *)self setSaved:1];
  v16 = +[REMLogStore write];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_DEFAULT, "os_transaction INIT {name: com.apple.reminderkit.REMSaveRequest}", buf, 2u);
  }

  v17 = os_transaction_create();
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __43__REMSaveRequest_saveWithQueue_completion___block_invoke;
  activity_block[3] = &unk_1E7507C90;
  activity_block[4] = self;
  v20 = queueCopy;
  v21 = v17;
  v22 = v8;
  store = v17;
  _os_activity_initiate(&dword_19A0DB000, "REMSaveRequest save async", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, activity_block);

LABEL_18:
  v18 = *MEMORY[0x1E69E9840];
}

void __43__REMSaveRequest_saveWithQueue_completion___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__REMSaveRequest_saveWithQueue_completion___block_invoke_2;
  v6[3] = &unk_1E75094B0;
  v5 = *(a1 + 32);
  v2 = *(&v5 + 1);
  v3 = *(a1 + 56);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v3;
  v7 = v5;
  v8 = v4;
  [v5 _prepareSave:v6];
}

void __43__REMSaveRequest_saveWithQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v17 = *(a1 + 32);
  v32 = a9;
  v31 = a8;
  v29 = a7;
  v30 = a6;
  v28 = a5;
  v18 = a4;
  v19 = a3;
  v20 = a2;
  v21 = [v17 store];
  v22 = *(a1 + 32);
  v27 = [v22 author];
  v23 = [*(a1 + 32) replicaManagerProvider];
  v24 = *(a1 + 40);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __43__REMSaveRequest_saveWithQueue_completion___block_invoke_3;
  v33[3] = &unk_1E7509488;
  v25 = *(a1 + 56);
  v26 = *(a1 + 32);
  v35 = v25;
  v33[4] = v26;
  v34 = *(a1 + 48);
  [v21 saveSaveRequest:v22 accountChangeItems:v20 listChangeItems:v19 listSectionChangeItems:v18 smartListChangeItems:v28 smartListSectionChangeItems:v30 templateChangeItems:v29 templateSectionChangeItems:v31 reminderChangeItems:v32 author:v27 replicaManagerProvider:v23 queue:v24 completion:v33];
}

id __43__REMSaveRequest_saveWithQueue_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) notifyChangeDelegateForSaveSuccess:a2 == 0];
  v4 = +[REMLogStore write];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_19A0DB000, v4, OS_LOG_TYPE_DEFAULT, "os_transaction RELEASE {name: com.apple.reminderkit.REMSaveRequest}", v7, 2u);
  }

  v5 = *(a1 + 40);
  return objc_opt_self();
}

- (BOOL)saveSynchronouslyWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__12;
  v20 = __Block_byref_object_dispose__12;
  v21 = 0;
  if ([(REMSaveRequest *)self _changeItemsAreAllEmpty])
  {
    author = [(REMSaveRequest *)self author];
    if ([author isEqualToString:@"com.apple.eventkitsyncd"])
    {

LABEL_5:
      v7 = +[REMLogStore write];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        author2 = [(REMSaveRequest *)self author];
        saveIsNoopIfNoChangedKeys = [(REMSaveRequest *)self saveIsNoopIfNoChangedKeys];
        *buf = 138543618;
        *&buf[4] = author2;
        *&buf[12] = 1024;
        *&buf[14] = saveIsNoopIfNoChangedKeys;
        _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_DEFAULT, "Save Request has no changed keys. Opted to return early as no-op. {author: %{public}@, saveIsNoopIfNoChangedKeys: %d}", buf, 0x12u);
      }

      v10 = 1;
      goto LABEL_14;
    }

    saveIsNoopIfNoChangedKeys2 = [(REMSaveRequest *)self saveIsNoopIfNoChangedKeys];

    if (saveIsNoopIfNoChangedKeys2)
    {
      goto LABEL_5;
    }

    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      author3 = [(REMSaveRequest *)self author];
      *buf = 138543362;
      *&buf[4] = author3;
      _os_log_impl(&dword_19A0DB000, v11, OS_LOG_TYPE_DEFAULT, "LOOKATME: Save Request has no changed keys. Save will continue. Revisit if caller should avoid such saves. {author: %{public}@}", buf, 0xCu);
    }
  }

  [(REMSaveRequest *)self setSaved:1];
  v7 = _os_activity_create(&dword_19A0DB000, "REMSaveRequest save sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *buf = 0;
  *&buf[8] = 0;
  os_activity_scope_enter(v7, buf);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__REMSaveRequest_saveSynchronouslyWithError___block_invoke;
  v15[3] = &unk_1E75094D8;
  v15[4] = self;
  v15[5] = &v22;
  v15[6] = &v16;
  [(REMSaveRequest *)self _prepareSave:v15];
  if (error)
  {
    *error = v17[5];
  }

  v10 = *(v23 + 24);
  os_activity_scope_leave(buf);
LABEL_14:

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

void __45__REMSaveRequest_saveSynchronouslyWithError___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v17 = *(a1 + 32);
  v18 = a9;
  v32 = a8;
  v30 = a7;
  v31 = a6;
  v29 = a5;
  v19 = a4;
  v20 = a3;
  v21 = a2;
  v33 = [v17 store];
  v22 = *(a1 + 32);
  v34 = [v22 author];
  v23 = [*(a1 + 32) replicaManagerProvider];
  v35 = 0;
  v28 = [v33 saveSaveRequest:v22 accountChangeItems:v21 listChangeItems:v20 listSectionChangeItems:v19 smartListChangeItems:v29 smartListSectionChangeItems:v31 templateChangeItems:v30 templateSectionChangeItems:v32 reminderChangeItems:v18 author:v34 replicaManagerProvider:v23 error:&v35];

  v24 = v35;
  *(*(*(a1 + 40) + 8) + 24) = v28;

  v25 = *(*(a1 + 48) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;
  v27 = v24;

  [*(a1 + 32) notifyChangeDelegateForSaveSuccess:*(*(*(a1 + 40) + 8) + 24)];
}

- (void)notifyChangeDelegateForSaveSuccess:(BOOL)success
{
  if (success)
  {
    saveRequestChangeEvents = [(REMSaveRequest *)self saveRequestChangeEvents];
    if ([saveRequestChangeEvents count])
    {
      notifyChangeDelegate = [(REMSaveRequest *)self notifyChangeDelegate];

      if (notifyChangeDelegate)
      {
        v6 = +[REMLogStore write];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_DEFAULT, "notifyChangeDelegateForSaveSuccess: SHOULD_NOTIFY {name: com.apple.reminderkit.REMSaveRequest}", buf, 2u);
        }

        saveRequestChangeEvents2 = [(REMSaveRequest *)self saveRequestChangeEvents];
        v8 = [saveRequestChangeEvents2 copy];

        notifyChangeDelegate2 = [(REMSaveRequest *)self notifyChangeDelegate];
        callbackQueue = [notifyChangeDelegate2 callbackQueue];

        v13 = MEMORY[0x1E69E9820];
        v14 = 3221225472;
        v15 = __53__REMSaveRequest_notifyChangeDelegateForSaveSuccess___block_invoke;
        v16 = &unk_1E7508448;
        selfCopy = self;
        v18 = v8;
        v11 = v8;
        dispatch_async(callbackQueue, &v13);
      }
    }

    else
    {
    }
  }

  v12 = [(REMSaveRequest *)self saveRequestChangeEvents:v13];
  [v12 removeAllObjects];
}

void __53__REMSaveRequest_notifyChangeDelegateForSaveSuccess___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notifyChangeDelegate];
  [v2 notifyEventFromSaveRequest:*(a1 + 40)];
}

- (BOOL)_changeItemsAreAllEmpty
{
  v111 = *MEMORY[0x1E69E9840];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  trackedAccountChangeItems = [(REMSaveRequest *)self trackedAccountChangeItems];
  allValues = [trackedAccountChangeItems allValues];

  v5 = [allValues countByEnumeratingWithState:&v99 objects:v110 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v100;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v100 != v7)
      {
        objc_enumerationMutation(allValues);
      }

      valueWithoutPerformingCopy = [*(*(&v99 + 1) + 8 * v8) valueWithoutPerformingCopy];
      changedKeys = [valueWithoutPerformingCopy changedKeys];
      v11 = [changedKeys count];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [allValues countByEnumeratingWithState:&v99 objects:v110 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    trackedListChangeItems = [(REMSaveRequest *)self trackedListChangeItems];
    allValues = [trackedListChangeItems allValues];

    v13 = [allValues countByEnumeratingWithState:&v95 objects:v109 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v96;
LABEL_11:
      v16 = 0;
      while (1)
      {
        if (*v96 != v15)
        {
          objc_enumerationMutation(allValues);
        }

        valueWithoutPerformingCopy2 = [*(*(&v95 + 1) + 8 * v16) valueWithoutPerformingCopy];
        changedKeys2 = [valueWithoutPerformingCopy2 changedKeys];
        v19 = [changedKeys2 count];

        if (v19)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [allValues countByEnumeratingWithState:&v95 objects:v109 count:16];
          if (v14)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      trackedSmartListChangeItems = [(REMSaveRequest *)self trackedSmartListChangeItems];
      allValues = [trackedSmartListChangeItems allValues];

      v21 = [allValues countByEnumeratingWithState:&v91 objects:v108 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v92;
LABEL_19:
        v24 = 0;
        while (1)
        {
          if (*v92 != v23)
          {
            objc_enumerationMutation(allValues);
          }

          valueWithoutPerformingCopy3 = [*(*(&v91 + 1) + 8 * v24) valueWithoutPerformingCopy];
          changedKeys3 = [valueWithoutPerformingCopy3 changedKeys];
          v27 = [changedKeys3 count];

          if (v27)
          {
            break;
          }

          if (v22 == ++v24)
          {
            v22 = [allValues countByEnumeratingWithState:&v91 objects:v108 count:16];
            if (v22)
            {
              goto LABEL_19;
            }

            goto LABEL_25;
          }
        }
      }

      else
      {
LABEL_25:

        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        trackedTemplateChangeItems = [(REMSaveRequest *)self trackedTemplateChangeItems];
        allValues = [trackedTemplateChangeItems allValues];

        v29 = [allValues countByEnumeratingWithState:&v87 objects:v107 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v88;
LABEL_27:
          v32 = 0;
          while (1)
          {
            if (*v88 != v31)
            {
              objc_enumerationMutation(allValues);
            }

            valueWithoutPerformingCopy4 = [*(*(&v87 + 1) + 8 * v32) valueWithoutPerformingCopy];
            changedKeys4 = [valueWithoutPerformingCopy4 changedKeys];
            v35 = [changedKeys4 count];

            if (v35)
            {
              break;
            }

            if (v30 == ++v32)
            {
              v30 = [allValues countByEnumeratingWithState:&v87 objects:v107 count:16];
              if (v30)
              {
                goto LABEL_27;
              }

              goto LABEL_33;
            }
          }
        }

        else
        {
LABEL_33:

          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          trackedReminderChangeItems = [(REMSaveRequest *)self trackedReminderChangeItems];
          allValues = [trackedReminderChangeItems allValues];

          v37 = [allValues countByEnumeratingWithState:&v83 objects:v106 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v84;
LABEL_35:
            v40 = 0;
            while (1)
            {
              if (*v84 != v39)
              {
                objc_enumerationMutation(allValues);
              }

              valueWithoutPerformingCopy5 = [*(*(&v83 + 1) + 8 * v40) valueWithoutPerformingCopy];
              changedKeys5 = [valueWithoutPerformingCopy5 changedKeys];
              v43 = [changedKeys5 count];

              if (v43)
              {
                break;
              }

              if (v38 == ++v40)
              {
                v38 = [allValues countByEnumeratingWithState:&v83 objects:v106 count:16];
                if (v38)
                {
                  goto LABEL_35;
                }

                goto LABEL_41;
              }
            }
          }

          else
          {
LABEL_41:

            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            trackedListSectionChangeItems = [(REMSaveRequest *)self trackedListSectionChangeItems];
            allValues = [trackedListSectionChangeItems allValues];

            v45 = [allValues countByEnumeratingWithState:&v79 objects:v105 count:16];
            if (v45)
            {
              v46 = v45;
              v47 = *v80;
LABEL_43:
              v48 = 0;
              while (1)
              {
                if (*v80 != v47)
                {
                  objc_enumerationMutation(allValues);
                }

                valueWithoutPerformingCopy6 = [*(*(&v79 + 1) + 8 * v48) valueWithoutPerformingCopy];
                changedKeys6 = [valueWithoutPerformingCopy6 changedKeys];
                v51 = [changedKeys6 count];

                if (v51)
                {
                  break;
                }

                if (v46 == ++v48)
                {
                  v46 = [allValues countByEnumeratingWithState:&v79 objects:v105 count:16];
                  if (v46)
                  {
                    goto LABEL_43;
                  }

                  goto LABEL_49;
                }
              }
            }

            else
            {
LABEL_49:

              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              trackedSmartListSectionChangeItems = [(REMSaveRequest *)self trackedSmartListSectionChangeItems];
              allValues = [trackedSmartListSectionChangeItems allValues];

              v53 = [allValues countByEnumeratingWithState:&v75 objects:v104 count:16];
              if (v53)
              {
                v54 = v53;
                v55 = *v76;
LABEL_51:
                v56 = 0;
                while (1)
                {
                  if (*v76 != v55)
                  {
                    objc_enumerationMutation(allValues);
                  }

                  valueWithoutPerformingCopy7 = [*(*(&v75 + 1) + 8 * v56) valueWithoutPerformingCopy];
                  changedKeys7 = [valueWithoutPerformingCopy7 changedKeys];
                  v59 = [changedKeys7 count];

                  if (v59)
                  {
                    break;
                  }

                  if (v54 == ++v56)
                  {
                    v54 = [allValues countByEnumeratingWithState:&v75 objects:v104 count:16];
                    if (v54)
                    {
                      goto LABEL_51;
                    }

                    goto LABEL_57;
                  }
                }
              }

              else
              {
LABEL_57:

                v73 = 0u;
                v74 = 0u;
                v71 = 0u;
                v72 = 0u;
                trackedTemplateSectionChangeItems = [(REMSaveRequest *)self trackedTemplateSectionChangeItems];
                allValues = [trackedTemplateSectionChangeItems allValues];

                v61 = [allValues countByEnumeratingWithState:&v71 objects:v103 count:16];
                if (!v61)
                {
                  v68 = 1;
                  goto LABEL_67;
                }

                v62 = v61;
                v63 = *v72;
LABEL_59:
                v64 = 0;
                while (1)
                {
                  if (*v72 != v63)
                  {
                    objc_enumerationMutation(allValues);
                  }

                  valueWithoutPerformingCopy8 = [*(*(&v71 + 1) + 8 * v64) valueWithoutPerformingCopy];
                  changedKeys8 = [valueWithoutPerformingCopy8 changedKeys];
                  v67 = [changedKeys8 count];

                  if (v67)
                  {
                    break;
                  }

                  if (v62 == ++v64)
                  {
                    v62 = [allValues countByEnumeratingWithState:&v71 objects:v103 count:16];
                    v68 = 1;
                    if (v62)
                    {
                      goto LABEL_59;
                    }

                    goto LABEL_67;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v68 = 0;
LABEL_67:

  v69 = *MEMORY[0x1E69E9840];
  return v68;
}

- (void)_prepareSave:(id)save
{
  v123 = *MEMORY[0x1E69E9840];
  saveCopy = save;
  if (!saveCopy)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "saveBlock");
  }

  [(REMSaveRequest *)self performPreSaveActions];
  trackedAccountChangeItems = [(REMSaveRequest *)self trackedAccountChangeItems];
  allValues = [trackedAccountChangeItems allValues];

  trackedListChangeItems = [(REMSaveRequest *)self trackedListChangeItems];
  allValues2 = [trackedListChangeItems allValues];

  trackedSmartListChangeItems = [(REMSaveRequest *)self trackedSmartListChangeItems];
  allValues3 = [trackedSmartListChangeItems allValues];

  trackedTemplateChangeItems = [(REMSaveRequest *)self trackedTemplateChangeItems];
  allValues4 = [trackedTemplateChangeItems allValues];

  trackedReminderChangeItems = [(REMSaveRequest *)self trackedReminderChangeItems];
  allValues5 = [trackedReminderChangeItems allValues];

  trackedListSectionChangeItems = [(REMSaveRequest *)self trackedListSectionChangeItems];
  allValues6 = [trackedListSectionChangeItems allValues];

  trackedSmartListSectionChangeItems = [(REMSaveRequest *)self trackedSmartListSectionChangeItems];
  allValues7 = [trackedSmartListSectionChangeItems allValues];

  trackedTemplateSectionChangeItems = [(REMSaveRequest *)self trackedTemplateSectionChangeItems];
  allValues8 = [trackedTemplateSectionChangeItems allValues];

  v82 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allValues, "count")}];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = allValues;
  v17 = [obj countByEnumeratingWithState:&v111 objects:v122 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v112;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v112 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = [*(*(&v111 + 1) + 8 * i) valueForSaveRequest:self];
        [v82 addObject:v21];
      }

      v18 = [obj countByEnumeratingWithState:&v111 objects:v122 count:16];
    }

    while (v18);
  }

  v81 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allValues2, "count")}];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v22 = allValues2;
  v23 = [v22 countByEnumeratingWithState:&v107 objects:v121 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v108;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v108 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v107 + 1) + 8 * j) valueForSaveRequest:self];
        [v81 addObject:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v107 objects:v121 count:16];
    }

    while (v24);
  }

  v80 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allValues3, "count")}];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v28 = allValues3;
  v29 = [v28 countByEnumeratingWithState:&v103 objects:v120 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v104;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v104 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v103 + 1) + 8 * k) valueForSaveRequest:self];
        [v80 addObject:v33];
      }

      v30 = [v28 countByEnumeratingWithState:&v103 objects:v120 count:16];
    }

    while (v30);
  }

  v79 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allValues4, "count")}];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v34 = allValues4;
  v35 = [v34 countByEnumeratingWithState:&v99 objects:v119 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v100;
    do
    {
      for (m = 0; m != v36; ++m)
      {
        if (*v100 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v99 + 1) + 8 * m) valueForSaveRequest:self];
        [v79 addObject:v39];
      }

      v36 = [v34 countByEnumeratingWithState:&v99 objects:v119 count:16];
    }

    while (v36);
  }

  v69 = v34;

  v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allValues5, "count")}];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v41 = allValues5;
  v42 = [v41 countByEnumeratingWithState:&v95 objects:v118 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v96;
    do
    {
      for (n = 0; n != v43; ++n)
      {
        if (*v96 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = [*(*(&v95 + 1) + 8 * n) valueForSaveRequest:self];
        [v40 addObject:v46];
      }

      v43 = [v41 countByEnumeratingWithState:&v95 objects:v118 count:16];
    }

    while (v43);
  }

  v72 = v28;
  v74 = v22;

  v47 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allValues6, "count")}];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v48 = allValues6;
  v49 = [v48 countByEnumeratingWithState:&v91 objects:v117 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v92;
    do
    {
      for (ii = 0; ii != v50; ++ii)
      {
        if (*v92 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = [*(*(&v91 + 1) + 8 * ii) valueForSaveRequest:self];
        [v47 addObject:v53];
      }

      v50 = [v48 countByEnumeratingWithState:&v91 objects:v117 count:16];
    }

    while (v50);
  }

  v71 = v41;

  v54 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allValues7, "count")}];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v77 = allValues7;
  v55 = [v77 countByEnumeratingWithState:&v87 objects:v116 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v88;
    do
    {
      for (jj = 0; jj != v56; ++jj)
      {
        if (*v88 != v57)
        {
          objc_enumerationMutation(v77);
        }

        v59 = [*(*(&v87 + 1) + 8 * jj) valueForSaveRequest:self];
        [v54 addObject:v59];
      }

      v56 = [v77 countByEnumeratingWithState:&v87 objects:v116 count:16];
    }

    while (v56);
  }

  v68 = v48;

  v60 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allValues8, "count")}];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v61 = allValues8;
  v62 = [v61 countByEnumeratingWithState:&v83 objects:v115 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v84;
    do
    {
      for (kk = 0; kk != v63; ++kk)
      {
        if (*v84 != v64)
        {
          objc_enumerationMutation(v61);
        }

        v66 = [*(*(&v83 + 1) + 8 * kk) valueForSaveRequest:self];
        [v60 addObject:v66];
      }

      v63 = [v61 countByEnumeratingWithState:&v83 objects:v115 count:16];
    }

    while (v63);
  }

  [(REMSaveRequest *)self _willSaveAccountChangeItems:v82 listChangeItems:v81 listSectionChangeItems:v47 smartListChangeItems:v80 smartListSectionChangeItems:v54 templateChangeItems:v79 templateSectionChangeItems:v60 reminderChangeItems:v40];
  saveCopy[2](saveCopy, v82, v81, v47, v80, v54, v79, v60, v40);

  v67 = *MEMORY[0x1E69E9840];
}

- (void)performPreSaveActions
{
  if ([(REMSaveRequest *)self cloneCompletedRecurrentRemindersAtSave])
  {
    advanceForwardRecurrenceAfterNowAndAndCreateCompletedCloneWithoutRecurrenceRulesAndSubtasks = [(REMSaveRequest *)self advanceForwardRecurrenceAfterNowAndAndCreateCompletedCloneWithoutRecurrenceRulesAndSubtasks];
  }
}

- (void)preFetchDueDateDeltaAlertsForCompletedRecurrenceClone
{
  v9 = *MEMORY[0x1E69E9840];
  allKeys = [a2 allKeys];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)preFlightActionSaveAndUpdateParentsOfRecurrentSubtasksWithLogPrefix:(id)prefix
{
  v47 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v46 = prefixCopy;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "%{public}@: Preflight - Collect parentsOfRecurrentSubtasks", buf, 0xCu);
  }

  v33 = prefixCopy;

  v6 = MEMORY[0x1E695DFA8];
  trackedReminderChangeItems = [(REMSaveRequest *)self trackedReminderChangeItems];
  v8 = [v6 setWithCapacity:{objc_msgSend(trackedReminderChangeItems, "count")}];

  v9 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  trackedReminderChangeItems2 = [(REMSaveRequest *)self trackedReminderChangeItems];
  allValues = [trackedReminderChangeItems2 allValues];

  v12 = [allValues countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = [*(*(&v39 + 1) + 8 * i) valueForSaveRequest:self];
        objectID = [v16 objectID];
        [v8 addObject:objectID];

        if ([v16 isCompleted])
        {
          recurrenceRules = [v16 recurrenceRules];
          v19 = [recurrenceRules count];

          if (v19)
          {
            parentReminderID = [v16 parentReminderID];
            if (parentReminderID)
            {
              [v9 addObject:parentReminderID];
            }
          }
        }
      }

      v13 = [allValues countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v13);
  }

  v21 = +[REMLogStore write];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v46 = v33;
    _os_log_impl(&dword_19A0DB000, v21, OS_LOG_TYPE_INFO, "%{public}@: Preflight -  Fetch and update parents of recurrent subtasks", buf, 0xCu);
  }

  [v9 minusSet:v8];
  if ([v9 count])
  {
    store = [(REMSaveRequest *)self store];
    allObjects = [v9 allObjects];
    v38 = 0;
    v24 = [store fetchRemindersWithObjectIDs:allObjects error:&v38];
    v25 = v38;

    if (v25)
    {
      objectEnumerator = +[REMLogStore write];
      if (os_log_type_enabled(objectEnumerator, OS_LOG_TYPE_ERROR))
      {
        [REMSaveRequest preFlightActionSaveAndUpdateParentsOfRecurrentSubtasksWithLogPrefix:];
      }
    }

    else
    {
      if (![v24 count])
      {
        goto LABEL_22;
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      objectEnumerator = [v24 objectEnumerator];
      v28 = [objectEnumerator countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v35;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v35 != v30)
            {
              objc_enumerationMutation(objectEnumerator);
            }

            v32 = [(REMSaveRequest *)self updateReminder:*(*(&v34 + 1) + 8 * j)];
          }

          v29 = [objectEnumerator countByEnumeratingWithState:&v34 objects:v43 count:16];
        }

        while (v29);
      }
    }

LABEL_22:
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)advanceForwardRecurrenceAfterNowAndCreateIncompleteCloneWithoutRecurrenceRulesAndSubtasks
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = 0x1E7506000uLL;
  v4 = +[REMLogStore write];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19A0DB000, v4, OS_LOG_TYPE_INFO, "IncompleteRecurrenceClone: Started advanceForwardRecurrenceAfterNowAndCreateIncompleteCloneWithoutRecurrenceRulesAndSubtasks", buf, 2u);
  }

  rem_now = [MEMORY[0x1E695DF00] rem_now];
  v40 = objc_opt_new();
  [(REMSaveRequest *)self preFlightActionSaveAndUpdateParentsOfRecurrentSubtasksWithLogPrefix:@"IncompleteRecurrenceClone"];
  v6 = +[REMLogStore write];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_INFO, "IncompleteRecurrenceClone: Incomplete Duplicate and Advance Forward", buf, 2u);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  trackedReminderChangeItems = [(REMSaveRequest *)self trackedReminderChangeItems];
  allValues = [trackedReminderChangeItems allValues];

  v42 = [allValues countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v42)
  {
    v10 = *v44;
    *&v9 = 138543618;
    v36 = v9;
    v38 = rem_now;
    selfCopy = self;
    v41 = *v44;
    v37 = allValues;
    do
    {
      v11 = 0;
      do
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = [*(*(&v43 + 1) + 8 * v11) valueForSaveRequest:{self, v36}];
        write = [*(v3 + 3368) write];
        if (os_log_type_enabled(write, OS_LOG_TYPE_INFO))
        {
          objectID = [v12 objectID];
          *buf = 138543362;
          v48 = objectID;
          _os_log_impl(&dword_19A0DB000, write, OS_LOG_TYPE_INFO, "IncompleteRecurrenceClone: Performing check for has recurrenceRules {reminderID: %{public}@};", buf, 0xCu);
        }

        recurrenceRules = [v12 recurrenceRules];
        v16 = [recurrenceRules count];

        if (v16)
        {
          dueDateComponents = [v12 dueDateComponents];
          [v12 nextRecurrentAdvanceAmountForDateComponents:dueDateComponents afterDate:rem_now];
          v19 = v18;

          if (v19 <= 0.0)
          {
            write2 = [*(v3 + 3368) write];
            if (!os_log_type_enabled(write2, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_25;
            }

            objectID2 = [v12 objectID];
            *buf = v36;
            v48 = objectID2;
            v49 = 2048;
            *v50 = v19;
            _os_log_fault_impl(&dword_19A0DB000, write2, OS_LOG_TYPE_FAULT, "IncompleteRecurrenceClone: Unable to clone recurrent reminder with dueDateAdvanceAmount < 0 {reminderID: %{public}@, dueDateAdvanceAmount: %f}", buf, 0x16u);
          }

          else
          {
            write2 = +[REMReminder newObjectID];
            objectID2 = [v12 duplicateForRecurrenceUsingReminderID:write2];
            if (objectID2)
            {
              objectID3 = [v12 objectID];
              [v40 setObject:objectID2 forKeyedSubscript:objectID3];

              [v12 cleanupDuplicate:objectID2 markAsCompleted:0];
              [v12 advanceForwardToNextRecurrenceAfterDate:rem_now];
            }

            else
            {
              write3 = [*(v3 + 3368) write];
              if (os_log_type_enabled(write3, OS_LOG_TYPE_FAULT))
              {
                [(REMSaveRequest *)v55 advanceForwardRecurrenceAfterNowAndCreateIncompleteCloneWithoutRecurrenceRulesAndSubtasks];
              }
            }
          }
        }

        else
        {
          recurrenceRules2 = [v12 recurrenceRules];
          write2 = [recurrenceRules2 firstObject];

          write4 = [*(v3 + 3368) write];
          if (os_log_type_enabled(write4, OS_LOG_TYPE_INFO))
          {
            objectID4 = [v12 objectID];
            isCompleted = [v12 isCompleted];
            objectID5 = [write2 objectID];
            iCalendarDescription = [write2 iCalendarDescription];
            v29 = MEMORY[0x1E696AD98];
            recurrenceRules3 = [v12 recurrenceRules];
            v31 = [v29 numberWithUnsignedInteger:{objc_msgSend(recurrenceRules3, "count")}];
            *buf = 138544386;
            v48 = objectID4;
            v49 = 1026;
            *v50 = isCompleted;
            allValues = v37;
            *&v50[4] = 2114;
            *&v50[6] = objectID5;
            v51 = 2114;
            v52 = iCalendarDescription;
            v53 = 2114;
            v54 = v31;
            _os_log_impl(&dword_19A0DB000, write4, OS_LOG_TYPE_INFO, "IncompleteRecurrenceClone: Skipping advanceForwardRecurrenceAfterNowAndCreateIncompleteCloneWithoutRecurrenceRulesAndSubtasks to advance forward date alarm for reminder, didn't meet conditions for hasRecurrenceRules {reminderID: %{public}@, isCompleted:%{public}i, recurrenceRuleID: %{public}@, recurrenceRule: %{public}@, ruleCount: %{public}@};", buf, 0x30u);

            rem_now = v38;
            self = selfCopy;

            v3 = 0x1E7506000;
          }

          v10 = v41;
        }

LABEL_25:

        ++v11;
      }

      while (v42 != v11);
      v42 = [allValues countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v42);
  }

  v33 = [v40 copy];
  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)advanceForwardRecurrenceAndCreateCompletedCloneWithoutRecurrenceRulesAndSubtasksAfterDate:(id)date
{
  v79 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v4 = 0x1E7506000uLL;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "CompletedRecurrenceClone: Started advanceForwardRecurrenceAndCreateCompletedCloneWithoutRecurrenceRulesAndSubtasksAfterDate", buf, 2u);
  }

  v60 = objc_opt_new();
  [(REMSaveRequest *)self preFetchDueDateDeltaAlertsForCompletedRecurrenceClone];
  [(REMSaveRequest *)self preFlightActionSaveAndUpdateParentsOfRecurrentSubtasksWithLogPrefix:@"CompletedRecurrenceClone"];
  v6 = +[REMLogStore write];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_INFO, "CompletedRecurrenceClone: Complete Duplicate and Advance Forward", buf, 2u);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  trackedReminderChangeItems = [(REMSaveRequest *)self trackedReminderChangeItems];
  allValues = [trackedReminderChangeItems allValues];

  obj = allValues;
  v68 = [allValues countByEnumeratingWithState:&v69 objects:v78 count:16];
  if (v68)
  {
    v67 = *v70;
    *&v9 = 138543618;
    v59 = v9;
    do
    {
      v10 = 0;
      do
      {
        if (*v70 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v69 + 1) + 8 * v10) valueForSaveRequest:{self, v59}];
        write = [*(v4 + 3368) write];
        if (os_log_type_enabled(write, OS_LOG_TYPE_INFO))
        {
          objectID = [v11 objectID];
          *buf = 138543362;
          v75 = objectID;
          _os_log_impl(&dword_19A0DB000, write, OS_LOG_TYPE_INFO, "CompletedRecurrenceClone: Performing check for isCompleted and has recurrenceRules {reminderID: %{public}@};", buf, 0xCu);
        }

        changedKeys = [v11 changedKeys];
        if (![changedKeys containsObject:@"completed"] || (objc_msgSend(v11, "isCompleted") & 1) == 0)
        {

LABEL_23:
          recurrenceRules = [v11 recurrenceRules];
          firstObject = [recurrenceRules firstObject];

          write2 = [*(v4 + 3368) write];
          if (!os_log_type_enabled(write2, OS_LOG_TYPE_INFO))
          {
            goto LABEL_26;
          }

          objectID2 = [v11 objectID];
          isCompleted = [v11 isCompleted];
          [firstObject objectID];
          v38 = v66 = v10;
          iCalendarDescription = [firstObject iCalendarDescription];
          v40 = MEMORY[0x1E696AD98];
          [v11 recurrenceRules];
          v41 = firstObject;
          v43 = v42 = self;
          v44 = [v40 numberWithUnsignedInteger:{objc_msgSend(v43, "count")}];
          *buf = 138544386;
          v75 = objectID2;
          v76 = 1026;
          *v77 = isCompleted;
          *&v77[4] = 2114;
          *&v77[6] = v38;
          *&v77[14] = 2114;
          *&v77[16] = iCalendarDescription;
          *&v77[24] = 2114;
          *&v77[26] = v44;
          _os_log_impl(&dword_19A0DB000, write2, OS_LOG_TYPE_INFO, "CompletedRecurrenceClone: Skipping advanceForwardRecurrenceAfterNowAndAndCreateCompletedCloneWithoutRecurrenceRulesAndSubtasks to advance forward date alarm for reminder, didn't meet conditions for isCompleted and hasRecurrenceRules {reminderID: %{public}@, isCompleted:%{public}i, recurrenceRuleID: %{public}@, recurrenceRule: %{public}@, ruleCount: %{public}@};", buf, 0x30u);

          v4 = 0x1E7506000;
          self = v42;
          firstObject = v41;

          v10 = v66;
LABEL_25:

          goto LABEL_26;
        }

        recurrenceRules2 = [v11 recurrenceRules];
        v16 = [recurrenceRules2 count];

        if (!v16)
        {
          goto LABEL_23;
        }

        if (!dateCopy || ([v11 objectID], v17 = objc_claimAutoreleasedReturnValue(), dateCopy[2](dateCopy, v17), firstObject = objc_claimAutoreleasedReturnValue(), v17, !firstObject))
        {
          firstObject = [MEMORY[0x1E695DF00] rem_now];
        }

        dueDateComponents = [v11 dueDateComponents];
        [v11 nextRecurrentAdvanceAmountForDateComponents:dueDateComponents afterDate:firstObject];
        v21 = v20;

        if (v21 <= 0.0)
        {
          write2 = [*(v4 + 3368) write];
          if (os_log_type_enabled(write2, OS_LOG_TYPE_FAULT))
          {
            objectID2 = [v11 objectID];
            *buf = v59;
            v75 = objectID2;
            v76 = 2048;
            *v77 = v21;
            _os_log_fault_impl(&dword_19A0DB000, write2, OS_LOG_TYPE_FAULT, "CompletedRecurrenceClone: Unable to clone recurrent reminder with dueDateAdvanceAmount < 0 {reminderID: %{public}@, dueDateAdvanceAmount: %f}", buf, 0x16u);
            goto LABEL_25;
          }
        }

        else
        {
          v62 = firstObject;
          v65 = v10;
          dueDateComponents2 = [v11 dueDateComponents];
          timeZone = [dueDateComponents2 timeZone];
          v24 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
          v25 = [timeZone isEqual:v24];

          if (v25)
          {
            defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
            dueDateComponents3 = [v11 dueDateComponents];
            v28 = MEMORY[0x1E695DF10];
            v61 = v11;
            dueDateComponents4 = [v11 dueDateComponents];
            v30 = [v28 rem_dateWithDateComponents:dueDateComponents4 timeZone:defaultTimeZone];

            v31 = [defaultTimeZone nextDaylightSavingTimeTransitionAfterDate:v30];
            v32 = v31;
            if (v31)
            {
              distantFuture = v31;
            }

            else
            {
              distantFuture = [MEMORY[0x1E695DF00] distantFuture];
            }

            v45 = distantFuture;

            [v45 timeIntervalSinceDate:v30];
            if (v46 < v21)
            {
              write3 = [*(v4 + 3368) write];
              if (os_log_type_enabled(write3, OS_LOG_TYPE_DEFAULT))
              {
                objectID3 = [v11 objectID];
                rem_stringRepresentation = [dueDateComponents3 rem_stringRepresentation];
                *buf = 138544386;
                v75 = objectID3;
                v76 = 2114;
                *v77 = defaultTimeZone;
                *&v77[8] = 2114;
                *&v77[10] = rem_stringRepresentation;
                *&v77[18] = 2114;
                *&v77[20] = v45;
                *&v77[28] = 2048;
                *&v77[30] = v21;
                _os_log_impl(&dword_19A0DB000, write3, OS_LOG_TYPE_DEFAULT, "CompletedRecurrenceClone: FYI we are advancing a GMT due date across a DST boundary, this user maybe impacted by an hour drift caused by loss of user original due date time zone. {reminderID: %{public}@, userTimeZone: %{public}@, dueDateComponents(before): %{public}@, nextDSTDate: %{public}@, dueDateAdvanceAmount: %f}", buf, 0x34u);
              }
            }

            v11 = v61;
          }

          write2 = +[REMReminder newObjectID];
          v50 = [v11 duplicateForRecurrenceUsingReminderID:write2];
          if (v50)
          {
            objectID4 = [v11 objectID];
            [v60 setObject:v50 forKeyedSubscript:objectID4];

            [v11 cleanupDuplicate:v50 markAsCompleted:1];
            [v11 setCompleted:0];
            recurrenceRules3 = [v11 recurrenceRules];
            firstObject = v62;
            [v11 advanceForwardToNextRecurrenceAfterDate:v62];
            displayDate = [v11 displayDate];
            date = [displayDate date];

            [v50 setAlternativeDisplayDateDateForCalendarToPreviousRecurrentDateBefore:date recurrenceRules:recurrenceRules3];
          }

          else
          {
            recurrenceRules3 = [*(v4 + 3368) write];
            firstObject = v62;
            if (os_log_type_enabled(recurrenceRules3, OS_LOG_TYPE_FAULT))
            {
              [(REMSaveRequest *)v73 advanceForwardRecurrenceAndCreateCompletedCloneWithoutRecurrenceRulesAndSubtasksAfterDate:v11];
            }
          }

          v10 = v65;
        }

LABEL_26:

        ++v10;
      }

      while (v68 != v10);
      v55 = [obj countByEnumeratingWithState:&v69 objects:v78 count:16];
      v68 = v55;
    }

    while (v55);
  }

  [(REMSaveRequest *)self setCloneCompletedRecurrentRemindersAtSave:0];
  v56 = [v60 copy];

  v57 = *MEMORY[0x1E69E9840];

  return v56;
}

- (id)_trackedAccountChangeItemForObjectID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    trackedAccountChangeItems = [(REMSaveRequest *)self trackedAccountChangeItems];
    v6 = [trackedAccountChangeItems objectForKeyedSubscript:dCopy];

    v7 = [v6 valueForSaveRequest:self];
  }

  else
  {
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [REMListSectionsDataView fetchListSectionWithObjectID:error:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
    v7 = 0;
  }

  return v7;
}

- (void)_trackAccountChangeItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (!itemCopy)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest addListWithName:toAccountChangeItem:listObjectID:];
    }

    v11 = "accountChangeItem";
    goto LABEL_7;
  }

  objectID = [itemCopy objectID];

  if (objectID)
  {
    v7 = [[REMSaveRequestTrackedValueContainer alloc] initWithValue:v5];
    trackedAccountChangeItems = [(REMSaveRequest *)self trackedAccountChangeItems];
    objectID2 = [v5 objectID];
    [trackedAccountChangeItems setObject:v7 forKeyedSubscript:objectID2];

    goto LABEL_11;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackAccountChangeItem:];
  }

  objectID3 = [v5 objectID];

  if (!objectID3)
  {
    v11 = "accountChangeItem.objectID";
LABEL_7:
    NSLog(&cfstr_SIsUnexpectedl.isa, v11);
  }

LABEL_11:
}

- (void)_updateTrackedAccountChangeItem:(id)item withObjectID:(id)d
{
  itemCopy = item;
  dCopy = d;
  if (!itemCopy)
  {
    v15 = +[REMLogStore write];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest addListWithName:toAccountChangeItem:listObjectID:];
    }

    v16 = "accountChangeItem";
    goto LABEL_15;
  }

  objectID = [itemCopy objectID];

  if (objectID)
  {
    if (dCopy)
    {
      trackedAccountChangeItems = [(REMSaveRequest *)self trackedAccountChangeItems];
      objectID2 = [itemCopy objectID];
      v11 = [trackedAccountChangeItems objectForKeyedSubscript:objectID2];

      trackedAccountChangeItems2 = [(REMSaveRequest *)self trackedAccountChangeItems];
      objectID3 = [itemCopy objectID];
      [trackedAccountChangeItems2 removeObjectForKey:objectID3];

      [itemCopy setObjectID:dCopy];
      trackedAccountChangeItems3 = [(REMSaveRequest *)self trackedAccountChangeItems];
      [trackedAccountChangeItems3 setObject:v11 forKeyedSubscript:dCopy];

      goto LABEL_16;
    }

    v19 = +[REMLogStore write];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _updateTrackedAccountChangeItem:withObjectID:];
    }

    v16 = "newObjectID";
LABEL_15:
    NSLog(&cfstr_SIsUnexpectedl.isa, v16);
    goto LABEL_16;
  }

  v17 = +[REMLogStore write];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackAccountChangeItem:];
  }

  objectID4 = [itemCopy objectID];

  if (!objectID4)
  {
    v16 = "accountChangeItem.objectID";
    goto LABEL_15;
  }

LABEL_16:
}

- (id)_trackedListChangeItemForObjectID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    trackedListChangeItems = [(REMSaveRequest *)self trackedListChangeItems];
    v6 = [trackedListChangeItems objectForKeyedSubscript:dCopy];

    v7 = [v6 valueForSaveRequest:self];
  }

  else
  {
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [REMListSectionsDataView fetchListSectionWithObjectID:error:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
    v7 = 0;
  }

  return v7;
}

- (void)_trackListChangeItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (!itemCopy)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _updateAccountWithListChangeItem:];
    }

    v11 = "listChangeItem";
    goto LABEL_7;
  }

  objectID = [itemCopy objectID];

  if (objectID)
  {
    v7 = [[REMSaveRequestTrackedValueContainer alloc] initWithValue:v5];
    trackedListChangeItems = [(REMSaveRequest *)self trackedListChangeItems];
    objectID2 = [v5 objectID];
    [trackedListChangeItems setObject:v7 forKeyedSubscript:objectID2];

    goto LABEL_11;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackListChangeItem:];
  }

  objectID3 = [v5 objectID];

  if (!objectID3)
  {
    v11 = "listChangeItem.objectID";
LABEL_7:
    NSLog(&cfstr_SIsUnexpectedl.isa, v11);
  }

LABEL_11:
}

- (void)_updateTrackedListChangeItem:(id)item withObjectID:(id)d
{
  itemCopy = item;
  dCopy = d;
  if (!itemCopy)
  {
    v15 = +[REMLogStore write];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _updateAccountWithListChangeItem:];
    }

    v16 = "listChangeItem";
    goto LABEL_15;
  }

  objectID = [itemCopy objectID];

  if (objectID)
  {
    if (dCopy)
    {
      trackedListChangeItems = [(REMSaveRequest *)self trackedListChangeItems];
      objectID2 = [itemCopy objectID];
      v11 = [trackedListChangeItems objectForKeyedSubscript:objectID2];

      trackedListChangeItems2 = [(REMSaveRequest *)self trackedListChangeItems];
      objectID3 = [itemCopy objectID];
      [trackedListChangeItems2 removeObjectForKey:objectID3];

      [itemCopy setObjectID:dCopy];
      trackedListChangeItems3 = [(REMSaveRequest *)self trackedListChangeItems];
      [trackedListChangeItems3 setObject:v11 forKeyedSubscript:dCopy];

      goto LABEL_16;
    }

    v19 = +[REMLogStore write];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _updateTrackedAccountChangeItem:withObjectID:];
    }

    v16 = "newObjectID";
LABEL_15:
    NSLog(&cfstr_SIsUnexpectedl.isa, v16);
    goto LABEL_16;
  }

  v17 = +[REMLogStore write];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackListChangeItem:];
  }

  objectID4 = [itemCopy objectID];

  if (!objectID4)
  {
    v16 = "listChangeItem.objectID";
    goto LABEL_15;
  }

LABEL_16:
}

- (id)_trackedSmartListChangeItemForObjectID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    trackedSmartListChangeItems = [(REMSaveRequest *)self trackedSmartListChangeItems];
    v6 = [trackedSmartListChangeItems objectForKeyedSubscript:dCopy];

    v7 = [v6 valueForSaveRequest:self];
  }

  else
  {
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [REMListSectionsDataView fetchListSectionWithObjectID:error:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
    v7 = 0;
  }

  return v7;
}

- (void)_trackSmartListChangeItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (!itemCopy)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackSmartListChangeItem:];
    }

    v11 = "smartListChangeItem";
    goto LABEL_7;
  }

  objectID = [itemCopy objectID];

  if (objectID)
  {
    v7 = [[REMSaveRequestTrackedValueContainer alloc] initWithValue:v5];
    trackedSmartListChangeItems = [(REMSaveRequest *)self trackedSmartListChangeItems];
    objectID2 = [v5 objectID];
    [trackedSmartListChangeItems setObject:v7 forKeyedSubscript:objectID2];

    goto LABEL_11;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackSmartListChangeItem:];
  }

  objectID3 = [v5 objectID];

  if (!objectID3)
  {
    v11 = "smartListChangeItem.objectID";
LABEL_7:
    NSLog(&cfstr_SIsUnexpectedl.isa, v11);
  }

LABEL_11:
}

- (void)_updateTrackedSmartListChangeItem:(id)item withObjectID:(id)d
{
  itemCopy = item;
  dCopy = d;
  if (!itemCopy)
  {
    v15 = +[REMLogStore write];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackSmartListChangeItem:];
    }

    v16 = "smartListChangeItem";
    goto LABEL_15;
  }

  objectID = [itemCopy objectID];

  if (objectID)
  {
    if (dCopy)
    {
      trackedSmartListChangeItems = [(REMSaveRequest *)self trackedSmartListChangeItems];
      objectID2 = [itemCopy objectID];
      v11 = [trackedSmartListChangeItems objectForKeyedSubscript:objectID2];

      trackedSmartListChangeItems2 = [(REMSaveRequest *)self trackedSmartListChangeItems];
      objectID3 = [itemCopy objectID];
      [trackedSmartListChangeItems2 removeObjectForKey:objectID3];

      [itemCopy setObjectID:dCopy];
      trackedSmartListChangeItems3 = [(REMSaveRequest *)self trackedSmartListChangeItems];
      [trackedSmartListChangeItems3 setObject:v11 forKeyedSubscript:dCopy];

      goto LABEL_16;
    }

    v19 = +[REMLogStore write];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _updateTrackedAccountChangeItem:withObjectID:];
    }

    v16 = "newObjectID";
LABEL_15:
    NSLog(&cfstr_SIsUnexpectedl.isa, v16);
    goto LABEL_16;
  }

  v17 = +[REMLogStore write];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackSmartListChangeItem:];
  }

  objectID4 = [itemCopy objectID];

  if (!objectID4)
  {
    v16 = "smartListChangeItem.objectID";
    goto LABEL_15;
  }

LABEL_16:
}

- (id)_trackedTemplateChangeItemForObjectID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    trackedTemplateChangeItems = [(REMSaveRequest *)self trackedTemplateChangeItems];
    v6 = [trackedTemplateChangeItems objectForKeyedSubscript:dCopy];

    v7 = [v6 valueForSaveRequest:self];
  }

  else
  {
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [REMListSectionsDataView fetchListSectionWithObjectID:error:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
    v7 = 0;
  }

  return v7;
}

- (void)_trackTemplateChangeItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (!itemCopy)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackTemplateChangeItem:];
    }

    v11 = "templateChangeItem";
    goto LABEL_7;
  }

  objectID = [itemCopy objectID];

  if (objectID)
  {
    v7 = [[REMSaveRequestTrackedValueContainer alloc] initWithValue:v5];
    trackedTemplateChangeItems = [(REMSaveRequest *)self trackedTemplateChangeItems];
    objectID2 = [v5 objectID];
    [trackedTemplateChangeItems setObject:v7 forKeyedSubscript:objectID2];

    goto LABEL_11;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackTemplateChangeItem:];
  }

  objectID3 = [v5 objectID];

  if (!objectID3)
  {
    v11 = "templateChangeItem.objectID";
LABEL_7:
    NSLog(&cfstr_SIsUnexpectedl.isa, v11);
  }

LABEL_11:
}

- (void)_trackListSectionChangeItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (!itemCopy)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackListSectionChangeItem:];
    }

    v11 = "listSectionChangeItem";
    goto LABEL_7;
  }

  objectID = [itemCopy objectID];

  if (objectID)
  {
    v7 = [[REMSaveRequestTrackedValueContainer alloc] initWithValue:v5];
    trackedListSectionChangeItems = [(REMSaveRequest *)self trackedListSectionChangeItems];
    objectID2 = [v5 objectID];
    [trackedListSectionChangeItems setObject:v7 forKeyedSubscript:objectID2];

    goto LABEL_11;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackListSectionChangeItem:];
  }

  objectID3 = [v5 objectID];

  if (!objectID3)
  {
    v11 = "listSectionChangeItem.objectID";
LABEL_7:
    NSLog(&cfstr_SIsUnexpectedl.isa, v11);
  }

LABEL_11:
}

- (id)_trackedListSectionChangeItemForObjectID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    trackedListSectionChangeItems = [(REMSaveRequest *)self trackedListSectionChangeItems];
    v6 = [trackedListSectionChangeItems objectForKeyedSubscript:dCopy];

    v7 = [v6 valueForSaveRequest:self];
  }

  else
  {
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [REMListSectionsDataView fetchListSectionWithObjectID:error:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
    v7 = 0;
  }

  return v7;
}

- (void)_trackSmartListSectionChangeItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (!itemCopy)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackSmartListSectionChangeItem:];
    }

    v11 = "smartListSectionChangeItem";
    goto LABEL_7;
  }

  objectID = [itemCopy objectID];

  if (objectID)
  {
    v7 = [[REMSaveRequestTrackedValueContainer alloc] initWithValue:v5];
    trackedSmartListSectionChangeItems = [(REMSaveRequest *)self trackedSmartListSectionChangeItems];
    objectID2 = [v5 objectID];
    [trackedSmartListSectionChangeItems setObject:v7 forKeyedSubscript:objectID2];

    goto LABEL_11;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackSmartListSectionChangeItem:];
  }

  objectID3 = [v5 objectID];

  if (!objectID3)
  {
    v11 = "smartListSectionChangeItem.objectID";
LABEL_7:
    NSLog(&cfstr_SIsUnexpectedl.isa, v11);
  }

LABEL_11:
}

- (id)_trackedSmartListSectionChangeItemForObjectID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    trackedSmartListSectionChangeItems = [(REMSaveRequest *)self trackedSmartListSectionChangeItems];
    v6 = [trackedSmartListSectionChangeItems objectForKeyedSubscript:dCopy];

    v7 = [v6 valueForSaveRequest:self];
  }

  else
  {
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [REMListSectionsDataView fetchListSectionWithObjectID:error:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
    v7 = 0;
  }

  return v7;
}

- (void)_trackTemplateSectionChangeItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (!itemCopy)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackTemplateSectionChangeItem:];
    }

    v11 = "templateSectionChangeItem";
    goto LABEL_7;
  }

  objectID = [itemCopy objectID];

  if (objectID)
  {
    v7 = [[REMSaveRequestTrackedValueContainer alloc] initWithValue:v5];
    trackedTemplateSectionChangeItems = [(REMSaveRequest *)self trackedTemplateSectionChangeItems];
    objectID2 = [v5 objectID];
    [trackedTemplateSectionChangeItems setObject:v7 forKeyedSubscript:objectID2];

    goto LABEL_11;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackTemplateSectionChangeItem:];
  }

  objectID3 = [v5 objectID];

  if (!objectID3)
  {
    v11 = "templateSectionChangeItem.objectID";
LABEL_7:
    NSLog(&cfstr_SIsUnexpectedl.isa, v11);
  }

LABEL_11:
}

- (id)_trackedTemplateSectionChangeItemForObjectID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    trackedTemplateSectionChangeItems = [(REMSaveRequest *)self trackedTemplateSectionChangeItems];
    v6 = [trackedTemplateSectionChangeItems objectForKeyedSubscript:dCopy];

    v7 = [v6 valueForSaveRequest:self];
  }

  else
  {
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [REMListSectionsDataView fetchListSectionWithObjectID:error:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
    v7 = 0;
  }

  return v7;
}

- (id)_trackedReminderChangeItemForObjectID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    trackedReminderChangeItems = [(REMSaveRequest *)self trackedReminderChangeItems];
    v6 = [trackedReminderChangeItems objectForKeyedSubscript:dCopy];

    v7 = [v6 valueForSaveRequest:self];
  }

  else
  {
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [REMListSectionsDataView fetchListSectionWithObjectID:error:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
    v7 = 0;
  }

  return v7;
}

- (void)_trackReminderChangeItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (!itemCopy)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackReminderChangeItem:];
    }

    v11 = "reminderChangeItem";
    goto LABEL_7;
  }

  objectID = [itemCopy objectID];

  if (objectID)
  {
    v7 = [[REMSaveRequestTrackedValueContainer alloc] initWithValue:v5];
    trackedReminderChangeItems = [(REMSaveRequest *)self trackedReminderChangeItems];
    objectID2 = [v5 objectID];
    [trackedReminderChangeItems setObject:v7 forKeyedSubscript:objectID2];

    goto LABEL_11;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackReminderChangeItem:];
  }

  objectID3 = [v5 objectID];

  if (!objectID3)
  {
    v11 = "reminderChangeItem.objectID";
LABEL_7:
    NSLog(&cfstr_SIsUnexpectedl.isa, v11);
  }

LABEL_11:
}

- (void)_updateTrackedReminderChangeItem:(id)item withObjectID:(id)d
{
  itemCopy = item;
  dCopy = d;
  if (!itemCopy)
  {
    v15 = +[REMLogStore write];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackReminderChangeItem:];
    }

    v16 = "reminderChangeItem";
    goto LABEL_15;
  }

  objectID = [itemCopy objectID];

  if (objectID)
  {
    if (dCopy)
    {
      trackedReminderChangeItems = [(REMSaveRequest *)self trackedReminderChangeItems];
      objectID2 = [itemCopy objectID];
      v11 = [trackedReminderChangeItems objectForKeyedSubscript:objectID2];

      trackedReminderChangeItems2 = [(REMSaveRequest *)self trackedReminderChangeItems];
      objectID3 = [itemCopy objectID];
      [trackedReminderChangeItems2 removeObjectForKey:objectID3];

      [itemCopy setObjectID:dCopy];
      trackedReminderChangeItems3 = [(REMSaveRequest *)self trackedReminderChangeItems];
      [trackedReminderChangeItems3 setObject:v11 forKeyedSubscript:dCopy];

      goto LABEL_16;
    }

    v19 = +[REMLogStore write];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _updateTrackedAccountChangeItem:withObjectID:];
    }

    v16 = "newObjectID";
LABEL_15:
    NSLog(&cfstr_SIsUnexpectedl.isa, v16);
    goto LABEL_16;
  }

  v17 = +[REMLogStore write];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackReminderChangeItem:];
  }

  objectID4 = [itemCopy objectID];

  if (!objectID4)
  {
    v16 = "reminderChangeItem.objectID";
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_trackAccountCapabilities:(id)capabilities forObjectID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  capabilitiesCopy = capabilities;
  dCopy = d;
  if (!capabilitiesCopy)
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackAccountCapabilities:forObjectID:];
    }

    v12 = "accountCapabilities";
    goto LABEL_12;
  }

  v8 = +[REMLogStore write];
  v9 = v8;
  if (!dCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [REMListSectionsDataView fetchListSectionWithObjectID:error:];
    }

    v12 = "objectID";
LABEL_12:
    NSLog(&cfstr_SIsUnexpectedl.isa, v12);
    goto LABEL_13;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    selfCopy = self;
    v16 = 2112;
    v17 = capabilitiesCopy;
    v18 = 2112;
    v19 = dCopy;
    _os_log_debug_impl(&dword_19A0DB000, v9, OS_LOG_TYPE_DEBUG, "_trackAccountCapabilities {SaveRequest: %@ accountCapabilities: %@ objectID: %@", buf, 0x20u);
  }

  trackedAccountCapabilities = [(REMSaveRequest *)self trackedAccountCapabilities];
  [trackedAccountCapabilities setObject:capabilitiesCopy forKeyedSubscript:dCopy];

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];
}

- (id)_trackedAccountCapabilitiesForObjectID:(id)d
{
  dCopy = d;
  v5 = +[REMLogStore write];
  v6 = v5;
  if (dCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [REMSaveRequest _trackedAccountCapabilitiesForObjectID:];
    }

    trackedAccountCapabilities = [(REMSaveRequest *)self trackedAccountCapabilities];
    v8 = [trackedAccountCapabilities objectForKeyedSubscript:dCopy];

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v11 = +[REMLogStore write];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [REMSaveRequest _trackedAccountCapabilitiesForObjectID:];
      }

      v9 = [[REMAccountCapabilities alloc] initWithAccountType:0];
    }

    v10 = v9;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [REMListSectionsDataView fetchListSectionWithObjectID:error:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
    v10 = 0;
  }

  return v10;
}

- (id)_copyReminder:(id)reminder toListChangeItem:(id)item
{
  reminderCopy = reminder;
  itemCopy = item;
  v8 = itemCopy;
  if (!reminderCopy)
  {
    v20 = +[REMLogStore write];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _copyReminder:toListChangeItem:];
    }

    v21 = "original";
    goto LABEL_14;
  }

  if (!itemCopy)
  {
    v22 = +[REMLogStore write];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _updateAccountWithListChangeItem:];
    }

    v21 = "listChangeItem";
LABEL_14:
    NSLog(&cfstr_SIsUnexpectedl.isa, v21);
    v19 = 0;
    goto LABEL_15;
  }

  saveRequest = [itemCopy saveRequest];

  v10 = MEMORY[0x1E695D930];
  if (saveRequest != self)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    saveRequest2 = [v8 saveRequest];
    [v11 raise:v12 format:{@"List has incorrect save request {original: %@, saveRequest: %@, expectedSaveRequest: %@}", v8, saveRequest2, self}];
  }

  if ([v8 isGroup])
  {
    [MEMORY[0x1E695DF30] raise:*v10 format:{@"listChangeItem is a group and adding reminder to group is not currently supported {listChangeItem: %@}", v8}];
  }

  v14 = [REMReminderChangeItem alloc];
  storage = [reminderCopy storage];
  account = [reminderCopy account];
  capabilities = [account capabilities];
  v18 = [(REMReminderChangeItem *)v14 initWithSaveRequest:self storage:storage accountCapabilities:capabilities observeInitialValues:0];

  v19 = [[REMReminderChangeItem alloc] initWithReminderChangeItem:v18 insertIntoListChangeItem:v8];
  [(REMSaveRequest *)self _trackReminderChangeItem:v19];

LABEL_15:
  return v19;
}

- (id)_copyReminder:(id)reminder toReminderSubtaskContextChangeItem:(id)item
{
  reminderCopy = reminder;
  itemCopy = item;
  v8 = itemCopy;
  if (!reminderCopy)
  {
    v20 = +[REMLogStore write];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _copyReminder:toListChangeItem:];
    }

    v21 = "original";
    goto LABEL_12;
  }

  if (!itemCopy)
  {
    v22 = +[REMLogStore write];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _copyReminder:toReminderSubtaskContextChangeItem:];
    }

    v21 = "parentReminderSubtaskContextChangeItem";
LABEL_12:
    NSLog(&cfstr_SIsUnexpectedl.isa, v21);
    v19 = 0;
    goto LABEL_13;
  }

  reminderChangeItem = [itemCopy reminderChangeItem];
  saveRequest = [reminderChangeItem saveRequest];

  if (saveRequest != self)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    saveRequest2 = [reminderChangeItem saveRequest];
    [v11 raise:v12 format:{@"Parent reminder has incorrect save request {original: %@, saveRequest: %@, expectedSaveRequest: %@}", reminderChangeItem, saveRequest2, self}];
  }

  v14 = [REMReminderChangeItem alloc];
  storage = [reminderCopy storage];
  account = [reminderCopy account];
  capabilities = [account capabilities];
  v18 = [(REMReminderChangeItem *)v14 initWithSaveRequest:self storage:storage accountCapabilities:capabilities observeInitialValues:0];

  v19 = [[REMReminderChangeItem alloc] initWithReminderChangeItem:v18 insertIntoParentReminderSubtaskContextChangeItem:v8];
  [(REMSaveRequest *)self _trackReminderChangeItem:v19];

LABEL_13:
  return v19;
}

- (id)_copyReminderChangeItem:(id)item toListChangeItem:(id)changeItem
{
  itemCopy = item;
  changeItemCopy = changeItem;
  v8 = changeItemCopy;
  if (!itemCopy)
  {
    v19 = +[REMLogStore write];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _copyReminder:toListChangeItem:];
    }

    v20 = "original";
    goto LABEL_16;
  }

  if (!changeItemCopy)
  {
    v21 = +[REMLogStore write];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _updateAccountWithListChangeItem:];
    }

    v20 = "listChangeItem";
LABEL_16:
    NSLog(&cfstr_SIsUnexpectedl.isa, v20);
    v18 = 0;
    goto LABEL_17;
  }

  saveRequest = [itemCopy saveRequest];

  v10 = MEMORY[0x1E695D930];
  if (saveRequest != self)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    saveRequest2 = [itemCopy saveRequest];
    [v11 raise:v12 format:{@"Original reminder has incorrect save request {original: %@, saveRequest: %@, expectedSaveRequest: %@}", itemCopy, saveRequest2, self}];
  }

  saveRequest3 = [v8 saveRequest];

  if (saveRequest3 != self)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *v10;
    saveRequest4 = [v8 saveRequest];
    [v15 raise:v16 format:{@"List has incorrect save request {original: %@, saveRequest: %@, expectedSaveRequest: %@}", v8, saveRequest4, self}];
  }

  if ([v8 isGroup])
  {
    [MEMORY[0x1E695DF30] raise:*v10 format:{@"listChangeItem is a group and adding reminder to group is not currently supported {listChangeItem: %@}", v8}];
  }

  v18 = [[REMReminderChangeItem alloc] initWithReminderChangeItem:itemCopy insertIntoListChangeItem:v8];
  [(REMSaveRequest *)self _trackReminderChangeItem:v18];
LABEL_17:

  return v18;
}

- (id)_copyReminderChangeItem:(id)item toReminderSubtaskContextChangeItem:(id)changeItem
{
  itemCopy = item;
  changeItemCopy = changeItem;
  v8 = changeItemCopy;
  if (!itemCopy)
  {
    v20 = +[REMLogStore write];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _copyReminder:toListChangeItem:];
    }

    v21 = "original";
    goto LABEL_14;
  }

  if (!changeItemCopy)
  {
    v22 = +[REMLogStore write];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _copyReminder:toReminderSubtaskContextChangeItem:];
    }

    v21 = "parentReminderSubtaskContextChangeItem";
LABEL_14:
    NSLog(&cfstr_SIsUnexpectedl.isa, v21);
    v19 = 0;
    goto LABEL_15;
  }

  saveRequest = [itemCopy saveRequest];

  v10 = MEMORY[0x1E695D930];
  if (saveRequest != self)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    saveRequest2 = [itemCopy saveRequest];
    [v11 raise:v12 format:{@"Original reminder has incorrect save request {original: %@, saveRequest: %@, expectedSaveRequest: %@}", itemCopy, saveRequest2, self}];
  }

  reminderChangeItem = [v8 reminderChangeItem];
  saveRequest3 = [reminderChangeItem saveRequest];

  if (saveRequest3 != self)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *v10;
    saveRequest4 = [reminderChangeItem saveRequest];
    [v16 raise:v17 format:{@"Parent reminder has incorrect save request {original: %@, saveRequest: %@, expectedSaveRequest: %@}", reminderChangeItem, saveRequest4, self}];
  }

  v19 = [[REMReminderChangeItem alloc] initWithReminderChangeItem:itemCopy insertIntoParentReminderSubtaskContextChangeItem:v8];
  [(REMSaveRequest *)self _trackReminderChangeItem:v19];

LABEL_15:
  return v19;
}

- (REMSaveRequestNotifyChangeDelegate)notifyChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_notifyChangeDelegate);

  return WeakRetained;
}

- (id)_addTestOnlyPrimaryCKAccountWithName:(id)name accountObjectID:(id)d
{
  dCopy = d;
  nameCopy = name;
  v8 = [(REMSaveRequest *)self __addAccountWithType:_auto_REMAccountTypeForPrimaryCloudKit() name:nameCopy accountObjectID:dCopy];

  return v8;
}

- (id)_addTestOnlyExtraPrimaryCKAccountWithName:(id)name accountObjectID:(id)d
{
  dCopy = d;
  nameCopy = name;
  v8 = [(REMSaveRequest *)self __addAccountWithType:_auto_REMAccountTypeForPrimaryCloudKit() name:nameCopy accountObjectID:dCopy];

  storage = [v8 storage];
  [storage _setIsAddingExtraPrimaryCKAccountForTesting:1];

  return v8;
}

- (id)__addAccountWithType:(int64_t)type name:(id)name accountObjectID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v10 = dCopy;
  if (nameCopy)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "name");
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v10 = +[REMAccount newObjectID];
LABEL_3:
  v11 = [[REMAccountChangeItem alloc] initWithObjectID:v10 type:type name:nameCopy insertIntoSaveRequest:self];
  [(REMSaveRequest *)self _trackAccountChangeItem:v11];

  return v11;
}

- (id)addCustomSmartListWithName:(id)name toListSublistContextChangeItem:(id)item smartListObjectID:(id)d
{
  nameCopy = name;
  itemCopy = item;
  dCopy = d;
  if (nameCopy)
  {
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "name");
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "listSublistContextChangeItem");
LABEL_3:
  listChangeItem = [itemCopy listChangeItem];
  v12 = [(REMSaveRequest *)self _updateAccountWithListChangeItem:listChangeItem];
  saveRequest = [v12 saveRequest];

  v14 = MEMORY[0x1E695D930];
  if (saveRequest != self)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D930];
    [v12 saveRequest];
    v18 = v17 = v14;
    [v15 raise:v16 format:{@"accountChangeItem (%@) has incorrect saveRequest (%@). Expected %@", v12, v18, self}];

    v14 = v17;
  }

  capabilities = [v12 capabilities];
  supportsCustomSmartLists = [capabilities supportsCustomSmartLists];

  if ((supportsCustomSmartLists & 1) == 0)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *v14;
    objectID = [v12 objectID];
    [v21 raise:v22 format:{@"Cannot add CSL to sublist context because the account does not support it {accountID: %@}", objectID}];
  }

  if (!dCopy)
  {
    dCopy = +[REMSmartList newObjectID];
  }

  v24 = [[REMSmartListChangeItem alloc] initWithCustomSmartListObjectID:dCopy insertIntoListSublistContextChangeItem:itemCopy];
  [(REMSaveRequest *)self _trackSmartListChangeItem:v24];
  [(REMSmartListChangeItem *)v24 setName:nameCopy];

  return v24;
}

- (void)updateAccount:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateAccount:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateAccountWithListChangeItem:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateAccountWithListChangeItem:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addGroupWithName:toAccountGroupContextChangeItem:groupObjectID:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addListWithName:toAccountChangeItem:listObjectID:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addListUsingTemplate:(void *)a1 toAccountChangeItem:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)addListUsingTemplate:(void *)a1 toAccountChangeItem:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)addListUsingPublicTemplateWithREMListRepresentation:(void *)a1 toAccountChangeItem:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)addListUsingPublicTemplateWithREMListRepresentation:(void *)a1 toAccountChangeItem:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateList:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateList:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateListStorage:accountCapabilities:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateListWithReminderChangeItem:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateListWithReminderChangeItem:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateSmartList:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateSmartList:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateTemplate:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateTemplate:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addReminderWithTitle:toListChangeItem:reminderObjectID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = +[REMLogStore write];
  if (OUTLINED_FUNCTION_7_0(v1))
  {
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_1_5();
    _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)addReminderWithTitle:toListChangeItem:reminderObjectID:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = +[REMLogStore write];
  if (OUTLINED_FUNCTION_7_0(v1))
  {
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_1_5();
    _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)addReminderWithTitle:toReminderSubtaskContextChangeItem:reminderObjectID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = +[REMLogStore write];
  if (OUTLINED_FUNCTION_7_0(v1))
  {
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_1_5();
    _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)addReminderWithTitle:toReminderSubtaskContextChangeItem:reminderObjectID:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = +[REMLogStore write];
  if (OUTLINED_FUNCTION_7_0(v1))
  {
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_1_5();
    _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)updateReminder:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateReminder:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addListSectionWithDisplayName:toListSectionContextChangeItem:listSectionObjectID:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateListSection:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addSmartListSectionWithDisplayName:toSmartListSectionContextChangeItem:smartListSectionObjectID:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateSmartListSection:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addTemplateSectionWithDisplayName:toTemplateSectionContextChangeItem:templateSectionObjectID:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateTemplateSection:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)preFlightActionSaveAndUpdateParentsOfRecurrentSubtasksWithLogPrefix:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_19A0DB000, v1, OS_LOG_TYPE_ERROR, "%{public}@: Preflight -  Error fetching parentsOfRecurrentSubtasks {error: %@}", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)advanceForwardRecurrenceAfterNowAndCreateIncompleteCloneWithoutRecurrenceRulesAndSubtasks
{
  v4 = [OUTLINED_FUNCTION_0_10(self a2)];
  *v3 = 138543362;
  *v2 = v4;
  OUTLINED_FUNCTION_1_5();
  _os_log_fault_impl(v5, v6, v7, v8, v3, 0xCu);
}

- (void)advanceForwardRecurrenceAndCreateCompletedCloneWithoutRecurrenceRulesAndSubtasksAfterDate:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_10(a1 a2)];
  *v3 = 138543362;
  *v2 = v4;
  OUTLINED_FUNCTION_1_5();
  _os_log_fault_impl(v5, v6, v7, v8, v3, 0xCu);
}

- (void)_trackAccountChangeItem:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateTrackedAccountChangeItem:withObjectID:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_trackListChangeItem:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_trackSmartListChangeItem:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_trackSmartListChangeItem:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_trackTemplateChangeItem:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_trackTemplateChangeItem:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_trackListSectionChangeItem:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_trackListSectionChangeItem:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_trackSmartListSectionChangeItem:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_trackSmartListSectionChangeItem:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_trackTemplateSectionChangeItem:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_trackTemplateSectionChangeItem:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_trackReminderChangeItem:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_trackReminderChangeItem:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_trackAccountCapabilities:forObjectID:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_trackedAccountCapabilitiesForObjectID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_19A0DB000, v1, OS_LOG_TYPE_DEBUG, "_trackedAccountCapabilitiesForObjectID {SaveRequest: %@ objectID: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_trackedAccountCapabilitiesForObjectID:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_FAULT, "Don't have account capabilities for {objectID: %@}", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_copyReminder:toListChangeItem:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_copyReminder:toReminderSubtaskContextChangeItem:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

@end