@interface WFCompactTextThumbnailViewController
- (UILabel)label;
- (WFCompactTextThumbnailViewController)initWithString:(id)string;
- (double)contentHeightForWidth:(double)width;
- (void)loadView;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WFCompactTextThumbnailViewController

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = WFCompactTextThumbnailViewController;
  changeCopy = change;
  [(WFCompactTextThumbnailViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(WFCompactTextThumbnailViewController *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(WFCompactThumbnailViewController *)self invalidateContentSize];
  }
}

- (double)contentHeightForWidth:(double)width
{
  [(WFCompactTextThumbnailViewController *)self loadViewIfNeeded];
  label = [(WFCompactTextThumbnailViewController *)self label];
  [label sizeThatFits:{width, 1.79769313e308}];
  v7 = v6 + 10.0;

  return v7;
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = WFCompactTextThumbnailViewController;
  [(WFCompactTextThumbnailViewController *)&v11 loadView];
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  view = [(WFCompactTextThumbnailViewController *)self view];
  [view bounds];
  v13 = CGRectInset(v12, 22.0, 0.0);
  [v3 setFrame:{v13.origin.x, v13.origin.y, v13.size.width, v13.size.height}];

  [v3 setAutoresizingMask:18];
  [v3 setNumberOfLines:0];
  string = [(WFCompactTextThumbnailViewController *)self string];
  [v3 setText:string];

  labelColor = [MEMORY[0x277D75348] labelColor];
  [v3 setTextColor:labelColor];

  universalPreviewsEnabled = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
  v8 = MEMORY[0x277D76A28];
  if (!universalPreviewsEnabled)
  {
    v8 = MEMORY[0x277D76918];
  }

  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*v8];
  [v3 setFont:v9];

  [v3 setAdjustsFontForContentSizeCategory:1];
  view2 = [(WFCompactTextThumbnailViewController *)self view];
  [view2 addSubview:v3];

  [(WFCompactTextThumbnailViewController *)self setLabel:v3];
}

- (WFCompactTextThumbnailViewController)initWithString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = WFCompactTextThumbnailViewController;
  v5 = [(WFCompactTextThumbnailViewController *)&v10 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [stringCopy copy];
    string = v5->_string;
    v5->_string = v6;

    v8 = v5;
  }

  return v5;
}

@end