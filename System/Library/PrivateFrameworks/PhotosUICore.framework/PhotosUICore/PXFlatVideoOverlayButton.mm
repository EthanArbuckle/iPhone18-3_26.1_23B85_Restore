@interface PXFlatVideoOverlayButton
- (PXFlatVideoOverlayButton)initWithConfiguration:(id)configuration;
- (void)_handleTap:(id)tap;
- (void)setShowAsPause:(BOOL)pause;
- (void)setTarget:(id)target action:(SEL)action;
@end

@implementation PXFlatVideoOverlayButton

- (void)setShowAsPause:(BOOL)pause
{
  if (self->_showAsPause != pause)
  {
    v18 = v8;
    v19 = v7;
    v20 = v6;
    v21 = v5;
    v22 = v4;
    v23 = v3;
    pauseCopy = pause;
    self->_showAsPause = pause;
    if (pause && ![(PXFlatVideoOverlayButton *)self _didConfigureForPause])
    {
      if ([(PXVideoOverlayButtonConfiguration *)self->_overlayConfiguration style]== 3)
      {
        v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pause.fill"];
        v14 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:44.0];
        v15 = [v13 imageWithSymbolConfiguration:v14];
        v16 = [v15 imageWithRenderingMode:2];

        [(PXFlatVideoOverlayButton *)self setImage:v16 forState:4];
      }

      else
      {
        v17 = [MEMORY[0x1E69DCAB8] px_playOverlayImage:7];
        [(PXFlatVideoOverlayButton *)self setImage:v17 forState:4];

        v16 = [MEMORY[0x1E69DCAB8] px_playOverlayImage:8];
      }

      [(PXFlatVideoOverlayButton *)self setImage:v16 forState:5, v18, v19, v20, v21, v22, v23, v9];

      [(PXFlatVideoOverlayButton *)self _setDidConfigureForPause:1];
    }

    [(PXFlatVideoOverlayButton *)self setSelected:pauseCopy];
  }
}

- (void)_handleTap:(id)tap
{
  tapCopy = tap;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_target);
    v7 = v6;
    if (self->_action)
    {
      action = self->_action;
    }

    else
    {
      action = 0;
    }

    [v6 performSelector:action withObject:tapCopy];
  }
}

- (void)setTarget:(id)target action:(SEL)action
{
  objc_storeWeak(&self->_target, target);
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

- (PXFlatVideoOverlayButton)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = PXFlatVideoOverlayButton;
  v6 = [(PXFlatVideoOverlayButton *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_overlayConfiguration, configuration);
    if ([configurationCopy style] == 5)
    {
      borderedButtonConfiguration = [MEMORY[0x1E69DC740] borderedButtonConfiguration];
      v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"play.fill"];
      [borderedButtonConfiguration setImage:v9];

      localizedTitle = [configurationCopy localizedTitle];
      [borderedButtonConfiguration setTitle:localizedTitle];

      [(PXFlatVideoOverlayButton *)v7 setConfiguration:borderedButtonConfiguration];
    }

    else
    {
      if ([configurationCopy style] == 3)
      {
        v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"play.fill"];
        v12 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:44.0];
        v13 = [v11 imageWithSymbolConfiguration:v12];
        borderedButtonConfiguration = [v13 imageWithRenderingMode:2];

        [(PXFlatVideoOverlayButton *)v7 setImage:borderedButtonConfiguration forState:0];
      }

      else
      {
        v14 = [MEMORY[0x1E69DCAB8] px_playOverlayImage:3];
        [(PXFlatVideoOverlayButton *)v7 setImage:v14 forState:0];

        borderedButtonConfiguration = [MEMORY[0x1E69DCAB8] px_playOverlayImage:4];
      }

      [(PXFlatVideoOverlayButton *)v7 setImage:borderedButtonConfiguration forState:1];
    }

    [(PXFlatVideoOverlayButton *)v7 sizeToFit];
    [(PXFlatVideoOverlayButton *)v7 setDeliversTouchesForGesturesToSuperview:0];
    [(PXFlatVideoOverlayButton *)v7 addTarget:v7 action:sel__handleTap_ forControlEvents:64];
  }

  return v7;
}

@end