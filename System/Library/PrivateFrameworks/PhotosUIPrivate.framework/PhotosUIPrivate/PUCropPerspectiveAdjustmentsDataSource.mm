@interface PUCropPerspectiveAdjustmentsDataSource
- (BOOL)canModifyAdjustmentAtIndexPath:(id)a3;
- (NSMutableArray)adjustmentInfoSections;
- (PUCropPerspectiveAdjustmentsDataSource)init;
- (PUCropPerspectiveAdjustmentsDataSourceDelegate)delegate;
- (id)_geometryAdjustmentInfos;
- (id)_newAdjustmentInfoWithIdentifier:(id)a3 adjustmentKey:(id)a4 settingKey:(id)a5 attributeKey:(id)a6;
- (id)infoForItemAtIndexPath:(id)a3;
- (id)renderer;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (void)_createAdjustmentInfos;
- (void)_enableNonAutoAjustments:(BOOL)a3;
- (void)_modifyAdjustmentForInfo:(id)a3;
- (void)_setDefaultsForInfo:(id)a3;
- (void)_updateAdjustmentInfos;
- (void)beginInteractiveChange;
- (void)endInteractiveChange;
- (void)modifyValue:(double)a3 atIndexPath:(id)a4;
- (void)resetInfoAtIndexPath:(id)a3;
- (void)setAdjustmentEnabled:(BOOL)a3 atIndexPath:(id)a4 completionHandler:(id)a5;
- (void)setOrientation:(int64_t)a3;
- (void)setupWithCompositionController:(id)a3 valuesCalculator:(id)a4;
@end

@implementation PUCropPerspectiveAdjustmentsDataSource

- (PUCropPerspectiveAdjustmentsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resetInfoAtIndexPath:(id)a3
{
  v4 = [(PUCropPerspectiveAdjustmentsDataSource *)self infoForItemAtIndexPath:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 settingKey];

    if (v6)
    {
      v7 = [(PUCropPerspectiveAdjustmentsDataSource *)self compositionController];
      v8 = [v5 adjustmentKey];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __63__PUCropPerspectiveAdjustmentsDataSource_resetInfoAtIndexPath___block_invoke;
      v9[3] = &unk_1E7B80728;
      v10 = v5;
      [v7 modifyAdjustmentWithKey:v8 modificationBlock:v9];
    }
  }
}

void __63__PUCropPerspectiveAdjustmentsDataSource_resetInfoAtIndexPath___block_invoke(uint64_t a1, void *a2)
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
  v8 = a4;
  v6 = [(PUCropPerspectiveAdjustmentsDataSource *)self infoForItemAtIndexPath:?];
  if (([v6 enabled] & 1) == 0)
  {
    [(PUCropPerspectiveAdjustmentsDataSource *)self setAdjustmentEnabled:1 atIndexPath:v8 completionHandler:0];
  }

  v7 = [v6 settingKey];

  if (v7)
  {
    [v6 setCurrentLevel:a3];
    [(PUCropPerspectiveAdjustmentsDataSource *)self _modifyAdjustmentForInfo:v6];
  }
}

- (void)_modifyAdjustmentForInfo:(id)a3
{
  v4 = a3;
  v5 = [(PUCropPerspectiveAdjustmentsDataSource *)self delegate];
  [v5 willModifyAdjustment];

  v6 = [(PUCropPerspectiveAdjustmentsDataSource *)self compositionController];
  v7 = [v4 adjustmentKey];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __67__PUCropPerspectiveAdjustmentsDataSource__modifyAdjustmentForInfo___block_invoke;
  v14 = &unk_1E7B80700;
  v15 = v4;
  v16 = self;
  v8 = v4;
  [v6 modifyAdjustmentWithKey:v7 modificationBlock:&v11];

  v9 = [v8 localizedActionName];
  v10 = [(PUCropPerspectiveAdjustmentsDataSource *)self delegate];
  [v10 didModifyAdjustmentWithLocalizedName:v9];

  [(PUCropPerspectiveAdjustmentsDataSource *)self setLastAdjustmentLocalizedName:v9];
}

void __67__PUCropPerspectiveAdjustmentsDataSource__modifyAdjustmentForInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEnabled:1];
  v4 = MEMORY[0x1E696AD98];
  [*(a1 + 32) currentLevel];
  v6 = v5;
  v7 = *(*(a1 + 40) + 40);
  v8 = [*(a1 + 32) settingKey];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v4 numberWithDouble:{v6 * objc_msgSend(v9, "intValue")}];
  v11 = [*(a1 + 32) settingKey];
  [v3 setObject:v10 forKeyedSubscript:v11];

  v12 = [*(a1 + 40) delegate];
  [v12 adjustmentsDataChanged:*(a1 + 40)];
}

- (void)setAdjustmentEnabled:(BOOL)a3 atIndexPath:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = [(PUCropPerspectiveAdjustmentsDataSource *)self infoForItemAtIndexPath:a4];
  if ([v9 enabled] == v6)
  {
    if (v8)
    {
      v10 = v13;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v11 = __93__PUCropPerspectiveAdjustmentsDataSource_setAdjustmentEnabled_atIndexPath_completionHandler___block_invoke;
LABEL_9:
      v10[2] = v11;
      v10[3] = &unk_1E7B80C88;
      v10[4] = v8;
      dispatch_async(MEMORY[0x1E69E96A0], v10);
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
    [(PUCropPerspectiveAdjustmentsDataSource *)self _modifyAdjustmentForInfo:v9];
    if (v8)
    {
      v10 = v12;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v11 = __93__PUCropPerspectiveAdjustmentsDataSource_setAdjustmentEnabled_atIndexPath_completionHandler___block_invoke_2;
      goto LABEL_9;
    }
  }
}

- (void)endInteractiveChange
{
  v4 = [(PUCropPerspectiveAdjustmentsDataSource *)self delegate];
  v3 = [(PUCropPerspectiveAdjustmentsDataSource *)self lastAdjustmentLocalizedName];
  [v4 didModifyAdjustmentWithLocalizedName:v3];
}

- (void)beginInteractiveChange
{
  v2 = [(PUCropPerspectiveAdjustmentsDataSource *)self delegate];
  [v2 willModifyAdjustment];
}

- (BOOL)canModifyAdjustmentAtIndexPath:(id)a3
{
  v3 = [(PUCropPerspectiveAdjustmentsDataSource *)self compositionController];
  v4 = v3 != 0;

  return v4;
}

- (id)infoForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = [v4 section], -[PUCropPerspectiveAdjustmentsDataSource adjustmentInfoSections](self, "adjustmentInfoSections"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 < v8) && (v9 = objc_msgSend(v5, "item"), -[PUCropPerspectiveAdjustmentsDataSource adjustmentInfoSections](self, "adjustmentInfoSections"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectAtIndexedSubscript:", objc_msgSend(v5, "section")), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10, v9 < v12))
  {
    v13 = [(PUCropPerspectiveAdjustmentsDataSource *)self adjustmentInfoSections];
    v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v5, "item")}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v5 = [(PUCropPerspectiveAdjustmentsDataSource *)self adjustmentInfoSections];
  v6 = [v5 count];

  if (a3 < 0 || v6 <= a3)
  {
    return 0;
  }

  v7 = [(PUCropPerspectiveAdjustmentsDataSource *)self adjustmentInfoSections];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 count];

  return v9;
}

- (int64_t)numberOfSections
{
  v2 = [(PUCropPerspectiveAdjustmentsDataSource *)self adjustmentInfoSections];
  v3 = [v2 count];

  return v3;
}

- (NSMutableArray)adjustmentInfoSections
{
  adjustmentInfoSections = self->_adjustmentInfoSections;
  if (!adjustmentInfoSections)
  {
    v4 = objc_opt_new();
    v5 = self->_adjustmentInfoSections;
    self->_adjustmentInfoSections = v4;

    [(PUCropPerspectiveAdjustmentsDataSource *)self _createAdjustmentInfos];
    adjustmentInfoSections = self->_adjustmentInfoSections;
  }

  return adjustmentInfoSections;
}

- (void)_updateAdjustmentInfos
{
  v41 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(PUCropPerspectiveAdjustmentsDataSource *)self adjustmentInfoSections];
  v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  v3 = 0;
  if (v28)
  {
    v27 = *v36;
    do
    {
      v4 = 0;
      do
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v4;
        v5 = *(*(&v35 + 1) + 8 * v4);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v30 = v5;
        v6 = [v30 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v32;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v32 != v8)
              {
                objc_enumerationMutation(v30);
              }

              v10 = *(*(&v31 + 1) + 8 * i);
              v11 = [v10 attributeKey];

              if (v11)
              {
                v12 = MEMORY[0x1E69BE360];
                v13 = [(PUCropPerspectiveAdjustmentsDataSource *)self compositionController];
                v14 = [v10 adjustmentKey];
                v15 = [v10 attributeKey];
                v16 = [v12 valueForCompositionController:v13 adjustmentKey:v14 settingKey:v15];

                if (v16)
                {
                  [v16 floatValue];
                  v18 = v17;
                  valueScaleForKey = self->_valueScaleForKey;
                  v20 = [v10 settingKey];
                  v21 = [(NSMutableDictionary *)valueScaleForKey objectForKeyedSubscript:v20];
                  [v10 setCurrentLevel:{(v18 * objc_msgSend(v21, "intValue"))}];

                  if ([v10 enabled])
                  {
                    v22 = 1;
                  }

                  else
                  {
                    [v10 currentLevel];
                    v24 = v23;
                    [v10 defaultLevel];
                    v22 = v24 != v25;
                  }

                  [v10 setEnabled:v22];
                  v3 = v16;
                }

                else
                {
                  [v10 defaultLevel];
                  [v10 setCurrentLevel:?];
                  v3 = 0;
                }
              }
            }

            v7 = [v30 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v7);
        }

        v4 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v28);
  }
}

- (void)_enableNonAutoAjustments:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(PUCropPerspectiveAdjustmentsDataSource *)self adjustmentInfoSections];
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

- (id)_geometryAdjustmentInfos
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = PULocalizedString(@"PHOTOEDIT_CROP_ADJUSTMENTS");
  v4 = *MEMORY[0x1E69BDFC0];
  v5 = [MEMORY[0x1E69BDE10] angleKey];
  v6 = [MEMORY[0x1E69BDE10] angleKey];
  v7 = [(PUCropPerspectiveAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v5 attributeKey:v6];
  straightenAngleInfo = self->_straightenAngleInfo;
  self->_straightenAngleInfo = v7;

  valueScaleForKey = self->_valueScaleForKey;
  v10 = [(PUAdjustmentInfo *)self->_straightenAngleInfo settingKey];
  [(NSMutableDictionary *)valueScaleForKey setObject:&unk_1F2B7EF48 forKeyedSubscript:v10];

  [(PUAdjustmentInfo *)self->_straightenAngleInfo setIconName:@"PUPerspectiveToolRoll"];
  v11 = PULocalizedString(@"PHOTOEDIT_CROP_ADJUSTMENTS_STRAIGHTEN");
  [(PUAdjustmentInfo *)self->_straightenAngleInfo setLocalizedName:v11];

  v12 = PULocalizedString(@"PHOTOEDIT_CROP_ADJUSTMENTS_STRAIGHTEN_ACTION");
  [(PUAdjustmentInfo *)self->_straightenAngleInfo setLocalizedActionName:v12];

  [(PUAdjustmentInfo *)self->_straightenAngleInfo setLocalizedSectionName:v3];
  v13 = self->_valueScaleForKey;
  v14 = [(PUAdjustmentInfo *)self->_straightenAngleInfo settingKey];
  [(NSMutableDictionary *)v13 setObject:&unk_1F2B7EF48 forKeyedSubscript:v14];

  v15 = [MEMORY[0x1E69BDE10] pitchKey];
  v16 = [MEMORY[0x1E69BDE10] pitchKey];
  v17 = [(PUCropPerspectiveAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v15 attributeKey:v16];
  pitchAngleInfo = self->_pitchAngleInfo;
  self->_pitchAngleInfo = v17;

  [(PUAdjustmentInfo *)self->_pitchAngleInfo setIconName:@"PUPerspectiveToolPitch"];
  v19 = PULocalizedString(@"PHOTOEDIT_CROP_ADJUSTMENTS_PERSPECTIVE_VERTICAL");
  [(PUAdjustmentInfo *)self->_pitchAngleInfo setLocalizedName:v19];

  v20 = PULocalizedString(@"PHOTOEDIT_CROP_ADJUSTMENTS_PERSPECTIVE_VERTICAL_ACTION");
  [(PUAdjustmentInfo *)self->_pitchAngleInfo setLocalizedActionName:v20];

  [(PUAdjustmentInfo *)self->_pitchAngleInfo setLocalizedSectionName:v3];
  v21 = self->_valueScaleForKey;
  v22 = [(PUAdjustmentInfo *)self->_pitchAngleInfo settingKey];
  [(NSMutableDictionary *)v21 setObject:&unk_1F2B7EF48 forKeyedSubscript:v22];

  v23 = [MEMORY[0x1E69BDE10] yawKey];
  v24 = [MEMORY[0x1E69BDE10] yawKey];
  v25 = [(PUCropPerspectiveAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:v23 attributeKey:v24];
  yawAngleInfo = self->_yawAngleInfo;
  self->_yawAngleInfo = v25;

  [(PUAdjustmentInfo *)self->_yawAngleInfo setIconName:@"PUPerspectiveToolYaw"];
  v27 = PULocalizedString(@"PHOTOEDIT_CROP_ADJUSTMENTS_PERSPECTIVE_HORIZONTAL");
  [(PUAdjustmentInfo *)self->_yawAngleInfo setLocalizedName:v27];

  v28 = PULocalizedString(@"PHOTOEDIT_CROP_ADJUSTMENTS_PERSPECTIVE_HORIZONTAL_ACTION");
  [(PUAdjustmentInfo *)self->_yawAngleInfo setLocalizedActionName:v28];

  [(PUAdjustmentInfo *)self->_yawAngleInfo setLocalizedSectionName:v3];
  v29 = self->_valueScaleForKey;
  v30 = [(PUAdjustmentInfo *)self->_yawAngleInfo settingKey];
  [(NSMutableDictionary *)v29 setObject:&unk_1F2B7EF48 forKeyedSubscript:v30];

  v33 = *&self->_straightenAngleInfo;
  v34 = self->_yawAngleInfo;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:3];

  return v31;
}

- (void)_createAdjustmentInfos
{
  adjustmentInfoSections = self->_adjustmentInfoSections;
  v3 = [(PUCropPerspectiveAdjustmentsDataSource *)self _geometryAdjustmentInfos];
  [(NSMutableArray *)adjustmentInfoSections addObject:v3];
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
  if (v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v11;
  }

  [(PUAdjustmentInfo *)v14 setAttributeKey:v15];

  [(PUCropPerspectiveAdjustmentsDataSource *)self _setDefaultsForInfo:v14];
  return v14;
}

- (void)_setDefaultsForInfo:(id)a3
{
  v21 = a3;
  v3 = [v21 attributeKey];
  if (v3)
  {
    v4 = v3;
    v5 = [v21 adjustmentKey];

    if (v5)
    {
      v6 = MEMORY[0x1E69BE360];
      v7 = [v21 adjustmentKey];
      v8 = [v21 attributeKey];
      v9 = [v6 valueForType:2 adjustmentKey:v7 settingKey:v8];
      [v9 floatValue];
      [v21 setMinimumLevel:v10];

      v11 = MEMORY[0x1E69BE360];
      v12 = [v21 adjustmentKey];
      v13 = [v21 attributeKey];
      v14 = [v11 valueForType:3 adjustmentKey:v12 settingKey:v13];
      [v14 floatValue];
      [v21 setMaximumLevel:v15];

      v16 = MEMORY[0x1E69BE360];
      v17 = [v21 adjustmentKey];
      v18 = [v21 attributeKey];
      v19 = [v16 valueForType:1 adjustmentKey:v17 settingKey:v18];
      [v19 floatValue];
      [v21 setDefaultLevel:v20];

      [v21 defaultLevel];
      [v21 setCurrentLevel:?];
    }
  }
}

- (id)renderer
{
  v3 = [(PUCropPerspectiveAdjustmentsDataSource *)self delegate];
  v4 = [v3 adjustmentsRenderer:self];

  return v4;
}

- (void)setOrientation:(int64_t)a3
{
  if (self->_orientation == a3)
  {
    return;
  }

  v5 = PLOrientationBetweenOrientations();
  self->_orientation = a3;
  [(PUAdjustmentInfo *)self->_straightenAngleInfo currentLevel];
  v7 = v6;
  [(PUAdjustmentInfo *)self->_straightenAngleInfo lastAdjustedLevel];
  v9 = v8;
  v47 = [(PUAdjustmentInfo *)self->_straightenAngleInfo settingKey];
  v10 = [(NSMutableDictionary *)self->_valueScaleForKey objectForKeyedSubscript:?];
  v11 = [v10 intValue];

  [(PUAdjustmentInfo *)self->_yawAngleInfo currentLevel];
  v13 = v12;
  [(PUAdjustmentInfo *)self->_yawAngleInfo lastAdjustedLevel];
  v15 = v14;
  v16 = [(PUAdjustmentInfo *)self->_yawAngleInfo settingKey];
  v17 = [(PUAdjustmentInfo *)self->_yawAngleInfo attributeKey];
  v18 = [(NSMutableDictionary *)self->_valueScaleForKey objectForKeyedSubscript:v16];
  v19 = [v18 intValue];

  [(PUAdjustmentInfo *)self->_pitchAngleInfo currentLevel];
  v21 = v20;
  [(PUAdjustmentInfo *)self->_pitchAngleInfo lastAdjustedLevel];
  v23 = v22;
  v24 = [(PUAdjustmentInfo *)self->_pitchAngleInfo settingKey];
  v25 = [(PUAdjustmentInfo *)self->_pitchAngleInfo attributeKey];
  v26 = [(NSMutableDictionary *)self->_valueScaleForKey objectForKeyedSubscript:v24];
  v27 = [v26 intValue];

  if (v5 <= 4)
  {
    switch(v5)
    {
      case 2:
        [(PUAdjustmentInfo *)self->_yawAngleInfo setCurrentLevel:-v13];
        [(PUAdjustmentInfo *)self->_yawAngleInfo setLastAdjustedLevel:-v15];
        [(PUAdjustmentInfo *)self->_straightenAngleInfo setCurrentLevel:-v7];
        [(PUAdjustmentInfo *)self->_straightenAngleInfo setLastAdjustedLevel:-v9];
        v40 = [MEMORY[0x1E696AD98] numberWithInt:-v19];
        [(NSMutableDictionary *)self->_valueScaleForKey setObject:v40 forKeyedSubscript:v16];

        v41 = MEMORY[0x1E696AD98];
LABEL_19:
        v36 = [v41 numberWithInt:-v11];
        valueScaleForKey = self->_valueScaleForKey;
        v38 = v36;
        v39 = v47;
        goto LABEL_20;
      case 3:
        [(PUAdjustmentInfo *)self->_yawAngleInfo setCurrentLevel:-v13];
        [(PUAdjustmentInfo *)self->_yawAngleInfo setLastAdjustedLevel:-v15];
        [(PUAdjustmentInfo *)self->_pitchAngleInfo setCurrentLevel:-v21];
        [(PUAdjustmentInfo *)self->_pitchAngleInfo setLastAdjustedLevel:-v23];
        v46 = [MEMORY[0x1E696AD98] numberWithInt:-v19];
        [(NSMutableDictionary *)self->_valueScaleForKey setObject:v46 forKeyedSubscript:v16];

        v36 = [MEMORY[0x1E696AD98] numberWithInt:-v27];
        valueScaleForKey = self->_valueScaleForKey;
        v38 = v36;
        v39 = v24;
        goto LABEL_20;
      case 4:
        [(PUAdjustmentInfo *)self->_pitchAngleInfo setCurrentLevel:-v21];
        [(PUAdjustmentInfo *)self->_pitchAngleInfo setLastAdjustedLevel:-v23];
        [(PUAdjustmentInfo *)self->_straightenAngleInfo setCurrentLevel:-v7];
        [(PUAdjustmentInfo *)self->_straightenAngleInfo setLastAdjustedLevel:-v9];
        v31 = [MEMORY[0x1E696AD98] numberWithInt:-v27];
        v32 = self->_valueScaleForKey;
        v33 = v31;
        v34 = v24;
LABEL_18:
        [(NSMutableDictionary *)v32 setObject:v33 forKeyedSubscript:v34];

        v41 = MEMORY[0x1E696AD98];
        goto LABEL_19;
    }
  }

  else
  {
    if (v5 <= 6)
    {
      if (v5 != 5)
      {
        [(PUAdjustmentInfo *)self->_yawAngleInfo setCurrentLevel:-v21];
        [(PUAdjustmentInfo *)self->_yawAngleInfo setLastAdjustedLevel:-v23];
        [(PUAdjustmentInfo *)self->_yawAngleInfo setSettingKey:v24];
        [(PUAdjustmentInfo *)self->_yawAngleInfo setAttributeKey:v25];
        [(PUAdjustmentInfo *)self->_pitchAngleInfo setCurrentLevel:v13];
        [(PUAdjustmentInfo *)self->_pitchAngleInfo setLastAdjustedLevel:v15];
        [(PUAdjustmentInfo *)self->_pitchAngleInfo setSettingKey:v16];
        [(PUAdjustmentInfo *)self->_pitchAngleInfo setAttributeKey:v17];
        v28 = [MEMORY[0x1E696AD98] numberWithInt:-v27];
        [(NSMutableDictionary *)self->_valueScaleForKey setObject:v28 forKeyedSubscript:v24];

        v29 = MEMORY[0x1E696AD98];
        v30 = v19;
LABEL_13:
        v36 = [v29 numberWithInt:v30];
        valueScaleForKey = self->_valueScaleForKey;
        v38 = v36;
        v39 = v16;
LABEL_20:
        [(NSMutableDictionary *)valueScaleForKey setObject:v38 forKeyedSubscript:v39];

        goto LABEL_21;
      }

      [(PUAdjustmentInfo *)self->_yawAngleInfo setCurrentLevel:v21];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setLastAdjustedLevel:v23];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setSettingKey:v24];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setAttributeKey:v25];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setCurrentLevel:v13];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setLastAdjustedLevel:v15];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setSettingKey:v16];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setAttributeKey:v17];
      [(PUAdjustmentInfo *)self->_straightenAngleInfo setCurrentLevel:-v7];
      [(PUAdjustmentInfo *)self->_straightenAngleInfo setLastAdjustedLevel:-v9];
      v42 = [MEMORY[0x1E696AD98] numberWithInt:v27];
      [(NSMutableDictionary *)self->_valueScaleForKey setObject:v42 forKeyedSubscript:v24];

      v43 = MEMORY[0x1E696AD98];
      v44 = v19;
      goto LABEL_17;
    }

    if (v5 == 7)
    {
      [(PUAdjustmentInfo *)self->_yawAngleInfo setCurrentLevel:-v21];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setLastAdjustedLevel:-v23];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setSettingKey:v24];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setAttributeKey:v25];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setCurrentLevel:-v13];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setLastAdjustedLevel:-v15];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setSettingKey:v16];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setAttributeKey:v17];
      [(PUAdjustmentInfo *)self->_straightenAngleInfo setCurrentLevel:-v7];
      [(PUAdjustmentInfo *)self->_straightenAngleInfo setLastAdjustedLevel:-v9];
      v45 = [MEMORY[0x1E696AD98] numberWithInt:-v27];
      [(NSMutableDictionary *)self->_valueScaleForKey setObject:v45 forKeyedSubscript:v24];

      v43 = MEMORY[0x1E696AD98];
      v44 = -v19;
LABEL_17:
      v31 = [v43 numberWithInt:v44];
      v32 = self->_valueScaleForKey;
      v33 = v31;
      v34 = v16;
      goto LABEL_18;
    }

    if (v5 == 8)
    {
      [(PUAdjustmentInfo *)self->_yawAngleInfo setCurrentLevel:v21];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setLastAdjustedLevel:v23];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setSettingKey:v24];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setAttributeKey:v25];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setCurrentLevel:-v13];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setLastAdjustedLevel:-v15];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setSettingKey:v16];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setAttributeKey:v17];
      v35 = [MEMORY[0x1E696AD98] numberWithInt:v27];
      [(NSMutableDictionary *)self->_valueScaleForKey setObject:v35 forKeyedSubscript:v24];

      v29 = MEMORY[0x1E696AD98];
      v30 = -v19;
      goto LABEL_13;
    }
  }

LABEL_21:
}

- (void)setupWithCompositionController:(id)a3 valuesCalculator:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (self->_compositionController == v9)
  {
    p_valuesCalculator = &self->_valuesCalculator;
    if (self->_valuesCalculator == v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    objc_storeStrong(&self->_compositionController, a3);
    p_valuesCalculator = &self->_valuesCalculator;
    if (self->_valuesCalculator == v7)
    {
      goto LABEL_6;
    }
  }

  objc_storeStrong(p_valuesCalculator, a4);
LABEL_6:
  [(PUCropPerspectiveAdjustmentsDataSource *)self _enableNonAutoAjustments:1];
  [(PUCropPerspectiveAdjustmentsDataSource *)self _updateAdjustmentInfos];
LABEL_7:
}

- (PUCropPerspectiveAdjustmentsDataSource)init
{
  v7.receiver = self;
  v7.super_class = PUCropPerspectiveAdjustmentsDataSource;
  v2 = [(PUCropPerspectiveAdjustmentsDataSource *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_orientation = 1;
    v4 = objc_opt_new();
    valueScaleForKey = v3->_valueScaleForKey;
    v3->_valueScaleForKey = v4;
  }

  return v3;
}

@end