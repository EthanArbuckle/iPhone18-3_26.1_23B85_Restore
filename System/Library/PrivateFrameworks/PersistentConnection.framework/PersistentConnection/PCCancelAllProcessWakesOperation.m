@interface PCCancelAllProcessWakesOperation
- (void)main;
@end

@implementation PCCancelAllProcessWakesOperation

- (void)main
{
  v44 = *MEMORY[0x277D85DE8];
  AssertionID = 0;
  v2 = 0x280B0B000uLL;
  v3 = 0x277CCA000uLL;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"schedulingwake-PCCancelAllProcessWakesOperation(%p)", self];
  v5 = [PCPersistentIdentifiers processNamePidAndStringIdentifier:v4];

  v6 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, v5, &AssertionID);
  if (v6)
  {
    v7 = v6;
    v8 = +[PCLog wakeManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(PCScheduleSystemWakeOperation *)v7 main];
    }
  }

  v9 = IOPMCopyScheduledPowerEvents();
  if (v9)
  {
    v10 = v9;
    v11 = CFGetTypeID(v9);
    if (v11 == CFArrayGetTypeID())
    {
      v29 = v10;
      v30 = v5;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v12 = v10;
      v13 = [(__CFArray *)v12 countByEnumeratingWithState:&v32 objects:v43 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v33;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v33 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v32 + 1) + 8 * i);
            v18 = [v17 objectForKey:@"eventtype"];
            v19 = [v17 objectForKey:@"scheduledby"];
            if ([(__CFString *)v18 isEqual:@"wake"])
            {
              v20 = *(v3 + 3240);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v2 + 2368 pidFromMatchingIdentifer:v19] & 0x80000000) == 0)
              {
                v21 = v12;
                v22 = v3;
                v23 = [v17 objectForKey:@"time"];
                if (v23)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v24 = IOPMCancelScheduledPowerEvent(v23, v19, v18);
                    v25 = +[PCLog wakeManager];
                    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
                    if (v24)
                    {
                      if (v26)
                      {
                        v31 = PCStringFromDate(v23);
                        *buf = 138412802;
                        v38 = v19;
                        v39 = 2112;
                        v40 = v31;
                        v41 = 1024;
                        v42 = v24;
                        _os_log_impl(&dword_25E3EF000, v25, OS_LOG_TYPE_DEFAULT, "Unable to unschedule orphaned wake with identifier '%@' and date [%@]. IOPMCancelScheduledPowerEvent() returned: %i", buf, 0x1Cu);
                      }
                    }

                    else if (v26)
                    {
                      v27 = PCStringFromDate(v23);
                      *buf = 138412546;
                      v38 = v19;
                      v39 = 2112;
                      v40 = v27;
                      _os_log_impl(&dword_25E3EF000, v25, OS_LOG_TYPE_DEFAULT, "Unscheduled orphaned wake with identifier '%@' and date [%@]", buf, 0x16u);
                    }

                    v2 = 0x280B0B000;
                  }
                }

                v3 = v22;
                v12 = v21;
              }
            }
          }

          v14 = [(__CFArray *)v12 countByEnumeratingWithState:&v32 objects:v43 count:16];
        }

        while (v14);
      }

      v10 = v29;
      v5 = v30;
    }

    CFRelease(v10);
  }

  IOPMAssertionRelease(AssertionID);

  v28 = *MEMORY[0x277D85DE8];
}

@end