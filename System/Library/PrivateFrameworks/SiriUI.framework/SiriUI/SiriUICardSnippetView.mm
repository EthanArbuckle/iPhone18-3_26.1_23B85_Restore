@interface SiriUICardSnippetView
- (BOOL)isHint;
- (BOOL)isLoading;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriUICardSnippetView)initWithFrame:(CGRect)frame;
- (SiriUICardSnippetViewDataSource)dataSource;
- (SiriUICardSnippetViewDelegate)delegate;
- (SiriUISnippetViewController)backingViewController;
- (void)_sashViewRecognizedTapGestureWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
- (void)prepareForDrillInAnimation;
- (void)prepareForPopAnimationOfType:(int64_t)type;
- (void)setCardView:(id)view;
- (void)setDataSource:(id)source;
- (void)setIsInAmbient:(BOOL)ambient;
- (void)setIsInAmbientInteractivity:(BOOL)interactivity;
@end

@implementation SiriUICardSnippetView

- (SiriUICardSnippetView)initWithFrame:(CGRect)frame
{
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  Height = CGRectGetHeight(frame);
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

- (void)setIsInAmbient:(BOOL)ambient
{
  if (self->_isInAmbient != ambient)
  {
    self->_isInAmbient = ambient;
    [(SiriUICardSnippetView *)self setNeedsLayout];
  }
}

- (void)setIsInAmbientInteractivity:(BOOL)interactivity
{
  if (self->_isInAmbientInteractivity != interactivity)
  {
    self->_isInAmbientInteractivity = interactivity;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(SiriUICardSnippetView *)self dataSource:fits.width];
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

- (void)setCardView:(id)view
{
  viewCopy = view;
  cardView = self->_cardView;
  if (cardView != viewCopy)
  {
    v9 = viewCopy;
    [(UIView *)cardView removeFromSuperview];
    objc_storeStrong(&self->_cardView, view);
    [(UIView *)self->_cardView setAccessibilityIdentifier:@"SiriUICardViewAccessibilityIdentifier"];
    [(SiriUICardSnippetView *)self addSubview:v9];
    [(SiriUICardSnippetView *)self setNeedsLayout];
    backgroundColor = [(UIView *)self->_cardView backgroundColor];
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = backgroundColor;

    viewCopy = v9;
  }

  MEMORY[0x2821F96F8](cardView, viewCopy);
}

- (void)setDataSource:(id)source
{
  obj = source;
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
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIView *)cardView setBackgroundColor:clearColor];

  subviews = [(UIView *)self->_cardView subviews];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(subviews);
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
      v7 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)prepareForPopAnimationOfType:(int64_t)type
{
  v15 = *MEMORY[0x277D85DE8];
  [(UIView *)self->_cardView setBackgroundColor:self->_backgroundColor];
  subviews = [(UIView *)self->_cardView subviews];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(subviews);
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
      v6 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)isLoading
{
  backingViewController = [(SiriUICardSnippetView *)self backingViewController];
  isLoading = [backingViewController isLoading];

  return isLoading;
}

- (BOOL)isHint
{
  backingViewController = [(SiriUICardSnippetView *)self backingViewController];
  isHint = [backingViewController isHint];

  return isHint;
}

- (void)_sashViewRecognizedTapGestureWithGestureRecognizer:(id)recognizer
{
  delegate = [(SiriUICardSnippetView *)self delegate];
  [delegate cardSnippetViewSashWasTapped:self];
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