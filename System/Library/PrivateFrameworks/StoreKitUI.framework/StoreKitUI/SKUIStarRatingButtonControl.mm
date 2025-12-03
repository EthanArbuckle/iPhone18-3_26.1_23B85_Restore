@interface SKUIStarRatingButtonControl
- (SKUIStarRatingButtonControl)init;
- (SKUIStarRatingButtonControlDelegate)delegate;
- (void)_starButtonTapped:(id)tapped;
- (void)_updateForButtonIdentifier:(unint64_t)identifier;
- (void)populate;
@end

@implementation SKUIStarRatingButtonControl

- (SKUIStarRatingButtonControl)init
{
  v5.receiver = self;
  v5.super_class = SKUIStarRatingButtonControl;
  v2 = [(SKUIStarRatingButtonControl *)&v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
    [(SKUIStarRatingButtonControl *)v2 setButtons:v3];

    [(SKUIStarRatingButtonControl *)v2 populate];
  }

  return v2;
}

- (void)populate
{
  [(SKUIStarRatingButtonControl *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v79 = objc_opt_new();
  [v79 setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v79 setBackgroundColor:clearColor];

  v4 = MEMORY[0x277D74300];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:11.0];
  v5 = [v4 systemFontOfSize:?];
  [v79 setFont:v5];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v79 setTextColor:secondaryLabelColor];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"RATING_EXPLANATION" value:&stru_2827FFAC8 table:0];
  [v79 setText:v8];

  [(SKUIStarRatingButtonControl *)self addSubview:v79];
  topAnchor = [v79 topAnchor];
  topAnchor2 = [(SKUIStarRatingButtonControl *)self topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v12 = 1;
  [v11 setActive:1];

  centerXAnchor = [v79 centerXAnchor];
  centerXAnchor2 = [(SKUIStarRatingButtonControl *)self centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v15 setActive:1];

  do
  {
    v16 = objc_alloc_init(MEMORY[0x277D75220]);
    v17 = [MEMORY[0x277D755D0] configurationWithScale:3];
    v18 = [MEMORY[0x277D755B8] systemImageNamed:@"star" withConfiguration:v17];
    [v16 setImage:v18 forState:0];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v12];
    [v16 setAccessibilityIdentifier:v19];

    [MEMORY[0x277CDD370] PPMScaledValueUsingValue:8.0];
    v21 = v20;
    layer = [v16 layer];
    [layer setCornerRadius:v21];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v16 setTintColor:whiteColor];

    [v16 setUserInteractionEnabled:1];
    [v16 addTarget:self action:sel__starButtonTapped_ forControlEvents:64];
    buttons = [(SKUIStarRatingButtonControl *)self buttons];
    [buttons addObject:v16];

    ++v12;
  }

  while (v12 != 6);
  buttons2 = [(SKUIStarRatingButtonControl *)self buttons];
  v26 = [buttons2 objectAtIndex:0];

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SKUIStarRatingButtonControl *)self addSubview:v26];
  leadingAnchor = [v26 leadingAnchor];
  leadingAnchor2 = [(SKUIStarRatingButtonControl *)self leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v30 = 1;
  [v29 setActive:1];

  topAnchor3 = [v26 topAnchor];
  bottomAnchor = [v79 bottomAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:12.0];
  v33 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:?];
  [v33 setActive:1];

  bottomAnchor2 = [v26 bottomAnchor];
  bottomAnchor3 = [(SKUIStarRatingButtonControl *)self bottomAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:8.0];
  v37 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v36];
  [v37 setActive:1];

  widthAnchor = [v26 widthAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:36.0 newValue:44.0];
  v39 = [widthAnchor constraintEqualToConstant:?];
  [v39 setActive:1];

  heightAnchor = [v26 heightAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:36.0 newValue:44.0];
  v41 = [heightAnchor constraintEqualToConstant:?];
  [v41 setActive:1];

  do
  {
    buttons3 = [(SKUIStarRatingButtonControl *)self buttons];
    v43 = [buttons3 objectAtIndex:v30 - 1];

    buttons4 = [(SKUIStarRatingButtonControl *)self buttons];
    v45 = [buttons4 objectAtIndex:v30];

    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SKUIStarRatingButtonControl *)self addSubview:v45];
    leadingAnchor3 = [v45 leadingAnchor];
    trailingAnchor = [v43 trailingAnchor];
    v48 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor];
    [v48 setActive:1];

    topAnchor4 = [v45 topAnchor];
    topAnchor5 = [v43 topAnchor];
    v51 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    [v51 setActive:1];

    bottomAnchor4 = [v45 bottomAnchor];
    bottomAnchor5 = [v43 bottomAnchor];
    v54 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    [v54 setActive:1];

    widthAnchor2 = [v45 widthAnchor];
    [MEMORY[0x277CDD370] PPMScaledValueUsingValue:36.0];
    v56 = [widthAnchor2 constraintEqualToConstant:?];
    [v56 setActive:1];

    heightAnchor2 = [v45 heightAnchor];
    [MEMORY[0x277CDD370] PPMScaledValueUsingValue:36.0];
    v58 = [heightAnchor2 constraintEqualToConstant:?];
    [v58 setActive:1];

    ++v30;
  }

  while (v30 != 4);
  buttons5 = [(SKUIStarRatingButtonControl *)self buttons];
  v60 = [buttons5 objectAtIndex:3];

  buttons6 = [(SKUIStarRatingButtonControl *)self buttons];
  v62 = [buttons6 objectAtIndex:4];

  [v62 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SKUIStarRatingButtonControl *)self addSubview:v62];
  leadingAnchor4 = [v62 leadingAnchor];
  trailingAnchor2 = [v60 trailingAnchor];
  v65 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2];
  [v65 setActive:1];

  topAnchor6 = [v62 topAnchor];
  topAnchor7 = [v60 topAnchor];
  v68 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  [v68 setActive:1];

  bottomAnchor6 = [v62 bottomAnchor];
  bottomAnchor7 = [v60 bottomAnchor];
  v71 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  [v71 setActive:1];

  trailingAnchor3 = [v62 trailingAnchor];
  trailingAnchor4 = [(SKUIStarRatingButtonControl *)self trailingAnchor];
  v74 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v74 setActive:1];

  widthAnchor3 = [v62 widthAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:36.0];
  v76 = [widthAnchor3 constraintEqualToConstant:?];
  [v76 setActive:1];

  heightAnchor3 = [v62 heightAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:36.0];
  v78 = [heightAnchor3 constraintEqualToConstant:?];
  [v78 setActive:1];
}

- (void)_starButtonTapped:(id)tapped
{
  accessibilityIdentifier = [tapped accessibilityIdentifier];
  integerValue = [accessibilityIdentifier integerValue];

  [(SKUIStarRatingButtonControl *)self _updateForButtonIdentifier:integerValue];
  delegate = [(SKUIStarRatingButtonControl *)self delegate];
  [delegate starRatingButtonControlDidUpdateValues];
}

- (void)_updateForButtonIdentifier:(unint64_t)identifier
{
  buttons = [(SKUIStarRatingButtonControl *)self buttons];
  v6 = [buttons count];

  if (v6)
  {
    v7 = 0;
    do
    {
      buttons2 = [(SKUIStarRatingButtonControl *)self buttons];
      v9 = [buttons2 objectAtIndex:v7];

      v10 = [MEMORY[0x277D755D0] configurationWithScale:2];
      if (v7 >= identifier)
      {
        v11 = @"star";
      }

      else
      {
        v11 = @"star.fill";
      }

      v12 = [MEMORY[0x277D755B8] systemImageNamed:v11 withConfiguration:v10];
      [v9 setImage:v12 forState:0];

      ++v7;
      buttons3 = [(SKUIStarRatingButtonControl *)self buttons];
      v14 = [buttons3 count];
    }

    while (v7 < v14);
  }

  self->_value = identifier / 5.0;
}

- (SKUIStarRatingButtonControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end