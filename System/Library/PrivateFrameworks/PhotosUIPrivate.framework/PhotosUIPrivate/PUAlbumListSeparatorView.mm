@interface PUAlbumListSeparatorView
- (PUAlbumListSeparatorView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setLineColor:(id)color;
@end

@implementation PUAlbumListSeparatorView

- (void)setLineColor:(id)color
{
  if (self->_lineColor != color)
  {
    v4 = [color copy];
    lineColor = self->_lineColor;
    self->_lineColor = v4;

    separatorLine = self->_separatorLine;
    v7 = self->_lineColor;

    [(UIView *)separatorLine setBackgroundColor:v7];
  }
}

- (void)layoutSubviews
{
  [(PUAlbumListSeparatorView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  PLPhysicalScreenScale();
  separatorLine = self->_separatorLine;

  [(UIView *)separatorLine setFrame:v4, v6, v8, 1.0 / v9];
}

- (PUAlbumListSeparatorView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PUAlbumListSeparatorView;
  v3 = [(PUAlbumListSeparatorView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    separatorLine = v3->_separatorLine;
    v3->_separatorLine = v5;

    [(PUAlbumListSeparatorView *)v3 addSubview:v3->_separatorLine];
  }

  return v3;
}

@end