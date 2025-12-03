@interface NCAppPickerViewFooter
+ (double)preferredHeightForWidth:(double)width showMoreButton:(BOOL)button;
+ (id)_footnoteText;
+ (id)_showMoreButtonFont;
+ (id)_showMoreButtonText;
- (NCAppPickerViewFooter)initWithFrame:(CGRect)frame;
- (NCAppPickerViewFooterDelegate)delegate;
- (void)_showMoreButtonPressed:(id)pressed;
- (void)configureWithShowMoreButton:(BOOL)button delegate:(id)delegate;
- (void)prepareForReuse;
@end

@implementation NCAppPickerViewFooter

- (NCAppPickerViewFooter)initWithFrame:(CGRect)frame
{
  v45.receiver = self;
  v45.super_class = NCAppPickerViewFooter;
  v3 = [(NCAppPickerViewFooter *)&v45 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75220]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    showMoreButton = v3->_showMoreButton;
    v3->_showMoreButton = v9;

    [(UIButton *)v3->_showMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v3->_showMoreButton addTarget:v3 action:sel__showMoreButtonPressed_ forControlEvents:64];
    v11 = v3->_showMoreButton;
    _showMoreButtonText = [objc_opt_class() _showMoreButtonText];
    [(UIButton *)v11 setTitle:_showMoreButtonText forState:0];

    titleLabel = [(UIButton *)v3->_showMoreButton titleLabel];
    _showMoreButtonFont = [objc_opt_class() _showMoreButtonFont];
    [titleLabel setFont:_showMoreButtonFont];

    v15 = v3->_showMoreButton;
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(UIButton *)v15 setTitleColor:systemBlueColor forState:0];

    [(NCAppPickerViewFooter *)v3 addSubview:v3->_showMoreButton];
    v17 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    footnoteLabel = v3->_footnoteLabel;
    v3->_footnoteLabel = v17;

    [(UILabel *)v3->_footnoteLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = v3->_footnoteLabel;
    _footnoteText = [objc_opt_class() _footnoteText];
    [(UILabel *)v19 setText:_footnoteText];

    v21 = v3->_footnoteLabel;
    _footnoteFont = [objc_opt_class() _footnoteFont];
    [(UILabel *)v21 setFont:_footnoteFont];

    [(UILabel *)v3->_footnoteLabel setNumberOfLines:0];
    v23 = v3->_footnoteLabel;
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v23 setTextColor:secondaryLabelColor];

    [(UILabel *)v3->_footnoteLabel setTextAlignment:1];
    [(NCAppPickerViewFooter *)v3 addSubview:v3->_footnoteLabel];
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    topAnchor = [(UIButton *)v3->_showMoreButton topAnchor];
    topAnchor2 = [(NCAppPickerViewFooter *)v3 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
    [v25 addObject:v28];

    leadingAnchor = [(UIButton *)v3->_showMoreButton leadingAnchor];
    leadingAnchor2 = [(NCAppPickerViewFooter *)v3 leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v25 addObject:v31];

    trailingAnchor = [(NCAppPickerViewFooter *)v3 trailingAnchor];
    trailingAnchor2 = [(UIButton *)v3->_showMoreButton trailingAnchor];
    v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v25 addObject:v34];

    leadingAnchor3 = [(UILabel *)v3->_footnoteLabel leadingAnchor];
    leadingAnchor4 = [(NCAppPickerViewFooter *)v3 leadingAnchor];
    v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v25 addObject:v37];

    trailingAnchor3 = [(NCAppPickerViewFooter *)v3 trailingAnchor];
    trailingAnchor4 = [(UILabel *)v3->_footnoteLabel trailingAnchor];
    v40 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v25 addObject:v40];

    bottomAnchor = [(NCAppPickerViewFooter *)v3 bottomAnchor];
    bottomAnchor2 = [(UILabel *)v3->_footnoteLabel bottomAnchor];
    v43 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:4.0];
    [v25 addObject:v43];

    [MEMORY[0x277CCAAD0] activateConstraints:v25];
  }

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = NCAppPickerViewFooter;
  [(NCAppPickerViewFooter *)&v3 prepareForReuse];
  [(NCAppPickerViewFooter *)self setDelegate:0];
}

+ (double)preferredHeightForWidth:(double)width showMoreButton:(BOOL)button
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (!preferredHeightForWidth_showMoreButton____drawingContext)
  {
    v6 = objc_alloc_init(MEMORY[0x277D74260]);
    v7 = preferredHeightForWidth_showMoreButton____drawingContext;
    preferredHeightForWidth_showMoreButton____drawingContext = v6;

    [preferredHeightForWidth_showMoreButton____drawingContext setWantsNumberOfLineFragments:1];
  }

  if (button)
  {
    _showMoreButtonText = [objc_opt_class() _showMoreButtonText];
    v9 = *MEMORY[0x277D740A8];
    v20 = *MEMORY[0x277D740A8];
    _showMoreButtonFont = [objc_opt_class() _showMoreButtonFont];
    v21[0] = _showMoreButtonFont;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [_showMoreButtonText boundingRectWithSize:1 options:v11 attributes:preferredHeightForWidth_showMoreButton____drawingContext context:{width, 0.0}];
    v12 = CGRectGetHeight(v22) + 8.0;
  }

  else
  {
    v9 = *MEMORY[0x277D740A8];
    v12 = 0.0;
  }

  _footnoteText = [objc_opt_class() _footnoteText];
  v18 = v9;
  _footnoteFont = [objc_opt_class() _footnoteFont];
  v19 = _footnoteFont;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [_footnoteText boundingRectWithSize:1 options:v15 attributes:preferredHeightForWidth_showMoreButton____drawingContext context:{width, 0.0}];
  Height = CGRectGetHeight(v23);

  return v12 + Height + 16.0 + 4.0;
}

- (void)configureWithShowMoreButton:(BOOL)button delegate:(id)delegate
{
  buttonCopy = button;
  showMoreButton = self->_showMoreButton;
  delegateCopy = delegate;
  [(UIButton *)showMoreButton setHidden:!buttonCopy];
  [(NCAppPickerViewFooter *)self setDelegate:delegateCopy];
}

+ (id)_footnoteText
{
  v2 = NCUserNotificationsUIKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_DIGEST_SETTINGS_CHANGES" value:&stru_282FE84F8 table:0];

  return v3;
}

+ (id)_showMoreButtonText
{
  v2 = NCUserNotificationsUIKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_DIGEST_SETTINGS_SHOW_MORE" value:&stru_282FE84F8 table:0];

  return v3;
}

+ (id)_showMoreButtonFont
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  v3 = MEMORY[0x277D74300];
  [v2 pointSize];
  v4 = [v3 systemFontOfSize:? weight:?];

  return v4;
}

- (void)_showMoreButtonPressed:(id)pressed
{
  delegate = [(NCAppPickerViewFooter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate appPickViewFooterShowMoreButtonPressed:self];
  }
}

- (NCAppPickerViewFooterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end