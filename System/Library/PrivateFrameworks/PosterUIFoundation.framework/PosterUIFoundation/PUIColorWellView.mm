@interface PUIColorWellView
- (CGSize)intrinsicContentSize;
- (PUIColorWellView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PUIColorWellView

- (PUIColorWellView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PUIColorWellView;
  v3 = [(PUIColorWellView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [PUIColorWell alloc];
    v5 = [(UIColorWell *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    colorWell = v3->_colorWell;
    v3->_colorWell = v5;

    [(UIColorWell *)v3->_colorWell setSupportsAlpha:0];
    [(UIColorWell *)v3->_colorWell setSupportsEyedropper:1];
    [(PUIColorWellView *)v3 addSubview:v3->_colorWell];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUIColorWellView;
  [(PUIColorWellView *)&v3 layoutSubviews];
  [(PUIColorWell *)self->_colorWell intrinsicContentSize];
  [(PUIColorWellView *)self intrinsicContentSize];
  UIRectCenteredRect();
  [(PUIColorWell *)self->_colorWell setFrame:?];
}

- (CGSize)intrinsicContentSize
{
  v2 = 44.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end