@interface AirDropNoContentView
- (AirDropNoContentView)initWithFrame:(CGRect)frame;
- (AirDropNoContentViewDelegate)delegate;
- (void)actionButtonTapped;
- (void)setViewType:(unint64_t)type;
- (void)setupConstraints;
@end

@implementation AirDropNoContentView

- (AirDropNoContentView)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = AirDropNoContentView;
  v3 = [(AirDropNoContentView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    titleLabel = [v11 titleLabel];
    [titleLabel setFont:v14];

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AirDropNoContentView *)v3 setActionButton:v11];
    titleLabel2 = [(AirDropNoContentView *)v3 titleLabel];
    [(AirDropNoContentView *)v3 addSubview:titleLabel2];

    subtitleLabel = [(AirDropNoContentView *)v3 subtitleLabel];
    [(AirDropNoContentView *)v3 addSubview:subtitleLabel];

    actionButton = [(AirDropNoContentView *)v3 actionButton];
    [(AirDropNoContentView *)v3 addSubview:actionButton];

    [(AirDropNoContentView *)v3 setupConstraints];
  }

  return v3;
}

- (void)setupConstraints
{
  v42 = objc_opt_new();
  leadingAnchor = [(AirDropNoContentView *)self leadingAnchor];
  titleLabel = [(AirDropNoContentView *)self titleLabel];
  leadingAnchor2 = [titleLabel leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v42 addObject:v6];

  trailingAnchor = [(AirDropNoContentView *)self trailingAnchor];
  titleLabel2 = [(AirDropNoContentView *)self titleLabel];
  trailingAnchor2 = [titleLabel2 trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v42 addObject:v10];

  topAnchor = [(AirDropNoContentView *)self topAnchor];
  titleLabel3 = [(AirDropNoContentView *)self titleLabel];
  topAnchor2 = [titleLabel3 topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v42 addObject:v14];

  leadingAnchor3 = [(AirDropNoContentView *)self leadingAnchor];
  subtitleLabel = [(AirDropNoContentView *)self subtitleLabel];
  leadingAnchor4 = [subtitleLabel leadingAnchor];
  v18 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v42 addObject:v18];

  trailingAnchor3 = [(AirDropNoContentView *)self trailingAnchor];
  subtitleLabel2 = [(AirDropNoContentView *)self subtitleLabel];
  trailingAnchor4 = [subtitleLabel2 trailingAnchor];
  v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v42 addObject:v22];

  titleLabel4 = [(AirDropNoContentView *)self titleLabel];
  lastBaselineAnchor = [titleLabel4 lastBaselineAnchor];
  subtitleLabel3 = [(AirDropNoContentView *)self subtitleLabel];
  firstBaselineAnchor = [subtitleLabel3 firstBaselineAnchor];
  v27 = [lastBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor constant:-26.0];
  [v42 addObject:v27];

  titleLabel5 = [(AirDropNoContentView *)self titleLabel];
  centerXAnchor = [titleLabel5 centerXAnchor];
  actionButton = [(AirDropNoContentView *)self actionButton];
  centerXAnchor2 = [actionButton centerXAnchor];
  v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v42 addObject:v32];

  subtitleLabel4 = [(AirDropNoContentView *)self subtitleLabel];
  lastBaselineAnchor2 = [subtitleLabel4 lastBaselineAnchor];
  actionButton2 = [(AirDropNoContentView *)self actionButton];
  firstBaselineAnchor2 = [actionButton2 firstBaselineAnchor];
  v37 = [lastBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor2 constant:-44.0];
  [v42 addObject:v37];

  bottomAnchor = [(AirDropNoContentView *)self bottomAnchor];
  actionButton3 = [(AirDropNoContentView *)self actionButton];
  bottomAnchor2 = [actionButton3 bottomAnchor];
  v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v42 addObject:v41];

  [NSLayoutConstraint activateConstraints:v42];
}

- (void)setViewType:(unint64_t)type
{
  self->_viewType = type;
  if (type > 7)
  {
    v6 = 0;
  }

  else
  {
    v4 = off_10002D3B0[type];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:v4 value:&stru_10002D8A8 table:0];
  }

  titleLabel = [(AirDropNoContentView *)self titleLabel];
  [titleLabel setText:v6];

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

  subtitleLabel = [(AirDropNoContentView *)self subtitleLabel];
  [subtitleLabel setText:v11];

  actionButton = [(AirDropNoContentView *)self actionButton];
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

  [actionButton setTitle:v16 forState:0];
}

- (void)actionButtonTapped
{
  delegate = [(AirDropNoContentView *)self delegate];
  [delegate noContentViewActionTriggered:self];
}

- (AirDropNoContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end