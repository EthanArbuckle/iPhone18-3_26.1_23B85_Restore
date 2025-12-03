@interface SKUICommentHeaderViewController
- (SKUICommentHeaderViewController)initWithTitle:(id)title;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SKUICommentHeaderViewController

- (SKUICommentHeaderViewController)initWithTitle:(id)title
{
  titleCopy = title;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUICommentHeaderViewController *)v6 initWithTitle:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = SKUICommentHeaderViewController;
  v14 = [(SKUICommentHeaderViewController *)&v17 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_title, title);
  }

  return v15;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = SKUICommentHeaderViewController;
  [(SKUICommentHeaderViewController *)&v11 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v4;

  [(UILabel *)self->_titleLabel setText:self->_title];
  v6 = self->_titleLabel;
  v7 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  [(UILabel *)v6 setTextColor:v7];

  v8 = self->_titleLabel;
  v9 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
  [(UILabel *)v8 setFont:v9];

  view = [(SKUICommentHeaderViewController *)self view];
  [view addSubview:self->_titleLabel];
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = SKUICommentHeaderViewController;
  [(SKUICommentHeaderViewController *)&v15 viewWillLayoutSubviews];
  view = [(SKUICommentHeaderViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UILabel *)self->_titleLabel frame];
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  [(UILabel *)self->_titleLabel sizeThatFits:CGRectGetWidth(v16) + -10.0 + -10.0, v11];
  v13 = v12;
  *&v12 = (v11 - v14) * 0.5;
  [(UILabel *)self->_titleLabel setFrame:10.0, floorf(*&v12), v13, v14];
}

@end