@interface PXSharedLibraryParticipantTableViewCell
- (PXSharedLibraryParticipantTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateAddressLabel;
- (void)_updateAvatarView;
- (void)_updateLocalizedNameLabel;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXSharedLibraryParticipantTableViewCell

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (PXSharedLibraryParticipantTableCellModelObservationContext == a5)
  {
    v9 = v8;
    if (v6)
    {
      [(PXSharedLibraryParticipantTableViewCell *)self _updateAvatarView];
      v8 = v9;
    }

    if ((v6 & 0xC) != 0)
    {
      [(PXSharedLibraryParticipantTableViewCell *)self _updateLocalizedNameLabel];
      v8 = v9;
    }

    if ((v6 & 8) != 0)
    {
      [(PXSharedLibraryParticipantTableViewCell *)self _updateAddressLabel];
      v8 = v9;
    }
  }
}

- (void)_updateAddressLabel
{
  v3 = [(PXSharedLibraryParticipantTableCellModel *)self->_cellModel address];
  [(UILabel *)self->_addressLabel setText:v3];

  [(PXSharedLibraryParticipantTableViewCell *)self setNeedsLayout];
}

- (void)_updateLocalizedNameLabel
{
  v3 = [(PXSharedLibraryParticipantTableCellModel *)self->_cellModel name];
  [(UILabel *)self->_localizedNameLabel setText:v3];

  [(PXSharedLibraryParticipantTableViewCell *)self setNeedsLayout];
}

- (void)_updateAvatarView
{
  if (!self->_customAvatarImageView)
  {
    v3 = objc_alloc_init(PXRoundImageView);
    customAvatarImageView = self->_customAvatarImageView;
    self->_customAvatarImageView = v3;

    v5 = [MEMORY[0x1E69DC888] lightGrayColor];
    [(PXRoundImageView *)self->_customAvatarImageView setBackgroundColor:v5];

    [(PXRoundImageView *)self->_customAvatarImageView setAccessibilityIgnoresInvertColors:1];
    v6 = [(PXSharedLibraryParticipantTableViewCell *)self contentView];
    [v6 addSubview:self->_customAvatarImageView];
  }

  v7 = [(PXSharedLibraryParticipantTableCellModel *)self->_cellModel image];
  [(PXRoundImageView *)self->_customAvatarImageView setImage:v7];

  [(PXSharedLibraryParticipantTableViewCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v52.receiver = self;
  v52.super_class = PXSharedLibraryParticipantTableViewCell;
  [(PXSharedLibraryParticipantTableViewCell *)&v52 layoutSubviews];
  v3 = [(PXSharedLibraryParticipantTableViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  +[PXSharedLibraryParticipantTableCellModel imageDiameter];
  width = v12;
  +[PXSharedLibraryParticipantTableCellModel imageInset];
  v15 = v14;
  p_localizedNameLabel = &self->_localizedNameLabel;
  [(UILabel *)self->_localizedNameLabel sizeThatFits:v9, v11];
  v51 = v17;
  v47 = v18;
  p_addressLabel = &self->_addressLabel;
  [(UILabel *)self->_addressLabel sizeThatFits:v9, v11];
  v50 = v20;
  v46 = v21;
  v22 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[PXSharedLibraryParticipantTableViewCell semanticContentAttribute](self, "semanticContentAttribute")}];
  x = v9 - width - v15;
  v53.origin.x = v5;
  v53.origin.y = v7;
  v53.size.width = v9;
  v53.size.height = v11;
  y = CGRectGetMidY(v53) + width * -0.5;
  v48 = v7;
  v49 = v5;
  if (v22 == 1)
  {
    v54.origin.x = v9 - width - v15;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = width;
    v25 = CGRectGetMinX(v54) - v15;
    v55.origin.x = v9 - width - v15;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = width;
    v26 = CGRectGetMinX(v55) - v15;
    v27 = [(PXSharedLibraryParticipantTableViewCell *)self contentView];
    [v27 frame];
    v29 = v26 - v28;

    height = width;
  }

  else
  {
    v56.origin.x = MEMORY[0x1A590CE60](v9 - width - v15, y, width, width, v5, v7, v9, v11);
    x = v56.origin.x;
    y = v56.origin.y;
    width = v56.size.width;
    v45 = v15;
    height = v56.size.height;
    MaxX = CGRectGetMaxX(v56);
    v57.origin.y = v7;
    v25 = v45 + MaxX;
    v57.origin.x = v5;
    v57.size.width = v9;
    v57.size.height = v11;
    v29 = CGRectGetMaxX(v57) - v25;
  }

  [(PXRoundImageView *)self->_customAvatarImageView setFrame:x, y, width, height];
  v32 = [(UILabel *)*p_localizedNameLabel text];
  v33 = [v32 length];

  v34 = [(UILabel *)*p_addressLabel text];
  v35 = [v34 length] != 0;

  v36 = fmin(v51, v29);
  v37 = fmin(v50, v29);
  if (v22 == 1)
  {
    v38 = v25 - v36;
  }

  else
  {
    v38 = v25;
  }

  if (v22 == 1)
  {
    v25 = v25 - v37;
  }

  v58.origin.y = v48;
  v58.origin.x = v49;
  v58.size.width = v9;
  v58.size.height = v11;
  MidY = CGRectGetMidY(v58);
  if ((v33 != 0) == v35)
  {
    [(UILabel *)*p_localizedNameLabel intrinsicContentSize];
    [(UILabel *)*p_localizedNameLabel setFrame:v38, MidY - v43, v36, v47];
    [(UILabel *)*p_localizedNameLabel frame];
    MaxY = CGRectGetMaxY(v59);
LABEL_14:
    p_localizedNameLabel = p_addressLabel;
    v38 = v25;
    v36 = v37;
    v42 = v46;
    goto LABEL_15;
  }

  if (!v33)
  {
    [(UILabel *)*p_addressLabel intrinsicContentSize];
    MaxY = MidY + v44 * -0.5;
    goto LABEL_14;
  }

  [(UILabel *)*p_localizedNameLabel intrinsicContentSize];
  MaxY = MidY + v40 * -0.5;
  v42 = v47;
LABEL_15:
  [(UILabel *)*p_localizedNameLabel setFrame:v38, MaxY, v36, v42];
}

- (PXSharedLibraryParticipantTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = PXSharedLibraryParticipantTableViewCell;
  v4 = [(PXSharedLibraryParticipantTableViewCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(PXSharedLibraryParticipantTableCellModel);
    cellModel = v4->_cellModel;
    v4->_cellModel = v5;

    [(PXSharedLibraryParticipantTableCellModel *)v4->_cellModel registerChangeObserver:v4 context:PXSharedLibraryParticipantTableCellModelObservationContext];
    [(PXSharedLibraryParticipantTableViewCell *)v4 setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(PXSharedLibraryParticipantTableViewCell *)v4 contentView];
    objc_claimAutoreleasedReturnValue();
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    localizedNameLabel = v4->_localizedNameLabel;
    v4->_localizedNameLabel = v7;

    PXFontWithTextStyleSymbolicTraits();
  }

  return 0;
}

@end