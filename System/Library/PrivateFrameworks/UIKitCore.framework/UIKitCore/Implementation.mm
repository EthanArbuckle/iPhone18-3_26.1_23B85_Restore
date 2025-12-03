@interface Implementation
- (CGRect)_frameInView:(id)view cache:(id)cache;
- (UIEdgeInsets)_visualInsets;
- (_TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation)init;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)appendDescriptionToStream:(id)stream;
- (void)dealloc;
@end

@implementation Implementation

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  if (*&self->scrollView[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers])
  {
    v4 = *(&self->super.isa + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers);
    selfCopy = self;

    sub_1890A4410(selfCopy, v4);
  }
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers);
  v6 = *&self->scrollView[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers];
  *v4 = 0;
  v4[1] = 0;
  selfCopy = self;
  sub_188B025E0(v5, v6);

  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  [(Implementation *)&v8 dealloc];
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  selfCopy = self;
  sub_1890E90F8(streamCopy);
}

- (_TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (UIEdgeInsets)_visualInsets
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_style);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 2.0;
      v4 = 2.0;
      v5 = 2.0;
      v6 = 2.0;
    }

    else
    {
      v3 = 0.0;
      v4 = 0.0;
      v5 = 0.0;
      v6 = 0.0;
    }
  }

  else
  {
    v4 = -30.0;
    v3 = 0.0;
    v5 = 0.0;
    v6 = -30.0;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGRect)_frameInView:(id)view cache:(id)cache
{
  viewCopy = view;
  cacheCopy = cache;
  selfCopy = self;
  sub_1890E9B70(viewCopy, cacheCopy);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end