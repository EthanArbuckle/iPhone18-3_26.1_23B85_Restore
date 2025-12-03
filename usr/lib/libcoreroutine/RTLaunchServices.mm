@interface RTLaunchServices
+ (BOOL)canOpenApplication:(id)application;
+ (void)createProcessAssertionForPid:(int)pid timeout:(double)timeout queue:(id)queue timeoutHandler:(id)handler;
+ (void)launchClientWithBundleIdentifier:(id)identifier restorationIdentifier:(id)restorationIdentifier eventAgentManager:(id)manager handler:(id)handler;
@end

@implementation RTLaunchServices

+ (void)launchClientWithBundleIdentifier:(id)identifier restorationIdentifier:(id)restorationIdentifier eventAgentManager:(id)manager handler:(id)handler
{
  v53[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  restorationIdentifierCopy = restorationIdentifier;
  managerCopy = manager;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (identifierCopy)
  {
    if (restorationIdentifierCopy)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v47 = identifierCopy;
          v48 = 2112;
          v49 = restorationIdentifierCopy;
          _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "launch client with bundle identifier, %@, restoration identifier, %@", buf, 0x16u);
        }
      }

      v16 = [self canOpenApplication:identifierCopy];
      v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (v16)
      {
        if (v17)
        {
          v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v47 = identifierCopy;
            v48 = 2112;
            v49 = restorationIdentifierCopy;
            _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "launch application for client with bundleIdentifier, %@, restorationIdentifier, %@", buf, 0x16u);
          }
        }

        v19 = *MEMORY[0x277D0ABF0];
        v45[0] = MEMORY[0x277CBEC38];
        v20 = *MEMORY[0x277D0ABE0];
        v44[0] = v19;
        v44[1] = v20;
        v42 = *MEMORY[0x277D0AB30];
        v43 = MEMORY[0x277CBEC10];
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v44[2] = @"RTLaunchServicesRestorationIdentifier";
        v45[1] = v21;
        v45[2] = restorationIdentifierCopy;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];

        v23 = [MEMORY[0x277D0AD60] optionsWithDictionary:v22];
        serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __101__RTLaunchServices_launchClientWithBundleIdentifier_restorationIdentifier_eventAgentManager_handler___block_invoke;
        v38[3] = &unk_2788CFA78;
        v39 = identifierCopy;
        v40 = restorationIdentifierCopy;
        v41 = v14;
        [serviceWithDefaultShellEndpoint openApplication:v39 withOptions:v23 completion:v38];
      }

      else
      {
        if (v17)
        {
          v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v47 = identifierCopy;
            v48 = 2112;
            v49 = restorationIdentifierCopy;
            _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "launched daemon for client with bundle id, %@, restorationIdentifier, %@", buf, 0x16u);
          }
        }

        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __101__RTLaunchServices_launchClientWithBundleIdentifier_restorationIdentifier_eventAgentManager_handler___block_invoke_20;
        v34[3] = &unk_2788CFAA0;
        v35 = identifierCopy;
        v36 = restorationIdentifierCopy;
        v37 = v14;
        [managerCopy launchDaemonWithRestorationIdentifier:v36 withReply:v34];

        v22 = v35;
      }

      goto LABEL_23;
    }

    if (handlerCopy)
    {
      v31 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277D01448];
      v50 = *MEMORY[0x277CCA450];
      v51 = @"Launching an application requires a restoration identifier.";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v28 = v31;
      v29 = v32;
      v30 = 1;
      goto LABEL_17;
    }
  }

  else if (handlerCopy)
  {
    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277D01448];
    v52 = *MEMORY[0x277CCA450];
    v53[0] = @"Launching an application requires an bundle identifier.";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    v28 = v25;
    v29 = v26;
    v30 = 0;
LABEL_17:
    v22 = [v28 errorWithDomain:v29 code:v30 userInfo:v27];

    (v14)[2](v14, v22);
LABEL_23:
  }
}

void __101__RTLaunchServices_launchClientWithBundleIdentifier_restorationIdentifier_eventAgentManager_handler___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[4];
      v9 = a1[5];
      v10 = @"NO";
      if (!v6)
      {
        v10 = @"YES";
      }

      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "launched application for client with bundle id, %@, restorationIdentifier, %@, success, %@", &v12, 0x20u);
    }
  }

  v11 = a1[6];
  if (v11)
  {
    (*(v11 + 16))(v11, v6);
  }
}

void __101__RTLaunchServices_launchClientWithBundleIdentifier_restorationIdentifier_eventAgentManager_handler___block_invoke_20(void *a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      *buf = 138412802;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "launched daemon for client with bundle id, %@, restorationIdentifier, %@, success, %@", buf, 0x20u);
    }
  }

  v8 = a1[6];
  if (v8)
  {
    if (a2)
    {
      v9 = 0;
    }

    else
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to launch daemon for client with bundle identifier, %@, restoration identifier, %@", a1[4], a1[5], *MEMORY[0x277CCA450]];
      v13 = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:2 userInfo:v11];

      v8 = a1[6];
    }

    (*(v8 + 16))(v8, v9);
  }
}

+ (BOOL)canOpenApplication:(id)application
{
  v8 = 0;
  v3 = MEMORY[0x277D0AD78];
  applicationCopy = application;
  serviceWithDefaultShellEndpoint = [v3 serviceWithDefaultShellEndpoint];
  v6 = [serviceWithDefaultShellEndpoint canOpenApplication:applicationCopy reason:&v8];

  return v6;
}

+ (void)createProcessAssertionForPid:(int)pid timeout:(double)timeout queue:(id)queue timeoutHandler:(id)handler
{
  v8 = *&pid;
  v28[1] = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  if (timeout >= 0.0)
  {
    if (queueCopy)
    {
      v12 = queueCopy;
    }

    else
    {
      v12 = MEMORY[0x277D85CD0];
      v13 = MEMORY[0x277D85CD0];
    }

    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__140;
    v26 = __Block_byref_object_dispose__140;
    v14 = objc_alloc(MEMORY[0x277D46DB8]);
    v15 = [MEMORY[0x277D47008] targetWithPid:v8];
    v16 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"FinishTaskInterruptable"];
    v28[0] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v27 = [v14 initWithExplanation:@"com.apple.routined" target:v15 attributes:v17];

    v18 = dispatch_time(0, (timeout * 1000000000.0));
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __78__RTLaunchServices_createProcessAssertionForPid_timeout_queue_timeoutHandler___block_invoke;
    v19[3] = &unk_2788CD298;
    v21 = buf;
    v20 = handlerCopy;
    dispatch_after(v18, v12, v19);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "requested assertion timeout was less than 0, returning", buf, 2u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

uint64_t __78__RTLaunchServices_createProcessAssertionForPid_timeout_queue_timeoutHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  result = *(a1 + 32);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

@end