@interface NCAppPickerViewFooter
+ (double)preferredHeightForWidth:(double)a3 showMoreButton:(BOOL)a4;
+ (id)_footnoteText;
+ (id)_showMoreButtonFont;
+ (id)_showMoreButtonText;
- (NCAppPickerViewFooter)initWithFrame:(CGRect)a3;
- (NCAppPickerViewFooterDelegate)delegate;
- (void)_showMoreButtonPressed:(id)a3;
- (void)configureWithShowMoreButton:(BOOL)a3 delegate:(id)a4;
- (void)prepareForReuse;
@end

@implementation NCAppPickerViewFooter

- (NCAppPickerViewFooter)initWithFrame:(CGRect)a3
{
  v45.receiver = self;
  v45.super_class = NCAppPickerViewFooter;
  v3 = [(NCAppPickerViewFooter *)&v45 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v12 = [objc_opt_class() _showMoreButtonText];
    [(UIButton *)v11 setTitle:v12 forState:0];

    v13 = [(UIButton *)v3->_showMoreButton titleLabel];
    v14 = [objc_opt_class() _showMoreButtonFont];
    [v13 setFont:v14];

    v15 = v3->_showMoreButton;
    v16 = [MEMORY[0x277D75348] systemBlueColor];
    [(UIButton *)v15 setTitleColor:v16 forState:0];

    [(NCAppPickerViewFooter *)v3 addSubview:v3->_showMoreButton];
    v17 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    footnoteLabel = v3->_footnoteLabel;
    v3->_footnoteLabel = v17;

    [(UILabel *)v3->_footnoteLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = v3->_footnoteLabel;
    v20 = [objc_opt_class() _footnoteText];
    [(UILabel *)v19 setText:v20];

    v21 = v3->_footnoteLabel;
    v22 = [objc_opt_class() _footnoteFont];
    [(UILabel *)v21 setFont:v22];

    [(UILabel *)v3->_footnoteLabel setNumberOfLines:0];
    v23 = v3->_footnoteLabel;
    v24 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v23 setTextColor:v24];

    [(UILabel *)v3->_footnoteLabel setTextAlignment:1];
    [(NCAppPickerViewFooter *)v3 addSubview:v3->_footnoteLabel];
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = [(UIButton *)v3->_showMoreButton topAnchor];
    v27 = [(NCAppPickerViewFooter *)v3 topAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:8.0];
    [v25 addObject:v28];

    v29 = [(UIButton *)v3->_showMoreButton leadingAnchor];
    v30 = [(NCAppPickerViewFooter *)v3 leadingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    [v25 addObject:v31];

    v32 = [(NCAppPickerViewFooter *)v3 trailingAnchor];
    v33 = [(UIButton *)v3->_showMoreButton trailingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [v25 addObject:v34];

    v35 = [(UILabel *)v3->_footnoteLabel leadingAnchor];
    v36 = [(NCAppPickerViewFooter *)v3 leadingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    [v25 addObject:v37];

    v38 = [(NCAppPickerViewFooter *)v3 trailingAnchor];
    v39 = [(UILabel *)v3->_footnoteLabel trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    [v25 addObject:v40];

    v41 = [(NCAppPickerViewFooter *)v3 bottomAnchor];
    v42 = [(UILabel *)v3->_footnoteLabel bottomAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:4.0];
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

+ (double)preferredHeightForWidth:(double)a3 showMoreButton:(BOOL)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (!preferredHeightForWidth_showMoreButton____drawingContext)
  {
    v6 = objc_alloc_init(MEMORY[0x277D74260]);
    v7 = preferredHeightForWidth_showMoreButton____drawingContext;
    preferredHeightForWidth_showMoreButton____drawingContext = v6;

    [preferredHeightForWidth_showMoreButton____drawingContext setWantsNumberOfLineFragments:1];
  }

  if (a4)
  {
    v8 = [objc_opt_class() _showMoreButtonText];
    v9 = *MEMORY[0x277D740A8];
    v20 = *MEMORY[0x277D740A8];
    v10 = [objc_opt_class() _showMoreButtonFont];
    v21[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [v8 boundingRectWithSize:1 options:v11 attributes:preferredHeightForWidth_showMoreButton____drawingContext context:{a3, 0.0}];
    v12 = CGRectGetHeight(v22) + 8.0;
  }

  else
  {
    v9 = *MEMORY[0x277D740A8];
    v12 = 0.0;
  }

  v13 = [objc_opt_class() _footnoteText];
  v18 = v9;
  v14 = [objc_opt_class() _footnoteFont];
  v19 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v13 boundingRectWithSize:1 options:v15 attributes:preferredHeightForWidth_showMoreButton____drawingContext context:{a3, 0.0}];
  Height = CGRectGetHeight(v23);

  return v12 + Height + 16.0 + 4.0;
}

- (void)configureWithShowMoreButton:(BOOL)a3 delegate:(id)a4
{
  v4 = a3;
  showMoreButton = self->_showMoreButton;
  v7 = a4;
  [(UIButton *)showMoreButton setHidden:!v4];
  [(NCAppPickerViewFooter *)self setDelegate:v7];
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

- (void)_showMoreButtonPressed:(id)a3
{
  v4 = [(NCAppPickerViewFooter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 appPickViewFooterShowMoreButtonPressed:self];
  }
}

- (NCAppPickerViewFooterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end