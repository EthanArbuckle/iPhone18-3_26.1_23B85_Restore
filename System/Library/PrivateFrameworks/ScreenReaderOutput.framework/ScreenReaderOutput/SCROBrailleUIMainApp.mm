@interface SCROBrailleUIMainApp
- (BOOL)_hasPopUp;
- (BOOL)_isInputBraille:(id)a3 partOfText:(id)a4;
- (BOOL)_isOpen;
- (BOOL)_isShowingInlineResult;
- (id)_calculatorFormatter;
- (id)_currentDateTimeListItemWithDetails:(BOOL)a3;
- (id)_mathCodeForPrintNumber:(id)a3;
- (id)_nemethForPrintNumber:(id)a3;
- (id)_stringBySanitizingWhitespaces:(id)a3;
- (id)_uebMathForPrintNumber:(id)a3;
- (id)views;
- (int64_t)_indexForMenuItem:(unint64_t)a3;
- (void)_closeInLineResult;
- (void)_closePopUp;
- (void)_handleActionInAppList:(id)a3;
- (void)_handleActionInChooseItemResult:(id)a3;
- (void)_handleActionInLaunchAppResult:(id)a3;
- (void)_handleActionInNemethCalculatorResult:(id)a3;
- (void)_handleActionInPopUp:(id)a3;
- (void)_replaceCalculatorListItemContentWith:(id)a3;
- (void)_runTimerUpdate;
- (void)_sendAnalytics;
- (void)_setUpDateTimeTimer;
- (void)_showInlineResultWithIdentifier:(id)a3 items:(id)a4;
- (void)_showMatchingResultWithIdentifier:(id)a3 fromArray:(id)a4 withDecodingMap:(id)a5;
- (void)_showPopUpWithIdentifier:(id)a3 Key:(id)a4;
- (void)_updateDateTimeView;
- (void)close;
- (void)handleAction:(id)a3;
- (void)handleResponse:(id)a3 forRequest:(id)a4;
- (void)navigateToMenuItem:(unint64_t)a3;
- (void)open;
@end

@implementation SCROBrailleUIMainApp

- (void)open
{
  v43 = *MEMORY[0x277D85DE8];
  if (![(SCROBrailleUIMainApp *)self _isOpen])
  {
    v3 = [SCROBrailleUIListItem alloc];
    v4 = SCROBrailleUILocString(@"launch.app.label");
    v5 = [(SCROBrailleUIListItem *)v3 initWithIdentifier:@"launch.app" label:v4 isInline:1];

    v6 = [SCROBrailleUIListItem alloc];
    v7 = SCROBrailleUILocString(@"choose.item.label");
    v8 = [(SCROBrailleUIListItem *)v6 initWithIdentifier:@"choose.item" label:v7 isInline:1];

    v9 = [SCROBrailleUIListItem alloc];
    v10 = SCROBrailleUILocString(@"braille.notes.label");
    v36 = [(SCROBrailleUIListItem *)v9 initWithIdentifier:@"braille.notes" label:v10 isInline:0];

    v11 = [SCROBrailleUIListItem alloc];
    v12 = SCROBrailleUILocString(@"finder.label");
    v13 = [(SCROBrailleUIListItem *)v11 initWithIdentifier:@"finder" label:v12 isInline:0];

    v14 = +[SCROBrailleUISettingsManager sharedInstance];
    if ([v14 calculatorUsesUEBMath])
    {
      v15 = @"nemeth.calculator.label.ueb";
    }

    else
    {
      v15 = @"nemeth.calculator.label";
    }

    v16 = SCROBrailleUILocString(v15);

    v33 = v16;
    v17 = [[SCROBrailleUIListItem alloc] initWithIdentifier:@"nemeth.calculator" label:v16 isInline:1];
    [(SCROBrailleUIListItem *)v17 setIsNemeth:1];
    v18 = [SCROBrailleUIListItem alloc];
    v19 = SCROBrailleUILocString(@"live.captions.label");
    v20 = [(SCROBrailleUIListItem *)v18 initWithIdentifier:@"live.captions" label:v19 isInline:0];

    v34 = self;
    v35 = [(SCROBrailleUIMainApp *)self _currentDateTimeListItemWithDetails:0];
    v21 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v22 = +[SCROBrailleUISettingsManager sharedInstance];
    v23 = [v22 enabledMainMenuItems];

    v24 = [v23 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v39;
      do
      {
        v27 = 0;
        do
        {
          if (*v39 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v38 + 1) + 8 * v27) integerValue];
          if (v28 > 2)
          {
            if (v28 > 4)
            {
              v29 = v20;
              if (v28 != 5)
              {
                if (v28 != 6)
                {
                  goto LABEL_22;
                }

                v29 = v35;
              }
            }

            else
            {
              v29 = v13;
              if (v28 != 3)
              {
                v29 = v17;
              }
            }

LABEL_21:
            [v21 addObject:v29];
            goto LABEL_22;
          }

          v29 = v5;
          if (!v28)
          {
            goto LABEL_21;
          }

          v29 = v8;
          if (v28 == 1)
          {
            goto LABEL_21;
          }

          v29 = v36;
          if (v28 == 2)
          {
            goto LABEL_21;
          }

LABEL_22:
          ++v27;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v25);
    }

    v30 = [[SCROBrailleUIListView alloc] initWithIdentifier:@"com.apple.scrod.braille.ui.main.menu" items:v21];
    [(SCROBrailleUIMainApp *)v34 setAppsListView:v30];

    v31 = [(SCROBrailleUIMainApp *)v34 appsListView];
    [v31 display];

    +[SCROBrailleUIFinderApp ensureBRFContainerExists];
    [(SCROBrailleUIMainApp *)v34 _sendAnalytics];
    [(SCROBrailleUIMainApp *)v34 _setUpDateTimeTimer];
    v37.receiver = v34;
    v37.super_class = SCROBrailleUIMainApp;
    [(SCROBrailleUIApp *)&v37 open];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_sendAnalytics
{
  v21[7] = *MEMORY[0x277D85DE8];
  v2 = +[SCROBrailleUISettingsManager sharedInstance];
  [v2 isVisualsEnabled];
  v20[0] = &unk_287651BF0;
  v20[1] = &unk_287651C08;
  v21[0] = @"launchApp";
  v21[1] = @"chooseItem";
  v20[2] = &unk_287651C20;
  v20[3] = &unk_287651C38;
  v21[2] = @"brailleNotes";
  v21[3] = @"brfFiles";
  v20[4] = &unk_287651C50;
  v20[5] = &unk_287651C68;
  v21[4] = @"calculator";
  v21[5] = @"liveCaptions";
  v20[6] = &unk_287651C80;
  v21[6] = @"dateTime";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:7];
  v4 = [v2 enabledMainMenuItems];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v2 enabledMainMenuItems];
    v7 = [v6 firstObject];
    v8 = [v3 objectForKey:v7];
  }

  else
  {
    v8 = @"none";
  }

  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v9 localeIdentifier];

  v11 = [v2 calculatorUsesUEBMath];
  v12 = @"Nemeth";
  if (v11)
  {
    v12 = @"UEB";
  }

  v17 = v8;
  v18 = v10;
  v19 = v12;
  v13 = v19;
  v14 = v10;
  v15 = v8;
  AnalyticsSendEventLazy();

  v16 = *MEMORY[0x277D85DE8];
}

id __38__SCROBrailleUIMainApp__sendAnalytics__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v6[0] = @"showVisualCount";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v8 = *(a1 + 32);
  v6[1] = @"firstApp";
  v6[2] = @"locale";
  v6[3] = @"mathCode";
  v7 = v2;
  v9 = *(a1 + 48);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:v6 count:4];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)close
{
  v3 = [(SCROBrailleUIApp *)self delegate];
  [v3 handleDidBrailleUIEnd];

  [(SCROBrailleUIMainApp *)self _closePopUp];
  [(SCROBrailleUIMainApp *)self _closeInLineResult];
  v4 = [(SCROBrailleUIMainApp *)self appsListView];
  [v4 dismiss];

  [(SCROBrailleUIMainApp *)self setAppsListView:0];
  v5.receiver = self;
  v5.super_class = SCROBrailleUIMainApp;
  [(SCROBrailleUIApp *)&v5 close];
}

- (void)navigateToMenuItem:(unint64_t)a3
{
  [objc_opt_class() closeAllAppsExceptTheLowerMostView];
  v5 = [(SCROBrailleUIMainApp *)self _indexForMenuItem:a3];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [(SCROBrailleUIMainApp *)self appsListView];
    [v7 setFocusedIndex:v6];

    v8 = [(SCROBrailleUIMainApp *)self appsListView];
    v9 = [v8 focusedItem];
    v10 = [v9 isInline];

    if (a3 == 6 || (v10 & 1) == 0)
    {
      v11 = [SCROBrailleUIAction alloc];
      v13 = [(SCROBrailleUIMainApp *)self appsListView];
      v12 = [(SCROBrailleUIAction *)v11 initWithType:1 originator:v13];
      [(SCROBrailleUIMainApp *)self handleAction:v12];
    }
  }
}

- (int64_t)_indexForMenuItem:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = +[SCROBrailleUISettingsManager sharedInstance];
  v5 = [v4 enabledMainMenuItems];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v5);
      }

      if ([*(*(&v14 + 1) + 8 * v10) integerValue] == a3)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)views
{
  v3 = objc_opt_new();
  v4 = [(SCROBrailleUIMainApp *)self popUpView];

  if (v4)
  {
    v5 = [(SCROBrailleUIMainApp *)self popUpView];
    [v3 addObject:v5];
  }

  v6 = [(SCROBrailleUIMainApp *)self inlineResultView];

  if (v6)
  {
    v7 = [(SCROBrailleUIMainApp *)self inlineResultView];
    [v3 addObject:v7];
  }

  v8 = [(SCROBrailleUIMainApp *)self appsListView];

  if (v8)
  {
    v9 = [(SCROBrailleUIMainApp *)self appsListView];
    [v3 addObject:v9];
  }

  return v3;
}

- (void)handleAction:(id)a3
{
  v13 = a3;
  if ([(SCROBrailleUIMainApp *)self _isOpen])
  {
    if ([(SCROBrailleUIMainApp *)self _hasPopUp])
    {
      [(SCROBrailleUIMainApp *)self _handleActionInPopUp:v13];
    }

    else if ([(SCROBrailleUIMainApp *)self _isShowingInlineResult])
    {
      v4 = [v13 originator];
      v5 = [v4 identifier];
      v6 = [v5 isEqualToString:@"launch.app"];

      if (v6)
      {
        [(SCROBrailleUIMainApp *)self _handleActionInLaunchAppResult:v13];
      }

      else
      {
        v7 = [v13 originator];
        v8 = [v7 identifier];
        v9 = [v8 isEqualToString:@"choose.item"];

        if (v9)
        {
          [(SCROBrailleUIMainApp *)self _handleActionInChooseItemResult:v13];
        }

        else
        {
          v10 = [v13 originator];
          v11 = [v10 identifier];
          v12 = [v11 isEqualToString:@"nemeth.calculator"];

          if (v12)
          {
            [(SCROBrailleUIMainApp *)self _handleActionInNemethCalculatorResult:v13];
          }
        }
      }
    }

    else
    {
      [(SCROBrailleUIMainApp *)self _handleActionInAppList:v13];
    }
  }
}

- (void)_handleActionInAppList:(id)a3
{
  v55[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 type] == 1)
  {
    v5 = [(SCROBrailleUIMainApp *)self appsListView];
    v6 = [v5 focusedItem];
    v7 = [v6 identifier];

    if ([v7 isEqualToString:@"launch.app"])
    {
      v54 = kSCROBrailleUIRequestTypeKey[0];
      v55[0] = &unk_287651C20;
      v8 = MEMORY[0x277CBEAC0];
      v9 = v55;
      v10 = &v54;
    }

    else
    {
      if (![v7 isEqualToString:@"choose.item"])
      {
        if ([v7 isEqualToString:@"braille.notes"])
        {
          v13 = SCROBrailleUIBrailleNotesApp;
        }

        else if ([v7 isEqualToString:@"finder"])
        {
          v13 = SCROBrailleUIFinderApp;
        }

        else
        {
          if ([v7 isEqualToString:@"nemeth.calculator"])
          {
            v17 = [(SCROBrailleUIMainApp *)self appsListView];
            v18 = [v17 value];

            v19 = +[SCROBrailleUISettingsManager sharedInstance];
            v20 = [v19 calculatorUsesUEBMath];

            v21 = [SCROBrailleUIMathString alloc];
            v46 = v18;
            if (v20)
            {
              v22 = [(SCROBrailleUIMathString *)v21 initWithUEBMath:v18];
            }

            else
            {
              v22 = [(SCROBrailleUIMathString *)v21 initWithNemeth:v18];
            }

            v45 = v22;
            v23 = [(SCROBrailleUIMathString *)v22 calculateRepresentation];
            CalculateClass = getCalculateClass();
            v24 = getCalculateKeyNumberFormatter();
            v50[0] = v24;
            v25 = [(SCROBrailleUIMainApp *)self _calculatorFormatter];
            v51[0] = v25;
            v26 = getCalculateKeyAssumeDegrees();
            v50[1] = v26;
            v27 = MEMORY[0x277CBEC38];
            v51[1] = MEMORY[0x277CBEC38];
            v28 = getCalculateKeyAllowPartialExpressions();
            v50[2] = v28;
            v51[2] = v27;
            v29 = getCalculateKeyScientificNotationFormat();
            v50[3] = v29;
            v51[3] = &unk_287651BF0;
            v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:4];
            v31 = CalculateClass;
            v44 = v23;
            v32 = [(objc_class *)v31 evaluate:v23 options:v30];

            if (v32)
            {
              v33 = [v32 formattedResult];
              [(SCROBrailleUIMainApp *)self setCalculatorResultCache:v33];
              v34 = [(SCROBrailleUIMainApp *)self _mathCodeForPrintNumber:v33];
              v35 = [[SCROBrailleUIListItem alloc] initWithIdentifier:@"nemeth.calculator.output" brailleLabel:v34 isInline:0];
              [(SCROBrailleUIListItem *)v35 setManualCaption:v33];
              v36 = [SCROBrailleUIListItem alloc];
              v37 = SCROBrailleUILocString(@"nemeth.calculator.copy.label");
              v38 = [(SCROBrailleUIListItem *)v36 initWithIdentifier:@"nemeth.calculator.copy" label:v37 isInline:0];

              v49[0] = v35;
              v49[1] = v38;
              v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
              [(SCROBrailleUIMainApp *)self _showInlineResultWithIdentifier:@"nemeth.calculator" items:v39];
            }

            else
            {
              [(SCROBrailleUIMainApp *)self _showPopUpWithIdentifier:@"no.match" Key:@"nemeth.calculator.error"];
            }

            goto LABEL_15;
          }

          if (![v7 isEqualToString:@"live.captions"])
          {
            if (![v7 isEqualToString:@"date.time"])
            {
              goto LABEL_15;
            }

            v11 = [(SCROBrailleUIMainApp *)self _currentDateTimeListItemWithDetails:1];
            v40 = [SCROBrailleUIListView alloc];
            v48 = v11;
            v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
            v42 = [(SCROBrailleUIListView *)v40 initWithIdentifier:@"date.time" items:v41];
            [(SCROBrailleUIMainApp *)self setPopUpView:v42];

            v12 = [(SCROBrailleUIMainApp *)self popUpView];
            [v12 display];
            goto LABEL_8;
          }

          v13 = SCROBrailleUILiveCaptionsApp;
        }

        v14 = [v13 alloc];
        v15 = [(SCROBrailleUIApp *)self delegate];
        v11 = [v14 initWithDelegate:v15];

        [v11 open];
        goto LABEL_14;
      }

      v52 = kSCROBrailleUIRequestTypeKey[0];
      v53 = &unk_287651C50;
      v8 = MEMORY[0x277CBEAC0];
      v9 = &v53;
      v10 = &v52;
    }

    v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
    v12 = [(SCROBrailleUIApp *)self delegate];
    [v12 handleBrailleUIRequest:v11];
LABEL_8:

LABEL_14:
LABEL_15:

    goto LABEL_16;
  }

  v47.receiver = self;
  v47.super_class = SCROBrailleUIMainApp;
  [(SCROBrailleUIApp *)&v47 handleAction:v4];
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionInLaunchAppResult:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 type];
  if (v5 == 2)
  {
    [(SCROBrailleUIMainApp *)self _closeInLineResult];
  }

  else if (v5 == 1)
  {
    v6 = [(SCROBrailleUIMainApp *)self inlineResultView];
    v7 = [v6 focusedItem];
    v8 = [v7 identifier];

    v13[0] = kSCROBrailleUIRequestTypeKey[0];
    v13[1] = kSCROBrailleUIRequestLaunchAppIDKey[0];
    v14[0] = &unk_287651C38;
    v14[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v10 = [(SCROBrailleUIApp *)self delegate];
    [v10 handleBrailleUIRequest:v9];

    +[SCROBrailleUIApp closeAllApps];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SCROBrailleUIMainApp;
    [(SCROBrailleUIApp *)&v12 handleAction:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionInChooseItemResult:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 type];
  if (v5 == 2)
  {
    [(SCROBrailleUIMainApp *)self _closeInLineResult];
  }

  else if (v5 == 1)
  {
    v6 = [(SCROBrailleUIMainApp *)self inlineResultView];
    v7 = [v6 focusedItem];
    v8 = [v7 identifier];

    v14[0] = kSCROBrailleUIRequestTypeKey[0];
    v14[1] = kSCROBrailleUIRequestChooseElementIDKey[0];
    v15[0] = &unk_287651C68;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "integerValue")}];
    v15[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

    v11 = [(SCROBrailleUIApp *)self delegate];
    [v11 handleBrailleUIRequest:v10];

    +[SCROBrailleUIApp closeAllApps];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SCROBrailleUIMainApp;
    [(SCROBrailleUIApp *)&v13 handleAction:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionInNemethCalculatorResult:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  switch(v5)
  {
    case 4:
      v11 = [(SCROBrailleUIMainApp *)self inlineResultView];
      v12 = [v11 focusedItem];
      v8 = [v12 identifier];

      if (![v8 isEqualToString:@"nemeth.calculator.output"])
      {
LABEL_15:

        break;
      }

      [(SCROBrailleUIMainApp *)self _replaceCalculatorListItemContentWith:&stru_28763D5C8];
      goto LABEL_14;
    case 2:
      [(SCROBrailleUIMainApp *)self _closeInLineResult];
      break;
    case 1:
      v6 = [(SCROBrailleUIMainApp *)self inlineResultView];
      v7 = [v6 focusedItem];
      v8 = [v7 identifier];

      if ([v8 isEqualToString:@"nemeth.calculator.output"])
      {
        v9 = [(SCROBrailleUIMainApp *)self calculatorResultCache];
        v10 = [(SCROBrailleUIMainApp *)self _mathCodeForPrintNumber:v9];
        [(SCROBrailleUIMainApp *)self _replaceCalculatorListItemContentWith:v10];
      }

      else
      {
        if (![v8 isEqualToString:@"nemeth.calculator.copy"])
        {
          goto LABEL_14;
        }

        v13 = [(SCROBrailleUIMainApp *)self calculatorResultCache];

        if (!v13)
        {
          goto LABEL_14;
        }

        v9 = +[SCROBrailleUIPasteBoard sharedBoard];
        v10 = [(SCROBrailleUIMainApp *)self calculatorResultCache];
        v14 = [(SCROBrailleUIMainApp *)self calculatorResultCache];
        v15 = [(SCROBrailleUIMainApp *)self _mathCodeForPrintNumber:v14];
        [v9 writeText:v10 withBraille:v15];
      }

LABEL_14:
      [(SCROBrailleUIMainApp *)self _closeInLineResult];
      goto LABEL_15;
    default:
      v16.receiver = self;
      v16.super_class = SCROBrailleUIMainApp;
      [(SCROBrailleUIApp *)&v16 handleAction:v4];
      break;
  }
}

- (void)_replaceCalculatorListItemContentWith:(id)a3
{
  v4 = a3;
  v5 = [SCROBrailleUIListItem alloc];
  v6 = [(SCROBrailleUIMainApp *)self appsListView];
  v7 = [v6 focusedItem];
  v8 = [v7 identifier];
  v9 = [(SCROBrailleUIMainApp *)self appsListView];
  v10 = [v9 focusedItem];
  v11 = [v10 label];
  v15 = [(SCROBrailleUIListItem *)v5 initWithIdentifier:v8 label:v11 prepopulatedBraille:v4 shouldBulkSelect:0];

  [(SCROBrailleUIListItem *)v15 setIsNemeth:1];
  v12 = [(SCROBrailleUIMainApp *)self appsListView];
  v13 = [(SCROBrailleUIMainApp *)self appsListView];
  [v12 replaceItemAtIndex:objc_msgSend(v13 with:{"focusedIndex"), v15}];

  v14 = [(SCROBrailleUIMainApp *)self appsListView];
  [v14 display];
}

- (void)_handleActionInPopUp:(id)a3
{
  v4 = a3;
  if (([v4 type] - 1) > 1)
  {
    v5.receiver = self;
    v5.super_class = SCROBrailleUIMainApp;
    [(SCROBrailleUIApp *)&v5 handleAction:v4];
  }

  else
  {
    [(SCROBrailleUIMainApp *)self _closePopUp];
  }
}

- (void)handleResponse:(id)a3 forRequest:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([(SCROBrailleUIMainApp *)self _isOpen]&& ![(SCROBrailleUIMainApp *)self _isShowingInlineResult])
  {
    [(SCROBrailleUIMainApp *)self _closePopUp];
    v7 = [v6 objectForKeyedSubscript:kSCROBrailleUIRequestTypeKey[0]];
    v8 = [v7 unsignedIntegerValue];

    if (v8 == 2)
    {
      v9 = @"launch.app";
      v10 = &__block_literal_global_14;
    }

    else
    {
      if (v8 != 4)
      {
        goto LABEL_8;
      }

      v9 = @"choose.item";
      v10 = &__block_literal_global_146;
    }

    [(SCROBrailleUIMainApp *)self _showMatchingResultWithIdentifier:v9 fromArray:v11 withDecodingMap:v10];
  }

LABEL_8:
}

id __50__SCROBrailleUIMainApp_handleResponse_forRequest___block_invoke(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"name";
  v2 = kSCROBrailleUIResponseAppsInfoAppNameKey[0];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:v2];
  v9[1] = @"ID";
  v10[0] = v4;
  v5 = [v3 objectForKeyedSubscript:kSCROBrailleUIResponseAppsInfoAppIDKey[0]];

  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id __50__SCROBrailleUIMainApp_handleResponse_forRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"name";
  v2 = kSCROBrailleUIResponseElementsInfoElementNameKey[0];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:v2];
  v10[1] = @"ID";
  v11[0] = v4;
  v5 = [v3 objectForKeyedSubscript:kSCROBrailleUIResponseElementsInfoElementIDKey[0]];

  v6 = [v5 stringValue];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_showMatchingResultWithIdentifier:(id)a3 fromArray:(id)a4 withDecodingMap:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v7 = a4;
  v8 = a5;
  v34 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = v7;
  v10 = v8;
  obj = v9;
  v37 = [v9 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v37)
  {
    v11 = *v39;
    v12 = v8 + 16;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = v10[2](v10, *(*(&v38 + 1) + 8 * i));
        v15 = [v14 objectForKeyedSubscript:@"name"];
        v16 = [v14 objectForKeyedSubscript:@"ID"];
        v17 = v16;
        if (v15)
        {
          v18 = v16 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          v19 = [(SCROBrailleUIMainApp *)self appsListView];
          [v19 value];
          v20 = v12;
          v21 = v11;
          v23 = v22 = v10;
          v24 = [(SCROBrailleUIMainApp *)self _isInputBraille:v23 partOfText:v15];

          v10 = v22;
          v11 = v21;
          v12 = v20;

          if (v24)
          {
            v25 = [[SCROBrailleUIListItem alloc] initWithIdentifier:v17 label:v15 isInline:0 shouldPreserveCase:1];
            [v34 addObject:v25];
          }
        }
      }

      v37 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v37);
  }

  if ([v34 count])
  {
    v26 = v33;
    if ([v34 count] == 1)
    {
      v27 = [v34 objectAtIndex:0];
      v28 = [v27 identifier];

      if ([v33 isEqualToString:@"launch.app"])
      {
        v44[0] = kSCROBrailleUIRequestTypeKey[0];
        v44[1] = kSCROBrailleUIRequestLaunchAppIDKey[0];
        v45[0] = &unk_287651C38;
        v45[1] = v28;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
        if (!v29)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (![v33 isEqualToString:@"choose.item"])
        {
          goto LABEL_24;
        }

        v42[0] = kSCROBrailleUIRequestTypeKey[0];
        v42[1] = kSCROBrailleUIRequestChooseElementIDKey[0];
        v43[0] = &unk_287651C68;
        v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v28, "integerValue")}];
        v43[1] = v30;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];

        if (!v29)
        {
          goto LABEL_24;
        }
      }

      v31 = [(SCROBrailleUIApp *)self delegate];
      [v31 handleBrailleUIRequest:v29];

      +[SCROBrailleUIApp closeAllApps];
LABEL_24:

      goto LABEL_25;
    }

    [(SCROBrailleUIMainApp *)self _showInlineResultWithIdentifier:v33 items:v34];
  }

  else
  {
    [(SCROBrailleUIMainApp *)self _showPopUpWithIdentifier:@"no.match" Key:@"no.match"];
    v26 = v33;
  }

LABEL_25:

  v32 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isOpen
{
  v2 = [(SCROBrailleUIMainApp *)self appsListView];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_isShowingInlineResult
{
  v2 = [(SCROBrailleUIMainApp *)self inlineResultView];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_hasPopUp
{
  v2 = [(SCROBrailleUIMainApp *)self popUpView];
  v3 = v2 != 0;

  return v3;
}

- (void)_showInlineResultWithIdentifier:(id)a3 items:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(SCROBrailleUIMainApp *)self _isOpen]&& ![(SCROBrailleUIMainApp *)self _isShowingInlineResult]&& ![(SCROBrailleUIMainApp *)self _hasPopUp])
  {
    v7 = [[SCROBrailleUIListView alloc] initWithIdentifier:v9 items:v6];
    [(SCROBrailleUIMainApp *)self setInlineResultView:v7];

    v8 = [(SCROBrailleUIMainApp *)self inlineResultView];
    [v8 display];
  }
}

- (void)_showPopUpWithIdentifier:(id)a3 Key:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(SCROBrailleUIMainApp *)self _isOpen]&& ![(SCROBrailleUIMainApp *)self _hasPopUp])
  {
    v8 = [SCROBrailleUIListItem alloc];
    v9 = SCROBrailleUILocString(v7);
    v10 = [(SCROBrailleUIListItem *)v8 initWithIdentifier:v6 label:v9 isInline:0];

    v11 = [SCROBrailleUIListView alloc];
    v16[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v13 = [(SCROBrailleUIListView *)v11 initWithIdentifier:@"launch.app" items:v12];
    [(SCROBrailleUIMainApp *)self setPopUpView:v13];

    v14 = [(SCROBrailleUIMainApp *)self popUpView];
    [v14 display];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_closeInLineResult
{
  v3 = [(SCROBrailleUIMainApp *)self inlineResultView];
  [v3 dismiss];

  [(SCROBrailleUIMainApp *)self setInlineResultView:0];
}

- (void)_closePopUp
{
  v3 = [(SCROBrailleUIMainApp *)self popUpView];
  [v3 dismiss];

  [(SCROBrailleUIMainApp *)self setPopUpView:0];
}

- (BOOL)_isInputBraille:(id)a3 partOfText:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[SCROBrailleTranslationManager inputManager];
  v8 = 1;
  v9 = [v7 textForPrintBraille:v5 language:0 mode:1 locations:0];

  v10 = +[SCROBrailleTranslationManager inputManager];
  v11 = [v6 lowercaseString];
  v12 = [v10 printBrailleForText:v11 language:0 mode:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{0, 0}];

  if ([v5 length])
  {
    if ([v9 length] && (objc_msgSend(v12, "hasPrefix:", v5) & 1) == 0)
    {
      v13 = [v6 localizedLowercaseString];
      v14 = [v9 localizedLowercaseString];
      v8 = [v13 hasPrefix:v14];
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (id)_calculatorFormatter
{
  if (_calculatorFormatter_onceToken != -1)
  {
    [SCROBrailleUIMainApp _calculatorFormatter];
  }

  v3 = _calculatorFormatter_formatter;

  return v3;
}

uint64_t __44__SCROBrailleUIMainApp__calculatorFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = _calculatorFormatter_formatter;
  _calculatorFormatter_formatter = v0;

  [_calculatorFormatter_formatter setNumberStyle:1];
  [_calculatorFormatter_formatter setMaximumIntegerDigits:20];
  [_calculatorFormatter_formatter setUsesGroupingSeparator:0];
  [_calculatorFormatter_formatter setUsesSignificantDigits:0];
  v2 = _calculatorFormatter_formatter;

  return [v2 setMaximumFractionDigits:15];
}

- (id)_mathCodeForPrintNumber:(id)a3
{
  v4 = a3;
  v5 = +[SCROBrailleUISettingsManager sharedInstance];
  v6 = [v5 calculatorUsesUEBMath];

  if (v6)
  {
    [(SCROBrailleUIMainApp *)self _uebMathForPrintNumber:v4];
  }

  else
  {
    [(SCROBrailleUIMainApp *)self _nemethForPrintNumber:v4];
  }
  v7 = ;

  return v7;
}

- (id)_nemethForPrintNumber:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if ([v3 length])
  {
    v5 = 0;
    do
    {
      v6 = [v3 substringWithRange:{v5, 1}];
      v7 = [&unk_2876523D8 objectForKeyedSubscript:v6];
      if (v7)
      {
        [v4 appendString:v7];
      }

      ++v5;
    }

    while (v5 < [v3 length]);
  }

  return v4;
}

- (id)_uebMathForPrintNumber:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if ([v3 length] && objc_msgSend(v3, "characterAtIndex:", 0) == 45)
  {
    [v4 appendString:@"⠐⠤"];
  }

  [v4 appendString:@"⠼"];
  if ([v3 length])
  {
    v5 = 0;
    do
    {
      v6 = [v3 substringWithRange:{v5, 1}];
      v7 = [&unk_287652400 objectForKeyedSubscript:v6];
      if (v7)
      {
        [v4 appendString:v7];
      }

      ++v5;
    }

    while (v5 < [v3 length]);
  }

  return v4;
}

- (void)_setUpDateTimeTimer
{
  v3 = dispatch_queue_create("com.apple.scrod.braille.ui.date.time", 0);
  dateTimeQueue = self->_dateTimeQueue;
  self->_dateTimeQueue = v3;

  v5 = [MEMORY[0x277CBEAA8] now];
  currentDateTime = self->_currentDateTime;
  self->_currentDateTime = v5;

  v7 = [objc_alloc(MEMORY[0x277CE6950]) initWithTargetSerialQueue:self->_dateTimeQueue];
  dateTimeTimer = self->_dateTimeTimer;
  self->_dateTimeTimer = v7;

  [(SCROBrailleUIMainApp *)self _runTimerUpdate];
}

- (void)_runTimerUpdate
{
  dateTimeTimer = self->_dateTimeTimer;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__SCROBrailleUIMainApp__runTimerUpdate__block_invoke;
  v3[3] = &unk_279B73DD0;
  v3[4] = self;
  [(AXDispatchTimer *)dateTimeTimer afterDelay:v3 processBlock:0.1];
}

void __39__SCROBrailleUIMainApp__runTimerUpdate__block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277CBEAA8] now];
  v2 = [*(a1 + 32) currentDateTime];
  [v2 timeIntervalSince1970];
  v4 = v3;
  [v7 timeIntervalSince1970];
  v6 = v5;

  if (v4 < v6)
  {
    [*(a1 + 32) setCurrentDateTime:v7];
    [*(a1 + 32) _updateDateTimeView];
  }

  [*(a1 + 32) _runTimerUpdate];
}

- (void)_updateDateTimeView
{
  v3 = [(SCROBrailleUIMainApp *)self appsListView];
  v4 = [v3 focusedItem];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:@"date.time"];

  if (v6)
  {
    v7 = [(SCROBrailleUIMainApp *)self _currentDateTimeListItemWithDetails:0];
    v8 = [(SCROBrailleUIMainApp *)self appsListView];
    v9 = [(SCROBrailleUIMainApp *)self appsListView];
    [v8 replaceItemAtIndex:objc_msgSend(v9 with:{"focusedIndex"), v7}];

    v10 = [(SCROBrailleUIMainApp *)self appsListView];
    [v10 displaySilently:1];
  }

  v11 = [(SCROBrailleUIMainApp *)self popUpView];
  v12 = [v11 focusedItem];
  v13 = [v12 identifier];
  v14 = [v13 isEqualToString:@"date.time"];

  if (v14)
  {
    v18 = [(SCROBrailleUIMainApp *)self _currentDateTimeListItemWithDetails:1];
    v15 = [(SCROBrailleUIMainApp *)self popUpView];
    v16 = [(SCROBrailleUIMainApp *)self popUpView];
    [v15 replaceItemAtIndex:objc_msgSend(v16 with:{"focusedIndex"), v18}];

    v17 = [(SCROBrailleUIMainApp *)self popUpView];
    [v17 displaySilently:1];
  }
}

- (id)_currentDateTimeListItemWithDetails:(BOOL)a3
{
  v3 = a3;
  if (!self->_currentDateTime)
  {
    v5 = [MEMORY[0x277CBEAA8] now];
    currentDateTime = self->_currentDateTime;
    self->_currentDateTime = v5;
  }

  if (_currentDateTimeListItemWithDetails__onceToken != -1)
  {
    [SCROBrailleUIMainApp _currentDateTimeListItemWithDetails:];
  }

  v7 = &_currentDateTimeListItemWithDetails__expandedFormatter;
  if (!v3)
  {
    v7 = &_currentDateTimeListItemWithDetails__formatter;
  }

  v8 = *v7;
  v9 = [(SCROBrailleUIMainApp *)self currentDateTime];
  v10 = [v8 stringFromDate:v9];

  v11 = [(SCROBrailleUIMainApp *)self _stringBySanitizingWhitespaces:v10];

  v12 = [[SCROBrailleUIListItem alloc] initWithIdentifier:@"date.time" label:v11 isInline:0];
  v13 = SCROBrailleUILocString(@"date.time.label");
  [(SCROBrailleUIListItem *)v12 setManualCaption:v13];

  [(SCROBrailleUIListItem *)v12 setUpdatesAutomatically:1];

  return v12;
}

uint64_t __60__SCROBrailleUIMainApp__currentDateTimeListItemWithDetails___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _currentDateTimeListItemWithDetails__formatter;
  _currentDateTimeListItemWithDetails__formatter = v0;

  v2 = _currentDateTimeListItemWithDetails__formatter;
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  [v2 setLocale:v3];

  v4 = _currentDateTimeListItemWithDetails__formatter;
  v5 = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v4 setTimeZone:v5];

  [_currentDateTimeListItemWithDetails__formatter setTimeStyle:2];
  [_currentDateTimeListItemWithDetails__formatter setDateStyle:0];
  v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  v7 = _currentDateTimeListItemWithDetails__expandedFormatter;
  _currentDateTimeListItemWithDetails__expandedFormatter = v6;

  v8 = _currentDateTimeListItemWithDetails__expandedFormatter;
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  [v8 setLocale:v9];

  v10 = _currentDateTimeListItemWithDetails__expandedFormatter;
  v11 = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v10 setTimeZone:v11];

  [_currentDateTimeListItemWithDetails__expandedFormatter setTimeStyle:3];
  v12 = _currentDateTimeListItemWithDetails__expandedFormatter;

  return [v12 setDateStyle:3];
}

- (id)_stringBySanitizingWhitespaces:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 whitespaceNewlineAndSpecialCharacterSet];
  v6 = [v4 scrStringByReplacingCharactersInSet:v5 withString:@" "];

  return v6;
}

@end