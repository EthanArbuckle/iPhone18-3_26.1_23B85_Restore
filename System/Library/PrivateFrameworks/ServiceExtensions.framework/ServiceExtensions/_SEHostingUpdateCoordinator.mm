@interface _SEHostingUpdateCoordinator
- (_SEHostingUpdateCoordinator)initWithCoder:(id)coder;
- (id)initFromXPCRepresentation:(id)representation;
- (id)xpcRepresentation;
- (void)addHostable:(id)hostable;
- (void)addHostingView:(id)view;
- (void)commit;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SEHostingUpdateCoordinator

- (id)initFromXPCRepresentation:(id)representation
{
  swift_unknownObjectRetain();
  v4 = sub_26574F6A4(representation);
  swift_unknownObjectRelease();
  return v4;
}

- (id)xpcRepresentation
{
  createXPCRepresentation = *(&self->super.isa + OBJC_IVAR____SEHostingUpdateCoordinator__fence);
  if (createXPCRepresentation)
  {
    createXPCRepresentation = [createXPCRepresentation createXPCRepresentation];
    v2 = vars8;
  }

  return createXPCRepresentation;
}

- (_SEHostingUpdateCoordinator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_26574F78C();

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____SEHostingUpdateCoordinator__fence);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_2657501B8();
  [coderCopy encodeObject:v4 forKey:v6];
}

- (void)addHostable:(id)hostable
{
  hostableCopy = hostable;
  selfCopy = self;
  _SEHostingUpdateCoordinator.add(_:)(hostableCopy);
}

- (void)addHostingView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  _SEHostingUpdateCoordinator.add(_:)(viewCopy);
}

- (void)commit
{
  selfCopy = self;
  _SEHostingUpdateCoordinator.commit()();
}

@end