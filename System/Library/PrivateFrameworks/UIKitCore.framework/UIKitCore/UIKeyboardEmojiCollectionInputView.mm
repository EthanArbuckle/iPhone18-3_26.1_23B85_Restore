@interface UIKeyboardEmojiCollectionInputView
- (BOOL)_handleBaseKeySelectionEvent:(id)a3;
- (BOOL)_handleInitialSelectionEvent:(id)a3;
- (BOOL)_handleVariantSelectionEvent:(id)a3;
- (BOOL)_shouldShowRecentlyUsedMedia;
- (BOOL)_userHasSelectedSkinToneEmoji;
- (BOOL)baseStringIsCoupleEmoji:(id)a3;
- (BOOL)cellShouldScrollWhenSelectedAtIndexPath:(id)a3;
- (BOOL)genderEmojiBaseStringNeedVariantSelector:(id)a3;
- (BOOL)handleKeyEvent:(id)a3;
- (BOOL)handleKeyInputForCollectionViewNavigation:(id)a3;
- (BOOL)handleKeyInputForFamilySelector:(id)a3;
- (BOOL)handleKeyInputForVariantSelector:(id)a3;
- (BOOL)handleSelectionEvent:(id)a3;
- (BOOL)keySupportsVariants:(id)a3;
- (BOOL)showingRecents;
- (BOOL)skinToneWasUsedForEmoji:(id)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (NSIndexPath)tappedSkinToneEmoji;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UIKBEmojiHitTestResponder)hitTestResponder;
- (UIKeyboardEmojiCategory)category;
- (UIKeyboardEmojiCollectionInputView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5 screenTraits:(id)a6;
- (double)_recentlyUsedMediaRoundedOffset:(double)a3 recentlyUsedMediaCellWidth:(double)a4;
- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5;
- (double)distanceInScrollingDirection:(CGSize)a3;
- (double)pointInScrollingDirection:(CGPoint)a3;
- (double)scrollingEndPoint;
- (double)scrollingStartPoint;
- (double)snappedXOffsetForOffset:(double)a3 scrubbing:(BOOL)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)emojiBaseFirstCharacterString:(id)a3;
- (id)emojiBaseString:(id)a3;
- (id)firstFullyVisibleHeader;
- (id)itemInRect:(CGRect)a3;
- (id)selectedChildSkinToneEmoji:(id)a3;
- (id)subTreeHitTest:(CGPoint)a3;
- (id)treeForCell:(id)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)didInputSubTree:(id)a3;
- (int64_t)emojiCategoryTypeForSection:(int64_t)a3;
- (int64_t)indexForPrettyCategoryDisplay:(id)a3;
- (int64_t)keyCodeForCurrentEnvironmentFromKeyCode:(int64_t)a3;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (int64_t)updateToCategoryWithOffsetPercentage:(double)a3;
- (void)_setUserHasSelectedSkinToneEmoji:(BOOL)a3;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)didDismissCardForKeyboardMediaController:(id)a3;
- (void)didInsertMediaForKeyboardMediaController:(id)a3;
- (void)didMoveToWindow;
- (void)didPresentCardForKeyboardMediaController:(id)a3;
- (void)didTearDownRecentsViewForKeyboardMediaController:(id)a3;
- (void)dimKeys:(id)a3;
- (void)emojiSearchDidReceiveResults:(id)a3 forExactQuery:(id)a4 autocorrectedQuery:(id)a5;
- (void)emojiSearchTextFieldDidBecomeActive:(id)a3;
- (void)emojiSearchTextFieldDidBecomeInactive:(id)a3;
- (void)emojiSearchTextFieldDidReset:(id)a3;
- (void)emojiSearchTextFieldWillBecomeActive:(id)a3;
- (void)emojiSearchTextFieldWillBecomeInactive:(id)a3;
- (void)emojiSearchTextFieldWillClear:(id)a3;
- (void)insertSelectedEmoji:(id)a3 shouldDismissPopover:(BOOL)a4;
- (void)resetSelectionIfNeeded;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setContentScaleFactor:(double)a3;
- (void)setHitTestResponder:(id)a3;
- (void)shouldDismissModalDisplayView:(id)a3;
- (void)updateHighlightForIndexPath:(id)a3 scrollIfNeeded:(BOOL)a4 animateScroll:(BOOL)a5;
- (void)updateLastSeenItemForIndexPath:(id)a3;
- (void)updateOffsetForSearchResults;
- (void)updatePreferencesForSelectedEmoji:(id)a3;
- (void)updateToCategory:(int64_t)a3;
- (void)willDisplayModalActionView:(id)a3 withSubTreeKeyView:(id)a4 completion:(id)a5;
@end

@implementation UIKeyboardEmojiCollectionInputView

- (UIKeyboardEmojiCollectionInputView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5 screenTraits:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v15 orientation];
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v18 = +[UIKeyboard activeKeyboard];
    v17 = [v18 interfaceOrientation];

    v19 = +[UIKeyboardImpl keyboardScreen];
    v15 = [UIKBScreenTraits traitsWithScreen:v19 orientation:v17];
  }

  v20 = v17 - 3;
  v21 = (v17 - 3) <= 1 && [v15 idiom] != 1;
  self->_useWideAnimojiCell = v21;
  [v13 frame];
  v22 = 0.0;
  if (width != v23 && (!v15 || (v15[35] & 1) == 0))
  {
    [v13 frame];
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
    [v15 bounds];
    if (v26 >= 812.0)
    {
      v27 = [objc_opt_self() mainScreen];
      [v27 bounds];
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
  v34 = [(UIView *)&v55 initWithFrame:x, y, width, height];
  v35 = v34;
  if (v34)
  {
    v34->_frameInset = v22;
    v36 = [UIKeyboardEmojiGraphicsTraits emojiGraphicsTraitsWithScreenTraits:v15];
    emojiGraphicsTraits = v35->_emojiGraphicsTraits;
    v35->_emojiGraphicsTraits = v36;

    v38 = +[UIColor clearColor];
    [(UIView *)v35 setBackgroundColor:v38];

    [(UIView *)v35 setOpaque:0];
    [(UIKBKeyView *)v35 updateForKeyplane:v13 key:v14];
    v35->_isDraggingInputView = 0;
    v39 = objc_alloc_init(UIKeyboardEmojiLayout);
    flowLayout = v35->_flowLayout;
    v35->_flowLayout = &v39->super;

    [(UICollectionViewFlowLayout *)v35->_flowLayout setMinimumInteritemSpacing:0.0];
    [(UICollectionViewFlowLayout *)v35->_flowLayout setMinimumLineSpacing:0.0];
    -[UICollectionViewFlowLayout setScrollDirection:](v35->_flowLayout, "setScrollDirection:", [v15 isEmojiScrollingDirectionVertical] ^ 1);
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
    v46 = [(UIScrollView *)v35->_collectionView panGestureRecognizer];
    [v46 setMaximumNumberOfTouches:1];

    v47 = [(UIScrollView *)v35->_collectionView panGestureRecognizer];
    [v47 setMinimumNumberOfTouches:1];

    v48 = [(UIScrollView *)v35->_collectionView panGestureRecognizer];
    [v48 setFailsPastMaxTouches:1];

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

    v51 = [MEMORY[0x1E695E000] standardUserDefaults];
    v52 = [v51 valueForKey:@"com.apple.Animoji.StickerRecents.SplashVersion"];
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

- (void)setContentScaleFactor:(double)a3
{
  v5.receiver = self;
  v5.super_class = UIKeyboardEmojiCollectionInputView;
  [(UIView *)&v5 setContentScaleFactor:?];
  [(UIView *)self->_collectionView setContentScaleFactor:a3];
}

- (void)dimKeys:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIKeyboardEmojiCollectionInputView;
  [(UIKBKeyView *)&v7 dimKeys:v4];
  v5 = [(UIView *)self subviews];

  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__UIKeyboardEmojiCollectionInputView_dimKeys___block_invoke;
    v6[3] = &unk_1E7100338;
    v6[4] = self;
    [v4 enumerateKeysAndObjectsUsingBlock:v6];
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

- (void)setHitTestResponder:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_hitTestResponder, v4);
  [(UIKeyboardEmojiCollectionView *)self->_collectionView setHitTestResponder:v4];
}

- (BOOL)_userHasSelectedSkinToneEmoji
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 isEmojiPopoverPresented];

  v5 = +[UIKeyboardEmojiPreferences sharedInstance];
  isFirstPartyStickers = 1;
  if (([v5 hasDisplayedSkinToneHelp] & 1) == 0 && (v4 & 1) == 0)
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

- (void)_setUserHasSelectedSkinToneEmoji:(BOOL)a3
{
  if (a3)
  {
    v3 = +[UIKeyboardEmojiPreferences sharedInstance];
    [v3 didDisplaySkinToneHelp];
  }
}

- (id)emojiBaseFirstCharacterString:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 _firstLongCharacter];

  return [v3 _stringWithUnichar:v4];
}

- (id)emojiBaseString:(id)a3
{
  v3 = a3;
  v4 = [getEMFStringUtilitiesClass() _baseStringForEmojiString:v3];

  return v4;
}

- (BOOL)skinToneWasUsedForEmoji:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  v6 = [v5 hasLastUsedVariantForEmojiString:v4];

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

- (BOOL)baseStringIsCoupleEmoji:(id)a3
{
  v3 = a3;
  v4 = [getEMFStringUtilitiesClass() _baseStringForEmojiString:v3];

  LOBYTE(v3) = [getEMFEmojiCategoryClass_0() _isCoupleMultiSkinToneEmoji:v4];
  return v3;
}

- (id)subTreeHitTest:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = 0;
  if ([(UIView *)self pointInside:0 forEvent:?])
  {
    collectionView = self->_collectionView;
    [(UIView *)collectionView convertPoint:self fromView:x, y];
    v8 = [(UIKeyboardEmojiCollectionView *)collectionView closestCellForPoint:?];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [v8 emoji];

      if (v6)
      {
        v6 = [(UIKeyboardEmojiCollectionInputView *)self treeForCell:v8];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)treeForCell:(id)a3
{
  v253 = *MEMORY[0x1E69E9840];
  v231 = a3;
  collectionView = self->_collectionView;
  [v231 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v232 = self;
  v13 = [(UIView *)self superview];
  [(UIView *)collectionView convertRect:v13 toView:v6, v8, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v231;
  [v231 frame];
  v24 = v23;
  v230 = v25;
  v27 = v26;
  v29 = v28;
  v255.origin.x = v15;
  v255.origin.y = v17;
  v255.size.width = v19;
  v255.size.height = v21;
  MidX = CGRectGetMidX(v255);
  [(UIView *)v232 frame];
  if (MidX < CGRectGetMinX(v256))
  {
    goto LABEL_76;
  }

  v257.origin.x = v15;
  v257.origin.y = v17;
  v257.size.width = v19;
  v257.size.height = v21;
  v31 = CGRectGetMidX(v257);
  [(UIView *)v232 frame];
  if (v31 > CGRectGetMaxX(v258))
  {
    goto LABEL_76;
  }

  v259.origin.x = v15;
  v259.origin.y = v17;
  v259.size.width = v19;
  v259.size.height = v21;
  MidY = CGRectGetMidY(v259);
  [(UIView *)v232 frame];
  if (MidY < CGRectGetMinY(v260))
  {
    goto LABEL_76;
  }

  v261.origin.x = v15;
  v261.origin.y = v17;
  v261.size.width = v19;
  v261.size.height = v21;
  v33 = CGRectGetMidY(v261);
  [(UIView *)v232 frame];
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
    v40 = [(UIView *)v232 superview];
    [v40 frame];
    v41 = CGRectGetMaxY(v263);

    if (MaxY > v41)
    {
      v42 = v232->_collectionView;
      [(UIScrollView *)v42 contentOffset];
      v44 = v43;
      [(UIScrollView *)v232->_collectionView contentOffset];
      v46 = v45;
      v264.origin.x = v15;
      v264.origin.y = v17;
      v264.size.width = v19;
      v264.size.height = v21;
      v47 = CGRectGetMaxY(v264);
      v48 = [(UIView *)v232 superview];
      [v48 frame];
      v49 = v47 - CGRectGetMaxY(v265);

      if (v49 < 0.0)
      {
        v49 = -v49;
      }

      [(UIKeyboardEmojiGraphicsTraits *)v232->_emojiGraphicsTraits minimumLineSpacing];
      [(UICollectionView *)v42 setContentOffset:1 animated:v44, v46 + v49 + v50];
      v266.origin.x = v15;
      v266.origin.y = v17;
      v266.size.width = v19;
      v266.size.height = v21;
      v51 = CGRectGetMaxY(v266);
      v52 = [(UIView *)v232 superview];
      [v52 frame];
      v53 = v51 - CGRectGetMaxY(v267);

      if (v53 >= 0.0)
      {
        v54 = v53;
      }

      else
      {
        v54 = -v53;
      }

      [(UIKeyboardEmojiGraphicsTraits *)v232->_emojiGraphicsTraits minimumLineSpacing];
      v56 = v55;
      v268.origin.x = v15;
      v268.origin.y = v17;
      v268.size.width = v19;
      v268.size.height = v21;
      v57 = CGRectGetMaxY(v268);
      v58 = [(UIView *)v232 superview];
      v59 = v54 + v56;
      [v58 frame];
      v60 = v57 - CGRectGetMaxY(v269);

      if (v60 < 0.0)
      {
        v60 = -v60;
      }

      v61 = v232;
      [(UIKeyboardEmojiGraphicsTraits *)v232->_emojiGraphicsTraits minimumLineSpacing];
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
    v89 = [(UIView *)v232 superview];
    [v89 frame];
    v90 = CGRectGetMinY(v278);

    if (MinY < v90)
    {
      v91 = v232->_collectionView;
      [(UIScrollView *)v91 contentOffset];
      v93 = v92;
      [(UIScrollView *)v232->_collectionView contentOffset];
      obj = v94;
      v279.origin.x = v15;
      v279.origin.y = v17;
      v279.size.width = v19;
      v279.size.height = v21;
      v95 = CGRectGetMinY(v279);
      v96 = [(UIView *)v232 superview];
      [v96 frame];
      v97 = CGRectGetMinY(v280);

      v98 = 1.0;
      if (v95 >= v97)
      {
        v98 = 0.0;
      }

      v99 = *&obj - v98;
      [(UIKeyboardEmojiGraphicsTraits *)v232->_emojiGraphicsTraits minimumLineSpacing];
      [(UICollectionView *)v91 setContentOffset:1 animated:v93, v99 - v100];
      v281.origin.x = v15;
      v281.origin.y = v17;
      v281.size.width = v19;
      v281.size.height = v21;
      v101 = CGRectGetMinY(v281);
      v102 = [(UIView *)v232 superview];
      [v102 frame];
      v103 = CGRectGetMinY(v282);

      if (v101 >= v103)
      {
        v104 = 0.0;
      }

      else
      {
        v104 = 1.0;
      }

      [(UIKeyboardEmojiGraphicsTraits *)v232->_emojiGraphicsTraits minimumLineSpacing];
      v106 = v105;
      v283.origin.x = v15;
      v283.origin.y = v17;
      v283.size.width = v19;
      v283.size.height = v21;
      v107 = CGRectGetMinY(v283);
      v108 = [(UIView *)v232 superview];
      v109 = v106 + v104;
      [v108 frame];
      v110 = CGRectGetMinY(v284);

      if (v107 >= v110)
      {
        v111 = 0.0;
      }

      else
      {
        v111 = -1.0;
      }

      v61 = v232;
      [(UIKeyboardEmojiGraphicsTraits *)v232->_emojiGraphicsTraits minimumLineSpacing];
      v24 = v24 + 0.0;
      v230 = v230 + v109;
      v63 = v109 + v111 - v112;
      goto LABEL_34;
    }

    goto LABEL_45;
  }

  MaxX = CGRectGetMaxX(*&v35);
  v65 = [(UIView *)v232 superview];
  [v65 frame];
  v66 = CGRectGetMaxX(v270);

  if (MaxX > v66)
  {
    v67 = v232->_collectionView;
    [(UIScrollView *)v67 contentOffset];
    v69 = v68;
    v271.origin.x = v15;
    v271.origin.y = v17;
    v271.size.width = v19;
    v271.size.height = v21;
    v70 = CGRectGetMaxX(v271);
    v71 = [(UIView *)v232 superview];
    [v71 frame];
    v72 = v70 - CGRectGetMaxX(v272);

    if (v72 < 0.0)
    {
      v72 = -v72;
    }

    [(UIKeyboardEmojiGraphicsTraits *)v232->_emojiGraphicsTraits minimumLineSpacing];
    v74 = v69 + v72 + v73;
    [(UIScrollView *)v232->_collectionView contentOffset];
    [(UICollectionView *)v67 setContentOffset:1 animated:v74];
    v273.origin.x = v15;
    v273.origin.y = v17;
    v273.size.width = v19;
    v273.size.height = v21;
    v75 = CGRectGetMaxX(v273);
    v76 = [(UIView *)v232 superview];
    [v76 frame];
    v77 = v75 - CGRectGetMaxX(v274);

    if (v77 >= 0.0)
    {
      v78 = v77;
    }

    else
    {
      v78 = -v77;
    }

    [(UIKeyboardEmojiGraphicsTraits *)v232->_emojiGraphicsTraits minimumLineSpacing];
    v80 = v79;
    v275.origin.x = v15;
    v275.origin.y = v17;
    v275.size.width = v19;
    v275.size.height = v21;
    v81 = CGRectGetMaxX(v275);
    v82 = [(UIView *)v232 superview];
    v83 = v78 + v80;
    [v82 frame];
    v84 = v81 - CGRectGetMaxX(v276);

    if (v84 < 0.0)
    {
      v84 = -v84;
    }

    v61 = v232;
    [(UIKeyboardEmojiGraphicsTraits *)v232->_emojiGraphicsTraits minimumLineSpacing];
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
  v114 = [(UIView *)v232 superview];
  [v114 frame];
  v115 = CGRectGetMinX(v286);

  if (MinX < v115)
  {
    v116 = v232->_collectionView;
    [(UIScrollView *)v116 contentOffset];
    v118 = v117;
    v287.origin.x = v15;
    v287.origin.y = v17;
    v287.size.width = v19;
    v287.size.height = v21;
    v119 = CGRectGetMinX(v287);
    v120 = [(UIView *)v232 superview];
    [v120 frame];
    v121 = v119 - CGRectGetMinX(v288);

    v122 = -v121;
    if (v121 >= 0.0)
    {
      v122 = v121;
    }

    v123 = v118 - v122;
    [(UIKeyboardEmojiGraphicsTraits *)v232->_emojiGraphicsTraits minimumLineSpacing];
    v125 = v123 - v124;
    [(UIScrollView *)v232->_collectionView contentOffset];
    [(UICollectionView *)v116 setContentOffset:1 animated:v125];
    v289.origin.x = v15;
    v289.origin.y = v17;
    v289.size.width = v19;
    v289.size.height = v21;
    v126 = CGRectGetMinX(v289);
    v127 = [(UIView *)v232 superview];
    [v127 frame];
    v128 = v126 - CGRectGetMinX(v290);

    if (v128 >= 0.0)
    {
      v129 = -v128;
    }

    else
    {
      v129 = v128;
    }

    [(UIKeyboardEmojiGraphicsTraits *)v232->_emojiGraphicsTraits minimumLineSpacing];
    v131 = v130;
    v291.origin.x = v15;
    v291.origin.y = v17;
    v291.size.width = v19;
    v291.size.height = v21;
    v132 = CGRectGetMinX(v291);
    v133 = [(UIView *)v232 superview];
    v134 = v129 - v131;
    [v133 frame];
    v135 = v132 + CGRectGetMinX(v292);

    if (v135 < 0.0)
    {
      v135 = -v135;
    }

    v61 = v232;
    [(UIKeyboardEmojiGraphicsTraits *)v232->_emojiGraphicsTraits minimumLineSpacing];
    v137 = v135 + v136;
    v24 = v24 + v137;
    v87 = v134 + v137;
    goto LABEL_44;
  }

LABEL_45:
  v61 = v232;
LABEL_46:
  v138 = [(UICollectionView *)v61->_collectionView indexPathForCell:v231];
  [(UIKeyboardEmojiCollectionInputView *)v232 setTappedSkinToneEmoji:v138];

  v22 = v231;
  if (!v231)
  {
LABEL_76:
    v139 = 0;
    goto LABEL_77;
  }

  v229 = [v231 emoji];
  v139 = [UIKBTree treeOfType:8];
  [v139 setState:2];
  [v139 setName:@"EmojiPopupKey"];
  v225 = [v229 emojiString];
  [v139 setDisplayString:v225];
  [v139 setRepresentedString:v225];
  [v139 setDisplayType:0];
  [v139 setInteractionType:2];
  if (v232->_selectedPopupKey)
  {
    [(UIKeyboardEmojiCollectionInputView *)v232 resetSelectionIfNeeded];
  }

  if (+[UIDictationController isRunning])
  {
    v140 = +[UIDictationController sharedInstance];
    v141 = [v140 dictationTipController];
    v142 = [v229 emojiString];
    [v141 signalDictationInsertionTip:v142];
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
  v145 = [v229 emojiString];
  v226 = [v143 emojiTokenWithString:v145 localeData:0];

  if (![v226 supportsSkinToneVariants])
  {
    goto LABEL_93;
  }

  v146 = [v226 _skinToneVariantStrings];
  v233 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v146, "count") + 1}];
  v241 = 0u;
  v242 = 0u;
  v239 = 0u;
  v240 = 0u;
  obja = v146;
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
        v152 = [v151 representedString];
        [v151 setDisplayString:v152];

        [v151 setDisplayType:0];
        v153 = MEMORY[0x1E696AEC0];
        v154 = [v139 name];
        v155 = [v151 representedString];
        v156 = [v153 stringWithFormat:@"%@/%@", v154, v155];
        [v151 setName:v156];

        [v151 setOverrideDisplayString:0];
        [v233 addObject:v151];
        v157 = [obja firstObject];
        LODWORD(v155) = [v157 isEqualToString:v150];

        if (v155)
        {
          v158 = [UIKBTree treeOfType:8];
          [v158 setDisplayType:50];
          [v158 setInteractionType:0];
          v159 = MEMORY[0x1E696AEC0];
          v160 = [v139 name];
          v161 = [v159 stringWithFormat:@"%@/Divider", v160];
          [v158 setName:v161];

          [v158 setState:1];
          [v233 addObject:v158];
        }
      }

      v147 = [obja countByEnumeratingWithState:&v239 objects:v252 count:16];
    }

    while (v147);
  }

  v162 = [v229 emojiString];
  v163 = [(UIKeyboardEmojiCollectionInputView *)v232 baseStringIsCoupleEmoji:v162];

  if (v163)
  {
    v164 = [v139 copy];
    EMFStringUtilitiesClass = getEMFStringUtilitiesClass();
    v166 = [v229 emojiString];
    v167 = [EMFStringUtilitiesClass _baseStringForEmojiString:v166];
    [v164 setRepresentedString:v167];

    v168 = [v164 representedString];
    [v164 setDisplayString:v168];

    [v164 setDisplayType:0];
    v169 = MEMORY[0x1E696AEC0];
    v170 = [v139 name];
    v171 = [v164 representedString];
    v172 = [v169 stringWithFormat:@"%@/%@", v170, v171];
    [v164 setName:v172];

    [v164 setOverrideDisplayString:0];
    [v233 insertObject:v164 atIndex:0];
  }

  v173 = [v229 emojiString];
  v174 = [(UIKeyboardEmojiCollectionInputView *)v232 skinToneWasUsedForEmoji:v173];

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
    v237 = v229;
    v238 = &v243;
    [v233 enumerateObjectsUsingBlock:v236];
    [v139 setSelectedVariantIndex:*(v244 + 24)];

    _Block_object_dispose(&v243, 8);
  }

  v175 = [(UIView *)v232 effectiveUserInterfaceLayoutDirection];
  v176 = UIKBAttributeValueFixedLeftStr;
  if (v175 != 1)
  {
    v176 = UIKBAttributeValueFixedRightStr;
  }

  [v139 setVariantPopupBias:*v176];
  [v139 setSubtrees:v233];
  v177 = [v229 emojiString];
  v178 = [(UIKeyboardEmojiCollectionInputView *)v232 baseStringIsCoupleEmoji:v177];

  v179 = [v229 emojiString];
  if (![(UIKeyboardEmojiCollectionInputView *)v232 skinToneWasUsedForEmoji:v179])
  {
    v185 = [(UIKeyboardEmojiCollectionInputView *)v232 tappedSkinToneEmoji];
    if ([v185 section] || !-[UIKeyboardEmojiCollectionInputView _userHasSelectedSkinToneEmoji](v232, "_userHasSelectedSkinToneEmoji"))
    {

      goto LABEL_86;
    }

    emojiGraphicsTraits = v232->_emojiGraphicsTraits;
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

  v180 = v232->_emojiGraphicsTraits;
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
  v189 = [v188 isEmojiPopoverPresented];

  if (v189)
  {
    objc_storeStrong(&v232->_selectedPopupKey, v139);
    v232->_showingVariants = 1;
    v232->_currentVariantRow = 0;
    v190 = [(UIKeyboardEmojiCollectionInputView *)v232 tappedSkinToneEmoji];
    v191 = [v190 copy];
    [(UIKeyboardEmojiCollectionInputView *)v232 setSelectedIndexPath:v191];
  }

LABEL_93:
  v192 = v232->_collectionView;
  v193 = [(UIView *)v232 superview];
  [(UIView *)v192 convertRect:v193 toView:v24 + 0.0, v230 + 1.0, v227, v228];
  v195 = v194;
  v197 = v196;
  v199 = v198;
  v201 = v200;

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || +[UIKeyboardImpl isFloating])
  {
    [(UIKeyboardEmojiGraphicsTraits *)v232->_emojiGraphicsTraits fakeEmojiKeySize];
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
    [(UIView *)v232->_collectionView bounds];
    if (v212 > v213)
    {
      if ([v229 supportsSkinToneVariants])
      {
        v214 = v232->_emojiGraphicsTraits;
        if (!v214 || !v214->_isFirstPartyStickers)
        {
          [(UIView *)v232->_collectionView bounds];
          v216 = v215;
          v294.origin.x = v207;
          v294.origin.y = v208;
          v294.size.width = v203;
          v294.size.height = v205;
          v217 = CGRectGetMaxX(v294);
          [(UIView *)v232->_collectionView bounds];
          if (v217 - v218 >= 0.0)
          {
            v219 = v217 - v218;
          }

          else
          {
            v219 = -(v217 - v218);
          }

          v220 = v232->_collectionView;
          [(UIScrollView *)v220 contentOffset];
          v222 = v221;
          [(UIScrollView *)v232->_collectionView contentOffset];
          [(UICollectionView *)v220 setContentOffset:1 animated:v222 + v219];
          v207 = v216 - v203;
        }
      }
    }
  }

  else
  {
    [(UIKeyboardEmojiGraphicsTraits *)v232->_emojiGraphicsTraits fakeEmojiKeySize];
    v203 = v202;
    v205 = v204;
    v206 = (v204 - v201) * 0.5;
    v207 = v195 - (v202 - v199) * 0.5;
    v208 = v197 - v206;
  }

  v223 = [[UIKBShape alloc] initWithGeometry:0 frame:v207 paddedFrame:v208, v203, v205, v207, v208, v203, v205];
  [v139 setShape:v223];

  v224 = [(UIKBKeyView *)v232 key];
  [v139 setParentKey:v224];

  [v139 setObject:v229 forProperty:@"UIKBAssociatedEmoji"];
  v22 = v231;
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

- (BOOL)genderEmojiBaseStringNeedVariantSelector:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"⛹"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"🏋"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"🕵"];
  }

  return v4;
}

- (id)selectedChildSkinToneEmoji:(id)a3
{
  v3 = a3;
  if ([v3 selectedVariantIndex] == 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend(v3, "subtrees"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectAtIndex:", objc_msgSend(v3, "selectedVariantIndex")), v5 = objc_claimAutoreleasedReturnValue(), v4, objc_msgSend(v5, "displayString"), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v8 = [v3 objectForProperty:@"UIKBAssociatedEmoji"];
  }

  else
  {
    v7 = [v3 objectForProperty:@"UIKBAssociatedEmoji"];
    v8 = +[UIKeyboardEmoji emojiWithString:withVariantMask:](UIKeyboardEmoji, "emojiWithString:withVariantMask:", v6, [v7 variantMask]);
  }

  return v8;
}

- (int64_t)didInputSubTree:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = UIKeyboardEmojiCollectionInputView;
  v5 = [(UIKBKeyView *)&v43 didInputSubTree:v4];
  v6 = [v4 objectForProperty:@"UIKBAssociatedEmoji"];
  if (v6)
  {
    v7 = v6;
    if ([v6 supportsSkinToneVariants])
    {
      if ([v4 state] == 16)
      {
        v8 = [v4 selectedVariantIndex];
        v9 = [v4 subtrees];
        v10 = v8 < [v9 count];
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
      v11 = [(UIKeyboardEmojiCollectionInputView *)self selectedChildSkinToneEmoji:v4];

      if (v10)
      {
        v12 = [v4 subtrees];
        v13 = [v12 objectAtIndex:0];
        v14 = [v13 representedString];

        v15 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
        v16 = [v11 emojiString];
        [v15 updateSkinToneBaseKey:v14 variantUsed:v16];
      }

      collectionView = self->_collectionView;
      v18 = [(UIKeyboardEmojiCollectionInputView *)self tappedSkinToneEmoji];
      v19 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v18];

      v20 = [v19 emoji];
      v21 = [v20 emojiString];
      v22 = [(UIKeyboardEmojiCollectionInputView *)self emojiBaseString:v21];
      v23 = [v11 emojiString];
      v24 = [(UIKeyboardEmojiCollectionInputView *)self emojiBaseString:v23];
      v25 = [v22 isEqualToString:v24];

      if (v25)
      {
        [v19 setEmoji:v11];
        if (os_variant_has_internal_diagnostics())
        {
          v40 = objc_opt_class();
          v41 = [v11 emojiString];
          [v19 setUnreleasedHighlight:{objc_msgSend(v40, "shouldHighlightEmoji:", v41)}];
        }
      }

      v5 = v42;
    }

    else
    {
      v11 = v7;
    }

    v26 = +[UIKeyboardInputModeController sharedInputModeController];
    v27 = [v26 lastUsedInputModeForCurrentContext];
    v28 = [v27 primaryLanguage];
    v29 = [v28 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = @"en_US";
    }

    v31 = +[UIKeyboardImpl activeInstance];
    v32 = [v31 isEmojiPopoverVisibleOrDismissing];

    if (!v32)
    {
      goto LABEL_25;
    }

    v33 = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchField];
    v34 = [v33 text];
    if ([v34 length])
    {
      v35 = [(UIKeyboardEmojiCollectionInputView *)self tappedSkinToneEmoji];
      v36 = [v35 section];

      if (!v36)
      {
        v37 = UIKBAnalyticsEmojiInputTypePopoverSearch;
LABEL_24:
        [UIKBAnalyticsDispatcher emojiInsertedByMethod:@"Touch" inputType:*v37];
LABEL_25:
        v38 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
        [v38 emojiUsed:v11 language:v30];

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
  [v4 setObject:0 forProperty:@"UIKBAssociatedEmoji"];

  return v5;
}

- (void)shouldDismissModalDisplayView:(id)a3
{
  [(UIKeyboardEmojiCollectionInputView *)self _setUserHasSelectedSkinToneEmoji:1];
  v4 = [(UIKeyboardEmojiCollectionInputView *)self completionBlock];
  if (v4)
  {
    v5 = v4;
    v4[2]();
    [(UIKeyboardEmojiCollectionInputView *)self setCompletionBlock:0];
    v4 = v5;
  }
}

- (void)willDisplayModalActionView:(id)a3 withSubTreeKeyView:(id)a4 completion:(id)a5
{
  v83[2] = *MEMORY[0x1E69E9840];
  v78 = a4;
  v8 = a3;
  [(UIKeyboardEmojiCollectionInputView *)self setCompletionBlock:a5];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [(UIKBKeyView *)self renderConfig];
  v11 = [v10 whiteText];

  if (v11)
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
    v15 = [(UIKBKeyView *)self renderConfig];
    v77 = [v15 isFloating] ^ 1;
  }

  v76 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v71 = self;
  v16 = [(UIView *)self _keyboardOrientation]- 3;
  v17 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v18 = [v17 preferencesActions];
  [v18 rivenSizeFactor:1.0];
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
  [v8 addSubview:v26];
  v27 = [MEMORY[0x1E69977A0] constraintWithItem:v26 attribute:3 relatedBy:0 toItem:v8 attribute:3 multiplier:1.0 constant:0.0];
  [v9 addObject:v27];

  v28 = [MEMORY[0x1E69977A0] constraintWithItem:v26 attribute:1 relatedBy:0 toItem:v8 attribute:1 multiplier:1.0 constant:0.0];
  [v9 addObject:v28];

  v29 = [MEMORY[0x1E69977A0] constraintWithItem:v26 attribute:2 relatedBy:0 toItem:v8 attribute:2 multiplier:1.0 constant:0.0];
  [v9 addObject:v29];

  v30 = [MEMORY[0x1E69977A0] constraintWithItem:v26 attribute:8 relatedBy:0 toItem:v8 attribute:8 multiplier:v22 constant:0.0];
  [v9 addObject:v30];

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
  v36 = [getEMFEmojiCategoryClass_0() localizedSkinToneEmojiDescription];
  v73 = [v35 initWithString:v36 attributes:v74];

  [(UILabel *)v31 setNumberOfLines:0];
  [(UILabel *)v31 setTextAlignment:1];
  [(UILabel *)v31 setAttributedText:v73];
  [(UIView *)v26 addSubview:v31];
  v37 = [MEMORY[0x1E69977A0] constraintWithItem:v31 attribute:9 relatedBy:0 toItem:v26 attribute:9 multiplier:v25 constant:0.0];
  [v9 addObject:v37];

  v72 = v26;
  v38 = [MEMORY[0x1E69977A0] constraintWithItem:v31 attribute:3 relatedBy:0 toItem:v26 attribute:3 multiplier:1.0 constant:0.0];
  [v9 addObject:v38];

  v39 = [MEMORY[0x1E69977A0] constraintWithItem:v31 attribute:4 relatedBy:0 toItem:v26 attribute:4 multiplier:1.0 constant:0.0];
  [v9 addObject:v39];

  v40 = MEMORY[0x1E69977A0];
  [(UIKeyboardEmojiGraphicsTraits *)v71->_emojiGraphicsTraits alertTextWidth];
  v42 = [v40 constraintWithItem:v31 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v41 - v23];
  [v9 addObject:v42];

  v43 = objc_alloc_init(UIView);
  [(UIView *)v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 addSubview:v43];
  v44 = [MEMORY[0x1E69977A0] constraintWithItem:v43 attribute:4 relatedBy:0 toItem:v8 attribute:4 multiplier:1.0 constant:0.0];
  [v9 addObject:v44];

  v45 = [MEMORY[0x1E69977A0] constraintWithItem:v43 attribute:8 relatedBy:0 toItem:v8 attribute:8 multiplier:0.086 constant:0.0];
  [v9 addObject:v45];

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
  [v46 addTarget:v71 action:sel_shouldDismissModalDisplayView_ forControlEvents:64];
  [v8 addSubview:v46];
  v50 = [MEMORY[0x1E69977A0] constraintWithItem:v46 attribute:9 relatedBy:0 toItem:v8 attribute:9 multiplier:v25 constant:0.0];
  [v9 addObject:v50];

  v51 = [MEMORY[0x1E69977A0] constraintWithItem:v46 attribute:4 relatedBy:0 toItem:v43 attribute:3 multiplier:1.0 constant:6.0];
  [v9 addObject:v51];

  v52 = [MEMORY[0x1E69977A0] constraintWithItem:v46 attribute:7 relatedBy:0 toItem:v31 attribute:7 multiplier:1.0 constant:0.0];
  [v9 addObject:v52];

  v53 = [v78 snapshotViewAfterScreenUpdates:1];

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

  [v8 addSubview:{v54, v68}];
  LODWORD(v56) = 1148829696;
  [(UIView *)v54 setContentHuggingPriority:1 forAxis:v56];
  v57 = [MEMORY[0x1E69977A0] constraintWithItem:v54 attribute:9 relatedBy:0 toItem:v8 attribute:9 multiplier:v25 constant:0.0];
  [v9 addObject:v57];

  v58 = [MEMORY[0x1E69977A0] constraintWithItem:v54 attribute:3 relatedBy:0 toItem:v31 attribute:4 multiplier:1.0 constant:v55];
  [v9 addObject:v58];

  v59 = objc_alloc_init(UILayoutGuide);
  [v8 addLayoutGuide:v59];

  v60 = [(UILayoutGuide *)v59 topAnchor];
  v61 = [(UIView *)v54 bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];
  [v9 addObject:v62];

  v63 = [(UILayoutGuide *)v59 bottomAnchor];
  v64 = [v46 topAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];
  [v9 addObject:v65];

  v66 = [(UILayoutGuide *)v59 heightAnchor];
  v67 = [v66 constraintGreaterThanOrEqualToConstant:6.0];
  [v9 addObject:v67];

  [MEMORY[0x1E69977A0] activateConstraints:v9];
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

- (void)didTearDownRecentsViewForKeyboardMediaController:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__UIKeyboardEmojiCollectionInputView_didTearDownRecentsViewForKeyboardMediaController___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __87__UIKeyboardEmojiCollectionInputView_didTearDownRecentsViewForKeyboardMediaController___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) shouldRetryFetchingRecents];
  *(*(a1 + 32) + 682) = result;
  return result;
}

- (void)didInsertMediaForKeyboardMediaController:(id)a3
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 dismissEmojiPopoverIfNecessaryWithCompletion:0];
}

- (void)didPresentCardForKeyboardMediaController:(id)a3
{
  v4 = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchField];
  v5 = [v4 isActive];

  if (v5)
  {
    v6 = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchField];
    [v6 resignFirstResponder];
  }

  v7 = +[UIKeyboardImpl activeInstance];
  [v7 didPresentMemojiCard];
}

- (void)didDismissCardForKeyboardMediaController:(id)a3
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 didDismissMemojiCard];
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v5 = [v4 count];

  if (![(UIKeyboardEmojiCollectionInputView *)self showingRecents])
  {
    v5 += [(UIKeyboardEmojiCollectionInputView *)self isSearching];
  }

  return v5;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
LABEL_2:
    v7 = [UIKeyboardEmojiCategory categoryForType:[(UIKeyboardEmojiCollectionInputView *)self emojiCategoryTypeForSection:a4]];
    v8 = [v7 emoji];
    v9 = [v8 count];

LABEL_3:
    goto LABEL_4;
  }

  if (![(UIKeyboardEmojiCollectionInputView *)self isSearching])
  {
    if ([(UIKeyboardEmojiCollectionInputView *)self showingRecents])
    {
      v15 = [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits prepolulatedRecentCount];
      v9 = v15 + [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
      goto LABEL_4;
    }

    goto LABEL_2;
  }

  v11 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
  v12 = [v11 count];

  if (!v12)
  {
    v9 = 1;
    goto LABEL_4;
  }

  v9 = [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits prepolulatedRecentCount];
  v13 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
  v14 = [v13 count];

  if (v14 > v9)
  {
    v7 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
    v9 = [v7 count];
    goto LABEL_3;
  }

LABEL_4:

  return v9;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  v7 = [v5 item];
  v8 = [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
  collectionView = self->_collectionView;
  if (v8 && !v6 && !v7)
  {
    v10 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:@"kMediaCellIdentifier" forIndexPath:v5];

    v11 = +[UIKeyboardMediaController sharedKeyboardMediaController];
    v12 = [v10 contentView];
    [v11 showRecentlyUsedMediaInView:v12];

    goto LABEL_32;
  }

  v10 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:@"kEmojiCellIdentifier" forIndexPath:v5];

  if (v6)
  {
    goto LABEL_6;
  }

  if (![(UIKeyboardEmojiCollectionInputView *)self isSearching]|| ([(UIKeyboardEmojiCollectionInputView *)self searchResults], v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
  {
    if ([(UIKeyboardEmojiCollectionInputView *)self showingRecents])
    {
      v25 = v7 - v8;
      v37 = 0;
      v26 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
      v14 = [v26 recentEmojiAtIndex:v25 size:&v37];

      if (v14)
      {
        v15 = [UIKeyboardEmoji emojiWithString:v14 withVariantMask:[UIKeyboardEmojiCategory hasVariantsForEmoji:v14]];
      }

      else
      {
        v27 = [UIKeyboardEmojiCategory categoryForType:9];
        v28 = [v27 emoji];

        v29 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
        v30 = [v29 emojiWithoutDuplicateRecents:v28];

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
    v13 = [UIKeyboardEmojiCategory categoryForType:[(UIKeyboardEmojiCollectionInputView *)self emojiCategoryTypeForSection:v6]];
    v14 = [v13 emoji];

    if (!v14)
    {
      v15 = 0;
      goto LABEL_28;
    }

    v15 = [v14 objectAtIndex:v7];
    if (v15)
    {
      v16 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
      v17 = [v15 emojiString];
      v18 = [v16 lastUsedVariantEmojiForEmojiString:v17];
      [v15 setEmojiString:v18];

LABEL_9:
    }

LABEL_28:

    if (v15)
    {
      [v10 setEmoji:v15];
      v32 = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
      [v32 emojiKeyWidth];
      [v10 setEmojiFontSize:v33];

      if (os_variant_has_internal_diagnostics())
      {
        v35 = objc_opt_class();
        v36 = [v15 emojiString];
        [v10 setUnreleasedHighlight:{objc_msgSend(v35, "shouldHighlightEmoji:", v36)}];
      }
    }

    goto LABEL_31;
  }

  v20 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
  v21 = [v20 count];

  if (v21)
  {
    v22 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
    v23 = [v22 count];

    if (v7 < v23)
    {
      v24 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
      v14 = [v24 objectAtIndex:v7];

      v16 = [v14 string];
      if (v16)
      {
        v15 = [UIKeyboardEmoji emojiWithString:v16 withVariantMask:[UIKeyboardEmojiCategory hasVariantsForEmoji:v16]];
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

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  emojiGraphicsTraits = self->_emojiGraphicsTraits;
  if (emojiGraphicsTraits && emojiGraphicsTraits->_isFirstPartyStickers && ![v10 section])
  {
    v13 = 0;
    goto LABEL_20;
  }

  v13 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"kEmojiCategoryTitleIdentifier" forIndexPath:v11];
  if ([(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection]== UICollectionViewScrollDirectionVertical)
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewLeftMostPadding];
    v15 = v14;
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewRightMostPadding];
    [v13 setInsets:{0.0, v15, 0.0, v16}];
  }

  v17 = [v11 section];
  v18 = [(UIKeyboardEmojiCollectionInputView *)self emojiCategoryTypeForSection:v17];
  if (v17 || ![(UIKeyboardEmojiCollectionInputView *)self isSearching])
  {
    v19 = [UIKeyboardEmojiCategory displayName:v18];
  }

  else
  {
    v19 = _UILocalizedStringInSystemLanguage(@"Results", @"Results");
  }

  v20 = v19;
  [v13 setHeaderName:v19];
  v21 = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
  [v21 categoryHeaderFontSize];
  [v13 setHeaderFontSize:?];

  v22 = +[UIDevice currentDevice];
  v23 = [v22 _keyboardGraphicsQuality];

  v24 = [(UIKBKeyView *)self renderConfig];
  v25 = [v24 whiteText];
  if (v23 == 10)
  {
    if ((v25 & 1) == 0)
    {
      v26 = 0.51372549;
      v27 = 0.517647059;
      v28 = 0.529411765;
LABEL_16:
      v29 = [UIColor colorWithRed:v26 green:v27 blue:v28 alpha:1.0];
      goto LABEL_17;
    }
  }

  else if ((v25 & 1) == 0)
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

  v31 = [(UIKBKeyView *)self renderConfig];
  v32 = [v31 whiteText];
  v33 = 0.4;
  if (!v32)
  {
    v33 = 1.0;
  }

  [v13 setHeaderOpacity:v33];

  v34 = [(UIKBKeyView *)self renderConfig];
  [v13 setUseVibrantBlend:{objc_msgSend(v34, "whiteText")}];

LABEL_20:

  return v13;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  v10 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v11 = 0.0;
    if (![v9 scrollDirection])
    {
      emojiGraphicsTraits = self->_emojiGraphicsTraits;
      if (emojiGraphicsTraits && !a5 && emojiGraphicsTraits->_isFirstPartyStickers)
      {
        v10 = *MEMORY[0x1E695F060];
        v11 = *(MEMORY[0x1E695F060] + 8);
      }

      else
      {
        [v8 bounds];
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
  v3 = [v2 shouldShowRecents];

  return v3;
}

- (int64_t)emojiCategoryTypeForSection:(int64_t)a3
{
  if (![(UIKeyboardEmojiCollectionInputView *)self showingRecents])
  {
    v5 = [(UIKeyboardEmojiCollectionInputView *)self isSearching];
    v6 = a3 > 0 && v5;
    a3 -= v6;
  }

  return [UIKeyboardEmojiCategory categoryTypeForCategoryIndex:a3];
}

- (BOOL)handleKeyEvent:(id)a3
{
  v4 = a3;
  if ([v4 keyCode])
  {
    v5 = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchField];
    v6 = [v5 markedTextRange];

    if (!v6)
    {
      if (([v4 keyCode] == 44 || objc_msgSend(v4, "keyCode") == 40) && -[UIKeyboardEmojiCollectionInputView handleSelectionEvent:](self, "handleSelectionEvent:", v4))
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
            if (![(UIKeyboardEmojiCollectionInputView *)self handleKeyInputForFamilySelector:v4])
            {
              goto LABEL_16;
            }

LABEL_8:
            v7 = 1;
            goto LABEL_4;
          }

          if ([(UIKeyboardEmojiCollectionInputView *)self handleKeyInputForVariantSelector:v4])
          {
            goto LABEL_8;
          }
        }
      }

LABEL_16:
      v7 = [(UIKeyboardEmojiCollectionInputView *)self handleKeyInputForCollectionViewNavigation:v4];
      goto LABEL_4;
    }
  }

  v7 = 0;
LABEL_4:

  return v7;
}

- (BOOL)handleKeyInputForVariantSelector:(id)a3
{
  v4 = a3;
  if ([v4 modifiersEqual:0])
  {
    v5 = -[UIKeyboardEmojiCollectionInputView keyCodeForCurrentEnvironmentFromKeyCode:](self, "keyCodeForCurrentEnvironmentFromKeyCode:", [v4 keyCode]);
    if (v5 > 80)
    {
      if (v5 == 82)
      {
        if ([(UIKBTree *)self->_selectedPopupKey selectedVariantIndex]== 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = 0;
        }

        else
        {
          v14 = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndex];
        }

        self->_selectedVariant = v14;
        [(UIKBTree *)self->_selectedPopupKey setSelectedVariantIndex:?];
        v22 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
        v8 = v22;
        selectedPopupKey = self->_selectedPopupKey;
        goto LABEL_30;
      }

      if (v5 == 81)
      {
        v6 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
        [v6 updateState:2 forKey:self->_selectedPopupKey];

        self->_showingVariants = 0;
        v7 = self->_selectedPopupKey;
        self->_selectedPopupKey = 0;

        v8 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
        [(UIKeyboardEmojiCollectionInputView *)self updateHighlightForIndexPath:v8 scrollIfNeeded:0 animateScroll:0];
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
        v15 = [(UIKBTree *)self->_selectedPopupKey subtrees];
        v16 = [v15 objectAtIndex:self->_selectedVariant];
        v17 = [v16 interactionType];

        v18 = self->_selectedVariant;
        if (v17)
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
            v24 = [(UIKBTree *)self->_selectedPopupKey subtrees];
            self->_selectedVariant = [v24 count] - 1;
          }

          else
          {
            self->_selectedVariant = v21;
          }
        }

        v25 = [(UIKBTree *)self->_selectedPopupKey subtrees];
        v26 = [v25 objectAtIndex:self->_selectedVariant];
        v27 = [v26 interactionType];

        v18 = self->_selectedVariant;
        if (v27)
        {
          goto LABEL_29;
        }

        --v18;
LABEL_28:
        self->_selectedVariant = v18;
LABEL_29:
        [(UIKBTree *)self->_selectedPopupKey setSelectedVariantIndex:v18];
        v22 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
        v8 = v22;
        selectedPopupKey = self->_selectedPopupKey;
LABEL_30:
        [v22 updateState:16 forKey:selectedPopupKey];
        goto LABEL_31;
      }
    }

    if (self->_selectedPopupKey)
    {
      v8 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
      [v8 updateState:2 forKey:self->_selectedPopupKey];
      v9 = 0;
LABEL_32:

      goto LABEL_33;
    }
  }

  v9 = 0;
LABEL_33:

  return v9;
}

- (BOOL)handleKeyInputForCollectionViewNavigation:(id)a3
{
  v4 = a3;
  if ([v4 unmodifiedKeyCodeEquals:44] & 1) != 0 || (objc_msgSend(v4, "unmodifiedKeyCodeEquals:", 158))
  {
    goto LABEL_3;
  }

  if ([v4 unmodifiedKeyCodeEquals:79])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v4 equalsKeyCode:79 modifiers:0x100000];
  }

  if ([v4 unmodifiedKeyCodeEquals:80])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v4 equalsKeyCode:80 modifiers:0x100000];
  }

  if ([v4 unmodifiedKeyCodeEquals:82])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v4 equalsKeyCode:82 modifiers:0x100000];
  }

  if ([v4 unmodifiedKeyCodeEquals:81])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v4 equalsKeyCode:81 modifiers:0x100000];
  }

  v11 = [(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection];
  v12 = [(UIView *)self effectiveUserInterfaceLayoutDirection];
  if (v12 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v13 = v8;
  }

  else
  {
    v13 = v7;
  }

  if (v12 != UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v7 = v8;
  }

  if (v11)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  if (v11)
  {
    v15 = v9;
  }

  else
  {
    v15 = v7;
  }

  v91 = v15;
  if (v11)
  {
    v16 = v13;
  }

  else
  {
    v16 = v10;
  }

  if (v11)
  {
    v17 = v7;
  }

  else
  {
    v17 = v9;
  }

  v18 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];

  if (v18)
  {
    v89 = v16;
    v19 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
    v20 = [v19 section];

    v21 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
    v22 = [v21 item];

    p_collectionView = &self->_collectionView;
    v24 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:v20];
    v25 = v24;
    if (v14)
    {
      v90 = v17;
      if (v22 >= v24 - 1)
      {
        v26 = 0;
        if (v20 < [(UICollectionView *)*p_collectionView numberOfSections]- 1)
        {
          v22 = 0;
          ++v20;
        }
      }

      else
      {
        v26 = 0;
        ++v22;
      }

      goto LABEL_79;
    }

    if (v11)
    {
      v34 = 5;
    }

    else
    {
      v34 = 8;
    }

    if (v91)
    {
      v35 = [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
      v36 = v20 < 2 && v35;
      if (v22 > v36)
      {
        v26 = 0;
        --v22;
LABEL_65:
        v90 = 1;
        v38 = 1;
        v39 = v89;
        goto LABEL_81;
      }

      v39 = v89;
      if (v20 >= 1)
      {
        v26 = 0;
        v22 = [(UICollectionView *)*p_collectionView numberOfItemsInSection:v20 - 1]- 1;
        v90 = 1;
        v38 = 1;
        --v20;
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
    v27 = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
    v28 = [v27 sortedArrayUsingSelector:sel_compare_];

    v29 = [v28 firstObject];
    v20 = [v29 section];
    v22 = [v29 item];
    if (!(v20 | v22))
    {
      v22 = [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
    }

    if ([(UIKeyboardEmojiCollectionInputView *)self isSearching])
    {
      v30 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
      v87 = v28;
      v31 = [v30 count];

      v66 = v31 == 0;
      v28 = v87;
      if (v66)
      {
        v20 = 1;
      }
    }

    v32 = [MEMORY[0x1E696AC88] indexPathForItem:v22 inSection:{v20, v87}];
    [(UIKeyboardEmojiCollectionInputView *)self setSelectedIndexPath:v32];

    p_collectionView = &self->_collectionView;
    v33 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:v20];
    if (v14)
    {
      v26 = 0;
      goto LABEL_79;
    }

    v37 = 8;
    if (v11)
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
    v41 = [v4 modifiersEqual:0x100000];
    v42 = v41;
    v43 = 40;
    if (v11 == UICollectionViewScrollDirectionVertical)
    {
      v43 = 56;
    }

    v26 = v41 | v40;
    if (v41)
    {
      v34 = v43;
    }

    v44 = [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
    if (v20)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    if (!v18 && !v42)
    {
      goto LABEL_79;
    }

    if (v34 + v22 < v25)
    {
      v39 = 1;
      v38 = 1;
      v22 += v34;
      goto LABEL_81;
    }

    v77 = v20 + 1;
    if (v20 + 1 < [*v88 numberOfSections])
    {
      v53 = v34 + v22 - v25;
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
        v82 = v22 % v92;
      }

      if (v45)
      {
        if (v82)
        {
          v22 = v82 - 1;
        }

        else
        {
          v22 %= v92;
        }

        [(UIKeyboardEmojiCollectionInputView *)self isSearching];
        v38 = 1;
        goto LABEL_140;
      }

      v39 = 1;
      v38 = 1;
      v22 = v82;
      v20 = v77;
      goto LABEL_81;
    }

    v22 = v25 - 1;
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
    v52 = [v4 modifiersEqual:0x100000];
    v26 = v52 | v51;
    if (!v18 && !v52)
    {
      v39 = 0;
      goto LABEL_124;
    }

    v56 = p_collectionView;
    v57 = 40;
    if (v11 == UICollectionViewScrollDirectionVertical)
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

    v59 = v22 - v58;
    v60 = [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
    if (v20)
    {
      v61 = 0;
    }

    else
    {
      v61 = v60;
    }

    if (v59 >= v61)
    {
      v90 = 1;
      v38 = 1;
      v22 -= v58;
      v39 = 0;
    }

    else
    {
      v62 = v20 - 1;
      if (v20 >= 1)
      {
        v63 = v60;
        --v20;
        v64 = [*v56 numberOfItemsInSection:v62];
        v65 = v20 == 0;
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
        v73 = v69 + v22;
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

        v22 = v73 - v74 + v76 * v93;
        goto LABEL_124;
      }

      v39 = 0;
      v90 = 1;
      v38 = 1;
      v22 = v61;
    }

LABEL_81:
    if (![(UIKeyboardEmojiCollectionInputView *)self isSearching]|| v20)
    {
      goto LABEL_141;
    }

    v46 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
    v47 = [v46 count];

    v20 = v22 >= v47;
    v48 = (v22 < v47) | v39;
    if (v22 >= v47)
    {
      v22 = 0;
    }

    if (v48 & 1) != 0 || ((v90 ^ 1))
    {
      goto LABEL_141;
    }

    v49 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
    v22 = [v49 count];

    if (v22)
    {
      v50 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
      v22 = [v50 count] - 1;

      v20 = 0;
LABEL_141:
      v83 = [MEMORY[0x1E696AC88] indexPathForItem:v22 inSection:v20];
      [(UIKeyboardEmojiCollectionInputView *)self updateHighlightForIndexPath:v83 scrollIfNeeded:v38 animateScroll:v26 & v38];

      v5 = 1;
      goto LABEL_4;
    }

LABEL_140:
    v20 = 1;
    goto LABEL_141;
  }

  v54 = [v4 unmodifiedKeyCodeEquals:43];
  v55 = [v4 equalsKeyCode:43 modifiers:0x20000];
  if ((v54 & 1) != 0 || v55)
  {
    if (v55)
    {
      if (v20 <= 0)
      {
        v90 = 0;
        v39 = 0;
        v26 = 0;
        v20 = 0;
        v22 = [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
        goto LABEL_80;
      }

      --v20;
    }

    else
    {
      if (v20 >= [(UICollectionView *)*p_collectionView numberOfSections]- 1)
      {
        v20 = [(UICollectionView *)*p_collectionView numberOfSections]- 1;
        v90 = 0;
        v39 = 0;
        v26 = 0;
        v22 = [(UICollectionView *)*p_collectionView numberOfItemsInSection:v20]- 1;
        goto LABEL_80;
      }

      ++v20;
    }

    v84 = [(UIKeyboardEmojiCollectionInputView *)self emojiCategoryTypeForSection:v20];
    v85 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    [v85 reloadForCategory:v84 withSender:self];

    [(UIKeyboardEmojiCollectionInputView *)self updateToCategory:v84];
    v86 = [(UIKeyboardEmojiCollectionInputView *)self category];
    v22 = [v86 lastVisibleFirstEmojiIndex];

    v90 = 0;
    v39 = 0;
    v26 = 0;
    v38 = 0;
    if (!(v22 | v20))
    {
      v20 = 0;
      v22 = [(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia];
    }

    goto LABEL_81;
  }

LABEL_3:
  v5 = 0;
LABEL_4:

  return v5;
}

- (BOOL)handleKeyInputForFamilySelector:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 modifiersEqual:0];
  if (v5)
  {
    v6 = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
    v7 = [v6 mutableCopy];

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

    v11 = -[UIKeyboardEmojiCollectionInputView keyCodeForCurrentEnvironmentFromKeyCode:](self, "keyCodeForCurrentEnvironmentFromKeyCode:", [v4 keyCode]);
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
      v23 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
      [v23 updateState:16 forKey:self->_selectedPopupKey];
      goto LABEL_35;
    }

    if (v11 == 82)
    {
      v19 = [(UIKBTree *)self->_selectedPopupKey popupDirection];
      v20 = self->_currentVariantRow;
      if (v19 != 2 || v20)
      {
        v24 = v20 < 1;
        v25 = v20 - 1;
        if (v24)
        {
          if ([(UIKBTree *)self->_selectedPopupKey popupDirection]== 1)
          {
            v42 = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndex];
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

            if (v42)
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

      v14 = [(UIKBTree *)self->_selectedPopupKey popupDirection];
      v15 = self->_currentVariantRow;
      if (v15 < [v7 count] && (self->_selectedVariant != 0x7FFFFFFFFFFFFFFFLL || -[UIKBTree popupDirection](self->_selectedPopupKey, "popupDirection") == 2))
      {
        v16 = [(UIKBTree *)self->_selectedPopupKey popupDirection];
        v17 = self->_currentVariantRow;
        if (v16 == 2 && !v17)
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
        v37 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
        [v37 updateState:16 forKey:self->_selectedPopupKey];

        if (v14 != 1)
        {
          goto LABEL_36;
        }

        v38 = [v7 count];
        v39 = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
        v40 = [v39 count];

        if (v38 <= v40)
        {
          goto LABEL_36;
        }
      }
    }

    v21 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
    [v21 updateState:2 forKey:self->_selectedPopupKey];

    self->_showingVariants = 0;
    selectedPopupKey = self->_selectedPopupKey;
    self->_selectedPopupKey = 0;

    v23 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
    [(UIKeyboardEmojiCollectionInputView *)self updateHighlightForIndexPath:v23 scrollIfNeeded:0 animateScroll:0];
LABEL_35:

LABEL_36:
  }

  return v5;
}

- (BOOL)_handleInitialSelectionEvent:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchField];
  v6 = [v5 text];

  if ([v4 unmodifiedKeyCodeEquals:44] && !objc_msgSend(v6, "length") || objc_msgSend(v4, "unmodifiedKeyCodeEquals:", 40) && objc_msgSend(v6, "length") && (-[UIKeyboardEmojiCollectionInputView searchResults](self, "searchResults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
  {
    v9 = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
    v10 = [v9 sortedArrayUsingSelector:sel_compare_];

    v11 = [v10 firstObject];
    if (!v11)
    {
      v14 = 0;
      goto LABEL_15;
    }

    v12 = v11;
    if (-[UIKeyboardEmojiCollectionInputView _shouldShowRecentlyUsedMedia](self, "_shouldShowRecentlyUsedMedia") && ![v12 section] && !objc_msgSend(v12, "item"))
    {
      v13 = [MEMORY[0x1E696AC88] indexPathForItem:1 inSection:0];

      v12 = v13;
    }

    [(UIKeyboardEmojiCollectionInputView *)self updateHighlightForIndexPath:v12 scrollIfNeeded:0 animateScroll:0];
  }

  else
  {
    if (![v4 unmodifiedKeyCodeEquals:40])
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

- (BOOL)_handleVariantSelectionEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 unmodifiedKeyCodeEquals:44];
  v6 = [v4 unmodifiedKeyCodeEquals:40];

  v7 = v5 | v6;
  if ((v5 | v6))
  {
    collectionView = self->_collectionView;
    v9 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
    v10 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v9];

    v11 = [(UIKeyboardEmojiCollectionInputView *)self selectedChildSkinToneEmoji:self->_selectedPopupKey];
    v12 = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
    v13 = [v12 count];

    if (v13)
    {
      v14 = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
      v15 = [v14 lastObject];
      v16 = [v15 integerValue];

      if (!v16)
      {
        [(UIKBTree *)self->_selectedPopupKey setSelectedVariantIndex:0];
        v17 = [(UIKeyboardEmojiCollectionInputView *)self selectedChildSkinToneEmoji:self->_selectedPopupKey];

        v11 = v17;
      }
    }

    [(UIKBTree *)self->_selectedPopupKey setObject:v11 forProperty:@"UIKBAssociatedEmoji"];
    [v10 setEmoji:v11];
    v18 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
    [v18 updateState:2 forKey:self->_selectedPopupKey];

    [(UIKeyboardEmojiCollectionInputView *)self didInputSubTree:self->_selectedPopupKey];
    if (v5)
    {
      v19 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
      [(UIKeyboardEmojiCollectionInputView *)self updateHighlightForIndexPath:v19 scrollIfNeeded:0 animateScroll:0];
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

- (BOOL)_handleBaseKeySelectionEvent:(id)a3
{
  v4 = a3;
  collectionView = self->_collectionView;
  v6 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
  v7 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 emoji];
    v9 = [(UIKeyboardEmojiCollectionInputView *)self treeForCell:v7];
    v10 = [v4 unmodifiedKeyCodeEquals:44];
    v11 = [v4 equalsKeyCode:44 modifiers:0x80000];
    v12 = [v4 unmodifiedKeyCodeEquals:40];
    v13 = [v4 equalsKeyCode:40 modifiers:0x80000];
    if ([(UIKeyboardEmojiCollectionInputView *)self keySupportsVariants:v9])
    {
      v14 = v8;
      v15 = [(UIKBKeyView *)self factory];
      if ([v15 popupKeyUsesCustomKeyContentView:v9])
      {
        if ([v9 selectedVariantIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {

LABEL_21:
          self->_currentVariantRow = 0;
          v20 = [v9 selectedVariantIndices];
          v21 = v20;
          v8 = v14;
          if (v20)
          {
            v22 = [v20 firstObject];
            v23 = [v22 integerValue];

            if (v23 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v24 = 0;
            }

            else
            {
              v24 = v23;
            }

            self->_selectedVariant = v24;
          }

          [v7 setSelected:0];
          objc_storeStrong(&self->_selectedPopupKey, v9);
          v17 = 1;
          self->_showingVariants = 1;
          v25 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
          [v25 updateState:16 forKey:v9];

          goto LABEL_27;
        }

        v28 = [v4 modifiersEqual:0x80000];

        if (v28)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      v8 = v14;
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
        v18 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
        [v18 updateState:16 forKey:v9];

        goto LABEL_27;
      }
    }

    if (v10)
    {
      v19 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
      [(UIKeyboardEmojiCollectionInputView *)self updateHighlightForIndexPath:v19 scrollIfNeeded:0 animateScroll:0];

      [(UIKeyboardEmojiCollectionInputView *)self insertSelectedEmoji:v8 shouldDismissPopover:0];
      v17 = 1;
    }

    else if (v12)
    {
      v17 = 1;
      [(UIKeyboardEmojiCollectionInputView *)self insertSelectedEmoji:v8 shouldDismissPopover:1];
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

- (BOOL)handleSelectionEvent:(id)a3
{
  v4 = a3;
  if ([v4 modifierFlags] && !objc_msgSend(v4, "modifiersEqual:", 0x80000))
  {
    v7 = 0;
  }

  else
  {
    v5 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];

    if (v5)
    {
      if (self->_showingVariants)
      {
        v6 = [(UIKeyboardEmojiCollectionInputView *)self _handleVariantSelectionEvent:v4];
      }

      else
      {
        v6 = [(UIKeyboardEmojiCollectionInputView *)self _handleBaseKeySelectionEvent:v4];
      }
    }

    else
    {
      v6 = [(UIKeyboardEmojiCollectionInputView *)self _handleInitialSelectionEvent:v4];
    }

    v7 = v6;
  }

  return v7;
}

- (void)updateHighlightForIndexPath:(id)a3 scrollIfNeeded:(BOOL)a4 animateScroll:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v19 = a3;
  v8 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
  v9 = [v8 section];
  v10 = [v19 section];

  if (v9 != v10)
  {
    v11 = -[UIKeyboardEmojiCollectionInputView emojiCategoryTypeForSection:](self, "emojiCategoryTypeForSection:", [v19 section]);
    v12 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    [v12 reloadForCategory:v11 withSender:self];

    v13 = [UIKeyboardEmojiCategory categoryForType:v11];
    [(UIKeyboardEmojiCollectionInputView *)self setCategory:v13];
  }

  [(UIKeyboardEmojiCollectionInputView *)self setSelectedIndexPath:v19];
  collectionView = self->_collectionView;
  v15 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
  [(UICollectionView *)collectionView selectItemAtIndexPath:v15 animated:0 scrollPosition:0];

  if ([(UIKeyboardEmojiCollectionInputView *)self cellShouldScrollWhenSelectedAtIndexPath:v19]&& v6)
  {
    v16 = self->_collectionView;
    v17 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
    if ([(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection])
    {
      v18 = 16;
    }

    else
    {
      v18 = 2;
    }

    [(UICollectionView *)v16 scrollToItemAtIndexPath:v17 atScrollPosition:v18 animated:v5];
  }

  [(UIKeyboardEmojiCollectionInputView *)self updateLastSeenItemForIndexPath:v19];
}

- (void)insertSelectedEmoji:(id)a3 shouldDismissPopover:(BOOL)a4
{
  v4 = a4;
  v20 = a3;
  [(UIKeyboardEmojiCollectionInputView *)self updatePreferencesForSelectedEmoji:v20];
  v6 = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchInputViewController];
  v7 = [v6 textDocumentProxy];
  v8 = [v20 emojiString];
  [v7 insertText:v8];

  v9 = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchField];
  v10 = [v9 text];

  if ([v10 length] && (-[UIKeyboardEmojiCollectionInputView selectedIndexPath](self, "selectedIndexPath"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "section"), v11, !v12))
  {
    v14 = +[UIKeyboardImpl activeInstance];
    v16 = [v20 emojiString];
    v17 = UIKBAnalyticsEmojiSelectionMethodReturnKey;
    if (!v4)
    {
      v17 = UIKBAnalyticsEmojiSelectionMethodSpaceBar;
    }

    [v14 emojiSearchWillInsertEmoji:v16 forSearchQuery:v10 selectionMethod:*v17 inputType:@"PopoverSearch"];
  }

  else
  {
    v13 = +[UIKeyboardImpl activeInstance];
    v14 = v13;
    v15 = UIKBAnalyticsEmojiSelectionMethodReturnKey;
    if (!v4)
    {
      v15 = UIKBAnalyticsEmojiSelectionMethodSpaceBar;
    }

    [v13 insertedEmojiFromPopover:v20 selectionMethod:*v15];
  }

  if (v4)
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

- (int64_t)keyCodeForCurrentEnvironmentFromKeyCode:(int64_t)a3
{
  v4 = [(UIView *)self effectiveUserInterfaceLayoutDirection];
  v5 = 80;
  v6 = 79;
  if (a3 != 80)
  {
    v6 = a3;
  }

  if (a3 != 79)
  {
    v5 = v6;
  }

  if (v4 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    return v5;
  }

  else
  {
    return a3;
  }
}

- (void)updatePreferencesForSelectedEmoji:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = [v5 lastUsedInputModeForCurrentContext];
  v7 = [v6 primaryLanguage];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"en_US";
  }

  v13 = v9;
  v10 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [v10 emojiUsed:v4 language:v13];

  v11 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];

  if (v11)
  {
    v12 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
    [(UIKeyboardEmojiCollectionInputView *)self updateLastSeenItemForIndexPath:v12];
  }
}

- (void)updateLastSeenItemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardEmojiCategory categoryForType:](UIKeyboardEmojiCategory, "categoryForType:", -[UIKeyboardEmojiCollectionInputView emojiCategoryTypeForSection:](self, "emojiCategoryTypeForSection:", [v4 section]));
  [(UIKeyboardEmojiCollectionInputView *)self setCategory:v5];

  v6 = [v4 item];
  v7 = [(UIKeyboardEmojiCollectionInputView *)self category];
  [v7 setLastVisibleFirstEmojiIndex:v6];

  v9 = [(UIKeyboardEmojiCollectionInputView *)self category];
  v8 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [v8 setLastViewedCategory:v9];
}

- (void)resetSelectionIfNeeded
{
  v3 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];

  if (v3)
  {
    collectionView = self->_collectionView;
    v5 = [(UIKeyboardEmojiCollectionInputView *)self selectedIndexPath];
    [(UICollectionView *)collectionView deselectItemAtIndexPath:v5 animated:0];

    selectedIndexPath = self->_selectedIndexPath;
    self->_selectedIndexPath = 0;

    selectedPopupKey = self->_selectedPopupKey;
    self->_selectedPopupKey = 0;

    self->_showingVariants = 0;
  }
}

- (BOOL)keySupportsVariants:(id)a3
{
  v3 = a3;
  v4 = [v3 variantType] == 10 || objc_msgSend(v3, "variantType") == 12 || objc_msgSend(v3, "variantType") == 11 || objc_msgSend(v3, "variantType") == 13;

  return v4;
}

- (BOOL)cellShouldScrollWhenSelectedAtIndexPath:(id)a3
{
  collectionView = self->_collectionView;
  v5 = a3;
  [(UIView *)collectionView bounds];
  v22 = CGRectInset(v21, 10.0, 0.0);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v10 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v5];

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

- (void)emojiSearchTextFieldWillBecomeActive:(id)a3
{
  v4 = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchField];
  v5 = [(UIKBKeyView *)self renderConfig];
  [v4 _setRenderConfig:v5];

  collectionView = self->_collectionView;

  [(UIKeyboardEmojiCollectionView *)collectionView setIsInSearchPopover:1];
}

- (void)emojiSearchTextFieldDidBecomeActive:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  [v4 changePreferredEmojiSearchInputModeForInputDelegate:v3];
}

- (void)emojiSearchTextFieldWillBecomeInactive:(id)a3
{
  [(UIKeyboardEmojiCollectionInputView *)self setIsSearching:0];
  [(UIKeyboardEmojiCollectionView *)self->_collectionView setIsInSearchPopover:0];
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 clearForwardingInputDelegateAndResign:0];
}

- (void)emojiSearchTextFieldDidBecomeInactive:(id)a3
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 updateAssistantView];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"UIKeyboardSwitchedAwayFromEmoji" object:0];

  v7 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = [v5 hardwareInputMode];
  [v7 setCurrentInputMode:v6];
}

- (void)emojiSearchTextFieldWillClear:(id)a3
{
  [(UIKeyboardEmojiCollectionInputView *)self setIsSearching:0];
  [(UIKeyboardEmojiCollectionInputView *)self setSearchResults:MEMORY[0x1E695E0F0]];

  [(UIKeyboardEmojiCollectionInputView *)self resetSelectionIfNeeded];
}

- (void)emojiSearchTextFieldDidReset:(id)a3
{
  v4 = [(UIKeyboardEmojiCollectionInputView *)self isSearching];
  [(UIKeyboardEmojiCollectionInputView *)self setIsSearching:0];
  [(UIKeyboardEmojiCollectionInputView *)self resetSelectionIfNeeded];
  if (v4)
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

- (void)emojiSearchDidReceiveResults:(id)a3 forExactQuery:(id)a4 autocorrectedQuery:(id)a5
{
  v7 = a3;
  if ([a4 length])
  {
    v8 = [(UIKeyboardEmojiCollectionInputView *)self emojiSearchField];
    v9 = [v8 text];
    v10 = [v9 length];

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
      v15 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
      v16 = [v15 count];
      v17 = [v7 count];

      if (v16 == v17)
      {
        if ([v7 count])
        {
          v18 = [v7 firstObject];
          v19 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
          v20 = [v19 firstObject];
          v21 = [v18 isEqual:v20] ^ 1;
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

      v22 = [v7 copy];
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
    v12 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    [v12 reloadForCategory:-[UIKeyboardEmojiCollectionInputView emojiCategoryTypeForSection:](self withSender:{"emojiCategoryTypeForSection:", 0), self}];

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

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([(UIKeyboardEmojiCollectionInputView *)self isSearching])
  {
    v9 = [(UIKeyboardEmojiCollectionInputView *)self searchResults];
    if ([v9 count])
    {
    }

    else
    {
      v10 = [v8 section];

      if (!v10)
      {
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits emojiKeyWidth];
        v18 = v17;
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumInteritemSpacing];
        v20 = (v18 + v19 + 1.0) * 6.0;
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
        v12 = v20 + v21 + v21;
        [v7 bounds];
        Height = CGRectGetHeight(v36);
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits categoryHeaderHeight];
        v24 = Height - v23;
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits bottomPadding];
        v14 = v24 - v25;
        goto LABEL_9;
      }
    }
  }

  if (!-[UIKeyboardEmojiCollectionInputView _shouldShowRecentlyUsedMedia](self, "_shouldShowRecentlyUsedMedia") || [v8 section] || objc_msgSend(v8, "item"))
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits emojiKeyWidth];
    v12 = v11;
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits emojiKeyWidth];
    v14 = v13;
  }

  else
  {
    [v7 bounds];
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
      [v7 bounds];
      Width = CGRectGetWidth(v38);
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewLeftMostPadding];
      v33 = Width - v32;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewRightMostPadding];
      v12 = v33 - v34;
      [v7 bounds];
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

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:0, a4];
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits sectionOffset];
  v9 = v8;
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits bottomPadding];
  v11 = v10;
  v12 = [(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection];
  if (a5)
  {
    v13 = 1;
  }

  else
  {
    v13 = v7 <= 0;
  }

  v14 = !v13;
  if (v12 == UICollectionViewScrollDirectionVertical)
  {
    if ((v14 & 1) != 0 || a5 == 1 && !v7)
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
      if (v28 != a5)
      {
        v11 = v9;
      }
    }

    goto LABEL_20;
  }

  if ((v14 & 1) == 0 && (a5 != 1 || v7))
  {
    v24 = [(UICollectionView *)self->_collectionView numberOfSections]- 1;
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits topPadding];
    v26 = v25;
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits categoryHeaderHeight];
    v18 = v26 + v27;
    v20 = 0.0;
    if (v24 != a5)
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

- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 || ![(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia])
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

- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 || ![(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia])
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

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (!self->_hasShownAnimojiCell && -[UIKeyboardEmojiCollectionInputView _shouldShowRecentlyUsedMedia](self, "_shouldShowRecentlyUsedMedia") && ![v9 item] && !objc_msgSend(v9, "section"))
  {
    self->_hasShownAnimojiCell = 1;
    ADClientAddValueForScalarKey();
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_UIApplicationIsFirstPartyStickers())
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v15 = @"contentOffsetY";
    v6 = MEMORY[0x1E696AD98];
    [v4 contentOffset];
    v8 = [v6 numberWithDouble:v7];
    v16[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v5 postNotificationName:@"UIKeyboardEmojiCollectionInputViewDidScroll" object:0 userInfo:v9];
  }

  v10 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
  [v10 deactivateActiveKey];

  v11 = [(UIKeyboardEmojiCollectionInputView *)self firstFullyVisibleHeader];
  v12 = [v11 section];
  if (self->_currentSection != v12)
  {
    v13 = v12;
    self->_currentSection = v12;
    if (self->_isDraggingInputView)
    {
      v14 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
      [v14 reloadForCategory:-[UIKeyboardEmojiCollectionInputView emojiCategoryTypeForSection:](self withSender:{"emojiCategoryTypeForSection:", v13), self}];
    }
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  self->_isDraggingInputView = 1;
  [(UIKeyboardEmojiCollectionInputView *)self snappedXOffsetForOffset:0 scrubbing:a5->x, a4.y];
  a5->x = v6;
}

- (id)itemInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__129;
  v16 = __Block_byref_object_dispose__129;
  v17 = 0;
  v7 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  v8 = [v7 layoutAttributesForElementsInRect:{x, y, width, height}];
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

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  self->_isDraggingInputView = 0;
  v5 = [(UIKeyboardEmojiCollectionInputView *)self firstFullyVisibleHeader];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__129;
  v18 = __Block_byref_object_dispose__129;
  v19 = 0;
  v6 = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __67__UIKeyboardEmojiCollectionInputView_scrollViewDidEndDecelerating___block_invoke;
  v11 = &unk_1E7116100;
  v7 = v5;
  v12 = v7;
  v13 = &v14;
  [v6 enumerateObjectsUsingBlock:&v8];

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

- (double)_recentlyUsedMediaRoundedOffset:(double)a3 recentlyUsedMediaCellWidth:(double)a4
{
  v7 = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
  [v7 inputViewLeftMostPadding];
  v9 = v8;
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits columnOffset];
  v11 = v10;

  v12 = 3;
  if (self->_useWideAnimojiCell)
  {
    v12 = 4;
  }

  v13 = a4 / v12;
  if (v13 > a3)
  {
    return a4 / v12;
  }

  for (i = 2; i != v12; ++i)
  {
    result = v13 * i;
    if (result > a3)
    {
      break;
    }
  }

  if (i >= v12)
  {
    return v11 - v9 + a4;
  }

  return result;
}

- (double)snappedXOffsetForOffset:(double)a3 scrubbing:(BOOL)a4
{
  [(UIScrollView *)self->_collectionView contentSize];
  [(UIKeyboardEmojiCollectionInputView *)self distanceInScrollingDirection:?];
  v8 = v7;
  [(UIView *)self->_collectionView bounds];
  [(UIKeyboardEmojiCollectionInputView *)self distanceInScrollingDirection:v9, v10];
  v12 = v8 - v11;
  [(UIKeyboardEmojiCollectionInputView *)self scrollingEndPoint];
  if (v12 - v13 < a3)
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
  if (v22 > a3)
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

  if (![(UIKeyboardEmojiCollectionInputView *)self _shouldShowRecentlyUsedMedia]|| v27 <= a3 || a4)
  {
    if ([(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection])
    {
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits categoryHeaderHeight];
      v30 = v29;
      v31 = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
      [v31 emojiKeyWidth];
      v33 = v32;
      v34 = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
      [v34 columnOffset];
      v36 = v33 + v35;
      [(UIView *)self->_collectionView bounds];
      v38 = v37;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits categoryHeaderHeight];
      v40 = v38 - v39;
      v41 = a3;
      a3 = v30;
    }

    else
    {
      [(UIView *)self->_collectionView bounds];
      v36 = v42;
      v31 = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
      [v31 emojiKeyWidth];
      v44 = v43;
      v34 = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
      [v34 columnOffset];
      v40 = v44 + v45;
      v41 = 0.0;
    }

    v46 = [(UIKeyboardEmojiCollectionInputView *)self itemInRect:v41, a3, v36, v40];
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

  [(UIKeyboardEmojiCollectionInputView *)self _recentlyUsedMediaRoundedOffset:a3 recentlyUsedMediaCellWidth:v27];
  return result;
}

- (int64_t)indexForPrettyCategoryDisplay:(id)a3
{
  v4 = a3;
  if (self->_collectionView && (-[UIKeyboardEmojiCollectionInputView category](self, "category"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 categoryType], v5, v7 = -[UICollectionView numberOfItemsInSection:](self->_collectionView, "numberOfItemsInSection:", +[UIKeyboardEmojiCategory categoryIndexForCategoryType:](UIKeyboardEmojiCategory, "categoryIndexForCategoryType:", v6)), objc_msgSend(v4, "lastVisibleFirstEmojiIndex") >= v7))
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = [v4 lastVisibleFirstEmojiIndex];
  }

  return v8;
}

- (void)didMoveToWindow
{
  v2 = self;
  v38.receiver = self;
  v38.super_class = UIKeyboardEmojiCollectionInputView;
  [(UIView *)&v38 didMoveToWindow];
  [(UIView *)v2->_collectionView layoutIfNeeded];
  v3 = [(UIKeyboardEmojiKeyView *)v2 emojiKeyManager];
  v4 = [v3 lastViewedCategory];
  objc_storeWeak(&v2->_category, v4);

  v5 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v6 = MEMORY[0x1E696AD98];
  WeakRetained = objc_loadWeakRetained(&v2->_category);
  v8 = [v6 numberWithInteger:{objc_msgSend(WeakRetained, "categoryType")}];
  v9 = [v5 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v10 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
    v11 = [v10 firstObject];
    v12 = [v11 integerValue];

    v13 = [UIKeyboardEmojiCategory categoryForType:v12];
    objc_storeWeak(&v2->_category, v13);
  }

  v14 = objc_loadWeakRetained(&v2->_category);
  v2->_currentSection = +[UIKeyboardEmojiCategory categoryIndexForCategoryType:](UIKeyboardEmojiCategory, "categoryIndexForCategoryType:", [v14 categoryType]);

  v15 = [(UIView *)v2 window];

  if (v15)
  {
    if (v2->_inputDelegateCanSupportAnimoji && !v2->_hasShownAnimojiFirstTimeExperience && [(UIKeyboardEmojiCollectionInputView *)v2 _shouldShowRecentlyUsedMedia])
    {
      v16 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    }

    else
    {
      v17 = [(UIKeyboardEmojiCollectionInputView *)v2 category];
      v18 = +[UIKeyboardEmojiCategory categoryIndexForCategoryType:](UIKeyboardEmojiCategory, "categoryIndexForCategoryType:", [v17 categoryType]);

      v19 = MEMORY[0x1E696AC88];
      v20 = [(UIKeyboardEmojiCollectionInputView *)v2 category];
      v16 = [v19 indexPathForItem:-[UIKeyboardEmojiCollectionInputView indexForPrettyCategoryDisplay:](v2 inSection:{"indexForPrettyCategoryDisplay:", v20), v18}];
    }

    v21 = [(UICollectionView *)v2->_collectionView layoutAttributesForItemAtIndexPath:v16];
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
    v31 = [(UIKeyboardEmojiCollectionView *)v2->_collectionView emojiGraphicsTraits];
    [v31 inputViewLeftMostPadding];
    v33 = MinX - v32;

    [(UIKeyboardEmojiCollectionInputView *)v2 snappedXOffsetForOffset:0 scrubbing:v33];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __53__UIKeyboardEmojiCollectionInputView_didMoveToWindow__block_invoke;
    v37[3] = &unk_1E70F32F0;
    v37[4] = v2;
    v37[5] = v34;
    [UIView performWithoutAnimation:v37];
  }

  v35 = [(UIView *)v2 window];
  if (!v35)
  {
    v2 = 0;
  }

  v36 = +[UIKeyboardMediaController sharedKeyboardMediaController];
  [v36 setDelegate:v2];
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

- (void)updateToCategory:(int64_t)a3
{
  v5 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
  [v5 deactivateActiveKey];

  [(UIKeyboardEmojiCollectionInputView *)self resetSelectionIfNeeded];
  v6 = [(UIKeyboardEmojiCollectionInputView *)self category];
  v7 = [v6 categoryType];

  if (v7 == a3)
  {
    if (a3)
    {
      v8 = 1;
    }

    else
    {
      v12 = [(UIKeyboardEmojiCollectionInputView *)self category];
      v8 = [v12 lastVisibleFirstEmojiIndex] != 1 || self->_isDraggingInputView;
    }

    v13 = [(UIKeyboardEmojiCollectionInputView *)self category];
    [v13 setLastVisibleFirstEmojiIndex:v8];

    v11 = [(UIKeyboardEmojiCollectionInputView *)self category];
  }

  else
  {
    v50 = [UIKeyboardEmojiCategory categoryForType:a3];
    v9 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    [v50 setLastVisibleFirstEmojiIndex:{objc_msgSend(v9, "lastVisibleFirstEmojiIndexforCategory:", v50)}];

    if (!a3 && ![v50 lastVisibleFirstEmojiIndex])
    {
      [v50 setLastVisibleFirstEmojiIndex:1];
    }

    [(UIKeyboardEmojiCollectionInputView *)self setCategory:v50];
    v10 = [(UIKeyboardEmojiCollectionInputView *)self category];
    v8 = [(UIKeyboardEmojiCollectionInputView *)self indexForPrettyCategoryDisplay:v10];

    v11 = v50;
  }

  v51 = v11;
  v14 = +[UIKeyboardEmojiCategory categoryIndexForCategoryType:](UIKeyboardEmojiCategory, "categoryIndexForCategoryType:", [v11 categoryType]);
  collectionView = self->_collectionView;
  v16 = [MEMORY[0x1E696AC88] indexPathForItem:v8 inSection:v14];
  v17 = [(UICollectionView *)collectionView layoutAttributesForItemAtIndexPath:v16];
  [v17 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection];
  v27 = v19;
  v28 = v21;
  v29 = v23;
  v30 = v25;
  if (v26)
  {
    MinX = CGRectGetMinX(*&v27);
    v32 = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
    [v32 inputViewLeftMostPadding];
    v34 = MinX - v33;

    [(UIKeyboardEmojiCollectionInputView *)self snappedXOffsetForOffset:0 scrubbing:v34];
    v36 = v35;
    [(UIScrollView *)self->_collectionView contentOffset];
    v38 = v37;
  }

  else
  {
    MinY = CGRectGetMinY(*&v27);
    v40 = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
    [v40 categoryHeaderHeight];
    v42 = MinY - v41;
    v43 = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
    [v43 sectionOffset];
    v38 = v42 - v44;

    [(UIScrollView *)self->_collectionView contentOffset];
    v36 = v45;
  }

  [(UIView *)self->_collectionView bounds];
  v47 = v46;
  [(UIView *)self->_collectionView bounds];
  [(UIScrollView *)self->_collectionView scrollRectToVisible:0 animated:v36, v38, v47];
  v48 = [(UIKeyboardEmojiCollectionInputView *)self category];
  v49 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [v49 setLastViewedCategory:v48];
}

- (void)updateOffsetForSearchResults
{
  v3 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
  [v3 deactivateActiveKey];

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
  v16 = [(UIKeyboardEmojiCollectionView *)self->_collectionView emojiGraphicsTraits];
  [v16 inputViewLeftMostPadding];
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
  v26 = [(UIKeyboardEmojiCollectionInputView *)self category];
  v27 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [v27 setLastViewedCategory:v26];
}

- (double)pointInScrollingDirection:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection])
  {
    return x;
  }

  else
  {
    return y;
  }
}

- (double)distanceInScrollingDirection:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v3 = [(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection];
  emojiGraphicsTraits = self->_emojiGraphicsTraits;
  if (v3)
  {

    [(UIKeyboardEmojiGraphicsTraits *)emojiGraphicsTraits inputViewRightMostPadding];
  }

  else
  {

    [(UIKeyboardEmojiGraphicsTraits *)emojiGraphicsTraits bottomPadding];
  }

  return result;
}

- (int64_t)updateToCategoryWithOffsetPercentage:(double)a3
{
  v5 = [(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection];
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
  v17 = v16 * 0.5 * round(ceil(v13 / (v16 * 0.5)) * a3);
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits emojiKeyWidth];
  v19 = v18;
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits columnOffset];
  [(UIKeyboardEmojiCollectionInputView *)self snappedXOffsetForOffset:1 scrubbing:(v19 + v20 + v20) * round(v17 / (v19 + v20 + v20))];
  v22 = v9 + v21;
  [(UIScrollView *)self->_collectionView contentOffset];
  if (v5)
  {
    v25 = v22;
  }

  else
  {
    v25 = v23;
  }

  if (v5)
  {
    v22 = v24;
  }

  collectionView = self->_collectionView;
  [(UIView *)collectionView bounds];
  v28 = v27;
  [(UIView *)self->_collectionView bounds];
  [(UIScrollView *)collectionView scrollRectToVisible:0 animated:v25, v22, v28];
  v29 = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v30 = [v29 sortedArrayUsingSelector:sel_compare_];

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