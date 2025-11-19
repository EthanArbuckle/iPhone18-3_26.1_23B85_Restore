@interface REMSaveRequest
- (BOOL)_changeItemsAreAllEmpty;
- (BOOL)saveSynchronouslyWithError:(id *)a3;
- (BOOL)updateReminderChangeItem:(id)a3 fromICSData:(id)a4 isNew:(BOOL)a5 withOptions:(id)a6 error:(id *)a7;
- (REMSaveRequest)initWithStore:(id)a3;
- (REMSaveRequestNotifyChangeDelegate)notifyChangeDelegate;
- (id)__addAccountWithType:(int64_t)a3 name:(id)a4 accountObjectID:(id)a5;
- (id)_addTestOnlyExtraPrimaryCKAccountWithName:(id)a3 accountObjectID:(id)a4;
- (id)_addTestOnlyPrimaryCKAccountWithName:(id)a3 accountObjectID:(id)a4;
- (id)_copyReminder:(id)a3 toListChangeItem:(id)a4;
- (id)_copyReminder:(id)a3 toReminderSubtaskContextChangeItem:(id)a4;
- (id)_copyReminderChangeItem:(id)a3 toListChangeItem:(id)a4;
- (id)_copyReminderChangeItem:(id)a3 toReminderSubtaskContextChangeItem:(id)a4;
- (id)_iCalendarDataFromICSTodoItem:(id)a3 icsCalendar:(id)a4;
- (id)_trackedAccountCapabilitiesForObjectID:(id)a3;
- (id)_trackedAccountChangeItemForObjectID:(id)a3;
- (id)_trackedListChangeItemForObjectID:(id)a3;
- (id)_trackedListSectionChangeItemForObjectID:(id)a3;
- (id)_trackedReminderChangeItemForObjectID:(id)a3;
- (id)_trackedSmartListChangeItemForObjectID:(id)a3;
- (id)_trackedSmartListSectionChangeItemForObjectID:(id)a3;
- (id)_trackedTemplateChangeItemForObjectID:(id)a3;
- (id)_trackedTemplateSectionChangeItemForObjectID:(id)a3;
- (id)_updateAccountWithListChangeItem:(id)a3;
- (id)_updateListStorage:(id)a3 accountCapabilities:(id)a4;
- (id)_updateListWithReminderChangeItem:(id)a3;
- (id)addCustomSmartListWithName:(id)a3 toAccountChangeItem:(id)a4 smartListObjectID:(id)a5;
- (id)addCustomSmartListWithName:(id)a3 toListSublistContextChangeItem:(id)a4 smartListObjectID:(id)a5;
- (id)addGroupWithName:(id)a3 toAccountGroupContextChangeItem:(id)a4 groupObjectID:(id)a5;
- (id)addListSectionWithDisplayName:(id)a3 toListSectionContextChangeItem:(id)a4 listSectionObjectID:(id)a5;
- (id)addListUsingPublicTemplateWithREMListRepresentation:(id)a3 toAccountChangeItem:(id)a4;
- (id)addListUsingTemplate:(id)a3 toAccountChangeItem:(id)a4;
- (id)addListWithName:(id)a3 toAccountChangeItem:(id)a4 listObjectID:(id)a5;
- (id)addListWithName:(id)a3 toListSublistContextChangeItem:(id)a4 listObjectID:(id)a5;
- (id)addReminderWithTitle:(id)a3 toListChangeItem:(id)a4 reminderObjectID:(id)a5;
- (id)addReminderWithTitle:(id)a3 toReminderSubtaskContextChangeItem:(id)a4 reminderObjectID:(id)a5;
- (id)addSmartListSectionWithDisplayName:(id)a3 toSmartListSectionContextChangeItem:(id)a4 smartListSectionObjectID:(id)a5;
- (id)addTemplateSectionWithDisplayName:(id)a3 toTemplateSectionContextChangeItem:(id)a4 templateSectionObjectID:(id)a5;
- (id)addTemplateWithName:(id)a3 configuration:(id)a4 toAccountChangeItem:(id)a5;
- (id)addTemplateWithName:(id)a3 configuration:(id)a4 toAccountChangeItem:(id)a5 templateObjectID:(id)a6;
- (id)advanceForwardRecurrenceAfterNowAndCreateIncompleteCloneWithoutRecurrenceRulesAndSubtasks;
- (id)advanceForwardRecurrenceAndCreateCompletedCloneWithoutRecurrenceRulesAndSubtasksAfterDate:(id)a3;
- (id)description;
- (id)icsDueOrEndDateWithICSCalendarItem:(id)a3 options:(id)a4;
- (id)importRemindersFromICSData:(id)a3 insertIntoListChangeItem:(id)a4 error:(id *)a5;
- (id)updateAccount:(id)a3;
- (id)updateList:(id)a3;
- (id)updateListSection:(id)a3;
- (id)updateReminder:(id)a3;
- (id)updateSmartList:(id)a3;
- (id)updateSmartListSection:(id)a3;
- (id)updateTemplate:(id)a3;
- (id)updateTemplateSection:(id)a3;
- (void)_addAlarmsToReminderChangeItem:(id)a3 withICSAlarm:(id)a4 icsCalendar:(id)a5;
- (void)_populateAlarmsInReminderChangeItem:(id)a3 withICSAlarms:(id)a4 icsCalendar:(id)a5;
- (void)_populateRecurrencesInReminderChangeItem:(id)a3 withICSComponent:(id)a4 icsCalendar:(id)a5;
- (void)_populateReminderChangeItem:(id)a3 withICSTodoItem:(id)a4 icsCalendar:(id)a5 isNew:(BOOL)a6 withOptions:(id)a7;
- (void)_prepareSave:(id)a3;
- (void)_trackAccountCapabilities:(id)a3 forObjectID:(id)a4;
- (void)_trackAccountChangeItem:(id)a3;
- (void)_trackListChangeItem:(id)a3;
- (void)_trackListSectionChangeItem:(id)a3;
- (void)_trackReminderChangeItem:(id)a3;
- (void)_trackSmartListChangeItem:(id)a3;
- (void)_trackSmartListSectionChangeItem:(id)a3;
- (void)_trackTemplateChangeItem:(id)a3;
- (void)_trackTemplateSectionChangeItem:(id)a3;
- (void)_updateResolutionTokenMapForChangeItem:(id)a3;
- (void)_updateTrackedAccountChangeItem:(id)a3 withObjectID:(id)a4;
- (void)_updateTrackedListChangeItem:(id)a3 withObjectID:(id)a4;
- (void)_updateTrackedReminderChangeItem:(id)a3 withObjectID:(id)a4;
- (void)_updateTrackedSmartListChangeItem:(id)a3 withObjectID:(id)a4;
- (void)_willSaveAccountChangeItems:(id)a3 listChangeItems:(id)a4 listSectionChangeItems:(id)a5 smartListChangeItems:(id)a6 smartListSectionChangeItems:(id)a7 templateChangeItems:(id)a8 templateSectionChangeItems:(id)a9 reminderChangeItems:(id)a10;
- (void)advanceForwardRecurrenceAfterNowAndCreateIncompleteCloneWithoutRecurrenceRulesAndSubtasks;
- (void)notifyChangeDelegateForSaveSuccess:(BOOL)a3;
- (void)performPreSaveActions;
- (void)preFetchDueDateDeltaAlertsForCompletedRecurrenceClone;
- (void)preFlightActionSaveAndUpdateParentsOfRecurrentSubtasksWithLogPrefix:(id)a3;
- (void)saveWithQueue:(id)a3 completion:(id)a4;
- (void)updateUIDInReminderChangeItem:(id)a3 fromICSComponent:(id)a4 icsCalendar:(id)a5;
@end

@implementation REMSaveRequest

- (id)importRemindersFromICSData:(id)a3 insertIntoListChangeItem:(id)a4 error:(id *)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = 0x1E7506000uLL;
  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v9 objectID];
    *buf = 138412290;
    v52 = v13;
    _os_log_impl(&dword_19A0DB000, v12, OS_LOG_TYPE_INFO, "Importing ICS data into list change item {%@}.", buf, 0xCu);
  }

  v50 = 0;
  v14 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithData:v8 options:0 error:&v50];
  v15 = v50;
  if (v15 || !v14)
  {
    v34 = +[REMLogStore write];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [REMSaveRequest(Importing) importRemindersFromICSData:v15 insertIntoListChangeItem:v34 error:?];
    }

    if (a5)
    {
      v35 = v15;
      *a5 = v15;
    }
  }

  else
  {
    v16 = [v9 saveRequest];
    if ([v16 updateLastModifiedDates])
    {
      [v16 setUpdateLastModifiedDates:0];
    }

    v39 = v8;
    v17 = v16;
    if ([v16 cloneCompletedRecurrentRemindersAtSave])
    {
      [v16 setCloneCompletedRecurrentRemindersAtSave:0];
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
      v40 = v16;
      v41 = v10;
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
            v21 = [*(v11 + 3368) write];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v52 = v19;
              _os_log_impl(&dword_19A0DB000, v21, OS_LOG_TYPE_INFO, "Could not find a component with {key: %@}.", buf, 0xCu);
            }
          }

          v22 = objc_opt_class();
          v23 = REMDynamicCast(v22, v20);
          v24 = v23;
          if (v23)
          {
            v25 = [v23 rem_nonNilSummary];
            v26 = [v17 addReminderWithTitle:v25 toListChangeItem:v9];

            [(REMSaveRequest *)self _populateReminderChangeItem:v26 withICSTodoItem:v24 icsCalendar:v45 isNew:1 withOptions:0];
            v27 = [(REMSaveRequest *)self _iCalendarDataFromICSTodoItem:v24 icsCalendar:v45];
            [v26 setImportedICSData:v27];

            [v10 addObject:v26];
            v28 = [*(v11 + 3368) write];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = [v26 objectID];
              [v9 objectID];
              v30 = v11;
              v31 = self;
              v33 = v32 = v9;
              *buf = 138412546;
              v52 = v29;
              v53 = 2112;
              v54 = v33;
              _os_log_impl(&dword_19A0DB000, v28, OS_LOG_TYPE_INFO, "Added ICSTodo as reminder change item into list change item {reminder: %@, list: %@}.", buf, 0x16u);

              v9 = v32;
              self = v31;
              v11 = v30;
              v17 = v40;

              v10 = v41;
            }
          }
        }

        v44 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v44);
    }

    v14 = v38;
    v8 = v39;
    v15 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)updateReminderChangeItem:(id)a3 fromICSData:(id)a4 isNew:(BOOL)a5 withOptions:(id)a6 error:(id *)a7
{
  v9 = a5;
  v48 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v44 = 0;
  v15 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithData:v13 options:0 error:&v44];
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

    if (a7)
    {
      v19 = v16;
      v20 = 0;
      *a7 = v16;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v38 = self;
    v39 = v9;
    v21 = [v15 calendar];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v22 = [v21 componentKeys];
    v23 = [v22 countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v23)
    {
      v24 = v23;
      v35 = v16;
      v36 = v15;
      v37 = v14;
      v25 = *v41;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v40 + 1) + 8 * i);
          v28 = [v21 componentForKey:v27];
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
            v14 = v37;
            [(REMSaveRequest *)v38 updateReminderChangeItem:v12 fromICSTodo:v31 icsCalendar:v21 isNew:v39 withOptions:v37];

            v20 = 1;
            goto LABEL_24;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v40 objects:v47 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }

      v20 = 0;
      v14 = v37;
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

- (void)updateUIDInReminderChangeItem:(id)a3 fromICSComponent:(id)a4 icsCalendar:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 recurrence_id];

  if (v10)
  {
    v11 = [v8 recurrence_id];
    v10 = [v11 rem_dateWithICSCalendar:v9];
  }

  v12 = [v8 uid];
  if (v10)
  {
    [v10 timeIntervalSinceReferenceDate];
    if (fabs(v13) >= 2.22044605e-16)
    {
      v14 = [v8 uid];
      v15 = REMGetRecurrenceUIDFromRealUID(v14, v10);

      v12 = v15;
    }
  }

  if (v12)
  {
    v16 = +[REMLogStore write];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v7 objectID];
      v19 = 138412546;
      v20 = v17;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_INFO, "Setting ICS item UID to reminder change item {%@, uid: %@}.", &v19, 0x16u);
    }

    [v7 setDaCalendarItemUniqueIdentifier:v12];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)_iCalendarDataFromICSTodoItem:(id)a3 icsCalendar:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E69E3C68]);
  if (v7)
  {
    [v7 setX_calendarserver_access:{objc_msgSend(v6, "x_calendarserver_access")}];
    v12[0] = v5;
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

- (void)_populateReminderChangeItem:(id)a3 withICSTodoItem:(id)a4 icsCalendar:(id)a5 isNew:(BOOL)a6 withOptions:(id)a7
{
  v60 = a6;
  v71 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [v12 rem_nonNilSummary];
  [v11 setTitleAsString:v15];

  v16 = [v12 description];

  if (v16)
  {
    v17 = [v12 description];
    [v11 setNotesAsString:v17];
  }

  v18 = [v12 last_modified];
  if (!v18)
  {
    v18 = [v12 dtstamp];
  }

  v62 = v18;
  v19 = [v18 rem_dateAsUTC];
  [v11 setLastModifiedDate:v19];

  v20 = [v12 created];
  v21 = [v20 rem_dateAsUTC];

  [v11 setCreationDate:v21];
  [v11 setPriority:{objc_msgSend(v12, "priority")}];
  v22 = [(REMSaveRequest *)self icsDueOrEndDateWithICSCalendarItem:v12 options:v14];
  v65 = v22;
  if (v22)
  {
    v23 = v22;
    v24 = [v22 components];
    [v11 setDueDateComponents:v24];

    v25 = [v13 systemTimeZoneForDate:v23];
    v26 = [v11 dueDateComponents];
    [v26 setTimeZone:v25];
  }

  else
  {
    [v11 setDueDateComponents:0];
  }

  v61 = v21;
  v63 = v14;
  v64 = v13;
  [(REMSaveRequest *)self updateUIDInReminderChangeItem:v11 fromICSComponent:v12 icsCalendar:v13];
  v27 = [v12 url];

  if (v27)
  {
    v28 = [v12 url];
    [v11 setIcsUrl:v28];
  }

  v29 = [MEMORY[0x1E695DF70] array];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v30 = [v12 components];
  v31 = [v30 countByEnumeratingWithState:&v66 objects:v70 count:16];
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
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v66 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v29 addObject:v35];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v66 objects:v70 count:16];
    }

    while (v32);
  }

  [(REMSaveRequest *)self _populateAlarmsInReminderChangeItem:v11 withICSAlarms:v29 icsCalendar:v64];
  [(REMSaveRequest *)self _populateRecurrencesInReminderChangeItem:v11 withICSComponent:v12 icsCalendar:v64];
  v36 = [v12 completed];
  v37 = [v36 rem_dateAsUTC];

  if (!v37)
  {
    if ([v12 percentComplete] == 100 || objc_msgSend(v12, "status") == 4)
    {
      if (v65)
      {
        [v65 rem_dateWithICSCalendar:v64];
      }

      else
      {
        [MEMORY[0x1E695DF00] date];
      }
      v37 = ;
    }

    else
    {
      v37 = 0;
    }
  }

  [v11 setCompleted:v37 != 0];
  [v11 setCompletionDate:v37];
  v38 = [v12 x_apple_activity];
  v39 = [v38 count];

  if (v39)
  {
    v40 = objc_opt_class();
    v41 = [v12 x_apple_activity];
    v42 = [v41 firstObject];
    v43 = REMCheckedDynamicCast(v40, v42);

    v44 = objc_opt_class();
    v45 = [v43 value];
    v46 = REMCheckedDynamicCast(v44, v45);

    if (v46)
    {
      v47 = [[REMUserActivity alloc] initWithUniversalLink:v46];
      [v11 setUserActivity:v47];
    }
  }

  v48 = [v12 x_apple_appLinkData];

  if (v48)
  {
    v49 = [REMUserActivity alloc];
    v50 = [v12 x_apple_appLinkData];
    v51 = [(REMUserActivity *)v49 initWithUserActivityData:v50];
    [v11 setUserActivity:v51];
  }

  v52 = [v12 x_apple_sort_order];
  if (!v52 && !v61)
  {
    v53 = +[REMLogStore write];
    v54 = v63;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      [REMSaveRequest(Importing) _populateReminderChangeItem:v12 withICSTodoItem:? icsCalendar:? isNew:? withOptions:?];
    }

    v55 = [MEMORY[0x1E695DF00] date];
    [v55 timeIntervalSinceReferenceDate];
    [v11 setIcsDisplayOrder:v56];
    goto LABEL_40;
  }

  [v11 setIcsDisplayOrder:v52];
  v54 = v63;
  if (v60)
  {
    v55 = [v11 listChangeItem];
    [v55 setRemindersICSDisplayOrderChanged:1];
LABEL_40:
  }

  v57 = [v12 x_apple_alternative_due_date_for_calendar];
  v58 = [v57 rem_dateAsUTC];

  [v11 setAlternativeDisplayDateDateForCalendarWithNormalizedDate:v58];
  v59 = *MEMORY[0x1E69E9840];
}

- (id)icsDueOrEndDateWithICSCalendarItem:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 due];

  if (!v7)
  {
    v8 = objc_opt_class();
    v9 = [v6 valueForKey:@"ImportOptionConsiderDTENDForDueDate"];
    v10 = REMDynamicCast(v8, v9);

    if ([v10 unsignedIntegerValue] == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11 = [v5 performSelector:sel_dtend];

      goto LABEL_7;
    }
  }

  v11 = [v5 due];
LABEL_7:

  return v11;
}

- (void)_populateAlarmsInReminderChangeItem:(id)a3 withICSAlarms:(id)a4 icsCalendar:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 removeAllAlarms];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    v27 = *v30;
    v28 = v8;
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
          v17 = [v16 trigger];
          if ([v17 isDurationBased])
          {
          }

          else
          {
            v18 = [v16 trigger];
            [v18 value];
            v19 = v10;
            v21 = v20 = self;
            [v21 components];
            v23 = v22 = v13;
            v24 = REMIsInvalidICSAlarmDateComponents(v23);

            v13 = v22;
            self = v20;
            v10 = v19;
            v11 = v26;
            v14 = v27;

            v8 = v28;
            if (v24)
            {
              continue;
            }
          }
        }

        [(REMSaveRequest *)self _addAlarmsToReminderChangeItem:v8 withICSAlarm:v16 icsCalendar:v10];
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_addAlarmsToReminderChangeItem:(id)a3 withICSAlarm:(id)a4 icsCalendar:(id)a5
{
  v106 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [v8 uid];
  if (![v11 length])
  {
    v12 = [v8 x_wr_alarmuid];

    v11 = v12;
  }

  v13 = +[REMLogStore write];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [REMSaveRequest(Importing) _addAlarmsToReminderChangeItem:v11 withICSAlarm:v7 icsCalendar:v13];
  }

  if (!v11)
  {
    v11 = [MEMORY[0x1E69E3C80] makeUID];
    v14 = +[REMLogStore write];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v7 objectID];
      *buf = 138412546;
      v103 = v11;
      v104 = 2112;
      v105 = v15;
      _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_INFO, "Imported ICS alarm has no UID, generating one {alarmUID: %@, reminderID: %@}.", buf, 0x16u);
    }
  }

  v16 = [v8 trigger];
  v17 = [v16 isDurationBased];
  v91 = v16;
  v18 = [v16 value];
  if (v17)
  {
    v19 = [REMAlarmTimeIntervalTrigger alloc];
    [v18 timeInterval];
    v20 = [(REMAlarmTimeIntervalTrigger *)v19 initWithTimeInterval:?];
    v21 = [v7 addAlarmWithTrigger:v20];
    [v21 setAlarmUID:v11];
    [v10 addObject:v21];
  }

  else
  {
    v22 = v10;
    v20 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithValue:v18];
    v21 = [(REMAlarmTimeIntervalTrigger *)v20 components];
    v23 = [v9 systemTimeZoneForDate:v20];
    [v21 setTimeZone:v23];

    if ((REMIsInvalidICSAlarmDateComponents(v21) & 1) == 0)
    {
      v24 = [[REMAlarmDateTrigger alloc] initWithDateComponents:v21];
      [v7 addAlarmWithTrigger:v24];
      v26 = v25 = v11;
      [v26 setAlarmUID:v25];
      [v22 addObject:v26];

      v11 = v25;
    }

    v10 = v22;
  }

  v27 = [v8 x_apple_proximity];
  if ([v27 isEqualToString:*MEMORY[0x1E69E4078]])
  {
    v28 = 1;
  }

  else if ([v27 isEqualToString:*MEMORY[0x1E69E4088]])
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  v29 = [v8 x_apple_proximity];
  if ([v29 isEqualToString:*MEMORY[0x1E69E4080]])
  {
    v30 = 1;
  }

  else if ([v29 isEqualToString:*MEMORY[0x1E69E4090]])
  {
    v30 = 2;
  }

  else
  {
    v30 = 0;
  }

  v31 = [v8 x_apple_structured_location];
  v89 = [v8 location];
  v90 = v31;
  if (v28 | v30 || v31 | v89)
  {
    if ((v28 | v30) != 0 && (v31 | v89) != 0)
    {
      if (![v10 count])
      {
        goto LABEL_38;
      }

      v32 = +[REMLogStore write];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [v7 objectID];
        *buf = 138412546;
        v103 = v11;
        v104 = 2112;
        v105 = v33;
        _os_log_impl(&dword_19A0DB000, v32, OS_LOG_TYPE_INFO, "Importing a Proximity/Location trigger when we have already imported a TimeInterval/Date trigger from the same ICSAlarm. So we found a concrete case that they co-exist. {alarmUID: %@, reminderID: %@}", buf, 0x16u);
      }
    }

    else
    {
      if (v31 | v89)
      {
        if (!(v28 | v30))
        {
          v34 = +[REMLogStore write];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [REMSaveRequest(Importing) _addAlarmsToReminderChangeItem:v11 withICSAlarm:v7 icsCalendar:?];
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
        v85 = v7;
        v35 = v8;
        v36 = [v35 x_apple_structured_location];
        v37 = [v35 location];

        if (v36)
        {
          v87 = v9;
          v83 = v10;
          v38 = [REMStructuredLocation alloc];
          v39 = [v36 title];
          v40 = [(REMStructuredLocation *)v38 initWithTitle:v39];

          v41 = [v36 value];
          v42 = [v41 scheme];
          v43 = [v42 lowercaseString];
          v44 = [v43 isEqualToString:@"geo"];

          v84 = v41;
          if (v44)
          {
            v45 = [v41 absoluteString];
            v46 = [v45 substringFromIndex:4];
            v47 = [v46 rangeOfString:@";"];
            v81 = v37;
            if (v48)
            {
              v49 = [v46 substringToIndex:v47];

              v46 = v49;
            }

            v9 = v87;
            v50 = v11;
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

            v11 = v50;
            v37 = v82;
          }

          else
          {
            v45 = +[REMLogStore write];
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v103 = v41;
              _os_log_impl(&dword_19A0DB000, v45, OS_LOG_TYPE_INFO, "Ignoring unexpected location URL scheme when converting location from ICS: %@.", buf, 0xCu);
            }

            v9 = v87;
          }

          v54 = [v36 parameterValueForName:@"X-APPLE-RADIUS"];
          if (!v54)
          {
            v54 = [v36 parameterValueForName:@"X-Apple-Radius"];
          }

          [v54 doubleValue];
          [(REMStructuredLocation *)v40 setRadius:?];
          v55 = [v36 address];
          [(REMStructuredLocation *)v40 setAddress:v55];

          v56 = [v36 routing];
          [(REMStructuredLocation *)v40 setRouting:v56];

          v57 = [v36 parameterValueForName:@"X-APPLE-REFERENCEFRAME"];
          if (v57)
          {
            [(REMStructuredLocation *)v40 setReferenceFrameString:v57];
          }

          v58 = [v36 parameterValueForName:@"X-APPLE-ABUID"];
          if (v58 || ([v36 parameterValueForName:@"X-Apple-ABUID"], (v58 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v59 = v58;
            [(REMStructuredLocation *)v40 setContactLabel:v58];
          }

          v60 = [v36 mapKitHandle];
          if (v60)
          {
            [(REMStructuredLocation *)v40 setMapKitHandle:v60];
          }

          v10 = v83;
        }

        else
        {
          if (!v37)
          {
            v37 = &stru_1F0D67F00;
          }

          v40 = [[REMStructuredLocation alloc] initWithTitle:v37];
        }

        v30 = [[REMAlarmLocationTrigger alloc] initWithStructuredLocation:v40 proximity:v28];
        v7 = v85;
LABEL_67:
        v61 = [v7 addAlarmWithTrigger:v30];
        [v61 setAlarmUID:v11];
        [v10 addObject:v61];

        goto LABEL_68;
      }

      v32 = +[REMLogStore write];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [REMSaveRequest(Importing) _addAlarmsToReminderChangeItem:v11 withICSAlarm:v7 icsCalendar:?];
      }
    }

    goto LABEL_38;
  }

LABEL_68:
  v62 = [v8 acknowledged];

  if (v62)
  {
    v63 = [v8 acknowledged];
    v64 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithValue:v63];
    v65 = [v64 rem_dateWithICSCalendar:v9];
  }

  else
  {
    v65 = 0;
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v66 = v10;
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

  v71 = [v8 relatedTo];

  if (v71)
  {
    v86 = v11;
    v88 = v9;
    v72 = v7;
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
          v79 = [v8 relatedTo];
          [v78 setOriginalAlarmUID:v79];
        }

        v75 = [v73 countByEnumeratingWithState:&v92 objects:v100 count:16];
      }

      while (v75);
    }

    v7 = v72;
    v11 = v86;
    v9 = v88;
  }

  v80 = *MEMORY[0x1E69E9840];
}

- (void)_populateRecurrencesInReminderChangeItem:(id)a3 withICSComponent:(id)a4 icsCalendar:(id)a5
{
  v85 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 removeAllRecurrenceRules];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v53 = v7;
  obj = [v7 rrule];
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

        v15 = [v6 accountID];
        v71 = [v6 objectID];
        v16 = v13;
        v68 = v15;
        v17 = [v16 freq];
        v18 = v17;
        if (v17 <= 3)
        {
          if ((v17 - 1) < 3)
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

        if (v17 > 5)
        {
          if (v17 == 6)
          {
            v19 = 2;
            goto LABEL_18;
          }

          if (v17 == 7)
          {
            v19 = 3;
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        if (v17 != 4)
        {
          v19 = 1;
LABEL_18:
          v66 = v19;
          goto LABEL_22;
        }

LABEL_21:
        v66 = 0;
LABEL_22:
        v23 = [v16 interval];
        v62 = [v23 integerValue];

        v24 = [v16 wkst];
        v25 = v24;
        if (v24)
        {
          v64 = REMWeekdayFromICSWeekday([v24 integerValue]);
        }

        else
        {
          v64 = 0;
        }

        v26 = [v16 until];
        v67 = v25;
        if (v26)
        {
          v27 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithValue:v26];
          v28 = [v27 rem_dateAsUTC];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v29 = [v28 dateByAddingTimeInterval:86399.0];

            v28 = v29;
          }

          v61 = [REMRecurrenceEnd recurrenceEndWithEndDate:v28];

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
        v65 = v26;
        v69 = v13;
        v70 = v12;
        v31 = v16;
        v32 = [v16 byday];
        v60 = v32;
        if ([v32 count])
        {
          v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v32, "count")}];
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v34 = v32;
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
                v41 = [v39 number];
                v42 = +[REMRecurrenceDayOfWeek dayOfWeek:weekNumber:](REMRecurrenceDayOfWeek, "dayOfWeek:weekNumber:", v40, [v41 integerValue]);

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

        v43 = v62;
        if (v62 <= 1)
        {
          v43 = 1;
        }

        v63 = v43;
        v58 = +[REMRecurrenceRule newObjectID];
        v59 = [REMRecurrenceRule alloc];
        v44 = v31;
        v57 = [v31 bymonthday];
        v45 = [v31 bymonth];
        v46 = [v31 byweekno];
        v47 = [v31 byyearday];
        v48 = [v31 bysetpos];
        v49 = [(REMRecurrenceRule *)v59 initRecurrenceRuleWithObjectID:v58 accountID:v68 reminderID:v71 frequency:v66 interval:v63 firstDayOfTheWeek:v64 daysOfTheWeek:v33 daysOfTheMonth:v57 monthsOfTheYear:v45 weeksOfTheYear:v46 daysOfTheYear:v47 setPositions:v48 end:v61];

        v10 = v54;
        v9 = v55;
        v11 = 0x1E696A000;
        v13 = v69;
        v12 = v70;
        if (v49)
        {
          [v6 addRecurrenceRule:v49];
          goto LABEL_48;
        }

LABEL_46:
        v49 = +[REMLogStore write];
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = [v6 objectID];
          *buf = 138412546;
          v82 = v13;
          v83 = 2112;
          v84 = v50;
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

- (REMSaveRequest)initWithStore:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "store");
  }

  v39.receiver = self;
  v39.super_class = REMSaveRequest;
  v6 = [(REMSaveRequest *)&v39 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
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
    v28 = [v5 mode];
    if (v28 > 2)
    {
      if (v28 != 3)
      {
        if (v28 != 4)
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
          v35 = [[_REMDefaultReplicaManagerProvider alloc] initWithStore:v5];
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
      if (v28 != 1)
      {
        if (v28 == 2)
        {
          v29 = +[REMLogStore write];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19A0DB000, v29, OS_LOG_TYPE_INFO, "Creating saveRequest in CalDAV-Sync mode", buf, 2u);
          }

          *&v7->_cloneCompletedRecurrentRemindersAtSave = 256;
          v7->_updateLastModifiedDates = 0;
          v30 = [v5 replicaManagerProviderForCalDAVSync];
          v31 = v7->_replicaManagerProvider;
          v7->_replicaManagerProvider = v30;
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
  v21 = [(REMSaveRequest *)self trackedAccountChangeItems];
  v16 = [v21 count];
  v20 = [(REMSaveRequest *)self trackedListChangeItems];
  v15 = [v20 count];
  v18 = [(REMSaveRequest *)self trackedSmartListChangeItems];
  v14 = [v18 count];
  v3 = [(REMSaveRequest *)self trackedTemplateChangeItems];
  v4 = [v3 count];
  v5 = [(REMSaveRequest *)self trackedReminderChangeItems];
  v6 = [v5 count];
  v7 = [(REMSaveRequest *)self trackedListSectionChangeItems];
  v8 = [v7 count];
  v9 = [(REMSaveRequest *)self trackedSmartListSectionChangeItems];
  v10 = [v9 count];
  v11 = [(REMSaveRequest *)self trackedTemplateSectionChangeItems];
  v12 = [v19 stringWithFormat:@"<%@: %p acounts.count: %ld, lists.count: %ld, smartLists.count: %ld, templates.count: %ld, reminders.count: %ld, listSections.count: %ld>, smartListSections.count: %ld, templateSections.count: %ld>", v17, self, v16, v15, v14, v4, v6, v8, v10, objc_msgSend(v11, "count")];

  return v12;
}

- (id)updateAccount:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 storage];
    if (v6)
    {
      v7 = [v5 objectID];
      if (v7)
      {
        v8 = [(REMSaveRequest *)self _trackedAccountChangeItemForObjectID:v7];
        if (!v8)
        {
          v9 = [REMAccountChangeItem alloc];
          v10 = [v5 capabilities];
          v8 = [(REMAccountChangeItem *)v9 initWithSaveRequest:self storage:v6 capabilities:v10 observeInitialValues:0];

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

- (id)_updateAccountWithListChangeItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 parentAccountID];
    if (v6)
    {
      v7 = [(REMSaveRequest *)self _trackedAccountChangeItemForObjectID:v6];
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

- (id)addGroupWithName:(id)a3 toAccountGroupContextChangeItem:(id)a4 groupObjectID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
LABEL_3:
      if (!v10)
      {
        v10 = +[REMList newObjectID];
      }

      v11 = [v9 accountChangeItem];
      v12 = [v11 saveRequest];

      if (v12 != self)
      {
        v13 = MEMORY[0x1E695DF30];
        v14 = *MEMORY[0x1E695D930];
        v15 = [v11 saveRequest];
        [v13 raise:v14 format:{@"accountChangeItem (%@) has incorrect saveRequest (%@). Expected %@", v11, v15, self}];
      }

      v16 = [[REMListChangeItem alloc] initWithObjectID:v10 name:v8 insertIntoAccountChangeItem:v11 isGroup:1];
      [(REMSaveRequest *)self _trackListChangeItem:v16];

      goto LABEL_12;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "name");
    if (v9)
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

- (id)addListWithName:(id)a3 toAccountChangeItem:(id)a4 listObjectID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
LABEL_3:
      v11 = [v9 saveRequest];

      if (v11 != self)
      {
        v12 = MEMORY[0x1E695DF30];
        v13 = *MEMORY[0x1E695D930];
        v14 = [v9 saveRequest];
        [v12 raise:v13 format:{@"accountChangeItem (%@) has incorrect saveRequest (%@). Expected %@", v9, v14, self}];
      }

      if (!v10)
      {
        v10 = +[REMList newObjectID];
      }

      v15 = [[REMListChangeItem alloc] initWithObjectID:v10 name:v8 insertIntoAccountChangeItem:v9];
      [(REMSaveRequest *)self _trackListChangeItem:v15];
      goto LABEL_12;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "name");
    if (v9)
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

- (id)addListWithName:(id)a3 toListSublistContextChangeItem:(id)a4 listObjectID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_10:
    NSLog(&cfstr_SIsUnexpectedl.isa, "listSublistContextChangeItem");
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "name");
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_11:
  v10 = +[REMList newObjectID];
LABEL_4:
  v11 = [v9 listChangeItem];
  v12 = [v11 saveRequest];

  if (v12 != self)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D930];
    v15 = [v11 saveRequest];
    [v13 raise:v14 format:{@"listSublistContextChangeItem (%@) has incorrect saveRequest (%@). Expected %@", v9, v15, self}];
  }

  v16 = [[REMListChangeItem alloc] initWithObjectID:v10 name:v8 insertIntoListSublistContextChangeItem:v9];
  [(REMSaveRequest *)self _trackListChangeItem:v16];

  return v16;
}

- (id)addListUsingTemplate:(id)a3 toAccountChangeItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 templatesContextChangeItem];

  if (v8)
  {
    v9 = [v6 name];

    if (!v9)
    {
      v10 = +[REMLogStore write];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [REMSaveRequest addListUsingTemplate:v6 toAccountChangeItem:?];
      }
    }

    v11 = [v6 name];
    v12 = [(REMSaveRequest *)self addListWithName:v11 toAccountChangeItem:v7 listObjectID:0];
    v13 = [v6 color];
    [v12 setColor:v13];

    v14 = [v6 badgeEmblem];
    [v12 setBadgeEmblem:v14];

    [v12 setShowingLargeAttachments:{objc_msgSend(v6, "showingLargeAttachments")}];
    v15 = [v6 sortingStyle];
    [v12 setSortingStyle:v15];

    v16 = [v6 objectID];
    [v12 setTemplateID:v16];
  }

  else
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [REMSaveRequest addListUsingTemplate:v7 toAccountChangeItem:?];
    }

    v12 = 0;
  }

  return v12;
}

- (id)addListUsingPublicTemplateWithREMListRepresentation:(id)a3 toAccountChangeItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 templatesContextChangeItem];

  if (v8)
  {
    v9 = [v6 name];

    if (!v9)
    {
      v10 = +[REMLogStore write];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [REMSaveRequest addListUsingPublicTemplateWithREMListRepresentation:v6 toAccountChangeItem:?];
      }
    }

    v11 = [v6 name];
    v12 = [(REMSaveRequest *)self addListWithName:v11 toAccountChangeItem:v7 listObjectID:0];
    v13 = [v6 color];
    [v12 setColor:v13];

    v14 = [v6 badgeEmblem];
    [v12 setBadgeEmblem:v14];

    [v12 setShowingLargeAttachments:{objc_msgSend(v6, "showingLargeAttachments")}];
    v15 = [v6 sortingStyle];
    [v12 setSortingStyle:v15];

    v16 = [v6 objectID];
    [v12 setTemplateID:v16];
  }

  else
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [REMSaveRequest addListUsingPublicTemplateWithREMListRepresentation:v7 toAccountChangeItem:?];
    }

    v12 = 0;
  }

  return v12;
}

- (id)updateList:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 storage];
    if (v6)
    {
      v7 = [v5 account];
      v8 = [(REMSaveRequest *)self updateAccount:v7];

      v9 = [v5 parentList];
      if (v9)
      {
        v10 = [(REMSaveRequest *)self updateList:v9];
      }

      v11 = [v5 storage];
      v12 = [v5 account];
      v13 = [v12 capabilities];
      v14 = [(REMSaveRequest *)self _updateListStorage:v11 accountCapabilities:v13];
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

- (id)_updateListStorage:(id)a3 accountCapabilities:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest updateList:];
    }

    v12 = "listStorage";
    goto LABEL_12;
  }

  if (!v7)
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

  v9 = [v6 objectID];
  if (v9)
  {
    v10 = [(REMSaveRequest *)self _trackedListChangeItemForObjectID:v9];
    if (!v10)
    {
      v10 = [[REMListChangeItem alloc] initWithSaveRequest:self storage:v6 accountCapabilities:v8 observeInitialValues:0];
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

- (id)_updateListWithReminderChangeItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v9 = +[REMLogStore write];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _updateListWithReminderChangeItem:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "reminderChangeItem");
    goto LABEL_12;
  }

  v6 = [v4 storage];

  if (!v6)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _updateListWithReminderChangeItem:];
    }

    v8 = [v5 storage];

    if (!v8)
    {
      NSLog(&cfstr_SIsUnexpectedl.isa, "reminderChangeItem.storage");
      goto LABEL_17;
    }

LABEL_12:
    v8 = 0;
    goto LABEL_17;
  }

  v7 = [v5 listID];
  if (v7)
  {
    v8 = [(REMSaveRequest *)self _trackedListChangeItemForObjectID:v7];
    if (!v8)
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
    v8 = 0;
  }

LABEL_17:

  return v8;
}

- (id)addCustomSmartListWithName:(id)a3 toAccountChangeItem:(id)a4 smartListObjectID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
LABEL_3:
      v11 = [v9 saveRequest];

      v12 = MEMORY[0x1E695D930];
      if (v11 != self)
      {
        v13 = MEMORY[0x1E695DF30];
        v14 = *MEMORY[0x1E695D930];
        v15 = [v9 saveRequest];
        [v13 raise:v14 format:{@"accountChangeItem (%@) has incorrect saveRequest (%@). Expected %@", v9, v15, self}];
      }

      v16 = [v9 capabilities];
      v17 = [v16 supportsCustomSmartLists];

      if ((v17 & 1) == 0)
      {
        v18 = MEMORY[0x1E695DF30];
        v19 = *v12;
        v20 = [v9 objectID];
        [v18 raise:v19 format:{@"Cannot add CSL because the given accountChangeItem does not support it {accountID: %@}", v20}];
      }

      if (v10)
      {
        v21 = v10;
      }

      else
      {
        v21 = +[REMSmartList newObjectID];
      }

      v24 = v21;
      v23 = [[REMSmartListChangeItem alloc] initWithCustomSmartListObjectID:v21 insertIntoAccountChangeItem:v9];
      [(REMSaveRequest *)self _trackSmartListChangeItem:v23];
      [(REMSmartListChangeItem *)v23 setName:v8];

      goto LABEL_15;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "name");
    if (v9)
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

- (id)updateSmartList:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 storage];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectID];
      if (v8)
      {
        v9 = [(REMSaveRequest *)self _trackedSmartListChangeItemForObjectID:v8];
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

- (id)addTemplateWithName:(id)a3 configuration:(id)a4 toAccountChangeItem:(id)a5 templateObjectID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    NSLog(&cfstr_SIsUnexpectedl.isa, "configuration");
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "name");
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
LABEL_4:
    v14 = [v12 saveRequest];

    if (v14 != self)
    {
      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D930];
      v17 = [v12 saveRequest];
      [v15 raise:v16 format:{@"accountChangeItem (%@) has incorrect saveRequest (%@). Expected %@", v12, v17, self}];
    }

    v18 = [[REMTemplateChangeItem alloc] initWithObjectID:v13 name:v10 configuration:v11 insertIntoAccountChangeItem:v12];
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

- (id)addTemplateWithName:(id)a3 configuration:(id)a4 toAccountChangeItem:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[REMTemplate newObjectID];
  v12 = [(REMSaveRequest *)self addTemplateWithName:v10 configuration:v9 toAccountChangeItem:v8 templateObjectID:v11];

  return v12;
}

- (id)updateTemplate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 storage];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectID];
      if (v8)
      {
        v9 = [(REMSaveRequest *)self _trackedTemplateChangeItemForObjectID:v8];
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

- (id)addReminderWithTitle:(id)a3 toListChangeItem:(id)a4 reminderObjectID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "title");
    if (v9)
    {
      goto LABEL_3;
    }
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "listChangeItem");
LABEL_3:
  v11 = [v9 objectID];
  v12 = [v11 entityName];
  v13 = +[REMTemplate cdEntityName];
  v14 = [v12 isEqualToString:v13];

  if (v10)
  {
    v15 = [v10 entityName];
    if (v14)
    {
      v16 = +[REMTemplate cdEntityNameForSavedReminder];
      v17 = [v15 isEqualToString:v16];

      if ((v17 & 1) == 0)
      {
        [REMSaveRequest addReminderWithTitle:toListChangeItem:reminderObjectID:];
      }
    }

    else
    {
      v19 = +[REMReminder cdEntityName];
      v20 = [v15 isEqualToString:v19];

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

    v10 = v18;
  }

  v21 = [v9 saveRequest];

  v22 = MEMORY[0x1E695D930];
  if (v21 != self)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D930];
    v25 = [v9 saveRequest];
    [v23 raise:v24 format:{@"listChangeItem (%@) has incorrect saveRequest (%@). Expected %@", v9, v25, self}];
  }

  if ([v9 isGroup])
  {
    [MEMORY[0x1E695DF30] raise:*v22 format:{@"listChangeItem is a group and adding reminder to group is not currently supported {listChangeItem: %@}", v9}];
  }

  v26 = [[REMReminderChangeItem alloc] initWithObjectID:v10 title:v8 insertIntoListChangeItem:v9];
  [(REMSaveRequest *)self _trackReminderChangeItem:v26];

  return v26;
}

- (id)addReminderWithTitle:(id)a3 toReminderSubtaskContextChangeItem:(id)a4 reminderObjectID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "title");
    if (v9)
    {
      goto LABEL_3;
    }
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "parentReminderSubtaskContextChangeItem");
LABEL_3:
  v11 = [v9 reminderChangeItem];
  v12 = [v11 objectID];
  v13 = [v12 entityName];
  v14 = +[REMTemplate cdEntityNameForSavedReminder];
  v15 = [v13 isEqualToString:v14];

  if (v10)
  {
    v16 = [v10 entityName];
    if (v15)
    {
      v17 = +[REMTemplate cdEntityNameForSavedReminder];
      v18 = [v16 isEqualToString:v17];

      if ((v18 & 1) == 0)
      {
        [REMSaveRequest addReminderWithTitle:toReminderSubtaskContextChangeItem:reminderObjectID:];
      }
    }

    else
    {
      v20 = +[REMReminder cdEntityName];
      v21 = [v16 isEqualToString:v20];

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

    v10 = v19;
  }

  v22 = [v9 reminderChangeItem];
  v23 = [v22 saveRequest];

  if (v23 != self)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D930];
    v26 = [v22 saveRequest];
    [v24 raise:v25 format:{@"parentReminderChangeItem (%@) has incorrect saveRequest (%@). Expected %@", v22, v26, self}];
  }

  v27 = [[REMReminderChangeItem alloc] initWithObjectID:v10 title:v8 insertIntoParentReminderSubtaskContextChangeItem:v9];
  [(REMSaveRequest *)self _trackReminderChangeItem:v27];

  return v27;
}

- (id)updateReminder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 storage];
    if (v6)
    {
      v7 = [v5 objectID];
      if (v7)
      {
        v8 = [(REMSaveRequest *)self _trackedReminderChangeItemForObjectID:v7];
        if (!v8)
        {
          v9 = [REMReminderChangeItem alloc];
          v10 = [v5 storage];
          v11 = [v5 account];
          v12 = [v11 capabilities];
          v8 = [(REMReminderChangeItem *)v9 initWithSaveRequest:self storage:v10 accountCapabilities:v12 observeInitialValues:0];

          [(REMSaveRequest *)self _trackReminderChangeItem:v8];
        }

        v13 = [v5 list];
        v14 = [(REMSaveRequest *)self updateList:v13];
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

- (id)addListSectionWithDisplayName:(id)a3 toListSectionContextChangeItem:(id)a4 listSectionObjectID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
LABEL_3:
      v11 = [v9 listChangeItem];
      v12 = [v11 saveRequest];

      if (v12 != self)
      {
        v13 = MEMORY[0x1E695DF30];
        v14 = *MEMORY[0x1E695D930];
        v15 = [v11 saveRequest];
        [v13 raise:v14 format:{@"listSectionContextChangeItem.listChangeItem (%@) has incorrect saveRequest (%@). Expected %@", v11, v15, self}];
      }

      if (!v10)
      {
        v10 = +[REMListSection newObjectID];
      }

      v16 = [[REMListSectionChangeItem alloc] initWithObjectID:v10 displayName:v8 insertIntoListChangeItem:v11];
      v17 = [MEMORY[0x1E695DF00] now];
      [(REMListSectionChangeItem *)v16 setCreationDate:v17];

      [(REMSaveRequest *)self _trackListSectionChangeItem:v16];
      [v9 setShouldUpdateSectionsOrdering:1];

      goto LABEL_12;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "displayName");
    if (v9)
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

- (id)updateListSection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 storage];
    if (v6)
    {
      v7 = [v5 objectID];
      if (v7)
      {
        v8 = [(REMSaveRequest *)self _trackedListSectionChangeItemForObjectID:v7];
        if (!v8)
        {
          v9 = [REMListSectionChangeItem alloc];
          v10 = [v5 storage];
          v11 = [v5 accountCapabilities];
          v8 = [(REMBaseSectionChangeItem *)v9 initWithSaveRequest:self storage:v10 accountCapabilities:v11 observeInitialValues:0];

          [(REMSaveRequest *)self _trackListSectionChangeItem:v8];
        }

        v12 = [v5 list];
        v13 = [(REMSaveRequest *)self updateList:v12];
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

- (id)addSmartListSectionWithDisplayName:(id)a3 toSmartListSectionContextChangeItem:(id)a4 smartListSectionObjectID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
LABEL_3:
      v11 = [v9 smartListChangeItem];
      v12 = [v11 saveRequest];

      if (v12 != self)
      {
        v13 = MEMORY[0x1E695DF30];
        v14 = *MEMORY[0x1E695D930];
        v15 = [v11 saveRequest];
        [v13 raise:v14 format:{@"smartListSectionContextChangeItem.smartListChangeItem (%@) has incorrect saveRequest (%@). Expected %@", v11, v15, self}];
      }

      if (!v10)
      {
        v10 = +[REMSmartListSection newObjectID];
      }

      v16 = [[REMSmartListSectionChangeItem alloc] initWithObjectID:v10 displayName:v8 insertIntoSmartListChangeItem:v11];
      v17 = [MEMORY[0x1E695DF00] now];
      [(REMSmartListSectionChangeItem *)v16 setCreationDate:v17];

      [(REMSaveRequest *)self _trackSmartListSectionChangeItem:v16];
      [v9 setShouldUpdateSectionsOrdering:1];

      goto LABEL_12;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "displayName");
    if (v9)
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

- (id)updateSmartListSection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 storage];
    if (v6)
    {
      v7 = [v5 objectID];
      if (v7)
      {
        v8 = [(REMSaveRequest *)self _trackedSmartListSectionChangeItemForObjectID:v7];
        if (!v8)
        {
          v9 = [REMSmartListSectionChangeItem alloc];
          v10 = [v5 storage];
          v11 = [v5 accountCapabilities];
          v8 = [(REMBaseSectionChangeItem *)v9 initWithSaveRequest:self storage:v10 accountCapabilities:v11 observeInitialValues:0];

          [(REMSaveRequest *)self _trackSmartListSectionChangeItem:v8];
        }

        v12 = [v5 smartList];
        v13 = [(REMSaveRequest *)self updateSmartList:v12];
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

- (id)addTemplateSectionWithDisplayName:(id)a3 toTemplateSectionContextChangeItem:(id)a4 templateSectionObjectID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
LABEL_3:
      v11 = [v9 templateChangeItem];
      v12 = [v11 saveRequest];

      if (v12 != self)
      {
        v13 = MEMORY[0x1E695DF30];
        v14 = *MEMORY[0x1E695D930];
        v15 = [v11 saveRequest];
        [v13 raise:v14 format:{@"templateSectionContextChangeItem.templateChangeItem (%@) has incorrect saveRequest (%@). Expected %@", v11, v15, self}];
      }

      if (!v10)
      {
        v10 = +[REMTemplateSection newObjectID];
      }

      v16 = [[REMTemplateSectionChangeItem alloc] initWithObjectID:v10 displayName:v8 insertIntoTemplateChangeItem:v11];
      v17 = [MEMORY[0x1E695DF00] now];
      [(REMTemplateSectionChangeItem *)v16 setCreationDate:v17];

      [(REMSaveRequest *)self _trackTemplateSectionChangeItem:v16];
      [v9 setShouldUpdateSectionsOrdering:1];

      goto LABEL_12;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "displayName");
    if (v9)
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

- (id)updateTemplateSection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 storage];
    if (v6)
    {
      v7 = [v5 objectID];
      if (v7)
      {
        v8 = [(REMSaveRequest *)self _trackedTemplateSectionChangeItemForObjectID:v7];
        if (!v8)
        {
          v9 = [REMTemplateSectionChangeItem alloc];
          v10 = [v5 storage];
          v11 = [v5 accountCapabilities];
          v8 = [(REMBaseSectionChangeItem *)v9 initWithSaveRequest:self storage:v10 accountCapabilities:v11 observeInitialValues:0];

          [(REMSaveRequest *)self _trackTemplateSectionChangeItem:v8];
        }

        v12 = [v5 parentTemplate];
        v13 = [(REMSaveRequest *)self updateTemplate:v12];
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

- (void)_updateResolutionTokenMapForChangeItem:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 resolutionTokenMap];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [v3 changedKeys];
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [v3 resolutionTokenKeyForChangedKey:*(*(&v22 + 1) + 8 * i)];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
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

          [v4 updateForKey:{*(*(&v18 + 1) + 8 * j), v18}];
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

- (void)_willSaveAccountChangeItems:(id)a3 listChangeItems:(id)a4 listSectionChangeItems:(id)a5 smartListChangeItems:(id)a6 smartListSectionChangeItems:(id)a7 templateChangeItems:(id)a8 templateSectionChangeItems:(id)a9 reminderChangeItems:(id)a10
{
  v140 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v90 = a8;
  v96 = a9;
  v98 = a10;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  obj = v16;
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
  v27 = v17;
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
  v94 = v18;
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
  v93 = v19;
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
  v92 = v20;
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
  v52 = v90;
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
  v59 = v96;
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
  v91 = v98;
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
        v70 = [*(v66 + 3840) date];
        v71 = [v68 creationDate];

        if (!v71)
        {
          [v68 setCreationDate:v70];
        }

        if (-[REMSaveRequest updateLastModifiedDates](self, "updateLastModifiedDates") || ([v68 lastModifiedDate], v72 = objc_claimAutoreleasedReturnValue(), v72, !v72))
        {
          [v68 setLastModifiedDate:v70];
        }

        [(REMSaveRequest *)self _updateResolutionTokenMapForChangeItem:v68];
        WeakRetained = objc_loadWeakRetained(&self->_notifyChangeDelegate);

        if (WeakRetained)
        {
          v74 = [v68 listChangeItem];
          v75 = [v74 sharees];
          v76 = +[REMList isSharedWithShareeCount:sharingStatus:](REMList, "isSharedWithShareeCount:sharingStatus:", [v75 count], objc_msgSend(v74, "sharingStatus"));

          if (v76)
          {
            v77 = [v68 changedKeys];
            v78 = [v77 containsObject:@"objectID"];

            v79 = [v68 changedKeys];
            if ([v79 containsObject:@"titleDocument"])
            {
              goto LABEL_65;
            }

            v80 = [v68 changedKeys];
            if ([v80 containsObject:@"notesDocument"])
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
              v84 = [(REMSaveRequest *)self saveRequestChangeEvents];
              [v84 addObject:v81];

              v66 = 0x1E695D000;
            }

            else
            {
              v82 = [v68 changedKeys];
              v83 = [v82 containsObject:@"hashtags"];

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

- (void)saveWithQueue:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
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
    v9 = [(REMSaveRequest *)self author];
    if ([v9 isEqualToString:@"com.apple.eventkitsyncd"])
    {

LABEL_9:
      v11 = +[REMLogStore write];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(REMSaveRequest *)self author];
        *buf = 138543618;
        v24 = v12;
        v25 = 1024;
        v26 = [(REMSaveRequest *)self saveIsNoopIfNoChangedKeys];
        _os_log_impl(&dword_19A0DB000, v11, OS_LOG_TYPE_DEFAULT, "Save Request has no changed keys. Opted to return early as no-op. {author: %{public}@, saveIsNoopIfNoChangedKeys: %d}", buf, 0x12u);
      }

      v13 = [(REMSaveRequest *)self store];
      [v13 processNoOpSaveRequest:self queue:v6 completion:v8];
      goto LABEL_18;
    }

    v10 = [(REMSaveRequest *)self saveIsNoopIfNoChangedKeys];

    if (v10)
    {
      goto LABEL_9;
    }

    v14 = +[REMLogStore write];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(REMSaveRequest *)self author];
      *buf = 138543362;
      v24 = v15;
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
  v20 = v6;
  v21 = v17;
  v22 = v8;
  v13 = v17;
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

- (BOOL)saveSynchronouslyWithError:(id *)a3
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
    v5 = [(REMSaveRequest *)self author];
    if ([v5 isEqualToString:@"com.apple.eventkitsyncd"])
    {

LABEL_5:
      v7 = +[REMLogStore write];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(REMSaveRequest *)self author];
        v9 = [(REMSaveRequest *)self saveIsNoopIfNoChangedKeys];
        *buf = 138543618;
        *&buf[4] = v8;
        *&buf[12] = 1024;
        *&buf[14] = v9;
        _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_DEFAULT, "Save Request has no changed keys. Opted to return early as no-op. {author: %{public}@, saveIsNoopIfNoChangedKeys: %d}", buf, 0x12u);
      }

      v10 = 1;
      goto LABEL_14;
    }

    v6 = [(REMSaveRequest *)self saveIsNoopIfNoChangedKeys];

    if (v6)
    {
      goto LABEL_5;
    }

    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(REMSaveRequest *)self author];
      *buf = 138543362;
      *&buf[4] = v12;
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
  if (a3)
  {
    *a3 = v17[5];
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

- (void)notifyChangeDelegateForSaveSuccess:(BOOL)a3
{
  if (a3)
  {
    v4 = [(REMSaveRequest *)self saveRequestChangeEvents];
    if ([v4 count])
    {
      v5 = [(REMSaveRequest *)self notifyChangeDelegate];

      if (v5)
      {
        v6 = +[REMLogStore write];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_DEFAULT, "notifyChangeDelegateForSaveSuccess: SHOULD_NOTIFY {name: com.apple.reminderkit.REMSaveRequest}", buf, 2u);
        }

        v7 = [(REMSaveRequest *)self saveRequestChangeEvents];
        v8 = [v7 copy];

        v9 = [(REMSaveRequest *)self notifyChangeDelegate];
        v10 = [v9 callbackQueue];

        v13 = MEMORY[0x1E69E9820];
        v14 = 3221225472;
        v15 = __53__REMSaveRequest_notifyChangeDelegateForSaveSuccess___block_invoke;
        v16 = &unk_1E7508448;
        v17 = self;
        v18 = v8;
        v11 = v8;
        dispatch_async(v10, &v13);
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
  v3 = [(REMSaveRequest *)self trackedAccountChangeItems];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v99 objects:v110 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = [*(*(&v99 + 1) + 8 * v8) valueWithoutPerformingCopy];
      v10 = [v9 changedKeys];
      v11 = [v10 count];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v99 objects:v110 count:16];
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
    v12 = [(REMSaveRequest *)self trackedListChangeItems];
    v4 = [v12 allValues];

    v13 = [v4 countByEnumeratingWithState:&v95 objects:v109 count:16];
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
          objc_enumerationMutation(v4);
        }

        v17 = [*(*(&v95 + 1) + 8 * v16) valueWithoutPerformingCopy];
        v18 = [v17 changedKeys];
        v19 = [v18 count];

        if (v19)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v4 countByEnumeratingWithState:&v95 objects:v109 count:16];
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
      v20 = [(REMSaveRequest *)self trackedSmartListChangeItems];
      v4 = [v20 allValues];

      v21 = [v4 countByEnumeratingWithState:&v91 objects:v108 count:16];
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
            objc_enumerationMutation(v4);
          }

          v25 = [*(*(&v91 + 1) + 8 * v24) valueWithoutPerformingCopy];
          v26 = [v25 changedKeys];
          v27 = [v26 count];

          if (v27)
          {
            break;
          }

          if (v22 == ++v24)
          {
            v22 = [v4 countByEnumeratingWithState:&v91 objects:v108 count:16];
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
        v28 = [(REMSaveRequest *)self trackedTemplateChangeItems];
        v4 = [v28 allValues];

        v29 = [v4 countByEnumeratingWithState:&v87 objects:v107 count:16];
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
              objc_enumerationMutation(v4);
            }

            v33 = [*(*(&v87 + 1) + 8 * v32) valueWithoutPerformingCopy];
            v34 = [v33 changedKeys];
            v35 = [v34 count];

            if (v35)
            {
              break;
            }

            if (v30 == ++v32)
            {
              v30 = [v4 countByEnumeratingWithState:&v87 objects:v107 count:16];
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
          v36 = [(REMSaveRequest *)self trackedReminderChangeItems];
          v4 = [v36 allValues];

          v37 = [v4 countByEnumeratingWithState:&v83 objects:v106 count:16];
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
                objc_enumerationMutation(v4);
              }

              v41 = [*(*(&v83 + 1) + 8 * v40) valueWithoutPerformingCopy];
              v42 = [v41 changedKeys];
              v43 = [v42 count];

              if (v43)
              {
                break;
              }

              if (v38 == ++v40)
              {
                v38 = [v4 countByEnumeratingWithState:&v83 objects:v106 count:16];
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
            v44 = [(REMSaveRequest *)self trackedListSectionChangeItems];
            v4 = [v44 allValues];

            v45 = [v4 countByEnumeratingWithState:&v79 objects:v105 count:16];
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
                  objc_enumerationMutation(v4);
                }

                v49 = [*(*(&v79 + 1) + 8 * v48) valueWithoutPerformingCopy];
                v50 = [v49 changedKeys];
                v51 = [v50 count];

                if (v51)
                {
                  break;
                }

                if (v46 == ++v48)
                {
                  v46 = [v4 countByEnumeratingWithState:&v79 objects:v105 count:16];
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
              v52 = [(REMSaveRequest *)self trackedSmartListSectionChangeItems];
              v4 = [v52 allValues];

              v53 = [v4 countByEnumeratingWithState:&v75 objects:v104 count:16];
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
                    objc_enumerationMutation(v4);
                  }

                  v57 = [*(*(&v75 + 1) + 8 * v56) valueWithoutPerformingCopy];
                  v58 = [v57 changedKeys];
                  v59 = [v58 count];

                  if (v59)
                  {
                    break;
                  }

                  if (v54 == ++v56)
                  {
                    v54 = [v4 countByEnumeratingWithState:&v75 objects:v104 count:16];
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
                v60 = [(REMSaveRequest *)self trackedTemplateSectionChangeItems];
                v4 = [v60 allValues];

                v61 = [v4 countByEnumeratingWithState:&v71 objects:v103 count:16];
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
                    objc_enumerationMutation(v4);
                  }

                  v65 = [*(*(&v71 + 1) + 8 * v64) valueWithoutPerformingCopy];
                  v66 = [v65 changedKeys];
                  v67 = [v66 count];

                  if (v67)
                  {
                    break;
                  }

                  if (v62 == ++v64)
                  {
                    v62 = [v4 countByEnumeratingWithState:&v71 objects:v103 count:16];
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

- (void)_prepareSave:(id)a3
{
  v123 = *MEMORY[0x1E69E9840];
  v75 = a3;
  if (!v75)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "saveBlock");
  }

  [(REMSaveRequest *)self performPreSaveActions];
  v4 = [(REMSaveRequest *)self trackedAccountChangeItems];
  v5 = [v4 allValues];

  v6 = [(REMSaveRequest *)self trackedListChangeItems];
  v7 = [v6 allValues];

  v8 = [(REMSaveRequest *)self trackedSmartListChangeItems];
  v9 = [v8 allValues];

  v10 = [(REMSaveRequest *)self trackedTemplateChangeItems];
  v11 = [v10 allValues];

  v12 = [(REMSaveRequest *)self trackedReminderChangeItems];
  v13 = [v12 allValues];

  v14 = [(REMSaveRequest *)self trackedListSectionChangeItems];
  v70 = [v14 allValues];

  v15 = [(REMSaveRequest *)self trackedSmartListSectionChangeItems];
  v76 = [v15 allValues];

  v16 = [(REMSaveRequest *)self trackedTemplateSectionChangeItems];
  v73 = [v16 allValues];

  v82 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = v5;
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

  v81 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v22 = v7;
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

  v80 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v28 = v9;
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

  v79 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v34 = v11;
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

  v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v41 = v13;
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

  v47 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v70, "count")}];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v48 = v70;
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

  v54 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v76, "count")}];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v77 = v76;
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

  v60 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v73, "count")}];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v61 = v73;
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
  v75[2](v75, v82, v81, v47, v80, v54, v79, v60, v40);

  v67 = *MEMORY[0x1E69E9840];
}

- (void)performPreSaveActions
{
  if ([(REMSaveRequest *)self cloneCompletedRecurrentRemindersAtSave])
  {
    v3 = [(REMSaveRequest *)self advanceForwardRecurrenceAfterNowAndAndCreateCompletedCloneWithoutRecurrenceRulesAndSubtasks];
  }
}

- (void)preFetchDueDateDeltaAlertsForCompletedRecurrenceClone
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 allKeys];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)preFlightActionSaveAndUpdateParentsOfRecurrentSubtasksWithLogPrefix:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v46 = v4;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "%{public}@: Preflight - Collect parentsOfRecurrentSubtasks", buf, 0xCu);
  }

  v33 = v4;

  v6 = MEMORY[0x1E695DFA8];
  v7 = [(REMSaveRequest *)self trackedReminderChangeItems];
  v8 = [v6 setWithCapacity:{objc_msgSend(v7, "count")}];

  v9 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = [(REMSaveRequest *)self trackedReminderChangeItems];
  v11 = [v10 allValues];

  v12 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v39 + 1) + 8 * i) valueForSaveRequest:self];
        v17 = [v16 objectID];
        [v8 addObject:v17];

        if ([v16 isCompleted])
        {
          v18 = [v16 recurrenceRules];
          v19 = [v18 count];

          if (v19)
          {
            v20 = [v16 parentReminderID];
            if (v20)
            {
              [v9 addObject:v20];
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
    v22 = [(REMSaveRequest *)self store];
    v23 = [v9 allObjects];
    v38 = 0;
    v24 = [v22 fetchRemindersWithObjectIDs:v23 error:&v38];
    v25 = v38;

    if (v25)
    {
      v26 = +[REMLogStore write];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
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
      v26 = [v24 objectEnumerator];
      v28 = [v26 countByEnumeratingWithState:&v34 objects:v43 count:16];
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
              objc_enumerationMutation(v26);
            }

            v32 = [(REMSaveRequest *)self updateReminder:*(*(&v34 + 1) + 8 * j)];
          }

          v29 = [v26 countByEnumeratingWithState:&v34 objects:v43 count:16];
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

  v5 = [MEMORY[0x1E695DF00] rem_now];
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
  v7 = [(REMSaveRequest *)self trackedReminderChangeItems];
  v8 = [v7 allValues];

  v42 = [v8 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v42)
  {
    v10 = *v44;
    *&v9 = 138543618;
    v36 = v9;
    v38 = v5;
    v39 = self;
    v41 = *v44;
    v37 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v43 + 1) + 8 * v11) valueForSaveRequest:{self, v36}];
        v13 = [*(v3 + 3368) write];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v12 objectID];
          *buf = 138543362;
          v48 = v14;
          _os_log_impl(&dword_19A0DB000, v13, OS_LOG_TYPE_INFO, "IncompleteRecurrenceClone: Performing check for has recurrenceRules {reminderID: %{public}@};", buf, 0xCu);
        }

        v15 = [v12 recurrenceRules];
        v16 = [v15 count];

        if (v16)
        {
          v17 = [v12 dueDateComponents];
          [v12 nextRecurrentAdvanceAmountForDateComponents:v17 afterDate:v5];
          v19 = v18;

          if (v19 <= 0.0)
          {
            v20 = [*(v3 + 3368) write];
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_25;
            }

            v21 = [v12 objectID];
            *buf = v36;
            v48 = v21;
            v49 = 2048;
            *v50 = v19;
            _os_log_fault_impl(&dword_19A0DB000, v20, OS_LOG_TYPE_FAULT, "IncompleteRecurrenceClone: Unable to clone recurrent reminder with dueDateAdvanceAmount < 0 {reminderID: %{public}@, dueDateAdvanceAmount: %f}", buf, 0x16u);
          }

          else
          {
            v20 = +[REMReminder newObjectID];
            v21 = [v12 duplicateForRecurrenceUsingReminderID:v20];
            if (v21)
            {
              v22 = [v12 objectID];
              [v40 setObject:v21 forKeyedSubscript:v22];

              [v12 cleanupDuplicate:v21 markAsCompleted:0];
              [v12 advanceForwardToNextRecurrenceAfterDate:v5];
            }

            else
            {
              v32 = [*(v3 + 3368) write];
              if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
              {
                [(REMSaveRequest *)v55 advanceForwardRecurrenceAfterNowAndCreateIncompleteCloneWithoutRecurrenceRulesAndSubtasks];
              }
            }
          }
        }

        else
        {
          v23 = [v12 recurrenceRules];
          v20 = [v23 firstObject];

          v24 = [*(v3 + 3368) write];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = [v12 objectID];
            v26 = [v12 isCompleted];
            v27 = [v20 objectID];
            v28 = [v20 iCalendarDescription];
            v29 = MEMORY[0x1E696AD98];
            v30 = [v12 recurrenceRules];
            v31 = [v29 numberWithUnsignedInteger:{objc_msgSend(v30, "count")}];
            *buf = 138544386;
            v48 = v25;
            v49 = 1026;
            *v50 = v26;
            v8 = v37;
            *&v50[4] = 2114;
            *&v50[6] = v27;
            v51 = 2114;
            v52 = v28;
            v53 = 2114;
            v54 = v31;
            _os_log_impl(&dword_19A0DB000, v24, OS_LOG_TYPE_INFO, "IncompleteRecurrenceClone: Skipping advanceForwardRecurrenceAfterNowAndCreateIncompleteCloneWithoutRecurrenceRulesAndSubtasks to advance forward date alarm for reminder, didn't meet conditions for hasRecurrenceRules {reminderID: %{public}@, isCompleted:%{public}i, recurrenceRuleID: %{public}@, recurrenceRule: %{public}@, ruleCount: %{public}@};", buf, 0x30u);

            v5 = v38;
            self = v39;

            v3 = 0x1E7506000;
          }

          v10 = v41;
        }

LABEL_25:

        ++v11;
      }

      while (v42 != v11);
      v42 = [v8 countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v42);
  }

  v33 = [v40 copy];
  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)advanceForwardRecurrenceAndCreateCompletedCloneWithoutRecurrenceRulesAndSubtasksAfterDate:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v63 = a3;
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
  v7 = [(REMSaveRequest *)self trackedReminderChangeItems];
  v8 = [v7 allValues];

  obj = v8;
  v68 = [v8 countByEnumeratingWithState:&v69 objects:v78 count:16];
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
        v12 = [*(v4 + 3368) write];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [v11 objectID];
          *buf = 138543362;
          v75 = v13;
          _os_log_impl(&dword_19A0DB000, v12, OS_LOG_TYPE_INFO, "CompletedRecurrenceClone: Performing check for isCompleted and has recurrenceRules {reminderID: %{public}@};", buf, 0xCu);
        }

        v14 = [v11 changedKeys];
        if (![v14 containsObject:@"completed"] || (objc_msgSend(v11, "isCompleted") & 1) == 0)
        {

LABEL_23:
          v34 = [v11 recurrenceRules];
          v18 = [v34 firstObject];

          v35 = [*(v4 + 3368) write];
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            goto LABEL_26;
          }

          v36 = [v11 objectID];
          v37 = [v11 isCompleted];
          [v18 objectID];
          v38 = v66 = v10;
          v39 = [v18 iCalendarDescription];
          v40 = MEMORY[0x1E696AD98];
          [v11 recurrenceRules];
          v41 = v18;
          v43 = v42 = self;
          v44 = [v40 numberWithUnsignedInteger:{objc_msgSend(v43, "count")}];
          *buf = 138544386;
          v75 = v36;
          v76 = 1026;
          *v77 = v37;
          *&v77[4] = 2114;
          *&v77[6] = v38;
          *&v77[14] = 2114;
          *&v77[16] = v39;
          *&v77[24] = 2114;
          *&v77[26] = v44;
          _os_log_impl(&dword_19A0DB000, v35, OS_LOG_TYPE_INFO, "CompletedRecurrenceClone: Skipping advanceForwardRecurrenceAfterNowAndAndCreateCompletedCloneWithoutRecurrenceRulesAndSubtasks to advance forward date alarm for reminder, didn't meet conditions for isCompleted and hasRecurrenceRules {reminderID: %{public}@, isCompleted:%{public}i, recurrenceRuleID: %{public}@, recurrenceRule: %{public}@, ruleCount: %{public}@};", buf, 0x30u);

          v4 = 0x1E7506000;
          self = v42;
          v18 = v41;

          v10 = v66;
LABEL_25:

          goto LABEL_26;
        }

        v15 = [v11 recurrenceRules];
        v16 = [v15 count];

        if (!v16)
        {
          goto LABEL_23;
        }

        if (!v63 || ([v11 objectID], v17 = objc_claimAutoreleasedReturnValue(), v63[2](v63, v17), v18 = objc_claimAutoreleasedReturnValue(), v17, !v18))
        {
          v18 = [MEMORY[0x1E695DF00] rem_now];
        }

        v19 = [v11 dueDateComponents];
        [v11 nextRecurrentAdvanceAmountForDateComponents:v19 afterDate:v18];
        v21 = v20;

        if (v21 <= 0.0)
        {
          v35 = [*(v4 + 3368) write];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            v36 = [v11 objectID];
            *buf = v59;
            v75 = v36;
            v76 = 2048;
            *v77 = v21;
            _os_log_fault_impl(&dword_19A0DB000, v35, OS_LOG_TYPE_FAULT, "CompletedRecurrenceClone: Unable to clone recurrent reminder with dueDateAdvanceAmount < 0 {reminderID: %{public}@, dueDateAdvanceAmount: %f}", buf, 0x16u);
            goto LABEL_25;
          }
        }

        else
        {
          v62 = v18;
          v65 = v10;
          v22 = [v11 dueDateComponents];
          v23 = [v22 timeZone];
          v24 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
          v25 = [v23 isEqual:v24];

          if (v25)
          {
            v26 = [MEMORY[0x1E695DFE8] defaultTimeZone];
            v27 = [v11 dueDateComponents];
            v28 = MEMORY[0x1E695DF10];
            v61 = v11;
            v29 = [v11 dueDateComponents];
            v30 = [v28 rem_dateWithDateComponents:v29 timeZone:v26];

            v31 = [v26 nextDaylightSavingTimeTransitionAfterDate:v30];
            v32 = v31;
            if (v31)
            {
              v33 = v31;
            }

            else
            {
              v33 = [MEMORY[0x1E695DF00] distantFuture];
            }

            v45 = v33;

            [v45 timeIntervalSinceDate:v30];
            if (v46 < v21)
            {
              v47 = [*(v4 + 3368) write];
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                v48 = [v11 objectID];
                v49 = [v27 rem_stringRepresentation];
                *buf = 138544386;
                v75 = v48;
                v76 = 2114;
                *v77 = v26;
                *&v77[8] = 2114;
                *&v77[10] = v49;
                *&v77[18] = 2114;
                *&v77[20] = v45;
                *&v77[28] = 2048;
                *&v77[30] = v21;
                _os_log_impl(&dword_19A0DB000, v47, OS_LOG_TYPE_DEFAULT, "CompletedRecurrenceClone: FYI we are advancing a GMT due date across a DST boundary, this user maybe impacted by an hour drift caused by loss of user original due date time zone. {reminderID: %{public}@, userTimeZone: %{public}@, dueDateComponents(before): %{public}@, nextDSTDate: %{public}@, dueDateAdvanceAmount: %f}", buf, 0x34u);
              }
            }

            v11 = v61;
          }

          v35 = +[REMReminder newObjectID];
          v50 = [v11 duplicateForRecurrenceUsingReminderID:v35];
          if (v50)
          {
            v51 = [v11 objectID];
            [v60 setObject:v50 forKeyedSubscript:v51];

            [v11 cleanupDuplicate:v50 markAsCompleted:1];
            [v11 setCompleted:0];
            v52 = [v11 recurrenceRules];
            v18 = v62;
            [v11 advanceForwardToNextRecurrenceAfterDate:v62];
            v53 = [v11 displayDate];
            v54 = [v53 date];

            [v50 setAlternativeDisplayDateDateForCalendarToPreviousRecurrentDateBefore:v54 recurrenceRules:v52];
          }

          else
          {
            v52 = [*(v4 + 3368) write];
            v18 = v62;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
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

- (id)_trackedAccountChangeItemForObjectID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(REMSaveRequest *)self trackedAccountChangeItems];
    v6 = [v5 objectForKeyedSubscript:v4];

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

- (void)_trackAccountChangeItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest addListWithName:toAccountChangeItem:listObjectID:];
    }

    v11 = "accountChangeItem";
    goto LABEL_7;
  }

  v6 = [v4 objectID];

  if (v6)
  {
    v7 = [[REMSaveRequestTrackedValueContainer alloc] initWithValue:v5];
    v8 = [(REMSaveRequest *)self trackedAccountChangeItems];
    v9 = [v5 objectID];
    [v8 setObject:v7 forKeyedSubscript:v9];

    goto LABEL_11;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackAccountChangeItem:];
  }

  v13 = [v5 objectID];

  if (!v13)
  {
    v11 = "accountChangeItem.objectID";
LABEL_7:
    NSLog(&cfstr_SIsUnexpectedl.isa, v11);
  }

LABEL_11:
}

- (void)_updateTrackedAccountChangeItem:(id)a3 withObjectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v15 = +[REMLogStore write];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest addListWithName:toAccountChangeItem:listObjectID:];
    }

    v16 = "accountChangeItem";
    goto LABEL_15;
  }

  v8 = [v6 objectID];

  if (v8)
  {
    if (v7)
    {
      v9 = [(REMSaveRequest *)self trackedAccountChangeItems];
      v10 = [v6 objectID];
      v11 = [v9 objectForKeyedSubscript:v10];

      v12 = [(REMSaveRequest *)self trackedAccountChangeItems];
      v13 = [v6 objectID];
      [v12 removeObjectForKey:v13];

      [v6 setObjectID:v7];
      v14 = [(REMSaveRequest *)self trackedAccountChangeItems];
      [v14 setObject:v11 forKeyedSubscript:v7];

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

  v18 = [v6 objectID];

  if (!v18)
  {
    v16 = "accountChangeItem.objectID";
    goto LABEL_15;
  }

LABEL_16:
}

- (id)_trackedListChangeItemForObjectID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(REMSaveRequest *)self trackedListChangeItems];
    v6 = [v5 objectForKeyedSubscript:v4];

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

- (void)_trackListChangeItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _updateAccountWithListChangeItem:];
    }

    v11 = "listChangeItem";
    goto LABEL_7;
  }

  v6 = [v4 objectID];

  if (v6)
  {
    v7 = [[REMSaveRequestTrackedValueContainer alloc] initWithValue:v5];
    v8 = [(REMSaveRequest *)self trackedListChangeItems];
    v9 = [v5 objectID];
    [v8 setObject:v7 forKeyedSubscript:v9];

    goto LABEL_11;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackListChangeItem:];
  }

  v13 = [v5 objectID];

  if (!v13)
  {
    v11 = "listChangeItem.objectID";
LABEL_7:
    NSLog(&cfstr_SIsUnexpectedl.isa, v11);
  }

LABEL_11:
}

- (void)_updateTrackedListChangeItem:(id)a3 withObjectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v15 = +[REMLogStore write];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _updateAccountWithListChangeItem:];
    }

    v16 = "listChangeItem";
    goto LABEL_15;
  }

  v8 = [v6 objectID];

  if (v8)
  {
    if (v7)
    {
      v9 = [(REMSaveRequest *)self trackedListChangeItems];
      v10 = [v6 objectID];
      v11 = [v9 objectForKeyedSubscript:v10];

      v12 = [(REMSaveRequest *)self trackedListChangeItems];
      v13 = [v6 objectID];
      [v12 removeObjectForKey:v13];

      [v6 setObjectID:v7];
      v14 = [(REMSaveRequest *)self trackedListChangeItems];
      [v14 setObject:v11 forKeyedSubscript:v7];

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

  v18 = [v6 objectID];

  if (!v18)
  {
    v16 = "listChangeItem.objectID";
    goto LABEL_15;
  }

LABEL_16:
}

- (id)_trackedSmartListChangeItemForObjectID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(REMSaveRequest *)self trackedSmartListChangeItems];
    v6 = [v5 objectForKeyedSubscript:v4];

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

- (void)_trackSmartListChangeItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackSmartListChangeItem:];
    }

    v11 = "smartListChangeItem";
    goto LABEL_7;
  }

  v6 = [v4 objectID];

  if (v6)
  {
    v7 = [[REMSaveRequestTrackedValueContainer alloc] initWithValue:v5];
    v8 = [(REMSaveRequest *)self trackedSmartListChangeItems];
    v9 = [v5 objectID];
    [v8 setObject:v7 forKeyedSubscript:v9];

    goto LABEL_11;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackSmartListChangeItem:];
  }

  v13 = [v5 objectID];

  if (!v13)
  {
    v11 = "smartListChangeItem.objectID";
LABEL_7:
    NSLog(&cfstr_SIsUnexpectedl.isa, v11);
  }

LABEL_11:
}

- (void)_updateTrackedSmartListChangeItem:(id)a3 withObjectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v15 = +[REMLogStore write];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackSmartListChangeItem:];
    }

    v16 = "smartListChangeItem";
    goto LABEL_15;
  }

  v8 = [v6 objectID];

  if (v8)
  {
    if (v7)
    {
      v9 = [(REMSaveRequest *)self trackedSmartListChangeItems];
      v10 = [v6 objectID];
      v11 = [v9 objectForKeyedSubscript:v10];

      v12 = [(REMSaveRequest *)self trackedSmartListChangeItems];
      v13 = [v6 objectID];
      [v12 removeObjectForKey:v13];

      [v6 setObjectID:v7];
      v14 = [(REMSaveRequest *)self trackedSmartListChangeItems];
      [v14 setObject:v11 forKeyedSubscript:v7];

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

  v18 = [v6 objectID];

  if (!v18)
  {
    v16 = "smartListChangeItem.objectID";
    goto LABEL_15;
  }

LABEL_16:
}

- (id)_trackedTemplateChangeItemForObjectID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(REMSaveRequest *)self trackedTemplateChangeItems];
    v6 = [v5 objectForKeyedSubscript:v4];

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

- (void)_trackTemplateChangeItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackTemplateChangeItem:];
    }

    v11 = "templateChangeItem";
    goto LABEL_7;
  }

  v6 = [v4 objectID];

  if (v6)
  {
    v7 = [[REMSaveRequestTrackedValueContainer alloc] initWithValue:v5];
    v8 = [(REMSaveRequest *)self trackedTemplateChangeItems];
    v9 = [v5 objectID];
    [v8 setObject:v7 forKeyedSubscript:v9];

    goto LABEL_11;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackTemplateChangeItem:];
  }

  v13 = [v5 objectID];

  if (!v13)
  {
    v11 = "templateChangeItem.objectID";
LABEL_7:
    NSLog(&cfstr_SIsUnexpectedl.isa, v11);
  }

LABEL_11:
}

- (void)_trackListSectionChangeItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackListSectionChangeItem:];
    }

    v11 = "listSectionChangeItem";
    goto LABEL_7;
  }

  v6 = [v4 objectID];

  if (v6)
  {
    v7 = [[REMSaveRequestTrackedValueContainer alloc] initWithValue:v5];
    v8 = [(REMSaveRequest *)self trackedListSectionChangeItems];
    v9 = [v5 objectID];
    [v8 setObject:v7 forKeyedSubscript:v9];

    goto LABEL_11;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackListSectionChangeItem:];
  }

  v13 = [v5 objectID];

  if (!v13)
  {
    v11 = "listSectionChangeItem.objectID";
LABEL_7:
    NSLog(&cfstr_SIsUnexpectedl.isa, v11);
  }

LABEL_11:
}

- (id)_trackedListSectionChangeItemForObjectID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(REMSaveRequest *)self trackedListSectionChangeItems];
    v6 = [v5 objectForKeyedSubscript:v4];

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

- (void)_trackSmartListSectionChangeItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackSmartListSectionChangeItem:];
    }

    v11 = "smartListSectionChangeItem";
    goto LABEL_7;
  }

  v6 = [v4 objectID];

  if (v6)
  {
    v7 = [[REMSaveRequestTrackedValueContainer alloc] initWithValue:v5];
    v8 = [(REMSaveRequest *)self trackedSmartListSectionChangeItems];
    v9 = [v5 objectID];
    [v8 setObject:v7 forKeyedSubscript:v9];

    goto LABEL_11;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackSmartListSectionChangeItem:];
  }

  v13 = [v5 objectID];

  if (!v13)
  {
    v11 = "smartListSectionChangeItem.objectID";
LABEL_7:
    NSLog(&cfstr_SIsUnexpectedl.isa, v11);
  }

LABEL_11:
}

- (id)_trackedSmartListSectionChangeItemForObjectID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(REMSaveRequest *)self trackedSmartListSectionChangeItems];
    v6 = [v5 objectForKeyedSubscript:v4];

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

- (void)_trackTemplateSectionChangeItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackTemplateSectionChangeItem:];
    }

    v11 = "templateSectionChangeItem";
    goto LABEL_7;
  }

  v6 = [v4 objectID];

  if (v6)
  {
    v7 = [[REMSaveRequestTrackedValueContainer alloc] initWithValue:v5];
    v8 = [(REMSaveRequest *)self trackedTemplateSectionChangeItems];
    v9 = [v5 objectID];
    [v8 setObject:v7 forKeyedSubscript:v9];

    goto LABEL_11;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackTemplateSectionChangeItem:];
  }

  v13 = [v5 objectID];

  if (!v13)
  {
    v11 = "templateSectionChangeItem.objectID";
LABEL_7:
    NSLog(&cfstr_SIsUnexpectedl.isa, v11);
  }

LABEL_11:
}

- (id)_trackedTemplateSectionChangeItemForObjectID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(REMSaveRequest *)self trackedTemplateSectionChangeItems];
    v6 = [v5 objectForKeyedSubscript:v4];

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

- (id)_trackedReminderChangeItemForObjectID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(REMSaveRequest *)self trackedReminderChangeItems];
    v6 = [v5 objectForKeyedSubscript:v4];

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

- (void)_trackReminderChangeItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackReminderChangeItem:];
    }

    v11 = "reminderChangeItem";
    goto LABEL_7;
  }

  v6 = [v4 objectID];

  if (v6)
  {
    v7 = [[REMSaveRequestTrackedValueContainer alloc] initWithValue:v5];
    v8 = [(REMSaveRequest *)self trackedReminderChangeItems];
    v9 = [v5 objectID];
    [v8 setObject:v7 forKeyedSubscript:v9];

    goto LABEL_11;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMSaveRequest _trackReminderChangeItem:];
  }

  v13 = [v5 objectID];

  if (!v13)
  {
    v11 = "reminderChangeItem.objectID";
LABEL_7:
    NSLog(&cfstr_SIsUnexpectedl.isa, v11);
  }

LABEL_11:
}

- (void)_updateTrackedReminderChangeItem:(id)a3 withObjectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v15 = +[REMLogStore write];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _trackReminderChangeItem:];
    }

    v16 = "reminderChangeItem";
    goto LABEL_15;
  }

  v8 = [v6 objectID];

  if (v8)
  {
    if (v7)
    {
      v9 = [(REMSaveRequest *)self trackedReminderChangeItems];
      v10 = [v6 objectID];
      v11 = [v9 objectForKeyedSubscript:v10];

      v12 = [(REMSaveRequest *)self trackedReminderChangeItems];
      v13 = [v6 objectID];
      [v12 removeObjectForKey:v13];

      [v6 setObjectID:v7];
      v14 = [(REMSaveRequest *)self trackedReminderChangeItems];
      [v14 setObject:v11 forKeyedSubscript:v7];

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

  v18 = [v6 objectID];

  if (!v18)
  {
    v16 = "reminderChangeItem.objectID";
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_trackAccountCapabilities:(id)a3 forObjectID:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
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
  if (!v7)
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
    v15 = self;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_debug_impl(&dword_19A0DB000, v9, OS_LOG_TYPE_DEBUG, "_trackAccountCapabilities {SaveRequest: %@ accountCapabilities: %@ objectID: %@", buf, 0x20u);
  }

  v10 = [(REMSaveRequest *)self trackedAccountCapabilities];
  [v10 setObject:v6 forKeyedSubscript:v7];

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];
}

- (id)_trackedAccountCapabilitiesForObjectID:(id)a3
{
  v4 = a3;
  v5 = +[REMLogStore write];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [REMSaveRequest _trackedAccountCapabilitiesForObjectID:];
    }

    v7 = [(REMSaveRequest *)self trackedAccountCapabilities];
    v8 = [v7 objectForKeyedSubscript:v4];

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

- (id)_copyReminder:(id)a3 toListChangeItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v20 = +[REMLogStore write];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _copyReminder:toListChangeItem:];
    }

    v21 = "original";
    goto LABEL_14;
  }

  if (!v7)
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

  v9 = [v7 saveRequest];

  v10 = MEMORY[0x1E695D930];
  if (v9 != self)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = [v8 saveRequest];
    [v11 raise:v12 format:{@"List has incorrect save request {original: %@, saveRequest: %@, expectedSaveRequest: %@}", v8, v13, self}];
  }

  if ([v8 isGroup])
  {
    [MEMORY[0x1E695DF30] raise:*v10 format:{@"listChangeItem is a group and adding reminder to group is not currently supported {listChangeItem: %@}", v8}];
  }

  v14 = [REMReminderChangeItem alloc];
  v15 = [v6 storage];
  v16 = [v6 account];
  v17 = [v16 capabilities];
  v18 = [(REMReminderChangeItem *)v14 initWithSaveRequest:self storage:v15 accountCapabilities:v17 observeInitialValues:0];

  v19 = [[REMReminderChangeItem alloc] initWithReminderChangeItem:v18 insertIntoListChangeItem:v8];
  [(REMSaveRequest *)self _trackReminderChangeItem:v19];

LABEL_15:
  return v19;
}

- (id)_copyReminder:(id)a3 toReminderSubtaskContextChangeItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v20 = +[REMLogStore write];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _copyReminder:toListChangeItem:];
    }

    v21 = "original";
    goto LABEL_12;
  }

  if (!v7)
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

  v9 = [v7 reminderChangeItem];
  v10 = [v9 saveRequest];

  if (v10 != self)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = [v9 saveRequest];
    [v11 raise:v12 format:{@"Parent reminder has incorrect save request {original: %@, saveRequest: %@, expectedSaveRequest: %@}", v9, v13, self}];
  }

  v14 = [REMReminderChangeItem alloc];
  v15 = [v6 storage];
  v16 = [v6 account];
  v17 = [v16 capabilities];
  v18 = [(REMReminderChangeItem *)v14 initWithSaveRequest:self storage:v15 accountCapabilities:v17 observeInitialValues:0];

  v19 = [[REMReminderChangeItem alloc] initWithReminderChangeItem:v18 insertIntoParentReminderSubtaskContextChangeItem:v8];
  [(REMSaveRequest *)self _trackReminderChangeItem:v19];

LABEL_13:
  return v19;
}

- (id)_copyReminderChangeItem:(id)a3 toListChangeItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v19 = +[REMLogStore write];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _copyReminder:toListChangeItem:];
    }

    v20 = "original";
    goto LABEL_16;
  }

  if (!v7)
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

  v9 = [v6 saveRequest];

  v10 = MEMORY[0x1E695D930];
  if (v9 != self)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = [v6 saveRequest];
    [v11 raise:v12 format:{@"Original reminder has incorrect save request {original: %@, saveRequest: %@, expectedSaveRequest: %@}", v6, v13, self}];
  }

  v14 = [v8 saveRequest];

  if (v14 != self)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *v10;
    v17 = [v8 saveRequest];
    [v15 raise:v16 format:{@"List has incorrect save request {original: %@, saveRequest: %@, expectedSaveRequest: %@}", v8, v17, self}];
  }

  if ([v8 isGroup])
  {
    [MEMORY[0x1E695DF30] raise:*v10 format:{@"listChangeItem is a group and adding reminder to group is not currently supported {listChangeItem: %@}", v8}];
  }

  v18 = [[REMReminderChangeItem alloc] initWithReminderChangeItem:v6 insertIntoListChangeItem:v8];
  [(REMSaveRequest *)self _trackReminderChangeItem:v18];
LABEL_17:

  return v18;
}

- (id)_copyReminderChangeItem:(id)a3 toReminderSubtaskContextChangeItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v20 = +[REMLogStore write];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [REMSaveRequest _copyReminder:toListChangeItem:];
    }

    v21 = "original";
    goto LABEL_14;
  }

  if (!v7)
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

  v9 = [v6 saveRequest];

  v10 = MEMORY[0x1E695D930];
  if (v9 != self)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = [v6 saveRequest];
    [v11 raise:v12 format:{@"Original reminder has incorrect save request {original: %@, saveRequest: %@, expectedSaveRequest: %@}", v6, v13, self}];
  }

  v14 = [v8 reminderChangeItem];
  v15 = [v14 saveRequest];

  if (v15 != self)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *v10;
    v18 = [v14 saveRequest];
    [v16 raise:v17 format:{@"Parent reminder has incorrect save request {original: %@, saveRequest: %@, expectedSaveRequest: %@}", v14, v18, self}];
  }

  v19 = [[REMReminderChangeItem alloc] initWithReminderChangeItem:v6 insertIntoParentReminderSubtaskContextChangeItem:v8];
  [(REMSaveRequest *)self _trackReminderChangeItem:v19];

LABEL_15:
  return v19;
}

- (REMSaveRequestNotifyChangeDelegate)notifyChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_notifyChangeDelegate);

  return WeakRetained;
}

- (id)_addTestOnlyPrimaryCKAccountWithName:(id)a3 accountObjectID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMSaveRequest *)self __addAccountWithType:_auto_REMAccountTypeForPrimaryCloudKit() name:v7 accountObjectID:v6];

  return v8;
}

- (id)_addTestOnlyExtraPrimaryCKAccountWithName:(id)a3 accountObjectID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMSaveRequest *)self __addAccountWithType:_auto_REMAccountTypeForPrimaryCloudKit() name:v7 accountObjectID:v6];

  v9 = [v8 storage];
  [v9 _setIsAddingExtraPrimaryCKAccountForTesting:1];

  return v8;
}

- (id)__addAccountWithType:(int64_t)a3 name:(id)a4 accountObjectID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    if (v9)
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
  v11 = [[REMAccountChangeItem alloc] initWithObjectID:v10 type:a3 name:v8 insertIntoSaveRequest:self];
  [(REMSaveRequest *)self _trackAccountChangeItem:v11];

  return v11;
}

- (id)addCustomSmartListWithName:(id)a3 toListSublistContextChangeItem:(id)a4 smartListObjectID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "name");
    if (v9)
    {
      goto LABEL_3;
    }
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "listSublistContextChangeItem");
LABEL_3:
  v11 = [v9 listChangeItem];
  v12 = [(REMSaveRequest *)self _updateAccountWithListChangeItem:v11];
  v13 = [v12 saveRequest];

  v14 = MEMORY[0x1E695D930];
  if (v13 != self)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D930];
    [v12 saveRequest];
    v18 = v17 = v14;
    [v15 raise:v16 format:{@"accountChangeItem (%@) has incorrect saveRequest (%@). Expected %@", v12, v18, self}];

    v14 = v17;
  }

  v19 = [v12 capabilities];
  v20 = [v19 supportsCustomSmartLists];

  if ((v20 & 1) == 0)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *v14;
    v23 = [v12 objectID];
    [v21 raise:v22 format:{@"Cannot add CSL to sublist context because the account does not support it {accountID: %@}", v23}];
  }

  if (!v10)
  {
    v10 = +[REMSmartList newObjectID];
  }

  v24 = [[REMSmartListChangeItem alloc] initWithCustomSmartListObjectID:v10 insertIntoListSublistContextChangeItem:v9];
  [(REMSaveRequest *)self _trackSmartListChangeItem:v24];
  [(REMSmartListChangeItem *)v24 setName:v8];

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
  v4 = [OUTLINED_FUNCTION_0_10(a1 a2)];
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