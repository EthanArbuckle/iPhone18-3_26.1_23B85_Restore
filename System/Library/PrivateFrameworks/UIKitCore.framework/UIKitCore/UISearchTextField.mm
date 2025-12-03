@interface UISearchTextField
- (BOOL)_becomeFirstResponderWhenPossible;
- (BOOL)_delegateShouldBeginEditing;
- (BOOL)_delegateShouldChangeCharactersInTextStorageRanges:(id)ranges replacementString:(id)string delegateCares:(BOOL *)cares;
- (BOOL)_delegateShouldClear;
- (BOOL)_delegateShouldEndEditing;
- (BOOL)_delegateShouldScrollToVisibleWhenBecomingFirstResponder;
- (BOOL)_finishResignFirstResponder;
- (BOOL)_hasContent;
- (BOOL)_ignoresDynamicType;
- (BOOL)_isEditingOrHasContent;
- (BOOL)_scalesMagnifyingGlassForDynamicTypeWithFont:(id)font;
- (BOOL)_shouldCenterPlaceholder;
- (BOOL)_shouldHideMagnifyingGlassWhenEditingOrHasContent;
- (BOOL)_shouldOverrideEditingFont;
- (BOOL)_shouldSendContentChangedNotificationsIfOnlyMarkedTextChanged;
- (BOOL)_shouldSuppressSelectionHandles;
- (BOOL)_showsClearButtonWhenEmpty;
- (BOOL)_showsLeftView;
- (BOOL)_showsRightView;
- (BOOL)_wantsDynamicBackgroundMaterial;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canBecomeFocused;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canResignFirstResponder;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)resignFirstResponder;
- (CGRect)_adjustedTextOrEditingRect:(CGRect)rect forBounds:(CGRect)bounds;
- (CGRect)_adjustmentsForSearchIconViewRectForBounds:(CGRect)bounds;
- (CGRect)_availableTextRectForBounds:(CGRect)bounds forEditing:(BOOL)editing;
- (CGRect)_bookmarkViewRectForBounds:(CGRect)bounds;
- (CGRect)_searchIconViewRectForBounds:(CGRect)bounds;
- (CGRect)_suffixFrame;
- (CGRect)clearButtonRectForBounds:(CGRect)bounds;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)leftViewRectForBounds:(CGRect)bounds;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (CGSize)_clearButtonSize;
- (CGSize)intrinsicContentSize;
- (Class)_preferredBackgroundProviderClass;
- (NSArray)searchSuggestions;
- (NSArray)tokens;
- (NSArray)tokensInRange:(UITextRange *)textRange;
- (NSString)description;
- (UIColor)_tokenForegroundColor;
- (UIColor)tokenBackgroundColor;
- (UISearchBar)_searchBar;
- (UISearchTextField)initWithCoder:(id)coder;
- (UITextPosition)positionOfTokenAtIndex:(NSInteger)tokenIndex;
- (UITextRange)textualRange;
- (_NSRange)_rangeForClearButton;
- (_NSRange)_rangeForSetText;
- (_NSRange)insertFilteredText:(id)text;
- (_UIScrollPocketInteraction)scrollPocketInteraction;
- (double)_clearButtonMarginX;
- (double)_maximumAlphaForLeadingView;
- (double)_placeholderLabelAlphaForForegroundViewsAlpha:(double)alpha;
- (id)_clearButtonImageForState:(unint64_t)state;
- (id)_createEffectsBackgroundViewWithStyle:(int64_t)style applyFilter:(id)filter;
- (id)_customDraggableObjectsForRange:(id)range;
- (id)_initWithDeferredSearchIconImageConfiguration;
- (id)_initWithFrame:(CGRect)frame textLayoutManagerEnabled:(BOOL)enabled defersSearchImageConfiguration:(BOOL)configuration;
- (id)_newAttributedStringWithToken:(id)token;
- (id)_offsetValueForIcon:(int64_t)icon;
- (id)_placeholderColor;
- (id)_rangeOfCustomDraggableObjectsInRange:(id)range;
- (id)_textRangesForTextStorageRanges:(id)ranges;
- (id)attributedText;
- (id)attributedTextInRange:(id)range;
- (id)selectedTokens;
- (id)text;
- (id)textInRange:(id)range;
- (id)textInputTraits;
- (unint64_t)_characterIndexForTokenTapGestureRecognizer;
- (void)__highlightedDidChangeAnimated:(BOOL)animated;
- (void)_activateSelectionView;
- (void)_applyHighlightedAnimated:(BOOL)animated;
- (void)_becomeFirstResponder;
- (void)_cleanUpDictationButton;
- (void)_cleanUpKeyboardHideAndShowNotifications;
- (void)_clearBackgroundViews;
- (void)_clearButtonClicked:(id)clicked;
- (void)_clearSearchSuggestionsIfNecessary;
- (void)_copySelectionPopulatingActuallyCopiedTokenCharacterIndexes:(id)indexes;
- (void)_copyTextAndTokensFromOtherSearchField:(id)field;
- (void)_createDictationButtonForSearchBarVisualProvider:(id)provider;
- (void)_defaultInsertTextSuggestion:(id)suggestion;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_didRemoveTokenLayoutView:(id)view;
- (void)_didSetFont:(id)font;
- (void)_highlightedDidChangeAnimated:(BOOL)animated;
- (void)_notifyDidBeginEditing;
- (void)_notifyDidEndEditing;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)_pasteSessionDidFinish:(id)finish;
- (void)_postNotificationFromOriginalIfNecessary:(id *)necessary;
- (void)_receivedKeyboardDidHideNotification:(id)notification;
- (void)_receivedKeyboardDidShowNotification:(id)notification;
- (void)_receivedKeyboardWillShowOrHideNotification:(id)notification;
- (void)_redirectSelectionToAvoidClobberingTokens;
- (void)_reevaluateGlassAppearancePreferenceForBackdropStyle:(int64_t)style;
- (void)_removeEffectsBackgroundViews;
- (void)_searchBarCancelButtonClicked:(id)clicked;
- (void)_setAlwaysHidesMagnifyingGlassForAccessibilityContentSizeCategory:(BOOL)category;
- (void)_setAnimatesBackgroundCornerRadius:(BOOL)radius;
- (void)_setBackgroundMaterialShouldBeGlass:(BOOL)glass;
- (void)_setBackgroundViewsAlpha:(double)alpha;
- (void)_setBottomEffectBackgroundVisible:(BOOL)visible;
- (void)_setClearButtonImage:(id)image forState:(unint64_t)state;
- (void)_setEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)_setIgnoresDynamicType:(BOOL)type;
- (void)_setMagnifyingGlassImage:(id)image;
- (void)_setNeedsUpdateForBackdropStyle:(int64_t)style;
- (void)_setOffsetValue:(id)value forIcon:(int64_t)icon;
- (void)_setSearchBar:(id)bar;
- (void)_setSearchTextOffetValue:(id)value;
- (void)_setTokenForegroundColor:(id)color;
- (void)_setWantsDynamicBackgroundMaterial:(BOOL)material;
- (void)_suggestionsMenuInteractionWillEndWithAnimator:(id)animator;
- (void)_tokenTapGestureRecognized;
- (void)_updateAlphaForMagnifyingGlass;
- (void)_updateAtomViewSelection:(BOOL)selection;
- (void)_updateBackgroundMaterial;
- (void)_updateBackgroundView:(id)view withStyle:(int64_t)style filter:(id)filter;
- (void)_updateColorForMagnifyingGlass;
- (void)_updateDefaultLeftViewForFont:(id)font;
- (void)_updateForBackdropStyle;
- (void)_updateHelpMessageOverrideWithMessage:(id)message;
- (void)_updateLeftViewForMagnifyingGlassImage;
- (void)_updateScrollPocketInteraction;
- (void)_willAddTokenLayoutView:(id)view;
- (void)addAction:(id)action forControlEvents:(unint64_t)events;
- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events;
- (void)cut:(id)cut;
- (void)deleteBackward;
- (void)didAddTextAttachmentViews:(id)views;
- (void)didLayoutTextAttachmentView:(id)view inFragmentRect:(CGRect)rect;
- (void)didRemoveTextAttachmentViews:(id)views;
- (void)encodeWithCoder:(id)coder;
- (void)fieldEditorDidChange:(id)change;
- (void)fieldEditorDidChangeSelection:(id)selection;
- (void)insertAttributedText:(id)text;
- (void)insertText:(id)text;
- (void)insertTextSuggestion:(id)suggestion;
- (void)insertToken:(UISearchToken *)token atIndex:(NSInteger)tokenIndex;
- (void)layoutSubviews;
- (void)paste:(id)paste;
- (void)removeAction:(id)action forControlEvents:(unint64_t)events;
- (void)removeActionForIdentifier:(id)identifier forControlEvents:(unint64_t)events;
- (void)removeTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events;
- (void)removeTokenAtIndex:(NSInteger)tokenIndex;
- (void)replaceRange:(id)range withAttributedText:(id)text;
- (void)replaceRange:(id)range withText:(id)text;
- (void)replaceRangeWithTextWithoutClosingTyping:(id)typing replacementText:(id)text;
- (void)replaceTextualPortionOfRange:(UITextRange *)textRange withToken:(UISearchToken *)token atIndex:(NSUInteger)tokenIndex;
- (void)searchSuggestionController:(id)controller didSelectSuggestion:(id)suggestion atIndexPath:(id)path;
- (void)setAccessibilityIdentifier:(id)identifier;
- (void)setAllowsDeletingTokens:(BOOL)allowsDeletingTokens;
- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setBorderStyle:(int64_t)style;
- (void)setDelegate:(id)delegate;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setScrollPocketInteraction:(id)interaction;
- (void)setSearchSuggestions:(NSArray *)searchSuggestions;
- (void)setText:(id)text;
- (void)setTokenBackgroundColor:(UIColor *)tokenBackgroundColor;
- (void)setTokens:(NSArray *)tokens;
- (void)tintColorDidChange;
- (void)updateForBackdropStyle:(int64_t)style;
- (void)updateProperties;
- (void)willDismissEditMenuWithAnimator:(id)animator;
- (void)willMoveToWindow:(id)window;
- (void)willPresentEditMenuWithAnimator:(id)animator;
@end

@implementation UISearchTextField

- (id)textInputTraits
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    textInputTraits = [WeakRetained textInputTraits];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UISearchTextField;
    textInputTraits = [(UITextField *)&v8 textInputTraits];
  }

  v6 = textInputTraits;

  return v6;
}

- (BOOL)_hasContent
{
  v6.receiver = self;
  v6.super_class = UISearchTextField;
  if ([(UITextField *)&v6 _hasContent])
  {
    return 1;
  }

  tokenCharacterIndexes = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter tokenCharacterIndexes];
  v3 = [tokenCharacterIndexes count] != 0;

  return v3;
}

- (BOOL)_shouldHideMagnifyingGlassWhenEditingOrHasContent
{
  font = [(UITextField *)self font];
  if ([(UISearchTextField *)self _scalesMagnifyingGlassForDynamicTypeWithFont:font])
  {
    traitCollection = [(UIView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  }

  else
  {
    IsAccessibilityCategory = 0;
  }

  return IsAccessibilityCategory;
}

- (UITextRange)textualRange
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  _searchBarTextField = [WeakRetained _searchBarTextField];

  if (_searchBarTextField)
  {
    v5 = _searchBarTextField == self;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    characterRangeOfTextAfterLastToken = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter characterRangeOfTextAfterLastToken];
    [(UIResponder *)self _textRangeFromNSRange:characterRangeOfTextAfterLastToken, v7];
  }

  else
  {
    [(UISearchTextField *)_searchBarTextField textualRange];
  }
  v8 = ;

  return v8;
}

- (id)text
{
  textualRange = [(UISearchTextField *)self textualRange];
  v4 = [(UISearchTextField *)self textInRange:textualRange];

  return v4;
}

- (void)_updateLeftViewForMagnifyingGlassImage
{
  v6 = self->_magnifyingGlassImage;
  if ([(UISearchTextField *)self _supportsDynamicType])
  {
    if ([(UISearchTextField *)self _alwaysHidesMagnifyingGlassForAccessibilityContentSizeCategory])
    {
      traitCollection = [(UIView *)self traitCollection];
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

      if (IsAccessibilityCategory)
      {

        v6 = 0;
      }
    }
  }

  [(UIImageView *)self->_defaultLeftView setImage:v6];
  [(UIView *)self->_defaultLeftView sizeToFit];
}

- (Class)_preferredBackgroundProviderClass
{
  if (_UISolariumEnabled() && (-[UIView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 userInterfaceIdiom], v3, v4 == 5))
  {
    _defaultiOSBackgroundProviderClass = [(UITextField *)self _defaultiOSBackgroundProviderClass];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UISearchTextField;
    _defaultiOSBackgroundProviderClass = [(UITextField *)&v7 _preferredBackgroundProviderClass];
  }

  return _defaultiOSBackgroundProviderClass;
}

- (id)_initWithDeferredSearchIconImageConfiguration
{
  _isTextLayoutManagerEnabled = [objc_opt_class() _isTextLayoutManagerEnabled];
  v4 = *MEMORY[0x1E696AA80];
  v5 = *(MEMORY[0x1E696AA80] + 8);
  v6 = *(MEMORY[0x1E696AA80] + 16);
  v7 = *(MEMORY[0x1E696AA80] + 24);

  return [(UISearchTextField *)self _initWithFrame:_isTextLayoutManagerEnabled textLayoutManagerEnabled:1 defersSearchImageConfiguration:v4, v5, v6, v7];
}

- (BOOL)_ignoresDynamicType
{
  _overridingSymbolConfiguration = [(UIImageView *)self->_defaultLeftView _overridingSymbolConfiguration];
  v3 = _overridingSymbolConfiguration != 0;

  return v3;
}

- (void)_updateAlphaForMagnifyingGlass
{
  if (![(UISearchTextField *)self _shouldHideMagnifyingGlassWhenEditingOrHasContent]|| (v4 = [(UISearchTextField *)self _isEditingOrHasContent], v3 = 0.0, !v4))
  {
    [(UITextField *)self _foregroundViewsAlpha];
  }

  defaultLeftView = self->_defaultLeftView;

  [(UIView *)defaultLeftView setAlpha:v3];
}

- (UISearchBar)_searchBar
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);

  return WeakRetained;
}

- (id)_placeholderColor
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v4 = WeakRetained;
  if (!WeakRetained || ([WeakRetained _colorForComponent:3 disabled:0], (_placeholderColor = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7.receiver = self;
    v7.super_class = UISearchTextField;
    _placeholderColor = [(UITextField *)&v7 _placeholderColor];
  }

  return _placeholderColor;
}

- (_NSRange)_rangeForSetText
{
  characterRangeOfTextAfterLastToken = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter characterRangeOfTextAfterLastToken];
  result.length = v3;
  result.location = characterRangeOfTextAfterLastToken;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UISearchTextField;
  [(UITextField *)&v3 layoutSubviews];
  if ([(UISearchTextField *)self _shouldHideMagnifyingGlassWhenEditingOrHasContent])
  {
    [(UISearchTextField *)self _updateAlphaForMagnifyingGlass];
  }
}

- (BOOL)_showsClearButtonWhenEmpty
{
  if ([(UISearchTextField *)self _alwaysShowsClearButtonWhenEmptyAndActive])
  {
    if ([(UIView *)self isFirstResponder])
    {
      return 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_searchBar);
      _searchController = [WeakRetained _searchController];
      isActive = [_searchController isActive];

      return isActive;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UISearchTextField;
    return [(UITextField *)&v7 _showsClearButtonWhenEmpty];
  }
}

- (CGSize)intrinsicContentSize
{
  if ([(_UISearchTextFieldVisualStyle *)self->_visualStyle usesCustomIntrinsicSize])
  {
    [(_UISearchTextFieldVisualStyle *)self->_visualStyle defaultHeight];
    v4 = v3;
    v5 = -1.0;
    if ([(UISearchTextField *)self _supportsDynamicType])
    {
      font = [(UITextField *)self font];
      [font _scaledValueForValue:v4];
      UIRoundToViewScale(self);
      v4 = v7;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UISearchTextField;
    [(UIView *)&v12 intrinsicContentSize];
    v5 = v8;
    v4 = v9;
  }

  v10 = v5;
  v11 = v4;
  result.height = v11;
  result.width = v10;
  return result;
}

- (double)_clearButtonMarginX
{
  clearButtonInnerInset = [(_UISearchTextFieldVisualStyle *)self->_visualStyle clearButtonInnerInset];
  if (clearButtonInnerInset)
  {
  }

  else
  {
    clearButtonOuterInset = [(_UISearchTextFieldVisualStyle *)self->_visualStyle clearButtonOuterInset];

    if (!clearButtonOuterInset)
    {
      v13.receiver = self;
      v13.super_class = UISearchTextField;
      [(UITextField *)&v13 _clearButtonMarginX];
      return v12;
    }
  }

  clearButtonInnerInset2 = [(_UISearchTextFieldVisualStyle *)self->_visualStyle clearButtonInnerInset];
  [clearButtonInnerInset2 floatValue];
  v7 = v6 + 0.0;

  clearButtonOuterInset2 = [(_UISearchTextFieldVisualStyle *)self->_visualStyle clearButtonOuterInset];
  [clearButtonOuterInset2 floatValue];
  v10 = v7 + v9;

  return v10;
}

- (BOOL)_shouldCenterPlaceholder
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  if (WeakRetained && ((-[UISearchTextField text](self, "text"), v4 = objc_claimAutoreleasedReturnValue(), ![v4 length]) && !self->_deferringFirstResponder ? (v5 = !-[UITextField _fieldEditorAttached](self, "_fieldEditorAttached")) : (LOBYTE(v5) = 0), v4, objc_msgSend(WeakRetained, "centerPlaceholder")))
  {
    v6 = [WeakRetained _forceCenteredPlaceholderLayout] | v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)_shouldSuppressSelectionHandles
{
  tokenCharacterIndexes = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter tokenCharacterIndexes];
  if ([tokenCharacterIndexes count] == 1)
  {
    [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter characterRangeOfTextAfterLastToken];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)tintColorDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  if (WeakRetained)
  {
    superview = [(UIView *)self superview];
    if (superview)
    {
      v5 = superview;
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        superview2 = [v5 superview];

        v5 = superview2;
        if (!superview2)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      [WeakRetained tintColorDidChange];
    }
  }

  v7.receiver = self;
  v7.super_class = UISearchTextField;
  [(UITextField *)&v7 tintColorDidChange];
}

- (double)_maximumAlphaForLeadingView
{
  leftView = [(UITextField *)self leftView];
  if (leftView != self->_defaultLeftView || ![(UISearchTextField *)self _shouldHideMagnifyingGlassWhenEditingOrHasContent])
  {

    goto LABEL_6;
  }

  _isEditingOrHasContent = [(UISearchTextField *)self _isEditingOrHasContent];

  result = 0.0;
  if (!_isEditingOrHasContent)
  {
LABEL_6:
    v6.receiver = self;
    v6.super_class = UISearchTextField;
    [(UITextField *)&v6 _maximumAlphaForLeadingView];
  }

  return result;
}

- (UIColor)tokenBackgroundColor
{
  tokenBackgroundColor = self->_tokenBackgroundColor;
  if (tokenBackgroundColor)
  {
    v3 = tokenBackgroundColor;
  }

  else
  {
    traitCollection = [(UIView *)self traitCollection];
    v3 = [_UISearchAtomView defaultAtomBackgroundColorForTraitCollection:traitCollection];
  }

  return v3;
}

- (NSArray)tokens
{
  v3 = objc_opt_new();
  tokenCharacterIndexes = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter tokenCharacterIndexes];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __27__UISearchTextField_tokens__block_invoke;
  v11 = &unk_1E70F43F0;
  v12 = v3;
  selfCopy = self;
  v5 = v3;
  [tokenCharacterIndexes enumerateIndexesUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

- (BOOL)becomeFirstResponder
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    v13.receiver = self;
    v13.super_class = UISearchTextField;
    return [(UITextField *)&v13 becomeFirstResponder];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_searchBar);
    _searchController = [WeakRetained _searchController];

    if (_searchController && [_searchController _allowsSuggestionsMenu])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__receivedKeyboardWillShowOrHideNotification_ name:@"UIKeyboardWillShowNotification" object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__receivedKeyboardWillShowOrHideNotification_ name:@"UIKeyboardWillHideNotification" object:0];

      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter3 addObserver:self selector:sel__receivedKeyboardDidHideNotification_ name:@"UIKeyboardDidHideNotification" object:0];
    }

    v12.receiver = self;
    v12.super_class = UISearchTextField;
    becomeFirstResponder = [(UITextField *)&v12 becomeFirstResponder];
  }

  return becomeFirstResponder;
}

- (BOOL)canBecomeFirstResponder
{
  v9.receiver = self;
  v9.super_class = UISearchTextField;
  canBecomeFirstResponder = [(UITextField *)&v9 canBecomeFirstResponder];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v5 = WeakRetained;
  if (canBecomeFirstResponder)
  {
    _searchController = [WeakRetained _searchController];

    if (_searchController)
    {
      _searchController2 = [v5 _searchController];
      LOBYTE(canBecomeFirstResponder) = [_searchController2 _searchBarShouldFinalizeBecomingFirstResponder];
    }

    else
    {
      LOBYTE(canBecomeFirstResponder) = 1;
    }
  }

  return canBecomeFirstResponder;
}

- (BOOL)_delegateShouldBeginEditing
{
  v8.receiver = self;
  v8.super_class = UISearchTextField;
  _delegateShouldBeginEditing = [(UITextField *)&v8 _delegateShouldBeginEditing];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v5 = WeakRetained;
  if (_delegateShouldBeginEditing)
  {
    v6 = WeakRetained == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    LOBYTE(_delegateShouldBeginEditing) = [WeakRetained _searchBarTextFieldShouldBeginEditing];
  }

  return _delegateShouldBeginEditing;
}

- (void)_becomeFirstResponder
{
  if (+[UIResponder _currentChangeIntent]== 1)
  {
    *(&self->_searchBarTextFieldFlags + 6) |= 8u;
  }

  v15.receiver = self;
  v15.super_class = UISearchTextField;
  [(UITextField *)&v15 _becomeFirstResponder];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v4 = WeakRetained;
  if (WeakRetained && [WeakRetained centerPlaceholder])
  {
    textInputTraits = [(UISearchTextField *)self textInputTraits];
    if ([textInputTraits deferBecomingResponder])
    {
      deferringFirstResponder = self->_deferringFirstResponder;

      if (!deferringFirstResponder)
      {
        self->_deferringFirstResponder = 1;
        [(UISearchTextField *)self _setPreventSelectionViewActivation:1];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __42__UISearchTextField__becomeFirstResponder__block_invoke;
        aBlock[3] = &unk_1E70F35B8;
        v7 = v4;
        v13 = v7;
        selfCopy = self;
        v8 = _Block_copy(aBlock);
        controller = [v7 controller];
        if (controller)
        {
        }

        else
        {
          _searchController = [v7 _searchController];

          if (!_searchController)
          {
            v8[2](v8);
            goto LABEL_15;
          }
        }

        [UIApp _performBlockAfterCATransactionCommits:v8];
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  if ([(UISearchTextField *)self _shouldHideMagnifyingGlassWhenEditingOrHasContent]&& ![(UISearchTextField *)self _hasContent])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__UISearchTextField__becomeFirstResponder__block_invoke_4;
    v11[3] = &unk_1E70F3590;
    v11[4] = self;
    [(UISearchTextField *)self _animateForFirstResponderChangeWithAnimations:v11];
  }

LABEL_16:
}

- (void)_activateSelectionView
{
  if (![(UISearchTextField *)self _preventSelectionViewActivation])
  {
    v3.receiver = self;
    v3.super_class = UISearchTextField;
    [(UITextField *)&v3 _activateSelectionView];
  }
}

- (void)_notifyDidBeginEditing
{
  v5.receiver = self;
  v5.super_class = UISearchTextField;
  [(UITextField *)&v5 _notifyDidBeginEditing];
  _deferredSearchSuggestions = [(UISearchTextField *)self _deferredSearchSuggestions];
  if (_deferredSearchSuggestions)
  {
    *(&self->_searchBarTextFieldFlags + 6) &= 0xFFCFu;
    _suggestionController = [(UISearchTextField *)self _suggestionController];
    [_suggestionController updateSuggestions:_deferredSearchSuggestions userInitiated:1];

    [(UISearchTextField *)self _setDeferredSearchSuggestions:0];
  }
}

- (BOOL)_delegateShouldScrollToVisibleWhenBecomingFirstResponder
{
  v9.receiver = self;
  v9.super_class = UISearchTextField;
  _delegateShouldScrollToVisibleWhenBecomingFirstResponder = [(UITextField *)&v9 _delegateShouldScrollToVisibleWhenBecomingFirstResponder];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v5 = WeakRetained;
  if (_delegateShouldScrollToVisibleWhenBecomingFirstResponder)
  {
    v6 = WeakRetained == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = objc_loadWeakRetained(&self->_searchBar);
    LOBYTE(_delegateShouldScrollToVisibleWhenBecomingFirstResponder) = [v7 _searchBarTextFieldShouldScrollToVisibleWhenBecomingFirstResponder];
  }

  return _delegateShouldScrollToVisibleWhenBecomingFirstResponder;
}

- (BOOL)_wantsDynamicBackgroundMaterial
{
  selfCopy = self;
  _typedStorage = [(UIView *)selfCopy _typedStorage];
  v4 = sub_18901F358();

  return v4 & 1;
}

- (void)_setWantsDynamicBackgroundMaterial:(BOOL)material
{
  selfCopy = self;
  sub_18906B4B0(material);
}

- (void)_updateBackgroundMaterial
{
  selfCopy = self;
  sub_18906B5BC();
}

- (void)_updateScrollPocketInteraction
{
  selfCopy = self;
  sub_18906B724();
}

- (_UIScrollPocketInteraction)scrollPocketInteraction
{
  selfCopy = self;
  _typedStorage = [(UIView *)selfCopy _typedStorage];
  v4 = sub_18901F3EC();

  return v4;
}

- (void)setScrollPocketInteraction:(id)interaction
{
  interactionCopy = interaction;
  selfCopy = self;
  _typedStorage = [(UIView *)selfCopy _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937088);
  v8 = swift_allocObject();
  *(v8 + 16) = interaction;
  v9 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v10 = interactionCopy;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(&_typedStorage->super.isa + v9);
  *(&_typedStorage->super.isa + v9) = 0x8000000000000000;
  sub_188A40430(v8, &_s26ScrollPocketInteractionKeyVN_2, isUniquelyReferenced_nonNull_native);
  *(&_typedStorage->super.isa + v9) = v12;
  swift_endAccess();
}

- (NSString)description
{
  v14.receiver = self;
  v14.super_class = UISearchTextField;
  v3 = [(UITextField *)&v14 description];
  if ([(UISearchTextField *)self _alwaysShowsClearButtonWhenEmptyAndActive])
  {
    v4 = [v3 stringByAppendingString:@" alwaysShowsClearButtonWhenEmptyAndActive"];

    v3 = v4;
  }

  WeakRetained = objc_loadWeakRetained(&self->_searchBar);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_searchBar);
    _originalSearchTextFieldForClones = [v6 _originalSearchTextFieldForClones];

    v8 = objc_loadWeakRetained(&self->_searchBar);
    _activeSearchFieldInToolbar = [v8 _activeSearchFieldInToolbar];

    if (!_originalSearchTextFieldForClones || _originalSearchTextFieldForClones == self)
    {
      if (!_activeSearchFieldInToolbar || _activeSearchFieldInToolbar == self)
      {
        v10 = v3;
        goto LABEL_14;
      }

      v11 = [v3 stringByAppendingFormat:@" active=%p", _activeSearchFieldInToolbar];
      v10 = v3;
    }

    else
    {
      v10 = [v3 stringByAppendingFormat:@" original=%p", _originalSearchTextFieldForClones];

      if (!_activeSearchFieldInToolbar || _activeSearchFieldInToolbar == self)
      {
        goto LABEL_14;
      }

      v11 = [v10 stringByAppendingFormat:@" WARNING: active=%p", _activeSearchFieldInToolbar];
    }

    v10 = v11;
LABEL_14:
    v12 = objc_loadWeakRetained(&self->_searchBar);
    v3 = [v10 stringByAppendingFormat:@" _searchBar=%p", v12];
  }

  return v3;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(UITextField *)self delegate];

  v8.receiver = self;
  v8.super_class = UISearchTextField;
  [(UITextField *)&v8 setDelegate:delegateCopy];

  delegate2 = [(UITextField *)self delegate];
  self->_searchBarTextFieldFlags.delegateImplementsItemProviderForCopyingTokens = objc_opt_respondsToSelector() & 1;
  self->_searchBarTextFieldFlags.delegateImplementsUnderscoredItemProviderForCopyingTokens = objc_opt_respondsToSelector() & 1;
  if (delegate != delegateCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_searchBar);
    [WeakRetained _delegateChangedForSearchField:self];
  }
}

- (void)setAccessibilityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = UISearchTextField;
  [&v9 setAccessibilityIdentifier:identifierCopy];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__UISearchTextField_setAccessibilityIdentifier___block_invoke;
  v7[3] = &unk_1E70F8130;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [WeakRetained _updateOriginalAndSiblingClonesOfSearchField:self updates:v7];
}

- (void)_setSearchBar:(id)bar
{
  barCopy = bar;
  objc_storeWeak(&self->_searchBar, barCopy);
  v5 = objc_opt_respondsToSelector();

  *&self->_searchBarTextFieldFlags = *&self->_searchBarTextFieldFlags & 0xFE | v5 & 1;
  suggestionController = self->_suggestionController;

  [(_UISearchSuggestionControllerIOSBase *)suggestionController searchTextFieldDidGainSearchBar:self];
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  v9.receiver = self;
  v9.super_class = UISearchTextField;
  [(UITextField *)&v9 _didMoveFromWindow:window toWindow:?];
  _suggestionController = [(UISearchTextField *)self _suggestionController];
  [(UIView *)self _removeGeometryChangeObserver:_suggestionController];

  if (toWindow)
  {
    _suggestionController2 = [(UISearchTextField *)self _suggestionController];
    [(UIView *)self _addGeometryChangeObserver:_suggestionController2];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UISearchTextFieldMovedToWindowNotification" object:self];
  }

  [(UISearchTextField *)self _reevaluateGlassAppearancePreferenceForBackdropStyle:self->_backdropStyle];
  [(UISearchTextField *)self _setNeedsUpdateBackgroundMaterial];
}

- (void)searchSuggestionController:(id)controller didSelectSuggestion:(id)suggestion atIndexPath:(id)path
{
  suggestionCopy = suggestion;
  if (self->_suggestionController == controller)
  {
    v12 = suggestionCopy;
    WeakRetained = objc_loadWeakRetained(&self->_searchBar);
    _searchController = [WeakRetained _searchController];

    if (_searchController)
    {
      delegate = objc_loadWeakRetained(&self->_searchBar);
      _searchController2 = [delegate _searchController];
      [_searchController2 _searchBarTextFieldDidSelectSearchSuggestion:v12];
    }

    else
    {
      delegate = [(UITextField *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate searchTextField:self didSelectSuggestion:v12];
      }

      else if (objc_opt_respondsToSelector())
      {
        [delegate _dci_searchTextField:self didSelectSuggestion:v12];
      }

      [(UISearchTextField *)self _dci_setSearchSuggestions:0];
      *(&self->_searchBarTextFieldFlags + 6) |= 0x10u;
    }

    suggestionCopy = v12;
  }
}

- (void)_suggestionsMenuInteractionWillEndWithAnimator:(id)animator
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  _searchController = [WeakRetained _searchController];

  if (_searchController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISearchTextField.m" lineNumber:244 description:@"Should only be called on standalone searchBar or searchTextField. This is an internal UIKit bug"];
  }

  delegate = [(UITextField *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _dci_searchTextField:self willDismissSearchSuggestionsMenuWasSuggestionSelected:(*(&self->_searchBarTextFieldFlags + 6) >> 4) & 1];
  }

  v7 = *(&self->_searchBarTextFieldFlags + 6);
  if ((v7 & 0x10) == 0)
  {
    *(&self->_searchBarTextFieldFlags + 6) = v7 | 0x20;
  }
}

- (void)setSearchSuggestions:(NSArray *)searchSuggestions
{
  v11 = searchSuggestions;
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  _searchController = [WeakRetained _searchController];

  if (_searchController)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = objc_loadWeakRetained(&self->_searchBar);
    _searchController2 = [v8 _searchController];
    [v6 raise:v7 format:{@"Please set suggestions on the associated searchController instead. self = %@, searchController = %@", self, _searchController2}];
  }

  *(&self->_searchBarTextFieldFlags + 6) &= 0xFFCFu;
  if (v11 && ![(UITextField *)self isEditing])
  {
    [(UISearchTextField *)self _setDeferredSearchSuggestions:v11];
  }

  else
  {
    [(UISearchTextField *)self _setDeferredSearchSuggestions:0];
    _suggestionController = [(UISearchTextField *)self _suggestionController];
    [_suggestionController updateSuggestions:v11 userInitiated:1];
  }
}

- (NSArray)searchSuggestions
{
  _suggestionController = [(UISearchTextField *)self _suggestionController];
  suggestions = [_suggestionController suggestions];

  return suggestions;
}

- (id)_initWithFrame:(CGRect)frame textLayoutManagerEnabled:(BOOL)enabled defersSearchImageConfiguration:(BOOL)configuration
{
  v18.receiver = self;
  v18.super_class = UISearchTextField;
  v6 = [(UITextField *)&v18 _initWithFrame:enabled textLayoutManagerEnabled:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v7 = v6;
  if (v6)
  {
    CommonStyleRegistration(v6);
    v8 = [_UIVisualStyleRegistry registryForTraitEnvironment:v7];
    v9 = [v8 visualStyleClassForView:v7];

    v10 = [[v9 alloc] initWithInstance:v7];
    v11 = *(v7 + 145);
    *(v7 + 145) = v10;

    v12 = objc_alloc_init(UIImageView);
    v13 = *(v7 + 138);
    *(v7 + 138) = v12;

    font = [v7 font];
    [v7 _updateDefaultLeftViewForFont:font];

    defaultLeftViewTintColor = [*(v7 + 145) defaultLeftViewTintColor];
    [*(v7 + 138) setTintColor:defaultLeftViewTintColor];

    v16 = _UINSLocalizedStringWithDefaultValue(@"Search", @"Search");
    [*(v7 + 138) setLargeContentTitle:v16];

    if (!configuration)
    {
      [v7 _setMagnifyingGlassImage:0];
    }

    [v7 setLeftView:*(v7 + 138)];
    [v7 setLeftViewMode:3];
    [v7 setClearButtonMode:1];
    [v7 setBorderStyle:3];
    if (UISearchBarUsesModernAppearance())
    {
      [*(v7 + 145) backgroundCornerRadius];
      [v7 _setRoundedRectBackgroundCornerRadius:?];
    }

    *(v7 + 564) |= 3u;
    CommonInit(v7);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = UISearchTextField;
  [(UITextField *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:*(&self->_searchBarTextFieldFlags + 6) & 1 forKey:@"UIAllowsCopyingTokens"];
  [coderCopy encodeBool:(*(&self->_searchBarTextFieldFlags + 6) >> 1) & 1 forKey:@"UIAllowsDeletingTokens"];
  tokenBackgroundColor = self->_tokenBackgroundColor;
  if (tokenBackgroundColor)
  {
    [coderCopy encodeObject:tokenBackgroundColor forKey:@"UITokenBackgroundColor"];
  }
}

- (UISearchTextField)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = UISearchTextField;
  v5 = [(UITextField *)&v15 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    CommonStyleRegistration(v5);
    v7 = [_UIVisualStyleRegistry registryForTraitEnvironment:v6];
    v8 = [v7 visualStyleClassForView:v6];

    v9 = [[v8 alloc] initWithInstance:v6];
    visualStyle = v6->_visualStyle;
    v6->_visualStyle = v9;

    CommonInit(v6);
    if ([coderCopy containsValueForKey:@"UIAllowsCopyingTokens"])
    {
      *(&v6->_searchBarTextFieldFlags + 6) = *(&v6->_searchBarTextFieldFlags + 6) & 0xFFFE | [coderCopy decodeBoolForKey:@"UIAllowsCopyingTokens"];
    }

    if ([coderCopy containsValueForKey:@"UIAllowsDeletingTokens"])
    {
      if ([coderCopy decodeBoolForKey:@"UIAllowsDeletingTokens"])
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      *(&v6->_searchBarTextFieldFlags + 6) = *(&v6->_searchBarTextFieldFlags + 6) & 0xFFFD | v11;
    }

    if ([coderCopy containsValueForKey:@"UITokenBackgroundColor"])
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UITokenBackgroundColor"];
      tokenBackgroundColor = v6->_tokenBackgroundColor;
      v6->_tokenBackgroundColor = v12;
    }
  }

  return v6;
}

- (void)willMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = UISearchTextField;
  windowCopy = window;
  [(UITextField *)&v6 willMoveToWindow:windowCopy];
  v5 = [(UISearchTextField *)self _suggestionController:v6.receiver];
  [v5 searchTextFieldWillMoveToWindow:windowCopy];
}

- (BOOL)canBecomeFocused
{
  _focusBehavior = [(UIView *)self _focusBehavior];
  searchBarTextFieldCanBecomeFocused = [_focusBehavior searchBarTextFieldCanBecomeFocused];

  return searchBarTextFieldCanBecomeFocused;
}

- (void)_createDictationButtonForSearchBarVisualProvider:(id)provider
{
  if (!self->_dictationButton)
  {
    providerCopy = provider;
    v5 = +[UIDictationSearchButton button];
    dictationButton = self->_dictationButton;
    self->_dictationButton = v5;

    v7 = [providerCopy colorForComponent:0 disabled:0];
    [(UIButton *)self->_dictationButton setTintColor:v7];

    [(UIControl *)self->_dictationButton addTarget:providerCopy action:sel_dictationButtonPressed_withEvent_ forControlEvents:64];
    [(UIView *)self->_dictationButton _setDisableDictationTouchCancellation:1];
    v8 = _UINSLocalizedStringWithDefaultValue(@"Dictation", @"Dictation");
    [(UIView *)self->_dictationButton setLargeContentTitle:v8];
  }
}

- (void)_cleanUpDictationButton
{
  [(UIView *)self->_dictationButton removeFromSuperview];
  dictationButton = self->_dictationButton;
  self->_dictationButton = 0;

  [(UISearchTextField *)self setShowDictationButton:0];
}

- (BOOL)_showsRightView
{
  v10.receiver = self;
  v10.super_class = UISearchTextField;
  _showsRightView = [(UITextField *)&v10 _showsRightView];
  v4 = *(&self->super.super.super._viewFlags + 2);
  v5 = ((v4 & 0x400000) != 0) & _showsRightView;
  if (v4 & 0x400000) == 0 && (_showsRightView)
  {
    if (-[UITextField rightViewMode](self, "rightViewMode") == UITextFieldViewModeUnlessEditing && -[UITextField _hasDictationButton](self, "_hasDictationButton") && (-[UITextField isEditing](self, "isEditing") || (WeakRetained = objc_loadWeakRetained(&self->_searchBar), [WeakRetained _searchController], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isActive"), v7, WeakRetained, v8)))
    {
      return !self->__alwaysShowsClearButtonWhenEmptyAndActive;
    }

    else
    {
      return 1;
    }
  }

  return v5;
}

- (BOOL)_showsLeftView
{
  v10.receiver = self;
  v10.super_class = UISearchTextField;
  _showsLeftView = [(UITextField *)&v10 _showsLeftView];
  v4 = *(&self->super.super.super._viewFlags + 2);
  v5 = ((v4 & 0x400000) == 0) & _showsLeftView;
  if (v4 & 0x400000) != 0 && (_showsLeftView)
  {
    if (-[UITextField rightViewMode](self, "rightViewMode") == UITextFieldViewModeUnlessEditing && -[UITextField _hasDictationButton](self, "_hasDictationButton") && (-[UITextField isEditing](self, "isEditing") || (WeakRetained = objc_loadWeakRetained(&self->_searchBar), [WeakRetained _searchController], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isActive"), v7, WeakRetained, v8)))
    {
      return !self->__alwaysShowsClearButtonWhenEmptyAndActive;
    }

    else
    {
      return 1;
    }
  }

  return v5;
}

- (void)_setMagnifyingGlassImage:(id)image
{
  imageCopy = image;
  if (!imageCopy)
  {
    imageCopy = [UIImage systemImageNamed:@"magnifyingglass"];
  }

  magnifyingGlassImage = self->_magnifyingGlassImage;
  self->_magnifyingGlassImage = imageCopy;

  [(UISearchTextField *)self _updateLeftViewForMagnifyingGlassImage];
}

- (void)_setIgnoresDynamicType:(BOOL)type
{
  typeCopy = type;
  v20 = *MEMORY[0x1E69E9840];
  if (type)
  {
    v5 = +[UIImageSymbolConfiguration unspecifiedConfiguration];
    _configurationIgnoringDynamicType = [v5 _configurationIgnoringDynamicType];
  }

  else
  {
    _configurationIgnoringDynamicType = 0;
  }

  [(UIImageView *)self->_defaultLeftView _setOverridingSymbolConfiguration:_configurationIgnoringDynamicType];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_knownTokenLayoutViews;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        delegateView = [*(*(&v15 + 1) + 8 * i) delegateView];
        leadingImage = [delegateView leadingImage];
        [leadingImage _setOverridingSymbolConfiguration:_configurationIgnoringDynamicType];

        textLabel = [delegateView textLabel];
        [textLabel setAdjustsFontForContentSizeCategory:!typeCopy];
      }

      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)_setBackgroundMaterialShouldBeGlass:(BOOL)glass
{
  v3 = *(&self->_searchBarTextFieldFlags + 6);
  if (((((v3 & 0x80) == 0) ^ glass) & 1) == 0)
  {
    if (glass)
    {
      v4 = 128;
    }

    else
    {
      v4 = 0;
    }

    *(&self->_searchBarTextFieldFlags + 6) = v3 & 0xFF7F | v4;
    [(UISearchTextField *)self _setNeedsUpdateBackgroundMaterial];
  }
}

- (void)_setClearButtonImage:(id)image forState:(unint64_t)state
{
  imageCopy = image;
  customClearButtons = self->_customClearButtons;
  if (!customClearButtons)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    v8 = self->_customClearButtons;
    self->_customClearButtons = v7;

    customClearButtons = self->_customClearButtons;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
  v10 = [(NSMutableDictionary *)customClearButtons objectForKey:v9];

  if (imageCopy)
  {
    if (v10 == imageCopy)
    {
      goto LABEL_8;
    }

    v11 = self->_customClearButtons;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
    [(NSMutableDictionary *)v11 setObject:imageCopy forKey:v12];
  }

  else
  {
    v13 = self->_customClearButtons;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
    [(NSMutableDictionary *)v13 removeObjectForKey:v12];
  }

  _clearButton = [(UITextField *)self _clearButton];
  [_clearButton setImage:0 forState:0];

  [(UITextField *)self _updateButtons];
LABEL_8:
}

- (id)_clearButtonImageForState:(unint64_t)state
{
  customClearButtons = self->_customClearButtons;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)customClearButtons objectForKey:v6];

  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v9 = WeakRetained;
  if (!state && !v7 && WeakRetained != 0)
  {
    v11 = 1;
    v12 = [WeakRetained _colorForComponent:1 disabled:0];
    if (![(UITextField *)self _partsShouldBeMini])
    {
      if (UISearchBarUsesModernAppearance())
      {
        v11 = 3;
      }

      else
      {
        v11 = 0;
      }
    }

    tintColor = [(UIView *)self tintColor];
    traitCollection = [(UIView *)self traitCollection];
    v7 = _GetTextFieldClearButtonWithCustomColorContrastSettings(0, v11, v12, tintColor, traitCollection, 1, 0);

    if (!_TextFieldScalesClearButton())
    {
      goto LABEL_18;
    }

    traitCollection2 = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

    if (userInterfaceIdiom == 6)
    {
      goto LABEL_18;
    }

    font = [(UITextField *)self font];
    traitCollection3 = [(UIView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection3 preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
    {
      if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_11.isa) != NSOrderedAscending)
      {
        v20 = 1;
LABEL_17:

        v21 = [UIImageSymbolConfiguration configurationWithFont:font scale:v20];
        v22 = [v7 imageWithConfiguration:v21];

        v7 = v22;
LABEL_18:

        goto LABEL_19;
      }

      UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_9.isa);
    }

    v20 = 2;
    goto LABEL_17;
  }

LABEL_19:
  if (v7)
  {
    v23 = v7;
  }

  else
  {
    v26.receiver = self;
    v26.super_class = UISearchTextField;
    v23 = [(UITextField *)&v26 _clearButtonImageForState:state];
  }

  v24 = v23;

  return v24;
}

- (void)_setOffsetValue:(id)value forIcon:(int64_t)icon
{
  valueCopy = value;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:icon];
  v7 = [(NSMutableDictionary *)self->_iconOffsets objectForKey:v6];
  v8 = v7;
  if (valueCopy && v7)
  {
    if ([valueCopy isEqualToValue:v7])
    {
      goto LABEL_12;
    }
  }

  else if ((valueCopy != 0) == (v7 != 0))
  {
    goto LABEL_12;
  }

  iconOffsets = self->_iconOffsets;
  if (!iconOffsets)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = self->_iconOffsets;
    self->_iconOffsets = v10;

    iconOffsets = self->_iconOffsets;
  }

  if (valueCopy)
  {
    [(NSMutableDictionary *)iconOffsets setObject:valueCopy forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)iconOffsets removeObjectForKey:v6];
  }

  [(UITextField *)self setNeedsLayout];
LABEL_12:
}

- (id)_offsetValueForIcon:(int64_t)icon
{
  iconOffsets = self->_iconOffsets;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:icon];
  v5 = [(NSMutableDictionary *)iconOffsets objectForKey:v4];

  return v5;
}

- (void)_setSearchTextOffetValue:(id)value
{
  valueCopy = value;
  v6 = valueCopy;
  searchTextOffsetValue = self->_searchTextOffsetValue;
  v9 = valueCopy;
  if (!valueCopy)
  {
    if (!searchTextOffsetValue)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!searchTextOffsetValue || (v8 = [valueCopy isEqualToValue:?], v6 = v9, !v8) || !self->_searchTextOffsetValue)
  {
LABEL_7:
    objc_storeStrong(&self->_searchTextOffsetValue, value);
    [(UITextField *)self setNeedsLayout];
    v6 = v9;
  }

LABEL_8:
}

- (void)_updateHelpMessageOverrideWithMessage:(id)message
{
  messageCopy = message;
  _searchBar = [(UISearchTextField *)self _searchBar];
  [_searchBar _setHelperPlaceholderOverride:messageCopy];
}

- (CGRect)_adjustedTextOrEditingRect:(CGRect)rect forBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = rect.size.height;
  v9 = rect.size.width;
  v10 = rect.origin.y;
  v11 = rect.origin.x;
  if (UISearchBarUsesModernAppearance())
  {
    v68 = height;
    v69 = v8;
    v67 = y;
    [(UISearchTextField *)self _searchIconViewRectForBounds:x, y, width, height];
    v17 = v13;
    v18 = v14;
    v19 = v15;
    rect = v16;
    if ((*(&self->super.super.super._viewFlags + 18) & 0x40) != 0)
    {
      MinX = CGRectGetMinX(*&v13);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v13);
    }

    v70 = MinX;
    if ([(UISearchTextField *)self _shouldHideMagnifyingGlassWhenEditingOrHasContent])
    {
      if ([(UISearchTextField *)self _isEditingOrHasContent])
      {
        leftView = [(UITextField *)self leftView];
        defaultLeftView = self->_defaultLeftView;

        if (leftView == defaultLeftView)
        {
          v30 = v17;
          v31 = v18;
          v32 = v19;
          rectCopy = rect;
          if ((*(&self->super.super.super._viewFlags + 18) & 0x40) != 0)
          {
            MaxX = CGRectGetMaxX(*&v30);
          }

          else
          {
            MaxX = CGRectGetMinX(*&v30);
          }

          v70 = MaxX;
        }
      }
    }

    v35 = x;
    v21 = v67;
    height = v68;
    v36 = v67;
    v37 = width;
    v38 = v68;
    if ((*(&self->super.super.super._viewFlags + 18) & 0x40) != 0)
    {
      v39 = CGRectGetMaxX(*&v35);
    }

    else
    {
      v39 = CGRectGetMinX(*&v35);
    }

    v8 = v69;
    v40 = v70 - v39;
    if ((*(&self->super.super.super._viewFlags + 18) & 0x40) != 0)
    {
      v40 = -v40;
    }

    if (v40 > 0.0)
    {
      [(_UISearchTextFieldVisualStyle *)self->_visualStyle textLeadingInset];
      v42 = v41;
      if ((*(&self->super.super.super._viewFlags + 18) & 0x40) != 0)
      {
        [(UITextField *)self paddingRight];
      }

      else
      {
        [(UITextField *)self paddingLeft];
      }

      v44 = *(&self->super.super.super._viewFlags + 2);
      v45 = v42 - v43;
      if ((v44 & 0x400000) != 0)
      {
        v45 = -v45;
      }

      v46 = v70 + v45;
      v47 = v11;
      v48 = v10;
      v49 = v9;
      v50 = v69;
      if ((v44 & 0x400000) != 0)
      {
        v51 = CGRectGetMaxX(*&v47);
      }

      else
      {
        v51 = CGRectGetMinX(*&v47);
      }

      v52 = *(&self->super.super.super._viewFlags + 2);
      v53 = v46 - v51;
      if ((v52 & 0x400000) != 0)
      {
        v53 = -v53;
      }

      v9 = v9 - v53;
      if ((v52 & 0x400000) == 0)
      {
        v11 = v46;
      }
    }
  }

  else
  {
    v21 = y;
    [(_UISearchTextFieldVisualStyle *)self->_visualStyle textLeftInsetLegacy];
    v23 = v22;
    [(UITextField *)self paddingLeft];
    v25 = v23 - v24;
    v11 = v11 + v25;
    v9 = v9 - v25;
    if (![(UITextField *)self _showsClearButtonWhenNonEmpty:[(UITextField *)self isEditing]])
    {
      [(_UISearchTextFieldVisualStyle *)self->_visualStyle textRightInset];
      v9 = v9 - v26;
      if ((*(&self->super.super.super._viewFlags + 18) & 0x40) != 0)
      {
        [(_UISearchTextFieldVisualStyle *)self->_visualStyle textRightInset];
        v11 = v11 + v27;
      }
    }
  }

  if ([(UIControl *)self contentVerticalAlignment]== UIControlContentVerticalAlignmentTop)
  {
    font = [(UITextField *)self font];
    [font lineHeight];
    v56 = round(v21 + height * 0.5 - v55 * 0.5);

    [(UIView *)self _currentScreenScale];
    v10 = v56 + 10.0 / v57;
  }

  searchTextOffsetValue = self->_searchTextOffsetValue;
  if (searchTextOffsetValue)
  {
    v59 = *(&self->super.super.super._viewFlags + 2);
    [(NSValue *)searchTextOffsetValue UIOffsetValue];
    if ((v59 & 0x400000) != 0)
    {
      v60 = -v60;
    }

    v11 = v11 + v60;
    v10 = v10 + v61;
  }

  if (v9 >= 0.0)
  {
    v62 = v9;
  }

  else
  {
    v62 = 0.0;
  }

  v63 = v11;
  v64 = v10;
  v65 = v8;
  result.size.height = v65;
  result.size.width = v62;
  result.origin.y = v64;
  result.origin.x = v63;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  v8.receiver = self;
  v8.super_class = UISearchTextField;
  [(UITextField *)&v8 textRectForBounds:?];
  [UISearchTextField _adjustedTextOrEditingRect:"_adjustedTextOrEditingRect:forBounds:" forBounds:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  v8.receiver = self;
  v8.super_class = UISearchTextField;
  [(UITextField *)&v8 editingRectForBounds:?];
  [UISearchTextField _adjustedTextOrEditingRect:"_adjustedTextOrEditingRect:forBounds:" forBounds:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_updateColorForMagnifyingGlass
{
  _hasContent = [(UISearchTextField *)self _hasContent];
  visualStyle = self->_visualStyle;
  if (_hasContent)
  {
    [(_UISearchTextFieldVisualStyle *)visualStyle filledLeftViewTintColor];
  }

  else
  {
    [(_UISearchTextFieldVisualStyle *)visualStyle defaultLeftViewTintColor];
  }
  v5 = ;
  [(UIView *)self->_defaultLeftView setTintColor:v5];
}

- (BOOL)_isEditingOrHasContent
{
  if ([(UITextField *)self isEditing])
  {
    return 1;
  }

  return [(UISearchTextField *)self _hasContent];
}

- (CGRect)_adjustmentsForSearchIconViewRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(_UISearchTextFieldVisualStyle *)self->_visualStyle leftViewInset];
  v9 = v8;
  v10 = *(&self->super.super.super._viewFlags + 2);
  if ((v10 & 0x400000) != 0)
  {
    v32.receiver = self;
    v11 = &selRef_rightViewRectForBounds_;
    v12 = &v32;
  }

  else
  {
    selfCopy = self;
    v11 = &selRef_leftViewRectForBounds_;
    v12 = &selfCopy;
  }

  v12->super_class = UISearchTextField;
  objc_msgSendSuper2(v12, *v11, x, y, width, height, selfCopy);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(UIView *)self _currentScreenScale];
  v22 = v21;
  v23 = *(&self->super.super.super._viewFlags + 2);
  [(_UISearchTextFieldVisualStyle *)self->_visualStyle leftViewInsetAddition];
  if ((v23 & 0x400000) != 0)
  {
    v24 = -v24;
  }

  v25 = -v9;
  if ((v10 & 0x400000) == 0)
  {
    v25 = v9;
  }

  v26 = v25 + v14;
  v27 = v18 - (v9 - v9);
  v28 = v16 + 0.0 + -1.0 / v22;
  v29 = v26 + v24;
  v30 = v20;
  result.size.height = v30;
  result.size.width = v27;
  result.origin.y = v28;
  result.origin.x = v29;
  return result;
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
  if ((*(&self->super.super.super._viewFlags + 18) & 0x40) != 0)
  {
    [(UISearchTextField *)self _bookmarkViewRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  }

  else
  {
    [(UISearchTextField *)self _searchIconViewRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
  if ((*(&self->super.super.super._viewFlags + 18) & 0x40) != 0)
  {
    [(UISearchTextField *)self _searchIconViewRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  }

  else
  {
    [(UISearchTextField *)self _bookmarkViewRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_searchIconViewRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UISearchTextField *)self _adjustmentsForSearchIconViewRectForBounds:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([(UISearchTextField *)self _shouldCenterPlaceholder])
  {
    rect.origin.y = v15;
    rect.size.width = v13;
    v16 = *(&self->super.super.super._viewFlags + 2);
    [(UISearchTextField *)self placeholderRectForBounds:x, y, width, height];
    rect.origin.x = v20;
    if ((v16 & 0x400000) != 0)
    {
      v35 = v17;
      v36 = v18;
      v37 = v19;
      *&rect.size.height = self;
      v51 = UISearchTextField;
      [(CGFloat *)&rect.size.height rightViewRectForBounds:x, y, width, height];
      [(UIView *)self _currentScreenScale];
      v24 = v38;
      v53.origin.x = rect.origin.x;
      v53.origin.y = v35;
      v53.size.width = v36;
      v53.size.height = v37;
      MaxX = CGRectGetMaxX(v53);
      _placeholderLabel = [(UITextField *)self _placeholderLabel];
      text = [_placeholderLabel text];
      v41 = [text length];

      v29 = -1.0;
      if (v41)
      {
        [(_UISearchTextFieldVisualStyle *)self->_visualStyle leftViewToPlaceholderCenteredMargin];
        MaxX = MaxX + v42;
      }
    }

    else
    {
      v52.receiver = self;
      v52.super_class = UISearchTextField;
      [(UITextField *)&v52 leftViewRectForBounds:x, y, width, height];
      v22 = v21;
      [(UIView *)self _currentScreenScale];
      v24 = v23;
      [(_UISearchTextFieldVisualStyle *)self->_visualStyle leftViewToPlaceholderCenteredMargin];
      v26 = rect.origin.x - v22 - v25;
      [(UITextField *)self paddingLeft];
      MaxX = v26 + v27;
      v29 = 1.0;
    }

    v9 = UIRectIntegralWithScale(MaxX + v29 / v24, v11, rect.size.width, rect.origin.y, v24);
    v11 = v43;
    v13 = v44;
    v15 = v45;
  }

  else
  {
    v30 = [(UISearchTextField *)self _offsetValueForIcon:0];
    v31 = v30;
    if (v30)
    {
      v32 = *(&self->super.super.super._viewFlags + 2);
      [v30 UIOffsetValue];
      if ((v32 & 0x400000) != 0)
      {
        v33 = -v33;
      }

      v9 = v9 + v33;
      v11 = v11 + v34;
    }
  }

  v46 = v9;
  v47 = v11;
  v48 = v13;
  v49 = v15;
  result.size.height = v49;
  result.size.width = v48;
  result.origin.y = v47;
  result.origin.x = v46;
  return result;
}

- (CGRect)_bookmarkViewRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(_UISearchTextFieldVisualStyle *)self->_visualStyle rightViewInset];
  v9 = v8;
  [(_UISearchTextFieldVisualStyle *)self->_visualStyle rightViewInset];
  v11 = v10;
  p_viewFlags = &self->super.super.super._viewFlags;
  if ((*(&self->super.super.super._viewFlags + 18) & 0x40) != 0)
  {
    v42.receiver = self;
    v13 = &selRef_leftViewRectForBounds_;
    v14 = &v42;
  }

  else
  {
    selfCopy = self;
    v13 = &selRef_rightViewRectForBounds_;
    v14 = &selfCopy;
  }

  v14->super_class = UISearchTextField;
  objc_msgSendSuper2(v14, *v13, x, y, width, height, selfCopy);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21 + 0.0;
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v24 = WeakRetained;
  if (WeakRetained && [WeakRetained showsSearchResultsButton])
  {
    v25 = *(&self->super.super.super._viewFlags + 2);
    [(_UISearchTextFieldVisualStyle *)self->_visualStyle searchResultsListButtonOffset];
    if ((v25 & 0x400000) != 0)
    {
      v27 = -v26;
    }

    else
    {
      v27 = v26;
    }

    v22 = v22 + 0.5;
    v28 = 3;
  }

  else
  {
    v29 = *(&self->super.super.super._viewFlags + 2);
    [(_UISearchTextFieldVisualStyle *)self->_visualStyle searchBookmarkButtonOffset];
    if ((v29 & 0x400000) != 0)
    {
      v27 = -v30;
    }

    else
    {
      v27 = v30;
    }

    v28 = 2;
  }

  v31 = [(UISearchTextField *)self _offsetValueForIcon:v28];
  v32 = v31;
  v33 = v9 + v16 - v27;
  if (v31)
  {
    v34 = *(p_viewFlags + 2);
    [v31 UIOffsetValue];
    if ((v34 & 0x400000) != 0)
    {
      v35 = -v35;
    }

    v33 = v33 + v35;
    v22 = v22 + v36;
  }

  v37 = v33;
  v38 = v22;
  v39 = v18 - (v9 - v11);
  v40 = v20;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (CGSize)_clearButtonSize
{
  v3 = [(NSMutableDictionary *)self->_customClearButtons objectForKey:&unk_1EFE2FC20];
  v4 = v3;
  if (v3)
  {
    [v3 size];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UISearchTextField;
    [(UISearchTextField *)&v11 _clearButtonSize];
  }

  v7 = v5;
  v8 = v6;

  v9 = v7;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGRect)clearButtonRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v54.receiver = self;
  v54.super_class = UISearchTextField;
  [(UITextField *)&v54 clearButtonRectForBounds:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v48 = v14;
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 6)
  {
    [(UIView *)self _currentScreenScale];
    if (v17 > 1.0)
    {
      [(UIView *)self _currentScreenScale];
      v19 = 1.0 / v18;
      v20 = -v19;
      if ((*(&self->super.super.super._viewFlags + 18) & 0x40) != 0)
      {
        v20 = v19;
      }

      v9 = v9 + v20;
      v11 = v11 - v19;
    }
  }

  traitCollection2 = [(UIView *)self traitCollection];
  userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom2 == 5)
  {
    if ((*(&self->super.super.super._viewFlags + 18) & 0x40) == 0)
    {
      v55.origin.x = x;
      v55.origin.y = y;
      v55.size.width = width;
      v55.size.height = height;
      MaxX = CGRectGetMaxX(v55);
      v56.origin.x = v9;
      v56.origin.y = v11;
      v56.size.width = v13;
      v24 = v48;
      v56.size.height = v48;
      v25 = MaxX - CGRectGetWidth(v56);
      [(UISearchTextField *)self _clearButtonMarginX];
      v53.receiver = self;
      v53.super_class = UISearchTextField;
      [(UITextField *)&v53 _clearButtonPadX];
      UIRoundToViewScale(self);
      v27 = round(v25 - v26);
      v52.receiver = self;
      v52.super_class = UISearchTextField;
      [(UITextField *)&v52 clearButtonOffset];
      v9 = v27 + v28;
      goto LABEL_12;
    }

    clearButtonInnerInset = [(_UISearchTextFieldVisualStyle *)self->_visualStyle clearButtonInnerInset];

    if (!clearButtonInnerInset)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v47 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v47, OS_LOG_TYPE_FAULT, "clearButtonInnerInset unexpectedly nil. Interpreted as 0.", buf, 2u);
        }
      }

      else
      {
        v46 = *(__UILogGetCategoryCachedImpl("Assert", &clearButtonRectForBounds____s_category) + 8);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v46, OS_LOG_TYPE_ERROR, "clearButtonInnerInset unexpectedly nil. Interpreted as 0.", buf, 2u);
        }
      }
    }

    clearButtonInnerInset2 = [(_UISearchTextFieldVisualStyle *)self->_visualStyle clearButtonInnerInset];
    [clearButtonInnerInset2 floatValue];

    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    MinX = CGRectGetMinX(v57);
    UIRoundToViewScale(self);
    v33 = round(MinX + v32);
    v50.receiver = self;
    v50.super_class = UISearchTextField;
    [(UITextField *)&v50 clearButtonOffset];
    v35 = v33 + v34;
    v49.receiver = self;
    v49.super_class = UISearchTextField;
    [(UITextField *)&v49 _clearButtonPadX];
    v9 = v35 - v36;
  }

  v24 = v48;
LABEL_12:
  v37 = [(UISearchTextField *)self _offsetValueForIcon:1];
  v38 = v37;
  if (v37)
  {
    v39 = *(&self->super.super.super._viewFlags + 2);
    [v37 UIOffsetValue];
    if ((v39 & 0x400000) != 0)
    {
      v40 = -v40;
    }

    v9 = v9 + v40;
    v11 = v11 + v41;
  }

  v42 = v9;
  v43 = v11;
  v44 = v13;
  v45 = v24;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (BOOL)_becomeFirstResponderWhenPossible
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v4 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_9;
  }

  v5 = WeakRetained;
  _searchController = [v5 _searchController];
  if (!_searchController)
  {
    controller = [v5 controller];
    if (controller)
    {
      v10 = controller;
      isActive = [controller isActive];

      if (!isActive)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_9:
    v14.receiver = self;
    v14.super_class = UISearchTextField;
    _becomeFirstResponderWhenPossible = [(UIView *)&v14 _becomeFirstResponderWhenPossible];
    goto LABEL_10;
  }

  v7 = _searchController;
  isActive2 = [_searchController isActive];

  if (isActive2)
  {
    goto LABEL_9;
  }

LABEL_7:
  _becomeFirstResponderWhenPossible = 0;
LABEL_10:

  return _becomeFirstResponderWhenPossible;
}

- (BOOL)_shouldSendContentChangedNotificationsIfOnlyMarkedTextChanged
{
  if (*&self->_searchBarTextFieldFlags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_searchBar);
    _shouldSendContentChangedNotificationsIfOnlyMarkedTextChanged = [WeakRetained _shouldSendContentChangedNotificationsIfOnlyMarkedTextChanged];

    LOBYTE(v2) = _shouldSendContentChangedNotificationsIfOnlyMarkedTextChanged;
  }

  else
  {
    v2 = dyld_program_sdk_at_least();
    if (v2)
    {
      if (_UIInternalPreferencesRevisionOnce != -1)
      {
        dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
      }

      v3 = _UIInternalPreferencesRevisionVar;
      if (_UIInternalPreferencesRevisionVar < 1 || (v7 = _UIInternalPreference_UISearchTextFieldShouldSendContentChangeNotificationsForMarkedText, _UIInternalPreferencesRevisionVar == _UIInternalPreference_UISearchTextFieldShouldSendContentChangeNotificationsForMarkedText))
      {
        v4 = 1;
      }

      else
      {
        do
        {
          v4 = v3 >= v7;
          if (v3 < v7)
          {
            break;
          }

          _UIInternalPreferenceSync(v3, &_UIInternalPreference_UISearchTextFieldShouldSendContentChangeNotificationsForMarkedText, @"UISearchTextFieldShouldSendContentChangeNotificationsForMarkedText", _UIInternalPreferenceUpdateBool);
          v7 = _UIInternalPreference_UISearchTextFieldShouldSendContentChangeNotificationsForMarkedText;
        }

        while (v3 != _UIInternalPreference_UISearchTextFieldShouldSendContentChangeNotificationsForMarkedText);
      }

      if (byte_1EA95E174)
      {
        LOBYTE(v2) = 1;
      }

      else
      {
        LOBYTE(v2) = v4;
      }
    }
  }

  return v2;
}

- (CGRect)_availableTextRectForBounds:(CGRect)bounds forEditing:(BOOL)editing
{
  v22.receiver = self;
  v22.super_class = UISearchTextField;
  [(UITextField *)&v22 _availableTextRectForBounds:editing forEditing:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(UITextField *)self _hasSuffixField])
  {
    [(_UISearchTextFieldVisualStyle *)self->_visualStyle searchTextResultsPadding];
    v14 = v13;
    [(UIView *)self _currentScreenScale];
    v16 = v14 / v15 + -2.0;
    v10 = v10 - v16;
    v17 = v6 + v16;
    if ((*(&self->super.super.super._viewFlags + 18) & 0x40) != 0)
    {
      v6 = v17;
    }
  }

  v18 = v6;
  v19 = v8;
  v20 = v10;
  v21 = v12;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_suffixFrame
{
  v18.receiver = self;
  v18.super_class = UISearchTextField;
  [(UITextField *)&v18 _suffixFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(UIView *)self bounds];
  v17.receiver = self;
  v17.super_class = UISearchTextField;
  [(UITextField *)&v17 _availableTextRectForBounds:[(UITextField *)self isEditing] forEditing:v9, v10, v11, v12];
  MaxX = CGRectGetMaxX(v19);
  v14 = v4;
  v15 = v6;
  v16 = v8;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = MaxX;
  return result;
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(UISearchTextField *)self _shouldCenterPlaceholder])
  {
    [(UITextField *)self _availableTextRectExcludingButtonsForBounds:x, y, width, height];
    v9 = v8;
    v50 = v10;
    v12 = v11;
    v14 = v13;
    v52.receiver = self;
    v52.super_class = UISearchTextField;
    v15 = 0.0;
    if ([(UITextField *)&v52 _showsLeftView])
    {
      [(UISearchTextField *)self _adjustmentsForSearchIconViewRectForBounds:x, y, width, height];
      v17 = v16 * 0.5;
      [(_UISearchTextFieldVisualStyle *)self->_visualStyle leftViewToPlaceholderCenteredMargin];
      v15 = v17 + v18 * 0.5;
    }

    _placeholderLabel = [(UITextField *)self _placeholderLabel];
    v20 = v12 - (v15 + v15);
    [_placeholderLabel sizeThatFits:{v20, v14}];
    if (v21 <= v20)
    {
      v20 = v21;
    }

    [(UITextField *)self paddingLeft];
    v23 = v15 + v12 * 0.5 - v20 * 0.5 - v22;
    v24 = v23 - v9;
    v25 = v9 + v23;
    v26 = v12 - v24;
    [(UIView *)self _currentScreenScale];
    v28 = UIRectIntegralWithScale(v25, v50, v26, v14, v27);
    v30 = v29;
    v32 = v31;
  }

  else
  {
    v51.receiver = self;
    v51.super_class = UISearchTextField;
    [(UITextField *)&v51 placeholderRectForBounds:x, y, width, height];
    v28 = v33;
    v30 = v34;
    v36 = v35;
    v32 = v37;
    _placeholderLabel2 = [(UITextField *)self _placeholderLabel];
    [_placeholderLabel2 sizeThatFits:{v36, v32}];
    if (v39 <= v36)
    {
      v20 = v39;
    }

    else
    {
      v20 = v36;
    }

    if ((*(&self->super.super.super._viewFlags + 18) & 0x40) != 0)
    {
      [(UITextField *)self paddingLeft];
      v41 = v36 - v20 - v40;
      [(UITextField *)self paddingRight];
      v28 = v28 + v41 - v42;
    }
  }

  [(UITextField *)self paddingLeft];
  v44 = v20 + v43;
  [(UITextField *)self paddingRight];
  v46 = v44 + v45;
  v47 = v28;
  v48 = v30;
  v49 = v32;
  result.size.height = v49;
  result.size.width = v46;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

- (void)_reevaluateGlassAppearancePreferenceForBackdropStyle:(int64_t)style
{
  v5 = _UISolariumEnabled();
  if (style == 2005 && v5 && [(UITextField *)self borderStyle]== UITextBorderStyleRoundedRect)
  {
    traitCollection = [(UIView *)self traitCollection];
    -[UISearchTextField _setWantsDynamicBackgroundMaterial:](self, "_setWantsDynamicBackgroundMaterial:", [traitCollection userInterfaceIdiom] != 6);
  }

  else
  {

    [(UISearchTextField *)self _setWantsDynamicBackgroundMaterial:0];
  }
}

- (void)_updateBackgroundView:(id)view withStyle:(int64_t)style filter:(id)filter
{
  v7 = MEMORY[0x1E6979378];
  viewCopy = view;
  v8 = [v7 filterWithType:filter];
  layer = [viewCopy layer];
  [layer setCompositingFilter:v8];

  [viewCopy setSearchBarStyle:style];
}

- (id)_createEffectsBackgroundViewWithStyle:(int64_t)style applyFilter:(id)filter
{
  filterCopy = filter;
  _systemBackgroundView = [(UITextField *)self _systemBackgroundView];
  v8 = [_UISearchBarSearchFieldBackgroundView alloc];
  [_systemBackgroundView bounds];
  v13 = [(_UISearchBarSearchFieldBackgroundView *)v8 initWithFrame:[(UIControl *)self isEnabled] active:0 updateView:v9, v10, v11, v12];
  [_systemBackgroundView cornerRadius];
  [(_UISearchBarSearchFieldBackgroundView *)v13 setCornerRadius:?];
  [(UISearchTextField *)self _updateBackgroundView:v13 withStyle:style filter:filterCopy];

  -[_UISearchBarSearchFieldBackgroundView setBarStyle:](v13, "setBarStyle:", [_systemBackgroundView barStyle]);
  [_systemBackgroundView addSubview:v13];

  return v13;
}

- (void)_setAnimatesBackgroundCornerRadius:(BOOL)radius
{
  radiusCopy = radius;
  [(_UITextFieldRoundedRectBackgroundViewNeue *)self->_effectBackgroundTop setHasFlexibleCornerRadius:?];
  effectBackgroundBottom = self->_effectBackgroundBottom;

  [(_UITextFieldRoundedRectBackgroundViewNeue *)effectBackgroundBottom setHasFlexibleCornerRadius:radiusCopy];
}

- (void)_setBackgroundViewsAlpha:(double)alpha
{
  [(UIView *)self->_effectBackgroundTop setAlpha:?];
  effectBackgroundBottom = self->_effectBackgroundBottom;

  [(UIView *)effectBackgroundBottom setAlpha:alpha];
}

- (void)_highlightedDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5.receiver = self;
  v5.super_class = UISearchTextField;
  [(UITextField *)&v5 _highlightedDidChangeAnimated:?];
  [(UISearchTextField *)self __highlightedDidChangeAnimated:animatedCopy];
}

- (void)_applyHighlightedAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5.receiver = self;
  v5.super_class = UISearchTextField;
  [(UITextField *)&v5 _applyHighlightedAnimated:?];
  [(UISearchTextField *)self __highlightedDidChangeAnimated:animatedCopy];
}

- (void)__highlightedDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  isHighlighted = [(UIControl *)self isHighlighted];
  v6 = 0.3;
  v7[1] = 3221225472;
  v7[0] = MEMORY[0x1E69E9820];
  v7[2] = __52__UISearchTextField___highlightedDidChangeAnimated___block_invoke;
  v7[3] = &unk_1E70F35E0;
  if (!animatedCopy)
  {
    v6 = 0.0;
  }

  v7[4] = self;
  v8 = isHighlighted;
  [UIView animateWithDuration:v7 animations:v6];
}

uint64_t __52__UISearchTextField___highlightedDidChangeAnimated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1088) setShowingTouch:*(a1 + 40)];
  [*(*(a1 + 32) + 1096) setShowingTouch:*(a1 + 40)];
  v2 = ([*(*(a1 + 32) + 1168) state] - 1) < 2;
  [*(*(a1 + 32) + 1088) setShowingCursor:v2];
  v3 = *(*(a1 + 32) + 1096);

  return [v3 setShowingCursor:v2];
}

- (void)_setNeedsUpdateForBackdropStyle:(int64_t)style
{
  self->_backdropStyle = style;
  *(&self->_searchBarTextFieldFlags + 6) |= 0x200u;
  [(UIView *)self setNeedsUpdateProperties];
}

- (void)updateForBackdropStyle:(int64_t)style
{
  self->_backdropStyle = style;
  *(&self->_searchBarTextFieldFlags + 6) &= ~0x200u;
  [(UISearchTextField *)self _updateForBackdropStyle];
}

- (void)_updateForBackdropStyle
{
  backdropStyle = self->_backdropStyle;
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 3)
  {
    switch(backdropStyle)
    {
      case 2020:
        effectBackgroundBottom = self->_effectBackgroundBottom;
        if (effectBackgroundBottom)
        {
          [(UIView *)effectBackgroundBottom removeFromSuperview];
          v12 = self->_effectBackgroundBottom;
          self->_effectBackgroundBottom = 0;
        }

        v13 = *MEMORY[0x1E6979CE8];
        selfCopy4 = self;
        if (self->_effectBackgroundTop)
        {
          goto LABEL_12;
        }

        v15 = 2020;
        break;
      case 2005:
        v8 = self->_effectBackgroundBottom;
        if (v8)
        {
          [(UIView *)v8 removeFromSuperview];
          v9 = self->_effectBackgroundBottom;
          self->_effectBackgroundBottom = 0;
        }

        if (self->_effectBackgroundTop)
        {
          selfCopy4 = self;
          goto LABEL_12;
        }

        selfCopy4 = self;
        v15 = 2005;
        v16 = 0;
LABEL_21:
        v17 = [(UISearchTextField *)selfCopy4 _createEffectsBackgroundViewWithStyle:v15 applyFilter:v16];
        effectBackgroundTop = self->_effectBackgroundTop;
        self->_effectBackgroundTop = v17;
        goto LABEL_22;
      case 2030:
        v18 = self->_effectBackgroundBottom;
        if (v18)
        {
          [(UISearchTextField *)self _updateBackgroundView:v18 withStyle:2030 filter:*MEMORY[0x1E6979CD0]];
        }

        else
        {
          v26 = [(UISearchTextField *)self _createEffectsBackgroundViewWithStyle:2030 applyFilter:*MEMORY[0x1E6979CD0]];
          v27 = self->_effectBackgroundBottom;
          self->_effectBackgroundBottom = v26;
        }

        v13 = *MEMORY[0x1E6979CF8];
        selfCopy4 = self;
        if (self->_effectBackgroundTop)
        {
LABEL_12:
          [UISearchTextField _updateBackgroundView:selfCopy4 withStyle:"_updateBackgroundView:withStyle:filter:" filter:?];
          goto LABEL_23;
        }

        v15 = 2030;
        break;
      case 2010:
        goto LABEL_17;
      case 2:
        if (UISearchBarUsesModernAppearance())
        {
LABEL_17:
          v14 = MEMORY[0x1E6979CD0];
        }

        else
        {
          v14 = MEMORY[0x1E6979850];
        }

        v19 = *v14;
        v20 = self->_effectBackgroundBottom;
        if (v20)
        {
          [(UISearchTextField *)self _updateBackgroundView:v20 withStyle:backdropStyle filter:v19];
        }

        else
        {
          v21 = [(UISearchTextField *)self _createEffectsBackgroundViewWithStyle:backdropStyle applyFilter:v19];
          v22 = self->_effectBackgroundBottom;
          self->_effectBackgroundBottom = v21;
        }

        v23 = self->_effectBackgroundTop;
        if (v23)
        {
          [(UISearchTextField *)self _updateBackgroundView:v23 withStyle:backdropStyle filter:*MEMORY[0x1E6979CE8]];
        }

        else
        {
          v24 = [(UISearchTextField *)self _createEffectsBackgroundViewWithStyle:backdropStyle applyFilter:*MEMORY[0x1E6979CE8]];
          v25 = self->_effectBackgroundTop;
          self->_effectBackgroundTop = v24;
        }

        [(UIView *)self->_effectBackgroundBottom setHidden:backdropStyle == 2];

        goto LABEL_23;
      default:
        goto LABEL_23;
    }

    v16 = v13;
    goto LABEL_21;
  }

  [(UIView *)self->_effectBackgroundBottom removeFromSuperview];
  v6 = self->_effectBackgroundBottom;
  self->_effectBackgroundBottom = 0;

  [(UIView *)self->_effectBackgroundTop removeFromSuperview];
  effectBackgroundTop = self->_effectBackgroundTop;
  self->_effectBackgroundTop = 0;
LABEL_22:

LABEL_23:

  [(UISearchTextField *)self _reevaluateGlassAppearancePreferenceForBackdropStyle:backdropStyle];
}

- (void)_clearBackgroundViews
{
  v3.receiver = self;
  v3.super_class = UISearchTextField;
  [(UISearchTextField *)&v3 _clearBackgroundViews];
  [(UISearchTextField *)self _removeEffectsBackgroundViews];
}

- (void)_removeEffectsBackgroundViews
{
  [(UIView *)self->_effectBackgroundTop removeFromSuperview];
  effectBackgroundTop = self->_effectBackgroundTop;
  self->_effectBackgroundTop = 0;

  [(UIView *)self->_effectBackgroundBottom removeFromSuperview];
  effectBackgroundBottom = self->_effectBackgroundBottom;
  self->_effectBackgroundBottom = 0;
}

- (void)setBorderStyle:(int64_t)style
{
  v4.receiver = self;
  v4.super_class = UISearchTextField;
  [(UITextField *)&v4 setBorderStyle:style];
  [(UISearchTextField *)self _reevaluateGlassAppearancePreferenceForBackdropStyle:self->_backdropStyle];
}

- (void)setText:(id)text
{
  textCopy = text;
  v6.receiver = self;
  v6.super_class = UISearchTextField;
  [(UITextField *)&v6 setText:textCopy];
  if (dyld_program_sdk_at_least() && (*(&self->_searchBarTextFieldFlags + 6) & 0x100) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_searchBar);
    [WeakRetained _updateForNewText:textCopy inSearchField:self];
  }
}

- (void)updateProperties
{
  v4.receiver = self;
  v4.super_class = UISearchTextField;
  [(UIView *)&v4 updateProperties];
  v3 = *(&self->_searchBarTextFieldFlags + 6);
  if ((v3 & 0x200) != 0)
  {
    *(&self->_searchBarTextFieldFlags + 6) = v3 & 0xFDFF;
    [(UISearchTextField *)self _updateForBackdropStyle];
    v3 = *(&self->_searchBarTextFieldFlags + 6);
  }

  if ((v3 & 0x400) != 0)
  {
    *(&self->_searchBarTextFieldFlags + 6) = v3 & 0xFBFF;
    [(UISearchTextField *)self _updateBackgroundMaterial];
  }
}

void __42__UISearchTextField__becomeFirstResponder__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _searchController];

  if (v2 && ([*(a1 + 32) _searchController], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "_searchBarShouldFinalizeBecomingFirstResponder"), v3, !v4))
  {
    [*(a1 + 40) _setPreventSelectionViewActivation:0];
    *(*(a1 + 40) + 1113) = 1;
    [*(a1 + 40) _clearBecomeFirstResponderWhenCapable];
    v5 = [*(a1 + 40) keyboardSceneDelegate];
    [v5 _clearPreservedInputViewsWithRestorableResponder:*(a1 + 40)];
  }

  else if ([*(a1 + 40) _preventSelectionViewActivation])
  {
    v7 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__UISearchTextField__becomeFirstResponder__block_invoke_2;
    v8[3] = &unk_1E70F3590;
    v8[4] = v7;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__UISearchTextField__becomeFirstResponder__block_invoke_3;
    v6[3] = &unk_1E70F5AC0;
    [v7 _animateForFirstResponderChangeWithAnimations:v8 completion:v6];
    [*(a1 + 40) _setPreventSelectionViewActivation:0];
    [*(a1 + 40) __resumeBecomeFirstResponder];
    *(*(a1 + 40) + 1113) = 1;
  }

  *(*(a1 + 40) + 1112) = 0;
}

- (void)_cleanUpKeyboardHideAndShowNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIKeyboardWillShowNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"UIKeyboardWillHideNotification" object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:@"UIKeyboardDidHideNotification" object:0];

  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  _searchController = [WeakRetained _searchController];
  [_searchController _stopDeferringSearchSuggestionsWithReason:7 postDeferralAction:0];
}

- (BOOL)_finishResignFirstResponder
{
  [(UISearchTextField *)self _cleanUpKeyboardHideAndShowNotifications];
  v4.receiver = self;
  v4.super_class = UISearchTextField;
  return [(UITextField *)&v4 _finishResignFirstResponder];
}

- (BOOL)resignFirstResponder
{
  v12.receiver = self;
  v12.super_class = UISearchTextField;
  resignFirstResponder = [(UITextField *)&v12 resignFirstResponder];
  if (resignFirstResponder)
  {
    if (self->_animatePlaceholderOnResignFirstResponder)
    {
      text = [(UISearchTextField *)self text];
      v5 = [text length];

      if (v5)
      {
        textInputTraits = [(UISearchTextField *)self textInputTraits];
        v7 = textInputTraits;
        v8 = 0;
      }

      else
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __41__UISearchTextField_resignFirstResponder__block_invoke;
        v11[3] = &unk_1E70F3590;
        v11[4] = self;
        [(UISearchTextField *)self _animateForFirstResponderChangeWithAnimations:v11];
        self->_animatePlaceholderOnResignFirstResponder = 0;
        textInputTraits = [(UISearchTextField *)self textInputTraits];
        v7 = textInputTraits;
        v8 = 1;
      }

      [textInputTraits setDeferBecomingResponder:v8];
    }

    else if ([(UISearchTextField *)self _shouldHideMagnifyingGlassWhenEditingOrHasContent]&& ![(UISearchTextField *)self _hasContent])
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __41__UISearchTextField_resignFirstResponder__block_invoke_2;
      v10[3] = &unk_1E70F3590;
      v10[4] = self;
      [(UISearchTextField *)self _animateForFirstResponderChangeWithAnimations:v10];
    }

    [(UISearchTextField *)self _cleanUpKeyboardHideAndShowNotifications];
    *(&self->_searchBarTextFieldFlags + 6) &= ~8u;
  }

  return resignFirstResponder;
}

- (BOOL)canResignFirstResponder
{
  v8.receiver = self;
  v8.super_class = UISearchTextField;
  canResignFirstResponder = [(UITextField *)&v8 canResignFirstResponder];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v5 = WeakRetained;
  if (canResignFirstResponder)
  {
    v6 = WeakRetained == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    canResignFirstResponder = [WeakRetained _transplanting] ^ 1;
  }

  return canResignFirstResponder;
}

- (void)_searchBarCancelButtonClicked:(id)clicked
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  _searchController = [WeakRetained _searchController];

  if (_searchController)
  {
    v5 = objc_loadWeakRetained(&self->_searchBar);
    [_searchController _searchBarCancelButtonClicked:v5];
  }
}

- (BOOL)_delegateShouldEndEditing
{
  v9.receiver = self;
  v9.super_class = UISearchTextField;
  _delegateShouldEndEditing = [(UITextField *)&v9 _delegateShouldEndEditing];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v5 = WeakRetained;
  if (_delegateShouldEndEditing)
  {
    v6 = WeakRetained == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = objc_loadWeakRetained(&self->_searchBar);
    LOBYTE(_delegateShouldEndEditing) = [v7 _searchBarTextFieldShouldEndEditing];
  }

  return _delegateShouldEndEditing;
}

- (BOOL)_delegateShouldClear
{
  v8.receiver = self;
  v8.super_class = UISearchTextField;
  _delegateShouldClear = [(UITextField *)&v8 _delegateShouldClear];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v5 = WeakRetained;
  if (_delegateShouldClear)
  {
    v6 = WeakRetained == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    LOBYTE(_delegateShouldClear) = [WeakRetained _searchBarTextFieldShouldClear];
  }

  return _delegateShouldClear;
}

- (BOOL)_delegateShouldChangeCharactersInTextStorageRanges:(id)ranges replacementString:(id)string delegateCares:(BOOL *)cares
{
  rangesCopy = ranges;
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = UISearchTextField;
  v10 = [(UITextField *)&v15 _delegateShouldChangeCharactersInTextStorageRanges:rangesCopy replacementString:stringCopy delegateCares:cares];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v12 = WeakRetained;
  if (v10)
  {
    v13 = WeakRetained == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    LOBYTE(v10) = [WeakRetained _searchBarTextFieldShouldChangeCharactersInRanges:rangesCopy replacementString:stringCopy];
  }

  return v10;
}

- (double)_placeholderLabelAlphaForForegroundViewsAlpha:(double)alpha
{
  isEnabled = [(UIControl *)self isEnabled];
  result = alpha * 0.35;
  if (isEnabled)
  {
    return alpha;
  }

  return result;
}

- (void)_setEnabled:(BOOL)enabled animated:(BOOL)animated
{
  enabledCopy = enabled;
  v24.receiver = self;
  v24.super_class = UISearchTextField;
  [UITextField _setEnabled:sel__setEnabled_animated_ animated:?];
  _placeholderLabel = [(UITextField *)self _placeholderLabel];
  _placeholderColor = [(UISearchTextField *)self _placeholderColor];
  [_placeholderLabel setTextColor:_placeholderColor];

  v9 = 0.35;
  if (enabledCopy)
  {
    v9 = 1.0;
  }

  [_placeholderLabel setAlpha:v9];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (enabledCopy)
    {
      [WeakRetained _textColor];
    }

    else
    {
      [(UISearchTextField *)self _placeholderColor];
    }
    v12 = ;
    [(UITextField *)self setTextColor:v12];
  }

  rightView = [(UITextField *)self rightView];
  if (rightView)
  {
    v14 = rightView;
    rightView2 = [(UITextField *)self rightView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      rightView3 = [(UITextField *)self rightView];
      [rightView3 setEnabled:enabledCopy];
    }
  }

  textStorage = [(UITextField *)self textStorage];
  v19 = *off_1E70EC8C8;
  v20 = [textStorage length];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __42__UISearchTextField__setEnabled_animated___block_invoke;
  v21[3] = &__block_descriptor_34_e53_v40__0___UISearchTokenAttachment_8__NSRange_QQ_16_B32l;
  v22 = enabledCopy;
  animatedCopy = animated;
  [textStorage enumerateAttribute:v19 inRange:0 options:v20 usingBlock:{0, v21}];
  [(UISearchTextField *)self _setNeedsUpdateBackgroundMaterial];
}

void __42__UISearchTextField__setEnabled_animated___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v5 _viewProvider];
    v4 = [v3 view];

    [v4 setEnabled:*(a1 + 32) animated:*(a1 + 33)];
  }
}

- (void)_setBottomEffectBackgroundVisible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(_UISearchBarSearchFieldBackgroundView *)self->_effectBackgroundBottom searchBarStyle]== 2)
  {
    effectBackgroundBottom = self->_effectBackgroundBottom;

    [(UIView *)effectBackgroundBottom setHidden:!visibleCopy];
  }
}

- (void)_defaultInsertTextSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  textualRange = [(UISearchTextField *)self textualRange];
  inputText = [suggestionCopy inputText];

  [(UISearchTextField *)self replaceRange:textualRange withText:inputText];
}

- (void)insertTextSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained insertTextSuggestion:suggestionCopy];
  }

  else
  {
    [(UISearchTextField *)self _defaultInsertTextSuggestion:suggestionCopy];
  }
}

- (BOOL)_shouldOverrideEditingFont
{
  v3.receiver = self;
  v3.super_class = UISearchTextField;
  return [(UITextField *)&v3 _shouldOverrideEditingFont];
}

- (BOOL)_scalesMagnifyingGlassForDynamicTypeWithFont:(id)font
{
  fontCopy = font;
  if ([(UISearchTextField *)self _supportsDynamicType])
  {
    fontDescriptor = [fontCopy fontDescriptor];
    v6 = [fontDescriptor objectForKey:*off_1E70ECCB8];

    textStyleForScaling = [fontCopy textStyleForScaling];
    if (textStyleForScaling)
    {
      v8 = textStyleForScaling;
    }

    else
    {
      v8 = v6;
    }

    v9 = [off_1E70ECC18 _isSupportedDynamicFontTextStyle:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateDefaultLeftViewForFont:(id)font
{
  fontCopy = font;
  v4 = [(UISearchTextField *)self _scalesMagnifyingGlassForDynamicTypeWithFont:?];
  if (!v4)
  {
    v8 = [UIImageSymbolConfiguration configurationWithFont:fontCopy];
    goto LABEL_9;
  }

  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (!UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    goto LABEL_7;
  }

  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_11.isa) == NSOrderedAscending)
  {
    UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_9.isa);
LABEL_7:
    v7 = 2;
    goto LABEL_8;
  }

  v7 = 1;
LABEL_8:

  v8 = [UIImageSymbolConfiguration configurationWithFont:fontCopy scale:v7];

LABEL_9:
  [(UIImageView *)self->_defaultLeftView setPreferredSymbolConfiguration:v8];
  [(UIView *)self->_defaultLeftView setShowsLargeContentViewer:!v4];
}

- (void)_didSetFont:(id)font
{
  v19 = *MEMORY[0x1E69E9840];
  fontCopy = font;
  v17.receiver = self;
  v17.super_class = UISearchTextField;
  [(UITextField *)&v17 _didSetFont:fontCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_knownTokenLayoutViews;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        delegateView = [*(*(&v13 + 1) + 8 * v9) delegateView];
        [delegateView setAtomFont:fontCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  [(UISearchTextField *)self _updateDefaultLeftViewForFont:fontCopy];
  if ([(UISearchTextField *)self _ignoresDynamicType])
  {
    v11 = +[UIImageSymbolConfiguration unspecifiedConfiguration];
    _configurationIgnoringDynamicType = [v11 _configurationIgnoringDynamicType];
    [(UIImageView *)self->_defaultLeftView _setOverridingSymbolConfiguration:_configurationIgnoringDynamicType];
  }

  else
  {
    [(UIImageView *)self->_defaultLeftView _setOverridingSymbolConfiguration:0];
  }

  if ([(UISearchTextField *)self _supportsDynamicType])
  {
    [(UISearchTextField *)self _updateLeftViewForMagnifyingGlassImage];
    [(UISearchTextField *)self _updateAlphaForMagnifyingGlass];
  }
}

- (void)_setAlwaysHidesMagnifyingGlassForAccessibilityContentSizeCategory:(BOOL)category
{
  v3 = *(&self->_searchBarTextFieldFlags + 6);
  if (((((v3 & 4) == 0) ^ category) & 1) == 0)
  {
    if (category)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(&self->_searchBarTextFieldFlags + 6) = v3 & 0xFFFB | v4;
    [(UISearchTextField *)self _updateLeftViewForMagnifyingGlassImage];
  }
}

- (void)didAddTextAttachmentViews:(id)views
{
  v17 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [viewsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(viewsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [(UISearchTextField *)self _willAddTokenLayoutView:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [viewsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)didRemoveTextAttachmentViews:(id)views
{
  v17 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [viewsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(viewsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [(UISearchTextField *)self _didRemoveTokenLayoutView:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [viewsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)didLayoutTextAttachmentView:(id)view inFragmentRect:(CGRect)rect
{
  viewCopy = view;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = viewCopy;
  if (isKindOfClass)
  {
    v8 = viewCopy;
    if ([(UITextField *)self _fieldEditorAttached])
    {
      _fieldEditor = [(UITextField *)self _fieldEditor];
      [_fieldEditor bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      _fieldEditor2 = [(UITextField *)self _fieldEditor];
      [v8 convertRect:_fieldEditor2 fromView:{v11, v13, v15, v17}];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
    }

    else
    {
      [(UITextField *)self editRect];
      [v8 convertRect:self fromView:?];
      v20 = v27;
      v22 = v28;
      v24 = v29;
      v26 = v30;
    }

    [v8 updateMaskLayerForVisibleRect:{v20, v22, v24, v26}];

    v7 = viewCopy;
  }
}

void __27__UISearchTextField_tokens__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 1144) tokenAtCharacterIndex:a2];
  [v2 addObject:v3];
}

- (id)_newAttributedStringWithToken:(id)token
{
  v14[1] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v5 = [[_UISearchTokenAttachment alloc] initWithToken:tokenCopy];

  if ([(UIView *)self effectiveUserInterfaceLayoutDirection]== UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:6];
    v14[0] = v6;
    v7 = v14;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:5];
    v13 = v6;
    v7 = &v13;
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v9 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v5];
  v10 = [v9 mutableCopy];

  [v10 addAttribute:*off_1E70ECAF0 value:v8 range:{0, 1}];
  v11 = [v10 copy];

  return v11;
}

- (void)setTokens:(NSArray *)tokens
{
  v4 = tokens;
  _selectedNSRange = [(UIResponder *)self _selectedNSRange];
  v7 = v6;
  characterRangeOfAllTokens = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter characterRangeOfAllTokens];
  v10 = v9;
  v29.location = _selectedNSRange;
  v29.length = v7;
  v30.location = characterRangeOfAllTokens;
  v30.length = v10;
  length = NSIntersectionRange(v29, v30).length;
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __31__UISearchTextField_setTokens___block_invoke;
  v26 = &unk_1E70F35B8;
  selfCopy = self;
  v12 = v4;
  v28 = v12;
  v13 = _Block_copy(&v23);
  v14 = v13;
  if (length)
  {
    (*(v13 + 2))(v13);
    v15 = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter characterRangeOfAllTokens:v23];
    selfCopy3 = self;
    v18 = v17;
  }

  else
  {
    if (_selectedNSRange >= characterRangeOfAllTokens + v10)
    {
      v22 = [(NSArray *)v12 count:v23];
      tokenCharacterIndexes = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter tokenCharacterIndexes];
      PreservingSelectionForTokenChange(self, 0, v22 - [tokenCharacterIndexes count], v14);
      goto LABEL_6;
    }

    (*(v13 + 2))(v13);
    v15 = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter characterRangeOfTextAfterLastToken:v23];
    selfCopy3 = self;
    v18 = 0;
  }

  tokenCharacterIndexes = [(UIResponder *)selfCopy3 _textRangeFromNSRange:v15, v18];
  [(UITextField *)self setSelectedTextRange:tokenCharacterIndexes];
LABEL_6:

  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  _searchController = [WeakRetained _searchController];
  [(UISearchController *)_searchController __searchTextFieldDidSetOrInsertTokens:?];
}

void __31__UISearchTextField_setTokens___block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __31__UISearchTextField_setTokens___block_invoke_2;
  v8 = &unk_1E70F81A0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  ManipulateTextStorage(v2, 1, &v5);
  [*(a1 + 32) setNeedsLayout];
}

void __31__UISearchTextField_setTokens___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(a1 + 40) _newAttributedStringWithToken:{*(*(&v13 + 1) + 8 * v9), v13}];
        [v4 appendAttributedString:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [*(*(a1 + 40) + 1144) characterRangeOfAllTokens];
  [v3 replaceCharactersInRange:v11 withAttributedString:{v12, v4}];
}

- (void)insertToken:(UISearchToken *)token atIndex:(NSInteger)tokenIndex
{
  v7 = token;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISearchTextField.m" lineNumber:2130 description:{@"Invalid parameter not satisfying: %@", @"token != nil"}];
  }

  v8 = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter characterIndexForInsertingTokenAtIndex:tokenIndex];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__UISearchTextField_insertToken_atIndex___block_invoke;
  v13[3] = &unk_1E70F36D0;
  v13[4] = self;
  v14 = v7;
  v15 = v8;
  v9 = v7;
  PreservingSelectionForTokenChange(self, v8, 1, v13);
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  _searchController = [WeakRetained _searchController];
  [(UISearchController *)_searchController __searchTextFieldDidSetOrInsertTokens:?];
}

void __41__UISearchTextField_insertToken_atIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__UISearchTextField_insertToken_atIndex___block_invoke_2;
  v5[3] = &unk_1E70F81C8;
  v5[4] = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  ManipulateTextStorage(v2, 1, v5);
}

void __41__UISearchTextField_insertToken_atIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 _newAttributedStringWithToken:v4];
  [v5 insertAttributedString:v6 atIndex:*(a1 + 48)];

  [*(a1 + 32) setNeedsLayout];
}

- (void)removeTokenAtIndex:(NSInteger)tokenIndex
{
  if (tokenIndex < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISearchTextField.m" lineNumber:2145 description:{@"Invalid parameter not satisfying: %@", @"tokenIndex >= 0"}];
  }

  v5 = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter characterIndexForSelectingOrRemovingTokenAtIndex:tokenIndex];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__UISearchTextField_removeTokenAtIndex___block_invoke;
  v8[3] = &unk_1E70F32F0;
  v8[4] = self;
  v8[5] = v5;
  PreservingSelectionForTokenChange(self, v5, -1, v8);
}

void __40__UISearchTextField_removeTokenAtIndex___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__UISearchTextField_removeTokenAtIndex___block_invoke_2;
  v2[3] = &unk_1E70F81F0;
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = v1;
  ManipulateTextStorage(v3, 1, v2);
}

uint64_t __40__UISearchTextField_removeTokenAtIndex___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 replaceCharactersInRange:*(a1 + 40) withString:{1, &stru_1EFB14550}];
  v3 = *(a1 + 32);

  return [v3 setNeedsLayout];
}

- (UITextPosition)positionOfTokenAtIndex:(NSInteger)tokenIndex
{
  if (tokenIndex < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISearchTextField.m" lineNumber:2158 description:{@"Invalid parameter not satisfying: %@", @"tokenIndex >= 0"}];
  }

  tokenCharacterIndexes = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter tokenCharacterIndexes];
  v6 = [tokenCharacterIndexes count];

  if (tokenIndex < 0 || v6 <= tokenIndex)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Token index %ld out of range [0, %lu"], tokenIndex, v6);
    v15 = [v12 exceptionWithName:v13 reason:v14 userInfo:0];
    v16 = v15;

    objc_exception_throw(v15);
  }

  beginningOfDocument = [(UITextField *)self beginningOfDocument];
  v8 = [(UITextField *)self positionFromPosition:beginningOfDocument offset:[(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter characterIndexForSelectingOrRemovingTokenAtIndex:tokenIndex]];

  return v8;
}

- (void)_copyTextAndTokensFromOtherSearchField:(id)field
{
  v27 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained(&self->_searchBar), [fieldCopy _searchBar], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v7 != v8))
  {
    if (os_variant_has_internal_diagnostics())
    {
      v17 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315650;
        v22 = "[UISearchTextField _copyTextAndTokensFromOtherSearchField:]";
        v23 = 2112;
        selfCopy2 = self;
        v25 = 2112;
        v26 = fieldCopy;
        _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Unexpected use of %s for reasons other than cloning. Nil or nonmatching search bars for search fields. Suppressing notifications anyway. self=%@, other=%@", buf, 0x20u);
      }
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &_copyTextAndTokensFromOtherSearchField____s_category) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "[UISearchTextField _copyTextAndTokensFromOtherSearchField:]";
        v23 = 2112;
        selfCopy2 = self;
        v25 = 2112;
        v26 = fieldCopy;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unexpected use of %s for reasons other than cloning. Nil or nonmatching search bars for search fields. Suppressing notifications anyway. self=%@, other=%@", buf, 0x20u);
      }
    }
  }

  v10 = *(&self->_searchBarTextFieldFlags + 6);
  *(&self->_searchBarTextFieldFlags + 6) = v10 | 0x100;
  _suppressContentChangedNotification = [(UITextField *)self _suppressContentChangedNotification];
  [(UITextField *)self _setSuppressContentChangedNotification:1];
  tokenCharacterIndexes = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter tokenCharacterIndexes];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60__UISearchTextField__copyTextAndTokensFromOtherSearchField___block_invoke;
  v20[3] = &unk_1E70F3B48;
  v20[4] = self;
  [tokenCharacterIndexes enumerateIndexesWithOptions:2 usingBlock:v20];

  text = [fieldCopy text];
  [(UISearchTextField *)self setText:text];

  if (fieldCopy)
  {
    v14 = fieldCopy[143];
    tokenCharacterIndexes2 = [v14 tokenCharacterIndexes];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __60__UISearchTextField__copyTextAndTokensFromOtherSearchField___block_invoke_2;
    v18[3] = &unk_1E70F43F0;
    v18[4] = self;
    v19 = v14;
    v16 = v14;
    [tokenCharacterIndexes2 enumerateIndexesUsingBlock:v18];
  }

  *(&self->_searchBarTextFieldFlags + 6) = *(&self->_searchBarTextFieldFlags + 6) & 0xFEFF | v10 & 0x100;
  [(UITextField *)self _setSuppressContentChangedNotification:_suppressContentChangedNotification];
}

void __60__UISearchTextField__copyTextAndTokensFromOtherSearchField___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) tokenAtCharacterIndex:a2];
  [v3 insertToken:v4 atIndex:a2];
}

- (NSArray)tokensInRange:(UITextRange *)textRange
{
  v5 = textRange;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISearchTextField.m" lineNumber:2199 description:{@"Invalid parameter not satisfying: %@", @"textRange != nil"}];
  }

  v6 = [(UIResponder *)self _nsrangeForTextRange:v5];
  v8 = v7;
  v9 = objc_opt_new();
  tokenCharacterIndexes = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter tokenCharacterIndexes];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __35__UISearchTextField_tokensInRange___block_invoke;
  v15[3] = &unk_1E70F43F0;
  v16 = v9;
  selfCopy = self;
  v11 = v9;
  [tokenCharacterIndexes enumerateIndexesInRange:v6 options:v8 usingBlock:{0, v15}];

  v12 = [v11 copy];

  return v12;
}

void __35__UISearchTextField_tokensInRange___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 1144) tokenAtCharacterIndex:a2];
  [v2 addObject:v3];
}

- (void)replaceTextualPortionOfRange:(UITextRange *)textRange withToken:(UISearchToken *)token atIndex:(NSUInteger)tokenIndex
{
  v9 = textRange;
  v10 = token;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISearchTextField.m" lineNumber:2222 description:{@"Invalid parameter not satisfying: %@", @"textRange != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UISearchTextField.m" lineNumber:2223 description:{@"Invalid parameter not satisfying: %@", @"token != nil"}];

LABEL_3:
  v12 = [(UIResponder *)self _nsrangeForTextRange:v9];
  v14 = v13;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3010000000;
  v33 = "";
  v34 = xmmword_18A64C520;
  v36.location = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter characterRangeOfTextAfterLastToken];
  v36.length = v15;
  v35.location = v12;
  v35.length = v14;
  v16 = NSIntersectionRange(v35, v36);
  if (v16.location == 0x7FFFFFFFFFFFFFFFLL || v16.length == 0)
  {
    [(UISearchTextField *)self insertToken:v11 atIndex:tokenIndex];
    v18 = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter characterIndexForSelectingOrRemovingTokenAtIndex:tokenIndex];
    v19 = v31;
    v31[4] = v18;
  }

  else
  {
    if ([(UITextField *)self hasMarkedText])
    {
      markedTextRange = [(UITextField *)self markedTextRange];
      v37.location = [(UIResponder *)self _nsrangeForTextRange:markedTextRange];
      v37.length = v21;
      length = NSIntersectionRange(v16, v37).length;

      if (length)
      {
        [(UITextField *)self unmarkText];
      }
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __68__UISearchTextField_replaceTextualPortionOfRange_withToken_atIndex___block_invoke;
    v25[3] = &unk_1E70F8218;
    v28 = v16;
    v25[4] = self;
    v29 = tokenIndex;
    v26 = v11;
    v27 = &v30;
    ManipulateTextStorage(self, 0, v25);

    v19 = v31;
    v18 = v31[4];
  }

  [(UITextField *)self setSelectionRange:v18, v19[5]];
  _Block_object_dispose(&v30, 8);
}

void __68__UISearchTextField_replaceTextualPortionOfRange_withToken_atIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = a2;
  [v5 replaceCharactersInRange:v3 withString:{v4, &stru_1EFB14550}];
  v7 = [*(a1 + 32) _newAttributedStringWithToken:*(a1 + 40)];
  v6 = [*(*(a1 + 32) + 1144) characterIndexForInsertingTokenAtIndex:*(a1 + 72)];
  [v5 insertAttributedString:v7 atIndex:v6];

  *(*(*(a1 + 48) + 8) + 32) = v6;
  [*(a1 + 32) setNeedsLayout];
}

- (void)setTokenBackgroundColor:(UIColor *)tokenBackgroundColor
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = tokenBackgroundColor;
  objc_storeStrong(&self->_tokenBackgroundColor, tokenBackgroundColor);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_knownTokenLayoutViews;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = self->_tokenBackgroundColor;
        delegateView = [*(*(&v13 + 1) + 8 * v10) delegateView];
        [delegateView setAtomBackgroundColor:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)_setTokenForegroundColor:(id)color
{
  v18 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  objc_storeStrong(&self->_tokenForegroundColor, color);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_knownTokenLayoutViews;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        tokenForegroundColor = self->_tokenForegroundColor;
        delegateView = [*(*(&v13 + 1) + 8 * v10) delegateView];
        [delegateView _setAtomForegroundColor:tokenForegroundColor];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (UIColor)_tokenForegroundColor
{
  tokenForegroundColor = self->_tokenForegroundColor;
  if (tokenForegroundColor)
  {
    v3 = tokenForegroundColor;
  }

  else
  {
    traitCollection = [(UIView *)self traitCollection];
    v3 = [_UISearchAtomView _defaultAtomForegroundColorForTraitCollection:traitCollection];
  }

  return v3;
}

- (id)selectedTokens
{
  selectedTextRange = [(UITextField *)self selectedTextRange];
  v4 = [(UISearchTextField *)self tokensInRange:selectedTextRange];

  return v4;
}

- (void)setAllowsDeletingTokens:(BOOL)allowsDeletingTokens
{
  if (allowsDeletingTokens)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_searchBarTextFieldFlags + 6) = *(&self->_searchBarTextFieldFlags + 6) & 0xFFFD | v3;
}

- (void)_willAddTokenLayoutView:(id)view
{
  knownTokenLayoutViews = self->_knownTokenLayoutViews;
  viewCopy = view;
  if (![(NSHashTable *)knownTokenLayoutViews count])
  {
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor _addScrollViewScrollObserver:self];
  }

  delegateView = [viewCopy delegateView];
  [delegateView setAtomBackgroundColor:self->_tokenBackgroundColor];
  [delegateView _setAtomForegroundColor:self->_tokenForegroundColor];
  font = [(UITextField *)self font];
  [delegateView setAtomFont:font];

  _overridingSymbolConfiguration = [(UIImageView *)self->_defaultLeftView _overridingSymbolConfiguration];
  leadingImage = [delegateView leadingImage];
  [leadingImage _setOverridingSymbolConfiguration:_overridingSymbolConfiguration];

  [(NSHashTable *)self->_knownTokenLayoutViews addObject:viewCopy];
  [viewCopy setEnabled:{-[UIControl isEnabled](self, "isEnabled")}];
}

- (void)_didRemoveTokenLayoutView:(id)view
{
  [(NSHashTable *)self->_knownTokenLayoutViews removeObject:view];
  if (![(NSHashTable *)self->_knownTokenLayoutViews count])
  {
    _fieldEditor = [(UITextField *)self _fieldEditor];
    [_fieldEditor _removeScrollViewScrollObserver:self];
  }
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  v17 = *MEMORY[0x1E69E9840];
  scrollCopy = scroll;
  _fieldEditor = [(UITextField *)self _fieldEditor];

  if (_fieldEditor == scrollCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_knownTokenLayoutViews;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          [(UITextField *)self editRect];
          [v11 convertRect:self fromView:?];
          [v11 updateMaskLayerForVisibleRect:?];
          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (unint64_t)_characterIndexForTokenTapGestureRecognizer
{
  tokenTapGestureRecognizer = self->_tokenTapGestureRecognizer;
  _textCanvasView = [(UITextField *)self _textCanvasView];
  [(UITapGestureRecognizer *)tokenTapGestureRecognizer locationInView:_textCanvasView];
  v6 = v5;
  v8 = v7;

  [(UITextField *)self textContainerOrigin];
  v10 = v9;
  v12 = v11;
  textContainer = [(UITextField *)self textContainer];
  textLayoutController = [(UITextField *)self textLayoutController];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0x7FFFFFFFFFFFFFFFLL;
  textStorage = [(UITextField *)self textStorage];
  textStorage2 = [(UITextField *)self textStorage];
  v17 = [textStorage2 length];
  v18 = *off_1E70EC8C8;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64__UISearchTextField__characterIndexForTokenTapGestureRecognizer__block_invoke;
  v22[3] = &unk_1E70F8240;
  v19 = textLayoutController;
  v25 = v10;
  v26 = v12;
  v27 = v6 - v10;
  v28 = v8 - v12;
  v23 = v19;
  v24 = &v29;
  [textStorage enumerateAttribute:v18 inRange:0 options:v17 usingBlock:{0, v22}];

  v20 = v30[3];
  _Block_object_dispose(&v29, 8);

  return v20;
}

void __64__UISearchTextField__characterIndexForTokenTapGestureRecognizer__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [*(a1 + 32) boundingRectForCharacterRange:{a3, a4}];
    v15 = CGRectOffset(v14, -*(a1 + 48), -*(a1 + 56));
    v15.origin.y = v15.origin.y + -5000.0;
    v15.size.height = v15.size.height + 10000.0;
    if (CGRectContainsPoint(v15, *(a1 + 64)))
    {
      v12 = [*(a1 + 32) textRangeForCharacterRange:{a3, a4}];
      v9 = *(a1 + 32);
      v10 = [v9 beginningOfDocument];
      v11 = [v12 start];
      *(*(*(a1 + 40) + 8) + 24) = [v9 offsetFromPosition:v10 toPosition:v11];
    }
  }
}

- (void)_tokenTapGestureRecognized
{
  _characterIndexForTokenTapGestureRecognizer = [(UISearchTextField *)self _characterIndexForTokenTapGestureRecognizer];
  if (_characterIndexForTokenTapGestureRecognizer != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = _characterIndexForTokenTapGestureRecognizer;
    if (![(UIView *)self isFirstResponder])
    {
      [(UISearchTextField *)self becomeFirstResponder];
    }

    selectedTextRange = [(UITextField *)self selectedTextRange];
    v10 = selectedTextRange;
    if (selectedTextRange && ([selectedTextRange isEmpty] & 1) == 0 && (-[UIResponder _textRangeFromNSRange:](self, "_textRangeFromNSRange:", v4, 1), v6 = objc_claimAutoreleasedReturnValue(), v7 = -[UIResponder _range:containsRange:](self, "_range:containsRange:", v10, v6), v6, v7))
    {
      interactionAssistant = [(UITextField *)self interactionAssistant];
      [interactionAssistant showSelectionCommands];

      [(UISearchTextField *)self _activateSelectionView];
    }

    else
    {
      v9 = [(UIResponder *)self _textRangeFromNSRange:v4, 1];
      [(UITextField *)self setSelectedTextRange:v9];
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_tokenTapGestureRecognizer == begin)
  {
    return [(UISearchTextField *)self _characterIndexForTokenTapGestureRecognizer]!= 0x7FFFFFFFFFFFFFFFLL;
  }

  v4.receiver = self;
  v4.super_class = UISearchTextField;
  return [(UITextField *)&v4 gestureRecognizerShouldBegin:?];
}

- (id)textInRange:(id)range
{
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  _searchBarTextField = [WeakRetained _searchBarTextField];

  if (_searchBarTextField)
  {
    v7 = _searchBarTextField == self;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (rangeCopy)
    {
      textualRange = [(UISearchTextField *)self textualRange];
      v9 = [(UIResponder *)self _intersectionOfRange:textualRange andRange:rangeCopy];

      v14.receiver = self;
      v14.super_class = UISearchTextField;
      v10 = [(UITextField *)&v14 textInRange:v9];
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v13 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Something is calling -textInRange: with a nil range. This argument is nonnull. Returning a default value.", buf, 2u);
        }
      }

      else
      {
        v12 = *(__UILogGetCategoryCachedImpl("Assert", &textInRange____s_category) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Something is calling -textInRange: with a nil range. This argument is nonnull. Returning a default value.", buf, 2u);
        }
      }

      v10 = &stru_1EFB14550;
    }
  }

  else
  {
    v10 = [(UISearchTextField *)_searchBarTextField textInRange:rangeCopy];
  }

  return v10;
}

- (_NSRange)_rangeForClearButton
{
  if ((*(&self->_searchBarTextFieldFlags + 6) & 2) != 0)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = UISearchTextField;
    _rangeForClearButton = [(UITextField *)&v6 _rangeForClearButton];
  }

  else
  {

    _rangeForClearButton = [(UISearchTextField *)self _rangeForSetText];
  }

  result.length = v5;
  result.location = _rangeForClearButton;
  return result;
}

- (id)_textRangesForTextStorageRanges:(id)ranges
{
  v11[1] = *MEMORY[0x1E69E9840];
  tokenCounter = self->_tokenCounter;
  unionRange = [ranges unionRange];
  v6 = [(_UISearchBarTextFieldTokenCounter *)tokenCounter subrangeOfTextAfterLastTokenForCharacterRange:unionRange, v5];
  v8 = [MEMORY[0x1E696B098] valueWithRange:{v6, v7}];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v9;
}

- (id)attributedTextInRange:(id)range
{
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  _searchBarTextField = [WeakRetained _searchBarTextField];

  if (_searchBarTextField)
  {
    v7 = _searchBarTextField == self;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (rangeCopy)
    {
      textualRange = [(UISearchTextField *)self textualRange];
      v9 = [(UIResponder *)self _intersectionOfRange:textualRange andRange:rangeCopy];

      v15.receiver = self;
      v15.super_class = UISearchTextField;
      v10 = [(UITextField *)&v15 attributedTextInRange:v9];

      goto LABEL_9;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v14 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Something is calling -attributedTextInRange: with a nil range. This argument is nonnull. Returning a default value.", buf, 2u);
      }
    }

    else
    {
      v13 = *(__UILogGetCategoryCachedImpl("Assert", &attributedTextInRange____s_category) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Something is calling -attributedTextInRange: with a nil range. This argument is nonnull. Returning a default value.", buf, 2u);
      }
    }

    v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
  }

  else
  {
    v11 = [(UISearchTextField *)_searchBarTextField attributedTextInRange:rangeCopy];
  }

  v10 = v11;
LABEL_9:

  return v10;
}

- (id)attributedText
{
  textualRange = [(UISearchTextField *)self textualRange];
  v4 = [(UISearchTextField *)self attributedTextInRange:textualRange];

  return v4;
}

- (void)replaceRange:(id)range withText:(id)text
{
  rangeCopy = range;
  textCopy = text;
  if (rangeCopy)
  {
    textualRange = [(UISearchTextField *)self textualRange];
    v9 = [(UIResponder *)self _intersectionOfRange:textualRange andRange:rangeCopy];

    v12.receiver = self;
    v12.super_class = UISearchTextField;
    [(UITextField *)&v12 replaceRange:v9 withText:textCopy];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v11 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Something is calling -replaceRange:withText: with a nil range. This argument is nonnull. Doing nothing.", buf, 2u);
    }
  }

  else
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &replaceRange_withText____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Something is calling -replaceRange:withText: with a nil range. This argument is nonnull. Doing nothing.", buf, 2u);
    }
  }
}

- (void)replaceRangeWithTextWithoutClosingTyping:(id)typing replacementText:(id)text
{
  typingCopy = typing;
  textCopy = text;
  if (typingCopy)
  {
    textualRange = [(UISearchTextField *)self textualRange];
    v9 = [(UIResponder *)self _intersectionOfRange:textualRange andRange:typingCopy];

    v12.receiver = self;
    v12.super_class = UISearchTextField;
    [(UITextField *)&v12 replaceRange:v9 withText:textCopy];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v11 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Something is calling -replaceRangeWithTextWithoutClosingTyping:replacementText: with a nil range. This argument is nonnull. Doing nothing.", buf, 2u);
    }
  }

  else
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &replaceRangeWithTextWithoutClosingTyping_replacementText____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Something is calling -replaceRangeWithTextWithoutClosingTyping:replacementText: with a nil range. This argument is nonnull. Doing nothing.", buf, 2u);
    }
  }
}

- (void)replaceRange:(id)range withAttributedText:(id)text
{
  rangeCopy = range;
  textCopy = text;
  if (rangeCopy)
  {
    textualRange = [(UISearchTextField *)self textualRange];
    v9 = [(UIResponder *)self _intersectionOfRange:textualRange andRange:rangeCopy];

    v12.receiver = self;
    v12.super_class = UISearchTextField;
    [(UITextField *)&v12 replaceRange:v9 withAttributedText:textCopy];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v11 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Something is calling -replaceRange:withAttributedText: with a nil range. This argument is nonnull. Doing nothing.", buf, 2u);
    }
  }

  else
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &replaceRange_withAttributedText____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Something is calling -replaceRange:withAttributedText: with a nil range. This argument is nonnull. Doing nothing.", buf, 2u);
    }
  }
}

- (void)_redirectSelectionToAvoidClobberingTokens
{
  selectedTextRange = [(UITextField *)self selectedTextRange];
  if (selectedTextRange)
  {
    v8 = selectedTextRange;
    textualRange = [(UISearchTextField *)self textualRange];
    if (![(UIResponder *)self _range:textualRange containsRange:v8])
    {
      endOfDocument = [(UITextField *)self endOfDocument];
      endOfDocument2 = [(UITextField *)self endOfDocument];
      v7 = [(UITextField *)self textRangeFromPosition:endOfDocument toPosition:endOfDocument2];
      [(UITextField *)self setSelectedTextRange:v7];
    }

    selectedTextRange = v8;
  }
}

- (void)insertText:(id)text
{
  textCopy = text;
  [(UISearchTextField *)self _redirectSelectionToAvoidClobberingTokens];
  v5.receiver = self;
  v5.super_class = UISearchTextField;
  [(UITextField *)&v5 insertText:textCopy];
}

- (_NSRange)insertFilteredText:(id)text
{
  textCopy = text;
  [(UISearchTextField *)self _redirectSelectionToAvoidClobberingTokens];
  if ([textCopy isEqualToString:@"\n"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_searchBar);
    _searchController = [WeakRetained _searchController];

    if (_searchController)
    {
      selfCopy = _searchController;
    }

    else
    {
      selfCopy = self;
    }

    [(UISearchTextField *)selfCopy setSearchSuggestions:0];
  }

  v13.receiver = self;
  v13.super_class = UISearchTextField;
  v8 = [(UITextField *)&v13 insertFilteredText:textCopy];
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (void)insertAttributedText:(id)text
{
  textCopy = text;
  [(UISearchTextField *)self _redirectSelectionToAvoidClobberingTokens];
  v5.receiver = self;
  v5.super_class = UISearchTextField;
  [(UITextField *)&v5 insertAttributedText:textCopy];
}

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  if (!-[UITextField hasMarkedText](self, "hasMarkedText") && [textCopy length])
  {
    [(UISearchTextField *)self _redirectSelectionToAvoidClobberingTokens];
  }

  v8.receiver = self;
  v8.super_class = UISearchTextField;
  [(UITextField *)&v8 setMarkedText:textCopy selectedRange:location, length];
}

- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  if (!-[UITextField hasMarkedText](self, "hasMarkedText") && [textCopy length])
  {
    [(UISearchTextField *)self _redirectSelectionToAvoidClobberingTokens];
  }

  v8.receiver = self;
  v8.super_class = UISearchTextField;
  [(UITextField *)&v8 setAttributedMarkedText:textCopy selectedRange:location, length];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  p_searchBarTextFieldFlags = &self->_searchBarTextFieldFlags;
  if (self->_searchBarTextFieldFlags.delegateImplementsItemProviderForCopyingTokens)
  {
    v8 = 0;
  }

  else
  {
    v8 = self->_searchBarTextFieldFlags.delegateImplementsUnderscoredItemProviderForCopyingTokens == 0;
  }

  if (sel_cut_ == action || sel_copy_ == action)
  {
    selectedTextRange = [(UITextField *)self selectedTextRange];
    start = [selectedTextRange start];
    v12 = [selectedTextRange end];
    v13 = [(UITextField *)self offsetFromPosition:start toPosition:v12];

    if (!v13)
    {
      LOBYTE(self) = 0;
LABEL_27:

      goto LABEL_28;
    }

    textualRange = [(UISearchTextField *)self textualRange];
    start2 = [textualRange start];
    v16 = [textualRange end];
    if ([(UITextField *)self offsetFromPosition:start2 toPosition:v16]< 1)
    {
      LODWORD(self) = 0;
    }

    else
    {
      [(UISearchTextField *)self textualRange];
      v21 = v8;
      v18 = v17 = senderCopy;
      LODWORD(self) = [(UIResponder *)self _range:selectedTextRange intersectsRange:v18];

      senderCopy = v17;
      v8 = v21;
    }

    if (((self | v8) & 1) == 0)
    {
      if (sel_cut_ == action)
      {
        LOBYTE(self) = (~*(p_searchBarTextFieldFlags + 6) & 3) == 0;
      }

      else
      {
        LOBYTE(self) = *(p_searchBarTextFieldFlags + 6);
      }
    }

LABEL_26:

    goto LABEL_27;
  }

  if (sel__define_ == action || sel__translate_ == action)
  {
    selectedTextRange = [(UITextField *)self selectedTextRange];
    textualRange = [(UISearchTextField *)self textualRange];
    if ([(UIResponder *)self _range:selectedTextRange intersectsRange:textualRange])
    {
      v23.receiver = self;
      v23.super_class = UISearchTextField;
      LOBYTE(self) = [(UITextField *)&v23 canPerformAction:action withSender:senderCopy];
    }

    else
    {
      LOBYTE(self) = 0;
    }

    goto LABEL_26;
  }

  v22.receiver = self;
  v22.super_class = UISearchTextField;
  LOBYTE(self) = [(UITextField *)&v22 canPerformAction:action withSender:senderCopy];
LABEL_28:

  return self & 1;
}

- (void)_copySelectionPopulatingActuallyCopiedTokenCharacterIndexes:(id)indexes
{
  indexesCopy = indexes;
  textualRange = [(UISearchTextField *)self textualRange];
  selectedTextRange = [(UITextField *)self selectedTextRange];
  v7 = [(UIResponder *)self _intersectionOfRange:textualRange andRange:selectedTextRange];

  start = [v7 start];
  v9 = [v7 end];
  v10 = [(UITextField *)self offsetFromPosition:start toPosition:v9];

  if (v10 < 1)
  {
    v14 = 0;
  }

  else
  {
    _inputController = [(UITextField *)self _inputController];
    v12 = [(UIResponder *)self _nsrangeForTextRange:v7];
    v14 = [_inputController _itemProviderForCopyingRange:{v12, v13}];
  }

  v15 = objc_opt_new();
  v16 = "_UIMonochromaticTreatment";
  if (self->_searchBarTextFieldFlags.delegateImplementsItemProviderForCopyingTokens || self->_searchBarTextFieldFlags.delegateImplementsUnderscoredItemProviderForCopyingTokens)
  {
    [(UITextField *)self delegate];
    v17 = v7;
    v18 = v14;
    v20 = v19 = indexesCopy;
    tokenCharacterIndexes = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter tokenCharacterIndexes];
    selectedTextRange2 = [(UITextField *)self selectedTextRange];
    v23 = [(UIResponder *)self _nsrangeForTextRange:selectedTextRange2];
    v25 = v24;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __81__UISearchTextField__copySelectionPopulatingActuallyCopiedTokenCharacterIndexes___block_invoke;
    v35[3] = &unk_1E70F8268;
    v35[4] = self;
    v36 = v20;
    v37 = v15;
    v38 = v19;
    v26 = v20;
    [tokenCharacterIndexes enumerateIndexesInRange:v23 options:v25 usingBlock:{0, v35}];

    indexesCopy = v19;
    v14 = v18;
    v7 = v17;
    v16 = "_UIMonochromaticTreatment";
  }

  else
  {
    v31 = *(__UILogGetCategoryCachedImpl("Search", &_copySelectionPopulatingActuallyCopiedTokenCharacterIndexes____s_category) + 8);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "Delegate agreed to copy a token but cannot provide an item provider for that token", buf, 2u);
    }
  }

  _searchBar = [(UISearchTextField *)self _searchBar];
  _dataOwnerForCopy = [_searchBar _dataOwnerForCopy];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = *(v16 + 235);
  v32[2] = __81__UISearchTextField__copySelectionPopulatingActuallyCopiedTokenCharacterIndexes___block_invoke_2;
  v32[3] = &unk_1E70F35B8;
  v33 = v15;
  v34 = v14;
  v29 = v14;
  v30 = v15;
  [UIPasteboard _performAsDataOwner:_dataOwnerForCopy block:v32];
}

void __81__UISearchTextField__copySelectionPopulatingActuallyCopiedTokenCharacterIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 1144) tokenAtCharacterIndex:a2];
  v5 = *(a1 + 32);
  v9 = v4;
  if (*(v5 + 1120))
  {
    v6 = [*(a1 + 40) searchTextField:? itemProviderForCopyingToken:?];
  }

  else
  {
    if (!*(v5 + 1124))
    {
      v7 = 0;
      goto LABEL_9;
    }

    v6 = [*(a1 + 40) _searchTextField:? itemProviderForCopyingToken:?];
  }

  v7 = v6;
  if (v6)
  {
    v8 = [v6 registeredTypeIdentifiers];

    if (v8)
    {
      [*(a1 + 48) addObject:v7];
      [*(a1 + 56) addIndex:a2];
    }
  }

LABEL_9:
}

void __81__UISearchTextField__copySelectionPopulatingActuallyCopiedTokenCharacterIndexes___block_invoke_2(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 32);
    if (v3)
    {
      v5 = [v4 arrayByAddingObject:?];
    }

    else
    {
      v5 = v4;
    }

    v9 = v5;
    v8 = +[UIPasteboard generalPasteboard];
    [v8 setItemProviders:v9];
  }

  else if (v3)
  {
    v10[0] = *(a1 + 40);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = +[UIPasteboard generalPasteboard];
    [v7 setItemProviders:v6];
  }
}

- (void)cut:(id)cut
{
  selectedTextRange = [(UITextField *)self selectedTextRange];
  textualRange = [(UISearchTextField *)self textualRange];
  if ([(UIResponder *)self _range:selectedTextRange intersectsRange:textualRange])
  {
    v5 = [(UIResponder *)self _intersectionOfRange:selectedTextRange andRange:textualRange];
    textLayoutController = [(UITextField *)self textLayoutController];
    v7 = [textLayoutController characterRangesForTextRange:v5 clippedToDocument:0];

    LODWORD(textLayoutController) = [(UISearchTextField *)self _delegateShouldChangeCharactersInTextStorageRanges:v7 replacementString:&stru_1EFB14550 delegateCares:0];
    if (!textLayoutController)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = objc_opt_new();
  [(UISearchTextField *)self _copySelectionPopulatingActuallyCopiedTokenCharacterIndexes:v8];
  if ((*(&self->_searchBarTextFieldFlags + 6) & 2) != 0 && (self->_searchBarTextFieldFlags.delegateImplementsItemProviderForCopyingTokens || self->_searchBarTextFieldFlags.delegateImplementsUnderscoredItemProviderForCopyingTokens))
  {
    _inputController = [(UITextField *)self _inputController];
    v10 = _inputController;
    v11 = selectedTextRange;
    goto LABEL_11;
  }

  if (v5)
  {
    _inputController = [(UITextField *)self _inputController];
    v10 = _inputController;
    v11 = v5;
LABEL_11:
    [_inputController replaceRange:v11 withText:&stru_1EFB14550];
  }

  firstIndex = [v8 firstIndex];
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = firstIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [v8 firstIndex])
    {
      _inputController2 = [(UITextField *)self _inputController];
      v15 = [(UIResponder *)self _textRangeFromNSRange:i, 1];
      [_inputController2 replaceRange:v15 withText:&stru_1EFB14550];

      [v8 shiftIndexesStartingAtIndex:i + 1 by:-1];
    }
  }

LABEL_16:
}

- (void)paste:(id)paste
{
  v3.receiver = self;
  v3.super_class = UISearchTextField;
  [(UITextField *)&v3 paste:paste];
}

- (void)_pasteSessionDidFinish:(id)finish
{
  v20 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  tokenCharacterIndexes = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter tokenCharacterIndexes];
  v6 = [tokenCharacterIndexes count];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  originalItems = [finishCopy originalItems];
  v8 = [originalItems countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(originalItems);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _searchTokenResult = [v12 _searchTokenResult];
          if (_searchTokenResult)
          {
            [(UISearchTextField *)self insertToken:_searchTokenResult atIndex:v6++];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [originalItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14.receiver = self;
  v14.super_class = UISearchTextField;
  [(UITextField *)&v14 _pasteSessionDidFinish:finishCopy];
}

- (void)deleteBackward
{
  selectedTextRange = [(UITextField *)self selectedTextRange];
  if (selectedTextRange)
  {
    v4 = [(UIResponder *)self _nsrangeForTextRange:selectedTextRange];
    v6 = v5;
    textualRange = [(UISearchTextField *)self textualRange];
    v8 = [(UIResponder *)self _nsrangeForTextRange:textualRange];
    v10 = v9;

    if (v6)
    {
      if (v4 >= v8)
      {
        [(UITextField *)&v12 deleteBackward:self];
      }

      else if ((*(&self->_searchBarTextFieldFlags + 6) & 2) != 0)
      {
        [(UITextField *)&v15 deleteBackward:v12.receiver];
      }

      else if (v4 + v6 > v8)
      {
        v17.location = v4;
        v17.length = v6;
        v18.location = v8;
        v18.length = v10;
        v11 = NSIntersectionRange(v17, v18);
        [(UITextField *)self setSelectionRange:v11.location, v11.length];
        [(UITextField *)&v14 deleteBackward:v12.receiver];
      }
    }

    else if (v8 && v4 && v4 <= v8)
    {
      [(UITextField *)self setSelectionRange:v4 - 1, 1];
    }

    else
    {
      [(UITextField *)&v13 deleteBackward:v12.receiver];
    }
  }

  else
  {
    [(UITextField *)&v16 deleteBackward:v12.receiver];
  }
}

- (void)_updateAtomViewSelection:(BOOL)selection
{
  v39 = *MEMORY[0x1E69E9840];
  if (selection)
  {
    textStorage = [(UITextField *)self textStorage];
    selectionRange = [(UITextField *)self selectionRange];
    v7 = v6;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__18;
    v32 = __Block_byref_object_dispose__18;
    v33 = 0;
    textLayoutController = [(UITextField *)self textLayoutController];
    documentRange = [textLayoutController documentRange];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __46__UISearchTextField__updateAtomViewSelection___block_invoke;
    v21 = &unk_1E70F82B8;
    v10 = textLayoutController;
    v22 = v10;
    v11 = textStorage;
    v26 = selectionRange;
    v27 = v7;
    v23 = v11;
    selfCopy = self;
    v25 = &v28;
    [v10 enumerateTextLineFragmentsInRange:documentRange usingBlock:&v18];

    v12 = [(UISearchTextField *)self tokens:v18];
    if ([v12 count] == 1)
    {
      text = [(UISearchTextField *)self text];
      if (![text length])
      {
        v17 = v29[5] == 0;

        if (!v17)
        {
          [v29[5] setSelectionStyle:1 animated:0];
        }

        goto LABEL_6;
      }
    }

LABEL_6:
    _Block_object_dispose(&v28, 8);

    goto LABEL_14;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = self->_knownTokenLayoutViews;
  v14 = [(NSHashTable *)v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v14)
  {
    v15 = *v35;
    do
    {
      v16 = 0;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v34 + 1) + 8 * v16++) setSelectionStyle:0 animated:0];
      }

      while (v14 != v16);
      v14 = [(NSHashTable *)v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }

LABEL_14:
}

uint64_t __46__UISearchTextField__updateAtomViewSelection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) characterRangeForTextRange:a2];
  v4 = *(a1 + 40);
  v5 = *off_1E70EC8C8;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__UISearchTextField__updateAtomViewSelection___block_invoke_2;
  v9[3] = &unk_1E70F8290;
  v6 = *(a1 + 64);
  v10 = *(a1 + 48);
  v11 = v6;
  return [v4 enumerateAttribute:v5 inRange:v3 options:v7 usingBlock:{0, v9}];
}

void __46__UISearchTextField__updateAtomViewSelection___block_invoke_2(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v27 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v27;
  if (isKindOfClass)
  {
    v9 = [v27 _viewProvider];
    v10 = [v9 view];

    v11 = 0;
    v12 = a1[6];
    if (a3 >= v12)
    {
      v13 = a1[7];
      if (a3 - v12 < v13)
      {
        v14 = a3 == v12;
        v15 = a3 + a4 == v13 + v12;
        v16 = a1[4];
        v17 = [v16 beginningOfDocument];
        v18 = [v16 positionFromPosition:v17 offset:a3];
        v19 = [v16 baseWritingDirectionForPosition:v18 inDirection:0];

        if (v19 == 1)
        {
          v20 = v15;
        }

        else
        {
          v20 = v14;
        }

        if (v19 == 1)
        {
          v21 = v14;
        }

        else
        {
          v21 = v15;
        }

        v22 = v20 || v21;
        v23 = !v20;
        v24 = 4;
        if (v23)
        {
          v24 = 0;
        }

        v23 = !v21;
        v25 = 8;
        if (v23)
        {
          v25 = 0;
        }

        v26 = v24 | v25;
        if (v22)
        {
          v11 = v26;
        }

        else
        {
          v11 = 1;
        }

        objc_storeStrong((*(a1[5] + 8) + 40), v10);
      }
    }

    [v10 setSelectionStyle:v11 animated:0];

    v8 = v27;
  }
}

- (void)fieldEditorDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  [(UISearchTextField *)self _updateAtomViewSelection:[(UITextField *)self _fieldEditorAttached]];
  v7.receiver = self;
  v7.super_class = UISearchTextField;
  [(UITextField *)&v7 fieldEditorDidChangeSelection:selectionCopy];

  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _selectionChangedForSearchField:self];
  }
}

- (void)_clearSearchSuggestionsIfNecessary
{
  v8 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if ((self[564] & 0x20) != 0)
    {
      _suggestionController = [self _suggestionController];
      hasVisibleMenu = [_suggestionController hasVisibleMenu];

      if (hasVisibleMenu)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v5 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
          {
            v6 = 138412290;
            selfCopy2 = self;
            _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "UIKit inconsistency: Menu became visible with clear-search-suggestions still pending. Search suggestions will not be cleared. %@", &v6, 0xCu);
          }
        }

        else
        {
          v4 = *(__UILogGetCategoryCachedImpl("Assert", &_clearSearchSuggestionsIfNecessary___s_category) + 8);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            v6 = 138412290;
            selfCopy2 = self;
            _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "UIKit inconsistency: Menu became visible with clear-search-suggestions still pending. Search suggestions will not be cleared. %@", &v6, 0xCu);
          }
        }
      }

      else
      {
        [self setSearchSuggestions:0];
      }
    }

    self[564] &= ~0x20u;
  }
}

- (void)_notifyDidEndEditing
{
  [(UISearchTextField *)self _clearSearchSuggestionsIfNecessary];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  [WeakRetained _textDidEndEditingInSearchField:self];

  v4.receiver = self;
  v4.super_class = UISearchTextField;
  [(UITextField *)&v4 _notifyDidEndEditing];
}

- (void)_receivedKeyboardWillShowOrHideNotification:(id)notification
{
  name = [notification name];
  if ([name isEqualToString:@"UIKeyboardWillShowNotification"])
  {
    v5 = 2;
  }

  else
  {
    v5 = 4;
  }

  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  _searchController = [WeakRetained _searchController];
  [_searchController _startDeferringSettingSearchSuggestionsWithReason:v5];
}

- (void)_receivedKeyboardDidHideNotification:(id)notification
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  _searchController = [WeakRetained _searchController];
  [_searchController _stopDeferringSearchSuggestionsWithReason:4 postDeferralAction:1];
}

- (void)_receivedKeyboardDidShowNotification:(id)notification
{
  v6.receiver = self;
  v6.super_class = UISearchTextField;
  [(UITextField *)&v6 _receivedKeyboardDidShowNotification:notification];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  _searchController = [WeakRetained _searchController];
  [_searchController _stopDeferringSearchSuggestionsWithReason:2 postDeferralAction:1];
}

- (id)_rangeOfCustomDraggableObjectsInRange:(id)range
{
  rangeCopy = range;
  characterRangeOfAllTokens = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter characterRangeOfAllTokens];
  if (v6)
  {
    v7 = [(UIResponder *)self _textRangeFromNSRange:characterRangeOfAllTokens, v6];
    v8 = [(UIResponder *)self _intersectionOfRange:v7 andRange:rangeCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_customDraggableObjectsForRange:(id)range
{
  rangeCopy = range;
  delegate = [(UITextField *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(UIResponder *)self _nsrangeForTextRange:rangeCopy];
    v8 = v7;
    v9 = objc_opt_new();
    tokenCharacterIndexes = [(_UISearchBarTextFieldTokenCounter *)self->_tokenCounter tokenCharacterIndexes];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__UISearchTextField__customDraggableObjectsForRange___block_invoke;
    v15[3] = &unk_1E70F8268;
    v15[4] = self;
    v16 = delegate;
    v17 = rangeCopy;
    v11 = v9;
    v18 = v11;
    [tokenCharacterIndexes enumerateIndexesInRange:v6 options:v8 usingBlock:{0, v15}];

    v12 = v18;
    v13 = v11;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

void __53__UISearchTextField__customDraggableObjectsForRange___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 1144) tokenAtCharacterIndex:a2];
  v5 = [*(a1 + 40) searchTextField:*(a1 + 32) itemProviderForCopyingToken:v4];
  if (v5)
  {
    v6 = [UITextDraggableObject draggableObjectWithItemProvider:v5 fromRange:*(a1 + 48)];
    v7 = [*(a1 + 32) _textStorage];
    v8 = [v7 attribute:*off_1E70EC8C8 atIndex:a2 effectiveRange:0];

    v9 = [v8 _viewProvider];
    v10 = [v9 view];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__UISearchTextField__customDraggableObjectsForRange___block_invoke_2;
    v12[3] = &unk_1E70F82E0;
    v13 = v10;
    v11 = v10;
    [v6 setTargetedPreviewProvider:v12];
    [*(a1 + 56) addObject:v6];
  }
}

- (void)_postNotificationFromOriginalIfNecessary:(id *)necessary
{
  v7 = a2;
  if (necessary)
  {
    WeakRetained = objc_loadWeakRetained(necessary + 150);
    _originalSearchTextFieldForClones = [WeakRetained _originalSearchTextFieldForClones];

    if (_originalSearchTextFieldForClones)
    {
      v5 = _originalSearchTextFieldForClones == necessary;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:v7 object:_originalSearchTextFieldForClones];
    }
  }
}

- (void)fieldEditorDidChange:(id)change
{
  changeCopy = change;
  [(UISearchTextField *)self _clearSearchSuggestionsIfNecessary];
  v5.receiver = self;
  v5.super_class = UISearchTextField;
  [(UITextField *)&v5 fieldEditorDidChange:changeCopy];

  if (![(UITextField *)self _suppressContentChangedNotification])
  {
    [(UISearchTextField *)&self->super.super.super.super.super.isa _postNotificationFromOriginalIfNecessary:?];
  }
}

- (void)_clearButtonClicked:(id)clicked
{
  v4.receiver = self;
  v4.super_class = UISearchTextField;
  [(UITextField *)&v4 _clearButtonClicked:clicked];
  if (![(UITextField *)self _fieldEditorAttached]&& ![(UITextField *)self _suppressContentChangedNotification])
  {
    [(UISearchTextField *)&self->super.super.super.super.super.isa _postNotificationFromOriginalIfNecessary:?];
  }
}

- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events
{
  targetCopy = target;
  v15.receiver = self;
  v15.super_class = UISearchTextField;
  [(UIControl *)&v15 addTarget:targetCopy action:action forControlEvents:events];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__UISearchTextField_addTarget_action_forControlEvents___block_invoke;
  v11[3] = &unk_1E70F8308;
  v12 = targetCopy;
  actionCopy = action;
  eventsCopy = events;
  v10 = targetCopy;
  [WeakRetained _updateOriginalAndSiblingClonesOfSearchField:self updates:v11];
}

- (void)addAction:(id)action forControlEvents:(unint64_t)events
{
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = UISearchTextField;
  [(UIControl *)&v12 addAction:actionCopy forControlEvents:events];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__UISearchTextField_addAction_forControlEvents___block_invoke;
  v9[3] = &unk_1E70F8330;
  v10 = actionCopy;
  eventsCopy = events;
  v8 = actionCopy;
  [WeakRetained _updateOriginalAndSiblingClonesOfSearchField:self updates:v9];
}

- (void)removeTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events
{
  targetCopy = target;
  v15.receiver = self;
  v15.super_class = UISearchTextField;
  [(UIControl *)&v15 removeTarget:targetCopy action:action forControlEvents:events];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__UISearchTextField_removeTarget_action_forControlEvents___block_invoke;
  v11[3] = &unk_1E70F8308;
  v12 = targetCopy;
  actionCopy = action;
  eventsCopy = events;
  v10 = targetCopy;
  [WeakRetained _updateOriginalAndSiblingClonesOfSearchField:self updates:v11];
}

- (void)removeAction:(id)action forControlEvents:(unint64_t)events
{
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = UISearchTextField;
  [(UIControl *)&v12 removeAction:actionCopy forControlEvents:events];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__UISearchTextField_removeAction_forControlEvents___block_invoke;
  v9[3] = &unk_1E70F8330;
  v10 = actionCopy;
  eventsCopy = events;
  v8 = actionCopy;
  [WeakRetained _updateOriginalAndSiblingClonesOfSearchField:self updates:v9];
}

- (void)removeActionForIdentifier:(id)identifier forControlEvents:(unint64_t)events
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = UISearchTextField;
  [(UIControl *)&v12 removeActionForIdentifier:identifierCopy forControlEvents:events];
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__UISearchTextField_removeActionForIdentifier_forControlEvents___block_invoke;
  v9[3] = &unk_1E70F8330;
  v10 = identifierCopy;
  eventsCopy = events;
  v8 = identifierCopy;
  [WeakRetained _updateOriginalAndSiblingClonesOfSearchField:self updates:v9];
}

- (void)willPresentEditMenuWithAnimator:(id)animator
{
  *(&self->_searchBarTextFieldFlags + 6) |= 0x800u;
  v3.receiver = self;
  v3.super_class = UISearchTextField;
  [(UITextField *)&v3 willPresentEditMenuWithAnimator:animator];
}

- (void)willDismissEditMenuWithAnimator:(id)animator
{
  *(&self->_searchBarTextFieldFlags + 6) &= ~0x800u;
  v3.receiver = self;
  v3.super_class = UISearchTextField;
  [(UITextField *)&v3 willDismissEditMenuWithAnimator:animator];
}

@end