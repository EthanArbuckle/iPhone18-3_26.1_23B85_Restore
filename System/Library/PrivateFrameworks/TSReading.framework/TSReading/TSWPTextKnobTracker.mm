@interface TSWPTextKnobTracker
+ (const)p_lineFragmentForCharIndex:(unint64_t)index knobTag:(unint64_t)tag selectionType:(int)type rep:(id)rep;
- (BOOL)p_isMagnifyingVerticalText;
- (BOOL)p_newHeadCharIndex:(unint64_t)index isPastTailCharIndex:(unint64_t)charIndex rep:(id)rep;
- (BOOL)p_newTailCharIndex:(unint64_t)index isPastHeadCharIndex:(unint64_t)charIndex rep:(id)rep;
- (TSWPTextKnobTracker)initWithRep:(id)rep knob:(id)knob;
- (_NSRange)adjustSelectionRange:(_NSRange)range forStorage:(id)storage;
- (double)unscaledStartAutoscrollThreshold;
- (id)icc;
- (id)p_rangedMagnifier;
- (unint64_t)p_charIndexForKnob:(unint64_t)knob selection:(id)selection;
- (void)dealloc;
- (void)endMovingKnob;
- (void)moveKnobToCanvasPosition:(CGPoint)position;
- (void)p_cleanupWhenDone;
- (void)p_fixUpWordSelection;
- (void)p_magnifyWithTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated delayed:(BOOL)delayed;
- (void)p_setSelectionFromPoint:(CGPoint)point;
- (void)p_startMagnifying;
- (void)p_stopMagnifyingWithAnimation:(BOOL)animation;
- (void)updateAfterAutoscroll:(id)autoscroll;
- (void)updateAfterAutoscroll:(id)autoscroll atPoint:(CGPoint)point;
@end

@implementation TSWPTextKnobTracker

- (TSWPTextKnobTracker)initWithRep:(id)rep knob:(id)knob
{
  v31.receiver = self;
  v31.super_class = TSWPTextKnobTracker;
  v5 = [(TSDKnobTracker *)&v31 initWithRep:rep knob:?];
  if (v5)
  {
    objc_opt_class();
    [(TSDEditorController *)[(TSDInteractiveCanvasController *)[(TSDRep *)[(TSDKnobTracker *)v5 rep] interactiveCanvasController] editorController] textInputEditor];
    [(TSWPTextKnobTracker *)v5 setEditingController:TSUDynamicCast()];
    [(TSWPEditingController *)[(TSWPTextKnobTracker *)v5 editingController] setKnobTracking:1];
    [(TSWPEditingController *)[(TSWPTextKnobTracker *)v5 editingController] setKnobTag:[[(TSDKnobTracker *)v5 knob] tag]];
    v6 = [(TSDKnobTracker *)v5 rep];
    [knob position];
    [(TSDRep *)v6 convertNaturalPointToUnscaledCanvas:?];
    [(TSWPEditingController *)[(TSWPTextKnobTracker *)v5 editingController] setKnobTrackingDragPoint:v7, v8];
    v5->_multiTap = [(TSWPEditingController *)[(TSWPTextKnobTracker *)v5 editingController] knobTrackingTapCount]> 1;
    selection = [(TSWPEditingController *)[(TSWPTextKnobTracker *)v5 editingController] selection];
    v5->_rangeAtStart.location = [(TSWPSelection *)selection range];
    v5->_rangeAtStart.length = v10;
    if ([(TSWPSelection *)selection type]!= 7)
    {
      selection = [(TSWPEditingController *)[(TSWPTextKnobTracker *)v5 editingController] logicalToVisualSelection:selection];
      [(TSWPEditingController *)[(TSWPTextKnobTracker *)v5 editingController] setSelection:selection];
    }

    v5->_selectionType = [(TSWPSelection *)selection type];
    v11 = [(TSWPEditingController *)[(TSWPTextKnobTracker *)v5 editingController] calculateVisualRunsFromSelection:selection updateControllerSelection:1];
    headChar = [v11 headChar];
    tailChar = [v11 tailChar];
    if (tailChar >= headChar)
    {
      v14 = headChar;
    }

    else
    {
      v14 = tailChar;
    }

    headChar2 = [v11 headChar];
    tailChar2 = [v11 tailChar];
    if (headChar2 <= tailChar2)
    {
      v17 = tailChar2;
    }

    else
    {
      v17 = headChar2;
    }

    if (v14 <= v17 + 1)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = v14;
    }

    if (v14 >= v17 + 1)
    {
      v19 = v17 + 1;
    }

    else
    {
      v19 = v14;
    }

    v5->_rangeAtStart.location = v19;
    v5->_rangeAtStart.length = v18 - v19;
    v5->_headCharAtStart = [v11 headChar];
    v5->_tailCharAtStart = [v11 tailChar];
    [(TSDRep *)[(TSDKnobTracker *)v5 rep] invalidateHUDState];
    v20 = [(TSWPEditingController *)[(TSWPTextKnobTracker *)v5 editingController] isParagraphModeWithSelection:v11 onStorage:[(TSWPEditingController *)[(TSWPTextKnobTracker *)v5 editingController] storage]];
    if (v20)
    {
      v21 = [(TSDKnobTracker *)v5 rep];
      if ([[(TSDKnobTracker *)v5 knob] tag]== 10)
      {
        start = [v11 start];
      }

      else
      {
        start = [v11 end];
      }

      v23 = [(TSDRep *)v21 repForCharIndex:start isStart:[[(TSDKnobTracker *)v5 knob] tag]== 11];
      if ([(TSDKnobTracker *)v5 rep]!= v23)
      {
        [v23 invalidateKnobs];
      }

      [(TSDRep *)[(TSDKnobTracker *)v5 rep] invalidateKnobs];
      [(TSDKnobTracker *)v5 setKnob:[(TSDRep *)[(TSDKnobTracker *)v5 rep] knobForTag:[[(TSDKnobTracker *)v5 knob] tag]]];
    }

    if ([(TSWPEditingController *)[(TSWPTextKnobTracker *)v5 editingController] interactiveCanvasController])
    {
      v24 = [(TSDKnobTracker *)v5 rep];
      if (knob)
      {
        v25 = v24 == 0;
      }

      else
      {
        v25 = 1;
      }

      v26 = v25 || v20;
      if ((v26 & 1) == 0)
      {
        v27 = [(TSDKnobTracker *)v5 rep];
        interactiveCanvasController = [(TSWPEditingController *)[(TSWPTextKnobTracker *)v5 editingController] interactiveCanvasController];
        v29 = [(TSDKnobTracker *)v5 rep];
        [knob position];
        [(TSDRep *)v29 convertNaturalPointToUnscaledCanvas:?];
        [(TSDInteractiveCanvasController *)interactiveCanvasController convertUnscaledToBoundsPoint:?];
        [TSWPTextKnobTracker p_magnifyWithTarget:v5 magnificationPoint:"p_magnifyWithTarget:magnificationPoint:offset:animated:delayed:" offset:v27 animated:1 delayed:1];
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  if (self->_textMagnifierTimer)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTextKnobTracker dealloc]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTextKnobTracker.mm"), 126, @"_textMagnifierTimer retains us, so it should be gone by our -dealloc"}];
  }

  [(TSWPTextKnobTracker *)self p_cleanupWhenDone];
  [(TSWPTextKnobTracker *)self p_stopMagnifyingWithAnimation:0];

  self->_editingController = 0;
  v5.receiver = self;
  v5.super_class = TSWPTextKnobTracker;
  [(TSDKnobTracker *)&v5 dealloc];
}

- (void)moveKnobToCanvasPosition:(CGPoint)position
{
  if (self->_ignoreNextCall)
  {
    self->_ignoreNextCall = 0;
  }

  else
  {
    y = position.y;
    x = position.x;
    self->_knobMoved = 1;
    [(TSWPTextKnobTracker *)self p_setSelectionFromPoint:?];
    [(TSWPEditingController *)[(TSWPTextKnobTracker *)self editingController] setKnobTrackingDragPoint:x, y];
    v6 = [(TSDKnobTracker *)self rep];

    [(TSDRep *)v6 invalidateKnobPositions];
  }
}

- (void)endMovingKnob
{
  if (self->_knobMoved)
  {
    [(TSWPTextKnobTracker *)self p_fixUpWordSelection];
    [(TSWPTextKnobTracker *)self p_stopMagnifyingWithAnimation:0];
  }

  [(TSWPTextKnobTracker *)self p_cleanupWhenDone];
  v3.receiver = self;
  v3.super_class = TSWPTextKnobTracker;
  [(TSDKnobTracker *)&v3 endMovingKnob];
}

- (void)p_cleanupWhenDone
{
  if (!self->_doneTracking)
  {
    self->_doneTracking = 1;
    [(TSWPEditingController *)[(TSWPTextKnobTracker *)self editingController] setKnobTracking:0];
    v4 = [(TSDKnobTracker *)self rep];
    [(TSDRep *)v4 invalidateKnobs];
    [(TSDRep *)v4 invalidateKnobPositions];

    [(TSDRep *)v4 invalidateHUDState];
  }
}

- (BOOL)p_isMagnifyingVerticalText
{
  selection = [(TSWPEditingController *)[(TSWPTextKnobTracker *)self editingController] selection];
  v4 = [[(TSDKnobTracker *)self knob] tag];
  v5 = [TSWPTextKnobTracker p_lineFragmentForCharIndex:[(TSWPTextKnobTracker *)self p_charIndexForKnob:v4 selection:selection] knobTag:v4 selectionType:self->_selectionType rep:[(TSDKnobTracker *)self rep]];
  if (v5)
  {
    LODWORD(v5) = (v5[25] >> 5) & 1;
  }

  return v5;
}

+ (const)p_lineFragmentForCharIndex:(unint64_t)index knobTag:(unint64_t)tag selectionType:(int)type rep:(id)rep
{
  v6 = *&type;
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  columns = [rep columns];
  result = [columns countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v11 = result;
    v12 = *v15;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v15 != v12)
      {
        objc_enumerationMutation(columns);
      }

      result = [*(*(&v14 + 1) + 8 * v13) lineFragmentForCharIndex:index knobTag:tag selectionType:v6];
      if (result)
      {
        break;
      }

      if (v11 == ++v13)
      {
        result = [columns countByEnumeratingWithState:&v14 objects:v18 count:16];
        v11 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (id)p_rangedMagnifier
{
  p_isMagnifyingVerticalText = [(TSWPTextKnobTracker *)self p_isMagnifyingVerticalText];
  v3 = off_279D45790;
  if (!p_isMagnifyingVerticalText)
  {
    v3 = off_279D45778;
  }

  v4 = *v3;

  return [(__objc2_class *)v4 sharedRangedMagnifier];
}

- (void)p_startMagnifying
{
  textMagnifierTimer = self->_textMagnifierTimer;
  if (!textMagnifierTimer)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTextKnobTracker p_startMagnifying]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTextKnobTracker.mm"), 261, @"invalid nil value for '%s'", "_textMagnifierTimer"}];
    textMagnifierTimer = self->_textMagnifierTimer;
  }

  userInfo = [(NSTimer *)textMagnifierTimer userInfo];
  p_rangedMagnifier = [(TSWPTextKnobTracker *)self p_rangedMagnifier];
  self->_magnifier = p_rangedMagnifier;
  target = [userInfo target];
  [userInfo magnificationPoint];
  v10 = v9;
  v12 = v11;
  [userInfo offset];
  -[TSWPTextMagnifierRanged beginMagnifyingTarget:magnificationPoint:offset:animated:](p_rangedMagnifier, "beginMagnifyingTarget:magnificationPoint:offset:animated:", target, [userInfo animated], v10, v12, v13, v14);
  self->_didShowMagnifier = 1;

  self->_textMagnifierTimer = 0;
}

- (void)p_magnifyWithTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated delayed:(BOOL)delayed
{
  delayedCopy = delayed;
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  v11 = point.y;
  v12 = point.x;
  textMagnifierTimer = self->_textMagnifierTimer;
  if (textMagnifierTimer)
  {
    [(NSTimer *)textMagnifierTimer invalidate];

    self->_textMagnifierTimer = 0;
  }

  if (delayedCopy)
  {
    v20 = objc_alloc_init(TSWPBeginMagnificationUserInfo);
    [(TSWPBeginMagnificationUserInfo *)v20 setTarget:target];
    [(TSWPBeginMagnificationUserInfo *)v20 setMagnificationPoint:v12, v11];
    [(TSWPBeginMagnificationUserInfo *)v20 setOffset:x, y];
    [(TSWPBeginMagnificationUserInfo *)v20 setAnimated:animatedCopy];
    self->_textMagnifierTimer = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel_p_startMagnifying selector:v20 userInfo:0 repeats:0.25];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:self->_textMagnifierTimer forMode:*MEMORY[0x277CBE640]];
  }

  else
  {
    magnifier = self->_magnifier;
    if (magnifier)
    {
      [(TSWPTextMagnifierRanged *)magnifier setTarget:target];
      [(TSWPTextMagnifierRanged *)self->_magnifier setMagnificationPoint:v12, v11];
      v18 = self->_magnifier;

      [(TSWPTextMagnifierRanged *)v18 setOffset:x, y];
    }

    else
    {
      p_rangedMagnifier = [(TSWPTextKnobTracker *)self p_rangedMagnifier];
      self->_magnifier = p_rangedMagnifier;
      [(TSWPTextMagnifierRanged *)p_rangedMagnifier beginMagnifyingTarget:target magnificationPoint:animatedCopy offset:v12 animated:v11, x, y];
      self->_didShowMagnifier = 1;
    }
  }
}

- (void)p_stopMagnifyingWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  textMagnifierTimer = self->_textMagnifierTimer;
  if (textMagnifierTimer)
  {
    [(NSTimer *)textMagnifierTimer invalidate];

    self->_textMagnifierTimer = 0;
  }

  magnifier = self->_magnifier;
  if (magnifier)
  {
    [(TSWPTextMagnifierRanged *)magnifier stopMagnifying:animationCopy];
    self->_magnifier = 0;
  }
}

- (void)p_setSelectionFromPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  editingController = [(TSWPTextKnobTracker *)self editingController];
  storage = [(TSWPEditingController *)editingController storage];
  v8 = [(TSWPInteractiveCanvasController *)[(TSWPEditingController *)editingController interactiveCanvasController] closestRepToPoint:storage forStorage:x, y];
  if (v8)
  {
    v9 = v8;
    [v8 convertNaturalPointFromUnscaledCanvas:{x, y}];
    v11 = v10;
    v13 = v12;
    v14 = [objc_msgSend(objc_msgSend(v9 "columns")];
    isInParagraphMode = [(TSWPEditingController *)self->_editingController isInParagraphMode];
    v16 = isInParagraphMode;
    if (!self->_multiTap && !isInParagraphMode)
    {
      [v9 knobOffsetForKnob:-[TSDKnobTracker knob](self paragraphMode:{"knob"), 0}];
      v18 = v17;
      v19 = [[(TSDKnobTracker *)self knob] tag];
      v20 = -1.0;
      if (v19 == 11)
      {
        v21 = 1.0;
      }

      else
      {
        v21 = -1.0;
      }

      if (v19 != 11)
      {
        v20 = 1.0;
      }

      v22 = v11 + v18 + v20;
      if (v14)
      {
        v11 = v22;
      }

      else
      {
        v13 = v13 - v18 + v21;
      }
    }

    v101 = v14;
    selection = [(TSWPEditingController *)editingController selection];
    [(TSWPSelection *)selection range];
    v24 = [[(TSDKnobTracker *)self knob] tag];
    v25 = [v9 charIndexForPointWithPinning:v24 == 10 isTail:-[TSWPSelection type](selection selectionType:{"type"), v11, v13}];
    if (v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      tailCharAtStart = v25;
      if (self->_multiTap)
      {
        if (v24 == 11)
        {
          if ([(TSWPTextKnobTracker *)self p_newHeadCharIndex:v25 isPastTailCharIndex:self->_tailCharAtStart rep:v9])
          {
            v27 = 10;
          }

          else
          {
            v27 = 11;
          }

          goto LABEL_26;
        }

        if (v24 == 10)
        {
          if ([(TSWPTextKnobTracker *)self p_newTailCharIndex:v25 isPastHeadCharIndex:self->_headCharAtStart rep:v9])
          {
            v27 = 11;
          }

          else
          {
            v27 = 10;
          }

LABEL_26:
          if (v24 == v27)
          {
            v102 = v24;
          }

          else
          {
            [(TSWPEditingController *)editingController setKnobTag:v27];
            [(TSDRep *)[(TSDKnobTracker *)self rep] invalidateKnobs];
            [v9 invalidateKnobs];
            v31 = [v9 knobForTag:v27];
            if (v31)
            {
              [(TSDKnobTracker *)self setKnob:v31];
            }

            v102 = v27;
          }

          goto LABEL_31;
        }

        v102 = v24;
        p_rangeAtStart = &self->_rangeAtStart;
        location = self->_rangeAtStart.location;
LABEL_36:
        v100 = p_rangeAtStart;
        p_length = &p_rangeAtStart->length;
        v30 = p_rangeAtStart->length + location;
        goto LABEL_37;
      }

      v102 = v24;
      if (self->_selectionType)
      {
        goto LABEL_31;
      }

      p_rangeAtStart = &self->_rangeAtStart;
      location = self->_rangeAtStart.location;
      if (v24 == 11)
      {
        p_length = &self->_rangeAtStart.length;
        v30 = self->_rangeAtStart.length + location;
        if (v25 < v30)
        {
          v100 = &self->_rangeAtStart;
LABEL_32:
          p_length = [(TSWPTextKnobTracker *)self p_newHeadCharIndex:tailCharAtStart isPastTailCharIndex:self->_tailCharAtStart rep:v9, p_length];
          v33 = p_length;
          if (p_length)
          {
            if (self->_selectionType == 7)
            {
              tailCharAtStart = self->_tailCharAtStart;
            }

            else
            {
              tailCharAtStart = [(TSWPStorage *)storage previousCharacterIndex:v30];
            }
          }

          if (self->_selectionType == 7)
          {
            v43 = self->_tailCharAtStart;
            if (tailCharAtStart >= v43)
            {
              v44 = self->_tailCharAtStart;
            }

            else
            {
              v44 = tailCharAtStart;
            }

            if (tailCharAtStart <= v43)
            {
              v45 = self->_tailCharAtStart;
            }

            else
            {
              v45 = tailCharAtStart;
            }

            v46 = [(TSWPStorage *)storage nextCharacterIndex:v45];
            if (v44 <= v46)
            {
              v47 = v46;
            }

            else
            {
              v47 = v44;
            }

            if (v44 >= v46)
            {
              tailCharAtStart = v46;
            }

            else
            {
              tailCharAtStart = v44;
            }

            length = v47 - tailCharAtStart;
          }

          else
          {
            length = v30 - tailCharAtStart;
          }

          v39 = 1;
          v102 = 11;
          goto LABEL_73;
        }

        v54 = [(TSWPStorage *)[(TSWPEditingController *)editingController storage] previousCharacterIndex:self->_rangeAtStart.length + p_rangeAtStart->location];
      }

      else
      {
        if (v24 != 10 || v25 > location)
        {
          goto LABEL_36;
        }

        v54 = [(TSWPStorage *)[(TSWPEditingController *)editingController storage] nextCharacterIndex:p_rangeAtStart->location];
      }

      if (v54 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v55 = [[TSWPSelection alloc] initWithRange:v54, 0];
        [(TSDRep *)[(TSDKnobTracker *)self rep] knobCenterForSelection:v55 knob:[(TSDKnobTracker *)self knob]];
        v57 = v56;
        v59 = v58;

        if (v57 != *MEMORY[0x277CBF398] || v59 != *(MEMORY[0x277CBF398] + 8))
        {
          [v9 knobOffsetForKnob:-[TSDKnobTracker knob](self paragraphMode:{"knob", p_length), v16}];
          v61 = v60;
          v62 = [[(TSDKnobTracker *)self knob] tag];
          v63 = -1.0;
          if (v62 == 11)
          {
            v64 = 1.0;
          }

          else
          {
            v64 = -1.0;
          }

          if (v62 != 11)
          {
            v63 = 1.0;
          }

          v65 = v57 + v61 + v63;
          if (v101)
          {
            v11 = v65;
          }

          else
          {
            v13 = v59 - v61 + v64;
          }

          v66 = [v9 charIndexForPointWithPinning:{v11, v13}];
          if (v66 != 0x7FFFFFFFFFFFFFFFLL)
          {
            tailCharAtStart = v66;
          }
        }
      }

LABEL_31:
      v100 = &self->_rangeAtStart;
      p_length = &self->_rangeAtStart.length;
      v30 = self->_rangeAtStart.length + self->_rangeAtStart.location;
      if (v102 == 11)
      {
        goto LABEL_32;
      }

LABEL_37:
      p_length2 = [(TSWPTextKnobTracker *)self p_newTailCharIndex:tailCharAtStart isPastHeadCharIndex:self->_headCharAtStart rep:v9, p_length];
      v33 = p_length2;
      if (p_length2)
      {
        if (self->_selectionType == 7)
        {
          tailCharAtStart = self->_headCharAtStart;
        }

        else
        {
          tailCharAtStart = [(TSWPStorage *)storage nextCharacterIndex:v100->location];
        }
      }

      if (self->_selectionType == 7)
      {
        headCharAtStart = self->_headCharAtStart;
        if (headCharAtStart >= tailCharAtStart)
        {
          v36 = tailCharAtStart;
        }

        else
        {
          v36 = self->_headCharAtStart;
        }

        if (headCharAtStart <= tailCharAtStart)
        {
          v37 = tailCharAtStart;
        }

        else
        {
          v37 = self->_headCharAtStart;
        }

        v38 = [(TSWPStorage *)storage nextCharacterIndex:v37];
        v39 = 0;
        if (v36 <= v38)
        {
          v40 = v38;
        }

        else
        {
          v40 = v36;
        }

        if (v36 >= v38)
        {
          tailCharAtStart = v38;
        }

        else
        {
          tailCharAtStart = v36;
        }

        length = v40 - tailCharAtStart;
      }

      else
      {
        v39 = 0;
        v42 = tailCharAtStart - v30;
        tailCharAtStart = v100->location;
        length = v42 + *v99;
      }

LABEL_73:
      if (![(TSWPEditingController *)editingController isParagraphModeWithSelection:[TSWPSelection onStorage:"selectionWithRange:" selectionWithRange:length], storage])
      {
LABEL_120:
        if (self->_multiTap)
        {
          v105.location = v100->location;
          v105.length = *v99;
          v104.location = tailCharAtStart;
          v104.length = length;
          v72 = NSUnionRange(v104, v105);
          tailCharAtStart = v72.location;
          length = v72.length;
        }

        [(TSWPTextKnobTracker *)self adjustSelectionRange:tailCharAtStart forStorage:length, storage];
        [(TSWPStorage *)storage selectionRangeForCharIndex:[(TSWPSelection *)selection range]];
        v73 = NSIntersectionRangeInclusive();
        v75 = v74;
        if ([(TSWPSelection *)selection range]!= v73 || v76 != v75)
        {
          v77 = [[TSWPSelection alloc] initWithType:7 range:v73 styleInsertionBehavior:v75 caretAffinity:0, 0];
          if (v102 == 10)
          {
            v78 = 33616;
          }

          else
          {
            v78 = 848;
          }

          [(TSWPEditingController *)editingController setSelection:v77 withFlags:v78];
          [(TSWPEditingController *)editingController calculateVisualRunsFromSelection:[(TSWPEditingController *)editingController selection] updateControllerSelection:1];
          selection2 = [(TSWPEditingController *)editingController selection];

          if (v39)
          {
            start = [(TSWPSelection *)selection2 start];
          }

          else
          {
            start = [(TSWPSelection *)selection2 end];
          }

          v81 = [v9 repForCharIndex:start isStart:v39];
          if (v81)
          {
            v82 = v81;
            if ([(TSDKnobTracker *)self rep]!= v81)
            {
              [(TSWPEditingController *)editingController setKnobTag:v102];
              [(TSDRep *)[(TSDKnobTracker *)self rep] invalidateKnobs];
              [(TSDRep *)v82 invalidateKnobs];
              [(TSDKnobTracker *)self setRep:v82];
              [(TSDKnobTracker *)self setKnob:[(TSDRep *)[(TSDKnobTracker *)self rep] knobForTag:v102]];
            }
          }

          [(TSDRep *)[(TSDKnobTracker *)self rep] knobCenterForSelection:selection2 knob:[(TSDKnobTracker *)self knob]];
          [[(TSDKnobTracker *)self knob] setPosition:v83, v84];
          [[(TSDKnobTracker *)self knob] position];
          v87 = v86 == *(MEMORY[0x277CBF398] + 8) && v85 == *MEMORY[0x277CBF398];
          if ([(TSWPEditingController *)self->_editingController isInParagraphMode]|| v87)
          {

            [(TSWPTextKnobTracker *)self p_stopMagnifyingWithAnimation:1];
          }

          else if ([(TSWPEditingController *)editingController interactiveCanvasController]&& [(TSDKnobTracker *)self rep]&& [(TSDKnobTracker *)self knob])
          {
            interactiveCanvasController = [(TSWPEditingController *)editingController interactiveCanvasController];
            v89 = [(TSDKnobTracker *)self rep];
            [[(TSDKnobTracker *)self knob] position];
            [(TSDRep *)v89 convertNaturalPointToUnscaledCanvas:?];
            [(TSDInteractiveCanvasController *)interactiveCanvasController convertUnscaledToBoundsPoint:?];
            v91 = v90;
            v93 = v92;
            v94 = [(TSDKnobTracker *)self rep];
            v95 = *MEMORY[0x277CBF348];
            v96 = *(MEMORY[0x277CBF348] + 8);
            v97 = self->_textMagnifierTimer == 0;

            [(TSWPTextKnobTracker *)self p_magnifyWithTarget:v94 magnificationPoint:v97 offset:0 animated:v91 delayed:v93, v95, v96];
          }
        }

        return;
      }

      if (v33)
      {
        goto LABEL_119;
      }

      v48 = [+[TSWPColumn closestColumnInColumnsArray:forPoint:ignoreEmptyColumns:ignoreDrawableOnlyColumns:](TSWPColumn closestColumnInColumnsArray:objc_msgSend(v9 forPoint:"columns") ignoreEmptyColumns:0 ignoreDrawableOnlyColumns:{1, v11, v13), "lineFragmentClosestToPoint:knobTag:", 5, v11, v13}];
      if (!v48)
      {
        goto LABEL_119;
      }

      v49 = v48;
      v51 = *(v48 + 48);
      v50 = *(v48 + 56);
      v53 = *(v48 + 64);
      v52 = *(v48 + 72);
      if (v39)
      {
        if (v101)
        {
          if (v11 <= CGRectGetMinX(*(v48 + 48)))
          {
            if (v102 != 10)
            {
              goto LABEL_119;
            }

            goto LABEL_86;
          }

LABEL_104:
          if (*v49 <= length + tailCharAtStart)
          {
            v67 = length + tailCharAtStart;
          }

          else
          {
            v67 = *v49;
          }

          if (*v49 >= length + tailCharAtStart)
          {
            tailCharAtStart += length;
          }

          else
          {
            tailCharAtStart = *v49;
          }

          length = v67 - tailCharAtStart;
          goto LABEL_119;
        }

        if (v13 < CGRectGetMaxY(*(v48 + 48)))
        {
          goto LABEL_104;
        }

        if (v102 != 10)
        {
LABEL_119:
          tailCharAtStart = [(TSWPStorage *)storage textRangeForParagraphsInCharRange:tailCharAtStart, length];
          length = v71;
          goto LABEL_120;
        }
      }

      else
      {
        if (v102 != 10)
        {
          goto LABEL_119;
        }

        if (v101)
        {
LABEL_86:
          v106.origin.x = v51;
          v106.origin.y = v50;
          v106.size.width = v53;
          v106.size.height = v52;
          if (v11 >= CGRectGetMaxX(v106))
          {
            goto LABEL_119;
          }

LABEL_113:
          v68 = v49[1];
          v69 = v68 + *v49;
          if (tailCharAtStart <= v69)
          {
            v70 = v68 + *v49;
          }

          else
          {
            v70 = tailCharAtStart;
          }

          if (tailCharAtStart >= v69)
          {
            tailCharAtStart = v69;
          }

          length = v70 - tailCharAtStart;
          goto LABEL_119;
        }
      }

      v107.origin.x = v51;
      v107.origin.y = v50;
      v107.size.width = v53;
      v107.size.height = v52;
      if (v13 > CGRectGetMinY(v107))
      {
        goto LABEL_113;
      }

      goto LABEL_119;
    }
  }
}

- (BOOL)p_newHeadCharIndex:(unint64_t)index isPastTailCharIndex:(unint64_t)charIndex rep:(id)rep
{
  isInParagraphMode = [(TSWPEditingController *)self->_editingController isInParagraphMode];
  v10 = index >= charIndex;
  if (self->_selectionType == 7 && !isInParagraphMode)
  {
    v11 = [TSWPTextKnobTracker p_lineFragmentForCharIndex:index knobTag:11 selectionType:7 rep:rep];
    range = [rep range];
    v14 = 0;
    v15 = charIndex >= range;
    v16 = charIndex - range;
    if (v15 && v16 < v12)
    {
      v14 = [TSWPTextKnobTracker p_lineFragmentForCharIndex:charIndex knobTag:11 selectionType:self->_selectionType rep:rep];
    }

    if (v11 && v11 == v14)
    {
      v17 = [(TSWPStorage *)[(TSWPEditingController *)[(TSWPTextKnobTracker *)self editingController] storage] isWritingDirectionRightToLeftForParagraphAtCharIndex:index];
      v18 = TSWPLineFragment::visualIndexForCharIndex(v11, index);
      v19 = TSWPLineFragment::visualIndexForCharIndex(v11, charIndex);
      if (v17)
      {
        return v18 < v19;
      }

      else
      {
        return v18 > v19;
      }
    }
  }

  return v10;
}

- (BOOL)p_newTailCharIndex:(unint64_t)index isPastHeadCharIndex:(unint64_t)charIndex rep:(id)rep
{
  isInParagraphMode = [(TSWPEditingController *)self->_editingController isInParagraphMode];
  v10 = index <= charIndex;
  if (self->_selectionType == 7 && !isInParagraphMode)
  {
    v11 = [TSWPTextKnobTracker p_lineFragmentForCharIndex:index knobTag:11 selectionType:7 rep:rep];
    range = [rep range];
    v14 = 0;
    v15 = charIndex >= range;
    v16 = charIndex - range;
    if (v15 && v16 < v12)
    {
      v14 = [TSWPTextKnobTracker p_lineFragmentForCharIndex:charIndex knobTag:11 selectionType:self->_selectionType rep:rep];
    }

    if (v11 && v11 == v14)
    {
      v17 = [(TSWPStorage *)[(TSWPEditingController *)[(TSWPTextKnobTracker *)self editingController] storage] isWritingDirectionRightToLeftForParagraphAtCharIndex:index];
      v18 = TSWPLineFragment::visualIndexForCharIndex(v11, index);
      v19 = TSWPLineFragment::visualIndexForCharIndex(v11, charIndex);
      if (v17)
      {
        return v18 > v19;
      }

      else
      {
        return v18 < v19;
      }
    }
  }

  return v10;
}

- (void)p_fixUpWordSelection
{
  if (![(TSWPTextKnobTracker *)self fixupWordSelection]|| [(TSWPTextMagnifierRanged *)self->_magnifier terminalPointPlacedCarefully])
  {
    editingController = [(TSWPTextKnobTracker *)self editingController];

    [(TSWPEditingController *)editingController revertLastSelectionChangeIfElapsedTimeIsUnderPinFidgetThreshold];
    return;
  }

  [(TSWPTextMagnifierRanged *)self->_magnifier horizontalMovement];
  v5 = v4;
  v6 = [[(TSDKnobTracker *)self knob] tag];
  selection = [(TSWPEditingController *)[(TSWPTextKnobTracker *)self editingController] selection];
  v8 = selection;
  if (v5 < 0.0)
  {
    if (v6 == 11)
    {
      start = [(TSWPSelection *)selection start];
      if (start == 0x7FFFFFFFFFFFFFFFLL)
      {
        return;
      }

      v10 = start;
      location = [(TSWPSelection *)v8 range];
      length = v12;
      goto LABEL_26;
    }

    start2 = [(TSWPSelection *)selection end];
    goto LABEL_14;
  }

  if (v5 <= 0.0)
  {
    return;
  }

  if (v6 == 11)
  {
    start2 = [(TSWPSelection *)selection start];
LABEL_14:
    v10 = start2;
    v15 = 0;
    goto LABEL_23;
  }

  v10 = [(TSWPSelection *)selection end];
  v16 = [(TSDKnobTracker *)self rep];
  if (v16 && (v17 = -[TSDRep columnForCharIndex:](v16, "columnForCharIndex:", v10)) != 0 && (v18 = [v17 lineFragmentForCharIndex:v10 knobTag:10 selectionType:{-[TSWPSelection type](v8, "type")}]) != 0)
  {
    v15 = 1;
    if (*v18 < v10 && v10 == v18[1] + *v18 && (IsWhitespaceCharacter([(TSWPStorage *)[(TSWPEditingController *)[(TSWPTextKnobTracker *)self editingController] storage] characterAtIndex:v10 - 1]) & 1) != 0)
    {
      return;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_23:
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  location = [(TSWPSelection *)v8 range];
  length = v19;
  if (!v15)
  {
    storage = [(TSWPEditingController *)[(TSWPTextKnobTracker *)self editingController] storage];
    if (v6 != 11)
    {
      v25 = [(TSWPStorage *)storage nextWordFromIndex:v10 forward:0];
      if (v25 != 0x7FFFFFFFFFFFFFFFLL && v25 + v26 > location)
      {
        length = length - v10 + v25 + v26;
        goto LABEL_28;
      }

      v20 = [(TSWPStorage *)[(TSWPEditingController *)[(TSWPTextKnobTracker *)self editingController] storage] wordAtCharIndex:v10 includePreviousWord:1];
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v24 = [(TSWPStorage *)storage nextWordFromIndex:v10 forward:1];
    if (v24 < location + length)
    {
      location += v24 - v10;
      length -= v24 - v10;
      goto LABEL_28;
    }
  }

LABEL_26:
  v20 = [(TSWPStorage *)[(TSWPEditingController *)[(TSWPTextKnobTracker *)self editingController] storage] wordAtCharIndex:v10 includePreviousWord:1];
  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_27:
    v30.location = v20;
    v30.length = v21;
    v29.location = location;
    v29.length = length;
    v22 = NSUnionRange(v29, v30);
    location = v22.location;
    length = v22.length;
  }

LABEL_28:
  v27 = [[TSWPSelection alloc] initWithType:[(TSWPSelection *)v8 type] range:location styleInsertionBehavior:length caretAffinity:[(TSWPSelection *)v8 styleInsertionBehavior], [(TSWPSelection *)v8 caretAffinity]];
  [(TSWPEditingController *)[(TSWPTextKnobTracker *)self editingController] setSelection:v27 withFlags:772];
}

- (unint64_t)p_charIndexForKnob:(unint64_t)knob selection:(id)selection
{
  if ([selection type] == 7)
  {
    if (knob == 11)
    {

      return [selection headChar];
    }

    else
    {

      return [selection tailChar];
    }
  }

  else if (knob == 11)
  {

    return [selection start];
  }

  else
  {

    return [selection end];
  }
}

- (_NSRange)adjustSelectionRange:(_NSRange)range forStorage:(id)storage
{
  length = range.length;
  location = range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)updateAfterAutoscroll:(id)autoscroll atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  -[TSWPTextMagnifierRanged setAutoscrollDirections:](self->_magnifier, "setAutoscrollDirections:", [autoscroll directions]);
  v7 = [(TSWPTextKnobTracker *)self icc];
  [objc_msgSend(objc_msgSend(-[TSWPTextKnobTracker icc](self "icc")];
  [v7 convertBoundsToUnscaledPoint:?];
  v9 = v8;
  v11 = v10;
  [(TSWPTextKnobTracker *)self p_setSelectionFromPoint:?];
  magnifier = self->_magnifier;

  [(TSWPTextMagnifierRanged *)magnifier postAutoscrollPoint:v9, v11];
}

- (id)icc
{
  editingController = [(TSWPTextKnobTracker *)self editingController];

  return [(TSWPEditingController *)editingController interactiveCanvasController];
}

- (void)updateAfterAutoscroll:(id)autoscroll
{
  magnifier = self->_magnifier;
  directions = [autoscroll directions];

  [(TSWPTextMagnifierRanged *)magnifier setAutoscrollDirections:directions];
}

- (double)unscaledStartAutoscrollThreshold
{
  isInParagraphMode = [(TSWPEditingController *)self->_editingController isInParagraphMode];
  result = 40.0;
  if (!isInParagraphMode)
  {
    return 25.0;
  }

  return result;
}

@end