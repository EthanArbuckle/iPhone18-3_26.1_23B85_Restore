@interface _SBSUIWallpaperGradientView
- (_SBSUIWallpaperGradientView)initWithFrame:(CGRect)a3;
@end

@implementation _SBSUIWallpaperGradientView

- (_SBSUIWallpaperGradientView)initWithFrame:(CGRect)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _SBSUIWallpaperGradientView;
  v3 = [(_SBSUIWallpaperGradientView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SBSUIWallpaperGradientView *)v3 setUserInteractionEnabled:0];
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
    v7 = [(_SBSUIWallpaperGradientView *)v4 layer];
    v11[0] = [v5 CGColor];
    v11[1] = [v6 CGColor];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [v7 setColors:v8];
  }

  return v4;
}

@end