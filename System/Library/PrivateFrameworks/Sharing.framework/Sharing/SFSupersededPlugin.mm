@interface SFSupersededPlugin
- (BOOL)beginUsingRequest:(id)request withSubsystemOptions:(id)options error:(id *)error;
- (BOOL)beginUsingWithSubsystemOptions:(id)options error:(id *)error;
- (BOOL)useBundle:(id)bundle error:(id *)error;
- (NSArray)launchPersonas;
- (NSArray)preferredLanguages;
- (NSBundle)embeddedBundle;
- (NSDate)timestamp;
- (NSUUID)multipleInstanceUUID;
- (NSUUID)uuid;
- (NSXPCConnection)pluginConnection;
- (PKPlugIn)supersededBy;
- (_TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin)init;
- (id)createInstanceWithUUID:(id)d;
- (id)defaults;
- (id)export:(id *)export;
- (id)notificationBlock;
- (void)beginUsing:(id)using;
- (void)beginUsingRequest:(PKLaunchRequest *)request completion:(id)completion;
- (void)beginUsingRequest:(PKLaunchRequest *)request withSubsystemOptions:(NSDictionary *)options completion:(id)completion;
- (void)beginUsingWithSubsystemOptions:(NSDictionary *)options completion:(id)completion;
- (void)endUsing:(id)using;
- (void)endUsingRequest:(PKLaunchRequest *)request completion:(id)completion;
- (void)localizedInfoDictionaryForKeys:(NSArray *)keys completion:(id)completion;
- (void)setHostPrincipal:(id)principal withProtocol:(id)protocol;
- (void)setNotificationBlock:(id)block;
- (void)setPreferredLanguages:(id)languages;
- (void)setSandboxProfile:(id)profile;
@end

@implementation SFSupersededPlugin

- (PKPlugIn)supersededBy
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSUUID)multipleInstanceUUID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = *(&self->super.isa + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  selfCopy = self;
  multipleInstanceUUID = [v10 multipleInstanceUUID];
  if (multipleInstanceUUID)
  {
    v13 = multipleInstanceUUID;
    sub_1A9976290();

    v14 = sub_1A99762C0();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  }

  else
  {
    v14 = sub_1A99762C0();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  sub_1A97D8380(v7, v9, &unk_1EB3B29B0, &qword_1A9990640);

  sub_1A99762C0();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v9, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    v18 = sub_1A9976270();
    (*(v15 + 8))(v9, v14);
    v17 = v18;
  }

  return v17;
}

- (NSBundle)embeddedBundle
{
  embeddedBundle = [*(&self->super.isa + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin) embeddedBundle];

  return embeddedBundle;
}

- (id)notificationBlock
{
  notificationBlock = [*(&self->super.isa + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin) notificationBlock];
  if (notificationBlock)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = notificationBlock;
    v5[4] = sub_1A982B48C;
    v5[5] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1A9820470;
    v5[3] = &block_descriptor_204;
    notificationBlock = _Block_copy(v5);
  }

  return notificationBlock;
}

- (void)setNotificationBlock:(id)block
{
  v4 = _Block_copy(block);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1A982B1AC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1A982B0B8(v7, v6);
  sub_1A967C46C(v7);
}

- (NSUUID)uuid
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = *(&self->super.isa + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  selfCopy = self;
  uuid = [v10 uuid];
  if (uuid)
  {
    v13 = uuid;
    sub_1A9976290();

    v14 = sub_1A99762C0();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  }

  else
  {
    v14 = sub_1A99762C0();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  sub_1A97D8380(v7, v9, &unk_1EB3B29B0, &qword_1A9990640);

  sub_1A99762C0();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v9, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    v18 = sub_1A9976270();
    (*(v15 + 8))(v9, v14);
    v17 = v18;
  }

  return v17;
}

- (NSDate)timestamp
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = *(&self->super.isa + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  selfCopy = self;
  timestamp = [v10 timestamp];
  if (timestamp)
  {
    v13 = timestamp;
    sub_1A99761F0();

    v14 = sub_1A9976230();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  }

  else
  {
    v14 = sub_1A9976230();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  sub_1A97D8380(v7, v9, &unk_1EB3B2A30, &unk_1A99983A0);

  sub_1A9976230();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v9, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    v18 = sub_1A99760F0();
    (*(v15 + 8))(v9, v14);
    v17 = v18;
  }

  return v17;
}

- (NSXPCConnection)pluginConnection
{
  pluginConnection = [*(&self->super.isa + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin) pluginConnection];

  return pluginConnection;
}

- (NSArray)preferredLanguages
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  selfCopy = self;
  preferredLanguages = [v2 preferredLanguages];
  if (preferredLanguages)
  {
    v5 = preferredLanguages;
    sub_1A9976AC0();

    v6 = sub_1A9976AB0();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)setPreferredLanguages:(id)languages
{
  selfCopy = self;
  if (languages)
  {
    v3 = sub_1A9976AC0();
    self = selfCopy;
    v4 = *(&selfCopy->super.isa + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
    if (v3)
    {
      v5 = selfCopy;
      swift_unknownObjectRetain();
      v6 = sub_1A9976AB0();

      goto LABEL_6;
    }
  }

  else
  {
    v4 = *(&self->super.isa + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  }

  selfCopy2 = self;
  swift_unknownObjectRetain();
  v6 = 0;
LABEL_6:
  [v4 setPreferredLanguages_];
  swift_unknownObjectRelease();
}

- (NSArray)launchPersonas
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  selfCopy = self;
  launchPersonas = [v2 launchPersonas];
  if (launchPersonas)
  {
    v5 = launchPersonas;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2A28, &qword_1A9998398);
    sub_1A9976AC0();

    v6 = sub_1A9976AB0();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)setSandboxProfile:(id)profile
{
  selfCopy = self;
  if (profile)
  {
    sub_1A9976820();
    self = selfCopy;
    v3 = *(&selfCopy->super.isa + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
    if (v4)
    {
      v5 = selfCopy;
      swift_unknownObjectRetain();
      v6 = sub_1A99767E0();

      goto LABEL_6;
    }
  }

  else
  {
    v3 = *(&self->super.isa + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  }

  selfCopy2 = self;
  swift_unknownObjectRetain();
  v6 = 0;
LABEL_6:
  [v3 setSandboxProfile_];
  swift_unknownObjectRelease();
}

- (void)beginUsing:(id)using
{
  v4 = _Block_copy(using);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1A982B4C4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1A9820FFC(v7, v6);
  sub_1A967C46C(v7);
}

- (void)beginUsingWithSubsystemOptions:(NSDictionary *)options completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = options;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1A9976C00();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A9998378;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A9998380;
  v15[5] = v14;
  optionsCopy = options;
  selfCopy = self;
  sub_1A98A683C(0, 0, v10, &unk_1A9998388, v15);
}

- (BOOL)beginUsingWithSubsystemOptions:(id)options error:(id *)error
{
  if (options)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29A0, &qword_1A99982D0);
    v5 = sub_1A9976700();
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_1A9821A20(v5);

  return 1;
}

- (BOOL)useBundle:(id)bundle error:(id *)error
{
  if (bundle)
  {
    v5 = sub_1A9976820();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  selfCopy = self;
  sub_1A9821C08(v5, v7);

  return 1;
}

- (void)endUsing:(id)using
{
  v4 = _Block_copy(using);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1A981320C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1A9821DB4(v7, v6);
  sub_1A967C46C(v7);
}

- (void)setHostPrincipal:(id)principal withProtocol:(id)protocol
{
  if (principal)
  {
    protocolCopy = protocol;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    protocolCopy2 = protocol;
    selfCopy2 = self;
  }

  sub_1A982210C(v10, protocol);

  sub_1A97B06FC(v10, &qword_1EB3B0BA0, &unk_1A99923D0);
}

- (id)createInstanceWithUUID:(id)d
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  if (d)
  {
    sub_1A9976290();
    v9 = sub_1A99762C0();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1A99762C0();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  selfCopy = self;
  v12 = sub_1A9822324(v8);

  sub_1A97B06FC(v8, &unk_1EB3B29B0, &qword_1A9990640);

  return v12;
}

- (id)defaults
{
  defaults = [*(&self->super.isa + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin) defaults];

  return defaults;
}

- (void)localizedInfoDictionaryForKeys:(NSArray *)keys completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = keys;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1A9976C00();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A9998358;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A9998360;
  v15[5] = v14;
  keysCopy = keys;
  selfCopy = self;
  sub_1A98A683C(0, 0, v10, &unk_1A9998368, v15);
}

- (BOOL)beginUsingRequest:(id)request withSubsystemOptions:(id)options error:(id *)error
{
  if (options)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29A0, &qword_1A99982D0);
    v7 = sub_1A9976700();
  }

  else
  {
    v7 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A9822F28(request, v7);

  swift_unknownObjectRelease();

  return 1;
}

- (void)beginUsingRequest:(PKLaunchRequest *)request withSubsystemOptions:(NSDictionary *)options completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = request;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1A9976C00();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A9998338;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1A9998340;
  v17[5] = v16;
  swift_unknownObjectRetain();
  optionsCopy = options;
  selfCopy = self;
  sub_1A98A683C(0, 0, v12, &unk_1A9998348, v17);
}

- (void)beginUsingRequest:(PKLaunchRequest *)request completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = request;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1A9976C00();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A9998318;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A9998320;
  v15[5] = v14;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A98A683C(0, 0, v10, &unk_1A9998328, v15);
}

- (void)endUsingRequest:(PKLaunchRequest *)request completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = request;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1A9976C00();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A99982F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A9998300;
  v15[5] = v14;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A98A683C(0, 0, v10, &unk_1A9998308, v15);
}

- (id)export:(id *)export
{
  sub_1A97BFD80(MEMORY[0x1E69E7CC0]);
  v3 = sub_1A99766E0();

  return v3;
}

- (_TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end