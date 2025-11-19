@interface MCCSecretAgentInterface
+ (id)XPCInterface;
@end

@implementation MCCSecretAgentInterface

+ (id)XPCInterface
{
  if (XPCInterface_onceToken != -1)
  {
    +[MCCSecretAgentInterface XPCInterface];
  }

  v3 = XPCInterface_interface;

  return v3;
}

void __39__MCCSecretAgentInterface_XPCInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4F41278];
  v1 = XPCInterface_interface;
  XPCInterface_interface = v0;

  v15 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v16 = [v15 setWithObjects:{v14, v13, v12, v11, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  [XPCInterface_interface setClasses:v16 forSelector:sel_getIsSecureEmailEnabledForEmail_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_setIsSecureEmailEnabled_forEmail_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_canSendSecureMessageFrom_to_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_setCanSendSecureMessageFrom_to_canSend_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_generateSSCertificateWithContext_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_listSecItemsWithContext_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_storeSecItemsWithContext_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_signedDataFromContentData_senderEmail_recipientEmails_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_encryptedDataFromContentData_senderEmail_recipientEmails_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_decryptedDataFromContentData_senderEmail_recipientEmail_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_predictCommerceEmailWithContext_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_isModelReadyWithCompletion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_invokeModelDownloadWithCompletion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_registerCategoryRulesCallbackListener_notificationTypes_completion_ argumentIndex:0 ofReply:0];
  [XPCInterface_interface setClasses:v16 forSelector:sel_syncRecategorizationRules_completion_ argumentIndex:0 ofReply:0];
  [XPCInterface_interface setClasses:v16 forSelector:sel_getIABCategoryID_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_getPKCategoryForDomain_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_isPersonalDomain_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_getBlackPearlVersionWithCompletion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_isCategorizationSupportedForLocale_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface setClasses:v16 forSelector:sel_clearAllUserOverridesWithTimestamp_completion_ argumentIndex:0 ofReply:0];
  [XPCInterface_interface setClasses:v16 forSelector:sel_syncNewOldCategoryTimestamps_ argumentIndex:0 ofReply:0];
}

@end