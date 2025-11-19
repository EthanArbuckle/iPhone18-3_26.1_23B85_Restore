@interface SMCarPlayAlertManager
- (SMCarPlayAlertManager)initWithQueue:(id)a3 defaultsManager:(id)a4 contactsManager:(id)a5 starkManager:(id)a6;
- (id)_getCarPlayDisplayNameFromSessionManagerState:(id)a3 error:(id *)a4;
- (id)_getCarPlayUserInfoForSessionManagerState:(id)a3;
- (void)_postCarPlayNotificationForNotificationType:(unint64_t)a3 sessionManagerState:(id)a4 handler:(id)a5;
- (void)postCarPlayNotificationForNotificationType:(unint64_t)a3 sessionManagerState:(id)a4 handler:(id)a5;
@end

@implementation SMCarPlayAlertManager

- (SMCarPlayAlertManager)initWithQueue:(id)a3 defaultsManager:(id)a4 contactsManager:(id)a5 starkManager:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = SMCarPlayAlertManager;
  v14 = [(SMCarPlayAlertManager *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_queue = v10;
    objc_storeStrong(&v14->_defaultsManager, a4);
    objc_storeStrong(&v15->_contactsManager, a5);
    objc_storeStrong(&v15->_starkManager, a6);
  }

  return v15;
}

- (void)postCarPlayNotificationForNotificationType:(unint64_t)a3 sessionManagerState:(id)a4 handler:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [MEMORY[0x277D4AB70] carPlayNotificationTypeToString:a3];
      v12 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(v8, "sessionState")}];
      *buf = 136315650;
      v22 = "[SMCarPlayAlertManager postCarPlayNotificationForNotificationType:sessionManagerState:handler:]";
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, trying to post to CarPlay, notificationType, %@, sessionManagerState, %@", buf, 0x20u);
    }
  }

  v13 = [v8 copy];
  v14 = [(SMCarPlayAlertManager *)self starkManager];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__SMCarPlayAlertManager_postCarPlayNotificationForNotificationType_sessionManagerState_handler___block_invoke;
  v17[3] = &unk_2788C55D0;
  v17[4] = self;
  v18 = v13;
  v19 = v9;
  v20 = a3;
  v15 = v9;
  v16 = v13;
  [v14 fetchConnectionStateWithHandler:v17];
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

- (void)_postCarPlayNotificationForNotificationType:(unint64_t)a3 sessionManagerState:(id)a4 handler:(id)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v47 = 0;
  v10 = [(SMCarPlayAlertManager *)self _getCarPlayDisplayNameFromSessionManagerState:v8 error:&v47];
  v11 = v47;
  if (v11)
  {
    v12 = v11;
    v9[2](v9, v11);
  }

  else
  {
    v13 = MEMORY[0x277D4AB70];
    v14 = [v8 configuration];
    v46 = 0;
    v15 = [v13 getCarPlayNotificationTitleForNotificationType:a3 sessionType:objc_msgSend(v14 contactName:"sessionType") error:{v10, &v46}];
    v12 = v46;

    if (v12)
    {
      v9[2](v9, v12);
    }

    else
    {
      v16 = MEMORY[0x277D4AB70];
      v17 = [v8 configuration];
      v18 = [v17 sessionType];
      v19 = [v8 cacheReleaseDate];
      v45 = 0;
      v20 = [v16 getCarPlayNotificationMessageForNotificationType:a3 sessionType:v18 contactName:v10 cacheReleaseDate:v19 error:&v45];
      v12 = v45;

      if (v12)
      {
        v9[2](v9, v12);
      }

      else
      {
        v21 = MEMORY[0x277D4AB70];
        v22 = [v8 configuration];
        v44 = 0;
        v23 = [v21 getCarPlayNotificationCategoryForNotificationType:a3 sessionType:objc_msgSend(v22 error:{"sessionType"), &v44}];
        v12 = v44;

        if (v12)
        {
          v9[2](v9, v12);
        }

        else
        {
          v24 = MEMORY[0x277D4AB70];
          v25 = [v8 configuration];
          v43 = 0;
          v41 = [v24 getCarPlayButtonActionIdentifierForNotificationType:a3 sessionType:objc_msgSend(v25 error:{"sessionType"), &v43}];
          v12 = v43;

          if (v12)
          {
            v9[2](v9, v12);
            v26 = v41;
          }

          else
          {
            v27 = MEMORY[0x277D4AB70];
            v28 = [v8 configuration];
            v42 = 0;
            v40 = [v27 getCarPlayButtonTitleForNotificationType:a3 sessionType:objc_msgSend(v28 error:{"sessionType"), &v42}];
            v12 = v42;

            if (v12)
            {
              v9[2](v9, v12);
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
              v32 = [MEMORY[0x277CCAD78] UUID];
              v33 = [v32 UUIDString];
              v38 = [(RTUserNotification *)v37 initWithBundleIdentifier:v35 notificationUUIDString:v33];

              v26 = v41;
              LOBYTE(v32) = v41 == *MEMORY[0x277D4AC78];
              v36 = [(SMCarPlayAlertManager *)self _getCarPlayUserInfoForSessionManagerState:v8];
              LOWORD(v34) = v32;
              [(RTUserNotification *)v38 postNotificationWithTitle:v15 subtitle:v20 body:v20 footer:0 defaultActionUrl:0 categoryIdentifier:v23 interruptionLevel:3 destination:8 actions:v39 suppressDismissActionInCarPlay:v34 preventAutomaticRemoval:0 expirationDate:v36 userInfo:v9 handler:?];
            }
          }
        }
      }
    }
  }
}

- (id)_getCarPlayUserInfoForSessionManagerState:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setObject:*MEMORY[0x277D4AC88] forKeyedSubscript:*MEMORY[0x277D4AC80]];
  v5 = [v3 configuration];

  v6 = [v5 sessionID];
  v7 = [v6 UUIDString];
  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277D4AC90]];

  return v4;
}

- (id)_getCarPlayDisplayNameFromSessionManagerState:(id)a3 error:(id *)a4
{
  v79[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 configuration];
  v6 = [v5 conversation];
  v7 = [v6 receiverPrimaryHandles];

  if ([v7 count] != 1)
  {
    v28 = [v4 configuration];
    v29 = [v28 conversation];
    v30 = [v29 displayName];

    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = [MEMORY[0x277D4AB70] carPlayGroupFallbackName];
    }

    v32 = v31;

    goto LABEL_29;
  }

  v8 = [v7 firstObject];
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
  v10 = [(SMCarPlayAlertManager *)self contactsManager];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __77__SMCarPlayAlertManager__getCarPlayDisplayNameFromSessionManagerState_error___block_invoke;
  v58[3] = &unk_2788C4490;
  v60 = &v68;
  v61 = &v62;
  v11 = v9;
  v59 = v11;
  [v10 fetchContactsFromEmailOrPhoneNumberString:v8 handler:v58];
  v56 = v8;

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
    v20 = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [v20 filteredArrayUsingPredicate:v19];
    v22 = [v21 firstObject];

    [v18 submitToCoreAnalytics:v22 type:1 duration:v17];
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
  if (a4 && v33)
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
    *a4 = v34;
    goto LABEL_27;
  }

  if (a4 && v63[5])
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
    *a4 = v63[5];
    goto LABEL_27;
  }

  if (![v69[5] count])
  {
    v37 = 1;
LABEL_27:
    v32 = v56;
    goto LABEL_28;
  }

  v39 = [MEMORY[0x277CCAC00] sharedNameComponents];
  v40 = [v69[5] firstObject];
  v41 = [v40 givenName];
  [v39 setGivenName:v41];

  v42 = [v69[5] firstObject];
  v43 = [v42 familyName];
  [v39 setFamilyName:v43];

  v44 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v39 style:1 options:0];
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