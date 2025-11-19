@interface RTUserNotification
+ (id)_getUNNotificationActionFromRTUserNotificationAction:(id)a3;
+ (id)destinationToString:(unint64_t)a3;
+ (id)interruptionLevelToString:(unint64_t)a3;
+ (unint64_t)UNNotificationInterruptionLevelFromRTNotificationInterruptionLevel:(unint64_t)a3;
- (BOOL)deleteNotificationWithError:(id *)a3;
- (RTUserNotification)initWithBundleIdentifier:(id)a3 notificationUUIDString:(id)a4;
- (void)postNotificationWithTitle:(id)a3 subtitle:(id)a4 body:(id)a5 footer:(id)a6 defaultActionUrl:(id)a7 categoryIdentifier:(id)a8 interruptionLevel:(unint64_t)a9 destination:(unint64_t)a10 actions:(id)a11 suppressDismissActionInCarPlay:(BOOL)a12 preventAutomaticRemoval:(BOOL)a13 expirationDate:(id)a14 userInfo:(id)a15 handler:(id)a16;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation RTUserNotification

- (RTUserNotification)initWithBundleIdentifier:(id)a3 notificationUUIDString:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_14:
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[RTUserNotification initWithBundleIdentifier:notificationUUIDString:]";
      v32 = 1024;
      LODWORD(v33) = 52;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notificationUUIDString (in %s:%d)", buf, 0x12u);
    }

    if (v8)
    {
      goto LABEL_4;
    }

LABEL_17:
    v24 = 0;
    goto LABEL_21;
  }

  v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v31 = "[RTUserNotification initWithBundleIdentifier:notificationUUIDString:]";
    v32 = 1024;
    LODWORD(v33) = 51;
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bundleIdentifier (in %s:%d)", buf, 0x12u);
  }

  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_4:
  v29.receiver = self;
  v29.super_class = RTUserNotification;
  v11 = [(RTUserNotification *)&v29 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    objc_storeStrong(&v11->_bundleIdentifier, a3);
    objc_storeStrong(p_isa + 3, a4);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        *buf = 138412546;
        v31 = v15;
        v32 = 2112;
        v33 = v16;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, creating notification center", buf, 0x16u);
      }
    }

    v17 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:v8];
    v18 = p_isa[1];
    p_isa[1] = v17;

    [p_isa[1] setDelegate:p_isa];
    [p_isa[1] setWantsNotificationResponsesDelivered];
    v19 = p_isa;
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v19 UTF8String];
    }

    else
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v19];
      v21 = [v25 UTF8String];
    }

    v26 = dispatch_queue_create(v21, v20);

    v27 = v19[5];
    v19[5] = v26;
  }

  self = p_isa;
  v24 = self;
LABEL_21:

  return v24;
}

- (void)postNotificationWithTitle:(id)a3 subtitle:(id)a4 body:(id)a5 footer:(id)a6 defaultActionUrl:(id)a7 categoryIdentifier:(id)a8 interruptionLevel:(unint64_t)a9 destination:(unint64_t)a10 actions:(id)a11 suppressDismissActionInCarPlay:(BOOL)a12 preventAutomaticRemoval:(BOOL)a13 expirationDate:(id)a14 userInfo:(id)a15 handler:(id)a16
{
  v101 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v74 = a7;
  v73 = a8;
  v26 = a11;
  v27 = a14;
  v28 = a15;
  v65 = a16;
  v29 = objc_opt_new();
  v30 = v29;
  if (v22)
  {
    [v29 setTitle:v22];
  }

  if (v23)
  {
    [v30 setSubtitle:v23];
  }

  if (v24)
  {
    [v30 setBody:v24];
  }

  if (v25)
  {
    [v30 setFooter:v25];
  }

  v68 = v25;
  if (v73)
  {
    [v30 setCategoryIdentifier:?];
  }

  v69 = v24;
  if (v28)
  {
    [v30 setUserInfo:v28];
  }

  v75 = v30;
  if (v74)
  {
    v31 = [MEMORY[0x277CBEBC0] URLWithString:v74];
    [v30 setDefaultActionURL:v31];

    v32 = [v30 userInfo];
    v33 = v32;
    if (!v32)
    {
      v32 = MEMORY[0x277CBEC10];
    }

    v34 = [v32 mutableCopy];

    [v34 setObject:v74 forKeyedSubscript:@"defaultActionURLString"];
    v35 = [v34 copy];
    [v75 setUserInfo:v35];

    v30 = v75;
  }

  v66 = v28;
  v70 = v23;
  v71 = v22;
  v36 = [(RTUserNotification *)self bundleIdentifier];
  [v30 setDefaultActionBundleIdentifier:v36];

  [v30 setInterruptionLevel:{objc_msgSend(objc_opt_class(), "UNNotificationInterruptionLevelFromRTNotificationInterruptionLevel:", a9)}];
  v37 = [MEMORY[0x277CE1FE0] defaultSound];
  [v30 setSound:v37];

  if (v27)
  {
    [v30 setExpirationDate:v27];
  }

  v67 = v27;
  LODWORD(v64) = a13;
  v38 = objc_opt_new();
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v26;
  v39 = [obj countByEnumeratingWithState:&v86 objects:v100 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v87;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v87 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v86 + 1) + 8 * i);
        v44 = objc_autoreleasePoolPush();
        v45 = [objc_opt_class() _getUNNotificationActionFromRTUserNotificationAction:v43];
        v46 = [(RTUserNotification *)self actionIdentifierToActionMapper];
        v47 = [v43 actionIdentifier];
        [v46 setObject:v43 forKeyedSubscript:v47];

        [v38 addObject:v45];
        objc_autoreleasePoolPop(v44);
      }

      v40 = [obj countByEnumeratingWithState:&v86 objects:v100 count:16];
    }

    while (v40);
  }

  if (a13)
  {
    v48 = 131073;
  }

  else
  {
    v48 = 1;
  }

  v49 = a10;
  if ((a10 & 8) != 0)
  {
    if (a12)
    {
      v48 = 1101004806;
    }

    else
    {
      v48 = 27262982;
    }

    v50 = v71;
    v51 = v74;
    v52 = v67;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = objc_opt_class();
        v55 = NSStringFromClass(v54);
        v64 = NSStringFromSelector(a2);
        v56 = [objc_opt_class() destinationToString:8];
        v57 = [obj count];
        *buf = 138413314;
        v58 = @"NO";
        v91 = v55;
        v92 = 2112;
        if (a12)
        {
          v58 = @"YES";
        }

        v93 = v64;
        v94 = 2112;
        v95 = v56;
        v96 = 2048;
        v97 = v57;
        v98 = 2112;
        v99 = v58;
        _os_log_impl(&dword_2304B3000, v53, OS_LOG_TYPE_INFO, "%@, %@, one of the destinations, %@, actions count, %lu, suppressDismissAction, %@", buf, 0x34u);

        v49 = a10;
      }
    }
  }

  else
  {
    v50 = v71;
    v51 = v74;
    v52 = v67;
  }

  v59 = [(RTUserNotification *)self notificationCenter];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __230__RTUserNotification_postNotificationWithTitle_subtitle_body_footer_defaultActionUrl_categoryIdentifier_interruptionLevel_destination_actions_suppressDismissActionInCarPlay_preventAutomaticRemoval_expirationDate_userInfo_handler___block_invoke;
  v77[3] = &unk_2788CAC70;
  v78 = v73;
  v79 = v38;
  v80 = self;
  v81 = v75;
  v84 = a2;
  v85 = v49;
  v82 = v65;
  v83 = v48;
  v60 = v65;
  v61 = v75;
  v62 = v38;
  v63 = v73;
  [v59 getNotificationCategoriesWithCompletionHandler:v77];
}

void __230__RTUserNotification_postNotificationWithTitle_subtitle_body_footer_defaultActionUrl_categoryIdentifier_interruptionLevel_destination_actions_suppressDismissActionInCarPlay_preventAutomaticRemoval_expirationDate_userInfo_handler___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CE1F98] categoryWithIdentifier:*(a1 + 32) actions:*(a1 + 40) intentIdentifiers:MEMORY[0x277CBEBF8] options:*(a1 + 72)];
  v5 = [MEMORY[0x277CBEB98] setWithObject:v4];
  if (v3)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __230__RTUserNotification_postNotificationWithTitle_subtitle_body_footer_defaultActionUrl_categoryIdentifier_interruptionLevel_destination_actions_suppressDismissActionInCarPlay_preventAutomaticRemoval_expirationDate_userInfo_handler___block_invoke_2;
    v21[3] = &unk_2788CAC48;
    v22 = *(a1 + 32);
    v6 = [v3 objectsPassingTest:v21];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 setByAddingObjectsFromSet:v6];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(*(a1 + 80));
      *buf = 138413314;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = v6;
      v31 = 2112;
      v32 = v7;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@, %@, updating notification categories, newCategories, %@, existingCategories, %@, supersetCategories, %@", buf, 0x34u);
    }
  }

  v9 = [*(a1 + 48) notificationCenter];
  [v9 setNotificationCategories:v7];

  v10 = MEMORY[0x277CE1FC0];
  v11 = [*(a1 + 48) notificationUUIDString];
  v12 = [v10 requestWithIdentifier:v11 content:*(a1 + 56) trigger:0 destinations:*(a1 + 88)];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(*(a1 + 80));
      *buf = 138412802;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, posting notification request, %@", buf, 0x20u);
    }
  }

  v17 = [*(a1 + 48) notificationCenter];
  [v17 addNotificationRequest:v12 withCompletionHandler:*(a1 + 64)];
}

uint64_t __230__RTUserNotification_postNotificationWithTitle_subtitle_body_footer_defaultActionUrl_categoryIdentifier_interruptionLevel_destination_actions_suppressDismissActionInCarPlay_preventAutomaticRemoval_expirationDate_userInfo_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

- (BOOL)deleteNotificationWithError:(id *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(a2);
      v9 = [(RTUserNotification *)self notificationUUIDString];
      *buf = 138412802;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, %@, removing notification immediately for notificationUUID, %@", buf, 0x20u);
    }
  }

  v10 = [(RTUserNotification *)self notificationCenter];
  v11 = [(RTUserNotification *)self notificationUUIDString];
  v14 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  [v10 removeDeliveredNotificationsWithIdentifiers:v12];

  return 1;
}

+ (id)interruptionLevelToString:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"Default";
  }

  else
  {
    return off_2788CAC90[a3 - 1];
  }
}

+ (id)destinationToString:(unint64_t)a3
{
  if (a3 - 1 > 7)
  {
    return @"None";
  }

  else
  {
    return off_2788CACB0[a3 - 1];
  }
}

+ (unint64_t)UNNotificationInterruptionLevelFromRTNotificationInterruptionLevel:(unint64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_230B00F50[a3];
  }
}

+ (id)_getUNNotificationActionFromRTUserNotificationAction:(id)a3
{
  v3 = a3;
  v4 = [v3 url];

  v5 = MEMORY[0x277CE1F80];
  v6 = [v3 actionIdentifier];
  v7 = [v3 title];
  if (v4)
  {
    v8 = [v3 url];
    v9 = MEMORY[0x277CE1F88];
    v10 = [v3 iconWithSystemImageName];

    v11 = [v9 iconWithSystemImageName:v10];
    v12 = [v5 actionWithIdentifier:v6 title:v7 url:v8 options:0 icon:v11];
  }

  else
  {
    v13 = MEMORY[0x277CE1F88];
    v8 = [v3 iconWithSystemImageName];

    v10 = [v13 iconWithSystemImageName:v8];
    v12 = [v5 actionWithIdentifier:v6 title:v7 options:0 icon:v10];
  }

  return v12;
}

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, call before presenting notification", &v10, 0x16u);
    }
  }
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      NSStringFromClass(v13);
      v14 = v48 = v9;
      NSStringFromSelector(a2);
      v15 = v47 = v11;
      [v10 notification];
      v16 = v46 = a2;
      v17 = [v16 request];
      v18 = [v17 content];
      v19 = [v18 title];
      v20 = [v10 actionIdentifier];
      *buf = 138413058;
      v50 = v14;
      v51 = 2112;
      v52 = v15;
      v53 = 2112;
      v54 = v19;
      v55 = 2112;
      v56 = v20;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, response from notification with title, %@, actionIdentifier, %@", buf, 0x2Au);

      a2 = v46;
      v11 = v47;

      v9 = v48;
    }
  }

  v21 = [(RTUserNotification *)self actionIdentifierToActionMapper];
  v22 = [v10 actionIdentifier];
  v23 = [v21 objectForKeyedSubscript:v22];

  if (v23)
  {
    v24 = [(RTUserNotification *)self actionIdentifierToActionMapper];
    v25 = [v10 actionIdentifier];
    v26 = [v24 objectForKeyedSubscript:v25];
    v27 = [v26 handler];

    v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v27)
    {
      if (v28)
      {
        v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = NSStringFromSelector(a2);
          v33 = [v10 actionIdentifier];
          *buf = 138412802;
          v50 = v31;
          v51 = 2112;
          v52 = v32;
          v53 = 2112;
          v54 = v33;
          _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, %@, executing handler for actionIdentifier, %@", buf, 0x20u);
        }
      }

      v34 = [(RTUserNotification *)self actionIdentifierToActionMapper];
      v35 = [v10 actionIdentifier];
      v36 = [v34 objectForKeyedSubscript:v35];
      v37 = [v36 handler];
      (v37)[2](v37, v9, v10, 0);

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          v41 = NSStringFromSelector(a2);
          v42 = [v10 actionIdentifier];
          *buf = 138412802;
          v50 = v40;
          v51 = 2112;
          v52 = v41;
          v53 = 2112;
          v54 = v42;
          v43 = "%@, %@, completed handler execution for actionIdentifier, %@";
LABEL_20:
          _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, v43, buf, 0x20u);

          goto LABEL_21;
        }

        goto LABEL_21;
      }
    }

    else if (v28)
    {
      v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v45 = objc_opt_class();
        v40 = NSStringFromClass(v45);
        v41 = NSStringFromSelector(a2);
        v42 = [v10 actionIdentifier];
        *buf = 138412802;
        v50 = v40;
        v51 = 2112;
        v52 = v41;
        v53 = 2112;
        v54 = v42;
        v43 = "%@, %@, missing handler for actionIdentifier, %@";
        goto LABEL_20;
      }

      goto LABEL_21;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v44 = objc_opt_class();
      v40 = NSStringFromClass(v44);
      v41 = NSStringFromSelector(a2);
      v42 = [v10 actionIdentifier];
      *buf = 138412802;
      v50 = v40;
      v51 = 2112;
      v52 = v41;
      v53 = 2112;
      v54 = v42;
      v43 = "%@, %@, mapper doesn't have an entry for the actionIdentifier, %@";
      goto LABEL_20;
    }

LABEL_21:
  }

  v11[2](v11);
}

@end