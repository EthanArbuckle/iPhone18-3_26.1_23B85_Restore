@interface SKUIDeveloperInfoViewController
- (SKUIDeveloperInfoViewController)initWithDeveloperInfo:(id)a3;
- (void)loadView;
@end

@implementation SKUIDeveloperInfoViewController

- (SKUIDeveloperInfoViewController)initWithDeveloperInfo:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDeveloperInfoViewController initWithDeveloperInfo:];
  }

  v9.receiver = self;
  v9.super_class = SKUIDeveloperInfoViewController;
  v5 = [(SKUIDeveloperInfoViewController *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    developerInfo = v5->_developerInfo;
    v5->_developerInfo = v6;
  }

  return v5;
}

- (void)loadView
{
  v24 = [(SKUIViewController *)self clientContext];
  v3 = SKUIUserInterfaceIdiom(v24);
  v4 = v3;
  if (self->_infoView)
  {
    p_scrollView = &self->_scrollView;
    scrollView = self->_scrollView;
    if (scrollView)
    {
      goto LABEL_13;
    }

    if (v3 != 1)
    {
LABEL_9:
      v11 = [MEMORY[0x277D759A0] mainScreen];
      [v11 bounds];
      v10 = v12;

      goto LABEL_10;
    }
  }

  else
  {
    v7 = [[SKUIDeveloperInfoView alloc] initWithDeveloperInfo:self->_developerInfo clientContext:v24];
    infoView = self->_infoView;
    self->_infoView = v7;

    v9 = self->_infoView;
    if (v4 != 1)
    {
      [(SKUIDeveloperInfoView *)v9 setAutoresizingMask:18];
      p_scrollView = &self->_scrollView;
      scrollView = self->_scrollView;
      if (scrollView)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    [(SKUIDeveloperInfoView *)v9 setAutoresizingMask:5];
    p_scrollView = &self->_scrollView;
    scrollView = self->_scrollView;
    if (scrollView)
    {
      goto LABEL_13;
    }
  }

  v10 = 370.0;
LABEL_10:
  v13 = *MEMORY[0x277CBF3A0];
  v14 = *(MEMORY[0x277CBF3A0] + 8);
  [(SKUIDeveloperInfoView *)self->_infoView sizeThatFits:v10, 1.79769313e308];
  v16 = v15;
  v17 = [objc_alloc(MEMORY[0x277D759D8]) initWithFrame:{v13, v14, v10, v15}];
  v18 = *p_scrollView;
  *p_scrollView = v17;

  [*p_scrollView setContentSize:{v10, v16}];
  v19 = *p_scrollView;
  v20 = [MEMORY[0x277D75348] colorWithWhite:0.921568627 alpha:1.0];
  [v19 setBackgroundColor:v20];

  if (v4 == 1)
  {
    [*p_scrollView setContentInset:{140.0, 0.0, 0.0, 0.0}];
  }

  v21 = self->_infoView;
  v22 = [*p_scrollView backgroundColor];
  [(SKUIDeveloperInfoView *)v21 setBackgroundColor:v22];

  v23 = self->_infoView;
  [*p_scrollView bounds];
  [(SKUIDeveloperInfoView *)v23 setFrame:?];
  [*p_scrollView addSubview:self->_infoView];
  scrollView = *p_scrollView;
LABEL_13:
  [(SKUIDeveloperInfoViewController *)self setView:scrollView];
  [(SKUIViewController *)self showDefaultNavigationItems];
}

- (void)initWithDeveloperInfo:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDeveloperInfoViewController initWithDeveloperInfo:]";
}

@end