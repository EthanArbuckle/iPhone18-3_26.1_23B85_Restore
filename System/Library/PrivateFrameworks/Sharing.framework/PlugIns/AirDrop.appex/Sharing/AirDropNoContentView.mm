@interface AirDropNoContentView
- (AirDropNoContentView)initWithFrame:(CGRect)a3;
- (AirDropNoContentViewDelegate)delegate;
- (void)actionButtonTapped;
- (void)setViewType:(unint64_t)a3;
- (void)setupConstraints;
@end

@implementation AirDropNoContentView

- (AirDropNoContentView)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = AirDropNoContentView;
  v3 = [(AirDropNoContentView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setTextAlignment:1];
    [v4 setNumberOfLines:0];
    v5 = [UIFontDescriptor defaultFontDescriptorWithTextStyle:UIFontTextStyleTitle2 addingSymbolicTraits:32770 options:0];
    v6 = [UIFont fontWithDescriptor:v5 size:0.0];
    [v4 setFont:v6];

    [(AirDropNoContentView *)v3 setTitleLabel:v4];
    v7 = objc_alloc_init(UILabel);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setTextAlignment:1];
    [v7 setNumberOfLines:0];
    v8 = +[UIColor secondaryLabelColor];
    [v7 setTextColor:v8];

    v9 = [UIFontDescriptor defaultFontDescriptorWithTextStyle:UIFontTextStyleSubhead];
    v10 = [UIFont fontWithDescriptor:v9 size:0.0];
    [v7 setFont:v10];

    [(AirDropNoContentView *)v3 setSubtitleLabel:v7];
    v11 = [UIButton buttonWithType:1];
    v12 = +[UIColor systemBlueColor];
    [v11 setTitleColor:v12 forState:0];

    [v11 setContentHorizontalAlignment:0];
    [v11 addTarget:v3 action:"actionButtonTapped" forControlEvents:64];
    v13 = [UIFontDescriptor defaultFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0x8000 options:0];
    v14 = [UIFont fontWithDescriptor:v13 size:0.0];
    v15 = [v11 titleLabel];
    [v15 setFont:v14];

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AirDropNoContentView *)v3 setActionButton:v11];
    v16 = [(AirDropNoContentView *)v3 titleLabel];
    [(AirDropNoContentView *)v3 addSubview:v16];

    v17 = [(AirDropNoContentView *)v3 subtitleLabel];
    [(AirDropNoContentView *)v3 addSubview:v17];

    v18 = [(AirDropNoContentView *)v3 actionButton];
    [(AirDropNoContentView *)v3 addSubview:v18];

    [(AirDropNoContentView *)v3 setupConstraints];
  }

  return v3;
}

- (void)setupConstraints
{
  v42 = objc_opt_new();
  v3 = [(AirDropNoContentView *)self leadingAnchor];
  v4 = [(AirDropNoContentView *)self titleLabel];
  v5 = [v4 leadingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  [v42 addObject:v6];

  v7 = [(AirDropNoContentView *)self trailingAnchor];
  v8 = [(AirDropNoContentView *)self titleLabel];
  v9 = [v8 trailingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  [v42 addObject:v10];

  v11 = [(AirDropNoContentView *)self topAnchor];
  v12 = [(AirDropNoContentView *)self titleLabel];
  v13 = [v12 topAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  [v42 addObject:v14];

  v15 = [(AirDropNoContentView *)self leadingAnchor];
  v16 = [(AirDropNoContentView *)self subtitleLabel];
  v17 = [v16 leadingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v42 addObject:v18];

  v19 = [(AirDropNoContentView *)self trailingAnchor];
  v20 = [(AirDropNoContentView *)self subtitleLabel];
  v21 = [v20 trailingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v42 addObject:v22];

  v23 = [(AirDropNoContentView *)self titleLabel];
  v24 = [v23 lastBaselineAnchor];
  v25 = [(AirDropNoContentView *)self subtitleLabel];
  v26 = [v25 firstBaselineAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:-26.0];
  [v42 addObject:v27];

  v28 = [(AirDropNoContentView *)self titleLabel];
  v29 = [v28 centerXAnchor];
  v30 = [(AirDropNoContentView *)self actionButton];
  v31 = [v30 centerXAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  [v42 addObject:v32];

  v33 = [(AirDropNoContentView *)self subtitleLabel];
  v34 = [v33 lastBaselineAnchor];
  v35 = [(AirDropNoContentView *)self actionButton];
  v36 = [v35 firstBaselineAnchor];
  v37 = [v34 constraintEqualToAnchor:v36 constant:-44.0];
  [v42 addObject:v37];

  v38 = [(AirDropNoContentView *)self bottomAnchor];
  v39 = [(AirDropNoContentView *)self actionButton];
  v40 = [v39 bottomAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];
  [v42 addObject:v41];

  [NSLayoutConstraint activateConstraints:v42];
}

- (void)setViewType:(unint64_t)a3
{
  self->_viewType = a3;
  if (a3 > 7)
  {
    v6 = 0;
  }

  else
  {
    v4 = off_10002D3B0[a3];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:v4 value:&stru_10002D8A8 table:0];
  }

  v7 = [(AirDropNoContentView *)self titleLabel];
  [v7 setText:v6];

  viewType = self->_viewType;
  if (viewType > 7)
  {
    v11 = 0;
  }

  else
  {
    v9 = off_10002D3F0[viewType];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:v9 value:&stru_10002D8A8 table:0];
  }

  v12 = [(AirDropNoContentView *)self subtitleLabel];
  [v12 setText:v11];

  v17 = [(AirDropNoContentView *)self actionButton];
  v13 = self->_viewType - 1;
  if (v13 > 6)
  {
    v16 = 0;
  }

  else
  {
    v14 = off_10002D430[v13];
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:v14 value:&stru_10002D8A8 table:0];
  }

  [v17 setTitle:v16 forState:0];
}

- (void)actionButtonTapped
{
  v3 = [(AirDropNoContentView *)self delegate];
  [v3 noContentViewActionTriggered:self];
}

- (AirDropNoContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end