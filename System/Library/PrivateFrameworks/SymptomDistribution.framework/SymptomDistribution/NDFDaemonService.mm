@interface NDFDaemonService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC19SymptomDistribution16NDFDaemonService)init;
- (void)cleanupNetworkDeviceEntriesWithCompletionHandler:(id)handler;
- (void)deliverCloudKitDevicePayload:(_TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload *)payload completionHandler:(id)handler;
- (void)deliverCloudKitDevicePayloads:(NSArray *)payloads completionHandler:(id)handler;
- (void)fetchAllNetworkDeviceEntriesWithCompletionHandler:(id)handler;
- (void)fetchLatestNetworkDeviceEntriesWithCompletionHandler:(id)handler;
- (void)initializeSchemaWithCompletionHandler:(id)handler;
- (void)printDatabaseTelemetryStatsWithCompletionHandler:(id)handler;
- (void)publishNetworkDeviceEntryWithCompletionHandler:(id)handler;
- (void)startDelegatedDiscoveryFor:(NSString *)for cancelAfter:(double)after deviceType:(char)type completionHandler:(id)handler;
@end

@implementation NDFDaemonService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_2329C7F30(connectionCopy);

  return v9 & 1;
}

- (_TtC19SymptomDistribution16NDFDaemonService)init
{
  v3 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_endpointBrowser;
  type metadata accessor for NDFBrowser();
  *(&self->super.isa + v3) = NDFBrowser.__allocating_init()();
  v4 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_logger;
  v5 = sub_2329A8DAC();
  v6 = sub_2329D2E14();
  (*(*(v6 - 8) + 16))(self + v4, v5, v6);
  *(&self->super.isa + OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_persistenceController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_discoveryTask) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NDFDaemonService();
  return [(NDFDaemonService *)&v8 init];
}

- (void)startDelegatedDiscoveryFor:(NSString *)for cancelAfter:(double)after deviceType:(char)type completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  *(v16 + 16) = for;
  *(v16 + 24) = after;
  *(v16 + 32) = type;
  *(v16 + 40) = v15;
  *(v16 + 48) = self;
  v17 = sub_2329D3504();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2329D5190;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_2329D5198;
  v19[5] = v18;
  forCopy = for;
  selfCopy = self;
  sub_2329C7B14(0, 0, v14, &unk_2329D51A0, v19);
}

- (void)deliverCloudKitDevicePayload:(_TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload *)payload completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = payload;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2329D3504();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2329D5170;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2329D5178;
  v15[5] = v14;
  payloadCopy = payload;
  selfCopy = self;
  sub_2329C7B14(0, 0, v10, &unk_2329D5180, v15);
}

- (void)deliverCloudKitDevicePayloads:(NSArray *)payloads completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = payloads;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2329D3504();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2329D5150;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2329D5158;
  v15[5] = v14;
  payloadsCopy = payloads;
  selfCopy = self;
  sub_2329C7B14(0, 0, v10, &unk_2329D5160, v15);
}

- (void)publishNetworkDeviceEntryWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2329D3504();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2329D5130;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2329D5138;
  v13[5] = v12;
  selfCopy = self;
  sub_2329C7B14(0, 0, v8, &unk_2329D5140, v13);
}

- (void)fetchAllNetworkDeviceEntriesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2329D3504();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2329D5110;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2329D5118;
  v13[5] = v12;
  selfCopy = self;
  sub_2329C7B14(0, 0, v8, &unk_2329D5120, v13);
}

- (void)fetchLatestNetworkDeviceEntriesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2329D3504();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2329D50F0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2329D50F8;
  v13[5] = v12;
  selfCopy = self;
  sub_2329C7B14(0, 0, v8, &unk_2329D5100, v13);
}

- (void)initializeSchemaWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2329D3504();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2329D50D0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2329D50D8;
  v13[5] = v12;
  selfCopy = self;
  sub_2329C7B14(0, 0, v8, &unk_2329D50E0, v13);
}

- (void)cleanupNetworkDeviceEntriesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2329D3504();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2329D50B0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2329D50B8;
  v13[5] = v12;
  selfCopy = self;
  sub_2329C7B14(0, 0, v8, &unk_2329D50C0, v13);
}

- (void)printDatabaseTelemetryStatsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2329D3504();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2329D5068;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2329D5078;
  v13[5] = v12;
  selfCopy = self;
  sub_2329C7B14(0, 0, v8, &unk_2329D5088, v13);
}

@end