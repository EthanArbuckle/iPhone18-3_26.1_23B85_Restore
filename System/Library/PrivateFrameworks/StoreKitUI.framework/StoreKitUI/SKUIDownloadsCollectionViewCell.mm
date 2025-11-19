@interface SKUIDownloadsCollectionViewCell
- (SKUIDownloadsCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_reloadEditState;
- (void)layoutSubviews;
- (void)setCellState:(int64_t)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation SKUIDownloadsCollectionViewCell

- (SKUIDownloadsCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDownloadsCollectionViewCell initWithFrame:];
  }

  v13.receiver = self;
  v13.super_class = SKUIDownloadsCollectionViewCell;
  v8 = [(SKUIDownloadsCollectionViewCell *)&v13 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = objc_alloc_init(SKUIDownloadsCellView);
    cellView = v8->_cellView;
    v8->_cellView = v9;

    v11 = [(SKUIDownloadsCollectionViewCell *)v8 contentView];
    [v11 addSubview:v8->_cellView];
  }

  return v8;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUIDownloadsCollectionViewCell *)self isSelected];
  v6.receiver = self;
  v6.super_class = SKUIDownloadsCollectionViewCell;
  [(SKUIDownloadsCollectionViewCell *)&v6 setSelected:v3];
  if (v5 != v3)
  {
    if (self->_cellState)
    {
      [(SKUIDownloadsCollectionViewCell *)self _reloadEditState];
    }
  }
}

- (void)setCellState:(int64_t)a3
{
  if (self->_cellState != a3)
  {
    self->_cellState = a3;
    [(SKUIDownloadsCollectionViewCell *)self _reloadEditState];
  }
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = SKUIDownloadsCollectionViewCell;
  [(SKUIDownloadsCollectionViewCell *)&v21 layoutSubviews];
  v3 = [(SKUIDownloadsCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  editIndicator = self->_editIndicator;
  if (editIndicator)
  {
    [(UIImageView *)editIndicator sizeToFit];
    [(UIImageView *)self->_editIndicator frame];
    v14 = v13;
    v16 = v15;
    v17 = (v11 - v15) * 0.5;
    v18 = v7 + roundf(v17);
    [(UIImageView *)self->_editIndicator setFrame:v5 + 15.0, v18];
    v22.origin.x = v5 + 15.0;
    v22.origin.y = v18;
    v22.size.width = v14;
    v22.size.height = v16;
    MaxX = CGRectGetMaxX(v22);
  }

  else
  {
    MaxX = v5;
  }

  v20 = [(SKUIDownloadsCollectionViewCell *)self contentView];
  [v20 bounds];

  [(SKUIDownloadsCellView *)self->_cellView setFrame:MaxX, v7, v9 - (MaxX - v5), v11];
}

- (void)_reloadEditState
{
  cellState = self->_cellState;
  editIndicator = self->_editIndicator;
  if ((cellState - 1) > 1)
  {
    [(UIImageView *)editIndicator removeFromSuperview];
    v11 = self->_editIndicator;
    self->_editIndicator = 0;
  }

  else
  {
    if (!editIndicator)
    {
      v5 = objc_alloc_init(MEMORY[0x277D755E8]);
      v6 = self->_editIndicator;
      self->_editIndicator = v5;

      [(SKUIDownloadsCollectionViewCell *)self addSubview:self->_editIndicator];
      cellState = self->_cellState;
    }

    if (cellState == 2)
    {
      v7 = MEMORY[0x277D755B8];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v7 imageNamed:@"EditControl" inBundle:v8];

      v10 = [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      v12 = [(SKUIDownloadsCollectionViewCell *)self isSelected];
      v13 = MEMORY[0x277D755B8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v12)
      {
        v9 = [v13 imageNamed:@"EditControlSelected" inBundle:v14];

        [(SKUIDownloadsCollectionViewCell *)self tintColor];
      }

      else
      {
        v9 = [v13 imageNamed:@"EditControl" inBundle:v14];

        [MEMORY[0x277D75348] lightGrayColor];
      }
      v10 = ;
    }

    v15 = v10;
    v11 = [v9 _flatImageWithColor:v10];

    [(UIImageView *)self->_editIndicator setImage:v11];
  }

  [(SKUIDownloadsCollectionViewCell *)self setNeedsLayout];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDownloadsCollectionViewCell initWithFrame:]";
}

@end