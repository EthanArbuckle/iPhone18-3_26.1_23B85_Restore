@interface WFCompactTextThumbnailViewController
- (UILabel)label;
- (WFCompactTextThumbnailViewController)initWithString:(id)a3;
- (double)contentHeightForWidth:(double)a3;
- (void)loadView;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WFCompactTextThumbnailViewController

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFCompactTextThumbnailViewController;
  v4 = a3;
  [(WFCompactTextThumbnailViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [(WFCompactTextThumbnailViewController *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    [(WFCompactThumbnailViewController *)self invalidateContentSize];
  }
}

- (double)contentHeightForWidth:(double)a3
{
  [(WFCompactTextThumbnailViewController *)self loadViewIfNeeded];
  v5 = [(WFCompactTextThumbnailViewController *)self label];
  [v5 sizeThatFits:{a3, 1.79769313e308}];
  v7 = v6 + 10.0;

  return v7;
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = WFCompactTextThumbnailViewController;
  [(WFCompactTextThumbnailViewController *)&v11 loadView];
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = [(WFCompactTextThumbnailViewController *)self view];
  [v4 bounds];
  v13 = CGRectInset(v12, 22.0, 0.0);
  [v3 setFrame:{v13.origin.x, v13.origin.y, v13.size.width, v13.size.height}];

  [v3 setAutoresizingMask:18];
  [v3 setNumberOfLines:0];
  v5 = [(WFCompactTextThumbnailViewController *)self string];
  [v3 setText:v5];

  v6 = [MEMORY[0x277D75348] labelColor];
  [v3 setTextColor:v6];

  v7 = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
  v8 = MEMORY[0x277D76A28];
  if (!v7)
  {
    v8 = MEMORY[0x277D76918];
  }

  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*v8];
  [v3 setFont:v9];

  [v3 setAdjustsFontForContentSizeCategory:1];
  v10 = [(WFCompactTextThumbnailViewController *)self view];
  [v10 addSubview:v3];

  [(WFCompactTextThumbnailViewController *)self setLabel:v3];
}

- (WFCompactTextThumbnailViewController)initWithString:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFCompactTextThumbnailViewController;
  v5 = [(WFCompactTextThumbnailViewController *)&v10 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    string = v5->_string;
    v5->_string = v6;

    v8 = v5;
  }

  return v5;
}

@end