@interface SiriUITwoButtonFooterView
+ (double)defaultHeight;
- (SiriUITwoButtonFooterView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SiriUITwoButtonFooterView

- (SiriUITwoButtonFooterView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SiriUITwoButtonFooterView;
  v3 = [(SiriUITwoButtonFooterView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SiriUITwoButtonFooterView *)v3 setBackgroundColor:clearColor];

    v5 = +[SiriUIKeyline verticalKeyline];
    verticalKeyline = v3->_verticalKeyline;
    v3->_verticalKeyline = v5;

    [(SiriUITwoButtonFooterView *)v3 addSubview:v3->_verticalKeyline];
    v7 = [SiriUIKeyline keylineWithKeylineType:2];
    horizontalKeyline = v3->_horizontalKeyline;
    v3->_horizontalKeyline = v7;

    [(SiriUITwoButtonFooterView *)v3 addSubview:v3->_horizontalKeyline];
    [(SiriUITwoButtonFooterView *)v3 prepareForReuse];
  }

  return v3;
}

+ (double)defaultHeight
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];

  return 44.0;
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = SiriUITwoButtonFooterView;
  [(SiriUITwoButtonFooterView *)&v7 prepareForReuse];
  [(SiriUIContentButton *)self->_rightButton removeFromSuperview];
  v3 = +[SiriUIContentButton buttonWithLightWeightFont];
  rightButton = self->_rightButton;
  self->_rightButton = v3;

  [(SiriUITwoButtonFooterView *)self addSubview:self->_rightButton];
  [(SiriUIContentButton *)self->_leftButton removeFromSuperview];
  v5 = +[SiriUIContentButton buttonWithLightWeightFont];
  leftButton = self->_leftButton;
  self->_leftButton = v5;

  [(SiriUITwoButtonFooterView *)self addSubview:self->_leftButton];
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = SiriUITwoButtonFooterView;
  [(SiriUITwoButtonFooterView *)&v24 layoutSubviews];
  [(SiriUITwoButtonFooterView *)self bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  MidX = CGRectGetMidX(v25);
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MinX = CGRectGetMinX(v26);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v12 = v11 < 2.0;
  v13 = 0.5;
  if (v12)
  {
    v13 = 1.0;
  }

  v14 = MidX + v13;

  [(SiriUIContentButton *)self->_leftButton setFrame:MinX, v8, v14, height];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v23 = MidX;
  [(SiriUIContentButton *)self->_rightButton setFrame:MidX, v8, CGRectGetMaxX(v27) - MidX, height];
  [(SiriUIKeyline *)self->_horizontalKeyline sizeThatFits:width, height];
  v16 = v15;
  v18 = v17;
  [(SiriUIKeyline *)self->_horizontalKeyline setFrame:x, 0.0, v15, v17];
  v28.origin.y = 0.0;
  v28.origin.x = x;
  v28.size.width = v16;
  v28.size.height = v18;
  MaxY = CGRectGetMaxY(v28);
  [(SiriUIKeyline *)self->_verticalKeyline sizeThatFits:width, height];
  v21 = v20;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v22 = CGRectGetHeight(v29);
  v30.origin.y = 0.0;
  v30.origin.x = x;
  v30.size.width = v16;
  v30.size.height = v18;
  [(SiriUIKeyline *)self->_verticalKeyline setFrame:v23, MaxY, v21, v22 - CGRectGetMaxY(v30)];
}

@end