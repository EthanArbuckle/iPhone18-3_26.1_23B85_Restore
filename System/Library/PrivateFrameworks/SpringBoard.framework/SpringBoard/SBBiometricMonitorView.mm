@interface SBBiometricMonitorView
- (SBBiometricMonitorView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setMatchState:(int64_t)state;
- (void)setPoseState:(int64_t)state;
- (void)setPresenceDetectState:(int64_t)state;
@end

@implementation SBBiometricMonitorView

- (SBBiometricMonitorView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = SBBiometricMonitorView;
  v3 = [(SBBiometricMonitorView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    stateView = v3->_stateView;
    v3->_stateView = v9;

    v11 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
    presenceView = v3->_presenceView;
    v3->_presenceView = v11;

    v13 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
    poseView = v3->_poseView;
    v3->_poseView = v13;

    [(SBBiometricMonitorView *)v3 addSubview:v3->_presenceView];
    [(SBBiometricMonitorView *)v3 addSubview:v3->_stateView];
    [(SBBiometricMonitorView *)v3 addSubview:v3->_poseView];
  }

  return v3;
}

- (void)setMatchState:(int64_t)state
{
  v4 = 0;
  self->_matchState = state;
  if (state > 1)
  {
    if (state == 2)
    {
      greenColor = [MEMORY[0x277D75348] greenColor];
    }

    else
    {
      if (state != 3)
      {
        goto LABEL_11;
      }

      greenColor = [MEMORY[0x277D75348] redColor];
    }
  }

  else if (state)
  {
    if (state != 1)
    {
      goto LABEL_11;
    }

    greenColor = [MEMORY[0x277D75348] yellowColor];
  }

  else
  {
    greenColor = [MEMORY[0x277D75348] clearColor];
  }

  v4 = greenColor;
LABEL_11:
  v6 = v4;
  [(UIView *)self->_stateView setBackgroundColor:v4];
}

- (void)setPresenceDetectState:(int64_t)state
{
  v4 = 0;
  self->_presenceDetectState = state;
  if (state > 1)
  {
    if (state == 2)
    {
      greenColor = [MEMORY[0x277D75348] greenColor];
    }

    else
    {
      if (state != 3)
      {
        goto LABEL_11;
      }

      greenColor = [MEMORY[0x277D75348] redColor];
    }
  }

  else if (state)
  {
    if (state != 1)
    {
      goto LABEL_11;
    }

    greenColor = [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    greenColor = [MEMORY[0x277D75348] clearColor];
  }

  v4 = greenColor;
LABEL_11:
  v6 = v4;
  [(UIView *)self->_presenceView setBackgroundColor:v4];
}

- (void)setPoseState:(int64_t)state
{
  self->_poseState = state;
  if (state == 1)
  {
    purpleColor = [MEMORY[0x277D75348] purpleColor];
    goto LABEL_5;
  }

  if (!state)
  {
    purpleColor = [MEMORY[0x277D75348] clearColor];
LABEL_5:
    v5 = purpleColor;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v6 = v5;
  [(UIView *)self->_poseView setBackgroundColor:v5];
}

- (void)layoutSubviews
{
  [(SBBiometricMonitorView *)self bounds];
  UIRectCenteredXInRect();
  v3 = *(MEMORY[0x277CBF398] + 16);
  slice.origin = *MEMORY[0x277CBF398];
  slice.size = v3;
  v16.origin = slice.origin;
  v16.size = v3;
  CGRectDivide(v18, &slice, &v16, 48.0, CGRectMinXEdge);
  UIRectInset();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  UIRectInset();
  v16.origin.x = v12;
  v16.origin.y = v13;
  v16.size.width = v14;
  v16.size.height = v15;
  [(UIView *)self->_stateView setFrame:v5, v7, v9, v11];
  [(UIView *)self->_stateView _setCornerRadius:20.0];
  [(UIView *)self->_presenceView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  [(UIView *)self->_presenceView _setCornerRadius:4.0];
  [(UIView *)self->_poseView setFrame:*&v16.origin, *&v16.size];
}

@end