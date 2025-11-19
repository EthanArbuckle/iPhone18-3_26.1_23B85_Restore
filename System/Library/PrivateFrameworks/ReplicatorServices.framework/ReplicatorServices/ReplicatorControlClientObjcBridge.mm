@interface ReplicatorControlClientObjcBridge
- (_TtC18ReplicatorServices33ReplicatorControlClientObjcBridge)init;
- (id)allowList;
- (id)devices;
- (id)pushToken:(id)a3;
- (void)setAllowList:(id)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation ReplicatorControlClientObjcBridge

- (id)devices
{
  v2 = self;
  sub_1BAB2E5A8();

  sub_1BAB2F8D8();
  v3 = sub_1BABE769C();

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  v4 = self;
  sub_1BAB2E8B0(a3);
}

- (id)allowList
{
  v2 = self;
  v3 = sub_1BAB2EBD4();

  if (v3)
  {
    sub_1BABE6CFC();
    v4 = sub_1BABE769C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAllowList:(id)a3
{
  if (a3)
  {
    sub_1BABE6CFC();
    v4 = sub_1BABE76AC();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v6._rawValue = v4;
  sub_1BAB2ED50(v6);
}

- (id)pushToken:(id)a3
{
  v4 = sub_1BABE6CFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BABE6CDC();
  v8 = self;
  v9 = sub_1BAB2EFDC();
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  v12 = 0;
  if (v11 >> 60 != 15)
  {
    v13 = sub_1BABE6BDC();
    sub_1BAADAEE8(v9, v11);
    v12 = v13;
  }

  return v12;
}

- (_TtC18ReplicatorServices33ReplicatorControlClientObjcBridge)init
{
  v3 = OBJC_IVAR____TtC18ReplicatorServices33ReplicatorControlClientObjcBridge_controlClient;
  type metadata accessor for ReplicatorControlClient();
  swift_allocObject();
  *(&self->super.isa + v3) = ReplicatorControlClient.init()();
  v5.receiver = self;
  v5.super_class = type metadata accessor for ReplicatorControlClientObjcBridge();
  return [(ReplicatorControlClientObjcBridge *)&v5 init];
}

@end