@interface PKApplicationMessageSummaryView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKApplicationMessageSummaryView)initWithFrame:(CGRect)a3;
- (double)_frameForImageViewAtIndex:(uint64_t)a3 count:(void *)a4 subtitle:;
- (double)_layoutWithContext:(double)a3 bounds:(double)a4;
- (uint64_t)_imageViewsOriginYWithSubtitle:(void *)a1;
- (uint64_t)_updateForTraitCollection:(uint64_t)result;
- (void)layoutSubviews;
- (void)setBlurRadius:(void *)a3 animated:(double)a4 withCompletion:;
- (void)setItems:(unsigned int)a3 animated:;
@end

@implementation PKApplicationMessageSummaryView

- (PKApplicationMessageSummaryView)initWithFrame:(CGRect)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PKApplicationMessageSummaryView;
  v3 = [(PKApplicationMessageSummaryView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 pkui_setMaskType:3];
    v5 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(PKApplicationMessageSummaryView *)v4 setBackgroundColor:v5];

    [(PKApplicationMessageSummaryView *)v4 setUserInteractionEnabled:0];
    v6 = [MEMORY[0x1E695DF70] array];
    imageViews = v4->_imageViews;
    v4->_imageViews = v6;

    v8 = [MEMORY[0x1E695DF70] array];
    removedImageViews = v4->_removedImageViews;
    v4->_removedImageViews = v8;

    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    title = v4->_title;
    v4->_title = v10;

    v12 = v4->_title;
    v13 = PKLocalizedString(&cfstr_SummaryApplica.isa);
    [(UILabel *)v12 setText:v13];

    [(UILabel *)v4->_title sizeToFit];
    [(PKApplicationMessageSummaryView *)v4 addSubview:v4->_title];
    v14 = objc_alloc_init(_PKSummaryViewLabelContainer);
    subtitle = v4->_subtitle;
    v4->_subtitle = v14;

    v16 = [(_PKSummaryViewLabelContainer *)v4->_subtitle label];
    v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v16 setTextColor:v17];

    v18 = [(_PKSummaryViewLabelContainer *)v4->_subtitle label];
    [v18 setNumberOfLines:2];

    [(PKApplicationMessageSummaryView *)v4 addSubview:v4->_subtitle];
    v19 = [(PKApplicationMessageSummaryView *)v4 traitCollection];
    [(PKApplicationMessageSummaryView *)v4 _updateForTraitCollection:v19];

    v24[0] = objc_opt_class();
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v21 = [(PKApplicationMessageSummaryView *)v4 registerForTraitChanges:v20 withHandler:&__block_literal_global_156];
  }

  return v4;
}

- (uint64_t)_updateForTraitCollection:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 424);
    v4 = *MEMORY[0x1E69DDCF8];
    v5 = a2;
    v6 = *MEMORY[0x1E69DB8C8];
    v7 = _PKFontForDesign(v5, *MEMORY[0x1E69DB8C8], v4, 4098, 0, 0);
    [v3 setFont:v7];

    [v2[53] sizeToFit];
    v8 = [v2[54] label];
    v9 = _PKFontForDesign(v5, v6, *MEMORY[0x1E69DDD80], 0x8000, 0, 0);

    [v8 setFont:v9];

    return [v2 setNeedsLayout];
  }

  return result;
}

void __49__PKApplicationMessageSummaryView_initWithFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v4 = a3;
  v5 = [v9 traitCollection];
  if (!v4 || ([v4 preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v8))
  {
    [(PKApplicationMessageSummaryView *)v9 _updateForTraitCollection:v5];
  }
}

- (void)setItems:(unsigned int)a3 animated:
{
  v91 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1 && ([*(a1 + 440) isEqualToArray:v5] & 1) == 0)
  {
    objc_storeStrong((a1 + 440), a2);
    v6 = [MEMORY[0x1E696AD60] string];
    if ([*(a1 + 440) count])
    {
      v7 = [*(a1 + 440) objectAtIndex:0];
      v8 = v7;
      if (v7)
      {
        v9 = *(v7 + 16);
      }

      else
      {
        v9 = 0;
      }

      [v6 appendString:v9];
    }

    if ([*(a1 + 440) count] >= 2)
    {
      v10 = PKLocalizedString(&cfstr_SummaryApplica_0.isa);
      [v6 appendString:v10];

      v11 = [*(a1 + 440) objectAtIndex:1];
      v12 = v11;
      if (v11)
      {
        v13 = *(v11 + 16);
      }

      else
      {
        v13 = 0;
      }

      [v6 appendString:v13];
    }

    if ([*(a1 + 440) count] >= 3)
    {
      v14 = PKLocalizedString(&cfstr_SummaryApplica_0.isa);
      [v6 appendString:v14];

      v15 = PKLocalizedString(&cfstr_MoreApplicatio.isa, &cfstr_Ld.isa, [*(a1 + 440) count] - 2);
      [v6 appendString:v15];
    }

    if (a3)
    {
      [*(a1 + 432) animateTransition];
    }

    v16 = [*(a1 + 432) label];
    [v16 setText:v6];

    v17 = [MEMORY[0x1E695DF70] array];
    for (i = 0; ; ++i)
    {
      v19 = [*(a1 + 440) count] <= 3 ? objc_msgSend(*(a1 + 440), "count") : 3;
      if (v19 <= i)
      {
        break;
      }

      v20 = [*(a1 + 440) objectAtIndexedSubscript:i];
      v21 = v20;
      if (v20)
      {
        if (*(v20 + 24))
        {
          [v17 addObject:v20];
        }
      }
    }

    v72 = v6;
    v73 = v5;
    v22 = *(a1 + 448);
    if (!v22)
    {
      v22 = MEMORY[0x1E695E0F0];
    }

    v23 = v22;
    v24 = [v17 differenceFromArray:v23 withOptions:0 usingEquivalenceTest:&__block_literal_global_86_0];
    v71 = v23;
    v25 = __53__PKApplicationMessageSummaryView_setItems_animated___block_invoke_2([v23 count], v24);
    v26 = [v17 count];
    v70 = v24;
    v27 = [v24 inverseDifference];
    v75 = __53__PKApplicationMessageSummaryView_setItems_animated___block_invoke_2(v26, v27);

    v28 = [MEMORY[0x1E695DF70] array];
    v76 = v17;
    v74 = v25;
    if ([v17 count])
    {
      v29 = 0;
      v30 = 0;
      v77 = 0;
      v78 = 0;
      v31 = 0;
      do
      {
        v79 = [v17 objectAtIndexedSubscript:v29];
        v32 = [MEMORY[0x1E696AD98] numberWithInt:v29];
        v33 = [v75 indexOfObject:v32];

        if (!v75 || v33 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v77 >= [*(a1 + 408) count] || (objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v77), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v25, "containsObject:", v39), v39, (v40 & 1) != 0))
          {
            v36 = objc_alloc_init(_PKSummaryViewImageViewContainer);
            v41 = [(_PKSummaryViewImageViewContainer *)v36 backgroundView];
            [v41 setAlpha:0.0];
            if (v30)
            {
              [a1 insertSubview:v36 belowSubview:v30];
            }

            else
            {
              [a1 addSubview:v36];
            }

            v42 = [*(a1 + 408) count];
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __53__PKApplicationMessageSummaryView_setItems_animated___block_invoke_4;
            aBlock[3] = &unk_1E801C980;
            aBlock[4] = a1;
            aBlock[5] = v42;
            v43 = _Block_copy(aBlock);
            v44 = v43;
            if (v78)
            {
              v45 = [v78 integerValue];
              if (v45 == v42 - 1)
              {
                v44[2](v44, v45);
              }

              else
              {
                (v44[2])(v44, [v78 integerValue]);
              }

              v38 = v79;
            }

            else
            {
              (*(v43 + 2))(v43, 0);
              v38 = v79;
            }

            [(_PKSummaryViewImageViewContainer *)v36 setFrame:?];
            __53__PKApplicationMessageSummaryView_setItems_animated___block_invoke_3(v38, v36);
            [v41 pkui_setAlpha:a3 animated:1.0];

            v25 = v74;
          }

          else
          {
            v36 = [*(a1 + 408) objectAtIndexedSubscript:v77];
            v46 = [MEMORY[0x1E696AD98] numberWithInteger:v77];

            if (a3)
            {
              [(_PKSummaryViewSubviewContainer *)v36 animateTransition];
            }

            ++v77;
            v38 = v79;
            __53__PKApplicationMessageSummaryView_setItems_animated___block_invoke_3(v79, v36);
            v78 = v46;
          }
        }

        else
        {
          v34 = [v25 objectAtIndexedSubscript:v33];
          v35 = [v34 integerValue];

          v36 = [*(a1 + 408) objectAtIndexedSubscript:v35];
          v37 = [MEMORY[0x1E696AD98] numberWithInteger:v35];

          v77 = v35 + 1;
          v78 = v37;
          v38 = v79;
        }

        v47 = v36;

        v30 = v47;
        [v28 addObject:v47];
        if (v31 & 1 | (v38 == 0))
        {
          v48 = 0;
          v49 = 0.0;
        }

        else
        {
          v48 = v38[8];
          if (v38[8])
          {
            v49 = 1.0;
          }

          else
          {
            v49 = 0.0;
          }
        }

        v17 = v76;
        badgeView = v30->_badgeView;

        v51 = badgeView;
        [(UIView *)v51 pkui_setAlpha:a3 animated:v49];
        memset(&v88, 0, sizeof(v88));
        if (v48)
        {
          v52 = *(MEMORY[0x1E69792E8] + 80);
          *&v88.m31 = *(MEMORY[0x1E69792E8] + 64);
          *&v88.m33 = v52;
          v53 = *(MEMORY[0x1E69792E8] + 112);
          *&v88.m41 = *(MEMORY[0x1E69792E8] + 96);
          *&v88.m43 = v53;
          v54 = *(MEMORY[0x1E69792E8] + 16);
          *&v88.m11 = *MEMORY[0x1E69792E8];
          *&v88.m13 = v54;
          v55 = *(MEMORY[0x1E69792E8] + 48);
          *&v88.m21 = *(MEMORY[0x1E69792E8] + 32);
          *&v88.m23 = v55;
        }

        else
        {
          CATransform3DMakeScale(&v88, 0.6, 0.6, 1.0);
        }

        v31 |= v48;
        v87 = v88;
        [(UIView *)v51 pkui_setTransform:&v87 animated:a3];

        ++v29;
        v56 = [v76 count];
        v57 = v30;
      }

      while (v56 > v29);
    }

    else
    {
      v78 = 0;
      v57 = 0;
    }

    v80 = v57;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v58 = a1;
    v59 = *(a1 + 408);
    v60 = [v59 countByEnumeratingWithState:&v83 objects:v90 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v84;
      do
      {
        for (j = 0; j != v61; ++j)
        {
          if (*v84 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = *(*(&v83 + 1) + 8 * j);
          if (([v28 containsObject:v64] & 1) == 0)
          {
            [*(v58 + 416) addObject:v64];
            v65 = v64[52];
            CATransform3DMakeScale(&v88, 0.6, 0.6, 1.0);
            [v65 pkui_setTransform:&v88 animated:a3];
            v82[0] = MEMORY[0x1E69E9820];
            v82[1] = 3221225472;
            v82[2] = __53__PKApplicationMessageSummaryView_setItems_animated___block_invoke_5;
            v82[3] = &unk_1E8012FD0;
            v82[4] = v64;
            v82[5] = v58;
            [v64 pkui_setAlpha:a3 animated:v82 withCompletion:0.0];
          }
        }

        v61 = [v59 countByEnumeratingWithState:&v83 objects:v90 count:16];
      }

      while (v61);
    }

    v66 = *(v58 + 408);
    *(v58 + 408) = v28;
    v67 = v28;

    v68 = *(v58 + 448);
    *(v58 + 448) = v76;
    v69 = v76;

    [v58 setNeedsLayout];
    PKUIViewLayoutIfNeeded(v58, a3, 0);

    v5 = v73;
  }
}

id __53__PKApplicationMessageSummaryView_setItems_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:a1];
  if (a1)
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:v5];
      [v4 addObject:v6];

      ++v5;
    }

    while (a1 != v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 changeType] == 1)
        {
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "index")}];
          [v4 removeObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = [v4 copy];

  return v14;
}

void __53__PKApplicationMessageSummaryView_setItems_animated___block_invoke_3(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = v3[3];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 image];
  v18 = 0;
  v7 = [PKApplicationMessageIconHelpers tintColorWithDescriptor:v6 hasTintColor:&v18];
  v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC88]];
  v9 = [PKApplicationMessageIconHelpers imageWithDescriptor:v6 font:0 hasTintColor:v18 traitCollection:v8 symbolScale:2];
  v10 = [v4 backgroundView];
  v11 = [v4 imageView];
  [v11 setImage:v9];
  if (v18 == 1)
  {
    [v11 setTintColor:v7];
  }

  if (v3)
  {
    v12 = v3[3];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 image];
  v14 = [v13 type];

  if (v14 == 1)
  {
    v15 = [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
    [v10 setBackgroundColor:v15];

    [v9 size];
    v4[54] = v16;
    v4[55] = v17;
  }

  else if (!v14)
  {
    [v10 setBackgroundColor:0];
    *(v4 + 27) = *MEMORY[0x1E695F060];
  }
}

- (double)_frameForImageViewAtIndex:(uint64_t)a3 count:(void *)a4 subtitle:
{
  v7 = a4;
  if (a1)
  {
    v8 = (~a2 + a3) * 29.0 * 0.5;
    if ([a1 _shouldReverseLayoutDirection])
    {
      v9 = v8 + 16.0;
    }

    else
    {
      [a1 bounds];
      v9 = v10 + -16.0 + -29.0 - v8;
    }

    [PKApplicationMessageSummaryView _imageViewsOriginYWithSubtitle:v7];
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

uint64_t __53__PKApplicationMessageSummaryView_setItems_animated___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 416);

  return [v3 removeObject:v2];
}

- (void)setBlurRadius:(void *)a3 animated:(double)a4 withCompletion:
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (a1)
  {
    if (*(a1 + 464) == a4)
    {
      if (v7)
      {
        (*(v7 + 2))(v7, 1);
      }
    }

    else
    {
      if (!*(a1 + 456))
      {
        v9 = objc_alloc(MEMORY[0x1E6979378]);
        v10 = [v9 initWithType:*MEMORY[0x1E6979928]];
        v11 = *(a1 + 456);
        *(a1 + 456) = v10;

        [*(a1 + 456) setName:@"blur"];
        v12 = [a1 layer];
        v20[0] = *(a1 + 456);
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
        [v12 setFilters:v13];
      }

      v14 = [a1 layer];
      if (a2)
      {
        v15 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"filters.blur.inputRadius"];
        [v15 pkui_updateForAdditiveAnimationFromScalar:*(a1 + 464) toScalar:a4];
        if (v8)
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __73__PKApplicationMessageSummaryView_setBlurRadius_animated_withCompletion___block_invoke;
          v18[3] = &unk_1E8010AD8;
          v19 = v8;
          [v15 pkui_setCompletionHandler:v18];
        }

        v16 = [v14 pkui_addAdditiveAnimation:v15];
      }

      *(a1 + 464) = a4;
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
      [v14 setValue:v17 forKeyPath:@"filters.blur.inputRadius"];

      if (v8 && (a2 & 1) == 0)
      {
        v8[2](v8, 1);
      }
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(PKApplicationMessageSummaryView *)&self->super.super.super.isa _layoutWithContext:*MEMORY[0x1E695EFF8] bounds:*(MEMORY[0x1E695EFF8] + 8), a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)_layoutWithContext:(double)a3 bounds:(double)a4
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0.0;
  }

  [a1[53] bounds];
  v9 = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PKApplicationMessageSummaryView__layoutWithContext_bounds___block_invoke;
  aBlock[3] = &__block_descriptor_40_e50_v48__0__UIView_8_CGRect__CGPoint_dd__CGSize_dd__16l;
  aBlock[4] = a2;
  v10 = _Block_copy(aBlock);
  (v10)[2](v10, a1[53], 16.0, 16.0, a5 + -32.0, v9);
  v11 = [a1 _shouldReverseLayoutDirection];
  [a1[51] count];
  PKFloatRoundToPixel();
  if (v11)
  {
    v13 = v12 + 16.0;
  }

  else
  {
    v13 = 16.0;
  }

  v14 = v9 + 16.0 + 1.0;
  v15 = v12 + -32.0;
  if (v11)
  {
    v16 = a5 - v13 + -16.0;
  }

  else
  {
    v16 = v15;
  }

  v17 = [a1[54] label];
  [v17 sizeThatFits:{v16, 1.79769313e308}];
  v19.n128_u64[0] = v18.n128_u64[0];
  PKFloatCeilToPixel(v19, v18);
  v21 = v20;

  (v10)[2](v10, a1[54], v13, v14, v16, v21);
  if ([a1[51] count])
  {
    v22 = 0;
    do
    {
      v23 = [a1[51] objectAtIndex:v22];
      v24 = -[PKApplicationMessageSummaryView _frameForImageViewAtIndex:count:subtitle:](a1, v22, [a1[51] count], a1[54]);
      (v10[2])(v10, v23, v24);

      ++v22;
    }

    while ([a1[51] count] > v22);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = a1[52];
  v26 = [v25 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v39 + 1) + 8 * i);
        [v30 frame];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        [PKApplicationMessageSummaryView _imageViewsOriginYWithSubtitle:?];
        (v10)[2](v10, v30, v32, v37, v34, v36);
      }

      v27 = [v25 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v27);
  }

  return a5;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PKApplicationMessageSummaryView;
  [(PKApplicationMessageSummaryView *)&v7 layoutSubviews];
  IsAnimated = PKCATrackedLayoutIsAnimated();
  [(PKApplicationMessageSummaryView *)self bounds];
  [(PKApplicationMessageSummaryView *)&self->super.super.super.isa _layoutWithContext:v4 bounds:v5, v6];
}

uint64_t __61__PKApplicationMessageSummaryView__layoutWithContext_bounds___block_invoke(uint64_t result, void *a2)
{
  if (*(result + 36) == 1)
  {
    return [a2 pkui_setFrame:*(result + 32) animated:?];
  }

  return result;
}

- (uint64_t)_imageViewsOriginYWithSubtitle:(void *)a1
{
  v1 = a1;
  [v1 frame];
  CGRectGetMaxY(v6);
  v2 = [v1 label];

  v3 = [v2 font];
  [v3 descender];

  return PKFloatRoundToPixel();
}

@end