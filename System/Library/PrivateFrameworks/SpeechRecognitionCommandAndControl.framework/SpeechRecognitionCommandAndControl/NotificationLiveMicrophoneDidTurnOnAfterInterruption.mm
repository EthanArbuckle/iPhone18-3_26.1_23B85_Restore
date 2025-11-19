@interface NotificationLiveMicrophoneDidTurnOnAfterInterruption
@end

@implementation NotificationLiveMicrophoneDidTurnOnAfterInterruption

void ___NotificationLiveMicrophoneDidTurnOnAfterInterruption_block_invoke()
{
  v14 = [MEMORY[0x277CE2028] currentNotificationCenter];
  v0 = objc_opt_new();
  v1 = [CACLocaleUtilities localizedUIStringForKey:@"UserNotification.ListeningInterruptionEnded.TelephonyTitle"];
  [v0 setTitle:v1];

  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v5 = [v4 _telephonyRequiresAirPods];

  v6 = @"UserNotification.ListeningInterruptionEnded.TelephonyEnableSiriUseAirPods";
  if (v3)
  {
    v6 = @"UserNotification.ListeningInterruptionEnded.TelephonyUseAirPods";
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"UserNotification.ListeningInterruptionEnded.TelephonyEnableSiri";
  }

  v8 = [CACLocaleUtilities localizedUIStringForKey:v7];
  [v0 setBody:v8];

  v9 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=SIRI_AND_SEARCH"];
  [v0 setDefaultActionURL:v9];
  v10 = MEMORY[0x277CE1FC0];
  v11 = [MEMORY[0x277CCAD78] UUID];
  v12 = [v11 UUIDString];
  v13 = [v10 requestWithIdentifier:v12 content:v0 trigger:0];

  [v14 addNotificationRequest:v13 withCompletionHandler:&__block_literal_global_1716];
}

void ___NotificationLiveMicrophoneDidTurnOnAfterInterruption_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CACLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      ___NotificationLiveMicrophoneDidTurnOnAfterInterruption_block_invoke_2_cold_1();
    }
  }
}

void ___NotificationLiveMicrophoneDidTurnOnAfterInterruption_block_invoke_1717()
{
  v1 = +[CACDisplayManager sharedManager];
  v0 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.ListeningInterruptionEnded"];
  [v1 displayMessageString:v0 type:0];
}

void ___NotificationLiveMicrophoneDidTurnOnAfterInterruption_block_invoke_2_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(&dword_26B354000, v0, OS_LOG_TYPE_DEBUG, "Error sending local notification: %@", v1, 0xCu);
}

@end