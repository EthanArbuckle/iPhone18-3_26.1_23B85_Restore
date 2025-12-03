@interface SCROBrailleUIListView
- (BOOL)isEdited;
- (SCROBrailleUIListView)initWithIdentifier:(id)identifier items:(id)items initialFocus:(id)focus;
- (SCROBrailleUIListView)initWithIdentifier:(id)identifier items:(id)items initialFocusedIndex:(unint64_t)index;
- (id)focusedItem;
- (id)handleEvent:(id)event;
- (id)value;
- (id)visualRepresentation;
- (void)_copySelectedBrailleAndErase:(BOOL)erase;
- (void)_resetInLineItem;
- (void)displaySilently:(BOOL)silently;
- (void)replaceItemAtIndex:(int64_t)index with:(id)with;
- (void)setFocusedIndex:(int64_t)index;
@end

@implementation SCROBrailleUIListView

- (SCROBrailleUIListView)initWithIdentifier:(id)identifier items:(id)items initialFocusedIndex:(unint64_t)index
{
  identifierCopy = identifier;
  itemsCopy = items;
  v21.receiver = self;
  v21.super_class = SCROBrailleUIListView;
  v10 = [(SCROBrailleUIView *)&v21 initWithIdentifier:identifierCopy];
  if (v10)
  {
    v11 = [identifierCopy isEqualToString:@"com.apple.scrod.braille.ui.main.menu"];
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
      v18 = [itemsCopy arrayByAddingObject:v16];
    }

    else
    {
      v18 = itemsCopy;
    }

    items = v10->_items;
    v10->_items = v18;

    if ([itemsCopy count] < index)
    {
      index = [itemsCopy count];
    }

    v10->_focusedIndex = index;
  }

  return v10;
}

- (SCROBrailleUIListView)initWithIdentifier:(id)identifier items:(id)items initialFocus:(id)focus
{
  identifierCopy = identifier;
  itemsCopy = items;
  focusCopy = focus;
  if ([itemsCopy count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [itemsCopy objectAtIndex:v11];
      identifier = [v12 identifier];
      v14 = [focusCopy isEqualToString:identifier];

      if (v14)
      {
        break;
      }

      if (++v11 >= [itemsCopy count])
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

  v15 = [(SCROBrailleUIListView *)self initWithIdentifier:identifierCopy items:itemsCopy initialFocusedIndex:v11];

  return v15;
}

- (void)setFocusedIndex:(int64_t)index
{
  if ((index & 0x8000000000000000) == 0)
  {
    items = [(SCROBrailleUIListView *)self items];
    v6 = [items count];

    if (v6 > index)
    {
      [(SCROBrailleUIListView *)self _resetInLineItem];
      self->_focusedIndex = index;

      [(SCROBrailleUIListView *)self display];
    }
  }
}

- (id)focusedItem
{
  items = self->_items;
  focusedIndex = [(SCROBrailleUIListView *)self focusedIndex];

  return [(NSArray *)items objectAtIndex:focusedIndex];
}

- (void)replaceItemAtIndex:(int64_t)index with:(id)with
{
  withCopy = with;
  items = [(SCROBrailleUIListView *)self items];
  v7 = [items mutableCopy];

  [v7 replaceObjectAtIndex:-[SCROBrailleUIListView focusedIndex](self withObject:{"focusedIndex"), withCopy}];
  [(SCROBrailleUIListView *)self setItems:v7];
}

- (id)value
{
  v3 = +[SCROBrailleUIDisplayManager sharedManager];
  v4 = [v3 lineForView:self];

  braille = [v4 braille];
  v6 = braille;
  if (braille)
  {
    v7 = braille;
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
  focusedItem = [(SCROBrailleUIListView *)self focusedItem];
  if ([focusedItem isInline])
  {
    mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
    v4 = [mEMORY[0x277CF3318] clearAtNextDotPress] ^ 1;
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
    focusedItem = [(SCROBrailleUIListView *)self focusedItem];
    [focusedItem setPrepopulatedBraille:0];

    [(SCROBrailleUIListView *)self display];
  }
}

- (void)displaySilently:(BOOL)silently
{
  silentlyCopy = silently;
  focusedItem = [(SCROBrailleUIListView *)self focusedItem];
  brailleLabel = [focusedItem brailleLabel];
  if ([focusedItem isInline])
  {
    prepopulatedBraille = [focusedItem prepopulatedBraille];
    if (prepopulatedBraille)
    {
      shouldBulkSelectPrepopulatedBraille = [focusedItem shouldBulkSelectPrepopulatedBraille];
      v8 = [prepopulatedBraille length];
      if (shouldBulkSelectPrepopulatedBraille)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      if (shouldBulkSelectPrepopulatedBraille)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }

      v11 = [SCROBrailleUIBraille lineWithEditableBraille:prepopulatedBraille selection:v9, v10];
    }

    else
    {
      v11 = [SCROBrailleUIBraille lineWithEditablePlaceholder:brailleLabel];
    }

    v12 = v11;
  }

  else
  {
    v12 = +[SCROBrailleUIBraille lineWithBraille:shouldTruncateAtPanBoundary:](SCROBrailleUIBraille, "lineWithBraille:shouldTruncateAtPanBoundary:", brailleLabel, [focusedItem shouldTruncateAtPanBoundary]);
  }

  v13 = +[SCROBrailleUIDisplayManager sharedManager];
  if ([focusedItem isInline])
  {
    prepopulatedBraille2 = [focusedItem prepopulatedBraille];
    [v13 display:v12 forView:self clearAtNextDotPress:prepopulatedBraille2 == 0];
  }

  else
  {
    [v13 display:v12 forView:self clearAtNextDotPress:0];
  }

  focusedItem2 = [(SCROBrailleUIListView *)self focusedItem];
  speakableLabel = [focusedItem2 speakableLabel];

  if (speakableLabel)
  {
    v17 = +[SCROBrailleUISettingsManager sharedInstance];
    isReadListItemsEnabled = [v17 isReadListItemsEnabled];

    if (isReadListItemsEnabled)
    {
      if (!silentlyCopy)
      {
        v19 = +[SCROBrailleUIDisplayManager sharedManager];
        focusedItem3 = [(SCROBrailleUIListView *)self focusedItem];
        speakableLabel2 = [focusedItem3 speakableLabel];
        [v19 requestSpeech:speakableLabel2 language:0 shouldQueue:0];
      }
    }
  }
}

- (id)handleEvent:(id)event
{
  type = [event type];
  v5 = 0;
  switch(type)
  {
    case 1:
      [(SCROBrailleUIListView *)self _resetInLineItem];
      if (![(SCROBrailleUIListView *)self focusedIndex])
      {
        goto LABEL_43;
      }

      focusedIndex = [(SCROBrailleUIListView *)self focusedIndex];
      goto LABEL_44;
    case 2:
      [(SCROBrailleUIListView *)self _resetInLineItem];
      focusedIndex2 = [(SCROBrailleUIListView *)self focusedIndex];
      if (focusedIndex2 == [(NSArray *)self->_items count]- 1)
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
      selfCopy2 = self;
      v40 = 0;
      goto LABEL_46;
    case 4:
      [(SCROBrailleUIListView *)self _resetInLineItem];
LABEL_43:
      focusedIndex = [(NSArray *)self->_items count];
LABEL_44:
      v40 = focusedIndex - 1;
LABEL_45:
      selfCopy2 = self;
LABEL_46:
      [(SCROBrailleUIListView *)selfCopy2 setFocusedIndex:v40];
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
      focusedItem = [(SCROBrailleUIListView *)self focusedItem];
      isInline = [focusedItem isInline];

      if (isInline)
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
        focusedIndex3 = [(SCROBrailleUIListView *)self focusedIndex];
        v11 = [(NSArray *)self->_items count]- 1;
        v12 = [SCROBrailleUIAction alloc];
        if (focusedIndex3 == v11)
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
      focusedItem2 = [(SCROBrailleUIListView *)self focusedItem];
      isInline2 = [focusedItem2 isInline];

      if (!isInline2)
      {
        goto LABEL_55;
      }

      mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
      mEMORY[0x277CF3318]4 = mEMORY[0x277CF3318];
      v30 = 0;
      goto LABEL_28;
    case 14:
      focusedItem3 = [(SCROBrailleUIListView *)self focusedItem];
      isInline3 = [focusedItem3 isInline];

      if (!isInline3)
      {
        goto LABEL_55;
      }

      mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
      mEMORY[0x277CF3318]4 = mEMORY[0x277CF3318];
      v30 = 1;
LABEL_28:
      [mEMORY[0x277CF3318] uiSelectCharacter:v30];
      goto LABEL_54;
    case 15:
      focusedItem4 = [(SCROBrailleUIListView *)self focusedItem];
      isInline4 = [focusedItem4 isInline];

      if (!isInline4)
      {
        goto LABEL_55;
      }

      mEMORY[0x277CF3318]2 = [MEMORY[0x277CF3318] sharedModel];
      mEMORY[0x277CF3318]4 = mEMORY[0x277CF3318]2;
      v24 = 0;
      goto LABEL_21;
    case 16:
      focusedItem5 = [(SCROBrailleUIListView *)self focusedItem];
      isInline5 = [focusedItem5 isInline];

      if (!isInline5)
      {
        goto LABEL_55;
      }

      mEMORY[0x277CF3318]2 = [MEMORY[0x277CF3318] sharedModel];
      mEMORY[0x277CF3318]4 = mEMORY[0x277CF3318]2;
      v24 = 1;
LABEL_21:
      [mEMORY[0x277CF3318]2 uiSelectWord:v24];
      goto LABEL_54;
    case 17:
      focusedItem6 = [(SCROBrailleUIListView *)self focusedItem];
      isInline6 = [focusedItem6 isInline];

      if (!isInline6)
      {
        goto LABEL_55;
      }

      mEMORY[0x277CF3318]3 = [MEMORY[0x277CF3318] sharedModel];
      mEMORY[0x277CF3318]4 = mEMORY[0x277CF3318]3;
      v48 = 0;
      goto LABEL_41;
    case 18:
      focusedItem7 = [(SCROBrailleUIListView *)self focusedItem];
      isInline7 = [focusedItem7 isInline];

      if (!isInline7)
      {
        goto LABEL_55;
      }

      mEMORY[0x277CF3318]3 = [MEMORY[0x277CF3318] sharedModel];
      mEMORY[0x277CF3318]4 = mEMORY[0x277CF3318]3;
      v48 = 1;
LABEL_41:
      [mEMORY[0x277CF3318]3 uiSelectLine:v48];
      goto LABEL_54;
    case 19:
      focusedItem8 = [(SCROBrailleUIListView *)self focusedItem];
      isInline8 = [focusedItem8 isInline];

      if (!isInline8)
      {
        goto LABEL_55;
      }

      mEMORY[0x277CF3318]4 = [MEMORY[0x277CF3318] sharedModel];
      [mEMORY[0x277CF3318]4 uiSelectAll];
      goto LABEL_54;
    case 20:
      focusedItem9 = [(SCROBrailleUIListView *)self focusedItem];
      isInline9 = [focusedItem9 isInline];

      if (!isInline9)
      {
        goto LABEL_55;
      }

      selfCopy4 = self;
      v17 = 1;
      goto LABEL_49;
    case 21:
      focusedItem10 = [(SCROBrailleUIListView *)self focusedItem];
      isInline10 = [focusedItem10 isInline];

      if (!isInline10)
      {
        goto LABEL_55;
      }

      selfCopy4 = self;
      v17 = 0;
LABEL_49:
      [(SCROBrailleUIListView *)selfCopy4 _copySelectedBrailleAndErase:v17];
      goto LABEL_55;
    case 22:
      focusedItem11 = [(SCROBrailleUIListView *)self focusedItem];
      isInline11 = [focusedItem11 isInline];

      if (!isInline11)
      {
        goto LABEL_55;
      }

      v37 = +[SCROBrailleUIPasteBoard sharedBoard];
      mEMORY[0x277CF3318]4 = [v37 braille];

      if ([mEMORY[0x277CF3318]4 length])
      {
        mEMORY[0x277CF3318]5 = [MEMORY[0x277CF3318] sharedModel];
        [mEMORY[0x277CF3318]5 uiInsertBraille:mEMORY[0x277CF3318]4];
      }

      goto LABEL_54;
    case 23:
      focusedItem12 = [(SCROBrailleUIListView *)self focusedItem];
      isInline12 = [focusedItem12 isInline];

      if (!isInline12)
      {
        goto LABEL_55;
      }

      mEMORY[0x277CF3318]4 = [MEMORY[0x277CF3318] sharedModel];
      [mEMORY[0x277CF3318]4 uiUndo];
      goto LABEL_54;
    case 24:
      focusedItem13 = [(SCROBrailleUIListView *)self focusedItem];
      isInline13 = [focusedItem13 isInline];

      if (!isInline13)
      {
        goto LABEL_55;
      }

      mEMORY[0x277CF3318]4 = [MEMORY[0x277CF3318] sharedModel];
      [mEMORY[0x277CF3318]4 uiRedo];
      goto LABEL_54;
    case 27:
      focusedItem14 = [(SCROBrailleUIListView *)self focusedItem];
      isInline14 = [focusedItem14 isInline];

      if (!isInline14)
      {
        goto LABEL_55;
      }

      mEMORY[0x277CF3318]4 = [MEMORY[0x277CF3318] sharedModel];
      [mEMORY[0x277CF3318]4 uiMoveToPreviousCharacter];
      goto LABEL_54;
    case 28:
      focusedItem15 = [(SCROBrailleUIListView *)self focusedItem];
      isInline15 = [focusedItem15 isInline];

      if (!isInline15)
      {
        goto LABEL_55;
      }

      mEMORY[0x277CF3318]4 = [MEMORY[0x277CF3318] sharedModel];
      [mEMORY[0x277CF3318]4 uiMoveToNextCharacter];
LABEL_54:

      goto LABEL_55;
    default:
      goto LABEL_56;
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
        brailleLabel = [v7 brailleLabel];
        if (v39 == self && v5 == -[SCROBrailleUIListView focusedIndex](self, "focusedIndex") && [v7 isInline])
        {
          mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
          displayedBraille = [mEMORY[0x277CF3318] displayedBraille];
          string = [displayedBraille string];

          mEMORY[0x277CF3318]2 = [MEMORY[0x277CF3318] sharedModel];
          uiSelection = [mEMORY[0x277CF3318]2 uiSelection];
          v15 = v14;

          brailleLabel = string;
        }

        else
        {
          v15 = 0;
          uiSelection = 0x7FFFFFFFFFFFFFFFLL;
        }

        v16 = [[SCROBrailleUICaptionableBrailleLine alloc] initWithBraille:brailleLabel selection:uiSelection, v15];
        focusedItem = [(SCROBrailleUIListView *)self focusedItem];
        if (v7 != focusedItem || ![v7 isNemeth])
        {
          goto LABEL_18;
        }

        isEdited = [(SCROBrailleUIListView *)self isEdited];

        if (isEdited)
        {
          v19 = +[SCROBrailleUISettingsManager sharedInstance];
          calculatorUsesUEBMath = [v19 calculatorUsesUEBMath];

          v21 = [SCROBrailleUIMathString alloc];
          if (calculatorUsesUEBMath)
          {
            v22 = [(SCROBrailleUIMathString *)v21 initWithUEBMath:brailleLabel];
          }

          else
          {
            v22 = [(SCROBrailleUIMathString *)v21 initWithNemeth:brailleLabel];
          }

          focusedItem = v22;
          latexRepresentation = [(SCROBrailleUIMathString *)v22 latexRepresentation];
          [(SCROBrailleUICaptionableBrailleLine *)v16 setManualCaption:latexRepresentation];
          mathMLRepresentation = [focusedItem mathMLRepresentation];
          [(SCROBrailleUICaptionableBrailleLine *)v16 setMathML:mathMLRepresentation];

LABEL_18:
        }

        if ([v7 isInline] && -[SCROBrailleUIListView isEdited](self, "isEdited"))
        {
          focusedItem2 = [(SCROBrailleUIListView *)self focusedItem];
          v26 = v7 == focusedItem2;
        }

        else
        {
          v26 = 0;
        }

        if ([v7 updatesAutomatically])
        {
          focusedItem3 = [(SCROBrailleUIListView *)self focusedItem];
          v28 = v7 != focusedItem3;
        }

        else
        {
          v28 = 0;
        }

        manualCaption = [v7 manualCaption];
        if (manualCaption)
        {
          v30 = manualCaption;
          v31 = [v7 updatesAutomatically] | v26;

          if (v28 || (v31 & 1) == 0)
          {
            manualCaption2 = [v7 manualCaption];
            [(SCROBrailleUICaptionableBrailleLine *)v16 setManualCaption:manualCaption2];
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