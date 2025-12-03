@interface _SBSUIWallpaperGradientView
- (_SBSUIWallpaperGradientView)initWithFrame:(CGRect)frame;
@end

@implementation _SBSUIWallpaperGradientView

- (_SBSUIWallpaperGradientView)initWithFrame:(CGRect)frame
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _SBSUIWallpaperGradientView;
  v3 = [(_SBSUIWallpaperGradientView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SBSUIWallpaperGradientView *)v3 setUserInteractionEnabled:0];
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
    layer = [(_SBSUIWallpaperGradientView *)v4 layer];
    v11[0] = [v5 CGColor];
    v11[1] = [v6 CGColor];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [layer setColors:v8];
  }

  return v4;
}

@end