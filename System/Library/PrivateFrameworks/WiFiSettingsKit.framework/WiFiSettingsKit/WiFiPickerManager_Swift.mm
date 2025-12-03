@interface WiFiPickerManager_Swift
- (WiFiPickerManager_Swift)init;
- (WiFiPickerManager_Swift)initWithConfiguration:(id)configuration context:(id)context;
- (void)updateCurrentNetwork:(id)network;
- (void)updateScannedNetworks:(id)networks;
- (void)updateScannedNetworksWithInfo:(id)info;
@end

@implementation WiFiPickerManager_Swift

- (WiFiPickerManager_Swift)initWithConfiguration:(id)configuration context:(id)context
{
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  v6 = sub_27417C70C(configurationCopy, context);

  return v6;
}

- (void)updateCurrentNetwork:(id)network
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_2741C80DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_2741C80AC();
  networkCopy = network;
  selfCopy = self;
  v12 = networkCopy;
  v13 = sub_2741C809C();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = selfCopy;
  v14[5] = v12;
  sub_2740CE980(0, 0, v8, &unk_2741D6160, v14);
}

- (void)updateScannedNetworks:(id)networks
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  type metadata accessor for WiFiNetwork();
  v8 = sub_2741C7FEC();
  v9 = sub_2741C80DC();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_2741C80AC();
  selfCopy = self;
  v11 = sub_2741C809C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = selfCopy;
  v12[5] = v8;
  sub_2740CE980(0, 0, v7, &unk_2741D6158, v12);
}

- (void)updateScannedNetworksWithInfo:(id)info
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385B8, &qword_2741CD5E0);
  v8 = sub_2741C7FEC();
  v9 = sub_2741C80DC();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_2741C80AC();
  selfCopy = self;
  v11 = sub_2741C809C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v8;
  v12[5] = selfCopy;
  sub_2740CE980(0, 0, v7, &unk_2741D6150, v12);
}

- (WiFiPickerManager_Swift)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end