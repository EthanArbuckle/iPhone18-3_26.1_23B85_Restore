@interface PUAdjustmentsDataSource
- (BOOL)canModifyAdjustmentAtIndexPath:(id)path;
- (NSMutableArray)adjustmentInfoSections;
- (PUAdjustmentsDataSourceDelegate)delegate;
- (id)_autoEnhanceAdjustmentInfo;
- (id)_colorAdjustmentInfos;
- (id)_debugAdjustmentInfos;
- (id)_detailAdjustmentInfos;
- (id)_headroomAdjustmentInfos;
- (id)_lightAdjustmentInfos;
- (id)_newAdjustmentInfoWithIdentifier:(id)identifier adjustmentKey:(id)key settingKey:(id)settingKey attributeKey:(id)attributeKey;
- (id)_smartBlackAndWhiteAdjustmentInfos;
- (id)_vignetteAdjustmentInfos;
- (id)infoForItemAtIndexPath:(id)path;
- (id)renderer;
- (int64_t)numberOfItemsInAllSections;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (void)_createAdjustmentInfos;
- (void)_enableNonAutoAdjustments:(BOOL)adjustments;
- (void)_modifyAdjustmentForInfo:(id)info;
- (void)_resetEnabledStateForAutoEnhancedInfos;
- (void)_setDefaultsForInfo:(id)info;
- (void)_updateAdjustmentInfos;
- (void)beginInteractiveChange;
- (void)compositionControllerDidChange;
- (void)endInteractiveChange;
- (void)modifyValue:(double)value atIndexPath:(id)path;
- (void)resetInfoAtIndexPath:(id)path;
- (void)setAdjustmentEnabled:(BOOL)enabled atIndexPath:(id)path completionHandler:(id)handler;
- (void)setupWithCompositionController:(id)controller valuesCalculator:(id)calculator autoAdjustmentController:(id)adjustmentController assetType:(unint64_t)type;
@end

@implementation PUAdjustmentsDataSource

- (PUAdjustmentsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)compositionControllerDidChange
{
  [(PUAdjustmentsDataSource *)self _updateAdjustmentInfos];
  delegate = [(PUAdjustmentsDataSource *)self delegate];
  [delegate adjustmentsDataChanged:self];
}

- (void)_resetEnabledStateForAutoEnhancedInfos
{
  v42 = *MEMORY[0x1E69E9840];
  compositionController = [(PUAdjustmentsDataSource *)self compositionController];
  whiteBalanceAdjustmentController = [compositionController whiteBalanceAdjustmentController];
  warmFace = [whiteBalanceAdjustmentController warmFace];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(PUAdjustmentsDataSource *)self adjustmentInfoSections];
  v28 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v28)
  {
    v27 = *v37;
    v6 = *MEMORY[0x1E69BE178];
    v7 = *MEMORY[0x1E69BE170];
    v30 = *MEMORY[0x1E69BE198];
    do
    {
      v8 = 0;
      do
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v8;
        v9 = *(*(&v36 + 1) + 8 * v8);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v33;
          do
          {
            v14 = 0;
            v31 = v12;
            do
            {
              if (*v33 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v32 + 1) + 8 * v14);
              identifier = [v15 identifier];
              if (identifier == v6)
              {
                goto LABEL_18;
              }

              identifier2 = [v15 identifier];
              v18 = identifier2;
              if (identifier2 == v7)
              {

LABEL_18:
LABEL_19:
                [v15 setEnabled:1];
                goto LABEL_21;
              }

              if (warmFace)
              {
                [v15 identifier];
                v19 = v13;
                v20 = v6;
                v21 = v10;
                v22 = v7;
                v24 = v23 = warmFace;

                v25 = v24 == v30;
                warmFace = v23;
                v7 = v22;
                v10 = v21;
                v6 = v20;
                v13 = v19;
                v12 = v31;
                if (v25)
                {
                  goto LABEL_19;
                }
              }

              else
              {
              }

LABEL_21:
              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v12);
        }

        v8 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v28);
  }
}

- (void)resetInfoAtIndexPath:(id)path
{
  v4 = [(PUAdjustmentsDataSource *)self infoForItemAtIndexPath:path];
  v5 = v4;
  if (v4)
  {
    settingKey = [v4 settingKey];

    if (settingKey)
    {
      compositionController = [(PUAdjustmentsDataSource *)self compositionController];
      adjustmentKey = [v5 adjustmentKey];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __48__PUAdjustmentsDataSource_resetInfoAtIndexPath___block_invoke;
      v9[3] = &unk_1E7B80728;
      v10 = v5;
      [compositionController modifyAdjustmentWithKey:adjustmentKey modificationBlock:v9];
    }
  }
}

void __48__PUAdjustmentsDataSource_resetInfoAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEnabled:0];
  v4 = MEMORY[0x1E696AD98];
  [*(a1 + 32) defaultLevel];
  v6 = [v4 numberWithDouble:?];
  v5 = [*(a1 + 32) settingKey];
  [v3 setObject:v6 forKeyedSubscript:v5];
}

- (void)modifyValue:(double)value atIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(PUAdjustmentsDataSource *)self infoForItemAtIndexPath:?];
  if (([v6 enabled] & 1) == 0)
  {
    [(PUAdjustmentsDataSource *)self setAdjustmentEnabled:1 atIndexPath:pathCopy completionHandler:0];
  }

  settingKey = [v6 settingKey];

  if (settingKey)
  {
    customSettingDelegate = [v6 customSettingDelegate];

    if (customSettingDelegate && ([v6 customSettingDelegate], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      customSettingDelegate2 = [v6 customSettingDelegate];
      [customSettingDelegate2 dataSource:self adjustmentInfo:v6 modifyValue:value];
    }

    else
    {
      [v6 setCurrentLevel:value];
      [(PUAdjustmentsDataSource *)self _modifyAdjustmentForInfo:v6];
    }
  }
}

- (void)_modifyAdjustmentForInfo:(id)info
{
  infoCopy = info;
  compositionController = [(PUAdjustmentsDataSource *)self compositionController];
  adjustmentKey = [infoCopy adjustmentKey];
  v7 = [compositionController adjustmentControllerForKey:adjustmentKey];
  v8 = v7 != 0;

  delegate = [(PUAdjustmentsDataSource *)self delegate];
  [delegate willModifyAdjustment];

  compositionController2 = [(PUAdjustmentsDataSource *)self compositionController];
  adjustmentKey2 = [infoCopy adjustmentKey];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__PUAdjustmentsDataSource__modifyAdjustmentForInfo___block_invoke;
  v15[3] = &unk_1E7B74B80;
  v18 = v8;
  v16 = infoCopy;
  selfCopy = self;
  v12 = infoCopy;
  [compositionController2 modifyAdjustmentWithKey:adjustmentKey2 modificationBlock:v15];

  localizedActionName = [v12 localizedActionName];
  delegate2 = [(PUAdjustmentsDataSource *)self delegate];
  [delegate2 didModifyAdjustmentWithLocalizedName:localizedActionName];

  [(PUAdjustmentsDataSource *)self setLastAdjustmentLocalizedName:localizedActionName];
}

void __52__PUAdjustmentsDataSource__modifyAdjustmentForInfo___block_invoke(uint64_t a1, void *a2)
{
  v39 = a2;
  if ((*(a1 + 48) & 1) == 0)
  {
    v3 = [*(a1 + 32) customSettingDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 32) customSettingDelegate];
      [v5 dataSource:*(a1 + 40) adjustmentInfo:*(a1 + 32) populateNewAdjustmentController:v39];
    }
  }

  v6 = [*(a1 + 32) identifier];
  v7 = *MEMORY[0x1E69BE198];

  if (v6 == v7)
  {
    v8 = MEMORY[0x1E69BDF90];
    v9 = *MEMORY[0x1E69BE1A0];
    v10 = v39;
    [v10 setColorType:{objc_msgSend(v8, "colorTypeForString:", v9)}];
  }

  [*(a1 + 32) currentLevel];
  v12 = v11;
  v13 = [*(a1 + 32) attributeKey];

  if (v13)
  {
    v14 = MEMORY[0x1E69BE360];
    v15 = [*(a1 + 40) compositionController];
    v16 = [*(a1 + 32) adjustmentKey];
    v17 = [*(a1 + 32) attributeKey];
    v18 = [v14 valueForCompositionController:v15 adjustmentKey:v16 settingKey:v17];

    v19 = MEMORY[0x1E69BE360];
    v20 = [*(a1 + 40) compositionController];
    v21 = [*(a1 + 32) adjustmentKey];
    v22 = [*(a1 + 32) settingKey];
    v23 = [v19 valueForCompositionController:v20 adjustmentKey:v21 settingKey:v22];

    [v18 doubleValue];
    v25 = v24;
    [v23 doubleValue];
    v27 = v25 - v26;
    [*(a1 + 32) currentLevel];
    v12 = v28 - v27;
  }

  if ([*(a1 + 32) enabled])
  {
    v29 = 1;
  }

  else if ([*(a1 + 40) numberOfSections] < 1)
  {
    v29 = 0;
  }

  else
  {
    v30 = 0;
    do
    {
      if ([*(a1 + 40) numberOfItemsInSection:v30] < 1)
      {
        v29 = 0;
      }

      else
      {
        v31 = 1;
        do
        {
          v32 = *(a1 + 40);
          v33 = [MEMORY[0x1E696AC88] indexPathForItem:v31 - 1 inSection:v30];
          v34 = [v32 infoForItemAtIndexPath:v33];

          v35 = [v34 adjustmentKey];
          v36 = [*(a1 + 32) adjustmentKey];
          if ([v35 isEqualToString:v36])
          {
            v29 = [v34 enabled];
          }

          else
          {
            v29 = 0;
          }

          if (v31 >= [*(a1 + 40) numberOfItemsInSection:v30])
          {
            break;
          }

          ++v31;
        }

        while ((v29 & 1) == 0);
      }

      ++v30;
    }

    while (v30 < [*(a1 + 40) numberOfSections] && (v29 & 1) == 0);
  }

  [v39 setEnabled:v29];
  v37 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v38 = [*(a1 + 32) settingKey];
  [v39 setObject:v37 forKeyedSubscript:v38];
}

- (void)setAdjustmentEnabled:(BOOL)enabled atIndexPath:(id)path completionHandler:(id)handler
{
  enabledCopy = enabled;
  handlerCopy = handler;
  v9 = [(PUAdjustmentsDataSource *)self infoForItemAtIndexPath:path];
  if ([v9 enabled] == enabledCopy)
  {
    if (handlerCopy)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __78__PUAdjustmentsDataSource_setAdjustmentEnabled_atIndexPath_completionHandler___block_invoke;
      v22[3] = &unk_1E7B80C88;
      v10 = &v23;
      v23 = handlerCopy;
      v11 = MEMORY[0x1E69E96A0];
      v12 = v22;
LABEL_11:
      dispatch_async(v11, v12);
      goto LABEL_12;
    }
  }

  else
  {
    [v9 setEnabled:enabledCopy];
    if ([v9 enabled])
    {
      [v9 lastAdjustedLevel];
    }

    else
    {
      [v9 defaultLevel];
    }

    [v9 setCurrentLevel:?];
    customSettingDelegate = [v9 customSettingDelegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      customSettingDelegate2 = [v9 customSettingDelegate];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __78__PUAdjustmentsDataSource_setAdjustmentEnabled_atIndexPath_completionHandler___block_invoke_2;
      v19[3] = &unk_1E7B80CB0;
      v10 = v20;
      v16 = v9;
      v20[0] = v16;
      v20[1] = self;
      v21 = handlerCopy;
      [customSettingDelegate2 dataSource:self adjustmentInfo:v16 setEnabled:enabledCopy completionHandler:v19];

LABEL_12:
      goto LABEL_13;
    }

    [(PUAdjustmentsDataSource *)self _modifyAdjustmentForInfo:v9];
    if (handlerCopy)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__PUAdjustmentsDataSource_setAdjustmentEnabled_atIndexPath_completionHandler___block_invoke_4;
      block[3] = &unk_1E7B80C88;
      v10 = &v18;
      v18 = handlerCopy;
      v11 = MEMORY[0x1E69E96A0];
      v12 = block;
      goto LABEL_11;
    }
  }

LABEL_13:
}

void __78__PUAdjustmentsDataSource_setAdjustmentEnabled_atIndexPath_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *MEMORY[0x1E69BDF98];

  if (v2 == v3)
  {
    [*(a1 + 32) currentLevel];
    [*(a1 + 32) setDefaultLevel:?];
  }

  v4 = [*(a1 + 40) delegate];
  [v4 adjustmentsDataChanged:*(a1 + 40)];

  v5 = *(a1 + 48);
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__PUAdjustmentsDataSource_setAdjustmentEnabled_atIndexPath_completionHandler___block_invoke_3;
    block[3] = &unk_1E7B80C88;
    v7 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)endInteractiveChange
{
  delegate = [(PUAdjustmentsDataSource *)self delegate];
  lastAdjustmentLocalizedName = [(PUAdjustmentsDataSource *)self lastAdjustmentLocalizedName];
  [delegate didModifyAdjustmentWithLocalizedName:lastAdjustmentLocalizedName];
}

- (void)beginInteractiveChange
{
  delegate = [(PUAdjustmentsDataSource *)self delegate];
  [delegate willModifyAdjustment];
}

- (BOOL)canModifyAdjustmentAtIndexPath:(id)path
{
  compositionController = [(PUAdjustmentsDataSource *)self compositionController];

  if (!compositionController)
  {
    return 0;
  }

  autoEnhanceController = [(PUAdjustmentsDataSource *)self autoEnhanceController];
  isBusy = [autoEnhanceController isBusy];

  return isBusy ^ 1;
}

- (id)infoForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy && (v6 = [pathCopy section], -[PUAdjustmentsDataSource adjustmentInfoSections](self, "adjustmentInfoSections"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 < v8) && (v9 = objc_msgSend(v5, "item"), -[PUAdjustmentsDataSource adjustmentInfoSections](self, "adjustmentInfoSections"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectAtIndexedSubscript:", objc_msgSend(v5, "section")), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10, v9 < v12))
  {
    adjustmentInfoSections = [(PUAdjustmentsDataSource *)self adjustmentInfoSections];
    v14 = [adjustmentInfoSections objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v5, "item")}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (int64_t)numberOfItemsInAllSections
{
  if ([(PUAdjustmentsDataSource *)self numberOfSections]< 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v4 += [(PUAdjustmentsDataSource *)self numberOfItemsInSection:v3++];
  }

  while (v3 < [(PUAdjustmentsDataSource *)self numberOfSections]);
  return v4;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  adjustmentInfoSections = [(PUAdjustmentsDataSource *)self adjustmentInfoSections];
  v6 = [adjustmentInfoSections count];

  if (section < 0 || v6 <= section)
  {
    return 0;
  }

  adjustmentInfoSections2 = [(PUAdjustmentsDataSource *)self adjustmentInfoSections];
  v8 = [adjustmentInfoSections2 objectAtIndexedSubscript:section];
  v9 = [v8 count];

  return v9;
}

- (int64_t)numberOfSections
{
  adjustmentInfoSections = [(PUAdjustmentsDataSource *)self adjustmentInfoSections];
  v3 = [adjustmentInfoSections count];

  return v3;
}

- (NSMutableArray)adjustmentInfoSections
{
  adjustmentInfoSections = self->_adjustmentInfoSections;
  if (!adjustmentInfoSections)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = self->_adjustmentInfoSections;
    self->_adjustmentInfoSections = array;

    [(PUAdjustmentsDataSource *)self _createAdjustmentInfos];
    adjustmentInfoSections = self->_adjustmentInfoSections;
  }

  return adjustmentInfoSections;
}

- (void)_updateAdjustmentInfos
{
  v39 = *MEMORY[0x1E69E9840];
  compositionController = [(PUAdjustmentsDataSource *)self compositionController];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  selfCopy = self;
  obj = [(PUAdjustmentsDataSource *)self adjustmentInfoSections];
  v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v25)
  {
    v24 = *v34;
    v4 = *MEMORY[0x1E69BDF98];
    do
    {
      v5 = 0;
      do
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v5;
        v6 = *(*(&v33 + 1) + 8 * v5);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v28 = v6;
        v7 = [v28 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v30;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v30 != v9)
              {
                objc_enumerationMutation(v28);
              }

              v11 = *(*(&v29 + 1) + 8 * i);
              identifier = [v11 identifier];

              if (identifier == v4)
              {
                [v11 setEnabled:{objc_msgSend(MEMORY[0x1E69C4260], "isAutoEnhanceEnabledForCompositionController:", compositionController)}];
                autoEnhanceController = [(PUAdjustmentsDataSource *)selfCopy autoEnhanceController];
                [autoEnhanceController defaultAutoEnhanceIntensityForCompositionController:compositionController];
                [v11 setDefaultLevel:?];
              }

              attributeKey = [v11 attributeKey];
              if (!attributeKey)
              {
                attributeKey = [v11 settingKey];
                if (!attributeKey)
                {
                  continue;
                }
              }

              v15 = attributeKey;
              v16 = MEMORY[0x1E69BE360];
              adjustmentKey = [v11 adjustmentKey];
              v18 = [v16 valueForCompositionController:compositionController adjustmentKey:adjustmentKey settingKey:v15];

              if (v18)
              {
                [v18 floatValue];
                [v11 setCurrentLevel:v19];
                if (identifier != v4 && ([v11 enabled] & 1) == 0)
                {
                  [v11 currentLevel];
                  v21 = v20;
                  [v11 defaultLevel];
                  [v11 setEnabled:v21 != v22];
                }
              }

              else
              {
                [v11 defaultLevel];
                [v11 setCurrentLevel:?];
              }
            }

            v8 = [v28 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v8);
        }

        v5 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v25);
  }
}

- (void)_enableNonAutoAdjustments:(BOOL)adjustments
{
  adjustmentsCopy = adjustments;
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(PUAdjustmentsDataSource *)self adjustmentInfoSections];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v17 = *v23;
    v6 = *MEMORY[0x1E69BDF98];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v19;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v18 + 1) + 8 * j);
              identifier = [v14 identifier];

              if (identifier != v6)
              {
                [v14 setEnabled:adjustmentsCopy];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v11);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }
}

- (id)_headroomAdjustmentInfos
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = +[PUPhotoEditProtoSettings sharedInstance];
  showHDRHeadroomControl = [v4 showHDRHeadroomControl];

  if (showHDRHeadroomControl)
  {
    v6 = *MEMORY[0x1E69BDFC8];
    headroomAdjustmentKey = [MEMORY[0x1E69BDE18] headroomAdjustmentKey];
    v8 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v6 settingKey:headroomAdjustmentKey attributeKey:0];

    [v8 setIconName:@"PUExposureAdjustment"];
    [v8 setLocalizedName:@"HDR Highlight Brightness"];
    [v3 addObject:v8];
  }

  return v3;
}

- (id)_debugAdjustmentInfos
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = +[PUPhotoEditProtoSettings sharedInstance];
  showHDRDebugAdjustments = [v4 showHDRDebugAdjustments];

  if (showHDRDebugAdjustments)
  {
    v6 = *MEMORY[0x1E69BDFC8];
    inputExposureKey = [MEMORY[0x1E69BDE18] inputExposureKey];
    v8 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v6 settingKey:inputExposureKey attributeKey:0];

    [v8 setIconName:@"PUExposureAdjustment"];
    [v8 setLocalizedName:@"Input Exposure"];
    outputExposureKey = [MEMORY[0x1E69BDE18] outputExposureKey];
    v10 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v6 settingKey:outputExposureKey attributeKey:0];

    [v10 setIconName:@"PUExposureAdjustment"];
    [v10 setLocalizedName:@"Output Exposure"];
    falseColorHDRKey = [MEMORY[0x1E69BDE18] falseColorHDRKey];
    v12 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v6 settingKey:falseColorHDRKey attributeKey:0];

    [v12 setIconName:@"PUSaturationAdjustment"];
    [v12 setLocalizedName:@"False Color HDR"];
    [v12 setIconIsColor:1];
    inputRAWGamutMapMaxKey = [MEMORY[0x1E69BDE18] inputRAWGamutMapMaxKey];
    v14 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v6 settingKey:inputRAWGamutMapMaxKey attributeKey:0];

    [v14 setIconName:@"PUExposureAdjustment"];
    [v14 setLocalizedName:@"RAW HDR"];
    [v3 addObject:v8];
    [v3 addObject:v10];
    [v3 addObject:v12];
    if (([(PUAdjustmentsDataSource *)self assetType]& 1) != 0)
    {
      [v3 addObject:v14];
    }
  }

  return v3;
}

- (id)_smartBlackAndWhiteAdjustmentInfos
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = *MEMORY[0x1E69BE168];
  hueKey = [MEMORY[0x1E69BDF60] hueKey];
  v6 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:hueKey attributeKey:0];

  [v6 setIconName:@"PUExposureAdjustment"];
  [v6 setLocalizedName:@"SmartBW Hue"];
  strengthKey = [MEMORY[0x1E69BDF60] strengthKey];
  v8 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:strengthKey attributeKey:0];

  [v8 setIconName:@"PUExposureAdjustment"];
  [v8 setLocalizedName:@"SmartBW Strength"];
  neutralKey = [MEMORY[0x1E69BDF60] neutralKey];
  v10 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:neutralKey attributeKey:0];

  [v10 setIconName:@"PUExposureAdjustment"];
  [v10 setLocalizedName:@"SmartBW Neutral"];
  toneKey = [MEMORY[0x1E69BDF60] toneKey];
  v12 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:toneKey attributeKey:0];

  [v12 setIconName:@"PUExposureAdjustment"];
  [v12 setLocalizedName:@"SmartBW Tone"];
  grainKey = [MEMORY[0x1E69BDF60] grainKey];
  v14 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:grainKey attributeKey:0];

  [v14 setIconName:@"PUExposureAdjustment"];
  [v14 setLocalizedName:@"SmartBW Grain"];
  [v3 addObject:v8];
  [v3 addObject:v6];
  [v3 addObject:v10];
  [v3 addObject:v12];
  [v3 addObject:v14];

  return v3;
}

- (id)_vignetteAdjustmentInfos
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = *MEMORY[0x1E69BE190];
  intensityKey = [MEMORY[0x1E69BDF88] intensityKey];
  v6 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:intensityKey attributeKey:0];

  [v6 setIconName:@"PUVignetteTransitionAdjustment"];
  v7 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_VIGNETTE");
  [v6 setLocalizedName:v7];

  [v6 setCustomSettingDelegate:v3];
  v10[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  return v8;
}

- (id)_detailAdjustmentInfos
{
  v20[3] = *MEMORY[0x1E69E9840];
  v3 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_DETAIL");
  v4 = *MEMORY[0x1E69BE158];
  intensityKey = [MEMORY[0x1E69BDF58] intensityKey];
  v6 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:intensityKey attributeKey:0];

  [v6 setIconName:@"PUSharpenAdjustment"];
  v7 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_DETAIL_SHARPNESS");
  [v6 setLocalizedName:v7];

  [v6 setLocalizedSectionName:v3];
  v8 = *MEMORY[0x1E69BDFD0];
  intensityKey2 = [MEMORY[0x1E69BDE20] intensityKey];
  v10 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v8 settingKey:intensityKey2 attributeKey:0];

  [v10 setIconName:@"PUDefinitionAdjustment"];
  v11 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_DETAIL_DEFINITION");
  [v10 setLocalizedName:v11];

  [v10 setLocalizedSectionName:v3];
  if (([(PUAdjustmentsDataSource *)self assetType]& 1) != 0)
  {
    v12 = *MEMORY[0x1E69BE098];
    [MEMORY[0x1E69BDF10] luminanceKey];
  }

  else
  {
    v12 = *MEMORY[0x1E69BE050];
    [MEMORY[0x1E69BDE60] amountKey];
  }
  v13 = ;
  v14 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v12 settingKey:v13 attributeKey:0];

  [v14 setIconName:@"PUNoiseReductionAdjustment"];
  v15 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_DETAIL_NOISE_REDUCTION");
  [v14 setLocalizedName:v15];

  [v14 setLocalizedSectionName:v3];
  v16 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:*MEMORY[0x1E69BE168] settingKey:0 attributeKey:0];
  [v16 setIconName:@"PUGrainAdjustment"];
  v17 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_BLACK_AND_WHITE_GRAIN");
  [v16 setLocalizedName:v17];

  [v16 setLocalizedSectionName:v3];
  v20[0] = v6;
  v20[1] = v10;
  v20[2] = v14;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];

  return v18;
}

- (id)_colorAdjustmentInfos
{
  v22[4] = *MEMORY[0x1E69E9840];
  v3 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_COLOR");
  v4 = *MEMORY[0x1E69BE170];
  offsetSaturationKey = [MEMORY[0x1E69BDF68] offsetSaturationKey];
  attributeSaturationKey = [MEMORY[0x1E69BDF68] attributeSaturationKey];
  v7 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:offsetSaturationKey attributeKey:attributeSaturationKey];

  [v7 setIconName:@"PUSaturationAdjustment"];
  v8 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_COLOR_SATURATION");
  [v7 setLocalizedName:v8];

  [v7 setLocalizedSectionName:v3];
  [v7 setIconIsColor:1];
  offsetContrastKey = [MEMORY[0x1E69BDF68] offsetContrastKey];
  attributeContrastKey = [MEMORY[0x1E69BDF68] attributeContrastKey];
  v11 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:offsetContrastKey attributeKey:attributeContrastKey];

  [v11 setIconName:@"PUVibranceAdjustment"];
  v12 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_COLOR_VIBRANCY");
  [v11 setLocalizedName:v12];

  [v11 setLocalizedSectionName:v3];
  [v11 setIconIsColor:1];
  v13 = *MEMORY[0x1E69BE198];
  warmTempKey = [MEMORY[0x1E69BDF90] warmTempKey];
  v15 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v13 settingKey:warmTempKey attributeKey:0];

  [v15 setIconName:@"PUTemperatureAdjustment"];
  v16 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_WHITE_BALANCE_WARMTH");
  [v15 setLocalizedName:v16];

  [v15 setLocalizedSectionName:v3];
  warmTintKey = [MEMORY[0x1E69BDF90] warmTintKey];
  v18 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v13 settingKey:warmTintKey attributeKey:0];

  [v18 setIconName:@"PUTintAdjustment"];
  v19 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_WHITE_BALANCE_TINT");
  [v18 setLocalizedName:v19];

  [v18 setLocalizedSectionName:v3];
  v22[0] = v7;
  v22[1] = v11;
  v22[2] = v15;
  v22[3] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];

  return v20;
}

- (id)_lightAdjustmentInfos
{
  v44[6] = *MEMORY[0x1E69E9840];
  v3 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_LIGHT");
  v4 = *MEMORY[0x1E69BE178];
  offsetExposureKey = [MEMORY[0x1E69BDF70] offsetExposureKey];
  attributeExposureKey = [MEMORY[0x1E69BDF70] attributeExposureKey];
  selfCopy = self;
  v8 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:offsetExposureKey attributeKey:attributeExposureKey];

  [v8 setIconName:@"PUExposureAdjustment"];
  v9 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_EXPOSURE");
  [v8 setLocalizedName:v9];

  v42 = v8;
  [v8 setLocalizedSectionName:v3];
  offsetHighlightsKey = [MEMORY[0x1E69BDF70] offsetHighlightsKey];
  attributeHighlightsKey = [MEMORY[0x1E69BDF70] attributeHighlightsKey];
  v12 = selfCopy;
  v13 = [(PUAdjustmentsDataSource *)selfCopy _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:offsetHighlightsKey attributeKey:attributeHighlightsKey];

  [v13 setIconName:@"PUHighlightsAdjustment"];
  [v13 setAltIconName:@"PUShadowsAdjustment"];
  [v13 setAltImageTransformBlock:&__block_literal_global_4711];
  v14 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_HIGHLIGHTS");
  [v13 setLocalizedName:v14];

  v41 = v13;
  [v13 setLocalizedSectionName:v3];
  offsetShadowsKey = [MEMORY[0x1E69BDF70] offsetShadowsKey];
  attributeShadowsKey = [MEMORY[0x1E69BDF70] attributeShadowsKey];
  v17 = [(PUAdjustmentsDataSource *)selfCopy _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:offsetShadowsKey attributeKey:attributeShadowsKey];

  [v17 setIconName:@"PUShadowsAdjustment"];
  [v17 setAltIconName:@"PUHighlightsAdjustment"];
  [v17 setAltImageTransformBlock:&__block_literal_global_224];
  v18 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_SHADOWS");
  [v17 setLocalizedName:v18];

  [v17 setLocalizedSectionName:v3];
  v19 = objc_opt_new();
  [v17 setCustomSettingDelegate:v19];

  offsetContrastKey = [MEMORY[0x1E69BDF70] offsetContrastKey];
  attributeContrastKey = [MEMORY[0x1E69BDF70] attributeContrastKey];
  v22 = [(PUAdjustmentsDataSource *)v12 _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:offsetContrastKey attributeKey:attributeContrastKey];

  [v22 setIconName:@"PUContrastAdjustment"];
  v23 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_CONTRAST");
  [v22 setLocalizedName:v23];

  [v22 setAltImageTransformBlock:&__block_literal_global_236];
  [v22 setLocalizedSectionName:v3];
  offsetBrightnessKey = [MEMORY[0x1E69BDF70] offsetBrightnessKey];
  attributeBrightnessKey = [MEMORY[0x1E69BDF70] attributeBrightnessKey];
  v26 = [(PUAdjustmentsDataSource *)v12 _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:offsetBrightnessKey attributeKey:attributeBrightnessKey];

  [v26 setIconName:@"PUBrightnessAdjustment"];
  v27 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_BRIGHTNESS");
  [v26 setLocalizedName:v27];

  [v26 setLocalizedSectionName:v3];
  offsetBlackKey = [MEMORY[0x1E69BDF70] offsetBlackKey];
  attributeBlackPointKey = [MEMORY[0x1E69BDF70] attributeBlackPointKey];
  v30 = [(PUAdjustmentsDataSource *)v12 _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:offsetBlackKey attributeKey:attributeBlackPointKey];

  [v30 setIconName:@"PUBlackPointAdjustment"];
  v31 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_BLACK_POINT");
  [v30 setLocalizedName:v31];

  [v30 setLocalizedSectionName:v3];
  if (([(PUAdjustmentsDataSource *)v12 assetType]& 2) != 0)
  {
    v38 = v41;
    v37 = v42;
    v44[0] = v42;
    v44[1] = v41;
    v44[2] = v17;
    v44[3] = v22;
    v44[4] = v26;
    v44[5] = v30;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:6];
  }

  else
  {
    offsetLocalLightKey = [MEMORY[0x1E69BDF70] offsetLocalLightKey];
    attributeLocalLightKey = [MEMORY[0x1E69BDF70] attributeLocalLightKey];
    v34 = [(PUAdjustmentsDataSource *)v12 _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:offsetLocalLightKey attributeKey:attributeLocalLightKey];

    [v34 setIconName:@"PUBrillianceAdjustment"];
    v35 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_LOCAL_LIGHT");
    [v34 setLocalizedName:v35];

    [v34 setLocalizedSectionName:v3];
    v36 = objc_opt_new();
    [v34 setCustomSettingDelegate:v36];

    v38 = v41;
    v37 = v42;
    v43[0] = v42;
    v43[1] = v34;
    v43[2] = v41;
    v43[3] = v17;
    v43[4] = v22;
    v43[5] = v26;
    v43[6] = v30;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:7];
  }

  return v39;
}

- (id)_autoEnhanceAdjustmentInfo
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69BDF98];
  v4 = *MEMORY[0x1E69BE178];
  inputLightKey = [MEMORY[0x1E69BDF70] inputLightKey];
  v6 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithIdentifier:v3 adjustmentKey:v4 settingKey:inputLightKey attributeKey:0];

  v7 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_AUTO");
  [v6 setLocalizedName:v7];

  v8 = PXLocalizedString();
  [v6 setLocalizedActionName:v8];

  [v6 setIconName:@"PUAutoEnhanceAdjustment"];
  v9 = objc_opt_new();
  [v9 setDataSource:self];
  [v6 setCustomSettingDelegate:v9];
  v12[0] = v6;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  return v10;
}

- (void)_createAdjustmentInfos
{
  adjustmentInfoSections = self->_adjustmentInfoSections;
  _autoEnhanceAdjustmentInfo = [(PUAdjustmentsDataSource *)self _autoEnhanceAdjustmentInfo];
  [(NSMutableArray *)adjustmentInfoSections addObject:_autoEnhanceAdjustmentInfo];

  v5 = self->_adjustmentInfoSections;
  _lightAdjustmentInfos = [(PUAdjustmentsDataSource *)self _lightAdjustmentInfos];
  [(NSMutableArray *)v5 addObject:_lightAdjustmentInfos];

  v7 = self->_adjustmentInfoSections;
  _colorAdjustmentInfos = [(PUAdjustmentsDataSource *)self _colorAdjustmentInfos];
  [(NSMutableArray *)v7 addObject:_colorAdjustmentInfos];

  v9 = self->_adjustmentInfoSections;
  _detailAdjustmentInfos = [(PUAdjustmentsDataSource *)self _detailAdjustmentInfos];
  [(NSMutableArray *)v9 addObject:_detailAdjustmentInfos];

  v11 = self->_adjustmentInfoSections;
  _vignetteAdjustmentInfos = [(PUAdjustmentsDataSource *)self _vignetteAdjustmentInfos];
  [(NSMutableArray *)v11 addObject:_vignetteAdjustmentInfos];

  v13 = +[PUPhotoEditProtoSettings sharedInstance];
  LODWORD(_vignetteAdjustmentInfos) = [v13 showSmartBlackAndWhiteAdjustment];

  if (_vignetteAdjustmentInfos)
  {
    v14 = self->_adjustmentInfoSections;
    _smartBlackAndWhiteAdjustmentInfos = [(PUAdjustmentsDataSource *)self _smartBlackAndWhiteAdjustmentInfos];
    [(NSMutableArray *)v14 addObject:_smartBlackAndWhiteAdjustmentInfos];
  }

  v16 = self->_adjustmentInfoSections;
  _debugAdjustmentInfos = [(PUAdjustmentsDataSource *)self _debugAdjustmentInfos];
  [(NSMutableArray *)v16 addObject:_debugAdjustmentInfos];

  v18 = self->_adjustmentInfoSections;
  _headroomAdjustmentInfos = [(PUAdjustmentsDataSource *)self _headroomAdjustmentInfos];
  [(NSMutableArray *)v18 addObject:_headroomAdjustmentInfos];
}

- (id)_newAdjustmentInfoWithIdentifier:(id)identifier adjustmentKey:(id)key settingKey:(id)settingKey attributeKey:(id)attributeKey
{
  attributeKeyCopy = attributeKey;
  settingKeyCopy = settingKey;
  keyCopy = key;
  identifierCopy = identifier;
  v14 = objc_alloc_init(PUAdjustmentInfo);
  [(PUAdjustmentInfo *)v14 setIdentifier:identifierCopy];

  [(PUAdjustmentInfo *)v14 setAdjustmentKey:keyCopy];
  [(PUAdjustmentInfo *)v14 setSettingKey:settingKeyCopy];

  [(PUAdjustmentInfo *)v14 setAttributeKey:attributeKeyCopy];
  [(PUAdjustmentsDataSource *)self _setDefaultsForInfo:v14];
  return v14;
}

- (void)_setDefaultsForInfo:(id)info
{
  infoCopy = info;
  attributeKey = [infoCopy attributeKey];
  if (attributeKey)
  {
    settingKey = attributeKey;
  }

  else
  {
    settingKey = [infoCopy settingKey];
    if (!settingKey)
    {
      goto LABEL_6;
    }
  }

  adjustmentKey = [infoCopy adjustmentKey];

  if (adjustmentKey)
  {
    v6 = MEMORY[0x1E69BE360];
    adjustmentKey2 = [infoCopy adjustmentKey];
    v8 = [v6 valueForType:2 adjustmentKey:adjustmentKey2 settingKey:settingKey];
    [v8 floatValue];
    [infoCopy setMinimumLevel:v9];

    v10 = MEMORY[0x1E69BE360];
    adjustmentKey3 = [infoCopy adjustmentKey];
    v12 = [v10 valueForType:3 adjustmentKey:adjustmentKey3 settingKey:settingKey];
    [v12 floatValue];
    [infoCopy setMaximumLevel:v13];

    v14 = MEMORY[0x1E69BE360];
    adjustmentKey4 = [infoCopy adjustmentKey];
    v16 = [v14 valueForType:1 adjustmentKey:adjustmentKey4 settingKey:settingKey];
    [v16 floatValue];
    v18 = v17;

    [infoCopy setIdentityLevel:v18];
    [infoCopy setDefaultLevel:v18];
    [infoCopy setCurrentLevel:v18];
    [infoCopy setLastAdjustedLevel:v18];
  }

LABEL_6:
}

- (id)renderer
{
  delegate = [(PUAdjustmentsDataSource *)self delegate];
  v4 = [delegate adjustmentsRenderer:self];

  return v4;
}

- (void)setupWithCompositionController:(id)controller valuesCalculator:(id)calculator autoAdjustmentController:(id)adjustmentController assetType:(unint64_t)type
{
  controllerCopy = controller;
  calculatorCopy = calculator;
  adjustmentControllerCopy = adjustmentController;
  compositionController = self->_compositionController;
  v14 = compositionController != controllerCopy;
  if (compositionController != controllerCopy)
  {
    objc_storeStrong(&self->_compositionController, controller);
  }

  if (self->_valuesCalculator != calculatorCopy)
  {
    objc_storeStrong(&self->_valuesCalculator, calculator);
    v14 = 1;
  }

  if ([(PUAdjustmentsDataSource *)self assetType]!= type)
  {
    [(PUAdjustmentsDataSource *)self setAssetType:type];
    objc_storeStrong(&self->_autoEnhanceController, adjustmentController);
    goto LABEL_9;
  }

  objc_storeStrong(&self->_autoEnhanceController, adjustmentController);
  if (v14)
  {
LABEL_9:
    [(PUAdjustmentsDataSource *)self _enableNonAutoAdjustments:1];
    [(PUAdjustmentsDataSource *)self _updateAdjustmentInfos];
  }
}

@end