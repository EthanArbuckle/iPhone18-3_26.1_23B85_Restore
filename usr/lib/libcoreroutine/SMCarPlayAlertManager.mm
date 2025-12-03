@interface SMCarPlayAlertManager
- (SMCarPlayAlertManager)initWithQueue:(id)queue defaultsManager:(id)manager contactsManager:(id)contactsManager starkManager:(id)starkManager;
- (id)_getCarPlayDisplayNameFromSessionManagerState:(id)state error:(id *)error;
- (id)_getCarPlayUserInfoForSessionManagerState:(id)state;
- (void)_postCarPlayNotificationForNotificationType:(unint64_t)type sessionManagerState:(id)state handler:(id)handler;
- (void)postCarPlayNotificationForNotificationType:(unint64_t)type sessionManagerState:(id)state handler:(id)handler;
@end

@implementation SMCarPlayAlertManager

- (SMCarPlayAlertManager)initWithQueue:(id)queue defaultsManager:(id)manager contactsManager:(id)contactsManager starkManager:(id)starkManager
{
  queueCopy = queue;
  managerCopy = manager;
  contactsManagerCopy = contactsManager;
  starkManagerCopy = starkManager;
  v17.receiver = self;
  v17.super_class = SMCarPlayAlertManager;
  v14 = [(SMCarPlayAlertManager *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_queue = queueCopy;
    objc_storeStrong(&v14->_defaultsManager, manager);
    objc_storeStrong(&v15->_contactsManager, contactsManager);
    objc_storeStrong(&v15->_starkManager, starkManager);
  }

  return v15;
}

- (void)postCarPlayNotificationForNotificationType:(unint64_t)type sessionManagerState:(id)state handler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [MEMORY[0x277D4AB70] carPlayNotificationTypeToString:type];
      v12 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(stateCopy, "sessionState")}];
      *buf = 136315650;
      v22 = "[SMCarPlayAlertManager postCarPlayNotificationForNotificationType:sessionManagerState:handler:]";
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, trying to post to CarPlay, notificationType, %@, sessionManagerState, %@", buf, 0x20u);
    }
  }

  v13 = [stateCopy copy];
  starkManager = [(SMCarPlayAlertManager *)self starkManager];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__SMCarPlayAlertManager_postCarPlayNotificationForNotificationType_sessionManagerState_handler___block_invoke;
  v17[3] = &unk_2788C55D0;
  v17[4] = self;
  v18 = v13;
  v19 = handlerCopy;
  typeCopy = type;
  v15 = handlerCopy;
  v16 = v13;
  [starkManager fetchConnectionStateWithHandler:v17];
}

void __96__SMCarPlayAlertManager_postCarPlayNotificationForNotificationType_sessionManagerState_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__SMCarPlayAlertManager_postCarPlayNotificationForNotificationType_sessionManagerState_handler___block_invoke_2;
  v11[3] = &unk_2788C54B8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v9 = *(a1 + 56);
  v16 = a2;
  v17 = v9;
  v14 = v8;
  v15 = *(a1 + 48);
  v10 = v5;
  dispatch_async(v6, v11);
}

void __96__SMCarPlayAlertManager_postCarPlayNotificationForNotificationType_sessionManagerState_handler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [RTStarkManager connectionStateToString:*(a1 + 64)];
      v4 = *(a1 + 32);
      *buf = 136315650;
      v12 = "[SMCarPlayAlertManager postCarPlayNotificationForNotificationType:sessionManagerState:handler:]_block_invoke_2";
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s, carPlay connected, %@, error, %@", buf, 0x20u);
    }
  }

  if (*(a1 + 64) == 1)
  {
    v5 = *(a1 + 72);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __96__SMCarPlayAlertManager_postCarPlayNotificationForNotificationType_sessionManagerState_handler___block_invoke_18;
    v8[3] = &unk_2788C4780;
    v10 = v5;
    v9 = *(a1 + 56);
    [v6 _postCarPlayNotificationForNotificationType:v5 sessionManagerState:v7 handler:v8];
  }
}

void __96__SMCarPlayAlertManager_postCarPlayNotificationForNotificationType_sessionManagerState_handler___block_invoke_18(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x277D4AB70] carPlayNotificationTypeToString:*(a1 + 40)];
      v6 = v5;
      v7 = @"NO";
      v9 = 136315906;
      v10 = "[SMCarPlayAlertManager postCarPlayNotificationForNotificationType:sessionManagerState:handler:]_block_invoke";
      if (!v3)
      {
        v7 = @"YES";
      }

      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, posted carplay notification, type, %@, status, %@, error, %@", &v9, 0x2Au);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3 == 0, v3);
  }
}

- (void)_postCarPlayNotificationForNotificationType:(unint64_t)type sessionManagerState:(id)state handler:(id)handler
{
  v60 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  handlerCopy = handler;
  v47 = 0;
  v10 = [(SMCarPlayAlertManager *)self _getCarPlayDisplayNameFromSessionManagerState:stateCopy error:&v47];
  v11 = v47;
  if (v11)
  {
    v12 = v11;
    handlerCopy[2](handlerCopy, v11);
  }

  else
  {
    v13 = MEMORY[0x277D4AB70];
    configuration = [stateCopy configuration];
    v46 = 0;
    v15 = [v13 getCarPlayNotificationTitleForNotificationType:type sessionType:objc_msgSend(configuration contactName:"sessionType") error:{v10, &v46}];
    v12 = v46;

    if (v12)
    {
      handlerCopy[2](handlerCopy, v12);
    }

    else
    {
      v16 = MEMORY[0x277D4AB70];
      configuration2 = [stateCopy configuration];
      sessionType = [configuration2 sessionType];
      cacheReleaseDate = [stateCopy cacheReleaseDate];
      v45 = 0;
      v20 = [v16 getCarPlayNotificationMessageForNotificationType:type sessionType:sessionType contactName:v10 cacheReleaseDate:cacheReleaseDate error:&v45];
      v12 = v45;

      if (v12)
      {
        handlerCopy[2](handlerCopy, v12);
      }

      else
      {
        v21 = MEMORY[0x277D4AB70];
        configuration3 = [stateCopy configuration];
        v44 = 0;
        v23 = [v21 getCarPlayNotificationCategoryForNotificationType:type sessionType:objc_msgSend(configuration3 error:{"sessionType"), &v44}];
        v12 = v44;

        if (v12)
        {
          handlerCopy[2](handlerCopy, v12);
        }

        else
        {
          v24 = MEMORY[0x277D4AB70];
          configuration4 = [stateCopy configuration];
          v43 = 0;
          v41 = [v24 getCarPlayButtonActionIdentifierForNotificationType:type sessionType:objc_msgSend(configuration4 error:{"sessionType"), &v43}];
          v12 = v43;

          if (v12)
          {
            handlerCopy[2](handlerCopy, v12);
            v26 = v41;
          }

          else
          {
            v27 = MEMORY[0x277D4AB70];
            configuration5 = [stateCopy configuration];
            v42 = 0;
            v40 = [v27 getCarPlayButtonTitleForNotificationType:type sessionType:objc_msgSend(configuration5 error:{"sessionType"), &v42}];
            v12 = v42;

            if (v12)
            {
              handlerCopy[2](handlerCopy, v12);
              v26 = v41;
            }

            else
            {
              v39 = objc_opt_new();
              if (v41 && v40)
              {
                v29 = [[RTUserNotificationAction alloc] initWithActionIdentifier:v41 title:v40 iconWithSystemImageName:0 handler:0];
                [v39 addObject:v29];
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  v31 = [v39 count];
                  *buf = 136316418;
                  v49 = "[SMCarPlayAlertManager _postCarPlayNotificationForNotificationType:sessionManagerState:handler:]";
                  v50 = 2112;
                  v51 = v15;
                  v52 = 2112;
                  v53 = v20;
                  v54 = 2048;
                  v55 = v31;
                  v56 = 2112;
                  v57 = v41;
                  v58 = 2112;
                  v59 = v40;
                  _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%s, creating carplay notification with title, %@, message, %@, buttonActions count, %lu, first carPlayButtonActionIdentifier, %@, carPlayButtonTitle, %@", buf, 0x3Eu);
                }
              }

              v37 = [RTUserNotification alloc];
              v35 = *MEMORY[0x277D4AD38];
              uUID = [MEMORY[0x277CCAD78] UUID];
              uUIDString = [uUID UUIDString];
              v38 = [(RTUserNotification *)v37 initWithBundleIdentifier:v35 notificationUUIDString:uUIDString];

              v26 = v41;
              LOBYTE(uUID) = v41 == *MEMORY[0x277D4AC78];
              v36 = [(SMCarPlayAlertManager *)self _getCarPlayUserInfoForSessionManagerState:stateCopy];
              LOWORD(v34) = uUID;
              [(RTUserNotification *)v38 postNotificationWithTitle:v15 subtitle:v20 body:v20 footer:0 defaultActionUrl:0 categoryIdentifier:v23 interruptionLevel:3 destination:8 actions:v39 suppressDismissActionInCarPlay:v34 preventAutomaticRemoval:0 expirationDate:v36 userInfo:handlerCopy handler:?];
            }
          }
        }
      }
    }
  }
}

- (id)_getCarPlayUserInfoForSessionManagerState:(id)state
{
  stateCopy = state;
  v4 = objc_opt_new();
  [v4 setObject:*MEMORY[0x277D4AC88] forKeyedSubscript:*MEMORY[0x277D4AC80]];
  configuration = [stateCopy configuration];

  sessionID = [configuration sessionID];
  uUIDString = [sessionID UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:*MEMORY[0x277D4AC90]];

  return v4;
}

- (id)_getCarPlayDisplayNameFromSessionManagerState:(id)state error:(id *)error
{
  v79[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  configuration = [stateCopy configuration];
  conversation = [configuration conversation];
  receiverPrimaryHandles = [conversation receiverPrimaryHandles];

  if ([receiverPrimaryHandles count] != 1)
  {
    configuration2 = [stateCopy configuration];
    conversation2 = [configuration2 conversation];
    displayName = [conversation2 displayName];

    if (displayName)
    {
      carPlayGroupFallbackName = displayName;
    }

    else
    {
      carPlayGroupFallbackName = [MEMORY[0x277D4AB70] carPlayGroupFallbackName];
    }

    v32 = carPlayGroupFallbackName;

    goto LABEL_29;
  }

  firstObject = [receiverPrimaryHandles firstObject];
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__92;
  v72 = __Block_byref_object_dispose__92;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__92;
  v66 = __Block_byref_object_dispose__92;
  v67 = 0;
  v9 = dispatch_semaphore_create(0);
  contactsManager = [(SMCarPlayAlertManager *)self contactsManager];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __77__SMCarPlayAlertManager__getCarPlayDisplayNameFromSessionManagerState_error___block_invoke;
  v58[3] = &unk_2788C4490;
  v60 = &v68;
  v61 = &v62;
  v11 = v9;
  v59 = v11;
  [contactsManager fetchContactsFromEmailOrPhoneNumberString:firstObject handler:v58];
  v56 = firstObject;

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_77];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
    firstObject2 = [v21 firstObject];

    [v18 submitToCoreAnalytics:firstObject2 type:1 duration:v17];
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v24 = MEMORY[0x277CCA9B8];
    v79[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v79 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

    if (v26)
    {
      v27 = v26;
    }
  }

  else
  {
    v26 = 0;
  }

  v33 = v26;
  v34 = v33;
  if (error && v33)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      v49 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v48;
      v75 = 2112;
      v76 = v49;
      v77 = 2112;
      v78 = v34;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v36 = v34;
    v37 = 0;
    *error = v34;
    goto LABEL_27;
  }

  if (error && v63[5])
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v52 = NSStringFromSelector(a2);
      v53 = v63[5];
      *buf = 138412802;
      *&buf[4] = v51;
      v75 = 2112;
      v76 = v52;
      v77 = 2112;
      v78 = v53;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v37 = 0;
    *error = v63[5];
    goto LABEL_27;
  }

  if (![v69[5] count])
  {
    v37 = 1;
LABEL_27:
    v32 = v56;
    goto LABEL_28;
  }

  mEMORY[0x277CCAC00] = [MEMORY[0x277CCAC00] sharedNameComponents];
  firstObject3 = [v69[5] firstObject];
  givenName = [firstObject3 givenName];
  [mEMORY[0x277CCAC00] setGivenName:givenName];

  firstObject4 = [v69[5] firstObject];
  familyName = [firstObject4 familyName];
  [mEMORY[0x277CCAC00] setFamilyName:familyName];

  v44 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:mEMORY[0x277CCAC00] style:1 options:0];
  v32 = v56;
  if ([v44 length])
  {
    v32 = v44;
  }

  v37 = 1;
LABEL_28:

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);

  if (v37)
  {
LABEL_29:
    v32 = v32;
    v45 = v32;
    goto LABEL_31;
  }

  v45 = 0;
LABEL_31:

  return v45;
}

void __77__SMCarPlayAlertManager__getCarPlayDisplayNameFromSessionManagerState_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

@end