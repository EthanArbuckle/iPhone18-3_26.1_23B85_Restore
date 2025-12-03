@interface RTUserNotification
+ (id)_getUNNotificationActionFromRTUserNotificationAction:(id)action;
+ (id)destinationToString:(unint64_t)string;
+ (id)interruptionLevelToString:(unint64_t)string;
+ (unint64_t)UNNotificationInterruptionLevelFromRTNotificationInterruptionLevel:(unint64_t)level;
- (BOOL)deleteNotificationWithError:(id *)error;
- (RTUserNotification)initWithBundleIdentifier:(id)identifier notificationUUIDString:(id)string;
- (void)postNotificationWithTitle:(id)title subtitle:(id)subtitle body:(id)body footer:(id)footer defaultActionUrl:(id)url categoryIdentifier:(id)identifier interruptionLevel:(unint64_t)level destination:(unint64_t)self0 actions:(id)self1 suppressDismissActionInCarPlay:(BOOL)self2 preventAutomaticRemoval:(BOOL)self3 expirationDate:(id)self4 userInfo:(id)self5 handler:(id)self6;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation RTUserNotification

- (RTUserNotification)initWithBundleIdentifier:(id)identifier notificationUUIDString:(id)string
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  stringCopy = string;
  v10 = stringCopy;
  if (identifierCopy)
  {
    if (stringCopy)
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

    if (identifierCopy)
    {
      goto LABEL_4;
    }

LABEL_17:
    selfCopy = 0;
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
  if (!identifierCopy)
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
    objc_storeStrong(&v11->_bundleIdentifier, identifier);
    objc_storeStrong(p_isa + 3, string);
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

    v17 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:identifierCopy];
    v18 = p_isa[1];
    p_isa[1] = v17;

    [p_isa[1] setDelegate:p_isa];
    [p_isa[1] setWantsNotificationResponsesDelivered];
    v19 = p_isa;
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [v19 UTF8String];
    }

    else
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v19];
      uTF8String = [v25 UTF8String];
    }

    v26 = dispatch_queue_create(uTF8String, v20);

    v27 = v19[5];
    v19[5] = v26;
  }

  self = p_isa;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

- (void)postNotificationWithTitle:(id)title subtitle:(id)subtitle body:(id)body footer:(id)footer defaultActionUrl:(id)url categoryIdentifier:(id)identifier interruptionLevel:(unint64_t)level destination:(unint64_t)self0 actions:(id)self1 suppressDismissActionInCarPlay:(BOOL)self2 preventAutomaticRemoval:(BOOL)self3 expirationDate:(id)self4 userInfo:(id)self5 handler:(id)self6
{
  v101 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  subtitleCopy = subtitle;
  bodyCopy = body;
  footerCopy = footer;
  urlCopy = url;
  identifierCopy = identifier;
  actionsCopy = actions;
  dateCopy = date;
  infoCopy = info;
  handlerCopy = handler;
  v29 = objc_opt_new();
  v30 = v29;
  if (titleCopy)
  {
    [v29 setTitle:titleCopy];
  }

  if (subtitleCopy)
  {
    [v30 setSubtitle:subtitleCopy];
  }

  if (bodyCopy)
  {
    [v30 setBody:bodyCopy];
  }

  if (footerCopy)
  {
    [v30 setFooter:footerCopy];
  }

  v68 = footerCopy;
  if (identifierCopy)
  {
    [v30 setCategoryIdentifier:?];
  }

  v69 = bodyCopy;
  if (infoCopy)
  {
    [v30 setUserInfo:infoCopy];
  }

  v75 = v30;
  if (urlCopy)
  {
    v31 = [MEMORY[0x277CBEBC0] URLWithString:urlCopy];
    [v30 setDefaultActionURL:v31];

    userInfo = [v30 userInfo];
    v33 = userInfo;
    if (!userInfo)
    {
      userInfo = MEMORY[0x277CBEC10];
    }

    v34 = [userInfo mutableCopy];

    [v34 setObject:urlCopy forKeyedSubscript:@"defaultActionURLString"];
    v35 = [v34 copy];
    [v75 setUserInfo:v35];

    v30 = v75;
  }

  v66 = infoCopy;
  v70 = subtitleCopy;
  v71 = titleCopy;
  bundleIdentifier = [(RTUserNotification *)self bundleIdentifier];
  [v30 setDefaultActionBundleIdentifier:bundleIdentifier];

  [v30 setInterruptionLevel:{objc_msgSend(objc_opt_class(), "UNNotificationInterruptionLevelFromRTNotificationInterruptionLevel:", level)}];
  defaultSound = [MEMORY[0x277CE1FE0] defaultSound];
  [v30 setSound:defaultSound];

  if (dateCopy)
  {
    [v30 setExpirationDate:dateCopy];
  }

  v67 = dateCopy;
  LODWORD(v64) = removal;
  v38 = objc_opt_new();
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = actionsCopy;
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
        actionIdentifierToActionMapper = [(RTUserNotification *)self actionIdentifierToActionMapper];
        actionIdentifier = [v43 actionIdentifier];
        [actionIdentifierToActionMapper setObject:v43 forKeyedSubscript:actionIdentifier];

        [v38 addObject:v45];
        objc_autoreleasePoolPop(v44);
      }

      v40 = [obj countByEnumeratingWithState:&v86 objects:v100 count:16];
    }

    while (v40);
  }

  if (removal)
  {
    v48 = 131073;
  }

  else
  {
    v48 = 1;
  }

  destinationCopy2 = destination;
  if ((destination & 8) != 0)
  {
    if (play)
    {
      v48 = 1101004806;
    }

    else
    {
      v48 = 27262982;
    }

    v50 = v71;
    v51 = urlCopy;
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
        if (play)
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

        destinationCopy2 = destination;
      }
    }
  }

  else
  {
    v50 = v71;
    v51 = urlCopy;
    v52 = v67;
  }

  notificationCenter = [(RTUserNotification *)self notificationCenter];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __230__RTUserNotification_postNotificationWithTitle_subtitle_body_footer_defaultActionUrl_categoryIdentifier_interruptionLevel_destination_actions_suppressDismissActionInCarPlay_preventAutomaticRemoval_expirationDate_userInfo_handler___block_invoke;
  v77[3] = &unk_2788CAC70;
  v78 = identifierCopy;
  v79 = v38;
  selfCopy = self;
  v81 = v75;
  v84 = a2;
  v85 = destinationCopy2;
  v82 = handlerCopy;
  v83 = v48;
  v60 = handlerCopy;
  v61 = v75;
  v62 = v38;
  v63 = identifierCopy;
  [notificationCenter getNotificationCategoriesWithCompletionHandler:v77];
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

- (BOOL)deleteNotificationWithError:(id *)error
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
      notificationUUIDString = [(RTUserNotification *)self notificationUUIDString];
      *buf = 138412802;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = notificationUUIDString;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, %@, removing notification immediately for notificationUUID, %@", buf, 0x20u);
    }
  }

  notificationCenter = [(RTUserNotification *)self notificationCenter];
  notificationUUIDString2 = [(RTUserNotification *)self notificationUUIDString];
  v14 = notificationUUIDString2;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  [notificationCenter removeDeliveredNotificationsWithIdentifiers:v12];

  return 1;
}

+ (id)interruptionLevelToString:(unint64_t)string
{
  if (string - 1 > 3)
  {
    return @"Default";
  }

  else
  {
    return off_2788CAC90[string - 1];
  }
}

+ (id)destinationToString:(unint64_t)string
{
  if (string - 1 > 7)
  {
    return @"None";
  }

  else
  {
    return off_2788CACB0[string - 1];
  }
}

+ (unint64_t)UNNotificationInterruptionLevelFromRTNotificationInterruptionLevel:(unint64_t)level
{
  if (level > 4)
  {
    return 0;
  }

  else
  {
    return qword_230B00F50[level];
  }
}

+ (id)_getUNNotificationActionFromRTUserNotificationAction:(id)action
{
  actionCopy = action;
  v4 = [actionCopy url];

  v5 = MEMORY[0x277CE1F80];
  actionIdentifier = [actionCopy actionIdentifier];
  title = [actionCopy title];
  if (v4)
  {
    iconWithSystemImageName2 = [actionCopy url];
    v9 = MEMORY[0x277CE1F88];
    iconWithSystemImageName = [actionCopy iconWithSystemImageName];

    v11 = [v9 iconWithSystemImageName:iconWithSystemImageName];
    v12 = [v5 actionWithIdentifier:actionIdentifier title:title url:iconWithSystemImageName2 options:0 icon:v11];
  }

  else
  {
    v13 = MEMORY[0x277CE1F88];
    iconWithSystemImageName2 = [actionCopy iconWithSystemImageName];

    iconWithSystemImageName = [v13 iconWithSystemImageName:iconWithSystemImageName2];
    v12 = [v5 actionWithIdentifier:actionIdentifier title:title options:0 icon:iconWithSystemImageName];
  }

  return v12;
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
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

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v57 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  responseCopy = response;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      NSStringFromClass(v13);
      v14 = v48 = centerCopy;
      NSStringFromSelector(a2);
      v15 = v47 = handlerCopy;
      [responseCopy notification];
      v16 = v46 = a2;
      request = [v16 request];
      content = [request content];
      title = [content title];
      actionIdentifier = [responseCopy actionIdentifier];
      *buf = 138413058;
      v50 = v14;
      v51 = 2112;
      v52 = v15;
      v53 = 2112;
      v54 = title;
      v55 = 2112;
      v56 = actionIdentifier;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, response from notification with title, %@, actionIdentifier, %@", buf, 0x2Au);

      a2 = v46;
      handlerCopy = v47;

      centerCopy = v48;
    }
  }

  actionIdentifierToActionMapper = [(RTUserNotification *)self actionIdentifierToActionMapper];
  actionIdentifier2 = [responseCopy actionIdentifier];
  v23 = [actionIdentifierToActionMapper objectForKeyedSubscript:actionIdentifier2];

  if (v23)
  {
    actionIdentifierToActionMapper2 = [(RTUserNotification *)self actionIdentifierToActionMapper];
    actionIdentifier3 = [responseCopy actionIdentifier];
    v26 = [actionIdentifierToActionMapper2 objectForKeyedSubscript:actionIdentifier3];
    handler = [v26 handler];

    v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (handler)
    {
      if (v28)
      {
        v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = NSStringFromSelector(a2);
          actionIdentifier4 = [responseCopy actionIdentifier];
          *buf = 138412802;
          v50 = v31;
          v51 = 2112;
          v52 = v32;
          v53 = 2112;
          v54 = actionIdentifier4;
          _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, %@, executing handler for actionIdentifier, %@", buf, 0x20u);
        }
      }

      actionIdentifierToActionMapper3 = [(RTUserNotification *)self actionIdentifierToActionMapper];
      actionIdentifier5 = [responseCopy actionIdentifier];
      v36 = [actionIdentifierToActionMapper3 objectForKeyedSubscript:actionIdentifier5];
      handler2 = [v36 handler];
      (handler2)[2](handler2, centerCopy, responseCopy, 0);

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          v41 = NSStringFromSelector(a2);
          actionIdentifier6 = [responseCopy actionIdentifier];
          *buf = 138412802;
          v50 = v40;
          v51 = 2112;
          v52 = v41;
          v53 = 2112;
          v54 = actionIdentifier6;
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
        actionIdentifier6 = [responseCopy actionIdentifier];
        *buf = 138412802;
        v50 = v40;
        v51 = 2112;
        v52 = v41;
        v53 = 2112;
        v54 = actionIdentifier6;
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
      actionIdentifier6 = [responseCopy actionIdentifier];
      *buf = 138412802;
      v50 = v40;
      v51 = 2112;
      v52 = v41;
      v53 = 2112;
      v54 = actionIdentifier6;
      v43 = "%@, %@, mapper doesn't have an entry for the actionIdentifier, %@";
      goto LABEL_20;
    }

LABEL_21:
  }

  handlerCopy[2](handlerCopy);
}

@end