@interface PKExpressBannerLabelView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_updateLabelAnimated:(uint64_t)animated;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKExpressBannerLabelView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = PKExpressBannerLabelView;
  [(PKExpressBannerLabelView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKExpressBannerLabelView *)self traitCollection];
  if (!changeCopy || ([changeCopy preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(traitCollection, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v8))
  {
    [PKExpressBannerLabelView _updateLabelAnimated:?];
  }
}

- (void)_updateLabelAnimated:(uint64_t)animated
{
  v47 = *MEMORY[0x1E69E9840];
  if (animated)
  {
    isHidden = [animated isHidden];
    v4 = *(animated + 424);
    v3 = *(animated + 432);
    v5 = *(animated + 440);
    if (v5)
    {
      if (isHidden)
      {
        [v5 removeFromSuperview];
        v6 = *(animated + 448);
        v7 = *(animated + 448);
        *(animated + 448) = 0;

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        layer = v6;
        v9 = [layer countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v9)
        {
          v10 = *v38;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v38 != v10)
              {
                objc_enumerationMutation(layer);
              }

              [*(*(&v37 + 1) + 8 * i) removeFromSuperview];
            }

            v9 = [layer countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v9);
        }

        v12 = layer;
      }

      else
      {
        if (!*(animated + 448))
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v14 = *(animated + 448);
          *(animated + 448) = v13;

          v5 = *(animated + 440);
        }

        v15 = v5;
        [*(animated + 448) addObject:v15];
        layer = [v15 layer];
        [layer setValue:&unk_1F3CC6D18 forKeyPath:@"filters.blur.inputRadius"];
        v16 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"filters.blur.inputRadius"];
        [v16 pkui_updateForAdditiveAnimationFromScalar:0.0 toScalar:8.33333333];
        v17 = [layer pkui_addAdditiveAnimation:v16];
        objc_initWeak(&location, animated);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __49__PKExpressBannerLabelView__updateLabelAnimated___block_invoke;
        v41[3] = &unk_1E80113B0;
        objc_copyWeak(&v43, &location);
        v12 = v15;
        v42 = v12;
        [v12 pkui_setAlpha:1 animated:v41 withCompletion:0.0];

        objc_destroyWeak(&v43);
        objc_destroyWeak(&location);
      }

      v18 = *(animated + 440);
      *(animated + 440) = 0;

      *(animated + 424) = *MEMORY[0x1E695F060];
    }

    if (*(animated + 416))
    {
      traitCollection = [animated traitCollection];
      if (traitCollection)
      {
        v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        v21 = *(animated + 440);
        *(animated + 440) = v20;

        [*(animated + 440) setNumberOfLines:1];
        v22 = *(animated + 440);
        v23 = [MEMORY[0x1E69DB878] sbui_systemAperturePreferredFontForTextStyle:4 compatibleWithTraitCollection:traitCollection];
        [v22 setFont:v23];

        [*(animated + 440) setLineBreakMode:4];
        [*(animated + 440) setAdjustsFontSizeToFitWidth:1];
        [*(animated + 440) setMinimumScaleFactor:0.8];
        [*(animated + 440) setText:*(animated + 416)];
        [*(animated + 440) sizeToFit];
        v24 = *(animated + 408);
        if (v24 >= 4)
        {
          __break(1u);
          return;
        }

        [*(animated + 440) setAnchorPoint:{dbl_1BE1170B8[v24], dbl_1BE117098[v24]}];
        layer2 = [*(animated + 440) layer];
        v26 = objc_alloc(MEMORY[0x1E6979378]);
        v27 = [v26 initWithType:*MEMORY[0x1E6979928]];
        [v27 setName:@"blur"];
        v45 = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
        [layer2 setFilters:v28];

        [animated addSubview:*(animated + 440)];
        [*(animated + 440) frame];
        *(animated + 424) = v29;
        *(animated + 432) = v30;
        [animated setNeedsLayout];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __49__PKExpressBannerLabelView__updateLabelAnimated___block_invoke_2;
        v35[3] = &unk_1E8013F80;
        v36 = isHidden ^ 1;
        v35[4] = animated;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v35];
        if ((isHidden & 1) == 0)
        {
          [*(animated + 440) pkui_setAlpha:1 animated:1.0];
          v31 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"filters.blur.inputRadius"];
          [v31 pkui_updateForAdditiveAnimationFromScalar:8.33333333 toScalar:0.0];
          v32 = [layer2 pkui_addAdditiveAnimation:v31];
        }

        if (v4 != *(animated + 424) || v3 != *(animated + 432))
        {
          WeakRetained = objc_loadWeakRetained((animated + 456));
          [WeakRetained expressLabelViewDidChangeSize:animated];
        }

        goto LABEL_30;
      }
    }

    if (v4 != *(animated + 424) || v3 != *(animated + 432))
    {
      traitCollection = objc_loadWeakRetained((animated + 456));
      [traitCollection expressLabelViewDidChangeSize:animated];
LABEL_30:
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (self->_label)
  {
    p_height = &self->_size.height;
    v4 = fmin(self->_size.width, fits.width);
  }

  else
  {
    p_height = (MEMORY[0x1E695F060] + 8);
    v4 = *MEMORY[0x1E695F060];
  }

  v5 = *p_height;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PKExpressBannerLabelView;
  [(PKExpressBannerLabelView *)&v14 layoutSubviews];
  [(PKExpressBannerLabelView *)self bounds];
  if (self && self->_alignmentEdge >= 4)
  {
    __break(1u);
  }

  label = self->_label;
  if (label)
  {
    PKSizeAlignedInRect();
    [(UILabel *)label setFrame:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_obsoleteLabels;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 frame];
        PKSizeAlignedInRect();
        [v9 setFrame:?];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

void __49__PKExpressBannerLabelView__updateLabelAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) superview];

    WeakRetained = v4;
    if (v3)
    {
      [v4[56] removeObjectIdenticalTo:*(a1 + 32)];
      [*(a1 + 32) removeFromSuperview];
      WeakRetained = v4;
    }
  }
}

uint64_t __49__PKExpressBannerLabelView__updateLabelAnimated___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(*(a1 + 32) + 440) setAlpha:0.0];
  }

  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

@end