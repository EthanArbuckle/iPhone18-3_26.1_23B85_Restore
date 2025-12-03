@interface PHANotificationCoreDuetHelper
+ (BOOL)userIsActivelyUsingAppWithName:(id)name error:(id *)error;
@end

@implementation PHANotificationCoreDuetHelper

+ (BOOL)userIsActivelyUsingAppWithName:(id)name error:(id *)error
{
  v61[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  appInFocusStream = [MEMORY[0x277CFE298] appInFocusStream];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v46 = [currentCalendar dateByAddingUnit:16 value:-21 toDate:date options:0];
  v9 = [MEMORY[0x277CFE260] predicateForEventsWithStartInDateRangeFrom:? to:?];
  v10 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:nameCopy];
  v11 = MEMORY[0x277CCA920];
  v44 = v10;
  v45 = v9;
  v61[0] = v9;
  v61[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
  v13 = [v11 andPredicateWithSubpredicates:v12];

  v14 = objc_alloc_init(MEMORY[0x277CFE1E0]);
  v60 = appInFocusStream;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
  [v14 setEventStreams:v15];

  v43 = v13;
  [v14 setPredicate:v13];
  knowledgeStore = [MEMORY[0x277CFE208] knowledgeStore];
  v52 = 0;
  v17 = [knowledgeStore executeQuery:v14 error:&v52];
  v18 = v52;
  v19 = v18;
  v47 = v17;
  if (!v18)
  {
    if ([v17 count] > 2)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v28 = v17;
      v29 = [v28 countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v29)
      {
        v30 = v29;
        v40 = currentCalendar;
        v41 = appInFocusStream;
        v42 = nameCopy;
        v31 = *v49;
        v32 = 0.0;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v49 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v34 = *(*(&v48 + 1) + 8 * i);
            endDate = [v34 endDate];
            startDate = [v34 startDate];
            [endDate timeIntervalSinceDate:startDate];
            v32 = v32 + v37;
          }

          v30 = [v28 countByEnumeratingWithState:&v48 objects:v53 count:16];
        }

        while (v30);

        appInFocusStream = v41;
        nameCopy = v42;
        currentCalendar = v40;
        if (v32 >= 60.0)
        {
          v24 = 1;
          v22 = v45;
          v21 = v46;
          goto LABEL_29;
        }
      }

      else
      {

        v32 = 0.0;
      }

      v22 = v45;
      v21 = v46;
      if (__PXLoggraph_workerOnceToken != -1)
      {
        dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_13_6175);
      }

      v38 = __PXLoggraph_workerOSLog;
      if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v55 = nameCopy;
        v56 = 2048;
        v57 = v32;
        v58 = 2048;
        v59 = 0x404E000000000000;
        _os_log_impl(&dword_22FA28000, v38, OS_LOG_TYPE_INFO, "%@ Not used long enough: %.0f < %.0f", buf, 0x20u);
      }
    }

    else
    {
      v21 = v46;
      if (__PXLoggraph_workerOnceToken != -1)
      {
        dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_10_6173);
      }

      v22 = v45;
      v25 = __PXLoggraph_workerOSLog;
      if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_INFO))
      {
        v26 = v25;
        v27 = [v47 count];
        *buf = 138412802;
        v55 = nameCopy;
        v56 = 2048;
        v57 = *&v27;
        v58 = 2048;
        v59 = 3;
        _os_log_impl(&dword_22FA28000, v26, OS_LOG_TYPE_INFO, "%@ Not launched enough times: %lu < %lu", buf, 0x20u);
      }
    }

    v24 = 0;
    goto LABEL_29;
  }

  if (error)
  {
    v20 = v18;
    *error = v19;
  }

  v22 = v45;
  v21 = v46;
  if (__PXLoggraph_workerOnceToken != -1)
  {
    dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_6171);
  }

  v23 = __PXLoggraph_workerOSLog;
  if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v55 = v19;
    v56 = 2112;
    v57 = *&nameCopy;
    _os_log_error_impl(&dword_22FA28000, v23, OS_LOG_TYPE_ERROR, "Error: %@, assuming the user is using the app %@", buf, 0x16u);
  }

  v24 = 1;
LABEL_29:

  return v24;
}

uint64_t __70__PHANotificationCoreDuetHelper_userIsActivelyUsingAppWithName_error___block_invoke_11()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

uint64_t __70__PHANotificationCoreDuetHelper_userIsActivelyUsingAppWithName_error___block_invoke_8()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

uint64_t __70__PHANotificationCoreDuetHelper_userIsActivelyUsingAppWithName_error___block_invoke()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

@end