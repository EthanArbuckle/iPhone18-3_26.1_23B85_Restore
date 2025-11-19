@interface PUAlbumListSeparatorView
- (PUAlbumListSeparatorView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setLineColor:(id)a3;
@end

@implementation PUAlbumListSeparatorView

- (void)setLineColor:(id)a3
{
  if (self->_lineColor != a3)
  {
    v4 = [a3 copy];
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

- (PUAlbumListSeparatorView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PUAlbumListSeparatorView;
  v3 = [(PUAlbumListSeparatorView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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