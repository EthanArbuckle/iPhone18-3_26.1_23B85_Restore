@interface NDFCoreShim
+ (id)idsDeviceIdentifier;
+ (id)sharedInstance;
- (void)clientHasActiveSubscription:(BOOL)subscription forConnection:(id)connection;
- (void)dnsServer:(id)server isResponding:(BOOL)responding;
- (void)listNDFDeviceObjectsWithIdentifier:(id)identifier reply:(id)reply;
- (void)networkRestrictsMulticastTrafficWithReply:(id)reply;
- (void)noteBackhaulIsBroken:(BOOL)broken;
- (void)noteDNSAllOutWithServers:(id)servers;
- (void)noteDNSConfigurationWithServers:(id)servers forWiFi:(BOOL)fi;
- (void)noteDeviceRecordUpdates:(id)updates reply:(id)reply;
- (void)noteIPAddressAcquisitionFailed:(BOOL)failed forInterface:(id)interface;
- (void)noteInterfaceOfInterest:(id)interest isRemoved:(BOOL)removed;
- (void)noteWiFiIsDisassociated:(BOOL)disassociated;
- (void)pingEndpoints:(id)endpoints reply:(id)reply;
- (void)sendMessage:(id)message toEndpoints:(id)endpoints reply:(id)reply;
- (void)triggerSendPayloadToDistributedSymptomsWithInterval:(int64_t)interval leeway:(int64_t)leeway reply:(id)reply;
- (void)updateDeviceWithStateDictionary:(id)dictionary removalKeys:(id)keys;
@end

@implementation NDFCoreShim

+ (id)sharedInstance
{
  if (qword_2814D4360 != -1)
  {
    swift_once();
  }

  v3 = qword_27DDA4010;

  return v3;
}

- (void)noteIPAddressAcquisitionFailed:(BOOL)failed forInterface:(id)interface
{
  failedCopy = failed;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0540, &qword_2328172B8);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0548, &qword_2328172C0);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = v21 - v15;
  if (interface)
  {
    v17 = sub_2327D73C8();
    v19 = v18;
    (*(v8 + 16))(v11, *(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + *(**(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + 96), v7);
    v21[0] = failedCopy;
    v21[1] = v17;
    v21[2] = v19;
    v22 = 2;
    selfCopy = self;
    sub_2327D7438();
    (*(v8 + 8))(v11, v7);
    (*(v13 + 8))(v16, v12);
  }
}

+ (id)idsDeviceIdentifier
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0620, &qword_2328176B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4, v5, v6);
  v8 = &v15 - v7;
  sub_2327D7248();
  v9 = sub_2327D7238();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_2327D7228();
    (*(v10 + 8))(v8, v9);
    v12 = v13;
  }

  return v12;
}

- (void)updateDeviceWithStateDictionary:(id)dictionary removalKeys:(id)keys
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0520, &qword_232817298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0528, &qword_2328172A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16, v17, v18);
  v20 = v24 - v19;
  v21 = sub_2327D73A8();
  v22 = sub_2327D73E8();
  (*(v6 + 16))(v12, *(&self->super.isa + OBJC_IVAR___NDFCoreShim_deviceStateProcessor) + *(**(&self->super.isa + OBJC_IVAR___NDFCoreShim_deviceStateProcessor) + 96), v5);
  v24[0] = v21;
  v24[1] = v22;
  v24[2] = 0;
  v25 = 0;
  selfCopy = self;
  sub_2327D7438();
  (*(v6 + 8))(v12, v5);
  (*(v14 + 8))(v20, v13);
}

- (void)noteDeviceRecordUpdates:(id)updates reply:(id)reply
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0520, &qword_232817298);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9, v10, v11);
  v13 = v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0528, &qword_2328172A0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17, v18, v19);
  v21 = v26 - v20;
  v22 = _Block_copy(reply);
  v23 = sub_2327D73E8();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  (*(v7 + 16))(v13, *(&self->super.isa + OBJC_IVAR___NDFCoreShim_deviceStateProcessor) + *(**(&self->super.isa + OBJC_IVAR___NDFCoreShim_deviceStateProcessor) + 96), v6);
  v26[0] = v23;
  v26[1] = sub_2327CFA0C;
  v26[2] = v24;
  v27 = 1;
  selfCopy = self;
  sub_2327D7438();
  (*(v7 + 8))(v13, v6);
  (*(v15 + 8))(v21, v14);
}

- (void)noteDNSConfigurationWithServers:(id)servers forWiFi:(BOOL)fi
{
  v6 = sub_2327D74A8();
  selfCopy = self;
  sub_2327C83EC(v6, fi);
}

- (void)dnsServer:(id)server isResponding:(BOOL)responding
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0530, &qword_2328172A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9, v10, v11);
  v13 = v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0538, &qword_2328172B0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17, v18, v19);
  v21 = v26 - v20;
  v22 = sub_2327D73C8();
  v24 = v23;
  (*(v7 + 16))(v13, *(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkConfigProcessor) + *(**(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkConfigProcessor) + 96), v6);
  v26[1] = v22;
  v26[2] = v24;
  v27 = responding | 0x40;
  selfCopy = self;
  sub_2327D7438();
  (*(v7 + 8))(v13, v6);
  (*(v15 + 8))(v21, v14);
}

- (void)noteDNSAllOutWithServers:(id)servers
{
  if (servers)
  {
    v4 = sub_2327D74A8();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_2327C8AA4(v4);
}

- (void)noteBackhaulIsBroken:(BOOL)broken
{
  brokenCopy = broken;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0540, &qword_2328172B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10);
  v12 = v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0548, &qword_2328172C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16, v17, v18);
  v20 = v22 - v19;
  (*(v6 + 16))(v12, *(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + *(**(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + 96), v5);
  v22[1] = 0;
  v22[2] = 0;
  v22[0] = brokenCopy;
  v23 = 0;
  selfCopy = self;
  sub_2327D7438();
  (*(v6 + 8))(v12, v5);
  (*(v14 + 8))(v20, v13);
}

- (void)noteWiFiIsDisassociated:(BOOL)disassociated
{
  disassociatedCopy = disassociated;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0540, &qword_2328172B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10);
  v12 = v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0548, &qword_2328172C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16, v17, v18);
  v20 = v22 - v19;
  (*(v6 + 16))(v12, *(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + *(**(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + 96), v5);
  v22[1] = 0;
  v22[2] = 0;
  v22[0] = disassociatedCopy;
  v23 = 1;
  selfCopy = self;
  sub_2327D7438();
  (*(v6 + 8))(v12, v5);
  (*(v14 + 8))(v20, v13);
}

- (void)noteInterfaceOfInterest:(id)interest isRemoved:(BOOL)removed
{
  removedCopy = removed;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0540, &qword_2328172B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9, v10, v11);
  v13 = v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0548, &qword_2328172C0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17, v18, v19);
  v21 = v26 - v20;
  v22 = sub_2327D73C8();
  v24 = v23;
  (*(v7 + 16))(v13, *(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + *(**(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + 96), v6);
  v26[0] = v22;
  v26[1] = v24;
  v26[2] = removedCopy;
  v27 = 3;
  selfCopy = self;
  sub_2327D7438();
  (*(v7 + 8))(v13, v6);
  (*(v15 + 8))(v21, v14);
}

- (void)listNDFDeviceObjectsWithIdentifier:(id)identifier reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9, v10, v11);
  v13 = &v22 - v12;
  v14 = _Block_copy(reply);
  if (identifier)
  {
    v15 = sub_2327D73C8();
    identifier = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  v18 = *(&self->super.isa + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v18)
  {
    v19 = sub_2327D7418();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    v20[5] = v15;
    v20[6] = identifier;
    v20[7] = sub_2327CFF70;
    v20[8] = v17;

    sub_2327C7494(0, 0, v13, &unk_232817608, v20);
  }

  else
  {
    selfCopy = self;
    _Block_copy(v14);

    (*(v14 + 2))(v14, 0);

    _Block_release(v14);
  }
}

- (void)clientHasActiveSubscription:(BOOL)subscription forConnection:(id)connection
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9, v10, v11);
  v13 = &v18 - v12;
  v14 = *(&self->super.isa + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v14)
  {
    v15 = sub_2327D7418();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = v14;
    *(v16 + 40) = subscription;
    *(v16 + 48) = connection;
    connectionCopy = connection;

    sub_2327C7494(0, 0, v13, &unk_2328175F8, v16);
  }
}

- (void)sendMessage:(id)message toEndpoints:(id)endpoints reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = sub_2327D73C8();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA05B8, &qword_2328175E0);
  v10 = sub_2327D73E8();
  _Block_copy(v6);
  selfCopy = self;
  sub_2327CF048(v7, v9, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)pingEndpoints:(id)endpoints reply:(id)reply
{
  v5 = _Block_copy(reply);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA05B8, &qword_2328175E0);
  v6 = sub_2327D73E8();
  _Block_copy(v5);
  selfCopy = self;
  sub_2327CF2C0(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)triggerSendPayloadToDistributedSymptomsWithInterval:(int64_t)interval leeway:(int64_t)leeway reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11, v12, v13);
  v15 = &v21 - v14;
  v16 = _Block_copy(reply);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = *(&self->super.isa + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v18)
  {
    v19 = sub_2327D7418();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    v20[5] = interval;
    v20[6] = leeway;
    v20[7] = sub_2327CF758;
    v20[8] = v17;

    sub_2327C7494(0, 0, v15, &unk_2328175D0, v20);
  }

  else
  {
    _Block_copy(v16);
    (*(v16 + 2))(v16, 0);

    _Block_release(v16);
  }
}

- (void)networkRestrictsMulticastTrafficWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  sub_2327CF518(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end