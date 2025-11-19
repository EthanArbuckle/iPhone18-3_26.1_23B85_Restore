@interface SCROBrailleUIListView
- (BOOL)isEdited;
- (SCROBrailleUIListView)initWithIdentifier:(id)a3 items:(id)a4 initialFocus:(id)a5;
- (SCROBrailleUIListView)initWithIdentifier:(id)a3 items:(id)a4 initialFocusedIndex:(unint64_t)a5;
- (id)focusedItem;
- (id)handleEvent:(id)a3;
- (id)value;
- (id)visualRepresentation;
- (void)_copySelectedBrailleAndErase:(BOOL)a3;
- (void)_resetInLineItem;
- (void)displaySilently:(BOOL)a3;
- (void)replaceItemAtIndex:(int64_t)a3 with:(id)a4;
- (void)setFocusedIndex:(int64_t)a3;
@end

@implementation SCROBrailleUIListView

- (SCROBrailleUIListView)initWithIdentifier:(id)a3 items:(id)a4 initialFocusedIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v21.receiver = self;
  v21.super_class = SCROBrailleUIListView;
  v10 = [(SCROBrailleUIView *)&v21 initWithIdentifier:v8];
  if (v10)
  {
    v11 = [v8 isEqualToString:@"com.apple.scrod.braille.ui.main.menu"];
    v12 = @"back.btn.label";
    if (v11)
    {
      v12 = @"close.btn.label";
    }

    v13 = v12;
    v14 = [SCROBrailleUIListItem alloc];
    v15 = SCROBrailleUILocString(v13);

    v16 = [(SCROBrailleUIListItem *)v14 initWithIdentifier:@"7f25f9b1-8c0e-47e6-b637-c324f369aeb1" label:v15 isInline:0];
    v17 = +[SCROBrailleUISettingsManager sharedInstance];
    LODWORD(v15) = [v17 showsBackButton];

    if (v15)
    {
      v18 = [v9 arrayByAddingObject:v16];
    }

    else
    {
      v18 = v9;
    }

    items = v10->_items;
    v10->_items = v18;

    if ([v9 count] < a5)
    {
      a5 = [v9 count];
    }

    v10->_focusedIndex = a5;
  }

  return v10;
}

- (SCROBrailleUIListView)initWithIdentifier:(id)a3 items:(id)a4 initialFocus:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [v9 objectAtIndex:v11];
      v13 = [v12 identifier];
      v14 = [v10 isEqualToString:v13];

      if (v14)
      {
        break;
      }

      if (++v11 >= [v9 count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

  v15 = [(SCROBrailleUIListView *)self initWithIdentifier:v8 items:v9 initialFocusedIndex:v11];

  return v15;
}

- (void)setFocusedIndex:(int64_t)a3
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = [(SCROBrailleUIListView *)self items];
    v6 = [v5 count];

    if (v6 > a3)
    {
      [(SCROBrailleUIListView *)self _resetInLineItem];
      self->_focusedIndex = a3;

      [(SCROBrailleUIListView *)self display];
    }
  }
}

- (id)focusedItem
{
  items = self->_items;
  v3 = [(SCROBrailleUIListView *)self focusedIndex];

  return [(NSArray *)items objectAtIndex:v3];
}

- (void)replaceItemAtIndex:(int64_t)a3 with:(id)a4
{
  v5 = a4;
  v6 = [(SCROBrailleUIListView *)self items];
  v7 = [v6 mutableCopy];

  [v7 replaceObjectAtIndex:-[SCROBrailleUIListView focusedIndex](self withObject:{"focusedIndex"), v5}];
  [(SCROBrailleUIListView *)self setItems:v7];
}

- (id)value
{
  v3 = +[SCROBrailleUIDisplayManager sharedManager];
  v4 = [v3 lineForView:self];

  v5 = [v4 braille];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_28763D5C8;
  }

  v8 = v7;

  return v7;
}

- (BOOL)isEdited
{
  v2 = [(SCROBrailleUIListView *)self focusedItem];
  if ([v2 isInline])
  {
    v3 = [MEMORY[0x277CF3318] sharedModel];
    v4 = [v3 clearAtNextDotPress] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_resetInLineItem
{
  if ([(SCROBrailleUIListView *)self isEdited])
  {
    v3 = [(SCROBrailleUIListView *)self focusedItem];
    [v3 setPrepopulatedBraille:0];

    [(SCROBrailleUIListView *)self display];
  }
}

- (void)displaySilently:(BOOL)a3
{
  v3 = a3;
  v22 = [(SCROBrailleUIListView *)self focusedItem];
  v5 = [v22 brailleLabel];
  if ([v22 isInline])
  {
    v6 = [v22 prepopulatedBraille];
    if (v6)
    {
      v7 = [v22 shouldBulkSelectPrepopulatedBraille];
      v8 = [v6 length];
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      if (v7)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }

      v11 = [SCROBrailleUIBraille lineWithEditableBraille:v6 selection:v9, v10];
    }

    else
    {
      v11 = [SCROBrailleUIBraille lineWithEditablePlaceholder:v5];
    }

    v12 = v11;
  }

  else
  {
    v12 = +[SCROBrailleUIBraille lineWithBraille:shouldTruncateAtPanBoundary:](SCROBrailleUIBraille, "lineWithBraille:shouldTruncateAtPanBoundary:", v5, [v22 shouldTruncateAtPanBoundary]);
  }

  v13 = +[SCROBrailleUIDisplayManager sharedManager];
  if ([v22 isInline])
  {
    v14 = [v22 prepopulatedBraille];
    [v13 display:v12 forView:self clearAtNextDotPress:v14 == 0];
  }

  else
  {
    [v13 display:v12 forView:self clearAtNextDotPress:0];
  }

  v15 = [(SCROBrailleUIListView *)self focusedItem];
  v16 = [v15 speakableLabel];

  if (v16)
  {
    v17 = +[SCROBrailleUISettingsManager sharedInstance];
    v18 = [v17 isReadListItemsEnabled];

    if (v18)
    {
      if (!v3)
      {
        v19 = +[SCROBrailleUIDisplayManager sharedManager];
        v20 = [(SCROBrailleUIListView *)self focusedItem];
        v21 = [v20 speakableLabel];
        [v19 requestSpeech:v21 language:0 shouldQueue:0];
      }
    }
  }
}

- (id)handleEvent:(id)a3
{
  v4 = [a3 type];
  v5 = 0;
  switch(v4)
  {
    case 1:
      [(SCROBrailleUIListView *)self _resetInLineItem];
      if (![(SCROBrailleUIListView *)self focusedIndex])
      {
        goto LABEL_43;
      }

      v43 = [(SCROBrailleUIListView *)self focusedIndex];
      goto LABEL_44;
    case 2:
      [(SCROBrailleUIListView *)self _resetInLineItem];
      v44 = [(SCROBrailleUIListView *)self focusedIndex];
      if (v44 == [(NSArray *)self->_items count]- 1)
      {
        v40 = 0;
      }

      else
      {
        v40 = [(SCROBrailleUIListView *)self focusedIndex]+ 1;
      }

      goto LABEL_45;
    case 3:
      [(SCROBrailleUIListView *)self _resetInLineItem];
      v39 = self;
      v40 = 0;
      goto LABEL_46;
    case 4:
      [(SCROBrailleUIListView *)self _resetInLineItem];
LABEL_43:
      v43 = [(NSArray *)self->_items count];
LABEL_44:
      v40 = v43 - 1;
LABEL_45:
      v39 = self;
LABEL_46:
      [(SCROBrailleUIListView *)v39 setFocusedIndex:v40];
      [(SCROBrailleUIListView *)self display];
      goto LABEL_55;
    case 5:
      goto LABEL_5;
    case 6:
      v12 = [SCROBrailleUIAction alloc];
      v13 = 4;
      goto LABEL_62;
    case 7:
      if ([(SCROBrailleUIListView *)self isEdited])
      {
        [(SCROBrailleUIListView *)self _resetInLineItem];
        goto LABEL_55;
      }

      v12 = [SCROBrailleUIAction alloc];
      goto LABEL_61;
    case 8:
      v12 = [SCROBrailleUIAction alloc];
      v13 = 3;
      goto LABEL_62;
    case 9:
    case 26:
      v6 = [(SCROBrailleUIListView *)self focusedItem];
      v7 = [v6 isInline];

      if (v7)
      {
        if (![(SCROBrailleUIListView *)self isEdited])
        {
          v8 = [SCROBrailleUIBraille lineWithEditablePlaceholder:&stru_28763D5C8];
          v9 = +[SCROBrailleUIDisplayManager sharedManager];
          [v9 display:v8 forView:self clearAtNextDotPress:0];
        }

LABEL_55:
        v5 = 0;
      }

      else
      {
LABEL_5:
        v10 = [(SCROBrailleUIListView *)self focusedIndex];
        v11 = [(NSArray *)self->_items count]- 1;
        v12 = [SCROBrailleUIAction alloc];
        if (v10 == v11)
        {
LABEL_61:
          v13 = 2;
        }

        else
        {
          v13 = 1;
        }

LABEL_62:
        v5 = [(SCROBrailleUIAction *)v12 initWithType:v13 originator:self];
      }

LABEL_56:

      return v5;
    case 13:
      v27 = [(SCROBrailleUIListView *)self focusedItem];
      v28 = [v27 isInline];

      if (!v28)
      {
        goto LABEL_55;
      }

      v29 = [MEMORY[0x277CF3318] sharedModel];
      v20 = v29;
      v30 = 0;
      goto LABEL_28;
    case 14:
      v41 = [(SCROBrailleUIListView *)self focusedItem];
      v42 = [v41 isInline];

      if (!v42)
      {
        goto LABEL_55;
      }

      v29 = [MEMORY[0x277CF3318] sharedModel];
      v20 = v29;
      v30 = 1;
LABEL_28:
      [v29 uiSelectCharacter:v30];
      goto LABEL_54;
    case 15:
      v33 = [(SCROBrailleUIListView *)self focusedItem];
      v34 = [v33 isInline];

      if (!v34)
      {
        goto LABEL_55;
      }

      v23 = [MEMORY[0x277CF3318] sharedModel];
      v20 = v23;
      v24 = 0;
      goto LABEL_21;
    case 16:
      v21 = [(SCROBrailleUIListView *)self focusedItem];
      v22 = [v21 isInline];

      if (!v22)
      {
        goto LABEL_55;
      }

      v23 = [MEMORY[0x277CF3318] sharedModel];
      v20 = v23;
      v24 = 1;
LABEL_21:
      [v23 uiSelectWord:v24];
      goto LABEL_54;
    case 17:
      v45 = [(SCROBrailleUIListView *)self focusedItem];
      v46 = [v45 isInline];

      if (!v46)
      {
        goto LABEL_55;
      }

      v47 = [MEMORY[0x277CF3318] sharedModel];
      v20 = v47;
      v48 = 0;
      goto LABEL_41;
    case 18:
      v49 = [(SCROBrailleUIListView *)self focusedItem];
      v50 = [v49 isInline];

      if (!v50)
      {
        goto LABEL_55;
      }

      v47 = [MEMORY[0x277CF3318] sharedModel];
      v20 = v47;
      v48 = 1;
LABEL_41:
      [v47 uiSelectLine:v48];
      goto LABEL_54;
    case 19:
      v53 = [(SCROBrailleUIListView *)self focusedItem];
      v54 = [v53 isInline];

      if (!v54)
      {
        goto LABEL_55;
      }

      v20 = [MEMORY[0x277CF3318] sharedModel];
      [v20 uiSelectAll];
      goto LABEL_54;
    case 20:
      v51 = [(SCROBrailleUIListView *)self focusedItem];
      v52 = [v51 isInline];

      if (!v52)
      {
        goto LABEL_55;
      }

      v16 = self;
      v17 = 1;
      goto LABEL_49;
    case 21:
      v14 = [(SCROBrailleUIListView *)self focusedItem];
      v15 = [v14 isInline];

      if (!v15)
      {
        goto LABEL_55;
      }

      v16 = self;
      v17 = 0;
LABEL_49:
      [(SCROBrailleUIListView *)v16 _copySelectedBrailleAndErase:v17];
      goto LABEL_55;
    case 22:
      v35 = [(SCROBrailleUIListView *)self focusedItem];
      v36 = [v35 isInline];

      if (!v36)
      {
        goto LABEL_55;
      }

      v37 = +[SCROBrailleUIPasteBoard sharedBoard];
      v20 = [v37 braille];

      if ([v20 length])
      {
        v38 = [MEMORY[0x277CF3318] sharedModel];
        [v38 uiInsertBraille:v20];
      }

      goto LABEL_54;
    case 23:
      v55 = [(SCROBrailleUIListView *)self focusedItem];
      v56 = [v55 isInline];

      if (!v56)
      {
        goto LABEL_55;
      }

      v20 = [MEMORY[0x277CF3318] sharedModel];
      [v20 uiUndo];
      goto LABEL_54;
    case 24:
      v18 = [(SCROBrailleUIListView *)self focusedItem];
      v19 = [v18 isInline];

      if (!v19)
      {
        goto LABEL_55;
      }

      v20 = [MEMORY[0x277CF3318] sharedModel];
      [v20 uiRedo];
      goto LABEL_54;
    case 27:
      v31 = [(SCROBrailleUIListView *)self focusedItem];
      v32 = [v31 isInline];

      if (!v32)
      {
        goto LABEL_55;
      }

      v20 = [MEMORY[0x277CF3318] sharedModel];
      [v20 uiMoveToPreviousCharacter];
      goto LABEL_54;
    case 28:
      v25 = [(SCROBrailleUIListView *)self focusedItem];
      v26 = [v25 isInline];

      if (!v26)
      {
        goto LABEL_55;
      }

      v20 = [MEMORY[0x277CF3318] sharedModel];
      [v20 uiMoveToNextCharacter];
LABEL_54:

      goto LABEL_55;
    default:
      goto LABEL_56;
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

- (id)visualRepresentation
{
  v46 = *MEMORY[0x277D85DE8];
  v39 = +[SCROBrailleUIView visibleView];

  v40 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(SCROBrailleUIListView *)self items];
  v3 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v38 = *v42;
    do
    {
      v6 = 0;
      v36 = v5;
      do
      {
        if (*v42 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v41 + 1) + 8 * v6);
        v8 = [v7 brailleLabel];
        if (v39 == self && v5 == -[SCROBrailleUIListView focusedIndex](self, "focusedIndex") && [v7 isInline])
        {
          v9 = [MEMORY[0x277CF3318] sharedModel];
          v10 = [v9 displayedBraille];
          v11 = [v10 string];

          v12 = [MEMORY[0x277CF3318] sharedModel];
          v13 = [v12 uiSelection];
          v15 = v14;

          v8 = v11;
        }

        else
        {
          v15 = 0;
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v16 = [[SCROBrailleUICaptionableBrailleLine alloc] initWithBraille:v8 selection:v13, v15];
        v17 = [(SCROBrailleUIListView *)self focusedItem];
        if (v7 != v17 || ![v7 isNemeth])
        {
          goto LABEL_18;
        }

        v18 = [(SCROBrailleUIListView *)self isEdited];

        if (v18)
        {
          v19 = +[SCROBrailleUISettingsManager sharedInstance];
          v20 = [v19 calculatorUsesUEBMath];

          v21 = [SCROBrailleUIMathString alloc];
          if (v20)
          {
            v22 = [(SCROBrailleUIMathString *)v21 initWithUEBMath:v8];
          }

          else
          {
            v22 = [(SCROBrailleUIMathString *)v21 initWithNemeth:v8];
          }

          v17 = v22;
          v23 = [(SCROBrailleUIMathString *)v22 latexRepresentation];
          [(SCROBrailleUICaptionableBrailleLine *)v16 setManualCaption:v23];
          v24 = [v17 mathMLRepresentation];
          [(SCROBrailleUICaptionableBrailleLine *)v16 setMathML:v24];

LABEL_18:
        }

        if ([v7 isInline] && -[SCROBrailleUIListView isEdited](self, "isEdited"))
        {
          v25 = [(SCROBrailleUIListView *)self focusedItem];
          v26 = v7 == v25;
        }

        else
        {
          v26 = 0;
        }

        if ([v7 updatesAutomatically])
        {
          v27 = [(SCROBrailleUIListView *)self focusedItem];
          v28 = v7 != v27;
        }

        else
        {
          v28 = 0;
        }

        v29 = [v7 manualCaption];
        if (v29)
        {
          v30 = v29;
          v31 = [v7 updatesAutomatically] | v26;

          if (v28 || (v31 & 1) == 0)
          {
            v32 = [v7 manualCaption];
            [(SCROBrailleUICaptionableBrailleLine *)v16 setManualCaption:v32];
          }
        }

        [v40 addObject:v16];
        ++v5;

        ++v6;
      }

      while (v4 != v6);
      v5 = v36 + v4;
      v4 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v4);
  }

  v33 = [[SCROBrailleUIVisualRepresentation alloc] initWithLines:v40 focusedIndex:[(SCROBrailleUIListView *)self focusedIndex] isList:1];
  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

@end