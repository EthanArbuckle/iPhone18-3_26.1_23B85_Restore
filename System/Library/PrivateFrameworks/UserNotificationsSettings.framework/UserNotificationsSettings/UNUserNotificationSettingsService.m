@interface UNUserNotificationSettingsService
+ (id)clientInterface;
+ (id)serverInterface;
@end

@implementation UNUserNotificationSettingsService

+ (id)clientInterface
{
  if (clientInterface_onceToken != -1)
  {
    +[UNUserNotificationSettingsService clientInterface];
  }

  v3 = clientInterface___interface;

  return v3;
}

void __52__UNUserNotificationSettingsService_clientInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2880A3B10];
  v1 = clientInterface___interface;
  clientInterface___interface = v0;

  v2 = clientInterface___interface;
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_updateNotificationSourcesWithBundleIdentifiers_ argumentIndex:0 ofReply:0];

  v6 = clientInterface___interface;
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:sel_updateNotificationSystemSettings_ argumentIndex:0 ofReply:0];
}

+ (id)serverInterface
{
  if (serverInterface_onceToken != -1)
  {
    +[UNUserNotificationSettingsService serverInterface];
  }

  v3 = serverInterface___interface;

  return v3;
}

void __52__UNUserNotificationSettingsService_serverInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2880A43F8];
  v1 = serverInterface___interface;
  serverInterface___interface = v0;

  v2 = serverInterface___interface;
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_getNotificationSource_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v4 = serverInterface___interface;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [v4 setClasses:v7 forSelector:sel_getNotificationSource_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v8 = serverInterface___interface;
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v8 setClasses:v11 forSelector:sel_getNotificationSources_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v12 = serverInterface___interface;
  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
  [v12 setClasses:v16 forSelector:sel_getNotificationSources_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v17 = serverInterface___interface;
  v18 = MEMORY[0x277CBEB98];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v18 setWithObjects:{v19, v20, v21, objc_opt_class(), 0}];
  [v17 setClasses:v22 forSelector:sel_getNotificationSourcesWithFilter_completionHandler_ argumentIndex:0 ofReply:1];

  v23 = serverInterface___interface;
  v24 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v23 setClasses:v24 forSelector:sel_authorizationWithOptions_forNotificationSourceIdentifier_withCompletionHandler_ argumentIndex:1 ofReply:0];

  v25 = serverInterface___interface;
  v26 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v25 setClasses:v26 forSelector:sel_revokeAuthorizationForNotificationSourceIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v27 = serverInterface___interface;
  v28 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v27 setClasses:v28 forSelector:sel_replaceNotificationSettings_forNotificationSourceIdentifier_ argumentIndex:0 ofReply:0];

  v29 = serverInterface___interface;
  v30 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v29 setClasses:v30 forSelector:sel_replaceNotificationSettings_forNotificationSourceIdentifier_ argumentIndex:1 ofReply:0];

  v31 = serverInterface___interface;
  v32 = MEMORY[0x277CBEB98];
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = [v32 setWithObjects:{v33, v34, objc_opt_class(), 0}];
  [v31 setClasses:v35 forSelector:sel_setSourceSettings_completionHandler_ argumentIndex:0 ofReply:0];

  v36 = serverInterface___interface;
  v37 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v36 setClasses:v37 forSelector:sel_setSourceSettings_completionHandler_ argumentIndex:0 ofReply:1];

  v38 = serverInterface___interface;
  v39 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v38 setClasses:v39 forSelector:sel_replaceNotificationTopicSettings_forNotificationSourceIdentifier_topicIdentifier_ argumentIndex:0 ofReply:0];

  v40 = serverInterface___interface;
  v41 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v40 setClasses:v41 forSelector:sel_replaceNotificationTopicSettings_forNotificationSourceIdentifier_topicIdentifier_ argumentIndex:1 ofReply:0];

  v42 = serverInterface___interface;
  v43 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v42 setClasses:v43 forSelector:sel_replaceNotificationTopicSettings_forNotificationSourceIdentifier_topicIdentifier_ argumentIndex:2 ofReply:0];

  v44 = serverInterface___interface;
  v45 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v44 setClasses:v45 forSelector:sel_getNotificationSettingsForSourceIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v46 = serverInterface___interface;
  v47 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v46 setClasses:v47 forSelector:sel_getNotificationSystemSettingsWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v48 = serverInterface___interface;
  v49 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v48 setClasses:v49 forSelector:sel_setNotificationSystemSettings_ argumentIndex:0 ofReply:0];
}

@end