@interface SHSheetDividerLineView
- (SHSheetDividerLineView)initWithFrame:(CGRect)frame;
- (void)setProgress:(double)progress;
@end

@implementation SHSheetDividerLineView

- (SHSheetDividerLineView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SHSheetDividerLineView;
  v3 = [(SHSheetDividerLineView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [(SHSheetDividerLineView *)v3 setBackgroundColor:separatorColor];

    [(SHSheetDividerLineView *)v3 setAlpha:1.0];
  }

  return v3;
}

- (void)setProgress:(double)progress
{
  if (progress > 1.0)
  {
    progress = 1.0;
  }

  v3 = fmax(progress, 0.0);
  self->_progress = v3;
  [(SHSheetDividerLineView *)self setAlpha:1.0 - v3];
}

@end