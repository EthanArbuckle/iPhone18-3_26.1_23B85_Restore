@interface SiriUISnippetControllerCell
+ (CGRect)contentBoundsForCollectionViewCellBounds:(CGRect)a3 snippetViewController:(id)a4;
+ (id)reuseIdentifier;
- (SiriUISnippetControllerCell)initWithFrame:(CGRect)a3;
- (SiriUISnippetViewController)snippetViewController;
- (UIEdgeInsets)_snippetEdgeInsets;
- (double)_heightForFooterView;
- (double)_heightForHeaderView;
- (double)_heightForTransparentFooterView;
- (double)_heightForTransparentHeaderView;
- (void)_configureSubviewsForCurrentInset;
- (void)_setFooterView:(id)a3;
- (void)_setHeaderView:(id)a3;
- (void)_setTransparentFooterView:(id)a3;
- (void)_setTransparentHeaderView:(id)a3;
- (void)_snippetPunchOutButtonTapped:(id)a3;
- (void)animateSnippetCancellationWithCompletion:(id)a3;
- (void)animateSnippetConfirmationWithCompletion:(id)a3;
- (void)animateSnippetResizeToSize:(CGSize)a3 completion:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setShowBackgroundView:(BOOL)a3;
- (void)setSnippetViewController:(id)a3;
@end

@implementation SiriUISnippetControllerCell

+ (CGRect)contentBoundsForCollectionViewCellBounds:(CGRect)a3 snippetViewController:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  if (([v8 usePlatterStyle] & 1) != 0 || objc_msgSend(v8, "_hasConfirmationOrCancelledInsets"))
  {
    UIRectInset();
    x = v9;
    y = v10;
    width = v11;
    height = v12;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (SiriUISnippetControllerCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v29.receiver = self;
  v29.super_class = SiriUISnippetControllerCell;
  v7 = [(SiriUISnippetControllerCell *)&v29 initWithFrame:?];
  if (v7)
  {
    v8 = +[SiriUIKeyline keyline];
    v9 = *(v7 + 81);
    *(v7 + 81) = v8;

    v10 = +[SiriUIContentButton button];
    v11 = *(v7 + 82);
    *(v7 + 82) = v10;

    [*(v7 + 82) addTarget:v7 action:sel__snippetPunchOutButtonTapped_ forControlEvents:64];
    *(v7 + 760) = SiriUIDefaultSnippetViewInsets;
    *(v7 + 776) = *&qword_2694DDF00;
    [v7 setPreservesSuperviewLayoutMargins:1];
    v12 = [v7 contentView];
    [v12 setPreservesSuperviewLayoutMargins:1];

    v13 = [MEMORY[0x277D60108] labelWithHeaderFont];
    v14 = *(v7 + 87);
    *(v7 + 87) = v13;

    v15 = *(v7 + 87);
    v16 = [MEMORY[0x277D75348] siriui_textColor];
    [v15 setTextColor:v16];

    v17 = *(v7 + 87);
    v18 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v19 = [v18 siriUILocalizedStringForKey:@"CANCELED"];
    [v17 setText:v19];

    v20 = objc_alloc(MEMORY[0x277D75D18]);
    v21 = [v20 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v22 = *(v7 + 86);
    *(v7 + 86) = v21;

    v23 = objc_alloc(MEMORY[0x277D75D18]);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v24 = CGRectGetWidth(v30);
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v25 = [v23 initWithFrame:{0.0, 0.0, v24, CGRectGetHeight(v31)}];
    v26 = *(v7 + 85);
    *(v7 + 85) = v25;

    v27 = [v7 contentView];
    [v27 addSubview:*(v7 + 85)];
  }

  return v7;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = SiriUISnippetControllerCell;
  [(SiriUISnippetControllerCell *)&v4 prepareForReuse];
  v3 = [(SiriUISnippetControllerCell *)self snippetViewController];
  [v3 setContainingView:0];
  [(UILabel *)self->_cancelledLabel removeFromSuperview];
  [(SiriUIContentButton *)self->_snippetPunchOutButton removeFromSuperview];
  [(SiriUIKeyline *)self->_bottomKeyline removeFromSuperview];
  [(UIView *)self->_cancelledTouchPreventionView removeFromSuperview];
  [(SiriUIKeyline *)self->_bottomKeyline setAlpha:1.0];
  self->_topPadding = 0.0;
  [(SiriUISnippetControllerCell *)self setSnippetViewController:0];
}

- (void)layoutSubviews
{
  [(UIView *)self recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
  v6.receiver = self;
  v6.super_class = SiriUISnippetControllerCell;
  [(SiriUISnippetControllerCell *)&v6 layoutSubviews];
  v3 = [(SiriUISnippetControllerCell *)self snippetViewController];
  [v3 siriWillLayoutSnippetView];

  [(SiriUISnippetControllerCell *)self _configureSubviewsForCurrentInset];
  v4 = [(SiriUISnippetControllerCell *)self snippetViewController];
  [v4 _cellDidLayoutSubviews];

  v5 = [(SiriUISnippetControllerCell *)self snippetViewController];
  [v5 siriDidLayoutSnippetView];
}

- (void)_configureSubviewsForCurrentInset
{
  [(SiriUISnippetControllerCell *)self bounds];
  UIRectInset();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SiriUISnippetControllerCell *)self snippetViewController];
  if (([v11 _hasConfirmationButtons] & 1) == 0)
  {

    goto LABEL_5;
  }

  v12 = [(SiriUISnippetControllerCell *)self snippetViewController];
  if (![v12 _willAnimateConfirmation])
  {
    v14 = [(SiriUISnippetControllerCell *)self snippetViewController];
    v15 = [v14 _willAnimateCancellation];

    if (v15)
    {
      goto LABEL_7;
    }

LABEL_5:
    [(SiriUISnippetControllerCell *)self _heightForFooterView];
    v79 = v13;
    goto LABEL_8;
  }

LABEL_7:
  v16 = [(SiriUISnippetControllerCell *)self snippetViewController];
  [objc_msgSend(v16 "footerViewClass")];
  v18 = v17;

  v79 = v18;
  v10 = v10 + v18;
LABEL_8:
  v19 = objc_opt_class();
  v20 = [(SiriUISnippetControllerCell *)self snippetViewController];
  [v19 contentBoundsForCollectionViewCellBounds:v20 snippetViewController:{v4, v6, v8, v10}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [(SiriUISnippetControllerCell *)self _heightForTransparentHeaderView];
  v30 = v29;
  [(SiriUIReusableView *)self->_transparentHeaderView setFrame:v22, v24, v26, v29];
  [(SiriUISnippetControllerCell *)self _heightForTransparentFooterView];
  v32 = v31;
  v82.origin.x = v22;
  v82.origin.y = v24;
  v82.size.width = v26;
  v82.size.height = v28;
  Height = CGRectGetHeight(v82);
  v83.origin.x = v22;
  v83.origin.y = v24;
  v83.size.width = v26;
  v83.size.height = v32;
  v34 = Height - CGRectGetHeight(v83);
  [(SiriUIReusableView *)self->_transparentFooterView setFrame:v22, v34, v26, v32];
  v84.origin.x = v22;
  v84.origin.y = v24;
  v84.size.width = v26;
  v84.size.height = v30;
  CGRectGetHeight(v84);
  v85.origin.x = v22;
  v85.origin.y = v34;
  v85.size.width = v26;
  v85.size.height = v32;
  CGRectGetHeight(v85);
  UIRectInset();
  [(UIView *)self->_clippingContainerView setFrame:?];
  [(UIView *)self->_clippingContainerView bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  [(UIView *)self->_snippetBackgroundView setFrame:?];
  [(UIView *)self->_cancelledTouchPreventionView setFrame:v36, v38, v40, v42];
  [(SiriUISnippetControllerCell *)self _heightForHeaderView];
  v44 = v43;
  [(SiriUIReusableView *)self->_headerView setFrame:v36, v38, v40, v43];
  if (objc_opt_respondsToSelector())
  {
    [(SiriUIReusableView *)self->_footerView edgeInsets];
    v46 = v36 + v45;
    v48 = v38 + v47;
    v50 = v40 - (v45 + v49);
  }

  else
  {
    v46 = v36;
    v48 = v38;
    v50 = v40;
  }

  v86.origin.x = v36;
  v86.origin.y = v38;
  v86.size.width = v40;
  v86.size.height = v42;
  v77 = v42;
  v51 = CGRectGetHeight(v86);
  v87.origin.x = v46;
  v87.origin.y = v48;
  v87.size.width = v50;
  v87.size.height = v79;
  v52 = v51 - CGRectGetHeight(v87);
  [(SiriUIReusableView *)self->_footerView setFrame:v46, v52, v50, v79];
  v88.origin.x = v36;
  v88.origin.y = v38;
  v88.size.width = v40;
  v88.size.height = v44;
  v74 = v38 + CGRectGetHeight(v88);
  v89.origin.x = v36;
  v89.origin.y = v38;
  v89.size.width = v40;
  v89.size.height = v44;
  v53 = CGRectGetHeight(v89);
  v54 = v46;
  v55 = v44;
  v56 = v53;
  v90.origin.x = v54;
  v90.origin.y = v52;
  v90.size.width = v50;
  v90.size.height = v79;
  v57 = v77 - (v56 + CGRectGetHeight(v90));
  v91.origin.x = v36;
  v91.origin.y = v38;
  v91.size.width = v40;
  v91.size.height = v55;
  v95.origin.x = v36;
  v95.origin.y = v74;
  v95.size.width = v40;
  v95.size.height = v57;
  v92 = CGRectUnion(v91, v95);
  x = v92.origin.x;
  y = v92.origin.y;
  v78 = v92.size.height;
  width = v92.size.width;
  [(SiriUISnippetControllerCell *)self _snippetEdgeInsets];
  v59 = v36 + v58;
  v61 = v74 + v60;
  v63 = v40 - (v58 + v62);
  v65 = v57 - (v60 + v64);
  v66 = [(SiriUISnippetControllerCell *)self snippetViewController];
  v67 = [v66 view];
  [v67 setFrame:{v59, v61, v63, v65}];

  [(SiriUIKeyline *)self->_bottomKeyline sizeThatFits:v40, v57];
  v69 = v68;
  v71 = v70;
  v93.origin.x = v36;
  v93.origin.y = v74;
  v93.size.width = v40;
  v93.size.height = v57;
  MaxY = CGRectGetMaxY(v93);
  v94.origin.x = v36;
  v94.origin.y = v74;
  v94.size.width = v69;
  v94.size.height = v71;
  [(SiriUIKeyline *)self->_bottomKeyline setFrame:v36, MaxY - CGRectGetHeight(v94), v69, v71];
  [(SiriUIContentButton *)self->_snippetPunchOutButton setFrame:x, y, width, v78];
  [(UILabel *)self->_cancelledLabel sizeThatFits:width, v78];
  UIRectCenteredIntegralRect();
  cancelledLabel = self->_cancelledLabel;

  [(UILabel *)cancelledLabel setFrame:?];
}

- (double)_heightForHeaderView
{
  v3 = [(SiriUISnippetControllerCell *)self snippetViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SiriUISnippetControllerCell *)self snippetViewController];
    [v5 desiredHeightForHeaderView];
    v7 = v6;

    return v7;
  }

  else
  {
    v9 = objc_opt_class();

    [v9 defaultHeight];
  }

  return result;
}

- (double)_heightForFooterView
{
  v3 = [(SiriUISnippetControllerCell *)self snippetViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SiriUISnippetControllerCell *)self snippetViewController];
    [v5 desiredHeightForFooterView];
    v7 = v6;

    return v7;
  }

  else
  {
    v9 = objc_opt_class();

    [v9 defaultHeight];
  }

  return result;
}

- (double)_heightForTransparentHeaderView
{
  v3 = [(SiriUISnippetControllerCell *)self snippetViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SiriUISnippetControllerCell *)self snippetViewController];
    [v5 desiredHeightForTransparentHeaderView];
    v7 = v6;

    return v7;
  }

  else
  {
    v9 = objc_opt_class();

    [v9 defaultHeight];
  }

  return result;
}

- (double)_heightForTransparentFooterView
{
  v3 = [(SiriUISnippetControllerCell *)self snippetViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SiriUISnippetControllerCell *)self snippetViewController];
    [v5 desiredHeightForTransparentFooterView];
    v7 = v6;

    return v7;
  }

  else
  {
    v9 = objc_opt_class();

    [v9 defaultHeight];
  }

  return result;
}

- (void)setSnippetViewController:(id)a3
{
  v4 = a3;
  v5 = [(SiriUISnippetControllerCell *)self contentView];
  WeakRetained = objc_loadWeakRetained(&self->_snippetViewController);
  v7 = [WeakRetained view];

  if ([v7 isDescendantOfView:v5])
  {
    v8 = objc_loadWeakRetained(&self->_snippetViewController);
    v9 = [v8 view];
    [v9 removeFromSuperview];
  }

  v10 = objc_storeWeak(&self->_snippetViewController, v4);

  if (v4)
  {
    v11 = objc_loadWeakRetained(&self->_snippetViewController);
    [v11 setContainingView:self];

    v12 = objc_loadWeakRetained(&self->_snippetViewController);
    v13 = [v12 usePlatterStyle];

    if (v13)
    {
      bottomKeyline = self->_bottomKeyline;
      v15 = [MEMORY[0x277D75348] siriui_platterKeylineColor];
      [(SiriUIKeyline *)bottomKeyline setCustomBackgroundColor:v15];
    }

    snippetBackgroundView = self->_snippetBackgroundView;
    if (!snippetBackgroundView || self->_cellIsUsingPlatterStyle != v13)
    {
      [(UIView *)snippetBackgroundView removeFromSuperview];
      v17 = objc_alloc(MEMORY[0x277D75D18]);
      v18 = [v17 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      v19 = self->_snippetBackgroundView;
      self->_snippetBackgroundView = v18;

      if (v13)
      {
        v20 = 1;
        v21 = [MEMORY[0x277D26718] materialViewWithRecipe:9 configuration:1];
        materialView = self->_materialView;
        self->_materialView = v21;

        [(UIView *)self->_materialView setAutoresizingMask:18];
        [(UIView *)self->_snippetBackgroundView addSubview:self->_materialView];
        v23 = 15.0;
      }

      else
      {
        v24 = self->_snippetBackgroundView;
        v25 = [MEMORY[0x277D75348] siriui_snippetBackgroundColor];
        [(UIView *)v24 setBackgroundColor:v25];

        v20 = 0;
        v23 = 0.0;
      }

      v26 = [(UIView *)self->_clippingContainerView layer];
      [v26 setCornerRadius:v23];

      v27 = [(UIView *)self->_clippingContainerView layer];
      [v27 setMasksToBounds:v13];

      self->_cellIsUsingPlatterStyle = v20;
      [(UIView *)self->_clippingContainerView addSubview:self->_snippetBackgroundView];
      [(UIView *)self->_clippingContainerView sendSubviewToBack:self->_snippetBackgroundView];
    }

    clippingContainerView = self->_clippingContainerView;
    v29 = objc_loadWeakRetained(&self->_snippetViewController);
    v30 = [v29 view];
    [(UIView *)clippingContainerView addSubview:v30];

    v31 = objc_loadWeakRetained(&self->_snippetViewController);
    v32 = [v31 _headerView];
    [(SiriUISnippetControllerCell *)self _setHeaderView:v32];

    v33 = objc_loadWeakRetained(&self->_snippetViewController);
    v34 = [v33 _footerView];
    [(SiriUISnippetControllerCell *)self _setFooterView:v34];

    v35 = objc_loadWeakRetained(&self->_snippetViewController);
    v36 = [v35 _transparentHeaderView];
    [(SiriUISnippetControllerCell *)self _setTransparentHeaderView:v36];

    v37 = objc_loadWeakRetained(&self->_snippetViewController);
    v38 = [v37 _transparentFooterView];
    [(SiriUISnippetControllerCell *)self _setTransparentFooterView:v38];

    v39 = objc_loadWeakRetained(&self->_snippetViewController);
    [v39 defaultViewInsets];
    [(SiriUISnippetControllerCell *)self _setSnippetEdgeInsets:?];

    v40 = objc_loadWeakRetained(&self->_snippetViewController);
    LODWORD(v38) = [v40 isTransparent];

    if (v38)
    {
      [(UIView *)self->_snippetBackgroundView removeFromSuperview];
    }

    else
    {
      [(UIView *)self->_clippingContainerView addSubview:self->_snippetBackgroundView];
      [(UIView *)self->_clippingContainerView sendSubviewToBack:self->_snippetBackgroundView];
    }

    v41 = objc_loadWeakRetained(&self->_snippetViewController);
    v42 = [v41 snippetPunchOut];

    if (v42)
    {
      [(UIView *)self->_clippingContainerView addSubview:self->_snippetPunchOutButton];
      [(UIView *)self->_clippingContainerView bringSubviewToFront:self->_snippetPunchOutButton];
    }

    v43 = objc_loadWeakRetained(&self->_snippetViewController);
    if ([v43 isCancelled])
    {
      v44 = objc_loadWeakRetained(&self->_snippetViewController);
      v45 = [v44 _willAnimateCancellation];

      if ((v45 & 1) == 0)
      {
        v46 = MEMORY[0x277D75D18];
        v58 = MEMORY[0x277D85DD0];
        v59 = 3221225472;
        v60 = __56__SiriUISnippetControllerCell_setSnippetViewController___block_invoke;
        v61 = &unk_279C59D78;
        v62 = self;
        v47 = &v58;
        goto LABEL_24;
      }
    }

    else
    {
    }

    v48 = objc_loadWeakRetained(&self->_snippetViewController);
    if (([v48 isConfirmed] & 1) == 0)
    {

      goto LABEL_26;
    }

    v49 = objc_loadWeakRetained(&self->_snippetViewController);
    v50 = [v49 _willAnimateConfirmation];

    if (v50)
    {
LABEL_26:
      v51 = objc_loadWeakRetained(&self->_snippetViewController);
      v52 = [v51 _hasConfirmationButtons];

      if (v52)
      {
        [(UIView *)self->_clippingContainerView addSubview:self->_bottomKeyline];
      }

      [(SiriUISnippetControllerCell *)self setNeedsLayout];
      goto LABEL_29;
    }

    v46 = MEMORY[0x277D75D18];
    v53 = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = __56__SiriUISnippetControllerCell_setSnippetViewController___block_invoke_2;
    v56 = &unk_279C59D78;
    v57 = self;
    v47 = &v53;
LABEL_24:
    [v46 performWithoutAnimation:{v47, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62}];
    goto LABEL_26;
  }

LABEL_29:
}

- (void)_setHeaderView:(id)a3
{
  v5 = a3;
  [(SiriUIReusableView *)self->_headerView removeFromSuperview];
  objc_storeStrong(&self->_headerView, a3);
  if (self->_headerView)
  {
    [(UIView *)self->_clippingContainerView addSubview:?];
  }
}

- (void)_setFooterView:(id)a3
{
  v5 = a3;
  [(SiriUIReusableView *)self->_footerView removeFromSuperview];
  objc_storeStrong(&self->_footerView, a3);
  if (self->_footerView)
  {
    [(UIView *)self->_clippingContainerView addSubview:?];
  }
}

- (void)_setTransparentHeaderView:(id)a3
{
  v6 = a3;
  [(SiriUIReusableView *)self->_transparentHeaderView removeFromSuperview];
  objc_storeStrong(&self->_transparentHeaderView, a3);
  if (self->_transparentHeaderView)
  {
    v5 = [(SiriUISnippetControllerCell *)self contentView];
    [v5 addSubview:self->_transparentHeaderView];
  }
}

- (void)_setTransparentFooterView:(id)a3
{
  v6 = a3;
  [(SiriUIReusableView *)self->_transparentFooterView removeFromSuperview];
  objc_storeStrong(&self->_transparentFooterView, a3);
  if (self->_transparentFooterView)
  {
    v5 = [(SiriUISnippetControllerCell *)self contentView];
    [v5 addSubview:self->_transparentFooterView];
  }
}

- (void)animateSnippetCancellationWithCompletion:(id)a3
{
  clippingContainerView = self->_clippingContainerView;
  cancelledTouchPreventionView = self->_cancelledTouchPreventionView;
  v6 = a3;
  [(UIView *)clippingContainerView addSubview:cancelledTouchPreventionView];
  [(UIView *)self->_clippingContainerView bringSubviewToFront:self->_cancelledTouchPreventionView];
  [(UIView *)self->_clippingContainerView addSubview:self->_cancelledLabel];
  [(UIView *)self->_clippingContainerView bringSubviewToFront:self->_cancelledLabel];
  [(UILabel *)self->_cancelledLabel setAlpha:0.0];
  [(SiriUIReusableView *)self->_footerView frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(UIView *)self->_clippingContainerView frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v28.origin.x = v8;
  v28.origin.y = v10;
  v28.size.width = v12;
  v28.size.height = v14;
  Height = CGRectGetHeight(v28);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__SiriUISnippetControllerCell_animateSnippetCancellationWithCompletion___block_invoke;
  v24[3] = &unk_279C5A338;
  v24[4] = self;
  *&v24[5] = v8;
  *&v24[6] = v10;
  *&v24[7] = v12;
  v24[8] = 0;
  v24[9] = v16;
  v24[10] = v18;
  v24[11] = v20;
  *&v24[12] = v22 - Height;
  v25 = *MEMORY[0x277CBF348];
  v26 = v20;
  v27 = v22 - Height;
  [MEMORY[0x277D75D18] animateWithDuration:v24 animations:v6 completion:0.3];
}

uint64_t __72__SiriUISnippetControllerCell_animateSnippetCancellationWithCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 728) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 680) setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  [*(*(a1 + 32) + 664) setFrame:{*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)}];
  v2 = [*(a1 + 32) snippetViewController];
  v3 = [v2 view];
  [v3 setAlpha:0.08];

  [*(*(a1 + 32) + 728) setAlpha:0.08];
  [*(*(a1 + 32) + 720) setAlpha:0.08];
  [*(*(a1 + 32) + 648) setAlpha:0.0];
  v4 = *(*(a1 + 32) + 696);

  return [v4 setAlpha:1.0];
}

- (void)animateSnippetConfirmationWithCompletion:(id)a3
{
  v4 = a3;
  [(SiriUISnippetControllerCell *)self _heightForFooterView];
  v6 = v5;
  [(UIView *)self->_clippingContainerView frame];
  v8 = v7;
  v25 = v9;
  v11 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_snippetViewController);
  [WeakRetained desiredHeight];
  v14 = v13;
  v15 = objc_loadWeakRetained(&self->_snippetViewController);
  [v15 desiredHeightForHeaderView];
  v17 = v6 + v14 + v16;

  [(SiriUIReusableView *)self->_footerView frame];
  v19 = v18;
  v21 = v20;
  v27 = v20;
  v29.origin.x = v8;
  v29.origin.y = v25;
  v22 = v11;
  v29.size.width = v11;
  v29.size.height = v17;
  MaxY = CGRectGetMaxY(v29);
  v23 = *MEMORY[0x277CBF348];
  v24 = *(MEMORY[0x277CBF348] + 8);
  [(SiriUIReusableView *)self->_footerView setFrame:v19, MaxY, v21, v6];
  [(UIView *)self->_clippingContainerView setFrame:v8, v25, v22, v17];
  [(UIView *)self->_snippetBackgroundView setFrame:v23, v24, v22, v17];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __72__SiriUISnippetControllerCell_animateSnippetConfirmationWithCompletion___block_invoke;
  v28[3] = &unk_279C5A338;
  v28[4] = self;
  *&v28[5] = v19;
  *&v28[6] = MaxY;
  *&v28[7] = v27;
  v28[8] = 0;
  *&v28[9] = v8;
  *&v28[10] = v25;
  *&v28[11] = v22;
  *&v28[12] = v17 - v6;
  *&v28[13] = v23;
  *&v28[14] = v24;
  *&v28[15] = v22;
  *&v28[16] = v17 - v6;
  [MEMORY[0x277D75D18] animateWithDuration:v28 animations:v4 completion:0.3];
}

uint64_t __72__SiriUISnippetControllerCell_animateSnippetConfirmationWithCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 728) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 680) setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  [*(*(a1 + 32) + 664) setFrame:{*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)}];
  v2 = *(*(a1 + 32) + 648);

  return [v2 setAlpha:0.0];
}

- (void)animateSnippetResizeToSize:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  v6 = a4;
  [(SiriUISnippetControllerCell *)self _heightForFooterView];
  v8 = v7;
  [(UIView *)self->_clippingContainerView frame];
  v24 = v10;
  v25 = v9;
  v12 = v11;
  v13 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  [(SiriUIReusableView *)self->_footerView frame];
  v22 = v15;
  v23 = v16;
  v27.origin.x = v13;
  v27.origin.y = v14;
  v27.size.width = v12;
  v27.size.height = height;
  v17 = CGRectGetMaxY(v27) - v8;
  WeakRetained = objc_loadWeakRetained(&self->_snippetViewController);
  v19 = [WeakRetained view];
  [v19 frame];
  v20 = CGRectGetHeight(v28);

  v29.origin.x = v13;
  v29.origin.y = v14;
  v29.size.width = v12;
  v29.size.height = height - v8;
  v21 = v20 - CGRectGetHeight(v29);
  if (v21 < 0.0)
  {
    v21 = -v21;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __69__SiriUISnippetControllerCell_animateSnippetResizeToSize_completion___block_invoke;
  v26[3] = &unk_279C5A360;
  v26[4] = self;
  v26[5] = v22;
  *&v26[6] = v17;
  v26[7] = v23;
  *&v26[8] = v8;
  v26[9] = v25;
  v26[10] = v24;
  *&v26[11] = v12;
  *&v26[12] = height;
  *&v26[13] = v13;
  *&v26[14] = v14;
  *&v26[15] = v12;
  *&v26[16] = height;
  *&v26[17] = v13;
  *&v26[18] = v14;
  *&v26[19] = v12;
  *&v26[20] = height - v8;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v26 usingSpringWithDamping:v6 initialSpringVelocity:fmin(v21 * 0.00005 + 0.2 options:0.4) animations:0.0 completion:{1.0, 0.5}];
}

void __69__SiriUISnippetControllerCell_animateSnippetResizeToSize_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 728) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 680) setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  [*(*(a1 + 32) + 664) setFrame:{*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)}];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 752));
  v2 = [WeakRetained view];
  [v2 setFrame:{*(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160)}];
}

- (void)_snippetPunchOutButtonTapped:(id)a3
{
  v3 = [(SiriUISnippetControllerCell *)self snippetViewController];
  [v3 _snippetPunchOutButtonTapped];
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 stringByAppendingString:@"ReuseIdentifier"];

  return v4;
}

- (void)setShowBackgroundView:(BOOL)a3
{
  if (a3)
  {
    [(UIView *)self->_clippingContainerView addSubview:self->_snippetBackgroundView];
    clippingContainerView = self->_clippingContainerView;
    snippetBackgroundView = self->_snippetBackgroundView;

    [(UIView *)clippingContainerView sendSubviewToBack:snippetBackgroundView];
  }

  else
  {
    v6 = self->_snippetBackgroundView;

    [(UIView *)v6 removeFromSuperview];
  }
}

- (SiriUISnippetViewController)snippetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_snippetViewController);

  return WeakRetained;
}

- (UIEdgeInsets)_snippetEdgeInsets
{
  top = self->_snippetEdgeInsets.top;
  left = self->_snippetEdgeInsets.left;
  bottom = self->_snippetEdgeInsets.bottom;
  right = self->_snippetEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end