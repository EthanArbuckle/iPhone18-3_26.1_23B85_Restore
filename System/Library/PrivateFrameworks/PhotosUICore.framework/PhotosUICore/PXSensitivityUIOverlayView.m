@interface PXSensitivityUIOverlayView
- (PXSensitivityUIOverlayView)initWithCoder:(id)a3;
- (PXSensitivityUIOverlayView)initWithFrame:(CGRect)a3;
- (void)overrideAnalysis:(int64_t)a3 with:(id)a4;
@end

@implementation PXSensitivityUIOverlayView

- (PXSensitivityUIOverlayView)initWithCoder:(id)a3
{
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)overrideAnalysis:(int64_t)a3 with:(id)a4
{
  v6 = a4;
  v7 = self;
  sub_1A3D7E5EC(a3, v6);
}

- (PXSensitivityUIOverlayView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end