@interface SiriSharedUIContentPlatterSeparatorView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SiriSharedUIContentPlatterSeparatorView)initWithFrame:(CGRect)a3;
- (double)_scale;
- (void)_setupBackgroundView;
- (void)_setupBackgroundViewSmall;
- (void)layoutSubviews;
- (void)setSeparatorType:(int64_t)a3;
@end

@implementation SiriSharedUIContentPlatterSeparatorView

- (SiriSharedUIContentPlatterSeparatorView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SiriSharedUIContentPlatterSeparatorView;
  v3 = [(SiriSharedUIContentPlatterSeparatorView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SiriSharedUIContentPlatterSeparatorView *)v3 _setupBackgroundView];
    [(SiriSharedUIContentPlatterSeparatorView *)v4 _setupBackgroundViewSmall];
    [(SiriSharedUIContentPlatterSeparatorView *)v4 addSubview:v4->_backgroundView];
    [(SiriSharedUIContentPlatterSeparatorView *)v4 addSubview:v4->_backgroundViewSmall];
    v4->_separatorType = 0;
  }

  return v4;
}

- (void)_setupBackgroundView
{
  v8 = [MEMORY[0x277D75210] effectWithStyle:8];
  v3 = [MEMORY[0x277D75D00] effectForBlurEffect:v8 style:7];
  v4 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v3];
  v5 = [(UIView *)v4 contentView];
  v6 = SiriSharedUIPlatterKeyLineColor();
  [v5 setBackgroundColor:v6];

  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;
}

- (void)_setupBackgroundViewSmall
{
  v3 = [objc_alloc(MEMORY[0x277D6F1C0]) initWithProminence:2];
  backgroundViewSmall = self->_backgroundViewSmall;
  self->_backgroundViewSmall = v3;

  v5 = self->_backgroundViewSmall;

  [(UIView *)v5 setHidden:1];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  separatorType = self->_separatorType;
  v5 = 0.0;
  if (separatorType > 1)
  {
    if (separatorType == 2)
    {
      v5 = 2.0;
      goto LABEL_12;
    }

    if (separatorType == 3)
    {
      v5 = 4.0;
      goto LABEL_12;
    }

    if (separatorType != 4)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!separatorType)
  {
LABEL_9:
    v5 = 8.0;
    goto LABEL_12;
  }

  if (separatorType == 1)
  {
    [(SiriSharedUIContentPlatterSeparatorView *)self _scale:a3.width];
    v5 = 1.0 / v6;
  }

LABEL_12:
  v7 = width;
  result.height = v5;
  result.width = v7;
  return result;
}

- (double)_scale
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = v3;

  return v4;
}

- (void)setSeparatorType:(int64_t)a3
{
  if (self->_separatorType != a3)
  {
    v13 = v4;
    v14 = v3;
    self->_separatorType = a3;
    backgroundView = self->_backgroundView;
    v9 = a3 == 1;
    v10 = a3 == 1;
    v11 = !v9;
    [(UIView *)backgroundView setHidden:v10, v13, v14, v5];
    backgroundViewSmall = self->_backgroundViewSmall;

    [(UIView *)backgroundViewSmall setHidden:v11];
  }
}

- (void)layoutSubviews
{
  backgroundView = self->_backgroundView;
  [(SiriSharedUIContentPlatterSeparatorView *)self bounds];
  [(UIView *)backgroundView setFrame:?];
  backgroundViewSmall = self->_backgroundViewSmall;
  [(SiriSharedUIContentPlatterSeparatorView *)self bounds];

  [(UIView *)backgroundViewSmall setFrame:?];
}

@end