@interface SiriUIActionableFooterView
- (NSString)title;
- (SiriUIActionableFooterView)initWithFrame:(CGRect)a3;
- (SiriUIActionableFooterViewDelegate)delegate;
- (UIEdgeInsets)edgeInsets;
- (id)snippetViewController;
- (void)_buttonTapped:(id)a3;
- (void)layoutSubviews;
- (void)setHasKeyline:(BOOL)a3;
- (void)setSnippetViewController:(id)a3;
@end

@implementation SiriUIActionableFooterView

- (SiriUIActionableFooterView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SiriUIActionableFooterView;
  v3 = [(SiriUIActionableFooterView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[SiriUIContentButton buttonWithLightWeightFont];
    button = v3->_button;
    v3->_button = v4;

    [(UIButton *)v3->_button addTarget:v3 action:sel__buttonTapped_ forControlEvents:64];
    v6 = [(UIButton *)v3->_button titleLabel];
    [v6 setTextAlignment:0];

    [(UIButton *)v3->_button setContentHorizontalAlignment:1];
    [(UIButton *)v3->_button setTitleEdgeInsets:0.0, 30.0, 0.0, 0.0];
    v7 = [SiriUIKeyline keylineWithKeylineType:2];
    keyline = v3->_keyline;
    v3->_keyline = v7;

    [(SiriUIActionableFooterView *)v3 addSubview:v3->_button];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(SiriUIActionableFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIButton *)self->_button setFrame:?];
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  [(SiriUIKeyline *)self->_keyline sizeThatFits:v4, v6];
  keyline = self->_keyline;

  [(SiriUIKeyline *)keyline setFrame:v7, v8, v9, v10];
}

- (NSString)title
{
  v2 = [(UIButton *)self->_button titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setHasKeyline:(BOOL)a3
{
  if (self->_hasKeyline != a3)
  {
    self->_hasKeyline = a3;
    if (a3)
    {
      [(SiriUIActionableFooterView *)self addSubview:self->_keyline];
    }

    else
    {
      [(SiriUIKeyline *)self->_keyline removeFromSuperview];
    }
  }
}

- (void)setSnippetViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_snippetViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_storeWeak(&self->_snippetViewController, obj);
    v7 = [obj conformsToProtocol:&unk_287A68080];

    v5 = obj;
    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_snippetViewController);
      [(SiriUIActionableFooterView *)self setDelegate:v8];

      v5 = obj;
    }
  }
}

- (void)_buttonTapped:(id)a3
{
  v4 = [(SiriUIActionableFooterView *)self delegate];
  [v4 footerViewTapped:self];
}

- (UIEdgeInsets)edgeInsets
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)snippetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_snippetViewController);

  return WeakRetained;
}

- (SiriUIActionableFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end