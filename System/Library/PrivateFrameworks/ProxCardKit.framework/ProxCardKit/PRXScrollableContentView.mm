@interface PRXScrollableContentView
- (CGSize)intrinsicContentSize;
- (PRXScrollableContentView)initWithCardStyle:(int64_t)a3;
- (PRXScrollableContentView)initWithCardStyle:(int64_t)a3 scrollView:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation PRXScrollableContentView

- (PRXScrollableContentView)initWithCardStyle:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277D759D8]);
  v6 = [(PRXScrollableContentView *)self initWithCardStyle:a3 scrollView:v5];

  return v6;
}

- (PRXScrollableContentView)initWithCardStyle:(int64_t)a3 scrollView:(id)a4
{
  v39[6] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v38.receiver = self;
  v38.super_class = PRXScrollableContentView;
  v8 = [(PRXCardContentView *)&v38 initWithCardStyle:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scrollView, a4);
    [(UIScrollView *)v9->_scrollView setScrollEnabled:0];
    [(UIScrollView *)v9->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)v9->_scrollView setPreservesSuperviewLayoutMargins:1];
    [(PRXScrollableContentView *)v9 addSubview:v9->_scrollView];
    v10 = [(UIScrollView *)v9->_scrollView heightAnchor];
    [(UIScrollView *)v9->_scrollView contentSize];
    v12 = [v10 constraintEqualToConstant:v11];
    v37 = v7;
    scrollViewHeightConstraint = v9->_scrollViewHeightConstraint;
    v9->_scrollViewHeightConstraint = v12;

    v28 = MEMORY[0x277CCAAD0];
    v36 = [(UIScrollView *)v9->_scrollView leadingAnchor];
    v35 = [(PRXScrollableContentView *)v9 leadingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v39[0] = v34;
    v33 = [(UIScrollView *)v9->_scrollView trailingAnchor];
    v32 = [(PRXScrollableContentView *)v9 trailingAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v39[1] = v31;
    v29 = [(UIScrollView *)v9->_scrollView topAnchor];
    v30 = [(PRXCardContentView *)v9 mainContentGuide];
    v27 = [v30 topAnchor];
    v26 = [v29 constraintEqualToAnchor:v27];
    v39[2] = v26;
    v24 = [(UIScrollView *)v9->_scrollView bottomAnchor];
    v25 = [(PRXCardContentView *)v9 mainContentGuide];
    v14 = [v25 bottomAnchor];
    v15 = [v24 constraintEqualToAnchor:v14];
    v39[3] = v15;
    v16 = [(UIScrollView *)v9->_scrollView contentLayoutGuide];
    v17 = [v16 widthAnchor];
    v18 = [(PRXCardContentView *)v9 mainContentGuide];
    v19 = [v18 widthAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    v39[4] = v20;
    v39[5] = v9->_scrollViewHeightConstraint;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:6];
    [v28 activateConstraints:v21];

    v7 = v37;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (PRXScrollableContentViewObserverContentSizeContext == a6)
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
    [(PRXScrollableContentView *)&v11 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
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