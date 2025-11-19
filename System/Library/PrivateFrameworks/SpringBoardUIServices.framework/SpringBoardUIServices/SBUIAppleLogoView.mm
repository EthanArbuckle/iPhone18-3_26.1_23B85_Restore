@interface SBUIAppleLogoView
- (SBUIAppleLogoView)initWithFrame:(CGRect)a3 appearance:(int64_t)a4 progressBarVisible:(BOOL)a5;
- (SBUIAppleLogoView)initWithFrame:(CGRect)a3 progressBarVisible:(BOOL)a4;
- (SBUIAppleLogoView)initWithFrame:(CGRect)a3 useWhiteLogo:(BOOL)a4 progressBarVisible:(BOOL)a5;
- (void)layoutSubviews;
@end

@implementation SBUIAppleLogoView

- (SBUIAppleLogoView)initWithFrame:(CGRect)a3 appearance:(int64_t)a4 progressBarVisible:(BOOL)a5
{
  v5 = a5;
  v34.receiver = self;
  v34.super_class = SBUIAppleLogoView;
  v7 = [(SBUIAppleLogoView *)&v34 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69C5DF8]) initWithProgressBarVisibility:v5 createContext:0 contextLevel:a4 appearance:0.0];
    progressWindow = v7->_progressWindow;
    v7->_progressWindow = v8;

    [(PUIProgressWindow *)v7->_progressWindow setVisible:1];
    v10 = [(PUIProgressWindow *)v7->_progressWindow layer];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [(PUIProgressWindow *)v7->_progressWindow layer];
    v20 = v19;
    if (v19)
    {
      [v19 transform];
    }

    else
    {
      memset(&v33, 0, sizeof(v33));
    }

    v21 = CATransform3DIsIdentity(&v33);

    if (!v21)
    {
      v22 = [(PUIProgressWindow *)v7->_progressWindow layer];
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
      [v22 setTransform:&v33];

      v27 = [(PUIProgressWindow *)v7->_progressWindow layer];
      [v27 setPosition:{v16 * 0.5, v18 * 0.5}];
    }

    v28 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v14, v16, v18}];
    layerView = v7->_layerView;
    v7->_layerView = v28;

    v30 = [(UIView *)v7->_layerView layer];
    v31 = [(PUIProgressWindow *)v7->_progressWindow layer];
    [v30 addSublayer:v31];

    [(SBUIAppleLogoView *)v7 addSubview:v7->_layerView];
  }

  return v7;
}

- (SBUIAppleLogoView)initWithFrame:(CGRect)a3 useWhiteLogo:(BOOL)a4 progressBarVisible:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = (MGGetSInt32Answer() != 1) ^ a4;

  return [(SBUIAppleLogoView *)self initWithFrame:v11 inverted:v5 progressBarVisible:x, y, width, height];
}

- (SBUIAppleLogoView)initWithFrame:(CGRect)a3 progressBarVisible:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = MGGetSInt32Answer() != 1;

  return [(SBUIAppleLogoView *)self initWithFrame:v10 useWhiteLogo:v4 progressBarVisible:x, y, width, height];
}

- (void)layoutSubviews
{
  [(SBUIAppleLogoView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(PUIProgressWindow *)self->_progressWindow layer];
  [v7 bounds];
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