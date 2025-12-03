@interface Client
- (BOOL)eraseAndReturnError:(id *)error;
- (NSString)description;
- (_TtC18ReplicatorServicesP33_E12FEAD95517CBB4AB29168F11BCC1CA6Client)init;
- (id)clientDescriptorsAndReturnError:(id *)error;
- (id)devicesAndReturnError:(id *)error;
- (id)localDeviceIDAndReturnError:(id *)error;
- (id)recordsAndReturnError:(id *)error;
@end

@implementation Client

- (NSString)description
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18ReplicatorServicesP33_E12FEAD95517CBB4AB29168F11BCC1CA6Client_lock);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 4);
  sub_1BAB9C37C(&v6);
  os_unfair_lock_unlock(v2 + 4);

  v4 = sub_1BABE74EC();

  return v4;
}

- (_TtC18ReplicatorServicesP33_E12FEAD95517CBB4AB29168F11BCC1CA6Client)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)localDeviceIDAndReturnError:(id *)error
{
  LocalDeviceID = type metadata accessor for MigrationXPCServerResponse.GetLocalDeviceID();
  MEMORY[0x1EEE9AC00](LocalDeviceID);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1BAB9B480(v6);

  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAB9C248(&unk_1EBC13D80, type metadata accessor for MigrationXPCServerResponse.GetLocalDeviceID);
  v8 = sub_1BABE6A8C();
  v10 = v9;
  v11 = sub_1BABE6BDC();
  sub_1BAAD73E4(v8, v10);

  sub_1BAB9C290(v6, type metadata accessor for MigrationXPCServerResponse.GetLocalDeviceID);

  return v11;
}

- (id)recordsAndReturnError:(id *)error
{
  selfCopy = self;
  v4 = sub_1BAB9B740();

  return v4;
}

- (id)devicesAndReturnError:(id *)error
{
  selfCopy = self;
  sub_1BAB9BA30(&OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_deviceProvider, "Returning %{public}ld devices for migration", sub_1BAB9C610, &v9);

  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAB9C18C();
  v4 = sub_1BABE6A8C();
  v6 = v5;

  v7 = sub_1BABE6BDC();
  sub_1BAAD73E4(v4, v6);

  return v7;
}

- (id)clientDescriptorsAndReturnError:(id *)error
{
  selfCopy = self;
  sub_1BAB9BA30(&OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_clientDescriptorProvider, "Returning %{public}ld client descriptors for migration", sub_1BAB9C610, &v9);

  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAB9C138();
  v4 = sub_1BABE6A8C();
  v6 = v5;

  v7 = sub_1BABE6BDC();
  sub_1BAAD73E4(v4, v6);

  return v7;
}

- (BOOL)eraseAndReturnError:(id *)error
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_1BAB9B048();
    swift_unknownObjectRelease();
  }

  return 1;
}

@end