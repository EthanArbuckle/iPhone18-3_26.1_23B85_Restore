@interface SYDKeyID
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SYDKeyID)init;
- (SYDKeyID)initWithKey:(id)key storeIdentifier:(id)identifier;
- (int64_t)hash;
@end

@implementation SYDKeyID

- (SYDKeyID)initWithKey:(id)key storeIdentifier:(id)identifier
{
  v5 = sub_26C3BD2C4();
  v7 = v6;
  v8 = sub_26C3BD2C4();
  v9 = (self + OBJC_IVAR___SYDKeyID_key);
  *v9 = v5;
  v9[1] = v7;
  v10 = (self + OBJC_IVAR___SYDKeyID_storeIdentifier);
  *v10 = v8;
  v10[1] = v11;
  v13.receiver = self;
  v13.super_class = SYDKeyID;
  return [(SYDKeyID *)&v13 init];
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = SYDKeyID.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_26C3BD2F4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SYDKeyID.isEqual(_:)(v8);

  sub_26C387E14(v8);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  SYDKeyID.description.getter();

  v3 = sub_26C3BD2B4();

  return v3;
}

- (SYDKeyID)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end