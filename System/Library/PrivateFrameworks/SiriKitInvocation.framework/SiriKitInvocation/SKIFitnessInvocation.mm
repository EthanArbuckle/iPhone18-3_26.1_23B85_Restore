@interface SKIFitnessInvocation
+ (id)announcePayloadFromUserData:(id)data;
+ (id)announceWorkoutReminder:(id)reminder announcePayload:(id)payload;
+ (id)announceWorkoutVoiceFeedback:(id)feedback announcePayload:(id)payload;
+ (id)updateStartLocalRequest:(id)request withNewAnnouncePayload:(id)payload;
+ (id)workoutReminderFromPayload:(id)payload;
+ (id)workoutVoiceFeedbackFromPayload:(id)payload;
+ (void)updateDict:(id)dict withAnnouncePayload:(id)payload;
@end

@implementation SKIFitnessInvocation

+ (id)announceWorkoutReminder:(id)reminder announcePayload:(id)payload
{
  v6 = MEMORY[0x277CBEB38];
  payloadCopy = payload;
  reminderCopy = reminder;
  v9 = [[v6 alloc] initWithCapacity:8];
  predictionIdentifier = [reminderCopy predictionIdentifier];
  [v9 setValue:predictionIdentifier forKey:@"predictionIdentifier"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(reminderCopy, "workoutType")}];
  [v9 setValue:v11 forKey:@"workoutType"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(reminderCopy, "workoutActivityType")}];
  [v9 setValue:v12 forKey:@"workoutActivityType"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(reminderCopy, "workoutLocationType")}];
  [v9 setValue:v13 forKey:@"workoutLocationType"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(reminderCopy, "workoutSwimmingLocationType")}];
  [v9 setValue:v14 forKey:@"workoutSwimmingLocationType"];

  v15 = MEMORY[0x277CCABB0];
  predictionType = [reminderCopy predictionType];

  v17 = [v15 numberWithInteger:predictionType];
  [v9 setValue:v17 forKey:@"predictionType"];

  [self updateDict:v9 withAnnouncePayload:payloadCopy];
  v18 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v19 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.fitness.announceWorkoutReminder"];
  [(SKIDirectInvocationPayload *)v19 setUserData:v9];
  v20 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v18 payload:v19];
  v21 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v20];

  return v21;
}

+ (id)workoutReminderFromPayload:(id)payload
{
  payloadCopy = payload;
  v4 = [payloadCopy objectForKeyedSubscript:@"predictionIdentifier"];
  stringValue = [v4 stringValue];

  v6 = [payloadCopy objectForKeyedSubscript:@"predictionType"];
  integerValue = [v6 integerValue];

  v8 = [payloadCopy objectForKeyedSubscript:@"workoutType"];
  integerValue2 = [v8 integerValue];

  v10 = [payloadCopy objectForKeyedSubscript:@"workoutActivityType"];
  integerValue3 = [v10 integerValue];

  v12 = [payloadCopy objectForKeyedSubscript:@"workoutLocationType"];
  integerValue4 = [v12 integerValue];

  v14 = [payloadCopy objectForKeyedSubscript:@"workoutSwimmingLocationType"];

  integerValue5 = [v14 integerValue];
  v16 = [objc_alloc(MEMORY[0x277CEF420]) initWithPredictionIdentifier:stringValue predictionType:integerValue workoutType:integerValue2 workoutActivityType:integerValue3 locationType:integerValue4 swimmingLocationType:integerValue5];

  return v16;
}

+ (id)announceWorkoutVoiceFeedback:(id)feedback announcePayload:(id)payload
{
  v6 = MEMORY[0x277CBEB38];
  payloadCopy = payload;
  feedbackCopy = feedback;
  dictionary = [v6 dictionary];
  v18 = 0;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:feedbackCopy requiringSecureCoding:1 error:&v18];

  v11 = v18;
  if (v10)
  {
    [dictionary setObject:v10 forKey:@"voiceFeedbackData"];
  }

  else
  {
    v12 = SKIDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[SKIFitnessInvocation announceWorkoutVoiceFeedback:announcePayload:];
    }
  }

  [self updateDict:dictionary withAnnouncePayload:payloadCopy];

  v13 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v14 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.fitness.announceWorkoutVoiceFeedback"];
  [(SKIDirectInvocationPayload *)v14 setUserData:dictionary];
  v15 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v13 payload:v14];
  v16 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v15];

  return v16;
}

+ (id)workoutVoiceFeedbackFromPayload:(id)payload
{
  v3 = [payload objectForKeyedSubscript:@"voiceFeedbackData"];
  if (v3)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
    v5 = v8;
    if (v5)
    {
      v6 = SKIDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[SKIFitnessInvocation workoutVoiceFeedbackFromPayload:];
      }
    }
  }

  else
  {
    v5 = SKIDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[SKIFitnessInvocation workoutVoiceFeedbackFromPayload:];
    }

    v4 = 0;
  }

  return v4;
}

+ (id)updateStartLocalRequest:(id)request withNewAnnouncePayload:(id)payload
{
  payloadCopy = payload;
  clientBoundCommands = [request clientBoundCommands];
  firstObject = [clientBoundCommands firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    parse = [firstObject parse];
    directInvocation = [parse directInvocation];

    invocationIdentifier = [directInvocation invocationIdentifier];
    if ([invocationIdentifier isEqualToString:@"com.apple.siri.directInvocation.fitness.announceWorkoutReminder"] & 1) != 0 || (objc_msgSend(invocationIdentifier, "isEqualToString:", @"com.apple.siri.directInvocation.fitness.announceWorkoutVoiceFeedback"))
    {
      v12 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:invocationIdentifier];
      data = [directInvocation data];

      if (data)
      {
        v14 = MEMORY[0x277CCAC58];
        data2 = [directInvocation data];
        v24 = 0;
        v16 = [v14 propertyListWithData:data2 options:0 format:0 error:&v24];
        v17 = v24;
        [(SKIDirectInvocationPayload *)v12 setUserData:v16];

        if (v17)
        {
          v18 = SKIDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            +[SKIFitnessInvocation updateStartLocalRequest:withNewAnnouncePayload:];
          }

          v19 = 0;
        }

        else
        {
          userData = [(SKIDirectInvocationPayload *)v12 userData];
          v18 = [userData mutableCopy];

          [self updateDict:v18 withAnnouncePayload:payloadCopy];
          [(SKIDirectInvocationPayload *)v12 setUserData:v18];
          v21 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
          v22 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v21 payload:v12];
          v19 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v22];
        }
      }

      else
      {
        v17 = SKIDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          +[SKIFitnessInvocation updateStartLocalRequest:withNewAnnouncePayload:];
        }

        v19 = 0;
      }
    }

    else
    {
      v12 = SKIDefaultLog();
      if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_ERROR))
      {
        +[SKIFitnessInvocation updateStartLocalRequest:withNewAnnouncePayload:];
      }

      v19 = 0;
    }
  }

  else
  {
    directInvocation = SKIDefaultLog();
    if (os_log_type_enabled(directInvocation, OS_LOG_TYPE_ERROR))
    {
      +[SKIFitnessInvocation updateStartLocalRequest:withNewAnnouncePayload:];
    }

    v19 = 0;
  }

  return v19;
}

+ (void)updateDict:(id)dict withAnnouncePayload:(id)payload
{
  dictCopy = dict;
  payloadCopy = payload;
  appBundleIdOfLastAnnouncement = [payloadCopy appBundleIdOfLastAnnouncement];
  v8 = [appBundleIdOfLastAnnouncement length];

  if (v8)
  {
    appBundleIdOfLastAnnouncement2 = [payloadCopy appBundleIdOfLastAnnouncement];
    [dictCopy setValue:appBundleIdOfLastAnnouncement2 forKey:@"appBundleIdOfLastAnnouncement"];
  }

  else
  {
    [dictCopy removeObjectForKey:@"appBundleIdOfLastAnnouncement"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(payloadCopy, "synchronousBurstIndex")}];
  [dictCopy setValue:v10 forKey:@"synchronousBurstIndex"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(payloadCopy, "isSameTypeAsLastAnnouncement")}];
  [dictCopy setValue:v11 forKey:@"isSameTypeAsLastAnnouncement"];

  v12 = MEMORY[0x277CCABB0];
  [payloadCopy timeSinceLastAnnouncement];
  v13 = [v12 numberWithDouble:?];
  [dictCopy setValue:v13 forKey:@"timeSinceLastAnnouncement"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(payloadCopy, "announcementPlatform")}];
  [dictCopy setValue:v14 forKey:@"announcePlatform"];

  v18 = 0;
  v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:payloadCopy requiringSecureCoding:1 error:&v18];
  v16 = v18;
  if (v15)
  {
    [dictCopy setValue:v15 forKey:@"announcePayload"];
  }

  else
  {
    v17 = SKIDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[SKIFitnessInvocation updateDict:withAnnouncePayload:];
    }
  }
}

+ (id)announcePayloadFromUserData:(id)data
{
  v3 = [data objectForKeyedSubscript:@"announcePayload"];
  v8 = 0;
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = SKIDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[SKIFitnessInvocation announcePayloadFromUserData:];
    }
  }

  return v4;
}

+ (void)announceWorkoutVoiceFeedback:announcePayload:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)workoutVoiceFeedbackFromPayload:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)updateStartLocalRequest:withNewAnnouncePayload:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)updateStartLocalRequest:withNewAnnouncePayload:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)updateDict:withAnnouncePayload:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)announcePayloadFromUserData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end