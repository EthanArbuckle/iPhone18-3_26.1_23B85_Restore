@interface TVRCXPCProtocolManager
+ (id)requestInterface;
+ (id)responseInterface;
@end

@implementation TVRCXPCProtocolManager

+ (id)requestInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287E71790];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_fetchActiveMREndpointUIDWithCompletion_ argumentIndex:0 ofReply:1];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_sendEvent_toDeviceWithIdentifier_options_response_ argumentIndex:2 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_sendEvent_toDeviceWithIdentifier_options_response_ argumentIndex:0 ofReply:1];
  v7 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v2 setClasses:v7 forSelector:sel_playItem_deviceIdentifier_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)responseInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287E79698];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_deviceUpdatedState_ argumentIndex:0 ofReply:0];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v2 setClasses:v9 forSelector:sel_deviceQueryUpdatedDiscoveredDevices_ argumentIndex:0 ofReply:0];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v2 setClasses:v12 forSelector:sel_suggestedDevices_ argumentIndex:0 ofReply:0];

  return v2;
}

@end