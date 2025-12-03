@interface _UILatencyLightView.EmitterMaskView
+ (Class)layerClass;
- (_TtCC5UIKit19_UILatencyLightViewP33_EC16FCD6D726BF32B6086EE652C76F4615EmitterMaskView)initWithCoder:(id)coder;
- (_TtCC5UIKit19_UILatencyLightViewP33_EC16FCD6D726BF32B6086EE652C76F4615EmitterMaskView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation _UILatencyLightView.EmitterMaskView

+ (Class)layerClass
{
  sub_188A34624(0, &qword_1EA92E868);

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188DC9850();
}

- (_TtCC5UIKit19_UILatencyLightViewP33_EC16FCD6D726BF32B6086EE652C76F4615EmitterMaskView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtCC5UIKit19_UILatencyLightViewP33_EC16FCD6D726BF32B6086EE652C76F4615EmitterMaskView_emitterCell;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E6979360]) init];
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_TtCC5UIKit19_UILatencyLightViewP33_EC16FCD6D726BF32B6086EE652C76F4615EmitterMaskView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end