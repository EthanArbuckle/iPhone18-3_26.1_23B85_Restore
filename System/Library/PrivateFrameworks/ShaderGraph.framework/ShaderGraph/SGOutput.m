@interface SGOutput
- (SGOutput)init;
- (unint64_t)type;
- (void)setType:(unint64_t)a3;
@end

@implementation SGOutput

- (unint64_t)type
{
  v3 = OBJC_IVAR___SGOutput_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(unint64_t)a3
{
  v5 = OBJC_IVAR___SGOutput_type;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (SGOutput)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end