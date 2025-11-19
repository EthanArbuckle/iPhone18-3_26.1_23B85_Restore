@interface SBDashBoardWallpaperEffectView
- (SBDashBoardWallpaperEffectView)initWithWallpaperVariant:(int64_t)a3 transformOptions:(unint64_t)a4;
- (void)didAddSubview:(id)a3;
- (void)layoutSubviews;
- (void)setCoverSheetWallpaperStyle:(int64_t)a3;
@end

@implementation SBDashBoardWallpaperEffectView

- (SBDashBoardWallpaperEffectView)initWithWallpaperVariant:(int64_t)a3 transformOptions:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = SBDashBoardWallpaperEffectView;
  v4 = [(SBWallpaperEffectView *)&v9 initWithWallpaperVariant:a3 transformOptions:a4];
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

- (void)didAddSubview:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBDashBoardWallpaperEffectView;
  [(SBDashBoardWallpaperEffectView *)&v4 didAddSubview:a3];
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

- (void)setCoverSheetWallpaperStyle:(int64_t)a3
{
  if (a3 == 1)
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