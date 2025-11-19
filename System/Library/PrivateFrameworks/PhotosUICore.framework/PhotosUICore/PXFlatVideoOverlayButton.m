@interface PXFlatVideoOverlayButton
- (PXFlatVideoOverlayButton)initWithConfiguration:(id)a3;
- (void)_handleTap:(id)a3;
- (void)setShowAsPause:(BOOL)a3;
- (void)setTarget:(id)a3 action:(SEL)a4;
@end

@implementation PXFlatVideoOverlayButton

- (void)setShowAsPause:(BOOL)a3
{
  if (self->_showAsPause != a3)
  {
    v18 = v8;
    v19 = v7;
    v20 = v6;
    v21 = v5;
    v22 = v4;
    v23 = v3;
    v11 = a3;
    self->_showAsPause = a3;
    if (a3 && ![(PXFlatVideoOverlayButton *)self _didConfigureForPause])
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

    [(PXFlatVideoOverlayButton *)self setSelected:v11];
  }
}

- (void)_handleTap:(id)a3
{
  v9 = a3;
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

    [v6 performSelector:action withObject:v9];
  }
}

- (void)setTarget:(id)a3 action:(SEL)a4
{
  objc_storeWeak(&self->_target, a3);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  self->_action = v6;
}

- (PXFlatVideoOverlayButton)initWithConfiguration:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = PXFlatVideoOverlayButton;
  v6 = [(PXFlatVideoOverlayButton *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_overlayConfiguration, a3);
    if ([v5 style] == 5)
    {
      v8 = [MEMORY[0x1E69DC740] borderedButtonConfiguration];
      v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"play.fill"];
      [v8 setImage:v9];

      v10 = [v5 localizedTitle];
      [v8 setTitle:v10];

      [(PXFlatVideoOverlayButton *)v7 setConfiguration:v8];
    }

    else
    {
      if ([v5 style] == 3)
      {
        v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"play.fill"];
        v12 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:44.0];
        v13 = [v11 imageWithSymbolConfiguration:v12];
        v8 = [v13 imageWithRenderingMode:2];

        [(PXFlatVideoOverlayButton *)v7 setImage:v8 forState:0];
      }

      else
      {
        v14 = [MEMORY[0x1E69DCAB8] px_playOverlayImage:3];
        [(PXFlatVideoOverlayButton *)v7 setImage:v14 forState:0];

        v8 = [MEMORY[0x1E69DCAB8] px_playOverlayImage:4];
      }

      [(PXFlatVideoOverlayButton *)v7 setImage:v8 forState:1];
    }

    [(PXFlatVideoOverlayButton *)v7 sizeToFit];
    [(PXFlatVideoOverlayButton *)v7 setDeliversTouchesForGesturesToSuperview:0];
    [(PXFlatVideoOverlayButton *)v7 addTarget:v7 action:sel__handleTap_ forControlEvents:64];
  }

  return v7;
}

@end