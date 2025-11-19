@interface SiriSharedUISpinningActivityIndicator
- (void)layoutSubviews;
- (void)setContentLayer:(id)a3;
- (void)setDotMaskLayer:(id)a3;
- (void)showSpinner;
@end

@implementation SiriSharedUISpinningActivityIndicator

- (void)setContentLayer:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUISpinningActivityIndicator_contentLayer);
  *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUISpinningActivityIndicator_contentLayer) = a3;
  v3 = a3;
}

- (void)setDotMaskLayer:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUISpinningActivityIndicator_dotMaskLayer);
  *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUISpinningActivityIndicator_dotMaskLayer) = a3;
  v3 = a3;
}

- (void)showSpinner
{
  v2 = self;
  SiriSharedUISpinningActivityIndicator.showSpinner()();
}

- (void)layoutSubviews
{
  v2 = self;
  SiriSharedUISpinningActivityIndicator.layoutSubviews()();
}

@end