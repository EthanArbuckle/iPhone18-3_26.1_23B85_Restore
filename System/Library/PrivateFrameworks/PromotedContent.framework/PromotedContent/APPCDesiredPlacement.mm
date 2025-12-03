@interface APPCDesiredPlacement
- (APPCDesiredPlacement)init;
- (APPCDesiredPlacement)initWithType:(int64_t)type count:(int64_t)count;
@end

@implementation APPCDesiredPlacement

- (APPCDesiredPlacement)initWithType:(int64_t)type count:(int64_t)count
{
  *(&self->super.isa + OBJC_IVAR___APPCDesiredPlacement_type) = type;
  *(&self->super.isa + OBJC_IVAR___APPCDesiredPlacement_count) = count;
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