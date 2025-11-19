@interface SKIFitnessInvocation
+ (id)announcePayloadFromUserData:(id)a3;
+ (id)announceWorkoutReminder:(id)a3 announcePayload:(id)a4;
+ (id)announceWorkoutVoiceFeedback:(id)a3 announcePayload:(id)a4;
+ (id)updateStartLocalRequest:(id)a3 withNewAnnouncePayload:(id)a4;
+ (id)workoutReminderFromPayload:(id)a3;
+ (id)workoutVoiceFeedbackFromPayload:(id)a3;
+ (void)updateDict:(id)a3 withAnnouncePayload:(id)a4;
@end

@implementation SKIFitnessInvocation

+ (id)announceWorkoutReminder:(id)a3 announcePayload:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithCapacity:8];
  v10 = [v8 predictionIdentifier];
  [v9 setValue:v10 forKey:@"predictionIdentifier"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "workoutType")}];
  [v9 setValue:v11 forKey:@"workoutType"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "workoutActivityType")}];
  [v9 setValue:v12 forKey:@"workoutActivityType"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "workoutLocationType")}];
  [v9 setValue:v13 forKey:@"workoutLocationType"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "workoutSwimmingLocationType")}];
  [v9 setValue:v14 forKey:@"workoutSwimmingLocationType"];

  v15 = MEMORY[0x277CCABB0];
  v16 = [v8 predictionType];

  v17 = [v15 numberWithInteger:v16];
  [v9 setValue:v17 forKey:@"predictionType"];

  [a1 updateDict:v9 withAnnouncePayload:v7];
  v18 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v19 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.fitness.announceWorkoutReminder"];
  [(SKIDirectInvocationPayload *)v19 setUserData:v9];
  v20 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v18 payload:v19];
  v21 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v20];

  return v21;
}

+ (id)workoutReminderFromPayload:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"predictionIdentifier"];
  v5 = [v4 stringValue];

  v6 = [v3 objectForKeyedSubscript:@"predictionType"];
  v7 = [v6 integerValue];

  v8 = [v3 objectForKeyedSubscript:@"workoutType"];
  v9 = [v8 integerValue];

  v10 = [v3 objectForKeyedSubscript:@"workoutActivityType"];
  v11 = [v10 integerValue];

  v12 = [v3 objectForKeyedSubscript:@"workoutLocationType"];
  v13 = [v12 integerValue];

  v14 = [v3 objectForKeyedSubscript:@"workoutSwimmingLocationType"];

  v15 = [v14 integerValue];
  v16 = [objc_alloc(MEMORY[0x277CEF420]) initWithPredictionIdentifier:v5 predictionType:v7 workoutType:v9 workoutActivityType:v11 locationType:v13 swimmingLocationType:v15];

  return v16;
}

+ (id)announceWorkoutVoiceFeedback:(id)a3 announcePayload:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionary];
  v18 = 0;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v18];

  v11 = v18;
  if (v10)
  {
    [v9 setObject:v10 forKey:@"voiceFeedbackData"];
  }

  else
  {
    v12 = SKIDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[SKIFitnessInvocation announceWorkoutVoiceFeedback:announcePayload:];
    }
  }

  [a1 updateDict:v9 withAnnouncePayload:v7];

  v13 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v14 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.fitness.announceWorkoutVoiceFeedback"];
  [(SKIDirectInvocationPayload *)v14 setUserData:v9];
  v15 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v13 payload:v14];
  v16 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v15];

  return v16;
}

+ (id)workoutVoiceFeedbackFromPayload:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"voiceFeedbackData"];
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

+ (id)updateStartLocalRequest:(id)a3 withNewAnnouncePayload:(id)a4
{
  v6 = a4;
  v7 = [a3 clientBoundCommands];
  v8 = [v7 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 parse];
    v10 = [v9 directInvocation];

    v11 = [v10 invocationIdentifier];
    if ([v11 isEqualToString:@"com.apple.siri.directInvocation.fitness.announceWorkoutReminder"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"com.apple.siri.directInvocation.fitness.announceWorkoutVoiceFeedback"))
    {
      v12 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:v11];
      v13 = [v10 data];

      if (v13)
      {
        v14 = MEMORY[0x277CCAC58];
        v15 = [v10 data];
        v24 = 0;
        v16 = [v14 propertyListWithData:v15 options:0 format:0 error:&v24];
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
          v20 = [(SKIDirectInvocationPayload *)v12 userData];
          v18 = [v20 mutableCopy];

          [a1 updateDict:v18 withAnnouncePayload:v6];
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
    v10 = SKIDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[SKIFitnessInvocation updateStartLocalRequest:withNewAnnouncePayload:];
    }

    v19 = 0;
  }

  return v19;
}

+ (void)updateDict:(id)a3 withAnnouncePayload:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 appBundleIdOfLastAnnouncement];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v6 appBundleIdOfLastAnnouncement];
    [v5 setValue:v9 forKey:@"appBundleIdOfLastAnnouncement"];
  }

  else
  {
    [v5 removeObjectForKey:@"appBundleIdOfLastAnnouncement"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "synchronousBurstIndex")}];
  [v5 setValue:v10 forKey:@"synchronousBurstIndex"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isSameTypeAsLastAnnouncement")}];
  [v5 setValue:v11 forKey:@"isSameTypeAsLastAnnouncement"];

  v12 = MEMORY[0x277CCABB0];
  [v6 timeSinceLastAnnouncement];
  v13 = [v12 numberWithDouble:?];
  [v5 setValue:v13 forKey:@"timeSinceLastAnnouncement"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "announcementPlatform")}];
  [v5 setValue:v14 forKey:@"announcePlatform"];

  v18 = 0;
  v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v18];
  v16 = v18;
  if (v15)
  {
    [v5 setValue:v15 forKey:@"announcePayload"];
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

+ (id)announcePayloadFromUserData:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"announcePayload"];
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