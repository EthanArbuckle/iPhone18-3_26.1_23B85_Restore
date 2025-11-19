@interface PLTVOutWindow
- (BOOL)_setupTargetScreen:(id)a3;
- (BOOL)setVideoView:(id)a3;
- (PLTVOutWindow)init;
- (void)dealloc;
@end

@implementation PLTVOutWindow

- (BOOL)setVideoView:(id)a3
{
  v5 = [(PLTVOutWindow *)self _setupTargetScreen:[(PLTVOutWindow *)self screen]];
  if (v5)
  {
    videoView = self->_videoView;
    if (videoView != a3)
    {
      if ([(UIView *)videoView isDescendantOfView:self])
      {
        [(UIView *)self->_videoView removeFromSuperview];
      }

      videoView = a3;
      self->_videoView = videoView;
    }

    if (videoView && ![(UIView *)videoView isDescendantOfView:self->_backgroundView])
    {
      v7 = self->_videoView;
      [(UIView *)self->_backgroundView bounds];
      [(UIView *)v7 setFrame:?];
      [(UIView *)self->_backgroundView addSubview:self->_videoView];
    }
  }

  return v5;
}

- (BOOL)_setupTargetScreen:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  [a3 setOverscanCompensation:2];
  v4 = [a3 preferredMode];
  if (v4)
  {
    goto LABEL_2;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a3 availableModes];
  v5 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v5)
  {
    return v5;
  }

  v7 = v5;
  v4 = 0;
  v8 = *v18;
  v9 = 0.0;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      [v11 size];
      if (fabs(v12 + -1280.0) < 0.00000011920929 && fabs(v13 + -720.0) < 0.00000011920929)
      {
        v4 = v11;
        goto LABEL_22;
      }

      v14 = v12 * v13;
      if (v14 > 921600.0 && (v9 >= 921600.0 ? (v15 = v14 < v9) : (v15 = 1), v15) || v14 > v9)
      {
        v9 = v14;
        v4 = v11;
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_22:
  if (v4)
  {
LABEL_2:
    [a3 setCurrentMode:v4];
    LOBYTE(v5) = 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLTVOutWindow;
  [(PLTVOutWindow *)&v3 dealloc];
}

- (PLTVOutWindow)init
{
  v3 = MPTVOutScreen();
  if (v3)
  {
    v4 = v3;
    [(PLTVOutWindow *)self _setupTargetScreen:v3];
    [v4 bounds];
    v10.receiver = self;
    v10.super_class = PLTVOutWindow;
    v5 = [(PLTVOutWindow *)&v10 initWithFrame:?];
    v6 = v5;
    if (v5)
    {
      [(PLTVOutWindow *)v5 setScreen:v4];
      v7 = objc_alloc(MEMORY[0x277D75D18]);
      [(PLTVOutWindow *)v6 bounds];
      v8 = [v7 initWithFrame:?];
      v6->_backgroundView = v8;
      -[UIView setBackgroundColor:](v8, "setBackgroundColor:", [MEMORY[0x277D75348] blackColor]);
      [(PLTVOutWindow *)v6 addSubview:v6->_backgroundView];
    }
  }

  else
  {
    NSLog(&cfstr_ErrorNoExterna.isa);

    return 0;
  }

  return v6;
}

@end