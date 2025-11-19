@interface REMLog
+ (OS_os_log)account;
+ (OS_os_log)accountPlugin;
+ (OS_os_log)alarmEngine;
+ (OS_os_log)analytics;
+ (OS_os_log)appIntents;
+ (OS_os_log)applicationShortcut;
+ (OS_os_log)autoCategorization;
+ (OS_os_log)changeTracking;
+ (OS_os_log)cloudkit;
+ (OS_os_log)cloudkitCollaboration;
+ (OS_os_log)crdt;
+ (OS_os_log)dataAccess;
+ (OS_os_log)editor;
+ (OS_os_log)housekeepingingActivityScheduler;
+ (OS_os_log)inlineTagAutoConvertEngine;
+ (OS_os_log)intelligentGrocery;
+ (OS_os_log)intelligentReminderExtraction;
+ (OS_os_log)migration;
+ (OS_os_log)notification;
+ (OS_os_log)operationQueue;
+ (OS_os_log)ppt;
+ (OS_os_log)scripting;
+ (OS_os_log)siriKit;
+ (OS_os_log)suggestedAttributes;
+ (OS_os_log)suggestedAttributesAutoTrainer;
+ (OS_os_log)templates;
+ (OS_os_log)timelineEngine;
+ (OS_os_log)ui;
+ (OS_os_log)urgentAlarm;
+ (OS_os_log)userAction;
+ (OS_os_log)utility;
+ (OS_os_log)widget;
+ (OS_os_log)xpc;
+ (id)search;
@end

@implementation REMLog

+ (OS_os_log)utility
{
  if (utility_onceToken != -1)
  {
    +[REMLog utility];
  }

  v3 = utility___log;

  return v3;
}

uint64_t __17__REMLog_utility__block_invoke()
{
  utility___log = os_log_create("com.apple.reminderkit", "utility");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)xpc
{
  if (xpc_onceToken != -1)
  {
    +[REMLog xpc];
  }

  v3 = xpc___log;

  return v3;
}

uint64_t __13__REMLog_xpc__block_invoke()
{
  xpc___log = os_log_create("com.apple.reminderkit", "xpc");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)ui
{
  if (ui_onceToken != -1)
  {
    +[REMLog ui];
  }

  v3 = ui___log;

  return v3;
}

uint64_t __12__REMLog_ui__block_invoke()
{
  ui___log = os_log_create("com.apple.reminderkit", "ui");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)ppt
{
  if (ppt_onceToken != -1)
  {
    +[REMLog ppt];
  }

  v3 = ppt___log;

  return v3;
}

uint64_t __13__REMLog_ppt__block_invoke()
{
  ppt___log = os_log_create("com.apple.reminderkit", "ppt");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)analytics
{
  if (analytics_onceToken != -1)
  {
    +[REMLog analytics];
  }

  v3 = analytics___log;

  return v3;
}

uint64_t __19__REMLog_analytics__block_invoke()
{
  analytics___log = os_log_create("com.apple.reminderkit", "analytics");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)userAction
{
  if (userAction_onceToken != -1)
  {
    +[REMLog userAction];
  }

  v3 = userAction___log;

  return v3;
}

uint64_t __20__REMLog_userAction__block_invoke()
{
  userAction___log = os_log_create("com.apple.reminderkit", "userAction");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)cloudkit
{
  if (cloudkit_onceToken != -1)
  {
    +[REMLog cloudkit];
  }

  v3 = cloudkit___log;

  return v3;
}

+ (OS_os_log)changeTracking
{
  if (changeTracking_onceToken != -1)
  {
    +[REMLog changeTracking];
  }

  v3 = changeTracking___log;

  return v3;
}

uint64_t __24__REMLog_changeTracking__block_invoke()
{
  changeTracking___log = os_log_create("com.apple.reminderkit", "changeTracking");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)editor
{
  if (editor_onceToken != -1)
  {
    +[REMLog editor];
  }

  v3 = editor___log;

  return v3;
}

uint64_t __16__REMLog_editor__block_invoke()
{
  editor___log = os_log_create("com.apple.reminderkit", "editor");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)crdt
{
  if (crdt_onceToken != -1)
  {
    +[REMLog crdt];
  }

  v3 = crdt___log;

  return v3;
}

uint64_t __14__REMLog_crdt__block_invoke()
{
  crdt___log = os_log_create("com.apple.reminderkit", "crdt");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)alarmEngine
{
  if (alarmEngine_onceToken != -1)
  {
    +[REMLog alarmEngine];
  }

  v3 = alarmEngine___log;

  return v3;
}

uint64_t __21__REMLog_alarmEngine__block_invoke()
{
  alarmEngine___log = os_log_create("com.apple.reminderkit", "alarmEngine");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)timelineEngine
{
  if (timelineEngine_onceToken != -1)
  {
    +[REMLog timelineEngine];
  }

  v3 = timelineEngine___log;

  return v3;
}

uint64_t __24__REMLog_timelineEngine__block_invoke()
{
  timelineEngine___log = os_log_create("com.apple.reminderkit", "timelineEngine");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)housekeepingingActivityScheduler
{
  if (housekeepingingActivityScheduler_onceToken != -1)
  {
    +[REMLog housekeepingingActivityScheduler];
  }

  v3 = housekeepingingActivityScheduler___log;

  return v3;
}

uint64_t __42__REMLog_housekeepingingActivityScheduler__block_invoke()
{
  housekeepingingActivityScheduler___log = os_log_create("com.apple.reminderkit", "housekeepingingActivityScheduler");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)suggestedAttributesAutoTrainer
{
  if (suggestedAttributesAutoTrainer_onceToken != -1)
  {
    +[REMLog suggestedAttributesAutoTrainer];
  }

  v3 = suggestedAttributesAutoTrainer___log;

  return v3;
}

uint64_t __40__REMLog_suggestedAttributesAutoTrainer__block_invoke()
{
  suggestedAttributesAutoTrainer___log = os_log_create("com.apple.reminderkit", "suggestedAttributesAutoTrainer");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)inlineTagAutoConvertEngine
{
  if (inlineTagAutoConvertEngine_onceToken != -1)
  {
    +[REMLog inlineTagAutoConvertEngine];
  }

  v3 = inlineTagAutoConvertEngine___log;

  return v3;
}

uint64_t __36__REMLog_inlineTagAutoConvertEngine__block_invoke()
{
  inlineTagAutoConvertEngine___log = os_log_create("com.apple.reminderkit", "inlineTagAutoConvertEngine");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)templates
{
  if (templates_onceToken != -1)
  {
    +[REMLog templates];
  }

  v3 = templates___log;

  return v3;
}

uint64_t __19__REMLog_templates__block_invoke()
{
  templates___log = os_log_create("com.apple.reminderkit", "templates");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)accountPlugin
{
  if (accountPlugin_onceToken != -1)
  {
    +[REMLog accountPlugin];
  }

  v3 = accountPlugin___log;

  return v3;
}

uint64_t __23__REMLog_accountPlugin__block_invoke()
{
  accountPlugin___log = os_log_create("com.apple.reminderkit", "accountPlugin");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)suggestedAttributes
{
  if (suggestedAttributes_onceToken != -1)
  {
    +[REMLog suggestedAttributes];
  }

  v3 = suggestedAttributes___log;

  return v3;
}

uint64_t __29__REMLog_suggestedAttributes__block_invoke()
{
  suggestedAttributes___log = os_log_create("com.apple.reminderkit.store", "suggestedAttributes");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)intelligentGrocery
{
  if (intelligentGrocery_onceToken != -1)
  {
    +[REMLog intelligentGrocery];
  }

  v3 = intelligentGrocery___log;

  return v3;
}

uint64_t __28__REMLog_intelligentGrocery__block_invoke()
{
  intelligentGrocery___log = os_log_create("com.apple.reminderkit.store", "intelligentGrocery");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __18__REMLog_cloudkit__block_invoke()
{
  cloudkit___log = os_log_create("com.apple.reminderkit", "cloudkit");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)cloudkitCollaboration
{
  if (cloudkitCollaboration_onceToken != -1)
  {
    +[REMLog cloudkitCollaboration];
  }

  v3 = cloudkitCollaboration___log;

  return v3;
}

uint64_t __31__REMLog_cloudkitCollaboration__block_invoke()
{
  cloudkitCollaboration___log = os_log_create("com.apple.reminderkit", "cloudkit.collaboration");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)migration
{
  if (migration_onceToken != -1)
  {
    +[REMLog migration];
  }

  v3 = migration___log;

  return v3;
}

uint64_t __19__REMLog_migration__block_invoke()
{
  migration___log = os_log_create("com.apple.reminderkit", "migration");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)dataAccess
{
  if (dataAccess_onceToken != -1)
  {
    +[REMLog dataAccess];
  }

  v3 = dataAccess___log;

  return v3;
}

uint64_t __20__REMLog_dataAccess__block_invoke()
{
  dataAccess___log = os_log_create("com.apple.reminderkit", "dataAccess");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)siriKit
{
  if (siriKit_onceToken != -1)
  {
    +[REMLog siriKit];
  }

  v3 = siriKit___log;

  return v3;
}

uint64_t __17__REMLog_siriKit__block_invoke()
{
  siriKit___log = os_log_create("com.apple.reminderkit", "siriKit");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)appIntents
{
  if (appIntents_onceToken != -1)
  {
    +[REMLog appIntents];
  }

  v3 = appIntents___log;

  return v3;
}

uint64_t __20__REMLog_appIntents__block_invoke()
{
  appIntents___log = os_log_create("com.apple.reminderkit", "appIntents");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)applicationShortcut
{
  if (applicationShortcut_onceToken != -1)
  {
    +[REMLog applicationShortcut];
  }

  v3 = applicationShortcut___log;

  return v3;
}

uint64_t __29__REMLog_applicationShortcut__block_invoke()
{
  applicationShortcut___log = os_log_create("com.apple.reminderkit", "applicationShortcut");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)notification
{
  if (notification_onceToken != -1)
  {
    +[REMLog notification];
  }

  v3 = notification___log;

  return v3;
}

uint64_t __22__REMLog_notification__block_invoke()
{
  notification___log = os_log_create("com.apple.reminderkit", "notification");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)search
{
  if (search_onceToken != -1)
  {
    +[REMLog search];
  }

  v3 = search___log;

  return v3;
}

uint64_t __16__REMLog_search__block_invoke()
{
  search___log = os_log_create("com.apple.reminderkit", "search");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)account
{
  if (account_onceToken != -1)
  {
    +[REMLog account];
  }

  v3 = account___log;

  return v3;
}

uint64_t __17__REMLog_account__block_invoke()
{
  account___log = os_log_create("com.apple.reminderkit", "account");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)scripting
{
  if (scripting_onceToken != -1)
  {
    +[REMLog scripting];
  }

  v3 = scripting___log;

  return v3;
}

uint64_t __19__REMLog_scripting__block_invoke()
{
  scripting___log = os_log_create("com.apple.reminderkit", "scripting");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)autoCategorization
{
  if (autoCategorization_onceToken != -1)
  {
    +[REMLog autoCategorization];
  }

  v3 = autoCategorization___log;

  return v3;
}

uint64_t __28__REMLog_autoCategorization__block_invoke()
{
  autoCategorization___log = os_log_create("com.apple.reminderkit", "autoCategorization");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)intelligentReminderExtraction
{
  if (intelligentReminderExtraction_onceToken != -1)
  {
    +[REMLog intelligentReminderExtraction];
  }

  v3 = intelligentReminderExtraction___log;

  return v3;
}

uint64_t __39__REMLog_intelligentReminderExtraction__block_invoke()
{
  intelligentReminderExtraction___log = os_log_create("com.apple.reminderkit", "intelligentReminderExtraction");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)widget
{
  if (widget_onceToken != -1)
  {
    +[REMLog widget];
  }

  v3 = widget___log;

  return v3;
}

uint64_t __16__REMLog_widget__block_invoke()
{
  widget___log = os_log_create("com.apple.reminderkit", "widget");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)operationQueue
{
  if (operationQueue_onceToken != -1)
  {
    +[REMLog operationQueue];
  }

  v3 = operationQueue___log;

  return v3;
}

uint64_t __24__REMLog_operationQueue__block_invoke()
{
  operationQueue___log = os_log_create("com.apple.reminderkit", "operationQueue");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)urgentAlarm
{
  if (urgentAlarm_onceToken != -1)
  {
    +[REMLog urgentAlarm];
  }

  v3 = urgentAlarm___log;

  return v3;
}

uint64_t __21__REMLog_urgentAlarm__block_invoke()
{
  urgentAlarm___log = os_log_create("com.apple.reminderkit", "urgentAlarm");

  return MEMORY[0x1EEE66BB8]();
}

@end