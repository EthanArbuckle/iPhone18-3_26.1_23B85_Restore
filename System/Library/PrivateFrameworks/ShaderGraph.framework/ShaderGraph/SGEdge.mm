@interface SGEdge
- (SGEdge)init;
- (id)initFrom:(id)a3 to:(id)a4;
@end

@implementation SGEdge

- (id)initFrom:(id)a3 to:(id)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___SGEdge_from) = a3;
  *(&self->super.isa + OBJC_IVAR___SGEdge_to) = a4;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v8 = a3;
  v9 = a4;
  return [(SGEdge *)&v11 init];
}

- (SGEdge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end