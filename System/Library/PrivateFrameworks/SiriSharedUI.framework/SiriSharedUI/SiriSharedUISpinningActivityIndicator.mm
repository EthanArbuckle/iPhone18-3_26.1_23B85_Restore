@interface SiriSharedUISpinningActivityIndicator
- (void)layoutSubviews;
- (void)setContentLayer:(id)layer;
- (void)setDotMaskLayer:(id)layer;
- (void)showSpinner;
@end

@implementation SiriSharedUISpinningActivityIndicator

- (void)setContentLayer:(id)layer
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUISpinningActivityIndicator_contentLayer);
  *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUISpinningActivityIndicator_contentLayer) = layer;
  layerCopy = layer;
}

- (void)setDotMaskLayer:(id)layer
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUISpinningActivityIndicator_dotMaskLayer);
  *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUISpinningActivityIndicator_dotMaskLayer) = layer;
  layerCopy = layer;
}

- (void)showSpinner
{
  selfCopy = self;
  SiriSharedUISpinningActivityIndicator.showSpinner()();
}

- (void)layoutSubviews
{
  selfCopy = self;
  SiriSharedUISpinningActivityIndicator.layoutSubviews()();
}

@end