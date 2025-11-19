@interface SKUILockupMetadataView
+ (double)maximumHeightWithVisibleFields:(unint64_t)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUILockupMetadataView)initWithFrame:(CGRect)a3;
- (id)_decimalNumberFormatter;
- (id)_newDefaultLabel;
- (void)_reloadUserRatingViews;
- (void)drawRect:(CGRect)a3;
- (void)setArtistName:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setCategoryString:(id)a3;
- (void)setColoringWithColorScheme:(id)a3;
- (void)setEditorialBadgeString:(id)a3;
- (void)setItemCountString:(id)a3;
- (void)setItemOfferString:(id)a3;
- (void)setNumberOfUserRatings:(int64_t)a3;
- (void)setReleaseDateString:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUserRating:(float)a3;
- (void)setVisibleFields:(unint64_t)a3;
@end

@implementation SKUILockupMetadataView

- (SKUILockupMetadataView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILockupMetadataView initWithFrame:];
  }

  v11.receiver = self;
  v11.super_class = SKUILockupMetadataView;
  v8 = [(SKUILockupMetadataView *)&v11 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    [(SKUILockupMetadataView *)v8 setContentMode:7];
  }

  return v9;
}

+ (double)maximumHeightWithVisibleFields:(unint64_t)a3
{
  v3 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUILockupMetadataView maximumHeightWithVisibleFields:];
  }

  result = 37.0;
  if ((v3 & 0x10) == 0)
  {
    result = 0.0;
  }

  if ((v3 & 8) != 0)
  {
    result = result + 15.0;
  }

  if ((v3 & 0x80) != 0)
  {
    result = result + 15.0;
  }

  if (v3)
  {
    result = result + 15.0;
  }

  if ((v3 & 0x20) != 0)
  {
    result = result + 15.0;
  }

  if ((v3 & 0x100) != 0)
  {
    result = result + 15.0;
  }

  v5 = (v3 & 1) + ((v3 & 0x80) >> 7) + ((v3 & 8) >> 3) + ((v3 & 0x20) >> 5) + ((v3 & 0x100) >> 8);
  v6 = v5 > 1;
  v7 = v5 - 1;
  if (v6)
  {
    result = result + v7;
  }

  if ((v3 & 0x40) != 0)
  {
    return result + 14.0;
  }

  return result;
}

- (void)setArtistName:(id)a3
{
  v8 = a3;
  v4 = [(UILabel *)self->_artistNameLabel text];
  if (v4 != v8 && ([v4 isEqualToString:v8] & 1) == 0)
  {
    artistNameLabel = self->_artistNameLabel;
    if (v8)
    {
      if (!artistNameLabel)
      {
        v6 = [(SKUILockupMetadataView *)self _newDefaultLabel];
        v7 = self->_artistNameLabel;
        self->_artistNameLabel = v6;

        artistNameLabel = self->_artistNameLabel;
      }

      [(UILabel *)artistNameLabel setText:?];
      [(UILabel *)self->_artistNameLabel sizeToFit];
    }

    else
    {
      self->_artistNameLabel = 0;
    }

    [(SKUILockupMetadataView *)self setNeedsDisplay];
  }
}

- (void)setEditorialBadgeString:(id)a3
{
  v13 = a3;
  v4 = [(SKUIBadgeLabel *)self->_editorialBadgeLabel text];
  if (v4 != v13 && ([v4 isEqualToString:v13] & 1) == 0)
  {
    editorialBadgeLabel = self->_editorialBadgeLabel;
    if (v13)
    {
      if (!editorialBadgeLabel)
      {
        v6 = objc_alloc_init(SKUIBadgeLabel);
        v7 = self->_editorialBadgeLabel;
        self->_editorialBadgeLabel = v6;

        v8 = self->_editorialBadgeLabel;
        v9 = [(SKUILockupMetadataView *)self backgroundColor];
        if (v9)
        {
          [(SKUIBadgeLabel *)v8 setTextColor:v9];
        }

        else
        {
          v10 = +[SKUIBadgeLabel defaultTextColor];
          [(SKUIBadgeLabel *)v8 setTextColor:v10];
        }

        v11 = self->_editorialBadgeLabel;
        if (self->_textColor)
        {
          [(SKUIBadgeLabel *)self->_editorialBadgeLabel setBackgroundColor:?];
        }

        else
        {
          v12 = +[SKUIBadgeLabel defaultBackgroundColor];
          [(SKUIBadgeLabel *)v11 setBackgroundColor:v12];
        }
      }

      [(SKUIBadgeLabel *)self->_editorialBadgeLabel setText:?];
      [(SKUIBadgeLabel *)self->_editorialBadgeLabel sizeToFit];
    }

    else
    {
      self->_editorialBadgeLabel = 0;
    }

    [(SKUILockupMetadataView *)self setNeedsDisplay];
  }
}

- (void)setCategoryString:(id)a3
{
  v8 = a3;
  v4 = [(UILabel *)self->_categoryLabel text];
  if (v4 != v8 && ([v4 isEqualToString:v8] & 1) == 0)
  {
    categoryLabel = self->_categoryLabel;
    if (v8)
    {
      if (!categoryLabel)
      {
        v6 = [(SKUILockupMetadataView *)self _newDefaultLabel];
        v7 = self->_categoryLabel;
        self->_categoryLabel = v6;

        categoryLabel = self->_categoryLabel;
      }

      [(UILabel *)categoryLabel setText:?];
      [(UILabel *)self->_categoryLabel sizeToFit];
    }

    else
    {
      self->_categoryLabel = 0;
    }

    [(SKUILockupMetadataView *)self setNeedsDisplay];
  }
}

- (void)setColoringWithColorScheme:(id)a3
{
  v18 = a3;
  v4 = [v18 primaryTextColor];
  textColor = self->_textColor;
  if (textColor != v4 && ([(UIColor *)textColor isEqual:v4]& 1) == 0)
  {
    objc_storeStrong(&self->_textColor, v4);
    categoryLabel = self->_categoryLabel;
    if (self->_textColor)
    {
      [(UILabel *)self->_categoryLabel setTextColor:?];
    }

    else
    {
      v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
      [(UILabel *)categoryLabel setTextColor:v7];
    }

    itemCountLabel = self->_itemCountLabel;
    if (self->_textColor)
    {
      [(UILabel *)self->_itemCountLabel setTextColor:?];
    }

    else
    {
      v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
      [(UILabel *)itemCountLabel setTextColor:v9];
    }

    userRatingLabel = self->_userRatingLabel;
    if (self->_textColor)
    {
      [(UILabel *)self->_userRatingLabel setTextColor:?];
    }

    else
    {
      v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
      [(UILabel *)userRatingLabel setTextColor:v11];
    }

    editorialBadgeLabel = self->_editorialBadgeLabel;
    if (self->_textColor)
    {
      [(SKUIBadgeLabel *)self->_editorialBadgeLabel setBackgroundColor:?];
    }

    else
    {
      v13 = +[SKUIBadgeLabel defaultBackgroundColor];
      [(SKUIBadgeLabel *)editorialBadgeLabel setBackgroundColor:v13];
    }
  }

  v14 = [v18 secondaryTextColor];
  titleColor = self->_titleColor;
  if (titleColor != v14 && ([(UIColor *)titleColor isEqual:v14]& 1) == 0)
  {
    objc_storeStrong(&self->_titleColor, v14);
    titleLabel = self->_titleLabel;
    if (self->_titleColor)
    {
      [(UILabel *)self->_titleLabel setTextColor:?];
    }

    else
    {
      v17 = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)titleLabel setTextColor:v17];
    }
  }
}

- (void)setItemCountString:(id)a3
{
  v8 = a3;
  v4 = [(UILabel *)self->_itemCountLabel text];
  if (v4 != v8 && ([v4 isEqualToString:v8] & 1) == 0)
  {
    itemCountLabel = self->_itemCountLabel;
    if (v8)
    {
      if (!itemCountLabel)
      {
        v6 = [(SKUILockupMetadataView *)self _newDefaultLabel];
        v7 = self->_itemCountLabel;
        self->_itemCountLabel = v6;

        itemCountLabel = self->_itemCountLabel;
      }

      [(UILabel *)itemCountLabel setText:?];
      [(UILabel *)self->_itemCountLabel sizeToFit];
    }

    else
    {
      self->_itemCountLabel = 0;
    }

    [(SKUILockupMetadataView *)self setNeedsDisplay];
  }
}

- (void)setItemOfferString:(id)a3
{
  v8 = a3;
  v4 = [(UILabel *)self->_itemOfferLabel text];
  if (v4 != v8 && ([v4 isEqualToString:v8] & 1) == 0)
  {
    itemOfferLabel = self->_itemOfferLabel;
    if (v8)
    {
      if (!itemOfferLabel)
      {
        v6 = [(SKUILockupMetadataView *)self _newDefaultLabel];
        v7 = self->_itemOfferLabel;
        self->_itemOfferLabel = v6;

        itemOfferLabel = self->_itemOfferLabel;
      }

      [(UILabel *)itemOfferLabel setText:?];
      [(UILabel *)self->_itemOfferLabel sizeToFit];
    }

    else
    {
      self->_itemOfferLabel = 0;
    }

    [(SKUILockupMetadataView *)self setNeedsDisplay];
  }
}

- (void)setNumberOfUserRatings:(int64_t)a3
{
  if (self->_numberOfUserRatings != a3 || !self->_userRatingLabel)
  {
    self->_numberOfUserRatings = a3;
    [(SKUILockupMetadataView *)self _reloadUserRatingViews];
  }
}

- (void)setReleaseDateString:(id)a3
{
  v8 = a3;
  v4 = [(UILabel *)self->_releaseDateLabel text];
  if (v4 != v8 && ([v4 isEqualToString:v8] & 1) == 0)
  {
    releaseDateLabel = self->_releaseDateLabel;
    if (v8)
    {
      if (!releaseDateLabel)
      {
        v6 = [(SKUILockupMetadataView *)self _newDefaultLabel];
        v7 = self->_releaseDateLabel;
        self->_releaseDateLabel = v6;

        releaseDateLabel = self->_releaseDateLabel;
      }

      [(UILabel *)releaseDateLabel setText:?];
      [(UILabel *)self->_releaseDateLabel sizeToFit];
    }

    else
    {
      self->_releaseDateLabel = 0;
    }

    [(SKUILockupMetadataView *)self setNeedsDisplay];
  }
}

- (void)setTitle:(id)a3
{
  v14 = a3;
  v4 = [(UILabel *)self->_titleLabel text];
  if (v4 != v14 && ([v4 isEqualToString:v14] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (v14)
    {
      if (!titleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_titleLabel;
        self->_titleLabel = v6;

        v8 = self->_titleLabel;
        v9 = [(SKUILockupMetadataView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_titleLabel setNumberOfLines:2];
        v12 = self->_titleLabel;
        if (self->_titleColor)
        {
          [(UILabel *)self->_titleLabel setTextColor:?];
        }

        else
        {
          v13 = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v12 setTextColor:v13];
        }
      }

      [(UILabel *)self->_titleLabel setText:?];
    }

    else
    {
      self->_titleLabel = 0;
    }

    [(SKUILockupMetadataView *)self setNeedsDisplay];
  }
}

- (void)setUserRating:(float)a3
{
  if (self->_userRating != a3 || !self->_userRatingImageView)
  {
    self->_userRating = a3;
    [(SKUILockupMetadataView *)self _reloadUserRatingViews];
  }
}

- (void)setVisibleFields:(unint64_t)a3
{
  if (self->_visibleFields != a3)
  {
    self->_visibleFields = a3;
    [(SKUILockupMetadataView *)self setNeedsLayout];
  }
}

- (void)drawRect:(CGRect)a3
{
  v50[8] = *MEMORY[0x277D85DE8];
  [(SKUILockupMetadataView *)self bounds:a3.origin.x];
  v5 = v4;
  titleLabel = self->_titleLabel;
  if ((self->_visibleFields & 0x10) == 0)
  {
    [(UILabel *)titleLabel setHidden:1];
LABEL_11:
    v11 = 0.0;
    goto LABEL_12;
  }

  if (!titleLabel)
  {
    goto LABEL_11;
  }

  if (self->_editorialBadgeLabel)
  {
    v7 = (self->_visibleFields & 0x800) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [(UILabel *)titleLabel setNumberOfLines:v8];
  [(UILabel *)self->_titleLabel frame];
  [(UILabel *)self->_titleLabel sizeThatFits:v5, 1.79769313e308];
  v10 = v9;
  [(UILabel *)self->_titleLabel setFrame:0.0, 0.0, v5, v9];
  [(UILabel *)self->_titleLabel setHidden:0];
  v51.origin.x = 0.0;
  v51.origin.y = 0.0;
  v51.size.width = v5;
  v51.size.height = v10;
  v11 = CGRectGetMaxY(v51) + 1.0;
LABEL_12:
  categoryLabel = self->_categoryLabel;
  if ((self->_visibleFields & 8) != 0)
  {
    if (categoryLabel)
    {
      [(UILabel *)categoryLabel frame];
      [(UILabel *)self->_categoryLabel sizeThatFits:v5, 1.79769313e308];
      v14 = v13;
      [(UILabel *)self->_categoryLabel setFrame:0.0, v11, v5, v13];
      [(UILabel *)self->_categoryLabel setHidden:0];
      v52.origin.x = 0.0;
      v52.origin.y = v11;
      v52.size.width = v5;
      v52.size.height = v14;
      v11 = CGRectGetMaxY(v52) + 1.0;
    }
  }

  else
  {
    [(UILabel *)categoryLabel setHidden:1];
  }

  artistNameLabel = self->_artistNameLabel;
  if (self->_visibleFields)
  {
    if (artistNameLabel)
    {
      [(UILabel *)artistNameLabel frame];
      [(UILabel *)self->_artistNameLabel sizeThatFits:v5, 1.79769313e308];
      v17 = v16;
      [(UILabel *)self->_artistNameLabel setFrame:0.0, v11, v5, v16];
      [(UILabel *)self->_artistNameLabel setHidden:0];
      v53.origin.x = 0.0;
      v53.origin.y = v11;
      v53.size.width = v5;
      v53.size.height = v17;
      v11 = CGRectGetMaxY(v53) + 1.0;
    }
  }

  else
  {
    [(UILabel *)artistNameLabel setHidden:1];
  }

  itemCountLabel = self->_itemCountLabel;
  if ((self->_visibleFields & 0x80) != 0)
  {
    if (itemCountLabel)
    {
      [(UILabel *)itemCountLabel frame];
      [(UILabel *)self->_itemCountLabel sizeThatFits:v5, 1.79769313e308];
      v20 = v19;
      [(UILabel *)self->_itemCountLabel setFrame:0.0, v11, v5, v19];
      [(UILabel *)self->_itemCountLabel setHidden:0];
      v54.origin.x = 0.0;
      v54.origin.y = v11;
      v54.size.width = v5;
      v54.size.height = v20;
      v11 = CGRectGetMaxY(v54) + 1.0;
    }
  }

  else
  {
    [(UILabel *)itemCountLabel setHidden:1];
  }

  releaseDateLabel = self->_releaseDateLabel;
  if ((self->_visibleFields & 0x20) != 0)
  {
    if (releaseDateLabel)
    {
      [(UILabel *)releaseDateLabel frame];
      [(UILabel *)self->_releaseDateLabel sizeThatFits:v5, 1.79769313e308];
      v23 = v22;
      [(UILabel *)self->_releaseDateLabel setFrame:0.0, v11, v5, v22];
      [(UILabel *)self->_releaseDateLabel setHidden:0];
      v55.origin.x = 0.0;
      v55.origin.y = v11;
      v55.size.width = v5;
      v55.size.height = v23;
      v11 = CGRectGetMaxY(v55) + 1.0;
    }
  }

  else
  {
    [(UILabel *)releaseDateLabel setHidden:1];
  }

  itemOfferLabel = self->_itemOfferLabel;
  if ((self->_visibleFields & 0x100) != 0)
  {
    if (itemOfferLabel)
    {
      [(UILabel *)itemOfferLabel frame];
      [(UILabel *)self->_itemOfferLabel sizeThatFits:v5, 1.79769313e308];
      v26 = v25;
      [(UILabel *)self->_itemOfferLabel setFrame:0.0, v11, v5, v25];
      [(UILabel *)self->_itemOfferLabel setHidden:0];
      v56.origin.x = 0.0;
      v56.origin.y = v11;
      v56.size.width = v5;
      v56.size.height = v26;
      v11 = CGRectGetMaxY(v56) + 1.0;
    }
  }

  else
  {
    [(UILabel *)itemOfferLabel setHidden:1];
  }

  v49 = 408;
  userRatingImageView = self->_userRatingImageView;
  if ((self->_visibleFields & 0x40) == 0)
  {
    [(UIImageView *)userRatingImageView setHidden:1, 408];
    [(UILabel *)self->_userRatingLabel setHidden:1];
    goto LABEL_46;
  }

  if (!userRatingImageView || ([(UIImageView *)userRatingImageView isHidden]& 1) != 0)
  {
    p_userRatingLabel = &self->_userRatingLabel;
    userRatingLabel = self->_userRatingLabel;
    if (!userRatingLabel)
    {
      goto LABEL_46;
    }

    [(UILabel *)userRatingLabel frame];
    v30 = 0.0;
    v31 = 0.0;
    goto LABEL_45;
  }

  [(UIImageView *)self->_userRatingImageView frame];
  p_userRatingLabel = &self->_userRatingLabel;
  v33 = 16.0;
  if (v32 >= 16.0)
  {
    v33 = v32;
  }

  if (self->_userRatingLabel)
  {
    v34 = v33;
  }

  else
  {
    v34 = v32;
  }

  [(UIImageView *)self->_userRatingImageView frame];
  v36 = (v34 - v35) * 0.5;
  [(UIImageView *)self->_userRatingImageView setFrame:0.0, v11 + floorf(v36)];
  [(UIImageView *)self->_userRatingImageView setHidden:0];
  if (*p_userRatingLabel)
  {
    [(UILabel *)*p_userRatingLabel frame];
    [(UIImageView *)self->_userRatingImageView frame];
    v30 = CGRectGetMaxX(v57) + 3.0;
    v31 = (v34 + -16.0) * 0.5;
LABEL_45:
    v37 = v11 + floorf(v31) + -1.0;
    [(UILabel *)*p_userRatingLabel setFrame:v30, v37, v5 - v30, 16.0, v49];
    [(UILabel *)*p_userRatingLabel setHidden:0];
    v58.size.height = 16.0;
    v58.origin.x = v30;
    v58.origin.y = v37;
    v58.size.width = v5 - v30;
    v11 = CGRectGetMaxY(v58) + 1.0;
  }

LABEL_46:
  editorialBadgeLabel = self->_editorialBadgeLabel;
  if ((self->_visibleFields & 0x800) != 0)
  {
    if (editorialBadgeLabel)
    {
      [(SKUIBadgeLabel *)editorialBadgeLabel frame];
      v39 = floor(v11);
      [(SKUIBadgeLabel *)self->_editorialBadgeLabel sizeThatFits:v5, 1.79769313e308];
      v42 = v41;
      if (v5 >= v40)
      {
        v5 = v40;
      }

      [(SKUIBadgeLabel *)self->_editorialBadgeLabel setFrame:0.0, v39, v5, v41, v49];
      [(SKUIBadgeLabel *)self->_editorialBadgeLabel setHidden:0];
      v59.origin.x = 0.0;
      v59.origin.y = v39;
      v59.size.width = v5;
      v59.size.height = v42;
      CGRectGetMaxY(v59);
    }
  }

  else
  {
    [(SKUIBadgeLabel *)editorialBadgeLabel setHidden:1];
  }

  v50[0] = self->_titleLabel;
  v50[1] = self->_categoryLabel;
  v50[2] = *(&self->super.super.super.isa + v49);
  v50[3] = self->_itemCountLabel;
  v50[4] = self->_releaseDateLabel;
  v50[5] = self->_itemOfferLabel;
  v50[6] = self->_userRatingLabel;
  v43 = 0;
  v50[7] = self->_editorialBadgeLabel;
  do
  {
    v44 = v50[v43];
    if (v44 && ([v50[v43] isHidden] & 1) == 0)
    {
      [v44 frame];
      [v44 drawTextInRect:?];
    }

    ++v43;
  }

  while (v43 != 8);
  v45 = self->_userRatingImageView;
  v46 = v45;
  if (v45 && ([(UIImageView *)v45 isHidden]& 1) == 0)
  {
    v47 = [(UIImageView *)v46 image];
    [(UIImageView *)v46 frame];
    [v47 drawInRect:?];
  }

  for (i = 7; i != -1; --i)
  {
  }
}

- (void)setBackgroundColor:(id)a3
{
  editorialBadgeLabel = self->_editorialBadgeLabel;
  if (a3)
  {
    [(SKUIBadgeLabel *)editorialBadgeLabel setTextColor:a3];
  }

  else
  {
    v6 = 0;
    v7 = +[SKUIBadgeLabel defaultTextColor];
    [(SKUIBadgeLabel *)editorialBadgeLabel setTextColor:v7];
  }

  [(UILabel *)self->_artistNameLabel setBackgroundColor:a3];
  [(UILabel *)self->_categoryLabel setBackgroundColor:a3];
  [(UILabel *)self->_itemCountLabel setBackgroundColor:a3];
  [(UILabel *)self->_titleLabel setBackgroundColor:a3];
  [(UIImageView *)self->_userRatingImageView setBackgroundColor:a3];
  [(UILabel *)self->_userRatingLabel setBackgroundColor:a3];
  v8.receiver = self;
  v8.super_class = SKUILockupMetadataView;
  [(SKUILockupMetadataView *)&v8 setBackgroundColor:a3];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  titleLabel = self->_titleLabel;
  v6 = 0.0;
  if (titleLabel && (self->_visibleFields & 0x10) != 0)
  {
    if (self->_editorialBadgeLabel)
    {
      v7 = (self->_visibleFields & 0x800) == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [(UILabel *)titleLabel setNumberOfLines:v8, a3.width, a3.height];
    [(UILabel *)self->_titleLabel sizeThatFits:width, 1.79769313e308];
    v6 = v9 + 0.0 + 1.0;
  }

  categoryLabel = self->_categoryLabel;
  if (categoryLabel && (self->_visibleFields & 8) != 0)
  {
    [(UILabel *)categoryLabel sizeThatFits:width, 1.79769313e308];
    v6 = v6 + v12;
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  artistNameLabel = self->_artistNameLabel;
  if (artistNameLabel && (self->_visibleFields & 1) != 0)
  {
    [(UILabel *)artistNameLabel sizeThatFits:width, 1.79769313e308];
    v6 = v6 + v14;
    ++v11;
  }

  itemCountLabel = self->_itemCountLabel;
  if (itemCountLabel && (self->_visibleFields & 0x80) != 0)
  {
    [(UILabel *)itemCountLabel sizeThatFits:width, 1.79769313e308];
    v6 = v6 + v16;
    ++v11;
  }

  releaseDateLabel = self->_releaseDateLabel;
  if (releaseDateLabel && (self->_visibleFields & 0x20) != 0)
  {
    [(UILabel *)releaseDateLabel sizeThatFits:width, 1.79769313e308];
    v6 = v6 + v18;
    ++v11;
  }

  itemOfferLabel = self->_itemOfferLabel;
  if (itemOfferLabel && (self->_visibleFields & 0x100) != 0)
  {
    [(UILabel *)itemOfferLabel sizeThatFits:width, 1.79769313e308];
    v6 = v6 + v20;
    ++v11;
  }

  editorialBadgeLabel = self->_editorialBadgeLabel;
  if (editorialBadgeLabel && (self->_visibleFields & 0x800) != 0)
  {
    [(SKUIBadgeLabel *)editorialBadgeLabel sizeThatFits:width, 1.79769313e308];
    v6 = v6 + v22;
    ++v11;
  }

  if (v11 > 1)
  {
    v6 = v6 + (v11 - 1);
  }

  if ((self->_visibleFields & 0x40) != 0)
  {
    userRatingImageView = self->_userRatingImageView;
    if (userRatingImageView)
    {
      [(UIImageView *)userRatingImageView frame];
    }

    else
    {
      v24 = 0.0;
    }

    v25 = 16.0;
    if (v24 >= 16.0)
    {
      v25 = v24;
    }

    if (!self->_userRatingLabel)
    {
      v25 = v24;
    }

    if (v25 > 0.00000011920929)
    {
      v6 = v6 + v25;
    }
  }

  v26 = width;
  v27 = v6;
  result.height = v27;
  result.width = v26;
  return result;
}

- (id)_decimalNumberFormatter
{
  if (_decimalNumberFormatter_sOnce != -1)
  {
    [SKUILockupMetadataView _decimalNumberFormatter];
  }

  v3 = _decimalNumberFormatter_sNumberFormatter;

  return v3;
}

uint64_t __49__SKUILockupMetadataView__decimalNumberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = _decimalNumberFormatter_sNumberFormatter;
  _decimalNumberFormatter_sNumberFormatter = v0;

  v2 = _decimalNumberFormatter_sNumberFormatter;

  return [v2 setNumberStyle:1];
}

- (id)_newDefaultLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = [(SKUILockupMetadataView *)self backgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  [v3 setFont:v5];

  if (self->_textColor)
  {
    [v3 setTextColor:?];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [v3 setTextColor:v6];
  }

  return v3;
}

- (void)_reloadUserRatingViews
{
  if (!self->_userRatingLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    userRatingLabel = self->_userRatingLabel;
    self->_userRatingLabel = v3;

    v5 = self->_userRatingLabel;
    v6 = [(SKUILockupMetadataView *)self backgroundColor];
    [(UILabel *)v5 setBackgroundColor:v6];

    v7 = self->_userRatingLabel;
    v8 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    [(UILabel *)v7 setFont:v8];

    v9 = self->_userRatingLabel;
    if (self->_textColor)
    {
      [(UILabel *)self->_userRatingLabel setTextColor:?];
    }

    else
    {
      v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
      [(UILabel *)v9 setTextColor:v10];
    }
  }

  if (self->_numberOfUserRatings)
  {
    v11 = [(SKUILockupMetadataView *)self _decimalNumberFormatter];
    v12 = self->_userRatingLabel;
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfUserRatings];
    v15 = [v11 stringFromNumber:v14];
    v16 = [v13 stringWithFormat:@"(%@)", v15];
    [(UILabel *)v12 setText:v16];

    if (!self->_userRatingImageView)
    {
      v17 = objc_alloc_init(MEMORY[0x277D755E8]);
      userRatingImageView = self->_userRatingImageView;
      self->_userRatingImageView = v17;

      v19 = self->_userRatingImageView;
      v20 = [(SKUILockupMetadataView *)self backgroundColor];
      [(UIImageView *)v19 setBackgroundColor:v20];
    }

    v21 = [SKUIRatingStarsCache cacheWithProperties:1];
    v22 = self->_userRatingImageView;
    v23 = [v21 ratingStarsImageForRating:self->_userRating];
    [(UIImageView *)v22 setImage:v23];

    [(UIImageView *)self->_userRatingImageView setHidden:0];
    [(UIImageView *)self->_userRatingImageView sizeToFit];
  }

  else
  {
    [(UIImageView *)self->_userRatingImageView setHidden:1];
    v24 = self->_userRatingLabel;
    v25 = [(SKUILockupMetadataView *)self clientContext];
    v11 = v25;
    if (v25)
    {
      [v25 localizedStringForKey:@"NO_RATINGS"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"NO_RATINGS" inBundles:0];
    }
    v21 = ;
    [(UILabel *)v24 setText:v21];
  }

  [(SKUILockupMetadataView *)self setNeedsDisplay];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILockupMetadataView initWithFrame:]";
}

+ (void)maximumHeightWithVisibleFields:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUILockupMetadataView maximumHeightWithVisibleFields:]";
}

@end