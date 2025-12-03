@interface PUCropPerspectiveAdjustmentsDataSource
- (BOOL)canModifyAdjustmentAtIndexPath:(id)path;
- (NSMutableArray)adjustmentInfoSections;
- (PUCropPerspectiveAdjustmentsDataSource)init;
- (PUCropPerspectiveAdjustmentsDataSourceDelegate)delegate;
- (id)_geometryAdjustmentInfos;
- (id)_newAdjustmentInfoWithIdentifier:(id)identifier adjustmentKey:(id)key settingKey:(id)settingKey attributeKey:(id)attributeKey;
- (id)infoForItemAtIndexPath:(id)path;
- (id)renderer;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (void)_createAdjustmentInfos;
- (void)_enableNonAutoAjustments:(BOOL)ajustments;
- (void)_modifyAdjustmentForInfo:(id)info;
- (void)_setDefaultsForInfo:(id)info;
- (void)_updateAdjustmentInfos;
- (void)beginInteractiveChange;
- (void)endInteractiveChange;
- (void)modifyValue:(double)value atIndexPath:(id)path;
- (void)resetInfoAtIndexPath:(id)path;
- (void)setAdjustmentEnabled:(BOOL)enabled atIndexPath:(id)path completionHandler:(id)handler;
- (void)setOrientation:(int64_t)orientation;
- (void)setupWithCompositionController:(id)controller valuesCalculator:(id)calculator;
@end

@implementation PUCropPerspectiveAdjustmentsDataSource

- (PUCropPerspectiveAdjustmentsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resetInfoAtIndexPath:(id)path
{
  v4 = [(PUCropPerspectiveAdjustmentsDataSource *)self infoForItemAtIndexPath:path];
  v5 = v4;
  if (v4)
  {
    settingKey = [v4 settingKey];

    if (settingKey)
    {
      compositionController = [(PUCropPerspectiveAdjustmentsDataSource *)self compositionController];
      adjustmentKey = [v5 adjustmentKey];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __63__PUCropPerspectiveAdjustmentsDataSource_resetInfoAtIndexPath___block_invoke;
      v9[3] = &unk_1E7B80728;
      v10 = v5;
      [compositionController modifyAdjustmentWithKey:adjustmentKey modificationBlock:v9];
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

- (void)modifyValue:(double)value atIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(PUCropPerspectiveAdjustmentsDataSource *)self infoForItemAtIndexPath:?];
  if (([v6 enabled] & 1) == 0)
  {
    [(PUCropPerspectiveAdjustmentsDataSource *)self setAdjustmentEnabled:1 atIndexPath:pathCopy completionHandler:0];
  }

  settingKey = [v6 settingKey];

  if (settingKey)
  {
    [v6 setCurrentLevel:value];
    [(PUCropPerspectiveAdjustmentsDataSource *)self _modifyAdjustmentForInfo:v6];
  }
}

- (void)_modifyAdjustmentForInfo:(id)info
{
  infoCopy = info;
  delegate = [(PUCropPerspectiveAdjustmentsDataSource *)self delegate];
  [delegate willModifyAdjustment];

  compositionController = [(PUCropPerspectiveAdjustmentsDataSource *)self compositionController];
  adjustmentKey = [infoCopy adjustmentKey];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __67__PUCropPerspectiveAdjustmentsDataSource__modifyAdjustmentForInfo___block_invoke;
  v14 = &unk_1E7B80700;
  v15 = infoCopy;
  selfCopy = self;
  v8 = infoCopy;
  [compositionController modifyAdjustmentWithKey:adjustmentKey modificationBlock:&v11];

  localizedActionName = [v8 localizedActionName];
  delegate2 = [(PUCropPerspectiveAdjustmentsDataSource *)self delegate];
  [delegate2 didModifyAdjustmentWithLocalizedName:localizedActionName];

  [(PUCropPerspectiveAdjustmentsDataSource *)self setLastAdjustmentLocalizedName:localizedActionName];
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

- (void)setAdjustmentEnabled:(BOOL)enabled atIndexPath:(id)path completionHandler:(id)handler
{
  enabledCopy = enabled;
  handlerCopy = handler;
  v9 = [(PUCropPerspectiveAdjustmentsDataSource *)self infoForItemAtIndexPath:path];
  if ([v9 enabled] == enabledCopy)
  {
    if (handlerCopy)
    {
      v10 = v13;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v11 = __93__PUCropPerspectiveAdjustmentsDataSource_setAdjustmentEnabled_atIndexPath_completionHandler___block_invoke;
LABEL_9:
      v10[2] = v11;
      v10[3] = &unk_1E7B80C88;
      v10[4] = handlerCopy;
      dispatch_async(MEMORY[0x1E69E96A0], v10);
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
    [(PUCropPerspectiveAdjustmentsDataSource *)self _modifyAdjustmentForInfo:v9];
    if (handlerCopy)
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
  delegate = [(PUCropPerspectiveAdjustmentsDataSource *)self delegate];
  lastAdjustmentLocalizedName = [(PUCropPerspectiveAdjustmentsDataSource *)self lastAdjustmentLocalizedName];
  [delegate didModifyAdjustmentWithLocalizedName:lastAdjustmentLocalizedName];
}

- (void)beginInteractiveChange
{
  delegate = [(PUCropPerspectiveAdjustmentsDataSource *)self delegate];
  [delegate willModifyAdjustment];
}

- (BOOL)canModifyAdjustmentAtIndexPath:(id)path
{
  compositionController = [(PUCropPerspectiveAdjustmentsDataSource *)self compositionController];
  v4 = compositionController != 0;

  return v4;
}

- (id)infoForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy && (v6 = [pathCopy section], -[PUCropPerspectiveAdjustmentsDataSource adjustmentInfoSections](self, "adjustmentInfoSections"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 < v8) && (v9 = objc_msgSend(v5, "item"), -[PUCropPerspectiveAdjustmentsDataSource adjustmentInfoSections](self, "adjustmentInfoSections"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectAtIndexedSubscript:", objc_msgSend(v5, "section")), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10, v9 < v12))
  {
    adjustmentInfoSections = [(PUCropPerspectiveAdjustmentsDataSource *)self adjustmentInfoSections];
    v14 = [adjustmentInfoSections objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v5, "item")}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  adjustmentInfoSections = [(PUCropPerspectiveAdjustmentsDataSource *)self adjustmentInfoSections];
  v6 = [adjustmentInfoSections count];

  if (section < 0 || v6 <= section)
  {
    return 0;
  }

  adjustmentInfoSections2 = [(PUCropPerspectiveAdjustmentsDataSource *)self adjustmentInfoSections];
  v8 = [adjustmentInfoSections2 objectAtIndexedSubscript:section];
  v9 = [v8 count];

  return v9;
}

- (int64_t)numberOfSections
{
  adjustmentInfoSections = [(PUCropPerspectiveAdjustmentsDataSource *)self adjustmentInfoSections];
  v3 = [adjustmentInfoSections count];

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
              attributeKey = [v10 attributeKey];

              if (attributeKey)
              {
                v12 = MEMORY[0x1E69BE360];
                compositionController = [(PUCropPerspectiveAdjustmentsDataSource *)self compositionController];
                adjustmentKey = [v10 adjustmentKey];
                attributeKey2 = [v10 attributeKey];
                v16 = [v12 valueForCompositionController:compositionController adjustmentKey:adjustmentKey settingKey:attributeKey2];

                if (v16)
                {
                  [v16 floatValue];
                  v18 = v17;
                  valueScaleForKey = self->_valueScaleForKey;
                  settingKey = [v10 settingKey];
                  v21 = [(NSMutableDictionary *)valueScaleForKey objectForKeyedSubscript:settingKey];
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

- (void)_enableNonAutoAjustments:(BOOL)ajustments
{
  ajustmentsCopy = ajustments;
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
              identifier = [v14 identifier];

              if (identifier != v6)
              {
                [v14 setEnabled:ajustmentsCopy];
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
  angleKey = [MEMORY[0x1E69BDE10] angleKey];
  angleKey2 = [MEMORY[0x1E69BDE10] angleKey];
  v7 = [(PUCropPerspectiveAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:angleKey attributeKey:angleKey2];
  straightenAngleInfo = self->_straightenAngleInfo;
  self->_straightenAngleInfo = v7;

  valueScaleForKey = self->_valueScaleForKey;
  settingKey = [(PUAdjustmentInfo *)self->_straightenAngleInfo settingKey];
  [(NSMutableDictionary *)valueScaleForKey setObject:&unk_1F2B7EF48 forKeyedSubscript:settingKey];

  [(PUAdjustmentInfo *)self->_straightenAngleInfo setIconName:@"PUPerspectiveToolRoll"];
  v11 = PULocalizedString(@"PHOTOEDIT_CROP_ADJUSTMENTS_STRAIGHTEN");
  [(PUAdjustmentInfo *)self->_straightenAngleInfo setLocalizedName:v11];

  v12 = PULocalizedString(@"PHOTOEDIT_CROP_ADJUSTMENTS_STRAIGHTEN_ACTION");
  [(PUAdjustmentInfo *)self->_straightenAngleInfo setLocalizedActionName:v12];

  [(PUAdjustmentInfo *)self->_straightenAngleInfo setLocalizedSectionName:v3];
  v13 = self->_valueScaleForKey;
  settingKey2 = [(PUAdjustmentInfo *)self->_straightenAngleInfo settingKey];
  [(NSMutableDictionary *)v13 setObject:&unk_1F2B7EF48 forKeyedSubscript:settingKey2];

  pitchKey = [MEMORY[0x1E69BDE10] pitchKey];
  pitchKey2 = [MEMORY[0x1E69BDE10] pitchKey];
  v17 = [(PUCropPerspectiveAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:pitchKey attributeKey:pitchKey2];
  pitchAngleInfo = self->_pitchAngleInfo;
  self->_pitchAngleInfo = v17;

  [(PUAdjustmentInfo *)self->_pitchAngleInfo setIconName:@"PUPerspectiveToolPitch"];
  v19 = PULocalizedString(@"PHOTOEDIT_CROP_ADJUSTMENTS_PERSPECTIVE_VERTICAL");
  [(PUAdjustmentInfo *)self->_pitchAngleInfo setLocalizedName:v19];

  v20 = PULocalizedString(@"PHOTOEDIT_CROP_ADJUSTMENTS_PERSPECTIVE_VERTICAL_ACTION");
  [(PUAdjustmentInfo *)self->_pitchAngleInfo setLocalizedActionName:v20];

  [(PUAdjustmentInfo *)self->_pitchAngleInfo setLocalizedSectionName:v3];
  v21 = self->_valueScaleForKey;
  settingKey3 = [(PUAdjustmentInfo *)self->_pitchAngleInfo settingKey];
  [(NSMutableDictionary *)v21 setObject:&unk_1F2B7EF48 forKeyedSubscript:settingKey3];

  yawKey = [MEMORY[0x1E69BDE10] yawKey];
  yawKey2 = [MEMORY[0x1E69BDE10] yawKey];
  v25 = [(PUCropPerspectiveAdjustmentsDataSource *)self _newAdjustmentInfoWithAdjustmentKey:v4 settingKey:yawKey attributeKey:yawKey2];
  yawAngleInfo = self->_yawAngleInfo;
  self->_yawAngleInfo = v25;

  [(PUAdjustmentInfo *)self->_yawAngleInfo setIconName:@"PUPerspectiveToolYaw"];
  v27 = PULocalizedString(@"PHOTOEDIT_CROP_ADJUSTMENTS_PERSPECTIVE_HORIZONTAL");
  [(PUAdjustmentInfo *)self->_yawAngleInfo setLocalizedName:v27];

  v28 = PULocalizedString(@"PHOTOEDIT_CROP_ADJUSTMENTS_PERSPECTIVE_HORIZONTAL_ACTION");
  [(PUAdjustmentInfo *)self->_yawAngleInfo setLocalizedActionName:v28];

  [(PUAdjustmentInfo *)self->_yawAngleInfo setLocalizedSectionName:v3];
  v29 = self->_valueScaleForKey;
  settingKey4 = [(PUAdjustmentInfo *)self->_yawAngleInfo settingKey];
  [(NSMutableDictionary *)v29 setObject:&unk_1F2B7EF48 forKeyedSubscript:settingKey4];

  v33 = *&self->_straightenAngleInfo;
  v34 = self->_yawAngleInfo;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:3];

  return v31;
}

- (void)_createAdjustmentInfos
{
  adjustmentInfoSections = self->_adjustmentInfoSections;
  _geometryAdjustmentInfos = [(PUCropPerspectiveAdjustmentsDataSource *)self _geometryAdjustmentInfos];
  [(NSMutableArray *)adjustmentInfoSections addObject:_geometryAdjustmentInfos];
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
  if (attributeKeyCopy)
  {
    v15 = attributeKeyCopy;
  }

  else
  {
    v15 = settingKeyCopy;
  }

  [(PUAdjustmentInfo *)v14 setAttributeKey:v15];

  [(PUCropPerspectiveAdjustmentsDataSource *)self _setDefaultsForInfo:v14];
  return v14;
}

- (void)_setDefaultsForInfo:(id)info
{
  infoCopy = info;
  attributeKey = [infoCopy attributeKey];
  if (attributeKey)
  {
    v4 = attributeKey;
    adjustmentKey = [infoCopy adjustmentKey];

    if (adjustmentKey)
    {
      v6 = MEMORY[0x1E69BE360];
      adjustmentKey2 = [infoCopy adjustmentKey];
      attributeKey2 = [infoCopy attributeKey];
      v9 = [v6 valueForType:2 adjustmentKey:adjustmentKey2 settingKey:attributeKey2];
      [v9 floatValue];
      [infoCopy setMinimumLevel:v10];

      v11 = MEMORY[0x1E69BE360];
      adjustmentKey3 = [infoCopy adjustmentKey];
      attributeKey3 = [infoCopy attributeKey];
      v14 = [v11 valueForType:3 adjustmentKey:adjustmentKey3 settingKey:attributeKey3];
      [v14 floatValue];
      [infoCopy setMaximumLevel:v15];

      v16 = MEMORY[0x1E69BE360];
      adjustmentKey4 = [infoCopy adjustmentKey];
      attributeKey4 = [infoCopy attributeKey];
      v19 = [v16 valueForType:1 adjustmentKey:adjustmentKey4 settingKey:attributeKey4];
      [v19 floatValue];
      [infoCopy setDefaultLevel:v20];

      [infoCopy defaultLevel];
      [infoCopy setCurrentLevel:?];
    }
  }
}

- (id)renderer
{
  delegate = [(PUCropPerspectiveAdjustmentsDataSource *)self delegate];
  v4 = [delegate adjustmentsRenderer:self];

  return v4;
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation == orientation)
  {
    return;
  }

  v5 = PLOrientationBetweenOrientations();
  self->_orientation = orientation;
  [(PUAdjustmentInfo *)self->_straightenAngleInfo currentLevel];
  v7 = v6;
  [(PUAdjustmentInfo *)self->_straightenAngleInfo lastAdjustedLevel];
  v9 = v8;
  settingKey = [(PUAdjustmentInfo *)self->_straightenAngleInfo settingKey];
  v10 = [(NSMutableDictionary *)self->_valueScaleForKey objectForKeyedSubscript:?];
  intValue = [v10 intValue];

  [(PUAdjustmentInfo *)self->_yawAngleInfo currentLevel];
  v13 = v12;
  [(PUAdjustmentInfo *)self->_yawAngleInfo lastAdjustedLevel];
  v15 = v14;
  settingKey2 = [(PUAdjustmentInfo *)self->_yawAngleInfo settingKey];
  attributeKey = [(PUAdjustmentInfo *)self->_yawAngleInfo attributeKey];
  v18 = [(NSMutableDictionary *)self->_valueScaleForKey objectForKeyedSubscript:settingKey2];
  intValue2 = [v18 intValue];

  [(PUAdjustmentInfo *)self->_pitchAngleInfo currentLevel];
  v21 = v20;
  [(PUAdjustmentInfo *)self->_pitchAngleInfo lastAdjustedLevel];
  v23 = v22;
  settingKey3 = [(PUAdjustmentInfo *)self->_pitchAngleInfo settingKey];
  attributeKey2 = [(PUAdjustmentInfo *)self->_pitchAngleInfo attributeKey];
  v26 = [(NSMutableDictionary *)self->_valueScaleForKey objectForKeyedSubscript:settingKey3];
  intValue3 = [v26 intValue];

  if (v5 <= 4)
  {
    switch(v5)
    {
      case 2:
        [(PUAdjustmentInfo *)self->_yawAngleInfo setCurrentLevel:-v13];
        [(PUAdjustmentInfo *)self->_yawAngleInfo setLastAdjustedLevel:-v15];
        [(PUAdjustmentInfo *)self->_straightenAngleInfo setCurrentLevel:-v7];
        [(PUAdjustmentInfo *)self->_straightenAngleInfo setLastAdjustedLevel:-v9];
        v40 = [MEMORY[0x1E696AD98] numberWithInt:-intValue2];
        [(NSMutableDictionary *)self->_valueScaleForKey setObject:v40 forKeyedSubscript:settingKey2];

        v41 = MEMORY[0x1E696AD98];
LABEL_19:
        v36 = [v41 numberWithInt:-intValue];
        valueScaleForKey = self->_valueScaleForKey;
        v38 = v36;
        v39 = settingKey;
        goto LABEL_20;
      case 3:
        [(PUAdjustmentInfo *)self->_yawAngleInfo setCurrentLevel:-v13];
        [(PUAdjustmentInfo *)self->_yawAngleInfo setLastAdjustedLevel:-v15];
        [(PUAdjustmentInfo *)self->_pitchAngleInfo setCurrentLevel:-v21];
        [(PUAdjustmentInfo *)self->_pitchAngleInfo setLastAdjustedLevel:-v23];
        v46 = [MEMORY[0x1E696AD98] numberWithInt:-intValue2];
        [(NSMutableDictionary *)self->_valueScaleForKey setObject:v46 forKeyedSubscript:settingKey2];

        v36 = [MEMORY[0x1E696AD98] numberWithInt:-intValue3];
        valueScaleForKey = self->_valueScaleForKey;
        v38 = v36;
        v39 = settingKey3;
        goto LABEL_20;
      case 4:
        [(PUAdjustmentInfo *)self->_pitchAngleInfo setCurrentLevel:-v21];
        [(PUAdjustmentInfo *)self->_pitchAngleInfo setLastAdjustedLevel:-v23];
        [(PUAdjustmentInfo *)self->_straightenAngleInfo setCurrentLevel:-v7];
        [(PUAdjustmentInfo *)self->_straightenAngleInfo setLastAdjustedLevel:-v9];
        v31 = [MEMORY[0x1E696AD98] numberWithInt:-intValue3];
        v32 = self->_valueScaleForKey;
        v33 = v31;
        v34 = settingKey3;
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
        [(PUAdjustmentInfo *)self->_yawAngleInfo setSettingKey:settingKey3];
        [(PUAdjustmentInfo *)self->_yawAngleInfo setAttributeKey:attributeKey2];
        [(PUAdjustmentInfo *)self->_pitchAngleInfo setCurrentLevel:v13];
        [(PUAdjustmentInfo *)self->_pitchAngleInfo setLastAdjustedLevel:v15];
        [(PUAdjustmentInfo *)self->_pitchAngleInfo setSettingKey:settingKey2];
        [(PUAdjustmentInfo *)self->_pitchAngleInfo setAttributeKey:attributeKey];
        v28 = [MEMORY[0x1E696AD98] numberWithInt:-intValue3];
        [(NSMutableDictionary *)self->_valueScaleForKey setObject:v28 forKeyedSubscript:settingKey3];

        v29 = MEMORY[0x1E696AD98];
        v30 = intValue2;
LABEL_13:
        v36 = [v29 numberWithInt:v30];
        valueScaleForKey = self->_valueScaleForKey;
        v38 = v36;
        v39 = settingKey2;
LABEL_20:
        [(NSMutableDictionary *)valueScaleForKey setObject:v38 forKeyedSubscript:v39];

        goto LABEL_21;
      }

      [(PUAdjustmentInfo *)self->_yawAngleInfo setCurrentLevel:v21];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setLastAdjustedLevel:v23];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setSettingKey:settingKey3];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setAttributeKey:attributeKey2];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setCurrentLevel:v13];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setLastAdjustedLevel:v15];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setSettingKey:settingKey2];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setAttributeKey:attributeKey];
      [(PUAdjustmentInfo *)self->_straightenAngleInfo setCurrentLevel:-v7];
      [(PUAdjustmentInfo *)self->_straightenAngleInfo setLastAdjustedLevel:-v9];
      v42 = [MEMORY[0x1E696AD98] numberWithInt:intValue3];
      [(NSMutableDictionary *)self->_valueScaleForKey setObject:v42 forKeyedSubscript:settingKey3];

      v43 = MEMORY[0x1E696AD98];
      v44 = intValue2;
      goto LABEL_17;
    }

    if (v5 == 7)
    {
      [(PUAdjustmentInfo *)self->_yawAngleInfo setCurrentLevel:-v21];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setLastAdjustedLevel:-v23];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setSettingKey:settingKey3];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setAttributeKey:attributeKey2];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setCurrentLevel:-v13];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setLastAdjustedLevel:-v15];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setSettingKey:settingKey2];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setAttributeKey:attributeKey];
      [(PUAdjustmentInfo *)self->_straightenAngleInfo setCurrentLevel:-v7];
      [(PUAdjustmentInfo *)self->_straightenAngleInfo setLastAdjustedLevel:-v9];
      v45 = [MEMORY[0x1E696AD98] numberWithInt:-intValue3];
      [(NSMutableDictionary *)self->_valueScaleForKey setObject:v45 forKeyedSubscript:settingKey3];

      v43 = MEMORY[0x1E696AD98];
      v44 = -intValue2;
LABEL_17:
      v31 = [v43 numberWithInt:v44];
      v32 = self->_valueScaleForKey;
      v33 = v31;
      v34 = settingKey2;
      goto LABEL_18;
    }

    if (v5 == 8)
    {
      [(PUAdjustmentInfo *)self->_yawAngleInfo setCurrentLevel:v21];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setLastAdjustedLevel:v23];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setSettingKey:settingKey3];
      [(PUAdjustmentInfo *)self->_yawAngleInfo setAttributeKey:attributeKey2];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setCurrentLevel:-v13];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setLastAdjustedLevel:-v15];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setSettingKey:settingKey2];
      [(PUAdjustmentInfo *)self->_pitchAngleInfo setAttributeKey:attributeKey];
      v35 = [MEMORY[0x1E696AD98] numberWithInt:intValue3];
      [(NSMutableDictionary *)self->_valueScaleForKey setObject:v35 forKeyedSubscript:settingKey3];

      v29 = MEMORY[0x1E696AD98];
      v30 = -intValue2;
      goto LABEL_13;
    }
  }

LABEL_21:
}

- (void)setupWithCompositionController:(id)controller valuesCalculator:(id)calculator
{
  controllerCopy = controller;
  calculatorCopy = calculator;
  if (self->_compositionController == controllerCopy)
  {
    p_valuesCalculator = &self->_valuesCalculator;
    if (self->_valuesCalculator == calculatorCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    objc_storeStrong(&self->_compositionController, controller);
    p_valuesCalculator = &self->_valuesCalculator;
    if (self->_valuesCalculator == calculatorCopy)
    {
      goto LABEL_6;
    }
  }

  objc_storeStrong(p_valuesCalculator, calculator);
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