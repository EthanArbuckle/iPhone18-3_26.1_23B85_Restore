@interface VIUVisualIntelligenceOmnibar
- (VIUVisualIntelligenceOmnibar)initWithCoder:(id)coder;
- (VIUVisualIntelligenceOmnibar)initWithFrame:(CGRect)frame;
@end

@implementation VIUVisualIntelligenceOmnibar

- (VIUVisualIntelligenceOmnibar)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___VIUVisualIntelligenceOmnibar_analysisResult) = 0;
  result = sub_21E1429C4();
  __break(1u);
  return result;
}

- (VIUVisualIntelligenceOmnibar)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end