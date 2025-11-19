@interface PSKeychainSyncHeaderView
- (PSKeychainSyncHeaderView)initWithSpecifier:(id)a3;
- (double)preferredHeightForWidth:(double)a3 inTableView:(id)a4;
- (void)layoutSubviews;
- (void)setDetailText:(id)a3;
- (void)setTitleText:(id)a3;
@end

@implementation PSKeychainSyncHeaderView

- (PSKeychainSyncHeaderView)initWithSpecifier:(id)a3
{
  v29.receiver = self;
  v29.super_class = PSKeychainSyncHeaderView;
  v3 = [(PSKeychainSyncHeaderView *)&v29 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setLineBreakMode:0];
    v6 = v3->_titleLabel;
    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v6 setBackgroundColor:v7];

    v8 = +[PSKeychainSyncManager sharedManager];
    v9 = [v8 isRunningInBuddy];

    v10 = v3->_titleLabel;
    if (v9)
    {
      v11 = [MEMORY[0x1E69DC888] blackColor];
      [(UILabel *)v10 setTextColor:v11];

      v12 = [MEMORY[0x1E69DC938] currentDevice];
      LODWORD(v11) = [v12 sf_isiPad];

      v13 = v3->_titleLabel;
      if (v11)
      {
        [MEMORY[0x1E69DB878] _thinSystemFontOfSize:48.0];
      }

      else
      {
        [MEMORY[0x1E69DB878] _lightSystemFontOfSize:30.0];
      }
      v15 = ;
      [(UILabel *)v13 setFont:v15];

      [(UILabel *)v3->_titleLabel setTextAlignment:1];
    }

    else
    {
      v14 = [MEMORY[0x1E69DC888] darkGrayColor];
      [(UILabel *)v10 setTextColor:v14];
    }

    [(PSKeychainSyncHeaderView *)v3 addSubview:v3->_titleLabel];
    v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    detailLabel = v3->_detailLabel;
    v3->_detailLabel = v16;

    v18 = v3->_detailLabel;
    v19 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v18 setBackgroundColor:v19];

    [(UILabel *)v3->_detailLabel setNumberOfLines:0];
    [(UILabel *)v3->_detailLabel setLineBreakMode:0];
    v20 = v3->_detailLabel;
    v21 = MEMORY[0x1E69DB878];
    v22 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v22 _referenceBounds];
    v23 = 16.0;
    if (v24 == 480.0)
    {
      v23 = 14.0;
    }

    v25 = [v21 systemFontOfSize:v23];
    [(UILabel *)v20 setFont:v25];

    [(UILabel *)v3->_detailLabel setTextAlignment:1];
    if (v9)
    {
      v26 = v3->_titleLabel;
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      v26 = v3->_detailLabel;
      [MEMORY[0x1E69DC888] darkGrayColor];
    }
    v27 = ;
    [(UILabel *)v26 setTextColor:v27];

    [(PSKeychainSyncHeaderView *)v3 addSubview:v3->_detailLabel];
  }

  return v3;
}

- (void)setDetailText:(id)a3
{
  [(UILabel *)self->_detailLabel setText:a3];

  [(PSKeychainSyncHeaderView *)self setNeedsLayout];
}

- (void)setTitleText:(id)a3
{
  [(UILabel *)self->_titleLabel setText:a3];

  [(PSKeychainSyncHeaderView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v3 = +[PSKeychainSyncManager sharedManager];
  v4 = 18.0;
  if ([v3 isRunningInBuddy])
  {
    v5 = 6.0;
  }

  else
  {
    v5 = 18.0;
  }

  v6 = [(UILabel *)self->_titleLabel text];
  v7 = [v6 length];

  if (v7)
  {
    [(UILabel *)self->_titleLabel frame];
    v9 = v8;
    v11 = v10;
    v12 = +[PSKeychainSyncManager sharedManager];
    if ([v12 isRunningInBuddy])
    {
      v4 = 6.0;
    }

    [(UILabel *)self->_titleLabel setFrame:20.0, v4, v9, v11];
    v19.origin.x = 20.0;
    v19.origin.y = v4;
    v19.size.width = v9;
    v19.size.height = v11;
    MaxY = CGRectGetMaxY(v19);
    v14 = 15.0;
    if (self->_usesCompactLayout)
    {
      v14 = 11.0;
    }

    v5 = MaxY + v14;
  }

  v15 = [(UILabel *)self->_detailLabel text];
  v16 = [v15 length];

  if (v16)
  {
    [(UILabel *)self->_detailLabel frame];
    detailLabel = self->_detailLabel;

    [(UILabel *)detailLabel setFrame:20.0, v5];
  }
}

- (double)preferredHeightForWidth:(double)a3 inTableView:(id)a4
{
  v4 = 0.0;
  if (a3 > 0.0)
  {
    [(PSKeychainSyncHeaderView *)self frame];
    v8 = v7;
    v10 = v9;
    v11 = [(UILabel *)self->_titleLabel text];
    v12 = [v11 length];

    v13 = [(UILabel *)self->_detailLabel text];
    v14 = [v13 length];

    if (v12)
    {
      [(UILabel *)self->_titleLabel frame];
      v16 = v15;
      v18 = v17;
      [(UILabel *)self->_titleLabel sizeThatFits:a3 + -40.0, 1.79769313e308];
      v20 = v19;
      [(UILabel *)self->_titleLabel setFrame:v16, v18, a3 + -40.0, v19];
      v4 = v20 + 0.0;
      if (!v14)
      {
LABEL_10:
        v28 = +[PSKeychainSyncManager sharedManager];
        v29 = [v28 isRunningInBuddy];
        v30 = 18.0;
        v31 = 6.0;
        if (v29)
        {
          v30 = 6.0;
        }

        if (!self->_usesCompactLayout)
        {
          v31 = 30.0;
        }

        v4 = v4 + v30 + v31;

        goto LABEL_15;
      }
    }

    else if (!v14)
    {
LABEL_15:
      [(PSKeychainSyncHeaderView *)self setFrame:v8, v10, a3, v4];
      return v4;
    }

    [(UILabel *)self->_detailLabel frame];
    v22 = v21;
    v24 = v23;
    [(UILabel *)self->_detailLabel sizeThatFits:a3 + -40.0, 1.79769313e308];
    v26 = v25;
    [(UILabel *)self->_detailLabel setFrame:v22, v24, a3 + -40.0, v25];
    v4 = v4 + v26;
    if (v12)
    {
      v27 = 15.0;
      if (self->_usesCompactLayout)
      {
        v27 = 11.0;
      }

      v4 = v4 + v27;
    }

    goto LABEL_10;
  }

  return v4;
}

@end