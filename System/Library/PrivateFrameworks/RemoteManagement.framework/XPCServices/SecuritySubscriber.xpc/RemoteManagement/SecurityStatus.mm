@interface SecurityStatus
+ (id)supportedStatusKeys;
- (_TtC18SecuritySubscriber14SecurityStatus)init;
- (void)queryForStatusWithKeyPaths:(NSArray *)a3 store:(RMSubscriberStore *)a4 completionHandler:(id)a5;
@end

@implementation SecurityStatus

+ (id)supportedStatusKeys
{
  sub_100001480(&qword_100018938, &qword_10000F448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000F250;
  *(inited + 32) = sub_10000E5E8();
  *(inited + 40) = v3;
  sub_10000C798(inited);
  swift_setDeallocating();
  sub_10000E3CC(inited + 32);
  v4.super.isa = sub_10000E738().super.isa;

  return v4.super.isa;
}

- (void)queryForStatusWithKeyPaths:(NSArray *)a3 store:(RMSubscriberStore *)a4 completionHandler:(id)a5
{
  v9 = (*(*(sub_100001480(&qword_1000188F0, &qword_10000F3A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_10000E728();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000F848;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10000F3C0;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_10000AA8C(0, 0, v11, &unk_10000F3C8, v16);
}

- (_TtC18SecuritySubscriber14SecurityStatus)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SecurityStatus();
  return [(SecurityStatus *)&v3 init];
}

@end