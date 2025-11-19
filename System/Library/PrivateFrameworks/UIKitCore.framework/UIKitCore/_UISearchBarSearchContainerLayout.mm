@interface _UISearchBarSearchContainerLayout
- (CGRect)cancelButtonLayoutFrame;
- (CGRect)deleteButtonLayoutFrame;
- (CGRect)floatingSearchIconBackgroundLayoutFrame;
- (CGRect)floatingSearchIconLayoutFrame;
- (CGRect)leftButtonLayoutFrame;
- (CGRect)searchFieldLayoutFrame;
- (CGRect)visibleCancelButtonSearchFieldLayoutFrame;
- (UIOffset)searchFieldBackgroundPositionAdjustment;
- (_UISearchBarContainerSublayoutDelegate)delegate;
- (double)_effectiveActiveWidth;
- (double)_effectiveInactiveWidth;
- (double)idealWidth;
- (double)naturalContainerHeight;
- (double)naturalSearchFieldHeight;
- (double)prescribedWidth;
- (double)searchFieldHeightUpdatingShrinkageAndFadeAlphas;
- (double)widthForSearchFieldWidth:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)disownSearchField;
- (void)applyLayout;
- (void)restoreSearchField:(id)a3;
- (void)sendWillLayoutSubviewsForSearchFieldContainerView:(id)a3;
- (void)setAllowSearchFieldShrinkage:(BOOL)a3;
- (void)setDrawsSearchIconOnly:(BOOL)a3;
- (void)setHasCancelButton:(BOOL)a3;
- (void)setHasDeleteButton:(BOOL)a3;
- (void)setHasFloatingSearchIconBackgroundView:(BOOL)a3;
- (void)setHasLeftButton:(BOOL)a3;
- (void)setHostedInlineByNavigationBar:(BOOL)a3;
- (void)setHostedInlineByToolbar:(BOOL)a3;
- (void)setSearchBarReadableWidth:(double)a3;
- (void)setSearchFieldBackgroundPositionAdjustment:(UIOffset)a3;
- (void)setSearchFieldEffectivelySupportsDynamicType:(BOOL)a3;
- (void)setSearchFieldRespectsReadableWidth:(BOOL)a3;
- (void)setSearchFieldUsesCustomBackgroundImage:(BOOL)a3;
- (void)setTextFieldManagedInNSToolbar:(BOOL)a3;
- (void)updateLayout;
@end

@implementation _UISearchBarSearchContainerLayout

- (double)naturalContainerHeight
{
  [(_UISearchBarLayoutBase *)self contentInset];
  v4 = v3;
  v6 = v5;
  [(_UISearchBarLayoutBase *)self barMetrics];
  v7 = [(_UISearchBarSearchContainerLayout *)self searchField];
  if (v7)
  {
  }

  else
  {
    v9 = [(_UISearchBarSearchContainerLayout *)self hasCancelButton];
    result = 0.0;
    if (!v9)
    {
      return result;
    }
  }

  v10 = v4 + v6;
  [(_UISearchBarSearchContainerLayout *)self searchBarFieldHeight];
  v12 = v11;
  if ((*&self->_searchContainerLayoutFlags & 0x400) != 0 && (!_UISolariumEnabled() || (*&self->_searchContainerLayoutFlags & 0x30) == 0) && v12 > 0.0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained layout:self fontScaledValueForValue:v12];
    v12 = v14;
  }

  return v10 + v12;
}

- (id)disownSearchField
{
  v3 = self->_searchField;
  searchField = self->_searchField;
  self->_searchField = 0;

  [(UITextField *)v3 _setForegroundViewsAlpha:1.0];
  [(UISearchTextField *)v3 _setBackgroundViewsAlpha:1.0];
  [(UIView *)v3 setAlpha:1.0];

  return v3;
}

- (void)applyLayout
{
  [(_UISearchBarLayoutBase *)self updateLayoutIfNeeded];
  if ((*&self->_searchContainerLayoutFlags & 0x40) == 0)
  {
    [(_UISearchBarSearchContainerLayout *)self searchFieldLayoutFrame];
    [(UITextField *)self->_searchField setFrame:?];
    [(_UISearchBarSearchContainerLayout *)self floatingSearchIconAlpha];
    [(UIView *)self->_floatingSearchIconView setAlpha:?];
    [(_UISearchBarSearchContainerLayout *)self floatingSearchIconLayoutFrame];
    [(UIImageView *)self->_floatingSearchIconView setFrame:?];
    [(_UISearchBarSearchContainerLayout *)self floatingSearchIconBackgroundAlpha];
    [(UIView *)self->_floatingSearchIconBackgroundView setAlpha:?];
    [(_UISearchBarSearchContainerLayout *)self floatingSearchIconBackgroundLayoutFrame];
    [(UIView *)self->_floatingSearchIconBackgroundView setFrame:?];
    [(UITextField *)self->_searchField _setForegroundViewsAlpha:self->_searchFieldForegroundFadeAlpha];
    [(UISearchTextField *)self->_searchField _setBackgroundViewsAlpha:self->_searchFieldBackgroundFadeAlpha];
    [(_UISearchBarSearchContainerLayout *)self mainContentAlpha];
    [(UIView *)self->_searchField setAlpha:?];
    [(_UISearchBarSearchContainerLayout *)self leftButtonLayoutFrame];
    [(UIView *)self->_leftButton setFrame:?];
    v3 = 12;
    if ((*&self->_searchContainerLayoutFlags & 2) == 0)
    {
      v3 = 11;
    }

    v4 = *(&self->super.super.isa + OBJC_IVAR____UISearchBarSearchContainerLayout__searchFieldLayoutFrame[v3]);
    if ((*&self->_searchContainerLayoutFlags & 2) != 0)
    {
      [(_UISearchBarSearchContainerLayout *)self deleteButtonLayoutFrame];
    }

    else
    {
      [(_UISearchBarSearchContainerLayout *)self cancelButtonLayoutFrame];
    }

    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = *&self->_searchContainerLayoutFlags & 3;
    v14 = [v4 subviews];
    v15 = [v14 count];

    if (v15 || !+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      [v4 setFrame:{v9, v10, v11, v12}];
      if (v13)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      [(_UISearchBarSearchContainerLayout *)self mainContentAlpha];
      [v4 setAlpha:v16 * v17];
      if (*&self->_searchContainerLayoutFlags)
      {
        v18 = [v4 traitCollection];
        if ([v18 userInterfaceIdiom] == 3)
        {
          v19 = _UISolariumEnabled();

          if (v19)
          {
            v28.origin.x = v9;
            v28.origin.y = v10;
            v28.size.width = v11;
            v28.size.height = v12;
            [v4 _setCornerRadius:CGRectGetHeight(v28) * 0.5];
            [v4 _setWantsGlassAppearance:1];
          }
        }

        else
        {
        }
      }
    }

    else
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __48___UISearchBarSearchContainerLayout_applyLayout__block_invoke;
      v20[3] = &unk_1E70F89D0;
      v23 = v9;
      v24 = v10;
      v25 = v11;
      v26 = v12;
      v27 = v13 != 0;
      v21 = v4;
      v22 = self;
      [UIView performWithoutAnimation:v20];
    }
  }
}

- (void)updateLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained containerLayoutWillUpdateLayout:self];

  if ((*&self->_searchContainerLayoutFlags & 0x40) == 0)
  {
    [(_UISearchBarLayoutBase *)self contentInset];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    if ([(_UISearchBarLayoutBase *)self shouldApplyContainerSafeAreaInsets])
    {
      [(_UISearchBarLayoutBase *)self containerSafeAreaInsets];
      v5 = v5 + v12;
      v7 = v7 + v13;
      v175 = v9 + v14;
      v169 = v11 + v15;
    }

    else
    {
      v169 = v11;
      v175 = v9;
    }

    [(_UISearchBarLayoutBase *)self layoutSize];
    v17 = v16;
    v19 = v18;
    v20 = MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 16);
    v22 = *(MEMORY[0x1E695F058] + 24);
    v158 = [(_UISearchBarLayoutBase *)self isLayoutRTL];
    v23 = 1.0;
    if ((*&self->_searchContainerLayoutFlags & 0x80) == 0)
    {
      v23 = 0.0;
    }

    v151 = v23;
    [(_UISearchBarSearchContainerLayout *)self searchFieldHeightUpdatingShrinkageAndFadeAlphas];
    v25 = v24;
    if (self->_cancelButton)
    {
      v173 = v24;
      v174 = v24;
      if ([(UISearchTextField *)self->_searchField _wantsDynamicBackgroundMaterial])
      {
        goto LABEL_12;
      }

      cancelButton = self->_cancelButton;
    }

    else
    {
      cancelButton = self->_deleteButton;
      v173 = v21;
      v174 = v22;
      if (!cancelButton)
      {
        goto LABEL_12;
      }
    }

    [(UIView *)cancelButton sizeThatFits:v17, v19];
    v173 = v27;
    v174 = v28;
LABEL_12:
    [(UIView *)self->_leftButton sizeThatFits:v17, v19];
    v152 = v30;
    v153 = v29;
    p_visibleCancelButtonSearchFieldLayoutFrame = &self->_visibleCancelButtonSearchFieldLayoutFrame;
    self->_visibleCancelButtonSearchFieldLayoutFrame.origin.y = 0.0;
    self->_visibleCancelButtonSearchFieldLayoutFrame.size.width = 0.0;
    self->_visibleCancelButtonSearchFieldLayoutFrame.origin.x = 0.0;
    self->_visibleCancelButtonSearchFieldLayoutFrame.size.height = v25;
    searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
    v33 = searchContainerLayoutFlags & 3;
    v177 = v25;
    v34 = (searchContainerLayoutFlags & 3) != 0 || self->_representedLayoutState == 3;
    v162 = v19;
    v35 = 0.0;
    v36 = 0.0;
    if ((searchContainerLayoutFlags & 0x30) == 0)
    {
      [(_UISearchBarSearchContainerLayout *)self additionalPaddingForCancelButtonAtLeadingEdge];
      v36 = v37;
      searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
    }

    v38 = v5;
    v157 = v21;
    if ((searchContainerLayoutFlags & 0x30) == 0)
    {
      [(_UISearchBarSearchContainerLayout *)self additionalPaddingForSearchFieldAtLeadingEdge];
      v35 = v39;
    }

    v40 = v7;
    v156 = v22;
    v41 = [(_UISearchBarLayoutBase *)self associatedView];
    v42 = [v41 traitCollection];
    v43 = 11.0;
    if ([v42 userInterfaceIdiom] == 3)
    {
      if (_UISolariumEnabled())
      {
        v43 = 8.0;
      }

      else
      {
        v43 = 11.0;
      }
    }

    v45 = *v20;
    v44 = v20[1];

    v46 = v36 + v43;
    v47 = v45;
    v48 = 0.0;
    if (!v33)
    {
      v46 = 0.0;
    }

    v167 = v46;
    Width = 0.0;
    if (v33)
    {
      v181.origin.x = v47;
      v181.origin.y = v44;
      v181.size.width = v173;
      v181.size.height = v174;
      Width = CGRectGetWidth(v181);
    }

    rect = v44;
    v50 = v40;
    v51 = v17 - v40;
    v52 = v38;
    v53 = v162 - v38;
    v54 = v167 + Width;
    if (self->_leftButton)
    {
      v182.origin.x = v47;
      v55 = v54;
      v182.origin.y = rect;
      v182.size.height = v152;
      v182.size.width = v153;
      v56 = CGRectGetWidth(v182);
      v54 = v55;
      v48 = v43 + v56;
    }

    v171 = v47;
    v57 = v51 - v169;
    v58 = v53 - v175;
    if ((*&self->_searchContainerLayoutFlags & 4) != 0)
    {
      v59 = v48;
    }

    else
    {
      v59 = 0.0;
    }

    v163 = v54;
    if (v34)
    {
      v60 = v54;
    }

    else
    {
      v60 = 0.0;
    }

    if (!v34)
    {
      v35 = 0.0;
    }

    v61 = [(_UISearchBarLayoutBase *)self associatedView];
    v62 = [v61 traitCollection];
    if ([v62 userInterfaceIdiom] == 3)
    {
      v63 = _UISolariumEnabled();

      if (v63)
      {
        v183.origin.x = v50;
        v183.origin.y = v52;
        v183.size.width = v57;
        v183.size.height = v58;
        v64 = CGRectGetWidth(v183);
        v65 = fmin(v64 + -8.0 + -4.0, 494.0);
        self->_visibleCancelButtonSearchFieldLayoutFrame.size.width = v65;
        v176 = v65 - v163 - v48;
        v66 = fmax((v64 - v65 + -4.0) * 0.5 + 4.0, 8.0);
        v67 = v66;
LABEL_42:
        p_visibleCancelButtonSearchFieldLayoutFrame->origin.x = v66;
        v69 = self->_searchContainerLayoutFlags;
        if ((v69 & 0x800) != 0 && (searchBarReadableWidth = self->_searchBarReadableWidth, v188.origin.y = 0.0, v188.origin.x = v67, v188.size.width = v176, v188.size.height = v177, v71 = CGRectGetWidth(v188), v69 = self->_searchContainerLayoutFlags, searchBarReadableWidth < v71))
        {
          *&self->_searchContainerLayoutFlags = v69 | 0x1000;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __49___UISearchBarSearchContainerLayout_updateLayout__block_invoke;
          aBlock[3] = &unk_1E70F89A8;
          aBlock[4] = self;
          *&aBlock[5] = v50;
          *&aBlock[6] = v52;
          *&aBlock[7] = v57;
          *&aBlock[8] = v58;
          v180 = v158;
          v72 = _Block_copy(aBlock);
          v67 = v72[2](v67, 0.0, v176, v177);
          v74 = v73;
          v176 = v75;
          v177 = v76;
          self->_visibleCancelButtonSearchFieldLayoutFrame.origin.x = (v72[2])(v72, self->_visibleCancelButtonSearchFieldLayoutFrame.origin.x, self->_visibleCancelButtonSearchFieldLayoutFrame.origin.y, self->_visibleCancelButtonSearchFieldLayoutFrame.size.width, self->_visibleCancelButtonSearchFieldLayoutFrame.size.height);
          self->_visibleCancelButtonSearchFieldLayoutFrame.origin.y = v77;
          self->_visibleCancelButtonSearchFieldLayoutFrame.size.width = v78;
          self->_visibleCancelButtonSearchFieldLayoutFrame.size.height = v79;
        }

        else
        {
          *&self->_searchContainerLayoutFlags = v69 & 0xEFFF;
          v74 = 0.0;
        }

        v189.origin.x = v50;
        v189.origin.y = v52;
        v189.size.width = v57;
        v189.size.height = v58;
        MinX = CGRectGetMinX(v189);
        v190.origin.x = v50;
        v190.origin.y = v52;
        v190.size.width = v57;
        v190.size.height = v58;
        MaxX = CGRectGetMaxX(v190);
        v191.origin.x = v171;
        v191.size.width = v173;
        v191.origin.y = rect;
        v191.size.height = v174;
        v81 = MaxX - CGRectGetWidth(v191);
        v192.origin.x = v67;
        v160 = v74;
        v192.origin.y = v74;
        v192.size.width = v176;
        v192.size.height = v177;
        v170 = v81;
        v82 = fmax(v81, v167 + CGRectGetMaxX(v192));
        v83 = [(_UISearchBarLayoutBase *)self associatedView];
        v84 = [v83 traitCollection];
        if ([v84 userInterfaceIdiom] == 3)
        {
          v85 = _UISolariumEnabled();

          v86 = v171;
          if (v85)
          {
            v193.origin.x = v67;
            v149 = v58;
            v193.origin.y = v160;
            v193.size.width = v176;
            v193.size.height = v177;
            MinX = CGRectGetMinX(v193) - v163;
            v194.origin.x = v67;
            v194.origin.y = v160;
            v194.size.width = v176;
            v194.size.height = v177;
            v86 = v171;
            v170 = v167 + CGRectGetMaxX(v194);
          }
        }

        else
        {

          v86 = v171;
        }

        v87 = v170;
        if (!v33)
        {
          v87 = v82;
        }

        v88 = v160;
        if (v158)
        {
          v195.origin.x = v50;
          v195.origin.y = v52;
          v195.size.width = v57;
          v195.size.height = v58;
          v89 = CGRectGetMinX(v195);
          v196.origin.x = v50;
          v196.origin.y = v52;
          v149 = v57;
          v196.size.width = v57;
          v196.size.height = v58;
          v90 = v89 + CGRectGetMaxX(v196);
          v197.origin.x = v67;
          v197.origin.y = v160;
          v197.size.width = v176;
          v197.size.height = v177;
          v67 = v90 - CGRectGetMaxX(v197);
          v198.origin.y = v160;
          p_visibleCancelButtonSearchFieldLayoutFrame->origin.x = fmax(v67, v163 + MinX);
          v198.origin.x = v67;
          v198.size.width = v176;
          v198.size.height = v177;
          v91 = CGRectGetMinX(v198);
          v92 = v91;
          if (v33)
          {
            v93 = [(_UISearchBarLayoutBase *)self associatedView];
            v94 = [v93 traitCollection];
            if ([v94 userInterfaceIdiom] == 3 && (_UISolariumEnabled() & 1) != 0)
            {
              v88 = v160;
              v95 = v92 - v163;
              v86 = v171;
              v96 = &OBJC_IVAR____UITextLayoutFragmentViewBase__containerOrigin;
              v57 = v149;
            }

            else
            {
              v86 = v171;
              v96 = &OBJC_IVAR____UITextLayoutFragmentViewBase__containerOrigin;
              v57 = v149;
              v88 = v160;
              v95 = MinX;
            }

            v168 = v95;
          }

          else
          {
            v168 = fmin(MinX, v91 - v163);
            v86 = v171;
            v96 = &OBJC_IVAR____UITextLayoutFragmentViewBase__containerOrigin;
            v57 = v149;
            v88 = v160;
          }
        }

        else
        {
          v168 = v87;
          v170 = MinX;
          v96 = &OBJC_IVAR____UITextLayoutFragmentViewBase__containerOrigin;
        }

        v97 = v52;
        if (![(_UISearchBarLayoutBase *)self isHostedByNavigationBar])
        {
          v199.origin.x = v50;
          v199.origin.y = v52;
          v199.size.width = v57;
          v199.size.height = v58;
          Height = CGRectGetHeight(v199);
          v200.origin.y = v88;
          v99 = Height;
          v200.origin.x = v67;
          v200.size.width = v176;
          v200.size.height = v177;
          v100 = v52 + (v99 - CGRectGetHeight(v200)) * 0.5;
          v101 = +[UIDevice currentDevice];
          v102 = [v101 userInterfaceIdiom];
          v103 = ceil(v100);
          v104 = floor(v100);
          if (v102 == 1)
          {
            v97 = v103;
          }

          else
          {
            v97 = v104;
          }
        }

        if (self->_cancelButton && [*(&self->super.super.isa + v96[658]) _wantsDynamicBackgroundMaterial])
        {
          v164 = round(v52 + v58 * 0.5 - v174 * 0.5) + -1.0;
          v105 = v97;
        }

        else
        {
          v164 = round(v52 + v58 * 0.5 - v174 * 0.5) + -1.0;
          v105 = v164;
        }

        if (self->_searchFieldBackgroundPositionAdjustment.horizontal != 0.0 || self->_searchFieldBackgroundPositionAdjustment.vertical != 0.0)
        {
          searchFieldBackgroundPositionAdjustment = self->_searchFieldBackgroundPositionAdjustment;
          v106 = [MEMORY[0x1E696B098] valueWithBytes:&searchFieldBackgroundPositionAdjustment objCType:"{UIOffset=dd}"];
          v107 = v106;
          if (v106)
          {
            [v106 UIOffsetValue];
            if (v158)
            {
              v108 = -v108;
            }

            v67 = v67 + v108;
            v97 = v97 + v109;
          }
        }

        self->_visibleCancelButtonSearchFieldLayoutFrame.origin.y = v97;
        delegateSearchFieldFrameForProposedFrame = self->_delegateSearchFieldFrameForProposedFrame;
        v111 = self->_searchContainerLayoutFlags;
        if (delegateSearchFieldFrameForProposedFrame && (v111 & 0x30) == 0)
        {
          v67 = delegateSearchFieldFrameForProposedFrame[2](v67, v97, v176, v177);
          v97 = v112;
          v176 = v113;
          v177 = v114;
          v111 = self->_searchContainerLayoutFlags;
        }

        if ((v111 & 0x80) != 0)
        {
          v161 = v67;
          v122 = [(UIBarButtonItem *)self->_searchIconBarButtonItem view];
          [v122 imageViewSize];
          v124 = v123;
          v126 = v125;

          v201.origin.x = v50;
          v201.origin.y = v52;
          v201.size.width = v57;
          v201.size.height = v58;
          CGRectGetWidth(v201);
          v159 = v124;
          UIRoundToViewScale(self->_floatingSearchIconView);
          v128 = v127;
          v202.origin.x = v50;
          v202.origin.y = v52;
          v202.size.width = v57;
          v202.size.height = v58;
          v150 = v128 + CGRectGetMinX(v202);
          v203.origin.x = v50;
          v203.origin.y = v52;
          v203.size.width = v57;
          v203.size.height = v58;
          CGRectGetHeight(v203);
          v155 = v126;
          UIRoundToViewScale(self->_floatingSearchIconView);
          v130 = v129;
          v204.origin.x = v50;
          v204.origin.y = v52;
          v204.size.width = v57;
          v204.size.height = v58;
          MinY = CGRectGetMinY(v204);
          v120 = v130 + MinY;
          if ((*&self->_searchContainerLayoutFlags & 8) == 0)
          {
            v121 = rect;
            v116 = v159;
            v67 = v161;
            v117 = v126;
            v86 = v171;
            v118 = v150;
            goto LABEL_88;
          }

          recta = v130 + MinY;
          v172 = v105;
          v137 = [(UIBarButtonItem *)self->_searchIconBarButtonItem view];
          [v137 backgroundSize];
          v139 = v138;
          v141 = v140;

          v207.origin.x = v50;
          v207.origin.y = v52;
          v207.size.width = v57;
          v207.size.height = v58;
          CGRectGetWidth(v207);
          v157 = v139;
          p_floatingSearchIconBackgroundView = &self->_floatingSearchIconBackgroundView;
          UIRoundToViewScale(self->_floatingSearchIconBackgroundView);
          v143 = v142;
          v208.origin.x = v50;
          v208.origin.y = v52;
          v208.size.width = v57;
          v208.size.height = v58;
          v86 = v143 + CGRectGetMinX(v208);
          v209.origin.x = v50;
          v209.origin.y = v52;
          v209.size.width = v57;
          v209.size.height = v58;
          CGRectGetHeight(v209);
          v156 = v141;
        }

        else
        {
          [*(&self->super.super.isa + v96[658]) _searchIconViewRectForBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v176, v177}];
          v118 = v67 + v115;
          v120 = v97 + v119;
          if ((*&self->_searchContainerLayoutFlags & 8) == 0)
          {
            v121 = rect;
            goto LABEL_88;
          }

          recta = v120;
          v150 = v67 + v115;
          v155 = v117;
          v159 = v116;
          v161 = v67;
          v172 = v105;
          v132 = [(UIBarButtonItem *)self->_searchIconBarButtonItem view];
          [v132 backgroundSize];
          v157 = v133;
          v135 = v134;

          v205.origin.x = v50;
          v205.origin.y = v52;
          v205.size.width = v57;
          v205.size.height = v58;
          v86 = CGRectGetMinX(v205);
          v206.origin.x = v50;
          v206.origin.y = v52;
          v206.size.width = v57;
          v206.size.height = v58;
          CGRectGetHeight(v206);
          v156 = v135;
          p_floatingSearchIconBackgroundView = &self->_floatingSearchIconBackgroundView;
        }

        UIRoundToViewScale(*p_floatingSearchIconBackgroundView);
        v145 = v144;
        v210.origin.x = v50;
        v210.origin.y = v52;
        v210.size.width = v57;
        v210.size.height = v58;
        v121 = v145 + CGRectGetMinY(v210);
        v116 = v159;
        v67 = v161;
        v105 = v172;
        v117 = v155;
        v118 = v150;
        v120 = recta;
LABEL_88:
        self->_searchFieldLayoutFrame.origin.x = v67;
        self->_searchFieldLayoutFrame.origin.y = v97;
        self->_searchFieldLayoutFrame.size.width = v176;
        self->_searchFieldLayoutFrame.size.height = v177;
        self->_floatingSearchIconLayoutFrame.origin.x = v118;
        self->_floatingSearchIconLayoutFrame.origin.y = v120;
        self->_floatingSearchIconLayoutFrame.size.width = v116;
        self->_floatingSearchIconLayoutFrame.size.height = v117;
        self->_floatingSearchIconAlpha = v151;
        self->_floatingSearchIconBackgroundLayoutFrame.origin.x = v86;
        self->_floatingSearchIconBackgroundLayoutFrame.origin.y = v121;
        self->_floatingSearchIconBackgroundLayoutFrame.size.width = v157;
        self->_floatingSearchIconBackgroundLayoutFrame.size.height = v156;
        self->_floatingSearchIconBackgroundAlpha = v151;
        self->_mainContentAlpha = 1.0 - v151;
        if (self->_cancelButton)
        {
          v146 = &OBJC_IVAR____UISearchBarSearchContainerLayout__cancelButtonLayoutFrame;
          v147 = v168;
        }

        else
        {
          v146 = &OBJC_IVAR____UISearchBarSearchContainerLayout__deleteButtonLayoutFrame;
          v147 = v168;
          if (!self->_deleteButton)
          {
            goto LABEL_92;
          }
        }

        v148 = (self + *v146);
        *v148 = v147;
        v148[1] = v105;
        v148[2] = v173;
        v148[3] = v174;
LABEL_92:
        if (self->_leftButton)
        {
          self->_leftButtonLayoutFrame.origin.x = v170;
          self->_leftButtonLayoutFrame.origin.y = v164;
          self->_leftButtonLayoutFrame.size.width = v153;
          self->_leftButtonLayoutFrame.size.height = v152;
        }

        return;
      }
    }

    else
    {
    }

    v68 = v35 + v59;
    v184.origin.x = v50;
    v184.origin.y = v52;
    v184.size.width = v57;
    v184.size.height = v58;
    v176 = CGRectGetWidth(v184) - v60 - v68;
    v185.origin.x = v50;
    v185.origin.y = v52;
    v185.size.width = v57;
    v185.size.height = v58;
    self->_visibleCancelButtonSearchFieldLayoutFrame.size.width = CGRectGetWidth(v185) - v163 - v48;
    v186.origin.x = v50;
    v186.origin.y = v52;
    v186.size.width = v57;
    v186.size.height = v58;
    v67 = v68 + CGRectGetMinX(v186);
    v187.origin.x = v50;
    v187.origin.y = v52;
    v187.size.width = v57;
    v187.size.height = v58;
    v66 = v48 + CGRectGetMinX(v187);
    goto LABEL_42;
  }
}

- (CGRect)searchFieldLayoutFrame
{
  [(_UISearchBarLayoutBase *)self updateLayoutIfNeeded];
  x = self->_searchFieldLayoutFrame.origin.x;
  y = self->_searchFieldLayoutFrame.origin.y;
  width = self->_searchFieldLayoutFrame.size.width;
  height = self->_searchFieldLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)floatingSearchIconLayoutFrame
{
  x = self->_floatingSearchIconLayoutFrame.origin.x;
  y = self->_floatingSearchIconLayoutFrame.origin.y;
  width = self->_floatingSearchIconLayoutFrame.size.width;
  height = self->_floatingSearchIconLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)leftButtonLayoutFrame
{
  [(_UISearchBarLayoutBase *)self updateLayoutIfNeeded];
  x = self->_leftButtonLayoutFrame.origin.x;
  y = self->_leftButtonLayoutFrame.origin.y;
  width = self->_leftButtonLayoutFrame.size.width;
  height = self->_leftButtonLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cancelButtonLayoutFrame
{
  [(_UISearchBarLayoutBase *)self updateLayoutIfNeeded];
  x = self->_cancelButtonLayoutFrame.origin.x;
  y = self->_cancelButtonLayoutFrame.origin.y;
  width = self->_cancelButtonLayoutFrame.size.width;
  height = self->_cancelButtonLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)naturalSearchFieldHeight
{
  v4 = [(_UISearchBarSearchContainerLayout *)self searchField];

  if (!v4)
  {
    return 0.0;
  }

  if ((*&self->_searchContainerLayoutFlags & 0x200) == 0 || (-[UITextField background](self->_searchField, "background"), v5 = objc_claimAutoreleasedReturnValue(), [v5 size], v7 = v6, v5, v7 == 0.0))
  {
    [(_UISearchBarSearchContainerLayout *)self searchBarFieldHeight];
    v7 = v8;
    if (v8 == 0.0)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"_UISearchBarSearchContainerLayout.m" lineNumber:221 description:@"searchBarFieldHeight is unexpectedly 0.0 in naturalContainerHeight"];
    }
  }

  if ((*&self->_searchContainerLayoutFlags & 0x400) != 0 && (!_UISolariumEnabled() || (*&self->_searchContainerLayoutFlags & 0x30) == 0))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained layout:self fontScaledValueForValue:v7];
    v7 = v10;
  }

  return v7;
}

- (double)searchFieldHeightUpdatingShrinkageAndFadeAlphas
{
  [(_UISearchBarSearchContainerLayout *)self naturalSearchFieldHeight];
  v4 = v3;
  if ((*&self->_searchContainerLayoutFlags & 0x100) != 0)
  {
    [(_UISearchBarLayoutBase *)self layoutSize];
    v8 = v7;
    [(_UISearchBarSearchContainerLayout *)self naturalContainerHeight];
    v10 = fmax(v9 - v8, 0.0);
    if (v4 <= v10)
    {
      v10 = v4;
    }

    v11 = v10 / v4;
    v4 = v4 - v10;
    v5 = &OBJC_IVAR____UISearchBarSearchContainerLayout__searchFieldBackgroundFadeAlpha;
    self->_searchFieldForegroundFadeAlpha = 1.0 - fmin(fmax(v11 / 0.2, 0.0), 1.0);
    v6 = 1.0 - fmin(fmax((v11 + -0.8) / 0.15, 0.0), 1.0);
  }

  else
  {
    v5 = &OBJC_IVAR____UISearchBarSearchContainerLayout__searchFieldForegroundFadeAlpha;
    self->_searchFieldBackgroundFadeAlpha = 1.0;
    v6 = 1.0;
  }

  *(&self->super.super.isa + *v5) = v6;
  return v4;
}

- (CGRect)floatingSearchIconBackgroundLayoutFrame
{
  x = self->_floatingSearchIconBackgroundLayoutFrame.origin.x;
  y = self->_floatingSearchIconBackgroundLayoutFrame.origin.y;
  width = self->_floatingSearchIconBackgroundLayoutFrame.size.width;
  height = self->_floatingSearchIconBackgroundLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (_UISearchBarContainerSublayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)idealWidth
{
  [(_UISearchBarSearchContainerLayout *)self defaultMinimumWidth];
  if (v3 >= 0.0)
  {
    [(_UISearchBarSearchContainerLayout *)self defaultMinimumWidth];

    [(_UISearchBarSearchContainerLayout *)self widthForSearchFieldWidth:?];
  }

  else
  {

    [(_UISearchBarSearchContainerLayout *)self prescribedWidth];
  }

  return result;
}

- (double)prescribedWidth
{
  if (self->_representedLayoutState == 3)
  {
    [(_UISearchBarSearchContainerLayout *)self _effectiveActiveWidth];
  }

  else
  {
    [(_UISearchBarSearchContainerLayout *)self _effectiveInactiveWidth];
  }

  [(_UISearchBarSearchContainerLayout *)self widthForSearchFieldWidth:?];
  return result;
}

- (double)_effectiveInactiveWidth
{
  [(_UISearchBarSearchContainerLayout *)self overrideInactiveWidth];
  if (v3 <= 0.0)
  {

    [(_UISearchBarSearchContainerLayout *)self defaultInactiveWidth];
  }

  else
  {

    [(_UISearchBarSearchContainerLayout *)self overrideInactiveWidth];
  }

  return result;
}

- (CGRect)deleteButtonLayoutFrame
{
  [(_UISearchBarLayoutBase *)self updateLayoutIfNeeded];
  x = self->_deleteButtonLayoutFrame.origin.x;
  y = self->_deleteButtonLayoutFrame.origin.y;
  width = self->_deleteButtonLayoutFrame.size.width;
  height = self->_deleteButtonLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)visibleCancelButtonSearchFieldLayoutFrame
{
  [(_UISearchBarLayoutBase *)self updateLayoutIfNeeded];
  x = self->_visibleCancelButtonSearchFieldLayoutFrame.origin.x;
  y = self->_visibleCancelButtonSearchFieldLayoutFrame.origin.y;
  width = self->_visibleCancelButtonSearchFieldLayoutFrame.size.width;
  height = self->_visibleCancelButtonSearchFieldLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setHostedInlineByNavigationBar:(BOOL)a3
{
  searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
  if (((((searchContainerLayoutFlags & 0x10) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    *&self->_searchContainerLayoutFlags = searchContainerLayoutFlags & 0xFFEF | v4;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHostedInlineByToolbar:(BOOL)a3
{
  searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
  if (((((searchContainerLayoutFlags & 0x20) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 32;
    }

    else
    {
      v4 = 0;
    }

    *&self->_searchContainerLayoutFlags = searchContainerLayoutFlags & 0xFFDF | v4;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setTextFieldManagedInNSToolbar:(BOOL)a3
{
  searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
  if (((((searchContainerLayoutFlags & 0x40) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 64;
    }

    else
    {
      v4 = 0;
    }

    *&self->_searchContainerLayoutFlags = searchContainerLayoutFlags & 0xFFBF | v4;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setDrawsSearchIconOnly:(BOOL)a3
{
  searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
  if (((((searchContainerLayoutFlags & 0x80) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 128;
    }

    else
    {
      v4 = 0;
    }

    *&self->_searchContainerLayoutFlags = searchContainerLayoutFlags & 0xFF7F | v4;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHasCancelButton:(BOOL)a3
{
  searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
  if ((searchContainerLayoutFlags & 1) != a3)
  {
    *&self->_searchContainerLayoutFlags = searchContainerLayoutFlags & 0xFFFE | a3;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHasDeleteButton:(BOOL)a3
{
  searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
  if (((((searchContainerLayoutFlags & 2) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *&self->_searchContainerLayoutFlags = searchContainerLayoutFlags & 0xFFFD | v4;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHasLeftButton:(BOOL)a3
{
  searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
  if (((((searchContainerLayoutFlags & 4) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *&self->_searchContainerLayoutFlags = searchContainerLayoutFlags & 0xFFFB | v4;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHasFloatingSearchIconBackgroundView:(BOOL)a3
{
  searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
  if (((((searchContainerLayoutFlags & 8) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    *&self->_searchContainerLayoutFlags = searchContainerLayoutFlags & 0xFFF7 | v4;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setAllowSearchFieldShrinkage:(BOOL)a3
{
  searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
  if (((((searchContainerLayoutFlags & 0x100) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }

    *&self->_searchContainerLayoutFlags = searchContainerLayoutFlags & 0xFEFF | v4;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setSearchFieldUsesCustomBackgroundImage:(BOOL)a3
{
  searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
  if (((((searchContainerLayoutFlags & 0x200) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 512;
    }

    else
    {
      v4 = 0;
    }

    *&self->_searchContainerLayoutFlags = searchContainerLayoutFlags & 0xFDFF | v4;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setSearchFieldEffectivelySupportsDynamicType:(BOOL)a3
{
  searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
  if (((((searchContainerLayoutFlags & 0x400) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 1024;
    }

    else
    {
      v4 = 0;
    }

    *&self->_searchContainerLayoutFlags = searchContainerLayoutFlags & 0xFBFF | v4;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setSearchFieldRespectsReadableWidth:(BOOL)a3
{
  searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
  if (((((searchContainerLayoutFlags & 0x800) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 2048;
    }

    else
    {
      v4 = 0;
    }

    *&self->_searchContainerLayoutFlags = searchContainerLayoutFlags & 0xF7FF | v4;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setSearchBarReadableWidth:(double)a3
{
  searchBarReadableWidth = self->_searchBarReadableWidth;
  if (searchBarReadableWidth != a3)
  {
    if (searchBarReadableWidth > a3 || (*&self->_searchContainerLayoutFlags & 0x1000) != 0)
    {
      [(_UISearchBarLayoutBase *)self invalidateLayout];
    }

    self->_searchBarReadableWidth = a3;
  }
}

- (void)setSearchFieldBackgroundPositionAdjustment:(UIOffset)a3
{
  if (a3.horizontal != self->_searchFieldBackgroundPositionAdjustment.horizontal || a3.vertical != self->_searchFieldBackgroundPositionAdjustment.vertical)
  {
    self->_searchFieldBackgroundPositionAdjustment = a3;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = _UISearchBarSearchContainerLayout;
  v4 = [(_UISearchBarLayoutBase *)&v12 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 23, self->_searchField);
    objc_storeStrong(v5 + 24, self->_floatingSearchIconView);
    objc_storeStrong(v5 + 25, self->_floatingSearchIconBackgroundView);
    objc_storeStrong(v5 + 26, self->_cancelButton);
    objc_storeStrong(v5 + 27, self->_deleteButton);
    objc_storeStrong(v5 + 28, self->_leftButton);
    v5[14] = *&self->_searchContainerLayoutFlags;
    v5[29] = *&self->_searchBarReadableWidth;
    *(v5 + 20) = self->_searchFieldBackgroundPositionAdjustment;
    v5[38] = *&self->_additionalPaddingForCancelButtonAtLeadingEdge;
    v5[39] = *&self->_additionalPaddingForSearchFieldAtLeadingEdge;
    v5[32] = *&self->_searchBarFieldHeight;
    size = self->_searchFieldLayoutFrame.size;
    *(v5 + 21) = self->_searchFieldLayoutFrame.origin;
    *(v5 + 22) = size;
    v7 = self->_cancelButtonLayoutFrame.size;
    *(v5 + 23) = self->_cancelButtonLayoutFrame.origin;
    *(v5 + 24) = v7;
    v8 = self->_deleteButtonLayoutFrame.size;
    *(v5 + 25) = self->_deleteButtonLayoutFrame.origin;
    *(v5 + 26) = v8;
    v9 = self->_leftButtonLayoutFrame.size;
    *(v5 + 27) = self->_leftButtonLayoutFrame.origin;
    *(v5 + 28) = v9;
    v10 = self->_visibleCancelButtonSearchFieldLayoutFrame.size;
    *(v5 + 29) = self->_visibleCancelButtonSearchFieldLayoutFrame.origin;
    *(v5 + 30) = v10;
    v5[15] = *&self->_searchFieldForegroundFadeAlpha;
    v5[16] = *&self->_searchFieldBackgroundFadeAlpha;
    [v5 setDelegateSearchFieldFrameForProposedFrame:self->_delegateSearchFieldFrameForProposedFrame];
    [v5 setLayoutCustomizationDelegateSearchFieldContainerWillLayoutSubviewsCallback:self->_layoutCustomizationDelegateSearchFieldContainerWillLayoutSubviewsCallback];
  }

  return v5;
}

- (double)_effectiveActiveWidth
{
  [(_UISearchBarSearchContainerLayout *)self overrideActiveWidth];
  if (v3 <= 0.0)
  {

    [(_UISearchBarSearchContainerLayout *)self defaultActiveWidth];
  }

  else
  {

    [(_UISearchBarSearchContainerLayout *)self overrideActiveWidth];
  }

  return result;
}

- (double)widthForSearchFieldWidth:(double)a3
{
  if ([(_UISearchBarSearchContainerLayout *)self isHostedInlineByNavigationBar])
  {
    if ([(_UISearchBarSearchContainerLayout *)self drawsSearchIconOnly])
    {
      v5 = [(UIBarButtonItem *)self->_searchIconBarButtonItem view];
      [v5 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
      a3 = v6;
    }

    else
    {
      [(_UISearchBarLayoutBase *)self contentInset];
      v9 = v8 + a3;
      [(_UISearchBarLayoutBase *)self contentInset];
      a3 = v9 + v10;
      if ([(_UISearchBarSearchContainerLayout *)self hasCancelButton])
      {
        [(UIView *)self->_cancelButton sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
        return a3 + v11 + 11.0;
      }
    }
  }

  else if (![(_UISearchBarSearchContainerLayout *)self isHostedInlineByToolbar])
  {
    return 0.0;
  }

  return a3;
}

- (id)description
{
  v25.receiver = self;
  v25.super_class = _UISearchBarSearchContainerLayout;
  v3 = [(_UISearchBarLayoutBase *)&v25 description];
  if (!os_variant_has_internal_diagnostics())
  {
    goto LABEL_2;
  }

  [(_UISearchBarSearchContainerLayout *)self naturalContainerHeight];
  v6 = v5;
  [(_UISearchBarSearchContainerLayout *)self naturalSearchFieldHeight];
  v8 = [v3 stringByAppendingFormat:@" naturalContainerHeight=%g naturalSearchFieldHeight=%g", v6, v7];

  if (self->_leftButton)
  {
    v9 = [v8 stringByAppendingFormat:@" leftButton=%p", self->_leftButton];

    v8 = v9;
  }

  if (self->_cancelButton)
  {
    v10 = [v8 stringByAppendingFormat:@" cancelButton=%p", self->_cancelButton];

    v8 = v10;
  }

  if (self->_deleteButton)
  {
    v11 = [v8 stringByAppendingFormat:@" deleteButton=%p", self->_deleteButton];

    v8 = v11;
  }

  if (self->_searchField)
  {
    v12 = [v8 stringByAppendingFormat:@" searchField=%p", self->_searchField];

    v8 = v12;
  }

  if (self->_floatingSearchIconView)
  {
    v13 = [v8 stringByAppendingFormat:@" searchIconView=%p", self->_floatingSearchIconView];

    v8 = v13;
  }

  searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
  if ((searchContainerLayoutFlags & 0x100) != 0)
  {
    v22 = [v8 stringByAppendingString:@" allowSearchFieldShrinkage"];

    searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
    v8 = v22;
    if ((searchContainerLayoutFlags & 0x200) == 0)
    {
LABEL_17:
      if ((searchContainerLayoutFlags & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_searchContainerLayoutFlags & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v23 = [v8 stringByAppendingString:@" searchFieldUsesCustomBackgroundImage"];

  searchContainerLayoutFlags = self->_searchContainerLayoutFlags;
  v8 = v23;
  if ((searchContainerLayoutFlags & 0x400) == 0)
  {
LABEL_18:
    if ((searchContainerLayoutFlags & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_33:
  v24 = [v8 stringByAppendingString:@" supportsDynamicType"];

  v8 = v24;
  if ((*&self->_searchContainerLayoutFlags & 0x800) != 0)
  {
LABEL_19:
    v15 = [v8 stringByAppendingFormat:@" readableWidth=%g", *&self->_searchBarReadableWidth];

    v8 = v15;
  }

LABEL_20:
  vertical = self->_searchFieldBackgroundPositionAdjustment.vertical;
  if (self->_searchFieldBackgroundPositionAdjustment.horizontal != 0.0 || vertical != 0.0)
  {
    v17 = [v8 stringByAppendingFormat:@" searchFieldBackgroundPositionAdjustment=(%g, %g)", *&self->_searchFieldBackgroundPositionAdjustment.horizontal, *&vertical];

    v8 = v17;
  }

  if ([(_UISearchBarLayoutBase *)self isLayoutValid])
  {
    v18 = [v8 stringByAppendingString:@" layoutFrames:"];

    if (self->_leftButton)
    {
      v19 = [v18 stringByAppendingFormat:@" leftButton=(%g, %g %g, %g)", *&self->_leftButtonLayoutFrame.origin.x, *&self->_leftButtonLayoutFrame.origin.y, *&self->_leftButtonLayoutFrame.size.width, *&self->_leftButtonLayoutFrame.size.height];;

      v18 = v19;
    }

    if (self->_cancelButton)
    {
      v20 = [v18 stringByAppendingFormat:@" cancelButton=(%g, %g %g, %g)", *&self->_cancelButtonLayoutFrame.origin.x, *&self->_cancelButtonLayoutFrame.origin.y, *&self->_cancelButtonLayoutFrame.size.width, *&self->_cancelButtonLayoutFrame.size.height];;

      v18 = v20;
    }

    if (self->_deleteButton)
    {
      v21 = [v18 stringByAppendingFormat:@" deleteButton=(%g, %g %g, %g)", *&self->_deleteButtonLayoutFrame.origin.x, *&self->_deleteButtonLayoutFrame.origin.y, *&self->_deleteButtonLayoutFrame.size.width, *&self->_deleteButtonLayoutFrame.size.height];;

      v18 = v21;
    }

    v3 = [v18 stringByAppendingFormat:@" searchField=(%g, %g %g, %g)", *&self->_searchFieldLayoutFrame.origin.x, *&self->_searchFieldLayoutFrame.origin.y, *&self->_searchFieldLayoutFrame.size.width, *&self->_searchFieldLayoutFrame.size.height];;
  }

  else
  {
    v3 = v8;
  }

LABEL_2:

  return v3;
}

- (void)sendWillLayoutSubviewsForSearchFieldContainerView:(id)a3
{
  v4 = a3;
  layoutCustomizationDelegateSearchFieldContainerWillLayoutSubviewsCallback = self->_layoutCustomizationDelegateSearchFieldContainerWillLayoutSubviewsCallback;
  if (layoutCustomizationDelegateSearchFieldContainerWillLayoutSubviewsCallback && (*&self->_searchContainerLayoutFlags & 0x30) == 0)
  {
    v18 = v4;
    [(_UISearchBarSearchContainerLayout *)self searchFieldLayoutFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(_UISearchBarSearchContainerLayout *)self cancelButtonLayoutFrame];
    layoutCustomizationDelegateSearchFieldContainerWillLayoutSubviewsCallback[2](layoutCustomizationDelegateSearchFieldContainerWillLayoutSubviewsCallback, v18, v7, v9, v11, v13, v14, v15, v16, v17);
    v4 = v18;
  }
}

- (void)restoreSearchField:(id)a3
{
  objc_storeStrong(&self->_searchField, a3);

  [(_UISearchBarSearchContainerLayout *)self applyLayout];
}

- (UIOffset)searchFieldBackgroundPositionAdjustment
{
  horizontal = self->_searchFieldBackgroundPositionAdjustment.horizontal;
  vertical = self->_searchFieldBackgroundPositionAdjustment.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

@end