@interface PLPushAgent
+ (BOOL)isHighPriorityPushEntry:(id)a3;
+ (id)bundleIdFromTopic:(id)a3;
+ (id)entryAggregateDefinitionAPSDConnected;
+ (id)entryAggregateDefinitionSentKeepAlive;
+ (id)entryAggregateDefinitionSentPushes;
+ (id)entryAggregateDefinitionSuppressedPushes;
+ (id)entryAggregateDefinitions;
+ (id)entryEventPointDefinitionIncomingPushProxyMessages;
+ (id)entryEventPointDefinitionMessage;
+ (id)entryEventPointDefinitionOutgoingPushProxyMessages;
+ (id)entryEventPointDefinitions;
+ (id)entryEventPointDefinitionsAPSDConnectedEvent;
+ (id)entryEventPointDefinitionsReceivedKeepAlive;
+ (id)entryEventPointDefinitionsReceivedPush;
+ (id)entryEventPointDefinitionsSentKeepAlive;
+ (id)entryEventPointDefinitionsSentPush;
+ (id)replaceConnectionTypeWithEnum:(id)a3;
+ (void)load;
- (PLPushAgent)init;
- (unint64_t)convertMessageProtocol:(id)a3;
- (void)accountReceivedPushWithEntry:(id)a3;
- (void)checkPushUsage:(id)a3 withPLEntry:(id)a4;
- (void)handleMessageEvent:(id)a3 isSentEvent:(BOOL)a4;
- (void)initOperatorDependancies;
- (void)logAggregateSentKeepAlive:(id)a3;
- (void)logAggregateSuppressedPushes:(id)a3;
- (void)logEventPointReceivedKeepAlive:(id)a3;
- (void)logPushProxyMessages:(id)a3 forMessageType:(id)a4;
- (void)sendEnergyIssueSignatureNotification:(id)a3 withThreshold:(double)a4;
@end

@implementation PLPushAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLPushAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v16[9] = *MEMORY[0x277D85DE8];
  v3 = [a1 entryEventPointDefinitionsReceivedPush];
  v16[0] = v3;
  v15[1] = @"SentPush";
  v4 = [a1 entryEventPointDefinitionsSentPush];
  v16[1] = v4;
  v15[2] = @"APSDConnectedEvent";
  v5 = [a1 entryEventPointDefinitionsAPSDConnectedEvent];
  v16[2] = v5;
  v15[3] = @"SentKeepAlive";
  v6 = [a1 entryEventPointDefinitionsSentKeepAlive];
  v16[3] = v6;
  v15[4] = @"ReceivedKeepAlive";
  v7 = [a1 entryEventPointDefinitionsReceivedKeepAlive];
  v16[4] = v7;
  v15[5] = @"MessageSent";
  v8 = [a1 entryEventPointDefinitionMessageSent];
  v16[5] = v8;
  v15[6] = @"MessageReceived";
  v9 = [a1 entryEventPointDefinitionMessageReceived];
  v16[6] = v9;
  v15[7] = @"IncomingProxyMessages";
  v10 = [a1 entryEventPointDefinitionIncomingPushProxyMessages];
  v16[7] = v10;
  v15[8] = @"OutgoingProxyMessages";
  v11 = [a1 entryEventPointDefinitionOutgoingPushProxyMessages];
  v16[8] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:9];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionsReceivedPush
{
  v46[2] = *MEMORY[0x277D85DE8];
  v45[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v43[0] = *MEMORY[0x277D3F568];
  v43[1] = v2;
  v44[0] = &unk_28714B458;
  v44[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F4A0];
  v43[2] = *MEMORY[0x277D3F4D8];
  v43[3] = v3;
  v44[2] = MEMORY[0x277CBEC38];
  v44[3] = MEMORY[0x277CBEC38];
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];
  v46[0] = v40;
  v45[1] = *MEMORY[0x277D3F540];
  v41[0] = @"ConnectionType";
  v39 = [MEMORY[0x277D3F198] sharedInstance];
  v38 = [v39 commonTypeDict_StringFormat];
  v42[0] = v38;
  v41[1] = @"ServerHostname";
  v37 = [MEMORY[0x277D3F198] sharedInstance];
  v36 = [v37 commonTypeDict_StringFormat];
  v42[1] = v36;
  v41[2] = @"ServerIP";
  v35 = [MEMORY[0x277D3F198] sharedInstance];
  v34 = [v35 commonTypeDict_StringFormat];
  v42[2] = v34;
  v41[3] = @"LinkQuality";
  v33 = [MEMORY[0x277D3F198] sharedInstance];
  v32 = [v33 commonTypeDict_IntegerFormat];
  v42[3] = v32;
  v41[4] = @"MessageIdentifier";
  v31 = [MEMORY[0x277D3F198] sharedInstance];
  v30 = [v31 commonTypeDict_IntegerFormat];
  v42[4] = v30;
  v41[5] = @"Topic";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_StringFormat];
  v42[5] = v28;
  v41[6] = @"BundleID";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_StringFormat_withBundleID];
  v42[6] = v26;
  v41[7] = @"IsDropped";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_IntegerFormat];
  v42[7] = v24;
  v41[8] = @"Priority";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_IntegerFormat];
  v42[8] = v22;
  v41[9] = @"StorageFlag";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_BoolFormat];
  v42[9] = v20;
  v41[10] = @"Size";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v42[10] = v18;
  v41[11] = @"FilterList";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v42[11] = v16;
  v41[12] = @"DidWake";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v42[12] = v5;
  v41[13] = @"PushType";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v42[13] = v7;
  v41[14] = @"IsOffloadEvent";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_BoolFormat];
  v42[14] = v9;
  v41[15] = @"TimestampEvent";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_DateFormat];
  v42[15] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:16];
  v46[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventPointDefinitionsSentPush
{
  v33[2] = *MEMORY[0x277D85DE8];
  v32[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v30[0] = *MEMORY[0x277D3F568];
  v30[1] = v2;
  v31[0] = &unk_28714B468;
  v31[1] = MEMORY[0x277CBEC38];
  v30[2] = *MEMORY[0x277D3F550];
  v31[2] = MEMORY[0x277CBEC28];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v33[0] = v27;
  v32[1] = *MEMORY[0x277D3F540];
  v28[0] = @"ConnectionType";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v29[0] = v25;
  v28[1] = @"ServerHostname";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_StringFormat];
  v29[1] = v23;
  v28[2] = @"ServerIP";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_StringFormat];
  v29[2] = v21;
  v28[3] = @"LinkQuality";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v29[3] = v19;
  v28[4] = @"MessageIdentifier";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v29[4] = v17;
  v28[5] = @"Topic";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat];
  v29[5] = v15;
  v28[6] = @"Priority";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v29[6] = v4;
  v28[7] = @"Size";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v29[7] = v6;
  v28[8] = @"IsOffloadEvent";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_BoolFormat];
  v29[8] = v8;
  v28[9] = @"TimestampEvent";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_DateFormat];
  v29[9] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  v33[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionsAPSDConnectedEvent
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_28714B478;
  v21[1] = MEMORY[0x277CBEC38];
  v20[2] = *MEMORY[0x277D3F550];
  v21[2] = MEMORY[0x277CBEC28];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"ConnectionType";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v19[0] = v15;
  v18[1] = @"ServerHostname";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v19[1] = v4;
  v18[2] = @"ServerIP";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v19[2] = v6;
  v18[3] = @"LinkQuality";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v19[3] = v8;
  v18[4] = @"ExperimentID";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v19[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionsSentKeepAlive
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_28714B488;
  v19[1] = MEMORY[0x277CBEC38];
  v18[2] = *MEMORY[0x277D3F550];
  v19[2] = MEMORY[0x277CBEC28];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"ConnectionType";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v17[0] = v4;
  v16[1] = @"LinkQuality";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v17[1] = v6;
  v16[2] = @"IsOffloadEvent";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_BoolFormat];
  v17[2] = v8;
  v16[3] = @"TimestampEvent";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_DateFormat];
  v17[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionsReceivedKeepAlive
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_28714B488;
  v23[1] = MEMORY[0x277CBEC38];
  v22[2] = *MEMORY[0x277D3F550];
  v23[2] = MEMORY[0x277CBEC28];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"ConnectionType";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v21[0] = v17;
  v20[1] = @"DidWake";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_BoolFormat];
  v21[1] = v15;
  v20[2] = @"Environment";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v21[2] = v4;
  v20[3] = @"LinkQuality";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v21[3] = v6;
  v20[4] = @"IsOffloadEvent";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_BoolFormat];
  v21[4] = v8;
  v20[5] = @"TimestampEvent";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_DateFormat];
  v21[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v25[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionMessage
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_28714B488;
  v23[1] = MEMORY[0x277CBEC38];
  v22[2] = *MEMORY[0x277D3F550];
  v23[2] = MEMORY[0x277CBEC28];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"MessageType";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v21[0] = v17;
  v20[1] = @"ConversationType";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v21[1] = v15;
  v20[2] = @"Protocol";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v21[2] = v4;
  v20[3] = @"Target";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v21[3] = v6;
  v20[4] = @"Source";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v21[4] = v8;
  v20[5] = @"MessageGUID";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat];
  v21[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v25[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionIncomingPushProxyMessages
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_28714B498;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"ProxyCommand";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"Count";
  v12[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventPointDefinitionOutgoingPushProxyMessages
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_28714B498;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"ProxyCommand";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"Count";
  v12[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryAggregateDefinitions
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"SentPushes";
  v3 = [a1 entryAggregateDefinitionSentPushes];
  v11[0] = v3;
  v10[1] = @"SuppressedPushes";
  v4 = [a1 entryAggregateDefinitionSuppressedPushes];
  v11[1] = v4;
  v10[2] = @"APSDConnected";
  v5 = [a1 entryAggregateDefinitionAPSDConnected];
  v11[2] = v5;
  v10[3] = @"SentKeepAlive";
  v6 = [a1 entryAggregateDefinitionSentKeepAlive];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryAggregateDefinitionSentPushes
{
  v32[4] = *MEMORY[0x277D85DE8];
  v31[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v29[0] = *MEMORY[0x277D3F568];
  v29[1] = v2;
  v30[0] = &unk_28714B488;
  v30[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F590];
  v29[2] = *MEMORY[0x277D3F4D8];
  v29[3] = v3;
  v30[2] = MEMORY[0x277CBEC38];
  v30[3] = &unk_287145EE0;
  v29[4] = *MEMORY[0x277D3F588];
  v30[4] = &unk_28714B4A8;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:5];
  v32[0] = v21;
  v31[1] = *MEMORY[0x277D3F540];
  v27[0] = @"ConnectionType";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v28[0] = v19;
  v27[1] = @"Topic";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat];
  v28[1] = v17;
  v27[2] = @"Priority";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v16 commonTypeDict_IntegerFormat];
  v28[2] = v4;
  v27[3] = @"Count";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v28[3] = v6;
  v27[4] = @"Size";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v28[4] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:5];
  v32[1] = v9;
  v31[2] = *MEMORY[0x277D3F478];
  v25 = &unk_28714B4B8;
  v23 = *MEMORY[0x277D3F470];
  v24 = &unk_28714B4C8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v32[2] = v11;
  v31[3] = *MEMORY[0x277D3F488];
  v22[0] = @"Count";
  v22[1] = @"Size";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v32[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryAggregateDefinitionSuppressedPushes
{
  v27[4] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_28714B498;
  v25[1] = MEMORY[0x277CBEC38];
  v24[2] = *MEMORY[0x277D3F4A0];
  v25[2] = MEMORY[0x277CBEC38];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v27[0] = v16;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"BundleID";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v15 commonTypeDict_StringFormat_withBundleID];
  v23[0] = v3;
  v22[1] = @"InterruptionSuppression";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v23[1] = v5;
  v22[2] = @"Count";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v23[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v27[1] = v8;
  v26[2] = *MEMORY[0x277D3F478];
  v20 = &unk_28714B4D8;
  v18 = *MEMORY[0x277D3F470];
  v19 = &unk_28714B4C8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v27[2] = v10;
  v26[3] = *MEMORY[0x277D3F488];
  v17 = @"Count";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v27[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryAggregateDefinitionAPSDConnected
{
  v23[4] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_28714B498;
  v21[1] = MEMORY[0x277CBEC38];
  v20[2] = *MEMORY[0x277D3F550];
  v21[2] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v23[0] = v3;
  v22[1] = *MEMORY[0x277D3F540];
  v18 = @"Count";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v19 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v23[1] = v6;
  v22[2] = *MEMORY[0x277D3F478];
  v16 = &unk_28714B4D8;
  v14 = *MEMORY[0x277D3F470];
  v15 = &unk_28714B4C8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v23[2] = v8;
  v22[3] = *MEMORY[0x277D3F488];
  v13 = @"Count";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v23[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryAggregateDefinitionSentKeepAlive
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_28714B498;
  v23[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v3;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"ConnectionType";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20[1] = @"Count";
  v21[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v21[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v25[1] = v8;
  v24[2] = *MEMORY[0x277D3F478];
  v18 = &unk_28714B4E8;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_28714B4C8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v25[2] = v10;
  v24[3] = *MEMORY[0x277D3F488];
  v15 = @"Count";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v25[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PLPushAgent)init
{
  v3.receiver = self;
  v3.super_class = PLPushAgent;
  result = [(PLAgent *)&v3 init];
  if (result)
  {
    result->_numKeepAlives = 0;
  }

  return result;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke;
  v42[3] = &unk_279A5BCB8;
  v42[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_2871488D8 withBlock:v42];
  [(PLPushAgent *)self setReceivedPushListener:v4];

  v5 = objc_alloc(MEMORY[0x277D3F270]);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_201;
  v41[3] = &unk_279A5BCB8;
  v41[4] = self;
  v6 = [v5 initWithOperator:self withRegistration:&unk_287148900 withBlock:v41];
  [(PLPushAgent *)self setSentPushListener:v6];

  v7 = objc_alloc(MEMORY[0x277D3F270]);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_210;
  v40[3] = &unk_279A5BCB8;
  v40[4] = self;
  v8 = [v7 initWithOperator:self withRegistration:&unk_287148928 withBlock:v40];
  [(PLPushAgent *)self setSuppressedPushesListener:v8];

  v9 = objc_alloc(MEMORY[0x277D3F270]);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_218;
  v39[3] = &unk_279A5BCB8;
  v39[4] = self;
  v10 = [v9 initWithOperator:self withRegistration:&unk_287148950 withBlock:v39];
  [(PLPushAgent *)self setApsdConnectedListener:v10];

  v11 = objc_alloc(MEMORY[0x277D3F270]);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_226;
  v38[3] = &unk_279A5BCB8;
  v38[4] = self;
  v12 = [v11 initWithOperator:self withRegistration:&unk_287148978 withBlock:v38];
  [(PLPushAgent *)self setPushProxyIncomingListener:v12];

  v13 = objc_alloc(MEMORY[0x277D3F270]);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_234;
  v37[3] = &unk_279A5BCB8;
  v37[4] = self;
  v14 = [v13 initWithOperator:self withRegistration:&unk_2871489A0 withBlock:v37];
  [(PLPushAgent *)self setPushProxyOutgoingListener:v14];

  v15 = objc_alloc(MEMORY[0x277D3F270]);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_242;
  v36[3] = &unk_279A5BCB8;
  v36[4] = self;
  v16 = [v15 initWithOperator:self withRegistration:&unk_2871489C8 withBlock:v36];
  [(PLPushAgent *)self setSentKeepAliveListener:v16];

  [(PLOperator *)self defaultDoubleForKey:@"RunTimeAggregatorTimerCadence"];
  v18 = v17;
  v19 = objc_alloc(MEMORY[0x277D3F250]);
  v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v18];
  v21 = [(PLOperator *)self workQueue];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_244;
  v35[3] = &unk_279A5D088;
  v35[4] = self;
  v22 = [v19 initWithFireDate:v20 withInterval:1 withTolerance:0 repeats:v21 withUserInfo:v35 withQueue:v18 withBlock:0.0];
  runTimeAggregatorTimer = self->_runTimeAggregatorTimer;
  self->_runTimeAggregatorTimer = v22;

  v24 = objc_alloc(MEMORY[0x277D3F270]);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_2;
  v34[3] = &unk_279A5BCB8;
  v34[4] = self;
  v25 = [v24 initWithOperator:self withRegistration:&unk_2871489F0 withBlock:v34];
  [(PLPushAgent *)self setReceivedKeepAliveListener:v25];

  v26 = objc_opt_new();
  pushUsageDict = self->_pushUsageDict;
  self->_pushUsageDict = v26;

  v28 = objc_alloc(MEMORY[0x277D3F270]);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_263;
  v33[3] = &unk_279A5BCB8;
  v33[4] = self;
  v29 = [v28 initWithOperator:self withRegistration:&unk_287148A18 withBlock:v33];
  [(PLPushAgent *)self setMessageSentListener:v29];

  v30 = objc_alloc(MEMORY[0x277D3F270]);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_271;
  v32[3] = &unk_279A5BCB8;
  v32[4] = self;
  v31 = [v30 initWithOperator:self withRegistration:&unk_287148A40 withBlock:v32];
  [(PLPushAgent *)self setMessageReceivedListener:v31];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_cold_1();
  }

  v8 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ReceivedPush"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  v10 = [v9 objectForKeyedSubscript:@"Topic"];
  if ([v10 containsString:@"com.apple.Safari"])
  {
    v11 = [v9 objectForKeyedSubscript:@"Topic"];
    v12 = [v11 containsString:@"https://"];

    if (v12)
    {
      [v9 setObject:@"com.apple.Safari" forKeyedSubscript:@"Topic"];
    }
  }

  else
  {
  }

  v13 = *(a1 + 32);
  v14 = objc_opt_class();
  v15 = [v9 objectForKeyedSubscript:@"Topic"];
  v16 = [v14 bundleIdFromTopic:v15];
  [v9 setObject:v16 forKeyedSubscript:@"BundleID"];

  v17 = [v6 objectForKeyedSubscript:@"IsWakingMessage"];
  [v9 setObject:v17 forKeyedSubscript:@"DidWake"];

  v18 = MEMORY[0x277CCABB0];
  v19 = [v9 objectForKeyedSubscript:@"Size"];
  v20 = [v18 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v19, "intValue"), 2)}];
  [v9 setObject:v20 forKeyedSubscript:@"Size"];

  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    v21 = MEMORY[0x277CBEAA8];
    v22 = [v9 entryDate];
    [v22 timeIntervalSince1970];
    v24 = [v21 dateWithTimeIntervalSince1970:round(v23 / 60.0) * 60.0];
    [v9 setEntryDate:v24];
  }

  [*(a1 + 32) logEntry:v9];
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v25 = *(a1 + 32);
    v26 = [v9 entryDate];
    [v25 checkPushUsage:v26 withPLEntry:v9];
  }

  [*(a1 + 32) accountReceivedPushWithEntry:v9];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_201(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_201_cold_1();
  }

  v8 = [v6 mutableCopy];
  v9 = *(a1 + 32);
  v10 = objc_opt_class();
  v11 = [v6 objectForKeyedSubscript:@"ConnectionType"];
  v12 = [v10 replaceConnectionTypeWithEnum:v11];
  [v8 setObject:v12 forKeyedSubscript:@"ConnectionType"];

  v13 = 0x277CCA000;
  if ([MEMORY[0x277D3F180] fullMode])
  {
    v14 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SentPush"];
    v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14 withRawData:v8];
    v16 = MEMORY[0x277CCABB0];
    v17 = [v15 objectForKeyedSubscript:@"Size"];
    v18 = [v16 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v17, "intValue"), 2)}];
    [v15 setObject:v18 forKeyedSubscript:@"Size"];

    v13 = 0x277CCA000uLL;
    [*(a1 + 32) logEntry:v15];
  }

  v19 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"SentPushes"];
  v20 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v19 withRawData:v8];
  v21 = *(v13 + 2992);
  v22 = [v20 objectForKeyedSubscript:@"Size"];
  v23 = [v21 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v22, "intValue"), 2)}];
  [v20 setObject:v23 forKeyedSubscript:@"Size"];

  [v20 setObject:&unk_287145F10 forKeyedSubscript:@"Count"];
  [*(a1 + 32) logEntry:v20];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_210_cold_1();
  }

  [*(a1 + 32) logAggregateSuppressedPushes:v6];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_218_cold_1();
  }

  v8 = [v6 mutableCopy];
  v9 = *(a1 + 32);
  v10 = objc_opt_class();
  v11 = [v6 objectForKeyedSubscript:@"ConnectionType"];
  v12 = [v10 replaceConnectionTypeWithEnum:v11];
  [v8 setObject:v12 forKeyedSubscript:@"ConnectionType"];

  v13 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"APSDConnectedEvent"];
  v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13 withRawData:v8];
  [*(a1 + 32) logEntry:v14];
  v15 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"APSDConnected"];
  v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15 withRawData:v8];
  [v16 setObject:&unk_287145F10 forKeyedSubscript:@"Count"];
  [*(a1 + 32) logEntry:v16];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_226(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_226_cold_1();
  }

  [*(a1 + 32) logPushProxyMessages:v6 forMessageType:@"IncomingProxyMessages"];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_234_cold_1();
  }

  [*(a1 + 32) logPushProxyMessages:v6 forMessageType:@"OutgoingProxyMessages"];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_242(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_242_cold_1();
  }

  v8 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SentKeepAlive"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  v10 = *(a1 + 32);
  v11 = v10[12];
  if (v11 == 1)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:500];
    [v9 setObject:v12 forKeyedSubscript:@"ConnectionType"];

    v10 = *(a1 + 32);
  }

  else if (v11)
  {
    goto LABEL_8;
  }

  [v10 logEntry:v9];
LABEL_8:
  ++*(*(a1 + 32) + 96);
  [*(a1 + 32) logAggregateSentKeepAlive:v6];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_2_cold_1();
  }

  [*(a1 + 32) logEventPointReceivedKeepAlive:v6];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_263(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_263_cold_1();
  }

  [*(a1 + 32) handleMessageEvent:v6 isSentEvent:1];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_271(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_271_cold_1();
  }

  [*(a1 + 32) handleMessageEvent:v6 isSentEvent:0];
}

- (void)logPushProxyMessages:(id)a3 forMessageType:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v26 = self;
    v30 = objc_opt_new();
    v27 = v7;
    v8 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:v7];
    [MEMORY[0x277CBEAA8] monotonicDate];
    v29 = v28 = v6;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 intValue];
            v16 = [v9 objectForKeyedSubscript:v14];
            v17 = [MEMORY[0x277CBEB68] null];

            if (v16 != v17)
            {
              v18 = [v9 objectForKeyedSubscript:v14];
              v19 = [v18 intValue];

              v20 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withDate:v29];
              v21 = [MEMORY[0x277CCABB0] numberWithInt:v15];
              [v20 setObject:v21 forKeyedSubscript:@"ProxyCommand"];

              v22 = [MEMORY[0x277CCABB0] numberWithInt:v19];
              [v20 setObject:v22 forKeyedSubscript:@"Count"];

              [v30 addObject:v20];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v11);
    }

    v23 = v30;
    if ([v30 count])
    {
      v35 = v8;
      v36 = v30;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      [(PLOperator *)v26 logEntries:v24 withGroupID:v8];
    }

    v7 = v27;
    v6 = v28;
  }

  else
  {
    v23 = PLLogPush();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [PLPushAgent logPushProxyMessages:forMessageType:];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointReceivedKeepAlive:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLPushAgent entryKeyForType:v4 andName:@"ReceivedKeepAlive"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logAggregateSuppressedPushes:(id)a3
{
  v4 = *MEMORY[0x277D3F5B8];
  v5 = a3;
  v7 = [(PLOperator *)PLPushAgent entryKeyForType:v4 andName:@"SuppressedPushes"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logAggregateSentKeepAlive:(id)a3
{
  v4 = *MEMORY[0x277D3F5B8];
  v5 = a3;
  v6 = [(PLOperator *)PLPushAgent entryKeyForType:v4 andName:@"SentKeepAlive"];
  v7 = [v5 mutableCopy];

  [v7 setObject:&unk_287145F10 forKeyedSubscript:@"Count"];
  v8 = PLLogPush();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLPushAgent logAggregateSentKeepAlive:];
  }

  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withRawData:v7];
  [(PLOperator *)self logEntry:v9];
}

- (void)accountReceivedPushWithEntry:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = PLLogPush();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLPushAgent accountReceivedPushWithEntry:];
  }

  v5 = [MEMORY[0x277D3F208] isHomePod];
  if (v3 && (v5 & 1) == 0)
  {
    v6 = [v3 objectForKeyedSubscript:@"BundleID"];
    if ([v6 hasPrefix:@"com.apple.icloud-container.clouddocs."])
    {
      v7 = 37;
    }

    else
    {
      if (![v6 hasPrefix:@"com.apple.icloud-container."])
      {
        goto LABEL_10;
      }

      v7 = 27;
    }

    v8 = [v6 substringFromIndex:v7];

    v6 = v8;
LABEL_10:
    v9 = [v3 objectForKeyedSubscript:@"ConnectionType"];
    if ([v9 isEqualToString:@"wifi"])
    {
      v10 = [MEMORY[0x277D3F0C0] sharedInstance];
      v38 = v6;
      v39[0] = &unk_28714B498;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      v12 = [v3 entryDate];
      v13 = v10;
      v14 = 4;
    }

    else
    {
      if (![v9 isEqualToString:@"wwan"])
      {
LABEL_15:
        v15 = [v3 objectForKeyedSubscript:@"DidWake"];
        v16 = [v15 BOOLValue];

        v17 = PLLogPush();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [(PLPushAgent *)v16 accountReceivedPushWithEntry:v17];
        }

        if (v16)
        {
          v18 = PLLogPush();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = [v3 entryDate];
            *buf = 138412546;
            v33 = v3;
            v34 = 2112;
            v35 = v19;
            _os_log_impl(&dword_25EE51000, v18, OS_LOG_TYPE_INFO, "Waking push with entry=%@, entry.entryDate=%@", buf, 0x16u);
          }

          v20 = [MEMORY[0x277D3F0C0] sharedInstance];
          v21 = [v3 entryDate];
          v22 = [v3 entryDate];
          v23 = [v22 dateByAddingTimeInterval:10.0];
          [v20 createPowerEventIntervalWithRootNodeID:60 withPower:v21 withStartDate:v23 withEndDate:150.0];

          v24 = [MEMORY[0x277D3F0C0] sharedInstance];
          v30 = v6;
          v31 = &unk_28714B498;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v26 = [v3 entryDate];
          v27 = [v3 entryDate];
          v28 = [v27 dateByAddingTimeInterval:10.0];
          [v24 createDistributionEventIntervalWithDistributionID:48 withChildNodeNameToWeight:v25 withStartDate:v26 withEndDate:v28];
        }

        goto LABEL_22;
      }

      v10 = [MEMORY[0x277D3F0C0] sharedInstance];
      v36 = v6;
      v37 = &unk_28714B498;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v12 = [v3 entryDate];
      v13 = v10;
      v14 = 5;
    }

    [v13 createDistributionEventPointWithDistributionID:v14 withChildNodeNameToWeight:v11 withStartDate:v12];

    goto LABEL_15;
  }

LABEL_22:

  v29 = *MEMORY[0x277D85DE8];
}

+ (id)bundleIdFromTopic:(id)a3
{
  v24[9] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 length])
    {
      v23[0] = @"com.apple.madrid";
      v23[1] = @"com.apple.calendar";
      v24[0] = &__block_literal_global_295;
      v24[1] = &__block_literal_global_303;
      v23[2] = @"com.me.cal";
      v23[3] = @"com.me.bookmarks";
      v24[2] = &__block_literal_global_311;
      v24[3] = &__block_literal_global_316_0;
      v23[4] = @"com.me.contacts";
      v23[5] = @"com.apple.mobilemail";
      v24[4] = &__block_literal_global_324;
      v24[5] = &__block_literal_global_332;
      v23[6] = @"com.apple.sharedstreams";
      v23[7] = @"com.apple.private.alloy.sms";
      v24[6] = &__block_literal_global_337;
      v24[7] = &__block_literal_global_345;
      v23[8] = @"com.apple.Safari";
      v24[8] = &__block_literal_global_347;
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:9];
      v17 = 0;
      v18 = &v17;
      v19 = 0x3032000000;
      v20 = __Block_byref_object_copy__10;
      v21 = __Block_byref_object_dispose__10;
      v22 = v4;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __33__PLPushAgent_bundleIdFromTopic___block_invoke_351;
      v14[3] = &unk_279A5D3F0;
      v6 = v22;
      v15 = v6;
      v16 = &v17;
      [v5 enumerateKeysAndObjectsUsingBlock:v14];
      v7 = [v6 rangeOfString:@".voip"];
      v8 = [v6 length];
      if (v7 == v8 - [@".voip" length])
      {
        v9 = [v6 substringToIndex:v7];
        v10 = v18[5];
        v18[5] = v9;
      }

      v11 = v18[5];

      _Block_object_dispose(&v17, 8);
    }

    else
    {
      v11 = &stru_287103958;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __33__PLPushAgent_bundleIdFromTopic___block_invoke_351(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  if (![*(a1 + 32) rangeOfString:a2])
  {
    v7 = v10[2](v10, *(a1 + 32));
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

+ (id)replaceConnectionTypeWithEnum:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"wwan"])
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = 1;
  }

  else if ([v3 isEqual:@"wifi"])
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = 2;
  }

  else
  {
    v6 = [v3 isEqual:@"proxy"];
    v4 = MEMORY[0x277CCABB0];
    if (v6)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }
  }

  v7 = [v4 numberWithInteger:v5];

  return v7;
}

+ (BOOL)isHighPriorityPushEntry:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"Priority"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue] == 10;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)sendEnergyIssueSignatureNotification:(id)a3 withThreshold:(double)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277D6AFC8]);
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *&a4];
    v8 = [v6 signatureWithDomain:@"Energy" type:@"Push" subType:@"PushStorm" subtypeContext:&stru_287103958 detectedProcess:v5 triggerThresholdValues:v7];

    v19 = *MEMORY[0x277D6B130];
    v17 = @"com.apple.PowerlogCore.DESysLogFilterProcess";
    v14 = v5;
    v15 = @"processNames";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    v16 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

    [v6 snapshotWithSignature:v8 duration:0 events:v12 payload:0 actions:&__block_literal_global_381 reply:120.0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __66__PLPushAgent_sendEnergyIssueSignatureNotification_withThreshold___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B188]];
    v6 = PLLogPush();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __66__PLPushAgent_sendEnergyIssueSignatureNotification_withThreshold___block_invoke_cold_2();
    }
  }

  else
  {
    v5 = PLLogPush();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __66__PLPushAgent_sendEnergyIssueSignatureNotification_withThreshold___block_invoke_cold_1(v5);
    }
  }
}

- (void)checkPushUsage:(id)a3 withPLEntry:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_detectionStartTime)
  {
    [v7 timeIntervalSinceDate:?];
    if (v9 <= 86400.0)
    {
      v10 = [v8 objectForKeyedSubscript:@"BundleID"];
      v11 = [(NSMutableDictionary *)self->_pushUsageDict objectForKey:v10];

      if (v11)
      {
        v12 = MEMORY[0x277CCABB0];
        v13 = [(NSMutableDictionary *)self->_pushUsageDict objectForKeyedSubscript:v10];
        v14 = [v12 numberWithInt:{objc_msgSend(v13, "intValue") + 1}];
        [(NSMutableDictionary *)self->_pushUsageDict setObject:v14 forKeyedSubscript:v10];
      }

      else
      {
        [(NSMutableDictionary *)self->_pushUsageDict setObject:&unk_287145F10 forKeyedSubscript:v10];
      }

      v15 = [(NSMutableDictionary *)self->_pushUsageDict objectForKeyedSubscript:v10];
      v16 = [v15 intValue];

      if (v16 >= 1001)
      {
        [(NSMutableDictionary *)self->_pushUsageDict setObject:0 forKeyedSubscript:v10];
        if ([v10 isEqualToString:@"com.apple.private.alloy.willow"])
        {
          [(PLPushAgent *)self sendEnergyIssueSignatureNotification:v10 withThreshold:1000.0];
        }
      }
    }

    else
    {
      [(NSMutableDictionary *)self->_pushUsageDict removeAllObjects];
    }
  }

  else
  {
    objc_storeStrong(&self->_detectionStartTime, a3);
  }

  v17 = PLLogPush();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [PLPushAgent checkPushUsage:v17 withPLEntry:?];
  }
}

- (unint64_t)convertMessageProtocol:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"iMessage"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"iMessageLite"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"RCS"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SMS"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SatelliteSMS"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 6;
  }

  else
  {
    v5 = PLLogPush();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLPushAgent convertMessageProtocol:];
    }

    v4 = 2;
  }

  return v4;
}

- (void)handleMessageEvent:(id)a3 isSentEvent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = PLLogPush();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(PLPushAgent *)v4 handleMessageEvent:v6 isSentEvent:v7];
  }

  v8 = @"MessageReceived";
  if (v4)
  {
    v8 = @"MessageSent";
  }

  v9 = v8;
  v10 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:v9];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v12 = [v6 objectForKeyedSubscript:@"MessageType"];
  [v11 setObject:v12 forKeyedSubscript:@"MessageType"];

  v13 = [v6 objectForKeyedSubscript:@"ConversationType"];
  [v11 setObject:v13 forKeyedSubscript:@"ConversationType"];

  v14 = MEMORY[0x277CCABB0];
  v15 = [v6 objectForKeyedSubscript:@"Protocol"];
  v16 = [v14 numberWithUnsignedInteger:{-[PLPushAgent convertMessageProtocol:](self, "convertMessageProtocol:", v15)}];
  [v11 setObject:v16 forKeyedSubscript:@"Protocol"];

  if ([MEMORY[0x277D3F180] fullMode])
  {
    v17 = MEMORY[0x277CCABB0];
    v18 = [v6 objectForKeyedSubscript:@"Target"];
    v19 = [PLUtilities hashString:v18];
    v20 = [v17 numberWithUnsignedInteger:{objc_msgSend(v19, "hash")}];
    [v11 setObject:v20 forKeyedSubscript:@"Target"];

    v21 = MEMORY[0x277CCABB0];
    v22 = [v6 objectForKeyedSubscript:@"Source"];
    v23 = [PLUtilities hashString:v22];
    v24 = [v21 numberWithUnsignedInteger:{objc_msgSend(v23, "hash")}];
    [v11 setObject:v24 forKeyedSubscript:@"Source"];

    v25 = [v6 objectForKeyedSubscript:@"MessageGUID"];
    [v11 setObject:v25 forKeyedSubscript:@"MessageGUID"];
  }

  [(PLOperator *)self logEntry:v11];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "PLPushAgent:: PC APSD Message Received with payload=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_201_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "PLPushAgent:: PC APSD Message Sent with payload=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_210_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "SuppressedPushes payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_218_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "PLPushAgent:: PC APSD Connected with payload=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_226_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "PLPushAgent:: PC APSD Incoming Proxy Messages with payload=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_234_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "PLPushAgent:: PC APSD Outgoing Proxy Messages with payload=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_242_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "PLPushAgent:: PC APSD DidSendKeepAlive with payload=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "PLPushAgent:: receivedKeepAliveListener with payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_263_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "iMessageSent payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_271_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "iMessageReceived payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logPushProxyMessages:forMessageType:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "%@ payload is empty", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logAggregateSentKeepAlive:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "PLPushAgent:: Aggregate SentKeepAlive with aggregatePayload=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)accountReceivedPushWithEntry:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "accounting entry %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)accountReceivedPushWithEntry:(char)a1 .cold.2(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "didWake = %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void __66__PLPushAgent_sendEnergyIssueSignatureNotification_withThreshold___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_25EE51000, v1, OS_LOG_TYPE_DEBUG, "SDRDiagnosticReporter response = %@, sessionID = %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)convertMessageProtocol:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Other Message Protocol logged: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleMessageEvent:(NSObject *)a3 isSentEvent:.cold.1(char a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_1();
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_25EE51000, a3, OS_LOG_TYPE_DEBUG, "Received messages update, isSentEvent: %@, payload: %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end