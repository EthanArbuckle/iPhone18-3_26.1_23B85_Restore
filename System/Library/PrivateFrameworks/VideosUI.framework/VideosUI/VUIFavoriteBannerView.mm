@interface VUIFavoriteBannerView
- (CGSize)_imageSizeForBannerStyle:(unint64_t)style;
- (CGSize)_layoutSubviewsWithSize:(CGSize)size computationOnly:(BOOL)only;
- (CGSize)imageSizeForBannerStyle:(unint64_t)style sizeClass:(int64_t)class;
- (CGSize)maxImageSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)_generatePlainWeaveImagePointsForSize:(CGSize)size;
- (id)_generatePointsForPlainWeaveSide:(double)side containerRect:(CGRect)rect imageSize:(CGSize)size direction:(unint64_t)direction;
- (id)_generateSiderowImagePointsForSize:(CGSize)size;
- (id)_generateSingleRowImagePoints;
- (void)layoutSubviews;
- (void)prepareForCellReuse;
- (void)setBackgroundImageLogos:(id)logos;
- (void)setBackgroundView:(id)view;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSubtitleLabel:(id)label;
- (void)setTitleLabel:(id)label;
@end

@implementation VUIFavoriteBannerView

- (void)setTitleLabel:(id)label
{
  labelCopy = label;
  titleLabel = self->_titleLabel;
  if (titleLabel != labelCopy)
  {
    [(VUILabel *)titleLabel removeFromSuperview];
  }

  if (labelCopy && ([(VUILabel *)labelCopy isDescendantOfView:self]& 1) == 0)
  {
    [(VUIFavoriteBannerView *)self addSubview:labelCopy];
  }

  v6 = self->_titleLabel;
  self->_titleLabel = labelCopy;

  [(VUIFavoriteBannerView *)self setNeedsLayout];
}

- (void)setSubtitleLabel:(id)label
{
  labelCopy = label;
  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel != labelCopy)
  {
    [(VUILabel *)subtitleLabel removeFromSuperview];
  }

  if (labelCopy && ([(VUILabel *)labelCopy isDescendantOfView:self]& 1) == 0)
  {
    [(VUIFavoriteBannerView *)self addSubview:labelCopy];
  }

  v6 = self->_subtitleLabel;
  self->_subtitleLabel = labelCopy;

  [(VUIFavoriteBannerView *)self setNeedsLayout];
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  backgroundView = self->_backgroundView;
  if (backgroundView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)backgroundView removeFromSuperview];
    if (v7 && ![(UIView *)v7 isDescendantOfView:self])
    {
      [(VUIFavoriteBannerView *)self addSubview:v7];
      [(VUIFavoriteBannerView *)self sendSubviewToBack:v7];
    }

    objc_storeStrong(&self->_backgroundView, view);
    [(VUIFavoriteBannerView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)setBackgroundImageLogos:(id)logos
{
  v28 = *MEMORY[0x1E69E9840];
  logosCopy = logos;
  if ([logosCopy count] || -[NSArray count](self->_backgroundImageLogos, "count"))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = self->_backgroundImageLogos;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          if (([logosCopy containsObject:v11] & 1) == 0)
          {
            [v11 removeFromSuperview];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_backgroundImageLogos, logos);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = self->_backgroundImageLogos;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v18 + 1) + 8 * j);
          if (([v17 isDescendantOfView:{self->_backgroundView, v18}] & 1) == 0)
          {
            [(UIView *)self->_backgroundView addSubview:v17];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }

    [(UIView *)self->_backgroundView setNeedsLayout];
    [(VUIFavoriteBannerView *)self setNeedsLayout];
  }
}

- (CGSize)_layoutSubviewsWithSize:(CGSize)size computationOnly:(BOOL)only
{
  height = size.height;
  width = size.width;
  v113 = *MEMORY[0x1E69E9840];
  v8 = [(NSArray *)self->_backgroundImageLogos count];
  v107 = width;
  v9 = width + -48.0;
  [(VUIFavoriteBannerLayout *)self->_layout maxTextWidth];
  if (v10 <= width + -48.0)
  {
    [(VUIFavoriteBannerLayout *)self->_layout maxTextWidth];
    v9 = v11;
  }

  [(VUIFavoriteBannerLayout *)self->_layout subtitleBaseLine];
  v13 = v12;
  [(VUIFavoriteBannerLayout *)self->_layout margin];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = -[VUIFavoriteBannerLayout bannerStyleForSizeClass:](self->_layout, "bannerStyleForSizeClass:", [MEMORY[0x1E69DD2E8] vui_currentSizeClassForWindowWidth:v107]);
  v23 = v22;
  v99 = height;
  if (!v22)
  {
    [(VUIFavoriteBannerView *)self _imageSizeForBannerStyle:0];
    height = v46;
    v102 = v13;
    v44 = (v8 - 1) * 10.0 + v8 * v46;
    v45 = (v107 - v44) * 0.5;
    v116.origin.x = v45;
    v116.origin.y = v15;
    v116.size.width = v44;
    v116.size.height = height;
    v106 = v15;
    v47 = v15 + CGRectGetHeight(v116) + 0.0;
    [(VUILabel *)self->_titleLabel tv_sizeThatFits:v9];
    v49 = v48;
    v97 = v19;
    v51 = v50;
    [(VUILabel *)self->_titleLabel topMarginWithBaselineMargin:34.0];
    v53 = v47 + v52;
    v117.origin.x = (v107 - v49) * 0.5;
    x = v117.origin.x;
    v104 = v49;
    v117.origin.y = v53;
    v117.size.width = v49;
    v105 = v51;
    v117.size.height = v51;
    v54 = v53 + CGRectGetHeight(v117);
    [(VUILabel *)self->_subtitleLabel tv_sizeThatFits:v9, 0.0];
    v56 = v55;
    v58 = v57;
    [(VUILabel *)self->_subtitleLabel topMarginToLabel:self->_titleLabel withBaselineMargin:v102];
    v40 = v54 + v59;
    v118.origin.x = (v107 - v56) * 0.5;
    v101 = v118.origin.x;
    v118.origin.y = v40;
    v118.size.width = v56;
    v118.size.height = v58;
    v41 = v40 + v97 + CGRectGetHeight(v118);
    v60 = v107;
    if (only)
    {
      goto LABEL_40;
    }

LABEL_20:
    v98 = v41;
    [(UIView *)self->_backgroundView setFrame:v45, v106, v44, height];
    [(VUILabel *)self->_titleLabel setFrame:x, v53, v104, v105];
    [(VUILabel *)self->_subtitleLabel setFrame:v101, v40, v56, v58];
    if (v23)
    {
      if (v23 == 1)
      {
        _generateSingleRowImagePoints = [(VUIFavoriteBannerView *)self _generatePlainWeaveImagePointsForSize:v107, v99];
      }

      else
      {
        if (v23 != 2)
        {
          v62 = 0;
          goto LABEL_28;
        }

        _generateSingleRowImagePoints = [(VUIFavoriteBannerView *)self _generateSiderowImagePointsForSize:v107, v99];
      }
    }

    else
    {
      _generateSingleRowImagePoints = [(VUIFavoriteBannerView *)self _generateSingleRowImagePoints];
    }

    v62 = _generateSingleRowImagePoints;
LABEL_28:
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v63 = self->_backgroundImageLogos;
    v64 = [(NSArray *)v63 countByEnumeratingWithState:&v108 objects:v112 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = 0;
      v67 = *v109;
      do
      {
        for (i = 0; i != v65; ++i)
        {
          if (*v109 != v67)
          {
            objc_enumerationMutation(v63);
          }

          v69 = *(*(&v108 + 1) + 8 * i);
          if (v66 < [v62 count] && (objc_msgSend(v62, "objectAtIndexedSubscript:", v66), v70 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v70, "CGRectValue"), v72 = v71, v74 = v73, v76 = v75, v78 = v77, v70, -[UIView convertRect:toView:](self->_backgroundView, "convertRect:toView:", self, v72, v74, v76, v78), v80 = v79, v82 = v81, v84 = v83, v86 = v85, -[VUIFavoriteBannerView bounds](self, "bounds"), v120.origin.x = v87, v120.origin.y = v88, v120.size.width = v89, v120.size.height = v90, v119.origin.x = v80, v119.origin.y = v82, v119.size.width = v84, v119.size.height = v86, CGRectIntersectsRect(v119, v120)))
          {
            [v69 setHidden:0];
            [v69 setFrame:{v72, v74, v76, v78}];
          }

          else
          {
            [v69 setHidden:1];
          }

          ++v66;
        }

        v65 = [(NSArray *)v63 countByEnumeratingWithState:&v108 objects:v112 count:16];
      }

      while (v65);
    }

    v60 = v107;
    v41 = v98;
    goto LABEL_40;
  }

  if (v22 > 2)
  {
    v45 = *MEMORY[0x1E695F058];
    v53 = *(MEMORY[0x1E695F058] + 8);
    v44 = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
    v58 = height;
    v56 = v44;
    v40 = v53;
    v101 = *MEMORY[0x1E695F058];
    x = *MEMORY[0x1E695F058];
    v41 = 0.0;
    v104 = v44;
    v105 = height;
    v106 = v53;
    v60 = v107;
    if (only)
    {
      goto LABEL_40;
    }

    goto LABEL_20;
  }

  v92 = v21;
  [(VUILabel *)self->_titleLabel sizeThatFits:v9, 0.0];
  v96 = v19;
  v25 = v24;
  v27 = v26;
  [(VUILabel *)self->_subtitleLabel topMarginToLabel:self->_titleLabel withBaselineMargin:v13];
  v29 = v28;
  v100 = v28;
  [(VUILabel *)self->_subtitleLabel sizeThatFits:v9, 0.0];
  v31 = v30;
  v33 = v32;
  v34 = v27 + 0.0 + v29 + v32;
  v105 = v27;
  v106 = v15;
  if (height <= v34)
  {
    v35 = v15 + 0.0;
  }

  else
  {
    v35 = (height - v34) * 0.5;
  }

  v36 = (v107 - v25) * 0.5;
  if (v23 != 1)
  {
    v36 = v17;
  }

  v91 = v17;
  if (v23 == 1)
  {
    v17 = (v107 - v31) * 0.5;
  }

  x = v36;
  v104 = v25;
  v37 = v35;
  v38 = v25;
  v39 = v27;
  v93 = v35;
  v94 = v31;
  v40 = v100 + CGRectGetHeight(*&v36) + v35;
  v101 = v17;
  v115.origin.x = v17;
  v115.origin.y = v40;
  v115.size.width = v31;
  v95 = v33;
  v115.size.height = v33;
  v41 = v96 + CGRectGetHeight(v115) + v40;
  if (v23 == 2)
  {
    v42 = v41;
    [(VUIFavoriteBannerLayout *)self->_layout maxTextWidth];
    v41 = v42;
    v44 = v107 - (v92 + v91 * 2.0 + v43);
    height = height - (v106 + v96);
    v45 = v107 - v92 - v44;
  }

  else
  {
    v45 = (v107 - v107) * 0.5;
    v106 = (height - height) * 0.5;
    v44 = v107;
  }

  v60 = v107;
  v56 = v94;
  v58 = v95;
  v53 = v93;
  if (!only)
  {
    goto LABEL_20;
  }

LABEL_40:
  result.height = v41;
  result.width = v60;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = VUIFavoriteBannerView;
  [(VUIFavoriteBannerView *)&v5 layoutSubviews];
  [(VUIFavoriteBannerView *)self bounds];
  [(VUIFavoriteBannerView *)self _layoutSubviewsWithSize:0 computationOnly:v3, v4];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUIFavoriteBannerView *)self _layoutSubviewsWithSize:1 computationOnly:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  [(VUIFavoriteBannerLayout *)self->_layout bannerMinHeight];
  if (v7 >= v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v5;
  result.height = v9;
  result.width = v10;
  return result;
}

- (CGSize)maxImageSize
{
  vui_keyWindow = [MEMORY[0x1E69DD2E8] vui_keyWindow];
  traitCollection = [vui_keyWindow traitCollection];

  [VUIUtilities scaleContentSizeValue:traitCollection forTraitCollection:180.0];
  if (v4 <= 125.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 125.0;
  }

  v6 = v5;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)imageSizeForBannerStyle:(unint64_t)style sizeClass:(int64_t)class
{
  if (style == 2)
  {
    v11 = 0.0;
    if (class <= 7)
    {
      v11 = dbl_1E4297960[class];
    }

    vui_keyWindow = [MEMORY[0x1E69DD2E8] vui_keyWindow];
    traitCollection = [vui_keyWindow traitCollection];

    [VUIUtilities scaleContentSizeValue:traitCollection forTraitCollection:v11];
    v8 = 125.0;
    goto LABEL_9;
  }

  if (style == 1)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [currentDevice userInterfaceIdiom] == 2;

    v4 = dbl_1E4297950[v10];
    goto LABEL_13;
  }

  v4 = 0.0;
  if (!style)
  {
    vui_keyWindow2 = [MEMORY[0x1E69DD2E8] vui_keyWindow];
    traitCollection = [vui_keyWindow2 traitCollection];

    [VUIUtilities scaleContentSizeValue:traitCollection forTraitCollection:50.0];
    v8 = 84.0;
LABEL_9:
    if (v7 <= v8)
    {
      v4 = v7;
    }

    else
    {
      v4 = v8;
    }
  }

LABEL_13:
  v13 = v4;
  v14 = v4;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  layout = self->_layout;
  if (highlighted)
  {
    [(VUIFavoriteBannerLayout *)layout highlightedBackgroundColor];
  }

  else
  {
    [(VUIFavoriteBannerLayout *)layout backgroundColor];
  }
  v5 = ;
  [(VUIFavoriteBannerView *)self setBackgroundColor:v5];
}

- (CGSize)_imageSizeForBannerStyle:(unint64_t)style
{
  v5 = MEMORY[0x1E69DD2E8];
  [(VUIFavoriteBannerView *)self bounds];
  v6 = [v5 vui_currentSizeClassForWindowWidth:CGRectGetWidth(v11)];

  [(VUIFavoriteBannerView *)self imageSizeForBannerStyle:style sizeClass:v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)_generateSingleRowImagePoints
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(VUIFavoriteBannerView *)self _imageSizeForBannerStyle:0];
  v5 = v4;
  v7 = v6;
  if ([(NSArray *)self->_backgroundImageLogos count])
  {
    v8 = 0;
    v9 = 0.0;
    do
    {
      v10 = [MEMORY[0x1E696B098] valueWithCGRect:{v9, 0.0, v5, v7}];
      [v3 addObject:v10];

      v9 = v5 + 10.0 + v9;
      ++v8;
    }

    while (v8 < [(NSArray *)self->_backgroundImageLogos count]);
  }

  return v3;
}

- (id)_generatePointsForPlainWeaveSide:(double)side containerRect:(CGRect)rect imageSize:(CGSize)size direction:(unint64_t)direction
{
  height = size.height;
  width = size.width;
  v9 = rect.size.height;
  v10 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = 0.0;
  if (!direction)
  {
    v13 = -size.width;
  }

  if (direction == 1)
  {
    v14 = size.width;
  }

  else
  {
    v14 = v13;
  }

  v15 = ceil(CGRectGetHeight(rect) / size.height);
  rect2 = x;
  v30.origin.x = x;
  v16 = y;
  v30.origin.y = y;
  v17 = v10;
  v30.size.width = v10;
  v30.size.height = v9;
  v18 = (CGRectGetHeight(v30) - v15 * height) * 0.5;
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v18 < v9)
  {
    v20 = 0;
    v21 = 1;
    sideCopy2 = side;
    do
    {
      if (!direction)
      {
        sideCopy2 = v14 + sideCopy2;
      }

      if (v21 & v20)
      {
        v23 = v14 + sideCopy2;
      }

      else
      {
        v23 = sideCopy2;
      }

      v31.origin.x = v23;
      v31.origin.y = v18;
      v31.size.width = width;
      v31.size.height = height;
      v32.origin.x = rect2;
      v32.origin.y = v16;
      v32.size.width = v17;
      v32.size.height = v9;
      v24 = CGRectIntersectsRect(v31, v32);
      if (v24)
      {
        v25 = [MEMORY[0x1E696B098] valueWithCGRect:{v23, v18, width, height}];
        [v19 addObject:v25];

        sideCopy2 = v14 + v23;
        if (direction == 1)
        {
          sideCopy2 = v14 + v14 + v23;
        }
      }

      else
      {
        v18 = height + v18;
        v20 ^= 1u;
        sideCopy2 = side;
      }

      v21 = !v24;
    }

    while (v18 < v9);
  }

  return v19;
}

- (id)_generatePlainWeaveImagePointsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(VUIFavoriteBannerLayout *)self->_layout maxTextWidth];
  v8 = v7 + 20.0;
  v9 = (width - (v7 + 20.0)) * 0.5;
  [(VUIFavoriteBannerView *)self _imageSizeForBannerStyle:1];
  v11 = v10;
  v13 = v12;
  v18.origin.y = 0.0;
  v18.origin.x = v9;
  v18.size.width = v8;
  v18.size.height = height;
  v14 = [(VUIFavoriteBannerView *)self _generatePointsForPlainWeaveSide:0 containerRect:CGRectGetMinX(v18) imageSize:0.0 direction:0.0, width, height, v11, v13];
  [v6 addObjectsFromArray:v14];

  v19.origin.y = 0.0;
  v19.origin.x = v9;
  v19.size.width = v8;
  v19.size.height = height;
  v15 = [(VUIFavoriteBannerView *)self _generatePointsForPlainWeaveSide:1 containerRect:CGRectGetMaxX(v19) imageSize:0.0 direction:0.0, width, height, v11, v13];
  [v6 addObjectsFromArray:v15];

  return v6;
}

- (id)_generateSiderowImagePointsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(VUIFavoriteBannerView *)self _imageSizeForBannerStyle:2];
  v8 = v7;
  v10 = v9;
  [(VUIFavoriteBannerLayout *)self->_layout margin];
  v12 = v11;
  v14 = v13;
  v17 = width - v15 + v16 * -2.0;
  [(VUIFavoriteBannerLayout *)self->_layout maxTextWidth];
  v19 = v17 - v18;
  v20 = [(NSArray *)self->_backgroundImageLogos count];
  v21 = [MEMORY[0x1E69DD2E8] vui_currentSizeClassForWindowWidth:width];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 2)
  {
    v24 = 0;
    if (v20 >= 8)
    {
      v25 = 8;
    }

    else
    {
      v25 = v20;
    }

    v26 = (v25 - 1);
    v27 = 26.0;
  }

  else
  {
    if (v21 <= 3)
    {
      if (v20 >= 8)
      {
        v25 = 8;
      }

      else
      {
        v25 = v20;
      }

      v28 = height - v12 - v14;
      v29 = fmin(v8, v28 * 0.5 + -10.0);
      v27 = 10.0;
      v30 = (v25 - 1) * 10.0;
      if (v20 <= 1)
      {
        v30 = 0.0;
      }

      v31 = fmin(v8, (v19 - v30) / v25);
      v24 = v20 > 4;
      if (v20 <= 4)
      {
        v32 = v31;
      }

      else
      {
        v32 = v29;
      }

      if (v20 <= 4)
      {
        v33 = v31;
      }

      else
      {
        v33 = v29 * 2.0 + 10.0;
      }

      if (v25)
      {
        goto LABEL_27;
      }

      goto LABEL_34;
    }

    v24 = 0;
    if (v20 >= 0xA)
    {
      v25 = 10;
    }

    else
    {
      v25 = v20;
    }

    v26 = (v25 - 1);
    v27 = 20.0;
  }

  v34 = v26 * v27;
  if (v20 <= 1)
  {
    v34 = 0.0;
  }

  v35 = (v19 - v34) / v25;
  v28 = height - v12 - v14;
  v32 = fmin(v35, fmin(v28, v10));
  v33 = v32;
  if (v25)
  {
LABEL_27:
    v36 = 0;
    v37 = (v28 - v33) * 0.5;
    v38 = !v24;
    do
    {
      v39 = [MEMORY[0x1E696B098] valueWithCGRect:{v19 - v32, v37, v32, v32}];
      [v6 addObject:v39];

      v40 = v36 + 1;
      if (v36 + 1 >= v25)
      {
        v41 = 1;
      }

      else
      {
        v41 = v38;
      }

      if ((v41 & 1) == 0)
      {
        v42 = [MEMORY[0x1E696B098] valueWithCGRect:{v19 - v32, v32 + v37 + 10.0, v32, v32}];
        [v6 addObject:v42];

        v40 = v36 + 2;
      }

      v19 = v19 - v32 - v27;
      v36 = v40;
    }

    while (v40 < v25);
  }

LABEL_34:

  return v6;
}

- (void)prepareForCellReuse
{
  v14 = *MEMORY[0x1E69E9840];
  layout = self->_layout;
  self->_layout = 0;

  [(VUILabel *)self->_titleLabel setText:0];
  [(VUILabel *)self->_subtitleLabel setText:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_backgroundImageLogos;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setImage:{0, v9}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end