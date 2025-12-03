@interface PUTimeCodeOverlayView
- (void)didMoveToSuperview;
- (void)setDisplayedTimeInterval:(double)interval;
- (void)updateTimeDisplay;
@end

@implementation PUTimeCodeOverlayView

- (void)updateTimeDisplay
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  showFrameNumberOnVideoScrubber = [v3 showFrameNumberOnVideoScrubber];

  [(PUTimeCodeOverlayView *)self displayedTimeInterval];
  if (showFrameNumberOnVideoScrubber)
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

- (void)setDisplayedTimeInterval:(double)interval
{
  if (self->_displayedTimeInterval != interval)
  {
    self->_displayedTimeInterval = interval;
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
  contentView = [v6 contentView];
  timecodeBackgroundView = self->_timecodeBackgroundView;
  self->_timecodeBackgroundView = contentView;

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  photoEditingTrimControllerBackgroundColor = [v3 photoEditingTrimControllerBackgroundColor];
  [v6 setBackgroundColor:photoEditingTrimControllerBackgroundColor];

  layer = [v6 layer];
  [layer setCornerRadius:4.0];

  v11 = MEMORY[0x1E69DCC10];
  v12 = v6;
  v13 = objc_alloc_init(v11);
  timecodeLabelView = self->_timecodeLabelView;
  self->_timecodeLabelView = v13;

  [(UILabel *)self->_timecodeLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
  photoEditingTimecodeLabelColor = [v3 photoEditingTimecodeLabelColor];
  [(UILabel *)self->_timecodeLabelView setTextColor:photoEditingTimecodeLabelColor];

  v16 = PXMonospacedNumberFontWithSize();
  [(UILabel *)self->_timecodeLabelView setFont:v16];

  [(UIView *)self->_timecodeBackgroundView addSubview:self->_timecodeLabelView];
  leftAnchor = [(UIView *)self->_timecodeBackgroundView leftAnchor];
  leftAnchor2 = [(UILabel *)self->_timecodeLabelView leftAnchor];
  v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:-6.0];
  [v4 addObject:v19];

  rightAnchor = [(UIView *)self->_timecodeBackgroundView rightAnchor];
  rightAnchor2 = [(UILabel *)self->_timecodeLabelView rightAnchor];
  v22 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:6.0];
  [v4 addObject:v22];

  topAnchor = [(UIView *)self->_timecodeBackgroundView topAnchor];
  topAnchor2 = [(UILabel *)self->_timecodeLabelView topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-4.0];
  [v4 addObject:v25];

  bottomAnchor = [(UIView *)self->_timecodeBackgroundView bottomAnchor];
  bottomAnchor2 = [(UILabel *)self->_timecodeLabelView bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:4.0];
  [v4 addObject:v28];

  [(PUTimeCodeOverlayView *)self addSubview:v12];
  v29 = objc_alloc_init(MEMORY[0x1E69DD250]);
  verticalLineView = self->_verticalLineView;
  self->_verticalLineView = v29;

  [(UIView *)self->_verticalLineView setTranslatesAutoresizingMaskIntoConstraints:0];
  photoEditingTrimPlayheadLineColor = [v3 photoEditingTrimPlayheadLineColor];
  [(UIView *)self->_verticalLineView setBackgroundColor:photoEditingTrimPlayheadLineColor];

  [(PUTimeCodeOverlayView *)self addSubview:self->_verticalLineView];
  widthAnchor = [(UIView *)self->_verticalLineView widthAnchor];
  v33 = [widthAnchor constraintEqualToConstant:1.0];
  [v4 addObject:v33];

  heightAnchor = [(UIView *)self->_verticalLineView heightAnchor];
  v35 = [heightAnchor constraintEqualToConstant:18.0];
  [v4 addObject:v35];

  topAnchor3 = [(UIView *)self->_verticalLineView topAnchor];
  bottomAnchor3 = [v12 bottomAnchor];
  v38 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:11.0];
  [v4 addObject:v38];

  centerXAnchor = [(UIView *)self->_verticalLineView centerXAnchor];
  centerXAnchor2 = [v12 centerXAnchor];
  v41 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
  [v4 addObject:v41];

  topAnchor4 = [(PUTimeCodeOverlayView *)self topAnchor];
  topAnchor5 = [v12 topAnchor];
  v44 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:0.0];
  [v4 addObject:v44];

  leftAnchor3 = [(PUTimeCodeOverlayView *)self leftAnchor];
  leftAnchor4 = [v12 leftAnchor];
  v47 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:0.0];
  [v4 addObject:v47];

  rightAnchor3 = [(PUTimeCodeOverlayView *)self rightAnchor];
  rightAnchor4 = [v12 rightAnchor];

  v50 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:0.0];
  [v4 addObject:v50];

  bottomAnchor4 = [(PUTimeCodeOverlayView *)self bottomAnchor];
  bottomAnchor5 = [(UIView *)self->_verticalLineView bottomAnchor];
  v53 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:0.0];
  [v4 addObject:v53];

  v54 = [v4 copy];
  overlayConstraints = self->_overlayConstraints;
  self->_overlayConstraints = v54;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_overlayConstraints];
  [(PUTimeCodeOverlayView *)self updateTimeDisplay];
}

@end