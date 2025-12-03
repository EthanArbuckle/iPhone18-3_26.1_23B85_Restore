@interface SKUIComposeReviewView
- (BOOL)_composeReviewTextViewShouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)_isReviewTextOptional;
- (BOOL)isValid;
- (SKUIComposeReviewView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (SKUIComposeReviewViewDelegate)delegate;
- (id)_body;
- (id)_reviewPlaceholder;
- (id)copyReview;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_delayedUpdateReviewLength;
- (void)_keyboardVisibilityDidChangeNotification:(id)notification;
- (void)_layoutComposeView;
- (void)_layoutLoadingView;
- (void)_remoteKeyboardVisibilityDidChangeNotification:(id)notification;
- (void)_showComposeView;
- (void)_showLoadingView;
- (void)_updateContentSize;
- (void)composeHeaderViewValidityDidChange:(id)change;
- (void)composeHeaderViewValuesDidChange:(id)change;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reloadData;
- (void)setFrame:(CGRect)frame;
- (void)setLoading:(BOOL)loading;
- (void)setReview:(id)review;
- (void)textContentViewDidChange:(id)change;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SKUIComposeReviewView

- (SKUIComposeReviewView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v11.receiver = self;
  v11.super_class = SKUIComposeReviewView;
  v5 = [(SKUIComposeReviewView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = style;
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v5->_remoteKeyboardFrame.origin = *MEMORY[0x277CBF3A0];
    v5->_remoteKeyboardFrame.size = v7;
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SKUIComposeReviewView *)v6 setBackgroundColor:systemBackgroundColor];

    [(SKUIComposeReviewView *)v6 _showComposeView];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__keyboardVisibilityDidChangeNotification_ name:*MEMORY[0x277D76BA0] object:0];
    [defaultCenter addObserver:v6 selector:sel__keyboardVisibilityDidChangeNotification_ name:*MEMORY[0x277D76BA8] object:0];
    [defaultCenter addObserver:v6 selector:sel__remoteKeyboardVisibilityDidChangeNotification_ name:@"SKUIRemoteKeyboardFrameChangedNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76BA8] object:0];
  [defaultCenter removeObserver:self name:@"SKUIRemoteKeyboardFrameChangedNotification" object:0];
  [(SKUIComposeReviewHeaderView *)self->_headerView setDelegate:0];
  [(SUTextContentView *)self->_textContentView setDelegate:0];

  v4.receiver = self;
  v4.super_class = SKUIComposeReviewView;
  [(SKUIComposeReviewView *)&v4 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(SKUIComposeReviewView *)self traitCollection];
  v6 = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v6)
  {
    textContentView = self->_textContentView;
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SUTextContentView *)textContentView setBackgroundColor:systemBackgroundColor];

    v9 = self->_textContentView;
    traitCollection2 = [(SKUIComposeReviewView *)self traitCollection];
    if ([traitCollection2 userInterfaceStyle] == 2)
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  v12.receiver = self;
  v12.super_class = SKUIComposeReviewView;
  v6 = [(SKUIComposeReviewView *)&v12 hitTest:event withEvent:test.x];
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

- (void)setFrame:(CGRect)frame
{
  v3.receiver = self;
  v3.super_class = SKUIComposeReviewView;
  [(SKUIComposeReviewView *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (id)copyReview
{
  v3 = [(SKUIReviewMetadata *)self->_review copy];
  _body = [(SKUIComposeReviewView *)self _body];
  [v3 setBody:_body];

  [(SKUIComposeReviewView *)self rating];
  [v3 setRating:?];
  title = [(SKUIComposeReviewHeaderView *)self->_headerView title];
  [v3 setTitle:title];

  return v3;
}

- (BOOL)isValid
{
  review = self->_review;
  title = [(SKUIComposeReviewHeaderView *)self->_headerView title];
  if ([title length] || (v5 = review != 0, self->_currentBodyLength >= 1))
  {
    if ([title length])
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
  body = [(SKUIReviewMetadata *)self->_review body];
  if ([(SKUIReviewMetadata *)self->_review bodyMaxLength])
  {
    bodyMaxLength = [(SKUIReviewMetadata *)self->_review bodyMaxLength];
  }

  else
  {
    bodyMaxLength = 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [body length];
  self->_currentBodyLength = v4;
  if (v4 <= bodyMaxLength)
  {
    v6 = body;
  }

  else
  {
    v5 = [body substringToIndex:bodyMaxLength];

    self->_currentBodyLength = bodyMaxLength;
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

- (void)setLoading:(BOOL)loading
{
  v3 = *(self + 496);
  if ((v3 & 1) != loading)
  {
    *(self + 496) = v3 & 0xFE | loading;
    if (loading)
    {
      [(SKUIComposeReviewView *)self _showLoadingView];
    }

    else
    {
      [(SKUIComposeReviewView *)self _showComposeView];
    }
  }
}

- (void)setReview:(id)review
{
  reviewCopy = review;
  if (self->_review != reviewCopy)
  {
    v6 = reviewCopy;
    objc_storeStrong(&self->_review, review);
    reviewCopy = v6;
  }
}

- (void)composeHeaderViewValidityDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeReviewViewValidityChanged:self];
}

- (void)composeHeaderViewValuesDidChange:(id)change
{
  textContentView = self->_textContentView;
  _reviewPlaceholder = [(SKUIComposeReviewView *)self _reviewPlaceholder];
  [(SUTextContentView *)textContentView setPlaceholder:_reviewPlaceholder];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeReviewViewValidityChanged:self];
}

- (void)textContentViewDidChange:(id)change
{
  changeCopy = change;
  [changeCopy rectForScrollToVisible];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  if (!CGRectIsEmpty(v10))
  {
    [changeCopy convertRect:self->_scrollView toView:{x, y, width, height}];
    [(UIScrollView *)self->_scrollView scrollRectToVisible:1 animated:?];
  }
}

- (BOOL)_composeReviewTextViewShouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  textCopy = text;
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
    bodyMaxLength = [(SKUIReviewMetadata *)self->_review bodyMaxLength];
  }

  else
  {
    bodyMaxLength = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = currentBodyLength - length + [textCopy length];
  if (v10 <= bodyMaxLength)
  {
    [(SKUIComposeReviewView *)self performSelector:sel__delayedUpdateReviewLength withObject:0 afterDelay:0.0];
  }

  return v10 <= bodyMaxLength;
}

- (void)_keyboardVisibilityDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v20 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];

  p_keyboardFrame = &self->_keyboardFrame;
  if (v20)
  {
    [v20 CGRectValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    keyWindow = [MEMORY[0x277D75DA0] keyWindow];
    [(SKUIComposeReviewView *)self convertRect:keyWindow fromView:v7, v9, v11, v13];
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

- (void)_remoteKeyboardVisibilityDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v7 = [userInfo objectForKey:@"SKUIRemoteKeyboardFrame"];

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
  text = [(SUTextContentView *)self->_textContentView text];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v4 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v4;
}

- (void)_delayedUpdateReviewLength
{
  text = [(SUTextContentView *)self->_textContentView text];
  self->_currentBodyLength = [text length];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeReviewViewValidityChanged:self];
}

- (BOOL)_isReviewTextOptional
{
  title = [(SKUIComposeReviewHeaderView *)self->_headerView title];
  v3 = [title length] == 0;

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
    _isReviewTextOptional = [(SKUIComposeReviewView *)self _isReviewTextOptional];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    if (_isReviewTextOptional)
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
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIScrollView *)v6 setTopExtensionViewColor:systemBackgroundColor];

    scrollView = self->_scrollView;
  }

  superview = [(UIScrollView *)scrollView superview];

  if (superview != self)
  {
    [(SKUIComposeReviewView *)self addSubview:self->_scrollView];
  }

  headerView = self->_headerView;
  if (!headerView)
  {
    v10 = [SKUIComposeReviewHeaderView alloc];
    composeReviewStyle = [(SKUIComposeReviewView *)self composeReviewStyle];
    v12 = [(SKUIComposeReviewHeaderView *)v10 initWithFrame:composeReviewStyle style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v13 = self->_headerView;
    self->_headerView = v12;

    [(SKUIComposeReviewHeaderView *)self->_headerView setDelegate:self];
    headerView = self->_headerView;
  }

  [(SKUIComposeReviewHeaderView *)headerView setReview:self->_review];
  [(SKUIComposeReviewHeaderView *)self->_headerView sizeToFit];
  superview2 = [(SKUIComposeReviewHeaderView *)self->_headerView superview];
  v15 = self->_scrollView;

  if (superview2 != v15)
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
    _reviewPlaceholder = [(SKUIComposeReviewView *)self _reviewPlaceholder];
    [(SUTextContentView *)v21 setPlaceholder:_reviewPlaceholder];

    v23 = self->_textContentView;
    v24 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [(SUTextContentView *)v23 setFont:v24];

    v25 = self->_textContentView;
    systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SUTextContentView *)v25 setBackgroundColor:systemBackgroundColor2];

    v27 = self->_textContentView;
    traitCollection = [(SKUIComposeReviewView *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
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

  superview3 = [(SUTextContentView *)textContentView superview];
  v31 = self->_scrollView;

  if (superview3 != v31)
  {
    [(UIScrollView *)self->_scrollView addSubview:self->_textContentView];
  }

  initialFirstResponder = [(SKUIComposeReviewHeaderView *)self->_headerView initialFirstResponder];
  if (!initialFirstResponder)
  {
    initialFirstResponder = self->_textContentView;
  }

  v33 = initialFirstResponder;
  [(SUTextContentView *)initialFirstResponder becomeFirstResponder];
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

  superview = [(SULoadingView *)loadingView superview];

  if (superview != self)
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