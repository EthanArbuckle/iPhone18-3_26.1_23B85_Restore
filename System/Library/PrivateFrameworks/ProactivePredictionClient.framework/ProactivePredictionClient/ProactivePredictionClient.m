id ATXProactivePredictionXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28735CAA8];
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = [v2 initWithObjects:{v3, v4, 0}];

  objc_autoreleasePoolPop(v1);
  [v0 setClasses:v5 forSelector:sel_parameterSuggestionsForBundleID_intentName_toolID_limit_withCompletion_ argumentIndex:0 ofReply:1];

  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_self();
  v9 = objc_opt_self();
  v10 = [v7 initWithObjects:{v8, v9, 0}];

  objc_autoreleasePoolPop(v6);
  [v0 setClasses:v10 forSelector:sel_suggestionMetadataForActions_withCompletion_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_260DD09DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __atxlog_handle_default()
{
  if (__atxlog_handle_default_onceToken != -1)
  {
    __atxlog_handle_default_cold_1();
  }

  v1 = __atxlog_handle_default_log;

  return v1;
}

uint64_t ____atxlog_handle_default_block_invoke()
{
  __atxlog_handle_default_log = os_log_create("com.apple.duetexpertd.atx", "general");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_xpc()
{
  if (__atxlog_handle_xpc_onceToken != -1)
  {
    __atxlog_handle_xpc_cold_1();
  }

  v1 = __atxlog_handle_xpc_log;

  return v1;
}

uint64_t ____atxlog_handle_xpc_block_invoke()
{
  __atxlog_handle_xpc_log = os_log_create("com.apple.duetexpertd.atx", "xpc");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_heuristic()
{
  if (__atxlog_handle_heuristic_onceToken != -1)
  {
    __atxlog_handle_heuristic_cold_1();
  }

  v1 = __atxlog_handle_heuristic_log;

  return v1;
}

uint64_t ____atxlog_handle_heuristic_block_invoke()
{
  __atxlog_handle_heuristic_log = os_log_create("com.apple.duetexpertd.atx", "heuristic");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notifications()
{
  if (__atxlog_handle_notifications_onceToken != -1)
  {
    __atxlog_handle_notifications_cold_1();
  }

  v1 = __atxlog_handle_notifications_log;

  return v1;
}

uint64_t ____atxlog_handle_notifications_block_invoke()
{
  __atxlog_handle_notifications_log = os_log_create("com.apple.duetexpertd.atx", "notifications");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_pmm()
{
  if (__atxlog_handle_pmm_onceToken != -1)
  {
    __atxlog_handle_pmm_cold_1();
  }

  v1 = __atxlog_handle_pmm_log;

  return v1;
}

uint64_t ____atxlog_handle_pmm_block_invoke()
{
  __atxlog_handle_pmm_log = os_log_create("com.apple.duetexpertd.mm", "GENERAL");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_dailyroutines()
{
  if (__atxlog_handle_dailyroutines_onceToken != -1)
  {
    __atxlog_handle_dailyroutines_cold_1();
  }

  v1 = __atxlog_handle_dailyroutines_log;

  return v1;
}

uint64_t ____atxlog_handle_dailyroutines_block_invoke()
{
  __atxlog_handle_dailyroutines_log = os_log_create("com.apple.duetexpertd.atx", "dailyroutines");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_feedback()
{
  if (__atxlog_handle_feedback_onceToken != -1)
  {
    __atxlog_handle_feedback_cold_1();
  }

  v1 = __atxlog_handle_feedback_log;

  return v1;
}

uint64_t ____atxlog_handle_feedback_block_invoke()
{
  __atxlog_handle_feedback_log = os_log_create("com.apple.duetexpertd.atx", "feedback");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_modes()
{
  if (__atxlog_handle_modes_onceToken != -1)
  {
    __atxlog_handle_modes_cold_1();
  }

  v1 = __atxlog_handle_modes_log;

  return v1;
}

uint64_t ____atxlog_handle_modes_block_invoke()
{
  __atxlog_handle_modes_log = os_log_create("com.apple.duetexpertd.atx", "modes");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_hero()
{
  if (__atxlog_handle_hero_onceToken != -1)
  {
    __atxlog_handle_hero_cold_1();
  }

  v1 = __atxlog_handle_hero_log;

  return v1;
}

uint64_t ____atxlog_handle_hero_block_invoke()
{
  __atxlog_handle_hero_log = os_log_create("com.apple.duetexpertd.atx", "hero");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_deletions()
{
  if (__atxlog_handle_deletions_onceToken != -1)
  {
    __atxlog_handle_deletions_cold_1();
  }

  v1 = __atxlog_handle_deletions_log;

  return v1;
}

uint64_t ____atxlog_handle_deletions_block_invoke()
{
  __atxlog_handle_deletions_log = os_log_create("com.apple.duetexpertd.atx", "deletions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_gi()
{
  if (__atxlog_handle_gi_onceToken != -1)
  {
    __atxlog_handle_gi_cold_1();
  }

  v1 = __atxlog_handle_gi_log;

  return v1;
}

uint64_t ____atxlog_handle_gi_block_invoke()
{
  __atxlog_handle_gi_log = os_log_create("com.apple.duetexpertd.atx", "information");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_timeline()
{
  if (__atxlog_handle_timeline_onceToken != -1)
  {
    __atxlog_handle_timeline_cold_1();
  }

  v1 = __atxlog_handle_timeline_log;

  return v1;
}

uint64_t ____atxlog_handle_timeline_block_invoke()
{
  __atxlog_handle_timeline_log = os_log_create("com.apple.duetexpertd.atx", "timeline");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_relevant_shortcut()
{
  if (__atxlog_handle_relevant_shortcut_onceToken != -1)
  {
    __atxlog_handle_relevant_shortcut_cold_1();
  }

  v1 = __atxlog_handle_relevant_shortcut_log;

  return v1;
}

uint64_t ____atxlog_handle_relevant_shortcut_block_invoke()
{
  __atxlog_handle_relevant_shortcut_log = os_log_create("com.apple.duetexpertd.atx", "relevant_shortcut");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_relevance_model()
{
  if (__atxlog_handle_relevance_model_onceToken != -1)
  {
    __atxlog_handle_relevance_model_cold_1();
  }

  v1 = __atxlog_handle_relevance_model_log;

  return v1;
}

uint64_t ____atxlog_handle_relevance_model_block_invoke()
{
  __atxlog_handle_relevance_model_log = os_log_create("com.apple.duetexpertd.atx", "relevance_model");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_watch()
{
  if (__atxlog_handle_watch_onceToken != -1)
  {
    __atxlog_handle_watch_cold_1();
  }

  v1 = __atxlog_handle_watch_log;

  return v1;
}

uint64_t ____atxlog_handle_watch_block_invoke()
{
  __atxlog_handle_watch_log = os_log_create("com.apple.duetexpertd.atx", "watch");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_ui()
{
  if (__atxlog_handle_ui_onceToken != -1)
  {
    __atxlog_handle_ui_cold_1();
  }

  v1 = __atxlog_handle_ui_log;

  return v1;
}

uint64_t ____atxlog_handle_ui_block_invoke()
{
  __atxlog_handle_ui_log = os_log_create("com.apple.duetexpertd.atx", "UI");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending()
{
  if (__atxlog_handle_blending_onceToken != -1)
  {
    __atxlog_handle_blending_cold_1();
  }

  v1 = __atxlog_handle_blending_log;

  return v1;
}

uint64_t ____atxlog_handle_blending_block_invoke()
{
  __atxlog_handle_blending_log = os_log_create("com.apple.duetexpertd.atx", "blending");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending_internal_cache()
{
  if (__atxlog_handle_blending_internal_cache_onceToken != -1)
  {
    __atxlog_handle_blending_internal_cache_cold_1();
  }

  v1 = __atxlog_handle_blending_internal_cache_log;

  return v1;
}

uint64_t ____atxlog_handle_blending_internal_cache_block_invoke()
{
  __atxlog_handle_blending_internal_cache_log = os_log_create("com.apple.duetexpertd.atx", "blending_internal_cache");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending_ecosystem()
{
  if (__atxlog_handle_blending_ecosystem_onceToken != -1)
  {
    __atxlog_handle_blending_ecosystem_cold_1();
  }

  v1 = __atxlog_handle_blending_ecosystem_log;

  return v1;
}

uint64_t ____atxlog_handle_blending_ecosystem_block_invoke()
{
  __atxlog_handle_blending_ecosystem_log = os_log_create("com.apple.duetexpertd.atx", "blending_ecosystem");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_home_screen()
{
  if (__atxlog_handle_home_screen_onceToken != -1)
  {
    __atxlog_handle_home_screen_cold_1();
  }

  v1 = __atxlog_handle_home_screen_log;

  return v1;
}

uint64_t ____atxlog_handle_home_screen_block_invoke()
{
  __atxlog_handle_home_screen_log = os_log_create("com.apple.duetexpertd.atx", "homescreen");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_sleep_schedule()
{
  if (__atxlog_handle_sleep_schedule_onceToken != -1)
  {
    __atxlog_handle_sleep_schedule_cold_1();
  }

  v1 = __atxlog_handle_sleep_schedule_log;

  return v1;
}

uint64_t ____atxlog_handle_sleep_schedule_block_invoke()
{
  __atxlog_handle_sleep_schedule_log = os_log_create("com.apple.duetexpertd.atx", "sleepschedule");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_lock_screen()
{
  if (__atxlog_handle_lock_screen_onceToken != -1)
  {
    __atxlog_handle_lock_screen_cold_1();
  }

  v1 = __atxlog_handle_lock_screen_log;

  return v1;
}

uint64_t ____atxlog_handle_lock_screen_block_invoke()
{
  __atxlog_handle_lock_screen_log = os_log_create("com.apple.duetexpertd.atx", "lockscreen");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_anchor()
{
  if (__atxlog_handle_anchor_onceToken != -1)
  {
    __atxlog_handle_anchor_cold_1();
  }

  v1 = __atxlog_handle_anchor_log;

  return v1;
}

uint64_t ____atxlog_handle_anchor_block_invoke()
{
  __atxlog_handle_anchor_log = os_log_create("com.apple.duetexpertd.atx", "anchor");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_prediction()
{
  if (__atxlog_handle_app_prediction_onceToken != -1)
  {
    __atxlog_handle_app_prediction_cold_1();
  }

  v1 = __atxlog_handle_app_prediction_log;

  return v1;
}

uint64_t ____atxlog_handle_app_prediction_block_invoke()
{
  __atxlog_handle_app_prediction_log = os_log_create("com.apple.duetexpertd.atx", "app_prediction");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_action_prediction()
{
  if (__atxlog_handle_action_prediction_onceToken != -1)
  {
    __atxlog_handle_action_prediction_cold_1();
  }

  v1 = __atxlog_handle_action_prediction_log;

  return v1;
}

uint64_t ____atxlog_handle_action_prediction_block_invoke()
{
  __atxlog_handle_action_prediction_log = os_log_create("com.apple.duetexpertd.atx", "action_prediction");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_library()
{
  if (__atxlog_handle_app_library_onceToken != -1)
  {
    __atxlog_handle_app_library_cold_1();
  }

  v1 = __atxlog_handle_app_library_log;

  return v1;
}

uint64_t ____atxlog_handle_app_library_block_invoke()
{
  __atxlog_handle_app_library_log = os_log_create("com.apple.duetexpertd.atx", "app_library");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_install()
{
  if (__atxlog_handle_app_install_onceToken != -1)
  {
    __atxlog_handle_app_install_cold_1();
  }

  v1 = __atxlog_handle_app_install_log;

  return v1;
}

uint64_t ____atxlog_handle_app_install_block_invoke()
{
  __atxlog_handle_app_install_log = os_log_create("com.apple.duetexpertd.atx", "app_install");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_backup()
{
  if (__atxlog_handle_backup_onceToken != -1)
  {
    __atxlog_handle_backup_cold_1();
  }

  v1 = __atxlog_handle_backup_log;

  return v1;
}

uint64_t ____atxlog_handle_backup_block_invoke()
{
  __atxlog_handle_backup_log = os_log_create("com.apple.duetexpertd.atx", "backup");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_metrics()
{
  if (__atxlog_handle_metrics_onceToken != -1)
  {
    __atxlog_handle_metrics_cold_1();
  }

  v1 = __atxlog_handle_metrics_log;

  return v1;
}

uint64_t ____atxlog_handle_metrics_block_invoke()
{
  __atxlog_handle_metrics_log = os_log_create("com.apple.duetexpertd.atx", "metrics");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_trial_assets()
{
  if (__atxlog_handle_trial_assets_onceToken != -1)
  {
    __atxlog_handle_trial_assets_cold_1();
  }

  v1 = __atxlog_handle_trial_assets_log;

  return v1;
}

uint64_t ____atxlog_handle_trial_assets_block_invoke()
{
  __atxlog_handle_trial_assets_log = os_log_create("com.apple.duetexpertd.atx", "trial_assets");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notification_management()
{
  if (__atxlog_handle_notification_management_onceToken != -1)
  {
    __atxlog_handle_notification_management_cold_1();
  }

  v1 = __atxlog_handle_notification_management_log;

  return v1;
}

uint64_t ____atxlog_handle_notification_management_block_invoke()
{
  __atxlog_handle_notification_management_log = os_log_create("com.apple.duetexpertd.atx", "notification_management");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_contextual_actions()
{
  if (__atxlog_handle_contextual_actions_onceToken != -1)
  {
    __atxlog_handle_contextual_actions_cold_1();
  }

  v1 = __atxlog_handle_contextual_actions_log;

  return v1;
}

uint64_t ____atxlog_handle_contextual_actions_block_invoke()
{
  __atxlog_handle_contextual_actions_log = os_log_create("com.apple.duetexpertd.atx", "contextual_actions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_intents_helper()
{
  if (__atxlog_handle_intents_helper_onceToken != -1)
  {
    __atxlog_handle_intents_helper_cold_1();
  }

  v1 = __atxlog_handle_intents_helper_log;

  return v1;
}

uint64_t ____atxlog_handle_intents_helper_block_invoke()
{
  __atxlog_handle_intents_helper_log = os_log_create("com.apple.duetexpertd.atx", "intents_helper");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_context_heuristic()
{
  if (__atxlog_handle_context_heuristic_onceToken != -1)
  {
    __atxlog_handle_context_heuristic_cold_1();
  }

  v1 = __atxlog_handle_context_heuristic_log;

  return v1;
}

uint64_t ____atxlog_handle_context_heuristic_block_invoke()
{
  __atxlog_handle_context_heuristic_log = os_log_create("com.apple.duetexpertd.atx", "context_heuristic");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_zkw_hide()
{
  if (__atxlog_handle_zkw_hide_onceToken != -1)
  {
    __atxlog_handle_zkw_hide_cold_1();
  }

  v1 = __atxlog_handle_zkw_hide_log;

  return v1;
}

uint64_t ____atxlog_handle_zkw_hide_block_invoke()
{
  __atxlog_handle_zkw_hide_log = os_log_create("com.apple.duetexpertd.atx", "zkw_hide");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_context_user_education_suggestions()
{
  if (__atxlog_handle_context_user_education_suggestions_onceToken != -1)
  {
    __atxlog_handle_context_user_education_suggestions_cold_1();
  }

  v1 = __atxlog_handle_context_user_education_suggestions_log;

  return v1;
}

uint64_t ____atxlog_handle_context_user_education_suggestions_block_invoke()
{
  __atxlog_handle_context_user_education_suggestions_log = os_log_create("com.apple.duetexpertd.atx", "user_education_suggestions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_time_intelligence()
{
  if (__atxlog_handle_time_intelligence_onceToken != -1)
  {
    __atxlog_handle_time_intelligence_cold_1();
  }

  v1 = __atxlog_handle_time_intelligence_log;

  return v1;
}

uint64_t ____atxlog_handle_time_intelligence_block_invoke()
{
  __atxlog_handle_time_intelligence_log = os_log_create("com.apple.duetexpertd.atx", "time");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_contextual_engine()
{
  if (__atxlog_handle_contextual_engine_onceToken != -1)
  {
    __atxlog_handle_contextual_engine_cold_1();
  }

  v1 = __atxlog_handle_contextual_engine_log;

  return v1;
}

uint64_t ____atxlog_handle_contextual_engine_block_invoke()
{
  __atxlog_handle_contextual_engine_log = os_log_create("com.apple.duetexpertd.atx", "contextualengine");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_usage_insights()
{
  if (__atxlog_handle_usage_insights_onceToken != -1)
  {
    __atxlog_handle_usage_insights_cold_1();
  }

  v1 = __atxlog_handle_usage_insights_log;

  return v1;
}

uint64_t ____atxlog_handle_usage_insights_block_invoke()
{
  __atxlog_handle_usage_insights_log = os_log_create("com.apple.duetexpertd.atx", "usage_insights");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notification_categorization()
{
  if (__atxlog_handle_notification_categorization_onceToken != -1)
  {
    __atxlog_handle_notification_categorization_cold_1();
  }

  v1 = __atxlog_handle_notification_categorization_log;

  return v1;
}

uint64_t ____atxlog_handle_notification_categorization_block_invoke()
{
  __atxlog_handle_notification_categorization_log = os_log_create("com.apple.duetexpertd.atx", "notification_categorization");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_settings_actions()
{
  if (__atxlog_handle_settings_actions_onceToken != -1)
  {
    __atxlog_handle_settings_actions_cold_1();
  }

  v1 = __atxlog_handle_settings_actions_log;

  return v1;
}

uint64_t ____atxlog_handle_settings_actions_block_invoke()
{
  __atxlog_handle_settings_actions_log = os_log_create("com.apple.duetexpertd.atx", "settings_actions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_client_donations()
{
  if (__atxlog_handle_client_donations_onceToken != -1)
  {
    __atxlog_handle_client_donations_cold_1();
  }

  v1 = __atxlog_handle_client_donations_log;

  return v1;
}

uint64_t ____atxlog_handle_client_donations_block_invoke()
{
  __atxlog_handle_client_donations_log = os_log_create("com.apple.duetexpertd.atx", "client_donations");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_carPlay_widgets()
{
  if (__atxlog_handle_carPlay_widgets_onceToken != -1)
  {
    __atxlog_handle_carPlay_widgets_cold_1();
  }

  v1 = __atxlog_handle_carPlay_widgets_log;

  return v1;
}

uint64_t ____atxlog_handle_carPlay_widgets_block_invoke()
{
  __atxlog_handle_carPlay_widgets_log = os_log_create("com.apple.duetexpertd.atx", "carPlay");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_screen_entities()
{
  if (__atxlog_handle_screen_entities_onceToken != -1)
  {
    __atxlog_handle_screen_entities_cold_1();
  }

  v1 = __atxlog_handle_screen_entities_log;

  return v1;
}

uint64_t ____atxlog_handle_screen_entities_block_invoke()
{
  __atxlog_handle_screen_entities_log = os_log_create("com.apple.duetexpertd.atx", "screenEntities");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_document_predictor()
{
  if (__atxlog_handle_document_predictor_onceToken != -1)
  {
    __atxlog_handle_document_predictor_cold_1();
  }

  v1 = __atxlog_handle_document_predictor_log;

  return v1;
}

uint64_t ____atxlog_handle_document_predictor_block_invoke()
{
  __atxlog_handle_document_predictor_log = os_log_create("com.apple.duetexpertd.atx", "documentPredictor");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_ml_inference()
{
  if (__atxlog_handle_ml_inference_onceToken != -1)
  {
    __atxlog_handle_ml_inference_cold_1();
  }

  v1 = __atxlog_handle_ml_inference_log;

  return v1;
}

uint64_t ____atxlog_handle_ml_inference_block_invoke()
{
  __atxlog_handle_ml_inference_log = os_log_create("com.apple.duetexpertd.atx", "inference");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_menu_items()
{
  if (__atxlog_handle_menu_items_onceToken[0] != -1)
  {
    __atxlog_handle_menu_items_cold_1();
  }

  v1 = __atxlog_handle_menu_items_log;

  return v1;
}

uint64_t ____atxlog_handle_menu_items_block_invoke()
{
  __atxlog_handle_menu_items_log = os_log_create("com.apple.duetexpertd.atx", "menuItems");

  return MEMORY[0x2821F96F8]();
}

uint64_t ControlCenterSuggestionCache.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_260DF5334();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ControlCenterSuggestionCache.init()@<X0>(uint64_t a1@<X8>)
{
  v23[0] = a1;
  v24[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4F9B0, &unk_260DF6B30);
  v2 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v23 - v3;
  v5 = sub_260DF52F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_260DF5334();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() appPredictionCacheDirectory];
  sub_260DF59C4();

  (*(v6 + 104))(v9, *MEMORY[0x277CC91C0], v5);
  (*(v11 + 56))(v4, 1, 1, v10);
  sub_260DF5324();
  v16 = [objc_opt_self() defaultManager];
  v17 = sub_260DF5304();
  v24[0] = 0;
  LODWORD(v9) = [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:v24];

  if (v9)
  {
    v18 = v24[0];
  }

  else
  {
    v19 = v24[0];
    v20 = sub_260DF52E4();

    swift_willThrow();
  }

  sub_260DF5314();
  result = (*(v11 + 8))(v14, v10);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t ControlCenterSuggestionCache.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_260DF5334();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ControlCenterSuggestionCache.read()()
{
  result = sub_260DF5354();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    v5 = sub_260DF5294();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_260DF5284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4F9B8, &qword_260DF6CE0);
    sub_260DD2AEC(&qword_27FE4F9C0, sub_260DD2940);
    sub_260DF5274();
    sub_260DD2994(v3, v4);

    return v8;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_260DD2940()
{
  result = qword_27FE4F9C8;
  if (!qword_27FE4F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4F9C8);
  }

  return result;
}

uint64_t sub_260DD2994(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ControlCenterSuggestionCache.write(_:)(Swift::OpaquePointer a1)
{
  v2 = sub_260DF52C4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_260DF52B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4F9B8, &qword_260DF6CE0);
  sub_260DD2AEC(&qword_27FE4F9D0, sub_260DD2B64);
  v5 = sub_260DF52A4();
  v7 = v6;

  if (!v1)
  {
    sub_260DF53C4();
    sub_260DD2994(v5, v7);
  }
}

uint64_t sub_260DD2AEC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE4F9B8, &qword_260DF6CE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_260DD2B64()
{
  result = qword_27FE4F9D8;
  if (!qword_27FE4F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4F9D8);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ControlCenterSuggestionCache.invalidate()()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_260DF5304();
  v6[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_260DF52E4();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t sub_260DD2CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_260DF5334();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_260DD2D30(uint64_t a1, uint64_t a2)
{
  v4 = sub_260DF5334();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ControlCenterSuggestionCache()
{
  result = qword_27FE4F9E0;
  if (!qword_27FE4F9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260DD2DEC()
{
  result = sub_260DF5334();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for ATXParameterSuggestionContext()
{
  if (!qword_27FE4F9F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FE4F9F0);
    }
  }
}

void *sub_260DD2EA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_260DD2F20()
{
  v1 = 0x6C6C616D73;
  v2 = 0x656772616CLL;
  if (*v0 != 2)
  {
    v2 = 0x726142756E656DLL;
  }

  if (*v0)
  {
    v1 = 0x6D756964656DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_260DD2F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_260DD8EF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_260DD2FC4(uint64_t a1)
{
  v2 = sub_260DD36E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD3000(uint64_t a1)
{
  v2 = sub_260DD36E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260DD3048@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_260DD3084(uint64_t a1)
{
  v2 = sub_260DD3788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD30C0(uint64_t a1)
{
  v2 = sub_260DD3788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260DD30FC(uint64_t a1)
{
  v2 = sub_260DD37DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD3138(uint64_t a1)
{
  v2 = sub_260DD37DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260DD3174(uint64_t a1)
{
  v2 = sub_260DD3734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD31B0(uint64_t a1)
{
  v2 = sub_260DD3734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260DD31EC(uint64_t a1)
{
  v2 = sub_260DD3830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD3228(uint64_t a1)
{
  v2 = sub_260DD3830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestedControlSize.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4F9F8, &qword_260DF6C00);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA00, &qword_260DF6C08);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA08, &qword_260DF6C10);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA10, &qword_260DF6C18);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA18, &qword_260DF6C20);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD36E0();
  sub_260DF5E94();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_260DD3788();
      v24 = v33;
      sub_260DF5D64();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_260DD3734();
      v24 = v36;
      sub_260DF5D64();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_260DD37DC();
    v24 = v30;
    sub_260DF5D64();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_260DD3830();
  sub_260DF5D64();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_260DD36E0()
{
  result = qword_27FE4FA20;
  if (!qword_27FE4FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FA20);
  }

  return result;
}

unint64_t sub_260DD3734()
{
  result = qword_27FE4FA28;
  if (!qword_27FE4FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FA28);
  }

  return result;
}

unint64_t sub_260DD3788()
{
  result = qword_27FE4FA30;
  if (!qword_27FE4FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FA30);
  }

  return result;
}

unint64_t sub_260DD37DC()
{
  result = qword_27FE4FA38;
  if (!qword_27FE4FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FA38);
  }

  return result;
}

unint64_t sub_260DD3830()
{
  result = qword_27FE4FA40;
  if (!qword_27FE4FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FA40);
  }

  return result;
}

uint64_t SuggestedControlSize.hashValue.getter()
{
  v1 = *v0;
  sub_260DF5E54();
  MEMORY[0x2666EF860](v1);
  return sub_260DF5E74();
}

uint64_t SuggestedControlSize.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA48, &qword_260DF6C28);
  v47 = *(v51 - 8);
  v3 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v54 = v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA50, &qword_260DF6C30);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v53 = v42 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA58, &qword_260DF6C38);
  v45 = *(v48 - 8);
  v9 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA60, &qword_260DF6C40);
  v46 = *(v12 - 8);
  v13 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA68, &qword_260DF6C48);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = v42 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_260DD36E0();
  v23 = v55;
  sub_260DF5E84();
  if (!v23)
  {
    v43 = v12;
    v44 = 0;
    v24 = v53;
    v25 = v54;
    v55 = v17;
    v26 = v20;
    v27 = sub_260DF5D54();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 4) : (v30 = 1), v30))
    {
      v31 = sub_260DF5C24();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA70, &qword_260DF6C50) + 48);
      *v33 = &type metadata for SuggestedControlSize;
      sub_260DF5CF4();
      sub_260DF5C14();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v55 + 8))(v26, v16);
    }

    else
    {
      v42[1] = v27;
      if (v29 <= 1)
      {
        if (v29)
        {
          v58 = 1;
          sub_260DD37DC();
          v39 = v44;
          sub_260DF5CE4();
          if (!v39)
          {
            (*(v45 + 8))(v11, v48);
            goto LABEL_23;
          }
        }

        else
        {
          v57 = 0;
          sub_260DD3830();
          v35 = v44;
          sub_260DF5CE4();
          if (!v35)
          {
            (*(v46 + 8))(v15, v43);
LABEL_23:
            (*(v55 + 8))(v20, v16);
LABEL_25:
            swift_unknownObjectRelease();
            *v52 = v29;
            return __swift_destroy_boxed_opaque_existential_1(v56);
          }
        }

        (*(v55 + 8))(v20, v16);
        goto LABEL_20;
      }

      v36 = v52;
      v37 = v55;
      if (v29 == 2)
      {
        v59 = 2;
        sub_260DD3788();
        v38 = v44;
        sub_260DF5CE4();
        if (!v38)
        {
          (*(v50 + 8))(v24, v49);
          (*(v37 + 8))(v26, v16);
          swift_unknownObjectRelease();
          *v36 = 2;
          return __swift_destroy_boxed_opaque_existential_1(v56);
        }
      }

      else
      {
        v60 = 3;
        sub_260DD3734();
        v40 = v44;
        sub_260DF5CE4();
        if (!v40)
        {
          (*(v47 + 8))(v25, v51);
          (*(v37 + 8))(v26, v16);
          goto LABEL_25;
        }
      }

      (*(v37 + 8))(v26, v16);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t SuggestedChronoControl.extensionIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SuggestedChronoControl.containerBundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SuggestedChronoControl.kind.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall SuggestedChronoControl.init(extensionIdentifier:containerBundleIdentifier:kind:)(ProactivePredictionClient::SuggestedChronoControl *__return_ptr retstr, Swift::String extensionIdentifier, Swift::String containerBundleIdentifier, Swift::String kind)
{
  retstr->extensionIdentifier = extensionIdentifier;
  retstr->containerBundleIdentifier = containerBundleIdentifier;
  retstr->kind = kind;
}

uint64_t static SuggestedChronoControl.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_260DF5DE4() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_260DF5DE4() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_260DF5DE4();
}

unint64_t sub_260DD4190()
{
  v1 = 1684957547;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_260DD41E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_260DDBA10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_260DD4210(uint64_t a1)
{
  v2 = sub_260DD444C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD424C(uint64_t a1)
{
  v2 = sub_260DD444C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestedChronoControl.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA78, &qword_260DF6C58);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD444C();
  sub_260DF5E94();
  v18 = 0;
  v13 = v15[5];
  sub_260DF5D84();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_260DF5D84();
  v16 = 2;
  sub_260DF5D84();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_260DD444C()
{
  result = qword_27FE4FA80;
  if (!qword_27FE4FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FA80);
  }

  return result;
}

uint64_t SuggestedChronoControl.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_260DF59F4();
  sub_260DF59F4();

  return sub_260DF59F4();
}

uint64_t SuggestedChronoControl.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_260DF5E54();
  sub_260DF59F4();
  sub_260DF59F4();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t SuggestedChronoControl.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA88, &qword_260DF6C60);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD444C();
  sub_260DF5E84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_260DF5D14();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_260DF5D14();
  v23 = v14;
  v25 = 2;
  v15 = sub_260DF5D14();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_260DD4838()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_260DF5E54();
  sub_260DF59F4();
  sub_260DF59F4();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t sub_260DD48BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_260DF59F4();
  sub_260DF59F4();

  return sub_260DF59F4();
}

uint64_t sub_260DD4928()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_260DF5E54();
  sub_260DF59F4();
  sub_260DF59F4();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t sub_260DD49A8(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_260DF5DE4() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_260DF5DE4() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_260DF5DE4();
}

uint64_t SuggestedModule.moduleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static SuggestedModule.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_260DF5DE4();
  }
}

uint64_t sub_260DD4B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000260DF9390 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_260DF5DE4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_260DD4BF0(uint64_t a1)
{
  v2 = sub_260DD4DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD4C2C(uint64_t a1)
{
  v2 = sub_260DD4DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestedModule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA90, &qword_260DF6C68);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD4DA4();
  sub_260DF5E94();
  sub_260DF5D84();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_260DD4DA4()
{
  result = qword_27FE4FA98;
  if (!qword_27FE4FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FA98);
  }

  return result;
}

uint64_t SuggestedModule.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_260DF59F4();
}

uint64_t SuggestedModule.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_260DF5E54();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t SuggestedModule.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FAA0, &qword_260DF6C70);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD4DA4();
  sub_260DF5E84();
  if (!v2)
  {
    v11 = sub_260DF5D14();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_260DD4FD8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA90, &qword_260DF6C68);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD4DA4();
  sub_260DF5E94();
  sub_260DF5D84();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_260DD5114()
{
  v1 = *v0;
  v2 = v0[1];
  sub_260DF5E54();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t sub_260DD5160()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_260DF59F4();
}

uint64_t sub_260DD5168()
{
  v1 = *v0;
  v2 = v0[1];
  sub_260DF5E54();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t sub_260DD51B0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_260DF5DE4();
  }
}

uint64_t SuggestedStatusItem.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SuggestedStatusItem.hostID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

ProactivePredictionClient::SuggestedStatusItem __swiftcall SuggestedStatusItem.init(bundleIdentifier:hostID:)(Swift::String bundleIdentifier, Swift::String hostID)
{
  *v2 = bundleIdentifier;
  v2[1] = hostID;
  result.hostID = hostID;
  result.bundleIdentifier = bundleIdentifier;
  return result;
}

uint64_t static SuggestedStatusItem.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_260DF5DE4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_260DF5DE4();
    }
  }

  return result;
}

uint64_t sub_260DD5308()
{
  v1 = *v0;
  sub_260DF5E54();
  MEMORY[0x2666EF860](v1);
  return sub_260DF5E74();
}

uint64_t sub_260DD5350()
{
  v1 = *v0;
  sub_260DF5E54();
  MEMORY[0x2666EF860](v1);
  return sub_260DF5E74();
}

unint64_t sub_260DD5394()
{
  if (*v0)
  {
    result = 0x444974736F68;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_260DD53D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000260DF93B0 == a2 || (sub_260DF5DE4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x444974736F68 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_260DF5DE4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_260DD54C0(uint64_t a1)
{
  v2 = sub_260DD56CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD54FC(uint64_t a1)
{
  v2 = sub_260DD56CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestedStatusItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FAA8, &qword_260DF6C78);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD56CC();
  sub_260DF5E94();
  v16 = 0;
  v12 = v14[3];
  sub_260DF5D84();
  if (!v12)
  {
    v15 = 1;
    sub_260DF5D84();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_260DD56CC()
{
  result = qword_27FE4FAB0;
  if (!qword_27FE4FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FAB0);
  }

  return result;
}

uint64_t SuggestedStatusItem.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_260DF59F4();

  return sub_260DF59F4();
}

uint64_t SuggestedStatusItem.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_260DF5E54();
  sub_260DF59F4();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t SuggestedStatusItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FAB8, &qword_260DF6C80);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD56CC();
  sub_260DF5E84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_260DF5D14();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_260DF5D14();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_260DD5A08()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_260DF5E54();
  sub_260DF59F4();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t sub_260DD5A70()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_260DF59F4();

  return sub_260DF59F4();
}

uint64_t sub_260DD5AC0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_260DF5E54();
  sub_260DF59F4();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t sub_260DD5B24(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_260DF5DE4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_260DF5DE4();
    }
  }

  return result;
}

uint64_t sub_260DD5BDC(uint64_t a1)
{
  v2 = sub_260DD9624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD5C18(uint64_t a1)
{
  v2 = sub_260DD9624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260DD5C54()
{
  v1 = 0x656C75646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x7449737574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F436F6E6F726863;
  }
}

uint64_t sub_260DD5CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_260DDBB38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_260DD5CF0(uint64_t a1)
{
  v2 = sub_260DD9480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD5D2C(uint64_t a1)
{
  v2 = sub_260DD9480();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260DD5D68(uint64_t a1)
{
  v2 = sub_260DD957C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD5DA4(uint64_t a1)
{
  v2 = sub_260DD957C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260DD5DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_260DF5DE4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_260DD5E60(uint64_t a1)
{
  v2 = sub_260DD94D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD5E9C(uint64_t a1)
{
  v2 = sub_260DD94D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestedControlKind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FAC0, &qword_260DF6C88);
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v35 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FAC8, &qword_260DF6C90);
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FAD0, &qword_260DF6C98);
  v32 = *(v10 - 8);
  v11 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FAD8, &qword_260DF6CA0);
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v29 - v16;
  v18 = v1[1];
  v40 = *v1;
  v41 = v18;
  v19 = v1[3];
  v38 = v1[2];
  v39 = v19;
  v20 = v1[4];
  v30 = v1[5];
  v31 = v20;
  v21 = *(v1 + 48);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD9480();
  sub_260DF5E94();
  if (v21)
  {
    if (v21 == 1)
    {
      LOBYTE(v44) = 1;
      sub_260DD957C();
      v23 = v43;
      sub_260DF5D64();
      v44 = v40;
      v45 = v41;
      sub_260DD95D0();
      v24 = v34;
      sub_260DF5DB4();
      v25 = *(v33 + 8);
      v26 = v9;
    }

    else
    {
      LOBYTE(v44) = 2;
      sub_260DD94D4();
      v27 = v35;
      v23 = v43;
      sub_260DF5D64();
      v44 = v40;
      v45 = v41;
      v46 = v38;
      v47 = v39;
      sub_260DD9528();
      v24 = v37;
      sub_260DF5DB4();
      v25 = *(v36 + 8);
      v26 = v27;
    }

    v25(v26, v24);
  }

  else
  {
    LOBYTE(v44) = 0;
    sub_260DD9624();
    v23 = v43;
    sub_260DF5D64();
    v44 = v40;
    v45 = v41;
    v46 = v38;
    v47 = v39;
    v48 = v31;
    v49 = v30;
    sub_260DD9678();
    sub_260DF5DB4();
    (*(v32 + 8))(v13, v10);
  }

  return (*(v42 + 8))(v17, v23);
}

uint64_t SuggestedControlKind.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      MEMORY[0x2666EF860](1);
    }

    else
    {
      MEMORY[0x2666EF860](2);
      sub_260DF59F4();
    }
  }

  else
  {
    v6 = v0[4];
    v5 = v0[5];
    MEMORY[0x2666EF860](0);
    sub_260DF59F4();
    sub_260DF59F4();
  }

  return sub_260DF59F4();
}

uint64_t SuggestedControlKind.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_260DF5E54();
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x2666EF860](1);
    }

    else
    {
      MEMORY[0x2666EF860](2);
      sub_260DF59F4();
    }
  }

  else
  {
    MEMORY[0x2666EF860](0);
    sub_260DF59F4();
    sub_260DF59F4();
  }

  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t SuggestedControlKind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FB18, &qword_260DF6CA8);
  v56 = *(v52 - 8);
  v3 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v58 = &v49[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FB20, &qword_260DF6CB0);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v49[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FB28, &qword_260DF6CB8);
  v53 = *(v10 - 8);
  v11 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v49[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FB30, &qword_260DF6CC0);
  v15 = *(v14 - 8);
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v49[-v17];
  v19 = a1[3];
  v20 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_260DD9480();
  v21 = v59;
  sub_260DF5E84();
  if (!v21)
  {
    v22 = v58;
    v51 = v15;
    v59 = v18;
    v23 = sub_260DF5D54();
    v24 = *(v23 + 16);
    if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 3) : (v26 = 1), v26))
    {
      v27 = sub_260DF5C24();
      swift_allocError();
      v28 = v14;
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA70, &qword_260DF6C50) + 48);
      *v30 = &type metadata for SuggestedControlKind;
      v32 = v59;
      sub_260DF5CF4();
      sub_260DF5C14();
      (*(*(v27 - 8) + 104))(v30, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v51 + 8))(v32, v28);
      swift_unknownObjectRelease();
    }

    else
    {
      v50 = *(v23 + 32);
      if (v25)
      {
        if (v25 == 1)
        {
          LOBYTE(v60) = 1;
          sub_260DD957C();
          v33 = v9;
          v34 = v59;
          sub_260DF5CE4();
          v35 = v57;
          v36 = v51;
          sub_260DD9720();
          v37 = v54;
          sub_260DF5D44();
          (*(v55 + 8))(v33, v37);
          (*(v36 + 8))(v34, v14);
          swift_unknownObjectRelease();
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v47 = v60;
          v48 = v61;
        }

        else
        {
          LOBYTE(v60) = 2;
          sub_260DD94D4();
          sub_260DF5CE4();
          v39 = v57;
          v40 = v51;
          sub_260DD96CC();
          v41 = v52;
          sub_260DF5D44();
          (*(v56 + 8))(v22, v41);
          (*(v40 + 8))(v59, v14);
          swift_unknownObjectRelease();
          v45 = 0;
          v46 = 0;
          v47 = v60;
          v48 = v61;
          v43 = v62;
          v44 = v63;
          v35 = v39;
        }
      }

      else
      {
        LOBYTE(v60) = 0;
        sub_260DD9624();
        v38 = v59;
        sub_260DF5CE4();
        sub_260DD9774();
        sub_260DF5D44();
        (*(v53 + 8))(v13, v10);
        (*(v51 + 8))(v38, v14);
        swift_unknownObjectRelease();
        v47 = v60;
        v48 = v61;
        v43 = v62;
        v44 = v63;
        v45 = v64;
        v46 = v65;
        v35 = v57;
      }

      *v35 = v47;
      *(v35 + 8) = v48;
      *(v35 + 16) = v43;
      *(v35 + 24) = v44;
      *(v35 + 32) = v45;
      *(v35 + 40) = v46;
      *(v35 + 48) = v50;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_260DD6C08()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      MEMORY[0x2666EF860](1);
    }

    else
    {
      MEMORY[0x2666EF860](2);
      sub_260DF59F4();
    }
  }

  else
  {
    v6 = v0[4];
    v5 = v0[5];
    MEMORY[0x2666EF860](0);
    sub_260DF59F4();
    sub_260DF59F4();
  }

  return sub_260DF59F4();
}

uint64_t sub_260DD6CEC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_260DF5E54();
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x2666EF860](1);
    }

    else
    {
      MEMORY[0x2666EF860](2);
      sub_260DF59F4();
    }
  }

  else
  {
    MEMORY[0x2666EF860](0);
    sub_260DF59F4();
    sub_260DF59F4();
  }

  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t SuggestedControl.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SuggestedControl.control.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 72);
  *(a1 + 48) = v8;
  return sub_260DD97C8(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t SuggestedControl.init(id:size:control:score:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = *(a4 + 16);
  *(a5 + 24) = *a4;
  v7 = *a3;
  v8 = *(a4 + 48);
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v7;
  *(a5 + 40) = v6;
  *(a5 + 56) = *(a4 + 32);
  *(a5 + 72) = v8;
  *(a5 + 80) = a6;
  return result;
}

uint64_t SuggestedControl.hash(into:)()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  if (*(v0 + 72))
  {
    if (*(v0 + 72) == 1)
    {
      MEMORY[0x2666EF860](1);
    }

    else
    {
      MEMORY[0x2666EF860](2);
      sub_260DF59F4();
    }
  }

  else
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    MEMORY[0x2666EF860](0);
    sub_260DF59F4();
    sub_260DF59F4();
  }

  return sub_260DF59F4();
}

uint64_t static SuggestedControl.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a1 + 72);
  v14 = *(a2 + 72);
  v23 = *(a1 + 24);
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v13;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v14;
  sub_260DD97C8(v23, v2, v3, v4, v5, v6, v13);
  sub_260DD97C8(v7, v8, v9, v10, v11, v12, v14);
  LOBYTE(v7) = _s25ProactivePredictionClient20SuggestedControlKindO2eeoiySbAC_ACtFZ_0(&v23, &v16);
  sub_260DD983C(v16, v17, v18, v19, v20, v21, v22);
  sub_260DD983C(v23, v24, v25, v26, v27, v28, v29);
  return v7 & 1;
}

uint64_t sub_260DD703C()
{
  v1 = 25705;
  v2 = 0x6C6F72746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x65726F6373;
  }

  if (*v0)
  {
    v1 = 1702521203;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_260DD70A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_260DDBC5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_260DD70D4(uint64_t a1)
{
  v2 = sub_260DD98B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD7110(uint64_t a1)
{
  v2 = sub_260DD98B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestedControl.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FB50, &qword_260DF6CC8);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v28 = *(v1 + 16);
  v10 = v1[3];
  v26 = v1[4];
  v27 = v10;
  v11 = v1[5];
  v24 = v1[6];
  v25 = v11;
  v12 = v1[7];
  v22 = v1[8];
  v23 = v12;
  HIDWORD(v21) = *(v1 + 72);
  v13 = v1[10];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD98B0();
  sub_260DF5E94();
  LOBYTE(v30) = 0;
  v15 = v29;
  sub_260DF5D84();
  if (!v15)
  {
    v16 = v24;
    v17 = v25;
    v19 = v26;
    v18 = v27;
    LOBYTE(v30) = v28;
    v37 = 1;
    sub_260DD9904();
    sub_260DF5DB4();
    v30 = v18;
    v31 = v19;
    v32 = v17;
    v33 = v16;
    v34 = v23;
    v35 = v22;
    v36 = BYTE4(v21);
    v37 = 2;
    sub_260DD97C8(v18, v19, v17, v16, v23, v22, SBYTE4(v21));
    sub_260DD9958();
    sub_260DF5DB4();
    sub_260DD983C(v30, v31, v32, v33, v34, v35, v36);
    LOBYTE(v30) = 3;
    sub_260DF5DA4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SuggestedControl.hashValue.getter()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  sub_260DF5E54();
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x2666EF860](1);
    }

    else
    {
      MEMORY[0x2666EF860](2);
      sub_260DF59F4();
    }
  }

  else
  {
    MEMORY[0x2666EF860](0);
    sub_260DF59F4();
    sub_260DF59F4();
  }

  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t SuggestedControl.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FB70, &qword_260DF6CD0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD98B0();
  sub_260DF5E84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v38) = 0;
  v11 = sub_260DF5D14();
  v13 = v12;
  LOBYTE(v32) = 1;
  sub_260DD99AC();
  sub_260DF5D44();
  v29 = v38;
  LOBYTE(v32) = 2;
  sub_260DD9A00();
  sub_260DF5D44();
  v31 = v38;
  v24 = v39;
  v28 = v40;
  v27 = v41;
  v25 = v42;
  v26 = v43;
  v30 = v44;
  v49 = 3;
  sub_260DF5D34();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  *&v32 = v11;
  *(&v32 + 1) = v13;
  v16 = v29;
  LOBYTE(v33) = v29;
  v17 = v24;
  *(&v33 + 1) = v31;
  *&v34 = v24;
  *(&v34 + 1) = v28;
  *&v35 = v27;
  v18 = v25;
  v19 = v26;
  *(&v35 + 1) = v25;
  *&v36 = v26;
  BYTE8(v36) = v30;
  v37 = v15;
  v20 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v20;
  *(a2 + 64) = v36;
  *(a2 + 80) = v37;
  v21 = v33;
  *a2 = v32;
  *(a2 + 16) = v21;
  sub_260DD9A54(&v32, &v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38 = v11;
  v39 = v13;
  LOBYTE(v40) = v16;
  v41 = v31;
  v42 = v17;
  v43 = v28;
  v44 = v27;
  v45 = v18;
  v46 = v19;
  v47 = v30;
  v48 = v15;
  return sub_260DD9A8C(&v38);
}

uint64_t sub_260DD78E0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  if (*(v0 + 72))
  {
    if (*(v0 + 72) == 1)
    {
      MEMORY[0x2666EF860](1);
    }

    else
    {
      MEMORY[0x2666EF860](2);
      sub_260DF59F4();
    }
  }

  else
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    MEMORY[0x2666EF860](0);
    sub_260DF59F4();
    sub_260DF59F4();
  }

  return sub_260DF59F4();
}

uint64_t sub_260DD79C4()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  sub_260DF5E54();
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x2666EF860](1);
    }

    else
    {
      MEMORY[0x2666EF860](2);
      sub_260DF59F4();
    }
  }

  else
  {
    MEMORY[0x2666EF860](0);
    sub_260DF59F4();
    sub_260DF59F4();
  }

  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t sub_260DD7AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a1 + 72);
  v14 = *(a2 + 72);
  v23 = *(a1 + 24);
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v13;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v14;
  sub_260DD97C8(v23, v2, v3, v4, v5, v6, v13);
  sub_260DD97C8(v7, v8, v9, v10, v11, v12, v14);
  LOBYTE(v7) = _s25ProactivePredictionClient20SuggestedControlKindO2eeoiySbAC_ACtFZ_0(&v23, &v16);
  sub_260DD983C(v16, v17, v18, v19, v20, v21, v22);
  sub_260DD983C(v23, v24, v25, v26, v27, v28, v29);
  return v7 & 1;
}

uint64_t sub_260DD7B94@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_260DD7BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736C6F72746E6F63 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_260DF5DE4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_260DD7C50(uint64_t a1)
{
  v2 = sub_260DD9ABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD7C8C(uint64_t a1)
{
  v2 = sub_260DD9ABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestedControlsResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FB88, &qword_260DF6CD8);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD9ABC();

  sub_260DF5E94();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4F9B8, &qword_260DF6CE0);
  sub_260DD9B10(&qword_27FE4F9D0, sub_260DD2B64);
  sub_260DF5DB4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t SuggestedControlsResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FB98, &qword_260DF6CE8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD9ABC();
  sub_260DF5E84();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4F9B8, &qword_260DF6CE0);
    sub_260DD9B10(&qword_27FE4F9C0, sub_260DD2940);
    sub_260DF5D44();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_260DD8088()
{
  sub_260DF5E54();
  MEMORY[0x2666EF860](0);
  return sub_260DF5E74();
}

uint64_t sub_260DD80CC()
{
  sub_260DF5E54();
  MEMORY[0x2666EF860](0);
  return sub_260DF5E74();
}

uint64_t sub_260DD8124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6568636143657375 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_260DF5DE4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_260DD81AC(uint64_t a1)
{
  v2 = sub_260DD9B88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD81E8(uint64_t a1)
{
  v2 = sub_260DD9B88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestedControlsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FBA0, &qword_260DF6CF0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD9B88();
  sub_260DF5E94();
  sub_260DF5D94();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SuggestedControlsRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FBB0, &unk_260DF6CF8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD9B88();
  sub_260DF5E84();
  if (!v2)
  {
    v11 = sub_260DF5D24();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_260DD84CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FBA0, &qword_260DF6CF0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD9B88();
  sub_260DF5E94();
  sub_260DF5D94();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ControlCenterSuggestionClient.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t sub_260DD865C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  v5 = *(*(sub_260DF55F4() - 8) + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v6 = *(*(type metadata accessor for ControlCenterSuggestionCache() - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 96) = *a2;

  return MEMORY[0x2822009F8](sub_260DD8724, v2, 0);
}

uint64_t sub_260DD8724()
{
  if (*(v0 + 96) == 1)
  {
    ControlCenterSuggestionCache.init()(*(v0 + 56));
    v1 = sub_260DF5354();
    v3 = v2;
    v4 = sub_260DF5294();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_260DF5284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4F9B8, &qword_260DF6CE0);
    sub_260DD9B10(&qword_27FE4F9C0, sub_260DD2940);
    sub_260DF5274();
    sub_260DD9C60(*(v0 + 56));
    sub_260DD2994(v1, v3);

    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    **(v0 + 32) = *(v0 + 24);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v7 = *(v0 + 48);
    sub_260DF5624();
    sub_260DF55E4();
    v8 = sub_260DF55D4();
    *(v0 + 64) = v8;
    v10 = v8;
    v11 = *(v0 + 96);
    v12 = *(v0 + 40);
    v13 = sub_260DD9BDC();
    v14 = swift_task_alloc();
    *(v0 + 72) = v14;
    *(v14 + 16) = v10;
    *(v14 + 24) = v11;
    v15 = *(MEMORY[0x277D85A40] + 4);
    v16 = swift_task_alloc();
    *(v0 + 80) = v16;
    *v16 = v0;
    v16[1] = sub_260DD8A28;

    return MEMORY[0x2822008A0](v0 + 16, v12, v13, 0xD000000000000012, 0x8000000260DF92E0, sub_260DD9C54, v14, &type metadata for SuggestedControlsResponse);
  }
}

uint64_t sub_260DD8A28()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_260DD8BEC;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 40);

    v5 = sub_260DD8B50;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_260DD8B50()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  sub_260DF5614();

  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  **(v0 + 32) = v2;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_260DD8BEC()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[11];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_260DD8C68(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FD38, &qword_260DF8490);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v13[0] = a3;
  (*(v6 + 16))(&v13[-v8], a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_260DDBEC4();
  sub_260DDBF18();
  sub_260DF5604();
}

uint64_t sub_260DD8E00(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FD38, &qword_260DF8490);
    return sub_260DF5B04();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FD38, &qword_260DF8490);
    return sub_260DF5B14();
  }
}

uint64_t ControlCenterSuggestionClient.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_260DD8EF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6C616D73 && a2 == 0xE500000000000000;
  if (v4 || (sub_260DF5DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_260DF5DE4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_260DF5DE4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726142756E656DLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_260DF5DE4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BOOL _s25ProactivePredictionClient20SuggestedControlKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v67[0] = *a1;
  v67[1] = v2;
  v67[2] = v5;
  v67[3] = v4;
  v67[4] = v7;
  v67[5] = v6;
  v68 = v8;
  v69 = v10;
  v70 = v9;
  v71 = v11;
  v72 = v12;
  v73 = v13;
  v74 = v14;
  v75 = v15;
  if (!v8)
  {
    if (v15)
    {
      goto LABEL_25;
    }

    if (v3 != v10 || v2 != v9)
    {
      v55 = v12;
      v61 = v11;
      v23 = v13;
      v24 = v14;
      v25 = sub_260DF5DE4();
      v12 = v55;
      v11 = v61;
      v13 = v23;
      v14 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    if (v5 != v11 || v4 != v12)
    {
      v26 = v11;
      v27 = v12;
      v56 = v14;
      v62 = v13;
      v28 = sub_260DF5DE4();
      v11 = v26;
      v12 = v27;
      v14 = v56;
      v13 = v62;
      if ((v28 & 1) == 0)
      {
LABEL_32:
        sub_260DD97C8(v10, v9, v11, v12, v13, v14, 0);
        v33 = v3;
        v34 = v2;
        v35 = v5;
        v36 = v4;
        v37 = v7;
        v38 = v6;
        v39 = 0;
        goto LABEL_26;
      }
    }

    if (v7 == v13 && v6 == v14)
    {
      sub_260DD97C8(v10, v9, v11, v12, v7, v6, 0);
      v16 = v3;
      v17 = v2;
      v18 = v5;
      v19 = v4;
      v20 = v7;
      v21 = v6;
      v22 = 0;
      goto LABEL_24;
    }

    v51 = v11;
    v52 = v12;
    v60 = v14;
    v66 = v13;
    v54 = sub_260DF5DE4();
    sub_260DD97C8(v10, v9, v51, v52, v66, v60, 0);
    v44 = v3;
    v45 = v2;
    v46 = v5;
    v47 = v4;
    v48 = v7;
    v49 = v6;
    v50 = 0;
LABEL_35:
    sub_260DD97C8(v44, v45, v46, v47, v48, v49, v50);
    sub_260DDBF6C(v67);
    return (v54 & 1) != 0;
  }

  if (v8 != 1)
  {
    if (v15 != 2)
    {
      goto LABEL_25;
    }

    if (v3 != v10 || v2 != v9)
    {
      v57 = v12;
      v63 = v11;
      v29 = v13;
      v30 = v14;
      v31 = sub_260DF5DE4();
      v12 = v57;
      v11 = v63;
      v13 = v29;
      v14 = v30;
      if ((v31 & 1) == 0)
      {
        sub_260DD97C8(v10, v9, v63, v57, v29, v30, 2);
        v33 = v3;
        v34 = v2;
        v35 = v5;
        v36 = v4;
        v37 = v7;
        v38 = v6;
        v39 = 2;
        goto LABEL_26;
      }
    }

    if (v5 == v11 && v4 == v12)
    {
      sub_260DD97C8(v10, v9, v5, v4, v13, v14, 2);
      v16 = v3;
      v17 = v2;
      v18 = v5;
      v19 = v4;
      v20 = v7;
      v21 = v6;
      v22 = 2;
      goto LABEL_24;
    }

    v42 = v11;
    v43 = v12;
    v59 = v14;
    v65 = v13;
    v54 = sub_260DF5DE4();
    sub_260DD97C8(v10, v9, v42, v43, v65, v59, 2);
    v44 = v3;
    v45 = v2;
    v46 = v5;
    v47 = v4;
    v48 = v7;
    v49 = v6;
    v50 = 2;
    goto LABEL_35;
  }

  if (v15 != 1)
  {
LABEL_25:
    sub_260DD97C8(v10, v9, v11, v12, v13, v14, v15);
    v33 = v3;
    v34 = v2;
    v35 = v5;
    v36 = v4;
    v37 = v7;
    v38 = v6;
    v39 = v8;
LABEL_26:
    sub_260DD97C8(v33, v34, v35, v36, v37, v38, v39);
    sub_260DDBF6C(v67);
    return 0;
  }

  if (v3 == v10 && v2 == v9)
  {
    sub_260DD97C8(v3, v2, v11, v12, v13, v14, 1);
    v16 = v3;
    v17 = v2;
    v18 = v5;
    v19 = v4;
    v20 = v7;
    v21 = v6;
    v22 = 1;
LABEL_24:
    sub_260DD97C8(v16, v17, v18, v19, v20, v21, v22);
    sub_260DDBF6C(v67);
    return 1;
  }

  v40 = v11;
  v41 = v12;
  v58 = v14;
  v64 = v13;
  v53 = sub_260DF5DE4();
  sub_260DD97C8(v10, v9, v40, v41, v64, v58, 1);
  sub_260DD97C8(v3, v2, v5, v4, v7, v6, 1);
  sub_260DDBF6C(v67);
  result = 0;
  if (v53)
  {
    return 1;
  }

  return result;
}

unint64_t sub_260DD9480()
{
  result = qword_27FE4FAE0;
  if (!qword_27FE4FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FAE0);
  }

  return result;
}

unint64_t sub_260DD94D4()
{
  result = qword_27FE4FAE8;
  if (!qword_27FE4FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FAE8);
  }

  return result;
}

unint64_t sub_260DD9528()
{
  result = qword_27FE4FAF0;
  if (!qword_27FE4FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FAF0);
  }

  return result;
}

unint64_t sub_260DD957C()
{
  result = qword_27FE4FAF8;
  if (!qword_27FE4FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FAF8);
  }

  return result;
}

unint64_t sub_260DD95D0()
{
  result = qword_27FE4FB00;
  if (!qword_27FE4FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FB00);
  }

  return result;
}

unint64_t sub_260DD9624()
{
  result = qword_27FE4FB08;
  if (!qword_27FE4FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FB08);
  }

  return result;
}

unint64_t sub_260DD9678()
{
  result = qword_27FE4FB10;
  if (!qword_27FE4FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FB10);
  }

  return result;
}

unint64_t sub_260DD96CC()
{
  result = qword_27FE4FB38;
  if (!qword_27FE4FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FB38);
  }

  return result;
}

unint64_t sub_260DD9720()
{
  result = qword_27FE4FB40;
  if (!qword_27FE4FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FB40);
  }

  return result;
}

unint64_t sub_260DD9774()
{
  result = qword_27FE4FB48;
  if (!qword_27FE4FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FB48);
  }

  return result;
}

uint64_t sub_260DD97C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  result = a2;
  if (a7 == 2)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (a7 != 1)
  {
    if (a7)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_6:
}

uint64_t sub_260DD983C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  result = a2;
  if (a7 == 2)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (a7 != 1)
  {
    if (a7)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_6:
}

unint64_t sub_260DD98B0()
{
  result = qword_27FE4FB58;
  if (!qword_27FE4FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FB58);
  }

  return result;
}

unint64_t sub_260DD9904()
{
  result = qword_27FE4FB60;
  if (!qword_27FE4FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FB60);
  }

  return result;
}

unint64_t sub_260DD9958()
{
  result = qword_27FE4FB68;
  if (!qword_27FE4FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FB68);
  }

  return result;
}

unint64_t sub_260DD99AC()
{
  result = qword_27FE4FB78;
  if (!qword_27FE4FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FB78);
  }

  return result;
}

unint64_t sub_260DD9A00()
{
  result = qword_27FE4FB80;
  if (!qword_27FE4FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FB80);
  }

  return result;
}

unint64_t sub_260DD9ABC()
{
  result = qword_27FE4FB90;
  if (!qword_27FE4FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FB90);
  }

  return result;
}

uint64_t sub_260DD9B10(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE4F9B8, &qword_260DF6CE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_260DD9B88()
{
  result = qword_27FE4FBA8;
  if (!qword_27FE4FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FBA8);
  }

  return result;
}

unint64_t sub_260DD9BDC()
{
  result = qword_27FE4FBB8;
  if (!qword_27FE4FBB8)
  {
    type metadata accessor for ControlCenterSuggestionClient();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FBB8);
  }

  return result;
}

uint64_t sub_260DD9C60(uint64_t a1)
{
  v2 = type metadata accessor for ControlCenterSuggestionCache();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_260DD9CC0()
{
  result = qword_27FE4FBC0;
  if (!qword_27FE4FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FBC0);
  }

  return result;
}

unint64_t sub_260DD9D18()
{
  result = qword_27FE4FBC8;
  if (!qword_27FE4FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FBC8);
  }

  return result;
}

unint64_t sub_260DD9D70()
{
  result = qword_27FE4FBD0;
  if (!qword_27FE4FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FBD0);
  }

  return result;
}

unint64_t sub_260DD9DC8()
{
  result = qword_27FE4FBD8;
  if (!qword_27FE4FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FBD8);
  }

  return result;
}

unint64_t sub_260DD9E20()
{
  result = qword_27FE4FBE0;
  if (!qword_27FE4FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FBE0);
  }

  return result;
}

unint64_t sub_260DD9E78()
{
  result = qword_27FE4FBE8;
  if (!qword_27FE4FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FBE8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_260DD9F0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_260DD9F54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_260DD9FBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_260DDA004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_260DDA05C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_260DDA0A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_260DDA11C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_260DDA164(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_260DDA1F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_260DDA23C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_260DDA2AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_260DDA2F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestedControlsRequest(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SuggestedControlsRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of ControlCenterSuggestionClient.suggestions(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 96);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_260DDA5F8;

  return v10(a1, a2);
}

uint64_t sub_260DDA5F8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t getEnumTagSinglePayload for SuggestedStatusItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_260DDA83C(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_260DDA88C(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_260DDA918(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_260DDA9A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_260DDAA68(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_260DDAAF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_260DDABFC()
{
  result = qword_27FE4FBF0;
  if (!qword_27FE4FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FBF0);
  }

  return result;
}

unint64_t sub_260DDAC54()
{
  result = qword_27FE4FBF8;
  if (!qword_27FE4FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FBF8);
  }

  return result;
}

unint64_t sub_260DDACAC()
{
  result = qword_27FE4FC00;
  if (!qword_27FE4FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC00);
  }

  return result;
}

unint64_t sub_260DDAD04()
{
  result = qword_27FE4FC08;
  if (!qword_27FE4FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC08);
  }

  return result;
}

unint64_t sub_260DDAD5C()
{
  result = qword_27FE4FC10;
  if (!qword_27FE4FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC10);
  }

  return result;
}

unint64_t sub_260DDADB4()
{
  result = qword_27FE4FC18;
  if (!qword_27FE4FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC18);
  }

  return result;
}

unint64_t sub_260DDAE0C()
{
  result = qword_27FE4FC20;
  if (!qword_27FE4FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC20);
  }

  return result;
}

unint64_t sub_260DDAE64()
{
  result = qword_27FE4FC28;
  if (!qword_27FE4FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC28);
  }

  return result;
}

unint64_t sub_260DDAEBC()
{
  result = qword_27FE4FC30;
  if (!qword_27FE4FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC30);
  }

  return result;
}

unint64_t sub_260DDAF14()
{
  result = qword_27FE4FC38;
  if (!qword_27FE4FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC38);
  }

  return result;
}

unint64_t sub_260DDAF6C()
{
  result = qword_27FE4FC40;
  if (!qword_27FE4FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC40);
  }

  return result;
}

unint64_t sub_260DDAFC4()
{
  result = qword_27FE4FC48;
  if (!qword_27FE4FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC48);
  }

  return result;
}

unint64_t sub_260DDB01C()
{
  result = qword_27FE4FC50;
  if (!qword_27FE4FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC50);
  }

  return result;
}

unint64_t sub_260DDB074()
{
  result = qword_27FE4FC58;
  if (!qword_27FE4FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC58);
  }

  return result;
}

unint64_t sub_260DDB0CC()
{
  result = qword_27FE4FC60;
  if (!qword_27FE4FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC60);
  }

  return result;
}

unint64_t sub_260DDB124()
{
  result = qword_27FE4FC68;
  if (!qword_27FE4FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC68);
  }

  return result;
}

unint64_t sub_260DDB17C()
{
  result = qword_27FE4FC70;
  if (!qword_27FE4FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC70);
  }

  return result;
}

unint64_t sub_260DDB1D4()
{
  result = qword_27FE4FC78;
  if (!qword_27FE4FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC78);
  }

  return result;
}

unint64_t sub_260DDB22C()
{
  result = qword_27FE4FC80;
  if (!qword_27FE4FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC80);
  }

  return result;
}

unint64_t sub_260DDB284()
{
  result = qword_27FE4FC88;
  if (!qword_27FE4FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC88);
  }

  return result;
}

unint64_t sub_260DDB2DC()
{
  result = qword_27FE4FC90;
  if (!qword_27FE4FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC90);
  }

  return result;
}

unint64_t sub_260DDB334()
{
  result = qword_27FE4FC98;
  if (!qword_27FE4FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FC98);
  }

  return result;
}

unint64_t sub_260DDB38C()
{
  result = qword_27FE4FCA0;
  if (!qword_27FE4FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FCA0);
  }

  return result;
}

unint64_t sub_260DDB3E4()
{
  result = qword_27FE4FCA8;
  if (!qword_27FE4FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FCA8);
  }

  return result;
}

unint64_t sub_260DDB43C()
{
  result = qword_27FE4FCB0;
  if (!qword_27FE4FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FCB0);
  }

  return result;
}

unint64_t sub_260DDB494()
{
  result = qword_27FE4FCB8;
  if (!qword_27FE4FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FCB8);
  }

  return result;
}

unint64_t sub_260DDB4EC()
{
  result = qword_27FE4FCC0;
  if (!qword_27FE4FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FCC0);
  }

  return result;
}

unint64_t sub_260DDB544()
{
  result = qword_27FE4FCC8;
  if (!qword_27FE4FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FCC8);
  }

  return result;
}

unint64_t sub_260DDB59C()
{
  result = qword_27FE4FCD0;
  if (!qword_27FE4FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FCD0);
  }

  return result;
}

unint64_t sub_260DDB5F4()
{
  result = qword_27FE4FCD8;
  if (!qword_27FE4FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FCD8);
  }

  return result;
}

unint64_t sub_260DDB64C()
{
  result = qword_27FE4FCE0;
  if (!qword_27FE4FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FCE0);
  }

  return result;
}

unint64_t sub_260DDB6A4()
{
  result = qword_27FE4FCE8;
  if (!qword_27FE4FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FCE8);
  }

  return result;
}

unint64_t sub_260DDB6FC()
{
  result = qword_27FE4FCF0;
  if (!qword_27FE4FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FCF0);
  }

  return result;
}

unint64_t sub_260DDB754()
{
  result = qword_27FE4FCF8;
  if (!qword_27FE4FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FCF8);
  }

  return result;
}

unint64_t sub_260DDB7AC()
{
  result = qword_27FE4FD00;
  if (!qword_27FE4FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FD00);
  }

  return result;
}

unint64_t sub_260DDB804()
{
  result = qword_27FE4FD08;
  if (!qword_27FE4FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FD08);
  }

  return result;
}

unint64_t sub_260DDB85C()
{
  result = qword_27FE4FD10;
  if (!qword_27FE4FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FD10);
  }

  return result;
}

unint64_t sub_260DDB8B4()
{
  result = qword_27FE4FD18;
  if (!qword_27FE4FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FD18);
  }

  return result;
}

unint64_t sub_260DDB90C()
{
  result = qword_27FE4FD20;
  if (!qword_27FE4FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FD20);
  }

  return result;
}

unint64_t sub_260DDB964()
{
  result = qword_27FE4FD28;
  if (!qword_27FE4FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FD28);
  }

  return result;
}

unint64_t sub_260DDB9BC()
{
  result = qword_27FE4FD30;
  if (!qword_27FE4FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FD30);
  }

  return result;
}

uint64_t sub_260DDBA10(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000260DF9350 == a2 || (sub_260DF5DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000260DF9370 == a2 || (sub_260DF5DE4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_260DF5DE4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_260DDBB38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F436F6E6F726863 && a2 == 0xED00006C6F72746ELL;
  if (v4 || (sub_260DF5DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C75646F6DLL && a2 == 0xE600000000000000 || (sub_260DF5DE4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7449737574617473 && a2 == 0xEA00000000006D65)
  {

    return 2;
  }

  else
  {
    v6 = sub_260DF5DE4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_260DDBC5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_260DF5DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_260DF5DE4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000 || (sub_260DF5DE4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_260DF5DE4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_260DDBDB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FD38, &qword_260DF8490);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_260DDBE48(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FD38, &qword_260DF8490) - 8) + 80);

  return sub_260DD8E00(a1);
}

unint64_t sub_260DDBEC4()
{
  result = qword_27FE4FD40;
  if (!qword_27FE4FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FD40);
  }

  return result;
}

unint64_t sub_260DDBF18()
{
  result = qword_27FE4FD48;
  if (!qword_27FE4FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FD48);
  }

  return result;
}

uint64_t sub_260DDBF6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FD50, &qword_260DF8498);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ActionSuggestionMetadata.canonicalID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_260DDC244@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t ActionSuggestionMetadata.__allocating_init(canonicalID:toolInvocation:toolInvocationSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocation;
  v13 = sub_260DF5764();
  (*(*(v13 - 8) + 32))(v11 + v12, a3, v13);
  v14 = OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocationSummary;
  v15 = sub_260DF5884();
  (*(*(v15 - 8) + 32))(v11 + v14, a4, v15);
  return v11;
}

uint64_t ActionSuggestionMetadata.init(canonicalID:toolInvocation:toolInvocationSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v7 = OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocation;
  v8 = sub_260DF5764();
  (*(*(v8 - 8) + 32))(v4 + v7, a3, v8);
  v9 = OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocationSummary;
  v10 = sub_260DF5884();
  (*(*(v10 - 8) + 32))(v4 + v9, a4, v10);
  return v4;
}

uint64_t ActionSuggestionMetadata.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocation;
  v3 = sub_260DF5764();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocationSummary;
  v5 = sub_260DF5884();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t ActionSuggestionMetadata.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocation;
  v3 = sub_260DF5764();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocationSummary;
  v5 = sub_260DF5884();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t static ActionSuggestionMetadataClientError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v2)
    {

LABEL_6:
      v3 = 1;
      goto LABEL_7;
    }
  }

  else if (!v2)
  {
    goto LABEL_6;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

uint64_t sub_260DDC648(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v2)
    {

LABEL_6:
      v3 = 1;
      goto LABEL_7;
    }
  }

  else if (!v2)
  {
    goto LABEL_6;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

id sub_260DDC69C()
{
  result = [objc_allocWithZone(type metadata accessor for ActionSuggestionMetadataClient()) init];
  qword_27FE4FD58 = result;
  return result;
}

id ActionSuggestionMetadataClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ActionSuggestionMetadataClient.shared.getter()
{
  if (qword_27FE4F980 != -1)
  {
    swift_once();
  }

  v1 = qword_27FE4FD58;

  return v1;
}

id ActionSuggestionMetadataClient.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionSuggestionMetadataClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_260DDCA9C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_260DDCAD8()
{
  v70 = sub_260DF5844();
  v0 = *(v70 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v70);
  v61 = v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_260DF5854();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v73 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = v55 - v8;
  v9 = sub_260DF5864();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x277D84F90];
  v14 = sub_260DF5824();
  v15 = v14;
  v77 = *(v14 + 16);
  if (!v77)
  {
LABEL_18:

    v50 = [objc_allocWithZone(MEMORY[0x277D4C598]) init];
    sub_260DDE814(0, &qword_27FE4FDA0, 0x277D4C3A0);
    v51 = sub_260DF5A94();

    [v50 setFormattedTextPieces_];

    return;
  }

  v16 = v0;
  v17 = 0;
  v75 = v10 + 88;
  v76 = v10 + 16;
  v74 = *MEMORY[0x277D72658];
  v72 = (v10 + 96);
  v66 = (v4 + 16);
  v67 = (v4 + 32);
  v65 = (v4 + 88);
  v62 = (v4 + 96);
  v69 = *MEMORY[0x277D72660];
  v59 = (v16 + 32);
  v58 = (v16 + 8);
  v64 = *MEMORY[0x277D72648];
  v57 = *MEMORY[0x277D72650];
  v56 = *MEMORY[0x277D72640];
  v68 = (v4 + 8);
  v55[1] = 0x8000000260DF96E0;
  v60 = v3;
  v18 = v71;
  v63 = v14;
  while (v17 < *(v15 + 16))
  {
    (*(v10 + 16))(v13, v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, v9);
    v19 = (*(v10 + 88))(v13, v9);
    if (v19 != v74)
    {
      if (v19 != v69)
      {

        sub_260DDE760();
        swift_allocError();
        *v52 = 0xD000000000000019;
        v52[1] = 0x8000000260DF96A0;
        swift_willThrow();
        (*(v10 + 8))(v13, v9);
        return;
      }

      (*v72)(v13, v9);
      v24 = *(v13 + 1);

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF30, &qword_260DF8650);
      (*v67)(v18, &v13[*(v25 + 48)], v3);
      v26 = v73;
      (*v66)(v73, v18, v3);
      v27 = (*v65)(v26, v3);
      if (v27 == v64)
      {
        v28 = v73;
        (*v62)(v73, v3);
        v29 = v61;
        v30 = v70;
        (*v59)(v61, v28, v70);
        sub_260DF5834();
        v22 = [objc_allocWithZone(MEMORY[0x277D4C3A0]) init];
        v31 = sub_260DF59B4();
        v18 = v71;

        [v22 setText_];

        [v22 setIsEmphasized_];
        [v22 setEncapsulationStyle_];
        v32 = *v58;
        v33 = v29;
        v15 = v63;
        v34 = v30;
        goto LABEL_13;
      }

      if (v27 == v57)
      {
        v35 = v73;
        (*v62)(v73, v3);
        v36 = *v35;
        v37 = [objc_opt_self() mainBundle];
        v38 = sub_260DF5264();
        v40 = v39;

        v41 = *(v36 + 16);

        v78 = v41;
        v78 = sub_260DF5DD4();
        v79 = v42;

        MEMORY[0x2666EF400](32, 0xE100000000000000);

        v43 = v38;
        v18 = v71;
        MEMORY[0x2666EF400](v43, v40);

        v22 = [objc_allocWithZone(MEMORY[0x277D4C3A0]) init];
        v44 = sub_260DF59B4();
        v15 = v63;

        [v22 setText_];

        [v22 setIsEmphasized_];
        [v22 setEncapsulationStyle_];
      }

      else
      {
        if (v27 != v56)
        {

          sub_260DDE760();
          swift_allocError();
          *v53 = 0xD000000000000014;
          v53[1] = 0x8000000260DF96C0;
          swift_willThrow();
          v54 = *v68;
          (*v68)(v18, v3);
          v54(v73, v3);
          return;
        }

        v45 = v73;
        (*v62)(v73, v3);
        v46 = v61;
        (*v59)(v61, v45, v70);
        sub_260DF5834();
        v22 = [objc_allocWithZone(MEMORY[0x277D4C3A0]) init];
        v47 = sub_260DF59B4();
        v15 = v63;

        [v22 setText_];

        [v22 setIsEmphasized_];
        [v22 setEncapsulationStyle_];
        v32 = *v58;
        v33 = v46;
        v34 = v70;
LABEL_13:
        v3 = v60;
        v32(v33, v34);
      }

      (*v68)(v18, v3);
      goto LABEL_15;
    }

    (*v72)(v13, v9);
    v20 = *v13;
    v21 = *(v13 + 1);
    v22 = [objc_allocWithZone(MEMORY[0x277D4C3A0]) init];
    v23 = sub_260DF59B4();
    v18 = v71;

    [v22 setText_];

    [v22 setIsEmphasized_];
    [v22 setEncapsulationStyle_];
LABEL_15:
    v48 = v22;
    MEMORY[0x2666EF480]();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v49 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_260DF5AC4();
      v15 = v63;
    }

    ++v17;
    sub_260DF5AE4();

    if (v77 == v17)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

unint64_t sub_260DDD53C(unint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v99 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FD90, &qword_260DF8640);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = &v66 - v6;
  v93 = sub_260DF5884();
  v7 = *(v93 - 8);
  v8 = *(v7 + 8);
  v9 = MEMORY[0x28223BE20](v93);
  v82 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50000, &qword_260DF8648);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v86 = &v66 - v15;
  v83 = sub_260DF5764();
  v16 = *(v83 - 8);
  v17 = *(v16 + 8);
  v18 = MEMORY[0x28223BE20](v83);
  v81 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v85 = &v66 - v20;
  v98 = MEMORY[0x277D84F90];
  v21 = [objc_allocWithZone(ATXProactivePredictionClientHelper) init];
  v22 = sub_260DF5A94();
  v96 = 0;
  v23 = [v21 suggestionMetadataForActions:v22 error:&v96];

  v24 = v96;
  if (!v23)
  {
    v51 = v96;
    sub_260DF52E4();

    swift_willThrow();
LABEL_35:

    goto LABEL_36;
  }

  sub_260DDE814(0, &qword_27FE4FDA8, off_279AC2F10);
  v25 = sub_260DF5AB4();
  v26 = v24;

  v27 = v25;
  if (v25 >> 62)
  {
    goto LABEL_39;
  }

  v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v29 = v86;
  v68 = v2;
  v67 = a1;
  v69 = v21;
  if (v28)
  {
    v21 = 0;
    v79 = v27 & 0xFFFFFFFFFFFFFF8;
    v80 = v27 & 0xC000000000000001;
    v78 = (v16 + 48);
    v92 = (v16 + 32);
    v77 = (v7 + 48);
    v73 = (v7 + 32);
    v72 = (v16 + 16);
    v71 = (v7 + 16);
    v70 = (v7 + 8);
    a1 = MEMORY[0x277D84F90];
    v76 = (v16 + 8);
    v30 = v93;
    v16 = v85;
    v74 = v28;
    v75 = v27;
    v91 = v12;
    while (1)
    {
      if (v80)
      {
        v31 = MEMORY[0x2666EF600](v21, v27);
        v12 = v83;
        v7 = v84;
        v32 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
          goto LABEL_37;
        }
      }

      else
      {
        v12 = v83;
        v7 = v84;
        if (v21 >= *(v79 + 16))
        {
          goto LABEL_38;
        }

        v31 = *(v27 + 8 * v21 + 32);
        v32 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          v28 = sub_260DF5C94();
          goto LABEL_4;
        }
      }

      v90 = v32;
      v88 = a1;
      v33 = v31;
      v94 = [v31 encodedInvocation];
      if (!v94)
      {
        goto LABEL_42;
      }

      a1 = v33;
      v34 = [v33 encodedSummary];
      if (!v34)
      {
        __break(1u);
LABEL_42:
        __break(1u);
      }

      v35 = v34;
      sub_260DF5744();
      if ((*v78)(v29, 1, v12) == 1)
      {

        v54 = &qword_27FE50000;
        v55 = &qword_260DF8648;
        v56 = v29;
LABEL_29:
        sub_260DDE7B4(v56, v54, v55);
        sub_260DDE760();
        swift_allocError();
        *v57 = 0xD000000000000027;
        v57[1] = 0x8000000260DF9670;
        swift_willThrow();

        goto LABEL_34;
      }

      v89 = v21;
      v36 = *v92;
      (*v92)(v16, v29, v12);
      sub_260DF5874();
      if ((*v77)(v7, 1, v30) == 1)
      {
        (*v76)(v16, v12);

        v54 = &qword_27FE4FD90;
        v55 = &qword_260DF8640;
        v56 = v7;
        goto LABEL_29;
      }

      v88 = v35;
      v37 = *v73;
      v38 = v91;
      (*v73)(v91, v7, v30);
      v87 = a1;
      v39 = [a1 canonicalActionID];
      v40 = sub_260DF59C4();
      v42 = v41;

      v43 = v16;
      v44 = v81;
      (*v72)(v81, v43, v12);
      v45 = v82;
      (*v71)(v82, v38, v93);
      v46 = type metadata accessor for ActionSuggestionMetadata();
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      v2 = swift_allocObject();
      *(v2 + 16) = v40;
      *(v2 + 24) = v42;
      v49 = v93;
      v36((v2 + OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocation), v44, v12);
      v50 = v37((v2 + OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocationSummary), v45, v49);
      MEMORY[0x2666EF480](v50);
      if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_260DF5AC4();
      }

      sub_260DF5AE4();

      v30 = v49;
      (*v70)(v91, v49);
      v16 = v85;
      (*v76)(v85, v12);
      a1 = v98;
      v21 = v89 + 1;
      v29 = v86;
      v27 = v75;
      if (v90 == v74)
      {
        goto LABEL_22;
      }
    }
  }

  a1 = MEMORY[0x277D84F90];
LABEL_22:

  if ((v68 & 1) == 0)
  {
    v52 = a1 >> 62 ? sub_260DF5C94() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v53 = *(v67 + 16);
    if (v52 != v53)
    {
      v96 = 0;
      v97 = 0xE000000000000000;
      sub_260DF5BE4();
      if (a1 >> 62)
      {
        v58 = sub_260DF5C94();
      }

      else
      {
        v58 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v95 = v58;
      v59 = sub_260DF5DD4();
      MEMORY[0x2666EF400](v59);

      MEMORY[0x2666EF400](540877088, 0xE400000000000000);
      v95 = v53;
      v60 = sub_260DF5DD4();
      MEMORY[0x2666EF400](v60);

      MEMORY[0x2666EF400](0xD00000000000003ALL, 0x8000000260DF9700);
      v61 = v96;
      v62 = v97;
      sub_260DDE760();
      swift_allocError();
      *v63 = v61;
      v63[1] = v62;
      swift_willThrow();

LABEL_34:
      v21 = v69;
      goto LABEL_35;
    }
  }

LABEL_36:
  v64 = *MEMORY[0x277D85DE8];
  return a1;
}

unint64_t sub_260DDDE88(unint64_t a1)
{
  result = sub_260DDD53C(a1, 0);
  if (!v1)
  {
    v3 = result;
    if (result >> 62)
    {
      goto LABEL_15;
    }

    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v9 = MEMORY[0x277D84F90];
        result = sub_260DF5C64();
        if (v4 < 0)
        {
          break;
        }

        for (i = 0; ; ++i)
        {
          v6 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2666EF600](i, v3);
          }

          else
          {
            if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_14;
            }

            v7 = *(v3 + 8 * i + 32);
          }

          sub_260DDCAD8();

          sub_260DF5C44();
          v8 = *(v9 + 16);
          sub_260DF5C74();
          sub_260DF5C84();
          sub_260DF5C54();
          if (v6 == v4)
          {

            return v9;
          }
        }

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        v4 = sub_260DF5C94();
        if (!v4)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

char *sub_260DDE034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[2] = a3;
  v31[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FD90, &qword_260DF8640);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v31 - v6;
  v8 = sub_260DF5884();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50000, &qword_260DF8648);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v31 - v14;
  v16 = sub_260DF5764();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_260DF5394();
  sub_260DF5744();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v22 = &qword_27FE50000;
    v23 = &qword_260DF8648;
    v24 = v15;
LABEL_5:
    sub_260DDE7B4(v24, v22, v23);
    sub_260DDE760();
    swift_allocError();
    *v27 = 0xD000000000000027;
    v27[1] = 0x8000000260DF9670;
    swift_willThrow();
    return v7;
  }

  (*(v17 + 32))(v20, v15, v16);
  v25 = sub_260DF5394();
  sub_260DF5874();

  v26 = v32;
  if ((*(v32 + 48))(v7, 1, v8) == 1)
  {
    (*(v17 + 8))(v20, v16);
    v22 = &qword_27FE4FD90;
    v23 = &qword_260DF8640;
    v24 = v7;
    goto LABEL_5;
  }

  (*(v26 + 32))(v11, v7, v8);
  v29 = v31[1];
  sub_260DDCAD8();
  if (!v29)
  {
    v7 = v30;
  }

  (*(v26 + 8))(v11, v8);
  (*(v17 + 8))(v20, v16);
  return v7;
}

uint64_t type metadata accessor for ActionSuggestionMetadata()
{
  result = qword_27FE4FD78;
  if (!qword_27FE4FD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260DDE480()
{
  result = sub_260DF5764();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_260DF5884();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_260DDE584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260DDE5D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_260DDE628(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_260DDE640(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_260DDE760()
{
  result = qword_27FE4FD98;
  if (!qword_27FE4FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FD98);
  }

  return result;
}

uint64_t sub_260DDE7B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_260DDE814(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t static ParameterSuggestionError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v2)
    {

LABEL_6:
      v3 = 1;
      goto LABEL_7;
    }
  }

  else if (!v2)
  {
    goto LABEL_6;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

uint64_t *ParameterSuggestionRequest.__allocating_init(toolInvocation:limit:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  v7 = sub_260DF5764();
  v6[5] = v7;
  v6[6] = &off_28735A4A0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6 + 2);
  (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, a1, v7);
  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = a2;
  }

  v6[7] = v9;
  return v6;
}

uint64_t *ParameterSuggestionRequest.init(toolInvocation:limit:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_260DF5764();
  v3[5] = v7;
  v3[6] = &off_28735A4A0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 2);
  (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, a1, v7);
  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = a2;
  }

  v3[7] = v9;
  return v3;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t ParameterSuggestionRequest.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t ToolInvocationWithContext.toolInvocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_toolInvocation;
  v4 = sub_260DF5764();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolInvocationWithContext.deinit()
{
  v1 = OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_toolInvocation;
  v2 = sub_260DF5764();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ToolInvocationWithContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_toolInvocation;
  v2 = sub_260DF5764();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

BOOL sub_260DDEC94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return (sub_260DF5734() & 1) != 0 && *(v2 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_context) == *(v3 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_context);
}

uint64_t static ParameterSuggestionResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_260DDED4C(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);

  return sub_260DDEFF0(v4, v5);
}

uint64_t sub_260DDED4C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_260DF5C94())
  {
    if (a2 >> 62)
    {
      result = sub_260DF5C94();
      if (i != result)
      {
        return 0;
      }
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (i != result)
      {
        return 0;
      }
    }

    if (!i)
    {
      return 1;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v28 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v27 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (i < 0)
    {
      goto LABEL_55;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      break;
    }

    v3 += 32;
    a2 += 32;
    v19 = *(v28 + 16);
    v20 = *(v27 + 16);
    v21 = i - 1;
    while (v19)
    {
      if (!v20)
      {
        goto LABEL_49;
      }

      v22 = *v3;
      v23 = *a2;

      if ((sub_260DF5734() & 1) == 0)
      {
LABEL_44:

        return 0;
      }

      v24 = *(v22 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_context);

      v4 = *(v23 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_context);

      v26 = v21-- != 0;
      result = v24 == v4;
      if (v24 == v4)
      {
        --v20;
        --v19;
        v3 += 8;
        a2 += 8;
        if (v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  v11 = a2 & 0xC000000000000001;
  for (j = 4; ; ++j)
  {
    v13 = j - 4;
    v14 = j - 3;
    if (__OFADD__(j - 4, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2666EF600](j - 4, v3);
      v15 = result;
      if (v11)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v15 = *(v3 + 8 * j);

    if (v11)
    {
LABEL_21:
      v16 = MEMORY[0x2666EF600](j - 4, a2);
      goto LABEL_26;
    }

LABEL_24:
    if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

    v16 = *(a2 + 8 * j);

LABEL_26:
    if ((sub_260DF5734() & 1) == 0)
    {
      goto LABEL_44;
    }

    v17 = *(v15 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_context);

    v4 = *(v16 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_context);

    result = v17 == v4;
    if (v17 != v4 || v14 == i)
    {
      return result;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_260DDEFF0(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_133:
    result = 0;
LABEL_135:
    v61 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (!v2 || a1 == a2)
  {
LABEL_134:
    result = 1;
    goto LABEL_135;
  }

  v3 = (a1 + 40);
  v4 = (a2 + 40);
  while (1)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v8 = *(v4 - 1);
    v7 = *v4;
    v9 = *v3 >> 62;
    v10 = *v4 >> 62;
    if (v9 == 3)
    {
      if (v5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == 0xC000000000000000;
      }

      v12 = 0;
      v13 = v11 && *v4 >> 62 == 3;
      if (v13 && !v8 && v7 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v10 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v19 = *(v5 + 16);
        v18 = *(v5 + 24);
        v16 = __OFSUB__(v18, v19);
        v12 = v18 - v19;
        if (v16)
        {
          goto LABEL_139;
        }

        goto LABEL_28;
      }

      v12 = 0;
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

    else if (v9)
    {
      LODWORD(v12) = HIDWORD(v5) - v5;
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_138;
      }

      v12 = v12;
      if (v10 <= 1)
      {
LABEL_29:
        if (v10)
        {
          LODWORD(v17) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
          }

          v17 = v17;
        }

        else
        {
          v17 = BYTE6(v7);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v12 = BYTE6(v6);
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_22:
    if (v10 != 2)
    {
      if (v12)
      {
        goto LABEL_133;
      }

      goto LABEL_6;
    }

    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (v16)
    {
      goto LABEL_137;
    }

LABEL_33:
    if (v12 != v17)
    {
      goto LABEL_133;
    }

    if (v12 < 1)
    {
      goto LABEL_6;
    }

    if (v9 > 1)
    {
      break;
    }

    if (v9)
    {
      v33 = v5;
      if (v5 > v5 >> 32)
      {
        goto LABEL_140;
      }

      v65 = *(v3 - 1);
      sub_260DE17F4(v5, v6);
      sub_260DE17F4(v8, v7);
      v27 = sub_260DF5204();
      if (v27)
      {
        v34 = sub_260DF5234();
        if (__OFSUB__(v33, v34))
        {
          goto LABEL_142;
        }

        v27 += v33 - v34;
      }

      sub_260DF5224();
      if (v10 == 2)
      {
        v63 = v27;
        v54 = *(v8 + 16);
        v53 = *(v8 + 24);
        v29 = sub_260DF5204();
        if (v29)
        {
          v55 = sub_260DF5234();
          if (__OFSUB__(v54, v55))
          {
            goto LABEL_156;
          }

          v29 += v54 - v55;
        }

        v16 = __OFSUB__(v53, v54);
        v56 = v53 - v54;
        if (v16)
        {
          goto LABEL_152;
        }

        v57 = sub_260DF5224();
        if (v57 >= v56)
        {
          v32 = v56;
        }

        else
        {
          v32 = v57;
        }

        result = v63;
        if (!v63)
        {
          goto LABEL_167;
        }

        if (!v29)
        {
          goto LABEL_166;
        }

        goto LABEL_127;
      }

      if (v10 == 1)
      {
        if (v8 >> 32 < v8)
        {
          goto LABEL_151;
        }

        v29 = sub_260DF5204();
        if (v29)
        {
          v35 = sub_260DF5234();
          if (__OFSUB__(v8, v35))
          {
            goto LABEL_158;
          }

          v29 += v8 - v35;
        }

        v36 = sub_260DF5224();
        if (v36 >= (v8 >> 32) - v8)
        {
          v32 = (v8 >> 32) - v8;
        }

        else
        {
          v32 = v36;
        }

        result = v27;
        if (!v27)
        {
          goto LABEL_173;
        }

        if (!v29)
        {
          goto LABEL_172;
        }

LABEL_127:
        if (result == v29)
        {
          sub_260DD2994(v8, v7);
          sub_260DD2994(v65, v6);
          goto LABEL_6;
        }

        v58 = v32;
        v59 = v29;
        goto LABEL_132;
      }

      __s1[0] = v8;
      LOWORD(__s1[1]) = v7;
      BYTE2(__s1[1]) = BYTE2(v7);
      BYTE3(__s1[1]) = BYTE3(v7);
      BYTE4(__s1[1]) = BYTE4(v7);
      BYTE5(__s1[1]) = BYTE5(v7);
      if (!v27)
      {
        goto LABEL_163;
      }

      goto LABEL_131;
    }

    __s1[0] = *(v3 - 1);
    LOWORD(__s1[1]) = v6;
    BYTE2(__s1[1]) = BYTE2(v6);
    BYTE3(__s1[1]) = BYTE3(v6);
    BYTE4(__s1[1]) = BYTE4(v6);
    BYTE5(__s1[1]) = BYTE5(v6);
    if (!v10)
    {
      goto LABEL_89;
    }

    v64 = v5;
    if (v10 == 1)
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_144;
      }

      sub_260DE17F4(v5, v6);
      sub_260DE17F4(v8, v7);
      v21 = sub_260DF5204();
      if (!v21)
      {
        goto LABEL_160;
      }

      v22 = v21;
      v23 = sub_260DF5234();
      if (__OFSUB__(v8, v23))
      {
        goto LABEL_148;
      }

      v24 = (v8 - v23 + v22);
      result = sub_260DF5224();
      if (!v24)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v41 = *(v8 + 16);
      v40 = *(v8 + 24);
      sub_260DE17F4(v5, v6);
      sub_260DE17F4(v8, v7);
      v24 = sub_260DF5204();
      if (v24)
      {
        v42 = sub_260DF5234();
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_153;
        }

        v24 += v41 - v42;
      }

      v16 = __OFSUB__(v40, v41);
      v20 = v40 - v41;
      if (v16)
      {
        goto LABEL_146;
      }

      result = sub_260DF5224();
      if (!v24)
      {
        goto LABEL_159;
      }
    }

LABEL_101:
    if (result >= v20)
    {
      v46 = v20;
    }

    else
    {
      v46 = result;
    }

    v47 = memcmp(__s1, v24, v46);
    sub_260DD2994(v8, v7);
    sub_260DD2994(v64, v6);
    if (v47)
    {
      goto LABEL_133;
    }

LABEL_6:
    v3 += 2;
    v4 += 2;
    if (!--v2)
    {
      goto LABEL_134;
    }
  }

  if (v9 != 2)
  {
    memset(__s1, 0, 14);
    if (!v10)
    {
LABEL_89:
      __s2 = v8;
      v67 = v7;
      v68 = BYTE2(v7);
      v69 = BYTE3(v7);
      v70 = BYTE4(v7);
      v71 = BYTE5(v7);
      if (memcmp(__s1, &__s2, BYTE6(v7)))
      {
        goto LABEL_133;
      }

      goto LABEL_6;
    }

    v64 = v5;
    if (v10 == 2)
    {
      v38 = *(v8 + 16);
      v37 = *(v8 + 24);
      sub_260DE17F4(v5, v6);
      sub_260DE17F4(v8, v7);
      v24 = sub_260DF5204();
      if (v24)
      {
        v39 = sub_260DF5234();
        if (__OFSUB__(v38, v39))
        {
          goto LABEL_154;
        }

        v24 += v38 - v39;
      }

      v16 = __OFSUB__(v37, v38);
      v20 = v37 - v38;
      if (v16)
      {
        goto LABEL_147;
      }

      result = sub_260DF5224();
      if (!v24)
      {
        goto LABEL_162;
      }
    }

    else
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_143;
      }

      sub_260DE17F4(v5, v6);
      sub_260DE17F4(v8, v7);
      v43 = sub_260DF5204();
      if (!v43)
      {
        goto LABEL_164;
      }

      v44 = v43;
      v45 = sub_260DF5234();
      if (__OFSUB__(v8, v45))
      {
        goto LABEL_149;
      }

      v24 = (v8 - v45 + v44);
      result = sub_260DF5224();
      if (!v24)
      {
        goto LABEL_165;
      }
    }

    goto LABEL_101;
  }

  v26 = *(v5 + 16);
  v65 = *(v3 - 1);
  sub_260DE17F4(v5, v6);
  sub_260DE17F4(v8, v7);
  v27 = sub_260DF5204();
  if (v27)
  {
    v28 = sub_260DF5234();
    if (__OFSUB__(v26, v28))
    {
      goto LABEL_141;
    }

    v27 += v26 - v28;
  }

  sub_260DF5224();
  if (v10 == 2)
  {
    v62 = v27;
    v49 = *(v8 + 16);
    v48 = *(v8 + 24);
    v29 = sub_260DF5204();
    if (v29)
    {
      v50 = sub_260DF5234();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_155;
      }

      v29 += v49 - v50;
    }

    v16 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v16)
    {
      goto LABEL_150;
    }

    v52 = sub_260DF5224();
    if (v52 >= v51)
    {
      v32 = v51;
    }

    else
    {
      v32 = v52;
    }

    result = v62;
    if (!v62)
    {
      goto LABEL_171;
    }

    if (!v29)
    {
      goto LABEL_170;
    }

    goto LABEL_127;
  }

  if (v10 == 1)
  {
    if (v8 >> 32 < v8)
    {
      goto LABEL_145;
    }

    v29 = sub_260DF5204();
    if (v29)
    {
      v30 = sub_260DF5234();
      if (__OFSUB__(v8, v30))
      {
        goto LABEL_157;
      }

      v29 += v8 - v30;
    }

    v31 = sub_260DF5224();
    if (v31 >= (v8 >> 32) - v8)
    {
      v32 = (v8 >> 32) - v8;
    }

    else
    {
      v32 = v31;
    }

    result = v27;
    if (!v27)
    {
      goto LABEL_169;
    }

    if (!v29)
    {
      goto LABEL_168;
    }

    goto LABEL_127;
  }

  __s1[0] = v8;
  LOWORD(__s1[1]) = v7;
  BYTE2(__s1[1]) = BYTE2(v7);
  BYTE3(__s1[1]) = BYTE3(v7);
  BYTE4(__s1[1]) = BYTE4(v7);
  BYTE5(__s1[1]) = BYTE5(v7);
  if (v27)
  {
LABEL_131:
    v58 = BYTE6(v7);
    v59 = __s1;
    result = v27;
LABEL_132:
    v60 = memcmp(result, v59, v58);
    sub_260DD2994(v8, v7);
    sub_260DD2994(v65, v6);
    if (v60)
    {
      goto LABEL_133;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  sub_260DF5224();
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  result = sub_260DF5224();
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
  return result;
}

size_t sub_260DDF860(unint64_t a1)
{
  v2 = v1;
  v4 = sub_260DF5764();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  v2[3] = a1;
  if (a1 >> 62)
  {
    v26 = v9;
    v12 = sub_260DF5C94();
    v9 = v26;
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_17:
    v2[2] = v16;
    v2[4] = v13;
    return v2;
  }

  v14 = v9;
  v30 = MEMORY[0x277D84F90];

  result = sub_260DEE16C(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v27 = v2;
    v16 = v30;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v17 = 0;
      v18 = (v29 + 16);
      v28 = v29 + 32;
      do
      {
        v19 = MEMORY[0x2666EF600](v17, a1);
        (*v18)(v11, v19 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_toolInvocation, v14);
        swift_unknownObjectRelease();
        v30 = v16;
        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_260DEE16C(v20 > 1, v21 + 1, 1);
          v16 = v30;
        }

        ++v17;
        *(v16 + 16) = v21 + 1;
        (*(v29 + 32))(v16 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v21, v11, v14);
      }

      while (v12 != v17);
    }

    else
    {
      v22 = *(v29 + 16);
      v28 = v29 + 32;
      v23 = 32;
      do
      {
        v22(v8, *(a1 + v23) + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_toolInvocation, v14);
        v30 = v16;
        v25 = *(v16 + 16);
        v24 = *(v16 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_260DEE16C(v24 > 1, v25 + 1, 1);
          v16 = v30;
        }

        *(v16 + 16) = v25 + 1;
        (*(v29 + 32))(v16 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, v8, v14);
        v23 += 8;
        --v12;
      }

      while (v12);
    }

    v2 = v27;
    v13 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void *ParameterSuggestionResponse.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t ParameterSuggestionResponse.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_260DDFC04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((sub_260DDED4C(*(*a1 + 24), *(*a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 32);
  v5 = *(v3 + 32);

  return sub_260DDEFF0(v4, v5);
}

uint64_t sub_260DDFC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[24] = a5;
  v6[25] = v5;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50000, &qword_260DF8648) - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v8 = sub_260DF5764();
  v6[27] = v8;
  v9 = *(v8 - 8);
  v6[28] = v9;
  v10 = *(v9 + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v11 = sub_260DF56E4();
  v6[31] = v11;
  v12 = *(v11 - 8);
  v6[32] = v12;
  v13 = *(v12 + 64) + 15;
  v6[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260DDFDC8, 0, 0);
}

uint64_t sub_260DDFDC8()
{
  v25 = v0;
  v1 = v0[24];
  if (v1 < 1)
  {
    sub_260DF5BE4();

    strcpy(v24, "Invalid limit ");
    HIBYTE(v24[1]) = -18;
    v0[18] = v1;
    v14 = sub_260DF5DD4();
    MEMORY[0x2666EF400](v14);

    v15 = v24[1];
    sub_260DE1664();
    swift_allocError();
    *v16 = v24[0];
    v16[1] = v15;
    swift_willThrow();
    v17 = v0[33];
    v19 = v0[29];
    v18 = v0[30];
    v20 = v0[26];

    v21 = v0[1];

    return v21();
  }

  else
  {
    v2 = v0[32];
    v3 = v0[33];
    v4 = v0[31];
    v5 = v0[25];
    v6 = v0[22];
    v7 = v0[23];
    v8 = v0[20];
    v9 = v0[21];
    v23 = [objc_allocWithZone(ATXProactivePredictionClientHelper) init];
    v0[34] = v23;
    v10 = sub_260DF59B4();
    v0[35] = v10;
    v11 = sub_260DF59B4();
    v0[36] = v11;
    sub_260DF5704();
    sub_260DF56C4();
    (*(v2 + 8))(v3, v4);
    v12 = sub_260DF59B4();
    v0[37] = v12;

    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_260DE00C8;
    v13 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FDC8, &qword_260DF8930);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_260DE0600;
    v0[13] = &block_descriptor;
    v0[14] = v13;
    [v23 parameterSuggestionsForBundleID:v10 intentName:v11 toolID:v12 limit:v1 withCompletion:?];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_260DE00C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  if (v2)
  {
    v3 = sub_260DE054C;
  }

  else
  {
    v3 = sub_260DE01D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260DE01D8()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);
  v3 = *(v0 + 152);

  v43 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_21:
    v42 = v3 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_260DF5C94();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v42 = v3 & 0xFFFFFFFFFFFFFF8;
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  v6 = *(v0 + 224);
  v40 = (v6 + 48);
  v41 = v3 & 0xC000000000000001;
  v38 = (v6 + 16);
  v39 = (v6 + 32);
  v37 = (v6 + 8);
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v41)
      {
        v9 = MEMORY[0x2666EF600](v8, v3);
      }

      else
      {
        if (v8 >= *(v42 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(v3 + 8 * v8 + 32);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = [v9 encodedInvocation];
      if (v11)
      {
        break;
      }

LABEL_6:
      ++v8;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    v12 = v11;
    v13 = v3;
    v15 = *(v0 + 208);
    v14 = *(v0 + 216);
    sub_260DF5744();
    if ((*v40)(v15, 1, v14) == 1)
    {
      v16 = *(v0 + 208);

      sub_260DE1740(v16);
      v3 = v13;
      goto LABEL_6;
    }

    v18 = *(v0 + 232);
    v17 = *(v0 + 240);
    v36 = v18;
    v34 = *(v0 + 216);
    v19 = *v39;
    (*v39)(v17, *(v0 + 208));
    (*v38)(v18, v17, v34);
    v35 = [v10 context];

    (*v37)(v17, v34);
    v20 = type metadata accessor for ToolInvocationWithContext();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    v23 = swift_allocObject();
    v24 = v19(v23 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_toolInvocation, v36, v34);
    *(v23 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_context) = v35;
    MEMORY[0x2666EF480](v24);
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_260DF5AC4();
    }

    sub_260DF5AE4();
    v7 = v43;
    v3 = v13;
  }

  while (v5 != v4);
LABEL_23:
  v27 = *(v0 + 264);
  v26 = *(v0 + 272);
  v29 = *(v0 + 232);
  v28 = *(v0 + 240);
  v30 = *(v0 + 208);

  type metadata accessor for ParameterSuggestionResponse();
  swift_allocObject();
  v31 = sub_260DDF860(v7);

  v32 = *(v0 + 8);

  return v32(v31);
}

uint64_t sub_260DE054C()
{
  v1 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  swift_willThrow();

  v6 = v0[38];
  v7 = v0[33];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[26];

  v11 = v0[1];

  return v11();
}

uint64_t sub_260DE0600(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FDD8, &qword_260DF8938);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_260DE17A8();
    **(*(v4 + 64) + 40) = sub_260DF5AB4();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_260DE06E0()
{
  v0 = sub_260DF5664();
  v37 = *(v0 - 8);
  v1 = *(v37 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v28[-v6];
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-v8];
  v10 = sub_260DF56E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_260DF5704();
  v15 = sub_260DF5684();
  result = (*(v11 + 8))(v14, v10);
  v33 = *(v15 + 16);
  if (v33)
  {
    v17 = 0;
    v36 = v37 + 16;
    v34 = *MEMORY[0x277D720C8];
    v35 = v37 + 8;
    v30 = (v37 + 32);
    v29 = *MEMORY[0x277D72198];
    v31 = v4;
    v32 = v15;
    while (v17 < *(v15 + 16))
    {
      v18 = v37;
      v19 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v37 + 72) * v17;
      v20 = *(v37 + 16);
      v20(v9, v19, v0);
      v20(v7, v9, v0);
      v21 = *(v18 + 88);
      v22 = v21(v7, v0);
      v23 = *(v18 + 8);
      if (v22 == v34)
      {
        v23(v9, v0);

        (*(v37 + 96))(v7, v0);
        result = *v7;
        v26 = v7[1];
        return result;
      }

      v23(v7, v0);
      v24 = v31;
      (*v30)(v31, v9, v0);
      v25 = v21(v24, v0);
      if (v25 == v29)
      {

        (*(v37 + 96))(v24, v0);
        result = *v24;
        v27 = v24[1];
        return result;
      }

      ++v17;
      result = (v23)(v24, v0);
      v15 = v32;
      if (v33 == v17)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return 0xD000000000000018;
  }

  return result;
}

uint64_t static ParameterSuggestionClient.shared.getter()
{
  v0 = type metadata accessor for ParameterSuggestionClient();

  return MEMORY[0x2821FEAF0](v0, &unk_27FE4F9A0);
}

uint64_t sub_260DE0AA8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_260DF5974();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_260DF56E4();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260DE0BC4, 0, 0);
}

uint64_t sub_260DE0BC4()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  sub_260DF5704();
  sub_260DF5674();
  (*(v2 + 8))(v1, v3);
  v8 = sub_260DF5964();
  v10 = v9;
  v0[9] = v9;
  (*(v6 + 8))(v4, v5);
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v11 = sub_260DE06E0();
  v13 = v12;
  v0[10] = v12;
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v14 = v7[7];
  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  v15[1] = sub_260DE0D2C;

  return sub_260DDFC60(v8, v10, v11, v13, v14);
}

uint64_t sub_260DE0D2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_260DE0EE4;
  }

  else
  {
    *(v4 + 104) = a1;
    v7 = sub_260DE0E54;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_260DE0E54()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];

  v5 = v0[1];
  v6 = v0[13];

  return v5(v6);
}

uint64_t sub_260DE0EE4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];

  v5 = v0[1];
  v6 = v0[12];

  return v5();
}

uint64_t sub_260DE0FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 32);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_260DE1848;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_260DE1140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_260DE1848;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t type metadata accessor for ToolInvocationWithContext()
{
  result = qword_27FE4FDB0;
  if (!qword_27FE4FDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260DE1340()
{
  result = sub_260DF5764();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ParameterSuggestionClient.suggestParameterValuesWithRequest(_:)(uint64_t a1)
{
  v4 = *(*v1 + 88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_260DE1568;

  return v8(a1);
}

uint64_t sub_260DE1568(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_260DE1664()
{
  result = qword_27FE4FDC0;
  if (!qword_27FE4FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FDC0);
  }

  return result;
}

uint64_t sub_260DE16C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_260DE1740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50000, &qword_260DF8648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_260DE17A8()
{
  result = qword_27FE4FDD0;
  if (!qword_27FE4FDD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE4FDD0);
  }

  return result;
}

uint64_t sub_260DE17F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_260DE184C()
{
  v0 = sub_260DF55C4();
  __swift_allocate_value_buffer(v0, qword_27FE53CD0);
  __swift_project_value_buffer(v0, qword_27FE53CD0);
  return sub_260DF55B4();
}

Swift::Void __swiftcall SpotlightClientEncodedToolAction.encode(with:)(NSCoder with)
{
  v3 = (v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedTool);
  v4 = *(v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedTool + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_260DE17F4(*v3, *(v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedTool + 8));
    v6 = sub_260DF5394();
    v7 = sub_260DF59B4();
    [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

    sub_260DE1BC8(v5, v4);
  }

  v8 = *(v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedCustomIcon);
  if (v8)
  {
    v9 = v8;
    v10 = sub_260DF59B4();
    [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  }

  v11 = *(v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_toolID);
  v12 = *(v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_toolID + 8);
  v13 = sub_260DF59B4();
  v14 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_bundleID);
  v16 = *(v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_bundleID + 8);
  v17 = sub_260DF59B4();
  v18 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  v19 = *(v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_title);
  v20 = *(v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_title + 8);
  v21 = sub_260DF59B4();
  v22 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];

  v23 = *(v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_uuidString);
  v24 = *(v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_uuidString + 8);
  v25 = sub_260DF59B4();
  v26 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];

  v27 = (v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedSummary);
  v28 = *(v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedSummary + 8);
  if (v28 >> 60 != 15)
  {
    v29 = *v27;
    sub_260DE17F4(*v27, v28);
    v30 = sub_260DF5394();
    v31 = sub_260DF59B4();
    [(objc_class *)with.super.isa encodeObject:v30 forKey:v31];

    sub_260DE1BC8(v29, v28);
  }
}

uint64_t sub_260DE1BC8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_260DD2994(a1, a2);
  }

  return a1;
}

id SpotlightClientEncodedToolAction.init(coder:)(void *a1)
{
  v2 = v1;
  sub_260DDE814(0, &qword_27FE4FE18, 0x277CBEA90);
  v4 = sub_260DF5B84();
  if (v4)
  {
    v5 = v4;
    v6 = sub_260DF53B4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  sub_260DDE814(0, &unk_27FE4FE20, 0x277D79FC8);
  v9 = sub_260DF5B84();
  sub_260DDE814(0, &qword_27FE4FEC0, 0x277CCACA8);
  v10 = sub_260DF5B84();
  if (!v10)
  {
    if (qword_27FE4F988 != -1)
    {
      swift_once();
    }

    v22 = sub_260DF55C4();
    __swift_project_value_buffer(v22, qword_27FE53CD0);
    v23 = sub_260DF55A4();
    v24 = sub_260DF5B64();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_27;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "coder missing toolID";
    goto LABEL_26;
  }

  v11 = v10;
  v12 = sub_260DF5B84();
  if (!v12)
  {

    if (qword_27FE4F988 != -1)
    {
      swift_once();
    }

    v27 = sub_260DF55C4();
    __swift_project_value_buffer(v27, qword_27FE53CD0);
    v23 = sub_260DF55A4();
    v24 = sub_260DF5B64();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_27;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "coder missing bundleID";
    goto LABEL_26;
  }

  v13 = v12;
  v37 = v8;
  v14 = sub_260DF5B84();
  if (!v14)
  {

    if (qword_27FE4F988 != -1)
    {
      swift_once();
    }

    v28 = sub_260DF55C4();
    __swift_project_value_buffer(v28, qword_27FE53CD0);
    v23 = sub_260DF55A4();
    v24 = sub_260DF5B64();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_27;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "coder missing title";
    goto LABEL_26;
  }

  v15 = v14;
  v36 = v6;
  v16 = sub_260DF5B84();
  if (!v16)
  {

    if (qword_27FE4F988 != -1)
    {
      swift_once();
    }

    v29 = sub_260DF55C4();
    __swift_project_value_buffer(v29, qword_27FE53CD0);
    v23 = sub_260DF55A4();
    v24 = sub_260DF5B64();
    v8 = v37;
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_27;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "coder missing uuidString";
LABEL_26:
    _os_log_impl(&dword_260DCE000, v23, v24, v26, v25, 2u);
    MEMORY[0x2666EFFA0](v25, -1, -1);
LABEL_27:
    sub_260DE1BC8(v6, v8);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v34 = v16;
  v17 = sub_260DF5B84();
  v35 = v9;
  if (v17)
  {
    v18 = v17;
    v19 = sub_260DF53B4();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xF000000000000000;
  }

  if (v37 >> 60 == 15)
  {
    v31 = 0;
  }

  else
  {
    sub_260DE17F4(v36, v37);
    v31 = sub_260DF5394();
    sub_260DE1BC8(v36, v37);
  }

  if (v21 >> 60 == 15)
  {
    v32 = 0;
  }

  else
  {
    sub_260DE17F4(v19, v21);
    v32 = sub_260DF5394();
    sub_260DE1BC8(v19, v21);
  }

  v33 = [v2 initWithEncodedTool:v31 encodedCustomIcon:v35 toolID:v11 bundleID:v13 title:v15 uuidString:v34 encodedSummary:v32];
  sub_260DE1BC8(v36, v37);
  sub_260DE1BC8(v19, v21);

  return v33;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t SpotlightClientEncodedToolAction.encodedTool.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedTool);
  sub_260DE3368(v1, *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedTool + 8));
  return v1;
}

void *SpotlightClientEncodedToolAction.encodedCustomIcon.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedCustomIcon);
  v2 = v1;
  return v1;
}

uint64_t SpotlightClientEncodedToolAction.toolID.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_toolID);
  v2 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_toolID + 8);

  return v1;
}

uint64_t SpotlightClientEncodedToolAction.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_bundleID);
  v2 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_bundleID + 8);

  return v1;
}

uint64_t SpotlightClientEncodedToolAction.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_title);
  v2 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_title + 8);

  return v1;
}

id sub_260DE2418(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_260DF59B4();

  return v6;
}

uint64_t SpotlightClientEncodedToolAction.uuidString.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_uuidString);
  v2 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_uuidString + 8);

  return v1;
}

id sub_260DE24BC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *v3;
    sub_260DE17F4(*v3, *(v3 + 8));
    v7 = sub_260DF5394();
    sub_260DE1BC8(v6, v4);
    v5 = v7;
  }

  return v5;
}

uint64_t SpotlightClientEncodedToolAction.encodedSummary.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedSummary);
  sub_260DE3368(v1, *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedSummary + 8));
  return v1;
}

id SpotlightClientEncodedToolAction.__allocating_init(encodedTool:encodedCustomIcon:toolID:bundleID:title:uuidString:encodedSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v21 = objc_allocWithZone(v13);
  v22 = &v21[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedTool];
  *v22 = a1;
  *(v22 + 1) = a2;
  *&v21[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedCustomIcon] = a3;
  v23 = &v21[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_toolID];
  *v23 = a4;
  *(v23 + 1) = a5;
  v24 = &v21[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_bundleID];
  *v24 = a6;
  *(v24 + 1) = a7;
  v25 = &v21[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_title];
  *v25 = a8;
  *(v25 + 1) = a9;
  v26 = &v21[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_uuidString];
  *v26 = a10;
  *(v26 + 1) = a11;
  v27 = &v21[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedSummary];
  *v27 = a12;
  *(v27 + 1) = a13;
  v30.receiver = v21;
  v30.super_class = v13;
  return objc_msgSendSuper2(&v30, sel_init);
}

id SpotlightClientEncodedToolAction.init(encodedTool:encodedCustomIcon:toolID:bundleID:title:uuidString:encodedSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  ObjectType = swift_getObjectType();
  v22 = &v13[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedTool];
  *v22 = a1;
  *(v22 + 1) = a2;
  *&v13[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedCustomIcon] = a3;
  v23 = &v13[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_toolID];
  *v23 = a4;
  *(v23 + 1) = a5;
  v24 = &v13[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_bundleID];
  *v24 = a6;
  *(v24 + 1) = a7;
  v25 = &v13[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_title];
  *v25 = a8;
  *(v25 + 1) = a9;
  v26 = &v13[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_uuidString];
  *v26 = a10;
  *(v26 + 1) = a11;
  v27 = &v13[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedSummary];
  *v27 = a12;
  *(v27 + 1) = a13;
  v30.receiver = v13;
  v30.super_class = ObjectType;
  return objc_msgSendSuper2(&v30, sel_init);
}

id SpotlightClientEncodedToolAction.__allocating_init(encodedTool:toolID:bundleID:title:uuidString:)(uint64_t a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v20 = objc_allocWithZone(v10);
  if (a2 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_260DF5394();
  }

  v13 = sub_260DF59B4();

  v14 = sub_260DF59B4();

  v15 = sub_260DF59B4();

  v16 = sub_260DF59B4();

  v17 = [v20 initWithEncodedTool:v12 encodedCustomIcon:0 toolID:v13 bundleID:v14 title:v15 uuidString:v16 encodedSummary:0];
  sub_260DE1BC8(a1, a2);

  return v17;
}

id SpotlightClientEncodedToolAction.init(encodedTool:toolID:bundleID:title:uuidString:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_260DF5394();
  }

  v5 = sub_260DF59B4();

  v6 = sub_260DF59B4();

  v7 = sub_260DF59B4();

  v8 = sub_260DF59B4();

  v9 = [v11 initWithEncodedTool:v4 encodedCustomIcon:0 toolID:v5 bundleID:v6 title:v7 uuidString:v8 encodedSummary:0];
  sub_260DE1BC8(a1, a2);

  return v9;
}

id SpotlightClientEncodedToolAction.__allocating_init(encodedTool:toolID:bundleID:title:uuidString:encodedSummary:)(uint64_t a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v13 = v12;
  v23 = objc_allocWithZone(v13);
  v25 = a1;
  v26 = a2;
  if (a2 >> 60 == 15)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_260DF5394();
  }

  v16 = sub_260DF59B4();

  v17 = sub_260DF59B4();

  v18 = sub_260DF59B4();

  v19 = sub_260DF59B4();

  if (a12 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    sub_260DE17F4(a11, a12);
    v20 = sub_260DF5394();
    sub_260DE1BC8(a11, a12);
  }

  v21 = [v23 initWithEncodedTool:v24 encodedCustomIcon:0 toolID:v16 bundleID:v17 title:v18 uuidString:v19 encodedSummary:v20];
  sub_260DE1BC8(a11, a12);
  sub_260DE1BC8(v25, v26);

  return v21;
}

id SpotlightClientEncodedToolAction.init(encodedTool:toolID:bundleID:title:uuidString:encodedSummary:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a2 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_260DF5394();
  }

  v12 = sub_260DF59B4();

  v13 = sub_260DF59B4();

  v14 = sub_260DF59B4();

  v15 = sub_260DF59B4();

  if (a12 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    sub_260DE17F4(a11, a12);
    v16 = sub_260DF5394();
    sub_260DE1BC8(a11, a12);
  }

  v17 = [v20 initWithEncodedTool:v19 encodedCustomIcon:0 toolID:v12 bundleID:v13 title:v14 uuidString:v15 encodedSummary:v16];
  sub_260DE1BC8(a11, a12);
  sub_260DE1BC8(a1, a2);

  return v17;
}

id SpotlightClientEncodedToolAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpotlightClientEncodedToolAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_260DE331C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_260DE3368(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_260DE17F4(a1, a2);
  }

  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_260DE3448(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006C6F6FLL;
  v3 = 0x546465646F636E65;
  v4 = a1;
  v5 = 0x6D6954746E657665;
  v6 = 0xEE00706D61745365;
  if (a1 != 5)
  {
    v5 = 0x6574656D61726170;
    v6 = 0xED00007379654B72;
  }

  v7 = 0xE500000000000000;
  v8 = 0x656C746974;
  if (a1 != 3)
  {
    v8 = 0x656C746974627573;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x44496C6F6F74;
  if (a1 != 1)
  {
    v10 = 0x4449656C646E7562;
    v9 = 0xE800000000000000;
  }

  if (!a1)
  {
    v10 = 0x546465646F636E65;
    v9 = 0xEB000000006C6F6FLL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x44496C6F6F74)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x4449656C646E7562)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEE00706D61745365;
        if (v11 != 0x6D6954746E657665)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xED00007379654B72;
        if (v11 != 0x6574656D61726170)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE500000000000000;
      if (v11 != 0x656C746974)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE800000000000000;
    v3 = 0x656C746974627573;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_260DF5DE4();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_260DE3688()
{
  sub_260DF5E54();
  sub_260DF59F4();

  return sub_260DF5E74();
}

uint64_t sub_260DE37C0()
{
  v0 = sub_260DF55C4();
  __swift_allocate_value_buffer(v0, qword_27FE53CE8);
  __swift_project_value_buffer(v0, qword_27FE53CE8);
  return sub_260DF55B4();
}

uint64_t sub_260DE385C()
{
  *v0;
  *v0;
  *v0;
  sub_260DF59F4();
}

uint64_t sub_260DE3988@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_260DEFD3C();
  *a2 = result;
  return result;
}

void sub_260DE39B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006C6F6FLL;
  v4 = 0x546465646F636E65;
  v5 = 0xEE00706D61745365;
  v6 = 0x6D6954746E657665;
  if (v2 != 5)
  {
    v6 = 0x6574656D61726170;
    v5 = 0xED00007379654B72;
  }

  v7 = 0xE500000000000000;
  v8 = 0x656C746974;
  if (v2 != 3)
  {
    v8 = 0x656C746974627573;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x44496C6F6F74;
  if (v2 != 1)
  {
    v10 = 0x4449656C646E7562;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_260DE3AAC()
{
  v1 = *v0;
  v2 = 0x546465646F636E65;
  v3 = 0x6D6954746E657665;
  if (v1 != 5)
  {
    v3 = 0x6574656D61726170;
  }

  v4 = 0x656C746974;
  if (v1 != 3)
  {
    v4 = 0x656C746974627573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x44496C6F6F74;
  if (v1 != 1)
  {
    v5 = 0x4449656C646E7562;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_260DE3B9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_260DEFD3C();
  *a1 = result;
  return result;
}

uint64_t sub_260DE3BD0(uint64_t a1)
{
  v2 = sub_260DED0B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DE3C0C(uint64_t a1)
{
  v2 = sub_260DED0B8();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Void __swiftcall ToolKitActionStreamEvent.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool);
  v4 = *(v1 + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool + 8);
  v5 = sub_260DF5394();
  v6 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___ATXToolKitActionStreamEvent_toolID);
  v8 = *(v1 + OBJC_IVAR___ATXToolKitActionStreamEvent_toolID + 8);
  v9 = sub_260DF59B4();
  v10 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID);
  v12 = *(v1 + OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID + 8);
  v13 = sub_260DF59B4();
  v14 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR___ATXToolKitActionStreamEvent_title);
  v16 = *(v1 + OBJC_IVAR___ATXToolKitActionStreamEvent_title + 8);
  v17 = sub_260DF59B4();
  v18 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  v19 = *(v1 + OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle);
  v20 = *(v1 + OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle + 8);
  v21 = sub_260DF59B4();
  v22 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];

  if (*(v1 + OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys))
  {
    v23 = sub_260DF5A94();
  }

  else
  {
    v23 = 0;
  }

  v24 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];
  swift_unknownObjectRelease();

  v25 = sub_260DF5414();
  v26 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];
}

id ToolKitActionStreamEvent.init(coder:)(NSObject *a1)
{
  v2 = v1;
  v4 = sub_260DF5444();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260DDE814(0, &qword_27FE4FE18, 0x277CBEA90);
  v9 = sub_260DF5B84();
  if (!v9)
  {
    if (qword_27FE4F990 != -1)
    {
      swift_once();
    }

    v24 = sub_260DF55C4();
    __swift_project_value_buffer(v24, qword_27FE53CE8);
    v25 = sub_260DF55A4();
    v26 = sub_260DF5B64();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_260DCE000, v25, v26, "coder missing encodedTool", v27, 2u);
      MEMORY[0x2666EFFA0](v27, -1, -1);
    }

    goto LABEL_40;
  }

  v10 = v9;
  v11 = sub_260DF53B4();
  v13 = v12;

  sub_260DDE814(0, &qword_27FE4FEC0, 0x277CCACA8);
  v14 = sub_260DF5B84();
  if (!v14)
  {
    if (qword_27FE4F990 != -1)
    {
      swift_once();
    }

    v28 = sub_260DF55C4();
    __swift_project_value_buffer(v28, qword_27FE53CE8);
    v25 = sub_260DF55A4();
    v29 = sub_260DF5B64();
    if (os_log_type_enabled(v25, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_260DCE000, v25, v29, "coder missing toolID", v30, 2u);
      MEMORY[0x2666EFFA0](v30, -1, -1);
    }

    v31 = v11;
    goto LABEL_24;
  }

  v15 = v14;
  v68 = v11;
  v16 = sub_260DF5B84();
  if (!v16)
  {

    if (qword_27FE4F990 != -1)
    {
      swift_once();
    }

    v32 = sub_260DF55C4();
    __swift_project_value_buffer(v32, qword_27FE53CE8);
    v25 = sub_260DF55A4();
    v33 = sub_260DF5B64();
    v34 = os_log_type_enabled(v25, v33);
    v35 = v68;
    if (v34)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_260DCE000, v25, v33, "coder missing bundleID", v36, 2u);
      MEMORY[0x2666EFFA0](v36, -1, -1);
    }

    v31 = v35;
LABEL_24:
    v37 = v13;
LABEL_39:
    sub_260DD2994(v31, v37);
LABEL_40:

    swift_getObjectType();
    v49 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v50 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v17 = v16;
  v67 = v13;
  v18 = sub_260DF5B84();
  if (!v18)
  {

    v38 = v67;
    if (qword_27FE4F990 != -1)
    {
      swift_once();
    }

    v39 = sub_260DF55C4();
    __swift_project_value_buffer(v39, qword_27FE53CE8);
    v25 = sub_260DF55A4();
    v40 = sub_260DF5B64();
    v41 = os_log_type_enabled(v25, v40);
    v42 = v68;
    if (!v41)
    {
      goto LABEL_38;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "coder missing title";
    goto LABEL_37;
  }

  v19 = v18;
  v20 = sub_260DF5B84();
  if (!v20)
  {

    if (qword_27FE4F990 != -1)
    {
      swift_once();
    }

    v45 = sub_260DF55C4();
    __swift_project_value_buffer(v45, qword_27FE53CE8);
    v25 = sub_260DF55A4();
    v40 = sub_260DF5B64();
    v46 = os_log_type_enabled(v25, v40);
    v38 = v67;
    v42 = v68;
    if (!v46)
    {
      goto LABEL_38;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "coder missing subtitle";
    goto LABEL_37;
  }

  v21 = v20;
  sub_260DDE814(0, &qword_27FE4FEC8, 0x277CBEA60);
  v66 = sub_260DF5B84();
  if (!v66)
  {

    if (qword_27FE4F990 != -1)
    {
      swift_once();
    }

    v47 = sub_260DF55C4();
    __swift_project_value_buffer(v47, qword_27FE53CE8);
    v25 = sub_260DF55A4();
    v40 = sub_260DF5B64();
    v48 = os_log_type_enabled(v25, v40);
    v38 = v67;
    v42 = v68;
    if (!v48)
    {
      goto LABEL_38;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "coder missing parameterKeys";
LABEL_37:
    _os_log_impl(&dword_260DCE000, v25, v40, v44, v43, 2u);
    MEMORY[0x2666EFFA0](v43, -1, -1);
LABEL_38:
    v31 = v42;
    v37 = v38;
    goto LABEL_39;
  }

  sub_260DDE814(0, &qword_27FE4FED0, 0x277CBEAA8);
  v22 = sub_260DF5B84();
  if (!v22)
  {

    if (qword_27FE4F990 != -1)
    {
      swift_once();
    }

    v52 = sub_260DF55C4();
    __swift_project_value_buffer(v52, qword_27FE53CE8);
    v53 = sub_260DF55A4();
    v54 = sub_260DF5B64();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v67;
    v57 = v68;
    if (v55)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_260DCE000, v53, v54, "coder missing eventTimeStamp", v58, 2u);
      MEMORY[0x2666EFFA0](v58, -1, -1);
    }

    sub_260DD2994(v57, v56);

    v25 = a1;
    a1 = v66;
    goto LABEL_40;
  }

  v23 = v22;
  sub_260DF5424();

  v63 = sub_260DF5394();
  v64 = sub_260DF5414();
  v69 = 0;
  sub_260DF5AA4();
  if (v69)
  {
    v65 = sub_260DF5A94();
  }

  else
  {
    v65 = 0;
  }

  v59 = v2;
  v60 = v63;
  v61 = v64;
  v62 = [v59 initWithEncodedTool:v63 toolID:v15 bundleID:v17 title:v19 subtitle:v21 eventTimeStamp:v64 parameterKeys:v65];
  sub_260DD2994(v68, v67);

  (*(v5 + 8))(v8, v4);
  return v62;
}