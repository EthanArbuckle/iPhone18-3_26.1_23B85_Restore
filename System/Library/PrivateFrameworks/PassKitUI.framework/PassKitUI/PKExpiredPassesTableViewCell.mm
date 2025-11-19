@interface PKExpiredPassesTableViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKExpiredPassesTableViewCell)initWithReuseIdentifier:(id)a3;
- (double)_layoutWithBounds:(double)a3 isTemplateLayout:(double)a4;
- (uint64_t)_configureLabels;
- (void)_determineAccessibilitySettings;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setPass:(id)a3;
- (void)setPrimaryText:(id)a3;
- (void)setSecondaryText:(id)a3;
- (void)setTertiaryText:(id)a3;
@end

@implementation PKExpiredPassesTableViewCell

- (PKExpiredPassesTableViewCell)initWithReuseIdentifier:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = PKExpiredPassesTableViewCell;
  v3 = [(PKExpiredPassesTableViewCell *)&v32 initWithStyle:0 reuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v3->_isRTL = [(PKExpiredPassesTableViewCell *)v3 _shouldReverseLayoutDirection];
    [(PKExpiredPassesTableViewCell *)v4 _determineAccessibilitySettings];
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = v4->_primaryLabel;
    v4->_primaryLabel = v5;

    v7 = v4->_primaryLabel;
    v8 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v7 setTextColor:v8];

    v9 = v4->_primaryLabel;
    v10 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC20], 2, 0);
    [(UILabel *)v9 setFont:v10];

    v11 = [(PKExpiredPassesTableViewCell *)v4 contentView];
    [v11 addSubview:v4->_primaryLabel];

    [(UILabel *)v4->_primaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabel = v4->_secondaryLabel;
    v4->_secondaryLabel = v12;

    v14 = v4->_secondaryLabel;
    v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v14 setTextColor:v15];

    v16 = v4->_secondaryLabel;
    v17 = *MEMORY[0x1E69DDD28];
    v18 = *MEMORY[0x1E69DDC28];
    v19 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC28], 0x8000, 0);
    [(UILabel *)v16 setFont:v19];

    v20 = [(PKExpiredPassesTableViewCell *)v4 contentView];
    [v20 addSubview:v4->_secondaryLabel];

    v21 = *MEMORY[0x1E69B9CC8];
    [(UILabel *)v4->_secondaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    tertiaryLabel = v4->_tertiaryLabel;
    v4->_tertiaryLabel = v22;

    v24 = v4->_tertiaryLabel;
    v25 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v24 setTextColor:v25];

    v26 = v4->_tertiaryLabel;
    v27 = PKFontForDefaultDesign(v17, v18, 0x8000, 0);
    [(UILabel *)v26 setFont:v27];

    v28 = [(PKExpiredPassesTableViewCell *)v4 contentView];
    [v28 addSubview:v4->_tertiaryLabel];

    [(UILabel *)v4->_tertiaryLabel setAccessibilityIdentifier:v21];
    [(PKExpiredPassesTableViewCell *)v4 _configureLabels];
    [(PKExpiredPassesTableViewCell *)v4 setAccessoryType:1];
    v33[0] = objc_opt_class();
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    v30 = [(PKExpiredPassesTableViewCell *)v4 registerForTraitChanges:v29 withHandler:&__block_literal_global_198];

    [(PKExpiredPassesTableViewCell *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B99E0]];
  }

  return v4;
}

- (void)_determineAccessibilitySettings
{
  if (a1)
  {
    v2 = [a1 traitCollection];
    category = [v2 preferredContentSizeCategory];

    a1[1024] = UIContentSizeCategoryIsAccessibilityCategory(category);
  }
}

- (uint64_t)_configureLabels
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 1024) == 0;
    if (*(result + 1024))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    v4 = *(result + 1040);
    if (v2)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    [v4 setNumberOfLines:v3];
    if (*(v1 + 1024))
    {
      v6 = 0;
    }

    else
    {
      v6 = 4;
    }

    [*(v1 + 1040) setLineBreakMode:v6];
    [*(v1 + 1048) setNumberOfLines:v3];
    [*(v1 + 1048) setLineBreakMode:v5];
    [*(v1 + 1056) setNumberOfLines:v3];
    v7 = *(v1 + 1056);

    return [v7 setLineBreakMode:v5];
  }

  return result;
}

void __56__PKExpiredPassesTableViewCell_initWithReuseIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [(PKExpiredPassesTableViewCell *)v2 _determineAccessibilitySettings];
  [(PKExpiredPassesTableViewCell *)v2 _configureLabels];
  [v2 setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(PKExpiredPassesTableViewCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8] isTemplateLayout:*(MEMORY[0x1E695EFF8] + 8), a3.width, 1.79769313e308];
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)_layoutWithBounds:(double)a3 isTemplateLayout:(double)a4
{
  if (!a1)
  {
    return 0.0;
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v12 = 15.0;
    v13 = 13.0;
    v14 = 18.0;
    v15 = 15.0;
  }

  else
  {
    if (*(a1 + 1025))
    {
      v14 = 10.0;
    }

    else
    {
      v14 = 16.0;
    }

    if (*(a1 + 1025))
    {
      v12 = 16.0;
    }

    else
    {
      v12 = 10.0;
    }

    v13 = 8.0;
    v15 = 8.0;
  }

  if (*(a1 + 1025))
  {
    v16 = CGRectMaxXEdge;
  }

  else
  {
    v16 = CGRectMinXEdge;
  }

  PKContentAlignmentMake();
  if (_UISolariumFeatureFlagEnabled())
  {
    if (*(a1 + 1024))
    {
      v17 = 80.0;
    }

    else
    {
      v17 = 40.0;
    }
  }

  else
  {
    v17 = 80.0;
  }

  v73 = a5;
  remainder.origin.x = a3 + v14;
  remainder.origin.y = a4 + v15;
  remainder.size.width = a5 - (v14 + v12);
  remainder.size.height = a6 - (v13 + v15);
  v18 = *(MEMORY[0x1E695F050] + 16);
  v19 = *MEMORY[0x1E695F058];
  v20 = *(MEMORY[0x1E695F058] + 8);
  v21 = *(MEMORY[0x1E695F058] + 16);
  v22 = *(MEMORY[0x1E695F058] + 24);
  v23 = *(a1 + 1032);
  slice.origin = *MEMORY[0x1E695F050];
  slice.size = v18;
  v24 = v22;
  v75 = v20;
  v76 = v21;
  v74 = v19;
  if (v23)
  {
    [(PKPassThumbnailView *)v23 _layoutWithBounds:v78 commit:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v17 + -10.0, v17];
    x = remainder.origin.x;
    y = remainder.origin.y;
    width = remainder.size.width;
    height = remainder.size.height;
    if (*(a1 + 1024) == 1)
    {
      CGRectDivide(*&x, &slice, &remainder, v78[1], CGRectMinYEdge);
      PKSizeAlignedInRect();
      v74 = v29;
      v75 = v30;
      v76 = v31;
      v24 = v32;
    }

    else
    {
      CGRectDivide(*&x, &slice, &remainder, v78[0], v16);
      UIRectCenteredRect();
      v74 = v33;
      v75 = v34;
      v76 = v35;
      v24 = v36;
      CGRectDivide(remainder, &slice, &remainder, 16.0, v16);
    }
  }

  v77 = v24;
  if (*(a1 + 1072))
  {
    v37 = 0.0;
    if (*(a1 + 1032) && *(a1 + 1024) == 1)
    {
      v37 = 2.0;
      CGRectDivide(remainder, &slice, &remainder, 2.0, CGRectMinYEdge);
    }

    [*(a1 + 1040) sizeThatFits:{remainder.size.width, remainder.size.height}];
    CGRectDivide(remainder, &slice, &remainder, v38, CGRectMinYEdge);
    PKSizeAlignedInRect();
    v70 = v39;
    v71 = v40;
    v42 = v41;
    v72 = v43;
    v44 = v37 + v43;
  }

  else
  {
    v44 = 0.0;
    v71 = v21;
    v72 = v22;
    v42 = v20;
    v70 = v19;
  }

  if (*(a1 + 1080))
  {
    v45 = remainder.size.width;
    v46 = remainder.size.height;
    if (*(a1 + 1072))
    {
      v47 = remainder.origin.x;
      v48 = remainder.origin.y;
      CGRectDivide(*(&v45 - 2), &slice, &remainder, 2.0, CGRectMinYEdge);
      v44 = v44 + 2.0;
      v45 = remainder.size.width;
      v46 = remainder.size.height;
    }

    [*(a1 + 1048) sizeThatFits:{v45, v46}];
    CGRectDivide(remainder, &slice, &remainder, v49, CGRectMinYEdge);
    PKSizeAlignedInRect();
    v68 = v50;
    v69 = v51;
    v53 = v52;
    v55 = v54;
    v44 = v44 + v54;
  }

  else
  {
    v55 = v22;
    v68 = v19;
    v69 = v21;
    v53 = v20;
  }

  if (*(a1 + 1088))
  {
    v56 = remainder.size.width;
    v57 = remainder.size.height;
    if (*(a1 + 1080))
    {
      v58 = remainder.origin.x;
      v59 = remainder.origin.y;
      CGRectDivide(*(&v56 - 2), &slice, &remainder, 2.0, CGRectMinYEdge);
      v44 = v44 + 2.0;
      v56 = remainder.size.width;
      v57 = remainder.size.height;
    }

    [*(a1 + 1056) sizeThatFits:{v56, v57}];
    CGRectDivide(remainder, &slice, &remainder, v60, CGRectMinYEdge);
    PKSizeAlignedInRect();
    v19 = v61;
    v20 = v62;
    v21 = v63;
    v22 = v64;
    v44 = v44 + v64;
  }

  if (*(a1 + 1024) != 1 && v77 > v44)
  {
    v65 = (v77 - v44) * 0.5;
    if (*(a1 + 1072))
    {
      v42 = v42 + v65;
    }

    if (*(a1 + 1080))
    {
      v53 = v53 + v65;
    }

    v66 = v20 + v65;
    if (*(a1 + 1088))
    {
      v20 = v66;
    }
  }

  if ((a2 & 1) == 0)
  {
    [*(a1 + 1032) setFrame:{v74, v75, v76, v77}];
    [*(a1 + 1040) setFrame:{v70, v42, v71, v72}];
    [*(a1 + 1048) setFrame:{v68, v53, v69, v55}];
    [*(a1 + 1056) setFrame:{v19, v20, v21, v22}];
  }

  return v73;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PKExpiredPassesTableViewCell;
  [(PKExpiredPassesTableViewCell *)&v8 layoutSubviews];
  v3 = [(PKExpiredPassesTableViewCell *)self contentView];
  [v3 bounds];
  [(PKExpiredPassesTableViewCell *)self _layoutWithBounds:v4 isTemplateLayout:v5, v6, v7];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKExpiredPassesTableViewCell;
  [(PKExpiredPassesTableViewCell *)&v3 prepareForReuse];
  [(PKExpiredPassesTableViewCell *)self setPrimaryText:0];
  [(PKExpiredPassesTableViewCell *)self setSecondaryText:0];
  [(PKExpiredPassesTableViewCell *)self setTertiaryText:0];
  [(PKExpiredPassesTableViewCell *)self setPass:0];
}

- (void)setPass:(id)a3
{
  v5 = a3;
  if (self->_pass != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_pass, a3);
    if (self->_pass)
    {
      v6 = [PKPassThumbnailView alloc];
      if (v6)
      {
        v6 = [(PKPassThumbnailView *)&v6->super.super.super.isa initWithPass:0 suppressedContent:0 rendererState:0 options:?];
      }

      thumbnailView = self->_thumbnailView;
      self->_thumbnailView = v6;

      [(PKPassThumbnailView *)self->_thumbnailView setShadowVisibility:?];
      v8 = self->_thumbnailView;
      if (v8)
      {
        v8->_preferMinimumHeight = 0;
      }

      v9 = [(PKExpiredPassesTableViewCell *)self contentView];
      [v9 addSubview:self->_thumbnailView];

      [(PKExpiredPassesTableViewCell *)self setNeedsLayout];
    }

    else
    {
      [(PKPassThumbnailView *)self->_thumbnailView removeFromSuperview];
      v10 = self->_thumbnailView;
      self->_thumbnailView = 0;
    }

    v5 = v11;
  }
}

- (void)setPrimaryText:(id)a3
{
  v5 = a3;
  primaryText = self->_primaryText;
  v9 = v5;
  v7 = primaryText;
  if (v7 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_primaryText, a3);
    [(UILabel *)self->_primaryLabel setText:self->_primaryText];
    [(PKExpiredPassesTableViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setSecondaryText:(id)a3
{
  v5 = a3;
  secondaryText = self->_secondaryText;
  v9 = v5;
  v7 = secondaryText;
  if (v7 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_secondaryText, a3);
    [(UILabel *)self->_secondaryLabel setText:self->_secondaryText];
    [(PKExpiredPassesTableViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setTertiaryText:(id)a3
{
  v5 = a3;
  tertiaryText = self->_tertiaryText;
  v9 = v5;
  v7 = tertiaryText;
  if (v7 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_tertiaryText, a3);
    [(UILabel *)self->_tertiaryLabel setText:self->_tertiaryText];
    [(PKExpiredPassesTableViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

@end