@interface SHSheetDividerLineView
- (SHSheetDividerLineView)initWithFrame:(CGRect)a3;
- (void)setProgress:(double)a3;
@end

@implementation SHSheetDividerLineView

- (SHSheetDividerLineView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SHSheetDividerLineView;
  v3 = [(SHSheetDividerLineView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] separatorColor];
    [(SHSheetDividerLineView *)v3 setBackgroundColor:v4];

    [(SHSheetDividerLineView *)v3 setAlpha:1.0];
  }

  return v3;
}

- (void)setProgress:(double)a3
{
  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  v3 = fmax(a3, 0.0);
  self->_progress = v3;
  [(SHSheetDividerLineView *)self setAlpha:1.0 - v3];
}

@end