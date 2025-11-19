@interface LSGetResumableActivitiesAdministrativeProtocolInterface
@end

@implementation LSGetResumableActivitiesAdministrativeProtocolInterface

void ___LSGetResumableActivitiesAdministrativeProtocolInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283A6CD20];
  v1 = _LSGetResumableActivitiesAdministrativeProtocolInterface_result;
  _LSGetResumableActivitiesAdministrativeProtocolInterface_result = v0;

  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  getSFPeerDeviceClass_0();
  v23 = [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  getSFPeerDeviceClass_0();
  v22 = [v12 setWithObjects:{v13, v14, v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), 0}];
  [_LSGetResumableActivitiesAdministrativeProtocolInterface_result setClasses:v22 forSelector:sel_doCopyAllUUIDsOfType_withCompletionHandler_ argumentIndex:0 ofReply:1];
  [_LSGetResumableActivitiesAdministrativeProtocolInterface_result setClasses:v22 forSelector:sel_doCopyEnabledUUIDsWithCompletionHandler_ argumentIndex:0 ofReply:1];
  [_LSGetResumableActivitiesAdministrativeProtocolInterface_result setClasses:v23 forSelector:sel_doGetPairedDevices_completionHandler_ argumentIndex:0 ofReply:1];
  [_LSGetResumableActivitiesAdministrativeProtocolInterface_result setClasses:v23 forSelector:sel_doGetPairedDevices_completionHandler_ argumentIndex:1 ofReply:1];
}

@end