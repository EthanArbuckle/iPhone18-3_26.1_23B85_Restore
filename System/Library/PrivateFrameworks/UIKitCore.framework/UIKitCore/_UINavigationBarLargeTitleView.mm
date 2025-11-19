@interface _UINavigationBarLargeTitleView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 titleType:(int64_t)a4;
- (NSDictionary)effectiveTitleAttributes;
- (NSString)title;
- (_UINavigationBarLargeTitleView)initWithFrame:(CGRect)a3;
- (_UIPointerInteractionAssistant)assistant;
- (double)restingHeightOfTitleView;
- (id)_effectiveTitle;
- (id)_layoutForMeasurement;
- (id)_newLayout;
- (id)_titleForCurrentWidth;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_clearAssistants;
- (void)_contentSizeCategoryDidChange;
- (void)_hideScrollPocketContainerModelFromChildren;
- (void)_setAssistants;
- (void)_updateContentAndInvalidate:(BOOL)a3;
- (void)adoptLayout:(id)a3;
- (void)adoptNewLayout;
- (void)clearTransitionContext;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)prepareToRecordToState:(id)a3;
- (void)recordFromStateForTransition:(id)a3;
- (void)recordToStateForTransition:(id)a3;
- (void)safeAreaInsetsDidChange;
- (void)setAlternateTitles:(id)a3;
- (void)setAssistant:(id)a3;
- (void)setAttributedTitle:(id)a3;
- (void)setProvidesExtraSpaceForExcessiveLineHeights:(BOOL)a3;
- (void)setSubtitle:(id)a3;
- (void)setSubtitleView:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleAttributes:(id)a3;
- (void)setTitleType:(int64_t)a3;
- (void)setTitleView:(id)a3;
@end

@implementation _UINavigationBarLargeTitleView

- (id)_newLayout
{
  v3 = [_UINavigationBarLargeTitleViewLayout alloc];

  return [(_UINavigationBarLargeTitleViewLayout *)v3 initWithContentView:self];
}

- (void)_hideScrollPocketContainerModelFromChildren
{
  v2 = self;
  v3 = sub_18A4A7258();
  v5[4] = sub_188A9198C;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_188A85DA8;
  v5[3] = &block_descriptor_22;
  v4 = _Block_copy(v5);

  [(UIView *)v2 _addChildTraitCollectionTransformWithIdentifier:v3 transform:v4];

  _Block_release(v4);
}

- (void)_clearAssistants
{
  WeakRetained = objc_loadWeakRetained(&self->_assistant);
  [WeakRetained setAssistedView:0 identifier:@"LargeTitle.accessoryView"];
}

- (void)_setAssistants
{
  WeakRetained = objc_loadWeakRetained(&self->_assistant);
  v3 = [(_UINavigationBarLargeTitleViewLayout *)self->_layout accessoryView];
  if (v3)
  {
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  [WeakRetained setAssistedView:v4 identifier:@"LargeTitle.accessoryView"];
}

- (double)restingHeightOfTitleView
{
  v2 = [(_UINavigationBarLargeTitleView *)self _layoutForMeasurement];
  [v2 titleRestingHeight];
  v4 = v3;

  return v4;
}

- (id)_layoutForMeasurement
{
  layout = self->_layout;
  if (layout)
  {
    transitionContext = layout;
  }

  else
  {
    transitionContext = self->_transitionContext;
    if (transitionContext)
    {
      transitionContext = [(_UINavigationBarLargeTitleViewLayout *)transitionContext toLargeTitleViewLayout];
    }
  }

  return transitionContext;
}

- (id)_effectiveTitle
{
  effectiveTitle = self->__effectiveTitle;
  if (!effectiveTitle)
  {
    if (self->_alternateTitles)
    {
      v4 = [(_UINavigationBarLargeTitleView *)self _titleForCurrentWidth];
      v5 = self->__effectiveTitle;
      self->__effectiveTitle = v4;
    }

    else
    {
      v5 = [(_UINavigationBarLargeTitleView *)self effectiveTitleAttributes];
      v6 = [(NSAttributedString *)self->_attributedTitle _ui_synthesizeAttributedSubstringFromRange:[(NSAttributedString *)self->_attributedTitle length] usingDefaultAttributes:v5];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550 attributes:v5];
      }

      v9 = self->__effectiveTitle;
      self->__effectiveTitle = v8;
    }

    effectiveTitle = self->__effectiveTitle;
  }

  return effectiveTitle;
}

- (NSDictionary)effectiveTitleAttributes
{
  effectiveTitleAttributes = self->_effectiveTitleAttributes;
  if (!effectiveTitleAttributes)
  {
    v4 = *off_1E70EC918;
    v5 = [(NSDictionary *)self->_titleAttributes objectForKeyedSubscript:*off_1E70EC918];
    v6 = [(UIView *)self traitCollection];
    v7 = [v5 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v6];

    titleAttributes = self->_titleAttributes;
    if (v5 == v7)
    {
      v9 = titleAttributes;
    }

    else
    {
      v9 = [(NSDictionary *)titleAttributes mutableCopy];
      [(NSDictionary *)v9 setObject:v7 forKeyedSubscript:v4];
    }

    v10 = self->_effectiveTitleAttributes;
    self->_effectiveTitleAttributes = v9;

    effectiveTitleAttributes = self->_effectiveTitleAttributes;
  }

  return effectiveTitleAttributes;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = _UINavigationBarLargeTitleView;
  [(UIView *)&v6 layoutSubviews];
  if (self->_alternateTitles)
  {
    if (self->__effectiveTitle)
    {
      v3 = [(_UINavigationBarLargeTitleView *)self _titleForCurrentWidth];
      v4 = [v3 isEqualToAttributedString:self->__effectiveTitle];

      if ((v4 & 1) == 0)
      {
        effectiveTitle = self->__effectiveTitle;
        self->__effectiveTitle = 0;

        [(_UINavigationBarLargeTitleViewLayout *)self->_layout _invalidateTitleHeightCache];
        [(_UINavigationBarLargeTitleView *)self _updateContentAndInvalidate:0];
      }
    }
  }

  [(_UINavigationBarLargeTitleViewLayout *)self->_layout layoutViews];
}

- (_UINavigationBarLargeTitleView)initWithFrame:(CGRect)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = _UINavigationBarLargeTitleView;
  v3 = [(UIView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(_UINavigationBarLargeTitleView *)v3 _newLayout];
    layout = v4->_layout;
    v4->_layout = v5;

    attributedTitle = v4->_attributedTitle;
    v4->_attributedTitle = 0;

    titleAttributes = v4->_titleAttributes;
    v4->_titleAttributes = MEMORY[0x1E695E0F8];

    v18[0] = *off_1E70EC918;
    v9 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCaption2" weight:*off_1E70ECD20];
    v19[0] = v9;
    v18[1] = *off_1E70EC920;
    v10 = +[UIColor secondaryLabelColor];
    v19[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    subtitleAttributes = v4->_subtitleAttributes;
    v4->_subtitleAttributes = v11;

    [(UIView *)v4 _setSafeAreaCornerAdaptation:3];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v14 = [(UIView *)v4 registerForTraitChanges:v13 withAction:sel__contentSizeCategoryDidChange];

    [(_UINavigationBarLargeTitleView *)v4 _hideScrollPocketContainerModelFromChildren];
  }

  return v4;
}

- (void)setTitleType:(int64_t)a3
{
  if (self->_titleType != a3)
  {
    self->_titleType = a3;
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout setTitleType:?];
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout _invalidateTitleHeightCache];
  }

  [(_UINavigationBarLargeTitleViewLayout *)self->_layout updateRestingTitleHeight];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)setTitle:(id)a3
{
  v4 = &stru_1EFB14550;
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];

  [(_UINavigationBarLargeTitleView *)self setAttributedTitle:v6];
}

- (NSString)title
{
  v2 = [(NSAttributedString *)self->_attributedTitle string];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1EFB14550;
  }

  v5 = v4;

  return &v4->isa;
}

- (void)setAttributedTitle:(id)a3
{
  v4 = a3;
  attributedTitle = self->_attributedTitle;
  v12 = v4;
  v6 = attributedTitle;
  if (v6 == v12)
  {

    effectiveTitle = v12;
LABEL_9:

    v8 = v12;
    goto LABEL_10;
  }

  if (!v12 || !v6)
  {

    v8 = v12;
    goto LABEL_8;
  }

  v7 = [(NSAttributedString *)v12 isEqual:v6];

  v8 = v12;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v10 = [(NSAttributedString *)v8 copy];
    v11 = self->_attributedTitle;
    self->_attributedTitle = v10;

    [(_UINavigationBarLargeTitleViewLayout *)self->_layout _invalidateTitleHeightCache];
    effectiveTitle = self->__effectiveTitle;
    self->__effectiveTitle = 0;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setTitleView:(id)a3
{
  v5 = a3;
  if (self->_titleView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_titleView, a3);
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout _invalidateTitleHeightCache];
    v5 = v6;
  }
}

- (void)setAlternateTitles:(id)a3
{
  if (self->_alternateTitles != a3)
  {
    v4 = [a3 copy];
    alternateTitles = self->_alternateTitles;
    self->_alternateTitles = v4;

    [(_UINavigationBarLargeTitleViewLayout *)self->_layout _invalidateTitleHeightCache];
    effectiveTitle = self->__effectiveTitle;
    self->__effectiveTitle = 0;
  }
}

- (void)setTitleAttributes:(id)a3
{
  v8 = a3;
  if (([(NSDictionary *)self->_titleAttributes isEqual:?]& 1) == 0)
  {
    v4 = [v8 copy];
    titleAttributes = self->_titleAttributes;
    self->_titleAttributes = v4;

    effectiveTitleAttributes = self->_effectiveTitleAttributes;
    self->_effectiveTitleAttributes = 0;

    [(_UINavigationBarLargeTitleViewLayout *)self->_layout _invalidateTitleHeightCache];
    effectiveTitle = self->__effectiveTitle;
    self->__effectiveTitle = 0;
  }
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  subtitle = self->_subtitle;
  v10 = v4;
  v6 = subtitle;
  if (v6 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v10 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    v9 = self->_subtitle;
    self->_subtitle = v8;

    [(_UINavigationBarLargeTitleViewLayout *)self->_layout _invalidateTitleHeightCache];
  }

LABEL_9:
}

- (void)setSubtitleView:(id)a3
{
  v5 = a3;
  if (self->_subtitleView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_subtitleView, a3);
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout _invalidateTitleHeightCache];
    v5 = v6;
  }
}

- (void)setProvidesExtraSpaceForExcessiveLineHeights:(BOOL)a3
{
  if (self->_providesExtraSpaceForExcessiveLineHeights != a3)
  {
    self->_providesExtraSpaceForExcessiveLineHeights = a3;
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout _invalidateTitleHeightCache];
  }
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self bounds];
  [(_UINavigationBarLargeTitleView *)self sizeThatFits:v3, v4];
  v6 = -1.0;
  result.height = v5;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 titleType:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [(_UINavigationBarLargeTitleView *)self _layoutForMeasurement];
  [v7 sizeFittingSize:a4 titleType:{width, height}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(_UINavigationBarLargeTitleView *)self sizeThatFits:self->_titleType titleType:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)_titleForCurrentWidth
{
  v2 = self;
  v70 = *MEMORY[0x1E69E9840];
  [(UIView *)self bounds];
  Width = CGRectGetWidth(v72);
  [(UIView *)v2 layoutMargins];
  v5 = v4;
  [(UIView *)v2 layoutMargins];
  v7 = v6;
  [(UIView *)v2->_accessoryView bounds];
  v8 = CGRectGetWidth(v73);
  titleCandidates = v2->_titleCandidates;
  if (!titleCandidates)
  {
    v10 = objc_alloc_init(UILabel);
    v11 = v10;
    twoLineMode = v2->_twoLineMode;
    v13 = 0.0;
    if (twoLineMode <= 2)
    {
      v13 = dbl_18A6787F8[twoLineMode];
      [(UILabel *)v10 setNumberOfLines:qword_18A6787E0[twoLineMode]];
    }

    v14 = [(_UINavigationBarLargeTitleView *)v2 effectiveTitleAttributes];
    v15 = objc_opt_new();
    attributedTitle = v2->_attributedTitle;
    if (attributedTitle)
    {
      v17 = [(NSAttributedString *)attributedTitle _ui_synthesizeAttributedSubstringFromRange:[(NSAttributedString *)v2->_attributedTitle length] usingDefaultAttributes:v14];
      [v15 addObject:v17];
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v54 = v2;
    v18 = v2->_alternateTitles;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v64;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v64 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:*(*(&v63 + 1) + 8 * i) attributes:v14];
          [v15 addObject:v23];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v20);
    }

    v52 = v7;
    v53 = v5;
    v24 = Width;

    v25 = objc_opt_new();
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v26 = v15;
    v27 = [v26 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v60;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v60 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v59 + 1) + 8 * j);
          [(UILabel *)v11 setAttributedText:v31, *&v52, *&v53];
          [(UILabel *)v11 textRectForBounds:[(UILabel *)v11 numberOfLines] limitedToNumberOfLines:0.0, 0.0, 1.79769313e308, v13];
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v40 = objc_opt_new();
          [v40 setTitle:v31];
          v74.origin.x = v33;
          v74.origin.y = v35;
          v74.size.width = v37;
          v74.size.height = v39;
          [v40 setWidth:CGRectGetWidth(v74)];
          [(NSArray *)v25 addObject:v40];
        }

        v28 = [v26 countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v28);
    }

    v2 = v54;
    v41 = v54->_titleCandidates;
    v54->_titleCandidates = v25;

    titleCandidates = v54->_titleCandidates;
    Width = v24;
    v7 = v52;
    v5 = v53;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v42 = titleCandidates;
  v43 = [(NSArray *)v42 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = Width - v5 - v7 - v8;
    v46 = *v56;
LABEL_23:
    v47 = 0;
    while (1)
    {
      if (*v56 != v46)
      {
        objc_enumerationMutation(v42);
      }

      v48 = *(*(&v55 + 1) + 8 * v47);
      [(NSArray *)v48 width:*&v52];
      if (v49 <= v45)
      {
        break;
      }

      if (v44 == ++v47)
      {
        v44 = [(NSArray *)v42 countByEnumeratingWithState:&v55 objects:v67 count:16];
        if (v44)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:

    v48 = [(NSArray *)v2->_titleCandidates firstObject];
    v42 = v48;
  }

  v50 = [(NSArray *)v48 title:*&v52];

  return v50;
}

- (void)safeAreaInsetsDidChange
{
  v20.receiver = self;
  v20.super_class = _UINavigationBarLargeTitleView;
  [(UIView *)&v20 safeAreaInsetsDidChange];
  v3 = [(UIView *)self window];
  if (v3)
  {
    v4 = v3;
    [(UIView *)self directionalLayoutMargins];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout layoutMargins];
    if (v8 == v16 && v6 == v13 && v12 == v15)
    {
      v19 = v14;

      if (v10 == v19)
      {
        return;
      }
    }

    else
    {
    }

    [(_UINavigationBarLargeTitleView *)self _updateContentAndInvalidate:0];
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_updateContentAndInvalidate:(BOOL)a3
{
  v3 = a3;
  [(UIView *)self updateTraitsIfNeeded];
  layout = self->_layout;
  if (!layout)
  {
    v6 = [(_UINavigationBarTransitionContextProtocol *)self->_transitionContext toLargeTitleViewLayout];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(_UINavigationBarLargeTitleView *)self _newLayout];
    }

    v9 = self->_layout;
    self->_layout = v8;

    [(_UINavigationBarLargeTitleViewLayout *)self->_layout setContentView:self];
    layout = self->_layout;
  }

  [(_UINavigationBarLargeTitleViewLayout *)layout setTitleType:self->_titleType];
  if (self->_titleType)
  {
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout _invalidateTitleHeightCache];
    if (self->_titleView)
    {
      [(_UINavigationBarLargeTitleViewLayout *)self->_layout setCustomTitleView:?];
      [(_UINavigationBarLargeTitleViewLayout *)self->_layout setTitle:0];
    }

    else
    {
      v10 = [(_UINavigationBarLargeTitleView *)self _effectiveTitle];
      if ([v10 length])
      {
        v11 = v10;
      }

      else
      {
        v12 = objc_alloc(MEMORY[0x1E696AAB0]);
        v13 = [(_UINavigationBarLargeTitleView *)self effectiveTitleAttributes];
        v11 = [v12 initWithString:@" " attributes:v13];
      }

      [(_UINavigationBarLargeTitleViewLayout *)self->_layout setTitle:v11];
      [(_UINavigationBarLargeTitleViewLayout *)self->_layout setProvidesExtraSpaceForExcessiveLineHeights:self->_providesExtraSpaceForExcessiveLineHeights];
      [(_UINavigationBarLargeTitleViewLayout *)self->_layout setCustomTitleView:0];
    }

    [(_UINavigationBarLargeTitleViewLayout *)self->_layout setAccessoryView:self->_accessoryView];
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout setTwoLineMode:self->_twoLineMode];
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout setAlignAccessoryViewToTitleBaseline:self->_alignAccessoryViewToTitleBaseline];
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout setAccessoryViewHorizontalAlignment:self->_accessoryViewHorizontalAlignment];
    if (self->_subtitleView)
    {
      [(_UINavigationBarLargeTitleViewLayout *)self->_layout setSubtitleView:?];
LABEL_15:
      [(_UINavigationBarLargeTitleViewLayout *)self->_layout setSubtitle:0];
LABEL_21:
      [(_UINavigationBarLargeTitleViewLayout *)self->_layout updateRestingTitleHeight];
      goto LABEL_22;
    }

    if (self->_attributedSubtitle)
    {
      [(_UINavigationBarLargeTitleViewLayout *)self->_layout setSubtitleView:0];
      v14 = [(NSAttributedString *)self->_attributedSubtitle _ui_synthesizeAttributedSubstringFromRange:[(NSAttributedString *)self->_attributedSubtitle length] usingDefaultAttributes:self->_subtitleAttributes];
    }

    else
    {
      subtitle = self->_subtitle;
      [(_UINavigationBarLargeTitleViewLayout *)self->_layout setSubtitleView:0];
      if (!subtitle)
      {
        goto LABEL_15;
      }

      v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_subtitle attributes:self->_subtitleAttributes];
    }

    v16 = v14;
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout setSubtitle:v14];

    goto LABEL_21;
  }

LABEL_22:
  [(_UINavigationBarLargeTitleView *)self _setAssistants];
  [(UIView *)self directionalLayoutMargins];
  [(_UINavigationBarLargeTitleViewLayout *)self->_layout setLayoutMargins:?];
  if (v3)
  {
    [(UIView *)self invalidateIntrinsicContentSize];

    [(UIView *)self setNeedsLayout];
  }
}

- (void)_contentSizeCategoryDidChange
{
  effectiveTitleAttributes = self->_effectiveTitleAttributes;
  self->_effectiveTitleAttributes = 0;

  [(_UINavigationBarLargeTitleView *)self _updateContentAndInvalidate:1];
}

- (void)setAssistant:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_assistant);

  if (WeakRetained != obj)
  {
    [(_UINavigationBarLargeTitleView *)self _clearAssistants];
    objc_storeWeak(&self->_assistant, obj);
    [(_UINavigationBarLargeTitleView *)self _setAssistants];
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = 0;
    goto LABEL_15;
  }

  v9 = [(_UINavigationBarLargeTitleViewLayout *)self->_layout accessoryView];
  [v7 request:v8 locationInView:v9];
  v11 = v10;
  v13 = v12;
  v14 = 0;
  if ([v9 pointInside:0 withEvent:?])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v9;
      if (!v15)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v16 = [v9 hitTest:0 withEvent:{v11, v13}];
      objc_opt_class();
      v15 = 0;
      if (objc_opt_isKindOfClass())
      {
        v15 = v16;
      }

      if (!v15)
      {
        goto LABEL_12;
      }
    }

    if ([v15 isEnabled])
    {
      [v15 bounds];
      v14 = [v7 createRegionFromRect:v15 targetView:@"com.apple.UIKit.UINavigationBar.LargeTitleView.UIButton" identifier:objc_msgSend(v15 selected:{"isSelected"), v17, v18, v19, v20}];
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

LABEL_14:

LABEL_15:

  return v14;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 targetViewAsButton];
    if (v7)
    {
      v8 = [v5 createStyleForButton:v7 shapeProvider:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v6 = a5;
  v8 = [a4 targetViewAsButton];
  v7 = [v8 _visualProvider];
  [v7 pointerWillEnter:v6];
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v6 = a5;
  v8 = [a4 targetViewAsButton];
  v7 = [v8 _visualProvider];
  [v7 pointerWillExit:v6];
}

- (void)recordFromStateForTransition:(id)a3
{
  layout = self->_layout;
  v5 = a3;
  [v5 setFromLargeTitleViewLayout:layout];
  self->_transitionContext = v5;
  v6 = self->_layout;
  self->_layout = 0;

  [(_UINavigationBarLargeTitleView *)self _clearAssistants];
}

- (void)prepareToRecordToState:(id)a3
{
  v9 = a3;
  v4 = [(_UINavigationBarLargeTitleView *)self _newLayout];
  layout = self->_layout;
  if (layout)
  {
    transitionContext = self->_transitionContext;
    if (transitionContext)
    {
      v7 = [(_UINavigationBarTransitionContextProtocol *)transitionContext toLargeTitleViewLayout];

      if (layout != v7)
      {
        goto LABEL_6;
      }

      layout = self->_layout;
    }

    [(_UINavigationBarLargeTitleViewLayout *)layout removeContent];
  }

LABEL_6:
  self->_transitionContext = v9;
  v8 = self->_layout;
  self->_layout = v4;
}

- (void)recordToStateForTransition:(id)a3
{
  v4 = a3;
  [(_UINavigationBarLargeTitleView *)self updateContent];
  [v4 setToLargeTitleViewLayout:self->_layout];

  layout = self->_layout;
  self->_layout = 0;
}

- (void)clearTransitionContext
{
  if (self->_transitionContext)
  {
    if (!self->_layout)
    {
      v3 = [[_UINavigationBarLargeTitleViewLayout alloc] initWithContentView:self];
      layout = self->_layout;
      self->_layout = v3;
    }

    self->_transitionContext = 0;
  }
}

- (void)adoptLayout:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UINavigationBarLargeTitleView.m" lineNumber:520 description:@"Cannot adopt a nil layout!"];

    v6 = 0;
  }

  layout = self->_layout;
  if (layout != v6)
  {
    v9 = v6;
    [(_UINavigationBarLargeTitleViewLayout *)layout removeContent];
    objc_storeStrong(&self->_layout, a3);
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout setContentView:self];
    [(_UINavigationBarLargeTitleView *)self _setAssistants];
    v6 = v9;
  }

  self->_transitionContext = 0;
}

- (void)adoptNewLayout
{
  if (!self->_layout)
  {
    v3 = [(_UINavigationBarLargeTitleView *)self _newLayout];
    layout = self->_layout;
    self->_layout = v3;

    [(_UINavigationBarLargeTitleView *)self updateContent];
  }
}

- (_UIPointerInteractionAssistant)assistant
{
  WeakRetained = objc_loadWeakRetained(&self->_assistant);

  return WeakRetained;
}

@end