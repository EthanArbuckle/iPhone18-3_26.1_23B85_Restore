@interface _UINavigationBarLargeTitleView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits titleType:(int64_t)type;
- (NSDictionary)effectiveTitleAttributes;
- (NSString)title;
- (_UINavigationBarLargeTitleView)initWithFrame:(CGRect)frame;
- (_UIPointerInteractionAssistant)assistant;
- (double)restingHeightOfTitleView;
- (id)_effectiveTitle;
- (id)_layoutForMeasurement;
- (id)_newLayout;
- (id)_titleForCurrentWidth;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_clearAssistants;
- (void)_contentSizeCategoryDidChange;
- (void)_hideScrollPocketContainerModelFromChildren;
- (void)_setAssistants;
- (void)_updateContentAndInvalidate:(BOOL)invalidate;
- (void)adoptLayout:(id)layout;
- (void)adoptNewLayout;
- (void)clearTransitionContext;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)prepareToRecordToState:(id)state;
- (void)recordFromStateForTransition:(id)transition;
- (void)recordToStateForTransition:(id)transition;
- (void)safeAreaInsetsDidChange;
- (void)setAlternateTitles:(id)titles;
- (void)setAssistant:(id)assistant;
- (void)setAttributedTitle:(id)title;
- (void)setProvidesExtraSpaceForExcessiveLineHeights:(BOOL)heights;
- (void)setSubtitle:(id)subtitle;
- (void)setSubtitleView:(id)view;
- (void)setTitle:(id)title;
- (void)setTitleAttributes:(id)attributes;
- (void)setTitleType:(int64_t)type;
- (void)setTitleView:(id)view;
@end

@implementation _UINavigationBarLargeTitleView

- (id)_newLayout
{
  v3 = [_UINavigationBarLargeTitleViewLayout alloc];

  return [(_UINavigationBarLargeTitleViewLayout *)v3 initWithContentView:self];
}

- (void)_hideScrollPocketContainerModelFromChildren
{
  selfCopy = self;
  v3 = sub_18A4A7258();
  v5[4] = sub_188A9198C;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_188A85DA8;
  v5[3] = &block_descriptor_22;
  v4 = _Block_copy(v5);

  [(UIView *)selfCopy _addChildTraitCollectionTransformWithIdentifier:v3 transform:v4];

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
  accessoryView = [(_UINavigationBarLargeTitleViewLayout *)self->_layout accessoryView];
  if (accessoryView)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  [WeakRetained setAssistedView:selfCopy identifier:@"LargeTitle.accessoryView"];
}

- (double)restingHeightOfTitleView
{
  _layoutForMeasurement = [(_UINavigationBarLargeTitleView *)self _layoutForMeasurement];
  [_layoutForMeasurement titleRestingHeight];
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
      _titleForCurrentWidth = [(_UINavigationBarLargeTitleView *)self _titleForCurrentWidth];
      effectiveTitleAttributes = self->__effectiveTitle;
      self->__effectiveTitle = _titleForCurrentWidth;
    }

    else
    {
      effectiveTitleAttributes = [(_UINavigationBarLargeTitleView *)self effectiveTitleAttributes];
      v6 = [(NSAttributedString *)self->_attributedTitle _ui_synthesizeAttributedSubstringFromRange:[(NSAttributedString *)self->_attributedTitle length] usingDefaultAttributes:effectiveTitleAttributes];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550 attributes:effectiveTitleAttributes];
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
    traitCollection = [(UIView *)self traitCollection];
    v7 = [v5 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

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
      _titleForCurrentWidth = [(_UINavigationBarLargeTitleView *)self _titleForCurrentWidth];
      v4 = [_titleForCurrentWidth isEqualToAttributedString:self->__effectiveTitle];

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

- (_UINavigationBarLargeTitleView)initWithFrame:(CGRect)frame
{
  v19[2] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = _UINavigationBarLargeTitleView;
  v3 = [(UIView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _newLayout = [(_UINavigationBarLargeTitleView *)v3 _newLayout];
    layout = v4->_layout;
    v4->_layout = _newLayout;

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

- (void)setTitleType:(int64_t)type
{
  if (self->_titleType != type)
  {
    self->_titleType = type;
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout setTitleType:?];
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout _invalidateTitleHeightCache];
  }

  [(_UINavigationBarLargeTitleViewLayout *)self->_layout updateRestingTitleHeight];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)setTitle:(id)title
{
  titleCopy = &stru_1EFB14550;
  if (title)
  {
    titleCopy = title;
  }

  v5 = titleCopy;
  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];

  [(_UINavigationBarLargeTitleView *)self setAttributedTitle:v6];
}

- (NSString)title
{
  string = [(NSAttributedString *)self->_attributedTitle string];
  v3 = string;
  if (string)
  {
    v4 = string;
  }

  else
  {
    v4 = &stru_1EFB14550;
  }

  v5 = v4;

  return &v4->isa;
}

- (void)setAttributedTitle:(id)title
{
  titleCopy = title;
  attributedTitle = self->_attributedTitle;
  v12 = titleCopy;
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

- (void)setTitleView:(id)view
{
  viewCopy = view;
  if (self->_titleView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_titleView, view);
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout _invalidateTitleHeightCache];
    viewCopy = v6;
  }
}

- (void)setAlternateTitles:(id)titles
{
  if (self->_alternateTitles != titles)
  {
    v4 = [titles copy];
    alternateTitles = self->_alternateTitles;
    self->_alternateTitles = v4;

    [(_UINavigationBarLargeTitleViewLayout *)self->_layout _invalidateTitleHeightCache];
    effectiveTitle = self->__effectiveTitle;
    self->__effectiveTitle = 0;
  }
}

- (void)setTitleAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (([(NSDictionary *)self->_titleAttributes isEqual:?]& 1) == 0)
  {
    v4 = [attributesCopy copy];
    titleAttributes = self->_titleAttributes;
    self->_titleAttributes = v4;

    effectiveTitleAttributes = self->_effectiveTitleAttributes;
    self->_effectiveTitleAttributes = 0;

    [(_UINavigationBarLargeTitleViewLayout *)self->_layout _invalidateTitleHeightCache];
    effectiveTitle = self->__effectiveTitle;
    self->__effectiveTitle = 0;
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitle = self->_subtitle;
  v10 = subtitleCopy;
  subtitleCopy2 = subtitle;
  if (subtitleCopy2 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !subtitleCopy2)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v10 isEqual:subtitleCopy2];

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

- (void)setSubtitleView:(id)view
{
  viewCopy = view;
  if (self->_subtitleView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_subtitleView, view);
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout _invalidateTitleHeightCache];
    viewCopy = v6;
  }
}

- (void)setProvidesExtraSpaceForExcessiveLineHeights:(BOOL)heights
{
  if (self->_providesExtraSpaceForExcessiveLineHeights != heights)
  {
    self->_providesExtraSpaceForExcessiveLineHeights = heights;
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

- (CGSize)sizeThatFits:(CGSize)fits titleType:(int64_t)type
{
  height = fits.height;
  width = fits.width;
  _layoutForMeasurement = [(_UINavigationBarLargeTitleView *)self _layoutForMeasurement];
  [_layoutForMeasurement sizeFittingSize:type titleType:{width, height}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(_UINavigationBarLargeTitleView *)self sizeThatFits:self->_titleType titleType:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)_titleForCurrentWidth
{
  selfCopy = self;
  v70 = *MEMORY[0x1E69E9840];
  [(UIView *)self bounds];
  Width = CGRectGetWidth(v72);
  [(UIView *)selfCopy layoutMargins];
  v5 = v4;
  [(UIView *)selfCopy layoutMargins];
  v7 = v6;
  [(UIView *)selfCopy->_accessoryView bounds];
  v8 = CGRectGetWidth(v73);
  titleCandidates = selfCopy->_titleCandidates;
  if (!titleCandidates)
  {
    v10 = objc_alloc_init(UILabel);
    v11 = v10;
    twoLineMode = selfCopy->_twoLineMode;
    v13 = 0.0;
    if (twoLineMode <= 2)
    {
      v13 = dbl_18A6787F8[twoLineMode];
      [(UILabel *)v10 setNumberOfLines:qword_18A6787E0[twoLineMode]];
    }

    effectiveTitleAttributes = [(_UINavigationBarLargeTitleView *)selfCopy effectiveTitleAttributes];
    v15 = objc_opt_new();
    attributedTitle = selfCopy->_attributedTitle;
    if (attributedTitle)
    {
      v17 = [(NSAttributedString *)attributedTitle _ui_synthesizeAttributedSubstringFromRange:[(NSAttributedString *)selfCopy->_attributedTitle length] usingDefaultAttributes:effectiveTitleAttributes];
      [v15 addObject:v17];
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v54 = selfCopy;
    v18 = selfCopy->_alternateTitles;
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

          v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:*(*(&v63 + 1) + 8 * i) attributes:effectiveTitleAttributes];
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

    selfCopy = v54;
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

      firstObject = *(*(&v55 + 1) + 8 * v47);
      [(NSArray *)firstObject width:*&v52];
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

    firstObject = [(NSArray *)selfCopy->_titleCandidates firstObject];
    v42 = firstObject;
  }

  v50 = [(NSArray *)firstObject title:*&v52];

  return v50;
}

- (void)safeAreaInsetsDidChange
{
  v20.receiver = self;
  v20.super_class = _UINavigationBarLargeTitleView;
  [(UIView *)&v20 safeAreaInsetsDidChange];
  window = [(UIView *)self window];
  if (window)
  {
    v4 = window;
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

- (void)_updateContentAndInvalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  [(UIView *)self updateTraitsIfNeeded];
  layout = self->_layout;
  if (!layout)
  {
    toLargeTitleViewLayout = [(_UINavigationBarTransitionContextProtocol *)self->_transitionContext toLargeTitleViewLayout];
    v7 = toLargeTitleViewLayout;
    if (toLargeTitleViewLayout)
    {
      _newLayout = toLargeTitleViewLayout;
    }

    else
    {
      _newLayout = [(_UINavigationBarLargeTitleView *)self _newLayout];
    }

    v9 = self->_layout;
    self->_layout = _newLayout;

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
      _effectiveTitle = [(_UINavigationBarLargeTitleView *)self _effectiveTitle];
      if ([_effectiveTitle length])
      {
        v11 = _effectiveTitle;
      }

      else
      {
        v12 = objc_alloc(MEMORY[0x1E696AAB0]);
        effectiveTitleAttributes = [(_UINavigationBarLargeTitleView *)self effectiveTitleAttributes];
        v11 = [v12 initWithString:@" " attributes:effectiveTitleAttributes];
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
  if (invalidateCopy)
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

- (void)setAssistant:(id)assistant
{
  obj = assistant;
  WeakRetained = objc_loadWeakRetained(&self->_assistant);

  if (WeakRetained != obj)
  {
    [(_UINavigationBarLargeTitleView *)self _clearAssistants];
    objc_storeWeak(&self->_assistant, obj);
    [(_UINavigationBarLargeTitleView *)self _setAssistants];
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = 0;
    goto LABEL_15;
  }

  accessoryView = [(_UINavigationBarLargeTitleViewLayout *)self->_layout accessoryView];
  [interactionCopy request:requestCopy locationInView:accessoryView];
  v11 = v10;
  v13 = v12;
  v14 = 0;
  if ([accessoryView pointInside:0 withEvent:?])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = accessoryView;
      if (!v15)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v16 = [accessoryView hitTest:0 withEvent:{v11, v13}];
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
      v14 = [interactionCopy createRegionFromRect:v15 targetView:@"com.apple.UIKit.UINavigationBar.LargeTitleView.UIButton" identifier:objc_msgSend(v15 selected:{"isSelected"), v17, v18, v19, v20}];
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

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    targetViewAsButton = [regionCopy targetViewAsButton];
    if (targetViewAsButton)
    {
      v8 = [interactionCopy createStyleForButton:targetViewAsButton shapeProvider:0];
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

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  animatorCopy = animator;
  targetViewAsButton = [region targetViewAsButton];
  _visualProvider = [targetViewAsButton _visualProvider];
  [_visualProvider pointerWillEnter:animatorCopy];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  animatorCopy = animator;
  targetViewAsButton = [region targetViewAsButton];
  _visualProvider = [targetViewAsButton _visualProvider];
  [_visualProvider pointerWillExit:animatorCopy];
}

- (void)recordFromStateForTransition:(id)transition
{
  layout = self->_layout;
  transitionCopy = transition;
  [transitionCopy setFromLargeTitleViewLayout:layout];
  self->_transitionContext = transitionCopy;
  v6 = self->_layout;
  self->_layout = 0;

  [(_UINavigationBarLargeTitleView *)self _clearAssistants];
}

- (void)prepareToRecordToState:(id)state
{
  stateCopy = state;
  _newLayout = [(_UINavigationBarLargeTitleView *)self _newLayout];
  layout = self->_layout;
  if (layout)
  {
    transitionContext = self->_transitionContext;
    if (transitionContext)
    {
      toLargeTitleViewLayout = [(_UINavigationBarTransitionContextProtocol *)transitionContext toLargeTitleViewLayout];

      if (layout != toLargeTitleViewLayout)
      {
        goto LABEL_6;
      }

      layout = self->_layout;
    }

    [(_UINavigationBarLargeTitleViewLayout *)layout removeContent];
  }

LABEL_6:
  self->_transitionContext = stateCopy;
  v8 = self->_layout;
  self->_layout = _newLayout;
}

- (void)recordToStateForTransition:(id)transition
{
  transitionCopy = transition;
  [(_UINavigationBarLargeTitleView *)self updateContent];
  [transitionCopy setToLargeTitleViewLayout:self->_layout];

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

- (void)adoptLayout:(id)layout
{
  layoutCopy = layout;
  if (!layoutCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarLargeTitleView.m" lineNumber:520 description:@"Cannot adopt a nil layout!"];

    layoutCopy = 0;
  }

  layout = self->_layout;
  if (layout != layoutCopy)
  {
    v9 = layoutCopy;
    [(_UINavigationBarLargeTitleViewLayout *)layout removeContent];
    objc_storeStrong(&self->_layout, layout);
    [(_UINavigationBarLargeTitleViewLayout *)self->_layout setContentView:self];
    [(_UINavigationBarLargeTitleView *)self _setAssistants];
    layoutCopy = v9;
  }

  self->_transitionContext = 0;
}

- (void)adoptNewLayout
{
  if (!self->_layout)
  {
    _newLayout = [(_UINavigationBarLargeTitleView *)self _newLayout];
    layout = self->_layout;
    self->_layout = _newLayout;

    [(_UINavigationBarLargeTitleView *)self updateContent];
  }
}

- (_UIPointerInteractionAssistant)assistant
{
  WeakRetained = objc_loadWeakRetained(&self->_assistant);

  return WeakRetained;
}

@end