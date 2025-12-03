@interface UIKeyboardLayoutCursor
+ (CGSize)keyboardSizeForInputMode:(id)mode screenTraits:(id)traits keyboardType:(int64_t)type;
+ (id)carKeyboardNameForKeyboard:(id)keyboard screenTraits:(id)traits;
- (BOOL)_handleMoveWithEvent:(id)event;
- (BOOL)_handlePresses:(id)presses withEvent:(id)event;
- (BOOL)_handleRemoteControlReceivedWithEvent:(id)event;
- (BOOL)_handleWheelChangedWithEvent:(id)event;
- (BOOL)_isKeyboardReverseOfAppLayoutDirection;
- (BOOL)_menuTapShouldExitVariants;
- (BOOL)_menuTapShouldStopDictation;
- (BOOL)canHandlePresses:(id)presses withEvent:(id)event;
- (BOOL)canMultitap;
- (BOOL)diacriticForwardCompose;
- (BOOL)handleLinearDirectionalInput:(int)input;
- (BOOL)handleVisualDirectionalInput:(int)input;
- (BOOL)ignoresShiftState;
- (BOOL)isAlphabeticPlane;
- (BOOL)isKanaPlane;
- (BOOL)isKeyboardRightToLeft;
- (BOOL)isKeyplaneDisabledWithName:(id)name;
- (BOOL)refreshSelectedCellIfNecessaryForKey:(id)key animated:(BOOL)animated;
- (BOOL)shouldMergeKey:(id)key;
- (BOOL)shouldToggleKeyplaneWithName:(id)name;
- (BOOL)usesAutoShift;
- (CGRect)selectionFrameForKeyIndex:(int64_t)index;
- (UIKBTree)currentKey;
- (UIKeyboardLayoutCursor)initWithFrame:(CGRect)frame;
- (UIWindow)focusWindow;
- (id)_keyplaneForKeyplaneProperties;
- (id)cacheTokenForKeyplane:(id)keyplane;
- (id)keyHitTestInSameRowAsCenter:(CGPoint)center size:(CGSize)size;
- (id)keyViewAnimator;
- (int)activeStateForKey:(id)key;
- (int)enabledStateForKey:(id)key;
- (int)stateForKeyplaneSwitchKey:(id)key;
- (int64_t)defaultSelectedVariantIndexForKey:(id)key withActions:(unint64_t)actions;
- (int64_t)targetKeyIndexAtOffset:(CGPoint)offset fromKey:(id)key;
- (int64_t)targetKeyIndexFromPoint:(CGPoint)point inKeys:(id)keys;
- (unint64_t)_indexOfFirstKeyPassingTest:(id)test;
- (unint64_t)cursorLocation;
- (unint64_t)downActionFlagsForKey:(id)key;
- (unint64_t)getNextKeyplaneIndex:(unint64_t)index;
- (unint64_t)variantCountForKey:(id)key;
- (void)_moveWithEvent:(id)event;
- (void)_wheelChangedWithEvent:(id)event;
- (void)acceptRecentInputIfNecessary;
- (void)alertDidDismiss;
- (void)clearVariantStateForKey:(id)key;
- (void)configureFloatingContentViewsIfNeeded;
- (void)deactivateKey:(id)key;
- (void)dealloc;
- (void)didSelectRecentInputString:(id)string;
- (void)endMultitapForKey:(id)key;
- (void)handleVariantDeleteIfNecessaryForKey:(id)key;
- (void)longPressAction;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)remoteControlReceivedWithEvent:(id)event;
- (void)restoreFocusFromEntryPoint:(CGPoint)point;
- (void)returnToKeyplaneAfterDictation;
- (void)runWithSuppressedActions:(id)actions;
- (void)selectInitialKeyIfNecessary;
- (void)setCursorLocation:(unint64_t)location;
- (void)setHighlightedVariantIndex:(int64_t)index key:(id)key;
- (void)setKeyboardAppearance:(int64_t)appearance;
- (void)setKeyboardName:(id)name appearance:(int64_t)appearance;
- (void)setKeyplaneName:(id)name;
- (void)setRecentInputs:(id)inputs;
- (void)setRenderConfig:(id)config;
- (void)setSelectedKeyIndex:(int64_t)index;
- (void)setShift:(BOOL)shift;
- (void)showKeyboardWithInputTraits:(id)traits screenTraits:(id)screenTraits splitTraits:(id)splitTraits;
- (void)showPopupKeyplaneSwitcher;
- (void)showRecentInputsAlert;
- (void)switchToDictationKeyplaneWithActivationIdentifier:(id)identifier;
- (void)takeKeyAction:(id)action;
- (void)updateDictationHelpString;
- (void)updateKeyplaneSwitchEdgeBiases;
- (void)updateRecentInputsKeyIfNecessary;
- (void)willMoveToWindow:(id)window;
@end

@implementation UIKeyboardLayoutCursor

- (UIKeyboardLayoutCursor)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIKeyboardLayoutCursor;
  v3 = [(UIKeyboardLayoutStar *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    *(v3 + 195) = 0x7FFFFFFFFFFFFFFFLL;
    *(v3 + 208) = 0x7FFFFFFFFFFFFFFFLL;
    v3[1643] = 1;
    v3[1644] = 1;
    *(v3 + 1624) = *MEMORY[0x1E695EFF8];
    v3[1640] = 0;
    *(v3 + 209) = 0x7FFFFFFFFFFFFFFFLL;
    [v3 setOpaque:0];
  }

  return v4;
}

- (void)dealloc
{
  _shouldRestoreSelectedKeyIndex = 1;
  [(UIView *)self->_selectionView removeFromSuperview];
  v3.receiver = self;
  v3.super_class = UIKeyboardLayoutCursor;
  [(UIKeyboardLayoutStar *)&v3 dealloc];
}

- (void)willMoveToWindow:(id)window
{
  v4.receiver = self;
  v4.super_class = UIKeyboardLayoutCursor;
  [(UIKeyboardLayoutStar *)&v4 willMoveToWindow:window];
  [(UIKeyboardLayoutCursor *)self setShouldToggleLetterCaseNext:1];
}

- (void)runWithSuppressedActions:(id)actions
{
  self->_suppressOperations = 1;
  (*(actions + 2))(actions, a2);
  self->_suppressOperations = 0;
}

- (UIKBTree)currentKey
{
  selectedKeyIndex = self->_selectedKeyIndex;
  if (selectedKeyIndex == 0x7FFFFFFFFFFFFFFFLL || selectedKeyIndex >= [(NSArray *)self->_keyplaneKeys count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_keyplaneKeys objectAtIndex:self->_selectedKeyIndex];
  }

  return v4;
}

- (unint64_t)variantCountForKey:(id)key
{
  keyCopy = key;
  v5 = [(UIKBKeyplaneView *)self->super._keyplaneView viewForKey:keyCopy];
  v6 = v5;
  if (v5)
  {
    focusableVariantCount = [v5 focusableVariantCount];
  }

  else
  {
    subtrees = [keyCopy subtrees];
    focusableVariantCount = [subtrees count];
  }

  return focusableVariantCount;
}

- (void)configureFloatingContentViewsIfNeeded
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __63__UIKeyboardLayoutCursor_configureFloatingContentViewsIfNeeded__block_invoke;
  v2[3] = &unk_1E70F38C0;
  v2[4] = self;
  v3 = xmmword_18A67F4A0;
  v4 = 0x4024000000000000;
  if (configureFloatingContentViewsIfNeeded_onceToken != -1)
  {
    dispatch_once(&configureFloatingContentViewsIfNeeded_onceToken, v2);
  }
}

void __63__UIKeyboardLayoutCursor_configureFloatingContentViewsIfNeeded__block_invoke(double *a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
  v19[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v4 = [(UIView *)_UIFloatingContentView appearanceForTraitCollection:v2 whenContainedInInstancesOfClasses:v3];

  [v4 setCornerRadius:a1[5]];
  [v4 setAsymmetricFocusedSizeIncrease:{a1[6], a1[7]}];
  [v4 set_disableOutsetShadowPath:1];
  v5 = +[UIColor whiteColor];
  [v4 setBackgroundColor:v5 forState:8];

  v6 = +[UIColor whiteColor];
  [v4 setBackgroundColor:v6 forState:1];

  v7 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1000];
  v18 = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v9 = [(UIView *)_UIFloatingContentView appearanceForTraitCollection:v7 whenContainedInInstancesOfClasses:v8];

  [v9 setCornerRadius:a1[5]];
  [v9 setAsymmetricFocusedSizeIncrease:{a1[6], a1[7]}];
  [v9 set_disableOutsetShadowPath:1];
  v10 = [UIColor colorWithWhite:1.0 alpha:0.8];
  [v9 setBackgroundColor:v10 forState:8];

  v11 = [UIColor colorWithWhite:1.0 alpha:0.8];
  [v9 setBackgroundColor:v11 forState:1];

  v12 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  v17 = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v14 = [(UIView *)_UIFloatingContentView appearanceForTraitCollection:v12 whenContainedInInstancesOfClasses:v13];

  [v14 setCornerRadius:a1[5]];
  [v14 setAsymmetricFocusedSizeIncrease:{a1[6], a1[7]}];
  [v14 set_disableOutsetShadowPath:1];
  v15 = [UIColor colorWithWhite:1.0 alpha:0.8];
  [v14 setBackgroundColor:v15 forState:8];

  v16 = [UIColor colorWithWhite:1.0 alpha:0.8];
  [v14 setBackgroundColor:v16 forState:1];
}

- (id)keyViewAnimator
{
  if ([(UIKeyboardLayout *)self idiom]== 2)
  {
    if (!self->super._keyViewAnimator)
    {
      v3 = objc_alloc_init(UIKBKeyViewAnimatorMonolith);
      keyViewAnimator = self->super._keyViewAnimator;
      self->super._keyViewAnimator = &v3->super;
    }

    keyplaneView = self->super._keyplaneView;
    if (keyplaneView)
    {
      keyViewAnimator = [(UIKBKeyplaneView *)keyplaneView keyViewAnimator];
      v7 = self->super._keyViewAnimator;

      if (keyViewAnimator != v7)
      {
        [(UIKBKeyplaneView *)self->super._keyplaneView setKeyViewAnimator:self->super._keyViewAnimator];
      }
    }

    keyViewAnimator2 = self->super._keyViewAnimator;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKeyboardLayoutCursor;
    keyViewAnimator2 = [(UIKeyboardLayoutStar *)&v10 keyViewAnimator];
  }

  return keyViewAnimator2;
}

- (void)showKeyboardWithInputTraits:(id)traits screenTraits:(id)screenTraits splitTraits:(id)splitTraits
{
  v8 = _shouldRestoreSelectedKeyIndex;
  splitTraitsCopy = splitTraits;
  screenTraitsCopy = screenTraits;
  traitsCopy = traits;
  if (v8 == 1)
  {
    currentKey = [(UIKeyboardLayoutCursor *)self currentKey];
    [(UIKeyboardLayoutCursor *)self deactivateKey:currentKey];

    self->_selectedKeyIndex = _savedSelectedKeyIndex;
    _shouldRestoreSelectedKeyIndex = 0;
  }

  else
  {
    [(UIKeyboardLayoutCursor *)self setSelectedKeyIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  [(UIKeyboardLayoutCursor *)self configureFloatingContentViewsIfNeeded];
  v13.receiver = self;
  v13.super_class = UIKeyboardLayoutCursor;
  [(UIKeyboardLayoutStar *)&v13 showKeyboardWithInputTraits:traitsCopy screenTraits:screenTraitsCopy splitTraits:splitTraitsCopy];

  [(UIKeyboardLayoutCursor *)self selectInitialKeyIfNecessary];
}

+ (id)carKeyboardNameForKeyboard:(id)keyboard screenTraits:(id)traits
{
  keyboardCopy = keyboard;
  traitsCopy = traits;
  if ([traitsCopy idiom] == 3 && ((objc_msgSend(traitsCopy, "knobInput") & 1) != 0 || objc_msgSend(traitsCopy, "touchpadInput")))
  {
    v7 = [keyboardCopy subtreeWithName:@"capital-letters"];
    v8 = @"Alphabetic";
    if (!v7)
    {
      v8 = @"Uncased";
    }

    v9 = v8;

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Car-%@-Linear-Keyboard", v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (CGSize)keyboardSizeForInputMode:(id)mode screenTraits:(id)traits keyboardType:(int64_t)type
{
  traitsCopy = traits;
  v9 = UIKeyboardGetKBStarName(mode, traitsCopy, type, 0);
  v10 = [self keyboardWithName:v9 screenTraits:traitsCopy];
  v11 = [self carKeyboardNameForKeyboard:v10 screenTraits:traitsCopy];

  if (v11)
  {
    v12 = [self keyboardWithName:v11 screenTraits:traitsCopy];

    v10 = v12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 frame];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__UIKeyboardLayoutCursor_keyboardSizeForInputMode_screenTraits_keyboardType___block_invoke;
    v19[3] = &unk_1E70F35B8;
    v20 = v11;
    v21 = v10;
    if (keyboardSizeForInputMode_screenTraits_keyboardType__once != -1)
    {
      dispatch_once(&keyboardSizeForInputMode_screenTraits_keyboardType__once, v19);
    }

    v14 = *MEMORY[0x1E695F060];
    v16 = *(MEMORY[0x1E695F060] + 8);
  }

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

void __77__UIKeyboardLayoutCursor_keyboardSizeForInputMode_screenTraits_keyboardType___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference__UIATVClearBeforeDictation_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Error: LayoutCursor keyboardName %@ resulted in %@", &v5, 0x16u);
  }
}

- (void)setKeyboardName:(id)name appearance:(int64_t)appearance
{
  nameCopy = name;
  v7 = [objc_opt_class() keyboardWithName:nameCopy screenTraits:self->super.super._screenTraits];
  v8 = [objc_opt_class() carKeyboardNameForKeyboard:v7 screenTraits:self->super.super._screenTraits];
  if (v8)
  {
    objc_storeStrong(&self->_indirectKeyboard, v7);
    v9 = v8;

    nameCopy = v9;
  }

  v10.receiver = self;
  v10.super_class = UIKeyboardLayoutCursor;
  [(UIKeyboardLayoutStar *)&v10 setKeyboardName:nameCopy appearance:appearance];
}

- (void)setKeyboardAppearance:(int64_t)appearance
{
  self->super._appearance = appearance;
  visualStyle = [(UIKBTree *)self->super._keyboard visualStyle];
  keyplane = self->super._keyplane;

  [(UIKBTree *)keyplane setVisualStyle:visualStyle];
}

- (void)setRenderConfig:(id)config
{
  v4.receiver = self;
  v4.super_class = UIKeyboardLayoutCursor;
  [(UIKeyboardLayoutStar *)&v4 setRenderConfig:config];
  [(UIKeyboardLayoutCursor *)self updateDictationHelpString];
}

- (id)cacheTokenForKeyplane:(id)keyplane
{
  keyplaneCopy = keyplane;
  if ([(UIKeyboardLayout *)self idiom]== 2)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIKeyboardLayoutCursor;
    v5 = [(UIKeyboardLayoutCursor *)&v7 cacheTokenForKeyplane:keyplaneCopy];
  }

  return v5;
}

- (void)setKeyplaneName:(id)name
{
  v105[4] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (![(UIKeyboardLayoutCursor *)self suppressOperations])
  {
    currentKey = [(UIKeyboardLayoutCursor *)self currentKey];
    currentKey2 = [(UIKeyboardLayoutCursor *)self currentKey];
    [currentKey2 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    p_keyplaneSwitchSelectedKeyFrameCenter = &self->_keyplaneSwitchSelectedKeyFrameCenter;
    x = self->_keyplaneSwitchSelectedKeyFrameCenter.x;
    y = self->_keyplaneSwitchSelectedKeyFrameCenter.y;
    if (x == *MEMORY[0x1E695EFF8] && y == *(MEMORY[0x1E695EFF8] + 8))
    {
      [currentKey frame];
      x = CGRectGetMidX(v106);
      [currentKey frame];
      y = CGRectGetMidY(v107);
    }

    v103.receiver = self;
    v103.super_class = UIKeyboardLayoutCursor;
    [(UIKeyboardLayoutStar *)&v103 setKeyplaneName:nameCopy];
    if (-[UIKBScreenTraits idiom](self->super.super._screenTraits, "idiom") == 3 && (-[UIKBTree visualStyling](self->super._keyplane, "visualStyling") & 0xFF0000) == 0x2A0000 && (-[UIKeyboardLayoutStar renderConfig](self, "renderConfig"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 colorAdaptiveBackground], v19, v20))
    {
      v21 = [(UIKBTree *)self->super._keyplane keysOrderedByPositionLinear:[(UIKeyboardLayoutCursor *)self isAppRightToLeft]];
    }

    else
    {
      isAppRightToLeft = [(UIKeyboardLayoutCursor *)self isAppRightToLeft];
      keyplane = self->super._keyplane;
      if (isAppRightToLeft)
      {
        [(UIKBTree *)keyplane keysOrderedByPositionRTL];
      }

      else
      {
        [(UIKBTree *)keyplane keysOrderedByPosition];
      }
      v21 = ;
    }

    keyplaneKeys = self->_keyplaneKeys;
    self->_keyplaneKeys = v21;

    indirectKeyboard = self->_indirectKeyboard;
    if (indirectKeyboard)
    {
      v26 = self->super._keyplane;
      if (v26)
      {
        obj = nameCopy;
        unhashedName = [(UIKBTree *)v26 unhashedName];
        v28 = [(UIKBTree *)indirectKeyboard subtreeWithName:unhashedName];

        subtrees = [v28 subtrees];
        firstObject = [subtrees firstObject];

        v31 = [(UIKBTree *)self->super._keyplane firstCachedKeyWithName:@"Letter-Line-Key"];
        keys = [firstObject keys];
        v33 = [keys mutableCopy];

        v34 = currentKey;
        if (qword_1ED49AF08 != -1)
        {
          dispatch_once(&qword_1ED49AF08, &__block_literal_global_362);
        }

        v35 = _MergedGlobals_47;
        firstObject2 = [v33 firstObject];
        representedString = [firstObject2 representedString];
        LODWORD(v35) = [v35 characterIsMember:{objc_msgSend(representedString, "characterAtIndex:", 0)}];

        if (v35)
        {
          array = [MEMORY[0x1E695DF70] array];
          array2 = [MEMORY[0x1E695DF70] array];
          v100[0] = MEMORY[0x1E69E9820];
          v100[1] = 3221225472;
          v100[2] = __42__UIKeyboardLayoutCursor_setKeyplaneName___block_invoke_2;
          v100[3] = &unk_1E7114750;
          v101 = array;
          v102 = array2;
          v40 = array2;
          v41 = array;
          [v33 enumerateObjectsUsingBlock:v100];
          [v33 removeAllObjects];
          [v33 addObjectsFromArray:v41];
          [v33 addObjectsFromArray:v40];
        }

        else
        {
          [v33 sortUsingComparator:&__block_literal_global_93_0];
        }

        currentKey = v34;
        [v31 setSubtrees:v33];
        [(UIKeyboardLayoutStar *)self setState:[(UIKeyboardLayoutCursor *)self enabledStateForKey:v31] forKey:v31];
        currentKey3 = [(UIKeyboardLayoutCursor *)self currentKey];
        subtrees2 = [currentKey3 subtrees];

        nameCopy = obj;
        if (!subtrees2)
        {
          [(UIKeyboardLayoutStar *)self setState:[(UIKeyboardLayoutCursor *)self activeStateForKey:currentKey3] forKey:currentKey3];
        }

        goto LABEL_86;
      }
    }

    if ([(UIKeyboardLayout *)self idiom]!= 2)
    {
LABEL_86:

      goto LABEL_87;
    }

    if ([(UIKeyboardLayoutCursor *)self selectedKeyBeforeDictation]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if (currentKey && !self->_selectInitialKey)
      {
        currentKey4 = [(UIKeyboardLayoutCursor *)self currentKey];
        if ([currentKey4 interactionType] == 3)
        {
          candidateList = [(UIKeyboardLayoutStar *)self candidateList];
          hasCandidates = [candidateList hasCandidates];

          if (hasCandidates)
          {
            goto LABEL_78;
          }
        }

        else
        {
        }

        currentKey5 = [(UIKeyboardLayoutCursor *)self currentKey];
        interactionType = [currentKey5 interactionType];

        if (interactionType == 3)
        {
          goto LABEL_71;
        }

        v51 = [(UIKeyboardLayoutCursor *)self keyHitTestInSameRowAsCenter:x size:y, v12, v14];
        interactionType2 = [v51 interactionType];
        if (interactionType2 == [currentKey interactionType])
        {
LABEL_69:
          if (v51)
          {
            v77 = [(NSArray *)self->_keyplaneKeys indexOfObject:v51];
LABEL_77:
            [(UIKeyboardLayoutCursor *)self setSelectedKeyIndex:v77];

            goto LABEL_78;
          }

LABEL_71:
          v78 = self->_keyplaneKeys;
          if ([(UIKeyboardLayoutStar *)self hasCandidateKeys])
          {
            v79 = [(NSArray *)self->_keyplaneKeys mutableCopy];
            v80 = [(UIKBTree *)self->super._keyplane cachedKeysByKeyName:@"Candidate-Selection"];
            [v79 removeObjectsInArray:v80];
            v81 = v79;

            v77 = [(UIKeyboardLayoutCursor *)self targetKeyIndexFromPoint:v81 inKeys:x, y];
            if (v77 != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v81 = v78;
          }

          v77 = [(UIKeyboardLayoutCursor *)self targetKeyIndexFromPoint:x, y];
LABEL_76:

          v51 = 0;
          goto LABEL_77;
        }

        v92 = v51;
        keyboard = [(UIKeyboardLayoutStar *)self keyboard];
        name = [keyboard name];
        v55 = [name containsString:@"Linear"];

        if (v55)
        {
LABEL_68:
          v51 = v92;
          goto LABEL_69;
        }

        displayString = [v92 displayString];
        if ([displayString length])
        {
          name2 = [v92 name];
          v58 = [name2 containsString:@"Empty-Key"];

          if (!v58)
          {
            goto LABEL_44;
          }
        }

        else
        {
        }

        v92 = 0;
LABEL_44:
        v91 = currentKey;
        v108.origin.x = v8;
        v108.origin.y = v10;
        v108.size.width = v12;
        v108.size.height = v14;
        v59 = [MEMORY[0x1E696B098] valueWithCGPoint:{x - CGRectGetWidth(v108), y}];
        v109.origin.x = v8;
        v109.origin.y = v10;
        v109.size.width = v12;
        v109.size.height = v14;
        v60 = [MEMORY[0x1E696B098] valueWithCGPoint:{x + CGRectGetWidth(v109), y}];
        if ([(UIKeyboardLayoutCursor *)self isKeyboardRightToLeft])
        {
          v61 = v60;
        }

        else
        {
          v61 = v59;
        }

        v105[0] = v61;
        v89 = v60;
        v90 = v59;
        if ([(UIKeyboardLayoutCursor *)self isKeyboardRightToLeft])
        {
          v62 = v59;
        }

        else
        {
          v62 = v60;
        }

        v105[1] = v62;
        v110.origin.x = v8;
        v110.origin.y = v10;
        v110.size.width = v12;
        v110.size.height = v14;
        v63 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y - CGRectGetHeight(v110)}];
        v105[2] = v63;
        v111.origin.x = v8;
        v111.origin.y = v10;
        v111.size.width = v12;
        v111.size.height = v14;
        v64 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y + CGRectGetHeight(v111)}];
        v105[3] = v64;
        v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:4];

        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        obja = v65;
        v66 = [obja countByEnumeratingWithState:&v96 objects:v104 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v97;
          while (2)
          {
            v69 = 0;
            v93 = v67;
            do
            {
              if (*v97 != v68)
              {
                objc_enumerationMutation(obja);
              }

              [*(*(&v96 + 1) + 8 * v69) CGPointValue];
              v70 = [(UIKeyboardLayoutStar *)self keyHitTest:?];
              v71 = v70;
              if (v70)
              {
                displayString2 = [v70 displayString];
                if ([displayString2 length])
                {
                  v73 = v68;
                  name3 = [v71 name];
                  v75 = [name3 containsString:@"Empty-Key"];

                  if (v75)
                  {
                    v68 = v73;
                    p_keyplaneSwitchSelectedKeyFrameCenter = &self->_keyplaneSwitchSelectedKeyFrameCenter;
                    v67 = v93;
                  }

                  else
                  {
                    v68 = v73;
                    if (!v92)
                    {
                      v92 = v71;
                    }

                    interactionType3 = [v71 interactionType];
                    p_keyplaneSwitchSelectedKeyFrameCenter = &self->_keyplaneSwitchSelectedKeyFrameCenter;
                    v67 = v93;
                    if (interactionType3 == [v91 interactionType])
                    {

                      v92 = v71;
                      goto LABEL_67;
                    }
                  }
                }

                else
                {
                }
              }

              ++v69;
            }

            while (v67 != v69);
            v67 = [obja countByEnumeratingWithState:&v96 objects:v104 count:16];
            if (v67)
            {
              continue;
            }

            break;
          }
        }

LABEL_67:

        currentKey = v91;
        goto LABEL_68;
      }
    }

    else
    {
      name4 = [(UIKBTree *)self->super._keyplane name];
      v48 = [name4 rangeOfString:@"Dictation"];

      if (v48 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(UIKeyboardLayoutCursor *)self setSelectedKeyIndex:[(UIKeyboardLayoutCursor *)self selectedKeyBeforeDictation]];
        [(UIKeyboardLayoutCursor *)self setSelectedKeyBeforeDictation:0x7FFFFFFFFFFFFFFFLL];
      }
    }

LABEL_78:
    v82 = +[UIKeyboardImpl activeInstance];
    if ([v82 shouldShowDictationKey])
    {
      name5 = [(UIKBTree *)self->super._keyplane name];
      v84 = [name5 rangeOfString:@"Dictation"];

      if (v84 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v85 = +[UIDictationController sharedInstance];
        [v85 updateHelperMessageDisplayIfNeeded];
LABEL_83:

        [(UIKeyboardLayoutCursor *)self updateRecentInputsKeyIfNecessary];
        name6 = [(UIKBTree *)self->super._keyplane name];
        v87 = [name6 rangeOfString:@"Dictation"];

        if (v87 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(UIKeyboardLayoutCursor *)self selectInitialKeyIfNecessary];
        }

        [(UIKeyboardLayoutCursor *)self updateKeyplaneSwitchEdgeBiases];
        [(UIKeyboardLayoutCursor *)self updateDictationHelpString];
        v88 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
        [(UIKeyboardLayoutStar *)self _didChangeKeyplaneWithContext:v88];

        p_keyplaneSwitchSelectedKeyFrameCenter->x = x;
        p_keyplaneSwitchSelectedKeyFrameCenter->y = y;
        [(UIKeyboardLayoutCursor *)self setLastSelectedKeyIndex:0x7FFFFFFFFFFFFFFFLL];
        goto LABEL_86;
      }
    }

    else
    {
    }

    v85 = +[UIDictationController sharedInstance];
    [v85 stopHelperMessageDisplayIfNeeded];
    goto LABEL_83;
  }

LABEL_87:
}

void __42__UIKeyboardLayoutCursor_setKeyplaneName___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v1 = _MergedGlobals_47;
  _MergedGlobals_47 = v0;

  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"., -/#&@'+"}];
  v3 = qword_1ED49AF00;
  qword_1ED49AF00 = v2;
}

void __42__UIKeyboardLayoutCursor_setKeyplaneName___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MergedGlobals_47;
  v10 = v3;
  v5 = [v3 representedString];
  LOBYTE(v4) = [v4 characterIsMember:{objc_msgSend(v5, "characterAtIndex:", 0)}];

  if (v4)
  {
    v6 = v10;
    v7 = 32;
  }

  else
  {
    v8 = qword_1ED49AF00;
    v9 = [v10 representedString];
    LODWORD(v8) = [v8 characterIsMember:{objc_msgSend(v9, "characterAtIndex:", 0)}];

    if (!v8)
    {
      goto LABEL_6;
    }

    v6 = v10;
    v7 = 40;
  }

  [*(a1 + v7) addObject:v6];
LABEL_6:
}

uint64_t __42__UIKeyboardLayoutCursor_setKeyplaneName___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 representedString];
  v6 = [v4 representedString];

  v7 = [v5 localizedCompare:v6];
  return v7;
}

- (void)selectInitialKeyIfNecessary
{
  if ([(UIKBScreenTraits *)self->super.super._screenTraits idiom]== 3)
  {
    v3 = +[UIKeyboard activeKeyboard];
    if ([v3 isFocused])
    {
    }

    else
    {
      v4 = +[UIKeyboard activeKeyboard];
      v5 = [(UIView *)self isDescendantOfView:v4];

      if (v5)
      {
        return;
      }
    }
  }

  if (!self->_selectInitialKey)
  {
    currentKey = [(UIKeyboardLayoutCursor *)self currentKey];
    if (currentKey)
    {
      v7 = currentKey;
      currentKey2 = [(UIKeyboardLayoutCursor *)self currentKey];
      visible = [currentKey2 visible];

      if (visible)
      {
        currentKey3 = [(UIKeyboardLayoutCursor *)self currentKey];
        v11 = [(UIKeyboardLayoutCursor *)self activeStateForKey:currentKey3];

        currentKey4 = [(UIKeyboardLayoutCursor *)self currentKey];
        if ([currentKey4 state] == v11)
        {
          keyplaneView = self->super._keyplaneView;
          currentKey5 = [(UIKeyboardLayoutCursor *)self currentKey];
          v15 = [(UIKBKeyplaneView *)keyplaneView viewForKey:currentKey5];
          v16 = objc_opt_class();

          if (v16)
          {
LABEL_20:
            currentKey6 = [(UIKeyboardLayoutCursor *)self currentKey];
            [(UIKeyboardLayoutCursor *)self refreshSelectedCellIfNecessaryForKey:currentKey6];

            return;
          }
        }

        else
        {
        }

        currentKey7 = [(UIKeyboardLayoutCursor *)self currentKey];
        [(UIKeyboardLayoutStar *)self setState:v11 forKey:currentKey7];

        goto LABEL_20;
      }
    }
  }

  if ([(UITextInputTraits *)self->super.super._inputTraits hasDefaultContents])
  {
    keyplaneKeys = self->_keyplaneKeys;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __53__UIKeyboardLayoutCursor_selectInitialKeyIfNecessary__block_invoke;
    v23[3] = &unk_1E710FF30;
    v23[4] = self;
    [(NSArray *)keyplaneKeys enumerateObjectsUsingBlock:v23];
  }

  else
  {
    v18 = +[UIKeyboard activeKeyboard];
    isFocused = [v18 isFocused];

    if (isFocused)
    {
      v20 = [(UIKeyboardLayoutCursor *)self _indexOfFirstKeyPassingTest:&__block_literal_global_113_1];
      if (v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
        self->_selectedKeyIndex = 0x7FFFFFFFFFFFFFFFLL;
        [(UIKeyboardLayoutCursor *)self setSelectedKeyIndex:v20];
        self->_selectInitialKey = 1;
      }
    }

    else
    {
      _savedSelectedKeyIndex = 0x7FFFFFFFFFFFFFFFLL;
    }
  }
}

void __53__UIKeyboardLayoutCursor_selectInitialKeyIfNecessary__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 interactionType] == 4 || (objc_msgSend(v9, "name"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"Monolith-Recent-Inputs-Key"), v7, v8))
  {
    [*(a1 + 32) setSelectedKeyIndex:a3];
    *a4 = 1;
  }
}

uint64_t __53__UIKeyboardLayoutCursor_selectInitialKeyIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 interactionType] == 1 || objc_msgSend(v2, "interactionType") == 2 || objc_msgSend(v2, "interactionType") == 16)
  {
    v3 = 1;
  }

  else
  {
    v5 = [v2 name];
    v3 = [v5 isEqualToString:@"Monolith-Recent-Inputs-Key"];
  }

  return v3;
}

- (void)updateKeyplaneSwitchEdgeBiases
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_keyplaneKeys;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v4)
  {
    v6 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v5 = v4;
  v6 = 0;
  LODWORD(v7) = 0;
  v8 = *v17;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v16 + 1) + 8 * i);
      if (([v10 interactionType] == 10 || objc_msgSend(v10, "interactionType") == 9) && objc_msgSend(v10, "visible"))
      {
        if (v7)
        {
          lastObject = [(NSArray *)self->_keyplaneKeys lastObject];

          if (v10 == lastObject)
          {
            if ([(UIKeyboardLayoutCursor *)self isAppRightToLeft])
            {
              v7 = 21;
            }

            else
            {
              v7 = 29;
            }
          }

          else
          {
            v7 = 2;
          }
        }

        else if ([(UIKeyboardLayoutCursor *)self isAppRightToLeft])
        {
          v7 = 29;
        }

        else
        {
          v7 = 21;
        }

        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
        [v10 setObject:v12 forProperty:@"popup-bias"];

        v13 = v10;
        v6 = v13;
      }
    }

    v5 = [(NSArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v5);

  if (v6 && v7 == 2)
  {
    v14 = MEMORY[0x1E696AD98];
    if ([(UIKeyboardLayoutCursor *)self isAppRightToLeft])
    {
      v15 = 21;
    }

    else
    {
      v15 = 29;
    }

    v3 = [v14 numberWithInt:v15];
    [v6 setObject:v3 forProperty:@"popup-bias"];
    goto LABEL_28;
  }

LABEL_29:
}

- (void)updateDictationHelpString
{
  v80 = *MEMORY[0x1E69E9840];
  name = [(UIKBTree *)self->super._keyplane name];
  v4 = [name rangeOfString:@"Dictation"];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v5 = self->_keyplaneKeys;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v75 objects:v79 count:16];
  if (v6)
  {
    v7 = v6;
    v73 = 0;
    v8 = *v76;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v76 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v75 + 1) + 8 * i);
        if ([v10 interactionType] == 10 || objc_msgSend(v10, "interactionType") == 9)
        {
          v11 = [(UIKBKeyplaneView *)self->super._keyplaneView viewForKey:v10];
          [v11 setHidden:v4 != 0x7FFFFFFFFFFFFFFFLL];
          if (!v73)
          {
            if ([v10 interactionType] == 10)
            {
              v73 = v10;
            }

            else
            {
              v73 = 0;
            }
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v75 objects:v79 count:16];
    }

    while (v7);

    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!v73)
      {

        return;
      }

      if (!self->_dictationHelpLabel)
      {
        [v73 frame];
        v13 = v12;
        v15 = v14;
        [(UIView *)self bounds];
        v17 = [[UILabel alloc] initWithFrame:0.0, v13, v16, v15];
        dictationHelpLabel = self->_dictationHelpLabel;
        self->_dictationHelpLabel = v17;

        [(UILabel *)self->_dictationHelpLabel setTextAlignment:1];
      }

      renderConfig = [(UIKeyboardLayoutStar *)self renderConfig];
      v20 = [UIKBRenderingContext renderingContextForRenderConfig:renderConfig];

      v21 = [UIKBRenderFactory lightweightFactoryForVisualStyle:[(UIKBTree *)self->super._keyplane visualStyling] renderingContext:v20];
      v22 = [v21 traitsForKey:v73 onKeyplane:self->super._keyplane];
      symbolStyle = [v22 symbolStyle];
      v72 = v22;
      if (symbolStyle && (v24 = symbolStyle, [v22 symbolStyle], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "textColor"), v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v24, v26))
      {
        symbolStyle2 = [v22 symbolStyle];
        [symbolStyle2 fontSize];
        v29 = v28;
        symbolStyle3 = [v22 symbolStyle];
        [symbolStyle3 fontWeight];
        v32 = [off_1E70ECC18 systemFontOfSize:v29 weight:v31];
        [(UILabel *)self->_dictationHelpLabel setFont:v32];

        symbolStyle4 = [v22 symbolStyle];
        textColor = [symbolStyle4 textColor];
        v35 = [UIColor colorWithCGColor:UIKBGetNamedColor(textColor)];
        [(UILabel *)self->_dictationHelpLabel setTextColor:v35];
      }

      else
      {
        v37 = [off_1E70ECC18 systemFontOfSize:29.0 weight:*off_1E70ECD20];
        [(UILabel *)self->_dictationHelpLabel setFont:v37];

        renderConfig2 = [(UIKeyboardLayoutStar *)self renderConfig];
        lightKeyboard = [renderConfig2 lightKeyboard];
        v40 = UIKBColorBlack_Alpha40;
        if (!lightKeyboard)
        {
          v40 = UIKBColorWhite_Alpha50;
        }

        v41 = *v40;

        symbolStyle4 = [UIColor colorWithCGColor:UIKBGetNamedColor(v41)];
        v42 = self->_dictationHelpLabel;

        [(UILabel *)v42 setTextColor:symbolStyle4];
      }

      dictationInfoKeyboardType = [(UITextInputTraits *)self->super.super._inputTraits dictationInfoKeyboardType];
      v44 = +[UIKeyboardInputModeController sharedInputModeController];
      currentInputMode = [v44 currentInputMode];
      languageWithRegion = [currentInputMode languageWithRegion];

      v46 = +[UIKeyboardInputModeController sharedInputModeController];
      enabledDictationLanguages = [v46 enabledDictationLanguages];
      v48 = [enabledDictationLanguages count];

      if (UIKeyboardTypeSupportsDictationSpelling(dictationInfoKeyboardType) || [(UITextInputTraits *)self->super.super._inputTraits isSecureTextEntry]|| [(UITextInputTraits *)self->super.super._inputTraits forceSpellingDictation])
      {
        if (v48 < 2)
        {
          v59 = _UILocalizedString(@"ATV_DICTATION_SPELLING_INSTRUCTION", @"Instruction text for AppleTV spelling dictation.", @"Speak in letters, numbers, and symbols.");
        }

        else
        {
          v49 = _UILocalizedString(@"ATV_DICTATION_SPELLING_INSTRUCTION_LANGUAGE", @"Instruction text for AppleTV spelling dictation with language.", @"Speak in letters, numbers, and symbols in %@.");
          v50 = +[UIKeyboardInputModeController sharedInputModeController];
          currentInputMode2 = [v50 currentInputMode];
          defaultDictationLanguage = [currentInputMode2 defaultDictationLanguage];

          v53 = +[UIDictationController sharedInstance];
          currentInputModeForDictation = [v53 currentInputModeForDictation];
          dictationLanguage = [currentInputModeForDictation dictationLanguage];

          v56 = TIInputModeGetLanguageWithRegion();
          if ([v49 hasPrefix:@"%@"])
          {
            v57 = 4;
          }

          else
          {
            v57 = 5;
          }

          v58 = UIKeyboardDictationDisplayNameInUILanguage(v56, v57);
          v59 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v49 validFormatSpecifiers:@"%@" error:0, v58];
        }
      }

      else
      {
        v59 = _UILocalizedString(@"ATV_DICTATION_GENERIC_INSTRUCTION", @"Instruction text for AppleTV generic dictation.", @"Speak in full words and phrases.");
        if (v48 >= 2)
        {
          v61 = _UILocalizedString(@"ATV_DICTATION_GENERIC_INSTRUCTION_LANGUAGE", @"Instruction text for AppleTV generic dictation with language.", @"Speak in full words and phrases in %@.");

          v62 = +[UIKeyboardInputModeController sharedInputModeController];
          currentInputMode3 = [v62 currentInputMode];
          defaultDictationLanguage2 = [currentInputMode3 defaultDictationLanguage];

          v65 = +[UIDictationController sharedInstance];
          currentInputModeForDictation2 = [v65 currentInputModeForDictation];
          dictationLanguage2 = [currentInputModeForDictation2 dictationLanguage];

          v68 = TIInputModeGetLanguageWithRegion();
          if ([v61 hasPrefix:@"%@"])
          {
            v69 = 4;
          }

          else
          {
            v69 = 5;
          }

          v70 = UIKeyboardDictationDisplayNameInUILanguage(v68, v69);
          v59 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v61 validFormatSpecifiers:@"%@" error:0, v70];
        }
      }

      [(UILabel *)self->_dictationHelpLabel setText:v59];
      superview = [(UIView *)self->_dictationHelpLabel superview];

      if (superview != self)
      {
        [(UIView *)self->_dictationHelpLabel setAlpha:0.0];
        [(UIView *)self insertSubview:self->_dictationHelpLabel aboveSubview:self->super._keyplaneView];
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __51__UIKeyboardLayoutCursor_updateDictationHelpString__block_invoke;
        v74[3] = &unk_1E70F3590;
        v74[4] = self;
        [UIView animateWithDuration:v74 animations:0.133];
      }

      goto LABEL_41;
    }
  }

  else
  {

    v73 = 0;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_42;
    }
  }

  v36 = self->_dictationHelpLabel;
  if (v36)
  {
    [(UIView *)v36 removeFromSuperview];
    v20 = self->_dictationHelpLabel;
    self->_dictationHelpLabel = 0;
LABEL_41:
  }

LABEL_42:
}

- (void)showRecentInputsAlert
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = _UINSLocalizedStringWithDefaultValue(@"Previously-Used Emails", @"Previously-Used Emails");
  v4 = [(UIAlertController *)UIKBAlertController alertControllerWithTitle:v3 message:0 preferredStyle:1];

  [v4 setKbDelegate:self];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  entries = [(UILexicon *)self->_recentInputs entries];
  v6 = [entries countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(entries);
        }

        userInput = [*(*(&v18 + 1) + 8 * v9) userInput];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __47__UIKeyboardLayoutCursor_showRecentInputsAlert__block_invoke;
        v17[3] = &unk_1E70F59B0;
        v17[4] = self;
        v11 = [UIAlertAction actionWithTitle:userInput style:0 handler:v17];
        [v4 addAction:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [entries countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  [v4 _addSectionDelimiter];
  v12 = _UINSLocalizedStringWithDefaultValue(@"Clear All", @"Clear All");
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __47__UIKeyboardLayoutCursor_showRecentInputsAlert__block_invoke_2;
  v16[3] = &unk_1E70F59B0;
  v16[4] = self;
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v16];

  [v4 addAction:v13];
  v14 = [UIAlertAction actionWithTitle:0 style:1 handler:0];
  [v14 setEnabled:0];
  [v4 addAction:v14];
  [(UIKeyboardLayoutCursor *)self setRecentInputsAlert:v4];
  _viewControllerForAncestor = [(UIView *)self _viewControllerForAncestor];
  [_viewControllerForAncestor presentViewController:v4 animated:1 completion:0];
}

void __47__UIKeyboardLayoutCursor_showRecentInputsAlert__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 title];
  [v2 didSelectRecentInputString:v3];
}

- (void)alertDidDismiss
{
  v3 = dispatch_time(0, 250000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__UIKeyboardLayoutCursor_alertDidDismiss__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

void __41__UIKeyboardLayoutCursor_alertDidDismiss__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _focusSystem];
  v3 = [v2 focusedItem];
  v6 = _UIFocusEnvironmentContainingView(v3);

  if ([*(a1 + 32) isDescendantOfView:v6] && !objc_msgSend(*(a1 + 32), "cursorLocation"))
  {
    [*(a1 + 32) selectInitialKeyIfNecessary];
  }

  v4 = *(a1 + 32);
  v5 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
  [v4 _didChangeKeyplaneWithContext:v5];
}

- (void)didSelectRecentInputString:(id)string
{
  stringCopy = string;
  v4 = +[UIKeyboardImpl activeInstance];
  if ([stringCopy isEqualToString:0x1EFB6FC10])
  {
    [v4 clearRecentInput];
    [(UIKeyboardLayoutCursor *)self setRecentInputs:0];
    name = [(UIKBTree *)self->super._keyplane name];
    [(UIKeyboardLayoutCursor *)self setKeyplaneName:name];

    [(UIKeyboardLayoutCursor *)self setSelectedKeyIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    [v4 handleClear];
    v6 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:stringCopy forKey:0 inputFlags:2];
    [v4 handleKeyEvent:v6];
  }

  recentInputsAlert = [(UIKeyboardLayoutCursor *)self recentInputsAlert];
  [recentInputsAlert dismissViewControllerAnimated:1 completion:0];

  [(UIKeyboardLayoutCursor *)self setRecentInputsAlert:0];
}

- (void)updateRecentInputsKeyIfNecessary
{
  v4 = [(UIKBTree *)self->super._keyplane firstCachedKeyWithName:@"Monolith-Recent-Inputs-Key"];
  v3 = [(UIKBKeyplaneView *)self->super._keyplaneView viewForKey:v4];
  [v3 setVerticalLayout:self->_disableTouchInput];
  [v3 setRecentInputs:self->_recentInputs];
}

- (void)acceptRecentInputIfNecessary
{
  v8 = [(UIKBTree *)self->super._keyplane firstCachedKeyWithName:@"Monolith-Recent-Inputs-Key"];
  currentKey = [(UIKeyboardLayoutCursor *)self currentKey];

  v4 = v8;
  if (currentKey == v8)
  {
    v5 = [(UIKBKeyplaneView *)self->super._keyplaneView viewForKey:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selectedRecentInputString = [v5 selectedRecentInputString];
      if (([selectedRecentInputString isEqualToString:0x1EFB6FC10] & 1) == 0)
      {
        v7 = +[UIKeyboardImpl activeInstance];
        [v7 acceptRecentInput:selectedRecentInputString];
      }
    }

    v4 = v8;
  }
}

- (void)setRecentInputs:(id)inputs
{
  objc_storeStrong(&self->_recentInputs, inputs);

  [(UIKeyboardLayoutCursor *)self updateRecentInputsKeyIfNecessary];
}

- (id)_keyplaneForKeyplaneProperties
{
  indirectKeyboard = self->_indirectKeyboard;
  if (!indirectKeyboard || (keyplane = self->super._keyplane) == 0 || ([(UIKBTree *)keyplane name], v5 = objc_claimAutoreleasedReturnValue(), [(UIKBTree *)indirectKeyboard subtreeWithName:v5], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v6 = self->super._keyplane;
  }

  return v6;
}

- (BOOL)usesAutoShift
{
  _keyplaneForKeyplaneProperties = [(UIKeyboardLayoutCursor *)self _keyplaneForKeyplaneProperties];
  v3 = [_keyplaneForKeyplaneProperties BOOLForProperty:@"autoshift"];

  return v3;
}

- (BOOL)ignoresShiftState
{
  _keyplaneForKeyplaneProperties = [(UIKeyboardLayoutCursor *)self _keyplaneForKeyplaneProperties];
  v3 = [_keyplaneForKeyplaneProperties BOOLForProperty:@"ignore-shift-state"];

  return v3;
}

- (void)setShift:(BOOL)shift
{
  v3.receiver = self;
  v3.super_class = UIKeyboardLayoutCursor;
  [(UIKeyboardLayoutStar *)&v3 setShift:shift];
}

- (BOOL)isAlphabeticPlane
{
  _keyplaneForKeyplaneProperties = [(UIKeyboardLayoutCursor *)self _keyplaneForKeyplaneProperties];
  v3 = [_keyplaneForKeyplaneProperties BOOLForProperty:@"is-alphabetic-plane"];

  return v3;
}

- (BOOL)isKanaPlane
{
  _keyplaneForKeyplaneProperties = [(UIKeyboardLayoutCursor *)self _keyplaneForKeyplaneProperties];
  isKanaPlane = [_keyplaneForKeyplaneProperties isKanaPlane];

  return isKanaPlane;
}

- (BOOL)diacriticForwardCompose
{
  _keyplaneForKeyplaneProperties = [(UIKeyboardLayoutCursor *)self _keyplaneForKeyplaneProperties];
  v3 = [_keyplaneForKeyplaneProperties BOOLForProperty:@"diacritic-forward-compose"];

  return v3;
}

- (BOOL)shouldToggleKeyplaneWithName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy rangeOfString:@"Recents"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(nameCopy, "rangeOfString:", @"Dictation") == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (BOOL)isKeyplaneDisabledWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy rangeOfString:@"Dictation"] != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  if ([nameCopy rangeOfString:@"Recents"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = +[UIKeyboard activeKeyboard];
    _useRecentsAlert = [v6 _useRecentsAlert];

    if (_useRecentsAlert && ![(UITextInputTraits *)self->super.super._inputTraits isSecureTextEntry])
    {
      entries = [(UILexicon *)self->_recentInputs entries];
      v5 = [entries count] == 0;

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ([nameCopy rangeOfString:@"Numbers"] == 0x7FFFFFFFFFFFFFFFLL || ((v9 = -[UITextInputTraits keyboardType](self->super.super._inputTraits, "keyboardType"), v5 = 1, v9 <= 9) ? (v10 = ((1 << v9) & 0x2CF) == 0) : (v10 = 1), v10 && v9 != 123))
  {
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (BOOL)shouldMergeKey:(id)key
{
  keyCopy = key;
  if ([keyCopy interactionType] == 10)
  {
    name = [keyCopy name];

    v6 = [(UIKeyboardLayoutCursor *)self isKeyplaneDisabledWithName:name];
    return v6;
  }

  else
  {
    interactionType = [keyCopy interactionType];

    if (interactionType == 9)
    {
      if ([(UITextInputTraits *)self->super.super._inputTraits isSecureTextEntry])
      {
        HasMultipleActiveSecureInputModes = UIKeyboardHasMultipleActiveSecureInputModes();
      }

      else
      {
        HasMultipleActiveSecureInputModes = [UIKeyboardActiveUserSelectableInputModes count] > 1;
      }

      return HasMultipleActiveSecureInputModes ^ 1;
    }

    else
    {
      return 0;
    }
  }
}

- (int)stateForKeyplaneSwitchKey:(id)key
{
  keyCopy = key;
  v10.receiver = self;
  v10.super_class = UIKeyboardLayoutCursor;
  v5 = [(UIKeyboardLayoutStar *)&v10 stateForKeyplaneSwitchKey:keyCopy];
  if (v5 != 4)
  {
    name = [keyCopy name];
    v7 = [name rangeOfString:@"Recents"];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      entries = [(UILexicon *)self->_recentInputs entries];
      if ([entries count])
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }
    }
  }

  return v5;
}

- (int64_t)defaultSelectedVariantIndexForKey:(id)key withActions:(unint64_t)actions
{
  if ([(UIKeyboardLayout *)self idiom:key]== 2)
  {
    return 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (BOOL)canMultitap
{
  v15 = *MEMORY[0x1E69E9840];
  keyplane = self->super._keyplane;
  if (keyplane != self->_cachedMultitapKeyplane)
  {
    objc_storeStrong(&self->_cachedMultitapKeyplane, keyplane);
    self->_cachedCanMultitap = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    keys = [(UIKBTree *)self->super._keyplane keys];
    v5 = [keys countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(keys);
          }

          if ([*(*(&v10 + 1) + 8 * i) interactionType] == 16)
          {
            self->_cachedCanMultitap = 1;
            goto LABEL_12;
          }
        }

        v6 = [keys countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return self->_cachedCanMultitap;
}

- (void)endMultitapForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v10 = keyCopy;
    v5 = [(UIKBKeyplaneView *)self->super._keyplaneView viewForKey:keyCopy];
    if (v5)
    {
      keyViewAnimator = [(UIKeyboardLayoutCursor *)self keyViewAnimator];
      state = [v10 state];
      currentKey = [(UIKeyboardLayoutCursor *)self currentKey];
      if (currentKey == v10)
      {
        v9 = 8;
      }

      else
      {
        v9 = 2;
      }

      [keyViewAnimator transitionKeyView:v5 fromState:state toState:v9 completion:0];
    }

    keyCopy = v10;
  }
}

- (void)longPressAction
{
  currentKey = [(UIKeyboardLayoutCursor *)self currentKey];
  state = [currentKey state];

  v13.receiver = self;
  v13.super_class = UIKeyboardLayoutCursor;
  [(UIKeyboardLayoutStar *)&v13 longPressAction];
  if ([(UIKeyboardLayoutCursor *)self isSlimLinearKeyboardTV])
  {
    currentKey2 = [(UIKeyboardLayoutCursor *)self currentKey];
    interactionType = [currentKey2 interactionType];

    if (interactionType == 10)
    {
      [(UIKeyboardLayoutCursor *)self showPopupKeyplaneSwitcher];
    }
  }

  currentKey3 = [(UIKeyboardLayoutCursor *)self currentKey];
  state2 = [currentKey3 state];

  if (state != 16 && state2 == 16)
  {
    self->_ignoreEventsUntilPressEnds = 1;
    v9 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
    [(UIKeyboardLayoutStar *)self _didChangeKeyplaneWithContext:v9];

    +[_UIKeyboardUsageTracking showVariantsIncrement];
  }

  currentKey4 = [(UIKeyboardLayoutCursor *)self currentKey];
  interactionType2 = [currentKey4 interactionType];

  if (interactionType2 == 4)
  {
    v12 = +[UIKeyboardImpl activeInstance];
    [v12 handleClear];
  }
}

- (void)showPopupKeyplaneSwitcher
{
  keyboard = self->super._keyboard;
  keyplane = [(UIKeyboardLayoutStar *)self keyplane];
  v14 = [(UIKBTree *)keyboard keyplaneSwitchKeysWithoutCurrentKeyplane:keyplane];

  [(UIKeyboardLayoutStar *)self updateLocalizedDisplayStringsForKeys:v14];
  currentKey = [(UIKeyboardLayoutCursor *)self currentKey];
  [currentKey setSelectedVariantIndex:0];

  currentKey2 = [(UIKeyboardLayoutCursor *)self currentKey];
  [currentKey2 setVariantType:14];

  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  v8 = UIKBAttributeValueFixedLeftStr;
  if (_shouldReverseLayoutDirection)
  {
    v8 = UIKBAttributeValueFixedRightStr;
  }

  v9 = *v8;
  currentKey3 = [(UIKeyboardLayoutCursor *)self currentKey];
  [currentKey3 setVariantPopupBias:v9];

  v11 = [v14 mutableCopy];
  currentKey4 = [(UIKeyboardLayoutCursor *)self currentKey];
  [currentKey4 setSubtrees:v11];

  if ([(UIKBScreenTraits *)self->super.super._screenTraits idiom]== 2)
  {
    [(UIKeyboardLayoutStar *)self setKeyboardDim:1];
  }

  currentKey5 = [(UIKeyboardLayoutCursor *)self currentKey];
  [(UIKeyboardLayoutStar *)self setState:16 forKey:currentKey5];
}

- (int)activeStateForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy displayType] == 38 || objc_msgSend(keyCopy, "displayType") == 1)
  {
    v4 = 16;
  }

  else if ([keyCopy displayType] == 14)
  {
    v4 = 8;
  }

  else
  {
    v4 = 8;
    if ([keyCopy displayType] != 4)
    {
      if ([keyCopy displayType] == 13)
      {
        v4 = 8;
      }

      else
      {
        v4 = 4;
      }
    }
  }

  return v4;
}

- (int)enabledStateForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy displayType] == 38 || objc_msgSend(keyCopy, "displayType") == 1)
  {
    v5 = 16;
  }

  else if ([keyCopy displayType] == 14 || objc_msgSend(keyCopy, "displayType") == 4)
  {
    v5 = [(UIKeyboardLayoutCursor *)self stateForKeyplaneSwitchKey:keyCopy];
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (unint64_t)downActionFlagsForKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = UIKeyboardLayoutCursor;
  v5 = [(UIKeyboardLayoutStar *)&v9 downActionFlagsForKey:keyCopy];
  if ([keyCopy interactionType] == 16)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    if ([v6 isLongPress])
    {
      v7 = [(UIKeyboardLayoutStar *)self keyHasAccentedVariants:keyCopy];

      if (v7)
      {
        v5 |= 0x8080uLL;
      }
    }

    else
    {
    }
  }

  return v5;
}

- (unint64_t)cursorLocation
{
  if (self->_selectedKeyIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  userInterfaceLayoutDirection = [UIApp userInterfaceLayoutDirection];
  currentKey = [(UIKeyboardLayoutCursor *)self currentKey];
  v6 = [(UIKeyboardLayoutCursor *)self variantCountForKey:currentKey];
  if (v6)
  {
    state = [currentKey state];
    selectedVariantIndex = [currentKey selectedVariantIndex];
    if (userInterfaceLayoutDirection == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6 - 1;
    }

    if (userInterfaceLayoutDirection == 1)
    {
      v10 = v6 - 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = selectedVariantIndex == 0;
    v12 = selectedVariantIndex == v10;
    if (selectedVariantIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 1;
      v12 = 1;
    }

    v13 = state == 16;
    v14 = state == 16 && selectedVariantIndex == v6 - 1;
    LODWORD(v6) = state == 16 && v11;
    v15 = state == 16 && v12;
    v46 = v15;
  }

  else
  {
    selectedVariantIndex = [currentKey selectedVariantIndex];
    v13 = 0;
    v14 = 0;
    v46 = 0;
    if (userInterfaceLayoutDirection == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  v16 = selectedVariantIndex == v9 && v13;
  v45 = v16;
  if (currentKey)
  {
    [currentKey frame];
    v18 = v17;
  }

  else
  {
    [(UIKeyboardLayoutCursor *)self defaultCursorAdjustDistance];
    v18 = v19;
  }

  [(UIKeyboardLayoutCursor *)self defaultCursorAdjustDistance];
  if (v18 > v20)
  {
    [(UIKeyboardLayoutCursor *)self defaultCursorAdjustDistance];
    v18 = v21;
  }

  v47 = v6;
  if (currentKey)
  {
    [currentKey frame];
    v23 = v22;
  }

  else
  {
    [(UIKeyboardLayoutCursor *)self defaultCursorAdjustDistance];
    v23 = v24;
  }

  v25 = [(UIKeyboardLayoutCursor *)self targetKeyIndexAtOffset:currentKey fromKey:-v18, 0.0];
  v26 = [(UIKeyboardLayoutCursor *)self targetKeyIndexAtOffset:currentKey fromKey:v18, 0.0];
  v27 = [(UIKeyboardLayoutCursor *)self targetKeyIndexAtOffset:currentKey fromKey:0.0, -v23];
  [(UIKeyboardLayoutCursor *)self targetKeyIndexAtOffset:currentKey fromKey:0.0, v23];
  selectedKeyIndex = self->_selectedKeyIndex;
  v29 = !v13;
  if (selectedKeyIndex || ((v29 | v46) & 1) == 0)
  {
    if (((selectedKeyIndex >= [(NSArray *)self->_keyplaneKeys count]- 1) & (v29 | v45)) != 0)
    {
      v31 = 4;
    }

    else
    {
      v31 = 0;
    }

    v30 = self->_selectedKeyIndex;
  }

  else
  {
    v30 = 0;
    v31 = 1;
  }

  v32 = v25 == v30;
  v33 = v47;
  if ((v32 & (v29 | v47)) != 0)
  {
    v31 |= 0x20uLL;
  }

  if (((v26 == v30) & (v29 | v14)) != 0)
  {
    v34 = v31 | 0x40;
  }

  else
  {
    v34 = v31;
  }

  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = 2;
  }

  [currentKey frame];
  if (fabs(CGRectGetMinY(v48)) >= 15.0)
  {
    if (v27 != 0x7FFFFFFFFFFFFFFFLL && v27 != self->_selectedKeyIndex)
    {
      v36 = [(NSArray *)self->_keyplaneKeys objectAtIndex:v27];
      if ([v36 interactionType] == 3)
      {
        candidateList = [(UIKeyboardLayoutStar *)self candidateList];
        hasCandidates = [candidateList hasCandidates];

        v33 = v47;
        if ((hasCandidates & 1) == 0)
        {
          v35 |= 8uLL;
        }
      }
    }
  }

  else
  {
    v35 |= 8uLL;
  }

  [(UIView *)self bounds];
  v40 = v39;
  [currentKey frame];
  if (vabdd_f64(v40, CGRectGetMaxY(v49)) >= 15.0)
  {
    v2 = v35;
  }

  else
  {
    v2 = v35 | 0x10;
  }

  if (v13)
  {
    variantType = [currentKey variantType];
    v42 = 128;
    if (v33)
    {
      v42 = 160;
    }

    v43 = v2 & 0xFFFFFFFFFFFFFFE7 | v42;
    if (v14)
    {
      v43 |= 0x40uLL;
    }

    if (variantType)
    {
      v2 = v43;
    }
  }

  return v2;
}

- (void)setCursorLocation:(unint64_t)location
{
  locationCopy = location;
  v5 = location & 7;
  selectedKeyIndex = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= 1)
  {
    if (v5)
    {
      selectedKeyIndex = 0;
    }

    else if ((locationCopy & 0x200) == 0)
    {
      _savedSelectedKeyIndex = self->_selectedKeyIndex;
    }

    goto LABEL_13;
  }

  if (v5 == 4)
  {
    selectedKeyIndex = [(NSArray *)self->_keyplaneKeys count]- 1;
LABEL_13:
    [(UIKeyboardLayoutCursor *)self setSelectedKeyIndex:selectedKeyIndex];
    goto LABEL_14;
  }

  if (v5 != 2)
  {
    goto LABEL_13;
  }

  selectedKeyIndex = self->_selectedKeyIndex;
  if (selectedKeyIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  selectedKeyIndex = _savedSelectedKeyIndex;
  if ((locationCopy & 0x100) != 0 || _savedSelectedKeyIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  [(UIKeyboardLayoutCursor *)self selectInitialKeyIfNecessary];
LABEL_14:
  currentKey = [(UIKeyboardLayoutCursor *)self currentKey];
  v7 = [(UIKeyboardLayoutCursor *)self variantCountForKey:?];
  if (v7)
  {
    v8 = v7;
    if (![currentKey variantType])
    {
      if ((v5 - 1) >= 2)
      {
        if (v5 == 4)
        {
          if ([(UIKeyboardLayoutCursor *)self isAppRightToLeft])
          {
            v9 = 0;
          }

          else
          {
            v9 = v8 - 1;
          }
        }

        else
        {
          v9 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else if ([(UIKeyboardLayoutCursor *)self isAppRightToLeft])
      {
        v9 = v8 - 1;
      }

      else
      {
        v9 = 0;
      }

      [(UIKeyboardLayoutCursor *)self setHighlightedVariantIndex:v9 key:currentKey];
    }
  }
}

- (void)restoreFocusFromEntryPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  keysExcludingEmptyKeys = [(UIKBTree *)self->super._keyplane keysExcludingEmptyKeys];
  v6 = [(UIKeyboardLayoutCursor *)self targetKeyIndexFromPoint:x inKeys:y];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(UIKeyboardLayoutCursor *)self selectInitialKeyIfNecessary];
  }

  else
  {
    [(UIKeyboardLayoutCursor *)self setSelectedKeyIndex:v6];
  }
}

- (CGRect)selectionFrameForKeyIndex:(int64_t)index
{
  v3 = [(NSArray *)self->_keyplaneKeys objectAtIndex:index];
  interactionType = [v3 interactionType];
  [v3 paddedFrame];
  MidX = v5;
  MidY = v6;
  v11 = v7;
  v12 = v8;
  if (interactionType == 10)
  {
    MidX = CGRectGetMidX(*&v5);
    [v3 paddedFrame];
    MidY = CGRectGetMidY(v17);
    v11 = 0.0;
    v12 = 0.0;
  }

  v13 = MidX;
  v14 = MidY;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)deactivateKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v8 = keyCopy;
    [keyCopy setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
    v5 = [(UIKeyboardLayoutCursor *)self enabledStateForKey:v8];
    [(UIKeyboardLayoutStar *)self setState:v5 forKey:v8];
    keyCopy = v8;
    if (v5 == 16)
    {
      subtrees = [v8 subtrees];
      v7 = [subtrees count];

      keyCopy = v8;
      if (!v7)
      {
        [(UIKeyboardLayoutCursor *)self refreshSelectedCellIfNecessaryForKey:v8];
        keyCopy = v8;
      }
    }
  }
}

- (void)setSelectedKeyIndex:(int64_t)index
{
  if (![(UIKeyboardLayoutCursor *)self suppressOperations]&& self->_selectedKeyIndex != index)
  {
    if (index >= 0x7FFFFFFFFFFFFFFFLL)
    {
      indexCopy = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      indexCopy = index;
    }

    if (index > 0x7FFFFFFFFFFFFFFELL || indexCopy >= [(NSArray *)self->_keyplaneKeys count])
    {
      currentKey = [(UIKeyboardLayoutCursor *)self currentKey];
      self->_selectedKeyIndex = 0x7FFFFFFFFFFFFFFFLL;
      [(UIKeyboardLayoutCursor *)self deactivateKey:currentKey];
      [(UIKeyboardLayoutStar *)self setKeyboardDim:0];
    }

    else
    {
      selectedKeyIndex = self->_selectedKeyIndex;
      if ([(UIKBScreenTraits *)self->super.super._screenTraits idiom]== 3 && ([(UIKBScreenTraits *)self->super.super._screenTraits knobInput]|| [(UIKBScreenTraits *)self->super.super._screenTraits touchpadInput]) || [(UIKBScreenTraits *)self->super.super._screenTraits idiom]== 2)
      {
        currentKey2 = [(UIKeyboardLayoutCursor *)self currentKey];
        [(UIKeyboardLayoutCursor *)self setLastSelectedKeyIndex:self->_selectedKeyIndex];
        self->_selectedKeyIndex = indexCopy;
        v8 = [(NSArray *)self->_keyplaneKeys objectAtIndex:indexCopy];
        if (currentKey2 != v8)
        {
          [(UIKeyboardLayoutCursor *)self deactivateKey:currentKey2];
          activeKey = [(UIKeyboardLayoutStar *)self activeKey];

          if (activeKey == currentKey2)
          {
            [(UIKeyboardLayoutStar *)self setActiveKey:0];
          }
        }

        if (![v8 visible] || objc_msgSend(v8, "state") == 1)
        {
          goto LABEL_18;
        }

        v15 = [(UIKeyboardLayoutCursor *)self activeStateForKey:v8];
        if (currentKey2 != v8)
        {
          [(UIKeyboardLayoutStar *)self setState:v15 forKey:v8];
        }

        if (v15 == 16)
        {
          subtrees = [v8 subtrees];
          v17 = [subtrees count];

          if (!v17 && ![(UIKeyboardLayoutCursor *)self refreshSelectedCellIfNecessaryForKey:v8])
          {
LABEL_18:
            [(UIKeyboardLayoutCursor *)self setSelectedKeyIndex:selectedKeyIndex];
          }
        }

        currentKey3 = [(UIKeyboardLayoutCursor *)self currentKey];

        if (currentKey3)
        {
          [(UIKeyboardLayoutStar *)self setKeyboardDim:0];
        }
      }

      else
      {
        if (!self->_selectionView)
        {
          v11 = [UIKBCursorSelection alloc];
          _responderSelectionImage = [(UIResponder *)self _responderSelectionImage];
          v13 = [(UIImageView *)v11 initWithImage:_responderSelectionImage];
          selectionView = self->_selectionView;
          self->_selectionView = v13;

          [(UIView *)self addSubview:self->_selectionView];
        }

        self->_selectedKeyIndex = indexCopy;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __46__UIKeyboardLayoutCursor_setSelectedKeyIndex___block_invoke;
        v19[3] = &unk_1E70F3590;
        v19[4] = self;
        [UIView animateWithDuration:v19 animations:0.3];
      }

      self->_selectInitialKey = 0;
      self->_keyplaneSwitchSelectedKeyFrameCenter = *MEMORY[0x1E695EFF8];
    }
  }
}

uint64_t __46__UIKeyboardLayoutCursor_setSelectedKeyIndex___block_invoke(uint64_t a1)
{
  [*(a1 + 32) selectionFrameForKeyIndex:*(*(a1 + 32) + 1560)];
  v2 = *(*(a1 + 32) + 1544);

  return [v2 setFrame:?];
}

- (BOOL)refreshSelectedCellIfNecessaryForKey:(id)key animated:(BOOL)animated
{
  animatedCopy = animated;
  keyCopy = key;
  if ([(UIKeyboardLayoutCursor *)self suppressOperations])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(UIKBKeyplaneView *)self->super._keyplaneView viewForKey:keyCopy];
    focusableVariantCount = [v8 focusableVariantCount];
    v7 = focusableVariantCount != 0;
    if (focusableVariantCount)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        currentKey = [(UIKeyboardLayoutCursor *)self currentKey];
        v11 = currentKey;
        if (currentKey == keyCopy)
        {
          selectedVariantIndex = [keyCopy selectedVariantIndex];

          if (selectedVariantIndex == 0x7FFFFFFFFFFFFFFFLL)
          {
            [keyCopy setSelectedVariantIndex:0];
          }
        }

        else
        {
        }

        [v8 refreshSelectedRecent];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          currentKey2 = [(UIKeyboardLayoutCursor *)self currentKey];
          v13 = currentKey2;
          if (currentKey2 == keyCopy)
          {
            selectedVariantIndex2 = [keyCopy selectedVariantIndex];

            if (selectedVariantIndex2 == 0x7FFFFFFFFFFFFFFFLL)
            {
              [keyCopy setSelectedVariantIndex:0];
            }
          }

          else
          {
          }

          [v8 refreshSelectedCandidateAnimated:animatedCopy];
        }
      }
    }
  }

  return v7;
}

- (void)setHighlightedVariantIndex:(int64_t)index key:(id)key
{
  keyCopy = key;
  if (![(UIKeyboardLayoutCursor *)self suppressOperations])
  {
    selectedVariantIndex = [keyCopy selectedVariantIndex];
    [keyCopy setSelectedVariantIndex:index];
    if (selectedVariantIndex != index)
    {
      [(UIKeyboardLayoutStar *)self setState:16 forKey:keyCopy];
      [(UIKeyboardLayoutCursor *)self refreshSelectedCellIfNecessaryForKey:keyCopy];
    }
  }
}

- (int64_t)targetKeyIndexFromPoint:(CGPoint)point inKeys:(id)keys
{
  keyplaneKeys = self->_keyplaneKeys;
  v5 = [(UIKeyboardLayoutStar *)self keyHitTestClosestToPoint:keys inKeys:point.x, point.y];
  v6 = [(NSArray *)keyplaneKeys indexOfObject:v5];

  return v6;
}

- (int64_t)targetKeyIndexAtOffset:(CGPoint)offset fromKey:(id)key
{
  y = offset.y;
  x = offset.x;
  keyCopy = key;
  v8 = keyCopy;
  v9 = fabs(y);
  if (fabs(x) >= 2.22044605e-16 || v9 >= 2.22044605e-16)
  {
    v11 = keyCopy;
    [v11 navigationPointOfKey];
    v13 = x + v12;
    v15 = y + v14;
    [v11 frame];
    v32.x = v13;
    v32.y = v15;
    if (CGRectContainsPoint(v33, v32))
    {
      v15 = y + v15;
      v13 = x + v13;
    }

    v16 = [(UIKeyboardLayoutStar *)self keyHitTest:v13, v15];
    interactionType = [v16 interactionType];
    interactionType2 = [v16 interactionType];
    v20 = interactionType == 4 || interactionType2 == 15;
    if (v16 == v11 && v20)
    {
      v22 = interactionType2 == 15;
      v23 = interactionType == 4;
      if ([(UIKeyboardLayoutCursor *)self isKeyboardRightToLeft])
      {
        v24 = x > 0.0;
      }

      else
      {
        v24 = x < 0.0;
      }

      if ([(UIKeyboardLayoutCursor *)self isKeyboardRightToLeft])
      {
        v25 = x < 0.0;
      }

      else
      {
        v25 = x > 0.0;
      }

      LOBYTE(v20) = v23 && v25 || v22 && v24;
    }

    if ([(UIKBScreenTraits *)self->super.super._screenTraits knobInput])
    {
      if (!v20)
      {
        [(UIKBScreenTraits *)self->super.super._screenTraits touchInput];
      }

LABEL_32:
      v28 = v11;

      v29 = 5;
      v16 = v28;
      while (1)
      {
        v30 = v16;
        [v28 frame];
        v16 = [(UIKeyboardLayoutCursor *)self keyHitTestInSameRowAsCenter:v13 size:v15];

        if (v16)
        {
          if (v16 != v28)
          {
            goto LABEL_38;
          }
        }

        v13 = x + v13;
        v15 = y + v15;
        if (!--v29)
        {
          goto LABEL_36;
        }
      }
    }

    touchpadInput = [(UIKBScreenTraits *)self->super.super._screenTraits touchpadInput];
    if (v20)
    {
      if (touchpadInput)
      {
        goto LABEL_32;
      }
    }

    else if ([(UIKBScreenTraits *)self->super.super._screenTraits touchInput]|| touchpadInput)
    {
      goto LABEL_32;
    }

LABEL_36:
    if (!v16)
    {
      v16 = v11;
    }

LABEL_38:
    v26 = [(NSArray *)self->_keyplaneKeys indexOfObject:v16];

    goto LABEL_39;
  }

  v26 = [(NSArray *)self->_keyplaneKeys indexOfObject:keyCopy, 2.22044605e-16, v9];
LABEL_39:

  return v26;
}

- (id)keyHitTestInSameRowAsCenter:(CGPoint)center size:(CGSize)size
{
  height = size.height;
  y = center.y;
  x = center.x;
  v32 = *MEMORY[0x1E69E9840];
  [(UIView *)self bounds:center.x];
  v9 = v8;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = self->_keyplaneKeys;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v28;
    v15 = 3.4028e38;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        if ([(UIKeyboardLayoutStar *)self shouldHitTestKey:v17, v27])
        {
          [v17 frame];
          v35.origin.x = 0.0;
          v35.origin.y = y + height * -0.5;
          v35.size.width = v9;
          v35.size.height = height;
          if (CGRectIntersectsRect(v34, v35))
          {
            [v17 frame];
            UIDistanceBetweenPointAndRect(x, y, v18, v19, v20, v21);
            v23 = v22;
            if (fabsf(v23) < 2.2204e-16)
            {
              v25 = v17;

              goto LABEL_17;
            }

            if (v15 > v23)
            {
              v24 = v17;

              v13 = v24;
              v15 = v23;
            }
          }
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

  v13 = v13;
  v25 = v13;
LABEL_17:

  return v25;
}

- (BOOL)canHandlePresses:(id)presses withEvent:(id)event
{
  pressesCopy = presses;
  eventCopy = event;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if ([(UIKeyboardLayout *)self idiom]== 3)
  {
    if ([eventCopy type])
    {
      v16.receiver = self;
      v16.super_class = UIKeyboardLayoutCursor;
      touchInput = [(UIKeyboardLayout *)&v16 canHandleEvent:eventCopy];
    }

    else
    {
      touchInput = [(UIKBScreenTraits *)self->super.super._screenTraits touchInput];
    }

    *(v18 + 24) = touchInput;
    if ((touchInput & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((v18[3] & 1) == 0)
  {
LABEL_8:
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__UIKeyboardLayoutCursor_canHandlePresses_withEvent___block_invoke;
    v11[3] = &unk_1E7114798;
    v15 = &v17;
    v12 = eventCopy;
    selfCopy = self;
    v14 = pressesCopy;
    [(UIKeyboardLayoutCursor *)self runWithSuppressedActions:v11];
    v9 = *(v18 + 24);

    goto LABEL_9;
  }

  v9 = 1;
LABEL_9:
  _Block_object_dispose(&v17, 8);

  return v9 & 1;
}

uint64_t __53__UIKeyboardLayoutCursor_canHandlePresses_withEvent___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) type];
  if (result > 4)
  {
    if (result == 7)
    {
      result = [*(a1 + 40) _handleWheelChangedWithEvent:*(a1 + 32)];
      goto LABEL_11;
    }

    if (result == 5)
    {
      result = [*(a1 + 40) _handleMoveWithEvent:*(a1 + 32)];
      goto LABEL_11;
    }

LABEL_8:
    *(*(*(a1 + 56) + 8) + 24) = 0;
    return result;
  }

  if (result == 2)
  {
    result = [*(a1 + 40) _handleRemoteControlReceivedWithEvent:*(a1 + 32)];
    goto LABEL_11;
  }

  if (result != 3)
  {
    goto LABEL_8;
  }

  result = [*(a1 + 40) _handlePresses:*(a1 + 48) withEvent:*(a1 + 32)];
LABEL_11:
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (void)takeKeyAction:(id)action
{
  actionCopy = action;
  if (![(UIKeyboardLayoutCursor *)self suppressOperations])
  {
    multitapKey = self->super._multitapKey;
    if (multitapKey)
    {
      v6 = multitapKey == actionCopy;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      [(UIKeyboardLayoutStar *)self multitapExpired];
    }

    v7 = +[UIKeyboardImpl activeInstance];
    if ([(UIKBTree *)actionCopy interactionType]== 4)
    {
      v8 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:@"\b" forKey:actionCopy inputFlags:0];
      [v7 handleKeyEvent:v8];

      goto LABEL_14;
    }

    if ([(UIKBTree *)actionCopy interactionType]== 23)
    {
      [v7 handleClear];
      goto LABEL_14;
    }

    if ([(UIKBTree *)actionCopy interactionType]== 11)
    {
      alternateKeyplaneName = [(UIKBTree *)self->super._keyplane alternateKeyplaneName];
      [(UIKeyboardLayoutCursor *)self setKeyplaneName:alternateKeyplaneName];
      goto LABEL_13;
    }

    if ([(UIKBTree *)actionCopy interactionType]== 10)
    {
      if ([(UIKeyboardLayoutCursor *)self isSlimLinearKeyboardTV])
      {
        [(UIKeyboardLayoutCursor *)self setOverrideInitialKey:1];
        self->_selectInitialKey = 0;
        self->_overridenSelectedKeyType = 10;
      }

      representedString = [(UIKBTree *)actionCopy representedString];
      v11 = [representedString rangeOfString:@"Recents"];

      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(UIKeyboardLayoutCursor *)self showRecentInputsAlert];
        goto LABEL_14;
      }

      representedString2 = [(UIKBTree *)actionCopy representedString];
      v13 = [representedString2 rangeOfString:@"Dictation"];

      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_14:

        goto LABEL_15;
      }

      v14 = actionCopy;
      v15 = [(UIKeyboardLayoutCursor *)self variantCountForKey:v14];
      selectedVariantIndex = [(UIKBTree *)v14 selectedVariantIndex];
      alternateKeyplaneName = v14;
      if ([(UIKBTree *)v14 state]== 16)
      {
        alternateKeyplaneName = v14;
        if (selectedVariantIndex != 0x7FFFFFFFFFFFFFFFLL)
        {
          alternateKeyplaneName = v14;
          if (selectedVariantIndex < v15)
          {
            subtrees = [(UIKBTree *)v14 subtrees];
            alternateKeyplaneName = [subtrees objectAtIndexedSubscript:selectedVariantIndex];
          }
        }
      }

      representedString3 = [alternateKeyplaneName representedString];
      [(UIKeyboardLayoutCursor *)self clearVariantStateForKey:v14];
      [(UIKBTree *)v14 setSelectedVariantIndex:0];
      v19 = [(UIKBTree *)self->super._keyboard subtreeWithName:representedString3];
      if (v19 != self->super._keyplane)
      {
        [(UIKeyboardLayoutCursor *)self setKeyplaneName:representedString3];
      }

LABEL_13:
      goto LABEL_14;
    }

    if ([(UIKBTree *)actionCopy interactionType]== 9)
    {
      v20 = +[UIKeyboardInputModeController sharedInputModeController];
      representedString4 = [(UIKBTree *)actionCopy representedString];
      v22 = [v20 identifierIsValidSystemInputMode:representedString4];

      if (v22)
      {
        if (qword_1ED49AF18 != -1)
        {
          dispatch_once(&qword_1ED49AF18, &__block_literal_global_190);
        }

        taskQueue = [v7 taskQueue];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __40__UIKeyboardLayoutCursor_takeKeyAction___block_invoke_3;
        v62[3] = &unk_1E70FD1B8;
        v63 = v7;
        v64 = actionCopy;
        [taskQueue addTask:v62 breadcrumb:qword_1ED49AF10];

        v24 = v63;
      }

      else
      {
        if (qword_1ED49AF28 != -1)
        {
          dispatch_once(&qword_1ED49AF28, &__block_literal_global_198);
        }

        taskQueue2 = [v7 taskQueue];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __40__UIKeyboardLayoutCursor_takeKeyAction___block_invoke_6;
        v60[3] = &unk_1E70FD058;
        v61 = v7;
        [taskQueue2 addTask:v60 breadcrumb:qword_1ED49AF20];

        v24 = v61;
      }

      goto LABEL_14;
    }

    if ([(UIKBTree *)actionCopy interactionType]== 3)
    {
      selectedVariantIndex2 = [(UIKBTree *)actionCopy selectedVariantIndex];
      v26 = [(UIKeyboardLayoutCursor *)self variantCountForKey:actionCopy];
      if ([(UIKBTree *)actionCopy state]== 16 && selectedVariantIndex2 != 0x7FFFFFFFFFFFFFFFLL && selectedVariantIndex2 < v26)
      {
        v27 = [(UIKBKeyplaneView *)self->super._keyplaneView viewForKey:actionCopy];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          selectedRecentInputString = [v27 selectedRecentInputString];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = +[UIKeyboardImpl activeInstance];
            candidateController = [v48 candidateController];

            if ([candidateController currentIndex] != 0x7FFFFFFFFFFFFFFFLL)
            {
              [candidateController acceptSelectedCandidate];
              [(UIKeyboardLayoutCursor *)self handleVisualDirectionalInput:2];
              v50 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
              [(UIKeyboardLayoutStar *)self _didChangeKeyplaneWithContext:v50];
            }
          }

          selectedRecentInputString = 0;
        }

        if ([selectedRecentInputString isEqualToString:0x1EFB6FC10])
        {
          [v7 clearRecentInput];
          [(UIKeyboardLayoutCursor *)self setRecentInputs:0];
          [(UIKeyboardLayoutStar *)self setToInitialKeyplane];
        }

        else if (selectedRecentInputString)
        {
          [v7 handleClear];
          v51 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:selectedRecentInputString forKey:actionCopy inputFlags:2];
          [v7 handleKeyEvent:v51];
        }
      }

      goto LABEL_14;
    }

    if ([(UIKBTree *)actionCopy interactionType]!= 16)
    {
      alternateKeyplaneName = [(UIKBTree *)actionCopy representedString];
      selectedVariantIndex3 = [(UIKBTree *)actionCopy selectedVariantIndex];
      v39 = [(UIKeyboardLayoutCursor *)self variantCountForKey:actionCopy];
      v40 = 0;
      if ([(UIKBTree *)actionCopy state]== 16 && selectedVariantIndex3 != 0x7FFFFFFFFFFFFFFFLL && selectedVariantIndex3 < v39)
      {
        subtrees2 = [(UIKBTree *)actionCopy subtrees];
        v42 = [subtrees2 objectAtIndex:selectedVariantIndex3];

        representedString5 = [v42 representedString];

        [(UIKeyboardLayoutCursor *)self clearVariantStateForKey:actionCopy];
        v40 = 2;
        alternateKeyplaneName = representedString5;
      }

      if ([alternateKeyplaneName length])
      {
        v44 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:alternateKeyplaneName forKey:actionCopy inputFlags:v40];
        [v7 handleKeyEvent:v44];
      }

      goto LABEL_13;
    }

    alternateKeyplaneName = [(UIKBTree *)actionCopy fullRepresentedString];
    representedString6 = [(UIKBTree *)actionCopy representedString];
    selectedVariantIndex4 = [(UIKBTree *)actionCopy selectedVariantIndex];
    v32 = [(UIKeyboardLayoutCursor *)self variantCountForKey:actionCopy];
    if ([(UIKBTree *)actionCopy state]!= 16 || selectedVariantIndex4 == 0x7FFFFFFFFFFFFFFFLL || selectedVariantIndex4 >= v32)
    {
      if (![(UIKBTree *)actionCopy forceMultitap])
      {
        v52 = [representedString6 length];
        if (v52 >= [alternateKeyplaneName length] || !-[UIKeyboardLayoutCursor canMultitap](self, "canMultitap"))
        {
          v36 = 0;
          v37 = 0;
LABEL_74:
          if ([representedString6 length])
          {
            v59 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:representedString6 forKey:actionCopy inputFlags:v37 | v36];
            [v7 handleKeyEvent:v59];
          }

          goto LABEL_13;
        }
      }

      v45 = self->super._multitapKey;
      if (v45 == actionCopy)
      {
        fullRepresentedString = [(UIKBTree *)v45 fullRepresentedString];
        [fullRepresentedString rangeOfComposedCharacterSequenceAtIndex:self->super._multitapCount];
        v55 = v54;

        v56 = v55 + self->super._multitapCount;
        fullRepresentedString2 = [(UIKBTree *)self->super._multitapKey fullRepresentedString];
        self->super._multitapCount = v56 % [fullRepresentedString2 length];
        v36 = 4;
      }

      else
      {
        self->super._multitapCount = 0;
        v46 = actionCopy;
        v36 = 0;
        fullRepresentedString2 = self->super._multitapKey;
        self->super._multitapKey = v46;
      }

      [(UIKeyboardLayoutStar *)self touchMultitapTimer];
      v57 = [alternateKeyplaneName rangeOfComposedCharacterSequenceAtIndex:self->super._multitapCount];
      representedString7 = [alternateKeyplaneName substringWithRange:{v57, v58}];
      v37 = 0;
    }

    else
    {
      subtrees3 = [(UIKBTree *)actionCopy subtrees];
      v34 = [subtrees3 objectAtIndex:selectedVariantIndex4];

      representedString7 = [v34 representedString];

      [(UIKeyboardLayoutCursor *)self clearVariantStateForKey:actionCopy];
      v36 = 0;
      v37 = 2;
      representedString6 = v34;
    }

    representedString6 = representedString7;
    goto LABEL_74;
  }

LABEL_15:
}

void __40__UIKeyboardLayoutCursor_takeKeyAction___block_invoke()
{
  v0 = [&__block_literal_global_193_0 copy];
  v1 = qword_1ED49AF10;
  qword_1ED49AF10 = v0;
}

void __40__UIKeyboardLayoutCursor_takeKeyAction___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = [v5 currentInputMode];
  [v4 updateLastUsedInputMode:v6];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) representedString];
  [v7 setInputMode:v8 userInitiated:1 updateIndicator:0 executionContext:v3];

  v11 = +[UIKeyboardInputModeController sharedInputModeController];
  v9 = +[UIKeyboardInputModeController sharedInputModeController];
  v10 = [v9 currentInputMode];
  [v11 updateLastUsedInputMode:v10];
}

void __40__UIKeyboardLayoutCursor_takeKeyAction___block_invoke_4()
{
  v0 = [&__block_literal_global_200 copy];
  v1 = qword_1ED49AF20;
  qword_1ED49AF20 = v0;
}

- (void)clearVariantStateForKey:(id)key
{
  keyCopy = key;
  if (![(UIKeyboardLayoutCursor *)self suppressOperations])
  {
    [(UIKeyboardLayoutStar *)self setState:[(UIKeyboardLayoutCursor *)self activeStateForKey:keyCopy] forKey:keyCopy];
    [(UIKeyboardLayoutStar *)self setKeyboardDim:0];
    v4 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
    [(UIKeyboardLayoutStar *)self _didChangeKeyplaneWithContext:v4];
  }
}

- (void)handleVariantDeleteIfNecessaryForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy variantType])
  {
    subtrees = [keyCopy subtrees];
    v6 = [subtrees objectAtIndex:{objc_msgSend(keyCopy, "highlightedVariantIndex")}];

    if ([v6 interactionType] == 4 && !self->_didVariantDelete)
    {
      self->_didVariantDelete = 1;
      v7 = +[UIKeyboardImpl activeInstance];
      [v7 handleDelete];

      v8 = +[UIDevice currentDevice];
      [v8 _playInputDeleteSound];

      +[_UIKeyboardUsageTracking variantDeleteIncrement];
      v9 = dispatch_time(0, 200000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__UIKeyboardLayoutCursor_handleVariantDeleteIfNecessaryForKey___block_invoke;
      block[3] = &unk_1E70F35B8;
      block[4] = self;
      v14 = keyCopy;
      v10 = MEMORY[0x1E69E96A0];
      dispatch_after(v9, MEMORY[0x1E69E96A0], block);
      v11 = dispatch_time(0, 500000000);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __63__UIKeyboardLayoutCursor_handleVariantDeleteIfNecessaryForKey___block_invoke_2;
      v12[3] = &unk_1E70F3590;
      v12[4] = self;
      dispatch_after(v11, v10, v12);
    }
  }
}

void __63__UIKeyboardLayoutCursor_handleVariantDeleteIfNecessaryForKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1616] != 1)
  {
    return;
  }

  v3 = *(a1 + 40);
  v4 = [v2 currentKey];
  if (v3 != v4)
  {
    goto LABEL_3;
  }

  v11 = v4;
  v5 = [*(a1 + 40) state];

  if (v5 != 16)
  {
    return;
  }

  [*(a1 + 32) handleLinearDirectionalInput:4];
  v6 = +[UIKeyboardImpl activeInstance];
  v7 = [v6 canHandleDelete];

  v8 = *(a1 + 32);
  if (v7)
  {
    v12 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
    [v8 _didChangeKeyplaneWithContext:v12];
    v4 = v12;
LABEL_3:

    return;
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 32);

  [v10 clearVariantStateForKey:v9];
}

- (BOOL)handleLinearDirectionalInput:(int)input
{
  if (!self->_ignoreEventsUntilPressEnds)
  {
    currentKey = [(UIKeyboardLayoutCursor *)self currentKey];
    v7 = [(UIKeyboardLayoutCursor *)self variantCountForKey:currentKey];
    selectedVariantIndex = [currentKey selectedVariantIndex];
    selectedKeyIndex = self->_selectedKeyIndex;
    v10 = [(NSArray *)self->_keyplaneKeys count];
    if (input == 5)
    {
      [(UIKeyboardLayoutCursor *)self takeKeyAction:currentKey];
      v3 = self->_selectedKeyIndex != 0x7FFFFFFFFFFFFFFFLL;
LABEL_56:

      return v3;
    }

    v11 = v10 - 1;
    if (input != 4)
    {
      if (input != 3)
      {
        goto LABEL_55;
      }

      if ([currentKey state] == 16 && selectedVariantIndex - 0x7FFFFFFFFFFFFFFFLL >= 0x8000000000000002)
      {
        v12 = selectedVariantIndex - 1;
        goto LABEL_13;
      }

      if (self->_selectedKeyIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_55;
      }

      if ([(UIKeyboardLayoutCursor *)self isAppRightToLeft])
      {
        if (selectedKeyIndex >= v11)
        {
          goto LABEL_55;
        }

        goto LABEL_38;
      }

      if (selectedKeyIndex >= 1)
      {
LABEL_38:
        if ([currentKey state] == 16)
        {
          [(UIKeyboardLayoutStar *)self setKeyboardDim:0];
        }

        v13 = 0;
        while (1)
        {
          v18 = v13;
          if ([(UIKeyboardLayoutCursor *)self isAppRightToLeft])
          {
            ++selectedKeyIndex;
          }

          else
          {
            --selectedKeyIndex;
          }

          v13 = [(NSArray *)self->_keyplaneKeys objectAtIndex:selectedKeyIndex];

          if (!v13)
          {
            break;
          }

          visible = [v13 visible];
          if (selectedKeyIndex < 1 || (visible & 1) != 0 || selectedKeyIndex >= [(NSArray *)self->_keyplaneKeys count]- 1)
          {
            if (![v13 visible])
            {
              break;
            }

            v20 = [(UIKeyboardLayoutCursor *)self variantCountForKey:v13];
            if (v20)
            {
              v17 = v20 - 1;
            }

            else
            {
              v17 = 0x7FFFFFFFFFFFFFFFLL;
            }

            selfCopy2 = self;
            goto LABEL_53;
          }
        }

LABEL_54:
      }

LABEL_55:
      v3 = 0;
      goto LABEL_56;
    }

    if ([currentKey state] == 16 && selectedVariantIndex != 0x7FFFFFFFFFFFFFFFLL && selectedVariantIndex < v7 - 1)
    {
      v12 = selectedVariantIndex + 1;
LABEL_13:
      [(UIKeyboardLayoutCursor *)self setHighlightedVariantIndex:v12 key:currentKey];
      [(UIKeyboardLayoutCursor *)self handleVariantDeleteIfNecessaryForKey:currentKey];
LABEL_14:
      v3 = 1;
      goto LABEL_56;
    }

    if (self->_selectedKeyIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_55;
    }

    if ([(UIKeyboardLayoutCursor *)self isAppRightToLeft])
    {
      if (selectedKeyIndex <= 0)
      {
        goto LABEL_55;
      }
    }

    else if (selectedKeyIndex >= v11)
    {
      goto LABEL_55;
    }

    if ([currentKey state] == 16)
    {
      [(UIKeyboardLayoutStar *)self setKeyboardDim:0];
    }

    v13 = 0;
    while (1)
    {
      v14 = v13;
      if ([(UIKeyboardLayoutCursor *)self isAppRightToLeft])
      {
        --selectedKeyIndex;
      }

      else
      {
        ++selectedKeyIndex;
      }

      v13 = [(NSArray *)self->_keyplaneKeys objectAtIndex:selectedKeyIndex];

      if (!v13)
      {
        goto LABEL_54;
      }

      visible2 = [v13 visible];
      if (selectedKeyIndex < 1 || (visible2 & 1) != 0 || selectedKeyIndex >= [(NSArray *)self->_keyplaneKeys count]- 1)
      {
        if (![v13 visible])
        {
          goto LABEL_54;
        }

        selfCopy2 = self;
        v17 = 0;
LABEL_53:
        [(UIKeyboardLayoutCursor *)selfCopy2 setHighlightedVariantIndex:v17 key:v13];
        [(UIKeyboardLayoutCursor *)self setSelectedKeyIndex:selectedKeyIndex];

        goto LABEL_14;
      }
    }
  }

  return 1;
}

- (BOOL)handleVisualDirectionalInput:(int)input
{
  if (!self->_ignoreEventsUntilPressEnds)
  {
    self->_didVariantDelete = 0;
    currentKey = [(UIKeyboardLayoutCursor *)self currentKey];
    v7 = currentKey;
    if (currentKey)
    {
      [currentKey frame];
      v9 = v8;
    }

    else
    {
      [(UIKeyboardLayoutCursor *)self defaultCursorAdjustDistance];
      v9 = v10;
    }

    [(UIKeyboardLayoutCursor *)self defaultCursorAdjustDistance];
    if (v9 > v11)
    {
      [(UIKeyboardLayoutCursor *)self defaultCursorAdjustDistance];
      v9 = v12;
    }

    if (v7)
    {
      [v7 frame];
      v14 = v13;
    }

    else
    {
      [(UIKeyboardLayoutCursor *)self defaultCursorAdjustDistance];
      v14 = v15;
    }

    subtrees = [(UIKBTree *)self->super._keyboard subtrees];
    v17 = [subtrees indexOfObject:self->super._keyplane];

    selectedVariantIndex = [v7 selectedVariantIndex];
    v18 = [(UIKeyboardLayoutCursor *)self variantCountForKey:v7];
    subtrees2 = [v7 subtrees];
    v20 = [subtrees2 count];

    selectedKeyIndex = self->_selectedKeyIndex;
    if ([v7 state] == 16)
    {
      v22 = [(UIKBTree *)self->super._keyplane firstCachedKeyWithName:@"Monolith-Recent-Inputs-Key"];
      v23 = v7 != v22;
    }

    else
    {
      v23 = 1;
    }

    if (input > 3)
    {
      if (input != 4)
      {
        if (input == 5)
        {
          [(UIView *)self->_selectionView alpha];
          if (v29 != 0.0 && [v7 interactionType] != 10)
          {
            [(UIKeyboardLayoutCursor *)self takeKeyAction:v7];
          }
        }

        else if (input == 6)
        {
          v24 = [(UIKBTree *)self->super._keyplane stringForProperty:@"shift-alternate"];

          if (v24 && (keyboard = self->super._keyboard, [(UIKBTree *)self->super._keyplane stringForProperty:@"shift-alternate"], v26 = objc_claimAutoreleasedReturnValue(), [(UIKBTree *)keyboard subtreeWithName:v26], v27 = objc_claimAutoreleasedReturnValue(), v26, v27))
          {
            name = [v27 name];
            [(UIKeyboardLayoutCursor *)self setKeyplaneName:name];

            +[_UIKeyboardUsageTracking letterCaseToggleIncrement];
          }

          else
          {
            v30 = 0;
            v31 = v17 + 1;
            for (i = -1; ; --i)
            {
              v33 = v30;
              subtrees3 = [(UIKBTree *)self->super._keyboard subtrees];
              subtrees4 = [(UIKBTree *)self->super._keyboard subtrees];
              v30 = [subtrees3 objectAtIndex:{v31 % objc_msgSend(subtrees4, "count")}];

              if (!i)
              {
                break;
              }

              name2 = [v30 name];
              if ([(UIKeyboardLayoutCursor *)self isKeyplaneDisabledWithName:name2])
              {
              }

              else
              {
                name3 = [v30 name];
                v38 = [(UIKeyboardLayoutCursor *)self shouldToggleKeyplaneWithName:name3];

                if (v38)
                {
                  break;
                }
              }

              ++v31;
            }

            if (v30)
            {
              name4 = [v30 name];
              [(UIKeyboardLayoutCursor *)self setKeyplaneName:name4];
            }
          }
        }

        goto LABEL_86;
      }

      if ([v7 state] != 16)
      {
        selfCopy2 = self;
        v41 = v9;
LABEL_58:
        v42 = [(UIKeyboardLayoutCursor *)selfCopy2 targetKeyIndexAtOffset:v7 fromKey:v41, 0.0];
        selectedKeyIndex = 0x7FFFFFFFFFFFFFFFLL;
        if (v42 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v43 = v42;
          [(UIKeyboardLayoutCursor *)self setSelectedKeyIndex:v42];
LABEL_85:
          selectedKeyIndex = v43;
          goto LABEL_86;
        }

        goto LABEL_86;
      }

      if (v23)
      {
        v3 = 1;
        if (v18 < 1 || selectedVariantIndex >= v18 - 1)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v3 = 0;
        if (self->_disableTouchInput || v18 < 1)
        {
          goto LABEL_87;
        }
      }

      goto LABEL_77;
    }

    if (input != 1)
    {
      if (input != 2)
      {
        if (input != 3)
        {
          goto LABEL_86;
        }

        if ([v7 state] == 16)
        {
          if (v23)
          {
            v3 = 1;
            if (v18 < 1 || selectedVariantIndex < 1)
            {
              goto LABEL_87;
            }
          }

          else
          {
            v3 = 0;
            if (self->_disableTouchInput || v18 < 1)
            {
              goto LABEL_87;
            }
          }

          goto LABEL_80;
        }

        v41 = -v9;
        selfCopy2 = self;
        goto LABEL_58;
      }

      if ([v7 state] != 16)
      {
        goto LABEL_68;
      }

      if (!v23 && self->_disableTouchInput)
      {
        if (v18 < 1)
        {
LABEL_68:
          selfCopy6 = self;
          v44 = v14;
LABEL_69:
          v46 = [(UIKeyboardLayoutCursor *)selfCopy6 targetKeyIndexAtOffset:v7 fromKey:0.0, v44];
          selectedKeyIndex = 0x7FFFFFFFFFFFFFFFLL;
          if (v46 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v43 = v46;
            [(UIKeyboardLayoutCursor *)self setSelectedKeyIndex:v46];
            currentKey2 = [(UIKeyboardLayoutCursor *)self currentKey];
            if ([currentKey2 displayType] == 38)
            {
              v48 = [(UIKeyboardLayoutCursor *)self variantCountForKey:currentKey2];
              if (v48)
              {
                v49 = v48;
                if ([(UIKeyboardLayoutCursor *)self isAppRightToLeft])
                {
                  v50 = v49 - 1;
                }

                else
                {
                  v50 = 0;
                }
              }

              else
              {
                v50 = 0x7FFFFFFFFFFFFFFFLL;
              }

              [(UIKeyboardLayoutCursor *)self setHighlightedVariantIndex:v50 key:currentKey2];
            }

            goto LABEL_85;
          }

LABEL_86:
          v3 = selectedKeyIndex != 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_87;
        }

LABEL_77:
        selfCopy5 = self;
        v52 = 4;
LABEL_81:
        v3 = [(UIKeyboardLayoutCursor *)selfCopy5 handleLinearDirectionalInput:v52];
        goto LABEL_87;
      }

      if (![v7 variantType] || v20 < 1 || selectedVariantIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_68;
      }

LABEL_67:
      [(UIKeyboardLayoutCursor *)self clearVariantStateForKey:v7];
      v3 = 1;
LABEL_87:

      return v3;
    }

    if ([v7 state] == 16)
    {
      if (v23 || !self->_disableTouchInput)
      {
        if ([v7 variantType] && v20 >= 1 && selectedVariantIndex != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_67;
        }
      }

      else if (v18 >= 1)
      {
LABEL_80:
        selfCopy5 = self;
        v52 = 3;
        goto LABEL_81;
      }
    }

    v44 = -v14;
    selfCopy6 = self;
    goto LABEL_69;
  }

  return 1;
}

- (unint64_t)getNextKeyplaneIndex:(unint64_t)index
{
  if ([(UIKeyboardLayoutCursor *)self suppressOperations])
  {
    return index;
  }

  if (![(UIKeyboardLayoutCursor *)self shouldToggleLetterCaseNext]|| ([(UIKBTree *)self->super._keyplane stringForProperty:@"shift-alternate"], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6) || ([(UIKeyboardLayoutCursor *)self setShouldToggleLetterCaseNext:0], keyboard = self->super._keyboard, [(UIKBTree *)self->super._keyplane stringForProperty:@"shift-alternate"], v8 = objc_claimAutoreleasedReturnValue(), [(UIKBTree *)keyboard subtreeWithName:v8], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9) || (+[_UIKeyboardUsageTracking letterCaseToggleIncrement], indexCopy2 = [(UIKBTree *)self->super._keyboard indexOfSubtree:v9], v9, indexCopy2 == index))
  {
    v10 = 0;
    indexCopy2 = index;
    while (1)
    {
      v11 = v10;
      subtrees = [(UIKBTree *)self->super._keyboard subtrees];
      indexCopy2 = (indexCopy2 + 1) % [subtrees count];

      subtrees2 = [(UIKBTree *)self->super._keyboard subtrees];
      v10 = [subtrees2 objectAtIndex:indexCopy2];

      if (indexCopy2 == index)
      {
        break;
      }

      name = [v10 name];
      if ([(UIKeyboardLayoutCursor *)self isKeyplaneDisabledWithName:name])
      {
      }

      else
      {
        name2 = [v10 name];
        v16 = [(UIKeyboardLayoutCursor *)self shouldToggleKeyplaneWithName:name2];

        if (v16)
        {
          goto LABEL_14;
        }
      }
    }

    indexCopy2 = index;
LABEL_14:
  }

  return indexCopy2;
}

- (void)switchToDictationKeyplaneWithActivationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[UIDictationController sharedInstance];
  dictationEnabled = [v5 dictationEnabled];

  if (dictationEnabled)
  {
    v7 = +[UIDictationController sharedInstance];
    [v7 setActivationIdentifier:identifierCopy];

    name = [(UIKBTree *)self->super._keyplane name];
    [(UIKeyboardLayoutCursor *)self setKeyplaneBeforeDictation:name];

    [(UIKeyboardLayoutCursor *)self setSelectedKeyBeforeDictation:self->_selectedKeyIndex];
    if (UIKeyboardTypeSupportsDictationSpelling([(UITextInputTraits *)self->super.super._inputTraits dictationKeyboardType]) || [(UITextInputTraits *)self->super.super._inputTraits isSecureTextEntry])
    {
      v9 = 0;
    }

    else
    {
      v9 = ![(UITextInputTraits *)self->super.super._inputTraits forceSpellingDictation];
    }

    if (((byte_1EA95E53C != 0) & ~_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference__UIATVClearBeforeDictation, @"_UIATVClearBeforeDictation")) != 0 || v9)
    {
      v10 = +[UIKeyboardImpl activeInstance];
      [v10 handleClear];
    }

    v11[4] = self;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__UIKeyboardLayoutCursor_switchToDictationKeyplaneWithActivationIdentifier___block_invoke;
    v12[3] = &unk_1E70F3590;
    v12[4] = self;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __76__UIKeyboardLayoutCursor_switchToDictationKeyplaneWithActivationIdentifier___block_invoke_2;
    v11[3] = &unk_1E70F5AC0;
    [UIView animateWithDuration:v12 animations:v11 completion:0.133];
  }
}

void __76__UIKeyboardLayoutCursor_switchToDictationKeyplaneWithActivationIdentifier___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 688) setAlpha:1.0];
  v2 = [*(a1 + 32) keyplaneBeforeDictation];

  if (v2)
  {
    [*(a1 + 32) setKeyplaneName:@"Dictation"];
    v3 = [*(a1 + 32) window];
    [*(a1 + 32) setFocusWindow:v3];

    v5 = [*(a1 + 32) focusWindow];
    v4 = [v5 _focusEventRecognizer];
    [v4 setEnabled:0];
  }
}

- (void)returnToKeyplaneAfterDictation
{
  keyplaneBeforeDictation = [(UIKeyboardLayoutCursor *)self keyplaneBeforeDictation];

  if (keyplaneBeforeDictation)
  {
    keyplaneBeforeDictation2 = [(UIKeyboardLayoutCursor *)self keyplaneBeforeDictation];
    [(UIKeyboardLayoutCursor *)self setKeyplaneName:keyplaneBeforeDictation2];

    [(UIKeyboardLayoutCursor *)self setKeyplaneBeforeDictation:0];
    [(UIKeyboardLayoutCursor *)self setSelectedKeyBeforeDictation:0x7FFFFFFFFFFFFFFFLL];
    [(UIView *)self->super._keyplaneView setAlpha:0.0];
    v5[4] = self;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__UIKeyboardLayoutCursor_returnToKeyplaneAfterDictation__block_invoke;
    v6[3] = &unk_1E70F3590;
    v6[4] = self;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__UIKeyboardLayoutCursor_returnToKeyplaneAfterDictation__block_invoke_2;
    v5[3] = &unk_1E70F5AC0;
    [UIView animateWithDuration:v6 animations:v5 completion:0.133];
  }
}

uint64_t __56__UIKeyboardLayoutCursor_returnToKeyplaneAfterDictation__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) focusWindow];
  v3 = [v2 _focusEventRecognizer];
  [v3 setEnabled:1];

  v4 = *(a1 + 32);

  return [v4 setFocusWindow:0];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([(UIKeyboardLayout *)self disableInteraction])
  {
    goto LABEL_28;
  }

  currentKey = [(UIKeyboardLayoutCursor *)self currentKey];
  [(UIKeyboardLayoutStar *)self setActiveKey:currentKey];

  if ([(UIKBScreenTraits *)self->super.super._screenTraits idiom]!= 2)
  {
    goto LABEL_28;
  }

  self->_didVariantDelete = 0;
  if (_UIPressesContainsPressType(beganCopy, 4))
  {
    v9 = +[UIKeyboardImpl activeInstance];
    [v9 touchLongPressTimerWithDelay:1.0];

    v10 = UIKeyboardTypeSupportsDictationSpelling([(UITextInputTraits *)self->super.super._inputTraits dictationKeyboardType]) || [(UITextInputTraits *)self->super.super._inputTraits isSecureTextEntry]|| [(UITextInputTraits *)self->super.super._inputTraits forceSpellingDictation];
    activeKey = [(UIKeyboardLayoutStar *)self activeKey];
    interactionType = [activeKey interactionType];

    v17 = +[UIDevice currentDevice];
    v18 = v17;
    if (interactionType == 4)
    {
      [v17 _playInputDeleteSound];

      if (v10)
      {
        v19 = +[UIDictationController activeInstance];
        [v19 markKeyboardDeleteMetricEvent];
LABEL_24:
      }
    }

    else
    {
      [v17 _playInputSelectSound];

      if (v10)
      {
        v19 = +[UIDictationController activeInstance];
        [v19 markKeyboardInputMetricEvent];
        goto LABEL_24;
      }
    }

    keyplaneView = self->super._keyplaneView;
    activeKey2 = [(UIKeyboardLayoutStar *)self activeKey];
    v22 = [(UIKBKeyplaneView *)keyplaneView viewForKey:activeKey2];

    if (v22)
    {
      keyViewAnimator = [(UIKeyboardLayoutCursor *)self keyViewAnimator];
      activeKey3 = [(UIKeyboardLayoutStar *)self activeKey];
      [keyViewAnimator transitionKeyView:v22 fromState:objc_msgSend(activeKey3 toState:"state") completion:{12, 0}];
    }

    goto LABEL_28;
  }

  if ((_UIPressesContainsPressType(beganCopy, 18) & 1) != 0 || _UIPressesContainsPressType(beganCopy, 6) && (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference__UIAllowDictationFromPlayPause, @"_UIAllowDictationFromPlayPause") & 1) == 0 && byte_1EA95E534)
  {
    v11 = +[UIKeyboardImpl activeInstance];
    shouldShowDictationKey = [v11 shouldShowDictationKey];

    if (shouldShowDictationKey && [(NSString *)self->super._keyplaneName rangeOfString:@"Dictation"]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [eventCopy _hidEvent];
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:IOHIDEventGetSenderID()];
      stringValue = [v13 stringValue];

      [(UIKeyboardLayoutCursor *)self switchToDictationKeyplaneWithActivationIdentifier:stringValue];
    }
  }

  else if (_UIPressesContainsPressType(beganCopy, 5) && ![(UIKeyboardLayoutCursor *)self _menuTapShouldExitVariants]&& ![(UIKeyboardLayoutCursor *)self _menuTapShouldStopDictation])
  {
    v25.receiver = self;
    v25.super_class = UIKeyboardLayoutCursor;
    [(UIResponder *)&v25 pressesBegan:beganCopy withEvent:eventCopy];
  }

LABEL_28:
}

- (BOOL)_menuTapShouldExitVariants
{
  currentKey = [(UIKeyboardLayoutCursor *)self currentKey];
  v3 = currentKey;
  if (currentKey && [currentKey state] == 16)
  {
    subtrees = [v3 subtrees];
    if ([subtrees count])
    {
      v5 = [v3 variantType] != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_menuTapShouldStopDictation
{
  if ([(UIKeyboardLayout *)self idiom]!= 2 || !+[UIDictationController isRunning])
  {
    return 0;
  }

  name = [(UIKBTree *)self->super._keyplane name];
  v4 = [name rangeOfString:@"Dictation"] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if ([(UIKeyboardLayout *)self disableInteraction])
  {
    goto LABEL_27;
  }

  self->_didVariantDelete = 0;
  if (_UIPressesContainsPressType(endedCopy, 4))
  {
    if ([(UIKeyboardLayout *)self idiom]== 2 && [(NSString *)self->super._keyplaneName rangeOfString:@"Dictation"]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = +[UIDictationController activeInstance];
      [v8 stopDictation:0];
    }

    activeKey = [(UIKeyboardLayoutStar *)self activeKey];

    keyplaneView = self->super._keyplaneView;
    activeKey2 = [(UIKeyboardLayoutStar *)self activeKey];
    v12 = [(UIKBKeyplaneView *)keyplaneView viewForKey:activeKey2];

    if (v12)
    {
      activeKey3 = [(UIKeyboardLayoutStar *)self activeKey];
      interactionType = [activeKey3 interactionType];

      if (interactionType != 16)
      {
        keyViewAnimator = [(UIKeyboardLayoutCursor *)self keyViewAnimator];
        activeKey4 = [(UIKeyboardLayoutStar *)self activeKey];
        [keyViewAnimator transitionKeyView:v12 fromState:objc_msgSend(activeKey4 toState:"state") completion:{4, 0}];
      }
    }

    if (!activeKey)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((_UIPressesContainsPressType(endedCopy, 18) & 1) == 0 && (!_UIPressesContainsPressType(endedCopy, 6) || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference__UIAllowDictationFromPlayPause, @"_UIAllowDictationFromPlayPause") & 1) != 0 || !byte_1EA95E534))
  {
LABEL_16:
    [(UIKeyboardLayoutCursor *)self _handlePresses:endedCopy withEvent:eventCopy];
    goto LABEL_17;
  }

  [(UIKeyboardLayoutCursor *)self returnToKeyplaneAfterDictation];
LABEL_17:
  v17 = +[UIKeyboardImpl activeInstance];
  [v17 clearLongPressTimer];

  if (_UIPressesContainsPressType(endedCopy, 4))
  {
    [(UIKeyboardLayoutStar *)self setActiveKey:0];
LABEL_19:
    self->_ignoreEventsUntilPressEnds = 0;
    goto LABEL_27;
  }

  if (!_UIPressesContainsPressType(endedCopy, 5))
  {
    goto LABEL_27;
  }

  if ([(UIKeyboardLayoutCursor *)self _menuTapShouldExitVariants])
  {
    currentKey = [(UIKeyboardLayoutCursor *)self currentKey];
    [(UIKeyboardLayoutCursor *)self clearVariantStateForKey:currentKey];

    goto LABEL_19;
  }

  if ([(UIKeyboardLayoutCursor *)self _menuTapShouldStopDictation])
  {
    v19 = +[UIDictationController activeInstance];
    [v19 stopDictation:0];
  }

  else if (!self->_isForwardingEvent)
  {
    self->_isForwardingEvent = 1;
    v20.receiver = self;
    v20.super_class = UIKeyboardLayoutCursor;
    [(UIResponder *)&v20 pressesEnded:endedCopy withEvent:eventCopy];
    self->_isForwardingEvent = 0;
  }

LABEL_27:
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if (![(UIKeyboardLayout *)self disableInteraction])
  {
    self->_didVariantDelete = 0;
    v8 = +[UIKeyboardImpl activeInstance];
    [v8 clearLongPressTimer];

    if (_UIPressesContainsPressType(cancelledCopy, 4))
    {
      keyplaneView = self->super._keyplaneView;
      activeKey = [(UIKeyboardLayoutStar *)self activeKey];
      currentKey = [(UIKBKeyplaneView *)keyplaneView viewForKey:activeKey];

      if (currentKey)
      {
        keyViewAnimator = [(UIKeyboardLayoutCursor *)self keyViewAnimator];
        activeKey2 = [(UIKeyboardLayoutStar *)self activeKey];
        [keyViewAnimator transitionKeyView:currentKey fromState:objc_msgSend(activeKey2 toState:"state") completion:{4, 0}];
      }

      [(UIKeyboardLayoutStar *)self setActiveKey:0];
      self->_ignoreEventsUntilPressEnds = 0;
      goto LABEL_6;
    }

    if (_UIPressesContainsPressType(cancelledCopy, 5))
    {
      if ([(UIKeyboardLayoutCursor *)self _menuTapShouldExitVariants])
      {
        currentKey = [(UIKeyboardLayoutCursor *)self currentKey];
        [(UIKeyboardLayoutCursor *)self clearVariantStateForKey:currentKey];
LABEL_6:

        goto LABEL_7;
      }

      if ([(UIKeyboardLayoutCursor *)self _menuTapShouldStopDictation])
      {
        v14 = +[UIDictationController activeInstance];
        [v14 stopDictation:0];

        goto LABEL_7;
      }

      if (self->_isForwardingEvent)
      {
        goto LABEL_7;
      }

      self->_isForwardingEvent = 1;
      [(UIResponder *)&v16 pressesCancelled:cancelledCopy withEvent:eventCopy, v15.receiver, v15.super_class, self, UIKeyboardLayoutCursor];
    }

    else
    {
      if (!_UIPressesContainsPressType(cancelledCopy, 6))
      {
        goto LABEL_7;
      }

      if ([(UIKeyboardLayoutCursor *)self canHandleEvent:eventCopy])
      {
        [(UIKeyboardLayoutCursor *)self _handlePresses:cancelledCopy withEvent:eventCopy];
        goto LABEL_7;
      }

      if (self->_isForwardingEvent)
      {
        goto LABEL_7;
      }

      self->_isForwardingEvent = 1;
      [(UIResponder *)&v15 pressesCancelled:cancelledCopy withEvent:eventCopy, self, UIKeyboardLayoutCursor, v16.receiver, v16.super_class];
    }

    self->_isForwardingEvent = 0;
  }

LABEL_7:
}

- (BOOL)_handlePresses:(id)presses withEvent:(id)event
{
  v31 = *MEMORY[0x1E69E9840];
  pressesCopy = presses;
  eventCopy = event;
  type = [0 type];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (qword_1ED49AF30 != -1)
  {
    dispatch_once(&qword_1ED49AF30, &__block_literal_global_214_0);
    if (pressesCopy)
    {
      goto LABEL_4;
    }

LABEL_33:
    if (os_variant_has_internal_diagnostics())
    {
      v23 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "presses should never be nil. Caller must filter [event allPresses] appropriately and pass in a set of UIPress objects that matches current phase. Not doing so runs a risk of triggering infinite loop.", buf, 2u);
      }
    }

    else
    {
      v22 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49AF40) + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "presses should never be nil. Caller must filter [event allPresses] appropriately and pass in a set of UIPress objects that matches current phase. Not doing so runs a risk of triggering infinite loop.", buf, 2u);
      }
    }

    allPresses = [eventCopy allPresses];
    goto LABEL_5;
  }

  if (!pressesCopy)
  {
    goto LABEL_33;
  }

LABEL_4:
  allPresses = pressesCopy;
LABEL_5:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = allPresses;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v24 = eventCopy;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = qword_1ED49AF38;
        v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v15, "type")}];
        if ([v16 containsObject:v17])
        {
          phase = [v15 phase];

          if (phase != 2)
          {
            type = [v15 type];
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v12);
LABEL_16:
    eventCopy = v24;
  }

LABEL_18:
  if ([(UIKeyboardLayout *)self idiom]== 2 && type > 5)
  {
    if (type == 18)
    {
      goto LABEL_30;
    }

    if (type == 6)
    {
      _menuTapShouldStopDictation = [(UIKeyboardLayoutCursor *)self handleVisualDirectionalInput:6];
      goto LABEL_28;
    }

LABEL_29:
    v20 = 0;
    goto LABEL_31;
  }

  if (type == 4)
  {
    _menuTapShouldStopDictation = [(UIKeyboardLayoutCursor *)self handleLinearDirectionalInput:5];
    goto LABEL_28;
  }

  if (type != 5)
  {
    goto LABEL_29;
  }

  if ([(UIKeyboardLayoutCursor *)self _menuTapShouldExitVariants])
  {
LABEL_30:
    v20 = 1;
    goto LABEL_31;
  }

  _menuTapShouldStopDictation = [(UIKeyboardLayoutCursor *)self _menuTapShouldStopDictation];
LABEL_28:
  v20 = _menuTapShouldStopDictation;
LABEL_31:

  return v20;
}

void __51__UIKeyboardLayoutCursor__handlePresses_withEvent___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1EFE2C688];
  v1 = qword_1ED49AF38;
  qword_1ED49AF38 = v0;
}

- (void)remoteControlReceivedWithEvent:(id)event
{
  eventCopy = event;
  if (![(UIKeyboardLayout *)self disableInteraction])
  {
    [(UIKeyboardLayoutCursor *)self _handleRemoteControlReceivedWithEvent:eventCopy];
  }
}

- (BOOL)_handleRemoteControlReceivedWithEvent:(id)event
{
  v4 = [event subtype] - 103;
  if (v4 > 9 || ((0x3A9u >> v4) & 1) == 0)
  {
    return 0;
  }

  v5 = dword_18A67F4B0[v4];

  return [(UIKeyboardLayoutCursor *)self handleVisualDirectionalInput:v5];
}

- (void)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  if (![(UIKeyboardLayout *)self disableInteraction])
  {
    [(UIKeyboardLayoutCursor *)self _handleWheelChangedWithEvent:eventCopy];
  }
}

- (BOOL)_handleWheelChangedWithEvent:(id)event
{
  v4 = [event subtype] - 200;
  if (v4 > 5)
  {
    return 0;
  }

  v5 = dword_18A67F4D8[v4];

  return [(UIKeyboardLayoutCursor *)self handleLinearDirectionalInput:v5];
}

- (void)_moveWithEvent:(id)event
{
  eventCopy = event;
  if (![(UIKeyboardLayout *)self disableInteraction])
  {
    [(UIKeyboardLayoutCursor *)self _handleMoveWithEvent:eventCopy];
  }
}

- (BOOL)_handleMoveWithEvent:(id)event
{
  eventCopy = event;
  _focusHeading = [eventCopy _focusHeading];
  v6 = 0;
  if (_focusHeading > 7)
  {
    if (_focusHeading != 8)
    {
      if (_focusHeading == 16)
      {
        if ([(UIKeyboardLayoutCursor *)self isAppRightToLeft])
        {
LABEL_14:
          v7 = 3;
          goto LABEL_15;
        }
      }

      else
      {
        if (_focusHeading != 32)
        {
          goto LABEL_19;
        }

        if (![(UIKeyboardLayoutCursor *)self isAppRightToLeft])
        {
          goto LABEL_14;
        }
      }
    }

    v7 = 4;
  }

  else
  {
    switch(_focusHeading)
    {
      case 1:
        v7 = 1;
        break;
      case 2:
        v7 = 2;
        break;
      case 4:
        goto LABEL_14;
      default:
        goto LABEL_19;
    }
  }

LABEL_15:
  if (-[UIKeyboardLayoutCursor _isDirectionalHeading:](self, "_isDirectionalHeading:", [eventCopy _focusHeading]))
  {
    v8 = [(UIKeyboardLayoutCursor *)self handleVisualDirectionalInput:v7];
  }

  else
  {
    v8 = [(UIKeyboardLayoutCursor *)self handleLinearDirectionalInput:v7];
  }

  v6 = v8;
LABEL_19:

  return v6;
}

- (unint64_t)_indexOfFirstKeyPassingTest:(id)test
{
  testCopy = test;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(UIKeyboardLayoutCursor *)self _isKeyboardReverseOfAppLayoutDirection])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  keyplaneKeys = self->_keyplaneKeys;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__UIKeyboardLayoutCursor__indexOfFirstKeyPassingTest___block_invoke;
  v10[3] = &unk_1E71147C0;
  v7 = testCopy;
  v11 = v7;
  v12 = &v13;
  [(NSArray *)keyplaneKeys enumerateObjectsWithOptions:v5 usingBlock:v10];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t __54__UIKeyboardLayoutCursor__indexOfFirstKeyPassingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (BOOL)_isKeyboardReverseOfAppLayoutDirection
{
  v2 = MEMORY[0x1E695DF58];
  v3 = +[UIKeyboardImpl activeInstance];
  _getLocalizedInputMode = [v3 _getLocalizedInputMode];
  LOBYTE(v2) = [v2 characterDirectionForLanguage:_getLocalizedInputMode] == 1;

  return v2 ^ ([UIApp userInterfaceLayoutDirection] == 0);
}

- (BOOL)isKeyboardRightToLeft
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v2 currentInputMode];
  isDefaultRightToLeft = [currentInputMode isDefaultRightToLeft];

  return isDefaultRightToLeft;
}

- (UIWindow)focusWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_focusWindow);

  return WeakRetained;
}

@end