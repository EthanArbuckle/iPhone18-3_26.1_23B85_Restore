@interface _SEHostingUpdateCoordinator
- (_SEHostingUpdateCoordinator)initWithCoder:(id)a3;
- (id)initFromXPCRepresentation:(id)a3;
- (id)xpcRepresentation;
- (void)addHostable:(id)a3;
- (void)addHostingView:(id)a3;
- (void)commit;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SEHostingUpdateCoordinator

- (id)initFromXPCRepresentation:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_26574F6A4(a3);
  swift_unknownObjectRelease();
  return v4;
}

- (id)xpcRepresentation
{
  v3 = *(&self->super.isa + OBJC_IVAR____SEHostingUpdateCoordinator__fence);
  if (v3)
  {
    v3 = [v3 createXPCRepresentation];
    v2 = vars8;
  }

  return v3;
}

- (_SEHostingUpdateCoordinator)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_26574F78C();

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____SEHostingUpdateCoordinator__fence);
  v7 = a3;
  v5 = self;
  v6 = sub_2657501B8();
  [v7 encodeObject:v4 forKey:v6];
}

- (void)addHostable:(id)a3
{
  v4 = a3;
  v5 = self;
  _SEHostingUpdateCoordinator.add(_:)(v4);
}

- (void)addHostingView:(id)a3
{
  v4 = a3;
  v5 = self;
  _SEHostingUpdateCoordinator.add(_:)(v4);
}

- (void)commit
{
  v2 = self;
  _SEHostingUpdateCoordinator.commit()();
}

@end