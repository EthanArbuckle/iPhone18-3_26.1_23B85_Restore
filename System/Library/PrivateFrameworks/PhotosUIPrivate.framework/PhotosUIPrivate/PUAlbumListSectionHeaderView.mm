@interface PUAlbumListSectionHeaderView
- (PUAlbumListSectionHeaderView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)sectionHeaderInsets;
- (void)layoutSubviews;
- (void)setSectionHeaderInsets:(UIEdgeInsets)a3;
- (void)setSectionHeaderTitle:(id)a3;
- (void)setSectionHeaderTitleFont:(id)a3;
@end

@implementation PUAlbumListSectionHeaderView

- (UIEdgeInsets)sectionHeaderInsets
{
  top = self->_sectionHeaderInsets.top;
  left = self->_sectionHeaderInsets.left;
  bottom = self->_sectionHeaderInsets.bottom;
  right = self->_sectionHeaderInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = PUAlbumListSectionHeaderView;
  [(PUAlbumListSectionHeaderView *)&v31 layoutSubviews];
  v3 = [(PUAlbumListSectionHeaderView *)self _titleLabel];
  v4 = [(PUAlbumListSectionHeaderView *)self _shouldReverseLayoutDirection];
  [(PUAlbumListSectionHeaderView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(PUAlbumListSectionHeaderView *)self sectionHeaderInsets];
  v14 = v6 + v13;
  v16 = v8 + v15;
  v18 = v10 - (v13 + v17);
  v20 = v12 - (v15 + v19);
  [v3 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v22 = v21;
  v24 = v23;
  v25 = v14;
  v26 = v16;
  v27 = v18;
  v28 = v20;
  if (v4)
  {
    MinX = CGRectGetMaxX(*&v25) - v22;
  }

  else
  {
    MinX = CGRectGetMinX(*&v25);
  }

  v32.origin.x = v14;
  v32.origin.y = v16;
  v32.size.width = v18;
  v32.size.height = v20;
  MaxY = CGRectGetMaxY(v32);
  [v3 setFrame:{PURoundRectToPixel(MinX, MaxY - v24, v22, v24)}];
}

- (void)setSectionHeaderTitleFont:(id)a3
{
  v5 = a3;
  if (self->_sectionHeaderTitleFont != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_sectionHeaderTitleFont, a3);
    v6 = [(PUAlbumListSectionHeaderView *)self _titleLabel];
    [v6 setFont:v7];

    [(PUAlbumListSectionHeaderView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setSectionHeaderTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sectionHeaderTitle != v4)
  {
    v9 = v4;
    v4 = [v4 isEqualToString:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [v9 copy];
      sectionHeaderTitle = self->_sectionHeaderTitle;
      self->_sectionHeaderTitle = v6;

      v8 = [(PUAlbumListSectionHeaderView *)self _titleLabel];
      [v8 setText:v9];

      v4 = [(PUAlbumListSectionHeaderView *)self setNeedsLayout];
      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setSectionHeaderInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_sectionHeaderInsets.top), vceqq_f64(v4, *&self->_sectionHeaderInsets.bottom)))) & 1) == 0)
  {
    self->_sectionHeaderInsets = a3;
    [(PUAlbumListSectionHeaderView *)self setNeedsLayout];
  }
}

- (PUAlbumListSectionHeaderView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PUAlbumListSectionHeaderView;
  v3 = [(PUAlbumListSectionHeaderView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->__titleLabel;
    v3->__titleLabel = v4;

    v6 = +[PUInterfaceManager currentTheme];
    [v6 configureAlbumListSectionTitleLabel:v3->__titleLabel];
    [(PUAlbumListSectionHeaderView *)v3 addSubview:v3->__titleLabel];
  }

  return v3;
}

@end