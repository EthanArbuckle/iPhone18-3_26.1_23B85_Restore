@interface _UIFocusRotaryIndicatorView
+ (id)createRotaryIndicatorInView:(id)view;
- (_UIFocusRotaryIndicatorView)initWithFrame:(CGRect)frame;
- (unint64_t)_calculateCurrentRotaryAxis;
- (void)_updateArrowDisplay;
- (void)_updateArrowsForCurrentFocus;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)toggleVisible:(BOOL)visible animated:(BOOL)animated;
- (void)updateFailedMovementHeading:(unint64_t)heading;
- (void)updateWheelPosition:(double)position;
@end

@implementation _UIFocusRotaryIndicatorView

+ (id)createRotaryIndicatorInView:(id)view
{
  v27[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (_UIInternalPreferenceUsesDefault(&_MergedGlobals_961, @"RotaryFocusRingDiameter", _UIInternalPreferenceUpdateDouble))
  {
    v4 = 80.0;
  }

  else
  {
    v4 = *&qword_1ED48B9B0;
  }

  v5 = _UIInternalPreferenceUsesDefault(algn_1ED48B9F8, @"RotaryFocusRingInset", _UIInternalPreferenceUpdateDouble);
  v6 = *&qword_1ED48BA00 + *&qword_1ED48BA00;
  if (v5)
  {
    v6 = 44.0;
  }

  v7 = v4 + v6;
  v8 = [[_UIFocusRotaryIndicatorView alloc] initWithFrame:0.0, 0.0, v7, v7];
  [(_UIFocusRotaryIndicatorView *)v8 toggleVisible:0 animated:0];
  [(UIView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v8 setUserInteractionEnabled:0];
  layer = [(UIView *)v8 layer];
  [layer setZPosition:100.0];

  [viewCopy addSubview:v8];
  v23 = MEMORY[0x1E69977A0];
  widthAnchor = [(UIView *)v8 widthAnchor];
  v25 = [widthAnchor constraintEqualToConstant:v7];
  v27[0] = v25;
  heightAnchor = [(UIView *)v8 heightAnchor];
  v10 = [heightAnchor constraintEqualToConstant:v7];
  v27[1] = v10;
  topAnchor = [(UIView *)v8 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v13 = _UIInternalPreferenceUsesDefault(algn_1ED48B9E8, @"RotaryFocusRingMargin", _UIInternalPreferenceUpdateDouble);
  v14 = *&qword_1ED48B9F0;
  if (v13)
  {
    v14 = 40.0;
  }

  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v14];
  v27[2] = v15;
  trailingAnchor = [viewCopy trailingAnchor];

  trailingAnchor2 = [(UIView *)v8 trailingAnchor];
  v18 = _UIInternalPreferenceUsesDefault(algn_1ED48B9E8, @"RotaryFocusRingMargin", _UIInternalPreferenceUpdateDouble);
  v19 = *&qword_1ED48B9F0;
  if (v18)
  {
    v19 = 40.0;
  }

  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v19];
  v27[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  [v23 activateConstraints:v21];

  return v8;
}

- (_UIFocusRotaryIndicatorView)initWithFrame:(CGRect)frame
{
  v140[20] = *MEMORY[0x1E69E9840];
  v139.receiver = self;
  v139.super_class = _UIFocusRotaryIndicatorView;
  v3 = [(UIView *)&v139 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_visible = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__updateArrowsForCurrentFocus name:@"UIFocusDidUpdateNotification" object:0];

    if (_UIInternalPreferenceUsesDefault(&_MergedGlobals_961, @"RotaryFocusRingDiameter", _UIInternalPreferenceUpdateDouble))
    {
      v6 = 80.0;
    }

    else
    {
      v6 = *&qword_1ED48B9B0;
    }

    v7 = _UIInternalPreferenceUsesDefault(algn_1ED48B9B8, @"RotaryFocusRingBorderWidth", _UIInternalPreferenceUpdateDouble);
    v8 = *&qword_1ED48B9C0 + *&qword_1ED48B9C0;
    if (v7)
    {
      v8 = 32.0;
    }

    v9 = v6 - v8;
    v10 = [[UIView alloc] initWithFrame:0.0, 0.0, v9, v9];
    rotaryScrubCenterPunchout = v4->_rotaryScrubCenterPunchout;
    v4->_rotaryScrubCenterPunchout = v10;

    v12 = v4->_rotaryScrubCenterPunchout;
    v13 = +[UIColor blackColor];
    [(UIView *)v12 setBackgroundColor:v13];

    layer = [(UIView *)v4->_rotaryScrubCenterPunchout layer];
    v15 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
    [layer setCompositingFilter:v15];

    [(UIView *)v4->_rotaryScrubCenterPunchout setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4 addSubview:v4->_rotaryScrubCenterPunchout];
    v16 = objc_alloc_init(UIView);
    roundPointerView = v4->_roundPointerView;
    v4->_roundPointerView = v16;

    v18 = v4->_roundPointerView;
    v19 = +[UIColor whiteColor];
    [(UIView *)v18 setBackgroundColor:v19];

    layer2 = [(UIView *)v4->_roundPointerView layer];
    v21 = _UIInternalPreferenceUsesDefault(algn_1ED48B9D8, @"RotaryFocusRingPointerDiameter", _UIInternalPreferenceUpdateDouble);
    v22 = *&qword_1ED48B9E0 * 0.5;
    if (v21)
    {
      v22 = 12.0;
    }

    [layer2 setCornerRadius:v22];

    [(UIView *)v4->_roundPointerView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer3 = [(UIView *)v4->_roundPointerView layer];
    _UIFocusRotaryRingConfigureShadowForLayer(layer3);

    [(UIView *)v4 addSubview:v4->_roundPointerView];
    v24 = objc_alloc_init(UIView);
    ringView = v4->_ringView;
    v4->_ringView = v24;

    v26 = +[UIColor whiteColor];
    cGColor = [v26 CGColor];
    layer4 = [(UIView *)v4->_ringView layer];
    [layer4 setBorderColor:cGColor];

    if (_UIInternalPreferenceUsesDefault(algn_1ED48B9B8, @"RotaryFocusRingBorderWidth", _UIInternalPreferenceUpdateDouble))
    {
      v29 = 16.0;
    }

    else
    {
      v29 = *&qword_1ED48B9C0;
    }

    layer5 = [(UIView *)v4->_ringView layer];
    [layer5 setBorderWidth:v29];

    if (_UIInternalPreferenceUsesDefault(&_MergedGlobals_961, @"RotaryFocusRingDiameter", _UIInternalPreferenceUpdateDouble))
    {
      v31 = 40.0;
    }

    else
    {
      v31 = *&qword_1ED48B9B0 * 0.5;
    }

    layer6 = [(UIView *)v4->_ringView layer];
    [layer6 setCornerRadius:v31];

    [(UIView *)v4->_ringView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer7 = [(UIView *)v4->_ringView layer];
    _UIFocusRotaryRingConfigureShadowForLayer(layer7);

    [(UIView *)v4 addSubview:v4->_ringView];
    v34 = [UIView alloc];
    [(UIView *)v4 bounds];
    v36 = v35;
    [(UIView *)v4 bounds];
    v37 = [(UIView *)v34 initWithFrame:0.0, 0.0, v36];
    fingerPositionContainerView = v4->_fingerPositionContainerView;
    v4->_fingerPositionContainerView = v37;

    [(UIView *)v4->_fingerPositionContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4 addSubview:v4->_fingerPositionContainerView];
    v39 = objc_alloc_init(UIView);
    fingerPositionView = v4->_fingerPositionView;
    v4->_fingerPositionView = v39;

    v41 = v4->_fingerPositionView;
    v42 = +[UIColor blackColor];
    [(UIView *)v41 setBackgroundColor:v42];

    layer8 = [(UIView *)v4->_fingerPositionView layer];
    v44 = _UIInternalPreferenceUsesDefault(algn_1ED48B9C8, @"RotaryFocusRingFingerPositionDiameter", _UIInternalPreferenceUpdateDouble);
    v45 = *&qword_1ED48B9D0 * 0.5;
    if (v44)
    {
      v45 = 6.0;
    }

    [layer8 setCornerRadius:v45];

    [(UIView *)v4->_fingerPositionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_fingerPositionContainerView addSubview:v4->_fingerPositionView];
    v46 = +[UIColor whiteColor];
    if (_UIInternalPreferenceUsesDefault(&unk_1ED48BA08, @"RotaryFocusRingArrowWidth", _UIInternalPreferenceUpdateDouble))
    {
      v47 = 40.0;
    }

    else
    {
      v47 = *&qword_1ED48BA10;
    }

    if (_UIInternalPreferenceUsesDefault(algn_1ED48BA18, @"RotaryFocusRingArrowHeight", _UIInternalPreferenceUpdateDouble))
    {
      v48 = 14.0;
    }

    else
    {
      v48 = *&qword_1ED48BA20;
    }

    v49 = [[_UIFocusRotaryRingArrowView alloc] initWithFrame:v46 color:0.0, 0.0, v47, v48];
    upArrow = v4->_upArrow;
    v4->_upArrow = v49;

    [(UIView *)v4 addSubview:v4->_upArrow];
    v51 = [[_UIFocusRotaryRingArrowView alloc] initWithFrame:v46 color:0.0, 0.0, v47, v48];
    downArrow = v4->_downArrow;
    v4->_downArrow = v51;

    CGAffineTransformMakeRotation(&v138, 3.14159265);
    v53 = v4->_downArrow;
    v137 = v138;
    [(UIView *)v53 setTransform:&v137];
    [(UIView *)v4 addSubview:v4->_downArrow];
    v134 = v46;
    v54 = [[_UIFocusRotaryRingArrowView alloc] initWithFrame:v46 color:0.0, 0.0, v47, v48];
    leftArrow = v4->_leftArrow;
    v4->_leftArrow = v54;

    CGAffineTransformMakeRotation(&v136, 4.71238898);
    v56 = v4->_leftArrow;
    v137 = v136;
    [(UIView *)v56 setTransform:&v137];
    [(UIView *)v4 addSubview:v4->_leftArrow];
    v57 = [[_UIFocusRotaryRingArrowView alloc] initWithFrame:v46 color:0.0, 0.0, v47, v48];
    rightArrow = v4->_rightArrow;
    v4->_rightArrow = v57;

    CGAffineTransformMakeRotation(&v135, 1.57079633);
    v59 = v4->_rightArrow;
    v137 = v135;
    [(UIView *)v59 setTransform:&v137];
    [(UIView *)v4 addSubview:v4->_rightArrow];
    centerXAnchor = [(UIView *)v4->_rotaryScrubCenterPunchout centerXAnchor];
    centerXAnchor2 = [(UIView *)v4 centerXAnchor];
    v131 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v140[0] = v131;
    centerYAnchor = [(UIView *)v4->_rotaryScrubCenterPunchout centerYAnchor];
    centerYAnchor2 = [(UIView *)v4 centerYAnchor];
    v128 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v140[1] = v128;
    widthAnchor = [(UIView *)v4->_rotaryScrubCenterPunchout widthAnchor];
    v126 = [widthAnchor constraintEqualToConstant:v9];
    v140[2] = v126;
    heightAnchor = [(UIView *)v4->_rotaryScrubCenterPunchout heightAnchor];
    v124 = [heightAnchor constraintEqualToConstant:v9];
    v140[3] = v124;
    widthAnchor2 = [(UIView *)v4->_roundPointerView widthAnchor];
    v123 = widthAnchor2;
    v61 = _UIInternalPreferenceUsesDefault(algn_1ED48B9D8, @"RotaryFocusRingPointerDiameter", _UIInternalPreferenceUpdateDouble);
    v62 = *&qword_1ED48B9E0;
    if (v61)
    {
      v62 = 24.0;
    }

    v122 = [widthAnchor2 constraintEqualToConstant:v62];
    v140[4] = v122;
    heightAnchor2 = [(UIView *)v4->_roundPointerView heightAnchor];
    v121 = heightAnchor2;
    v64 = _UIInternalPreferenceUsesDefault(algn_1ED48B9D8, @"RotaryFocusRingPointerDiameter", _UIInternalPreferenceUpdateDouble);
    v65 = *&qword_1ED48B9E0;
    if (v64)
    {
      v65 = 24.0;
    }

    v120 = [heightAnchor2 constraintEqualToConstant:v65];
    v140[5] = v120;
    centerXAnchor3 = [(UIView *)v4->_roundPointerView centerXAnchor];
    centerXAnchor4 = [(UIView *)v4 centerXAnchor];
    v117 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v140[6] = v117;
    centerYAnchor3 = [(UIView *)v4->_roundPointerView centerYAnchor];
    centerYAnchor4 = [(UIView *)v4 centerYAnchor];
    v114 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v140[7] = v114;
    widthAnchor3 = [(UIView *)v4->_ringView widthAnchor];
    v113 = widthAnchor3;
    v67 = _UIInternalPreferenceUsesDefault(&_MergedGlobals_961, @"RotaryFocusRingDiameter", _UIInternalPreferenceUpdateDouble);
    v68 = *&qword_1ED48B9B0;
    if (v67)
    {
      v68 = 80.0;
    }

    v112 = [widthAnchor3 constraintEqualToConstant:v68];
    v140[8] = v112;
    heightAnchor3 = [(UIView *)v4->_ringView heightAnchor];
    v111 = heightAnchor3;
    v70 = _UIInternalPreferenceUsesDefault(&_MergedGlobals_961, @"RotaryFocusRingDiameter", _UIInternalPreferenceUpdateDouble);
    v71 = *&qword_1ED48B9B0;
    if (v70)
    {
      v71 = 80.0;
    }

    v110 = [heightAnchor3 constraintEqualToConstant:v71];
    v140[9] = v110;
    centerXAnchor5 = [(UIView *)v4->_ringView centerXAnchor];
    centerXAnchor6 = [(UIView *)v4 centerXAnchor];
    v107 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v140[10] = v107;
    centerYAnchor5 = [(UIView *)v4->_ringView centerYAnchor];
    centerYAnchor6 = [(UIView *)v4 centerYAnchor];
    v104 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v140[11] = v104;
    widthAnchor4 = [(UIView *)v4->_fingerPositionContainerView widthAnchor];
    widthAnchor5 = [(UIView *)v4 widthAnchor];
    v101 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
    v140[12] = v101;
    heightAnchor4 = [(UIView *)v4->_fingerPositionContainerView heightAnchor];
    heightAnchor5 = [(UIView *)v4 heightAnchor];
    v98 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
    v140[13] = v98;
    centerXAnchor7 = [(UIView *)v4->_fingerPositionContainerView centerXAnchor];
    centerXAnchor8 = [(UIView *)v4 centerXAnchor];
    v95 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    v140[14] = v95;
    centerYAnchor7 = [(UIView *)v4->_fingerPositionContainerView centerYAnchor];
    centerYAnchor8 = [(UIView *)v4 centerYAnchor];
    v92 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    v140[15] = v92;
    widthAnchor6 = [(UIView *)v4->_fingerPositionView widthAnchor];
    v91 = widthAnchor6;
    v73 = _UIInternalPreferenceUsesDefault(algn_1ED48B9C8, @"RotaryFocusRingFingerPositionDiameter", _UIInternalPreferenceUpdateDouble);
    v74 = *&qword_1ED48B9D0;
    if (v73)
    {
      v74 = 12.0;
    }

    v90 = [widthAnchor6 constraintEqualToConstant:v74];
    v140[16] = v90;
    heightAnchor6 = [(UIView *)v4->_fingerPositionView heightAnchor];
    v76 = _UIInternalPreferenceUsesDefault(algn_1ED48B9C8, @"RotaryFocusRingFingerPositionDiameter", _UIInternalPreferenceUpdateDouble);
    v77 = *&qword_1ED48B9D0;
    if (v76)
    {
      v77 = 12.0;
    }

    v78 = [heightAnchor6 constraintEqualToConstant:v77];
    v140[17] = v78;
    centerXAnchor9 = [(UIView *)v4->_fingerPositionView centerXAnchor];
    centerXAnchor10 = [(UIView *)v4->_fingerPositionContainerView centerXAnchor];
    v81 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
    v140[18] = v81;
    centerYAnchor9 = [(UIView *)v4->_fingerPositionView centerYAnchor];
    centerYAnchor10 = [(UIView *)v4->_fingerPositionContainerView centerYAnchor];
    if (_UIInternalPreferenceUsesDefault(&_MergedGlobals_961, @"RotaryFocusRingDiameter", _UIInternalPreferenceUpdateDouble))
    {
      v84 = 80.0;
    }

    else
    {
      v84 = *&qword_1ED48B9B0;
    }

    v85 = _UIInternalPreferenceUsesDefault(algn_1ED48B9B8, @"RotaryFocusRingBorderWidth", _UIInternalPreferenceUpdateDouble);
    v86 = *&qword_1ED48B9C0;
    if (v85)
    {
      v86 = 16.0;
    }

    v87 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10 constant:(v84 - v86) * -0.5];
    v140[19] = v87;
    v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:20];

    [MEMORY[0x1E69977A0] activateConstraints:v88];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIFocusDidUpdateNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIFocusRotaryIndicatorView;
  [(UIView *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = _UIFocusRotaryIndicatorView;
  [(UIView *)&v3 didMoveToWindow];
  [(_UIFocusRotaryIndicatorView *)self _updateArrowsForCurrentFocus];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = _UIFocusRotaryIndicatorView;
  [(UIView *)&v12 layoutSubviews];
  [(UIView *)self bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidY = CGRectGetMidY(v14);
  _UIInternalPreferenceUsesDefault(&unk_1ED48BA08, @"RotaryFocusRingArrowWidth", _UIInternalPreferenceUpdateDouble);
  v9 = _UIInternalPreferenceUsesDefault(algn_1ED48BA18, @"RotaryFocusRingArrowHeight", _UIInternalPreferenceUpdateDouble);
  v10 = *&qword_1ED48BA20 * 0.5;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MinY = CGRectGetMinY(v15);
  if (v9)
  {
    v10 = 7.0;
  }

  [(UIView *)self->_upArrow setCenter:MidX, MinY + v10];
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  [(UIView *)self->_downArrow setCenter:MidX, CGRectGetMaxY(v16) - v10];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  [(UIView *)self->_leftArrow setCenter:v10 + CGRectGetMinX(v17), MidY];
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  [(UIView *)self->_rightArrow setCenter:CGRectGetMaxX(v18) - v10, MidY];
}

- (void)updateFailedMovementHeading:(unint64_t)heading
{
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_RotaryFocusRingHidesArrowsOnFailedMovement, @"RotaryFocusRingHidesArrowsOnFailedMovement", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1EA95E95C)
  {
    self->_failedMovementHeading = heading;

    [(_UIFocusRotaryIndicatorView *)self _updateArrowDisplay];
  }
}

- (void)_updateArrowDisplay
{
  activeAxis = self->_activeAxis;
  if ((activeAxis & 2) != 0)
  {
    [(UIView *)self->_upArrow setHidden:self->_failedMovementHeading & 1];
    v4 = (LOBYTE(self->_failedMovementHeading) >> 1) & 1;
  }

  else
  {
    v4 = 1;
    [(UIView *)self->_upArrow setHidden:1];
  }

  [(UIView *)self->_downArrow setHidden:v4];
  if (activeAxis)
  {
    [(UIView *)self->_leftArrow setHidden:(self->_failedMovementHeading >> 2) & 1];
    v5 = (LOBYTE(self->_failedMovementHeading) >> 3) & 1;
  }

  else
  {
    v5 = 1;
    [(UIView *)self->_leftArrow setHidden:1];
  }

  rightArrow = self->_rightArrow;

  [(UIView *)rightArrow setHidden:v5];
}

- (void)toggleVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_visible == visible)
  {
    if (self->_rotaryScrubHideAnimator)
    {
      v5 = 0;
      if (animated)
      {
        return;
      }
    }

    else
    {
      v5 = self->_rotaryScrubUnhideAnimator == 0;
      if (animated)
      {
        return;
      }
    }

    if (v5)
    {
      return;
    }
  }

  self->_visible = visible;
  if (animated)
  {
    if (visible)
    {
      memset(&v46, 0, sizeof(v46));
      [(_UIFocusRotaryIndicatorView *)self _transformForWheelPosition:self->_wheelPosition];
      memset(&v45, 0, sizeof(v45));
      v44 = v46;
      CGAffineTransformRotate(&v45, &v44, -3.92699082);
      memset(&v44, 0, sizeof(v44));
      if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_RotaryFocusRingHiddenScale, @"RotaryFocusRingHiddenScale", _UIInternalPreferenceUpdateDouble))
      {
        v6 = 0.1;
      }

      else
      {
        v6 = *&qword_1EA95E968;
      }

      if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_RotaryFocusRingHiddenScale, @"RotaryFocusRingHiddenScale", _UIInternalPreferenceUpdateDouble))
      {
        v7 = 0.1;
      }

      else
      {
        v7 = *&qword_1EA95E968;
      }

      CGAffineTransformMakeScale(&v44, v6, v7);
      rotaryScrubHideAnimator = self->_rotaryScrubHideAnimator;
      if (!rotaryScrubHideAnimator)
      {
        fingerPositionContainerView = self->_fingerPositionContainerView;
        v43 = v45;
        [(UIView *)fingerPositionContainerView setTransform:&v43];
        v43 = v44;
        [(UIView *)self setTransform:&v43];
        layer = [(UIView *)self->_rotaryScrubCenterPunchout layer];
        v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
        [layer setCompositingFilter:v11];

        rotaryScrubHideAnimator = self->_rotaryScrubHideAnimator;
      }

      [(UIViewPropertyAnimator *)rotaryScrubHideAnimator stopAnimation:1];
      v12 = self->_rotaryScrubHideAnimator;
      self->_rotaryScrubHideAnimator = 0;

      v13 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:160.0 damping:16.0 initialVelocity:0.0, 0.0];
      v14 = [UIViewPropertyAnimator alloc];
      [(UISpringTimingParameters *)v13 settlingDuration];
      v15 = [(UIViewPropertyAnimator *)v14 initWithDuration:v13 timingParameters:?];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __54___UIFocusRotaryIndicatorView_toggleVisible_animated___block_invoke;
      v42[3] = &unk_1E70F3590;
      v42[4] = self;
      [(UIViewPropertyAnimator *)v15 addAnimations:v42];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __54___UIFocusRotaryIndicatorView_toggleVisible_animated___block_invoke_3;
      v41[3] = &unk_1E70F5DB8;
      v41[4] = self;
      [(UIViewPropertyAnimator *)v15 addCompletion:v41];
      v16 = [UIViewPropertyAnimator alloc];
      [(UISpringTimingParameters *)v13 settlingDuration];
      v17 = [(UIViewPropertyAnimator *)v16 initWithDuration:v13 timingParameters:?];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v40 = v45;
      v39[2] = __54___UIFocusRotaryIndicatorView_toggleVisible_animated___block_invoke_4;
      v39[3] = &unk_1E70F3DC8;
      v39[4] = self;
      [(UIViewPropertyAnimator *)v17 addAnimations:v39];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __54___UIFocusRotaryIndicatorView_toggleVisible_animated___block_invoke_5;
      v38[3] = &unk_1E70F3590;
      v38[4] = self;
      [(UIViewPropertyAnimator *)v17 addAnimations:v38 delayFactor:0.15];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __54___UIFocusRotaryIndicatorView_toggleVisible_animated___block_invoke_6;
      v37[3] = &unk_1E70F5DB8;
      v37[4] = self;
      [(UIViewPropertyAnimator *)v17 addCompletion:v37];
      rotaryScrubUnhideAnimator = self->_rotaryScrubUnhideAnimator;
      self->_rotaryScrubUnhideAnimator = v15;
      v19 = v15;

      rotaryScrubBackwardsFingerPositionAnimator = self->_rotaryScrubBackwardsFingerPositionAnimator;
      self->_rotaryScrubBackwardsFingerPositionAnimator = v17;
      v21 = v17;

      [(UIViewPropertyAnimator *)v19 startAnimation];
      [(UIViewPropertyAnimator *)v21 startAnimation];
    }

    else
    {
      v13 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:160.0 damping:16.0 initialVelocity:0.0, 0.0];
      v29 = [UIViewPropertyAnimator alloc];
      [(UISpringTimingParameters *)v13 settlingDuration];
      v30 = [(UIViewPropertyAnimator *)v29 initWithDuration:v13 timingParameters:?];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __54___UIFocusRotaryIndicatorView_toggleVisible_animated___block_invoke_7;
      v36[3] = &unk_1E70F3590;
      v36[4] = self;
      [(UIViewPropertyAnimator *)v30 addAnimations:v36];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __54___UIFocusRotaryIndicatorView_toggleVisible_animated___block_invoke_8;
      v35[3] = &unk_1E70F5DB8;
      v35[4] = self;
      [(UIViewPropertyAnimator *)v30 addCompletion:v35];
      v31 = self->_rotaryScrubHideAnimator;
      self->_rotaryScrubHideAnimator = v30;
      v32 = v30;

      [(UIViewPropertyAnimator *)v32 startAnimation];
    }
  }

  else
  {
    [(UIViewPropertyAnimator *)self->_rotaryScrubHideAnimator stopAnimation:1];
    v22 = self->_rotaryScrubHideAnimator;
    self->_rotaryScrubHideAnimator = 0;

    [(UIViewPropertyAnimator *)self->_rotaryScrubUnhideAnimator stopAnimation:1];
    v23 = self->_rotaryScrubUnhideAnimator;
    self->_rotaryScrubUnhideAnimator = 0;

    [(UIViewPropertyAnimator *)self->_rotaryScrubBackwardsFingerPositionAnimator stopAnimation:1];
    v24 = self->_rotaryScrubBackwardsFingerPositionAnimator;
    self->_rotaryScrubBackwardsFingerPositionAnimator = 0;

    if (self->_visible)
    {
      v25 = self->_fingerPositionContainerView;
      [(_UIFocusRotaryIndicatorView *)self _transformForWheelPosition:self->_wheelPosition];
      [(UIView *)v25 setTransform:&v46];
      v26 = *(MEMORY[0x1E695EFD0] + 16);
      *&v46.a = *MEMORY[0x1E695EFD0];
      *&v46.c = v26;
      *&v46.tx = *(MEMORY[0x1E695EFD0] + 32);
      [(UIView *)self setTransform:&v46];
      [(UIView *)self setAlpha:1.0];
      layer2 = [(UIView *)self->_rotaryScrubCenterPunchout layer];
      v28 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
      [layer2 setCompositingFilter:v28];
    }

    else
    {
      memset(&v46, 0, sizeof(v46));
      if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_RotaryFocusRingHiddenScale, @"RotaryFocusRingHiddenScale", _UIInternalPreferenceUpdateDouble))
      {
        v33 = 0.1;
      }

      else
      {
        v33 = *&qword_1EA95E968;
      }

      if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_RotaryFocusRingHiddenScale, @"RotaryFocusRingHiddenScale", _UIInternalPreferenceUpdateDouble))
      {
        v34 = 0.1;
      }

      else
      {
        v34 = *&qword_1EA95E968;
      }

      CGAffineTransformMakeScale(&v46, v33, v34);
      v45 = v46;
      [(UIView *)self setTransform:&v45];
      [(UIView *)self setAlpha:0.0];
      layer2 = [(UIView *)self->_rotaryScrubCenterPunchout layer];
      [layer2 setCompositingFilter:0];
    }
  }
}

- (void)updateWheelPosition:(double)position
{
  if (self->_wheelPosition != position)
  {
    self->_wheelPosition = position;
    if (self->_visible)
    {
      rotaryScrubBackwardsFingerPositionAnimator = self->_rotaryScrubBackwardsFingerPositionAnimator;
      if (rotaryScrubBackwardsFingerPositionAnimator)
      {
        [(UIViewPropertyAnimator *)rotaryScrubBackwardsFingerPositionAnimator stopAnimation:0];
        [(UIViewPropertyAnimator *)self->_rotaryScrubBackwardsFingerPositionAnimator finishAnimationAtPosition:0];
      }

      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
      [(_UIFocusRotaryIndicatorView *)self _transformForWheelPosition:position];
      v6[0] = v7;
      v6[1] = v8;
      v6[2] = v9;
      [(UIView *)self->_fingerPositionContainerView setTransform:v6];
    }
  }
}

- (void)_updateArrowsForCurrentFocus
{
  _calculateCurrentRotaryAxis = [(_UIFocusRotaryIndicatorView *)self _calculateCurrentRotaryAxis];

  [(_UIFocusRotaryIndicatorView *)self showArrowsForAxis:_calculateCurrentRotaryAxis];
}

- (unint64_t)_calculateCurrentRotaryAxis
{
  v2 = [UIFocusSystem focusSystemForEnvironment:self];
  focusedItem = [v2 focusedItem];
  v4 = focusedItem;
  if (focusedItem && (v5 = _UIFocusEnvironmentResolvedRotaryFocusMovementAxis(focusedItem, 0), (v5 - 1) <= 2))
  {
    v6 = qword_18A683E90[v5 - 1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end