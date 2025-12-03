@interface PLIdentityServicesAgent
+ (id)entryDefinitionCloudMessaging;
+ (id)entryDefinitionIDSMessageStats;
+ (id)entryDefinitionIDSSocketStats;
+ (id)entryDefinitionLocalInfraWiFiRequests;
+ (id)entryDefinitionLocalLink;
+ (id)entryDefinitionSession;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventPointDefinitionIDSIncomingPushReceived;
+ (id)entryEventPointDefinitionIDSLinkPreferenceRequest;
+ (id)entryEventPointDefinitionIDSLocalMessage;
+ (id)entryEventPointDefinitionIDSOutgoingPushSent;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLIdentityServicesAgent)init;
- (void)createBTAccountingEvents:(id)events;
- (void)createIDSAccountingEventsWithEntries:(id)entries;
- (void)initOperatorDependancies;
- (void)initTaskOperatorDependancies;
- (void)logCloudMessaging:(id)messaging;
- (void)logIDSIncomingPushReceived:(id)received;
- (void)logIDSLinkPreference:(id)preference;
- (void)logIDSNetworkEntries:(id)entries;
- (void)logIDSOutgoingPushSent:(id)sent;
- (void)logIDSSession:(id)session;
- (void)logLocalInfraWiFiFrequests:(id)frequests;
- (void)logLocalLinkType:(unint64_t)type;
- (void)logLocalMessageTopic:(id)topic;
- (void)notifyLinkType:(unint64_t)type;
- (void)setCurrentLinkType;
@end

@implementation PLIdentityServicesAgent

void __51__PLIdentityServicesAgent_initOperatorDependancies__block_invoke_206(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogIDS();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_INFO, "IDS IncomingPushReceived payload %@", &v9, 0xCu);
  }

  [*(a1 + 32) logIDSIncomingPushReceived:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __51__PLIdentityServicesAgent_initOperatorDependancies__block_invoke_198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogIDS();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_INFO, "IDS OutgoingPushSent payload %@", &v9, 0xCu);
  }

  [*(a1 + 32) logIDSOutgoingPushSent:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __51__PLIdentityServicesAgent_initOperatorDependancies__block_invoke_167(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogIDS();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "IDS Local InfraWiFi Request callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logLocalInfraWiFiFrequests:v6];
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)load
{
  v2 = MEMORY[0x277D3F170];
  v3 = objc_opt_class();

  [v2 registerOperator:v3];
}

+ (id)entryEventForwardDefinitions
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"LocalLinkType";
  v2 = +[PLIdentityServicesAgent entryDefinitionLocalLink];
  v10[0] = v2;
  v9[1] = @"LocalInfraWiFiRequests";
  v3 = +[PLIdentityServicesAgent entryDefinitionLocalInfraWiFiRequests];
  v10[1] = v3;
  v9[2] = @"CloudMessaging";
  v4 = +[PLIdentityServicesAgent entryDefinitionCloudMessaging];
  v10[2] = v4;
  v9[3] = @"Session";
  v5 = +[PLIdentityServicesAgent entryDefinitionSession];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryDefinitionLocalLink
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1C128;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"linkType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10 = commonTypeDict_IntegerFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryDefinitionCloudMessaging
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C138;
  v13[1] = MEMORY[0x277CBEC28];
  v12[2] = *MEMORY[0x277D3F580];
  v13[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"IDSClientBringsUpCloudMessaging";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v11 = commonTypeDict_StringFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryDefinitionSession
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_282C1C138;
  v19[1] = MEMORY[0x277CBEC38];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"isInitiator";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v17[0] = commonTypeDict_BoolFormat;
  v16[1] = @"serviceName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v17[1] = commonTypeDict_StringFormat_withBundleID;
  v16[2] = @"state";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v17[2] = commonTypeDict_IntegerFormat;
  v16[3] = @"sessionID";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v17[3] = commonTypeDict_StringFormat;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"IDSMessagePeriodic";
  v2 = +[PLIdentityServicesAgent entryDefinitionIDSMessageStats];
  v7[1] = @"IDSSocketPeriodic";
  v8[0] = v2;
  v3 = +[PLIdentityServicesAgent entryDefinitionIDSSocketStats];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryDefinitionIDSMessageStats
{
  v28[2] = *MEMORY[0x277D85DE8];
  v27[0] = *MEMORY[0x277D3F4E8];
  v25 = *MEMORY[0x277D3F568];
  v26 = &unk_282C1C148;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v28[0] = v22;
  v27[1] = *MEMORY[0x277D3F540];
  v23[0] = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v24[0] = commonTypeDict_DateFormat;
  v23[1] = @"topic";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v24[1] = commonTypeDict_StringFormat;
  v23[2] = @"priority";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v24[2] = commonTypeDict_StringFormat2;
  v23[3] = @"OutgoingBytes";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v24[3] = commonTypeDict_IntegerFormat;
  v23[4] = @"IncomingBytes";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v24[4] = commonTypeDict_IntegerFormat2;
  v23[5] = @"OutgoingMessages";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v24[5] = commonTypeDict_IntegerFormat3;
  v23[6] = @"IncomingMessages";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v24[6] = commonTypeDict_IntegerFormat4;
  v23[7] = @"LinkType";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v24[7] = commonTypeDict_IntegerFormat5;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:8];
  v28[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryDefinitionIDSSocketStats
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v21 = *MEMORY[0x277D3F568];
  v22 = &unk_282C1C138;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v20[0] = commonTypeDict_DateFormat;
  v19[1] = @"topic";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v20[1] = commonTypeDict_StringFormat;
  v19[2] = @"OutgoingBytes";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v20[2] = commonTypeDict_IntegerFormat;
  v19[3] = @"IncomingBytes";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v20[3] = commonTypeDict_IntegerFormat2;
  v19[4] = @"OutgoingPackets";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v20[4] = commonTypeDict_IntegerFormat3;
  v19[5] = @"IncomingPackets";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v20[5] = commonTypeDict_IntegerFormat4;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryDefinitionLocalInfraWiFiRequests
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v15 = *MEMORY[0x277D3F568];
  v16 = &unk_282C1C128;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[0] = v2;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"requestingServices";
  v3 = *MEMORY[0x277D3F5A0];
  v11[0] = *MEMORY[0x277D3F5A8];
  v11[1] = v3;
  v12[0] = &unk_282C113E8;
  v12[1] = &unk_282C11400;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v13[1] = @"reason";
  v14[0] = v4;
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v14[1] = commonTypeDict_StringFormat;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v17[2] = *MEMORY[0x277D3F4B0];
  v18[1] = v7;
  v18[2] = &unk_282C14220;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventPointDefinitions
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"IDSLocalMessage";
  entryEventPointDefinitionIDSLocalMessage = [self entryEventPointDefinitionIDSLocalMessage];
  v11[0] = entryEventPointDefinitionIDSLocalMessage;
  v10[1] = @"IDSLinkPreferenceRequest";
  entryEventPointDefinitionIDSLinkPreferenceRequest = [self entryEventPointDefinitionIDSLinkPreferenceRequest];
  v11[1] = entryEventPointDefinitionIDSLinkPreferenceRequest;
  v10[2] = @"IDSOutgoingPushSent";
  entryEventPointDefinitionIDSOutgoingPushSent = [self entryEventPointDefinitionIDSOutgoingPushSent];
  v11[2] = entryEventPointDefinitionIDSOutgoingPushSent;
  v10[3] = @"IDSIncomingPushReceived";
  entryEventPointDefinitionIDSIncomingPushReceived = [self entryEventPointDefinitionIDSIncomingPushReceived];
  v11[3] = entryEventPointDefinitionIDSIncomingPushReceived;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionIDSLocalMessage
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4B8];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1C158;
  v15[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F4C0];
  v14[2] = *MEMORY[0x277D3F4C8];
  v14[3] = v3;
  v15[2] = &unk_282C11418;
  v15[3] = &unk_282C11418;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v17[0] = v4;
  v16[1] = *MEMORY[0x277D3F540];
  v12 = @"IDSDeviceDidWakeHintTopic";
  v10 = *MEMORY[0x277D3F5A8];
  v11 = &unk_282C11400;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v17[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionIDSLinkPreferenceRequest
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1C138;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"InputBytesPerSecond";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"ServiceName";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v12[1] = commonTypeDict_StringFormat;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventPointDefinitionIDSOutgoingPushSent
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1C128;
  v17[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"CommandContext";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v15[0] = commonTypeDict_IntegerFormat;
  v14[1] = @"CommandID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v15[1] = commonTypeDict_IntegerFormat2;
  v14[2] = @"Topic";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withBundleID];
  v15[2] = commonTypeDict_StringFormat_withBundleID;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionIDSIncomingPushReceived
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1C128;
  v17[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"CommandContext";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v15[0] = commonTypeDict_IntegerFormat;
  v14[1] = @"CommandID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v15[1] = commonTypeDict_IntegerFormat2;
  v14[2] = @"Topic";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withBundleID];
  v15[2] = commonTypeDict_StringFormat_withBundleID;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PLIdentityServicesAgent)init
{
  v11.receiver = self;
  v11.super_class = PLIdentityServicesAgent;
  v2 = [(PLAgent *)&v11 init];
  if (v2)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    initialEntryDate = v2->_initialEntryDate;
    v2->_initialEntryDate = monotonicDate;

    lastLocalDeliveryLogDate = v2->_lastLocalDeliveryLogDate;
    v2->_lastLocalDeliveryLogDate = 0;

    v6 = objc_opt_new();
    previousStatsByPriority = v2->_previousStatsByPriority;
    v2->_previousStatsByPriority = v6;

    v8 = objc_opt_new();
    lastEntryDatePerCategory = v2->_lastEntryDatePerCategory;
    v2->_lastEntryDatePerCategory = v8;
  }

  return v2;
}

- (void)setCurrentLinkType
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = PLLogIDS();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v19) = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "setCurrentLinkType:: setting current linktype", &v19, 2u);
  }

  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];
  v6 = [mEMORY[0x277D2BCF8] deviceIDForNRDevice:getActivePairedDevice];
  v7 = PLLogIDS();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      LOWORD(v19) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "setCurrentLinkType:: initialized companionPeerIdentifier", &v19, 2u);
    }

    v7 = [MEMORY[0x277D2C9C8] newDeviceIdentifierWithBluetoothUUID:v6];
    v9 = PLLogIDS();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (!v7)
    {
      if (v10)
      {
        v19 = 138412290;
        v20 = v6;
        v15 = "setCurrentLinkType:: Failed to create NRDeviceIdentifier for bluetooth UUID %@";
        v16 = v9;
        v17 = 12;
        goto LABEL_18;
      }

LABEL_15:

      goto LABEL_16;
    }

    if (v10)
    {
      LOWORD(v19) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "setCurrentLinkType:: initialized networkRelayIdentifier", &v19, 2u);
    }

    v11 = objc_alloc(MEMORY[0x277D2C9E8]);
    workQueue = [(PLOperator *)self workQueue];
    v13 = [v11 initWithDeviceIdentifier:v7 delegate:self queue:workQueue];
    [(PLIdentityServicesAgent *)self setNrdm:v13];

    nrdm = [(PLIdentityServicesAgent *)self nrdm];

    if (!nrdm)
    {
      v9 = PLLogIDS();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v19) = 0;
        v15 = "setCurrentLinkType:: NRDeviceMonitor init failed";
        v16 = v9;
        v17 = 2;
LABEL_18:
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, v15, &v19, v17);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  else if (v8)
  {
    v19 = 138412290;
    v20 = getActivePairedDevice;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "setCurrentLinkType:: No bluetooth ID from active device %@", &v19, 0xCu);
  }

LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)initOperatorDependancies
{
  [(PLIdentityServicesAgent *)self setCurrentLinkType];
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __51__PLIdentityServicesAgent_initOperatorDependancies__block_invoke;
  v34[3] = &unk_27825A1D8;
  v34[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C17A18 withBlock:v34];
  networkStatsHandler = self->_networkStatsHandler;
  self->_networkStatsHandler = v4;

  v6 = objc_alloc(MEMORY[0x277D3F270]);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __51__PLIdentityServicesAgent_initOperatorDependancies__block_invoke_167;
  v33[3] = &unk_27825A1D8;
  v33[4] = self;
  v7 = [v6 initWithOperator:self withRegistration:&unk_282C17A40 withBlock:v33];
  infraWiFiRequestHandler = self->_infraWiFiRequestHandler;
  self->_infraWiFiRequestHandler = v7;

  v9 = objc_alloc(MEMORY[0x277D3F270]);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __51__PLIdentityServicesAgent_initOperatorDependancies__block_invoke_175;
  v32[3] = &unk_27825A1D8;
  v32[4] = self;
  v10 = [v9 initWithOperator:self withRegistration:&unk_282C17A68 withBlock:v32];
  localLinkTypeHandler = self->_localLinkTypeHandler;
  self->_localLinkTypeHandler = v10;

  v12 = objc_alloc(MEMORY[0x277D3F270]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __51__PLIdentityServicesAgent_initOperatorDependancies__block_invoke_183;
  v31[3] = &unk_27825A1D8;
  v31[4] = self;
  v13 = [v12 initWithOperator:self withRegistration:&unk_282C17A90 withBlock:v31];
  localMessageHandler = self->_localMessageHandler;
  self->_localMessageHandler = v13;

  v15 = objc_alloc(MEMORY[0x277D3F270]);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __51__PLIdentityServicesAgent_initOperatorDependancies__block_invoke_188;
  v30[3] = &unk_27825A1D8;
  v30[4] = self;
  v16 = [v15 initWithOperator:self withRegistration:&unk_282C17AB8 withBlock:v30];
  idsLinkPreferenceRequestHandler = self->_idsLinkPreferenceRequestHandler;
  self->_idsLinkPreferenceRequestHandler = v16;

  v18 = objc_alloc(MEMORY[0x277D3F270]);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __51__PLIdentityServicesAgent_initOperatorDependancies__block_invoke_198;
  v29[3] = &unk_27825A1D8;
  v29[4] = self;
  v19 = [v18 initWithOperator:self withRegistration:&unk_282C17AE0 withBlock:v29];
  idsOutgoingPushSentListener = self->_idsOutgoingPushSentListener;
  self->_idsOutgoingPushSentListener = v19;

  v21 = objc_alloc(MEMORY[0x277D3F270]);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __51__PLIdentityServicesAgent_initOperatorDependancies__block_invoke_206;
  v28[3] = &unk_27825A1D8;
  v28[4] = self;
  v22 = [v21 initWithOperator:self withRegistration:&unk_282C17B08 withBlock:v28];
  idsIncomingPushReceivedListener = self->_idsIncomingPushReceivedListener;
  self->_idsIncomingPushReceivedListener = v22;

  v24 = objc_alloc(MEMORY[0x277D3F270]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __51__PLIdentityServicesAgent_initOperatorDependancies__block_invoke_214;
  v27[3] = &unk_27825A1D8;
  v27[4] = self;
  v25 = [v24 initWithOperator:self withRegistration:&unk_282C17B30 withBlock:v27];
  idsSessionListener = self->_idsSessionListener;
  self->_idsSessionListener = v25;
}

void __51__PLIdentityServicesAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogIDS();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "IDS Local Network Stats callback recieved payload %@", &v9, 0xCu);
  }

  [*(a1 + 32) logIDSNetworkEntries:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __51__PLIdentityServicesAgent_initOperatorDependancies__block_invoke_175(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [v6 objectForKey:@"IDSLinkType"];

  if (v7)
  {
    v8 = PLLogIDS();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "IDS Local Link callback: %@", &v12, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = [v6 objectForKey:@"IDSLinkType"];
    [v9 logLocalLinkType:{objc_msgSend(v10, "integerValue")}];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __51__PLIdentityServicesAgent_initOperatorDependancies__block_invoke_183(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogIDS();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "IDS Local Message Received callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logLocalMessageTopic:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __51__PLIdentityServicesAgent_initOperatorDependancies__block_invoke_188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogIDS();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "IDSLinkPreferenceRequest payload %@", &v9, 0xCu);
  }

  [*(a1 + 32) logIDSLinkPreference:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __51__PLIdentityServicesAgent_initOperatorDependancies__block_invoke_214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogIDS();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "IDSDSession payload %@", &v9, 0xCu);
  }

  [*(a1 + 32) logIDSSession:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initTaskOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__PLIdentityServicesAgent_initTaskOperatorDependancies__block_invoke;
  v6[3] = &unk_27825A1D8;
  v6[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C17B58 withBlock:v6];
  cloudMessagingHandler = self->_cloudMessagingHandler;
  self->_cloudMessagingHandler = v4;
}

void __55__PLIdentityServicesAgent_initTaskOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogIDS();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Force Cloud Messaging callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logCloudMessaging:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)logLocalMessageTopic:(id)topic
{
  v4 = *MEMORY[0x277D3F5E8];
  topicCopy = topic;
  v7 = [(PLOperator *)PLIdentityServicesAgent entryKeyForType:v4 andName:@"IDSLocalMessage"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:topicCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logIDSLinkPreference:(id)preference
{
  v4 = *MEMORY[0x277D3F5E8];
  preferenceCopy = preference;
  v8 = [(PLOperator *)PLIdentityServicesAgent entryKeyForType:v4 andName:@"IDSLinkPreferenceRequest"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:preferenceCopy];
  v7 = [preferenceCopy objectForKey:@"InputBytesPerSecond"];

  if (!v7)
  {
    [v6 setObject:&unk_282C11460 forKeyedSubscript:@"InputBytesPerSecond"];
  }

  [(PLOperator *)self logEntry:v6];
}

- (void)logIDSOutgoingPushSent:(id)sent
{
  v4 = *MEMORY[0x277D3F5E8];
  sentCopy = sent;
  v7 = [(PLOperator *)PLIdentityServicesAgent entryKeyForType:v4 andName:@"IDSOutgoingPushSent"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:sentCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logIDSIncomingPushReceived:(id)received
{
  v4 = *MEMORY[0x277D3F5E8];
  receivedCopy = received;
  v7 = [(PLOperator *)PLIdentityServicesAgent entryKeyForType:v4 andName:@"IDSIncomingPushReceived"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:receivedCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logIDSSession:(id)session
{
  v4 = *MEMORY[0x277D3F5D0];
  sessionCopy = session;
  v7 = [(PLOperator *)PLIdentityServicesAgent entryKeyForType:v4 andName:@"Session"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:sessionCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logCloudMessaging:(id)messaging
{
  messagingCopy = messaging;
  v5 = messagingCopy;
  if (messagingCopy && ([messagingCopy objectForKeyedSubscript:@"IDSClientBringsUpCloudMessaging"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [(PLOperator *)PLIdentityServicesAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"CloudMessaging"];
    v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];
    [(PLOperator *)self logEntry:v8];
  }

  else
  {
    v9 = PLLogIDS();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Payload invalid for Cloud Messaging", v10, 2u);
    }
  }
}

- (void)logLocalLinkType:(unint64_t)type
{
  v7 = [(PLOperator *)PLIdentityServicesAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LocalLinkType"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [v5 setObject:v6 forKeyedSubscript:@"linkType"];

  [(PLOperator *)self logEntry:v5];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    [(PLIdentityServicesAgent *)self createBTAccountingEvents:v5];
  }
}

- (void)notifyLinkType:(unint64_t)type
{
  out_token = 0;
  notify_register_check([@"PLIDSStatusChangedNotification" UTF8String], &out_token);
  notify_set_state(out_token, type);
  notify_post([@"PLIDSStatusChangedNotification" UTF8String]);
  notify_cancel(out_token);
}

- (void)logLocalInfraWiFiFrequests:(id)frequests
{
  v4 = *MEMORY[0x277D3F5D0];
  frequestsCopy = frequests;
  v10 = [(PLOperator *)PLIdentityServicesAgent entryKeyForType:v4 andName:@"LocalInfraWiFiRequests"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v7 = [frequestsCopy objectForKeyedSubscript:@"IDSServicePrefersInfraWifi"];
  allObjects = [v7 allObjects];
  [v6 setObject:allObjects forKeyedSubscript:@"requestingServices"];

  v9 = [frequestsCopy objectForKeyedSubscript:@"Reason"];

  [v6 setObject:v9 forKeyedSubscript:@"reason"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logIDSNetworkEntries:(id)entries
{
  v167 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v5 = [entriesCopy objectForKeyedSubscript:@"IDSLocalStatisticsCategory"];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  previousStatsByPriority = [(PLIdentityServicesAgent *)self previousStatsByPriority];
  v7 = [previousStatsByPriority objectForKeyedSubscript:v5];

  v146 = v7;
  if (!v7)
  {
    v8 = objc_opt_new();
    previousStatsByPriority2 = [(PLIdentityServicesAgent *)self previousStatsByPriority];
    v146 = v8;
    [previousStatsByPriority2 setObject:v8 forKeyedSubscript:v5];
  }

  v10 = [v5 isEqualToString:@"Sockets"];
  v127 = objc_opt_new();
  v11 = *MEMORY[0x277D3F5D8];
  v129 = v5;
  selfCopy = self;
  v126 = entriesCopy;
  if (!v10)
  {
    v128 = [(PLOperator *)PLIdentityServicesAgent entryKeyForType:v11 andName:@"IDSMessagePeriodic"];
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v71 = entriesCopy;
    v72 = [v71 countByEnumeratingWithState:&v151 objects:v161 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v152;
      v142 = *v152;
      do
      {
        v75 = 0;
        v144 = v73;
        do
        {
          if (*v152 != v74)
          {
            objc_enumerationMutation(v71);
          }

          v76 = *(*(&v151 + 1) + 8 * v75);
          if (([v76 isEqualToString:@"IDSLocalStatisticsCategory"] & 1) == 0 && (objc_msgSend(v76, "containsString:", @"__pl_internal") & 1) == 0)
          {
            v77 = [v71 objectForKeyedSubscript:v76];
            v78 = objc_opt_respondsToSelector();

            if (v78)
            {
              lastEntryDatePerCategory = [(PLIdentityServicesAgent *)self lastEntryDatePerCategory];
              initialEntryDate = [lastEntryDatePerCategory objectForKeyedSubscript:v5];

              if (!initialEntryDate)
              {
                initialEntryDate = [(PLIdentityServicesAgent *)self initialEntryDate];
              }

              v148 = initialEntryDate;
              v81 = objc_opt_new();
              v82 = [v71 objectForKeyedSubscript:v76];
              v83 = [v82 objectForKeyedSubscript:@"IDSLocalOutgoingMessageBytes"];
              [v81 setObject:v83 atIndexedSubscript:0];

              v84 = [v71 objectForKeyedSubscript:v76];
              v85 = [v84 objectForKeyedSubscript:@"IDSLocalIncomingMessageBytes"];
              [v81 setObject:v85 atIndexedSubscript:1];

              v86 = [v71 objectForKeyedSubscript:v76];
              v87 = [v86 objectForKeyedSubscript:@"IDSLocalOutgoingMessages"];
              [v81 setObject:v87 atIndexedSubscript:2];

              v88 = [v71 objectForKeyedSubscript:v76];
              v89 = [v88 objectForKeyedSubscript:@"IDSLocalIncomingMessages"];
              [v81 setObject:v89 atIndexedSubscript:3];

              v90 = [v146 objectForKeyedSubscript:v76];
              [v146 setObject:v81 forKeyedSubscript:v76];
              v150 = v90;
              if (v90 && v81)
              {
                v91 = v81;
                v92 = [v90 objectAtIndexedSubscript:0];
                unsignedLongValue = [v92 unsignedLongValue];

                v94 = [v91 objectAtIndexedSubscript:0];

                unsignedLongValue2 = [v94 unsignedLongValue];
                v95 = unsignedLongValue2 >= unsignedLongValue ? unsignedLongValue : 0;
                v137 = v95;
                v96 = v91;
                v97 = [v150 objectAtIndexedSubscript:1];
                unsignedLongValue3 = [v97 unsignedLongValue];

                v99 = [v96 objectAtIndexedSubscript:1];

                unsignedLongValue4 = [v99 unsignedLongValue];
                v100 = unsignedLongValue4 >= unsignedLongValue3 ? unsignedLongValue3 : 0;
                v135 = v100;
                v101 = v96;
                v102 = [v150 objectAtIndexedSubscript:2];
                unsignedLongValue5 = [v102 unsignedLongValue];

                v104 = [v101 objectAtIndexedSubscript:2];

                unsignedLongValue6 = [v104 unsignedLongValue];
                v106 = unsignedLongValue6 >= unsignedLongValue5 ? unsignedLongValue5 : 0;
                v131 = v106;
                v107 = v101;
                v108 = [v150 objectAtIndexedSubscript:3];
                unsignedLongValue7 = [v108 unsignedLongValue];

                v110 = [v107 objectAtIndexedSubscript:3];

                unsignedLongValue8 = [v110 unsignedLongValue];
                self = selfCopy;
                v112 = unsignedLongValue8 >= unsignedLongValue7 ? unsignedLongValue7 : 0;
                v5 = v129;
                v113 = unsignedLongValue2 - v137;
                if (unsignedLongValue2 != v137 || unsignedLongValue4 != v135 || unsignedLongValue6 != v131 || unsignedLongValue8 != v112)
                {
                  v140 = unsignedLongValue8 - v112;
                  v114 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v128 withDate:v148];
                  [v114 setObject:v76 forKeyedSubscript:@"topic"];
                  [v114 setObject:v129 forKeyedSubscript:@"priority"];
                  v115 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v113];
                  [v114 setObject:v115 forKeyedSubscript:@"OutgoingBytes"];

                  v135 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongValue4 - v135];
                  [v114 setObject:v135 forKeyedSubscript:@"IncomingBytes"];

                  v131 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongValue6 - v131];
                  [v114 setObject:v131 forKeyedSubscript:@"OutgoingMessages"];

                  v118 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v140];
                  [v114 setObject:v118 forKeyedSubscript:@"IncomingMessages"];

                  [v114 setObject:monotonicDate forKeyedSubscript:@"timestampEnd"];
                  v119 = [v71 objectForKeyedSubscript:v76];
                  v120 = [v119 objectForKeyedSubscript:@"IDSLocalLinkType"];
                  [v114 setObject:v120 forKeyedSubscript:@"LinkType"];

                  self = selfCopy;
                  [v127 addObject:v114];
                }
              }

              v74 = v142;
              v73 = v144;
              v121 = v148;
            }

            else
            {
              v121 = PLLogIDS();
              if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
              {
                v122 = [v71 objectForKeyedSubscript:v76];
                *buf = 138412290;
                v165 = v122;
                _os_log_debug_impl(&dword_21A4C6000, v121, OS_LOG_TYPE_DEBUG, "Key %@ does not support objectForKeyedSubscript", buf, 0xCu);
              }
            }
          }

          ++v75;
        }

        while (v73 != v75);
        v73 = [v71 countByEnumeratingWithState:&v151 objects:v161 count:16];
      }

      while (v73);
    }

    v69 = v127;
    v159 = v128;
    v160 = v127;
    v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
    [(PLOperator *)self logEntries:v123 withGroupID:v128];

    if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  v128 = [(PLOperator *)PLIdentityServicesAgent entryKeyForType:v11 andName:@"IDSSocketPeriodic"];
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v12 = entriesCopy;
  v13 = [v12 countByEnumeratingWithState:&v155 objects:v166 count:16];
  if (!v13)
  {
    goto LABEL_46;
  }

  v14 = v13;
  v15 = *v156;
  v149 = *v156;
  do
  {
    v16 = 0;
    v132 = v14;
    do
    {
      if (*v156 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v155 + 1) + 8 * v16);
      if (([v17 isEqualToString:@"IDSLocalStatisticsCategory"] & 1) == 0 && (objc_msgSend(v17, "containsString:", @"__pl_internal") & 1) == 0)
      {
        v18 = [v12 objectForKeyedSubscript:v17];
        v19 = objc_opt_respondsToSelector();

        if (v19)
        {
          v20 = objc_opt_new();
          v21 = [v12 objectForKeyedSubscript:v17];
          v22 = [v21 objectForKeyedSubscript:@"IDSLocalOutgoingSocketBytes"];
          [v20 setObject:v22 atIndexedSubscript:0];

          v23 = [v12 objectForKeyedSubscript:v17];
          v24 = [v23 objectForKeyedSubscript:@"IDSLocalIncomingSocketBytes"];
          [v20 setObject:v24 atIndexedSubscript:1];

          v25 = [v12 objectForKeyedSubscript:v17];
          v26 = [v25 objectForKeyedSubscript:@"IDSLocalOutgoingSocketPackets"];
          [v20 setObject:v26 atIndexedSubscript:2];

          v27 = [v12 objectForKeyedSubscript:v17];
          v28 = [v27 objectForKeyedSubscript:@"IDSLocalIncomingSocketPackets"];
          [v20 setObject:v28 atIndexedSubscript:3];

          v29 = [v146 objectForKeyedSubscript:v17];
          [v146 setObject:v20 forKeyedSubscript:v17];
          lastLocalDeliveryLogDate3 = 0;
          if (v29 && v20)
          {
            if ([v17 isEqualToString:@"localdelivery"])
            {
              lastLocalDeliveryLogDate = [(PLIdentityServicesAgent *)self lastLocalDeliveryLogDate];
              if (lastLocalDeliveryLogDate)
              {
                v32 = lastLocalDeliveryLogDate;
                lastLocalDeliveryLogDate2 = [(PLIdentityServicesAgent *)self lastLocalDeliveryLogDate];
                [monotonicDate timeIntervalSinceDate:lastLocalDeliveryLogDate2];
                v35 = fabs(v34);

                if (v35 < 600.0)
                {
                  lastLocalDeliveryLogDate3 = 0;
                  goto LABEL_42;
                }
              }

              lastLocalDeliveryLogDate3 = [(PLIdentityServicesAgent *)self lastLocalDeliveryLogDate];
              [(PLIdentityServicesAgent *)self setLastLocalDeliveryLogDate:monotonicDate];
            }

            else
            {
              lastEntryDatePerCategory2 = [(PLIdentityServicesAgent *)self lastEntryDatePerCategory];
              lastLocalDeliveryLogDate3 = [lastEntryDatePerCategory2 objectForKeyedSubscript:v129];
            }

            v38 = v20;
            v39 = [v29 objectAtIndexedSubscript:0];
            unsignedLongValue9 = [v39 unsignedLongValue];

            v41 = [v38 objectAtIndexedSubscript:0];

            unsignedLongValue10 = [v41 unsignedLongValue];
            if (unsignedLongValue10 >= unsignedLongValue9)
            {
              v42 = unsignedLongValue9;
            }

            else
            {
              v42 = 0;
            }

            v138 = v42;
            v43 = v38;
            v44 = [v29 objectAtIndexedSubscript:1];
            unsignedLongValue11 = [v44 unsignedLongValue];

            v46 = [v43 objectAtIndexedSubscript:1];

            unsignedLongValue12 = [v46 unsignedLongValue];
            if (unsignedLongValue12 >= unsignedLongValue11)
            {
              v47 = unsignedLongValue11;
            }

            else
            {
              v47 = 0;
            }

            v136 = v47;
            v48 = v43;
            v49 = [v29 objectAtIndexedSubscript:2];
            unsignedLongValue13 = [v49 unsignedLongValue];

            v51 = [v48 objectAtIndexedSubscript:2];

            unsignedLongValue14 = [v51 unsignedLongValue];
            if (unsignedLongValue14 >= unsignedLongValue13)
            {
              v53 = unsignedLongValue13;
            }

            else
            {
              v53 = 0;
            }

            v147 = v53;
            v54 = v48;
            v143 = v29;
            v55 = [v29 objectAtIndexedSubscript:3];
            unsignedLongValue15 = [v55 unsignedLongValue];

            v57 = [v54 objectAtIndexedSubscript:3];

            unsignedLongValue16 = [v57 unsignedLongValue];
            if (unsignedLongValue16 >= unsignedLongValue15)
            {
              v59 = unsignedLongValue15;
            }

            else
            {
              v59 = 0;
            }

            v60 = v136;
            if (unsignedLongValue10 != v138 || unsignedLongValue12 != v136 || unsignedLongValue14 != v147 || unsignedLongValue16 != v59)
            {
              if (!lastLocalDeliveryLogDate3)
              {
                initialEntryDate2 = [(PLIdentityServicesAgent *)selfCopy initialEntryDate];
                v60 = v136;
                lastLocalDeliveryLogDate3 = initialEntryDate2;
              }

              v62 = unsignedLongValue12 - v60;
              v63 = unsignedLongValue16 - v59;
              v64 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v128 withDate:lastLocalDeliveryLogDate3];
              [v64 setObject:v17 forKeyedSubscript:@"topic"];
              v138 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongValue10 - v138];
              [v64 setObject:v138 forKeyedSubscript:@"OutgoingBytes"];

              v66 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v62];
              [v64 setObject:v66 forKeyedSubscript:@"IncomingBytes"];

              v147 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongValue14 - v147];
              [v64 setObject:v147 forKeyedSubscript:@"OutgoingPackets"];

              v68 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63];
              [v64 setObject:v68 forKeyedSubscript:@"IncomingPackets"];

              [v64 setObject:monotonicDate forKeyedSubscript:@"timestampEnd"];
              [v127 addObject:v64];
            }

            v29 = v143;
            self = selfCopy;
            v14 = v132;
          }

LABEL_42:

          v15 = v149;
        }

        else
        {
          lastLocalDeliveryLogDate3 = PLLogIDS();
          if (os_log_type_enabled(lastLocalDeliveryLogDate3, OS_LOG_TYPE_DEBUG))
          {
            v36 = [v12 objectForKeyedSubscript:v17];
            *buf = 138412290;
            v165 = v36;
            _os_log_debug_impl(&dword_21A4C6000, lastLocalDeliveryLogDate3, OS_LOG_TYPE_DEBUG, "IDS Sockets - Key %@ does not support objectForKeyedSubscript", buf, 0xCu);
          }
        }
      }

      ++v16;
    }

    while (v14 != v16);
    v14 = [v12 countByEnumeratingWithState:&v155 objects:v166 count:16];
  }

  while (v14);
LABEL_46:

  v69 = v127;
  v162 = v128;
  v163 = v127;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
  [(PLOperator *)self logEntries:v70 withGroupID:v128];

  v5 = v129;
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    goto LABEL_85;
  }

LABEL_84:
  [(PLIdentityServicesAgent *)self createIDSAccountingEventsWithEntries:v69];
LABEL_85:

  lastEntryDatePerCategory3 = [(PLIdentityServicesAgent *)self lastEntryDatePerCategory];
  [lastEntryDatePerCategory3 setObject:monotonicDate forKeyedSubscript:v5];

  v125 = *MEMORY[0x277D85DE8];
}

- (void)createBTAccountingEvents:(id)events
{
  eventsCopy = events;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v3 = [eventsCopy objectForKey:@"linkType"];
    integerValue = [v3 integerValue];

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    entryDate = [eventsCopy entryDate];
    if (integerValue == 1)
    {
      [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:8 withAddingChildNodeName:@"IDSWatchBT" withStartDate:entryDate];
    }

    else
    {
      [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:8 withRemovingChildNodeName:@"IDSWatchBT" withStartDate:entryDate];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)createIDSAccountingEventsWithEntries:(id)entries
{
  v47 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if (entriesCopy && (isHomePod & 1) == 0 && [entriesCopy count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v6 = entriesCopy;
    v7 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
    allKeys = v6;
    if (v7)
    {
      v9 = v7;
      v36 = entriesCopy;
      v10 = *v42;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:@"topic"];
          v15 = v14;
          if (v14 && ([v14 isEqualToString:@"localdelivery"] & 1) == 0)
          {
            v16 = [v13 objectForKeyedSubscript:@"OutgoingBytes"];
            [v16 doubleValue];
            v18 = v17;
            v19 = [v13 objectForKeyedSubscript:@"IncomingBytes"];
            [v19 doubleValue];
            v21 = v18 + v20;

            v11 = v11 + v21;
            v22 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
            [dictionary setObject:v22 forKeyedSubscript:v15];
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v9);

      entriesCopy = v36;
      if (v11 <= 0.0)
      {
        goto LABEL_23;
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      allKeys = [dictionary allKeys];
      v23 = [allKeys countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v38;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v38 != v25)
            {
              objc_enumerationMutation(allKeys);
            }

            v27 = *(*(&v37 + 1) + 8 * j);
            v28 = [dictionary objectForKeyedSubscript:v27];
            [v28 doubleValue];
            v30 = v29;

            v31 = [MEMORY[0x277CCABB0] numberWithDouble:v30 / v11];
            [dictionary setObject:v31 forKeyedSubscript:v27];
          }

          v24 = [allKeys countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v24);
      }
    }

LABEL_23:
    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    firstObject = [v6 firstObject];
    v34 = [firstObject objectForKeyedSubscript:@"timestampEnd"];
    [mEMORY[0x277D3F0C0] createDistributionEventBackwardWithDistributionID:31 withChildNodeNameToWeight:dictionary withEndDate:v34];
  }

  v35 = *MEMORY[0x277D85DE8];
}

@end