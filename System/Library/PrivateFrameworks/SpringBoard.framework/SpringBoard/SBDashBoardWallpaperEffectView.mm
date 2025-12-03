@interface SBDashBoardWallpaperEffectView
- (SBDashBoardWallpaperEffectView)initWithWallpaperVariant:(int64_t)variant transformOptions:(unint64_t)options;
- (void)didAddSubview:(id)subview;
- (void)layoutSubviews;
- (void)setCoverSheetWallpaperStyle:(int64_t)style;
@end

@implementation SBDashBoardWallpaperEffectView

- (SBDashBoardWallpaperEffectView)initWithWallpaperVariant:(int64_t)variant transformOptions:(unint64_t)options
{
  v9.receiver = self;
  v9.super_class = SBDashBoardWallpaperEffectView;
  v4 = [(SBWallpaperEffectView *)&v9 initWithWallpaperVariant:variant transformOptions:options];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D67998]);
    [(SBDashBoardWallpaperEffectView *)v4 bounds];
    v6 = [v5 initWithFrame:?];
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v6;

    [(SBDashBoardWallpaperEffectView *)v4 addSubview:v4->_backgroundView];
  }

  return v4;
}

- (void)didAddSubview:(id)subview
{
  v4.receiver = self;
  v4.super_class = SBDashBoardWallpaperEffectView;
  [(SBDashBoardWallpaperEffectView *)&v4 didAddSubview:subview];
  [(SBDashBoardWallpaperEffectView *)self bringSubviewToFront:self->_backgroundView];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBDashBoardWallpaperEffectView;
  [(PBUIWallpaperEffectViewBase *)&v4 layoutSubviews];
  backgroundView = self->_backgroundView;
  [(SBDashBoardWallpaperEffectView *)self bounds];
  [(SBUIBackgroundView *)backgroundView setFrame:?];
}

- (void)setCoverSheetWallpaperStyle:(int64_t)style
{
  if (style == 1)
  {
    v3 = 10;
  }

  else
  {
    v3 = 0;
  }

  [(PBUIWallpaperEffectViewBase *)self setStyle:v3];
}

@end