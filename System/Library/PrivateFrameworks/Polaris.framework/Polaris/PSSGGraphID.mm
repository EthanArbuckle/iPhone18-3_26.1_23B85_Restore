@interface PSSGGraphID
- (NSString)description;
- (PSSGGraphID)init;
- (PSSGGraphID)initWithName:(id)a3 session:(id)a4;
- (int64_t)hash;
@end

@implementation PSSGGraphID

- (PSSGGraphID)initWithName:(id)a3 session:(id)a4
{
  v5 = sub_25EB6E268();
  v7 = v6;
  v8 = sub_25EB6E268();
  v9 = (self + OBJC_IVAR___PSSGGraphID_name);
  *v9 = v5;
  v9[1] = v7;
  v10 = (self + OBJC_IVAR___PSSGGraphID_session);
  *v10 = v8;
  v10[1] = v11;
  v13.receiver = self;
  v13.super_class = PSSGGraphID;
  return [(PSSGGraphID *)&v13 init];
}

- (int64_t)hash
{
  v2 = self;
  v3 = PSSGGraphID.hash.getter();

  return v3;
}

- (NSString)description
{
  v2 = self;
  v3 = [(PSSGGraphID *)v2 session];
  sub_25EB6E268();

  MEMORY[0x25F8C69B0](8250, 0xE200000000000000);

  v4 = [(PSSGGraphID *)v2 name];
  v5 = sub_25EB6E268();
  v7 = v6;

  MEMORY[0x25F8C69B0](v5, v7);

  v8 = sub_25EB6E258();

  return v8;
}

- (PSSGGraphID)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end