@interface UIPrintPresetsOption
- (BOOL)isItemSelected:(id)selected;
- (BOOL)printerContainsQuality:(int64_t)quality;
- (BOOL)shouldShow;
- (NSMutableArray)presetNames;
- (UIPrintPresetsOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)appliedPresetsSummary;
- (id)createPrintOptionTableViewCell;
- (id)getPrinterPresets;
- (id)getStandardPresets;
- (id)itemList;
- (id)selectedItems;
- (id)summary;
- (id)titleForFooterInSection:(int64_t)section;
- (id)titleForHeaderInSection:(int64_t)section;
- (int64_t)listItemSelected:(id)selected;
- (void)currentPrinterChanged;
- (void)dealloc;
- (void)didSelectPrintOption;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateFromPrintInfo;
- (void)updatePresetsList;
- (void)updatePrintInfoWithSelectedIndex:(id)index;
@end

@implementation UIPrintPresetsOption

- (UIPrintPresetsOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  infoCopy = info;
  v18.receiver = self;
  v18.super_class = UIPrintPresetsOption;
  v7 = [(UIPrintOption *)&v18 initWithPrintInfo:infoCopy printPanelViewController:controller];
  if (v7)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"Presets" value:@"Presets" table:@"Localizable"];
    [(UIPrintOption *)v7 setTitle:v9];

    [(UIPrintPresetsOption *)v7 setPresets:0];
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
    [(UIPrintPresetsOption *)v7 setSelectedIndexPath:v10];

    [(UIPrintPresetsOption *)v7 updateFromPrintInfo];
    printInfo = [(UIPrintOption *)v7 printInfo];
    [printInfo addObserver:v7 forKeyPath:0x2871AF190 options:0 context:0];

    printInfo2 = [(UIPrintOption *)v7 printInfo];
    [printInfo2 addObserver:v7 forKeyPath:0x2871AF150 options:0 context:0];

    currentPrinter = [infoCopy currentPrinter];
    [(UIPrintPresetsOption *)v7 setObservedPrinter:currentPrinter];

    observedPrinter = [(UIPrintPresetsOption *)v7 observedPrinter];
    [observedPrinter addObserver:v7 forKeyPath:0x2871B0290 options:0 context:0];

    printInfo3 = [(UIPrintOption *)v7 printInfo];
    v16 = [printInfo3 copy];
    [(UIPrintPresetsOption *)v7 setOrigPrintInfo:v16];
  }

  return v7;
}

- (void)dealloc
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF190];

  printInfo2 = [(UIPrintOption *)self printInfo];
  [printInfo2 removeObserver:self forKeyPath:0x2871AF150];

  observedPrinter = [(UIPrintPresetsOption *)self observedPrinter];
  [observedPrinter removeObserver:self forKeyPath:0x2871B0290];

  v6.receiver = self;
  v6.super_class = UIPrintPresetsOption;
  [(UIPrintPresetsOption *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__UIPrintPresetsOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = pathCopy;
  selfCopy = self;
  v8 = pathCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __71__UIPrintPresetsOption_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:0x2871AF150])
  {
    v2 = [*(a1 + 40) observedPrinter];
    [v2 removeObserver:*(a1 + 40) forKeyPath:0x2871B0290];

    v3 = [*(a1 + 40) printInfo];
    v4 = [v3 currentPrinter];
    [*(a1 + 40) setObservedPrinter:v4];

    v5 = [*(a1 + 40) observedPrinter];
    [v5 addObserver:*(a1 + 40) forKeyPath:0x2871B0290 options:0 context:0];

    [*(a1 + 40) currentPrinterChanged];
  }

  else if ([*(a1 + 32) isEqualToString:0x2871B0290])
  {
    [*(a1 + 40) updatePresetsList];
  }

  v6 = *(a1 + 40);

  return [v6 updateFromPrintInfo];
}

- (BOOL)shouldShow
{
  presets = [(UIPrintPresetsOption *)self presets];
  if (presets)
  {
    presets2 = [(UIPrintPresetsOption *)self presets];
    v5 = [presets2 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateFromPrintInfo
{
  v25 = *MEMORY[0x277D85DE8];
  printInfo = [(UIPrintOption *)self printInfo];
  jobPreset = [printInfo jobPreset];
  v5 = [jobPreset objectForKey:@"PresetTitle"];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  presets = [(UIPrintPresetsOption *)self presets];
  v7 = [presets countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(presets);
      }

      v11 = *(*(&v20 + 1) + 8 * v10);
      v12 = [v11 objectForKey:@"PresetTitle"];
      if ([v12 isEqualToString:v5])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [presets countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    presets2 = [(UIPrintPresetsOption *)self presets];
    v14 = [presets2 indexOfObject:v11];

    v15 = [MEMORY[0x277CCAA70] indexPathForRow:v14 inSection:1];

    if (v15)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v15 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
LABEL_12:
  [(UIPrintPresetsOption *)self setSelectedIndexPath:v15];

  tableViewCell = [(UIPrintOption *)self tableViewCell];
  contentConfiguration = [tableViewCell contentConfiguration];

  summary = [(UIPrintPresetsOption *)self summary];
  [contentConfiguration setSecondaryText:summary];

  tableViewCell2 = [(UIPrintOption *)self tableViewCell];
  [tableViewCell2 setContentConfiguration:contentConfiguration];
}

- (void)updatePresetsList
{
  getPrinterPresets = [(UIPrintPresetsOption *)self getPrinterPresets];
  [(UIPrintPresetsOption *)self setPrinterPresets:getPrinterPresets];

  getStandardPresets = [(UIPrintPresetsOption *)self getStandardPresets];
  [(UIPrintPresetsOption *)self setStandardPresets:getStandardPresets];

  printerPresets = [(UIPrintPresetsOption *)self printerPresets];
  if ([printerPresets count])
  {
    [(UIPrintPresetsOption *)self printerPresets];
  }

  else
  {
    [(UIPrintPresetsOption *)self standardPresets];
  }
  v6 = ;
  [(UIPrintPresetsOption *)self setPresets:v6];

  [(UIPrintPresetsOption *)self setPresetNames:0];
  appliedPresetsSummary = [(UIPrintPresetsOption *)self appliedPresetsSummary];
  appliedPresetsSummaryLabel = [(UIPrintPresetsOption *)self appliedPresetsSummaryLabel];
  [appliedPresetsSummaryLabel setText:appliedPresetsSummary];
}

- (void)currentPrinterChanged
{
  [(UIPrintPresetsOption *)self updatePresetsList];
  printerPresets = [(UIPrintPresetsOption *)self printerPresets];

  printInfo = [(UIPrintOption *)self printInfo];
  v5 = printInfo;
  if (printerPresets)
  {
    [printInfo setJobPreset:0];
  }

  else
  {
    [printInfo setAppliedPresetsList:0];
  }
}

- (void)updatePrintInfoWithSelectedIndex:(id)index
{
  indexCopy = index;
  if (![indexCopy section])
  {
    printInfo = [(UIPrintOption *)self printInfo];
    origPrintInfo = [(UIPrintPresetsOption *)self origPrintInfo];
    [printInfo resetToDefaultSettings:origPrintInfo];
LABEL_14:

    goto LABEL_15;
  }

  presets = [(UIPrintPresetsOption *)self presets];
  v5 = [presets count];
  selectedIndexPath = [(UIPrintPresetsOption *)self selectedIndexPath];
  v7 = [selectedIndexPath row];

  if (v5 <= v7)
  {
    goto LABEL_16;
  }

  presets2 = [(UIPrintPresetsOption *)self presets];
  printInfo = [presets2 objectAtIndex:{objc_msgSend(indexCopy, "row")}];

  if (printInfo)
  {
    v10 = [printInfo objectForKey:@"PresetType"];
    integerValue = [v10 integerValue];

    printInfo2 = [(UIPrintOption *)self printInfo];
    v13 = printInfo2;
    if (integerValue)
    {
      appliedPresetsList = [printInfo2 appliedPresetsList];
      if (appliedPresetsList)
      {
        printInfo3 = [(UIPrintOption *)self printInfo];
        appliedPresetsList2 = [printInfo3 appliedPresetsList];
        origPrintInfo = [appliedPresetsList2 mutableCopy];
      }

      else
      {
        origPrintInfo = [MEMORY[0x277CBEB18] array];
      }

      v19 = [origPrintInfo containsObject:printInfo];
      [origPrintInfo removeObject:printInfo];
      if ((v19 & 1) == 0)
      {
        [origPrintInfo addObject:printInfo];
        printInfo4 = [(UIPrintOption *)self printInfo];
        v21 = [printInfo objectForKey:@"PresetInfo"];
        [printInfo4 updateWithDictionary:v21];
      }

      printInfo5 = [(UIPrintOption *)self printInfo];
      [printInfo5 setAppliedPresetsList:origPrintInfo];

      appliedPresetsSummary = [(UIPrintPresetsOption *)self appliedPresetsSummary];
      appliedPresetsSummaryLabel = [(UIPrintPresetsOption *)self appliedPresetsSummaryLabel];
      [appliedPresetsSummaryLabel setText:appliedPresetsSummary];

      appliedPresetsSummaryLabel2 = [(UIPrintPresetsOption *)self appliedPresetsSummaryLabel];
      [appliedPresetsSummaryLabel2 sizeToFit];
    }

    else
    {
      [printInfo2 setJobPreset:printInfo];

      origPrintInfo = [(UIPrintOption *)self printInfo];
      appliedPresetsSummaryLabel2 = [printInfo objectForKey:@"PresetInfo"];
      [origPrintInfo updateWithDictionary:appliedPresetsSummaryLabel2];
    }

    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
}

- (id)appliedPresetsSummary
{
  v22 = *MEMORY[0x277D85DE8];
  printerPresets = [(UIPrintPresetsOption *)self printerPresets];
  v4 = [printerPresets count];

  if (v4)
  {
    printInfo = [(UIPrintOption *)self printInfo];
    appliedPresetsList = [printInfo appliedPresetsList];

    if ([appliedPresetsList count])
    {
      string = [MEMORY[0x277CCAB68] string];
      reverseObjectEnumerator = [appliedPresetsList reverseObjectEnumerator];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v13 = [*(*(&v17 + 1) + 8 * i) objectForKey:@"PresetTitle"];
            PMAppendToSummaryString(v13, string);
          }

          v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }
    }

    else
    {
      string = 0;
    }

    v15 = @"No Presets Applied";
    if (string)
    {
      v15 = string;
    }

    v14 = v15;
  }

  else
  {
    v14 = &stru_2871AE610;
  }

  return v14;
}

- (NSMutableArray)presetNames
{
  selfCopy = self;
  v26 = *MEMORY[0x277D85DE8];
  if (!self->_presetNames)
  {
    presets = [(UIPrintPresetsOption *)self presets];
    if (presets)
    {
      v6 = presets;
      presets2 = [(UIPrintPresetsOption *)selfCopy presets];
      v8 = [presets2 count];

      if (v8)
      {
        v9 = MEMORY[0x277CBEB18];
        presets3 = [(UIPrintPresetsOption *)selfCopy presets];
        v11 = [v9 arrayWithCapacity:{objc_msgSend(presets3, "count")}];

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v20 = selfCopy;
        presets4 = [(UIPrintPresetsOption *)selfCopy presets];
        v13 = [presets4 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v22;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v22 != v15)
              {
                objc_enumerationMutation(presets4);
              }

              v17 = [*(*(&v21 + 1) + 8 * i) objectForKey:@"PresetTitle"];
              if (v17)
              {
                v18 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v17 forKey:@"Title"];
                [(NSMutableArray *)v11 addObject:v18];
              }
            }

            v14 = [presets4 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v14);
        }

        selfCopy = v20;
        presetNames = v20->_presetNames;
        v20->_presetNames = v11;
      }
    }
  }

  v3 = selfCopy->_presetNames;

  return v3;
}

- (id)createPrintOptionTableViewCell
{
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v5 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionListCell"];

  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  title = [(UIPrintOption *)self title];
  [valueCellConfiguration setText:title];

  summary = [(UIPrintPresetsOption *)self summary];
  [valueCellConfiguration setSecondaryText:summary];

  [v5 setContentConfiguration:valueCellConfiguration];
  [v5 setAccessoryType:1];
  [v5 setSelectionStyle:3];
  [v5 setItemListDelegate:self];
  [(UIPrintOption *)self setTableViewCell:v5];

  return v5;
}

- (id)itemList
{
  v3 = MEMORY[0x277CBEA60];
  v4 = MEMORY[0x277CBEAC0];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"Reset to Default Settings" value:@"Reset to Default Settings" table:@"Localizable"];
  v7 = [v4 dictionaryWithObject:v6 forKey:@"Title"];
  v8 = [v3 arrayWithObject:v7];
  presetNames = [(UIPrintPresetsOption *)self presetNames];
  v10 = [v3 arrayWithObjects:{v8, presetNames, 0}];

  return v10;
}

- (id)selectedItems
{
  v26 = *MEMORY[0x277D85DE8];
  printInfo = [(UIPrintOption *)self printInfo];
  appliedPresetsList = [printInfo appliedPresetsList];

  if (appliedPresetsList)
  {
    array = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    printInfo2 = [(UIPrintOption *)self printInfo];
    appliedPresetsList2 = [printInfo2 appliedPresetsList];

    v8 = [appliedPresetsList2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(appliedPresetsList2);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = MEMORY[0x277CCAA70];
          presets = [(UIPrintPresetsOption *)self presets];
          v15 = [v13 indexPathForRow:objc_msgSend(presets inSection:{"indexOfObject:", v12), 1}];

          [array addObject:v15];
        }

        v9 = [appliedPresetsList2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }
  }

  else
  {
    selectedIndexPath = [(UIPrintPresetsOption *)self selectedIndexPath];
    section = [selectedIndexPath section];

    if (section == 1)
    {
      v18 = MEMORY[0x277CBEB18];
      selectedIndexPath2 = [(UIPrintPresetsOption *)self selectedIndexPath];
      array = [v18 arrayWithObject:selectedIndexPath2];
    }

    else
    {
      array = 0;
    }
  }

  return array;
}

- (BOOL)isItemSelected:(id)selected
{
  selectedCopy = selected;
  presets = [(UIPrintPresetsOption *)self presets];
  v6 = [selectedCopy row];

  v7 = [presets objectAtIndex:v6];

  printInfo = [(UIPrintOption *)self printInfo];
  appliedPresetsList = [printInfo appliedPresetsList];
  LOBYTE(v6) = [appliedPresetsList containsObject:v7];

  return v6;
}

- (id)titleForHeaderInSection:(int64_t)section
{
  if (section)
  {
    printerPresets = [(UIPrintPresetsOption *)self printerPresets];
    v4 = [printerPresets count];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    if (v4)
    {
      v7 = @"Printer Presets";
    }

    else
    {
      v7 = @"Standard Presets";
    }

    v8 = [v5 localizedStringForKey:v7 value:v7 table:@"Localizable"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)titleForFooterInSection:(int64_t)section
{
  if (section && (-[UIPrintPresetsOption printerPresets](self, "printerPresets"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v5))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"%@\n\n%@" value:@"%@\n\n%@" table:@"Localizable"];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"The most recent selection may override previously selected presets." value:@"The most recent selection may override previously selected presets." table:@"Localizable"];
    appliedPresetsSummary = [(UIPrintPresetsOption *)self appliedPresetsSummary];
    v12 = [v6 stringWithFormat:v8, v10, appliedPresetsSummary];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)listItemSelected:(id)selected
{
  selectedCopy = selected;
  [(UIPrintPresetsOption *)self setSelectedIndexPath:selectedCopy];
  [(UIPrintPresetsOption *)self updatePrintInfoWithSelectedIndex:selectedCopy];
  tableViewCell = [(UIPrintOption *)self tableViewCell];
  contentConfiguration = [tableViewCell contentConfiguration];

  summary = [(UIPrintPresetsOption *)self summary];
  [contentConfiguration setSecondaryText:summary];

  tableViewCell2 = [(UIPrintOption *)self tableViewCell];
  [tableViewCell2 setContentConfiguration:contentConfiguration];

  section = [selectedCopy section];
  if (section)
  {
    printerPresets = [(UIPrintPresetsOption *)self printerPresets];
    v11 = [printerPresets count] != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)printerContainsQuality:(int64_t)quality
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  printInfo = [(UIPrintOption *)self printInfo];
  currentPrinter = [printInfo currentPrinter];
  supportedQualities = [currentPrinter supportedQualities];

  v7 = [supportedQualities countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(supportedQualities);
        }

        if ([*(*(&v13 + 1) + 8 * i) integerValue] == quality)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [supportedQualities countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)getStandardPresets
{
  printInfo = [(UIPrintOption *)self printInfo];
  currentPrinter = [printInfo currentPrinter];

  if (currentPrinter)
  {
    array = [MEMORY[0x277CBEB18] array];
    grayscaleStandardPreset = [(UIPrintPresetsOption *)self grayscaleStandardPreset];

    if (grayscaleStandardPreset)
    {
      v7 = 0;
    }

    else
    {
      v8 = MEMORY[0x277CBEAC0];
      v9 = [MEMORY[0x277CCABB0] numberWithInt:2];
      v10 = [MEMORY[0x277CCABB0] numberWithInt:4];
      v7 = [v8 dictionaryWithObjectsAndKeys:{v9, 0x2871AF790, v10, 0x2871AF7B0, 0}];

      v11 = MEMORY[0x277CBEAC0];
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:0];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"Black and White" value:@"Black and White" table:@"Localizable"];
      v15 = [v11 dictionaryWithObjectsAndKeys:{v12, @"PresetType", v14, @"PresetTitle", v7, @"PresetInfo", 0}];
      [(UIPrintPresetsOption *)self setGrayscaleStandardPreset:v15];
    }

    grayscaleStandardPreset2 = [(UIPrintPresetsOption *)self grayscaleStandardPreset];
    [array addObject:grayscaleStandardPreset2];

    if ([(UIPrintPresetsOption *)self printerContainsQuality:3])
    {
      grayscaleDraftStandardPreset = [(UIPrintPresetsOption *)self grayscaleDraftStandardPreset];

      if (!grayscaleDraftStandardPreset)
      {
        v18 = MEMORY[0x277CBEAC0];
        v19 = [MEMORY[0x277CCABB0] numberWithInt:2];
        v20 = [MEMORY[0x277CCABB0] numberWithInt:3];
        v21 = [v18 dictionaryWithObjectsAndKeys:{v19, 0x2871AF790, v20, 0x2871AF7B0, 0}];

        v22 = MEMORY[0x277CBEAC0];
        v23 = [MEMORY[0x277CCABB0] numberWithInteger:0];
        v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v25 = [v24 localizedStringForKey:@"Black and White - Draft" value:@"Black and White - Draft" table:@"Localizable"];
        v26 = [v22 dictionaryWithObjectsAndKeys:{v23, @"PresetType", v25, @"PresetTitle", v21, @"PresetInfo", 0}];
        [(UIPrintPresetsOption *)self setGrayscaleDraftStandardPreset:v26];

        v7 = v21;
      }

      grayscaleDraftStandardPreset2 = [(UIPrintPresetsOption *)self grayscaleDraftStandardPreset];
      [array addObject:grayscaleDraftStandardPreset2];
    }

    printInfo2 = [(UIPrintOption *)self printInfo];
    currentPrinter2 = [printInfo2 currentPrinter];
    supportsColor = [currentPrinter2 supportsColor];

    if (supportsColor)
    {
      colorStandardPreset = [(UIPrintPresetsOption *)self colorStandardPreset];

      if (!colorStandardPreset)
      {
        v32 = MEMORY[0x277CBEAC0];
        v33 = [MEMORY[0x277CCABB0] numberWithInt:0];
        v34 = [MEMORY[0x277CCABB0] numberWithInt:4];
        v35 = [v32 dictionaryWithObjectsAndKeys:{v33, 0x2871AF790, v34, 0x2871AF7B0, 0}];

        v36 = MEMORY[0x277CBEAC0];
        v37 = [MEMORY[0x277CCABB0] numberWithInteger:0];
        v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v39 = [v38 localizedStringForKey:@"Color" value:@"Color" table:@"Localizable"];
        v40 = [v36 dictionaryWithObjectsAndKeys:{v37, @"PresetType", v39, @"PresetTitle", v35, @"PresetInfo", 0}];
        [(UIPrintPresetsOption *)self setColorStandardPreset:v40];

        v7 = v35;
      }

      colorStandardPreset2 = [(UIPrintPresetsOption *)self colorStandardPreset];
      [array addObject:colorStandardPreset2];

      if ([(UIPrintPresetsOption *)self printerContainsQuality:5])
      {
        colorFineStandardPreset = [(UIPrintPresetsOption *)self colorFineStandardPreset];

        if (!colorFineStandardPreset)
        {
          v43 = MEMORY[0x277CBEAC0];
          v44 = [MEMORY[0x277CCABB0] numberWithInt:0];
          v45 = [MEMORY[0x277CCABB0] numberWithInt:5];
          v46 = [v43 dictionaryWithObjectsAndKeys:{v44, 0x2871AF790, v45, 0x2871AF7B0, 0}];

          v47 = MEMORY[0x277CBEAC0];
          v48 = [MEMORY[0x277CCABB0] numberWithInteger:0];
          v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v50 = [v49 localizedStringForKey:@"Color - Fine" value:@"Color - Fine" table:@"Localizable"];
          v51 = [v47 dictionaryWithObjectsAndKeys:{v48, @"PresetType", v50, @"PresetTitle", v46, @"PresetInfo", 0}];
          [(UIPrintPresetsOption *)self setColorFineStandardPreset:v51];

          v7 = v46;
        }

        colorFineStandardPreset2 = [(UIPrintPresetsOption *)self colorFineStandardPreset];
        [array addObject:colorFineStandardPreset2];
      }
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)getPrinterPresets
{
  v26 = *MEMORY[0x277D85DE8];
  printInfo = [(UIPrintOption *)self printInfo];
  currentPrinter = [printInfo currentPrinter];
  supportedPresets = [currentPrinter supportedPresets];

  if (supportedPresets && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [supportedPresets count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = supportedPresets;
    v6 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      v9 = *MEMORY[0x277D41158];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [v11 objectForKey:v9];
          v13 = MEMORY[0x277CBEAC0];
          v14 = [MEMORY[0x277CCABB0] numberWithInteger:1];
          v23 = @"UIPrintInfoJobPresetKey";
          v24 = v11;
          v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
          v16 = [v13 dictionaryWithObjectsAndKeys:{v14, @"PresetType", v12, @"PresetTitle", v15, @"PresetInfo", 0}];
          [v5 addObject:v16];
        }

        v7 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  [v5 sortUsingComparator:&__block_literal_global_2];

  return v5;
}

uint64_t __41__UIPrintPresetsOption_getPrinterPresets__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"PresetTitle"];
  v6 = [v4 objectForKeyedSubscript:@"PresetTitle"];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (id)summary
{
  selectedIndexPath = [(UIPrintPresetsOption *)self selectedIndexPath];
  if ([selectedIndexPath section])
  {
  }

  else
  {
    printInfo = [(UIPrintOption *)self printInfo];
    appliedPresetsList = [printInfo appliedPresetsList];
    v6 = [appliedPresetsList count];

    if (!v6)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      printInfo3 = v10;
      v12 = @"No Preset";
      goto LABEL_9;
    }
  }

  printInfo2 = [(UIPrintOption *)self printInfo];
  appliedPresetsList2 = [printInfo2 appliedPresetsList];
  v9 = [appliedPresetsList2 count];

  if (!v9)
  {
    printInfo3 = [(UIPrintOption *)self printInfo];
    appliedPresetsList3 = [printInfo3 appliedPresetsList];
    if (appliedPresetsList3)
    {
      presets = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [presets localizedStringForKey:@"No Preset" value:@"No Preset" table:@"Localizable"];
    }

    else
    {
      presets = [(UIPrintPresetsOption *)self presets];
      selectedIndexPath2 = [(UIPrintPresetsOption *)self selectedIndexPath];
      v17 = [presets objectAtIndex:{objc_msgSend(selectedIndexPath2, "row")}];
      v15 = [v17 objectForKey:@"PresetTitle"];
    }

    goto LABEL_12;
  }

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  printInfo3 = v10;
  v12 = @"Printer";
LABEL_9:
  v15 = [v10 localizedStringForKey:v12 value:v12 table:@"Localizable"];
LABEL_12:

  return v15;
}

- (void)didSelectPrintOption
{
  [(UIPrintPresetsOption *)self updatePresetsList];
  tableViewCell = [(UIPrintOption *)self tableViewCell];
  [tableViewCell printOptionCellTapped];
}

@end