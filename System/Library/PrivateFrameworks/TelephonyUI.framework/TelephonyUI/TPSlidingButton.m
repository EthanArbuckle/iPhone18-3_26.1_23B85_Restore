@interface TPSlidingButton
- (CGSize)intrinsicContentSize;
- (TPSlidingButton)initWithSlidingButtonType:(int)a3;
- (void)actionSlider:(id)a3 didUpdateSlideWithValue:(double)a4;
- (void)actionSliderDidCompleteSlide:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation TPSlidingButton

- (TPSlidingButton)initWithSlidingButtonType:(int)a3
{
  v46.receiver = self;
  v46.super_class = TPSlidingButton;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(TPSlidingButton *)&v46 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    v10 = MEMORY[0x1E69DD7F0];
    v11 = [MEMORY[0x1E69DC888] blueColor];
    v12 = 1;
    v13 = [MEMORY[0x1E69DD5B8] sharedInstanceForStyle:1];
    v14 = [v10 vibrantSettingsWithReferenceColor:v11 referenceContrast:v13 legibilitySettings:0.3];

    v15 = [objc_alloc(MEMORY[0x1E69DD338]) initWithFrame:v14 vibrantSettings:{v4, v5, v6, v7}];
    acceptButton = v9->_acceptButton;
    v9->_acceptButton = v15;

    v17 = MEMORY[0x1E69DCAB8];
    v18 = TelephonyUIBundle();
    v19 = [v17 imageNamed:@"phone_dial" inBundle:v18];
    v20 = [v19 imageWithRenderingMode:2];
    [(_UIActionSlider *)v9->_acceptButton setKnobImage:v20];

    v21 = [MEMORY[0x1E69DC888] systemGreenColor];
    [(_UIActionSlider *)v9->_acceptButton setTintColor:v21];

    [(_UIActionSlider *)v9->_acceptButton setDelegate:v9];
    if (a3 > 6 || ((1 << a3) & 0x46) == 0)
    {
      v12 = a3 == 3;
    }

    [(_UIActionSlider *)v9->_acceptButton setStyle:v12];
    v22 = [MEMORY[0x1E69DCEB0] mainScreen];
    v23 = [v22 currentMode];
    [v23 size];
    v25 = v24;

    if (v25 >= 2208.0)
    {
      [(_UIActionSlider *)v9->_acceptButton trackSize];
      [(_UIActionSlider *)v9->_acceptButton setTrackSize:300.0];
    }

    v26 = TelephonyUIBundle();
    v27 = v26;
    if ((a3 - 5) >= 2)
    {
      v28 = @"SLIDE_TO_ANSWER";
    }

    else
    {
      v28 = @"SLIDE_TO_UNLOCK";
    }

    v29 = [v26 localizedStringForKey:v28 value:&stru_1F2CA8008 table:@"General"];

    [(_UIActionSlider *)v9->_acceptButton setTrackText:v29];
    v30 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v31 = MEMORY[0x1E69DCAB8];
    v32 = TelephonyUIBundle();
    v33 = [v31 imageNamed:@"phone_dial" inBundle:v32];
    v34 = [MEMORY[0x1E69DC888] systemGreenColor];
    v35 = [v33 _flatImageWithColor:v34];
    v36 = [v30 initWithImage:v35];
    dialImageView = v9->_dialImageView;
    v9->_dialImageView = v36;

    v38 = [MEMORY[0x1E69DC738] buttonWithType:0];
    sideButtonRight = v9->_sideButtonRight;
    v9->_sideButtonRight = v38;

    v40 = v9->_sideButtonRight;
    v41 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIButton *)v40 setBackgroundColor:v41];

    +[TPButton defaultWidthForSideButton];
    v43 = v42 * 0.5;
    v44 = [(UIButton *)v9->_sideButtonRight layer];
    [v44 setCornerRadius:v43];

    [(UIButton *)v9->_sideButtonRight setUserInteractionEnabled:0];
    [(UIImageView *)v9->_dialImageView setClipsToBounds:0];
    [(UIImageView *)v9->_dialImageView setContentMode:4];
    [(_UIActionSlider *)v9->_acceptButton setAlpha:1.0];
    [(TPSlidingButton *)v9 addSubview:v9->_acceptButton];
  }

  return v9;
}

- (void)dealloc
{
  self->_delegate = 0;
  v2.receiver = self;
  v2.super_class = TPSlidingButton;
  [(TPSlidingButton *)&v2 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TPSlidingButton;
  [(TPSlidingButton *)&v3 layoutSubviews];
  [(TPSlidingButton *)self bounds];
  [(_UIActionSlider *)self->_acceptButton setFrame:?];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(TPSlidingButton *)self acceptButton];
  [v2 trackSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)actionSlider:(id)a3 didUpdateSlideWithValue:(double)a4
{
  v6 = [(TPSlidingButton *)self delegate];
  if (v6)
  {
    v7 = v6;
    v8 = [(TPSlidingButton *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(TPSlidingButton *)self delegate];
      [v10 slidingButton:self didSlideToProportion:a4];
    }
  }
}

- (void)actionSliderDidCompleteSlide:(id)a3
{
  v4 = [(TPSlidingButton *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(TPSlidingButton *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(TPSlidingButton *)self delegate];
      [v8 slidingButtonWillFinishSlide];
    }
  }

  if (self->_type == 4)
  {
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __48__TPSlidingButton_actionSliderDidCompleteSlide___block_invoke;
    v85[3] = &unk_1E7C0C368;
    v85[4] = self;
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __48__TPSlidingButton_actionSliderDidCompleteSlide___block_invoke_2;
    v84[3] = &unk_1E7C0C738;
    v84[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v85 animations:v84 completion:0.300000012];
  }

  else
  {
    acceptButton = self->_acceptButton;
    [(_UIActionSlider *)acceptButton knobRect];
    [(_UIActionSlider *)acceptButton convertRect:self toView:?];
    [(UIButton *)self->_sideButtonRight setFrame:?];
    [(UIButton *)self->_sideButtonRight center];
    [(UIImageView *)self->_dialImageView setCenter:?];
    [(TPSlidingButton *)self insertSubview:self->_dialImageView above:self->_sideButtonRight];
    [(TPSlidingButton *)self insertSubview:self->_sideButtonRight above:self->_acceptButton];
    v10 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v10 setFromValue:&unk_1F2CB11B8];
    [v10 setToValue:&unk_1F2CB11C8];
    [v10 setDuration:0.115000002];
    v11 = *MEMORY[0x1E69797E8];
    [v10 setFillMode:*MEMORY[0x1E69797E8]];
    v82 = v10;
    [v10 setRemovedOnCompletion:0];
    v12 = MEMORY[0x1E696AD98];
    v13 = [(TPSlidingButton *)self acceptButton];
    v14 = [v13 layer];
    [v14 position];
    v15 = [v12 numberWithDouble:?];

    v16 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position.x"];
    v17 = self->_acceptButton;
    if (self->_type == 3)
    {
      v18 = [(_UIActionSlider *)v17 layer];
      [v18 position];
      v20 = v19 + -3.0;
    }

    else
    {
      [(_UIActionSlider *)v17 knobRect];
      v22 = v21;
      [(_UIActionSlider *)self->_acceptButton center];
      v20 = v22 - v23;
    }

    if ([(TPSlidingButton *)self _shouldReverseLayoutDirection])
    {
      [v15 doubleValue];
      v20 = v24 - v20;
    }

    [v16 setMass:2.0];
    [v16 setStiffness:300.0];
    [v16 setDamping:50.0];
    [v16 setFromValue:v15];
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
    [v16 setToValue:v25];

    [v16 setDuration:0.50999999];
    [v16 setFillMode:v11];
    v80 = v16;
    [v16 setRemovedOnCompletion:0];
    v26 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.rotation.z"];
    [v26 setMass:2.0];
    [v26 setStiffness:300.0];
    [v26 setDamping:50.0];
    [v26 setToValue:&unk_1F2CB11A8];
    [v26 setDuration:0.50999999];
    [v26 setFillMode:v11];
    v79 = v26;
    [v26 setRemovedOnCompletion:0];
    v81 = v15;
    if (self->_type == 3)
    {
      +[TPSuperBottomBar defaultSideMarginForDoubleButton];
      v28 = v27;
      +[TPSuperBottomBarButton defaultWidth];
      v30 = v28 + v29 * 0.5;
      [(TPSlidingButton *)self frame];
      v32 = floor(v30 - v31);
    }

    else
    {
      [(TPSlidingButton *)self bounds];
      v32 = v33 * 0.5;
    }

    v34 = [(TPSlidingButton *)self _shouldReverseLayoutDirection];
    v35 = -1.0;
    if (v34)
    {
      v35 = 1.0;
    }

    v36 = v32 + v35;
    v37 = MEMORY[0x1E696AD98];
    v38 = [(TPSlidingButton *)self sideButtonRight];
    v39 = [v38 layer];
    [v39 position];
    v78 = [v37 numberWithDouble:?];

    v76 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position.x"];
    [v76 setMass:2.0];
    [v76 setStiffness:300.0];
    [v76 setDamping:50.0];
    [v76 setFromValue:v78];
    v40 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
    [v76 setToValue:v40];

    [v76 setDuration:0.50999999];
    [v76 setFillMode:v11];
    [v76 setRemovedOnCompletion:0];
    v41 = MEMORY[0x1E696AD98];
    v42 = [(TPSlidingButton *)self dialImageView];
    v43 = [v42 layer];
    [v43 position];
    v77 = [v41 numberWithDouble:?];

    v44 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position.x"];
    [v44 setMass:2.0];
    [v44 setStiffness:300.0];
    [v44 setDamping:50.0];
    v73 = v44;
    [v44 setFromValue:v77];
    v45 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
    [v44 setToValue:v45];

    [v44 setDuration:0.50999999];
    [v44 setFillMode:v11];
    [v44 setRemovedOnCompletion:0];
    v75 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
    v46 = MEMORY[0x1E696B098];
    +[TPSuperBottomBarButton defaultHeight];
    v48 = v47;
    +[TPSuperBottomBarButton defaultHeight];
    v50 = [v46 valueWithCGRect:{0.0, 0.0, v48, v49}];
    [v75 setToValue:v50];

    [v75 setDuration:0.150000006];
    [v75 setFillMode:v11];
    [v75 setRemovedOnCompletion:0];
    +[TPSuperBottomBarButton defaultHeight];
    v52 = v51 * 0.5;
    v53 = [(UIButton *)self->_sideButtonRight layer];
    [v53 setCornerRadius:v52];

    v54 = [MEMORY[0x1E6979318] animationWithKeyPath:@"backgroundColor"];
    [v54 setDuration:0.144999996];
    v55 = [MEMORY[0x1E69DC888] whiteColor];
    [v54 setFromValue:{objc_msgSend(v55, "CGColor")}];

    v56 = [MEMORY[0x1E69DC888] systemRedColor];
    [v54 setToValue:{objc_msgSend(v56, "CGColor")}];

    [v54 setFillMode:v11];
    [v54 setRemovedOnCompletion:0];
    v57 = [MEMORY[0x1E6979538] animation];
    [v57 setType:*MEMORY[0x1E697A030]];
    v74 = v57;
    [v57 setDuration:0.115000002];
    [MEMORY[0x1E6979518] begin];
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __48__TPSlidingButton_actionSliderDidCompleteSlide___block_invoke_119;
    v83[3] = &unk_1E7C0C368;
    v83[4] = self;
    [MEMORY[0x1E6979518] setCompletionBlock:v83];
    v58 = [(UIImageView *)self->_dialImageView layer];
    [v58 addAnimation:v57 forKey:*MEMORY[0x1E697A028]];

    v59 = MEMORY[0x1E69DCAB8];
    v60 = TelephonyUIBundle();
    v61 = [v59 imageNamed:@"phone_dial" inBundle:v60];
    v62 = [MEMORY[0x1E69DC888] whiteColor];
    v63 = [v61 _flatImageWithColor:v62];
    v64 = [v63 CGImage];
    v65 = [(UIImageView *)self->_dialImageView layer];
    [v65 setContents:v64];

    v66 = [(UIButton *)self->_sideButtonRight layer];
    [v66 addAnimation:v54 forKey:@"backgroundColor"];

    v67 = [(UIButton *)self->_sideButtonRight layer];
    [v67 addAnimation:v75 forKey:@"bounds"];

    v68 = [(UIButton *)self->_sideButtonRight layer];
    [v68 addAnimation:v76 forKey:@"position"];

    v69 = [(UIImageView *)self->_dialImageView layer];
    [v69 addAnimation:v79 forKey:@"transform"];

    v70 = [(_UIActionSlider *)self->_acceptButton layer];
    [v70 addAnimation:v82 forKey:@"opacity"];

    v71 = [(_UIActionSlider *)self->_acceptButton layer];
    [v71 addAnimation:v80 forKey:@"position"];

    v72 = [(UIImageView *)self->_dialImageView layer];
    [v72 addAnimation:v73 forKey:@"position"];

    [MEMORY[0x1E6979518] commit];
  }
}

void __48__TPSlidingButton_actionSliderDidCompleteSlide___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 slidingButtonDidFinishSlide];
    }
  }
}

void __48__TPSlidingButton_actionSliderDidCompleteSlide___block_invoke_119(uint64_t a1)
{
  [*(*(a1 + 32) + 440) removeFromSuperview];
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 slidingButtonDidFinishSlide];
    }
  }
}

@end