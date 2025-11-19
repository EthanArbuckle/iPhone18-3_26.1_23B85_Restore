@interface UIKeyboardLayoutCursor
+ (CGSize)keyboardSizeForInputMode:(id)a3 screenTraits:(id)a4 keyboardType:(int64_t)a5;
+ (id)carKeyboardNameForKeyboard:(id)a3 screenTraits:(id)a4;
- (BOOL)_handleMoveWithEvent:(id)a3;
- (BOOL)_handlePresses:(id)a3 withEvent:(id)a4;
- (BOOL)_handleRemoteControlReceivedWithEvent:(id)a3;
- (BOOL)_handleWheelChangedWithEvent:(id)a3;
- (BOOL)_isKeyboardReverseOfAppLayoutDirection;
- (BOOL)_menuTapShouldExitVariants;
- (BOOL)_menuTapShouldStopDictation;
- (BOOL)canHandlePresses:(id)a3 withEvent:(id)a4;
- (BOOL)canMultitap;
- (BOOL)diacriticForwardCompose;
- (BOOL)handleLinearDirectionalInput:(int)a3;
- (BOOL)handleVisualDirectionalInput:(int)a3;
- (BOOL)ignoresShiftState;
- (BOOL)isAlphabeticPlane;
- (BOOL)isKanaPlane;
- (BOOL)isKeyboardRightToLeft;
- (BOOL)isKeyplaneDisabledWithName:(id)a3;
- (BOOL)refreshSelectedCellIfNecessaryForKey:(id)a3 animated:(BOOL)a4;
- (BOOL)shouldMergeKey:(id)a3;
- (BOOL)shouldToggleKeyplaneWithName:(id)a3;
- (BOOL)usesAutoShift;
- (CGRect)selectionFrameForKeyIndex:(int64_t)a3;
- (UIKBTree)currentKey;
- (UIKeyboardLayoutCursor)initWithFrame:(CGRect)a3;
- (UIWindow)focusWindow;
- (id)_keyplaneForKeyplaneProperties;
- (id)cacheTokenForKeyplane:(id)a3;
- (id)keyHitTestInSameRowAsCenter:(CGPoint)a3 size:(CGSize)a4;
- (id)keyViewAnimator;
- (int)activeStateForKey:(id)a3;
- (int)enabledStateForKey:(id)a3;
- (int)stateForKeyplaneSwitchKey:(id)a3;
- (int64_t)defaultSelectedVariantIndexForKey:(id)a3 withActions:(unint64_t)a4;
- (int64_t)targetKeyIndexAtOffset:(CGPoint)a3 fromKey:(id)a4;
- (int64_t)targetKeyIndexFromPoint:(CGPoint)a3 inKeys:(id)a4;
- (unint64_t)_indexOfFirstKeyPassingTest:(id)a3;
- (unint64_t)cursorLocation;
- (unint64_t)downActionFlagsForKey:(id)a3;
- (unint64_t)getNextKeyplaneIndex:(unint64_t)a3;
- (unint64_t)variantCountForKey:(id)a3;
- (void)_moveWithEvent:(id)a3;
- (void)_wheelChangedWithEvent:(id)a3;
- (void)acceptRecentInputIfNecessary;
- (void)alertDidDismiss;
- (void)clearVariantStateForKey:(id)a3;
- (void)configureFloatingContentViewsIfNeeded;
- (void)deactivateKey:(id)a3;
- (void)dealloc;
- (void)didSelectRecentInputString:(id)a3;
- (void)endMultitapForKey:(id)a3;
- (void)handleVariantDeleteIfNecessaryForKey:(id)a3;
- (void)longPressAction;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)remoteControlReceivedWithEvent:(id)a3;
- (void)restoreFocusFromEntryPoint:(CGPoint)a3;
- (void)returnToKeyplaneAfterDictation;
- (void)runWithSuppressedActions:(id)a3;
- (void)selectInitialKeyIfNecessary;
- (void)setCursorLocation:(unint64_t)a3;
- (void)setHighlightedVariantIndex:(int64_t)a3 key:(id)a4;
- (void)setKeyboardAppearance:(int64_t)a3;
- (void)setKeyboardName:(id)a3 appearance:(int64_t)a4;
- (void)setKeyplaneName:(id)a3;
- (void)setRecentInputs:(id)a3;
- (void)setRenderConfig:(id)a3;
- (void)setSelectedKeyIndex:(int64_t)a3;
- (void)setShift:(BOOL)a3;
- (void)showKeyboardWithInputTraits:(id)a3 screenTraits:(id)a4 splitTraits:(id)a5;
- (void)showPopupKeyplaneSwitcher;
- (void)showRecentInputsAlert;
- (void)switchToDictationKeyplaneWithActivationIdentifier:(id)a3;
- (void)takeKeyAction:(id)a3;
- (void)updateDictationHelpString;
- (void)updateKeyplaneSwitchEdgeBiases;
- (void)updateRecentInputsKeyIfNecessary;
- (void)willMoveToWindow:(id)a3;
@end

@implementation UIKeyboardLayoutCursor

- (UIKeyboardLayoutCursor)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIKeyboardLayoutCursor;
  v3 = [(UIKeyboardLayoutStar *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)willMoveToWindow:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIKeyboardLayoutCursor;
  [(UIKeyboardLayoutStar *)&v4 willMoveToWindow:a3];
  [(UIKeyboardLayoutCursor *)self setShouldToggleLetterCaseNext:1];
}

- (void)runWithSuppressedActions:(id)a3
{
  self->_suppressOperations = 1;
  (*(a3 + 2))(a3, a2);
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

- (unint64_t)variantCountForKey:(id)a3
{
  v4 = a3;
  v5 = [(UIKBKeyplaneView *)self->super._keyplaneView viewForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 focusableVariantCount];
  }

  else
  {
    v8 = [v4 subtrees];
    v7 = [v8 count];
  }

  return v7;
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
      v6 = [(UIKBKeyplaneView *)keyplaneView keyViewAnimator];
      v7 = self->super._keyViewAnimator;

      if (v6 != v7)
      {
        [(UIKBKeyplaneView *)self->super._keyplaneView setKeyViewAnimator:self->super._keyViewAnimator];
      }
    }

    v8 = self->super._keyViewAnimator;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKeyboardLayoutCursor;
    v8 = [(UIKeyboardLayoutStar *)&v10 keyViewAnimator];
  }

  return v8;
}

- (void)showKeyboardWithInputTraits:(id)a3 screenTraits:(id)a4 splitTraits:(id)a5
{
  v8 = _shouldRestoreSelectedKeyIndex;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  if (v8 == 1)
  {
    v12 = [(UIKeyboardLayoutCursor *)self currentKey];
    [(UIKeyboardLayoutCursor *)self deactivateKey:v12];

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
  [(UIKeyboardLayoutStar *)&v13 showKeyboardWithInputTraits:v11 screenTraits:v10 splitTraits:v9];

  [(UIKeyboardLayoutCursor *)self selectInitialKeyIfNecessary];
}

+ (id)carKeyboardNameForKeyboard:(id)a3 screenTraits:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 idiom] == 3 && ((objc_msgSend(v6, "knobInput") & 1) != 0 || objc_msgSend(v6, "touchpadInput")))
  {
    v7 = [v5 subtreeWithName:@"capital-letters"];
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

+ (CGSize)keyboardSizeForInputMode:(id)a3 screenTraits:(id)a4 keyboardType:(int64_t)a5
{
  v8 = a4;
  v9 = UIKeyboardGetKBStarName(a3, v8, a5, 0);
  v10 = [a1 keyboardWithName:v9 screenTraits:v8];
  v11 = [a1 carKeyboardNameForKeyboard:v10 screenTraits:v8];

  if (v11)
  {
    v12 = [a1 keyboardWithName:v11 screenTraits:v8];

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

- (void)setKeyboardName:(id)a3 appearance:(int64_t)a4
{
  v6 = a3;
  v7 = [objc_opt_class() keyboardWithName:v6 screenTraits:self->super.super._screenTraits];
  v8 = [objc_opt_class() carKeyboardNameForKeyboard:v7 screenTraits:self->super.super._screenTraits];
  if (v8)
  {
    objc_storeStrong(&self->_indirectKeyboard, v7);
    v9 = v8;

    v6 = v9;
  }

  v10.receiver = self;
  v10.super_class = UIKeyboardLayoutCursor;
  [(UIKeyboardLayoutStar *)&v10 setKeyboardName:v6 appearance:a4];
}

- (void)setKeyboardAppearance:(int64_t)a3
{
  self->super._appearance = a3;
  v4 = [(UIKBTree *)self->super._keyboard visualStyle];
  keyplane = self->super._keyplane;

  [(UIKBTree *)keyplane setVisualStyle:v4];
}

- (void)setRenderConfig:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIKeyboardLayoutCursor;
  [(UIKeyboardLayoutStar *)&v4 setRenderConfig:a3];
  [(UIKeyboardLayoutCursor *)self updateDictationHelpString];
}

- (id)cacheTokenForKeyplane:(id)a3
{
  v4 = a3;
  if ([(UIKeyboardLayout *)self idiom]== 2)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIKeyboardLayoutCursor;
    v5 = [(UIKeyboardLayoutCursor *)&v7 cacheTokenForKeyplane:v4];
  }

  return v5;
}

- (void)setKeyplaneName:(id)a3
{
  v105[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(UIKeyboardLayoutCursor *)self suppressOperations])
  {
    v5 = [(UIKeyboardLayoutCursor *)self currentKey];
    v6 = [(UIKeyboardLayoutCursor *)self currentKey];
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    p_keyplaneSwitchSelectedKeyFrameCenter = &self->_keyplaneSwitchSelectedKeyFrameCenter;
    x = self->_keyplaneSwitchSelectedKeyFrameCenter.x;
    y = self->_keyplaneSwitchSelectedKeyFrameCenter.y;
    if (x == *MEMORY[0x1E695EFF8] && y == *(MEMORY[0x1E695EFF8] + 8))
    {
      [v5 frame];
      x = CGRectGetMidX(v106);
      [v5 frame];
      y = CGRectGetMidY(v107);
    }

    v103.receiver = self;
    v103.super_class = UIKeyboardLayoutCursor;
    [(UIKeyboardLayoutStar *)&v103 setKeyplaneName:v4];
    if (-[UIKBScreenTraits idiom](self->super.super._screenTraits, "idiom") == 3 && (-[UIKBTree visualStyling](self->super._keyplane, "visualStyling") & 0xFF0000) == 0x2A0000 && (-[UIKeyboardLayoutStar renderConfig](self, "renderConfig"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 colorAdaptiveBackground], v19, v20))
    {
      v21 = [(UIKBTree *)self->super._keyplane keysOrderedByPositionLinear:[(UIKeyboardLayoutCursor *)self isAppRightToLeft]];
    }

    else
    {
      v22 = [(UIKeyboardLayoutCursor *)self isAppRightToLeft];
      keyplane = self->super._keyplane;
      if (v22)
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
        obj = v4;
        v27 = [(UIKBTree *)v26 unhashedName];
        v28 = [(UIKBTree *)indirectKeyboard subtreeWithName:v27];

        v29 = [v28 subtrees];
        v30 = [v29 firstObject];

        v31 = [(UIKBTree *)self->super._keyplane firstCachedKeyWithName:@"Letter-Line-Key"];
        v32 = [v30 keys];
        v33 = [v32 mutableCopy];

        v34 = v5;
        if (qword_1ED49AF08 != -1)
        {
          dispatch_once(&qword_1ED49AF08, &__block_literal_global_362);
        }

        v35 = _MergedGlobals_47;
        v36 = [v33 firstObject];
        v37 = [v36 representedString];
        LODWORD(v35) = [v35 characterIsMember:{objc_msgSend(v37, "characterAtIndex:", 0)}];

        if (v35)
        {
          v38 = [MEMORY[0x1E695DF70] array];
          v39 = [MEMORY[0x1E695DF70] array];
          v100[0] = MEMORY[0x1E69E9820];
          v100[1] = 3221225472;
          v100[2] = __42__UIKeyboardLayoutCursor_setKeyplaneName___block_invoke_2;
          v100[3] = &unk_1E7114750;
          v101 = v38;
          v102 = v39;
          v40 = v39;
          v41 = v38;
          [v33 enumerateObjectsUsingBlock:v100];
          [v33 removeAllObjects];
          [v33 addObjectsFromArray:v41];
          [v33 addObjectsFromArray:v40];
        }

        else
        {
          [v33 sortUsingComparator:&__block_literal_global_93_0];
        }

        v5 = v34;
        [v31 setSubtrees:v33];
        [(UIKeyboardLayoutStar *)self setState:[(UIKeyboardLayoutCursor *)self enabledStateForKey:v31] forKey:v31];
        v45 = [(UIKeyboardLayoutCursor *)self currentKey];
        v46 = [v45 subtrees];

        v4 = obj;
        if (!v46)
        {
          [(UIKeyboardLayoutStar *)self setState:[(UIKeyboardLayoutCursor *)self activeStateForKey:v45] forKey:v45];
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
      if (v5 && !self->_selectInitialKey)
      {
        v42 = [(UIKeyboardLayoutCursor *)self currentKey];
        if ([v42 interactionType] == 3)
        {
          v43 = [(UIKeyboardLayoutStar *)self candidateList];
          v44 = [v43 hasCandidates];

          if (v44)
          {
            goto LABEL_78;
          }
        }

        else
        {
        }

        v49 = [(UIKeyboardLayoutCursor *)self currentKey];
        v50 = [v49 interactionType];

        if (v50 == 3)
        {
          goto LABEL_71;
        }

        v51 = [(UIKeyboardLayoutCursor *)self keyHitTestInSameRowAsCenter:x size:y, v12, v14];
        v52 = [v51 interactionType];
        if (v52 == [v5 interactionType])
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
        v53 = [(UIKeyboardLayoutStar *)self keyboard];
        v54 = [v53 name];
        v55 = [v54 containsString:@"Linear"];

        if (v55)
        {
LABEL_68:
          v51 = v92;
          goto LABEL_69;
        }

        v56 = [v92 displayString];
        if ([v56 length])
        {
          v57 = [v92 name];
          v58 = [v57 containsString:@"Empty-Key"];

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
        v91 = v5;
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
                v72 = [v70 displayString];
                if ([v72 length])
                {
                  v73 = v68;
                  v74 = [v71 name];
                  v75 = [v74 containsString:@"Empty-Key"];

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

                    v76 = [v71 interactionType];
                    p_keyplaneSwitchSelectedKeyFrameCenter = &self->_keyplaneSwitchSelectedKeyFrameCenter;
                    v67 = v93;
                    if (v76 == [v91 interactionType])
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

        v5 = v91;
        goto LABEL_68;
      }
    }

    else
    {
      v47 = [(UIKBTree *)self->super._keyplane name];
      v48 = [v47 rangeOfString:@"Dictation"];

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
      v83 = [(UIKBTree *)self->super._keyplane name];
      v84 = [v83 rangeOfString:@"Dictation"];

      if (v84 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v85 = +[UIDictationController sharedInstance];
        [v85 updateHelperMessageDisplayIfNeeded];
LABEL_83:

        [(UIKeyboardLayoutCursor *)self updateRecentInputsKeyIfNecessary];
        v86 = [(UIKBTree *)self->super._keyplane name];
        v87 = [v86 rangeOfString:@"Dictation"];

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
    v6 = [(UIKeyboardLayoutCursor *)self currentKey];
    if (v6)
    {
      v7 = v6;
      v8 = [(UIKeyboardLayoutCursor *)self currentKey];
      v9 = [v8 visible];

      if (v9)
      {
        v10 = [(UIKeyboardLayoutCursor *)self currentKey];
        v11 = [(UIKeyboardLayoutCursor *)self activeStateForKey:v10];

        v12 = [(UIKeyboardLayoutCursor *)self currentKey];
        if ([v12 state] == v11)
        {
          keyplaneView = self->super._keyplaneView;
          v14 = [(UIKeyboardLayoutCursor *)self currentKey];
          v15 = [(UIKBKeyplaneView *)keyplaneView viewForKey:v14];
          v16 = objc_opt_class();

          if (v16)
          {
LABEL_20:
            v22 = [(UIKeyboardLayoutCursor *)self currentKey];
            [(UIKeyboardLayoutCursor *)self refreshSelectedCellIfNecessaryForKey:v22];

            return;
          }
        }

        else
        {
        }

        v21 = [(UIKeyboardLayoutCursor *)self currentKey];
        [(UIKeyboardLayoutStar *)self setState:v11 forKey:v21];

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
    v19 = [v18 isFocused];

    if (v19)
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
          v11 = [(NSArray *)self->_keyplaneKeys lastObject];

          if (v10 == v11)
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
  v3 = [(UIKBTree *)self->super._keyplane name];
  v4 = [v3 rangeOfString:@"Dictation"];

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

      v19 = [(UIKeyboardLayoutStar *)self renderConfig];
      v20 = [UIKBRenderingContext renderingContextForRenderConfig:v19];

      v21 = [UIKBRenderFactory lightweightFactoryForVisualStyle:[(UIKBTree *)self->super._keyplane visualStyling] renderingContext:v20];
      v22 = [v21 traitsForKey:v73 onKeyplane:self->super._keyplane];
      v23 = [v22 symbolStyle];
      v72 = v22;
      if (v23 && (v24 = v23, [v22 symbolStyle], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "textColor"), v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v24, v26))
      {
        v27 = [v22 symbolStyle];
        [v27 fontSize];
        v29 = v28;
        v30 = [v22 symbolStyle];
        [v30 fontWeight];
        v32 = [off_1E70ECC18 systemFontOfSize:v29 weight:v31];
        [(UILabel *)self->_dictationHelpLabel setFont:v32];

        v33 = [v22 symbolStyle];
        v34 = [v33 textColor];
        v35 = [UIColor colorWithCGColor:UIKBGetNamedColor(v34)];
        [(UILabel *)self->_dictationHelpLabel setTextColor:v35];
      }

      else
      {
        v37 = [off_1E70ECC18 systemFontOfSize:29.0 weight:*off_1E70ECD20];
        [(UILabel *)self->_dictationHelpLabel setFont:v37];

        v38 = [(UIKeyboardLayoutStar *)self renderConfig];
        v39 = [v38 lightKeyboard];
        v40 = UIKBColorBlack_Alpha40;
        if (!v39)
        {
          v40 = UIKBColorWhite_Alpha50;
        }

        v41 = *v40;

        v33 = [UIColor colorWithCGColor:UIKBGetNamedColor(v41)];
        v42 = self->_dictationHelpLabel;

        [(UILabel *)v42 setTextColor:v33];
      }

      v43 = [(UITextInputTraits *)self->super.super._inputTraits dictationInfoKeyboardType];
      v44 = +[UIKeyboardInputModeController sharedInputModeController];
      v45 = [v44 currentInputMode];
      v71 = [v45 languageWithRegion];

      v46 = +[UIKeyboardInputModeController sharedInputModeController];
      v47 = [v46 enabledDictationLanguages];
      v48 = [v47 count];

      if (UIKeyboardTypeSupportsDictationSpelling(v43) || [(UITextInputTraits *)self->super.super._inputTraits isSecureTextEntry]|| [(UITextInputTraits *)self->super.super._inputTraits forceSpellingDictation])
      {
        if (v48 < 2)
        {
          v59 = _UILocalizedString(@"ATV_DICTATION_SPELLING_INSTRUCTION", @"Instruction text for AppleTV spelling dictation.", @"Speak in letters, numbers, and symbols.");
        }

        else
        {
          v49 = _UILocalizedString(@"ATV_DICTATION_SPELLING_INSTRUCTION_LANGUAGE", @"Instruction text for AppleTV spelling dictation with language.", @"Speak in letters, numbers, and symbols in %@.");
          v50 = +[UIKeyboardInputModeController sharedInputModeController];
          v51 = [v50 currentInputMode];
          v52 = [v51 defaultDictationLanguage];

          v53 = +[UIDictationController sharedInstance];
          v54 = [v53 currentInputModeForDictation];
          v55 = [v54 dictationLanguage];

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
          v63 = [v62 currentInputMode];
          v64 = [v63 defaultDictationLanguage];

          v65 = +[UIDictationController sharedInstance];
          v66 = [v65 currentInputModeForDictation];
          v67 = [v66 dictationLanguage];

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
      v60 = [(UIView *)self->_dictationHelpLabel superview];

      if (v60 != self)
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
  v5 = [(UILexicon *)self->_recentInputs entries];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v18 + 1) + 8 * v9) userInput];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __47__UIKeyboardLayoutCursor_showRecentInputsAlert__block_invoke;
        v17[3] = &unk_1E70F59B0;
        v17[4] = self;
        v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:v17];
        [v4 addAction:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v15 = [(UIView *)self _viewControllerForAncestor];
  [v15 presentViewController:v4 animated:1 completion:0];
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

- (void)didSelectRecentInputString:(id)a3
{
  v8 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  if ([v8 isEqualToString:0x1EFB6FC10])
  {
    [v4 clearRecentInput];
    [(UIKeyboardLayoutCursor *)self setRecentInputs:0];
    v5 = [(UIKBTree *)self->super._keyplane name];
    [(UIKeyboardLayoutCursor *)self setKeyplaneName:v5];

    [(UIKeyboardLayoutCursor *)self setSelectedKeyIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    [v4 handleClear];
    v6 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:v8 forKey:0 inputFlags:2];
    [v4 handleKeyEvent:v6];
  }

  v7 = [(UIKeyboardLayoutCursor *)self recentInputsAlert];
  [v7 dismissViewControllerAnimated:1 completion:0];

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
  v3 = [(UIKeyboardLayoutCursor *)self currentKey];

  v4 = v8;
  if (v3 == v8)
  {
    v5 = [(UIKBKeyplaneView *)self->super._keyplaneView viewForKey:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 selectedRecentInputString];
      if (([v6 isEqualToString:0x1EFB6FC10] & 1) == 0)
      {
        v7 = +[UIKeyboardImpl activeInstance];
        [v7 acceptRecentInput:v6];
      }
    }

    v4 = v8;
  }
}

- (void)setRecentInputs:(id)a3
{
  objc_storeStrong(&self->_recentInputs, a3);

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
  v2 = [(UIKeyboardLayoutCursor *)self _keyplaneForKeyplaneProperties];
  v3 = [v2 BOOLForProperty:@"autoshift"];

  return v3;
}

- (BOOL)ignoresShiftState
{
  v2 = [(UIKeyboardLayoutCursor *)self _keyplaneForKeyplaneProperties];
  v3 = [v2 BOOLForProperty:@"ignore-shift-state"];

  return v3;
}

- (void)setShift:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = UIKeyboardLayoutCursor;
  [(UIKeyboardLayoutStar *)&v3 setShift:a3];
}

- (BOOL)isAlphabeticPlane
{
  v2 = [(UIKeyboardLayoutCursor *)self _keyplaneForKeyplaneProperties];
  v3 = [v2 BOOLForProperty:@"is-alphabetic-plane"];

  return v3;
}

- (BOOL)isKanaPlane
{
  v2 = [(UIKeyboardLayoutCursor *)self _keyplaneForKeyplaneProperties];
  v3 = [v2 isKanaPlane];

  return v3;
}

- (BOOL)diacriticForwardCompose
{
  v2 = [(UIKeyboardLayoutCursor *)self _keyplaneForKeyplaneProperties];
  v3 = [v2 BOOLForProperty:@"diacritic-forward-compose"];

  return v3;
}

- (BOOL)shouldToggleKeyplaneWithName:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"Recents"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v3, "rangeOfString:", @"Dictation") == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (BOOL)isKeyplaneDisabledWithName:(id)a3
{
  v4 = a3;
  if ([v4 rangeOfString:@"Dictation"] != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  if ([v4 rangeOfString:@"Recents"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = +[UIKeyboard activeKeyboard];
    v7 = [v6 _useRecentsAlert];

    if (v7 && ![(UITextInputTraits *)self->super.super._inputTraits isSecureTextEntry])
    {
      v11 = [(UILexicon *)self->_recentInputs entries];
      v5 = [v11 count] == 0;

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ([v4 rangeOfString:@"Numbers"] == 0x7FFFFFFFFFFFFFFFLL || ((v9 = -[UITextInputTraits keyboardType](self->super.super._inputTraits, "keyboardType"), v5 = 1, v9 <= 9) ? (v10 = ((1 << v9) & 0x2CF) == 0) : (v10 = 1), v10 && v9 != 123))
  {
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (BOOL)shouldMergeKey:(id)a3
{
  v4 = a3;
  if ([v4 interactionType] == 10)
  {
    v5 = [v4 name];

    v6 = [(UIKeyboardLayoutCursor *)self isKeyplaneDisabledWithName:v5];
    return v6;
  }

  else
  {
    v8 = [v4 interactionType];

    if (v8 == 9)
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

- (int)stateForKeyplaneSwitchKey:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UIKeyboardLayoutCursor;
  v5 = [(UIKeyboardLayoutStar *)&v10 stateForKeyplaneSwitchKey:v4];
  if (v5 != 4)
  {
    v6 = [v4 name];
    v7 = [v6 rangeOfString:@"Recents"];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [(UILexicon *)self->_recentInputs entries];
      if ([v8 count])
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

- (int64_t)defaultSelectedVariantIndexForKey:(id)a3 withActions:(unint64_t)a4
{
  if ([(UIKeyboardLayout *)self idiom:a3]== 2)
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
    v4 = [(UIKBTree *)self->super._keyplane keys];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v10 + 1) + 8 * i) interactionType] == 16)
          {
            self->_cachedCanMultitap = 1;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)endMultitapForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = [(UIKBKeyplaneView *)self->super._keyplaneView viewForKey:v4];
    if (v5)
    {
      v6 = [(UIKeyboardLayoutCursor *)self keyViewAnimator];
      v7 = [v10 state];
      v8 = [(UIKeyboardLayoutCursor *)self currentKey];
      if (v8 == v10)
      {
        v9 = 8;
      }

      else
      {
        v9 = 2;
      }

      [v6 transitionKeyView:v5 fromState:v7 toState:v9 completion:0];
    }

    v4 = v10;
  }
}

- (void)longPressAction
{
  v3 = [(UIKeyboardLayoutCursor *)self currentKey];
  v4 = [v3 state];

  v13.receiver = self;
  v13.super_class = UIKeyboardLayoutCursor;
  [(UIKeyboardLayoutStar *)&v13 longPressAction];
  if ([(UIKeyboardLayoutCursor *)self isSlimLinearKeyboardTV])
  {
    v5 = [(UIKeyboardLayoutCursor *)self currentKey];
    v6 = [v5 interactionType];

    if (v6 == 10)
    {
      [(UIKeyboardLayoutCursor *)self showPopupKeyplaneSwitcher];
    }
  }

  v7 = [(UIKeyboardLayoutCursor *)self currentKey];
  v8 = [v7 state];

  if (v4 != 16 && v8 == 16)
  {
    self->_ignoreEventsUntilPressEnds = 1;
    v9 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
    [(UIKeyboardLayoutStar *)self _didChangeKeyplaneWithContext:v9];

    +[_UIKeyboardUsageTracking showVariantsIncrement];
  }

  v10 = [(UIKeyboardLayoutCursor *)self currentKey];
  v11 = [v10 interactionType];

  if (v11 == 4)
  {
    v12 = +[UIKeyboardImpl activeInstance];
    [v12 handleClear];
  }
}

- (void)showPopupKeyplaneSwitcher
{
  keyboard = self->super._keyboard;
  v4 = [(UIKeyboardLayoutStar *)self keyplane];
  v14 = [(UIKBTree *)keyboard keyplaneSwitchKeysWithoutCurrentKeyplane:v4];

  [(UIKeyboardLayoutStar *)self updateLocalizedDisplayStringsForKeys:v14];
  v5 = [(UIKeyboardLayoutCursor *)self currentKey];
  [v5 setSelectedVariantIndex:0];

  v6 = [(UIKeyboardLayoutCursor *)self currentKey];
  [v6 setVariantType:14];

  v7 = [(UIView *)self _shouldReverseLayoutDirection];
  v8 = UIKBAttributeValueFixedLeftStr;
  if (v7)
  {
    v8 = UIKBAttributeValueFixedRightStr;
  }

  v9 = *v8;
  v10 = [(UIKeyboardLayoutCursor *)self currentKey];
  [v10 setVariantPopupBias:v9];

  v11 = [v14 mutableCopy];
  v12 = [(UIKeyboardLayoutCursor *)self currentKey];
  [v12 setSubtrees:v11];

  if ([(UIKBScreenTraits *)self->super.super._screenTraits idiom]== 2)
  {
    [(UIKeyboardLayoutStar *)self setKeyboardDim:1];
  }

  v13 = [(UIKeyboardLayoutCursor *)self currentKey];
  [(UIKeyboardLayoutStar *)self setState:16 forKey:v13];
}

- (int)activeStateForKey:(id)a3
{
  v3 = a3;
  if ([v3 displayType] == 38 || objc_msgSend(v3, "displayType") == 1)
  {
    v4 = 16;
  }

  else if ([v3 displayType] == 14)
  {
    v4 = 8;
  }

  else
  {
    v4 = 8;
    if ([v3 displayType] != 4)
    {
      if ([v3 displayType] == 13)
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

- (int)enabledStateForKey:(id)a3
{
  v4 = a3;
  if ([v4 displayType] == 38 || objc_msgSend(v4, "displayType") == 1)
  {
    v5 = 16;
  }

  else if ([v4 displayType] == 14 || objc_msgSend(v4, "displayType") == 4)
  {
    v5 = [(UIKeyboardLayoutCursor *)self stateForKeyplaneSwitchKey:v4];
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (unint64_t)downActionFlagsForKey:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIKeyboardLayoutCursor;
  v5 = [(UIKeyboardLayoutStar *)&v9 downActionFlagsForKey:v4];
  if ([v4 interactionType] == 16)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    if ([v6 isLongPress])
    {
      v7 = [(UIKeyboardLayoutStar *)self keyHasAccentedVariants:v4];

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

  v4 = [UIApp userInterfaceLayoutDirection];
  v5 = [(UIKeyboardLayoutCursor *)self currentKey];
  v6 = [(UIKeyboardLayoutCursor *)self variantCountForKey:v5];
  if (v6)
  {
    v7 = [v5 state];
    v8 = [v5 selectedVariantIndex];
    if (v4 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6 - 1;
    }

    if (v4 == 1)
    {
      v10 = v6 - 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = v8 == 0;
    v12 = v8 == v10;
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 1;
      v12 = 1;
    }

    v13 = v7 == 16;
    v14 = v7 == 16 && v8 == v6 - 1;
    LODWORD(v6) = v7 == 16 && v11;
    v15 = v7 == 16 && v12;
    v46 = v15;
  }

  else
  {
    v8 = [v5 selectedVariantIndex];
    v13 = 0;
    v14 = 0;
    v46 = 0;
    if (v4 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  v16 = v8 == v9 && v13;
  v45 = v16;
  if (v5)
  {
    [v5 frame];
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
  if (v5)
  {
    [v5 frame];
    v23 = v22;
  }

  else
  {
    [(UIKeyboardLayoutCursor *)self defaultCursorAdjustDistance];
    v23 = v24;
  }

  v25 = [(UIKeyboardLayoutCursor *)self targetKeyIndexAtOffset:v5 fromKey:-v18, 0.0];
  v26 = [(UIKeyboardLayoutCursor *)self targetKeyIndexAtOffset:v5 fromKey:v18, 0.0];
  v27 = [(UIKeyboardLayoutCursor *)self targetKeyIndexAtOffset:v5 fromKey:0.0, -v23];
  [(UIKeyboardLayoutCursor *)self targetKeyIndexAtOffset:v5 fromKey:0.0, v23];
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

  [v5 frame];
  if (fabs(CGRectGetMinY(v48)) >= 15.0)
  {
    if (v27 != 0x7FFFFFFFFFFFFFFFLL && v27 != self->_selectedKeyIndex)
    {
      v36 = [(NSArray *)self->_keyplaneKeys objectAtIndex:v27];
      if ([v36 interactionType] == 3)
      {
        v37 = [(UIKeyboardLayoutStar *)self candidateList];
        v38 = [v37 hasCandidates];

        v33 = v47;
        if ((v38 & 1) == 0)
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
  [v5 frame];
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
    v41 = [v5 variantType];
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

    if (v41)
    {
      v2 = v43;
    }
  }

  return v2;
}

- (void)setCursorLocation:(unint64_t)a3
{
  v3 = a3;
  v5 = a3 & 7;
  selectedKeyIndex = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= 1)
  {
    if (v5)
    {
      selectedKeyIndex = 0;
    }

    else if ((v3 & 0x200) == 0)
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
  if ((v3 & 0x100) != 0 || _savedSelectedKeyIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  [(UIKeyboardLayoutCursor *)self selectInitialKeyIfNecessary];
LABEL_14:
  v10 = [(UIKeyboardLayoutCursor *)self currentKey];
  v7 = [(UIKeyboardLayoutCursor *)self variantCountForKey:?];
  if (v7)
  {
    v8 = v7;
    if (![v10 variantType])
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

      [(UIKeyboardLayoutCursor *)self setHighlightedVariantIndex:v9 key:v10];
    }
  }
}

- (void)restoreFocusFromEntryPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v7 = [(UIKBTree *)self->super._keyplane keysExcludingEmptyKeys];
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

- (CGRect)selectionFrameForKeyIndex:(int64_t)a3
{
  v3 = [(NSArray *)self->_keyplaneKeys objectAtIndex:a3];
  v4 = [v3 interactionType];
  [v3 paddedFrame];
  MidX = v5;
  MidY = v6;
  v11 = v7;
  v12 = v8;
  if (v4 == 10)
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

- (void)deactivateKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    [v4 setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
    v5 = [(UIKeyboardLayoutCursor *)self enabledStateForKey:v8];
    [(UIKeyboardLayoutStar *)self setState:v5 forKey:v8];
    v4 = v8;
    if (v5 == 16)
    {
      v6 = [v8 subtrees];
      v7 = [v6 count];

      v4 = v8;
      if (!v7)
      {
        [(UIKeyboardLayoutCursor *)self refreshSelectedCellIfNecessaryForKey:v8];
        v4 = v8;
      }
    }
  }
}

- (void)setSelectedKeyIndex:(int64_t)a3
{
  if (![(UIKeyboardLayoutCursor *)self suppressOperations]&& self->_selectedKeyIndex != a3)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = a3;
    }

    if (a3 > 0x7FFFFFFFFFFFFFFELL || v5 >= [(NSArray *)self->_keyplaneKeys count])
    {
      v18 = [(UIKeyboardLayoutCursor *)self currentKey];
      self->_selectedKeyIndex = 0x7FFFFFFFFFFFFFFFLL;
      [(UIKeyboardLayoutCursor *)self deactivateKey:v18];
      [(UIKeyboardLayoutStar *)self setKeyboardDim:0];
    }

    else
    {
      selectedKeyIndex = self->_selectedKeyIndex;
      if ([(UIKBScreenTraits *)self->super.super._screenTraits idiom]== 3 && ([(UIKBScreenTraits *)self->super.super._screenTraits knobInput]|| [(UIKBScreenTraits *)self->super.super._screenTraits touchpadInput]) || [(UIKBScreenTraits *)self->super.super._screenTraits idiom]== 2)
      {
        v7 = [(UIKeyboardLayoutCursor *)self currentKey];
        [(UIKeyboardLayoutCursor *)self setLastSelectedKeyIndex:self->_selectedKeyIndex];
        self->_selectedKeyIndex = v5;
        v8 = [(NSArray *)self->_keyplaneKeys objectAtIndex:v5];
        if (v7 != v8)
        {
          [(UIKeyboardLayoutCursor *)self deactivateKey:v7];
          v9 = [(UIKeyboardLayoutStar *)self activeKey];

          if (v9 == v7)
          {
            [(UIKeyboardLayoutStar *)self setActiveKey:0];
          }
        }

        if (![v8 visible] || objc_msgSend(v8, "state") == 1)
        {
          goto LABEL_18;
        }

        v15 = [(UIKeyboardLayoutCursor *)self activeStateForKey:v8];
        if (v7 != v8)
        {
          [(UIKeyboardLayoutStar *)self setState:v15 forKey:v8];
        }

        if (v15 == 16)
        {
          v16 = [v8 subtrees];
          v17 = [v16 count];

          if (!v17 && ![(UIKeyboardLayoutCursor *)self refreshSelectedCellIfNecessaryForKey:v8])
          {
LABEL_18:
            [(UIKeyboardLayoutCursor *)self setSelectedKeyIndex:selectedKeyIndex];
          }
        }

        v10 = [(UIKeyboardLayoutCursor *)self currentKey];

        if (v10)
        {
          [(UIKeyboardLayoutStar *)self setKeyboardDim:0];
        }
      }

      else
      {
        if (!self->_selectionView)
        {
          v11 = [UIKBCursorSelection alloc];
          v12 = [(UIResponder *)self _responderSelectionImage];
          v13 = [(UIImageView *)v11 initWithImage:v12];
          selectionView = self->_selectionView;
          self->_selectionView = v13;

          [(UIView *)self addSubview:self->_selectionView];
        }

        self->_selectedKeyIndex = v5;
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

- (BOOL)refreshSelectedCellIfNecessaryForKey:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(UIKeyboardLayoutCursor *)self suppressOperations])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(UIKBKeyplaneView *)self->super._keyplaneView viewForKey:v6];
    v9 = [v8 focusableVariantCount];
    v7 = v9 != 0;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [(UIKeyboardLayoutCursor *)self currentKey];
        v11 = v10;
        if (v10 == v6)
        {
          v14 = [v6 selectedVariantIndex];

          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v6 setSelectedVariantIndex:0];
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
          v12 = [(UIKeyboardLayoutCursor *)self currentKey];
          v13 = v12;
          if (v12 == v6)
          {
            v15 = [v6 selectedVariantIndex];

            if (v15 == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v6 setSelectedVariantIndex:0];
            }
          }

          else
          {
          }

          [v8 refreshSelectedCandidateAnimated:v4];
        }
      }
    }
  }

  return v7;
}

- (void)setHighlightedVariantIndex:(int64_t)a3 key:(id)a4
{
  v7 = a4;
  if (![(UIKeyboardLayoutCursor *)self suppressOperations])
  {
    v6 = [v7 selectedVariantIndex];
    [v7 setSelectedVariantIndex:a3];
    if (v6 != a3)
    {
      [(UIKeyboardLayoutStar *)self setState:16 forKey:v7];
      [(UIKeyboardLayoutCursor *)self refreshSelectedCellIfNecessaryForKey:v7];
    }
  }
}

- (int64_t)targetKeyIndexFromPoint:(CGPoint)a3 inKeys:(id)a4
{
  keyplaneKeys = self->_keyplaneKeys;
  v5 = [(UIKeyboardLayoutStar *)self keyHitTestClosestToPoint:a4 inKeys:a3.x, a3.y];
  v6 = [(NSArray *)keyplaneKeys indexOfObject:v5];

  return v6;
}

- (int64_t)targetKeyIndexAtOffset:(CGPoint)a3 fromKey:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  v9 = fabs(y);
  if (fabs(x) >= 2.22044605e-16 || v9 >= 2.22044605e-16)
  {
    v11 = v7;
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
    v17 = [v16 interactionType];
    v18 = [v16 interactionType];
    v20 = v17 == 4 || v18 == 15;
    if (v16 == v11 && v20)
    {
      v22 = v18 == 15;
      v23 = v17 == 4;
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

    v27 = [(UIKBScreenTraits *)self->super.super._screenTraits touchpadInput];
    if (v20)
    {
      if (v27)
      {
        goto LABEL_32;
      }
    }

    else if ([(UIKBScreenTraits *)self->super.super._screenTraits touchInput]|| v27)
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

  v26 = [(NSArray *)self->_keyplaneKeys indexOfObject:v7, 2.22044605e-16, v9];
LABEL_39:

  return v26;
}

- (id)keyHitTestInSameRowAsCenter:(CGPoint)a3 size:(CGSize)a4
{
  height = a4.height;
  y = a3.y;
  x = a3.x;
  v32 = *MEMORY[0x1E69E9840];
  [(UIView *)self bounds:a3.x];
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

- (BOOL)canHandlePresses:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if ([(UIKeyboardLayout *)self idiom]== 3)
  {
    if ([v7 type])
    {
      v16.receiver = self;
      v16.super_class = UIKeyboardLayoutCursor;
      v8 = [(UIKeyboardLayout *)&v16 canHandleEvent:v7];
    }

    else
    {
      v8 = [(UIKBScreenTraits *)self->super.super._screenTraits touchInput];
    }

    *(v18 + 24) = v8;
    if ((v8 & 1) == 0)
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
    v12 = v7;
    v13 = self;
    v14 = v6;
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

- (void)takeKeyAction:(id)a3
{
  v4 = a3;
  if (![(UIKeyboardLayoutCursor *)self suppressOperations])
  {
    multitapKey = self->super._multitapKey;
    if (multitapKey)
    {
      v6 = multitapKey == v4;
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
    if ([(UIKBTree *)v4 interactionType]== 4)
    {
      v8 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:@"\b" forKey:v4 inputFlags:0];
      [v7 handleKeyEvent:v8];

      goto LABEL_14;
    }

    if ([(UIKBTree *)v4 interactionType]== 23)
    {
      [v7 handleClear];
      goto LABEL_14;
    }

    if ([(UIKBTree *)v4 interactionType]== 11)
    {
      v9 = [(UIKBTree *)self->super._keyplane alternateKeyplaneName];
      [(UIKeyboardLayoutCursor *)self setKeyplaneName:v9];
      goto LABEL_13;
    }

    if ([(UIKBTree *)v4 interactionType]== 10)
    {
      if ([(UIKeyboardLayoutCursor *)self isSlimLinearKeyboardTV])
      {
        [(UIKeyboardLayoutCursor *)self setOverrideInitialKey:1];
        self->_selectInitialKey = 0;
        self->_overridenSelectedKeyType = 10;
      }

      v10 = [(UIKBTree *)v4 representedString];
      v11 = [v10 rangeOfString:@"Recents"];

      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(UIKeyboardLayoutCursor *)self showRecentInputsAlert];
        goto LABEL_14;
      }

      v12 = [(UIKBTree *)v4 representedString];
      v13 = [v12 rangeOfString:@"Dictation"];

      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_14:

        goto LABEL_15;
      }

      v14 = v4;
      v15 = [(UIKeyboardLayoutCursor *)self variantCountForKey:v14];
      v16 = [(UIKBTree *)v14 selectedVariantIndex];
      v9 = v14;
      if ([(UIKBTree *)v14 state]== 16)
      {
        v9 = v14;
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = v14;
          if (v16 < v15)
          {
            v17 = [(UIKBTree *)v14 subtrees];
            v9 = [v17 objectAtIndexedSubscript:v16];
          }
        }
      }

      v18 = [v9 representedString];
      [(UIKeyboardLayoutCursor *)self clearVariantStateForKey:v14];
      [(UIKBTree *)v14 setSelectedVariantIndex:0];
      v19 = [(UIKBTree *)self->super._keyboard subtreeWithName:v18];
      if (v19 != self->super._keyplane)
      {
        [(UIKeyboardLayoutCursor *)self setKeyplaneName:v18];
      }

LABEL_13:
      goto LABEL_14;
    }

    if ([(UIKBTree *)v4 interactionType]== 9)
    {
      v20 = +[UIKeyboardInputModeController sharedInputModeController];
      v21 = [(UIKBTree *)v4 representedString];
      v22 = [v20 identifierIsValidSystemInputMode:v21];

      if (v22)
      {
        if (qword_1ED49AF18 != -1)
        {
          dispatch_once(&qword_1ED49AF18, &__block_literal_global_190);
        }

        v23 = [v7 taskQueue];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __40__UIKeyboardLayoutCursor_takeKeyAction___block_invoke_3;
        v62[3] = &unk_1E70FD1B8;
        v63 = v7;
        v64 = v4;
        [v23 addTask:v62 breadcrumb:qword_1ED49AF10];

        v24 = v63;
      }

      else
      {
        if (qword_1ED49AF28 != -1)
        {
          dispatch_once(&qword_1ED49AF28, &__block_literal_global_198);
        }

        v29 = [v7 taskQueue];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __40__UIKeyboardLayoutCursor_takeKeyAction___block_invoke_6;
        v60[3] = &unk_1E70FD058;
        v61 = v7;
        [v29 addTask:v60 breadcrumb:qword_1ED49AF20];

        v24 = v61;
      }

      goto LABEL_14;
    }

    if ([(UIKBTree *)v4 interactionType]== 3)
    {
      v25 = [(UIKBTree *)v4 selectedVariantIndex];
      v26 = [(UIKeyboardLayoutCursor *)self variantCountForKey:v4];
      if ([(UIKBTree *)v4 state]== 16 && v25 != 0x7FFFFFFFFFFFFFFFLL && v25 < v26)
      {
        v27 = [(UIKBKeyplaneView *)self->super._keyplaneView viewForKey:v4];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = [v27 selectedRecentInputString];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = +[UIKeyboardImpl activeInstance];
            v49 = [v48 candidateController];

            if ([v49 currentIndex] != 0x7FFFFFFFFFFFFFFFLL)
            {
              [v49 acceptSelectedCandidate];
              [(UIKeyboardLayoutCursor *)self handleVisualDirectionalInput:2];
              v50 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
              [(UIKeyboardLayoutStar *)self _didChangeKeyplaneWithContext:v50];
            }
          }

          v28 = 0;
        }

        if ([v28 isEqualToString:0x1EFB6FC10])
        {
          [v7 clearRecentInput];
          [(UIKeyboardLayoutCursor *)self setRecentInputs:0];
          [(UIKeyboardLayoutStar *)self setToInitialKeyplane];
        }

        else if (v28)
        {
          [v7 handleClear];
          v51 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:v28 forKey:v4 inputFlags:2];
          [v7 handleKeyEvent:v51];
        }
      }

      goto LABEL_14;
    }

    if ([(UIKBTree *)v4 interactionType]!= 16)
    {
      v9 = [(UIKBTree *)v4 representedString];
      v38 = [(UIKBTree *)v4 selectedVariantIndex];
      v39 = [(UIKeyboardLayoutCursor *)self variantCountForKey:v4];
      v40 = 0;
      if ([(UIKBTree *)v4 state]== 16 && v38 != 0x7FFFFFFFFFFFFFFFLL && v38 < v39)
      {
        v41 = [(UIKBTree *)v4 subtrees];
        v42 = [v41 objectAtIndex:v38];

        v43 = [v42 representedString];

        [(UIKeyboardLayoutCursor *)self clearVariantStateForKey:v4];
        v40 = 2;
        v9 = v43;
      }

      if ([v9 length])
      {
        v44 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:v9 forKey:v4 inputFlags:v40];
        [v7 handleKeyEvent:v44];
      }

      goto LABEL_13;
    }

    v9 = [(UIKBTree *)v4 fullRepresentedString];
    v30 = [(UIKBTree *)v4 representedString];
    v31 = [(UIKBTree *)v4 selectedVariantIndex];
    v32 = [(UIKeyboardLayoutCursor *)self variantCountForKey:v4];
    if ([(UIKBTree *)v4 state]!= 16 || v31 == 0x7FFFFFFFFFFFFFFFLL || v31 >= v32)
    {
      if (![(UIKBTree *)v4 forceMultitap])
      {
        v52 = [v30 length];
        if (v52 >= [v9 length] || !-[UIKeyboardLayoutCursor canMultitap](self, "canMultitap"))
        {
          v36 = 0;
          v37 = 0;
LABEL_74:
          if ([v30 length])
          {
            v59 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:v30 forKey:v4 inputFlags:v37 | v36];
            [v7 handleKeyEvent:v59];
          }

          goto LABEL_13;
        }
      }

      v45 = self->super._multitapKey;
      if (v45 == v4)
      {
        v53 = [(UIKBTree *)v45 fullRepresentedString];
        [v53 rangeOfComposedCharacterSequenceAtIndex:self->super._multitapCount];
        v55 = v54;

        v56 = v55 + self->super._multitapCount;
        v47 = [(UIKBTree *)self->super._multitapKey fullRepresentedString];
        self->super._multitapCount = v56 % [v47 length];
        v36 = 4;
      }

      else
      {
        self->super._multitapCount = 0;
        v46 = v4;
        v36 = 0;
        v47 = self->super._multitapKey;
        self->super._multitapKey = v46;
      }

      [(UIKeyboardLayoutStar *)self touchMultitapTimer];
      v57 = [v9 rangeOfComposedCharacterSequenceAtIndex:self->super._multitapCount];
      v35 = [v9 substringWithRange:{v57, v58}];
      v37 = 0;
    }

    else
    {
      v33 = [(UIKBTree *)v4 subtrees];
      v34 = [v33 objectAtIndex:v31];

      v35 = [v34 representedString];

      [(UIKeyboardLayoutCursor *)self clearVariantStateForKey:v4];
      v36 = 0;
      v37 = 2;
      v30 = v34;
    }

    v30 = v35;
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

- (void)clearVariantStateForKey:(id)a3
{
  v5 = a3;
  if (![(UIKeyboardLayoutCursor *)self suppressOperations])
  {
    [(UIKeyboardLayoutStar *)self setState:[(UIKeyboardLayoutCursor *)self activeStateForKey:v5] forKey:v5];
    [(UIKeyboardLayoutStar *)self setKeyboardDim:0];
    v4 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
    [(UIKeyboardLayoutStar *)self _didChangeKeyplaneWithContext:v4];
  }
}

- (void)handleVariantDeleteIfNecessaryForKey:(id)a3
{
  v4 = a3;
  if ([v4 variantType])
  {
    v5 = [v4 subtrees];
    v6 = [v5 objectAtIndex:{objc_msgSend(v4, "highlightedVariantIndex")}];

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
      v14 = v4;
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

- (BOOL)handleLinearDirectionalInput:(int)a3
{
  if (!self->_ignoreEventsUntilPressEnds)
  {
    v6 = [(UIKeyboardLayoutCursor *)self currentKey];
    v7 = [(UIKeyboardLayoutCursor *)self variantCountForKey:v6];
    v8 = [v6 selectedVariantIndex];
    selectedKeyIndex = self->_selectedKeyIndex;
    v10 = [(NSArray *)self->_keyplaneKeys count];
    if (a3 == 5)
    {
      [(UIKeyboardLayoutCursor *)self takeKeyAction:v6];
      v3 = self->_selectedKeyIndex != 0x7FFFFFFFFFFFFFFFLL;
LABEL_56:

      return v3;
    }

    v11 = v10 - 1;
    if (a3 != 4)
    {
      if (a3 != 3)
      {
        goto LABEL_55;
      }

      if ([v6 state] == 16 && v8 - 0x7FFFFFFFFFFFFFFFLL >= 0x8000000000000002)
      {
        v12 = v8 - 1;
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
        if ([v6 state] == 16)
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

          v19 = [v13 visible];
          if (selectedKeyIndex < 1 || (v19 & 1) != 0 || selectedKeyIndex >= [(NSArray *)self->_keyplaneKeys count]- 1)
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

            v16 = self;
            goto LABEL_53;
          }
        }

LABEL_54:
      }

LABEL_55:
      v3 = 0;
      goto LABEL_56;
    }

    if ([v6 state] == 16 && v8 != 0x7FFFFFFFFFFFFFFFLL && v8 < v7 - 1)
    {
      v12 = v8 + 1;
LABEL_13:
      [(UIKeyboardLayoutCursor *)self setHighlightedVariantIndex:v12 key:v6];
      [(UIKeyboardLayoutCursor *)self handleVariantDeleteIfNecessaryForKey:v6];
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

    if ([v6 state] == 16)
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

      v15 = [v13 visible];
      if (selectedKeyIndex < 1 || (v15 & 1) != 0 || selectedKeyIndex >= [(NSArray *)self->_keyplaneKeys count]- 1)
      {
        if (![v13 visible])
        {
          goto LABEL_54;
        }

        v16 = self;
        v17 = 0;
LABEL_53:
        [(UIKeyboardLayoutCursor *)v16 setHighlightedVariantIndex:v17 key:v13];
        [(UIKeyboardLayoutCursor *)self setSelectedKeyIndex:selectedKeyIndex];

        goto LABEL_14;
      }
    }
  }

  return 1;
}

- (BOOL)handleVisualDirectionalInput:(int)a3
{
  if (!self->_ignoreEventsUntilPressEnds)
  {
    self->_didVariantDelete = 0;
    v6 = [(UIKeyboardLayoutCursor *)self currentKey];
    v7 = v6;
    if (v6)
    {
      [v6 frame];
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

    v16 = [(UIKBTree *)self->super._keyboard subtrees];
    v17 = [v16 indexOfObject:self->super._keyplane];

    v54 = [v7 selectedVariantIndex];
    v18 = [(UIKeyboardLayoutCursor *)self variantCountForKey:v7];
    v19 = [v7 subtrees];
    v20 = [v19 count];

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

    if (a3 > 3)
    {
      if (a3 != 4)
      {
        if (a3 == 5)
        {
          [(UIView *)self->_selectionView alpha];
          if (v29 != 0.0 && [v7 interactionType] != 10)
          {
            [(UIKeyboardLayoutCursor *)self takeKeyAction:v7];
          }
        }

        else if (a3 == 6)
        {
          v24 = [(UIKBTree *)self->super._keyplane stringForProperty:@"shift-alternate"];

          if (v24 && (keyboard = self->super._keyboard, [(UIKBTree *)self->super._keyplane stringForProperty:@"shift-alternate"], v26 = objc_claimAutoreleasedReturnValue(), [(UIKBTree *)keyboard subtreeWithName:v26], v27 = objc_claimAutoreleasedReturnValue(), v26, v27))
          {
            v28 = [v27 name];
            [(UIKeyboardLayoutCursor *)self setKeyplaneName:v28];

            +[_UIKeyboardUsageTracking letterCaseToggleIncrement];
          }

          else
          {
            v30 = 0;
            v31 = v17 + 1;
            for (i = -1; ; --i)
            {
              v33 = v30;
              v34 = [(UIKBTree *)self->super._keyboard subtrees];
              v35 = [(UIKBTree *)self->super._keyboard subtrees];
              v30 = [v34 objectAtIndex:{v31 % objc_msgSend(v35, "count")}];

              if (!i)
              {
                break;
              }

              v36 = [v30 name];
              if ([(UIKeyboardLayoutCursor *)self isKeyplaneDisabledWithName:v36])
              {
              }

              else
              {
                v37 = [v30 name];
                v38 = [(UIKeyboardLayoutCursor *)self shouldToggleKeyplaneWithName:v37];

                if (v38)
                {
                  break;
                }
              }

              ++v31;
            }

            if (v30)
            {
              v39 = [v30 name];
              [(UIKeyboardLayoutCursor *)self setKeyplaneName:v39];
            }
          }
        }

        goto LABEL_86;
      }

      if ([v7 state] != 16)
      {
        v40 = self;
        v41 = v9;
LABEL_58:
        v42 = [(UIKeyboardLayoutCursor *)v40 targetKeyIndexAtOffset:v7 fromKey:v41, 0.0];
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
        if (v18 < 1 || v54 >= v18 - 1)
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

    if (a3 != 1)
    {
      if (a3 != 2)
      {
        if (a3 != 3)
        {
          goto LABEL_86;
        }

        if ([v7 state] == 16)
        {
          if (v23)
          {
            v3 = 1;
            if (v18 < 1 || v54 < 1)
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
        v40 = self;
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
          v45 = self;
          v44 = v14;
LABEL_69:
          v46 = [(UIKeyboardLayoutCursor *)v45 targetKeyIndexAtOffset:v7 fromKey:0.0, v44];
          selectedKeyIndex = 0x7FFFFFFFFFFFFFFFLL;
          if (v46 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v43 = v46;
            [(UIKeyboardLayoutCursor *)self setSelectedKeyIndex:v46];
            v47 = [(UIKeyboardLayoutCursor *)self currentKey];
            if ([v47 displayType] == 38)
            {
              v48 = [(UIKeyboardLayoutCursor *)self variantCountForKey:v47];
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

              [(UIKeyboardLayoutCursor *)self setHighlightedVariantIndex:v50 key:v47];
            }

            goto LABEL_85;
          }

LABEL_86:
          v3 = selectedKeyIndex != 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_87;
        }

LABEL_77:
        v51 = self;
        v52 = 4;
LABEL_81:
        v3 = [(UIKeyboardLayoutCursor *)v51 handleLinearDirectionalInput:v52];
        goto LABEL_87;
      }

      if (![v7 variantType] || v20 < 1 || v54 == 0x7FFFFFFFFFFFFFFFLL)
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
        if ([v7 variantType] && v20 >= 1 && v54 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_67;
        }
      }

      else if (v18 >= 1)
      {
LABEL_80:
        v51 = self;
        v52 = 3;
        goto LABEL_81;
      }
    }

    v44 = -v14;
    v45 = self;
    goto LABEL_69;
  }

  return 1;
}

- (unint64_t)getNextKeyplaneIndex:(unint64_t)a3
{
  if ([(UIKeyboardLayoutCursor *)self suppressOperations])
  {
    return a3;
  }

  if (![(UIKeyboardLayoutCursor *)self shouldToggleLetterCaseNext]|| ([(UIKBTree *)self->super._keyplane stringForProperty:@"shift-alternate"], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6) || ([(UIKeyboardLayoutCursor *)self setShouldToggleLetterCaseNext:0], keyboard = self->super._keyboard, [(UIKBTree *)self->super._keyplane stringForProperty:@"shift-alternate"], v8 = objc_claimAutoreleasedReturnValue(), [(UIKBTree *)keyboard subtreeWithName:v8], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9) || (+[_UIKeyboardUsageTracking letterCaseToggleIncrement], v5 = [(UIKBTree *)self->super._keyboard indexOfSubtree:v9], v9, v5 == a3))
  {
    v10 = 0;
    v5 = a3;
    while (1)
    {
      v11 = v10;
      v12 = [(UIKBTree *)self->super._keyboard subtrees];
      v5 = (v5 + 1) % [v12 count];

      v13 = [(UIKBTree *)self->super._keyboard subtrees];
      v10 = [v13 objectAtIndex:v5];

      if (v5 == a3)
      {
        break;
      }

      v14 = [v10 name];
      if ([(UIKeyboardLayoutCursor *)self isKeyplaneDisabledWithName:v14])
      {
      }

      else
      {
        v15 = [v10 name];
        v16 = [(UIKeyboardLayoutCursor *)self shouldToggleKeyplaneWithName:v15];

        if (v16)
        {
          goto LABEL_14;
        }
      }
    }

    v5 = a3;
LABEL_14:
  }

  return v5;
}

- (void)switchToDictationKeyplaneWithActivationIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[UIDictationController sharedInstance];
  v6 = [v5 dictationEnabled];

  if (v6)
  {
    v7 = +[UIDictationController sharedInstance];
    [v7 setActivationIdentifier:v4];

    v8 = [(UIKBTree *)self->super._keyplane name];
    [(UIKeyboardLayoutCursor *)self setKeyplaneBeforeDictation:v8];

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
  v3 = [(UIKeyboardLayoutCursor *)self keyplaneBeforeDictation];

  if (v3)
  {
    v4 = [(UIKeyboardLayoutCursor *)self keyplaneBeforeDictation];
    [(UIKeyboardLayoutCursor *)self setKeyplaneName:v4];

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

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIKeyboardLayout *)self disableInteraction])
  {
    goto LABEL_28;
  }

  v8 = [(UIKeyboardLayoutCursor *)self currentKey];
  [(UIKeyboardLayoutStar *)self setActiveKey:v8];

  if ([(UIKBScreenTraits *)self->super.super._screenTraits idiom]!= 2)
  {
    goto LABEL_28;
  }

  self->_didVariantDelete = 0;
  if (_UIPressesContainsPressType(v6, 4))
  {
    v9 = +[UIKeyboardImpl activeInstance];
    [v9 touchLongPressTimerWithDelay:1.0];

    v10 = UIKeyboardTypeSupportsDictationSpelling([(UITextInputTraits *)self->super.super._inputTraits dictationKeyboardType]) || [(UITextInputTraits *)self->super.super._inputTraits isSecureTextEntry]|| [(UITextInputTraits *)self->super.super._inputTraits forceSpellingDictation];
    v15 = [(UIKeyboardLayoutStar *)self activeKey];
    v16 = [v15 interactionType];

    v17 = +[UIDevice currentDevice];
    v18 = v17;
    if (v16 == 4)
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
    v21 = [(UIKeyboardLayoutStar *)self activeKey];
    v22 = [(UIKBKeyplaneView *)keyplaneView viewForKey:v21];

    if (v22)
    {
      v23 = [(UIKeyboardLayoutCursor *)self keyViewAnimator];
      v24 = [(UIKeyboardLayoutStar *)self activeKey];
      [v23 transitionKeyView:v22 fromState:objc_msgSend(v24 toState:"state") completion:{12, 0}];
    }

    goto LABEL_28;
  }

  if ((_UIPressesContainsPressType(v6, 18) & 1) != 0 || _UIPressesContainsPressType(v6, 6) && (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference__UIAllowDictationFromPlayPause, @"_UIAllowDictationFromPlayPause") & 1) == 0 && byte_1EA95E534)
  {
    v11 = +[UIKeyboardImpl activeInstance];
    v12 = [v11 shouldShowDictationKey];

    if (v12 && [(NSString *)self->super._keyplaneName rangeOfString:@"Dictation"]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [v7 _hidEvent];
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:IOHIDEventGetSenderID()];
      v14 = [v13 stringValue];

      [(UIKeyboardLayoutCursor *)self switchToDictationKeyplaneWithActivationIdentifier:v14];
    }
  }

  else if (_UIPressesContainsPressType(v6, 5) && ![(UIKeyboardLayoutCursor *)self _menuTapShouldExitVariants]&& ![(UIKeyboardLayoutCursor *)self _menuTapShouldStopDictation])
  {
    v25.receiver = self;
    v25.super_class = UIKeyboardLayoutCursor;
    [(UIResponder *)&v25 pressesBegan:v6 withEvent:v7];
  }

LABEL_28:
}

- (BOOL)_menuTapShouldExitVariants
{
  v2 = [(UIKeyboardLayoutCursor *)self currentKey];
  v3 = v2;
  if (v2 && [v2 state] == 16)
  {
    v4 = [v3 subtrees];
    if ([v4 count])
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

  v3 = [(UIKBTree *)self->super._keyplane name];
  v4 = [v3 rangeOfString:@"Dictation"] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIKeyboardLayout *)self disableInteraction])
  {
    goto LABEL_27;
  }

  self->_didVariantDelete = 0;
  if (_UIPressesContainsPressType(v6, 4))
  {
    if ([(UIKeyboardLayout *)self idiom]== 2 && [(NSString *)self->super._keyplaneName rangeOfString:@"Dictation"]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = +[UIDictationController activeInstance];
      [v8 stopDictation:0];
    }

    v9 = [(UIKeyboardLayoutStar *)self activeKey];

    keyplaneView = self->super._keyplaneView;
    v11 = [(UIKeyboardLayoutStar *)self activeKey];
    v12 = [(UIKBKeyplaneView *)keyplaneView viewForKey:v11];

    if (v12)
    {
      v13 = [(UIKeyboardLayoutStar *)self activeKey];
      v14 = [v13 interactionType];

      if (v14 != 16)
      {
        v15 = [(UIKeyboardLayoutCursor *)self keyViewAnimator];
        v16 = [(UIKeyboardLayoutStar *)self activeKey];
        [v15 transitionKeyView:v12 fromState:objc_msgSend(v16 toState:"state") completion:{4, 0}];
      }
    }

    if (!v9)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((_UIPressesContainsPressType(v6, 18) & 1) == 0 && (!_UIPressesContainsPressType(v6, 6) || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference__UIAllowDictationFromPlayPause, @"_UIAllowDictationFromPlayPause") & 1) != 0 || !byte_1EA95E534))
  {
LABEL_16:
    [(UIKeyboardLayoutCursor *)self _handlePresses:v6 withEvent:v7];
    goto LABEL_17;
  }

  [(UIKeyboardLayoutCursor *)self returnToKeyplaneAfterDictation];
LABEL_17:
  v17 = +[UIKeyboardImpl activeInstance];
  [v17 clearLongPressTimer];

  if (_UIPressesContainsPressType(v6, 4))
  {
    [(UIKeyboardLayoutStar *)self setActiveKey:0];
LABEL_19:
    self->_ignoreEventsUntilPressEnds = 0;
    goto LABEL_27;
  }

  if (!_UIPressesContainsPressType(v6, 5))
  {
    goto LABEL_27;
  }

  if ([(UIKeyboardLayoutCursor *)self _menuTapShouldExitVariants])
  {
    v18 = [(UIKeyboardLayoutCursor *)self currentKey];
    [(UIKeyboardLayoutCursor *)self clearVariantStateForKey:v18];

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
    [(UIResponder *)&v20 pressesEnded:v6 withEvent:v7];
    self->_isForwardingEvent = 0;
  }

LABEL_27:
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(UIKeyboardLayout *)self disableInteraction])
  {
    self->_didVariantDelete = 0;
    v8 = +[UIKeyboardImpl activeInstance];
    [v8 clearLongPressTimer];

    if (_UIPressesContainsPressType(v6, 4))
    {
      keyplaneView = self->super._keyplaneView;
      v10 = [(UIKeyboardLayoutStar *)self activeKey];
      v11 = [(UIKBKeyplaneView *)keyplaneView viewForKey:v10];

      if (v11)
      {
        v12 = [(UIKeyboardLayoutCursor *)self keyViewAnimator];
        v13 = [(UIKeyboardLayoutStar *)self activeKey];
        [v12 transitionKeyView:v11 fromState:objc_msgSend(v13 toState:"state") completion:{4, 0}];
      }

      [(UIKeyboardLayoutStar *)self setActiveKey:0];
      self->_ignoreEventsUntilPressEnds = 0;
      goto LABEL_6;
    }

    if (_UIPressesContainsPressType(v6, 5))
    {
      if ([(UIKeyboardLayoutCursor *)self _menuTapShouldExitVariants])
      {
        v11 = [(UIKeyboardLayoutCursor *)self currentKey];
        [(UIKeyboardLayoutCursor *)self clearVariantStateForKey:v11];
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
      [(UIResponder *)&v16 pressesCancelled:v6 withEvent:v7, v15.receiver, v15.super_class, self, UIKeyboardLayoutCursor];
    }

    else
    {
      if (!_UIPressesContainsPressType(v6, 6))
      {
        goto LABEL_7;
      }

      if ([(UIKeyboardLayoutCursor *)self canHandleEvent:v7])
      {
        [(UIKeyboardLayoutCursor *)self _handlePresses:v6 withEvent:v7];
        goto LABEL_7;
      }

      if (self->_isForwardingEvent)
      {
        goto LABEL_7;
      }

      self->_isForwardingEvent = 1;
      [(UIResponder *)&v15 pressesCancelled:v6 withEvent:v7, self, UIKeyboardLayoutCursor, v16.receiver, v16.super_class];
    }

    self->_isForwardingEvent = 0;
  }

LABEL_7:
}

- (BOOL)_handlePresses:(id)a3 withEvent:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [0 type];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (qword_1ED49AF30 != -1)
  {
    dispatch_once(&qword_1ED49AF30, &__block_literal_global_214_0);
    if (v6)
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

    v9 = [v7 allPresses];
    goto LABEL_5;
  }

  if (!v6)
  {
    goto LABEL_33;
  }

LABEL_4:
  v9 = v6;
LABEL_5:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v24 = v7;
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
          v18 = [v15 phase];

          if (v18 != 2)
          {
            v8 = [v15 type];
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
    v7 = v24;
  }

LABEL_18:
  if ([(UIKeyboardLayout *)self idiom]== 2 && v8 > 5)
  {
    if (v8 == 18)
    {
      goto LABEL_30;
    }

    if (v8 == 6)
    {
      v19 = [(UIKeyboardLayoutCursor *)self handleVisualDirectionalInput:6];
      goto LABEL_28;
    }

LABEL_29:
    v20 = 0;
    goto LABEL_31;
  }

  if (v8 == 4)
  {
    v19 = [(UIKeyboardLayoutCursor *)self handleLinearDirectionalInput:5];
    goto LABEL_28;
  }

  if (v8 != 5)
  {
    goto LABEL_29;
  }

  if ([(UIKeyboardLayoutCursor *)self _menuTapShouldExitVariants])
  {
LABEL_30:
    v20 = 1;
    goto LABEL_31;
  }

  v19 = [(UIKeyboardLayoutCursor *)self _menuTapShouldStopDictation];
LABEL_28:
  v20 = v19;
LABEL_31:

  return v20;
}

void __51__UIKeyboardLayoutCursor__handlePresses_withEvent___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1EFE2C688];
  v1 = qword_1ED49AF38;
  qword_1ED49AF38 = v0;
}

- (void)remoteControlReceivedWithEvent:(id)a3
{
  v4 = a3;
  if (![(UIKeyboardLayout *)self disableInteraction])
  {
    [(UIKeyboardLayoutCursor *)self _handleRemoteControlReceivedWithEvent:v4];
  }
}

- (BOOL)_handleRemoteControlReceivedWithEvent:(id)a3
{
  v4 = [a3 subtype] - 103;
  if (v4 > 9 || ((0x3A9u >> v4) & 1) == 0)
  {
    return 0;
  }

  v5 = dword_18A67F4B0[v4];

  return [(UIKeyboardLayoutCursor *)self handleVisualDirectionalInput:v5];
}

- (void)_wheelChangedWithEvent:(id)a3
{
  v4 = a3;
  if (![(UIKeyboardLayout *)self disableInteraction])
  {
    [(UIKeyboardLayoutCursor *)self _handleWheelChangedWithEvent:v4];
  }
}

- (BOOL)_handleWheelChangedWithEvent:(id)a3
{
  v4 = [a3 subtype] - 200;
  if (v4 > 5)
  {
    return 0;
  }

  v5 = dword_18A67F4D8[v4];

  return [(UIKeyboardLayoutCursor *)self handleLinearDirectionalInput:v5];
}

- (void)_moveWithEvent:(id)a3
{
  v4 = a3;
  if (![(UIKeyboardLayout *)self disableInteraction])
  {
    [(UIKeyboardLayoutCursor *)self _handleMoveWithEvent:v4];
  }
}

- (BOOL)_handleMoveWithEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 _focusHeading];
  v6 = 0;
  if (v5 > 7)
  {
    if (v5 != 8)
    {
      if (v5 == 16)
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
        if (v5 != 32)
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
    switch(v5)
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
  if (-[UIKeyboardLayoutCursor _isDirectionalHeading:](self, "_isDirectionalHeading:", [v4 _focusHeading]))
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

- (unint64_t)_indexOfFirstKeyPassingTest:(id)a3
{
  v4 = a3;
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
  v7 = v4;
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
  v4 = [v3 _getLocalizedInputMode];
  LOBYTE(v2) = [v2 characterDirectionForLanguage:v4] == 1;

  return v2 ^ ([UIApp userInterfaceLayoutDirection] == 0);
}

- (BOOL)isKeyboardRightToLeft
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 currentInputMode];
  v4 = [v3 isDefaultRightToLeft];

  return v4;
}

- (UIWindow)focusWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_focusWindow);

  return WeakRetained;
}

@end