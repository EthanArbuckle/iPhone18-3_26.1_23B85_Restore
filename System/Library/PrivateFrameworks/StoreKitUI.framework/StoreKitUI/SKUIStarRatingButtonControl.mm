@interface SKUIStarRatingButtonControl
- (SKUIStarRatingButtonControl)init;
- (SKUIStarRatingButtonControlDelegate)delegate;
- (void)_starButtonTapped:(id)a3;
- (void)_updateForButtonIdentifier:(unint64_t)a3;
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
  v3 = [MEMORY[0x277D75348] clearColor];
  [v79 setBackgroundColor:v3];

  v4 = MEMORY[0x277D74300];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:11.0];
  v5 = [v4 systemFontOfSize:?];
  [v79 setFont:v5];

  v6 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v79 setTextColor:v6];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"RATING_EXPLANATION" value:&stru_2827FFAC8 table:0];
  [v79 setText:v8];

  [(SKUIStarRatingButtonControl *)self addSubview:v79];
  v9 = [v79 topAnchor];
  v10 = [(SKUIStarRatingButtonControl *)self topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v12 = 1;
  [v11 setActive:1];

  v13 = [v79 centerXAnchor];
  v14 = [(SKUIStarRatingButtonControl *)self centerXAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
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
    v22 = [v16 layer];
    [v22 setCornerRadius:v21];

    v23 = [MEMORY[0x277D75348] whiteColor];
    [v16 setTintColor:v23];

    [v16 setUserInteractionEnabled:1];
    [v16 addTarget:self action:sel__starButtonTapped_ forControlEvents:64];
    v24 = [(SKUIStarRatingButtonControl *)self buttons];
    [v24 addObject:v16];

    ++v12;
  }

  while (v12 != 6);
  v25 = [(SKUIStarRatingButtonControl *)self buttons];
  v26 = [v25 objectAtIndex:0];

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SKUIStarRatingButtonControl *)self addSubview:v26];
  v27 = [v26 leadingAnchor];
  v28 = [(SKUIStarRatingButtonControl *)self leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  v30 = 1;
  [v29 setActive:1];

  v31 = [v26 topAnchor];
  v32 = [v79 bottomAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:12.0];
  v33 = [v31 constraintEqualToAnchor:v32 constant:?];
  [v33 setActive:1];

  v34 = [v26 bottomAnchor];
  v35 = [(SKUIStarRatingButtonControl *)self bottomAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:8.0];
  v37 = [v34 constraintEqualToAnchor:v35 constant:-v36];
  [v37 setActive:1];

  v38 = [v26 widthAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:36.0 newValue:44.0];
  v39 = [v38 constraintEqualToConstant:?];
  [v39 setActive:1];

  v40 = [v26 heightAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:36.0 newValue:44.0];
  v41 = [v40 constraintEqualToConstant:?];
  [v41 setActive:1];

  do
  {
    v42 = [(SKUIStarRatingButtonControl *)self buttons];
    v43 = [v42 objectAtIndex:v30 - 1];

    v44 = [(SKUIStarRatingButtonControl *)self buttons];
    v45 = [v44 objectAtIndex:v30];

    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SKUIStarRatingButtonControl *)self addSubview:v45];
    v46 = [v45 leadingAnchor];
    v47 = [v43 trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    [v48 setActive:1];

    v49 = [v45 topAnchor];
    v50 = [v43 topAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    [v51 setActive:1];

    v52 = [v45 bottomAnchor];
    v53 = [v43 bottomAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    [v54 setActive:1];

    v55 = [v45 widthAnchor];
    [MEMORY[0x277CDD370] PPMScaledValueUsingValue:36.0];
    v56 = [v55 constraintEqualToConstant:?];
    [v56 setActive:1];

    v57 = [v45 heightAnchor];
    [MEMORY[0x277CDD370] PPMScaledValueUsingValue:36.0];
    v58 = [v57 constraintEqualToConstant:?];
    [v58 setActive:1];

    ++v30;
  }

  while (v30 != 4);
  v59 = [(SKUIStarRatingButtonControl *)self buttons];
  v60 = [v59 objectAtIndex:3];

  v61 = [(SKUIStarRatingButtonControl *)self buttons];
  v62 = [v61 objectAtIndex:4];

  [v62 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SKUIStarRatingButtonControl *)self addSubview:v62];
  v63 = [v62 leadingAnchor];
  v64 = [v60 trailingAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];
  [v65 setActive:1];

  v66 = [v62 topAnchor];
  v67 = [v60 topAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];
  [v68 setActive:1];

  v69 = [v62 bottomAnchor];
  v70 = [v60 bottomAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];
  [v71 setActive:1];

  v72 = [v62 trailingAnchor];
  v73 = [(SKUIStarRatingButtonControl *)self trailingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];
  [v74 setActive:1];

  v75 = [v62 widthAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:36.0];
  v76 = [v75 constraintEqualToConstant:?];
  [v76 setActive:1];

  v77 = [v62 heightAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:36.0];
  v78 = [v77 constraintEqualToConstant:?];
  [v78 setActive:1];
}

- (void)_starButtonTapped:(id)a3
{
  v4 = [a3 accessibilityIdentifier];
  v5 = [v4 integerValue];

  [(SKUIStarRatingButtonControl *)self _updateForButtonIdentifier:v5];
  v6 = [(SKUIStarRatingButtonControl *)self delegate];
  [v6 starRatingButtonControlDidUpdateValues];
}

- (void)_updateForButtonIdentifier:(unint64_t)a3
{
  v5 = [(SKUIStarRatingButtonControl *)self buttons];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [(SKUIStarRatingButtonControl *)self buttons];
      v9 = [v8 objectAtIndex:v7];

      v10 = [MEMORY[0x277D755D0] configurationWithScale:2];
      if (v7 >= a3)
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
      v13 = [(SKUIStarRatingButtonControl *)self buttons];
      v14 = [v13 count];
    }

    while (v7 < v14);
  }

  self->_value = a3 / 5.0;
}

- (SKUIStarRatingButtonControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end