@interface TSWPInteractiveCanvasController
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)isEditingText;
- (BOOL)shouldRespondToTextHyperlinks;
- (CGImage)textImageFromRect:(CGRect)rect;
- (CGRect)scrollFocusRectForModel:(id)model withSelection:(id)selection;
- (id)_repsForStorage:(id)storage;
- (id)beginEditingRepForInfo:(id)info;
- (id)closestRepToPoint:(CGPoint)point;
- (id)closestRepToPoint:(CGPoint)point forStorage:(id)storage;
- (id)p_beginEditingPossibleContainedRep:(id *)rep;
- (id)p_repsForStorage:(id)storage;
- (void)dealloc;
- (void)didBeginEditingText;
- (void)gestureSequenceDidEnd;
- (void)gestureSequenceWillBegin;
- (void)p_recursivelyAddRep:(id)rep forStorage:(id)storage toSet:(id)set;
- (void)resumeEditing;
- (void)teardown;
- (void)willEndEditingText;
- (void)withLayoutForModel:(id)model withSelection:(id)selection performBlock:(id)block;
@end

@implementation TSWPInteractiveCanvasController

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v3.receiver = self;
  v3.super_class = TSWPInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v3 dealloc];
}

- (void)teardown
{
  self->_isTearingDown = 1;
  v3.receiver = self;
  v3.super_class = TSWPInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v3 teardown];
  self->_isTearingDown = 0;
}

- (CGRect)scrollFocusRectForModel:(id)model withSelection:(id)selection
{
  v6 = MEMORY[0x277CBF398];
  v7 = *MEMORY[0x277CBF398];
  v8 = *(MEMORY[0x277CBF398] + 8);
  v9 = *(MEMORY[0x277CBF398] + 16);
  v10 = *(MEMORY[0x277CBF398] + 24);
  objc_opt_class();
  v11 = TSUDynamicCast();
  if ([v11 isRange])
  {
    objc_opt_class();
    [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] textInputEditor];
    v12 = TSUDynamicCast();
    if (([v12 selectionLastModifiedWithKnob] & 1) != 0 || objc_msgSend(v12, "selectionLastModifiedWithKeyboard"))
    {
      currentSelectionFlags = [v12 currentSelectionFlags];
      range = [v11 range];
      if (currentSelectionFlags < 0)
      {
        v16 = v15 + range - 1;
      }

      else
      {
        v16 = range;
      }

      v17 = [TSWPSelection selectionWithRange:v16, 1];
      if (model)
      {
        v18 = v17;
        v19 = [(TSDInteractiveCanvasController *)self infoForModel:model withSelection:v17];
        if (v19)
        {
          v20 = [(TSDInteractiveCanvasController *)self layoutForInfo:v19];
          [v20 rectForSelection:v18];
          x = v29.origin.x;
          y = v29.origin.y;
          width = v29.size.width;
          height = v29.size.height;
          if (!CGRectEqualToRect(v29, *v6))
          {
            [v20 rectInRoot:{x, y, width, height}];
            v31 = CGRectInset(v30, 0.0, -20.0);
            v7 = v31.origin.x;
            v8 = v31.origin.y;
            v9 = v31.size.width;
            v10 = v31.size.height;
          }
        }
      }
    }
  }

  v25 = v7;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)withLayoutForModel:(id)model withSelection:(id)selection performBlock:(id)block
{
  v6 = [(TSDInteractiveCanvasController *)self layoutForModel:model withSelection:selection];
  v7 = *(block + 2);

  v7(block, v6);
}

- (BOOL)shouldRespondToTextHyperlinks
{
  [(TSDInteractiveCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  delegate = [(TSDInteractiveCanvasController *)self delegate];

  return [(TSDInteractiveCanvasControllerDelegate *)delegate interactiveCanvasControllerAllowsHyperlinkInteraction];
}

- (id)p_beginEditingPossibleContainedRep:(id *)rep
{
  if (!rep)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPInteractiveCanvasController p_beginEditingPossibleContainedRep:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPInteractiveCanvasController.mm"), 205, @"invalid nil value for '%s'", "ioContainedRep"}];
  }

  objc_opt_class();
  [*rep parentRep];
  v7 = TSUDynamicCast();
  if (v7)
  {
    v8 = v7;
    [v7 willBeginEditingContainedRep];
    containedRep = [v8 containedRep];
    *rep = containedRep;
  }

  else
  {
    containedRep = *rep;
  }

  return [(TSDInteractiveCanvasController *)self beginEditingRep:containedRep];
}

- (id)beginEditingRepForInfo:(id)info
{
  [(TSDCanvas *)[(TSDInteractiveCanvasController *)self canvas] layoutIfNeeded];
  objc_opt_class();
  [(TSDInteractiveCanvasController *)self repForInfo:info];
  v5 = TSUDynamicCast();
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [-[TSDInteractiveCanvasController repForInfo:](self repForInfo:{objc_msgSend(info, "parentInfo")), "repForSelecting"}];
      if (v10)
      {
        v11 = v10;
        if (([v10 isSelectedIgnoringLocking] & 1) == 0)
        {
          [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] setSelectionToRep:v11];
        }
      }
    }

    goto LABEL_12;
  }

  containedRep = [v5 containedRep];
  if (!containedRep || ((v6 = -[TSWPInteractiveCanvasController p_beginEditingPossibleContainedRep:](self, "p_beginEditingPossibleContainedRep:", &containedRep), objc_opt_class(), v7 = TSUDynamicCast(), v8 = -[TSWPSelection initWithRange:]([TSWPSelection alloc], "initWithRange:", 0, [objc_msgSend(v7 "storage")]), !objc_msgSend(v7, "pIsSelectionPlaceHolderTextWithSelection:", v8)) ? (v9 = 16640) : (v9 = 0x4000), -[TSDInteractiveCanvasController setSelection:onModel:withFlags:](self, "setSelection:onModel:withFlags:", v8, objc_msgSend(v7, "storage"), v9), v8, !v6))
  {
LABEL_12:
    v13.receiver = self;
    v13.super_class = TSWPInteractiveCanvasController;
    return [(TSDInteractiveCanvasController *)&v13 beginEditingRepForInfo:info];
  }

  return v6;
}

- (void)resumeEditing
{
  mTextInputResponder = self->super.mTextInputResponder;
  if (mTextInputResponder)
  {
    [(TSDTextInputResponder *)mTextInputResponder resumeEditing];
  }

  if (!-[TSWPInteractiveCanvasController isEditingText](self, "isEditingText") && ([-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self "layerHost")] & 1) == 0)
  {
    asiOSCVC = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] asiOSCVC];

    [asiOSCVC becomeFirstResponder];
  }
}

- (CGImage)textImageFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v23 = *MEMORY[0x277D85DE8];
  MidX = CGRectGetMidX(rect);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(TSDInteractiveCanvasController *)self hitRepsAtPoint:MidX withSlop:CGRectGetMidY(v24), *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        objc_opt_class();
        v14 = TSUDynamicCast();
        if (v14)
        {
          v16 = v14;
          [v14 convertNaturalRectFromUnscaledCanvas:{x, y, width, height}];
          return [objc_msgSend(v16 "textImageForRect:"CGImage"")];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17.receiver = self;
  v17.super_class = TSWPInteractiveCanvasController;
  return [(TSDInteractiveCanvasController *)&v17 textImageFromRect:x, y, width, height];
}

- (BOOL)isEditingText
{
  objc_opt_class();
  [[(TSDTextInputResponder *)self->super.mTextInputResponder editor] selection];
  v3 = TSUDynamicCast();
  isFirstResponder = [(TSDTextInputResponder *)self->super.mTextInputResponder isFirstResponder];
  if (isFirstResponder)
  {

    LOBYTE(isFirstResponder) = [v3 isValid];
  }

  return isFirstResponder;
}

- (BOOL)canHandleGesture:(id)gesture
{
  [gesture unscaledLocationForICC:self];
  v6 = v5;
  v8 = v7;
  v9 = [(TSDInteractiveCanvasController *)self hitRep:?];
  objc_opt_class();
  v10 = TSUDynamicCast();
  if (v10 && ((v11 = v10, objc_opt_class(), -[TSDEditorController textInputEditor](-[TSDInteractiveCanvasController editorController](self, "editorController"), "textInputEditor"), v12 = [TSUDynamicCast() storage], v12 != objc_msgSend(v11, "storage")) && (objc_msgSend(v11, "shouldBeginEditingWithGesture:", gesture) & 1) != 0 || objc_msgSend(gesture, "gestureKind") == @"TSWPTapAndTouch" && (objc_msgSend(v11, "convertNaturalPointFromUnscaledCanvas:", v6, v8), objc_msgSend(v11, "footnoteReferenceAttachmentAtPoint:"))))
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    if (![(TSWPInteractiveCanvasController *)self handleHyperlinksWithTextGRs]|| ![(TSWPInteractiveCanvasController *)self shouldRespondToTextHyperlinks])
    {
      goto LABEL_11;
    }

    v13 = TSUProtocolCast();
    v14 = v13;
    if (!v13)
    {
      goto LABEL_14;
    }

    [v13 convertNaturalPointFromUnscaledCanvas:{v6, v8}];
    v16 = v15;
    v18 = v17;
    objc_opt_class();
    [v14 smartFieldAtPoint:{v16, v18}];
    if (TSUDynamicCast() && ([(TSDInteractiveCanvasController *)self delegate], (objc_opt_respondsToSelector() & 1) != 0))
    {
      LOBYTE(v14) = [(TSDInteractiveCanvasControllerDelegate *)[(TSDInteractiveCanvasController *)self delegate] interactiveCanvasController:self allowsHyperlinkWithGesture:gesture forRep:v9];
    }

    else
    {
LABEL_11:
      LOBYTE(v14) = 0;
    }
  }

LABEL_14:
  objc_opt_class();
  [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] asiOSCVC];
  v19 = TSUDynamicCast();
  if (!v19)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPInteractiveCanvasController canHandleGesture:]"];
    [currentHandler handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPInteractiveCanvasController.mm"), 462, @"invalid nil value for '%s'", "cvc"}];
    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_18:
    LOBYTE(v22) = 1;
    return v22;
  }

  if (v14)
  {
    goto LABEL_18;
  }

LABEL_19:
  if ([objc_msgSend(v19 "hyperlinkGestureRecognizer")])
  {
LABEL_20:
    LOBYTE(v22) = 0;
    return v22;
  }

  LODWORD(v22) = [(TSWPInteractiveCanvasController *)self handleHyperlinksWithTextGRs];
  if (v22)
  {
    LODWORD(v22) = [(TSWPInteractiveCanvasController *)self shouldRespondToTextHyperlinks];
    if (v22)
    {
      v22 = TSUProtocolCast();
      if (v22)
      {
        v23 = v22;
        [v22 convertNaturalPointFromUnscaledCanvas:{v6, v8}];
        v25 = v24;
        v27 = v26;
        objc_opt_class();
        [v23 smartFieldAtPoint:{v25, v27}];
        v22 = TSUDynamicCast();
        if (v22)
        {
          if ([gesture gestureKind] != @"TSWPImmediateSingleTap")
          {
            if ([gesture gestureKind] != @"TSWPLongPress")
            {
              goto LABEL_20;
            }

            LODWORD(v22) = [(TSDInteractiveCanvasController *)self inReadMode];
            if (!v22)
            {
              return v22;
            }
          }

          goto LABEL_18;
        }
      }
    }
  }

  return v22;
}

- (BOOL)handleGesture:(id)gesture
{
  [gesture unscaledLocationForICC:self];
  v6 = v5;
  v8 = v7;
  v9 = [(TSDInteractiveCanvasController *)self hitRep:?];
  objc_opt_class();
  v10 = TSUDynamicCast();
  v32 = v10;
  objc_opt_class();
  [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] asiOSCVC];
  v11 = TSUDynamicCast();
  if (!v11)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPInteractiveCanvasController handleGesture:]"];
    [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPInteractiveCanvasController.mm"), 495, @"invalid nil value for '%s'", "cvc"}];
  }

  [v11 cancelDelayedTapAction];
  if (!-[TSWPInteractiveCanvasController handleHyperlinksWithTextGRs](self, "handleHyperlinksWithTextGRs") || (-[TSDInteractiveCanvasController delegate](self, "delegate"), (objc_opt_respondsToSelector() & 1) != 0) && !-[TSDInteractiveCanvasControllerDelegate interactiveCanvasController:allowsHyperlinkWithGesture:forRep:](-[TSDInteractiveCanvasController delegate](self, "delegate"), "interactiveCanvasController:allowsHyperlinkWithGesture:forRep:", self, gesture, v9) || (v14 = TSUProtocolCast()) == 0 || (v15 = v14, [v14 convertNaturalPointFromUnscaledCanvas:{v6, v8}], v17 = v16, v19 = v18, objc_opt_class(), objc_msgSend(v15, "smartFieldAtPoint:", v17, v19), (v20 = TSUDynamicCast()) == 0) || (v21 = v20, objc_msgSend(gesture, "gestureState") != 3) || (v22 = objc_msgSend(v11, "actionForHyperlink:inRep:gesture:", v21, v15, gesture)) == 0)
  {
    if (!v10)
    {
      goto LABEL_28;
    }

    objc_opt_class();
    [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] textInputEditor];
    v24 = TSUDynamicCast();
    if (!v24 || (v25 = [v24 storage], v25 == objc_msgSend(v10, "storage")))
    {
      [v10 convertNaturalPointFromUnscaledCanvas:{v6, v8}];
      v23 = [v10 footnoteReferenceAttachmentAtPoint:?];
      if (!v23)
      {
LABEL_18:
        if (v23)
        {
          return v23;
        }

        objc_opt_class();
        [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] textInputEditor];
        v28 = TSUDynamicCast();
        storage = [v28 storage];
        if (storage != [v10 storage] && objc_msgSend(v10, "shouldBeginEditingWithGesture:", gesture))
        {
          v30 = [objc_msgSend(v28 "selection")];
          v28 = [(TSWPInteractiveCanvasController *)self p_beginEditingPossibleContainedRep:&v32];
          if (![v32 canEditWithEditor:v28])
          {
            v28 = 0;
          }

          [gesture setTargetRep:v32];
          if (v30 && [gesture gestureKind] == @"TSWPImmediateSingleTap")
          {
            [v28 setIsBecomingActive:1];
          }
        }

        if (v28)
        {
          LOBYTE(v23) = [(TSDGestureDispatcher *)[(TSDInteractiveCanvasController *)self gestureDispatcher] handleGesture:gesture withTarget:v28];
          return v23;
        }

LABEL_28:
        LOBYTE(v23) = 0;
        return v23;
      }

      v26 = v23;
      delegate = [(TSDInteractiveCanvasController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        LOBYTE(v23) = [(TSDInteractiveCanvasControllerDelegate *)delegate interactiveCanvasController:self tappedOnFootnoteAttachment:v26];
        goto LABEL_18;
      }
    }

    LOBYTE(v23) = 0;
    goto LABEL_18;
  }

  [v11 startDelayedTapAction:v22];
  LOBYTE(v23) = 1;
  return v23;
}

- (void)gestureSequenceWillBegin
{
  objc_opt_class();
  [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] asiOSCVC];
  v3 = TSUDynamicCast();
  if (!v3)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPInteractiveCanvasController gestureSequenceWillBegin]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPInteractiveCanvasController.mm"), 627, @"invalid nil value for '%s'", "cvc"}];
  }

  [v3 gestureSequenceWillBegin];
}

- (void)gestureSequenceDidEnd
{
  objc_opt_class();
  [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] asiOSCVC];
  v3 = TSUDynamicCast();
  if (!v3)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPInteractiveCanvasController gestureSequenceDidEnd]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPInteractiveCanvasController.mm"), 635, @"invalid nil value for '%s'", "cvc"}];
  }

  [v3 gestureSequenceDidEnd];
}

- (void)didBeginEditingText
{
  objc_opt_class();
  [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] asiOSCVC];
  v3 = TSUDynamicCast();
  if ([v3 onlyAllowTextSwipesWhenEditing])
  {

    [v3 addSwipeGestureRecognizers];
  }
}

- (void)willEndEditingText
{
  objc_opt_class();
  [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self layerHost] asiOSCVC];
  v3 = TSUDynamicCast();
  if ([v3 onlyAllowTextSwipesWhenEditing])
  {

    [v3 removeSwipeGestureRecognizers];
  }
}

- (void)p_recursivelyAddRep:(id)rep forStorage:(id)storage toSet:(id)set
{
  v21 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v8 = TSUDynamicCast();
  if (v8 && (v9 = v8, [v8 storage] == storage))
  {

    [set addObject:v9];
  }

  else
  {
    v10 = TSUProtocolCast();
    if (v10)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      childReps = [v10 childReps];
      v12 = [childReps countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(childReps);
            }

            [(TSWPInteractiveCanvasController *)self p_recursivelyAddRep:*(*(&v16 + 1) + 8 * i) forStorage:storage toSet:set];
          }

          v13 = [childReps countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }
  }
}

- (id)_repsForStorage:(id)storage
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(TSWPInteractiveCanvasController *)self p_repsForStorage:storage];

  return [v3 setWithSet:v4];
}

- (id)p_repsForStorage:(id)storage
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB58] set];
  infosToDisplay = [(TSDInteractiveCanvasController *)self infosToDisplay];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(NSArray *)infosToDisplay countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(infosToDisplay);
        }

        [(TSWPInteractiveCanvasController *)self p_recursivelyAddRep:[(TSDInteractiveCanvasController *)self repForInfo:*(*(&v12 + 1) + 8 * v10++)] forStorage:storage toSet:v5];
      }

      while (v8 != v10);
      v8 = [(NSArray *)infosToDisplay countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)closestRepToPoint:(CGPoint)point forStorage:(id)storage
{
  y = point.y;
  x = point.x;
  v27 = *MEMORY[0x277D85DE8];
  v6 = [(TSWPInteractiveCanvasController *)self _repsForStorage:storage];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v23;
  v11 = INFINITY;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v22 + 1) + 8 * i);
      [v13 frameInUnscaledCanvas];
      v14 = v29.origin.x;
      v15 = v29.origin.y;
      width = v29.size.width;
      height = v29.size.height;
      v28.x = x;
      v28.y = y;
      if (CGRectContainsPoint(v29, v28))
      {
        return v13;
      }

      v30.origin.x = v14;
      v30.origin.y = v15;
      v30.size.width = width;
      v30.size.height = height;
      MidX = CGRectGetMidX(v30);
      v31.origin.x = v14;
      v31.origin.y = v15;
      v31.size.width = width;
      v31.size.height = height;
      MidY = CGRectGetMidY(v31);
      v20 = TSDDistance(x, y, MidX, MidY);
      if (v20 < v11)
      {
        v11 = v20;
        v9 = v13;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  return v9;
}

- (id)closestRepToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v27 = *MEMORY[0x277D85DE8];
  topLevelRepsForHitTesting = [(TSDInteractiveCanvasController *)self topLevelRepsForHitTesting];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [topLevelRepsForHitTesting countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v23;
  v10 = INFINITY;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(topLevelRepsForHitTesting);
      }

      objc_opt_class();
      v12 = TSUDynamicCast();
      if (v12)
      {
        v13 = v12;
        [v12 frameInUnscaledCanvas];
        v14 = v29.origin.x;
        v15 = v29.origin.y;
        width = v29.size.width;
        height = v29.size.height;
        v28.x = x;
        v28.y = y;
        if (CGRectContainsPoint(v29, v28))
        {
          return v13;
        }

        v30.origin.x = v14;
        v30.origin.y = v15;
        v30.size.width = width;
        v30.size.height = height;
        MidX = CGRectGetMidX(v30);
        v31.origin.x = v14;
        v31.origin.y = v15;
        v31.size.width = width;
        v31.size.height = height;
        MidY = CGRectGetMidY(v31);
        v20 = TSDDistance(x, y, MidX, MidY);
        if (v20 < v10)
        {
          v10 = v20;
          v8 = v13;
        }
      }
    }

    v7 = [topLevelRepsForHitTesting countByEnumeratingWithState:&v22 objects:v26 count:16];
    v13 = v8;
  }

  while (v7);
  return v13;
}

@end