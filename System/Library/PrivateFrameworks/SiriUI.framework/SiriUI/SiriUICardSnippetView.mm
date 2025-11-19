@interface SiriUICardSnippetView
- (BOOL)isHint;
- (BOOL)isLoading;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SiriUICardSnippetView)initWithFrame:(CGRect)a3;
- (SiriUICardSnippetViewDataSource)dataSource;
- (SiriUICardSnippetViewDelegate)delegate;
- (SiriUISnippetViewController)backingViewController;
- (void)_sashViewRecognizedTapGestureWithGestureRecognizer:(id)a3;
- (void)layoutSubviews;
- (void)prepareForDrillInAnimation;
- (void)prepareForPopAnimationOfType:(int64_t)a3;
- (void)setCardView:(id)a3;
- (void)setDataSource:(id)a3;
- (void)setIsInAmbient:(BOOL)a3;
- (void)setIsInAmbientInteractivity:(BOOL)a3;
@end

@implementation SiriUICardSnippetView

- (SiriUICardSnippetView)initWithFrame:(CGRect)a3
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  Height = CGRectGetHeight(a3);
  if (Height >= 44.0)
  {
    v8 = Height;
  }

  else
  {
    v8 = 44.0;
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = v8;
  v9 = CGRectGetWidth(v15);
  if (v9 >= 100.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 100.0;
  }

  v14.receiver = self;
  v14.super_class = SiriUICardSnippetView;
  v11 = [(SiriUICardSnippetView *)&v14 initWithFrame:x, y, v10, v8];
  v12 = v11;
  if (v11)
  {
    [(SiriUICardSnippetView *)v11 _setOverrideVibrancyTrait:1];
    [(SiriUICardSnippetView *)v12 setShouldClipTopOfCard:0];
    v12->_isNavigating = 0;
  }

  return v12;
}

- (void)setIsInAmbient:(BOOL)a3
{
  if (self->_isInAmbient != a3)
  {
    self->_isInAmbient = a3;
    [(SiriUICardSnippetView *)self setNeedsLayout];
  }
}

- (void)setIsInAmbientInteractivity:(BOOL)a3
{
  if (self->_isInAmbientInteractivity != a3)
  {
    self->_isInAmbientInteractivity = a3;
    [(SiriUICardSnippetView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(UIView *)self->_cardView recursive_setSemanticContentAttribute:[(SiriUICardSnippetView *)self semanticContentAttribute]];
  v15.receiver = self;
  v15.super_class = SiriUICardSnippetView;
  [(SiriUICardSnippetView *)&v15 layoutSubviews];
  [(SiriUICardSnippetView *)self bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if (self->_shouldClipTopOfCard)
  {
    v11 = -8.0;
  }

  else
  {
    v11 = 0.0;
  }

  Width = CGRectGetWidth(*&v3);
  v16.origin.x = v7;
  v16.origin.y = v8;
  v16.size.width = v9;
  v16.size.height = v10;
  Height = CGRectGetHeight(v16);
  v14 = 8.0;
  if (!self->_shouldClipTopOfCard)
  {
    v14 = 0.0;
  }

  [(UIView *)self->_cardView setFrame:0.0, v11, Width, Height + v14];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(SiriUICardSnippetView *)self dataSource:a3.width];
  [v5 preferredContentHeight];
  v7 = 0.0;
  if (self->_shouldClipTopOfCard)
  {
    v7 = 8.0;
  }

  v8 = v6 - v7;

  if (v8 <= 0.0)
  {
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SiriUICardSnippetView sizeThatFits:]";
      _os_log_impl(&dword_26948D000, v9, OS_LOG_TYPE_DEFAULT, "%s No card content height.", &v12, 0xCu);
    }

    v8 = 0.0;
  }

  v10 = width;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setCardView:(id)a3
{
  v5 = a3;
  cardView = self->_cardView;
  if (cardView != v5)
  {
    v9 = v5;
    [(UIView *)cardView removeFromSuperview];
    objc_storeStrong(&self->_cardView, a3);
    [(UIView *)self->_cardView setAccessibilityIdentifier:@"SiriUICardViewAccessibilityIdentifier"];
    [(SiriUICardSnippetView *)self addSubview:v9];
    [(SiriUICardSnippetView *)self setNeedsLayout];
    v7 = [(UIView *)self->_cardView backgroundColor];
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v7;

    v5 = v9;
  }

  MEMORY[0x2821F96F8](cardView, v5);
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(SiriUICardSnippetView *)self reloadData];
    v5 = obj;
  }
}

- (void)prepareForDrillInAnimation
{
  v16 = *MEMORY[0x277D85DE8];
  cardView = self->_cardView;
  v4 = [MEMORY[0x277D75348] clearColor];
  [(UIView *)cardView setBackgroundColor:v4];

  v5 = [(UIView *)self->_cardView subviews];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        getSearchUIBackgroundColorViewClass();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setHidden:1];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)prepareForPopAnimationOfType:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  [(UIView *)self->_cardView setBackgroundColor:self->_backgroundColor];
  v4 = [(UIView *)self->_cardView subviews];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        getSearchUIBackgroundColorViewClass();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setHidden:0];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)isLoading
{
  v2 = [(SiriUICardSnippetView *)self backingViewController];
  v3 = [v2 isLoading];

  return v3;
}

- (BOOL)isHint
{
  v2 = [(SiriUICardSnippetView *)self backingViewController];
  v3 = [v2 isHint];

  return v3;
}

- (void)_sashViewRecognizedTapGestureWithGestureRecognizer:(id)a3
{
  v4 = [(SiriUICardSnippetView *)self delegate];
  [v4 cardSnippetViewSashWasTapped:self];
}

- (SiriUISnippetViewController)backingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_backingViewController);

  return WeakRetained;
}

- (SiriUICardSnippetViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (SiriUICardSnippetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end