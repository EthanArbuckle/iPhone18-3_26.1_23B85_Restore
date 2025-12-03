@interface PXSensitivityUIOverlayView
- (PXSensitivityUIOverlayView)initWithCoder:(id)coder;
- (PXSensitivityUIOverlayView)initWithFrame:(CGRect)frame;
- (void)overrideAnalysis:(int64_t)analysis with:(id)with;
@end

@implementation PXSensitivityUIOverlayView

- (PXSensitivityUIOverlayView)initWithCoder:(id)coder
{
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)overrideAnalysis:(int64_t)analysis with:(id)with
{
  withCopy = with;
  selfCopy = self;
  sub_1A3D7E5EC(analysis, withCopy);
}

- (PXSensitivityUIOverlayView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end