@interface PUAdjustmentsDataSource
- (BOOL)canModifyAdjustmentAtIndexPath:(id)a3;
- (NSMutableArray)adjustmentInfoSections;
- (PUAdjustmentsDataSourceDelegate)delegate;
- (id)_autoEnhanceAdjustmentInfo;
- (id)_colorAdjustmentInfos;
- (id)_debugAdjustmentInfos;
- (id)_detailAdjustmentInfos;
- (id)_headroomAdjustmentInfos;
- (id)_lightAdjustmentInfos;
- (id)_newAdjustmentInfoWithIdentifier:(id)a3 adjustmentKey:(id)a4 settingKey:(id)a5 attributeKey:(id)a6;
- (id)_smartBlackAndWhiteAdjustmentInfos;
- (id)_vignetteAdjustmentInfos;
- (id)infoForItemAtIndexPath:(id)a3;
- (id)renderer;
- (int64_t)numberOfItemsInAllSections;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (void)_createAdjustmentInfos;
- (void)_enableNonAutoAdjustments:(BOOL)a3;
- (void)_modifyAdjustmentForInfo:(id)a3;
- (void)_resetEnabledStateForAutoEnhancedInfos;
- (void)_setDefaultsForInfo:(id)a3;
- (void)_updateAdjustmentInfos;
- (void)beginInteractiveChange;
- (void)compositionControllerDidChange;
- (void)endInteractiveChange;
- (void)modifyValue:(double)a3 atIndexPath:(id)a4;
- (void)resetInfoAtIndexPath:(id)a3;
- (void)setAdjustmentEnabled:(BOOL)a3 atIndexPath:(id)a4 completionHandler:(id)a5;
- (void)setupWithCompositionController:(id)a3 valuesCalculator:(id)a4 autoAdjustmentController:(id)a5 assetType:(unint64_t)a6;
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
  v3 = [(PUAdjustmentsDataSource *)self delegate];
  [v3 adjustmentsDataChanged:self];
}

- (void)_resetEnabledStateForAutoEnhancedInfos
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [(PUAdjustmentsDataSource *)self compositionController];
  v4 = [v3 whiteBalanceAdjustmentController];
  v5 = [v4 warmFace];

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
              v16 = [v15 identifier];
              if (v16 == v6)
              {
                goto LABEL_18;
              }

              v17 = [v15 identifier];
              v18 = v17;
              if (v17 == v7)
              {

LABEL_18:
LABEL_19:
                [v15 setEnabled:1];
                goto LABEL_21;
              }

              if (v5)
              {
                [v15 identifier];
                v19 = v13;
                v20 = v6;
                v21 = v10;
                v22 = v7;
                v24 = v23 = v5;

                v25 = v24 == v30;
                v5 = v23;
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

- (void)resetInfoAtIndexPath:(id)a3
{
  v4 = [(PUAdjustmentsDataSource *)self infoForItemAtIndexPath:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 settingKey];

    if (v6)
    {
      v7 = [(PUAdjustmentsDataSource *)self compositionController];
      v8 = [v5 adjustmentKey];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __48__PUAdjustmentsDataSource_resetInfoAtIndexPath___block_invoke;
      v9[3] = &unk_1E7B80728;
      v10 = v5;
      [v7 modifyAdjustmentWithKey:v8 modificationBlock:v9];
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

- (void)modifyValue:(double)a3 atIndexPath:(id)a4
{
  v12 = a4;
  v6 = [(PUAdjustmentsDataSource *)self infoForItemAtIndexPath:?];
  if (([v6 enabled] & 1) == 0)
  {
    [(PUAdjustmentsDataSource *)self setAdjustmentEnabled:1 atIndexPath:v12 completionHandler:0];
  }

  v7 = [v6 settingKey];

  if (v7)
  {
    v8 = [v6 customSettingDelegate];

    if (v8 && ([v6 customSettingDelegate], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v6 customSettingDelegate];
      [v11 dataSource:self adjustmentInfo:v6 modifyValue:a3];
    }

    else
    {
      [v6 setCurrentLevel:a3];
      [(PUAdjustmentsDataSource *)self _modifyAdjustmentForInfo:v6];
    }
  }
}

- (void)_modifyAdjustmentForInfo:(id)a3
{
  v4 = a3;
  v5 = [(PUAdjustmentsDataSource *)self compositionController];
  v6 = [v4 adjustmentKey];
  v7 = [v5 adjustmentControllerForKey:v6];
  v8 = v7 != 0;

  v9 = [(PUAdjustmentsDataSource *)self delegate];
  [v9 willModifyAdjustment];

  v10 = [(PUAdjustmentsDataSource *)self compositionController];
  v11 = [v4 adjustmentKey];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__PUAdjustmentsDataSource__modifyAdjustmentForInfo___block_invoke;
  v15[3] = &unk_1E7B74B80;
  v18 = v8;
  v16 = v4;
  v17 = self;
  v12 = v4;
  [v10 modifyAdjustmentWithKey:v11 modificationBlock:v15];

  v13 = [v12 localizedActionName];
  v14 = [(PUAdjustmentsDataSource *)self delegate];
  [v14 didModifyAdjustmentWithLocalizedName:v13];

  [(PUAdjustmentsDataSource *)self setLastAdjustmentLocalizedName:v13];
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

- (void)setAdjustmentEnabled:(BOOL)a3 atIndexPath:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = [(PUAdjustmentsDataSource *)self infoForItemAtIndexPath:a4];
  if ([v9 enabled] == v6)
  {
    if (v8)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __78__PUAdjustmentsDataSource_setAdjustmentEnabled_atIndexPath_completionHandler___block_invoke;
      v22[3] = &unk_1E7B80C88;
      v10 = &v23;
      v23 = v8;
      v11 = MEMORY[0x1E69E96A0];
      v12 = v22;
LABEL_11:
      dispatch_async(v11, v12);
      goto LABEL_12;
    }
  }

  else
  {
    [v9 setEnabled:v6];
    if ([v9 enabled])
    {
      [v9 lastAdjustedLevel];
    }

    else
    {
      [v9 defaultLevel];
    }

    [v9 setCurrentLevel:?];
    v13 = [v9 customSettingDelegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [v9 customSettingDelegate];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __78__PUAdjustmentsDataSource_setAdjustmentEnabled_atIndexPath_completionHandler___block_invoke_2;
      v19[3] = &unk_1E7B80CB0;
      v10 = v20;
      v16 = v9;
      v20[0] = v16;
      v20[1] = self;
      v21 = v8;
      [v15 dataSource:self adjustmentInfo:v16 setEnabled:v6 completionHandler:v19];

LABEL_12:
      goto LABEL_13;
    }

    [(PUAdjustmentsDataSource *)self _modifyAdjustmentForInfo:v9];
    if (v8)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__PUAdjustmentsDataSource_setAdjustmentEnabled_atIndexPath_completionHandler___block_invoke_4;
      block[3] = &unk_1E7B80C88;
      v10 = &v18;
      v18 = v8;
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
  v4 = [(PUAdjustmentsDataSource *)self delegate];
  v3 = [(PUAdjustmentsDataSource *)self lastAdjustmentLocalizedName];
  [v4 didModifyAdjustmentWithLocalizedName:v3];
}

- (void)beginInteractiveChange
{
  v2 = [(PUAdjustmentsDataSource *)self delegate];
  [v2 willModifyAdjustment];
}

- (BOOL)canModifyAdjustmentAtIndexPath:(id)a3
{
  v4 = [(PUAdjustmentsDataSource *)self compositionController];

  if (!v4)
  {
    return 0;
  }

  v5 = [(PUAdjustmentsDataSource *)self autoEnhanceController];
  v6 = [v5 isBusy];

  return v6 ^ 1;
}

- (id)infoForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = [v4 section], -[PUAdjustmentsDataSource adjustmentInfoSections](self, "adjustmentInfoSections"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 < v8) && (v9 = objc_msgSend(v5, "item"), -[PUAdjustmentsDataSource adjustmentInfoSections](self, "adjustmentInfoSections"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectAtIndexedSubscript:", objc_msgSend(v5, "section")), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10, v9 < v12))
  {
    v13 = [(PUAdjustmentsDataSource *)self adjustmentInfoSections];
    v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
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

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v5 = [(PUAdjustmentsDataSource *)self adjustmentInfoSections];
  v6 = [v5 count];

  if (a3 < 0 || v6 <= a3)
  {
    return 0;
  }

  v7 = [(PUAdjustmentsDataSource *)self adjustmentInfoSections];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 count];

  return v9;
}

- (int64_t)numberOfSections
{
  v2 = [(PUAdjustmentsDataSource *)self adjustmentInfoSections];
  v3 = [v2 count];

  return v3;
}

- (NSMutableArray)adjustmentInfoSections
{
  adjustmentInfoSections = self->_adjustmentInfoSections;
  if (!adjustmentInfoSections)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = self->_adjustmentInfoSections;
    self->_adjustmentInfoSections = v4;

    [(PUAdjustmentsDataSource *)self _createAdjustmentInfos];
    adjustmentInfoSections = self->_adjustmentInfoSections;
  }

  return adjustmentInfoSections;
}

- (void)_updateAdjustmentInfos
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(PUAdjustmentsDataSource *)self compositionController];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = self;
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
              v12 = [v11 identifier];

              if (v12 == v4)
              {
                [v11 setEnabled:{objc_msgSend(MEMORY[0x1E69C4260], "isAutoEnhanceEnabledForCompositionController:", v3)}];
                v13 = [(PUAdjustmentsDataSource *)v27 autoEnhanceController];
                [v13 defaultAutoEnhanceIntensityForCompositionController:v3];
                [v11 setDefaultLevel:?];
              }

              v14 = [v11 attributeKey];
              if (!v14)
              {
                v14 = [v11 settingKey];
                if (!v14)
                {
                  continue;
                }
              }

              v15 = v14;
              v16 = MEMORY[0x1E69BE360];
              v17 = [v11 adjustmentKey];
              v18 = [v16 valueForCompositionController:v3 adjustmentKey:v17 settingKey:v15];

              if (v18)
              {
                [v18 floatValue];
                [v11 setCurrentLevel:v19];
                if (v12 != v4 && ([v11 enabled] & 1) == 0)
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

- (void)_enableNonAutoAdjustments:(BOOL)a3
{
  v3 = a3;
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
              v15 = [v14 identifier];

              if (v15 != v6)
              {
                [v14 setEnabled:v3];
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
  v5 = [v4 showHDRHeadroomControl];

  if (v5)
  {
    v6 = *MEMORY[0x1E69BDFC8];
    v7 = [MEMORY[0x1E69BDE18] headroomAdjustmentKey];
    v8 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v6 settingKey:v7 attributeKey:0];

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
  v5 = [v4 showHDRDebugAdjustments];

  if (v5)
  {
    v6 = *MEMORY[0x1E69BDFC8];
    v7 = [MEMORY[0x1E69BDE18] inputExposureKey];
    v8 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v6 settingKey:v7 attributeKey:0];

    [v8 setIconName:@"PUExposureAdjustment"];
    [v8 setLocalizedName:@"Input Exposure"];
    v9 = [MEMORY[0x1E69BDE18] outputExposureKey];
    v10 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v6 settingKey:v9 attributeKey:0];

    [v10 setIconName:@"PUExposureAdjustment"];
    [v10 setLocalizedName:@"Output Exposure"];
    v11 = [MEMORY[0x1E69BDE18] falseColorHDRKey];
    v12 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v6 settingKey:v11 attributeKey:0];

    [v12 setIconName:@"PUSaturationAdjustment"];
    [v12 setLocalizedName:@"False Color HDR"];
    [v12 setIconIsColor:1];
    v13 = [MEMORY[0x1E69BDE18] inputRAWGamutMapMaxKey];
    v14 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v6 settingKey:v13 attributeKey:0];

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
  v5 = [MEMORY[0x1E69BDF60] hueKey];
  v6 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v5 attributeKey:0];

  [v6 setIconName:@"PUExposureAdjustment"];
  [v6 setLocalizedName:@"SmartBW Hue"];
  v7 = [MEMORY[0x1E69BDF60] strengthKey];
  v8 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v7 attributeKey:0];

  [v8 setIconName:@"PUExposureAdjustment"];
  [v8 setLocalizedName:@"SmartBW Strength"];
  v9 = [MEMORY[0x1E69BDF60] neutralKey];
  v10 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v9 attributeKey:0];

  [v10 setIconName:@"PUExposureAdjustment"];
  [v10 setLocalizedName:@"SmartBW Neutral"];
  v11 = [MEMORY[0x1E69BDF60] toneKey];
  v12 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v11 attributeKey:0];

  [v12 setIconName:@"PUExposureAdjustment"];
  [v12 setLocalizedName:@"SmartBW Tone"];
  v13 = [MEMORY[0x1E69BDF60] grainKey];
  v14 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v13 attributeKey:0];

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
  v5 = [MEMORY[0x1E69BDF88] intensityKey];
  v6 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v5 attributeKey:0];

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
  v5 = [MEMORY[0x1E69BDF58] intensityKey];
  v6 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v5 attributeKey:0];

  [v6 setIconName:@"PUSharpenAdjustment"];
  v7 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_DETAIL_SHARPNESS");
  [v6 setLocalizedName:v7];

  [v6 setLocalizedSectionName:v3];
  v8 = *MEMORY[0x1E69BDFD0];
  v9 = [MEMORY[0x1E69BDE20] intensityKey];
  v10 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v8 settingKey:v9 attributeKey:0];

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
  v5 = [MEMORY[0x1E69BDF68] offsetSaturationKey];
  v6 = [MEMORY[0x1E69BDF68] attributeSaturationKey];
  v7 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v5 attributeKey:v6];

  [v7 setIconName:@"PUSaturationAdjustment"];
  v8 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_COLOR_SATURATION");
  [v7 setLocalizedName:v8];

  [v7 setLocalizedSectionName:v3];
  [v7 setIconIsColor:1];
  v9 = [MEMORY[0x1E69BDF68] offsetContrastKey];
  v10 = [MEMORY[0x1E69BDF68] attributeContrastKey];
  v11 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v9 attributeKey:v10];

  [v11 setIconName:@"PUVibranceAdjustment"];
  v12 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_COLOR_VIBRANCY");
  [v11 setLocalizedName:v12];

  [v11 setLocalizedSectionName:v3];
  [v11 setIconIsColor:1];
  v13 = *MEMORY[0x1E69BE198];
  v14 = [MEMORY[0x1E69BDF90] warmTempKey];
  v15 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v13 settingKey:v14 attributeKey:0];

  [v15 setIconName:@"PUTemperatureAdjustment"];
  v16 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_WHITE_BALANCE_WARMTH");
  [v15 setLocalizedName:v16];

  [v15 setLocalizedSectionName:v3];
  v17 = [MEMORY[0x1E69BDF90] warmTintKey];
  v18 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v13 settingKey:v17 attributeKey:0];

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
  v5 = [MEMORY[0x1E69BDF70] offsetExposureKey];
  v6 = [MEMORY[0x1E69BDF70] attributeExposureKey];
  v7 = self;
  v8 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v5 attributeKey:v6];

  [v8 setIconName:@"PUExposureAdjustment"];
  v9 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_EXPOSURE");
  [v8 setLocalizedName:v9];

  v42 = v8;
  [v8 setLocalizedSectionName:v3];
  v10 = [MEMORY[0x1E69BDF70] offsetHighlightsKey];
  v11 = [MEMORY[0x1E69BDF70] attributeHighlightsKey];
  v12 = v7;
  v13 = [(PUAdjustmentsDataSource *)v7 _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v10 attributeKey:v11];

  [v13 setIconName:@"PUHighlightsAdjustment"];
  [v13 setAltIconName:@"PUShadowsAdjustment"];
  [v13 setAltImageTransformBlock:&__block_literal_global_4711];
  v14 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_HIGHLIGHTS");
  [v13 setLocalizedName:v14];

  v41 = v13;
  [v13 setLocalizedSectionName:v3];
  v15 = [MEMORY[0x1E69BDF70] offsetShadowsKey];
  v16 = [MEMORY[0x1E69BDF70] attributeShadowsKey];
  v17 = [(PUAdjustmentsDataSource *)v7 _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v15 attributeKey:v16];

  [v17 setIconName:@"PUShadowsAdjustment"];
  [v17 setAltIconName:@"PUHighlightsAdjustment"];
  [v17 setAltImageTransformBlock:&__block_literal_global_224];
  v18 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_SHADOWS");
  [v17 setLocalizedName:v18];

  [v17 setLocalizedSectionName:v3];
  v19 = objc_opt_new();
  [v17 setCustomSettingDelegate:v19];

  v20 = [MEMORY[0x1E69BDF70] offsetContrastKey];
  v21 = [MEMORY[0x1E69BDF70] attributeContrastKey];
  v22 = [(PUAdjustmentsDataSource *)v12 _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v20 attributeKey:v21];

  [v22 setIconName:@"PUContrastAdjustment"];
  v23 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_CONTRAST");
  [v22 setLocalizedName:v23];

  [v22 setAltImageTransformBlock:&__block_literal_global_236];
  [v22 setLocalizedSectionName:v3];
  v24 = [MEMORY[0x1E69BDF70] offsetBrightnessKey];
  v25 = [MEMORY[0x1E69BDF70] attributeBrightnessKey];
  v26 = [(PUAdjustmentsDataSource *)v12 _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v24 attributeKey:v25];

  [v26 setIconName:@"PUBrightnessAdjustment"];
  v27 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_BRIGHTNESS");
  [v26 setLocalizedName:v27];

  [v26 setLocalizedSectionName:v3];
  v28 = [MEMORY[0x1E69BDF70] offsetBlackKey];
  v29 = [MEMORY[0x1E69BDF70] attributeBlackPointKey];
  v30 = [(PUAdjustmentsDataSource *)v12 _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v28 attributeKey:v29];

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
    v32 = [MEMORY[0x1E69BDF70] offsetLocalLightKey];
    v33 = [MEMORY[0x1E69BDF70] attributeLocalLightKey];
    v34 = [(PUAdjustmentsDataSource *)v12 _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v32 attributeKey:v33];

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
  v5 = [MEMORY[0x1E69BDF70] inputLightKey];
  v6 = [(PUAdjustmentsDataSource *)self _newAdjustmentInfoWithIdentifier:v3 adjustmentKey:v4 settingKey:v5 attributeKey:0];

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
  v4 = [(PUAdjustmentsDataSource *)self _autoEnhanceAdjustmentInfo];
  [(NSMutableArray *)adjustmentInfoSections addObject:v4];

  v5 = self->_adjustmentInfoSections;
  v6 = [(PUAdjustmentsDataSource *)self _lightAdjustmentInfos];
  [(NSMutableArray *)v5 addObject:v6];

  v7 = self->_adjustmentInfoSections;
  v8 = [(PUAdjustmentsDataSource *)self _colorAdjustmentInfos];
  [(NSMutableArray *)v7 addObject:v8];

  v9 = self->_adjustmentInfoSections;
  v10 = [(PUAdjustmentsDataSource *)self _detailAdjustmentInfos];
  [(NSMutableArray *)v9 addObject:v10];

  v11 = self->_adjustmentInfoSections;
  v12 = [(PUAdjustmentsDataSource *)self _vignetteAdjustmentInfos];
  [(NSMutableArray *)v11 addObject:v12];

  v13 = +[PUPhotoEditProtoSettings sharedInstance];
  LODWORD(v12) = [v13 showSmartBlackAndWhiteAdjustment];

  if (v12)
  {
    v14 = self->_adjustmentInfoSections;
    v15 = [(PUAdjustmentsDataSource *)self _smartBlackAndWhiteAdjustmentInfos];
    [(NSMutableArray *)v14 addObject:v15];
  }

  v16 = self->_adjustmentInfoSections;
  v17 = [(PUAdjustmentsDataSource *)self _debugAdjustmentInfos];
  [(NSMutableArray *)v16 addObject:v17];

  v18 = self->_adjustmentInfoSections;
  v19 = [(PUAdjustmentsDataSource *)self _headroomAdjustmentInfos];
  [(NSMutableArray *)v18 addObject:v19];
}

- (id)_newAdjustmentInfoWithIdentifier:(id)a3 adjustmentKey:(id)a4 settingKey:(id)a5 attributeKey:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(PUAdjustmentInfo);
  [(PUAdjustmentInfo *)v14 setIdentifier:v13];

  [(PUAdjustmentInfo *)v14 setAdjustmentKey:v12];
  [(PUAdjustmentInfo *)v14 setSettingKey:v11];

  [(PUAdjustmentInfo *)v14 setAttributeKey:v10];
  [(PUAdjustmentsDataSource *)self _setDefaultsForInfo:v14];
  return v14;
}

- (void)_setDefaultsForInfo:(id)a3
{
  v19 = a3;
  v3 = [v19 attributeKey];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [v19 settingKey];
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v5 = [v19 adjustmentKey];

  if (v5)
  {
    v6 = MEMORY[0x1E69BE360];
    v7 = [v19 adjustmentKey];
    v8 = [v6 valueForType:2 adjustmentKey:v7 settingKey:v4];
    [v8 floatValue];
    [v19 setMinimumLevel:v9];

    v10 = MEMORY[0x1E69BE360];
    v11 = [v19 adjustmentKey];
    v12 = [v10 valueForType:3 adjustmentKey:v11 settingKey:v4];
    [v12 floatValue];
    [v19 setMaximumLevel:v13];

    v14 = MEMORY[0x1E69BE360];
    v15 = [v19 adjustmentKey];
    v16 = [v14 valueForType:1 adjustmentKey:v15 settingKey:v4];
    [v16 floatValue];
    v18 = v17;

    [v19 setIdentityLevel:v18];
    [v19 setDefaultLevel:v18];
    [v19 setCurrentLevel:v18];
    [v19 setLastAdjustedLevel:v18];
  }

LABEL_6:
}

- (id)renderer
{
  v3 = [(PUAdjustmentsDataSource *)self delegate];
  v4 = [v3 adjustmentsRenderer:self];

  return v4;
}

- (void)setupWithCompositionController:(id)a3 valuesCalculator:(id)a4 autoAdjustmentController:(id)a5 assetType:(unint64_t)a6
{
  v15 = a3;
  v11 = a4;
  v12 = a5;
  compositionController = self->_compositionController;
  v14 = compositionController != v15;
  if (compositionController != v15)
  {
    objc_storeStrong(&self->_compositionController, a3);
  }

  if (self->_valuesCalculator != v11)
  {
    objc_storeStrong(&self->_valuesCalculator, a4);
    v14 = 1;
  }

  if ([(PUAdjustmentsDataSource *)self assetType]!= a6)
  {
    [(PUAdjustmentsDataSource *)self setAssetType:a6];
    objc_storeStrong(&self->_autoEnhanceController, a5);
    goto LABEL_9;
  }

  objc_storeStrong(&self->_autoEnhanceController, a5);
  if (v14)
  {
LABEL_9:
    [(PUAdjustmentsDataSource *)self _enableNonAutoAdjustments:1];
    [(PUAdjustmentsDataSource *)self _updateAdjustmentInfos];
  }
}

@end