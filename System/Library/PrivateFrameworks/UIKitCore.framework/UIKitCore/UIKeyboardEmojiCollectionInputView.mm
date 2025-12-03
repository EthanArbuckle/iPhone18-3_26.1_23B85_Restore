@interface UIKeyboardEmojiCollectionInputView
- (BOOL)_handleBaseKeySelectionEvent:(id)event;
- (BOOL)_handleInitialSelectionEvent:(id)event;
- (BOOL)_handleVariantSelectionEvent:(id)event;
- (BOOL)_shouldShowRecentlyUsedMedia;
- (BOOL)_userHasSelectedSkinToneEmoji;
- (BOOL)baseStringIsCoupleEmoji:(id)emoji;
- (BOOL)cellShouldScrollWhenSelectedAtIndexPath:(id)path;
- (BOOL)genderEmojiBaseStringNeedVariantSelector:(id)selector;
- (BOOL)handleKeyEvent:(id)event;
- (BOOL)handleKeyInputForCollectionViewNavigation:(id)navigation;
- (BOOL)handleKeyInputForFamilySelector:(id)selector;
- (BOOL)handleKeyInputForVariantSelector:(id)selector;
- (BOOL)handleSelectionEvent:(id)event;
- (BOOL)keySupportsVariants:(id)variants;
- (BOOL)showingRecents;
- (BOOL)skinToneWasUsedForEmoji:(id)emoji;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (NSIndexPath)tappedSkinToneEmoji;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (UIKBEmojiHitTestResponder)hitTestResponder;
- (UIKeyboardEmojiCategory)category;
- (UIKeyboardEmojiCollectionInputView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key screenTraits:(id)traits;
- (double)_recentlyUsedMediaRoundedOffset:(double)offset recentlyUsedMediaCellWidth:(double)width;
- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index;
- (double)distanceInScrollingDirection:(CGSize)direction;
- (double)pointInScrollingDirection:(CGPoint)direction;
- (double)scrollingEndPoint;
- (double)scrollingStartPoint;
- (double)snappedXOffsetForOffset:(double)offset scrubbing:(BOOL)scrubbing;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)emojiBaseFirstCharacterString:(id)string;
- (id)emojiBaseString:(id)string;
- (id)firstFullyVisibleHeader;
- (id)itemInRect:(CGRect)rect;
- (id)selectedChildSkinToneEmoji:(id)emoji;
- (id)subTreeHitTest:(CGPoint)test;
- (id)treeForCell:(id)cell;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)didInputSubTree:(id)tree;
- (int64_t)emojiCategoryTypeForSection:(int64_t)section;
- (int64_t)indexForPrettyCategoryDisplay:(id)display;
- (int64_t)keyCodeForCurrentEnvironmentFromKeyCode:(int64_t)code;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (int64_t)updateToCategoryWithOffsetPercentage:(double)percentage;
- (void)_setUserHasSelectedSkinToneEmoji:(BOOL)emoji;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)didDismissCardForKeyboardMediaController:(id)controller;
- (void)didInsertMediaForKeyboardMediaController:(id)controller;
- (void)didMoveToWindow;
- (void)didPresentCardForKeyboardMediaController:(id)controller;
- (void)didTearDownRecentsViewForKeyboardMediaController:(id)controller;
- (void)dimKeys:(id)keys;
- (void)emojiSearchDidReceiveResults:(id)results forExactQuery:(id)query autocorrectedQuery:(id)autocorrectedQuery;
- (void)emojiSearchTextFieldDidBecomeActive:(id)active;
- (void)emojiSearchTextFieldDidBecomeInactive:(id)inactive;
- (void)emojiSearchTextFieldDidReset:(id)reset;
- (void)emojiSearchTextFieldWillBecomeActive:(id)active;
- (void)emojiSearchTextFieldWillBecomeInactive:(id)inactive;
- (void)emojiSearchTextFieldWillClear:(id)clear;
- (void)insertSelectedEmoji:(id)emoji shouldDismissPopover:(BOOL)popover;
- (void)resetSelectionIfNeeded;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setContentScaleFactor:(double)factor;
- (void)setHitTestResponder:(id)responder;
- (void)shouldDismissModalDisplayView:(id)view;
- (void)updateHighlightForIndexPath:(id)path scrollIfNeeded:(BOOL)needed animateScroll:(BOOL)scroll;
- (void)updateLastSeenItemForIndexPath:(id)path;
- (void)updateOffsetForSearchResults;
- (void)updatePreferencesForSelectedEmoji:(id)emoji;
- (void)updateToCategory:(int64_t)category;
- (void)willDisplayModalActionView:(id)view withSubTreeKeyView:(id)keyView completion:(id)completion;
@end

@implementation UIKeyboardEmojiCollectionInputView

- (UIKeyboardEmojiCollectionInputView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key screenTraits:(id)traits
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  keyplaneCopy = keyplane;
  keyCopy = key;
  traitsCopy = traits;
  orientation = [traitsCopy orientation];
  if (traitsCopy)
  {
    interfaceOrientation = orientation;
  }

  else
  {
    v18 = +[UIKeyboard activeKeyboard];
    interfaceOrientation = [v18 interfaceOrientation];

    v19 = +[UIKeyboardImpl keyboardScreen];
    traitsCopy = [UIKBScreenTraits traitsWithScreen:v19 orientation:interfaceOrientation];
  }

  v20 = interfaceOrientation - 3;
  v21 = (interfaceOrientation - 3) <= 1 && [traitsCopy idiom] != 1;
  self->_useWideAnimojiCell = v21;
  [keyplaneCopy frame];
  v22 = 0.0;
  if (width != v23 && (!traitsCopy || (traitsCopy[35] & 1) == 0))
  {
    [keyplaneCopy frame];
    v25 = (width - v24) * 0.5;
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    v57 = CGRectInset(v56, v25, 0.0);
    x = v57.origin.x;
    y = v57.origin.y;
    width = v57.size.width;
    height = v57.size.height;
    [traitsCopy bounds];
    if (v26 >= 812.0)
    {
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen bounds];
      v29 = v28;
      v31 = v30;

      if (v29 <= v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = v29;
      }

      if (v29 >= v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = v29;
      }

      if (v20 >= 2)
      {
        v32 = v33;
      }

      v22 = (width - v32) * 0.5;
      v58.origin.x = x;
      v58.origin.y = y;
      v58.size.width = width;
      v58.size.height = height;
      v59 = CGRectInset(v58, v22, 0.0);
      x = v59.origin.x;
      y = v59.origin.y;
      width = v59.size.width;
      height = v59.size.height;
    }
  }

  v55.receiver = self;
  v55.super_class = UIKeyboardEmojiCollectionInputView;
  height = [(UIView *)&v55 initWithFrame:x, y, width, height];
  v35 = height;
  if (height)
  {
    height->_frameInset = v22;
    v36 = [UIKeyboardEmojiGraphicsTraits emojiGraphicsTraitsWithScreenTraits:traitsCopy];
    emojiGraphicsTraits = v35->_emojiGraphicsTraits;
    v35->_emojiGraphicsTraits = v36;

    v38 = +[UIColor clearColor];
    [(UIView *)v35 setBackgroundColor:v38];

    [(UIView *)v35 setOpaque:0];
    [(UIKBKeyView *)v35 updateForKeyplane:keyplaneCopy key:keyCopy];
    v35->_isDraggingInputView = 0;
    v39 = objc_alloc_init(UIKeyboardEmojiLayout);
    flowLayout = v35->_flowLayout;
    v35->_flowLayout = &v39->super;

    [(UICollectionViewFlowLayout *)v35->_flowLayout setMinimumInteritemSpacing:0.0];
    [(UICollectionViewFlowLayout *)v35->_flowLayout setMinimumLineSpacing:0.0];
    -[UICollectionViewFlowLayout setScrollDirection:](v35->_flowLayout, "setScrollDirection:", [traitsCopy isEmojiScrollingDirectionVertical] ^ 1);
    v41 = [UIKeyboardEmojiCollectionView alloc];
    [(UIView *)v35 bounds];
    v42 = [(UIKeyboardEmojiCollectionView *)v41 initWithFrame:v35->_flowLayout collectionViewLayout:v35->_emojiGraphicsTraits emojiGraphicsTraits:?];
    collectionView = v35->_collectionView;
    v35->_collectionView = v42;

    [(UICollectionView *)v35->_collectionView setPrefetchingEnabled:1];
    v44 = v35->_collectionView;
    v45 = +[UIColor clearColor];
    [(UICollectionView *)v44 setBackgroundColor:v45];

    [(UIView *)v35->_collectionView setAutoresizingMask:18];
    [(UIView *)v35 contentScaleFactor];
    [(UIView *)v35->_collectionView setContentScaleFactor:?];
    [(UICollectionView *)v35->_collectionView setDelegate:v35];
    [(UICollectionView *)v35->_collectionView setDataSource:v35];
    [(UIScrollView *)v35->_collectionView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v35->_collectionView setShowsVerticalScrollIndicator:0];
    panGestureRecognizer = [(UIScrollView *)v35->_collectionView panGestureRecognizer];
    [panGestureRecognizer setMaximumNumberOfTouches:1];

    panGestureRecognizer2 = [(UIScrollView *)v35->_collectionView panGestureRecognizer];
    [panGestureRecognizer2 setMinimumNumberOfTouches:1];

    panGestureRecognizer3 = [(UIScrollView *)v35->_collectionView panGestureRecognizer];
    [panGestureRecognizer3 setFailsPastMaxTouches:1];

    [(UICollectionView *)v35->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"UICollectionElementKindSectionHeader" withReuseIdentifier:@"kEmojiCategoryTitleIdentifier"];
    [(UICollectionView *)v35->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kEmojiCellIdentifier"];
    [(UICollectionView *)v35->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kMediaCellIdentifier"];
    kdebug_trace();
    v49 = perfLog();
    if (os_signpost_enabled(v49))
    {
      *v54 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v49, OS_SIGNPOST_INTERVAL_BEGIN, 0x33uLL, "recents-bringup", "enableTelemetry=YES", v54, 2u);
    }

    v50 = +[UIKeyboardImpl activeInstance];
    v35->_inputDelegateCanSupportAnimoji = [v50 canPasteImage];

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v52 = [standardUserDefaults valueForKey:@"com.apple.Animoji.StickerRecents.SplashVersion"];
    v35->_hasShownAnimojiFirstTimeExperience = v52 != 0;

    v35->_shouldRetryFetchingAnimojiRecents = 1;
    [(UIView *)v35 addSubview:v35->_collectionView];
  }

  return v35;
}

- (void)dealloc
{
  v3 = +[UIKeyboardMediaController sharedKeyboardMediaController];
  [v3 setDelegate:0];

  [(UICollectionView *)self->_collectionView setDataSource:0];
  [(UICollectionView *)self->_collectionView setDelegate:0];
  self->_isDraggingInputView = 0;
  self->_showingVariants = 0;
  v4 = +[UIKeyboardEmojiPreferences sharedInstance];
  [v4 clearEmojiKeyboardPreferenceClient];

  v5.receiver = self;
  v5.super_class = UIKeyboardEmojiCollectionInputView;
  [(UIKBKeyView *)&v5 dealloc];
}

- (void)setContentScaleFactor:(double)factor
{
  v5.receiver = self;
  v5.super_class = UIKeyboardEmojiCollectionInputView;
  [(UIView *)&v5 setContentScaleFactor:?];
  [(UIView *)self->_collectionView setContentScaleFactor:factor];
}

- (void)dimKeys:(id)keys
{
  keysCopy = keys;
  v7.receiver = self;
  v7.super_class = UIKeyboardEmojiCollectionInputView;
  [(UIKBKeyView *)&v7 dimKeys:keysCopy];
  subviews = [(UIView *)self subviews];

  if (subviews)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__UIKeyboardEmojiCollectionInputView_dimKeys___block_invoke;
    v6[3] = &unk_1E7100338;
    v6[4] = self;
    [keysCopy enumerateKeysAndObjectsUsingBlock:v6];
  }
}

void __46__UIKeyboardEmojiCollectionInputView_dimKeys___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (([a2 integerValue] & 4) != 0)
  {
    [v7 doubleValue];
    [*(a1 + 32) setAlpha:?];
    *a4 = 1;
  }
}

- (void)setHitTestResponder:(id)responder
{
  responderCopy = responder;
  objc_storeWeak(&self->_hitTestResponder, responderCopy);
  [(UIKeyboardEmojiCollectionView *)self->_collectionView setHitTestResponder:responderCopy];
}

- (BOOL)_userHasSelectedSkinToneEmoji
{
  v3 = +[UIKeyboardImpl activeInstance];
  isEmojiPopoverPresented = [v3 isEmojiPopoverPresented];

  v5 = +[UIKeyboardEmojiPreferences sharedInstance];
  isFirstPartyStickers = 1;
  if (([v5 hasDisplayedSkinToneHelp] & 1) == 0 && (isEmojiPopoverPresented & 1) == 0)
  {
    emojiGraphicsTraits = self->_emojiGraphicsTraits;
    if (emojiGraphicsTraits)
    {
      isFirstPartyStickers = emojiGraphicsTraits->_isFirstPartyStickers;
    }

    else
    {
      isFirstPartyStickers = 0;
    }
  }

  return isFirstPartyStickers & 1;
}

- (void)_setUserHasSelectedSkinToneEmoji:(BOOL)emoji
{
  if (emoji)
  {
    v3 = +[UIKeyboardEmojiPreferences sharedInstance];
    [v3 didDisplaySkinToneHelp];
  }
}

- (id)emojiBaseFirstCharacterString:(id)string
{
  v3 = MEMORY[0x1E696AEC0];
  _firstLongCharacter = [string _firstLongCharacter];

  return [v3 _stringWithUnichar:_firstLongCharacter];
}

- (id)emojiBaseString:(id)string
{
  stringCopy = string;
  v4 = [getEMFStringUtilitiesClass() _baseStringForEmojiString:stringCopy];

  return v4;
}

- (BOOL)skinToneWasUsedForEmoji:(id)emoji
{
  emojiCopy = emoji;
  emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  v6 = [emojiKeyManager hasLastUsedVariantForEmojiString:emojiCopy];

  if (v6)
  {
    emojiGraphicsTraits = self->_emojiGraphicsTraits;
    if (emojiGraphicsTraits)
    {
      v8 = !emojiGraphicsTraits->_isFirstPartyStickers;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)baseStringIsCoupleEmoji:(id)emoji
{
  emojiCopy = emoji;
  v4 = [getEMFStringUtilitiesClass() _baseStringForEmojiString:emojiCopy];

  LOBYTE(emojiCopy) = [getEMFEmojiCategoryClass_0() _isCoupleMultiSkinToneEmoji:v4];
  return emojiCopy;
}

- (id)subTreeHitTest:(CGPoint)test
{
  y = test.y;
  x = test.x;
  emoji = 0;
  if ([(UIView *)self pointInside:0 forEvent:?])
  {
    collectionView = self->_collectionView;
    [(UIView *)collectionView convertPoint:self fromView:x, y];
    v8 = [(UIKeyboardEmojiCollectionView *)collectionView closestCellForPoint:?];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      emoji = [v8 emoji];

      if (emoji)
      {
        emoji = [(UIKeyboardEmojiCollectionInputView *)self treeForCell:v8];
      }
    }

    else
    {
      emoji = 0;
    }
  }

  return emoji;
}

- (id)treeForCell:(id)cell
{
  v253 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  collectionView = self->_collectionView;
  [cellCopy frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  selfCopy = self;
  superview = [(UIView *)self superview];
  [(UIView *)collectionView convertRect:superview toView:v6, v8, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = cellCopy;
  [cellCopy frame];
  v24 = v23;
  v230 = v25;
  v27 = v26;
  v29 = v28;
  v255.origin.x = v15;
  v255.origin.y = v17;
  v255.size.width = v19;
  v255.size.height = v21;
  MidX = CGRectGetMidX(v255);
  [(UIView *)selfCopy frame];
  if (MidX < CGRectGetMinX(v256))
  {
    goto LABEL_76;
  }

  v257.origin.x = v15;
  v257.origin.y = v17;
  v257.size.width = v19;
  v257.size.height = v21;
  v31 = CGRectGetMidX(v257);
  [(UIView *)selfCopy frame];
  if (v31 > CGRectGetMaxX(v258))
  {
    goto LABEL_76;
  }

  v259.origin.x = v15;
  v259.origin.y = v17;
  v259.size.width = v19;
  v259.size.height = v21;
  MidY = CGRectGetMidY(v259);
  [(UIView *)selfCopy frame];
  if (MidY < CGRectGetMinY(v260))
  {
    goto LABEL_76;
  }

  v261.origin.x = v15;
  v261.origin.y = v17;
  v261.size.width = v19;
  v261.size.height = v21;
  v33 = CGRectGetMidY(v261);
  [(UIView *)selfCopy frame];
  if (v33 > CGRectGetMaxY(v262))
  {
    goto LABEL_76;
  }

  v227 = v27;
  v228 = v29;
  v34 = +[UIKeyboardImpl isSplit];
  v35 = v15;
  v36 = v17;
  v37 = v19;
  v38 = v21;
  if (v34)
  {
    MaxY = CGRectGetMaxY(*&v35);
    superview2 = [(UIView *)selfCopy superview];
    [superview2 frame];
    v41 = CGRectGetMaxY(v263);

    if (MaxY > v41)
    {
      v42 = selfCopy->_collectionView;
      [(UIScrollView *)v42 contentOffset];
      v44 = v43;
      [(UIScrollView *)selfCopy->_collectionView contentOffset];
      v46 = v45;
      v264.origin.x = v15;
      v264.origin.y = v17;
      v264.size.width = v19;
      v264.size.height = v21;
      v47 = CGRectGetMaxY(v264);
      superview3 = [(UIView *)selfCopy superview];
      [superview3 frame];
      v49 = v47 - CGRectGetMaxY(v265);

      if (v49 < 0.0)
      {
        v49 = -v49;
      }

      [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits minimumLineSpacing];
      [(UICollectionView *)v42 setContentOffset:1 animated:v44, v46 + v49 + v50];
      v266.origin.x = v15;
      v266.origin.y = v17;
      v266.size.width = v19;
      v266.size.height = v21;
      v51 = CGRectGetMaxY(v266);
      superview4 = [(UIView *)selfCopy superview];
      [superview4 frame];
      v53 = v51 - CGRectGetMaxY(v267);

      if (v53 >= 0.0)
      {
        v54 = v53;
      }

      else
      {
        v54 = -v53;
      }

      [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits minimumLineSpacing];
      v56 = v55;
      v268.origin.x = v15;
      v268.origin.y = v17;
      v268.size.width = v19;
      v268.size.height = v21;
      v57 = CGRectGetMaxY(v268);
      superview5 = [(UIView *)selfCopy superview];
      v59 = v54 + v56;
      [superview5 frame];
      v60 = v57 - CGRectGetMaxY(v269);

      if (v60 < 0.0)
      {
        v60 = -v60;
      }

      v61 = selfCopy;
      [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits minimumLineSpacing];
      v24 = v24 + 0.0;
      v230 = v230 - v59;
      v63 = v60 + v62 - v59;
LABEL_34:
      v228 = v228 - v63;
      goto LABEL_46;
    }

    v277.origin.x = v15;
    v277.origin.y = v17;
    v277.size.width = v19;
    v277.size.height = v21;
    MinY = CGRectGetMinY(v277);
    superview6 = [(UIView *)selfCopy superview];
    [superview6 frame];
    v90 = CGRectGetMinY(v278);

    if (MinY < v90)
    {
      v91 = selfCopy->_collectionView;
      [(UIScrollView *)v91 contentOffset];
      v93 = v92;
      [(UIScrollView *)selfCopy->_collectionView contentOffset];
      obj = v94;
      v279.origin.x = v15;
      v279.origin.y = v17;
      v279.size.width = v19;
      v279.size.height = v21;
      v95 = CGRectGetMinY(v279);
      superview7 = [(UIView *)selfCopy superview];
      [superview7 frame];
      v97 = CGRectGetMinY(v280);

      v98 = 1.0;
      if (v95 >= v97)
      {
        v98 = 0.0;
      }

      v99 = *&obj - v98;
      [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits minimumLineSpacing];
      [(UICollectionView *)v91 setContentOffset:1 animated:v93, v99 - v100];
      v281.origin.x = v15;
      v281.origin.y = v17;
      v281.size.width = v19;
      v281.size.height = v21;
      v101 = CGRectGetMinY(v281);
      superview8 = [(UIView *)selfCopy superview];
      [superview8 frame];
      v103 = CGRectGetMinY(v282);

      if (v101 >= v103)
      {
        v104 = 0.0;
      }

      else
      {
        v104 = 1.0;
      }

      [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits minimumLineSpacing];
      v106 = v105;
      v283.origin.x = v15;
      v283.origin.y = v17;
      v283.size.width = v19;
      v283.size.height = v21;
      v107 = CGRectGetMinY(v283);
      superview9 = [(UIView *)selfCopy superview];
      v109 = v106 + v104;
      [superview9 frame];
      v110 = CGRectGetMinY(v284);

      if (v107 >= v110)
      {
        v111 = 0.0;
      }

      else
      {
        v111 = -1.0;
      }

      v61 = selfCopy;
      [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits minimumLineSpacing];
      v24 = v24 + 0.0;
      v230 = v230 + v109;
      v63 = v109 + v111 - v112;
      goto LABEL_34;
    }

    goto LABEL_45;
  }

  MaxX = CGRectGetMaxX(*&v35);
  superview10 = [(UIView *)selfCopy superview];
  [superview10 frame];
  v66 = CGRectGetMaxX(v270);

  if (MaxX > v66)
  {
    v67 = selfCopy->_collectionView;
    [(UIScrollView *)v67 contentOffset];
    v69 = v68;
    v271.origin.x = v15;
    v271.origin.y = v17;
    v271.size.width = v19;
    v271.size.height = v21;
    v70 = CGRectGetMaxX(v271);
    superview11 = [(UIView *)selfCopy superview];
    [superview11 frame];
    v72 = v70 - CGRectGetMaxX(v272);

    if (v72 < 0.0)
    {
      v72 = -v72;
    }

    [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits minimumLineSpacing];
    v74 = v69 + v72 + v73;
    [(UIScrollView *)selfCopy->_collectionView contentOffset];
    [(UICollectionView *)v67 setContentOffset:1 animated:v74];
    v273.origin.x = v15;
    v273.origin.y = v17;
    v273.size.width = v19;
    v273.size.height = v21;
    v75 = CGRectGetMaxX(v273);
    superview12 = [(UIView *)selfCopy superview];
    [superview12 frame];
    v77 = v75 - CGRectGetMaxX(v274);

    if (v77 >= 0.0)
    {
      v78 = v77;
    }

    else
    {
      v78 = -v77;
    }

    [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits minimumLineSpacing];
    v80 = v79;
    v275.origin.x = v15;
    v275.origin.y = v17;
    v275.size.width = v19;
    v275.size.height = v21;
    v81 = CGRectGetMaxX(v275);
    superview13 = [(UIView *)selfCopy superview];
    v83 = v78 + v80;
    [superview13 frame];
    v84 = v81 - CGRectGetMaxX(v276);

    if (v84 < 0.0)
    {
      v84 = -v84;
    }

    v61 = selfCopy;
    [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits minimumLineSpacing];
    v86 = v84 + v85;
    v24 = v24 - v86;
    v87 = v83 - v86;
LABEL_44:
    v227 = v227 - v87;
    v230 = v230 + 0.0;
    goto LABEL_46;
  }

  v285.origin.x = v15;
  v285.origin.y = v17;
  v285.size.width = v19;
  v285.size.height = v21;
  MinX = CGRectGetMinX(v285);
  superview14 = [(UIView *)selfCopy superview];
  [superview14 frame];
  v115 = CGRectGetMinX(v286);

  if (MinX < v115)
  {
    v116 = selfCopy->_collectionView;
    [(UIScrollView *)v116 contentOffset];
    v118 = v117;
    v287.origin.x = v15;
    v287.origin.y = v17;
    v287.size.width = v19;
    v287.size.height = v21;
    v119 = CGRectGetMinX(v287);
    superview15 = [(UIView *)selfCopy superview];
    [superview15 frame];
    v121 = v119 - CGRectGetMinX(v288);

    v122 = -v121;
    if (v121 >= 0.0)
    {
      v122 = v121;
    }

    v123 = v118 - v122;
    [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits minimumLineSpacing];
    v125 = v123 - v124;
    [(UIScrollView *)selfCopy->_collectionView contentOffset];
    [(UICollectionView *)v116 setContentOffset:1 animated:v125];
    v289.origin.x = v15;
    v289.origin.y = v17;
    v289.size.width = v19;
    v289.size.height = v21;
    v126 = CGRectGetMinX(v289);
    superview16 = [(UIView *)selfCopy superview];
    [superview16 frame];
    v128 = v126 - CGRectGetMinX(v290);

    if (v128 >= 0.0)
    {
      v129 = -v128;
    }

    else
    {
      v129 = v128;
    }

    [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits minimumLineSpacing];
    v131 = v130;
    v291.origin.x = v15;
    v291.origin.y = v17;
    v291.size.width = v19;
    v291.size.height = v21;
    v132 = CGRectGetMinX(v291);
    superview17 = [(UIView *)selfCopy superview];
    v134 = v129 - v131;
    [superview17 frame];
    v135 = v132 + CGRectGetMinX(v292);

    if (v135 < 0.0)
    {
      v135 = -v135;
    }

    v61 = selfCopy;
    [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits minimumLineSpacing];
    v137 = v135 + v136;
    v24 = v24 + v137;
    v87 = v134 + v137;
    goto LABEL_44;
  }

LABEL_45:
  v61 = selfCopy;
LABEL_46:
  v138 = [(UICollectionView *)v61->_collectionView indexPathForCell:cellCopy];
  [(UIKeyboardEmojiCollectionInputView *)selfCopy setTappedSkinToneEmoji:v138];

  v22 = cellCopy;
  if (!cellCopy)
  {
LABEL_76:
    v139 = 0;
    goto LABEL_77;
  }

  emoji = [cellCopy emoji];
  v139 = [UIKBTree treeOfType:8];
  [v139 setState:2];
  [v139 setName:@"EmojiPopupKey"];
  emojiString = [emoji emojiString];
  [v139 setDisplayString:emojiString];
  [v139 setRepresentedString:emojiString];
  [v139 setDisplayType:0];
  [v139 setInteractionType:2];
  if (selfCopy->_selectedPopupKey)
  {
    [(UIKeyboardEmojiCollectionInputView *)selfCopy resetSelectionIfNeeded];
  }

  if (+[UIDictationController isRunning])
  {
    v140 = +[UIDictationController sharedInstance];
    dictationTipController = [v140 dictationTipController];
    emojiString2 = [emoji emojiString];
    [dictationTipController signalDictationInsertionTip:emojiString2];
  }

  v248 = 0;
  v249 = &v248;
  v250 = 0x2050000000;
  v143 = getEMFEmojiTokenClass_softClass;
  v251 = getEMFEmojiTokenClass_softClass;
  if (!getEMFEmojiTokenClass_softClass)
  {
    v243 = MEMORY[0x1E69E9820];
    v244 = 3221225472;
    v245 = __getEMFEmojiTokenClass_block_invoke_1;
    v246 = &unk_1E70F2F20;
    v247 = &v248;
    __getEMFEmojiTokenClass_block_invoke_1(&v243);
    v143 = v249[3];
  }

  v144 = v143;
  _Block_object_dispose(&v248, 8);
  emojiString3 = [emoji emojiString];
  v226 = [v143 emojiTokenWithString:emojiString3 localeData:0];

  if (![v226 supportsSkinToneVariants])
  {
    goto LABEL_93;
  }

  _skinToneVariantStrings = [v226 _skinToneVariantStrings];
  v233 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(_skinToneVariantStrings, "count") + 1}];
  v241 = 0u;
  v242 = 0u;
  v239 = 0u;
  v240 = 0u;
  obja = _skinToneVariantStrings;
  v147 = [obja countByEnumeratingWithState:&v239 objects:v252 count:16];
  if (v147)
  {
    v148 = *v240;
    do
    {
      for (i = 0; i != v147; ++i)
      {
        if (*v240 != v148)
        {
          objc_enumerationMutation(obja);
        }

        v150 = *(*(&v239 + 1) + 8 * i);
        v151 = [v139 copy];
        [v151 setRepresentedString:v150];
        representedString = [v151 representedString];
        [v151 setDisplayString:representedString];

        [v151 setDisplayType:0];
        v153 = MEMORY[0x1E696AEC0];
        name = [v139 name];
        representedString2 = [v151 representedString];
        v155 = [v153 stringWithFormat:@"%@/%@", name, representedString2];
        [v151 setName:v155];

        [v151 setOverrideDisplayString:0];
        [v233 addObject:v151];
        firstObject = [obja firstObject];
        LODWORD(representedString2) = [firstObject isEqualToString:v150];

        if (representedString2)
        {
          v158 = [UIKBTree treeOfType:8];
          [v158 setDisplayType:50];
          [v158 setInteractionType:0];
          v159 = MEMORY[0x1E696AEC0];
          name2 = [v139 name];
          v160 = [v159 stringWithFormat:@"%@/Divider", name2];
          [v158 setName:v160];

          [v158 setState:1];
          [v233 addObject:v158];
        }
      }

      v147 = [obja countByEnumeratingWithState:&v239 objects:v252 count:16];
    }

    while (v147);
  }

  emojiString4 = [emoji emojiString];
  v163 = [(UIKeyboardEmojiCollectionInputView *)selfCopy baseStringIsCoupleEmoji:emojiString4];

  if (v163)
  {
    v164 = [v139 copy];
    EMFStringUtilitiesClass = getEMFStringUtilitiesClass();
    emojiString5 = [emoji emojiString];
    v167 = [EMFStringUtilitiesClass _baseStringForEmojiString:emojiString5];
    [v164 setRepresentedString:v167];

    representedString3 = [v164 representedString];
    [v164 setDisplayString:representedString3];

    [v164 setDisplayType:0];
    v169 = MEMORY[0x1E696AEC0];
    name3 = [v139 name];
    representedString4 = [v164 representedString];
    v171 = [v169 stringWithFormat:@"%@/%@", name3, representedString4];
    [v164 setName:v171];

    [v164 setOverrideDisplayString:0];
    [v233 insertObject:v164 atIndex:0];
  }

  emojiString6 = [emoji emojiString];
  v174 = [(UIKeyboardEmojiCollectionInputView *)selfCopy skinToneWasUsedForEmoji:emojiString6];

  if (v174)
  {
    v243 = 0;
    v244 = &v243;
    v245 = 0x2020000000;
    v246 = 0x7FFFFFFFFFFFFFFFLL;
    v236[0] = MEMORY[0x1E69E9820];
    v236[1] = 3221225472;
    v236[2] = __50__UIKeyboardEmojiCollectionInputView_treeForCell___block_invoke;
    v236[3] = &unk_1E710FF58;
    v237 = emoji;
    v238 = &v243;
    [v233 enumerateObjectsUsingBlock:v236];
    [v139 setSelectedVariantIndex:*(v244 + 24)];

    _Block_object_dispose(&v243, 8);
  }

  effectiveUserInterfaceLayoutDirection = [(UIView *)selfCopy effectiveUserInterfaceLayoutDirection];
  v176 = UIKBAttributeValueFixedLeftStr;
  if (effectiveUserInterfaceLayoutDirection != 1)
  {
    v176 = UIKBAttributeValueFixedRightStr;
  }

  [v139 setVariantPopupBias:*v176];
  [v139 setSubtrees:v233];
  emojiString7 = [emoji emojiString];
  v178 = [(UIKeyboardEmojiCollectionInputView *)selfCopy baseStringIsCoupleEmoji:emojiString7];

  emojiString8 = [emoji emojiString];
  if (![(UIKeyboardEmojiCollectionInputView *)selfCopy skinToneWasUsedForEmoji:emojiString8])
  {
    tappedSkinToneEmoji = [(UIKeyboardEmojiCollectionInputView *)selfCopy tappedSkinToneEmoji];
    if ([tappedSkinToneEmoji section] || !-[UIKeyboardEmojiCollectionInputView _userHasSelectedSkinToneEmoji](selfCopy, "_userHasSelectedSkinToneEmoji"))
    {

      goto LABEL_86;
    }

    emojiGraphicsTraits = selfCopy->_emojiGraphicsTraits;
    if (emojiGraphicsTraits)
    {
      isFirstPartyStickers = emojiGraphicsTraits->_isFirstPartyStickers;

      if (!isFirstPartyStickers)
      {
        goto LABEL_72;
      }

LABEL_86:
      if (v178)
      {
        v182 = 12;
      }

      else
      {
        v182 = 10;
      }

      v183 = 16;
      goto LABEL_90;
    }

LABEL_106:
    goto LABEL_72;
  }

  v180 = selfCopy->_emojiGraphicsTraits;
  if (!v180)
  {
    goto LABEL_106;
  }

  v181 = v180->_isFirstPartyStickers;

  if (v181)
  {
    goto LABEL_86;
  }

LABEL_72:
  if (v178)
  {
    v182 = 13;
  }

  else
  {
    v182 = 11;
  }

  v183 = 4;
LABEL_90:
  [v139 setVariantType:v182];
  [v139 setState:v183];
  v188 = +[UIKeyboardImpl activeInstance];
  isEmojiPopoverPresented = [v188 isEmojiPopoverPresented];

  if (isEmojiPopoverPresented)
  {
    objc_storeStrong(&selfCopy->_selectedPopupKey, v139);
    selfCopy->_showingVariants = 1;
    selfCopy->_currentVariantRow = 0;
    tappedSkinToneEmoji2 = [(UIKeyboardEmojiCollectionInputView *)selfCopy tappedSkinToneEmoji];
    v191 = [tappedSkinToneEmoji2 copy];
    [(UIKeyboardEmojiCollectionInputView *)selfCopy setSelectedIndexPath:v191];
  }

LABEL_93:
  v192 = selfCopy->_collectionView;
  superview18 = [(UIView *)selfCopy superview];
  [(UIView *)v192 convertRect:superview18 toView:v24 + 0.0, v230 + 1.0, v227, v228];
  v195 = v194;
  v197 = v196;
  v199 = v198;
  v201 = v200;

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || +[UIKeyboardImpl isFloating])
  {
    [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits fakeEmojiKeySize];
    v211 = v197 - (v210 - v201) * 0.5;
    v207 = v195 - (v209 - v199) * 0.5 + 0.0;
    v203 = v209 + 1.0;
    v208 = v211 + -2.0;
    v205 = v210 + 3.0;
    v293.origin.x = v207;
    v293.origin.y = v211 + -2.0;
    v293.size.width = v203;
    v293.size.height = v205;
    v212 = CGRectGetMaxX(v293);
    [(UIView *)selfCopy->_collectionView bounds];
    if (v212 > v213)
    {
      if ([emoji supportsSkinToneVariants])
      {
        v214 = selfCopy->_emojiGraphicsTraits;
        if (!v214 || !v214->_isFirstPartyStickers)
        {
          [(UIView *)selfCopy->_collectionView bounds];
          v216 = v215;
          v294.origin.x = v207;
          v294.origin.y = v208;
          v294.size.width = v203;
          v294.size.height = v205;
          v217 = CGRectGetMaxX(v294);
          [(UIView *)selfCopy->_collectionView bounds];
          if (v217 - v218 >= 0.0)
          {
            v219 = v217 - v218;
          }

          else
          {
            v219 = -(v217 - v218);
          }

          v220 = selfCopy->_collectionView;
          [(UIScrollView *)v220 contentOffset];
          v222 = v221;
          [(UIScrollView *)selfCopy->_collectionView contentOffset];
          [(UICollectionView *)v220 setContentOffset:1 animated:v222 + v219];
          v207 = v216 - v203;
        }
      }
    }
  }

  else
  {
    [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits fakeEmojiKeySize];
    v203 = v202;
    v205 = v204;
    v206 = (v204 - v201) * 0.5;
    v207 = v195 - (v202 - v199) * 0.5;
    v208 = v197 - v206;
  }

  v205 = [[UIKBShape alloc] initWithGeometry:0 frame:v207 paddedFrame:v208, v203, v205, v207, v208, v203, v205];
  [v139 setShape:v205];

  v224 = [(UIKBKeyView *)selfCopy key];
  [v139 setParentKey:v224];

  [v139 setObject:emoji forProperty:@"UIKBAssociatedEmoji"];
  v22 = cellCopy;
LABEL_77:

  return v139;
}

void __50__UIKeyboardEmojiCollectionInputView_treeForCell___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 representedString];
  v8 = [*(a1 + 32) emojiString];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (BOOL)genderEmojiBaseStringNeedVariantSelector:(id)selector
{
  selectorCopy = selector;
  if ([selectorCopy isEqualToString:@"⛹"] & 1) != 0 || (objc_msgSend(selectorCopy, "isEqualToString:", @"🏋"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [selectorCopy isEqualToString:@"🕵"];
  }

  return v4;
}

- (id)selectedChildSkinToneEmoji:(id)emoji
{
  emojiCopy = emoji;
  if ([emojiCopy selectedVariantIndex] == 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend(emojiCopy, "subtrees"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectAtIndex:", objc_msgSend(emojiCopy, "selectedVariantIndex")), v5 = objc_claimAutoreleasedReturnValue(), v4, objc_msgSend(v5, "displayString"), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v8 = [emojiCopy objectForProperty:@"UIKBAssociatedEmoji"];
  }

  else
  {
    v7 = [emojiCopy objectForProperty:@"UIKBAssociatedEmoji"];
    v8 = +[UIKeyboardEmoji emojiWithString:withVariantMask:](UIKeyboardEmoji, "emojiWithString:withVariantMask:", v6, [v7 variantMask]);
  }

  return v8;
}

- (int64_t)didInputSubTree:(id)tree
{
  treeCopy = tree;
  v43.receiver = self;
  v43.super_class = UIKeyboardEmojiCollectionInputView;
  v5 = [(UIKBKeyView *)&v43 didInputSubTree:treeCopy];
  v6 = [treeCopy objectForProperty:@"UIKBAssociatedEmoji"];
  if (v6)
  {
    v7 = v6;
    if ([v6 supportsSkinToneVariants])
    {
      if ([treeCopy state] == 16)
      {
        selectedVariantIndex = [treeCopy selectedVariantIndex];
        subtrees = [treeCopy subtrees];
        v10 = selectedVariantIndex < [subtrees count];
      }

      else
      {
        v10 = 0;
      }

      if (![(UIKeyboardEmojiCollectionInputView *)self _userHasSelectedSkinToneEmoji])
      {
        v5 = 1;
      }

      v42 = v5;
      v11 = [(UIKeyboardEmojiCollectionInputView *)self selectedChildSkinToneEmoji:treeCopy];

      if (v10)
      {
        subtrees2 = [treeCopy subtrees];
        v13 = [subtrees2 objectAtIndex:0];
        representedString = [v13 representedString];

        emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
        emojiString = [v11 emojiString];
        [emojiKeyManager updateSkinToneBaseKey:representedString variantUsed:emojiString];
      }

      collectionView = self->_collectionView;
      tappedSkinToneEmoji = [(UIKeyboardEmojiCollectionInputView *)self tappedSkinToneEmoji];
      v19 = [(UICollectionView *)collectionView cellForItemAtIndexPath:tappedSkinToneEmoji];

      emoji = [v19 emoji];
      emojiString2 = [emoji emojiString];
      v22 = [(UIKeyboardEmojiCollectionInputView *)self emojiBaseString:emojiString2];
      emojiString3 = [v11 emojiString];
      v24 = [(UIKeyboardEmojiCollectionInputView *)self emojiBaseString:emojiString3];
      v25 = [v22 isEqualToString:v24];

      if (v25)
      {
        [v19 setEmoji:v11];
        if (os_variant_has_internal_diagnostics())
        {
          v40 = objc_opt_class();
          emojiString4 = [v11 emojiString];
          [v19 setUnreleasedHighlight:{objc_msgSend(v40, "shouldHighlightEmoji:", emojiString4)}];
        }
      }

      v5 = v42;
    }

    else
    {
      v11 = v7;
    }

    v26 = +[UIKeyboardInputModeController sharedInputModeController];
    lastUsedInputModeForCurrentContext = [v26 lastUsedInputModeForCurrentContext];
    primaryLanguage = [lastUsedInputModeForCurrentContext primaryLanguage];
    v29 = [primaryLanguage stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = @"en_US";
    }

    v31 = +[UIKeyboardImpl activeInstance];
    isEmojiPopoverVisibleOrDismissing = [v31 isEmojiPopoverVisibleOrDismissing];

    if (!isEmojiPopoverVisibleOrDismissing)
    {
      goto LABEL_25;
    }

    emojiSearchField = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchField];
    text = [emojiSearchField text];
    if ([text length])
    {
      tappedSkinToneEmoji2 = [(UIKeyboardEmojiCollectionInputView *)self tappedSkinToneEmoji];
      section = [tappedSkinToneEmoji2 section];

      if (!section)
      {
        v37 = UIKBAnalyticsEmojiInputTypePopoverSearch;
LABEL_24:
        [UIKBAnalyticsDispatcher emojiInsertedByMethod:@"Touch" inputType:*v37];
LABEL_25:
        emojiKeyManager2 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
        [emojiKeyManager2 emojiUsed:v11 language:v30];

        goto LABEL_26;
      }
    }

    else
    {
    }

    v37 = UIKBAnalyticsEmojiInputTypePopover;
    goto LABEL_24;
  }

LABEL_26:
  [treeCopy setObject:0 forProperty:@"UIKBAssociatedEmoji"];

  return v5;
}

- (void)shouldDismissModalDisplayView:(id)view
{
  [(UIKeyboardEmojiCollectionInputView *)self _setUserHasSelectedSkinToneEmoji:1];
  completionBlock = [(UIKeyboardEmojiCollectionInputView *)self completionBlock];
  if (completionBlock)
  {
    v5 = completionBlock;
    completionBlock[2]();
    [(UIKeyboardEmojiCollectionInputView *)self setCompletionBlock:0];
    completionBlock = v5;
  }
}

- (void)willDisplayModalActionView:(id)view withSubTreeKeyView:(id)keyView completion:(id)completion
{
  v83[2] = *MEMORY[0x1E69E9840];
  keyViewCopy = keyView;
  viewCopy = view;
  [(UIKeyboardEmojiCollectionInputView *)self setCompletionBlock:completion];
  array = [MEMORY[0x1E695DF70] array];
  renderConfig = [(UIKBKeyView *)self renderConfig];
  whiteText = [renderConfig whiteText];

  if (whiteText)
  {
    v12 = +[UIColor whiteColor];
    v13 = v12;
  }

  else
  {
    v13 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBEmojiLightControlSymbolColor")];
    v12 = +[UIColor systemBlueColor];
  }

  v79 = v12;
  v14 = +[UIKeyboardImpl isSplit];
  if (+[UIKeyboardImpl isFloating])
  {
    v77 = 0;
  }

  else
  {
    renderConfig2 = [(UIKBKeyView *)self renderConfig];
    v77 = [renderConfig2 isFloating] ^ 1;
  }

  v76 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
  selfCopy = self;
  v16 = [(UIView *)self _keyboardOrientation]- 3;
  v17 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v17 preferencesActions];
  [preferencesActions rivenSizeFactor:1.0];
  v20 = v19;

  v21 = 1.67;
  if (v16 < 2)
  {
    v21 = 1.75;
  }

  if (v14)
  {
    v22 = 0.423;
  }

  else
  {
    v22 = 0.366;
  }

  if (v14)
  {
    v23 = 50.0;
  }

  else
  {
    v23 = 0.0;
  }

  if (!v14)
  {
    v21 = 1.0;
  }

  v24 = 0.96;
  if (v20 <= 1.0)
  {
    v24 = 1.0;
  }

  v25 = v21 * v24;
  v26 = objc_alloc_init(UIView);
  [(UIView *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewCopy addSubview:v26];
  v27 = [MEMORY[0x1E69977A0] constraintWithItem:v26 attribute:3 relatedBy:0 toItem:viewCopy attribute:3 multiplier:1.0 constant:0.0];
  [array addObject:v27];

  v28 = [MEMORY[0x1E69977A0] constraintWithItem:v26 attribute:1 relatedBy:0 toItem:viewCopy attribute:1 multiplier:1.0 constant:0.0];
  [array addObject:v28];

  v29 = [MEMORY[0x1E69977A0] constraintWithItem:v26 attribute:2 relatedBy:0 toItem:viewCopy attribute:2 multiplier:1.0 constant:0.0];
  [array addObject:v29];

  v30 = [MEMORY[0x1E69977A0] constraintWithItem:v26 attribute:8 relatedBy:0 toItem:viewCopy attribute:8 multiplier:v22 constant:0.0];
  [array addObject:v30];

  v31 = objc_alloc_init(UILabel);
  [(UIView *)v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v31 setUserInteractionEnabled:0];
  v33 = *off_1E70EC918;
  v82[0] = *off_1E70EC920;
  v32 = v82[0];
  v82[1] = v33;
  v83[0] = v13;
  v34 = [off_1E70ECC18 systemFontOfSize:13.0];
  v83[1] = v34;
  v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];

  v75 = v13;
  v35 = objc_alloc(MEMORY[0x1E696AAB0]);
  localizedSkinToneEmojiDescription = [getEMFEmojiCategoryClass_0() localizedSkinToneEmojiDescription];
  v73 = [v35 initWithString:localizedSkinToneEmojiDescription attributes:v74];

  [(UILabel *)v31 setNumberOfLines:0];
  [(UILabel *)v31 setTextAlignment:1];
  [(UILabel *)v31 setAttributedText:v73];
  [(UIView *)v26 addSubview:v31];
  v37 = [MEMORY[0x1E69977A0] constraintWithItem:v31 attribute:9 relatedBy:0 toItem:v26 attribute:9 multiplier:v25 constant:0.0];
  [array addObject:v37];

  v72 = v26;
  v38 = [MEMORY[0x1E69977A0] constraintWithItem:v31 attribute:3 relatedBy:0 toItem:v26 attribute:3 multiplier:1.0 constant:0.0];
  [array addObject:v38];

  v39 = [MEMORY[0x1E69977A0] constraintWithItem:v31 attribute:4 relatedBy:0 toItem:v26 attribute:4 multiplier:1.0 constant:0.0];
  [array addObject:v39];

  v40 = MEMORY[0x1E69977A0];
  [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits alertTextWidth];
  v42 = [v40 constraintWithItem:v31 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v41 - v23];
  [array addObject:v42];

  v43 = objc_alloc_init(UIView);
  [(UIView *)v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewCopy addSubview:v43];
  v44 = [MEMORY[0x1E69977A0] constraintWithItem:v43 attribute:4 relatedBy:0 toItem:viewCopy attribute:4 multiplier:1.0 constant:0.0];
  [array addObject:v44];

  v45 = [MEMORY[0x1E69977A0] constraintWithItem:v43 attribute:8 relatedBy:0 toItem:viewCopy attribute:8 multiplier:0.086 constant:0.0];
  [array addObject:v45];

  v46 = [UIButton buttonWithType:1];
  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
  v80[1] = v33;
  v81[0] = v79;
  v80[0] = v32;
  v47 = [off_1E70ECC18 systemFontOfSize:16.0];
  v81[1] = v47;
  v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:2];

  v48 = objc_alloc(MEMORY[0x1E696AAB0]);
  v49 = _UILocalizedStringInSystemLanguage(@"OK", @"OK");
  v68 = [v48 initWithString:v49 attributes:v70];

  [v46 setAttributedTitle:v68 forState:0];
  [v46 addTarget:selfCopy action:sel_shouldDismissModalDisplayView_ forControlEvents:64];
  [viewCopy addSubview:v46];
  v50 = [MEMORY[0x1E69977A0] constraintWithItem:v46 attribute:9 relatedBy:0 toItem:viewCopy attribute:9 multiplier:v25 constant:0.0];
  [array addObject:v50];

  v51 = [MEMORY[0x1E69977A0] constraintWithItem:v46 attribute:4 relatedBy:0 toItem:v43 attribute:3 multiplier:1.0 constant:6.0];
  [array addObject:v51];

  v52 = [MEMORY[0x1E69977A0] constraintWithItem:v46 attribute:7 relatedBy:0 toItem:v31 attribute:7 multiplier:1.0 constant:0.0];
  [array addObject:v52];

  v53 = [keyViewCopy snapshotViewAfterScreenUpdates:1];

  [v53 setUserInteractionEnabled:0];
  v54 = [[UIKBEmojiSnapshotSizingView alloc] initWithSnapshotView:v53];
  [(UIView *)v54 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ((v76 & v77) != 0)
  {
    v55 = -25.0;
  }

  else
  {
    v55 = 0.0;
  }

  [viewCopy addSubview:{v54, v68}];
  LODWORD(v56) = 1148829696;
  [(UIView *)v54 setContentHuggingPriority:1 forAxis:v56];
  v57 = [MEMORY[0x1E69977A0] constraintWithItem:v54 attribute:9 relatedBy:0 toItem:viewCopy attribute:9 multiplier:v25 constant:0.0];
  [array addObject:v57];

  v58 = [MEMORY[0x1E69977A0] constraintWithItem:v54 attribute:3 relatedBy:0 toItem:v31 attribute:4 multiplier:1.0 constant:v55];
  [array addObject:v58];

  v59 = objc_alloc_init(UILayoutGuide);
  [viewCopy addLayoutGuide:v59];

  topAnchor = [(UILayoutGuide *)v59 topAnchor];
  bottomAnchor = [(UIView *)v54 bottomAnchor];
  v62 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  [array addObject:v62];

  bottomAnchor2 = [(UILayoutGuide *)v59 bottomAnchor];
  topAnchor2 = [v46 topAnchor];
  v65 = [bottomAnchor2 constraintEqualToAnchor:topAnchor2];
  [array addObject:v65];

  heightAnchor = [(UILayoutGuide *)v59 heightAnchor];
  v67 = [heightAnchor constraintGreaterThanOrEqualToConstant:6.0];
  [array addObject:v67];

  [MEMORY[0x1E69977A0] activateConstraints:array];
}

- (BOOL)_shouldShowRecentlyUsedMedia
{
  if ([(UIKeyboardEmojiCollectionInputView *)self isSearching]|| ![(UIKeyboardEmojiCollectionInputView *)self showingRecents])
  {
    return 0;
  }

  else
  {
    v3 = +[UIKeyboardEmojiPreferences sharedInstance];
    if ([v3 deviceSupportsMemoji])
    {
      v4 = +[UIKeyboardEmojiPreferences sharedInstance];
      v5 = [v4 memojiSettingEnabled] && self->_inputDelegateCanSupportAnimoji && self->_shouldRetryFetchingAnimojiRecents;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)didTearDownRecentsViewForKeyboardMediaController:(id)controller
{
  controllerCopy = controller;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__UIKeyboardEmojiCollectionInputView_didTearDownRecentsViewForKeyboardMediaController___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = controllerCopy;
  v5 = controllerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __87__UIKeyboardEmojiCollectionInputView_didTearDownRecentsViewForKeyboardMediaController___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) shouldRetryFetchingRecents];
  *(*(a1 + 32) + 682) = result;
  return result;
}

- (void)didInsertMediaForKeyboardMediaController:(id)controller
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 dismissEmojiPopoverIfNecessaryWithCompletion:0];
}

- (void)didPresentCardForKeyboardMediaController:(id)controller
{
  emojiSearchField = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchField];
  isActive = [emojiSearchField isActive];

  if (isActive)
  {
    emojiSearchField2 = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchField];
    [emojiSearchField2 resignFirstResponder];
  }

  v7 = +[UIKeyboardImpl activeInstance];
  [v7 didPresentMemojiCard];
}

- (void)didDismissCardForKeyboardMediaController:(id)controller
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 didDismissMemojiCard];
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  v4 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v5 = [v4 count];

  if (![(UIKeyboardEmojiCollectionInputView *)self showingRecents])
  {
    v5 += [(UIKeyboardEmojiCollectionInputView *)self isSearching];
  }

  return v5;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
LABEL_2:
    searchResults3 = [UIKeyboardEmojiCategory categoryForType:[(UIKeyboardEmojiCollectionInputView *)self emojiCategoryTypeForSection:section]];
    emoji = [searchResults3 emoji];
    prepolulatedRecentCount2 = [emoji count];

LABEL_3:
    goto LABEL_4;
  }

  if (![(UIKeyboardEmojiCollectionInputView *)self isSearching])
  {
    if ([(UIKeyboardEmojiCollectionInputView *)self showingRecents])
    {
      prepolulatedRecentCount = [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits prepolulatedRecentCount];
      prepolulatedRecentCount2 = prepolulatedRecentCount + [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
      goto LABEL_4;
    }

    goto LABEL_2;
  }

  searchResults = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
  v12 = [searchResults count];

  if (!v12)
  {
    prepolulatedRecentCount2 = 1;
    goto LABEL_4;
  }

  prepolulatedRecentCount2 = [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits prepolulatedRecentCount];
  searchResults2 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
  v14 = [searchResults2 count];

  if (v14 > prepolulatedRecentCount2)
  {
    searchResults3 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
    prepolulatedRecentCount2 = [searchResults3 count];
    goto LABEL_3;
  }

LABEL_4:

  return prepolulatedRecentCount2;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  item = [pathCopy item];
  _shouldShowRecentlyUsedMedia = [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
  collectionView = self->_collectionView;
  if (_shouldShowRecentlyUsedMedia && !section && !item)
  {
    v10 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:@"kMediaCellIdentifier" forIndexPath:pathCopy];

    v11 = +[UIKeyboardMediaController sharedKeyboardMediaController];
    contentView = [v10 contentView];
    [v11 showRecentlyUsedMediaInView:contentView];

    goto LABEL_32;
  }

  v10 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:@"kEmojiCellIdentifier" forIndexPath:pathCopy];

  if (section)
  {
    goto LABEL_6;
  }

  if (![(UIKeyboardEmojiCollectionInputView *)self isSearching]|| ([(UIKeyboardEmojiCollectionInputView *)self searchResults], v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
  {
    if ([(UIKeyboardEmojiCollectionInputView *)self showingRecents])
    {
      v25 = item - _shouldShowRecentlyUsedMedia;
      v37 = 0;
      emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
      emoji2 = [emojiKeyManager recentEmojiAtIndex:v25 size:&v37];

      if (emoji2)
      {
        v15 = [UIKeyboardEmoji emojiWithString:emoji2 withVariantMask:[UIKeyboardEmojiCategory hasVariantsForEmoji:emoji2]];
      }

      else
      {
        v27 = [UIKeyboardEmojiCategory categoryForType:9];
        emoji = [v27 emoji];

        emojiKeyManager2 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
        v30 = [emojiKeyManager2 emojiWithoutDuplicateRecents:emoji];

        v31 = v25 - v37;
        if (v31 >= [v30 count])
        {
          v15 = 0;
        }

        else
        {
          v15 = [v30 objectAtIndex:v31];
        }
      }

      [v15 setIsFromRecentsCategory:1];
      goto LABEL_28;
    }

LABEL_6:
    v13 = [UIKeyboardEmojiCategory categoryForType:[(UIKeyboardEmojiCollectionInputView *)self emojiCategoryTypeForSection:section]];
    emoji2 = [v13 emoji];

    if (!emoji2)
    {
      v15 = 0;
      goto LABEL_28;
    }

    v15 = [emoji2 objectAtIndex:item];
    if (v15)
    {
      emojiKeyManager3 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
      emojiString = [v15 emojiString];
      v18 = [emojiKeyManager3 lastUsedVariantEmojiForEmojiString:emojiString];
      [v15 setEmojiString:v18];

LABEL_9:
    }

LABEL_28:

    if (v15)
    {
      [v10 setEmoji:v15];
      emojiGraphicsTraits = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
      [emojiGraphicsTraits emojiKeyWidth];
      [v10 setEmojiFontSize:v33];

      if (os_variant_has_internal_diagnostics())
      {
        v35 = objc_opt_class();
        emojiString2 = [v15 emojiString];
        [v10 setUnreleasedHighlight:{objc_msgSend(v35, "shouldHighlightEmoji:", emojiString2)}];
      }
    }

    goto LABEL_31;
  }

  searchResults = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
  v21 = [searchResults count];

  if (v21)
  {
    searchResults2 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
    v23 = [searchResults2 count];

    if (item < v23)
    {
      searchResults3 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
      emoji2 = [searchResults3 objectAtIndex:item];

      emojiKeyManager3 = [emoji2 string];
      if (emojiKeyManager3)
      {
        v15 = [UIKeyboardEmoji emojiWithString:emojiKeyManager3 withVariantMask:[UIKeyboardEmojiCategory hasVariantsForEmoji:emojiKeyManager3]];
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_9;
    }

    [v10 setEmoji:0];
  }

  else
  {
    [v10 setEmoji:0];
    [v10 setNoResultsCell:1];
  }

  v15 = 0;
LABEL_31:

LABEL_32:

  return v10;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v11 = pathCopy;
  emojiGraphicsTraits = self->_emojiGraphicsTraits;
  if (emojiGraphicsTraits && emojiGraphicsTraits->_isFirstPartyStickers && ![pathCopy section])
  {
    v13 = 0;
    goto LABEL_20;
  }

  v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"kEmojiCategoryTitleIdentifier" forIndexPath:v11];
  if ([(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection]== UICollectionViewScrollDirectionVertical)
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewLeftMostPadding];
    v15 = v14;
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewRightMostPadding];
    [v13 setInsets:{0.0, v15, 0.0, v16}];
  }

  section = [v11 section];
  v18 = [(UIKeyboardEmojiCollectionInputView *)self emojiCategoryTypeForSection:section];
  if (section || ![(UIKeyboardEmojiCollectionInputView *)self isSearching])
  {
    v19 = [UIKeyboardEmojiCategory displayName:v18];
  }

  else
  {
    v19 = _UILocalizedStringInSystemLanguage(@"Results", @"Results");
  }

  v20 = v19;
  [v13 setHeaderName:v19];
  emojiGraphicsTraits = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
  [emojiGraphicsTraits categoryHeaderFontSize];
  [v13 setHeaderFontSize:?];

  v22 = +[UIDevice currentDevice];
  _keyboardGraphicsQuality = [v22 _keyboardGraphicsQuality];

  renderConfig = [(UIKBKeyView *)self renderConfig];
  whiteText = [renderConfig whiteText];
  if (_keyboardGraphicsQuality == 10)
  {
    if ((whiteText & 1) == 0)
    {
      v26 = 0.51372549;
      v27 = 0.517647059;
      v28 = 0.529411765;
LABEL_16:
      v29 = [UIColor colorWithRed:v26 green:v27 blue:v28 alpha:1.0];
      goto LABEL_17;
    }
  }

  else if ((whiteText & 1) == 0)
  {
    v26 = 0.647;
    v27 = 0.651;
    v28 = 0.663;
    goto LABEL_16;
  }

  v29 = +[UIColor whiteColor];
LABEL_17:
  v30 = v29;
  [v13 setHeaderTextColor:v29];

  renderConfig2 = [(UIKBKeyView *)self renderConfig];
  whiteText2 = [renderConfig2 whiteText];
  v33 = 0.4;
  if (!whiteText2)
  {
    v33 = 1.0;
  }

  [v13 setHeaderOpacity:v33];

  renderConfig3 = [(UIKBKeyView *)self renderConfig];
  [v13 setUseVibrantBlend:{objc_msgSend(renderConfig3, "whiteText")}];

LABEL_20:

  return v13;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  objc_opt_class();
  v10 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v11 = 0.0;
    if (![layoutCopy scrollDirection])
    {
      emojiGraphicsTraits = self->_emojiGraphicsTraits;
      if (emojiGraphicsTraits && !section && emojiGraphicsTraits->_isFirstPartyStickers)
      {
        v10 = *MEMORY[0x1E695F060];
        v11 = *(MEMORY[0x1E695F060] + 8);
      }

      else
      {
        [viewCopy bounds];
        v10 = v15;
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits categoryHeaderHeight];
        v11 = v16;
      }
    }
  }

  else
  {
    v11 = 0.0;
  }

  v13 = v10;
  v14 = v11;
  result.height = v14;
  result.width = v13;
  return result;
}

- (BOOL)showingRecents
{
  v2 = +[UIKeyboardEmojiPreferences sharedInstance];
  shouldShowRecents = [v2 shouldShowRecents];

  return shouldShowRecents;
}

- (int64_t)emojiCategoryTypeForSection:(int64_t)section
{
  if (![(UIKeyboardEmojiCollectionInputView *)self showingRecents])
  {
    isSearching = [(UIKeyboardEmojiCollectionInputView *)self isSearching];
    v6 = section > 0 && isSearching;
    section -= v6;
  }

  return [UIKeyboardEmojiCategory categoryTypeForCategoryIndex:section];
}

- (BOOL)handleKeyEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy keyCode])
  {
    emojiSearchField = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchField];
    markedTextRange = [emojiSearchField markedTextRange];

    if (!markedTextRange)
    {
      if (([eventCopy keyCode] == 44 || objc_msgSend(eventCopy, "keyCode") == 40) && -[UIKeyboardEmojiCollectionInputView handleSelectionEvent:](self, "handleSelectionEvent:", eventCopy))
      {
        goto LABEL_8;
      }

      if (self->_showingVariants)
      {
        selectedPopupKey = self->_selectedPopupKey;
        if (selectedPopupKey)
        {
          if ([(UIKBTree *)selectedPopupKey variantType]== 12 || [(UIKBTree *)self->_selectedPopupKey variantType]== 13)
          {
            if (![(UIKeyboardEmojiCollectionInputView *)self handleKeyInputForFamilySelector:eventCopy])
            {
              goto LABEL_16;
            }

LABEL_8:
            v7 = 1;
            goto LABEL_4;
          }

          if ([(UIKeyboardEmojiCollectionInputView *)self handleKeyInputForVariantSelector:eventCopy])
          {
            goto LABEL_8;
          }
        }
      }

LABEL_16:
      v7 = [(UIKeyboardEmojiCollectionInputView *)self handleKeyInputForCollectionViewNavigation:eventCopy];
      goto LABEL_4;
    }
  }

  v7 = 0;
LABEL_4:

  return v7;
}

- (BOOL)handleKeyInputForVariantSelector:(id)selector
{
  selectorCopy = selector;
  if ([selectorCopy modifiersEqual:0])
  {
    v5 = -[UIKeyboardEmojiCollectionInputView keyCodeForCurrentEnvironmentFromKeyCode:](self, "keyCodeForCurrentEnvironmentFromKeyCode:", [selectorCopy keyCode]);
    if (v5 > 80)
    {
      if (v5 == 82)
      {
        if ([(UIKBTree *)self->_selectedPopupKey selectedVariantIndex]== 0x7FFFFFFFFFFFFFFFLL)
        {
          selectedVariantIndex = 0;
        }

        else
        {
          selectedVariantIndex = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndex];
        }

        self->_selectedVariant = selectedVariantIndex;
        [(UIKBTree *)self->_selectedPopupKey setSelectedVariantIndex:?];
        hitTestResponder = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
        selectedIndexPath = hitTestResponder;
        selectedPopupKey = self->_selectedPopupKey;
        goto LABEL_30;
      }

      if (v5 == 81)
      {
        hitTestResponder2 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
        [hitTestResponder2 updateState:2 forKey:self->_selectedPopupKey];

        self->_showingVariants = 0;
        v7 = self->_selectedPopupKey;
        self->_selectedPopupKey = 0;

        selectedIndexPath = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
        [(UIKeyboardEmojiCollectionInputView *)self updateHighlightForIndexPath:selectedIndexPath scrollIfNeeded:0 animateScroll:0];
LABEL_31:
        v9 = 1;
        goto LABEL_32;
      }
    }

    else
    {
      if (v5 == 79)
      {
        if (-[UIKBTree selectedVariantIndex](self->_selectedPopupKey, "selectedVariantIndex") == 0x7FFFFFFFFFFFFFFFLL || (selectedVariant = self->_selectedVariant, -[UIKBTree subtrees](self->_selectedPopupKey, "subtrees"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 count] - 1, v11, selectedVariant >= v12))
        {
          v13 = 0;
        }

        else
        {
          v13 = self->_selectedVariant + 1;
        }

        self->_selectedVariant = v13;
        subtrees = [(UIKBTree *)self->_selectedPopupKey subtrees];
        v16 = [subtrees objectAtIndex:self->_selectedVariant];
        interactionType = [v16 interactionType];

        v18 = self->_selectedVariant;
        if (interactionType)
        {
          goto LABEL_29;
        }

        ++v18;
        goto LABEL_28;
      }

      if (v5 == 80)
      {
        if ([(UIKBTree *)self->_selectedPopupKey selectedVariantIndex]== 0x7FFFFFFFFFFFFFFFLL)
        {
          self->_selectedVariant = 0;
        }

        else
        {
          v19 = self->_selectedVariant;
          v20 = v19 < 1;
          v21 = v19 - 1;
          if (v20)
          {
            subtrees2 = [(UIKBTree *)self->_selectedPopupKey subtrees];
            self->_selectedVariant = [subtrees2 count] - 1;
          }

          else
          {
            self->_selectedVariant = v21;
          }
        }

        subtrees3 = [(UIKBTree *)self->_selectedPopupKey subtrees];
        v26 = [subtrees3 objectAtIndex:self->_selectedVariant];
        interactionType2 = [v26 interactionType];

        v18 = self->_selectedVariant;
        if (interactionType2)
        {
          goto LABEL_29;
        }

        --v18;
LABEL_28:
        self->_selectedVariant = v18;
LABEL_29:
        [(UIKBTree *)self->_selectedPopupKey setSelectedVariantIndex:v18];
        hitTestResponder = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
        selectedIndexPath = hitTestResponder;
        selectedPopupKey = self->_selectedPopupKey;
LABEL_30:
        [hitTestResponder updateState:16 forKey:selectedPopupKey];
        goto LABEL_31;
      }
    }

    if (self->_selectedPopupKey)
    {
      selectedIndexPath = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
      [selectedIndexPath updateState:2 forKey:self->_selectedPopupKey];
      v9 = 0;
LABEL_32:

      goto LABEL_33;
    }
  }

  v9 = 0;
LABEL_33:

  return v9;
}

- (BOOL)handleKeyInputForCollectionViewNavigation:(id)navigation
{
  navigationCopy = navigation;
  if ([navigationCopy unmodifiedKeyCodeEquals:44] & 1) != 0 || (objc_msgSend(navigationCopy, "unmodifiedKeyCodeEquals:", 158))
  {
    goto LABEL_3;
  }

  if ([navigationCopy unmodifiedKeyCodeEquals:79])
  {
    v7 = 1;
  }

  else
  {
    v7 = [navigationCopy equalsKeyCode:79 modifiers:0x100000];
  }

  if ([navigationCopy unmodifiedKeyCodeEquals:80])
  {
    v8 = 1;
  }

  else
  {
    v8 = [navigationCopy equalsKeyCode:80 modifiers:0x100000];
  }

  if ([navigationCopy unmodifiedKeyCodeEquals:82])
  {
    v9 = 1;
  }

  else
  {
    v9 = [navigationCopy equalsKeyCode:82 modifiers:0x100000];
  }

  if ([navigationCopy unmodifiedKeyCodeEquals:81])
  {
    v10 = 1;
  }

  else
  {
    v10 = [navigationCopy equalsKeyCode:81 modifiers:0x100000];
  }

  scrollDirection = [(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection];
  effectiveUserInterfaceLayoutDirection = [(UIView *)self effectiveUserInterfaceLayoutDirection];
  if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v13 = v8;
  }

  else
  {
    v13 = v7;
  }

  if (effectiveUserInterfaceLayoutDirection != UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v7 = v8;
  }

  if (scrollDirection)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  if (scrollDirection)
  {
    v15 = v9;
  }

  else
  {
    v15 = v7;
  }

  v91 = v15;
  if (scrollDirection)
  {
    v16 = v13;
  }

  else
  {
    v16 = v10;
  }

  if (scrollDirection)
  {
    v17 = v7;
  }

  else
  {
    v17 = v9;
  }

  selectedIndexPath = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];

  if (selectedIndexPath)
  {
    v89 = v16;
    selectedIndexPath2 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
    section = [selectedIndexPath2 section];

    selectedIndexPath3 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
    item = [selectedIndexPath3 item];

    p_collectionView = &self->_collectionView;
    v24 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:section];
    v25 = v24;
    if (v14)
    {
      v90 = v17;
      if (item >= v24 - 1)
      {
        v26 = 0;
        if (section < [(UICollectionView *)*p_collectionView numberOfSections]- 1)
        {
          item = 0;
          ++section;
        }
      }

      else
      {
        v26 = 0;
        ++item;
      }

      goto LABEL_79;
    }

    if (scrollDirection)
    {
      v34 = 5;
    }

    else
    {
      v34 = 8;
    }

    if (v91)
    {
      _shouldShowRecentlyUsedMedia = [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
      v36 = section < 2 && _shouldShowRecentlyUsedMedia;
      if (item > v36)
      {
        v26 = 0;
        --item;
LABEL_65:
        v90 = 1;
        v38 = 1;
        v39 = v89;
        goto LABEL_81;
      }

      v39 = v89;
      if (section >= 1)
      {
        v26 = 0;
        item = [(UICollectionView *)*p_collectionView numberOfItemsInSection:section - 1]- 1;
        v90 = 1;
        v38 = 1;
        --section;
        goto LABEL_81;
      }

      v26 = 0;
LABEL_124:
      v90 = 1;
      goto LABEL_80;
    }

    v37 = v34;
  }

  else
  {
    if ([(UIKeyboardEmojiCollectionInputView *)self isSearching]&& ((v13 | v7) & 1) != 0)
    {
      goto LABEL_3;
    }

    v89 = v16;
    v90 = v17;
    indexPathsForVisibleItems = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
    v28 = [indexPathsForVisibleItems sortedArrayUsingSelector:sel_compare_];

    firstObject = [v28 firstObject];
    section = [firstObject section];
    item = [firstObject item];
    if (!(section | item))
    {
      item = [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
    }

    if ([(UIKeyboardEmojiCollectionInputView *)self isSearching])
    {
      searchResults = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
      v87 = v28;
      v31 = [searchResults count];

      v66 = v31 == 0;
      v28 = v87;
      if (v66)
      {
        section = 1;
      }
    }

    v32 = [MEMORY[0x1E696AC88] indexPathForItem:item inSection:{section, v87}];
    [(UIKeyboardEmojiCollectionInputView *)self setSelectedIndexPath:v32];

    p_collectionView = &self->_collectionView;
    v33 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:section];
    if (v14)
    {
      v26 = 0;
      goto LABEL_79;
    }

    v37 = 8;
    if (scrollDirection)
    {
      v37 = 5;
    }

    if (v91)
    {
      [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
      v26 = 0;
      goto LABEL_65;
    }

    v25 = v33;
    v34 = 0;
    v17 = v90;
  }

  if (v89)
  {
    v92 = v37;
    v90 = v17;
    v88 = p_collectionView;
    v40 = ![(UIScrollView *)*p_collectionView isScrollAnimating];
    v41 = [navigationCopy modifiersEqual:0x100000];
    v42 = v41;
    v43 = 40;
    if (scrollDirection == UICollectionViewScrollDirectionVertical)
    {
      v43 = 56;
    }

    v26 = v41 | v40;
    if (v41)
    {
      v34 = v43;
    }

    _shouldShowRecentlyUsedMedia2 = [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
    if (section)
    {
      v45 = 0;
    }

    else
    {
      v45 = _shouldShowRecentlyUsedMedia2;
    }

    if (!selectedIndexPath && !v42)
    {
      goto LABEL_79;
    }

    if (v34 + item < v25)
    {
      v39 = 1;
      v38 = 1;
      item += v34;
      goto LABEL_81;
    }

    v77 = section + 1;
    if (section + 1 < [*v88 numberOfSections])
    {
      v53 = v34 + item - v25;
      v78 = v25 % v92;
      if (v45)
      {
        v79 = 0;
      }

      else
      {
        v79 = v92;
      }

      v80 = v78 - v79;
      if (v78)
      {
        v81 = v80;
      }

      else
      {
        v81 = 0;
      }

      v82 = v81 + v53;
      if ((v81 + v53) >= [*v88 numberOfItemsInSection:v77] || (v82 & 0x8000000000000000) != 0)
      {
        v82 = item % v92;
      }

      if (v45)
      {
        if (v82)
        {
          item = v82 - 1;
        }

        else
        {
          item %= v92;
        }

        [(UIKeyboardEmojiCollectionInputView *)self isSearching];
        v38 = 1;
        goto LABEL_140;
      }

      v39 = 1;
      v38 = 1;
      item = v82;
      section = v77;
      goto LABEL_81;
    }

    item = v25 - 1;
LABEL_79:
    v39 = 1;
LABEL_80:
    v38 = 1;
    goto LABEL_81;
  }

  if (v17)
  {
    v93 = v37;
    v51 = ![(UIScrollView *)*p_collectionView isScrollAnimating];
    v52 = [navigationCopy modifiersEqual:0x100000];
    v26 = v52 | v51;
    if (!selectedIndexPath && !v52)
    {
      v39 = 0;
      goto LABEL_124;
    }

    v56 = p_collectionView;
    v57 = 40;
    if (scrollDirection == UICollectionViewScrollDirectionVertical)
    {
      v57 = 56;
    }

    if (v52)
    {
      v58 = v57;
    }

    else
    {
      v58 = v93;
    }

    v59 = item - v58;
    _shouldShowRecentlyUsedMedia3 = [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
    if (section)
    {
      v61 = 0;
    }

    else
    {
      v61 = _shouldShowRecentlyUsedMedia3;
    }

    if (v59 >= v61)
    {
      v90 = 1;
      v38 = 1;
      item -= v58;
      v39 = 0;
    }

    else
    {
      v62 = section - 1;
      if (section >= 1)
      {
        v63 = _shouldShowRecentlyUsedMedia3;
        --section;
        v64 = [*v56 numberOfItemsInSection:v62];
        v65 = section == 0;
        v66 = !v65 || !v63;
        if (v65 && v63)
        {
          v67 = 1;
        }

        else
        {
          v67 = v61;
        }

        v68 = v93 + v64 / v93 * v93 - v64;
        if (!v66)
        {
          v68 = 0;
        }

        v69 = v68 + v64;
        v70 = v69 + v59;
        v39 = 0;
        if (v70 >= v64)
        {
          v71 = v93;
        }

        else
        {
          v71 = 0;
        }

        v72 = v70 - v71;
        v73 = v69 + item;
        v74 = v71 + v58;
        if (v67 <= v72)
        {
          v67 = v72;
        }

        v75 = v67 + v74;
        v66 = v75 == v73;
        v76 = (v75 - v73 - (v75 != v73)) / v93;
        if (!v66)
        {
          ++v76;
        }

        item = v73 - v74 + v76 * v93;
        goto LABEL_124;
      }

      v39 = 0;
      v90 = 1;
      v38 = 1;
      item = v61;
    }

LABEL_81:
    if (![(UIKeyboardEmojiCollectionInputView *)self isSearching]|| section)
    {
      goto LABEL_141;
    }

    searchResults2 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
    v47 = [searchResults2 count];

    section = item >= v47;
    v48 = (item < v47) | v39;
    if (item >= v47)
    {
      item = 0;
    }

    if (v48 & 1) != 0 || ((v90 ^ 1))
    {
      goto LABEL_141;
    }

    searchResults3 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
    item = [searchResults3 count];

    if (item)
    {
      searchResults4 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
      item = [searchResults4 count] - 1;

      section = 0;
LABEL_141:
      v83 = [MEMORY[0x1E696AC88] indexPathForItem:item inSection:section];
      [(UIKeyboardEmojiCollectionInputView *)self updateHighlightForIndexPath:v83 scrollIfNeeded:v38 animateScroll:v26 & v38];

      v5 = 1;
      goto LABEL_4;
    }

LABEL_140:
    section = 1;
    goto LABEL_141;
  }

  v54 = [navigationCopy unmodifiedKeyCodeEquals:43];
  v55 = [navigationCopy equalsKeyCode:43 modifiers:0x20000];
  if ((v54 & 1) != 0 || v55)
  {
    if (v55)
    {
      if (section <= 0)
      {
        v90 = 0;
        v39 = 0;
        v26 = 0;
        section = 0;
        item = [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
        goto LABEL_80;
      }

      --section;
    }

    else
    {
      if (section >= [(UICollectionView *)*p_collectionView numberOfSections]- 1)
      {
        section = [(UICollectionView *)*p_collectionView numberOfSections]- 1;
        v90 = 0;
        v39 = 0;
        v26 = 0;
        item = [(UICollectionView *)*p_collectionView numberOfItemsInSection:section]- 1;
        goto LABEL_80;
      }

      ++section;
    }

    v84 = [(UIKeyboardEmojiCollectionInputView *)self emojiCategoryTypeForSection:section];
    emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    [emojiKeyManager reloadForCategory:v84 withSender:self];

    [(UIKeyboardEmojiCollectionInputView *)self updateToCategory:v84];
    category = [(UIKeyboardEmojiCollectionInputView *)self category];
    item = [category lastVisibleFirstEmojiIndex];

    v90 = 0;
    v39 = 0;
    v26 = 0;
    v38 = 0;
    if (!(item | section))
    {
      section = 0;
      item = [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
    }

    goto LABEL_81;
  }

LABEL_3:
  v5 = 0;
LABEL_4:

  return v5;
}

- (BOOL)handleKeyInputForFamilySelector:(id)selector
{
  v49 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  v5 = [selectorCopy modifiersEqual:0];
  if (v5)
  {
    selectedVariantIndices = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
    v7 = [selectedVariantIndices mutableCopy];

    if (!v7)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:&unk_1EFE2CC10];
    }

    currentVariantRow = self->_currentVariantRow;
    if (currentVariantRow <= [v7 count] - 1)
    {
      v9 = self->_currentVariantRow;
    }

    else
    {
      v9 = 0;
      self->_currentVariantRow = 0;
    }

    v10 = [v7 objectAtIndex:v9];
    self->_selectedVariant = [v10 integerValue];

    v11 = -[UIKeyboardEmojiCollectionInputView keyCodeForCurrentEnvironmentFromKeyCode:](self, "keyCodeForCurrentEnvironmentFromKeyCode:", [selectorCopy keyCode]);
    if (v11 <= 80)
    {
      if (v11 == 79)
      {
        selectedVariant = self->_selectedVariant;
        if (selectedVariant == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = 0;
        }

        else
        {
          v13 = selectedVariant + 1;
        }

        goto LABEL_31;
      }

      if (v11 == 80)
      {
        v12 = self->_selectedVariant;
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = 0;
        }

        else
        {
          if (v12 < 1)
          {
LABEL_32:
            v26 = self->_currentVariantRow;
            v27 = MEMORY[0x1E696AD98];
LABEL_33:
            v28 = [v27 numberWithInteger:?];
            [v7 replaceObjectAtIndex:v26 withObject:v28];

            goto LABEL_34;
          }

          v13 = v12 - 1;
        }

LABEL_31:
        self->_selectedVariant = v13;
        goto LABEL_32;
      }

LABEL_34:
      [(UIKBTree *)self->_selectedPopupKey setSelectedVariantIndices:v7];
      hitTestResponder = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
      [hitTestResponder updateState:16 forKey:self->_selectedPopupKey];
      goto LABEL_35;
    }

    if (v11 == 82)
    {
      popupDirection = [(UIKBTree *)self->_selectedPopupKey popupDirection];
      v20 = self->_currentVariantRow;
      if (popupDirection != 2 || v20)
      {
        v24 = v20 < 1;
        v25 = v20 - 1;
        if (v24)
        {
          if ([(UIKBTree *)self->_selectedPopupKey popupDirection]== 1)
          {
            selectedVariantIndex = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndex];
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            obj = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
            v30 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v45;
              while (2)
              {
                for (i = 0; i != v31; ++i)
                {
                  if (*v45 != v32)
                  {
                    objc_enumerationMutation(obj);
                  }

                  if ([*(*(&v44 + 1) + 8 * i) integerValue] == 0x7FFFFFFFFFFFFFFFLL)
                  {

                    goto LABEL_58;
                  }
                }

                v31 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
                if (v31)
                {
                  continue;
                }

                break;
              }
            }

            if (selectedVariantIndex)
            {
              self->_currentVariantRow = [v7 count];
              [v7 addObject:&unk_1EFE31A50];
            }

            else
            {
LABEL_58:
              self->_currentVariantRow = 0;
            }
          }
        }

        else
        {
          self->_currentVariantRow = v25;
        }

        v41 = [v7 objectAtIndex:self->_currentVariantRow];
        self->_selectedVariant = [v41 integerValue];

        if (self->_selectedVariant != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_34;
        }

        self->_selectedVariant = 0;
        v26 = self->_currentVariantRow;
        v27 = MEMORY[0x1E696AD98];
        goto LABEL_33;
      }
    }

    else
    {
      if (v11 != 81)
      {
        goto LABEL_34;
      }

      popupDirection2 = [(UIKBTree *)self->_selectedPopupKey popupDirection];
      v15 = self->_currentVariantRow;
      if (v15 < [v7 count] && (self->_selectedVariant != 0x7FFFFFFFFFFFFFFFLL || -[UIKBTree popupDirection](self->_selectedPopupKey, "popupDirection") == 2))
      {
        popupDirection3 = [(UIKBTree *)self->_selectedPopupKey popupDirection];
        v17 = self->_currentVariantRow;
        if (popupDirection3 == 2 && !v17)
        {
          if (self->_selectedVariant == 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = -1;
            self->_currentVariantRow = -1;
          }

          else
          {
            v17 = 0;
          }
        }

        if (v17 == [v7 count] - 1)
        {
          [v7 addObject:&unk_1EFE31A50];
        }

        ++self->_currentVariantRow;
        v34 = [v7 objectAtIndex:?];
        self->_selectedVariant = [v34 integerValue];

        if (self->_selectedVariant == 0x7FFFFFFFFFFFFFFFLL)
        {
          self->_selectedVariant = 0;
          v35 = self->_currentVariantRow;
          v36 = [MEMORY[0x1E696AD98] numberWithInteger:0];
          [v7 replaceObjectAtIndex:v35 withObject:v36];
        }

        [(UIKBTree *)self->_selectedPopupKey setSelectedVariantIndices:v7];
        hitTestResponder2 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
        [hitTestResponder2 updateState:16 forKey:self->_selectedPopupKey];

        if (popupDirection2 != 1)
        {
          goto LABEL_36;
        }

        v38 = [v7 count];
        selectedVariantIndices2 = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
        v40 = [selectedVariantIndices2 count];

        if (v38 <= v40)
        {
          goto LABEL_36;
        }
      }
    }

    hitTestResponder3 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
    [hitTestResponder3 updateState:2 forKey:self->_selectedPopupKey];

    self->_showingVariants = 0;
    selectedPopupKey = self->_selectedPopupKey;
    self->_selectedPopupKey = 0;

    hitTestResponder = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
    [(UIKeyboardEmojiCollectionInputView *)self updateHighlightForIndexPath:hitTestResponder scrollIfNeeded:0 animateScroll:0];
LABEL_35:

LABEL_36:
  }

  return v5;
}

- (BOOL)_handleInitialSelectionEvent:(id)event
{
  eventCopy = event;
  emojiSearchField = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchField];
  text = [emojiSearchField text];

  if ([eventCopy unmodifiedKeyCodeEquals:44] && !objc_msgSend(text, "length") || objc_msgSend(eventCopy, "unmodifiedKeyCodeEquals:", 40) && objc_msgSend(text, "length") && (-[UIKeyboardEmojiCollectionInputView searchResults](self, "searchResults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
  {
    indexPathsForVisibleItems = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
    v10 = [indexPathsForVisibleItems sortedArrayUsingSelector:sel_compare_];

    firstObject = [v10 firstObject];
    if (!firstObject)
    {
      v14 = 0;
      goto LABEL_15;
    }

    v12 = firstObject;
    if (-[UIKeyboardEmojiCollectionInputView _shouldShowRecentlyUsedMedia](self, "_shouldShowRecentlyUsedMedia") && ![v12 section] && !objc_msgSend(v12, "item"))
    {
      v13 = [MEMORY[0x1E696AC88] indexPathForItem:1 inSection:0];

      v12 = v13;
    }

    [(UIKeyboardEmojiCollectionInputView *)self updateHighlightForIndexPath:v12 scrollIfNeeded:0 animateScroll:0];
  }

  else
  {
    if (![eventCopy unmodifiedKeyCodeEquals:40])
    {
      v14 = 0;
      goto LABEL_17;
    }

    [(UIKeyboardEmojiCollectionInputView *)self setIsSearching:0];
    v10 = +[UIKeyboardImpl activeInstance];
    [v10 dismissEmojiPopoverIfNecessaryWithCompletion:&__block_literal_global_374];
  }

  v14 = 1;
LABEL_15:

LABEL_17:
  return v14;
}

void __67__UIKeyboardEmojiCollectionInputView__handleInitialSelectionEvent___block_invoke()
{
  v0 = +[UIKeyboardImpl activeInstance];
  [v0 clearForwardingInputDelegateAndResign:0];
}

- (BOOL)_handleVariantSelectionEvent:(id)event
{
  eventCopy = event;
  v5 = [eventCopy unmodifiedKeyCodeEquals:44];
  v6 = [eventCopy unmodifiedKeyCodeEquals:40];

  v7 = v5 | v6;
  if ((v5 | v6))
  {
    collectionView = self->_collectionView;
    selectedIndexPath = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
    v10 = [(UICollectionView *)collectionView cellForItemAtIndexPath:selectedIndexPath];

    v11 = [(UIKeyboardEmojiCollectionInputView *)self selectedChildSkinToneEmoji:self->_selectedPopupKey];
    selectedVariantIndices = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
    v13 = [selectedVariantIndices count];

    if (v13)
    {
      selectedVariantIndices2 = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
      lastObject = [selectedVariantIndices2 lastObject];
      integerValue = [lastObject integerValue];

      if (!integerValue)
      {
        [(UIKBTree *)self->_selectedPopupKey setSelectedVariantIndex:0];
        v17 = [(UIKeyboardEmojiCollectionInputView *)self selectedChildSkinToneEmoji:self->_selectedPopupKey];

        v11 = v17;
      }
    }

    [(UIKBTree *)self->_selectedPopupKey setObject:v11 forProperty:@"UIKBAssociatedEmoji"];
    [v10 setEmoji:v11];
    hitTestResponder = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
    [hitTestResponder updateState:2 forKey:self->_selectedPopupKey];

    [(UIKeyboardEmojiCollectionInputView *)self didInputSubTree:self->_selectedPopupKey];
    if (v5)
    {
      selectedIndexPath2 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
      [(UIKeyboardEmojiCollectionInputView *)self updateHighlightForIndexPath:selectedIndexPath2 scrollIfNeeded:0 animateScroll:0];
    }

    else if ((v6 & 1) == 0)
    {
LABEL_9:

      return v7 & 1;
    }

    [(UIKeyboardEmojiCollectionInputView *)self insertSelectedEmoji:v11 shouldDismissPopover:v5 ^ 1u];
    goto LABEL_9;
  }

  return v7 & 1;
}

- (BOOL)_handleBaseKeySelectionEvent:(id)event
{
  eventCopy = event;
  collectionView = self->_collectionView;
  selectedIndexPath = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
  v7 = [(UICollectionView *)collectionView cellForItemAtIndexPath:selectedIndexPath];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    emoji = [v7 emoji];
    v9 = [(UIKeyboardEmojiCollectionInputView *)self treeForCell:v7];
    v10 = [eventCopy unmodifiedKeyCodeEquals:44];
    v11 = [eventCopy equalsKeyCode:44 modifiers:0x80000];
    v12 = [eventCopy unmodifiedKeyCodeEquals:40];
    v13 = [eventCopy equalsKeyCode:40 modifiers:0x80000];
    if ([(UIKeyboardEmojiCollectionInputView *)self keySupportsVariants:v9])
    {
      v14 = emoji;
      factory = [(UIKBKeyView *)self factory];
      if ([factory popupKeyUsesCustomKeyContentView:v9])
      {
        if ([v9 selectedVariantIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {

LABEL_21:
          self->_currentVariantRow = 0;
          selectedVariantIndices = [v9 selectedVariantIndices];
          v21 = selectedVariantIndices;
          emoji = v14;
          if (selectedVariantIndices)
          {
            firstObject = [selectedVariantIndices firstObject];
            integerValue = [firstObject integerValue];

            if (integerValue == 0x7FFFFFFFFFFFFFFFLL)
            {
              v24 = 0;
            }

            else
            {
              v24 = integerValue;
            }

            self->_selectedVariant = v24;
          }

          [v7 setSelected:0];
          objc_storeStrong(&self->_selectedPopupKey, v9);
          v17 = 1;
          self->_showingVariants = 1;
          hitTestResponder = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
          [hitTestResponder updateState:16 forKey:v9];

          goto LABEL_27;
        }

        v28 = [eventCopy modifiersEqual:0x80000];

        if (v28)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      emoji = v14;
      if (([v9 selectedVariantIndex] == 0x7FFFFFFFFFFFFFFFLL) & (v10 | v12) | (v11 | v13) & 1)
      {
        [v7 setSelected:0];
        if ([v9 selectedVariantIndex] != 0x7FFFFFFFFFFFFFFFLL)
        {
          self->_selectedVariant = [v9 selectedVariantIndex];
        }

        objc_storeStrong(&self->_selectedPopupKey, v9);
        v17 = 1;
        self->_showingVariants = 1;
        hitTestResponder2 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
        [hitTestResponder2 updateState:16 forKey:v9];

        goto LABEL_27;
      }
    }

    if (v10)
    {
      selectedIndexPath2 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
      [(UIKeyboardEmojiCollectionInputView *)self updateHighlightForIndexPath:selectedIndexPath2 scrollIfNeeded:0 animateScroll:0];

      [(UIKeyboardEmojiCollectionInputView *)self insertSelectedEmoji:emoji shouldDismissPopover:0];
      v17 = 1;
    }

    else if (v12)
    {
      v17 = 1;
      [(UIKeyboardEmojiCollectionInputView *)self insertSelectedEmoji:emoji shouldDismissPopover:1];
    }

    else
    {
      v17 = 0;
    }

LABEL_27:

    goto LABEL_28;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v27 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *v30 = 0;
      _os_log_fault_impl(&dword_188A29000, v27, OS_LOG_TYPE_FAULT, "Memoji cell is selected. Unsupported.", v30, 2u);
    }
  }

  else
  {
    v16 = *(__UILogGetCategoryCachedImpl("Assert", &_handleBaseKeySelectionEvent____s_category) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Memoji cell is selected. Unsupported.", buf, 2u);
    }
  }

  v17 = 1;
LABEL_28:

  return v17;
}

- (BOOL)handleSelectionEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy modifierFlags] && !objc_msgSend(eventCopy, "modifiersEqual:", 0x80000))
  {
    v7 = 0;
  }

  else
  {
    selectedIndexPath = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];

    if (selectedIndexPath)
    {
      if (self->_showingVariants)
      {
        v6 = [(UIKeyboardEmojiCollectionInputView *)self _handleVariantSelectionEvent:eventCopy];
      }

      else
      {
        v6 = [(UIKeyboardEmojiCollectionInputView *)self _handleBaseKeySelectionEvent:eventCopy];
      }
    }

    else
    {
      v6 = [(UIKeyboardEmojiCollectionInputView *)self _handleInitialSelectionEvent:eventCopy];
    }

    v7 = v6;
  }

  return v7;
}

- (void)updateHighlightForIndexPath:(id)path scrollIfNeeded:(BOOL)needed animateScroll:(BOOL)scroll
{
  scrollCopy = scroll;
  neededCopy = needed;
  pathCopy = path;
  selectedIndexPath = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
  section = [selectedIndexPath section];
  section2 = [pathCopy section];

  if (section != section2)
  {
    v11 = -[UIKeyboardEmojiCollectionInputView emojiCategoryTypeForSection:](self, "emojiCategoryTypeForSection:", [pathCopy section]);
    emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    [emojiKeyManager reloadForCategory:v11 withSender:self];

    v13 = [UIKeyboardEmojiCategory categoryForType:v11];
    [(UIKeyboardEmojiCollectionInputView *)self setCategory:v13];
  }

  [(UIKeyboardEmojiCollectionInputView *)self setSelectedIndexPath:pathCopy];
  collectionView = self->_collectionView;
  selectedIndexPath2 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
  [(UICollectionView *)collectionView selectItemAtIndexPath:selectedIndexPath2 animated:0 scrollPosition:0];

  if ([(UIKeyboardEmojiCollectionInputView *)self cellShouldScrollWhenSelectedAtIndexPath:pathCopy]&& neededCopy)
  {
    v16 = self->_collectionView;
    selectedIndexPath3 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
    if ([(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection])
    {
      v18 = 16;
    }

    else
    {
      v18 = 2;
    }

    [(UICollectionView *)v16 scrollToItemAtIndexPath:selectedIndexPath3 atScrollPosition:v18 animated:scrollCopy];
  }

  [(UIKeyboardEmojiCollectionInputView *)self updateLastSeenItemForIndexPath:pathCopy];
}

- (void)insertSelectedEmoji:(id)emoji shouldDismissPopover:(BOOL)popover
{
  popoverCopy = popover;
  emojiCopy = emoji;
  [(UIKeyboardEmojiCollectionInputView *)self updatePreferencesForSelectedEmoji:emojiCopy];
  emojiSearchInputViewController = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchInputViewController];
  textDocumentProxy = [emojiSearchInputViewController textDocumentProxy];
  emojiString = [emojiCopy emojiString];
  [textDocumentProxy insertText:emojiString];

  emojiSearchField = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchField];
  text = [emojiSearchField text];

  if ([text length] && (-[UIKeyboardEmojiCollectionInputView selectedIndexPath](self, "selectedIndexPath"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "section"), v11, !v12))
  {
    v14 = +[UIKeyboardImpl activeInstance];
    emojiString2 = [emojiCopy emojiString];
    v17 = UIKBAnalyticsEmojiSelectionMethodReturnKey;
    if (!popoverCopy)
    {
      v17 = UIKBAnalyticsEmojiSelectionMethodSpaceBar;
    }

    [v14 emojiSearchWillInsertEmoji:emojiString2 forSearchQuery:text selectionMethod:*v17 inputType:@"PopoverSearch"];
  }

  else
  {
    v13 = +[UIKeyboardImpl activeInstance];
    v14 = v13;
    v15 = UIKBAnalyticsEmojiSelectionMethodReturnKey;
    if (!popoverCopy)
    {
      v15 = UIKBAnalyticsEmojiSelectionMethodSpaceBar;
    }

    [v13 insertedEmojiFromPopover:emojiCopy selectionMethod:*v15];
  }

  if (popoverCopy)
  {
    [(UIKeyboardEmojiCollectionInputView *)self resetSelectionIfNeeded];
    v18 = +[UIKeyboardImpl activeInstance];
    [v18 dismissEmojiPopoverIfNecessaryWithCompletion:&__block_literal_global_173_1];
  }

  selectedPopupKey = self->_selectedPopupKey;
  self->_selectedPopupKey = 0;

  self->_showingVariants = 0;
}

void __79__UIKeyboardEmojiCollectionInputView_insertSelectedEmoji_shouldDismissPopover___block_invoke()
{
  v0 = +[UIKeyboardImpl activeInstance];
  [v0 clearForwardingInputDelegateAndResign:0];
}

- (int64_t)keyCodeForCurrentEnvironmentFromKeyCode:(int64_t)code
{
  effectiveUserInterfaceLayoutDirection = [(UIView *)self effectiveUserInterfaceLayoutDirection];
  v5 = 80;
  codeCopy = 79;
  if (code != 80)
  {
    codeCopy = code;
  }

  if (code != 79)
  {
    v5 = codeCopy;
  }

  if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    return v5;
  }

  else
  {
    return code;
  }
}

- (void)updatePreferencesForSelectedEmoji:(id)emoji
{
  emojiCopy = emoji;
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  lastUsedInputModeForCurrentContext = [v5 lastUsedInputModeForCurrentContext];
  primaryLanguage = [lastUsedInputModeForCurrentContext primaryLanguage];
  v8 = [primaryLanguage stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"en_US";
  }

  v13 = v9;
  emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [emojiKeyManager emojiUsed:emojiCopy language:v13];

  selectedIndexPath = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];

  if (selectedIndexPath)
  {
    selectedIndexPath2 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
    [(UIKeyboardEmojiCollectionInputView *)self updateLastSeenItemForIndexPath:selectedIndexPath2];
  }
}

- (void)updateLastSeenItemForIndexPath:(id)path
{
  pathCopy = path;
  v5 = +[UIKeyboardEmojiCategory categoryForType:](UIKeyboardEmojiCategory, "categoryForType:", -[UIKeyboardEmojiCollectionInputView emojiCategoryTypeForSection:](self, "emojiCategoryTypeForSection:", [pathCopy section]));
  [(UIKeyboardEmojiCollectionInputView *)self setCategory:v5];

  item = [pathCopy item];
  category = [(UIKeyboardEmojiCollectionInputView *)self category];
  [category setLastVisibleFirstEmojiIndex:item];

  category2 = [(UIKeyboardEmojiCollectionInputView *)self category];
  emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [emojiKeyManager setLastViewedCategory:category2];
}

- (void)resetSelectionIfNeeded
{
  selectedIndexPath = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];

  if (selectedIndexPath)
  {
    collectionView = self->_collectionView;
    selectedIndexPath2 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
    [(UICollectionView *)collectionView deselectItemAtIndexPath:selectedIndexPath2 animated:0];

    selectedIndexPath = self->_selectedIndexPath;
    self->_selectedIndexPath = 0;

    selectedPopupKey = self->_selectedPopupKey;
    self->_selectedPopupKey = 0;

    self->_showingVariants = 0;
  }
}

- (BOOL)keySupportsVariants:(id)variants
{
  variantsCopy = variants;
  v4 = [variantsCopy variantType] == 10 || objc_msgSend(variantsCopy, "variantType") == 12 || objc_msgSend(variantsCopy, "variantType") == 11 || objc_msgSend(variantsCopy, "variantType") == 13;

  return v4;
}

- (BOOL)cellShouldScrollWhenSelectedAtIndexPath:(id)path
{
  collectionView = self->_collectionView;
  pathCopy = path;
  [(UIView *)collectionView bounds];
  v22 = CGRectInset(v21, 10.0, 0.0);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v10 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:pathCopy];

  v11 = self->_collectionView;
  [v10 bounds];
  [(UIView *)v11 convertRect:v10 fromView:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v25.origin.x = v13;
  v25.origin.y = v15;
  v25.size.width = v17;
  v25.size.height = v19;
  v26 = CGRectIntersection(v23, v25);
  v24.origin.x = v13;
  v24.origin.y = v15;
  v24.size.width = v17;
  v24.size.height = v19;
  LOBYTE(v11) = CGRectEqualToRect(v24, v26);

  return v11 ^ 1;
}

- (void)emojiSearchTextFieldWillBecomeActive:(id)active
{
  emojiSearchField = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchField];
  renderConfig = [(UIKBKeyView *)self renderConfig];
  [emojiSearchField _setRenderConfig:renderConfig];

  collectionView = self->_collectionView;

  [(UIKeyboardEmojiCollectionView *)collectionView setIsInSearchPopover:1];
}

- (void)emojiSearchTextFieldDidBecomeActive:(id)active
{
  activeCopy = active;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  [v4 changePreferredEmojiSearchInputModeForInputDelegate:activeCopy];
}

- (void)emojiSearchTextFieldWillBecomeInactive:(id)inactive
{
  [(UIKeyboardEmojiCollectionInputView *)self setIsSearching:0];
  [(UIKeyboardEmojiCollectionView *)self->_collectionView setIsInSearchPopover:0];
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 clearForwardingInputDelegateAndResign:0];
}

- (void)emojiSearchTextFieldDidBecomeInactive:(id)inactive
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 updateAssistantView];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIKeyboardSwitchedAwayFromEmoji" object:0];

  v7 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  hardwareInputMode = [v5 hardwareInputMode];
  [v7 setCurrentInputMode:hardwareInputMode];
}

- (void)emojiSearchTextFieldWillClear:(id)clear
{
  [(UIKeyboardEmojiCollectionInputView *)self setIsSearching:0];
  [(UIKeyboardEmojiCollectionInputView *)self setSearchResults:MEMORY[0x1E695E0F0]];

  [(UIKeyboardEmojiCollectionInputView *)self resetSelectionIfNeeded];
}

- (void)emojiSearchTextFieldDidReset:(id)reset
{
  isSearching = [(UIKeyboardEmojiCollectionInputView *)self isSearching];
  [(UIKeyboardEmojiCollectionInputView *)self setIsSearching:0];
  [(UIKeyboardEmojiCollectionInputView *)self resetSelectionIfNeeded];
  if (isSearching)
  {
    [(UIKeyboardEmojiCollectionInputView *)self setSearchResults:MEMORY[0x1E695E0F0]];
    if (![(UIKeyboardEmojiCollectionInputView *)self showingRecents])
    {
      collectionView = self->_collectionView;
      v6[4] = self;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __67__UIKeyboardEmojiCollectionInputView_emojiSearchTextFieldDidReset___block_invoke;
      v7[3] = &unk_1E70F3590;
      v7[4] = self;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __67__UIKeyboardEmojiCollectionInputView_emojiSearchTextFieldDidReset___block_invoke_2;
      v6[3] = &unk_1E70F5AC0;
      [(UICollectionView *)collectionView performBatchUpdates:v7 completion:v6];
    }
  }
}

void __67__UIKeyboardEmojiCollectionInputView_emojiSearchTextFieldDidReset___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 640);
  v2 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [v1 deleteSections:v2];
}

uint64_t __67__UIKeyboardEmojiCollectionInputView_emojiSearchTextFieldDidReset___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __67__UIKeyboardEmojiCollectionInputView_emojiSearchTextFieldDidReset___block_invoke_3;
  v2[3] = &unk_1E70F3590;
  v2[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

- (void)emojiSearchDidReceiveResults:(id)results forExactQuery:(id)query autocorrectedQuery:(id)autocorrectedQuery
{
  resultsCopy = results;
  if ([query length])
  {
    emojiSearchField = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchField];
    text = [emojiSearchField text];
    v10 = [text length];

    if (v10)
    {
      if ([(UIKeyboardEmojiCollectionInputView *)self isSearching])
      {
        v11 = 0;
      }

      else
      {
        v11 = ![(UIKeyboardEmojiCollectionInputView *)self showingRecents];
        [(UIKeyboardEmojiCollectionInputView *)self setIsSearching:1];
        [(UIKeyboardEmojiCollectionInputView *)self updateOffsetForSearchResults];
      }

      [(UIKeyboardEmojiCollectionInputView *)self resetSelectionIfNeeded];
      searchResults = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
      v16 = [searchResults count];
      v17 = [resultsCopy count];

      if (v16 == v17)
      {
        if ([resultsCopy count])
        {
          firstObject = [resultsCopy firstObject];
          searchResults2 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
          firstObject2 = [searchResults2 firstObject];
          v21 = [firstObject isEqual:firstObject2] ^ 1;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 1;
      }

      v22 = [resultsCopy copy];
      [(UIKeyboardEmojiCollectionInputView *)self setSearchResults:v22];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __100__UIKeyboardEmojiCollectionInputView_emojiSearchDidReceiveResults_forExactQuery_autocorrectedQuery___block_invoke;
      aBlock[3] = &unk_1E70F3590;
      aBlock[4] = self;
      v23 = _Block_copy(aBlock);
      v14 = v23;
      if (v11)
      {
        collectionView = self->_collectionView;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __100__UIKeyboardEmojiCollectionInputView_emojiSearchDidReceiveResults_forExactQuery_autocorrectedQuery___block_invoke_2;
        v31[3] = &unk_1E70F37C0;
        v31[4] = self;
        v32 = v23;
        [(UICollectionView *)collectionView performBatchUpdates:v31 completion:0];
        v25 = v32;
      }

      else if (v21 && [(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection])
      {
        v26 = self->_collectionView;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __100__UIKeyboardEmojiCollectionInputView_emojiSearchDidReceiveResults_forExactQuery_autocorrectedQuery___block_invoke_3;
        v29[3] = &unk_1E70F0F78;
        v30 = v14;
        [(UICollectionView *)v26 performBatchUpdates:v29 completion:0];
        v25 = v30;
      }

      else
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __100__UIKeyboardEmojiCollectionInputView_emojiSearchDidReceiveResults_forExactQuery_autocorrectedQuery___block_invoke_4;
        v27[3] = &unk_1E70F0F78;
        v28 = v14;
        [UIView performWithoutAnimation:v27];
        v25 = v28;
      }

      goto LABEL_20;
    }
  }

  [(UIKeyboardEmojiCollectionInputView *)self setIsSearching:0];
  [(UIKeyboardEmojiCollectionInputView *)self resetSelectionIfNeeded];
  [(UIKeyboardEmojiCollectionInputView *)self setSearchResults:MEMORY[0x1E695E0F0]];
  if ([(UIKeyboardEmojiCollectionInputView *)self showingRecents])
  {
    emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    [emojiKeyManager reloadForCategory:-[UIKeyboardEmojiCollectionInputView emojiCategoryTypeForSection:](self withSender:{"emojiCategoryTypeForSection:", 0), self}];

    v13 = self->_collectionView;
    v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
    [(UICollectionView *)v13 reloadSections:v14];
LABEL_20:
  }
}

void __100__UIKeyboardEmojiCollectionInputView_emojiSearchDidReceiveResults_forExactQuery_autocorrectedQuery___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateOffsetForSearchResults];
  v2 = [*(a1 + 32) emojiKeyManager];
  [v2 reloadForCategory:0 withSender:*(a1 + 32)];

  v3 = *(*(a1 + 32) + 640);
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [v3 reloadSections:v4];
}

uint64_t __100__UIKeyboardEmojiCollectionInputView_emojiSearchDidReceiveResults_forExactQuery_autocorrectedQuery___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 640);
  v3 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [v2 insertSections:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(UIKeyboardEmojiCollectionInputView *)self isSearching])
  {
    searchResults = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
    if ([searchResults count])
    {
    }

    else
    {
      section = [pathCopy section];

      if (!section)
      {
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits emojiKeyWidth];
        v18 = v17;
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumInteritemSpacing];
        v20 = (v18 + v19 + 1.0) * 6.0;
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
        v12 = v20 + v21 + v21;
        [viewCopy bounds];
        Height = CGRectGetHeight(v36);
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits categoryHeaderHeight];
        v24 = Height - v23;
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits bottomPadding];
        v14 = v24 - v25;
        goto LABEL_9;
      }
    }
  }

  if (!-[UIKeyboardEmojiCollectionInputView _shouldShowRecentlyUsedMedia](self, "_shouldShowRecentlyUsedMedia") || [pathCopy section] || objc_msgSend(pathCopy, "item"))
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits emojiKeyWidth];
    v12 = v11;
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits emojiKeyWidth];
    v14 = v13;
  }

  else
  {
    [viewCopy bounds];
    v26 = CGRectGetHeight(v37);
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits categoryHeaderHeight];
    v28 = v27;
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits bottomPadding];
    v30 = v29;
    if ([(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection])
    {
      v14 = v26 - v28 - v30;
      if (self->_useWideAnimojiCell)
      {
        v12 = v14 + v14;
      }

      else
      {
        v12 = v14;
      }
    }

    else
    {
      [viewCopy bounds];
      Width = CGRectGetWidth(v38);
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewLeftMostPadding];
      v33 = Width - v32;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewRightMostPadding];
      v12 = v33 - v34;
      [viewCopy bounds];
      v14 = CGRectGetWidth(v39) * 0.166666667;
    }
  }

LABEL_9:

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  layout = [(UICollectionView *)self->_collectionView numberOfItemsInSection:0, layout];
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits sectionOffset];
  v9 = v8;
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits bottomPadding];
  v11 = v10;
  scrollDirection = [(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection];
  if (index)
  {
    v13 = 1;
  }

  else
  {
    v13 = layout <= 0;
  }

  v14 = !v13;
  if (scrollDirection == UICollectionViewScrollDirectionVertical)
  {
    if ((v14 & 1) != 0 || index == 1 && !layout)
    {
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits topPadding];
      v18 = v21;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewLeftMostPadding];
      v20 = v22;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewRightMostPadding];
      v11 = v9;
    }

    else
    {
      v28 = [(UICollectionView *)self->_collectionView numberOfSections]- 1;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits topPadding];
      v18 = v29;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewLeftMostPadding];
      v20 = v30;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewRightMostPadding];
      if (v28 != index)
      {
        v11 = v9;
      }
    }

    goto LABEL_20;
  }

  if ((v14 & 1) == 0 && (index != 1 || layout))
  {
    v24 = [(UICollectionView *)self->_collectionView numberOfSections]- 1;
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits topPadding];
    v26 = v25;
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits categoryHeaderHeight];
    v18 = v26 + v27;
    v20 = 0.0;
    if (v24 != index)
    {
      goto LABEL_21;
    }

    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewRightMostPadding];
LABEL_20:
    v9 = v23;
    goto LABEL_21;
  }

  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits topPadding];
  v16 = v15;
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits categoryHeaderHeight];
  v18 = v16 + v17;
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewLeftMostPadding];
  v20 = v19;
LABEL_21:
  v31 = v18;
  v32 = v20;
  v33 = v11;
  v34 = v9;
  result.right = v34;
  result.bottom = v33;
  result.left = v32;
  result.top = v31;
  return result;
}

- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  if (index || ![(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia])
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
  }

  else
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumInteritemSpacing];
  }

  v11 = v10;

  return v11;
}

- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  if (index || ![(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia])
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumInteritemSpacing];
  }

  else
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
  }

  v11 = v10;

  return v11;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  if (!self->_hasShownAnimojiCell && -[UIKeyboardEmojiCollectionInputView _shouldShowRecentlyUsedMedia](self, "_shouldShowRecentlyUsedMedia") && ![pathCopy item] && !objc_msgSend(pathCopy, "section"))
  {
    self->_hasShownAnimojiCell = 1;
    ADClientAddValueForScalarKey();
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  v16[1] = *MEMORY[0x1E69E9840];
  scrollCopy = scroll;
  if (_UIApplicationIsFirstPartyStickers())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v15 = @"contentOffsetY";
    v6 = MEMORY[0x1E696AD98];
    [scrollCopy contentOffset];
    v8 = [v6 numberWithDouble:v7];
    v16[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [defaultCenter postNotificationName:@"UIKeyboardEmojiCollectionInputViewDidScroll" object:0 userInfo:v9];
  }

  hitTestResponder = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
  [hitTestResponder deactivateActiveKey];

  firstFullyVisibleHeader = [(UIKeyboardEmojiCollectionInputView *)self firstFullyVisibleHeader];
  section = [firstFullyVisibleHeader section];
  if (self->_currentSection != section)
  {
    v13 = section;
    self->_currentSection = section;
    if (self->_isDraggingInputView)
    {
      emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
      [emojiKeyManager reloadForCategory:-[UIKeyboardEmojiCollectionInputView emojiCategoryTypeForSection:](self withSender:{"emojiCategoryTypeForSection:", v13), self}];
    }
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  self->_isDraggingInputView = 1;
  [(UIKeyboardEmojiCollectionInputView *)self snappedXOffsetForOffset:0 scrubbing:offset->x, velocity.y];
  offset->x = v6;
}

- (id)itemInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__129;
  v16 = __Block_byref_object_dispose__129;
  v17 = 0;
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  v8 = [collectionViewLayout layoutAttributesForElementsInRect:{x, y, width, height}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__UIKeyboardEmojiCollectionInputView_itemInRect___block_invoke;
  v11[3] = &unk_1E71160D8;
  v11[4] = &v12;
  [v8 enumerateObjectsWithOptions:2 usingBlock:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __49__UIKeyboardEmojiCollectionInputView_itemInRect___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if (![v9 representedElementCategory])
  {
    v6 = [v9 indexPath];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

- (id)firstFullyVisibleHeader
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__129;
  v11 = __Block_byref_object_dispose__129;
  v12 = [MEMORY[0x1E696AC88] indexPathWithIndex:self->_currentSection];
  v3 = [(UICollectionView *)self->_collectionView indexPathsForVisibleSupplementaryElementsOfKind:@"UICollectionElementKindSectionHeader"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__UIKeyboardEmojiCollectionInputView_firstFullyVisibleHeader__block_invoke;
  v6[3] = &unk_1E7116100;
  v6[4] = self;
  v6[5] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __61__UIKeyboardEmojiCollectionInputView_firstFullyVisibleHeader__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v7 = [*(*(a1 + 32) + 640) supplementaryViewForElementKind:@"UICollectionElementKindSectionHeader" atIndexPath:?];
  v8 = [*(*(a1 + 32) + 648) scrollDirection];
  [v7 frame];
  v10 = v9;
  v12 = v11;
  [*(*(a1 + 32) + 640) contentOffset];
  if (v8)
  {
    v15 = v10;
  }

  else
  {
    v15 = v12;
  }

  if (!v8)
  {
    v13 = v14;
  }

  if (v15 > v13)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  self->_isDraggingInputView = 0;
  firstFullyVisibleHeader = [(UIKeyboardEmojiCollectionInputView *)self firstFullyVisibleHeader];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__129;
  v18 = __Block_byref_object_dispose__129;
  v19 = 0;
  indexPathsForVisibleItems = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __67__UIKeyboardEmojiCollectionInputView_scrollViewDidEndDecelerating___block_invoke;
  v11 = &unk_1E7116100;
  v7 = firstFullyVisibleHeader;
  v12 = v7;
  v13 = &v14;
  [indexPathsForVisibleItems enumerateObjectsUsingBlock:&v8];

  [(UIKeyboardEmojiCollectionInputView *)self updateLastSeenItemForIndexPath:v15[5], v8, v9, v10, v11];
  _Block_object_dispose(&v14, 8);
}

void __67__UIKeyboardEmojiCollectionInputView_scrollViewDidEndDecelerating___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v4 = [v10 section];
  v5 = v4 == [*(a1 + 32) section];
  v6 = v10;
  if (v5)
  {
    v7 = *(*(a1 + 40) + 8);
    if (*(v7 + 40))
    {
      v8 = [v10 item];
      v9 = v8 < [*(*(*(a1 + 40) + 8) + 40) item];
      v6 = v10;
      if (!v9)
      {
        goto LABEL_8;
      }

      v7 = *(*(a1 + 40) + 8);
    }

    objc_storeStrong((v7 + 40), a2);
    v6 = v10;
  }

LABEL_8:
}

- (double)_recentlyUsedMediaRoundedOffset:(double)offset recentlyUsedMediaCellWidth:(double)width
{
  emojiGraphicsTraits = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
  [emojiGraphicsTraits inputViewLeftMostPadding];
  v9 = v8;
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits columnOffset];
  v11 = v10;

  v12 = 3;
  if (self->_useWideAnimojiCell)
  {
    v12 = 4;
  }

  v13 = width / v12;
  if (v13 > offset)
  {
    return width / v12;
  }

  for (i = 2; i != v12; ++i)
  {
    result = v13 * i;
    if (result > offset)
    {
      break;
    }
  }

  if (i >= v12)
  {
    return v11 - v9 + width;
  }

  return result;
}

- (double)snappedXOffsetForOffset:(double)offset scrubbing:(BOOL)scrubbing
{
  [(UIScrollView *)self->_collectionView contentSize];
  [(UIKeyboardEmojiCollectionInputView *)self distanceInScrollingDirection:?];
  v8 = v7;
  [(UIView *)self->_collectionView bounds];
  [(UIKeyboardEmojiCollectionInputView *)self distanceInScrollingDirection:v9, v10];
  v12 = v8 - v11;
  [(UIKeyboardEmojiCollectionInputView *)self scrollingEndPoint];
  if (v12 - v13 < offset)
  {
    [(UIScrollView *)self->_collectionView contentSize];
    [(UIKeyboardEmojiCollectionInputView *)self distanceInScrollingDirection:?];
    v15 = v14;
    [(UIView *)self->_collectionView bounds];
    [(UIKeyboardEmojiCollectionInputView *)self distanceInScrollingDirection:v16, v17];
    v19 = v15 - v18;
    [(UIKeyboardEmojiCollectionInputView *)self scrollingEndPoint];
    return v19 + v20;
  }

  [(UIKeyboardEmojiCollectionInputView *)self scrollingStartPoint];
  if (v22 > offset)
  {
    [(UIKeyboardEmojiCollectionInputView *)self scrollingStartPoint];
    return -v23;
  }

  [(UIView *)self->_collectionView bounds];
  Height = CGRectGetHeight(v54);
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits categoryHeaderHeight];
  v26 = Height - v25;
  if (self->_useWideAnimojiCell)
  {
    v27 = v26 + v26;
  }

  else
  {
    v27 = v26;
  }

  if (![(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia]|| v27 <= offset || scrubbing)
  {
    if ([(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection])
    {
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits categoryHeaderHeight];
      v30 = v29;
      emojiGraphicsTraits = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
      [emojiGraphicsTraits emojiKeyWidth];
      v33 = v32;
      emojiGraphicsTraits2 = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
      [emojiGraphicsTraits2 columnOffset];
      v36 = v33 + v35;
      [(UIView *)self->_collectionView bounds];
      v38 = v37;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits categoryHeaderHeight];
      v40 = v38 - v39;
      offsetCopy = offset;
      offset = v30;
    }

    else
    {
      [(UIView *)self->_collectionView bounds];
      v36 = v42;
      emojiGraphicsTraits = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
      [emojiGraphicsTraits emojiKeyWidth];
      v44 = v43;
      emojiGraphicsTraits2 = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
      [emojiGraphicsTraits2 columnOffset];
      v40 = v44 + v45;
      offsetCopy = 0.0;
    }

    v46 = [(UIKeyboardEmojiCollectionInputView *)self itemInRect:offsetCopy, offset, v36, v40];
    v47 = [(UICollectionView *)self->_collectionView layoutAttributesForItemAtIndexPath:v46];
    [v47 frame];
    [(UIKeyboardEmojiCollectionInputView *)self pointInScrollingDirection:?];
    v49 = v48;
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits columnOffset];
    v51 = v49 - v50;
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits scrollSnapOffset];
    v21 = v51 + v52;

    return v21;
  }

  [(UIKeyboardEmojiCollectionInputView *)self _recentlyUsedMediaRoundedOffset:offset recentlyUsedMediaCellWidth:v27];
  return result;
}

- (int64_t)indexForPrettyCategoryDisplay:(id)display
{
  displayCopy = display;
  if (self->_collectionView && (-[UIKeyboardEmojiCollectionInputView category](self, "category"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 categoryType], v5, v7 = -[UICollectionView numberOfItemsInSection:](self->_collectionView, "numberOfItemsInSection:", +[UIKeyboardEmojiCategory categoryIndexForCategoryType:](UIKeyboardEmojiCategory, "categoryIndexForCategoryType:", v6)), objc_msgSend(displayCopy, "lastVisibleFirstEmojiIndex") >= v7))
  {
    lastVisibleFirstEmojiIndex = v7 - 1;
  }

  else
  {
    lastVisibleFirstEmojiIndex = [displayCopy lastVisibleFirstEmojiIndex];
  }

  return lastVisibleFirstEmojiIndex;
}

- (void)didMoveToWindow
{
  selfCopy = self;
  v38.receiver = self;
  v38.super_class = UIKeyboardEmojiCollectionInputView;
  [(UIView *)&v38 didMoveToWindow];
  [(UIView *)selfCopy->_collectionView layoutIfNeeded];
  emojiKeyManager = [(UIKeyboardEmojiKeyView *)selfCopy emojiKeyManager];
  lastViewedCategory = [emojiKeyManager lastViewedCategory];
  objc_storeWeak(&selfCopy->_category, lastViewedCategory);

  v5 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v6 = MEMORY[0x1E696AD98];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_category);
  v8 = [v6 numberWithInteger:{objc_msgSend(WeakRetained, "categoryType")}];
  v9 = [v5 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v10 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
    firstObject = [v10 firstObject];
    integerValue = [firstObject integerValue];

    v13 = [UIKeyboardEmojiCategory categoryForType:integerValue];
    objc_storeWeak(&selfCopy->_category, v13);
  }

  v14 = objc_loadWeakRetained(&selfCopy->_category);
  selfCopy->_currentSection = +[UIKeyboardEmojiCategory categoryIndexForCategoryType:](UIKeyboardEmojiCategory, "categoryIndexForCategoryType:", [v14 categoryType]);

  window = [(UIView *)selfCopy window];

  if (window)
  {
    if (selfCopy->_inputDelegateCanSupportAnimoji && !selfCopy->_hasShownAnimojiFirstTimeExperience && [(UIKeyboardEmojiCollectionInputView *)selfCopy _shouldShowRecentlyUsedMedia])
    {
      v16 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    }

    else
    {
      category = [(UIKeyboardEmojiCollectionInputView *)selfCopy category];
      v18 = +[UIKeyboardEmojiCategory categoryIndexForCategoryType:](UIKeyboardEmojiCategory, "categoryIndexForCategoryType:", [category categoryType]);

      v19 = MEMORY[0x1E696AC88];
      category2 = [(UIKeyboardEmojiCollectionInputView *)selfCopy category];
      v16 = [v19 indexPathForItem:-[UIKeyboardEmojiCollectionInputView indexForPrettyCategoryDisplay:](selfCopy inSection:{"indexForPrettyCategoryDisplay:", category2), v18}];
    }

    v21 = [(UICollectionView *)selfCopy->_collectionView layoutAttributesForItemAtIndexPath:v16];
    [v21 frame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v39.origin.x = v23;
    v39.origin.y = v25;
    v39.size.width = v27;
    v39.size.height = v29;
    MinX = CGRectGetMinX(v39);
    emojiGraphicsTraits = [(UIKeyboardEmojiCollectionView *)selfCopy->_collectionView emojiGraphicsTraits];
    [emojiGraphicsTraits inputViewLeftMostPadding];
    v33 = MinX - v32;

    [(UIKeyboardEmojiCollectionInputView *)selfCopy snappedXOffsetForOffset:0 scrubbing:v33];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __53__UIKeyboardEmojiCollectionInputView_didMoveToWindow__block_invoke;
    v37[3] = &unk_1E70F32F0;
    v37[4] = selfCopy;
    v37[5] = v34;
    [UIView performWithoutAnimation:v37];
  }

  window2 = [(UIView *)selfCopy window];
  if (!window2)
  {
    selfCopy = 0;
  }

  v36 = +[UIKeyboardMediaController sharedKeyboardMediaController];
  [v36 setDelegate:selfCopy];
}

uint64_t __53__UIKeyboardEmojiCollectionInputView_didMoveToWindow__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 640);
  v3 = *(a1 + 40);
  [v2 contentOffset];
  v5 = v4;
  [*(*(a1 + 32) + 640) bounds];
  v7 = v6;
  [*(*(a1 + 32) + 640) bounds];

  return [v2 scrollRectToVisible:0 animated:{v3, v5, v7}];
}

- (void)updateToCategory:(int64_t)category
{
  hitTestResponder = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
  [hitTestResponder deactivateActiveKey];

  [(UIKeyboardEmojiCollectionInputView *)self resetSelectionIfNeeded];
  category = [(UIKeyboardEmojiCollectionInputView *)self category];
  categoryType = [category categoryType];

  if (categoryType == category)
  {
    if (category)
    {
      v8 = 1;
    }

    else
    {
      category2 = [(UIKeyboardEmojiCollectionInputView *)self category];
      v8 = [category2 lastVisibleFirstEmojiIndex] != 1 || self->_isDraggingInputView;
    }

    category3 = [(UIKeyboardEmojiCollectionInputView *)self category];
    [category3 setLastVisibleFirstEmojiIndex:v8];

    category4 = [(UIKeyboardEmojiCollectionInputView *)self category];
  }

  else
  {
    v50 = [UIKeyboardEmojiCategory categoryForType:category];
    emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    [v50 setLastVisibleFirstEmojiIndex:{objc_msgSend(emojiKeyManager, "lastVisibleFirstEmojiIndexforCategory:", v50)}];

    if (!category && ![v50 lastVisibleFirstEmojiIndex])
    {
      [v50 setLastVisibleFirstEmojiIndex:1];
    }

    [(UIKeyboardEmojiCollectionInputView *)self setCategory:v50];
    category5 = [(UIKeyboardEmojiCollectionInputView *)self category];
    v8 = [(UIKeyboardEmojiCollectionInputView *)self indexForPrettyCategoryDisplay:category5];

    category4 = v50;
  }

  v51 = category4;
  v14 = +[UIKeyboardEmojiCategory categoryIndexForCategoryType:](UIKeyboardEmojiCategory, "categoryIndexForCategoryType:", [category4 categoryType]);
  collectionView = self->_collectionView;
  v16 = [MEMORY[0x1E696AC88] indexPathForItem:v8 inSection:v14];
  v17 = [(UICollectionView *)collectionView layoutAttributesForItemAtIndexPath:v16];
  [v17 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  scrollDirection = [(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection];
  v27 = v19;
  v28 = v21;
  v29 = v23;
  v30 = v25;
  if (scrollDirection)
  {
    MinX = CGRectGetMinX(*&v27);
    emojiGraphicsTraits = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
    [emojiGraphicsTraits inputViewLeftMostPadding];
    v34 = MinX - v33;

    [(UIKeyboardEmojiCollectionInputView *)self snappedXOffsetForOffset:0 scrubbing:v34];
    v36 = v35;
    [(UIScrollView *)self->_collectionView contentOffset];
    v38 = v37;
  }

  else
  {
    MinY = CGRectGetMinY(*&v27);
    emojiGraphicsTraits2 = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
    [emojiGraphicsTraits2 categoryHeaderHeight];
    v42 = MinY - v41;
    emojiGraphicsTraits3 = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
    [emojiGraphicsTraits3 sectionOffset];
    v38 = v42 - v44;

    [(UIScrollView *)self->_collectionView contentOffset];
    v36 = v45;
  }

  [(UIView *)self->_collectionView bounds];
  v47 = v46;
  [(UIView *)self->_collectionView bounds];
  [(UIScrollView *)self->_collectionView scrollRectToVisible:0 animated:v36, v38, v47];
  category6 = [(UIKeyboardEmojiCollectionInputView *)self category];
  emojiKeyManager2 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [emojiKeyManager2 setLastViewedCategory:category6];
}

- (void)updateOffsetForSearchResults
{
  hitTestResponder = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
  [hitTestResponder deactivateActiveKey];

  [(UIKeyboardEmojiCollectionInputView *)self resetSelectionIfNeeded];
  v28 = [UIKeyboardEmojiCategory categoryForType:[(UIKeyboardEmojiCollectionInputView *)self emojiCategoryTypeForSection:0]];
  [v28 setLastVisibleFirstEmojiIndex:1];
  [(UIKeyboardEmojiCollectionInputView *)self setCategory:v28];
  collectionView = self->_collectionView;
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:1 inSection:0];
  v6 = [(UICollectionView *)collectionView layoutAttributesForItemAtIndexPath:v5];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v30.origin.x = v8;
  v30.origin.y = v10;
  v30.size.width = v12;
  v30.size.height = v14;
  MinX = CGRectGetMinX(v30);
  emojiGraphicsTraits = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
  [emojiGraphicsTraits inputViewLeftMostPadding];
  v18 = MinX - v17;

  [(UIKeyboardEmojiCollectionInputView *)self snappedXOffsetForOffset:0 scrubbing:v18];
  v20 = v19;
  v21 = self->_collectionView;
  [(UIScrollView *)v21 contentOffset];
  v23 = v22;
  [(UIView *)self->_collectionView bounds];
  v25 = v24;
  [(UIView *)self->_collectionView bounds];
  [(UIScrollView *)v21 scrollRectToVisible:0 animated:v20, v23, v25];
  category = [(UIKeyboardEmojiCollectionInputView *)self category];
  emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [emojiKeyManager setLastViewedCategory:category];
}

- (double)pointInScrollingDirection:(CGPoint)direction
{
  y = direction.y;
  x = direction.x;
  if ([(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection])
  {
    return x;
  }

  else
  {
    return y;
  }
}

- (double)distanceInScrollingDirection:(CGSize)direction
{
  height = direction.height;
  width = direction.width;
  if ([(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection])
  {
    return width;
  }

  else
  {
    return height;
  }
}

- (double)scrollingStartPoint
{
  if ([(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection]== UICollectionViewScrollDirectionVertical)
  {
    return 0.0;
  }

  emojiGraphicsTraits = self->_emojiGraphicsTraits;

  [(UIKeyboardEmojiGraphicsTraits *)emojiGraphicsTraits inputViewLeftMostPadding];
  return result;
}

- (double)scrollingEndPoint
{
  scrollDirection = [(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection];
  emojiGraphicsTraits = self->_emojiGraphicsTraits;
  if (scrollDirection)
  {

    [(UIKeyboardEmojiGraphicsTraits *)emojiGraphicsTraits inputViewRightMostPadding];
  }

  else
  {

    [(UIKeyboardEmojiGraphicsTraits *)emojiGraphicsTraits bottomPadding];
  }

  return result;
}

- (int64_t)updateToCategoryWithOffsetPercentage:(double)percentage
{
  scrollDirection = [(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection];
  [(UIView *)self->_collectionView bounds];
  Height = CGRectGetHeight(v34);
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits categoryHeaderHeight];
  v8 = v7;
  v9 = 0.0;
  v10 = 0.0;
  if ([(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia])
  {
    if (self->_useWideAnimojiCell)
    {
      v10 = Height - v8 + Height - v8;
    }

    else
    {
      v10 = Height - v8;
    }
  }

  if ([(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia])
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits sectionOffset];
    v9 = v10 + v11 - self->_frameInset;
  }

  [(UIScrollView *)self->_collectionView contentSize];
  [(UIKeyboardEmojiCollectionInputView *)self distanceInScrollingDirection:?];
  v13 = v12 - v9;
  [(UIView *)self->_collectionView bounds];
  [(UIKeyboardEmojiCollectionInputView *)self distanceInScrollingDirection:v14, v15];
  v17 = v16 * 0.5 * round(ceil(v13 / (v16 * 0.5)) * percentage);
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits emojiKeyWidth];
  v19 = v18;
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits columnOffset];
  [(UIKeyboardEmojiCollectionInputView *)self snappedXOffsetForOffset:1 scrubbing:(v19 + v20 + v20) * round(v17 / (v19 + v20 + v20))];
  v22 = v9 + v21;
  [(UIScrollView *)self->_collectionView contentOffset];
  if (scrollDirection)
  {
    v25 = v22;
  }

  else
  {
    v25 = v23;
  }

  if (scrollDirection)
  {
    v22 = v24;
  }

  collectionView = self->_collectionView;
  [(UIView *)collectionView bounds];
  v28 = v27;
  [(UIView *)self->_collectionView bounds];
  [(UIScrollView *)collectionView scrollRectToVisible:0 animated:v25, v22, v28];
  indexPathsForVisibleItems = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v30 = [indexPathsForVisibleItems sortedArrayUsingSelector:sel_compare_];

  if ([v30 count])
  {
    v31 = [v30 objectAtIndex:0];
    v32 = -[UIKeyboardEmojiCollectionInputView emojiCategoryTypeForSection:](self, "emojiCategoryTypeForSection:", [v31 section]);
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (UIKeyboardEmojiCategory)category
{
  WeakRetained = objc_loadWeakRetained(&self->_category);

  return WeakRetained;
}

- (UIKBEmojiHitTestResponder)hitTestResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_hitTestResponder);

  return WeakRetained;
}

- (NSIndexPath)tappedSkinToneEmoji
{
  WeakRetained = objc_loadWeakRetained(&self->_tappedSkinToneEmoji);

  return WeakRetained;
}

@end