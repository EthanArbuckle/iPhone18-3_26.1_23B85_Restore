@interface PRXScrollableContentView
- (CGSize)intrinsicContentSize;
- (PRXScrollableContentView)initWithCardStyle:(int64_t)style;
- (PRXScrollableContentView)initWithCardStyle:(int64_t)style scrollView:(id)view;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation PRXScrollableContentView

- (PRXScrollableContentView)initWithCardStyle:(int64_t)style
{
  v5 = objc_alloc_init(MEMORY[0x277D759D8]);
  v6 = [(PRXScrollableContentView *)self initWithCardStyle:style scrollView:v5];

  return v6;
}

- (PRXScrollableContentView)initWithCardStyle:(int64_t)style scrollView:(id)view
{
  v39[6] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v38.receiver = self;
  v38.super_class = PRXScrollableContentView;
  v8 = [(PRXCardContentView *)&v38 initWithCardStyle:style];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scrollView, view);
    [(UIScrollView *)v9->_scrollView setScrollEnabled:0];
    [(UIScrollView *)v9->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)v9->_scrollView setPreservesSuperviewLayoutMargins:1];
    [(PRXScrollableContentView *)v9 addSubview:v9->_scrollView];
    heightAnchor = [(UIScrollView *)v9->_scrollView heightAnchor];
    [(UIScrollView *)v9->_scrollView contentSize];
    v12 = [heightAnchor constraintEqualToConstant:v11];
    v37 = viewCopy;
    scrollViewHeightConstraint = v9->_scrollViewHeightConstraint;
    v9->_scrollViewHeightConstraint = v12;

    v28 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIScrollView *)v9->_scrollView leadingAnchor];
    leadingAnchor2 = [(PRXScrollableContentView *)v9 leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v39[0] = v34;
    trailingAnchor = [(UIScrollView *)v9->_scrollView trailingAnchor];
    trailingAnchor2 = [(PRXScrollableContentView *)v9 trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v39[1] = v31;
    topAnchor = [(UIScrollView *)v9->_scrollView topAnchor];
    mainContentGuide = [(PRXCardContentView *)v9 mainContentGuide];
    topAnchor2 = [mainContentGuide topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v39[2] = v26;
    bottomAnchor = [(UIScrollView *)v9->_scrollView bottomAnchor];
    mainContentGuide2 = [(PRXCardContentView *)v9 mainContentGuide];
    bottomAnchor2 = [mainContentGuide2 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v39[3] = v15;
    contentLayoutGuide = [(UIScrollView *)v9->_scrollView contentLayoutGuide];
    widthAnchor = [contentLayoutGuide widthAnchor];
    mainContentGuide3 = [(PRXCardContentView *)v9 mainContentGuide];
    widthAnchor2 = [mainContentGuide3 widthAnchor];
    v20 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v39[4] = v20;
    v39[5] = v9->_scrollViewHeightConstraint;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:6];
    [v28 activateConstraints:v21];

    viewCopy = v37;
    [(UIScrollView *)v9->_scrollView addObserver:v9 forKeyPath:@"contentSize" options:0 context:PRXScrollableContentViewObserverContentSizeContext];
    v22 = v9;
  }

  return v9;
}

- (void)dealloc
{
  [(UIScrollView *)self->_scrollView removeObserver:self forKeyPath:@"contentSize" context:PRXScrollableContentViewObserverContentSizeContext];
  v3.receiver = self;
  v3.super_class = PRXScrollableContentView;
  [(PRXScrollableContentView *)&v3 dealloc];
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  [(UIScrollView *)self->_scrollView frame];
  MaxY = CGRectGetMaxY(v6);
  v4 = v2;
  result.height = MaxY;
  result.width = v4;
  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (PRXScrollableContentViewObserverContentSizeContext == context)
  {
    v7 = PRXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PRXScrollableContentView observeValueForKeyPath:v7 ofObject:? change:? context:?];
    }

    [(NSLayoutConstraint *)self->_scrollViewHeightConstraint constant];
    v9 = v8;
    [(UIScrollView *)self->_scrollView contentSize];
    if (v9 != v10)
    {
      [(NSLayoutConstraint *)self->_scrollViewHeightConstraint setConstant:v10];
      [(PRXScrollableContentView *)self invalidateIntrinsicContentSize];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PRXScrollableContentView;
    [(PRXScrollableContentView *)&v11 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)observeValueForKeyPath:(uint64_t)a1 ofObject:(NSObject *)a2 change:context:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  [*(a1 + 504) contentSize];
  v3 = NSStringFromCGSize(v7);
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_260F65000, a2, OS_LOG_TYPE_DEBUG, "contentSize changed for scroll view: %@", &v4, 0xCu);
}

@end