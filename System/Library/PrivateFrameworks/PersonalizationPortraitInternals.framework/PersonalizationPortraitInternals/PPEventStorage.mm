@interface PPEventStorage
+ (id)defaultStorage;
- (BOOL)_isAllDayOrMultiDayEvent:(_BOOL8)event;
- (BOOL)attemptToPurgeImmediately;
- (BOOL)eventKitChangeIsEvent:(id)event;
- (BOOL)shouldIgnoreEventsOnCalendarWithObjectID:(id)d;
- (BOOL)shouldIngestEvent:(id)event;
- (PPEventStorage)initWithEventStorePurger:(id)purger;
- (PPEventStorage)initWithEventStorePurgerGetter:(id)getter;
- (id)_loadCalendars;
- (id)eventWithExternalID:(id)d;
- (id)eventWithIdentifier:(id)identifier;
- (id)eventsInRange:(_NSRange)range;
- (id)nlEventsInRange:(_NSRange)range;
- (id)resolveEventFromEKChange:(id)change;
- (id)suggestedEventsInRange:(_NSRange)range ekStore:(id)store;
- (void)enumerateEventsFromEKObjectIDs:(void *)ds expandingRecurrencesInRange:(char)range withFiltering:(void *)filtering usingBlock:;
- (void)enumerateEventsInRange:(_NSRange)range usingBlock:(id)block;
- (void)iterateEventsFrom:(id)from to:(id)to inChunks:(int)chunks withBlock:(id)block;
- (void)runBlockWithPurgerDisabled:(id)disabled;
- (void)setInvisibleCalendarIdentifiers:(id)identifiers;
@end

@implementation PPEventStorage

- (void)setInvisibleCalendarIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__PPEventStorage_setInvisibleCalendarIdentifiers___block_invoke;
  v7[3] = &unk_278976820;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __50__PPEventStorage_setInvisibleCalendarIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a2;
  v5 = [[v3 alloc] initWithArray:*(a1 + 32)];
  v6 = v4[3];
  v4[3] = v5;
}

void __29__PPEventStorage_clearCaches__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2[2];
  a2[2] = 0;
  v3 = a2;

  v4 = v3[4];
  v3[4] = 0;
}

- (BOOL)shouldIgnoreEventsOnCalendarWithObjectID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    lock = self->_lock;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__PPEventStorage_shouldIgnoreEventsOnCalendarWithObjectID___block_invoke;
    v9[3] = &unk_2789767F8;
    v9[4] = self;
    v11 = &v12;
    v10 = dCopy;
    [(_PASLock *)lock runWithLockAcquired:v9];
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __59__PPEventStorage_shouldIgnoreEventsOnCalendarWithObjectID___block_invoke(void *a1, void *a2)
{
  v3 = a2[4];
  if (!v3)
  {
    v5 = a1[4];
    v6 = a2;
    v7 = [(PPEventStorage *)v5 _loadCalendars];
    v3 = a2[4];
  }

  result = [v3 containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result ^ 1;
  return result;
}

- (id)_loadCalendars
{
  if (self)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x3032000000;
    v7 = __Block_byref_object_copy__18014;
    v8 = __Block_byref_object_dispose__18015;
    v9 = 0;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __32__PPEventStorage__loadCalendars__block_invoke;
    v3[3] = &unk_2789768D8;
    v3[5] = &v4;
    v3[6] = sel__loadCalendars;
    v3[4] = self;
    [self runBlockWithPurgerDisabled:v3];
    v1 = v5[5];
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t __32__PPEventStorage__loadCalendars__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v5[2] = __32__PPEventStorage__loadCalendars__block_invoke_2;
  v5[3] = &unk_2789768B0;
  v7 = v1;
  v6 = v2;
  return [v3 runWithLockAcquired:v5];
}

void __32__PPEventStorage__loadCalendars__block_invoke_2(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pp_events_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPEventStorage: loading calendars", buf, 2u);
  }

  v5 = [v3 ekStore];
  if (!v5)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a1[6] object:a1[4] file:@"PPEventStorage.m" lineNumber:583 description:{@"Invalid parameter not satisfying: %@", @"[guardedData ekStore]"}];
  }

  v6 = [v3 ekStore];
  v7 = [v6 calendarsForEntityType:0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __32__PPEventStorage__loadCalendars__block_invoke_88;
  v25[3] = &unk_278976848;
  v8 = v3;
  v26 = v8;
  v9 = [v7 _pas_filteredArrayWithTest:v25];
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = objc_alloc(MEMORY[0x277CBEB98]);
  v13 = [*(*(a1[5] + 8) + 40) _pas_mappedArrayWithTransform:&__block_literal_global_93];
  v14 = [v12 initWithArray:v13];
  v15 = v8[2];
  v8[2] = v14;

  v16 = objc_alloc(MEMORY[0x277CBEB98]);
  v17 = [*(*(a1[5] + 8) + 40) _pas_mappedArrayWithTransform:&__block_literal_global_96_18022];
  v18 = [v16 initWithArray:v17];
  v19 = v8[4];
  v8[4] = v18;

  v20 = pp_events_log_handle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(*(a1[5] + 8) + 40) count];
    v22 = *(*(a1[5] + 8) + 40);
    *buf = 134218243;
    v28 = v21;
    v29 = 2113;
    v30 = v22;
    _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, "PPEventStorage: will use %tu calendars: %{private}@", buf, 0x16u);
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __32__PPEventStorage__loadCalendars__block_invoke_88(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 3 || (objc_msgSend(v3, "isSubscribed") & 1) != 0 || (objc_msgSend(v3, "source"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isDelegate"), v4, (v5 & 1) != 0) || objc_msgSend(v3, "type") == 4)
  {
    v6 = 0;
  }

  else
  {
    v8 = *(*(a1 + 32) + 24);
    v9 = [v3 calendarIdentifier];
    LODWORD(v8) = [v8 containsObject:v9];

    v6 = v8 ^ 1;
  }

  return v6;
}

id __32__PPEventStorage__loadCalendars__block_invoke_2_90(uint64_t a1, void *a2)
{
  v2 = [a2 calendarIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)shouldIngestEvent:(id)event
{
  eventCopy = event;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__PPEventStorage_shouldIngestEvent___block_invoke;
  v8[3] = &unk_2789767F8;
  v8[4] = self;
  v6 = eventCopy;
  v9 = v6;
  v10 = &v11;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __36__PPEventStorage_shouldIngestEvent___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = v10[2];
  if (!v3)
  {
    v4 = [(PPEventStorage *)*(a1 + 32) _loadCalendars];
    v3 = v10[2];
  }

  v5 = [*(a1 + 40) calendar];
  v6 = [v5 calendarIdentifier];
  v7 = [v3 containsObject:v6];

  if (v7)
  {
    v8 = [(PPEventStorage *)*(a1 + 32) _isAllDayOrMultiDayEvent:?];
    v9 = *(*(a1 + 48) + 8);
    if (!v8)
    {
      *(v9 + 24) = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = *(*(a1 + 48) + 8);
  }

  *(v9 + 24) = 0;
LABEL_8:
}

- (BOOL)_isAllDayOrMultiDayEvent:(_BOOL8)event
{
  v3 = a2;
  v4 = v3;
  if (event)
  {
    if ([v3 isAllDay])
    {
      event = 1;
    }

    else
    {
      endDate = [v4 endDate];
      startDate = [v4 startDate];
      [endDate timeIntervalSinceDate:startDate];
      event = v7 >= 86400.0;
    }
  }

  return event;
}

- (BOOL)eventKitChangeIsEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [eventCopy entityType] == 2;

  return v4;
}

- (id)eventWithExternalID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__18014;
    v16 = __Block_byref_object_dispose__18015;
    v17 = 0;
    lock = self->_lock;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__PPEventStorage_eventWithExternalID___block_invoke;
    v9[3] = &unk_2789765B0;
    v10 = dCopy;
    v11 = &v12;
    [(_PASLock *)lock runWithLockAcquired:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __38__PPEventStorage_eventWithExternalID___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a2 ekStore];
  v4 = [v3 calendarItemsWithExternalIdentifier:*(a1 + 32)];

  if ([v4 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)enumerateEventsFromEKObjectIDs:(void *)ds expandingRecurrencesInRange:(char)range withFiltering:(void *)filtering usingBlock:
{
  v9 = a2;
  dsCopy = ds;
  filteringCopy = filtering;
  if (self && [v9 count])
  {
    v12 = objc_opt_new();
    v13 = *(self + 16);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __102__PPEventStorage_enumerateEventsFromEKObjectIDs_expandingRecurrencesInRange_withFiltering_usingBlock___block_invoke;
    v15[3] = &unk_2789767D0;
    rangeCopy = range;
    v16 = v9;
    selfCopy = self;
    v18 = dsCopy;
    v19 = v12;
    v20 = filteringCopy;
    v14 = v12;
    [v13 runWithLockAcquired:v15];
  }
}

void __102__PPEventStorage_enumerateEventsFromEKObjectIDs_expandingRecurrencesInRange_withFiltering_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v84 = 0;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v80 objects:v91 count:16];
  if (v5)
  {
    v6 = v5;
    v79 = *v81;
    do
    {
      v7 = 0;
      do
      {
        if (*v81 != v79)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v80 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = objc_autoreleasePoolPush();
        v11 = [v3 ekStore];
        v12 = [v11 publicObjectWithObjectID:v8];

        objc_autoreleasePoolPop(v10);
        if (!v12)
        {
          v21 = pp_default_log_handle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v86 = v8;
            v22 = v21;
            v23 = "PPEventStorage: objectID %@ no longer exists, probably deleted";
            goto LABEL_35;
          }

LABEL_25:

          goto LABEL_26;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = pp_default_log_handle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412547;
            v86 = v8;
            v87 = 2117;
            v88 = v12;
            _os_log_fault_impl(&dword_23224A000, v21, OS_LOG_TYPE_FAULT, "PPEventStorage: saw non-ekevent: %@ %{sensitive}@", buf, 0x16u);
          }

          goto LABEL_25;
        }

        v13 = [v12 startDate];
        if (!v13 || (v14 = v13, [v12 endDate], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, !v15))
        {
          v21 = pp_default_log_handle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v86 = v8;
            v22 = v21;
            v23 = "PPEventStorage: objectID %@ has no startDate and/or endDate, probably deleted";
LABEL_35:
            _os_log_debug_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEBUG, v23, buf, 0xCu);
          }

          goto LABEL_25;
        }

        if (*(a1 + 72) == 1 && ([*(a1 + 40) shouldIngestEvent:v12] & 1) == 0)
        {
          v21 = pp_default_log_handle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v26 = [v12 startDate];
            [v12 title];
            v27 = v77 = v4;
            *buf = 138412803;
            v86 = v8;
            v87 = 2113;
            v88 = v26;
            v89 = 2117;
            v90 = v27;
            _os_log_debug_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEBUG, "PPEventStorage: enumerateEventsFromEKObjectIDs skipping objectID %@ because shouldIngestEvent returned NO: %{private}@ %{sensitive}@", buf, 0x20u);

            v4 = v77;
          }

          goto LABEL_25;
        }

        if (*(a1 + 48) && ([v12 isDetached] & 1) == 0 && (objc_msgSend(v12, "hasRecurrenceRules") & 1) != 0)
        {
          v63 = objc_autoreleasePoolPush();
          v16 = pp_default_log_handle();
          v76 = v4;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v57 = [v12 startDate];
            v58 = [v12 title];
            *buf = 138412803;
            v86 = v8;
            v87 = 2113;
            v88 = v57;
            v89 = 2117;
            v90 = v58;
            _os_log_debug_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEBUG, "PPEventStorage: enumerateEventsFromEKObjectIDs will expand recurrences for objectID %@: %{private}@ %{sensitive}@", buf, 0x20u);

            v4 = v76;
          }

          (*(*(a1 + 64) + 16))();
          if (v84 == 1)
          {
            objc_autoreleasePoolPop(v63);
LABEL_71:

            objc_autoreleasePoolPop(v9);
            goto LABEL_72;
          }

          v17 = objc_autoreleasePoolPush();
          v18 = [v12 exceptionDates];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = [MEMORY[0x277CBEB98] set];
          }

          v71 = v20;

          objc_autoreleasePoolPop(v17);
          context = objc_autoreleasePoolPush();
          v28 = [v12 detachedItems];
          v29 = [v28 _pas_mappedSetWithTransform:&__block_literal_global_76_18045];
          v30 = v29;
          if (v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = [MEMORY[0x277CBEB98] set];
          }

          v32 = v31;

          objc_autoreleasePoolPop(context);
          v33 = objc_autoreleasePoolPush();
          contexta = [v71 setByAddingObjectsFromSet:v32];
          objc_autoreleasePoolPop(v33);

          v34 = [v12 startCalendarDate];
          v35 = [v12 recurrenceRules];
          v36 = [v12 persistentObject];
          v70 = v35;
          v72 = v34;
          v65 = v36;
          if (v35)
          {
            v37 = v36 == 0;
          }

          else
          {
            v37 = 1;
          }

          v38 = v37;
          v62 = v38;
          if (v37)
          {
            v39 = pp_default_log_handle();
            v4 = v76;
            if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_66;
            }

            *buf = 138412290;
            v86 = v8;
            v40 = v39;
            v41 = "PPEventStorage: objectID %@ has lost its recurrenceRules and/or persistentObject, probably deleted";
          }

          else
          {
            v4 = v76;
            if (v34)
            {
              v39 = [*(a1 + 48) startDate];
              if ((v84 & 1) == 0)
              {
                v42 = 0;
                v64 = a1;
                v61 = v3;
                while (1)
                {
                  v43 = v39;
                  v44 = v42;
                  v45 = objc_autoreleasePoolPush();
                  v67 = *(a1 + 56);
                  v69 = v45;
                  v46 = MEMORY[0x277CF7860];
                  v47 = [MEMORY[0x277CBEBB0] calendarTimeZone];
                  v48 = [v46 calendarDateWithDate:v43 timeZone:v47];
                  v66 = v44;
                  v39 = [v67 nextOccurrenceDateWithEKRecurrences:v70 forCalendarItem:v12 exceptionDates:contexta initialDate:v72 afterDate:v48 inclusive:v44 == 0];

                  if (!v39 || ![*(a1 + 48) containsDate:v39])
                  {
                    break;
                  }

                  v49 = [v12 startDate];
                  v50 = [v39 isEqual:v49];

                  v3 = v61;
                  if ((v50 & 1) == 0)
                  {
                    v51 = objc_autoreleasePoolPush();
                    v52 = [objc_alloc(MEMORY[0x277CC5A28]) initWithPersistentObject:v65 occurrenceDate:v39];
                    objc_autoreleasePoolPop(v51);
                    v53 = pp_default_log_handle();
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                    {
                      v54 = [v52 startDate];
                      [v52 title];
                      v55 = v68 = v52;
                      *buf = 138412803;
                      v86 = v8;
                      v87 = 2113;
                      v88 = v54;
                      v89 = 2117;
                      v90 = v55;
                      _os_log_debug_impl(&dword_23224A000, v53, OS_LOG_TYPE_DEBUG, "PPEventStorage: enumerateEventsFromEKObjectIDs object ID %@ calling block for occurrence: %{private}@ %{sensitive}@", buf, 0x20u);

                      v52 = v68;
                    }

                    (*(*(v64 + 64) + 16))();
                  }

                  objc_autoreleasePoolPop(v69);
                  a1 = v64;
                  v4 = v76;
                  if (v66 <= 0x12)
                  {
                    v42 = v66 + 1;
                    if ((v84 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  goto LABEL_66;
                }

                v3 = v61;
                v4 = v76;
                objc_autoreleasePoolPop(v69);
              }

LABEL_66:

              objc_autoreleasePoolPop(v63);
              if (v62)
              {
                goto LABEL_27;
              }

              goto LABEL_26;
            }

            v39 = pp_default_log_handle();
            if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_66;
            }

            *buf = 138412290;
            v86 = v8;
            v40 = v39;
            v41 = "PPEventStorage: enumerateEventsFromEKObjectIDs cancelled expanding recurrences for objectID %@ (startCalendarDate was nil)";
          }

          _os_log_debug_impl(&dword_23224A000, v40, OS_LOG_TYPE_DEBUG, v41, buf, 0xCu);
          goto LABEL_66;
        }

        v24 = objc_autoreleasePoolPush();
        v25 = pp_default_log_handle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          contextb = [v12 startDate];
          [v12 title];
          v56 = v78 = v4;
          *buf = 138412803;
          v86 = v8;
          v87 = 2113;
          v88 = contextb;
          v89 = 2117;
          v90 = v56;
          _os_log_debug_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEBUG, "PPEventStorage: enumerateEventsFromEKObjectIDs calling block for objectID %@ without recurrence expansion: %{private}@ %{sensitive}@", buf, 0x20u);

          v4 = v78;
        }

        (*(*(a1 + 64) + 16))();
        objc_autoreleasePoolPop(v24);
LABEL_26:
        if (v84 == 1)
        {
          goto LABEL_71;
        }

LABEL_27:

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v7 != v6);
      v59 = [v4 countByEnumeratingWithState:&v80 objects:v91 count:16];
      v6 = v59;
    }

    while (v59);
  }

LABEL_72:

  v60 = *MEMORY[0x277D85DE8];
}

- (id)resolveEventFromEKChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (changeCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__18014;
    v16 = __Block_byref_object_dispose__18015;
    v17 = 0;
    lock = self->_lock;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__PPEventStorage_resolveEventFromEKChange___block_invoke;
    v9[3] = &unk_2789765B0;
    v10 = changeCopy;
    v11 = &v12;
    [(_PASLock *)lock runWithLockAcquired:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __43__PPEventStorage_resolveEventFromEKChange___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) entityType] == 2)
  {
    v3 = [v7 ekStore];
    v4 = [v3 publicObjectWithObjectID:*(a1 + 32)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (void)iterateEventsFrom:(id)from to:(id)to inChunks:(int)chunks withBlock:(id)block
{
  fromCopy = from;
  toCopy = to;
  blockCopy = block;
  if (!chunks)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPEventStorage.m" lineNumber:313 description:{@"Invalid parameter not satisfying: %@", @"numberOfChunks"}];
  }

  lock = self->_lock;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__PPEventStorage_iterateEventsFrom_to_inChunks_withBlock___block_invoke;
  v19[3] = &unk_278976788;
  v20 = toCopy;
  v21 = fromCopy;
  chunksCopy = chunks;
  selfCopy = self;
  v23 = blockCopy;
  v15 = blockCopy;
  v16 = fromCopy;
  v17 = toCopy;
  [(_PASLock *)lock runWithLockAcquired:v19];
}

void __58__PPEventStorage_iterateEventsFrom_to_inChunks_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [*(a1 + 32) timeIntervalSinceDate:*(a1 + 40)];
  v6 = v5;
  v7 = *(a1 + 64);
  v8 = [(PPEventStorage *)*(a1 + 48) _loadCalendars];
  if (*(a1 + 64) >= 1)
  {
    v9 = 0;
    v10 = v6 / v7;
    v11 = 0.0;
    do
    {
      v12 = objc_autoreleasePoolPush();
      if (v9)
      {
        [*(a1 + 48) attemptToPurgeImmediately];
      }

      v13 = [*(a1 + 40) dateByAddingTimeInterval:v11];
      v14 = [v13 dateByAddingTimeInterval:v10];
      [v14 timeIntervalSinceReferenceDate];
      v16 = v15;
      [*(a1 + 32) timeIntervalSinceReferenceDate];
      if (v16 >= v17)
      {
        v18 = *(a1 + 32);

        v14 = v18;
      }

      v19 = *(a1 + 48);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __58__PPEventStorage_iterateEventsFrom_to_inChunks_withBlock___block_invoke_2;
      v22[3] = &unk_278976760;
      v23 = v3;
      v24 = v13;
      v25 = v14;
      v26 = v8;
      v27 = v4;
      v28 = *(a1 + 56);
      v20 = v14;
      v21 = v13;
      [v19 runBlockWithPurgerDisabled:v22];
      v11 = v10 + v11;

      objc_autoreleasePoolPop(v12);
      ++v9;
    }

    while (v9 < *(a1 + 64));
  }
}

void __58__PPEventStorage_iterateEventsFrom_to_inChunks_withBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) ekStore];
  v3 = [v2 predicateForEventsWithStartDate:*(a1 + 40) endDate:*(a1 + 48) calendars:*(a1 + 56)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__PPEventStorage_iterateEventsFrom_to_inChunks_withBlock___block_invoke_3;
  v4[3] = &unk_278976738;
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  [v2 enumerateEventsMatchingPredicate:v3 usingBlock:v4];
}

void __58__PPEventStorage_iterateEventsFrom_to_inChunks_withBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "hash")}];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "hash")}];
    [v6 addObject:v7];
  }

  objc_autoreleasePoolPop(v3);
}

- (id)nlEventsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__18014;
  v17 = __Block_byref_object_dispose__18015;
  v18 = objc_opt_new();
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34__PPEventStorage_nlEventsInRange___block_invoke;
  v12[3] = &unk_278976710;
  v12[5] = location;
  v12[6] = length;
  v12[4] = &v13;
  [(_PASLock *)lock runWithLockAcquired:v12];
  v7 = [v14[5] sortedArrayUsingSelector:sel_compareStartDateWithEvent_];
  v8 = v7;
  v9 = MEMORY[0x277CBEBF8];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  _Block_object_dispose(&v13, 8);

  return v10;
}

void __34__PPEventStorage_nlEventsInRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 ekStore];
  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a1 + 40)];
  v6 = [v4 predicateForNaturalLanguageSuggestedEventsWithSearchString:0 startDate:v5];

  v7 = [v3 ekStore];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__PPEventStorage_nlEventsInRange___block_invoke_2;
  v8[3] = &unk_2789766E8;
  v9 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  [v7 enumerateEventsMatchingPredicate:v6 usingBlock:v8];
}

void __34__PPEventStorage_nlEventsInRange___block_invoke_2(void *a1, void *a2)
{
  v7 = a2;
  v3 = [v7 startDate];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  v6 = a1[5];
  if (v5 > v6 && v5 < (a1[6] + v6))
  {
    [*(*(a1[4] + 8) + 40) addObject:v7];
  }
}

- (id)suggestedEventsInRange:(_NSRange)range ekStore:(id)store
{
  length = range.length;
  location = range.location;
  v32 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v8 = objc_opt_new();
  v9 = pp_events_log_handle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (length < 0x127501)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPEventStorage: suggestedEventsInRange: short query, using date range predicate", buf, 2u);
    }

    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:location];
    v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:(location + length)];
    v14 = [storeCopy predicateForEventsWithStartDate:v12 endDate:v13 calendars:0];
    if (v14)
    {
      v15 = v14;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __49__PPEventStorage_suggestedEventsInRange_ekStore___block_invoke_55;
      v22[3] = &unk_2789766C0;
      v22[4] = self;
      v23 = v8;
      [storeCopy enumerateEventsMatchingPredicate:v15 usingBlock:v22];

      goto LABEL_10;
    }

    v19 = pp_events_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v29 = location;
      v30 = 2048;
      v31 = length;
      _os_log_error_impl(&dword_23224A000, v19, OS_LOG_TYPE_ERROR, "PPEventStorage: EventKit returned a nil predicate for Events range: (%tu, %tu)", buf, 0x16u);
    }

LABEL_18:
    v18 = MEMORY[0x277CBEBF8];
    goto LABEL_19;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPEventStorage: suggestedEventsInRange: large query, using suggested event predicate", buf, 2u);
  }

  predicateForEventsCreatedFromSuggestion = [storeCopy predicateForEventsCreatedFromSuggestion];
  if (!predicateForEventsCreatedFromSuggestion)
  {
    v12 = pp_events_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPEventStorage: EventKit returned a nil predicate for predicateForEventsCreatedFromSuggestion", buf, 2u);
    }

    goto LABEL_18;
  }

  v12 = predicateForEventsCreatedFromSuggestion;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __49__PPEventStorage_suggestedEventsInRange_ekStore___block_invoke;
  v24[3] = &unk_278976698;
  v26 = location;
  v27 = length;
  v25 = v8;
  [storeCopy enumerateEventsMatchingPredicate:v12 usingBlock:v24];
  v13 = v25;
LABEL_10:

  v16 = [v8 sortedArrayUsingSelector:sel_compareStartDateWithEvent_];
  v12 = v16;
  v17 = MEMORY[0x277CBEBF8];
  if (v16)
  {
    v17 = v16;
  }

  v18 = v17;
LABEL_19:

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

void __49__PPEventStorage_suggestedEventsInRange_ekStore___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 startDate];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  v6 = *(a1 + 40);
  if (v5 > v6 && v5 < (*(a1 + 48) + v6))
  {
    [*(a1 + 32) addObject:v7];
  }
}

void __49__PPEventStorage_suggestedEventsInRange_ekStore___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [v7 customObjectForKey:@"SGEventMetadataKey"];

    objc_autoreleasePoolPop(v5);
    if (v6)
    {
      [*(a1 + 40) addObject:v7];
    }
  }

  else
  {
  }
}

- (void)enumerateEventsInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  v40 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__18014;
  v37 = __Block_byref_object_dispose__18015;
  v38 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __52__PPEventStorage_enumerateEventsInRange_usingBlock___block_invoke;
  v32[3] = &unk_278976620;
  v32[6] = location;
  v32[7] = length;
  v32[4] = self;
  v32[5] = &v33;
  [(PPEventStorage *)self runBlockWithPurgerDisabled:v32];
  [(PPEventStorage *)self attemptToPurgeImmediately];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:location];
  v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 duration:length];

  v18 = [v34[5] count];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v34[5];
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (v10)
  {
    v11 = *v29;
LABEL_3:
    v12 = 0;
    v13 = v18;
    v18 -= v10;
    while (1)
    {
      if (*v29 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v28 + 1) + 8 * v12);
      v15 = objc_autoreleasePoolPush();
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __52__PPEventStorage_enumerateEventsInRange_usingBlock___block_invoke_3;
      v20[3] = &unk_278976670;
      v20[4] = self;
      v20[5] = v14;
      v21 = v8;
      v22 = blockCopy;
      v23 = &v24;
      [(PPEventStorage *)self runBlockWithPurgerDisabled:v20];
      if (!(v13 % 0xA))
      {
        [(PPEventStorage *)self attemptToPurgeImmediately];
      }

      v16 = *(v25 + 24);

      _Block_object_dispose(&v24, 8);
      objc_autoreleasePoolPop(v15);
      if (v16)
      {
        break;
      }

      ++v12;
      --v13;
      if (v10 == v12)
      {
        v10 = [v9 countByEnumeratingWithState:&v28 objects:v39 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v33, 8);
  v17 = *MEMORY[0x277D85DE8];
}

void __52__PPEventStorage_enumerateEventsInRange_usingBlock___block_invoke(void *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = a1[6];
  v4 = a1[7];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__18014;
  v33 = __Block_byref_object_dispose__18015;
  v34 = 0;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v3];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:(v3 + v4)];
  v7 = *(v2 + 16);
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __59__PPEventStorage__predicateForRange_loadDefaultProperties___block_invoke;
  v36 = &unk_278976900;
  v40 = &v29;
  v8 = v5;
  v37 = v8;
  v9 = v6;
  v38 = v9;
  v39 = v2;
  v41 = 0;
  [v7 runWithLockAcquired:buf];
  v10 = v30[5];

  _Block_object_dispose(&v29, 8);
  if (v10)
  {
    v11 = objc_opt_new();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v36 = __Block_byref_object_copy__18014;
    v37 = __Block_byref_object_dispose__18015;
    v38 = 0;
    v12 = *(a1[4] + 16);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __52__PPEventStorage_enumerateEventsInRange_usingBlock___block_invoke_51;
    v28[3] = &unk_2789765F8;
    v28[4] = buf;
    [v12 runWithLockAcquired:v28];
    v13 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __52__PPEventStorage_enumerateEventsInRange_usingBlock___block_invoke_2;
    v26 = &unk_278979168;
    v27 = v11;
    v14 = v11;
    [v13 enumerateEventsMatchingPredicate:v10 usingBlock:&v23];

    v15 = [v14 array];
    v16 = *(a1[5] + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  else
  {
LABEL_4:
    v18 = pp_events_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = a1[6];
      v22 = a1[7];
      *buf = 134218240;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = v22;
      _os_log_error_impl(&dword_23224A000, v18, OS_LOG_TYPE_ERROR, "PPEventStorage: EventKit returned a nil predicate for Events range: (%tu, %tu)", buf, 0x16u);
    }

    v10 = 0;
    v19 = *(a1[5] + 8);
    v14 = *(v19 + 40);
    *(v19 + 40) = MEMORY[0x277CBEBF8];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __52__PPEventStorage_enumerateEventsInRange_usingBlock___block_invoke_3(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v15[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v4 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__PPEventStorage_enumerateEventsInRange_usingBlock___block_invoke_4;
  v10[3] = &unk_278976648;
  v5 = v4;
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v13 = v7;
  v14 = v8;
  [(PPEventStorage *)v2 enumerateEventsFromEKObjectIDs:v3 expandingRecurrencesInRange:v5 withFiltering:0 usingBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __52__PPEventStorage_enumerateEventsInRange_usingBlock___block_invoke_4(void *a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = [v9 startDate];
  v6 = [v9 endDate];
  v7 = v6;
  if (v5 && v6 && [v5 compare:v6] != 1)
  {
    v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v7];
    if ([v8 intersectsDateInterval:a1[4]])
    {
      if ([(PPEventStorage *)a1[5] _isAllDayOrMultiDayEvent:v9])
      {
        *a3 = 1;
      }

      else
      {
        (*(a1[6] + 16))();
        *(*(a1[7] + 8) + 24) = *a3;
      }
    }
  }
}

uint64_t __52__PPEventStorage_enumerateEventsInRange_usingBlock___block_invoke_51(uint64_t a1, void *a2)
{
  v3 = [a2 ekStore];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __52__PPEventStorage_enumerateEventsInRange_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  [v2 addObject:v3];
}

void __59__PPEventStorage__predicateForRange_loadDefaultProperties___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v11 ekStore];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = [(PPEventStorage *)*(a1 + 48) _loadCalendars];
  v8 = [v4 predicateForEventsWithStartDate:v5 endDate:v6 calendars:v7 loadDefaultProperties:*(a1 + 64)];

  objc_autoreleasePoolPop(v3);
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)eventsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __32__PPEventStorage_eventsInRange___block_invoke;
  v11[3] = &unk_278977478;
  v11[4] = self;
  v13 = location;
  v14 = length;
  v7 = v6;
  v12 = v7;
  [(PPEventStorage *)self runBlockWithPurgerDisabled:v11];
  v8 = v12;
  v9 = v7;

  return v7;
}

void __32__PPEventStorage_eventsInRange___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __32__PPEventStorage_eventsInRange___block_invoke_2;
  v3[3] = &unk_278979168;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 enumerateEventsInRange:*(a1 + 48) usingBlock:{*(a1 + 56), v3}];
}

void __32__PPEventStorage_eventsInRange___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 startDate];
  if (v3)
  {
    v4 = v3;
    v5 = [v6 endDate];

    if (v5)
    {
      [*(a1 + 32) insertObject:v6 atIndex:{objc_msgSend(*(a1 + 32), "indexOfObject:inSortedRange:options:usingComparator:", v6, 0, objc_msgSend(*(a1 + 32), "count"), 1024, &__block_literal_global_48)}];
    }
  }
}

- (id)eventWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18014;
  v16 = __Block_byref_object_dispose__18015;
  v17 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__PPEventStorage_eventWithIdentifier___block_invoke;
  v9[3] = &unk_2789765B0;
  v11 = &v12;
  v6 = identifierCopy;
  v10 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __38__PPEventStorage_eventWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v8 ekStore];
  v5 = [v4 eventWithIdentifier:*(a1 + 32)];

  objc_autoreleasePoolPop(v3);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)runBlockWithPurgerDisabled:(id)disabled
{
  disabledCopy = disabled;
  v4 = os_transaction_create();
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_42];
  v5 = objc_autoreleasePoolPush();
  disabledCopy[2]();
  objc_autoreleasePoolPop(v5);
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_44];
}

uint64_t __45__PPEventStorage_runBlockWithPurgerDisabled___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40) - 1;
  *(a2 + 40) = v2;
  if (!v2)
  {
    return [*(a2 + 8) setPurgingAllowed:1];
  }

  return result;
}

uint64_t __45__PPEventStorage_runBlockWithPurgerDisabled___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = v2 + 1;
  if (!v2)
  {
    return [*(a2 + 8) setPurgingAllowed:0];
  }

  return result;
}

- (BOOL)attemptToPurgeImmediately
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PPEventStorage_attemptToPurgeImmediately__block_invoke;
  v5[3] = &unk_2789765B0;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __43__PPEventStorage_attemptToPurgeImmediately__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3[5])
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v11 = v3;
    v4 = objc_autoreleasePoolPush();
    v5 = objc_autoreleasePoolPush();
    v6 = [v11[1] acquireCachedEventStoreOrCreate:0];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 connection];
      [v8 disconnect];
    }

    objc_autoreleasePoolPop(v5);
    v9 = (*(*(*(a1 + 32) + 8) + 16))();
    v10 = v11[1];
    v11[1] = v9;

    *(*(*(a1 + 40) + 8) + 24) = 1;
    objc_autoreleasePoolPop(v4);
    v3 = v11;
  }
}

- (PPEventStorage)initWithEventStorePurgerGetter:(id)getter
{
  getterCopy = getter;
  v17.receiver = self;
  v17.super_class = PPEventStorage;
  v5 = [(PPEventStorage *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [getterCopy copy];
    purgerGetter = v5->_purgerGetter;
    v5->_purgerGetter = v7;

    v9 = objc_autoreleasePoolPush();
    v10 = (*(v5->_purgerGetter + 2))();
    objc_autoreleasePoolPop(v9);
    v11 = v6[1];
    v6[1] = v10;

    v12 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v6];
    lock = v5->_lock;
    v5->_lock = v12;

    v14 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.proactive.PPEventStorage.serialQueue" qosClass:9];
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v14;
  }

  return v5;
}

- (PPEventStorage)initWithEventStorePurger:(id)purger
{
  purgerCopy = purger;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__PPEventStorage_initWithEventStorePurger___block_invoke;
  v8[3] = &unk_278976568;
  v9 = purgerCopy;
  v5 = purgerCopy;
  v6 = [(PPEventStorage *)self initWithEventStorePurgerGetter:v8];

  return v6;
}

id __22__PPEventStorage_init__block_invoke()
{
  objc_opt_self();
  v0 = objc_opt_new();
  [v0 setTimeout:0.5];
  [v0 setPurgingAllowed:1];
  [v0 setCreationBlock:&__block_literal_global_30];

  return v0;
}

id __31__PPEventStorage_ekStorePurger__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = PPNewEKEventStore();
  objc_autoreleasePoolPop(v0);

  return v1;
}

+ (id)defaultStorage
{
  if (defaultStorage__pasOnceToken6 != -1)
  {
    dispatch_once(&defaultStorage__pasOnceToken6, &__block_literal_global_18088);
  }

  v3 = defaultStorage__pasExprOnceResult;

  return v3;
}

void __32__PPEventStorage_defaultStorage__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = defaultStorage__pasExprOnceResult;
  defaultStorage__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end