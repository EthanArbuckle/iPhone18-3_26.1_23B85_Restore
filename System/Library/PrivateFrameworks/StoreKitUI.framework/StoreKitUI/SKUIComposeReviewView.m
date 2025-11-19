@interface SKUIComposeReviewView
- (BOOL)_composeReviewTextViewShouldChangeTextInRange:(_NSRange)a3 replacementText:(id)a4;
- (BOOL)_isReviewTextOptional;
- (BOOL)isValid;
- (SKUIComposeReviewView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (SKUIComposeReviewViewDelegate)delegate;
- (id)_body;
- (id)_reviewPlaceholder;
- (id)copyReview;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_delayedUpdateReviewLength;
- (void)_keyboardVisibilityDidChangeNotification:(id)a3;
- (void)_layoutComposeView;
- (void)_layoutLoadingView;
- (void)_remoteKeyboardVisibilityDidChangeNotification:(id)a3;
- (void)_showComposeView;
- (void)_showLoadingView;
- (void)_updateContentSize;
- (void)composeHeaderViewValidityDidChange:(id)a3;
- (void)composeHeaderViewValuesDidChange:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reloadData;
- (void)setFrame:(CGRect)a3;
- (void)setLoading:(BOOL)a3;
- (void)setReview:(id)a3;
- (void)textContentViewDidChange:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SKUIComposeReviewView

- (SKUIComposeReviewView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = SKUIComposeReviewView;
  v5 = [(SKUIComposeReviewView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = a4;
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v5->_remoteKeyboardFrame.origin = *MEMORY[0x277CBF3A0];
    v5->_remoteKeyboardFrame.size = v7;
    v8 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SKUIComposeReviewView *)v6 setBackgroundColor:v8];

    [(SKUIComposeReviewView *)v6 _showComposeView];
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v6 selector:sel__keyboardVisibilityDidChangeNotification_ name:*MEMORY[0x277D76BA0] object:0];
    [v9 addObserver:v6 selector:sel__keyboardVisibilityDidChangeNotification_ name:*MEMORY[0x277D76BA8] object:0];
    [v9 addObserver:v6 selector:sel__remoteKeyboardVisibilityDidChangeNotification_ name:@"SKUIRemoteKeyboardFrameChangedNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76BA8] object:0];
  [v3 removeObserver:self name:@"SKUIRemoteKeyboardFrameChangedNotification" object:0];
  [(SKUIComposeReviewHeaderView *)self->_headerView setDelegate:0];
  [(SUTextContentView *)self->_textContentView setDelegate:0];

  v4.receiver = self;
  v4.super_class = SKUIComposeReviewView;
  [(SKUIComposeReviewView *)&v4 dealloc];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(SKUIComposeReviewView *)self traitCollection];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v6)
  {
    textContentView = self->_textContentView;
    v8 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SUTextContentView *)textContentView setBackgroundColor:v8];

    v9 = self->_textContentView;
    v11 = [(SKUIComposeReviewView *)self traitCollection];
    if ([v11 userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] darkTextColor];
    }
    v10 = ;
    [(SUTextContentView *)v9 setTextColor:v10];
  }
}

- (void)layoutSubviews
{
  if (*(self + 496))
  {
    [(SKUIComposeReviewView *)self _layoutLoadingView];
  }

  else
  {
    [(SKUIComposeReviewView *)self _layoutComposeView];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  v12.receiver = self;
  v12.super_class = SKUIComposeReviewView;
  v6 = [(SKUIComposeReviewView *)&v12 hitTest:a4 withEvent:a3.x];
  textContentView = self->_textContentView;
  [(SUTextContentView *)textContentView frame];
  [(SUTextContentView *)textContentView convertRect:self->_scrollView toView:?];
  if (v6 == self->_scrollView && y > v8)
  {
    v10 = self->_textContentView;

    v6 = v10;
  }

  return v6;
}

- (void)setFrame:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = SKUIComposeReviewView;
  [(SKUIComposeReviewView *)&v3 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (id)copyReview
{
  v3 = [(SKUIReviewMetadata *)self->_review copy];
  v4 = [(SKUIComposeReviewView *)self _body];
  [v3 setBody:v4];

  [(SKUIComposeReviewView *)self rating];
  [v3 setRating:?];
  v5 = [(SKUIComposeReviewHeaderView *)self->_headerView title];
  [v3 setTitle:v5];

  return v3;
}

- (BOOL)isValid
{
  review = self->_review;
  v4 = [(SKUIComposeReviewHeaderView *)self->_headerView title];
  if ([v4 length] || (v5 = review != 0, self->_currentBodyLength >= 1))
  {
    if ([v4 length])
    {
      v5 = self->_currentBodyLength > 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)reloadData
{
  v8 = [(SKUIReviewMetadata *)self->_review body];
  if ([(SKUIReviewMetadata *)self->_review bodyMaxLength])
  {
    v3 = [(SKUIReviewMetadata *)self->_review bodyMaxLength];
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [v8 length];
  self->_currentBodyLength = v4;
  if (v4 <= v3)
  {
    v6 = v8;
  }

  else
  {
    v5 = [v8 substringToIndex:v3];

    self->_currentBodyLength = v3;
    v6 = v5;
  }

  v9 = v6;
  [(SUTextContentView *)self->_textContentView setText:v6];
  [(SKUIComposeReviewHeaderView *)self->_headerView setReview:self->_review];
  [(SKUIComposeReviewHeaderView *)self->_headerView sizeToFit];
  [(SKUIComposeReviewView *)self setNeedsLayout];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeReviewViewValidityChanged:self];
}

- (void)setLoading:(BOOL)a3
{
  v3 = *(self + 496);
  if ((v3 & 1) != a3)
  {
    *(self + 496) = v3 & 0xFE | a3;
    if (a3)
    {
      [(SKUIComposeReviewView *)self _showLoadingView];
    }

    else
    {
      [(SKUIComposeReviewView *)self _showComposeView];
    }
  }
}

- (void)setReview:(id)a3
{
  v5 = a3;
  if (self->_review != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_review, a3);
    v5 = v6;
  }
}

- (void)composeHeaderViewValidityDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeReviewViewValidityChanged:self];
}

- (void)composeHeaderViewValuesDidChange:(id)a3
{
  textContentView = self->_textContentView;
  v5 = [(SKUIComposeReviewView *)self _reviewPlaceholder];
  [(SUTextContentView *)textContentView setPlaceholder:v5];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeReviewViewValidityChanged:self];
}

- (void)textContentViewDidChange:(id)a3
{
  v8 = a3;
  [v8 rectForScrollToVisible];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  if (!CGRectIsEmpty(v10))
  {
    [v8 convertRect:self->_scrollView toView:{x, y, width, height}];
    [(UIScrollView *)self->_scrollView scrollRectToVisible:1 animated:?];
  }
}

- (BOOL)_composeReviewTextViewShouldChangeTextInRange:(_NSRange)a3 replacementText:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  if (self->_currentBodyLength <= location + length)
  {
    currentBodyLength = location + length;
  }

  else
  {
    currentBodyLength = self->_currentBodyLength;
  }

  if ([(SKUIReviewMetadata *)self->_review bodyMaxLength])
  {
    v9 = [(SKUIReviewMetadata *)self->_review bodyMaxLength];
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = currentBodyLength - length + [v7 length];
  if (v10 <= v9)
  {
    [(SKUIComposeReviewView *)self performSelector:sel__delayedUpdateReviewLength withObject:0 afterDelay:0.0];
  }

  return v10 <= v9;
}

- (void)_keyboardVisibilityDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v20 = [v4 objectForKey:*MEMORY[0x277D76BB8]];

  p_keyboardFrame = &self->_keyboardFrame;
  if (v20)
  {
    [v20 CGRectValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [MEMORY[0x277D75DA0] keyWindow];
    [(SKUIComposeReviewView *)self convertRect:v14 fromView:v7, v9, v11, v13];
    p_keyboardFrame->origin.x = v15;
    self->_keyboardFrame.origin.y = v16;
    self->_keyboardFrame.size.width = v17;
    self->_keyboardFrame.size.height = v18;
  }

  else
  {
    v19 = *(MEMORY[0x277CBF3A0] + 16);
    p_keyboardFrame->origin = *MEMORY[0x277CBF3A0];
    self->_keyboardFrame.size = v19;
  }

  if (![(SKUIComposeReviewView *)self isLoading])
  {
    [(SKUIComposeReviewView *)self _layoutComposeView];
  }
}

- (void)_remoteKeyboardVisibilityDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 objectForKey:@"SKUIRemoteKeyboardFrame"];

  p_remoteKeyboardFrame = &self->_remoteKeyboardFrame;
  if (v7)
  {
    [v7 CGRectValue];
    v10 = CGRectIntegral(v9);
    p_remoteKeyboardFrame->origin.x = v10.origin.x;
    self->_remoteKeyboardFrame.origin.y = v10.origin.y;
    self->_remoteKeyboardFrame.size.width = v10.size.width;
    self->_remoteKeyboardFrame.size.height = v10.size.height;
  }

  else
  {
    v6 = *(MEMORY[0x277CBF3A0] + 16);
    p_remoteKeyboardFrame->origin = *MEMORY[0x277CBF3A0];
    self->_remoteKeyboardFrame.size = v6;
  }

  if (![(SKUIComposeReviewView *)self isLoading])
  {
    [(SKUIComposeReviewView *)self _layoutComposeView];
  }
}

- (id)_body
{
  v2 = [(SUTextContentView *)self->_textContentView text];
  v3 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

- (void)_delayedUpdateReviewLength
{
  v3 = [(SUTextContentView *)self->_textContentView text];
  self->_currentBodyLength = [v3 length];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeReviewViewValidityChanged:self];
}

- (BOOL)_isReviewTextOptional
{
  v2 = [(SKUIComposeReviewHeaderView *)self->_headerView title];
  v3 = [v2 length] == 0;

  return v3;
}

- (void)_layoutComposeView
{
  [(SKUIComposeReviewView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SKUIComposeReviewView *)self safeAreaInsets];
  v12 = v11;
  v14 = v13;
  p_remoteKeyboardFrame = &self->_remoteKeyboardFrame;
  if (CGRectEqualToRect(self->_remoteKeyboardFrame, *MEMORY[0x277CBF3A0]))
  {
    p_remoteKeyboardFrame = &self->_keyboardFrame;
  }

  height = p_remoteKeyboardFrame->size.height;
  if (height > 0.00000011920929)
  {
    y = p_remoteKeyboardFrame->origin.y;
    width = p_remoteKeyboardFrame->size.width;
    x = p_remoteKeyboardFrame->origin.x;
    v20 = y;
    v37.origin.x = v4;
    v37.origin.y = v6;
    v37.size.width = v8;
    v37.size.height = v10;
    if (CGRectIntersectsRect(*(&height - 3), v37))
    {
      v10 = y + -3.0;
    }
  }

  [(UIScrollView *)self->_scrollView frame];
  v38.origin.x = v21;
  v38.origin.y = v22;
  v38.size.width = v23;
  v38.size.height = v24;
  v35.origin.x = v4;
  v35.origin.y = v6;
  v35.size.width = v8;
  v35.size.height = v10;
  if (!CGRectEqualToRect(v35, v38))
  {
    [(UIScrollView *)self->_scrollView setFrame:v4, v6, v8, v10];
  }

  [(SKUIComposeReviewHeaderView *)self->_headerView frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [(SKUIComposeReviewHeaderView *)self->_headerView setFrame:?];
  v36.origin.x = v26;
  v36.origin.y = v28;
  v36.size.width = v8;
  v36.size.height = v30;
  MaxY = CGRectGetMaxY(v36);
  [(SUTextContentView *)self->_textContentView frame];
  textContentView = self->_textContentView;
  if (v32 < v10 - MaxY)
  {
    v32 = v10 - MaxY;
  }

  [(SUTextContentView *)textContentView setFrame:v12 + 7.0, MaxY, v8 - v14 - (v12 + 7.0), v32];
}

- (void)_layoutLoadingView
{
  [(SKUIComposeReviewView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(SULoadingView *)self->_loadingView frame];
  v8 = floor((v4 - v7) * 0.5);
  loadingView = self->_loadingView;
  v11 = floor((v6 - v9) * 0.5);

  [(SULoadingView *)loadingView setFrame:v8, v11];
}

- (id)_reviewPlaceholder
{
  if (self->_style == 1)
  {
    v2 = 0;
  }

  else
  {
    v3 = [(SKUIComposeReviewView *)self _isReviewTextOptional];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    if (v3)
    {
      v6 = @"REVIEW_PLACEHOLDER";
    }

    else
    {
      v6 = @"REVIEW_PLACEHOLDER_NOT_OPTIONAL";
    }

    v2 = [v4 localizedStringForKey:v6 value:&stru_2827FFAC8 table:0];
  }

  return v2;
}

- (void)_showComposeView
{
  [(SULoadingView *)self->_loadingView removeFromSuperview];
  scrollView = self->_scrollView;
  if (!scrollView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D759D8]);
    v5 = self->_scrollView;
    self->_scrollView = v4;

    [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
    v6 = self->_scrollView;
    v7 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIScrollView *)v6 setTopExtensionViewColor:v7];

    scrollView = self->_scrollView;
  }

  v8 = [(UIScrollView *)scrollView superview];

  if (v8 != self)
  {
    [(SKUIComposeReviewView *)self addSubview:self->_scrollView];
  }

  headerView = self->_headerView;
  if (!headerView)
  {
    v10 = [SKUIComposeReviewHeaderView alloc];
    v11 = [(SKUIComposeReviewView *)self composeReviewStyle];
    v12 = [(SKUIComposeReviewHeaderView *)v10 initWithFrame:v11 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v13 = self->_headerView;
    self->_headerView = v12;

    [(SKUIComposeReviewHeaderView *)self->_headerView setDelegate:self];
    headerView = self->_headerView;
  }

  [(SKUIComposeReviewHeaderView *)headerView setReview:self->_review];
  [(SKUIComposeReviewHeaderView *)self->_headerView sizeToFit];
  v14 = [(SKUIComposeReviewHeaderView *)self->_headerView superview];
  v15 = self->_scrollView;

  if (v14 != v15)
  {
    [(UIScrollView *)self->_scrollView addSubview:self->_headerView];
  }

  textContentView = self->_textContentView;
  if (!textContentView)
  {
    v17 = objc_alloc_init(MEMORY[0x277D7FEA8]);
    v18 = self->_textContentView;
    self->_textContentView = v17;

    [(SUTextContentView *)self->_textContentView setDelegate:self];
    v19 = self->_textContentView;
    v20 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [(SUTextContentView *)v19 setFont:v20];

    v21 = self->_textContentView;
    v22 = [(SKUIComposeReviewView *)self _reviewPlaceholder];
    [(SUTextContentView *)v21 setPlaceholder:v22];

    v23 = self->_textContentView;
    v24 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [(SUTextContentView *)v23 setFont:v24];

    v25 = self->_textContentView;
    v26 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SUTextContentView *)v25 setBackgroundColor:v26];

    v27 = self->_textContentView;
    v28 = [(SKUIComposeReviewView *)self traitCollection];
    if ([v28 userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] darkTextColor];
    }
    v29 = ;
    [(SUTextContentView *)v27 setTextColor:v29];

    textContentView = self->_textContentView;
  }

  v30 = [(SUTextContentView *)textContentView superview];
  v31 = self->_scrollView;

  if (v30 != v31)
  {
    [(UIScrollView *)self->_scrollView addSubview:self->_textContentView];
  }

  v32 = [(SKUIComposeReviewHeaderView *)self->_headerView initialFirstResponder];
  if (!v32)
  {
    v32 = self->_textContentView;
  }

  v33 = v32;
  [(SUTextContentView *)v32 becomeFirstResponder];
  [(SKUIComposeReviewView *)self _layoutComposeView];
  [(SKUIComposeReviewView *)self _updateContentSize];
}

- (void)_showLoadingView
{
  [(UIScrollView *)self->_scrollView removeFromSuperview];
  loadingView = self->_loadingView;
  if (!loadingView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D7FDF8]);
    v5 = self->_loadingView;
    self->_loadingView = v4;

    [(SULoadingView *)self->_loadingView sizeToFit];
    loadingView = self->_loadingView;
  }

  v6 = [(SULoadingView *)loadingView superview];

  if (v6 != self)
  {
    v7 = self->_loadingView;

    [(SKUIComposeReviewView *)self addSubview:v7];
  }
}

- (void)_updateContentSize
{
  [(SKUIComposeReviewHeaderView *)self->_headerView frame];
  v4 = v3;
  [(SUTextContentView *)self->_textContentView frame];
  MaxY = CGRectGetMaxY(v8);
  scrollView = self->_scrollView;

  [(UIScrollView *)scrollView setContentSize:v4, MaxY];
}

- (SKUIComposeReviewViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end