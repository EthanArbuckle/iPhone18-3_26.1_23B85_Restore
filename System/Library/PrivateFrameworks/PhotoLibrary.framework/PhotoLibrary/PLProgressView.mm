@interface PLProgressView
- (PLProgressView)initWithFrame:(CGRect)a3;
- (float)percentComplete;
- (void)_cancel:(id)a3;
- (void)_installBackgroundBlurredView;
- (void)_installBackgroundTintedView;
- (void)_installBackgroundView;
- (void)_removeBackgroundBlurredView;
- (void)_removeBackgroundTintedView;
- (void)_syncToBackgroundType;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundType:(int64_t)a3;
- (void)setLabelText:(id)a3;
- (void)setShowsCancelButton:(BOOL)a3;
- (void)updateUIForPublishingAgent:(id)a3;
@end

@implementation PLProgressView

- (void)setShowsCancelButton:(BOOL)a3
{
  if (self->_showsCancelButton != a3)
  {
    self->_showsCancelButton = a3;
    if (a3)
    {
      cancelButton = self->_cancelButton;
      if (!cancelButton)
      {
        v5 = [MEMORY[0x277D75220] buttonWithType:122];
        self->_cancelButton = v5;
        [(UIButton *)v5 setExclusiveTouch:1];
        [(UIButton *)self->_cancelButton addTarget:self action:sel__cancel_ forControlEvents:64];
        [(UIButton *)self->_cancelButton sizeToFit];
        cancelButton = self->_cancelButton;
      }

      [(PLProgressView *)self addSubview:cancelButton];
      v6 = !self->_showsCancelButton;
    }

    else
    {
      v6 = 1;
    }

    [(UIButton *)self->_cancelButton setHidden:v6];
    [(UIButton *)self->_cancelButton setEnabled:1];

    [(PLProgressView *)self setNeedsLayout];
  }
}

- (void)_cancel:(id)a3
{
  [(UIButton *)self->_cancelButton setEnabled:0];
  cancelationHandler = self->_cancelationHandler;
  if (cancelationHandler)
  {
    cancelationHandler[2]();

    [(PLProgressView *)self setCancelationHandler:0];
  }
}

- (float)percentComplete
{
  progressView = self->_progressView;
  if (!progressView)
  {
    return 0.0;
  }

  [(UIProgressView *)progressView progress];
  return result;
}

- (void)setLabelText:(id)a3
{
  labelView = self->_labelView;
  if (!labelView)
  {
    v6 = objc_alloc(MEMORY[0x277D756B8]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    self->_labelView = v7;
    [(UILabel *)v7 setAutoresizingMask:2];
    -[UILabel setFont:](self->_labelView, "setFont:", [MEMORY[0x277D74300] systemFontOfSize:12.0]);
    -[UILabel setBackgroundColor:](self->_labelView, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    -[UILabel setTextColor:](self->_labelView, "setTextColor:", [MEMORY[0x277D75348] blackColor]);
    [(UILabel *)self->_labelView setTextAlignment:1];
    [(PLProgressView *)self addSubview:self->_labelView];
    labelView = self->_labelView;
  }

  [(UILabel *)labelView setText:a3];

  [(PLProgressView *)self setNeedsLayout];
}

- (void)updateUIForPublishingAgent:(id)a3
{
  if ([a3 isRemaking])
  {
    [a3 remakingPercentComplete];
    [(PLProgressView *)self setPercentComplete:?];
    if ((*(self + 440) & 2) == 0)
    {
      -[PLProgressView setLabelText:](self, "setLabelText:", [a3 progressViewMessageDuringRemake]);
      *(self + 440) |= 2u;
    }
  }

  else
  {
    [a3 snapshot];
    [a3 estimatedTimeRemaining];
    v6 = v5;
    [a3 percentComplete];
    v8 = v7;
    [(PLProgressView *)self setNeedsLayout];
    LODWORD(v9) = v8;
    [(PLProgressView *)self setPercentComplete:v9];
    if (v6 <= 0.0)
    {
      PLLocalizedFrameworkString();
      labelView = self->_labelView;
      [a3 serviceName];
      v13 = PFStringWithValidatedFormat();
      v14 = labelView;
    }

    else
    {
      if (v6 <= 1.0)
      {
        PLLocalizedFrameworkString();
      }

      else
      {
        timeRemainingFormatter = self->_timeRemainingFormatter;
        if (!timeRemainingFormatter)
        {
          v11 = objc_alloc_init(MEMORY[0x277CCA958]);
          self->_timeRemainingFormatter = v11;
          [(NSDateComponentsFormatter *)v11 setUnitsStyle:3];
          [(NSDateComponentsFormatter *)self->_timeRemainingFormatter setIncludesApproximationPhrase:1];
          [(NSDateComponentsFormatter *)self->_timeRemainingFormatter setIncludesTimeRemainingPhrase:1];
          [(NSDateComponentsFormatter *)self->_timeRemainingFormatter setAllowedUnits:64];
          timeRemainingFormatter = self->_timeRemainingFormatter;
        }

        [(NSDateComponentsFormatter *)timeRemainingFormatter stringFromTimeInterval:v6];
      }

      PLLocalizedFrameworkString();
      [a3 serviceName];
      v13 = PFStringWithValidatedFormat();
      v14 = self->_labelView;
    }

    [(UILabel *)v14 setText:v13];
  }
}

- (void)_removeBackgroundTintedView
{
  if ([(PLProgressView *)self backgroundTintedView])
  {
    [(UIView *)[(PLProgressView *)self backgroundTintedView] removeFromSuperview];

    [(PLProgressView *)self setBackgroundTintedView:0];
  }
}

- (void)_installBackgroundTintedView
{
  if (![(PLProgressView *)self backgroundTintedView])
  {
    v3 = [(PLProgressView *)self backgroundView];
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(UIView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    [(PLProgressView *)self setBackgroundTintedView:v5];
    [v5 setOpaque:0];
    [v5 setBackgroundColor:{objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", 0.101960786, 0.75)}];
    [(UIView *)v3 addSubview:v5];
    [(UIView *)v3 sendSubviewToBack:v5];

    [v5 setAutoresizingMask:18];
  }
}

- (void)_removeBackgroundBlurredView
{
  if ([(PLProgressView *)self backgroundBlurredView])
  {
    [(_UIBackdropView *)[(PLProgressView *)self backgroundBlurredView] removeFromSuperview];

    [(PLProgressView *)self setBackgroundBlurredView:0];
  }
}

- (void)_installBackgroundBlurredView
{
  if (![(PLProgressView *)self backgroundBlurredView])
  {
    v3 = [(PLProgressView *)self backgroundView];
    v4 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
    [(PLProgressView *)self setBackgroundBlurredView:v4];
    [(UIView *)v3 addSubview:v4];

    [(UIView *)v3 sendSubviewToBack:v4];
  }
}

- (void)_installBackgroundView
{
  if (![(PLProgressView *)self backgroundView])
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    [(PLProgressView *)self bounds];
    v4 = [v3 initWithFrame:?];
    [(PLProgressView *)self setBackgroundView:v4];
    [v4 setOpaque:0];
    [v4 setBackgroundColor:{objc_msgSend(MEMORY[0x277D75348], "clearColor")}];
    [(PLProgressView *)self addSubview:v4];
    [(PLProgressView *)self sendSubviewToBack:v4];

    [v4 setAutoresizingMask:18];
  }
}

- (void)_syncToBackgroundType
{
  v3 = [(PLProgressView *)self backgroundType];
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        return;
      }

      [(PLProgressView *)self _removeBackgroundBlurredView];
      [(PLProgressView *)self _installBackgroundTintedView];
      goto LABEL_8;
    }

    [(PLProgressView *)self _removeBackgroundTintedView];
    [(PLProgressView *)self _installBackgroundBlurredView];
LABEL_12:
    labelView = self->_labelView;
    v5 = [MEMORY[0x277D75348] blackColor];
    goto LABEL_13;
  }

  if (!v3)
  {
    [(PLProgressView *)self _removeBackgroundTintedView];
    [(PLProgressView *)self _removeBackgroundBlurredView];
    goto LABEL_12;
  }

  if (v3 != 1)
  {
    return;
  }

  [(PLProgressView *)self _removeBackgroundTintedView];
  [(PLProgressView *)self _removeBackgroundBlurredView];
LABEL_8:
  labelView = self->_labelView;
  v5 = [MEMORY[0x277D75348] whiteColor];
LABEL_13:

  [(UILabel *)labelView setTextColor:v5];
}

- (void)setBackgroundType:(int64_t)a3
{
  if (self->_backgroundType != a3)
  {
    self->_backgroundType = a3;
    [(PLProgressView *)self _syncToBackgroundType];
  }
}

- (void)layoutSubviews
{
  [(PLProgressView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PLProgressView *)self setOpaque:0];
  -[PLProgressView setBackgroundColor:](self, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
  if (![(PLProgressView *)self backgroundView])
  {
    [(PLProgressView *)self _installBackgroundView];
  }

  [(PLProgressView *)self _syncToBackgroundType];
  if (!self->_topDivider)
  {
    v32.origin.x = v4;
    v32.origin.y = v6;
    v32.size.width = v8;
    v32.size.height = v10;
    MinX = CGRectGetMinX(v32);
    v33.origin.x = v4;
    v33.origin.y = v6;
    v33.size.width = v8;
    v33.size.height = v10;
    MinY = CGRectGetMinY(v33);
    v34.origin.x = v4;
    v34.origin.y = v6;
    v34.size.width = v8;
    v34.size.height = v10;
    Width = CGRectGetWidth(v34);
    PLPhysicalScreenScale();
    if (v14 <= 1.0)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = 0.5;
    }

    v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{MinX, MinY, Width, v15}];
    self->_topDivider = v16;
    [(PLProgressView *)self addSubview:v16];
    [(UIView *)self->_topDivider setAutoresizingMask:34];
    -[UIView setBackgroundColor:](self->_topDivider, "setBackgroundColor:", [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.200000003]);
  }

  v17 = *(MEMORY[0x277CBF3A0] + 16);
  if (self->_cancelButton && [(PLProgressView *)self showsCancelButton]&& ([(UIButton *)self->_cancelButton isHidden]& 1) == 0)
  {
    [(UIButton *)self->_cancelButton frame];
    v19 = v18;
    v21 = v20;
    v35.origin.x = v4;
    v35.origin.y = v6;
    v35.size.width = v8;
    v35.size.height = v10;
    v36.origin.x = CGRectGetMaxX(v35) + -10.0 - v19;
    v36.origin.y = (v10 - v21) * 0.5;
    v36.size.width = v19;
    v36.size.height = v21;
    v37 = CGRectIntegral(v36);
    v17 = v37.size.width;
    [(UIButton *)self->_cancelButton setFrame:v37.origin.x, v37.origin.y];
  }

  progressView = self->_progressView;
  if (!progressView)
  {
    v23 = [objc_alloc(MEMORY[0x277D758F0]) initWithProgressViewStyle:0];
    self->_progressView = v23;
    [(UIProgressView *)v23 setAutoresizingMask:34];
    [(PLProgressView *)self addSubview:self->_progressView];
    [(PLProgressView *)self bounds];
    v39 = CGRectInset(v38, 10.0, 0.0);
    x = v39.origin.x;
    if (v17 == 0.0)
    {
      v25 = v39.size.width;
    }

    else
    {
      v25 = v39.size.width - (v17 + 20.0);
    }

    v26 = v39.origin.y + 12.0;
    [(UIProgressView *)self->_progressView bounds];
    [(UIProgressView *)self->_progressView setFrame:x, v26, v25, CGRectGetHeight(v40)];
    [(PLProgressView *)self setPercentComplete:0.0];
    progressView = self->_progressView;
  }

  [(UIProgressView *)progressView frame];
  labelView = self->_labelView;
  v30 = v27 + v28 + 4.0;

  [(UILabel *)labelView setFrame:v4, v30, v8, 20.0];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLProgressView;
  [(PLProgressView *)&v3 dealloc];
}

- (PLProgressView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = PLProgressView;
  result = [(PLProgressView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_backgroundType = 2;
  }

  return result;
}

@end