@interface SMSafetyMonitorUtilities
+ (NSString)magnetBreakNotificationMessage;
+ (NSString)magnetBreakNotificationTitle;
+ (NSString)workoutAlwaysPromptActionTitle;
+ (NSString)workoutAlwaysPromptBody;
+ (id)carPlayGroupFallbackName;
+ (id)carPlayNotificationTypeToString:(unint64_t)string;
+ (id)disabledConnectivityAlertDestinationMessage;
+ (id)disabledConnectivityAlertGenericMessage;
+ (id)disabledConnectivityAlertOKButton;
+ (id)disabledConnectivityAlertTitle;
+ (id)getCarPlayButtonActionIdentifierForNotificationType:(unint64_t)type sessionType:(unint64_t)sessionType error:(id *)error;
+ (id)getCarPlayButtonTitleForNotificationType:(unint64_t)type sessionType:(unint64_t)sessionType error:(id *)error;
+ (id)getCarPlayNotificationCategoryForNotificationType:(unint64_t)type sessionType:(unint64_t)sessionType error:(id *)error;
+ (id)getCarPlayNotificationMessageForNotificationType:(unint64_t)type sessionType:(unint64_t)sessionType contactName:(id)name cacheReleaseDate:(id)date error:(id *)error;
+ (id)getCarPlayNotificationTitleForNotificationType:(unint64_t)type sessionType:(unint64_t)sessionType contactName:(id)name error:(id *)error;
+ (id)getSuggestionBodyWithPlaceInference:(id)inference;
+ (id)getSuggestionFooter;
+ (id)getSuggestionTitleWithContactName:(id)name;
+ (id)getSuggestionTitleWithoutContactName;
+ (id)safeArrivalMessageWithCustomizedSummaryForDestination:(id)destination;
@end

@implementation SMSafetyMonitorUtilities

+ (id)carPlayNotificationTypeToString:(unint64_t)string
{
  if (string - 1 > 4)
  {
    return @"SMCarPlayNotificationTypeUnknown";
  }

  else
  {
    return off_279B65278[string - 1];
  }
}

+ (NSString)magnetBreakNotificationTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"MAGNET_BREAK_NOTIFICATION_TITLE" value:@"Check In" table:0];

  return v3;
}

+ (NSString)magnetBreakNotificationMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"MAGNET_BREAK_NOTIFICATION_MESSAGE" value:@"Apple Watch is no longer connected to iPhone. Check In will continue on iPhone." table:0];

  return v3;
}

+ (id)getCarPlayNotificationTitleForNotificationType:(unint64_t)type sessionType:(unint64_t)sessionType contactName:(id)name error:(id *)error
{
  v31[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (nameCopy)
  {
    v30 = *MEMORY[0x277CCA450];
    v11 = MEMORY[0x277CCACA8];
    v12 = NSStringFromSelector(a2);
    v13 = [objc_opt_class() carPlayNotificationTypeToString:type];
    v14 = [SMSessionConfiguration sessionTypeToString:sessionType];
    nameCopy = [v11 stringWithFormat:@"%@ invalid options passed, carPlayNotificationType, %@, sessionType, %@, contactName, %@, ", v12, v13, v14, nameCopy];
    v31[0] = nameCopy;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];

    if (type - 1 > 3)
    {
      if (type == 5)
      {
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v23 localizedStringForKey:@"CARPLAY_NOTIFICATION_TITLE_CACHE_RELEASED" value:@"%@ has been notified." table:0];

        nameCopy2 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v18 validFormatSpecifiers:@"%@" error:0, nameCopy];
        goto LABEL_17;
      }
    }

    else
    {
      if (sessionType == 1)
      {
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = v17;
        v19 = @"CARPLAY_NOTIFICATION_TITLE_TIMER_SESSION_ANOMALY";
        v20 = @"Your timer has ended.";
        goto LABEL_16;
      }

      if (sessionType == 2)
      {
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = v17;
        v19 = @"CARPLAY_NOTIFICATION_TITLE_DESTINATION_SESSION_ANOMALY";
        v20 = @"It looks like you’re delayed.";
LABEL_16:
        nameCopy2 = [v17 localizedStringForKey:v19 value:v20 table:0];
LABEL_17:
        v22 = nameCopy2;

        v25 = 0;
        if (!error)
        {
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v26 = v25;
        *error = v25;
        goto LABEL_19;
      }
    }

    v25 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SMErrorDomain" code:7 userInfo:v16];
    v22 = 0;
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26455D000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactName", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"contactName");
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_20:

  v27 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)getCarPlayNotificationMessageForNotificationType:(unint64_t)type sessionType:(unint64_t)sessionType contactName:(id)name cacheReleaseDate:(id)date error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dateCopy = date;
  if (nameCopy)
  {
    v33 = *MEMORY[0x277CCA450];
    v14 = MEMORY[0x277CCACA8];
    v15 = NSStringFromSelector(a2);
    v16 = [objc_opt_class() carPlayNotificationTypeToString:type];
    v17 = [SMSessionConfiguration sessionTypeToString:sessionType];
    nameCopy = [v14 stringWithFormat:@"%@ invalid options passed, carPlayNotificationType, %@, sessionType, %@, contactName, %@, ", v15, v16, v17, nameCopy];
    v34[0] = nameCopy;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];

    if (type - 1 > 3)
    {
      if (type == 5)
      {
        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v25 = [v27 localizedStringForKey:@"CARPLAY_NOTIFICATION_MESSAGE_CACHE_RELEASED" value:@"Your location is being shared." table:0];

LABEL_11:
        v28 = 0;
        if (!error)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if (sessionType - 1 <= 1)
    {
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"CARPLAY_NOTIFICATION_MESSAGE_SESSION_ANOMALY" value:@"%@ will be notified in %lu min." table:0];

      v22 = MEMORY[0x277CCACA8];
      date = [MEMORY[0x277CBEAA8] date];
      [dateCopy timeIntervalSinceDate:date];
      *&v24 = v24 / 60.0;
      v25 = [v22 localizedStringWithValidatedFormat:v21 validFormatSpecifiers:@"%@%lu" error:0, nameCopy, vcvtas_u32_f32(*&v24)];

      goto LABEL_11;
    }

    v28 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SMErrorDomain" code:7 userInfo:v19];
    v25 = 0;
    if (!error)
    {
LABEL_15:

      goto LABEL_16;
    }

LABEL_14:
    v29 = v28;
    *error = v28;
    goto LABEL_15;
  }

  v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26455D000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactName", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"contactName");
    *error = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_16:

  v30 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)getCarPlayNotificationCategoryForNotificationType:(unint64_t)type sessionType:(unint64_t)sessionType error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = *MEMORY[0x277CCA450];
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [objc_opt_class() carPlayNotificationTypeToString:type];
  v11 = [SMSessionConfiguration sessionTypeToString:sessionType];
  v12 = [v8 stringWithFormat:@"%@ invalid options passed, carPlayNotificationType, %@, sessionType, %@, ", v9, v10, v11, v21];
  v22[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  if (type - 1 > 3)
  {
    if (type == 5)
    {
      v15 = @"CacheReleaseTimedOut";
      goto LABEL_15;
    }

    v16 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SMErrorDomain" code:7 userInfo:v13];
    v17 = 0;
    if (error)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (sessionType == 1)
  {
    v14 = SMTimerEndedNotificationCategory;
    goto LABEL_10;
  }

  if (sessionType == 2)
  {
    v14 = SMDestinationAnomalyNotificationCategory;
LABEL_10:
    v17 = *v14;
    goto LABEL_12;
  }

  v17 = 0;
LABEL_12:
  v16 = 0;
  if (error)
  {
LABEL_13:
    v18 = v16;
    *error = v16;
  }

LABEL_14:
  v15 = v17;

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)getCarPlayButtonActionIdentifierForNotificationType:(unint64_t)type sessionType:(unint64_t)sessionType error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = *MEMORY[0x277CCA450];
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [objc_opt_class() carPlayNotificationTypeToString:type];
  v11 = [SMSessionConfiguration sessionTypeToString:sessionType];
  v12 = [v8 stringWithFormat:@"%@ invalid options passed, carPlayNotificationType, %@, sessionType, %@, ", v9, v10, v11, v21];
  v22[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  if (type - 1 > 2)
  {
    if ((type & 0xFFFFFFFFFFFFFFFELL) != 4)
    {
      v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SMErrorDomain" code:7 userInfo:v13];
      goto LABEL_13;
    }

    v14 = SMCarPlayActionIdentifierOK;
  }

  else
  {
    if (sessionType != 1)
    {
      if (sessionType == 2)
      {
        v14 = SMCarPlayActionIdentifierExtendDestinationSession;
        goto LABEL_9;
      }

      v15 = 0;
LABEL_13:
      v16 = 0;
      if (!error)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v14 = SMCarPlayActionIdentifierExtendTimerSession;
  }

LABEL_9:
  v16 = *v14;
  v15 = 0;
  if (error)
  {
LABEL_10:
    v17 = v15;
    *error = v15;
  }

LABEL_11:
  v18 = v16;

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)getCarPlayButtonTitleForNotificationType:(unint64_t)type sessionType:(unint64_t)sessionType error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  v24 = *MEMORY[0x277CCA450];
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [objc_opt_class() carPlayNotificationTypeToString:type];
  v11 = [SMSessionConfiguration sessionTypeToString:sessionType];
  v12 = [v8 stringWithFormat:@"%@ invalid options passed, carPlayNotificationType, %@, sessionType, %@, ", v9, v10, v11, v24];
  v25[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  if (type - 1 > 2)
  {
    if ((type & 0xFFFFFFFFFFFFFFFELL) != 4)
    {
      v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SMErrorDomain" code:7 userInfo:v13];
      goto LABEL_13;
    }

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = v14;
    v16 = @"CARPLAY_NOTIFICATION_BUTTON_TITLE_CACHE_RELEASED";
    v17 = @"OK";
  }

  else
  {
    if (sessionType != 1)
    {
      if (sessionType == 2)
      {
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v15 = v14;
        v16 = @"CARPLAY_NOTIFICATION_BUTTON_TITLE_DESTINATION_SESSION_ANOMALY";
        v17 = @"Add Time";
        goto LABEL_9;
      }

      v18 = 0;
LABEL_13:
      v19 = 0;
      if (!error)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = v14;
    v16 = @"CARPLAY_NOTIFICATION_BUTTON_TITLE_TIMER_SESSION_ANOMALY";
    v17 = @"Add 30 min";
  }

LABEL_9:
  v19 = [v14 localizedStringForKey:v16 value:v17 table:0];

  v18 = 0;
  if (error)
  {
LABEL_10:
    v20 = v18;
    *error = v18;
  }

LABEL_11:
  v21 = v19;

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (id)safeArrivalMessageWithCustomizedSummaryForDestination:(id)destination
{
  v3 = MEMORY[0x277CCA8D8];
  destinationCopy = destination;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"END_MESSAGE_SAFE_ARRIVAL_CUSTOMISED_DESTINATION_SUMMARY" value:@"Check In: Arrived at %@" table:0];

  destinationCopy = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:0, destinationCopy];

  return destinationCopy;
}

+ (id)carPlayGroupFallbackName
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"group" value:@"group" table:0];

  return v3;
}

+ (id)getSuggestionTitleWithoutContactName
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SUGGESTION_NOTIFICATION_TITLE_NO_CONTACT" value:@"Start a Check In with a friend" table:0];

  return v3;
}

+ (id)getSuggestionTitleWithContactName:(id)name
{
  v3 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SUGGESTION_NOTIFICATION_TITLE" value:@"Start a Check In with %@" table:0];

  nameCopy = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:0, nameCopy];

  return nameCopy;
}

+ (id)getSuggestionBodyWithPlaceInference:(id)inference
{
  inferenceCopy = inference;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (inferenceCopy)
  {
    v6 = [v4 localizedStringForKey:@"SUGGESTION_NOTIFICATION_BODY" value:@"Let them know when you arrive at %@" table:0];

    inferenceCopy = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:0, inferenceCopy];
    v5 = v6;
  }

  else
  {
    inferenceCopy = [v4 localizedStringForKey:@"SUGGESTION_NOTIFICATION_BODY_FALLBACK" value:@"Let them know when you arrive at your destination" table:0];
  }

  return inferenceCopy;
}

+ (id)getSuggestionFooter
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SUGGESTION_NOTIFICATION_FOOTER" value:@"Siri Suggestion" table:0];

  return v3;
}

+ (NSString)workoutAlwaysPromptBody
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Would you like to be reminded to Check In when starting an outdoor workout? You can customize this in Settings." value:&stru_287607830 table:0];

  return v3;
}

+ (NSString)workoutAlwaysPromptActionTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Remind Me" value:&stru_287607830 table:0];

  return v3;
}

+ (id)disabledConnectivityAlertTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Check In" value:&stru_287607830 table:0];

  return v3;
}

+ (id)disabledConnectivityAlertOKButton
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"OK" value:&stru_287607830 table:0];

  return v3;
}

+ (id)disabledConnectivityAlertGenericMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Check In requires a cellular connection to respond when prompted. If a network connection is not available value:your friend will be notified." table:{&stru_287607830, 0}];

  return v3;
}

+ (id)disabledConnectivityAlertDestinationMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Check In requires a cellular connection to keep up with your progress. If Check In cannot determine that you’ve arrived by your original ETA value:your friend will be notified." table:{&stru_287607830, 0}];

  return v3;
}

@end