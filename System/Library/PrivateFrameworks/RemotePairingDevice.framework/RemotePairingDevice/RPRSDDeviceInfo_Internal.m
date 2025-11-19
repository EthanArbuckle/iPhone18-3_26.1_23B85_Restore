@interface RPRSDDeviceInfo_Internal
- (BOOL)isEqual:(id)a3;
- (NSString)name;
- (NSUUID)uuid;
- (int64_t)hash;
@end

@implementation RPRSDDeviceInfo_Internal

- (NSString)name
{
  RSDDeviceInfo.name.getter();
  v2 = sub_26203A18C();

  return v2;
}

- (NSUUID)uuid
{
  v2 = sub_26203965C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  RSDDeviceInfo.uuid.getter(v6);
  v7 = sub_26203961C();
  (*(v3 + 8))(v6, v2);

  return v7;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_261F9EE24();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_26203A73C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_261F9EEC0(v8);

  sub_261F693A0(v8);
  return v6 & 1;
}

@end