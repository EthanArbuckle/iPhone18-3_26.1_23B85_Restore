@interface SiriSharedUILatencyView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SiriSharedUILatencyView)initWithContentInsets:(UIEdgeInsets)a3;
- (SiriSharedUILatencyViewDelegate)delegate;
- (UIEdgeInsets)contentInsets;
- (id)_createLabelForUtterance:(id)a3;
- (id)_getTextFromUtteranceView;
- (id)_utteranceLabel;
- (void)_clear;
- (void)_setUtterance:(id)a3;
- (void)_update;
- (void)layoutSubviews;
- (void)setViewModel:(id)a3;
@end

@implementation SiriSharedUILatencyView

- (SiriSharedUILatencyView)initWithContentInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v12.receiver = self;
  v12.super_class = SiriSharedUILatencyView;
  v7 = [(SiriSharedUILatencyView *)&v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_contentInsets.top = top;
    v7->_contentInsets.left = left;
    v7->_contentInsets.bottom = bottom;
    v7->_contentInsets.right = right;
    v9 = [[SiriSharedUILatencyViewModel alloc] initWithUserUtterance:0 shouldSuppress:0];
    viewModel = v8->_viewModel;
    v8->_viewModel = v9;
  }

  return v8;
}

- (void)setViewModel:(id)a3
{
  v7 = a3;
  if (![(SiriSharedUILatencyViewModel *)self->_viewModel isEqualToViewModel:?])
  {
    v4 = [v7 viewShouldUpdateFromOldModel:self->_viewModel];
    v5 = [v7 copy];
    viewModel = self->_viewModel;
    self->_viewModel = v5;

    if (v4)
    {
      [(SiriSharedUILatencyView *)self _update];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SiriSharedUILatencyView *)self _getTextFromUtteranceView];
  v7 = v6;
  if (v6 && [v6 length])
  {
    [(SiriSharedUIContentLabel *)self->_utteranceView sizeThatFits:width - self->_contentInsets.left - self->_contentInsets.right, height - self->_contentInsets.top - self->_contentInsets.bottom];
    v9 = self->_contentInsets.left + v8 + self->_contentInsets.right;
    v11 = v10 + self->_contentInsets.top + self->_contentInsets.bottom;
    if (v9 < width)
    {
      width = v9;
    }

    if (v11 < height)
    {
      height = v11;
    }
  }

  else
  {
    width = *MEMORY[0x277CBF3A8];
    height = *(MEMORY[0x277CBF3A8] + 8);
  }

  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SiriSharedUILatencyView;
  [(SiriSharedUILatencyView *)&v12 layoutSubviews];
  v3 = [(SiriSharedUILatencyView *)self _getTextFromUtteranceView];
  v4 = v3;
  if (v3 && [v3 length])
  {
    [(SiriSharedUILatencyView *)self bounds];
    x = v13.origin.x;
    y = v13.origin.y;
    width = v13.size.width;
    height = v13.size.height;
    v9 = CGRectGetMinX(v13) + self->_contentInsets.left;
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v10 = CGRectGetMinY(v14) + self->_contentInsets.top;
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v11 = CGRectGetWidth(v15) - (self->_contentInsets.left + self->_contentInsets.right);
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    [(SiriSharedUIContentLabel *)self->_utteranceView setFrame:v9, v10, v11, CGRectGetHeight(v16) - (self->_contentInsets.top + self->_contentInsets.bottom)];
  }
}

- (void)_update
{
  v3 = [(SiriSharedUILatencyView *)self viewModel];
  v4 = [v3 shouldDisplay];

  if (v4)
  {
    v6 = [(SiriSharedUILatencyView *)self viewModel];
    v5 = [v6 userUtterance];
    [(SiriSharedUILatencyView *)self _setUtterance:v5];
  }

  else
  {

    [(SiriSharedUILatencyView *)self _clear];
  }
}

- (void)_setUtterance:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    v4 = [v4 isEqualToString:&stru_282F84AA8];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [(SiriSharedUILatencyView *)self _createLabelForUtterance:v8];
      utteranceView = self->_utteranceView;
      self->_utteranceView = v6;

      [(SiriSharedUILatencyView *)self addSubview:self->_utteranceView];
      v4 = [(SiriSharedUILatencyView *)self setNeedsLayout];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_clear
{
  [(SiriSharedUIContentLabel *)self->_utteranceView removeFromSuperview];
  utteranceView = self->_utteranceView;
  self->_utteranceView = 0;

  [(SiriSharedUILatencyView *)self setNeedsLayout];
}

- (id)_createLabelForUtterance:(id)a3
{
  v4 = a3;
  v5 = [(SiriSharedUILatencyView *)self _utteranceLabel];
  [(SiriSharedUILatencyView *)self _setTextForLabel:v5 text:v4];

  return v5;
}

- (id)_utteranceLabel
{
  utteranceView = self->_utteranceView;
  if (utteranceView)
  {
    v3 = utteranceView;
  }

  else
  {
    v3 = objc_alloc_init(SiriSharedUIContentLabel);
    v5 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(SiriSharedUIContentLabel *)v3 setTextColor:v5];

    v6 = [(SiriSharedUILatencyView *)self _fontForUtteranceLabel];
    [(SiriSharedUIContentLabel *)v3 setFont:v6];

    [(SiriSharedUIContentLabel *)v3 setNumberOfLines:0];
  }

  return v3;
}

- (id)_getTextFromUtteranceView
{
  utteranceView = self->_utteranceView;
  if (utteranceView)
  {
    utteranceView = [utteranceView text];
    v2 = vars8;
  }

  return utteranceView;
}

- (SiriSharedUILatencyViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end