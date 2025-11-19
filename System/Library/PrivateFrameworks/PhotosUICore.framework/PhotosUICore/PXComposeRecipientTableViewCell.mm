@interface PXComposeRecipientTableViewCell
- (PXComposeRecipientTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_textColor;
- (void)_updateAccessoryImageView;
- (void)_updateAddressLabel;
- (void)_updateAvatarView;
- (void)_updateLocalizedNameLabel;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXComposeRecipientTableViewCell

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (PXComposeRecipientTableCellModelObservationContext == a5)
  {
    v9 = v6 & 0x1C;
    v10 = v6 & 0x18;
    v12 = v8;
    if ((v6 & 0x81) != 0)
    {
      [(PXComposeRecipientTableViewCell *)self _updateAvatarView];
      v8 = v12;
    }

    v11 = v6 & 0x60;
    if (v9)
    {
      [(PXComposeRecipientTableViewCell *)self _updateLocalizedNameLabel];
      v8 = v12;
    }

    if (v10)
    {
      [(PXComposeRecipientTableViewCell *)self _updateAddressLabel];
      v8 = v12;
    }

    if (v11)
    {
      [(PXComposeRecipientTableViewCell *)self _updateAccessoryImageView];
      v8 = v12;
    }
  }
}

- (void)_updateAccessoryImageView
{
  if ([(PXComposeRecipientTableCellModel *)self->_cellModel showsCheckbox])
  {
    if ([(PXComposeRecipientTableCellModel *)self->_cellModel checked])
    {
      v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
      [MEMORY[0x1E69DC888] systemBlueColor];
    }

    else
    {
      v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
      [MEMORY[0x1E69DC888] systemLightGrayColor];
    }
    v4 = ;
    [(UIImageView *)self->_accessoryImageView setImage:v3];
    [(UIImageView *)self->_accessoryImageView setTintColor:v4];
    [(UIImageView *)self->_accessoryImageView sizeToFit];
    [(UIImageView *)self->_accessoryImageView setHidden:0];
  }

  else
  {
    [(UIImageView *)self->_accessoryImageView setHidden:1];
  }

  [(PXComposeRecipientTableViewCell *)self setNeedsLayout];
}

- (void)_updateAddressLabel
{
  v5 = [(PXComposeRecipientTableCellModel *)self->_cellModel address];
  [(UILabel *)self->_addressLabel setText:v5];
  if (v5)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  [(PXComposeRecipientTableViewCell *)self setSelectionStyle:v3];
  v4 = [(PXComposeRecipientTableViewCell *)self _textColor];
  [(UILabel *)self->_addressLabel setTextColor:v4];

  [(PXComposeRecipientTableViewCell *)self setNeedsLayout];
}

- (void)_updateLocalizedNameLabel
{
  v3 = [(PXComposeRecipientTableCellModel *)self->_cellModel name];
  [(UILabel *)self->_localizedNameLabel setText:v3];

  v4 = [(PXComposeRecipientTableViewCell *)self _textColor];
  [(UILabel *)self->_localizedNameLabel setTextColor:v4];

  v5 = [(PXComposeRecipientTableCellModel *)self->_cellModel address];

  if (v5)
  {
    v6 = 32770;
  }

  else
  {
    v6 = 0x8000;
  }

  v7 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] withSymbolicTraits:v6 options:2];
  [(UILabel *)self->_localizedNameLabel setFont:v7];
  [(PXComposeRecipientTableViewCell *)self setNeedsLayout];
}

- (void)_updateAvatarView
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = [(PXComposeRecipientTableCellModel *)self->_cellModel contact];
  if (v4)
  {
    if (!self->_contactAvatarViewController)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695D0C8]);
      contactAvatarViewController = self->_contactAvatarViewController;
      self->_contactAvatarViewController = v5;

      v7 = [(CNAvatarViewController *)self->_contactAvatarViewController view];
      contactAvatarView = self->_contactAvatarView;
      self->_contactAvatarView = v7;

      v9 = [(PXComposeRecipientTableViewCell *)self contentView];
      [v9 addSubview:self->_contactAvatarView];
    }

    v21[0] = v4;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [(CNAvatarViewController *)self->_contactAvatarViewController setContacts:v10];

    v11 = self->_contactAvatarView;
    [(UIView *)self->_contactAvatarView setHidden:0];
    [(PXRoundImageView *)self->_customAvatarImageView setHidden:1];
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_9:
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewCell+iOS.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"avatarView"}];

    goto LABEL_5;
  }

  v14 = [(PXComposeRecipientTableCellModel *)self->_cellModel image];
  customAvatarImageView = self->_customAvatarImageView;
  if (!customAvatarImageView)
  {
    v16 = objc_alloc_init(PXRoundImageView);
    v17 = self->_customAvatarImageView;
    self->_customAvatarImageView = v16;

    v18 = [MEMORY[0x1E69DC888] lightGrayColor];
    [(PXRoundImageView *)self->_customAvatarImageView setBackgroundColor:v18];

    [(PXRoundImageView *)self->_customAvatarImageView setAccessibilityIgnoresInvertColors:1];
    v19 = [(PXComposeRecipientTableViewCell *)self contentView];
    [v19 addSubview:self->_customAvatarImageView];

    customAvatarImageView = self->_customAvatarImageView;
  }

  [(PXRoundImageView *)customAvatarImageView setImage:v14];
  v11 = self->_customAvatarImageView;
  [(PXRoundImageView *)self->_customAvatarImageView setHidden:0];
  [(UIView *)self->_contactAvatarView setHidden:1];

  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_5:
  avatarView = self->_avatarView;
  self->_avatarView = &v11->super.super;
  v13 = v11;

  [(PXComposeRecipientTableViewCell *)self setNeedsLayout];
}

- (id)_textColor
{
  v3 = [(PXComposeRecipientTableCellModel *)self->_cellModel address];
  if (v3)
  {
    if ([(PXComposeRecipientTableCellModel *)self->_cellModel isValidAddress])
    {
      [MEMORY[0x1E69DC888] systemBlueColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemGreenColor];
    }
    v4 = ;
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  v5 = v4;

  return v5;
}

- (void)layoutSubviews
{
  v53.receiver = self;
  v53.super_class = PXComposeRecipientTableViewCell;
  [(PXComposeRecipientTableViewCell *)&v53 layoutSubviews];
  v3 = [(PXComposeRecipientTableViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  +[PXComposeRecipientTableCellModel imageDiameter];
  v13 = v12;
  +[PXComposeRecipientTableCellModel imageInset];
  v15 = v14;
  p_localizedNameLabel = &self->_localizedNameLabel;
  [(UILabel *)self->_localizedNameLabel sizeThatFits:v9, v11];
  v50 = v17;
  v48 = v18;
  p_addressLabel = &self->_addressLabel;
  [(UILabel *)self->_addressLabel sizeThatFits:v9, v11];
  v49 = v20;
  v47 = v21;
  v22 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[PXComposeRecipientTableViewCell semanticContentAttribute](self, "semanticContentAttribute")}];
  v51 = v11;
  v52 = v7;
  if (v22 == 1)
  {
    v23 = v9 - v13 - v15;
    v54.origin.x = v5;
    v54.origin.y = v7;
    v54.size.width = v9;
    v54.size.height = v11;
    v24 = CGRectGetMidY(v54) + v13 * -0.5;
    v55.origin.x = v23;
    v55.origin.y = v24;
    v55.size.width = v13;
    v55.size.height = v13;
    v25 = CGRectGetMinX(v55) - v15;
    v56.origin.x = v23;
    v56.origin.y = v24;
    v56.size.width = v13;
    v56.size.height = v13;
    v26 = CGRectGetMinX(v56) - v15;
    v27 = [(PXComposeRecipientTableViewCell *)self contentView];
    [v27 frame];
    v28 = v5;
    v30 = v26 - v29;

    v15 = v23;
  }

  else
  {
    v57.origin.x = v5;
    v57.origin.y = v7;
    v57.size.width = v9;
    v57.size.height = v11;
    v24 = CGRectGetMidY(v57) + v13 * -0.5;
    v58.origin.x = v15;
    v58.origin.y = v24;
    v58.size.width = v13;
    v58.size.height = v13;
    v31 = v7;
    v25 = v15 + CGRectGetMaxX(v58);
    if (([(UIImageView *)self->_accessoryImageView isHidden]& 1) != 0)
    {
      v59.size.height = v11;
      v28 = v5;
      v59.origin.x = v5;
      v59.origin.y = v31;
      v59.size.width = v9;
      MaxX = CGRectGetMaxX(v59);
    }

    else
    {
      v28 = v5;
      [(UIImageView *)self->_accessoryImageView frame];
      MaxX = CGRectGetMinX(v60);
    }

    v30 = MaxX - v25;
  }

  [(UIView *)self->_avatarView setFrame:v15, v24, v13, v13];
  v33 = [(UILabel *)*p_localizedNameLabel text];
  v34 = [v33 length];

  v35 = [(UILabel *)*p_addressLabel text];
  v36 = [v35 length] != 0;

  v37 = fmin(v50, v30);
  v38 = fmin(v49, v30);
  if (v22 == 1)
  {
    v39 = v25 - v37;
  }

  else
  {
    v39 = v25;
  }

  if (v22 == 1)
  {
    v40 = v25 - v38;
  }

  else
  {
    v40 = v25;
  }

  v61.origin.x = v28;
  v61.size.height = v51;
  v61.origin.y = v52;
  v61.size.width = v9;
  MidY = CGRectGetMidY(v61);
  if ((v34 != 0) == v36)
  {
    [(UILabel *)*p_localizedNameLabel intrinsicContentSize];
    [(UILabel *)*p_localizedNameLabel setFrame:v39, MidY - v45, v37, v48];
    [(UILabel *)*p_localizedNameLabel frame];
    MaxY = CGRectGetMaxY(v62);
LABEL_18:
    p_localizedNameLabel = p_addressLabel;
    v39 = v40;
    v37 = v38;
    v44 = v47;
    goto LABEL_19;
  }

  if (!v34)
  {
    [(UILabel *)*p_addressLabel intrinsicContentSize];
    MaxY = MidY + v46 * -0.5;
    goto LABEL_18;
  }

  [(UILabel *)*p_localizedNameLabel intrinsicContentSize];
  MaxY = MidY + v42 * -0.5;
  v44 = v48;
LABEL_19:
  [(UILabel *)*p_localizedNameLabel setFrame:v39, MaxY, v37, v44];
}

- (PXComposeRecipientTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v18.receiver = self;
  v18.super_class = PXComposeRecipientTableViewCell;
  v4 = [(PXComposeRecipientTableViewCell *)&v18 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(PXComposeRecipientTableCellModel);
    cellModel = v4->_cellModel;
    v4->_cellModel = v5;

    [(PXComposeRecipientTableCellModel *)v4->_cellModel registerChangeObserver:v4 context:PXComposeRecipientTableCellModelObservationContext];
    [(PXComposeRecipientTableViewCell *)v4 setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    localizedNameLabel = v4->_localizedNameLabel;
    v4->_localizedNameLabel = v7;

    v9 = [(PXComposeRecipientTableViewCell *)v4 contentView];
    [v9 addSubview:v4->_localizedNameLabel];

    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    addressLabel = v4->_addressLabel;
    v4->_addressLabel = v10;

    v12 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD80] withSymbolicTraits:0x8000 options:2];
    [(UILabel *)v4->_addressLabel setFont:v12];

    v13 = [(PXComposeRecipientTableViewCell *)v4 contentView];
    [v13 addSubview:v4->_addressLabel];

    v14 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    accessoryImageView = v4->_accessoryImageView;
    v4->_accessoryImageView = v14;

    v16 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
    [(UIImageView *)v4->_accessoryImageView setSymbolConfiguration:v16];

    [(PXComposeRecipientTableViewCell *)v4 setAccessoryView:v4->_accessoryImageView];
    [(PXComposeRecipientTableViewCell *)v4 _updateAvatarView];
    [(PXComposeRecipientTableViewCell *)v4 _updateLocalizedNameLabel];
    [(PXComposeRecipientTableViewCell *)v4 _updateAddressLabel];
    [(PXComposeRecipientTableViewCell *)v4 _updateAccessoryImageView];
  }

  return v4;
}

@end