@interface SBSeparatorView
+ (CGSize)nubHitTestSize;
- (CGRect)nubRect;
- (SBSeparatorView)initWithFrame:(CGRect)frame;
- (void)_updateNubViewFrame;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setKeyboardHeight:(double)height;
- (void)setNubStyle:(unint64_t)style;
@end

@implementation SBSeparatorView

- (SBSeparatorView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = SBSeparatorView;
  v3 = [(SBSeparatorView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_nubStyle = 0;
    v5 = [SBSeparatorNubView alloc];
    v6 = [(SBSeparatorNubView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    nubView = v4->_nubView;
    v4->_nubView = v6;

    [(SBSeparatorNubView *)v4->_nubView _setCornerRadius:2.0];
    [(SBSeparatorNubView *)v4->_nubView setAlpha:1.0];
    v8 = v4->_nubView;
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(SBSeparatorNubView *)v8 setBackgroundColor:secondaryLabelColor];

    [(SBSeparatorNubView *)v4->_nubView setUserInteractionEnabled:0];
    [(SBSeparatorView *)v4 addSubview:v4->_nubView];
    [(SBSeparatorView *)v4 _updateNubViewFrame];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBSeparatorView;
  [(SBSeparatorView *)&v3 layoutSubviews];
  [(SBSeparatorView *)self _updateNubViewFrame];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = SBSeparatorView;
  [(SBSeparatorView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(SBSeparatorView *)self _updateNubViewFrame];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SBSeparatorView;
  [(SBSeparatorView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SBSeparatorView *)self _updateNubViewFrame];
}

- (void)setNubStyle:(unint64_t)style
{
  if (self->_nubStyle != style)
  {
    self->_nubStyle = style;
    if (style == 2)
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      v5 = 0.0;
    }

    else
    {
      if (style == 1)
      {
        [MEMORY[0x277D75348] whiteColor];
      }

      else
      {
        [MEMORY[0x277D75348] secondaryLabelColor];
      }
      whiteColor = ;
      v5 = 1.0;
    }

    [(SBSeparatorNubView *)self->_nubView setAlpha:v5];
    [(SBSeparatorNubView *)self->_nubView setBackgroundColor:whiteColor];
  }
}

- (void)setKeyboardHeight:(double)height
{
  if (self->_keyboardHeight != height)
  {
    self->_keyboardHeight = height;
    [(SBSeparatorView *)self _updateNubViewFrame];
  }
}

- (CGRect)nubRect
{
  [(SBSeparatorNubView *)self->_nubView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

+ (CGSize)nubHitTestSize
{
  SBRectWithSize();
  v3 = v2 + 40.0;
  v5 = v4 + 40.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)_updateNubViewFrame
{
  [(SBSeparatorView *)self bounds];
  UIRectCenteredIntegralRect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBSeparatorView *)self frame];
  v12 = (v11 - self->_keyboardHeight) * 0.5;
  nubView = self->_nubView;
  SBRectWithSize();
  [(SBSeparatorNubView *)nubView setFrame:?];
  v14 = self->_nubView;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  MidX = CGRectGetMidX(v17);

  [(SBSeparatorNubView *)v14 setCenter:MidX, v12];
}

@end