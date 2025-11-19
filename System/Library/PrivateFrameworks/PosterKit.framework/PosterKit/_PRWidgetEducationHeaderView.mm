@interface _PRWidgetEducationHeaderView
- (_PRWidgetEducationHeaderView)initWithFrame:(CGRect)a3;
- (id)_makeTimeLabel;
- (id)_timeLabelText;
@end

@implementation _PRWidgetEducationHeaderView

- (_PRWidgetEducationHeaderView)initWithFrame:(CGRect)a3
{
  v58[11] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = _PRWidgetEducationHeaderView;
  v3 = [(_PRWidgetEducationHeaderView *)&v57 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
      v10 = [v6 imageWithHorizontallyFlippedOrientation];

      v11 = [v9 imageWithHorizontallyFlippedOrientation];

      v9 = v11;
      v6 = v10;
    }

    v34 = v9;
    v37 = v6;
    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
    [(_PRWidgetEducationHeaderView *)v3 addSubview:v12];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
    [(_PRWidgetEducationHeaderView *)v3 addSubview:v13];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [(_PRWidgetEducationHeaderView *)v3 _makeTimeLabel];
    [v12 addSubview:v14];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [(_PRWidgetEducationHeaderView *)v3 _makeTimeLabel];
    [v13 addSubview:v15];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = MEMORY[0x1E696ACD8];
    v56 = v14;
    v55 = [v14 topAnchor];
    v54 = [v12 topAnchor];
    v53 = [v55 constraintEqualToAnchor:v54 constant:15.0];
    v58[0] = v53;
    v52 = [v14 centerXAnchor];
    v51 = [v12 centerXAnchor];
    v49 = [v52 constraintEqualToAnchor:v51];
    v50 = v15;
    v58[1] = v49;
    v48 = [v15 topAnchor];
    v47 = [v13 topAnchor];
    v46 = [v48 constraintEqualToAnchor:v47 constant:12.0];
    v58[2] = v46;
    v45 = [v15 centerXAnchor];
    v44 = [v13 centerXAnchor];
    v42 = [v45 constraintEqualToAnchor:v44];
    v58[3] = v42;
    v41 = [v12 leadingAnchor];
    v39 = [(_PRWidgetEducationHeaderView *)v3 leadingAnchor];
    v38 = [v41 constraintEqualToAnchor:v39];
    v58[4] = v38;
    v36 = [v12 topAnchor];
    v35 = [(_PRWidgetEducationHeaderView *)v3 topAnchor];
    v33 = [v36 constraintGreaterThanOrEqualToAnchor:v35];
    v58[5] = v33;
    v43 = v12;
    v32 = [v12 bottomAnchor];
    v31 = [(_PRWidgetEducationHeaderView *)v3 bottomAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v58[6] = v30;
    v29 = [v13 leadingAnchor];
    v28 = [v12 trailingAnchor];
    v27 = [v29 constraintEqualToAnchor:v28 constant:10.0];
    v58[7] = v27;
    v26 = [v13 trailingAnchor];
    v25 = [(_PRWidgetEducationHeaderView *)v3 trailingAnchor];
    v16 = [v26 constraintEqualToAnchor:v25];
    v58[8] = v16;
    v17 = [v13 topAnchor];
    v18 = [(_PRWidgetEducationHeaderView *)v3 topAnchor];
    v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18];
    v58[9] = v19;
    v20 = [v13 bottomAnchor];
    v21 = [(_PRWidgetEducationHeaderView *)v3 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
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
  v6 = [(_PRWidgetEducationHeaderView *)self _timeLabelText];
  [v5 setText:v6];

  v7 = [MEMORY[0x1E69DC888] whiteColor];
  [v5 setTextColor:v7];

  [v5 setFont:v4];

  return v5;
}

- (id)_timeLabelText
{
  v2 = MEMORY[0x1E698E670];
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v4 = [v2 formatterForDateAsTimeNoAMPMWithLocale:v3];

  v5 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"America/Los_Angeles"];
  [v4 setTimeZone:v5];

  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:190057260.0];
  v7 = [v4 stringFromDate:v6];

  return v7;
}

@end