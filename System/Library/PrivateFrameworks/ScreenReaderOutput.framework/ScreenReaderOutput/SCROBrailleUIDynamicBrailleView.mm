@interface SCROBrailleUIDynamicBrailleView
- (SCROBrailleUIDynamicBrailleView)initWithIdentifier:(id)a3 initialText:(id)a4;
- (id)_backButtonHandleEvent:(id)a3;
- (id)_brailleForText:(id)a3;
- (id)_contentHandleEvent:(id)a3;
- (id)handleEvent:(id)a3;
- (id)textValue;
- (id)unreadTextValue;
- (id)value;
- (id)visualRepresentation;
- (void)display;
- (void)finalizeTranscription;
- (void)handleTranscribedText:(id)a3 isFinal:(BOOL)a4;
- (void)resetUnreadText;
- (void)setShowingBackButton:(BOOL)a3;
@end

@implementation SCROBrailleUIDynamicBrailleView

- (SCROBrailleUIDynamicBrailleView)initWithIdentifier:(id)a3 initialText:(id)a4
{
  v7 = a4;
  v23.receiver = self;
  v23.super_class = SCROBrailleUIDynamicBrailleView;
  v8 = [(SCROBrailleUIView *)&v23 initWithIdentifier:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_initialText, a4);
    v10 = objc_opt_new();
    finalizedText = v9->_finalizedText;
    v9->_finalizedText = v10;

    updatingText = v9->_updatingText;
    v9->_updatingText = 0;

    v13 = objc_opt_new();
    finalizedUnreadText = v9->_finalizedUnreadText;
    v9->_finalizedUnreadText = v13;

    v15 = objc_opt_new();
    finalizedTextLines = v9->_finalizedTextLines;
    v9->_finalizedTextLines = v15;

    v17 = objc_opt_new();
    finalizedBrailleLines = v9->_finalizedBrailleLines;
    v9->_finalizedBrailleLines = v17;

    v19 = objc_opt_new();
    finalizedLinesLock = v9->_finalizedLinesLock;
    v9->_finalizedLinesLock = v19;

    v21 = +[SCROBrailleUISettingsManager sharedInstance];
    v9->_showsBackButton = [v21 showsBackButton];
  }

  return v9;
}

- (id)value
{
  if ([(SCROBrailleUIDynamicBrailleView *)self showsBackButton]&& [(SCROBrailleUIDynamicBrailleView *)self showingBackButton])
  {
    v3 = [(SCROBrailleUIDynamicBrailleView *)self valueCache];
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

- (id)textValue
{
  v3 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
  v4 = [v3 length];

  v5 = [(SCROBrailleUIDynamicBrailleView *)self finalizedText];
  if (v4)
  {
    v6 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
    v7 = [v5 stringByAppendingString:v6];

    v5 = v7;
  }

  return v5;
}

- (id)unreadTextValue
{
  v3 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
  v4 = [v3 length];

  v5 = [(SCROBrailleUIDynamicBrailleView *)self finalizedUnreadText];
  if (v4)
  {
    v6 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
    v7 = [v5 stringByAppendingString:v6];

    v5 = v7;
  }

  return v5;
}

- (void)display
{
  v44 = *MEMORY[0x277D85DE8];
  if (![(SCROBrailleUIDynamicBrailleView *)self showsBackButton])
  {
    v5 = [(SCROBrailleUIDynamicBrailleView *)self initialText];
    v3 = [(SCROBrailleUIDynamicBrailleView *)self _brailleForText:v5];

    v4 = [SCROBrailleUIBraille multiLineBraille:v3];
    goto LABEL_5;
  }

  if ([(SCROBrailleUIDynamicBrailleView *)self showingBackButton])
  {
    v3 = +[SCROBrailleUIUtilities brailleForBackButton];
    v4 = [SCROBrailleUIBraille lineWithBraille:v3];
LABEL_5:
    v6 = v4;

    goto LABEL_23;
  }

  v7 = objc_opt_new();
  v8 = [(SCROBrailleUIDynamicBrailleView *)self finalizedTextLines];
  v9 = [v8 count];
  v10 = [(SCROBrailleUIDynamicBrailleView *)self finalizedBrailleLines];
  v11 = [v10 count];

  if (v9 != v11)
  {
    v12 = _SCROD_LOG();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = MEMORY[0x277CCABB0];
      v14 = [(SCROBrailleUIDynamicBrailleView *)self finalizedTextLines];
      v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
      v16 = MEMORY[0x277CCABB0];
      v17 = [(SCROBrailleUIDynamicBrailleView *)self finalizedBrailleLines];
      v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
      *buf = 138412546;
      v41 = v15;
      v42 = 2112;
      v43 = v18;
      _os_log_impl(&dword_26490B000, v12, OS_LOG_TYPE_DEFAULT, "SCROBrailleDynamicBrailleView: unexpected finalized line number mismatch -- %@ != %@", buf, 0x16u);
    }
  }

  v19 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];

  if (!v19)
  {
    v20 = [(SCROBrailleUIDynamicBrailleView *)self initialText];
    v21 = [(SCROBrailleUIDynamicBrailleView *)self _brailleForText:v20];
    [v7 addObject:v21];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = [(SCROBrailleUIDynamicBrailleView *)self finalizedBrailleLines];
  v23 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v36;
    do
    {
      v26 = 0;
      do
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [v7 addObject:*(*(&v35 + 1) + 8 * v26++)];
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v24);
  }

  v27 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
  if (v27)
  {
    v28 = v27;
    v29 = [(SCROBrailleUIDynamicBrailleView *)self updatingBraille];

    if (v29)
    {
      v30 = [(SCROBrailleUIDynamicBrailleView *)self updatingBraille];
      [v7 addObject:v30];
    }
  }

  v31 = [(SCROBrailleUIDynamicBrailleView *)self finalizedLinesLock];
  [v31 unlock];

  v32 = [v7 componentsJoinedByString:@"\n"];
  v6 = [SCROBrailleUIBraille multiLineBraille:v32];

LABEL_23:
  v33 = +[SCROBrailleUIDisplayManager sharedManager];
  [v33 display:v6 forView:self clearAtNextDotPress:0];

  v34 = *MEMORY[0x277D85DE8];
}

- (id)handleEvent:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUIDynamicBrailleView *)self showsBackButton]&& [(SCROBrailleUIDynamicBrailleView *)self showingBackButton])
  {
    v5 = [(SCROBrailleUIDynamicBrailleView *)self _backButtonHandleEvent:v4];
  }

  else
  {
    v5 = [(SCROBrailleUIDynamicBrailleView *)self _contentHandleEvent:v4];
  }

  v6 = v5;

  return v6;
}

- (id)_backButtonHandleEvent:(id)a3
{
  v4 = [a3 type];
  if (v4 <= 0x1A)
  {
    if (((1 << v4) & 0x40002A0) != 0)
    {
      v5 = [SCROBrailleUIAction alloc];
      v6 = 2;
LABEL_4:
      v7 = [(SCROBrailleUIAction *)v5 initWithType:v6 originator:self];
      goto LABEL_14;
    }

    if (v4 == 4)
    {
      goto LABEL_10;
    }

    if (v4 == 8)
    {
      v5 = [SCROBrailleUIAction alloc];
      v6 = 3;
      goto LABEL_4;
    }
  }

  if (v4 == 2)
  {
    [(SCROBrailleUIDynamicBrailleView *)self setShowingBackButton:0];
    v8 = +[SCROBrailleUIDisplayManager sharedManager];
    [v8 showFirstLineForView:self];
    goto LABEL_12;
  }

  if (v4 == 1)
  {
LABEL_10:
    [(SCROBrailleUIDynamicBrailleView *)self setShowingBackButton:0];
    v8 = +[SCROBrailleUIDisplayManager sharedManager];
    [v8 showLastLineForView:self];
LABEL_12:
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (id)_contentHandleEvent:(id)a3
{
  v4 = [a3 type];
  v5 = 0;
  if (v4 <= 4)
  {
    if (v4 > 2)
    {
      if (v4 != 3)
      {
        goto LABEL_14;
      }

      if (![(SCROBrailleUIDynamicBrailleView *)self showsBackButton])
      {
        v13 = +[SCROBrailleUIDisplayManager sharedManager];
        [v13 showFirstLineForView:self];
        goto LABEL_27;
      }
    }

    else if (v4 == 1)
    {
      if (!-[SCROBrailleUIDynamicBrailleView showsBackButton](self, "showsBackButton") || ([MEMORY[0x277CF3318] sharedModel], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "uiDisplayRange"), v16, v17))
      {
        v13 = +[SCROBrailleUIDisplayManager sharedManager];
        [v13 showPreviousLineForView:self];
        goto LABEL_27;
      }
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_29;
      }

      if (![(SCROBrailleUIDynamicBrailleView *)self showsBackButton])
      {
        goto LABEL_12;
      }

      v6 = [MEMORY[0x277CF3318] sharedModel];
      v7 = [v6 uiDisplayRange];
      v9 = v7 + v8;
      v10 = [MEMORY[0x277CF3318] sharedModel];
      v11 = [v10 uiBraille];
      v12 = [v11 length];

      if (v9 < v12)
      {
LABEL_12:
        v13 = +[SCROBrailleUIDisplayManager sharedManager];
        [v13 showNextLineForView:self];
LABEL_27:

        goto LABEL_28;
      }
    }

    [(SCROBrailleUIDynamicBrailleView *)self setShowingBackButton:1];
LABEL_28:
    v5 = 0;
    goto LABEL_29;
  }

  if (v4 <= 6)
  {
    if (v4 == 5)
    {
      v14 = [SCROBrailleUIAction alloc];
      v15 = 1;
    }

    else
    {
      v14 = [SCROBrailleUIAction alloc];
      v15 = 4;
    }

    goto LABEL_25;
  }

  switch(v4)
  {
    case 7:
      v14 = [SCROBrailleUIAction alloc];
      v15 = 2;
LABEL_25:
      v5 = [(SCROBrailleUIAction *)v14 initWithType:v15 originator:self];
      break;
    case 8:
      v14 = [SCROBrailleUIAction alloc];
      v15 = 3;
      goto LABEL_25;
    case 9:
LABEL_14:
      v13 = +[SCROBrailleUIDisplayManager sharedManager];
      [v13 showLastLineForView:self];
      goto LABEL_27;
  }

LABEL_29:

  return v5;
}

- (id)_brailleForText:(id)a3
{
  v3 = a3;
  v4 = +[SCROBrailleTranslationManager sharedManager];
  v5 = [v4 printBrailleForText:v3 language:0 mode:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{0, 0}];

  return v5;
}

- (void)handleTranscribedText:(id)a3 isFinal:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = +[SCROBrailleUIView visibleView];
  if (v6 != self)
  {
LABEL_9:

    goto LABEL_10;
  }

  if (![(SCROBrailleUIDynamicBrailleView *)self showsBackButton])
  {

    goto LABEL_6;
  }

  v7 = [(SCROBrailleUIDynamicBrailleView *)self showingBackButton];

  if (!v7)
  {
LABEL_6:
    v8 = [(SCROBrailleUIDynamicBrailleView *)self finalizedLinesLock];
    [v8 lock];

    v6 = [(SCROBrailleUIDynamicBrailleView *)self _brailleForText:v11];
    v9 = [MEMORY[0x277CF3318] sharedModel];
    [v9 uiReplaceLastLineWith:v6];

    [(SCROBrailleUIDynamicBrailleView *)self setUpdatingText:v11];
    [(SCROBrailleUIDynamicBrailleView *)self setUpdatingBraille:v6];
    if (v4)
    {
      [(SCROBrailleUIDynamicBrailleView *)self finalizeTranscription];
    }

    v10 = [(SCROBrailleUIDynamicBrailleView *)self finalizedLinesLock];
    [v10 unlock];

    goto LABEL_9;
  }

LABEL_10:
}

- (void)finalizeTranscription
{
  v3 = +[SCROBrailleUIView visibleView];
  if (v3 == self)
  {
    v16 = v3;
    if ([(SCROBrailleUIDynamicBrailleView *)self showsBackButton])
    {
      v4 = [(SCROBrailleUIDynamicBrailleView *)self showingBackButton];

      if (v4)
      {
        return;
      }
    }

    else
    {
    }

    v5 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];

    if (!v5)
    {
      return;
    }

    v6 = [MEMORY[0x277CF3318] sharedModel];
    [v6 uiAppendNewLine];

    v7 = [(SCROBrailleUIDynamicBrailleView *)self finalizedText];
    v8 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
    [v7 appendFormat:@"\n%@", v8];

    v9 = [(SCROBrailleUIDynamicBrailleView *)self finalizedUnreadText];
    v10 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
    [v9 appendFormat:@"\n%@", v10];

    v11 = [(SCROBrailleUIDynamicBrailleView *)self finalizedTextLines];
    v12 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
    [v11 addObject:v12];

    v13 = [(SCROBrailleUIDynamicBrailleView *)self finalizedBrailleLines];
    v14 = [(SCROBrailleUIDynamicBrailleView *)self updatingBraille];
    [v13 addObject:v14];

    v15 = objc_opt_new();
    [(SCROBrailleUIDynamicBrailleView *)self setUpdatingText:v15];

    v17 = objc_opt_new();
    [(SCROBrailleUIDynamicBrailleView *)self setUpdatingBraille:v17];
    v3 = v17;
  }
}

- (id)visualRepresentation
{
  v58[1] = *MEMORY[0x277D85DE8];
  if ([(SCROBrailleUIDynamicBrailleView *)self showsBackButton]&& [(SCROBrailleUIDynamicBrailleView *)self showingBackButton])
  {
    v3 = SCROBrailleUILocString(@"back.btn.label");
    v4 = +[SCROBrailleUIUtilities brailleForBackButton];
    v5 = [[SCROBrailleUICaptionableBrailleLine alloc] initWithBraille:v4 selection:0x7FFFFFFFFFFFFFFFLL, 0];
    [(SCROBrailleUICaptionableBrailleLine *)v5 setManualCaption:v3];
    v6 = [SCROBrailleUIVisualRepresentation alloc];
    v58[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
    v8 = [(SCROBrailleUIVisualRepresentation *)v6 initWithLines:v7 focusedIndex:0 isList:0];
  }

  else
  {
    v9 = [(SCROBrailleUIDynamicBrailleView *)self finalizedLinesLock];
    [v9 lock];

    v3 = objc_opt_new();
    v10 = [(SCROBrailleUIDynamicBrailleView *)self finalizedTextLines];
    v11 = [v10 count];
    v12 = [(SCROBrailleUIDynamicBrailleView *)self finalizedBrailleLines];
    v13 = [v12 count];

    if (v11 != v13)
    {
      v14 = _SCROD_LOG();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = MEMORY[0x277CCABB0];
        v16 = [(SCROBrailleUIDynamicBrailleView *)self finalizedTextLines];
        v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
        v18 = MEMORY[0x277CCABB0];
        v19 = [(SCROBrailleUIDynamicBrailleView *)self finalizedBrailleLines];
        v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
        *buf = 138412546;
        v55 = v17;
        v56 = 2112;
        v57 = v20;
        _os_log_impl(&dword_26490B000, v14, OS_LOG_TYPE_DEFAULT, "SCROBrailleDynamicBrailleView: unexpected finalized line number mismatch -- %@ != %@", buf, 0x16u);
      }
    }

    v21 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];

    if (!v21)
    {
      v22 = [SCROBrailleUICaptionableBrailleLine alloc];
      v23 = [(SCROBrailleUIDynamicBrailleView *)self initialText];
      v24 = [(SCROBrailleUIDynamicBrailleView *)self _brailleForText:v23];
      v25 = [(SCROBrailleUICaptionableBrailleLine *)v22 initWithBraille:v24 selection:0x7FFFFFFFFFFFFFFFLL, 0];

      v26 = [(SCROBrailleUIDynamicBrailleView *)self initialText];
      [(SCROBrailleUICaptionableBrailleLine *)v25 setManualCaption:v26];

      [v3 addObject:v25];
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v27 = [(SCROBrailleUIDynamicBrailleView *)self finalizedBrailleLines];
    v28 = [v27 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = 0;
      v31 = *v50;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v33 = [[SCROBrailleUICaptionableBrailleLine alloc] initWithBraille:*(*(&v49 + 1) + 8 * i) selection:0x7FFFFFFFFFFFFFFFLL, 0];
          v34 = [(SCROBrailleUIDynamicBrailleView *)self finalizedTextLines];
          v35 = [v34 count];

          if (v30 < v35)
          {
            v36 = [(SCROBrailleUIDynamicBrailleView *)self finalizedTextLines];
            v37 = [v36 objectAtIndexedSubscript:v30];
            [(SCROBrailleUICaptionableBrailleLine *)v33 setManualCaption:v37];
          }

          [v3 addObject:v33];
          ++v30;
        }

        v29 = [v27 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v29);
    }

    v38 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
    if (v38)
    {
      v39 = v38;
      v40 = [(SCROBrailleUIDynamicBrailleView *)self updatingBraille];

      if (v40)
      {
        v41 = [SCROBrailleUICaptionableBrailleLine alloc];
        v42 = [(SCROBrailleUIDynamicBrailleView *)self updatingBraille];
        v43 = [(SCROBrailleUICaptionableBrailleLine *)v41 initWithBraille:v42 selection:0x7FFFFFFFFFFFFFFFLL, 0];

        v44 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
        [(SCROBrailleUICaptionableBrailleLine *)v43 setManualCaption:v44];

        [v3 addObject:v43];
      }
    }

    v45 = [(SCROBrailleUIDynamicBrailleView *)self finalizedLinesLock];
    [v45 unlock];

    v46 = [SCROBrailleUIVisualRepresentation alloc];
    v4 = [MEMORY[0x277CF3318] sharedModel];
    v8 = -[SCROBrailleUIVisualRepresentation initWithLines:focusedIndex:isList:](v46, "initWithLines:focusedIndex:isList:", v3, [v4 uiFocusedLineIndex], 0);
  }

  v47 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)resetUnreadText
{
  v3 = objc_opt_new();
  [(SCROBrailleUIDynamicBrailleView *)self setFinalizedUnreadText:v3];
}

- (void)setShowingBackButton:(BOOL)a3
{
  v3 = a3;
  if ([(SCROBrailleUIDynamicBrailleView *)self showsBackButton]&& self->_showingBackButton != v3)
  {
    if (v3)
    {
      v5 = [(SCROBrailleUIDynamicBrailleView *)self value];
      [(SCROBrailleUIDynamicBrailleView *)self setValueCache:v5];
    }

    else
    {
      [(SCROBrailleUIDynamicBrailleView *)self setValueCache:0];
    }

    self->_showingBackButton = v3;

    [(SCROBrailleUIDynamicBrailleView *)self display];
  }
}

@end