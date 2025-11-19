@interface VFXREREnderer
- (MTLDevice)device;
- (VFXREREnderer)init;
- (void)setDevice:(id)a3;
@end

@implementation VFXREREnderer

- (MTLDevice)device
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDevice:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___VFXREREnderer_device) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (VFXREREnderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end