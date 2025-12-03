@interface PSSGResourceID
- (NSString)description;
- (NSString)session;
- (PSSGResourceID)init;
- (PSSGResourceID)initWithName:(id)name session:(id)session storageMode:(unint64_t)mode;
- (id)initGlobalWithName:(id)name;
- (id)initLocalWithName:(id)name session:(id)session;
- (int64_t)hash;
@end

@implementation PSSGResourceID

- (NSString)session
{
  if (*(self + OBJC_IVAR___PSSGResourceID_session + 8))
  {
    v2 = *(self + OBJC_IVAR___PSSGResourceID_session);
    v3 = *(self + OBJC_IVAR___PSSGResourceID_session + 8);

    v4 = sub_25EB6E258();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)initLocalWithName:(id)name session:(id)session
{
  v5 = sub_25EB6E268();
  v7 = v6;
  v8 = sub_25EB6E268();
  v9 = (self + OBJC_IVAR___PSSGResourceID_name);
  *v9 = v5;
  v9[1] = v7;
  v10 = (self + OBJC_IVAR___PSSGResourceID_session);
  *v10 = v8;
  v10[1] = v11;
  v13.receiver = self;
  v13.super_class = PSSGResourceID;
  return [(PSSGResourceID *)&v13 init];
}

- (id)initGlobalWithName:(id)name
{
  v4 = sub_25EB6E268();
  v5 = (self + OBJC_IVAR___PSSGResourceID_name);
  *v5 = v4;
  v5[1] = v6;
  v7 = (self + OBJC_IVAR___PSSGResourceID_session);
  *v7 = 0;
  v7[1] = 0;
  v9.receiver = self;
  v9.super_class = PSSGResourceID;
  return [(PSSGResourceID *)&v9 init];
}

- (PSSGResourceID)initWithName:(id)name session:(id)session storageMode:(unint64_t)mode
{
  v6 = sub_25EB6E268();
  v8 = v7;
  v9 = sub_25EB6E268();
  return PSSGResourceID.init(name:session:storageMode:)(v6, v8, v9, v10, mode);
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = PSSGResourceID.hash.getter();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  PSSGResourceID.description.getter();

  v3 = sub_25EB6E258();

  return v3;
}

- (PSSGResourceID)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end