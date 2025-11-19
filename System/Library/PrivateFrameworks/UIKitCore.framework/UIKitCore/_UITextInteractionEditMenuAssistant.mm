@interface _UITextInteractionEditMenuAssistant
- (BOOL)_editMenuDismissedByActionSelection;
- (BOOL)_editMenuDismissedRecently;
- (BOOL)_editMenuIsVisible;
- (BOOL)_editMenuIsVisibleOrDismissedRecently;
- (BOOL)_editMenuPrefersPresentationInView;
- (BOOL)_hasTextReplacements;
- (BOOL)_isAffectedByScrollNotification:(id)a3;
- (BOOL)_updateEditMenuPositionForPreferredArrowDirection:(int64_t)a3 replacements:(id)a4;
- (CGRect)_clippedTargetRect:(CGRect)a3;
- (CGRect)_editMenuRawTargetRect;
- (CGRect)_editMenuTargetRect;
- (CGRect)selectionBoundingBox;
- (CGRect)selectionBoundingBoxForRects:(id)a3;
- (NSArray)_preferredLayoutRectsForEditMenu;
- (UITextInteractionAssistant)interactionAssistant;
- (UIView)_selectionView;
- (UIWindow)_editMenuSourceWindow;
- (_UITextInteractionEditMenuAssistant)initWithInteractionAssistant:(id)a3;
- (id)_editMenuConfigurationForCurrentSelectionWithPreferredArrowDirection:(int64_t)a3;
- (id)_screenCoordinateSpace;
- (id)_selectionViewCoordinateSpace;
- (id)_textViewCoordinateSpace;
- (id)_windowCoordinateSpace;
- (id)menuElementsForReplacements:(id)a3;
- (void)_didReceiveSelectionDidScrollNotification:(id)a3;
- (void)_didReceiveSelectionWillScrollNotification:(id)a3;
- (void)_hideSelectionCommandsWithReason:(int64_t)a3;
- (void)_presentEditMenuWithPreferredDirection:(int64_t)a3 replacements:(id)a4;
- (void)_presentEditMenuWithPreferredDirection:(int64_t)a3 replacements:(id)a4 overrideMenu:(id)a5;
- (void)_showCommandsWithReplacements:(id)a3 forDictation:(BOOL)a4 afterDelay:(double)a5;
- (void)_showCommandsWithReplacements:(id)a3 isForContextMenu:(BOOL)a4 forDictation:(BOOL)a5 arrowDirection:(int64_t)a6;
- (void)_showSelectionCommandsForContextMenu:(BOOL)a3;
- (void)calculateReplacementsWithGenerator:(id)a3 andShowAfterDelay:(double)a4;
- (void)cancelDelayedCommandRequests;
- (void)showCalloutBarAfterDelay:(double)a3;
- (void)showReplacementsWithGenerator:(id)a3 forDictation:(BOOL)a4 afterDelay:(double)a5;
- (void)showSelectionCommandsAfterDelay:(double)a3;
@end

@implementation _UITextInteractionEditMenuAssistant

- (void)cancelDelayedCommandRequests
{
  [(NSTimer *)self->_delayedEditMenuTimer invalidate];
  delayedEditMenuTimer = self->_delayedEditMenuTimer;
  self->_delayedEditMenuTimer = 0;
}

- (UITextInteractionAssistant)interactionAssistant
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionAssistant);

  return WeakRetained;
}

- (BOOL)_editMenuIsVisible
{
  v2 = [(_UITextInteractionEditMenuAssistant *)self menuInteraction];
  v3 = [v2 isDisplayingMenuForSelectionCommands];

  return v3;
}

- (_UITextInteractionEditMenuAssistant)initWithInteractionAssistant:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UITextInteractionEditMenuAssistant;
  v5 = [(_UITextInteractionEditMenuAssistant *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interactionAssistant, v4);
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v6 selector:sel__didReceiveSelectionWillScrollNotification_ name:@"UITextSelectionWillScroll" object:0];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v6 selector:sel__didReceiveSelectionDidScrollNotification_ name:@"UITextSelectionDidScroll" object:0];
  }

  return v6;
}

- (UIView)_selectionView
{
  v3 = +[UITextSelectionDisplayInteraction isModernSelectionViewEnabled];
  v4 = [(_UITextInteractionEditMenuAssistant *)self interactionAssistant];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 _selectionViewManager];
    v7 = [v6 highlightView];
  }

  else
  {
    v7 = [v4 _legacySelectionView];
  }

  return v7;
}

- (id)_selectionViewCoordinateSpace
{
  v2 = [(_UITextInteractionEditMenuAssistant *)self _selectionView];
  v3 = [v2 coordinateSpace];

  return v3;
}

- (id)_textViewCoordinateSpace
{
  v2 = [(_UITextInteractionEditMenuAssistant *)self interactionAssistant];
  v3 = [v2 view];
  v4 = [v3 textInputView];

  return v4;
}

- (id)_screenCoordinateSpace
{
  v2 = [(_UITextInteractionEditMenuAssistant *)self _selectionView];
  v3 = [v2 _screen];
  v4 = [v3 coordinateSpace];

  return v4;
}

- (id)_windowCoordinateSpace
{
  v2 = [(_UITextInteractionEditMenuAssistant *)self _selectionView];
  v3 = [v2 window];

  return v3;
}

- (void)_presentEditMenuWithPreferredDirection:(int64_t)a3 replacements:(id)a4
{
  v6 = a4;
  v7 = [(_UITextInteractionEditMenuAssistant *)self menuElementsForReplacements:v6];
  v8 = [UIMenu menuWithChildren:v7];

  [(_UITextInteractionEditMenuAssistant *)self _presentEditMenuWithPreferredDirection:a3 replacements:v6 overrideMenu:v8];
}

- (void)_presentEditMenuWithPreferredDirection:(int64_t)a3 replacements:(id)a4 overrideMenu:(id)a5
{
  v32 = a4;
  v9 = a5;
  v10 = [(_UITextInteractionEditMenuAssistant *)self _selectionView];
  v11 = [v10 window];

  if (v11)
  {
    v12 = [(_UITextInteractionEditMenuAssistant *)self interactionAssistant];
    v13 = [v12 view];

    interactionAssistantViewRespondsShouldShowEditMenu = self->_interactionAssistantViewRespondsShouldShowEditMenu;
    if (!interactionAssistantViewRespondsShouldShowEditMenu && v13)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithBool:objc_opt_respondsToSelector() & 1];
      v16 = self->_interactionAssistantViewRespondsShouldShowEditMenu;
      self->_interactionAssistantViewRespondsShouldShowEditMenu = v15;

      interactionAssistantViewRespondsShouldShowEditMenu = self->_interactionAssistantViewRespondsShouldShowEditMenu;
    }

    if (!interactionAssistantViewRespondsShouldShowEditMenu || !-[NSNumber BOOLValue](interactionAssistantViewRespondsShouldShowEditMenu, "BOOLValue") || !v13 || [v13 _shouldShowEditMenu])
    {
      [(_UITextInteractionEditMenuAssistant *)self _editMenuRawTargetRect];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [(_UITextInteractionEditMenuAssistant *)self _clippedTargetRect:?];
      v35.origin.x = v25;
      v35.origin.y = v26;
      v35.size.width = v27;
      v35.size.height = v28;
      v34.origin.x = v18;
      v34.origin.y = v20;
      v34.size.width = v22;
      v34.size.height = v24;
      if (CGRectIntersectsRect(v34, v35))
      {
        objc_storeStrong(&self->_replacements, a4);
        objc_storeStrong(&self->_overrideMenu, a5);
        v29 = [(_UITextInteractionEditMenuAssistant *)self _editMenuConfigurationForCurrentSelectionWithPreferredArrowDirection:a3];
        v30 = [(_UITextInteractionEditMenuAssistant *)self menuInteraction];
        [v30 presentSelectionCommandsWithConfiguration:v29];

        v31 = +[UIKeyboardImpl activeInstance];
        [v31 _textSelectionEditMenuDidShow];
      }
    }
  }
}

- (id)_editMenuConfigurationForCurrentSelectionWithPreferredArrowDirection:(int64_t)a3
{
  v5 = [(_UITextInteractionEditMenuAssistant *)self _selectionView];
  [(_UITextInteractionEditMenuAssistant *)self _editMenuTargetRect];
  v8 = v7 + v6 * 0.5;
  v11 = v10 + v9 * 0.5;
  v12 = [(_UITextInteractionEditMenuAssistant *)self menuInteraction];
  v13 = [v12 view];
  [v5 convertPoint:v13 toView:{v8, v11}];
  v15 = v14;
  v17 = v16;

  v18 = [UIEditMenuConfiguration configurationWithIdentifier:0x1EFBA7550 sourcePoint:v15, v17];
  [v18 set_ignoresPassthroughInView:1];
  [v18 set_prefersMenuPresentationInView:{-[_UITextInteractionEditMenuAssistant _editMenuPrefersPresentationInView](self, "_editMenuPrefersPresentationInView")}];
  if ((a3 - 1) >= 4)
  {
    v19 = 0;
  }

  else
  {
    v19 = a3;
  }

  [v18 setPreferredArrowDirection:v19];
  v20 = [(_UITextInteractionEditMenuAssistant *)self _editMenuSourceWindow];
  [v18 set_overrideSourceWindow:v20];

  return v18;
}

- (CGRect)selectionBoundingBox
{
  v3 = [(_UITextInteractionEditMenuAssistant *)self interactionAssistant];
  v4 = [v3 activeSelectionController];
  v5 = [v4 selection];

  v6 = [v5 selectedRange];
  LOBYTE(v4) = [v6 _isRanged];

  if (v4)
  {
    v7 = [v5 selectionRects];
    [(_UITextInteractionEditMenuAssistant *)self selectionBoundingBoxForRects:v7];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
  }

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)selectionBoundingBoxForRects:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  *v42 = *MEMORY[0x1E695F058];
  *&v42[8] = *(MEMORY[0x1E695F058] + 8);
  *&v42[16] = *(MEMORY[0x1E695F058] + 16);
  *&v42[24] = *(MEMORY[0x1E695F058] + 24);
  v5 = [(_UITextInteractionEditMenuAssistant *)self interactionAssistant];
  v6 = [v5 view];
  v7 = [v6 textInputView];
  [v7 visibleBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v16 = v4;
  v17 = [v16 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v44;
    do
    {
      v21 = 0;
      do
      {
        if (*v44 != v20)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v43 + 1) + 8 * v21) rect];
        x = v49.origin.x;
        y = v49.origin.y;
        width = v49.size.width;
        height = v49.size.height;
        v53.origin.x = v9;
        v53.origin.y = v11;
        v53.size.width = v13;
        v53.size.height = v15;
        v50 = CGRectIntersection(v49, v53);
        if (!CGRectIsNull(v50))
        {
          v26 = [(_UITextInteractionEditMenuAssistant *)self interactionAssistant];
          v27 = [v26 view];
          v28 = [v27 textInputView];
          v29 = [(_UITextInteractionEditMenuAssistant *)self _selectionViewCoordinateSpace];
          [v28 convertRect:v29 toCoordinateSpace:{x, y, width, height}];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;

          if (v19)
          {
            v54.origin.x = v31;
            v54.origin.y = v33;
            v54.size.width = v35;
            v54.size.height = v37;
            v51 = CGRectUnion(*v42, v54);
            v31 = v51.origin.x;
            v33 = v51.origin.y;
            v35 = v51.size.width;
            v37 = v51.size.height;
          }

          ++v19;
          *&v42[16] = v35;
          *&v42[24] = v37;
          *v42 = v31;
          *&v42[8] = v33;
        }

        ++v21;
      }

      while (v18 != v21);
      v18 = [v16 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v18);
  }

  v38 = *v42;
  v39 = *&v42[8];
  v40 = *&v42[16];
  v41 = *&v42[24];
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (CGRect)_clippedTargetRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (+[UIKeyboard isKeyboardProcess])
  {
    goto LABEL_29;
  }

  v8 = [(_UITextInteractionEditMenuAssistant *)self interactionAssistant];
  v9 = [v8 view];
  v10 = [v9 textInputView];
  [v10 visibleBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [(_UITextInteractionEditMenuAssistant *)self _selectionViewCoordinateSpace];
  v20 = [(_UITextInteractionEditMenuAssistant *)self interactionAssistant];
  v21 = [v20 view];
  v22 = [v21 textInputView];
  [v19 convertRect:v22 fromCoordinateSpace:{v12, v14, v16, v18}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v130.origin.x = v24;
  v130.origin.y = v26;
  v130.size.width = v28;
  v130.size.height = v30;
  v141.origin.x = x;
  v141.origin.y = y;
  v141.size.width = width;
  v141.size.height = height;
  v131 = CGRectIntersection(v130, v141);
  v31 = v131.origin.x;
  v32 = v131.origin.y;
  v33 = v131.size.width;
  v34 = v131.size.height;
  v35 = [(_UITextInteractionEditMenuAssistant *)self _selectionView];
  v36 = [v35 _scroller];

  if (v36 && ([v36 traitCollection], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "userInterfaceIdiom"), v37, v38 == 6))
  {
    v39 = [(_UITextInteractionEditMenuAssistant *)self _selectionViewCoordinateSpace];
    [v36 bounds];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = [v36 coordinateSpace];
    [v39 convertRect:v48 fromCoordinateSpace:{v41, v43, v45, v47}];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;

    [(_UITextInteractionEditMenuAssistant *)self _expandClippingArea:6 forIdiom:v50, v52, v54, v56];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
  }

  else
  {
    v65 = [(_UITextInteractionEditMenuAssistant *)self _selectionView];
    v66 = [v65 _screen];
    [v66 bounds];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    v75 = [(_UITextInteractionEditMenuAssistant *)self _windowCoordinateSpace];
    v76 = [(_UITextInteractionEditMenuAssistant *)self _screenCoordinateSpace];
    [v75 convertRect:v76 fromCoordinateSpace:{v68, v70, v72, v74}];
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;

    v85 = [(_UITextInteractionEditMenuAssistant *)self _selectionViewCoordinateSpace];
    v86 = [(_UITextInteractionEditMenuAssistant *)self _windowCoordinateSpace];
    [v85 convertRect:v86 fromCoordinateSpace:{v78, v80, v82, v84}];
    v58 = v87;
    v60 = v88;
    v62 = v89;
    v64 = v90;
  }

  v132.origin.x = v58;
  v132.origin.y = v60;
  v132.size.width = v62;
  v132.size.height = v64;
  v142.origin.x = v31;
  v142.origin.y = v32;
  v142.size.width = v33;
  v142.size.height = v34;
  if (CGRectIntersectsRect(v132, v142))
  {
    goto LABEL_17;
  }

  v91 = v58 + v62;
  if (v58 + v62 < v31 + 10.0)
  {
    v92 = -10.0;
LABEL_11:
    v31 = v91 + v92;
    goto LABEL_12;
  }

  if (v31 + v33 < v58 + 10.0)
  {
    v91 = v58 - v33;
    v92 = 10.0;
    goto LABEL_11;
  }

LABEL_12:
  v93 = v60 + v64;
  if (v60 + v64 < v32 + 10.0)
  {
    v94 = -10.0;
LABEL_16:
    v32 = v93 + v94;
    goto LABEL_17;
  }

  if (v32 + v34 < v60 + 10.0)
  {
    v93 = v60 - v34;
    v94 = 10.0;
    goto LABEL_16;
  }

LABEL_17:
  v133.origin.x = v58;
  v133.origin.y = v60;
  v133.size.width = v62;
  v133.size.height = v64;
  v143.origin.x = v31;
  v143.origin.y = v32;
  v143.size.width = v33;
  v143.size.height = v34;
  v134 = CGRectIntersection(v133, v143);
  x = v134.origin.x;
  y = v134.origin.y;
  width = v134.size.width;
  height = v134.size.height;
  if (v36)
  {
    v95 = [(_UITextInteractionEditMenuAssistant *)self _selectionViewCoordinateSpace];
    [v36 bounds];
    [v95 convertRect:v36 fromCoordinateSpace:?];
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;

    v104 = [v36 traitCollection];
    -[_UITextInteractionEditMenuAssistant _expandClippingArea:forIdiom:](self, "_expandClippingArea:forIdiom:", [v104 userInterfaceIdiom], v97, v99, v101, v103);
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v112 = v111;

    v135.origin.x = v106;
    v135.origin.y = v108;
    v135.size.width = v110;
    v135.size.height = v112;
    v144.origin.x = x;
    v144.origin.y = y;
    v144.size.width = width;
    v144.size.height = height;
    v136 = CGRectIntersection(v135, v144);
    v113 = v136.origin.x;
    v114 = v136.origin.y;
    v115 = v136.size.width;
    v116 = v136.size.height;
    if (CGRectIsEmpty(v136))
    {
      x = *MEMORY[0x1E695F058];
      y = *(MEMORY[0x1E695F058] + 8);
      width = *(MEMORY[0x1E695F058] + 16);
      height = *(MEMORY[0x1E695F058] + 24);
    }

    else if (v116 >= height)
    {
      x = v113;
      y = v114;
      width = v115;
      height = v116;
    }

    else
    {
      if (height >= 40.0)
      {
        v117 = [(_UITextInteractionEditMenuAssistant *)self interactionAssistant];
        v118 = [v117 view];
        v119 = [v118 isEditing];

        if (v119)
        {
          v120 = +[UIKeyboardImpl activeInstance];
          v121 = [(_UITextInteractionEditMenuAssistant *)self _selectionView];
          [v120 subtractKeyboardFrameFromRect:v121 inView:{v113, v114, v115, v116}];
          v113 = v122;
          v114 = v123;
          v115 = v124;
          v116 = v125;
        }

        v139.origin.x = v113;
        v139.origin.y = v114;
        v139.size.width = v115;
        v139.size.height = v116;
        v138 = CGRectInset(v139, 0.0, -10.0);
      }

      else
      {
        v137.origin.x = v113;
        v137.origin.y = v114;
        v137.size.width = v115;
        v137.size.height = v116;
        v145.origin.x = x;
        v145.origin.y = y;
        v145.size.width = width;
        v145.size.height = height;
        v138 = CGRectUnion(v137, v145);
      }

      x = v138.origin.x;
      y = v138.origin.y;
      width = v138.size.width;
      height = v138.size.height;
    }
  }

LABEL_29:
  v126 = x;
  v127 = y;
  v128 = width;
  v129 = height;
  result.size.height = v129;
  result.size.width = v128;
  result.origin.y = v127;
  result.origin.x = v126;
  return result;
}

- (UIWindow)_editMenuSourceWindow
{
  v2 = [(_UITextInteractionEditMenuAssistant *)self _selectionView];
  v3 = [v2 keyboardSceneDelegate];
  v4 = [v3 containerWindow];

  v5 = [v2 window];
  v6 = [v5 _isRemoteKeyboardWindow];

  if (v6)
  {
    v7 = [v2 window];

    v4 = v7;
  }

  return v4;
}

- (CGRect)_editMenuRawTargetRect
{
  v3 = [(_UITextInteractionEditMenuAssistant *)self interactionAssistant];
  v4 = [v3 activeSelectionController];
  v5 = [v4 selection];

  v6 = [v5 selectedRange];
  LODWORD(v4) = [v6 isEmpty];

  if (v4)
  {
    [v5 caretRect];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(_UITextInteractionEditMenuAssistant *)self interactionAssistant];
    v16 = [v15 view];
    v17 = [v16 textInputView];
    v18 = [(_UITextInteractionEditMenuAssistant *)self _selectionViewCoordinateSpace];
    [v17 convertRect:v18 toCoordinateSpace:{v8, v10, v12, v14}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
  }

  else
  {
    [(_UITextInteractionEditMenuAssistant *)self selectionBoundingBox];
    v20 = v27;
    v22 = v28;
    v24 = v29;
    v26 = v30;
  }

  v31 = v20;
  v32 = v22;
  v33 = v24;
  v34 = v26;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (NSArray)_preferredLayoutRectsForEditMenu
{
  v2 = [(_UITextInteractionEditMenuAssistant *)self interactionAssistant];
  v3 = [v2 _selectionViewManager];
  v4 = [v3 _preferredLayoutRectsForEditMenu];

  return v4;
}

- (CGRect)_editMenuTargetRect
{
  [(_UITextInteractionEditMenuAssistant *)self _editMenuRawTargetRect];

  [(_UITextInteractionEditMenuAssistant *)self _clippedTargetRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)_editMenuIsVisibleOrDismissedRecently
{
  if ([(_UITextInteractionEditMenuAssistant *)self _editMenuIsVisible])
  {
    return 1;
  }

  return [(_UITextInteractionEditMenuAssistant *)self _editMenuDismissedRecently];
}

- (BOOL)_editMenuDismissedRecently
{
  v2 = [(_UITextInteractionEditMenuAssistant *)self menuInteraction];
  v3 = [v2 dismissedRecently];

  return v3;
}

- (BOOL)_editMenuDismissedByActionSelection
{
  v2 = [(_UITextInteractionEditMenuAssistant *)self menuInteraction];
  v3 = [v2 dismissedByActionSelection];

  return v3;
}

- (BOOL)_editMenuPrefersPresentationInView
{
  v2 = [(_UITextInteractionEditMenuAssistant *)self _selectionView];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceIdiom] == 6;

  return v4;
}

- (BOOL)_hasTextReplacements
{
  v2 = [(_UITextInteractionEditMenuAssistant *)self replacements];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)menuElementsForReplacements:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 menuTitle];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __67___UITextInteractionEditMenuAssistant_menuElementsForReplacements___block_invoke;
        v20[3] = &unk_1E70F4708;
        v20[4] = v9;
        v11 = [UIAction actionWithTitle:v10 image:0 identifier:0 handler:v20];

        if ([v9 _isNoReplacementsFoundItem])
        {
          [v11 setAttributes:{objc_msgSend(v11, "attributes") | 1}];
        }

        [v4 addObject:v11];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v12 = [(_UITextInteractionEditMenuAssistant *)self interactionAssistant];
    v13 = [v12 view];

    if ([v13 _shouldDisplayWritingToolsCalloutBarItem])
    {
      v14 = [UICommand _defaultCommandForAction:sel_showWritingTools_];
      v25 = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v16 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:0 options:1 children:v15];

      [v4 addObject:v16];
    }
  }

  return v4;
}

- (BOOL)_updateEditMenuPositionForPreferredArrowDirection:(int64_t)a3 replacements:(id)a4
{
  v6 = a4;
  if ([(_UITextInteractionEditMenuAssistant *)self _editMenuIsVisible])
  {
    [(_UITextInteractionEditMenuAssistant *)self _presentEditMenuWithPreferredDirection:a3 replacements:v6];
  }

  return 1;
}

- (BOOL)_isAffectedByScrollNotification:(id)a3
{
  v4 = a3;
  v5 = [(_UITextInteractionEditMenuAssistant *)self menuInteraction];
  v6 = [v5 isDisplayingHandoffMenu];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 object];
    v9 = [(_UITextInteractionEditMenuAssistant *)self interactionAssistant];
    v10 = [v9 view];
    v11 = [v10 textInputView];

    v7 = 0;
    if (v8 && v11)
    {
      v7 = [v8 containsView:v11];
    }
  }

  return v7;
}

- (void)_didReceiveSelectionWillScrollNotification:(id)a3
{
  if ([(_UITextInteractionEditMenuAssistant *)self _isAffectedByScrollNotification:a3])
  {
    v4 = self->_wasShowingEditMenuBeforeScroll || [(_UITextInteractionEditMenuAssistant *)self _editMenuIsVisible];
    self->_wasShowingEditMenuBeforeScroll = v4;

    [(_UITextInteractionEditMenuAssistant *)self hideSelectionCommands];
  }
}

- (void)_didReceiveSelectionDidScrollNotification:(id)a3
{
  if ([(_UITextInteractionEditMenuAssistant *)self _isAffectedByScrollNotification:a3])
  {
    v4 = [(_UITextInteractionEditMenuAssistant *)self menuInteraction];
    [v4 updateVisibleMenuPosition];

    if (self->_wasShowingEditMenuBeforeScroll)
    {
      [(_UITextInteractionEditMenuAssistant *)self showCalloutBarAfterDelay:0.1];
      self->_wasShowingEditMenuBeforeScroll = 0;
    }
  }
}

- (void)_hideSelectionCommandsWithReason:(int64_t)a3
{
  [(_UITextInteractionEditMenuAssistant *)self cancelDelayedCommandRequests];
  v5 = [(_UITextInteractionEditMenuAssistant *)self menuInteraction];
  [v5 dismissSelectionCommandsWithReason:a3];
}

- (void)showSelectionCommandsAfterDelay:(double)a3
{
  replacements = self->_replacements;
  self->_replacements = 0;

  overrideMenu = self->_overrideMenu;
  self->_overrideMenu = 0;

  [(_UITextInteractionEditMenuAssistant *)self showCalloutBarAfterDelay:a3];
}

- (void)showCalloutBarAfterDelay:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionAssistant);
  v10 = [WeakRetained _editMenuAssistant];

  if (![v10 _editMenuDismissedRecently] || objc_msgSend(v10, "_editMenuDismissedByActionSelection"))
  {
    [(_UITextInteractionEditMenuAssistant *)self cancelDelayedCommandRequests];
    v6 = [(_UITextInteractionEditMenuAssistant *)self replacements];
    [(_UITextInteractionEditMenuAssistant *)self _showCommandsWithReplacements:v6 forDictation:0 afterDelay:a3];

    v7 = [(_UITextInteractionEditMenuAssistant *)self replacements];
    v8 = [v7 count] != 0;

    v9 = objc_loadWeakRetained(&self->_interactionAssistant);
    [v9 setSelectionHighlightMode:(2 * v8)];
  }
}

- (void)calculateReplacementsWithGenerator:(id)a3 andShowAfterDelay:(double)a4
{
  v6 = [a3 replacements];
  if ([v6 count])
  {
    [(_UITextInteractionEditMenuAssistant *)self _showCommandsWithReplacements:v6 forDictation:0 afterDelay:a4];
  }
}

- (void)showReplacementsWithGenerator:(id)a3 forDictation:(BOOL)a4 afterDelay:(double)a5
{
  v6 = a4;
  v8 = a3;
  [(_UITextInteractionEditMenuAssistant *)self cancelDelayedCommandRequests];
  if (v6)
  {
    v9 = 0;
    v10 = 3;
  }

  else
  {
    v11 = [v8 isStringToReplaceMisspelled];
    v9 = v11;
    if (v11)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionAssistant);
  [WeakRetained setSelectionHighlightMode:v10];

  if ((v9 & 1) != 0 || v6)
  {
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 postNotificationName:@"UIKeyboardPredictionsAvailable" object:0];
  }

  v14 = objc_loadWeakRetained(&self->_interactionAssistant);
  v15 = [v14 viewConformsToAsynchronousInteractionProtocol];

  if (v15)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __93___UITextInteractionEditMenuAssistant_showReplacementsWithGenerator_forDictation_afterDelay___block_invoke;
    v23 = &unk_1E70FD1B8;
    v24 = self;
    v25 = v8;
    v16 = _Block_copy(&v20);
    v17 = [UIKeyboardImpl sharedInstance:v20];
    v18 = [v17 taskQueue];
    v19 = [v18 scheduleTask:v16 timeInterval:0 repeats:a5];
  }

  else
  {
    [(_UITextInteractionEditMenuAssistant *)self calculateReplacementsWithGenerator:v8 andShowAfterDelay:a5];
  }
}

- (void)_showSelectionCommandsForContextMenu:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_interactionAssistant);
  v6 = [WeakRetained activeSelectionController];
  v7 = [v6 selection];
  v8 = [v7 isCommitting];

  if (v8)
  {

    [(_UITextInteractionEditMenuAssistant *)self showCommandsWithReplacements:0];
  }

  else if (v3)
  {

    [(_UITextInteractionEditMenuAssistant *)self _showCommandsWithReplacements:0 isForContextMenu:1 forDictation:0 arrowDirection:0];
  }

  else
  {
    v9 = [(_UITextInteractionEditMenuAssistant *)self interactionAssistant];
    [v9 updateDisplayedSelection];

    [(_UITextInteractionEditMenuAssistant *)self _showCommandsWithReplacements:0 forDictation:0 afterDelay:0.0];
  }
}

- (void)_showCommandsWithReplacements:(id)a3 forDictation:(BOOL)a4 afterDelay:(double)a5
{
  v8 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93___UITextInteractionEditMenuAssistant__showCommandsWithReplacements_forDictation_afterDelay___block_invoke;
  aBlock[3] = &unk_1E7104A08;
  aBlock[4] = self;
  v14 = v8;
  v15 = a4;
  v9 = v8;
  v10 = _Block_copy(aBlock);
  v11 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v10 block:a5];
  delayedEditMenuTimer = self->_delayedEditMenuTimer;
  self->_delayedEditMenuTimer = v11;
}

- (void)_showCommandsWithReplacements:(id)a3 isForContextMenu:(BOOL)a4 forDictation:(BOOL)a5 arrowDirection:(int64_t)a6
{
  v7 = a5;
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (a4 || (-[_UITextInteractionEditMenuAssistant interactionAssistant](self, "interactionAssistant"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 shouldSuppressSelectionCommands], v11, (v12 & 1) == 0))
  {
    [(_UITextInteractionEditMenuAssistant *)self cancelDelayedCommandRequests];
    if ([(_UITextInteractionEditMenuAssistant *)self _editMenuIsVisible])
    {
      if (![(_UITextInteractionEditMenuAssistant *)self _updateEditMenuPositionForPreferredArrowDirection:a6 replacements:v10])
      {
        [(_UITextInteractionEditMenuAssistant *)self hideSelectionCommands];
      }
    }

    else
    {
      v13 = +[UIKeyboardImpl activeInstance];
      v14 = [v13 hasMarkedText];

      if ((v14 & 1) == 0)
      {
        v15 = [v10 indexOfObjectPassingTest:&__block_literal_global_161];
        v16 = +[UIKeyboardImpl activeInstance];
        v17 = [v16 isPredictionViewControllerVisible];

        if (v7 && v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = +[UIDevice currentDevice];
          v19 = [v18 userInterfaceIdiom];

          if ((v19 & 0xFFFFFFFFFFFFFFFBLL) != 1 && (([v10 count] != 0) & v17) == 1)
          {
            v20 = +[UIKeyboardImpl activeInstance];
            v29 = [v20 autocorrectionController];

            v21 = [MEMORY[0x1E695DF70] array];
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v22 = v10;
            v23 = [v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v31;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v31 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = [UITextReplacementCandidate textReplacementCandidateForTextReplacement:*(*(&v30 + 1) + 8 * i)];
                  [v21 addObject:v27];
                }

                v24 = [v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
              }

              while (v24);
            }

            v28 = [MEMORY[0x1E69D9570] listWithAutocorrection:0 predictions:v21];
            [v29 setAutocorrectionList:v28];
          }
        }

        [(_UITextInteractionEditMenuAssistant *)self _presentEditMenuWithPreferredDirection:a6 replacements:v10];
      }
    }
  }
}

@end