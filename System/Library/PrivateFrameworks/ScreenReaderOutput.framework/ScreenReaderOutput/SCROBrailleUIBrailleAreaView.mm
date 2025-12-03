@interface SCROBrailleUIBrailleAreaView
- (SCROBrailleUIBrailleAreaView)initWithIdentifier:(id)identifier initialContent:(id)content initialCursor:(int64_t)cursor;
- (_NSRange)focus;
- (_NSRange)focusCache;
- (_NSRange)selection;
- (_NSRange)selectionCache;
- (id)_backButtonHandleEvent:(id)event;
- (id)_contentHandleEvent:(id)event;
- (id)handleEvent:(id)event;
- (id)value;
- (id)visualRepresentation;
- (void)_copySelectedBrailleAndErase:(BOOL)erase;
- (void)display;
- (void)handleFindForSearchBraille:(id)braille;
- (void)handlePreviousFindForSearchBraille:(id)braille;
- (void)loadContent:(id)content cursor:(int64_t)cursor;
- (void)moveFocusTo:(int64_t)to;
- (void)setShowingBackButton:(BOOL)button;
@end

@implementation SCROBrailleUIBrailleAreaView

- (SCROBrailleUIBrailleAreaView)initWithIdentifier:(id)identifier initialContent:(id)content initialCursor:(int64_t)cursor
{
  contentCopy = content;
  v14.receiver = self;
  v14.super_class = SCROBrailleUIBrailleAreaView;
  v10 = [(SCROBrailleUIView *)&v14 initWithIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_initialContent, content);
    v11->_initialCursor = cursor;
    v11->_initialSelectionLength = 0;
    v11->_selectionCache = xmmword_26498C6C0;
    v11->_focusCache = xmmword_26498C6C0;
    v12 = +[SCROBrailleUISettingsManager sharedInstance];
    v11->_showsBackButton = [v12 showsBackButton];
  }

  return v11;
}

- (void)loadContent:(id)content cursor:(int64_t)cursor
{
  objc_storeStrong(&self->_initialContent, content);
  self->_initialCursor = cursor;
  self->_initialSelectionLength = 0;
}

- (id)value
{
  if ([(SCROBrailleUIBrailleAreaView *)self showsBackButton]&& [(SCROBrailleUIBrailleAreaView *)self showingBackButton])
  {
    valueCache = [(SCROBrailleUIBrailleAreaView *)self valueCache];
  }

  else
  {
    v4 = +[SCROBrailleUIDisplayManager sharedManager];
    v5 = [v4 lineForView:self];
    braille = [v5 braille];
    v7 = braille;
    v8 = &stru_28763D5C8;
    if (braille)
    {
      v8 = braille;
    }

    valueCache = v8;
  }

  return valueCache;
}

- (_NSRange)selection
{
  if ([(SCROBrailleUIBrailleAreaView *)self showsBackButton]&& [(SCROBrailleUIBrailleAreaView *)self showingBackButton])
  {

    selectionCache = [(SCROBrailleUIBrailleAreaView *)self selectionCache];
  }

  else
  {
    v5 = +[SCROBrailleUIDisplayManager sharedManager];
    v6 = [v5 lineForView:self];
    selection = [v6 selection];
    v9 = v8;

    selectionCache = selection;
    v4 = v9;
  }

  result.length = v4;
  result.location = selectionCache;
  return result;
}

- (_NSRange)focus
{
  if ([(SCROBrailleUIBrailleAreaView *)self showsBackButton]&& [(SCROBrailleUIBrailleAreaView *)self showingBackButton])
  {

    focusCache = [(SCROBrailleUIBrailleAreaView *)self focusCache];
  }

  else
  {
    v5 = +[SCROBrailleUIDisplayManager sharedManager];
    v6 = [v5 lineForView:self];
    focus = [v6 focus];
    v9 = v8;

    focusCache = focus;
    v4 = v9;
  }

  result.length = v4;
  result.location = focusCache;
  return result;
}

- (void)moveFocusTo:(int64_t)to
{
  if (![(SCROBrailleUIBrailleAreaView *)self showsBackButton]|| ![(SCROBrailleUIBrailleAreaView *)self showingBackButton])
  {
    mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
    [mEMORY[0x277CF3318] uiMoveFocusTo:to];
  }
}

- (void)display
{
  if ([(SCROBrailleUIBrailleAreaView *)self showsBackButton]&& [(SCROBrailleUIBrailleAreaView *)self showingBackButton])
  {
    initialContent = +[SCROBrailleUIUtilities brailleForBackButton];
    v4 = [SCROBrailleUIBraille lineWithBraille:initialContent];
  }

  else
  {
    isReadOnly = [(SCROBrailleUIBrailleAreaView *)self isReadOnly];
    initialContent = [(SCROBrailleUIBrailleAreaView *)self initialContent];
    initialCursor = [(SCROBrailleUIBrailleAreaView *)self initialCursor];
    initialSelectionLength = [(SCROBrailleUIBrailleAreaView *)self initialSelectionLength];
    if (isReadOnly)
    {
      [SCROBrailleUIBraille multiLineBraille:initialContent focus:initialCursor, initialSelectionLength];
    }

    else
    {
      [SCROBrailleUIBraille multiLineEditableBraille:initialContent selection:initialCursor, initialSelectionLength];
    }
    v4 = ;
  }

  v9 = v4;

  v8 = +[SCROBrailleUIDisplayManager sharedManager];
  [v8 display:v9 forView:self clearAtNextDotPress:0];
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  if ([(SCROBrailleUIBrailleAreaView *)self showsBackButton]&& [(SCROBrailleUIBrailleAreaView *)self showingBackButton])
  {
    v5 = [(SCROBrailleUIBrailleAreaView *)self _backButtonHandleEvent:eventCopy];
  }

  else
  {
    v5 = [(SCROBrailleUIBrailleAreaView *)self _contentHandleEvent:eventCopy];
  }

  v6 = v5;

  return v6;
}

- (id)_backButtonHandleEvent:(id)event
{
  eventCopy = event;
  if (![(SCROBrailleUIBrailleAreaView *)self showsBackButton])
  {
    goto LABEL_13;
  }

  type = [eventCopy type];
  if (type <= 0x1A)
  {
    if (((1 << type) & 0x40002A0) != 0)
    {
      v6 = [SCROBrailleUIAction alloc];
      v7 = 2;
LABEL_5:
      v8 = [(SCROBrailleUIAction *)v6 initWithType:v7 originator:self];
      goto LABEL_14;
    }

    if (((1 << type) & 0xC) != 0)
    {
      [(SCROBrailleUIBrailleAreaView *)self setShowingBackButton:0];
      v9 = +[SCROBrailleUIDisplayManager sharedManager];
      [v9 showFirstLineForView:self];
LABEL_12:

      goto LABEL_13;
    }

    if (type == 8)
    {
      v6 = [SCROBrailleUIAction alloc];
      v7 = 3;
      goto LABEL_5;
    }
  }

  if (type == 1)
  {
    [(SCROBrailleUIBrailleAreaView *)self setShowingBackButton:0];
    v9 = +[SCROBrailleUIDisplayManager sharedManager];
    [v9 showLastLineForView:self];
    goto LABEL_12;
  }

LABEL_13:
  v8 = 0;
LABEL_14:

  return v8;
}

- (id)_contentHandleEvent:(id)event
{
  type = [event type];
  v5 = 0;
  switch(type)
  {
    case 1:
      mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
      uiDisplayRange = [mEMORY[0x277CF3318] uiDisplayRange];

      if (uiDisplayRange)
      {
        goto LABEL_24;
      }

      if ([(SCROBrailleUIBrailleAreaView *)self showsBackButton])
      {
        goto LABEL_41;
      }

      v8 = +[SCROBrailleUIDisplayManager sharedManager];
      [v8 showLastLineForView:self];
      goto LABEL_43;
    case 2:
      mEMORY[0x277CF3318]2 = [MEMORY[0x277CF3318] sharedModel];
      uiDisplayRange2 = [mEMORY[0x277CF3318]2 uiDisplayRange];
      v17 = uiDisplayRange2 + v16;
      mEMORY[0x277CF3318]3 = [MEMORY[0x277CF3318] sharedModel];
      uiBraille = [mEMORY[0x277CF3318]3 uiBraille];
      v20 = [uiBraille length];

      if (v17 >= v20)
      {
        if ([(SCROBrailleUIBrailleAreaView *)self showsBackButton])
        {
LABEL_41:
          [(SCROBrailleUIBrailleAreaView *)self setShowingBackButton:1];
          goto LABEL_32;
        }

LABEL_42:
        v8 = +[SCROBrailleUIDisplayManager sharedManager];
        [v8 showFirstLineForView:self];
      }

      else
      {
        v8 = +[SCROBrailleUIDisplayManager sharedManager];
        [v8 showNextLineForView:self];
      }

LABEL_43:

LABEL_32:
      v5 = 0;
LABEL_37:

      return v5;
    case 3:
      goto LABEL_42;
    case 4:
      if ([(SCROBrailleUIBrailleAreaView *)self showsBackButton])
      {
        goto LABEL_41;
      }

LABEL_24:
      v8 = +[SCROBrailleUIDisplayManager sharedManager];
      [v8 showPreviousLineForView:self];
      goto LABEL_43;
    case 5:
      v21 = [SCROBrailleUIAction alloc];
      v22 = 1;
      goto LABEL_36;
    case 6:
      v21 = [SCROBrailleUIAction alloc];
      v22 = 4;
      goto LABEL_36;
    case 7:
      v21 = [SCROBrailleUIAction alloc];
      v22 = 2;
      goto LABEL_36;
    case 8:
      v21 = [SCROBrailleUIAction alloc];
      v22 = 3;
      goto LABEL_36;
    case 13:
      mEMORY[0x277CF3318]4 = [MEMORY[0x277CF3318] sharedModel];
      mEMORY[0x277CF3318]7 = mEMORY[0x277CF3318]4;
      v26 = 0;
      goto LABEL_28;
    case 14:
      mEMORY[0x277CF3318]4 = [MEMORY[0x277CF3318] sharedModel];
      mEMORY[0x277CF3318]7 = mEMORY[0x277CF3318]4;
      v26 = 1;
LABEL_28:
      [mEMORY[0x277CF3318]4 uiSelectCharacter:v26];
      goto LABEL_31;
    case 15:
      mEMORY[0x277CF3318]5 = [MEMORY[0x277CF3318] sharedModel];
      mEMORY[0x277CF3318]7 = mEMORY[0x277CF3318]5;
      v13 = 0;
      goto LABEL_18;
    case 16:
      mEMORY[0x277CF3318]5 = [MEMORY[0x277CF3318] sharedModel];
      mEMORY[0x277CF3318]7 = mEMORY[0x277CF3318]5;
      v13 = 1;
LABEL_18:
      [mEMORY[0x277CF3318]5 uiSelectWord:v13];
      goto LABEL_31;
    case 17:
      mEMORY[0x277CF3318]6 = [MEMORY[0x277CF3318] sharedModel];
      mEMORY[0x277CF3318]7 = mEMORY[0x277CF3318]6;
      v11 = 0;
      goto LABEL_12;
    case 18:
      mEMORY[0x277CF3318]6 = [MEMORY[0x277CF3318] sharedModel];
      mEMORY[0x277CF3318]7 = mEMORY[0x277CF3318]6;
      v11 = 1;
LABEL_12:
      [mEMORY[0x277CF3318]6 uiSelectLine:v11];
      goto LABEL_31;
    case 19:
      mEMORY[0x277CF3318]7 = [MEMORY[0x277CF3318] sharedModel];
      [mEMORY[0x277CF3318]7 uiSelectAll];
      goto LABEL_31;
    case 20:
      selfCopy2 = self;
      v24 = 1;
      goto LABEL_34;
    case 21:
      selfCopy2 = self;
      v24 = 0;
LABEL_34:
      [(SCROBrailleUIBrailleAreaView *)selfCopy2 _copySelectedBrailleAndErase:v24];
      goto LABEL_32;
    case 22:
      v27 = +[SCROBrailleUIPasteBoard sharedBoard];
      mEMORY[0x277CF3318]7 = [v27 braille];

      if ([mEMORY[0x277CF3318]7 length])
      {
        mEMORY[0x277CF3318]8 = [MEMORY[0x277CF3318] sharedModel];
        [mEMORY[0x277CF3318]8 uiInsertBraille:mEMORY[0x277CF3318]7];
      }

      goto LABEL_31;
    case 23:
      mEMORY[0x277CF3318]7 = [MEMORY[0x277CF3318] sharedModel];
      [mEMORY[0x277CF3318]7 uiUndo];
      goto LABEL_31;
    case 24:
      mEMORY[0x277CF3318]7 = [MEMORY[0x277CF3318] sharedModel];
      [mEMORY[0x277CF3318]7 uiRedo];
      goto LABEL_31;
    case 25:
      v21 = [SCROBrailleUIAction alloc];
      v22 = 5;
LABEL_36:
      v5 = [(SCROBrailleUIAction *)v21 initWithType:v22 originator:self];
      goto LABEL_37;
    case 26:
      mEMORY[0x277CF3318]7 = [MEMORY[0x277CF3318] sharedModel];
      [mEMORY[0x277CF3318]7 uiSelectBoundary];
      goto LABEL_31;
    case 27:
      mEMORY[0x277CF3318]7 = [MEMORY[0x277CF3318] sharedModel];
      [mEMORY[0x277CF3318]7 uiMoveToPreviousCharacter];
      goto LABEL_31;
    case 28:
      mEMORY[0x277CF3318]7 = [MEMORY[0x277CF3318] sharedModel];
      [mEMORY[0x277CF3318]7 uiMoveToNextCharacter];
LABEL_31:

      goto LABEL_32;
    default:
      goto LABEL_37;
  }
}

- (void)_copySelectedBrailleAndErase:(BOOL)erase
{
  eraseCopy = erase;
  mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
  uiBraille = [mEMORY[0x277CF3318] uiBraille];
  mEMORY[0x277CF3318]2 = [MEMORY[0x277CF3318] sharedModel];
  uiSelection = [mEMORY[0x277CF3318]2 uiSelection];
  v11 = [uiBraille substringWithRange:{uiSelection, v8}];

  if ([v11 length])
  {
    v9 = +[SCROBrailleUIPasteBoard sharedBoard];
    [v9 writeBraille:v11];

    if (eraseCopy)
    {
      mEMORY[0x277CF3318]3 = [MEMORY[0x277CF3318] sharedModel];
      [mEMORY[0x277CF3318]3 uiInsertBraille:&stru_28763D5C8];
    }
  }
}

- (void)handleFindForSearchBraille:(id)braille
{
  v3 = MEMORY[0x277CF3318];
  brailleCopy = braille;
  sharedModel = [v3 sharedModel];
  [sharedModel uiFind:brailleCopy];
}

- (void)handlePreviousFindForSearchBraille:(id)braille
{
  v3 = MEMORY[0x277CF3318];
  brailleCopy = braille;
  sharedModel = [v3 sharedModel];
  [sharedModel uiPreviousFind:brailleCopy];
}

- (id)visualRepresentation
{
  v41[1] = *MEMORY[0x277D85DE8];
  if ([(SCROBrailleUIBrailleAreaView *)self showingBackButton])
  {
    v3 = SCROBrailleUILocString(@"back.btn.label");
    v4 = +[SCROBrailleUIUtilities brailleForBackButton];
    v5 = [[SCROBrailleUICaptionableBrailleLine alloc] initWithBraille:v4 selection:0x7FFFFFFFFFFFFFFFLL, 0];
    [(SCROBrailleUICaptionableBrailleLine *)v5 setManualCaption:v3];
    v6 = [SCROBrailleUIVisualRepresentation alloc];
    v41[0] = v5;
    mEMORY[0x277CF3318] = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    v8 = v6;
    v9 = mEMORY[0x277CF3318];
    uiFocusedLineIndex = 0;
  }

  else
  {
    v11 = +[SCROBrailleUIDisplayManager sharedManager];
    v3 = [v11 lineForView:self];

    braille = [v3 braille];
    v13 = [braille componentsSeparatedByString:@"\n"];

    v5 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v4 = v13;
    v14 = [v4 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v37;
      v35 = *v37;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(v4);
          }

          v19 = *(*(&v36 + 1) + 8 * i);
          [v3 selection];
          if (v20)
          {
            v21 = [v19 length];
            v44.location = [v3 selection];
            v44.length = v22;
            v43.location = v16;
            v43.length = v21;
            v23 = NSIntersectionRange(v43, v44);
            if (v23.length)
            {
              length = v23.length;
            }

            else
            {
              length = 0;
            }

            if (v23.length)
            {
              v25 = v23.location - v16;
            }

            else
            {
              v25 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v26 = v5;
            v27 = v4;
            selection = [v3 selection];
            v29 = selection - v16;
            if (selection >= v16)
            {
              length = 0;
              if (selection <= [v19 length] + v16)
              {
                v25 = v29;
              }

              else
              {
                v25 = 0x7FFFFFFFFFFFFFFFLL;
              }
            }

            else
            {
              length = 0;
              v25 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v4 = v27;
            v5 = v26;
            v17 = v35;
          }

          v30 = [[SCROBrailleUICaptionableBrailleLine alloc] initWithBraille:v19 selection:v25, length];
          [(SCROBrailleUICaptionableBrailleLine *)v5 addObject:v30];
          v16 += [v19 length] + 1;
        }

        v15 = [v4 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v15);
    }

    v31 = [SCROBrailleUIVisualRepresentation alloc];
    mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
    uiFocusedLineIndex = [(SCROBrailleUICaptionableBrailleLine *)mEMORY[0x277CF3318] uiFocusedLineIndex];
    v8 = v31;
    v9 = v5;
  }

  v32 = [(SCROBrailleUIVisualRepresentation *)v8 initWithLines:v9 focusedIndex:uiFocusedLineIndex isList:0];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)setShowingBackButton:(BOOL)button
{
  if (self->_showingBackButton != button)
  {
    if (button)
    {
      value = [(SCROBrailleUIBrailleAreaView *)self value];
      [(SCROBrailleUIBrailleAreaView *)self setValueCache:value];

      selection = [(SCROBrailleUIBrailleAreaView *)self selection];
      [(SCROBrailleUIBrailleAreaView *)self setSelectionCache:selection, v7];
      focus = [(SCROBrailleUIBrailleAreaView *)self focus];
      v10 = v9;
    }

    else
    {
      valueCache = [(SCROBrailleUIBrailleAreaView *)self valueCache];
      [(SCROBrailleUIBrailleAreaView *)self setInitialContent:valueCache];

      [(SCROBrailleUIBrailleAreaView *)self setInitialCursor:[(SCROBrailleUIBrailleAreaView *)self selectionCache]];
      [(SCROBrailleUIBrailleAreaView *)self selectionCache];
      [(SCROBrailleUIBrailleAreaView *)self setInitialSelectionLength:v12];
      [(SCROBrailleUIBrailleAreaView *)self setValueCache:0];
      focus = 0x7FFFFFFFFFFFFFFFLL;
      [(SCROBrailleUIBrailleAreaView *)self setSelectionCache:0x7FFFFFFFFFFFFFFFLL, 0];
      v10 = 0;
    }

    [(SCROBrailleUIBrailleAreaView *)self setFocusCache:focus, v10];
    self->_showingBackButton = button;

    [(SCROBrailleUIBrailleAreaView *)self display];
  }
}

- (_NSRange)selectionCache
{
  p_selectionCache = &self->_selectionCache;
  location = self->_selectionCache.location;
  length = p_selectionCache->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)focusCache
{
  p_focusCache = &self->_focusCache;
  location = self->_focusCache.location;
  length = p_focusCache->length;
  result.length = length;
  result.location = location;
  return result;
}

@end