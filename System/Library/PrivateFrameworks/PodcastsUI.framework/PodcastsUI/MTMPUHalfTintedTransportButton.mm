@interface MTMPUHalfTintedTransportButton
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)isEnabled;
- (BOOL)shouldTrack;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTMPUHalfTintedTransportButton)initWithFrame:(CGRect)frame;
- (id)_handleButtonHitTest:(CGPoint)test withEvent:(id)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateRegularImage;
- (void)cancelTrackingWithEvent:(id)event;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setRegularImage:(id)image;
- (void)setRegularImageColor:(id)color;
- (void)setSelected:(BOOL)selected;
- (void)setTintedImage:(id)image;
@end

@implementation MTMPUHalfTintedTransportButton

- (MTMPUHalfTintedTransportButton)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = MTMPUHalfTintedTransportButton;
  v3 = [(MTMPUHalfTintedTransportButton *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MTMPUTransportButtonEventHandler);
    transportButtonEventHandler = v3->_transportButtonEventHandler;
    v3->_transportButtonEventHandler = v4;

    [(MTMPUTransportButtonEventHandler *)v3->_transportButtonEventHandler setButton:v3];
    _newButton = [(MTMPUHalfTintedTransportButton *)v3 _newButton];
    regularButton = v3->_regularButton;
    v3->_regularButton = _newButton;

    [(UIButton *)v3->_regularButton setHidden:1];
    [(UIButton *)v3->_regularButton setUserInteractionEnabled:0];
    [(MTMPUHalfTintedTransportButton *)v3 addSubview:v3->_regularButton];
    _newButton2 = [(MTMPUHalfTintedTransportButton *)v3 _newButton];
    tintedButton = v3->_tintedButton;
    v3->_tintedButton = _newButton2;

    [(UIButton *)v3->_tintedButton setHidden:1];
    [(UIButton *)v3->_tintedButton setUserInteractionEnabled:0];
    [(MTMPUHalfTintedTransportButton *)v3 addSubview:v3->_tintedButton];
  }

  return v3;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = MTMPUHalfTintedTransportButton;
  [(MTMPUHalfTintedTransportButton *)&v11 layoutSubviews];
  [(MTMPUHalfTintedTransportButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIButton *)self->_regularButton setFrame:?];
  [(UIButton *)self->_tintedButton setFrame:v4, v6, v8, v10];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  transportButtonEventHandler = self->_transportButtonEventHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__MTMPUHalfTintedTransportButton_hitTest_withEvent___block_invoke;
  v12[3] = &unk_2782BEAD8;
  v14 = x;
  v15 = y;
  v12[4] = self;
  v13 = eventCopy;
  v9 = eventCopy;
  v10 = [(MTMPUTransportButtonEventHandler *)transportButtonEventHandler performHitTestingBlock:v12];

  return v10;
}

- (id)_handleButtonHitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = MTMPUHalfTintedTransportButton;
  v5 = [(MTMPUHalfTintedTransportButton *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self->_regularButton || v5 == self->_tintedButton)
  {
    selfCopy = self;

    v6 = selfCopy;
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UIButton *)self->_regularButton sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  [(UIButton *)self->_tintedButton sizeThatFits:width, height];
  if (v7 >= v10)
  {
    v10 = v7;
  }

  if (v9 >= v11)
  {
    v11 = v9;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  selfCopy = self;
  transportButtonEventHandler = self->_transportButtonEventHandler;
  eventCopy = event;
  touchCopy = touch;
  [(MTMPUTransportButtonEventHandler *)transportButtonEventHandler beginTrackingWithTouch:touchCopy withEvent:eventCopy];
  v10.receiver = selfCopy;
  v10.super_class = MTMPUHalfTintedTransportButton;
  LOBYTE(selfCopy) = [(MTMPUHalfTintedTransportButton *)&v10 beginTrackingWithTouch:touchCopy withEvent:eventCopy];

  return selfCopy;
}

- (void)cancelTrackingWithEvent:(id)event
{
  transportButtonEventHandler = self->_transportButtonEventHandler;
  eventCopy = event;
  [(MTMPUTransportButtonEventHandler *)transportButtonEventHandler cancelTrackingWithEvent:eventCopy];
  v6.receiver = self;
  v6.super_class = MTMPUHalfTintedTransportButton;
  [(MTMPUHalfTintedTransportButton *)&v6 cancelTrackingWithEvent:eventCopy];
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  transportButtonEventHandler = self->_transportButtonEventHandler;
  eventCopy = event;
  touchCopy = touch;
  [(MTMPUTransportButtonEventHandler *)transportButtonEventHandler endTrackingWithTouch:touchCopy withEvent:eventCopy];
  v9.receiver = self;
  v9.super_class = MTMPUHalfTintedTransportButton;
  [(MTMPUHalfTintedTransportButton *)&v9 endTrackingWithTouch:touchCopy withEvent:eventCopy];
}

- (BOOL)isEnabled
{
  v4.receiver = self;
  v4.super_class = MTMPUHalfTintedTransportButton;
  return [(MTMPUHalfTintedTransportButton *)&v4 isEnabled]|| [(MTMPUTransportButtonEventHandler *)self->_transportButtonEventHandler shouldFakeEnabled];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = MTMPUHalfTintedTransportButton;
  [(MTMPUHalfTintedTransportButton *)&v5 setEnabled:?];
  [(UIButton *)self->_regularButton setEnabled:enabledCopy];
  [(UIButton *)self->_tintedButton setEnabled:enabledCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = MTMPUHalfTintedTransportButton;
  [(MTMPUHalfTintedTransportButton *)&v5 setHighlighted:?];
  [(UIButton *)self->_regularButton setHighlighted:highlightedCopy];
  [(UIButton *)self->_tintedButton setHighlighted:highlightedCopy];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = MTMPUHalfTintedTransportButton;
  [(MTMPUHalfTintedTransportButton *)&v5 setSelected:?];
  if ([(MTMPUHalfTintedTransportButton *)self _shouldForwardSelectedState])
  {
    [(UIButton *)self->_regularButton setSelected:selectedCopy];
    [(UIButton *)self->_tintedButton setSelected:selectedCopy];
  }
}

- (BOOL)shouldTrack
{
  v4.receiver = self;
  v4.super_class = MTMPUHalfTintedTransportButton;
  return [(MTMPUHalfTintedTransportButton *)&v4 shouldTrack]|| [(MTMPUTransportButtonEventHandler *)self->_transportButtonEventHandler shouldForceTrackingEnabled];
}

- (void)setRegularImage:(id)image
{
  imageCopy = image;
  if (self->_regularImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_regularImage, image);
    [(MTMPUHalfTintedTransportButton *)self _updateRegularImage];
    [(UIButton *)self->_regularButton setHidden:v6 == 0];
    imageCopy = v6;
  }
}

- (void)setRegularImageColor:(id)color
{
  colorCopy = color;
  if (self->_regularImageColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_regularImageColor, color);
    [(UIButton *)self->_regularButton setTintColor:v6];
    colorCopy = v6;
    if ((v6 != 0) == (self->_regularImageColor == 0))
    {
      [(MTMPUHalfTintedTransportButton *)self _updateRegularImage];
      colorCopy = v6;
    }
  }
}

- (void)setTintedImage:(id)image
{
  imageCopy = image;
  if (self->_tintedImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_tintedImage, image);
    v6 = [(UIImage *)v7 imageWithRenderingMode:2];
    [(MTMPUHalfTintedTransportButton *)self _applyImage:v6 toButton:self->_tintedButton];

    [(UIButton *)self->_tintedButton setHidden:v7 == 0];
    imageCopy = v7;
  }
}

- (void)_updateRegularImage
{
  if (self->_regularImageColor)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [(UIImage *)self->_regularImage imageWithRenderingMode:v3];
  [(MTMPUHalfTintedTransportButton *)self _applyImage:v4 toButton:self->_regularButton];
}

@end