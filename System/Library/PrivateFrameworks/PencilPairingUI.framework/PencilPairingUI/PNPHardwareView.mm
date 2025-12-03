@interface PNPHardwareView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PNPHardwareView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setAnimationType:(unint64_t)type;
@end

@implementation PNPHardwareView

- (void)layoutSubviews
{
  pencilView = self->_pencilView;
  [(PNPHardwareView *)self bounds];

  [(PNPPencilView *)pencilView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PNPPencilView *)self->_pencilView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setAnimationType:(unint64_t)type
{
  if (self->_animationType != type)
  {
    self->_animationType = type;
    [(PNPSyntheticPencilInteractionEventSource *)self->_eventSource stop];
    [(PNPSyntheticPencilInteractionEventSource *)self->_eventSource setEventDestination:0];
    v6 = 0;
    if (type == 1)
    {
      v6 = objc_alloc_init(PNPQuickSwapEventSource);
    }

    [(PNPSyntheticPencilInteractionEventSource *)v6 setEventDestination:self->_pencilView];
    [(PNPSyntheticPencilInteractionEventSource *)v6 play];
    eventSource = self->_eventSource;
    self->_eventSource = &v6->super;

    [(PNPHardwareView *)self setNeedsLayout];
  }
}

- (PNPHardwareView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PNPHardwareView;
  v3 = [(PNPHardwareView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = [[PNPPencilView alloc] initWithVariant:1];
  pencilView = v3->_pencilView;
  v3->_pencilView = v4;

  v6 = v3->_pencilView;
  v7 = objc_opt_new();
  [(PNPPencilView *)v6 setDeviceState:v7];

  [(PNPHardwareView *)v3 addSubview:v3->_pencilView];
  return v3;
}

@end