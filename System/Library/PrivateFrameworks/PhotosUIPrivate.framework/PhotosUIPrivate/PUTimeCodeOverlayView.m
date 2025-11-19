@interface PUTimeCodeOverlayView
- (void)didMoveToSuperview;
- (void)setDisplayedTimeInterval:(double)a3;
- (void)updateTimeDisplay;
@end

@implementation PUTimeCodeOverlayView

- (void)updateTimeDisplay
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  v4 = [v3 showFrameNumberOnVideoScrubber];

  [(PUTimeCodeOverlayView *)self displayedTimeInterval];
  if (v4)
  {
    [(PUTimeCodeOverlayView *)self frameRate];
    PXTrimTimeCodeStringWithFrames();
  }

  else
  {
    PXTrimTimeCodeStringFromMilliSeconds();
  }
  v5 = ;
  [(UILabel *)self->_timecodeLabelView setText:v5];
}

- (void)setDisplayedTimeInterval:(double)a3
{
  if (self->_displayedTimeInterval != a3)
  {
    self->_displayedTimeInterval = a3;
    [(PUTimeCodeOverlayView *)self updateTimeDisplay];
  }
}

- (void)didMoveToSuperview
{
  v3 = +[PUInterfaceManager currentTheme];
  v56.receiver = self;
  v56.super_class = PUTimeCodeOverlayView;
  [(PUTimeCodeOverlayView *)&v56 didMoveToSuperview];
  [(PUTimeCodeOverlayView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E69DC730] effectWithStyle:6];
  v6 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v5];
  [v6 setClipsToBounds:1];
  v7 = [v6 contentView];
  timecodeBackgroundView = self->_timecodeBackgroundView;
  self->_timecodeBackgroundView = v7;

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v3 photoEditingTrimControllerBackgroundColor];
  [v6 setBackgroundColor:v9];

  v10 = [v6 layer];
  [v10 setCornerRadius:4.0];

  v11 = MEMORY[0x1E69DCC10];
  v12 = v6;
  v13 = objc_alloc_init(v11);
  timecodeLabelView = self->_timecodeLabelView;
  self->_timecodeLabelView = v13;

  [(UILabel *)self->_timecodeLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v3 photoEditingTimecodeLabelColor];
  [(UILabel *)self->_timecodeLabelView setTextColor:v15];

  v16 = PXMonospacedNumberFontWithSize();
  [(UILabel *)self->_timecodeLabelView setFont:v16];

  [(UIView *)self->_timecodeBackgroundView addSubview:self->_timecodeLabelView];
  v17 = [(UIView *)self->_timecodeBackgroundView leftAnchor];
  v18 = [(UILabel *)self->_timecodeLabelView leftAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-6.0];
  [v4 addObject:v19];

  v20 = [(UIView *)self->_timecodeBackgroundView rightAnchor];
  v21 = [(UILabel *)self->_timecodeLabelView rightAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:6.0];
  [v4 addObject:v22];

  v23 = [(UIView *)self->_timecodeBackgroundView topAnchor];
  v24 = [(UILabel *)self->_timecodeLabelView topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-4.0];
  [v4 addObject:v25];

  v26 = [(UIView *)self->_timecodeBackgroundView bottomAnchor];
  v27 = [(UILabel *)self->_timecodeLabelView bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:4.0];
  [v4 addObject:v28];

  [(PUTimeCodeOverlayView *)self addSubview:v12];
  v29 = objc_alloc_init(MEMORY[0x1E69DD250]);
  verticalLineView = self->_verticalLineView;
  self->_verticalLineView = v29;

  [(UIView *)self->_verticalLineView setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = [v3 photoEditingTrimPlayheadLineColor];
  [(UIView *)self->_verticalLineView setBackgroundColor:v31];

  [(PUTimeCodeOverlayView *)self addSubview:self->_verticalLineView];
  v32 = [(UIView *)self->_verticalLineView widthAnchor];
  v33 = [v32 constraintEqualToConstant:1.0];
  [v4 addObject:v33];

  v34 = [(UIView *)self->_verticalLineView heightAnchor];
  v35 = [v34 constraintEqualToConstant:18.0];
  [v4 addObject:v35];

  v36 = [(UIView *)self->_verticalLineView topAnchor];
  v37 = [v12 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:11.0];
  [v4 addObject:v38];

  v39 = [(UIView *)self->_verticalLineView centerXAnchor];
  v40 = [v12 centerXAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:0.0];
  [v4 addObject:v41];

  v42 = [(PUTimeCodeOverlayView *)self topAnchor];
  v43 = [v12 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:0.0];
  [v4 addObject:v44];

  v45 = [(PUTimeCodeOverlayView *)self leftAnchor];
  v46 = [v12 leftAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:0.0];
  [v4 addObject:v47];

  v48 = [(PUTimeCodeOverlayView *)self rightAnchor];
  v49 = [v12 rightAnchor];

  v50 = [v48 constraintEqualToAnchor:v49 constant:0.0];
  [v4 addObject:v50];

  v51 = [(PUTimeCodeOverlayView *)self bottomAnchor];
  v52 = [(UIView *)self->_verticalLineView bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:0.0];
  [v4 addObject:v53];

  v54 = [v4 copy];
  overlayConstraints = self->_overlayConstraints;
  self->_overlayConstraints = v54;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_overlayConstraints];
  [(PUTimeCodeOverlayView *)self updateTimeDisplay];
}

@end