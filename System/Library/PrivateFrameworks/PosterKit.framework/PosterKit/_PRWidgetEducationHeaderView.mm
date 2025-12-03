@interface _PRWidgetEducationHeaderView
- (_PRWidgetEducationHeaderView)initWithFrame:(CGRect)frame;
- (id)_makeTimeLabel;
- (id)_timeLabelText;
@end

@implementation _PRWidgetEducationHeaderView

- (_PRWidgetEducationHeaderView)initWithFrame:(CGRect)frame
{
  v58[11] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = _PRWidgetEducationHeaderView;
  v3 = [(_PRWidgetEducationHeaderView *)&v57 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v4 imageNamed:@"WidgetEducationLandscape" inBundle:v5 withConfiguration:0];

    v7 = MEMORY[0x1E69DCAB8];
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v7 imageNamed:@"WidgetEducationPortrait" inBundle:v8 withConfiguration:0];

    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      imageWithHorizontallyFlippedOrientation = [v6 imageWithHorizontallyFlippedOrientation];

      imageWithHorizontallyFlippedOrientation2 = [v9 imageWithHorizontallyFlippedOrientation];

      v9 = imageWithHorizontallyFlippedOrientation2;
      v6 = imageWithHorizontallyFlippedOrientation;
    }

    v34 = v9;
    v37 = v6;
    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
    [(_PRWidgetEducationHeaderView *)v3 addSubview:v12];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
    [(_PRWidgetEducationHeaderView *)v3 addSubview:v13];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    _makeTimeLabel = [(_PRWidgetEducationHeaderView *)v3 _makeTimeLabel];
    [v12 addSubview:_makeTimeLabel];
    [_makeTimeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    _makeTimeLabel2 = [(_PRWidgetEducationHeaderView *)v3 _makeTimeLabel];
    [v13 addSubview:_makeTimeLabel2];
    [_makeTimeLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = MEMORY[0x1E696ACD8];
    v56 = _makeTimeLabel;
    topAnchor = [_makeTimeLabel topAnchor];
    topAnchor2 = [v12 topAnchor];
    v53 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
    v58[0] = v53;
    centerXAnchor = [_makeTimeLabel centerXAnchor];
    centerXAnchor2 = [v12 centerXAnchor];
    v49 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v50 = _makeTimeLabel2;
    v58[1] = v49;
    topAnchor3 = [_makeTimeLabel2 topAnchor];
    topAnchor4 = [v13 topAnchor];
    v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:12.0];
    v58[2] = v46;
    centerXAnchor3 = [_makeTimeLabel2 centerXAnchor];
    centerXAnchor4 = [v13 centerXAnchor];
    v42 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v58[3] = v42;
    leadingAnchor = [v12 leadingAnchor];
    leadingAnchor2 = [(_PRWidgetEducationHeaderView *)v3 leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v58[4] = v38;
    topAnchor5 = [v12 topAnchor];
    topAnchor6 = [(_PRWidgetEducationHeaderView *)v3 topAnchor];
    v33 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6];
    v58[5] = v33;
    v43 = v12;
    bottomAnchor = [v12 bottomAnchor];
    bottomAnchor2 = [(_PRWidgetEducationHeaderView *)v3 bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v58[6] = v30;
    leadingAnchor3 = [v13 leadingAnchor];
    trailingAnchor = [v12 trailingAnchor];
    v27 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
    v58[7] = v27;
    trailingAnchor2 = [v13 trailingAnchor];
    trailingAnchor3 = [(_PRWidgetEducationHeaderView *)v3 trailingAnchor];
    v16 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v58[8] = v16;
    topAnchor7 = [v13 topAnchor];
    topAnchor8 = [(_PRWidgetEducationHeaderView *)v3 topAnchor];
    v19 = [topAnchor7 constraintGreaterThanOrEqualToAnchor:topAnchor8];
    v58[9] = v19;
    bottomAnchor3 = [v13 bottomAnchor];
    bottomAnchor4 = [(_PRWidgetEducationHeaderView *)v3 bottomAnchor];
    v22 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v58[10] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:11];
    [v40 activateConstraints:v23];
  }

  return v3;
}

- (id)_makeTimeLabel
{
  v3 = [MEMORY[0x1E69DB878] pr_fontWithTimeFontIdentifier:@"PRTimeFontIdentifierSoft" forRole:@"PRPosterRoleLockScreen"];
  v4 = [v3 fontWithSize:16.5];

  v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  _timeLabelText = [(_PRWidgetEducationHeaderView *)self _timeLabelText];
  [v5 setText:_timeLabelText];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v5 setTextColor:whiteColor];

  [v5 setFont:v4];

  return v5;
}

- (id)_timeLabelText
{
  v2 = MEMORY[0x1E698E670];
  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v4 = [v2 formatterForDateAsTimeNoAMPMWithLocale:autoupdatingCurrentLocale];

  v5 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"America/Los_Angeles"];
  [v4 setTimeZone:v5];

  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:190057260.0];
  v7 = [v4 stringFromDate:v6];

  return v7;
}

@end