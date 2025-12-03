@interface SGEdge
- (SGEdge)init;
- (id)initFrom:(id)from to:(id)to;
@end

@implementation SGEdge

- (id)initFrom:(id)from to:(id)to
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___SGEdge_from) = from;
  *(&self->super.isa + OBJC_IVAR___SGEdge_to) = to;
  v11.receiver = self;
  v11.super_class = ObjectType;
  fromCopy = from;
  toCopy = to;
  return [(SGEdge *)&v11 init];
}

- (SGEdge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end