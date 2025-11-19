@interface APPCDesiredPlacement
- (APPCDesiredPlacement)init;
- (APPCDesiredPlacement)initWithType:(int64_t)a3 count:(int64_t)a4;
@end

@implementation APPCDesiredPlacement

- (APPCDesiredPlacement)initWithType:(int64_t)a3 count:(int64_t)a4
{
  *(&self->super.isa + OBJC_IVAR___APPCDesiredPlacement_type) = a3;
  *(&self->super.isa + OBJC_IVAR___APPCDesiredPlacement_count) = a4;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DesiredPlacement();
  return [(APPCDesiredPlacement *)&v5 init];
}

- (APPCDesiredPlacement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end