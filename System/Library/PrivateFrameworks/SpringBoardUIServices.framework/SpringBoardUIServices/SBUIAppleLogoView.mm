@interface SBUIAppleLogoView
- (SBUIAppleLogoView)initWithFrame:(CGRect)frame appearance:(int64_t)appearance progressBarVisible:(BOOL)visible;
- (SBUIAppleLogoView)initWithFrame:(CGRect)frame progressBarVisible:(BOOL)visible;
- (SBUIAppleLogoView)initWithFrame:(CGRect)frame useWhiteLogo:(BOOL)logo progressBarVisible:(BOOL)visible;
- (void)layoutSubviews;
@end

@implementation SBUIAppleLogoView

- (SBUIAppleLogoView)initWithFrame:(CGRect)frame appearance:(int64_t)appearance progressBarVisible:(BOOL)visible
{
  visibleCopy = visible;
  v34.receiver = self;
  v34.super_class = SBUIAppleLogoView;
  v7 = [(SBUIAppleLogoView *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69C5DF8]) initWithProgressBarVisibility:visibleCopy createContext:0 contextLevel:appearance appearance:0.0];
    progressWindow = v7->_progressWindow;
    v7->_progressWindow = v8;

    [(PUIProgressWindow *)v7->_progressWindow setVisible:1];
    layer = [(PUIProgressWindow *)v7->_progressWindow layer];
    [layer bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    layer2 = [(PUIProgressWindow *)v7->_progressWindow layer];
    v20 = layer2;
    if (layer2)
    {
      [layer2 transform];
    }

    else
    {
      memset(&v33, 0, sizeof(v33));
    }

    v21 = CATransform3DIsIdentity(&v33);

    if (!v21)
    {
      layer3 = [(PUIProgressWindow *)v7->_progressWindow layer];
      v23 = *(MEMORY[0x1E69792E8] + 80);
      *&v33.m31 = *(MEMORY[0x1E69792E8] + 64);
      *&v33.m33 = v23;
      v24 = *(MEMORY[0x1E69792E8] + 112);
      *&v33.m41 = *(MEMORY[0x1E69792E8] + 96);
      *&v33.m43 = v24;
      v25 = *(MEMORY[0x1E69792E8] + 16);
      *&v33.m11 = *MEMORY[0x1E69792E8];
      *&v33.m13 = v25;
      v26 = *(MEMORY[0x1E69792E8] + 48);
      *&v33.m21 = *(MEMORY[0x1E69792E8] + 32);
      *&v33.m23 = v26;
      [layer3 setTransform:&v33];

      layer4 = [(PUIProgressWindow *)v7->_progressWindow layer];
      [layer4 setPosition:{v16 * 0.5, v18 * 0.5}];
    }

    v28 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v14, v16, v18}];
    layerView = v7->_layerView;
    v7->_layerView = v28;

    layer5 = [(UIView *)v7->_layerView layer];
    layer6 = [(PUIProgressWindow *)v7->_progressWindow layer];
    [layer5 addSublayer:layer6];

    [(SBUIAppleLogoView *)v7 addSubview:v7->_layerView];
  }

  return v7;
}

- (SBUIAppleLogoView)initWithFrame:(CGRect)frame useWhiteLogo:(BOOL)logo progressBarVisible:(BOOL)visible
{
  visibleCopy = visible;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11 = (MGGetSInt32Answer() != 1) ^ logo;

  return [(SBUIAppleLogoView *)self initWithFrame:v11 inverted:visibleCopy progressBarVisible:x, y, width, height];
}

- (SBUIAppleLogoView)initWithFrame:(CGRect)frame progressBarVisible:(BOOL)visible
{
  visibleCopy = visible;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = MGGetSInt32Answer() != 1;

  return [(SBUIAppleLogoView *)self initWithFrame:v10 useWhiteLogo:visibleCopy progressBarVisible:x, y, width, height];
}

- (void)layoutSubviews
{
  [(SBUIAppleLogoView *)self bounds];
  v4 = v3;
  v6 = v5;
  layer = [(PUIProgressWindow *)self->_progressWindow layer];
  [layer bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  layerView = self->_layerView;
  v17 = *(MEMORY[0x1E695EFD0] + 16);
  *&v19.a = *MEMORY[0x1E695EFD0];
  *&v19.c = v17;
  *&v19.tx = *(MEMORY[0x1E695EFD0] + 32);
  [(UIView *)layerView setTransform:&v19];
  [(UIView *)self->_layerView setFrame:v9, v11, v13, v15];
  v18 = self->_layerView;
  CGAffineTransformMakeScale(&v19, v4 / v13, v6 / v15);
  [(UIView *)v18 setTransform:&v19];
  [(UIView *)self->_layerView setCenter:v4 * 0.5, v6 * 0.5];
}

@end