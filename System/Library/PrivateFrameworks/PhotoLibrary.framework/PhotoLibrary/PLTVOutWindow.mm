@interface PLTVOutWindow
- (BOOL)_setupTargetScreen:(id)screen;
- (BOOL)setVideoView:(id)view;
- (PLTVOutWindow)init;
- (void)dealloc;
@end

@implementation PLTVOutWindow

- (BOOL)setVideoView:(id)view
{
  v5 = [(PLTVOutWindow *)self _setupTargetScreen:[(PLTVOutWindow *)self screen]];
  if (v5)
  {
    videoView = self->_videoView;
    if (videoView != view)
    {
      if ([(UIView *)videoView isDescendantOfView:self])
      {
        [(UIView *)self->_videoView removeFromSuperview];
      }

      videoView = view;
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

- (BOOL)_setupTargetScreen:(id)screen
{
  v22 = *MEMORY[0x277D85DE8];
  [screen setOverscanCompensation:2];
  preferredMode = [screen preferredMode];
  if (preferredMode)
  {
    goto LABEL_2;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  availableModes = [screen availableModes];
  v5 = [availableModes countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v5)
  {
    return v5;
  }

  v7 = v5;
  preferredMode = 0;
  v8 = *v18;
  v9 = 0.0;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(availableModes);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      [v11 size];
      if (fabs(v12 + -1280.0) < 0.00000011920929 && fabs(v13 + -720.0) < 0.00000011920929)
      {
        preferredMode = v11;
        goto LABEL_22;
      }

      v14 = v12 * v13;
      if (v14 > 921600.0 && (v9 >= 921600.0 ? (v15 = v14 < v9) : (v15 = 1), v15) || v14 > v9)
      {
        v9 = v14;
        preferredMode = v11;
      }
    }

    v7 = [availableModes countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_22:
  if (preferredMode)
  {
LABEL_2:
    [screen setCurrentMode:preferredMode];
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