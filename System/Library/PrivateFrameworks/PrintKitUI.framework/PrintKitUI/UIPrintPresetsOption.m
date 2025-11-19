@interface UIPrintPresetsOption
- (BOOL)isItemSelected:(id)a3;
- (BOOL)printerContainsQuality:(int64_t)a3;
- (BOOL)shouldShow;
- (NSMutableArray)presetNames;
- (UIPrintPresetsOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)appliedPresetsSummary;
- (id)createPrintOptionTableViewCell;
- (id)getPrinterPresets;
- (id)getStandardPresets;
- (id)itemList;
- (id)selectedItems;
- (id)summary;
- (id)titleForFooterInSection:(int64_t)a3;
- (id)titleForHeaderInSection:(int64_t)a3;
- (int64_t)listItemSelected:(id)a3;
- (void)currentPrinterChanged;
- (void)dealloc;
- (void)didSelectPrintOption;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateFromPrintInfo;
- (void)updatePresetsList;
- (void)updatePrintInfoWithSelectedIndex:(id)a3;
@end

@implementation UIPrintPresetsOption

- (UIPrintPresetsOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = UIPrintPresetsOption;
  v7 = [(UIPrintOption *)&v18 initWithPrintInfo:v6 printPanelViewController:a4];
  if (v7)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"Presets" value:@"Presets" table:@"Localizable"];
    [(UIPrintOption *)v7 setTitle:v9];

    [(UIPrintPresetsOption *)v7 setPresets:0];
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
    [(UIPrintPresetsOption *)v7 setSelectedIndexPath:v10];

    [(UIPrintPresetsOption *)v7 updateFromPrintInfo];
    v11 = [(UIPrintOption *)v7 printInfo];
    [v11 addObserver:v7 forKeyPath:0x2871AF190 options:0 context:0];

    v12 = [(UIPrintOption *)v7 printInfo];
    [v12 addObserver:v7 forKeyPath:0x2871AF150 options:0 context:0];

    v13 = [v6 currentPrinter];
    [(UIPrintPresetsOption *)v7 setObservedPrinter:v13];

    v14 = [(UIPrintPresetsOption *)v7 observedPrinter];
    [v14 addObserver:v7 forKeyPath:0x2871B0290 options:0 context:0];

    v15 = [(UIPrintOption *)v7 printInfo];
    v16 = [v15 copy];
    [(UIPrintPresetsOption *)v7 setOrigPrintInfo:v16];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF190];

  v4 = [(UIPrintOption *)self printInfo];
  [v4 removeObserver:self forKeyPath:0x2871AF150];

  v5 = [(UIPrintPresetsOption *)self observedPrinter];
  [v5 removeObserver:self forKeyPath:0x2871B0290];

  v6.receiver = self;
  v6.super_class = UIPrintPresetsOption;
  [(UIPrintPresetsOption *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__UIPrintPresetsOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = v7;
  v11 = self;
  v8 = v7;
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
  v3 = [(UIPrintPresetsOption *)self presets];
  if (v3)
  {
    v4 = [(UIPrintPresetsOption *)self presets];
    v5 = [v4 count] != 0;
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
  v3 = [(UIPrintOption *)self printInfo];
  v4 = [v3 jobPreset];
  v5 = [v4 objectForKey:@"PresetTitle"];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(UIPrintPresetsOption *)self presets];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v20 + 1) + 8 * v10);
      v12 = [v11 objectForKey:@"PresetTitle"];
      if ([v12 isEqualToString:v5])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = [(UIPrintPresetsOption *)self presets];
    v14 = [v13 indexOfObject:v11];

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

  v16 = [(UIPrintOption *)self tableViewCell];
  v17 = [v16 contentConfiguration];

  v18 = [(UIPrintPresetsOption *)self summary];
  [v17 setSecondaryText:v18];

  v19 = [(UIPrintOption *)self tableViewCell];
  [v19 setContentConfiguration:v17];
}

- (void)updatePresetsList
{
  v3 = [(UIPrintPresetsOption *)self getPrinterPresets];
  [(UIPrintPresetsOption *)self setPrinterPresets:v3];

  v4 = [(UIPrintPresetsOption *)self getStandardPresets];
  [(UIPrintPresetsOption *)self setStandardPresets:v4];

  v5 = [(UIPrintPresetsOption *)self printerPresets];
  if ([v5 count])
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
  v8 = [(UIPrintPresetsOption *)self appliedPresetsSummary];
  v7 = [(UIPrintPresetsOption *)self appliedPresetsSummaryLabel];
  [v7 setText:v8];
}

- (void)currentPrinterChanged
{
  [(UIPrintPresetsOption *)self updatePresetsList];
  v3 = [(UIPrintPresetsOption *)self printerPresets];

  v4 = [(UIPrintOption *)self printInfo];
  v5 = v4;
  if (v3)
  {
    [v4 setJobPreset:0];
  }

  else
  {
    [v4 setAppliedPresetsList:0];
  }
}

- (void)updatePrintInfoWithSelectedIndex:(id)a3
{
  v25 = a3;
  if (![v25 section])
  {
    v9 = [(UIPrintOption *)self printInfo];
    v17 = [(UIPrintPresetsOption *)self origPrintInfo];
    [v9 resetToDefaultSettings:v17];
LABEL_14:

    goto LABEL_15;
  }

  v4 = [(UIPrintPresetsOption *)self presets];
  v5 = [v4 count];
  v6 = [(UIPrintPresetsOption *)self selectedIndexPath];
  v7 = [v6 row];

  if (v5 <= v7)
  {
    goto LABEL_16;
  }

  v8 = [(UIPrintPresetsOption *)self presets];
  v9 = [v8 objectAtIndex:{objc_msgSend(v25, "row")}];

  if (v9)
  {
    v10 = [v9 objectForKey:@"PresetType"];
    v11 = [v10 integerValue];

    v12 = [(UIPrintOption *)self printInfo];
    v13 = v12;
    if (v11)
    {
      v14 = [v12 appliedPresetsList];
      if (v14)
      {
        v15 = [(UIPrintOption *)self printInfo];
        v16 = [v15 appliedPresetsList];
        v17 = [v16 mutableCopy];
      }

      else
      {
        v17 = [MEMORY[0x277CBEB18] array];
      }

      v19 = [v17 containsObject:v9];
      [v17 removeObject:v9];
      if ((v19 & 1) == 0)
      {
        [v17 addObject:v9];
        v20 = [(UIPrintOption *)self printInfo];
        v21 = [v9 objectForKey:@"PresetInfo"];
        [v20 updateWithDictionary:v21];
      }

      v22 = [(UIPrintOption *)self printInfo];
      [v22 setAppliedPresetsList:v17];

      v23 = [(UIPrintPresetsOption *)self appliedPresetsSummary];
      v24 = [(UIPrintPresetsOption *)self appliedPresetsSummaryLabel];
      [v24 setText:v23];

      v18 = [(UIPrintPresetsOption *)self appliedPresetsSummaryLabel];
      [v18 sizeToFit];
    }

    else
    {
      [v12 setJobPreset:v9];

      v17 = [(UIPrintOption *)self printInfo];
      v18 = [v9 objectForKey:@"PresetInfo"];
      [v17 updateWithDictionary:v18];
    }

    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
}

- (id)appliedPresetsSummary
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintPresetsOption *)self printerPresets];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(UIPrintOption *)self printInfo];
    v6 = [v5 appliedPresetsList];

    if ([v6 count])
    {
      v7 = [MEMORY[0x277CCAB68] string];
      v8 = [v6 reverseObjectEnumerator];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v17 + 1) + 8 * i) objectForKey:@"PresetTitle"];
            PMAppendToSummaryString(v13, v7);
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v7 = 0;
    }

    v15 = @"No Presets Applied";
    if (v7)
    {
      v15 = v7;
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
  v2 = self;
  v26 = *MEMORY[0x277D85DE8];
  if (!self->_presetNames)
  {
    v5 = [(UIPrintPresetsOption *)self presets];
    if (v5)
    {
      v6 = v5;
      v7 = [(UIPrintPresetsOption *)v2 presets];
      v8 = [v7 count];

      if (v8)
      {
        v9 = MEMORY[0x277CBEB18];
        v10 = [(UIPrintPresetsOption *)v2 presets];
        v11 = [v9 arrayWithCapacity:{objc_msgSend(v10, "count")}];

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v20 = v2;
        v12 = [(UIPrintPresetsOption *)v2 presets];
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v21 + 1) + 8 * i) objectForKey:@"PresetTitle"];
              if (v17)
              {
                v18 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v17 forKey:@"Title"];
                [(NSMutableArray *)v11 addObject:v18];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v14);
        }

        v2 = v20;
        presetNames = v20->_presetNames;
        v20->_presetNames = v11;
      }
    }
  }

  v3 = v2->_presetNames;

  return v3;
}

- (id)createPrintOptionTableViewCell
{
  v3 = [(UIPrintOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v5 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionListCell"];

  v6 = [MEMORY[0x277D756E0] valueCellConfiguration];
  v7 = [(UIPrintOption *)self title];
  [v6 setText:v7];

  v8 = [(UIPrintPresetsOption *)self summary];
  [v6 setSecondaryText:v8];

  [v5 setContentConfiguration:v6];
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
  v9 = [(UIPrintPresetsOption *)self presetNames];
  v10 = [v3 arrayWithObjects:{v8, v9, 0}];

  return v10;
}

- (id)selectedItems
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintOption *)self printInfo];
  v4 = [v3 appliedPresetsList];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [(UIPrintOption *)self printInfo];
    v7 = [v6 appliedPresetsList];

    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = MEMORY[0x277CCAA70];
          v14 = [(UIPrintPresetsOption *)self presets];
          v15 = [v13 indexPathForRow:objc_msgSend(v14 inSection:{"indexOfObject:", v12), 1}];

          [v5 addObject:v15];
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v16 = [(UIPrintPresetsOption *)self selectedIndexPath];
    v17 = [v16 section];

    if (v17 == 1)
    {
      v18 = MEMORY[0x277CBEB18];
      v19 = [(UIPrintPresetsOption *)self selectedIndexPath];
      v5 = [v18 arrayWithObject:v19];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isItemSelected:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintPresetsOption *)self presets];
  v6 = [v4 row];

  v7 = [v5 objectAtIndex:v6];

  v8 = [(UIPrintOption *)self printInfo];
  v9 = [v8 appliedPresetsList];
  LOBYTE(v6) = [v9 containsObject:v7];

  return v6;
}

- (id)titleForHeaderInSection:(int64_t)a3
{
  if (a3)
  {
    v3 = [(UIPrintPresetsOption *)self printerPresets];
    v4 = [v3 count];
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

- (id)titleForFooterInSection:(int64_t)a3
{
  if (a3 && (-[UIPrintPresetsOption printerPresets](self, "printerPresets"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v5))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"%@\n\n%@" value:@"%@\n\n%@" table:@"Localizable"];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"The most recent selection may override previously selected presets." value:@"The most recent selection may override previously selected presets." table:@"Localizable"];
    v11 = [(UIPrintPresetsOption *)self appliedPresetsSummary];
    v12 = [v6 stringWithFormat:v8, v10, v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)listItemSelected:(id)a3
{
  v4 = a3;
  [(UIPrintPresetsOption *)self setSelectedIndexPath:v4];
  [(UIPrintPresetsOption *)self updatePrintInfoWithSelectedIndex:v4];
  v5 = [(UIPrintOption *)self tableViewCell];
  v6 = [v5 contentConfiguration];

  v7 = [(UIPrintPresetsOption *)self summary];
  [v6 setSecondaryText:v7];

  v8 = [(UIPrintOption *)self tableViewCell];
  [v8 setContentConfiguration:v6];

  v9 = [v4 section];
  if (v9)
  {
    v10 = [(UIPrintPresetsOption *)self printerPresets];
    v11 = [v10 count] != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)printerContainsQuality:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(UIPrintOption *)self printInfo];
  v5 = [v4 currentPrinter];
  v6 = [v5 supportedQualities];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v13 + 1) + 8 * i) integerValue] == a3)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(UIPrintOption *)self printInfo];
  v4 = [v3 currentPrinter];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [(UIPrintPresetsOption *)self grayscaleStandardPreset];

    if (v6)
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

    v16 = [(UIPrintPresetsOption *)self grayscaleStandardPreset];
    [v5 addObject:v16];

    if ([(UIPrintPresetsOption *)self printerContainsQuality:3])
    {
      v17 = [(UIPrintPresetsOption *)self grayscaleDraftStandardPreset];

      if (!v17)
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

      v27 = [(UIPrintPresetsOption *)self grayscaleDraftStandardPreset];
      [v5 addObject:v27];
    }

    v28 = [(UIPrintOption *)self printInfo];
    v29 = [v28 currentPrinter];
    v30 = [v29 supportsColor];

    if (v30)
    {
      v31 = [(UIPrintPresetsOption *)self colorStandardPreset];

      if (!v31)
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

      v41 = [(UIPrintPresetsOption *)self colorStandardPreset];
      [v5 addObject:v41];

      if ([(UIPrintPresetsOption *)self printerContainsQuality:5])
      {
        v42 = [(UIPrintPresetsOption *)self colorFineStandardPreset];

        if (!v42)
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

        v52 = [(UIPrintPresetsOption *)self colorFineStandardPreset];
        [v5 addObject:v52];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getPrinterPresets
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [(UIPrintOption *)self printInfo];
  v3 = [v2 currentPrinter];
  v4 = [v3 supportedPresets];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v4;
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
  v3 = [(UIPrintPresetsOption *)self selectedIndexPath];
  if ([v3 section])
  {
  }

  else
  {
    v4 = [(UIPrintOption *)self printInfo];
    v5 = [v4 appliedPresetsList];
    v6 = [v5 count];

    if (!v6)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = v10;
      v12 = @"No Preset";
      goto LABEL_9;
    }
  }

  v7 = [(UIPrintOption *)self printInfo];
  v8 = [v7 appliedPresetsList];
  v9 = [v8 count];

  if (!v9)
  {
    v11 = [(UIPrintOption *)self printInfo];
    v13 = [v11 appliedPresetsList];
    if (v13)
    {
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"No Preset" value:@"No Preset" table:@"Localizable"];
    }

    else
    {
      v14 = [(UIPrintPresetsOption *)self presets];
      v16 = [(UIPrintPresetsOption *)self selectedIndexPath];
      v17 = [v14 objectAtIndex:{objc_msgSend(v16, "row")}];
      v15 = [v17 objectForKey:@"PresetTitle"];
    }

    goto LABEL_12;
  }

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = v10;
  v12 = @"Printer";
LABEL_9:
  v15 = [v10 localizedStringForKey:v12 value:v12 table:@"Localizable"];
LABEL_12:

  return v15;
}

- (void)didSelectPrintOption
{
  [(UIPrintPresetsOption *)self updatePresetsList];
  v3 = [(UIPrintOption *)self tableViewCell];
  [v3 printOptionCellTapped];
}

@end