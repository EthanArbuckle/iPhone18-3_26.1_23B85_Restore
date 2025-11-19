@interface SCROBrailleUIBrailleAreaView
- (SCROBrailleUIBrailleAreaView)initWithIdentifier:(id)a3 initialContent:(id)a4 initialCursor:(int64_t)a5;
- (_NSRange)focus;
- (_NSRange)focusCache;
- (_NSRange)selection;
- (_NSRange)selectionCache;
- (id)_backButtonHandleEvent:(id)a3;
- (id)_contentHandleEvent:(id)a3;
- (id)handleEvent:(id)a3;
- (id)value;
- (id)visualRepresentation;
- (void)_copySelectedBrailleAndErase:(BOOL)a3;
- (void)display;
- (void)handleFindForSearchBraille:(id)a3;
- (void)handlePreviousFindForSearchBraille:(id)a3;
- (void)loadContent:(id)a3 cursor:(int64_t)a4;
- (void)moveFocusTo:(int64_t)a3;
- (void)setShowingBackButton:(BOOL)a3;
@end

@implementation SCROBrailleUIBrailleAreaView

- (SCROBrailleUIBrailleAreaView)initWithIdentifier:(id)a3 initialContent:(id)a4 initialCursor:(int64_t)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = SCROBrailleUIBrailleAreaView;
  v10 = [(SCROBrailleUIView *)&v14 initWithIdentifier:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_initialContent, a4);
    v11->_initialCursor = a5;
    v11->_initialSelectionLength = 0;
    v11->_selectionCache = xmmword_26498C6C0;
    v11->_focusCache = xmmword_26498C6C0;
    v12 = +[SCROBrailleUISettingsManager sharedInstance];
    v11->_showsBackButton = [v12 showsBackButton];
  }

  return v11;
}

- (void)loadContent:(id)a3 cursor:(int64_t)a4
{
  objc_storeStrong(&self->_initialContent, a3);
  self->_initialCursor = a4;
  self->_initialSelectionLength = 0;
}

- (id)value
{
  if ([(SCROBrailleUIBrailleAreaView *)self showsBackButton]&& [(SCROBrailleUIBrailleAreaView *)self showingBackButton])
  {
    v3 = [(SCROBrailleUIBrailleAreaView *)self valueCache];
  }

  else
  {
    v4 = +[SCROBrailleUIDisplayManager sharedManager];
    v5 = [v4 lineForView:self];
    v6 = [v5 braille];
    v7 = v6;
    v8 = &stru_28763D5C8;
    if (v6)
    {
      v8 = v6;
    }

    v3 = v8;
  }

  return v3;
}

- (_NSRange)selection
{
  if ([(SCROBrailleUIBrailleAreaView *)self showsBackButton]&& [(SCROBrailleUIBrailleAreaView *)self showingBackButton])
  {

    v3 = [(SCROBrailleUIBrailleAreaView *)self selectionCache];
  }

  else
  {
    v5 = +[SCROBrailleUIDisplayManager sharedManager];
    v6 = [v5 lineForView:self];
    v7 = [v6 selection];
    v9 = v8;

    v3 = v7;
    v4 = v9;
  }

  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)focus
{
  if ([(SCROBrailleUIBrailleAreaView *)self showsBackButton]&& [(SCROBrailleUIBrailleAreaView *)self showingBackButton])
  {

    v3 = [(SCROBrailleUIBrailleAreaView *)self focusCache];
  }

  else
  {
    v5 = +[SCROBrailleUIDisplayManager sharedManager];
    v6 = [v5 lineForView:self];
    v7 = [v6 focus];
    v9 = v8;

    v3 = v7;
    v4 = v9;
  }

  result.length = v4;
  result.location = v3;
  return result;
}

- (void)moveFocusTo:(int64_t)a3
{
  if (![(SCROBrailleUIBrailleAreaView *)self showsBackButton]|| ![(SCROBrailleUIBrailleAreaView *)self showingBackButton])
  {
    v5 = [MEMORY[0x277CF3318] sharedModel];
    [v5 uiMoveFocusTo:a3];
  }
}

- (void)display
{
  if ([(SCROBrailleUIBrailleAreaView *)self showsBackButton]&& [(SCROBrailleUIBrailleAreaView *)self showingBackButton])
  {
    v3 = +[SCROBrailleUIUtilities brailleForBackButton];
    v4 = [SCROBrailleUIBraille lineWithBraille:v3];
  }

  else
  {
    v5 = [(SCROBrailleUIBrailleAreaView *)self isReadOnly];
    v3 = [(SCROBrailleUIBrailleAreaView *)self initialContent];
    v6 = [(SCROBrailleUIBrailleAreaView *)self initialCursor];
    v7 = [(SCROBrailleUIBrailleAreaView *)self initialSelectionLength];
    if (v5)
    {
      [SCROBrailleUIBraille multiLineBraille:v3 focus:v6, v7];
    }

    else
    {
      [SCROBrailleUIBraille multiLineEditableBraille:v3 selection:v6, v7];
    }
    v4 = ;
  }

  v9 = v4;

  v8 = +[SCROBrailleUIDisplayManager sharedManager];
  [v8 display:v9 forView:self clearAtNextDotPress:0];
}

- (id)handleEvent:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUIBrailleAreaView *)self showsBackButton]&& [(SCROBrailleUIBrailleAreaView *)self showingBackButton])
  {
    v5 = [(SCROBrailleUIBrailleAreaView *)self _backButtonHandleEvent:v4];
  }

  else
  {
    v5 = [(SCROBrailleUIBrailleAreaView *)self _contentHandleEvent:v4];
  }

  v6 = v5;

  return v6;
}

- (id)_backButtonHandleEvent:(id)a3
{
  v4 = a3;
  if (![(SCROBrailleUIBrailleAreaView *)self showsBackButton])
  {
    goto LABEL_13;
  }

  v5 = [v4 type];
  if (v5 <= 0x1A)
  {
    if (((1 << v5) & 0x40002A0) != 0)
    {
      v6 = [SCROBrailleUIAction alloc];
      v7 = 2;
LABEL_5:
      v8 = [(SCROBrailleUIAction *)v6 initWithType:v7 originator:self];
      goto LABEL_14;
    }

    if (((1 << v5) & 0xC) != 0)
    {
      [(SCROBrailleUIBrailleAreaView *)self setShowingBackButton:0];
      v9 = +[SCROBrailleUIDisplayManager sharedManager];
      [v9 showFirstLineForView:self];
LABEL_12:

      goto LABEL_13;
    }

    if (v5 == 8)
    {
      v6 = [SCROBrailleUIAction alloc];
      v7 = 3;
      goto LABEL_5;
    }
  }

  if (v5 == 1)
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

- (id)_contentHandleEvent:(id)a3
{
  v4 = [a3 type];
  v5 = 0;
  switch(v4)
  {
    case 1:
      v6 = [MEMORY[0x277CF3318] sharedModel];
      v7 = [v6 uiDisplayRange];

      if (v7)
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
      v14 = [MEMORY[0x277CF3318] sharedModel];
      v15 = [v14 uiDisplayRange];
      v17 = v15 + v16;
      v18 = [MEMORY[0x277CF3318] sharedModel];
      v19 = [v18 uiBraille];
      v20 = [v19 length];

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
      v25 = [MEMORY[0x277CF3318] sharedModel];
      v9 = v25;
      v26 = 0;
      goto LABEL_28;
    case 14:
      v25 = [MEMORY[0x277CF3318] sharedModel];
      v9 = v25;
      v26 = 1;
LABEL_28:
      [v25 uiSelectCharacter:v26];
      goto LABEL_31;
    case 15:
      v12 = [MEMORY[0x277CF3318] sharedModel];
      v9 = v12;
      v13 = 0;
      goto LABEL_18;
    case 16:
      v12 = [MEMORY[0x277CF3318] sharedModel];
      v9 = v12;
      v13 = 1;
LABEL_18:
      [v12 uiSelectWord:v13];
      goto LABEL_31;
    case 17:
      v10 = [MEMORY[0x277CF3318] sharedModel];
      v9 = v10;
      v11 = 0;
      goto LABEL_12;
    case 18:
      v10 = [MEMORY[0x277CF3318] sharedModel];
      v9 = v10;
      v11 = 1;
LABEL_12:
      [v10 uiSelectLine:v11];
      goto LABEL_31;
    case 19:
      v9 = [MEMORY[0x277CF3318] sharedModel];
      [v9 uiSelectAll];
      goto LABEL_31;
    case 20:
      v23 = self;
      v24 = 1;
      goto LABEL_34;
    case 21:
      v23 = self;
      v24 = 0;
LABEL_34:
      [(SCROBrailleUIBrailleAreaView *)v23 _copySelectedBrailleAndErase:v24];
      goto LABEL_32;
    case 22:
      v27 = +[SCROBrailleUIPasteBoard sharedBoard];
      v9 = [v27 braille];

      if ([v9 length])
      {
        v28 = [MEMORY[0x277CF3318] sharedModel];
        [v28 uiInsertBraille:v9];
      }

      goto LABEL_31;
    case 23:
      v9 = [MEMORY[0x277CF3318] sharedModel];
      [v9 uiUndo];
      goto LABEL_31;
    case 24:
      v9 = [MEMORY[0x277CF3318] sharedModel];
      [v9 uiRedo];
      goto LABEL_31;
    case 25:
      v21 = [SCROBrailleUIAction alloc];
      v22 = 5;
LABEL_36:
      v5 = [(SCROBrailleUIAction *)v21 initWithType:v22 originator:self];
      goto LABEL_37;
    case 26:
      v9 = [MEMORY[0x277CF3318] sharedModel];
      [v9 uiSelectBoundary];
      goto LABEL_31;
    case 27:
      v9 = [MEMORY[0x277CF3318] sharedModel];
      [v9 uiMoveToPreviousCharacter];
      goto LABEL_31;
    case 28:
      v9 = [MEMORY[0x277CF3318] sharedModel];
      [v9 uiMoveToNextCharacter];
LABEL_31:

      goto LABEL_32;
    default:
      goto LABEL_37;
  }
}

- (void)_copySelectedBrailleAndErase:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CF3318] sharedModel];
  v5 = [v4 uiBraille];
  v6 = [MEMORY[0x277CF3318] sharedModel];
  v7 = [v6 uiSelection];
  v11 = [v5 substringWithRange:{v7, v8}];

  if ([v11 length])
  {
    v9 = +[SCROBrailleUIPasteBoard sharedBoard];
    [v9 writeBraille:v11];

    if (v3)
    {
      v10 = [MEMORY[0x277CF3318] sharedModel];
      [v10 uiInsertBraille:&stru_28763D5C8];
    }
  }
}

- (void)handleFindForSearchBraille:(id)a3
{
  v3 = MEMORY[0x277CF3318];
  v4 = a3;
  v5 = [v3 sharedModel];
  [v5 uiFind:v4];
}

- (void)handlePreviousFindForSearchBraille:(id)a3
{
  v3 = MEMORY[0x277CF3318];
  v4 = a3;
  v5 = [v3 sharedModel];
  [v5 uiPreviousFind:v4];
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
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    v8 = v6;
    v9 = v7;
    v10 = 0;
  }

  else
  {
    v11 = +[SCROBrailleUIDisplayManager sharedManager];
    v3 = [v11 lineForView:self];

    v12 = [v3 braille];
    v13 = [v12 componentsSeparatedByString:@"\n"];

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
            v28 = [v3 selection];
            v29 = v28 - v16;
            if (v28 >= v16)
            {
              length = 0;
              if (v28 <= [v19 length] + v16)
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
    v7 = [MEMORY[0x277CF3318] sharedModel];
    v10 = [(SCROBrailleUICaptionableBrailleLine *)v7 uiFocusedLineIndex];
    v8 = v31;
    v9 = v5;
  }

  v32 = [(SCROBrailleUIVisualRepresentation *)v8 initWithLines:v9 focusedIndex:v10 isList:0];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)setShowingBackButton:(BOOL)a3
{
  if (self->_showingBackButton != a3)
  {
    if (a3)
    {
      v5 = [(SCROBrailleUIBrailleAreaView *)self value];
      [(SCROBrailleUIBrailleAreaView *)self setValueCache:v5];

      v6 = [(SCROBrailleUIBrailleAreaView *)self selection];
      [(SCROBrailleUIBrailleAreaView *)self setSelectionCache:v6, v7];
      v8 = [(SCROBrailleUIBrailleAreaView *)self focus];
      v10 = v9;
    }

    else
    {
      v11 = [(SCROBrailleUIBrailleAreaView *)self valueCache];
      [(SCROBrailleUIBrailleAreaView *)self setInitialContent:v11];

      [(SCROBrailleUIBrailleAreaView *)self setInitialCursor:[(SCROBrailleUIBrailleAreaView *)self selectionCache]];
      [(SCROBrailleUIBrailleAreaView *)self selectionCache];
      [(SCROBrailleUIBrailleAreaView *)self setInitialSelectionLength:v12];
      [(SCROBrailleUIBrailleAreaView *)self setValueCache:0];
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      [(SCROBrailleUIBrailleAreaView *)self setSelectionCache:0x7FFFFFFFFFFFFFFFLL, 0];
      v10 = 0;
    }

    [(SCROBrailleUIBrailleAreaView *)self setFocusCache:v8, v10];
    self->_showingBackButton = a3;

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