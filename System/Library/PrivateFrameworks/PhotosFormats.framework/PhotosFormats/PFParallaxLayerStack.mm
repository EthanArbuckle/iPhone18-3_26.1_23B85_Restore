@interface PFParallaxLayerStack
- (BOOL)_layerIncludesHeadroom:(id)a3;
- (BOOL)hasAnySpatialLayer;
- (BOOL)hasBackfillLayers;
- (BOOL)hasDebugLayers;
- (BOOL)hasInactiveLayers;
- (BOOL)hasMainLayers;
- (BOOL)spatialPhotoBackfillIncludesHeadroom;
- (BOOL)spatialPhotoIncludesHeadroom;
- (CGSize)size;
- (PFParallaxLayerStack)initWithLayers:(id)a3 layout:(id)a4 depthEnabled:(BOOL)a5 parallaxDisabled:(BOOL)a6 clockAreaLuminance:(double)a7 settlingEffectEnabled:(BOOL)a8 spatialPhotoEnabled:(BOOL)a9 userAdjustedVisibleFrame:(BOOL)a10;
- (id)_resizeLayers:(id)a3 oldImageSize:(CGSize)a4 newImageSize:(CGSize)a5;
- (id)description;
- (id)layerStackByRemovingLayersWithIdentifiers:(id)a3;
- (id)layerStackByRemovingLayersWithOptions:(unint64_t)a3;
- (id)layerStackByUpdatingClockAreaLuminance:(double)a3;
- (id)layerStackByUpdatingClockLayerOrder:(id)a3;
- (id)layerStackByUpdatingDepthEnabled:(BOOL)a3;
- (id)layerStackByUpdatingInactiveFrame:(CGRect)a3;
- (id)layerStackByUpdatingLayers:(id)a3 imageSize:(CGSize)a4;
- (id)layerStackByUpdatingLayout:(id)a3;
- (id)layerStackByUpdatingParallaxDisabled:(BOOL)a3;
- (id)layerStackByUpdatingSettlingEffectEnabled:(BOOL)a3;
- (id)layerStackByUpdatingSpatialPhotoEnabled:(BOOL)a3;
- (id)layerStackByUpdatingUserAdjustedVisibleFrame:(BOOL)a3;
- (id)layerStackByUpdatingVisibleFrame:(CGRect)a3;
@end

@implementation PFParallaxLayerStack

- (BOOL)_layerIncludesHeadroom:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  [a3 frame];
  return v3 < 0.0;
}

- (BOOL)spatialPhotoIncludesHeadroom
{
  v2 = self;
  v3 = [(PFParallaxLayerStack *)self spatialPhotoBackgroundLayer];
  LOBYTE(v2) = [(PFParallaxLayerStack *)v2 _layerIncludesHeadroom:v3];

  return v2;
}

- (BOOL)spatialPhotoBackfillIncludesHeadroom
{
  v2 = self;
  v3 = [(PFParallaxLayerStack *)self spatialPhotoBackgroundBackfillLayer];
  LOBYTE(v2) = [(PFParallaxLayerStack *)v2 _layerIncludesHeadroom:v3];

  return v2;
}

- (BOOL)hasDebugLayers
{
  v2 = [(PFParallaxLayerStack *)self layers];
  v3 = PFExists();

  return v3;
}

uint64_t __38__PFParallaxLayerStack_hasDebugLayers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 hasPrefix:@"debug"];

  return v3;
}

- (BOOL)hasAnySpatialLayer
{
  v2 = [(PFParallaxLayerStack *)self layers];
  v3 = PFExists();

  return v3;
}

uint64_t __42__PFParallaxLayerStack_hasAnySpatialLayer__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = PFParallaxLayerIDIsAnySpatialPhoto(v2);

  return v3;
}

- (BOOL)hasBackfillLayers
{
  v2 = [(PFParallaxLayerStack *)self layers];
  v3 = PFExists();

  return v3;
}

uint64_t __41__PFParallaxLayerStack_hasBackfillLayers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 hasSuffix:@"backfill"];

  return v3;
}

- (BOOL)hasInactiveLayers
{
  v2 = [(PFParallaxLayerStack *)self layers];
  v3 = PFExists();

  return v3;
}

uint64_t __41__PFParallaxLayerStack_hasInactiveLayers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 hasPrefix:@"inactive"];

  return v3;
}

- (BOOL)hasMainLayers
{
  v2 = [(PFParallaxLayerStack *)self layers];
  v3 = PFExists();

  return v3;
}

uint64_t __37__PFParallaxLayerStack_hasMainLayers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isForeground] & 1) != 0 || (objc_msgSend(v2, "isBackground"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isSpatialPhotoBackground];
  }

  return v3;
}

- (CGSize)size
{
  v2 = [(PFParallaxLayerStack *)self layout];
  [v2 imageSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(PFParallaxLayerStack *)self size];
  v6 = v5;
  [(PFParallaxLayerStack *)self size];
  v8 = v7;
  v9 = [(PFParallaxLayerStack *)self depthEnabled];
  v10 = [(PFParallaxLayerStack *)self parallaxDisabled]^ 1;
  v11 = [(PFParallaxLayerStack *)self settlingEffectEnabled];
  v12 = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
  v13 = [(PFParallaxLayerStack *)self layers];
  v14 = [(PFParallaxLayerStack *)self layout];
  v15 = [v3 stringWithFormat:@"<%@:%p %0.0fx%0.0f depth:%d parallax:%d settling:%d spatial:%d layers:%@ layout:%@>", v4, self, v6, v8, v9, v10, v11, v12, v13, v14];

  return v15;
}

- (PFParallaxLayerStack)initWithLayers:(id)a3 layout:(id)a4 depthEnabled:(BOOL)a5 parallaxDisabled:(BOOL)a6 clockAreaLuminance:(double)a7 settlingEffectEnabled:(BOOL)a8 spatialPhotoEnabled:(BOOL)a9 userAdjustedVisibleFrame:(BOOL)a10
{
  v45 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  if (!v17)
  {
    _PFAssertFailHandler();
  }

  v19 = v18;
  v35 = a5;
  v36 = a6;
  v37 = a8;
  if (!v18 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "A layer stack requires a layout", buf, 2u);
  }

  v42.receiver = self;
  v42.super_class = PFParallaxLayerStack;
  v20 = [(PFParallaxLayerStack *)&v42 init];
  v21 = [v17 copy];
  layers = v20->_layers;
  v20->_layers = v21;

  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v24 = v17;
  v25 = [v24 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v39;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v38 + 1) + 8 * i);
        v30 = [v29 identifier];
        [v23 setObject:v29 forKeyedSubscript:v30];
      }

      v26 = [v24 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v26);
  }

  v31 = [v23 copy];
  layerMap = v20->_layerMap;
  v20->_layerMap = v31;

  layout = v20->_layout;
  v20->_layout = v19;

  v20->_depthEnabled = v35;
  v20->_spatialPhotoEnabled = a9;
  v20->_parallaxDisabled = v36;
  v20->_clockAreaLuminance = a7;
  v20->_settlingEffectEnabled = v37;
  v20->_userAdjustedVisibleFrame = a10;

  return v20;
}

- (id)layerStackByRemovingLayersWithIdentifiers:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(NSDictionary *)self->_layerMap mutableCopy];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 removeObjectForKey:*(*(&v24 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
    }

    v11 = [v5 count];
    if (v11 == [(NSDictionary *)self->_layerMap count])
    {
      v12 = self;
    }

    else
    {
      v13 = [PFParallaxLayerStack alloc];
      v14 = [v5 allValues];
      v15 = [(PFParallaxLayerStack *)self layout];
      v16 = [(PFParallaxLayerStack *)self depthEnabled];
      v17 = [(PFParallaxLayerStack *)self parallaxDisabled];
      [(PFParallaxLayerStack *)self clockAreaLuminance];
      v19 = v18;
      v20 = [(PFParallaxLayerStack *)self settlingEffectEnabled];
      v21 = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
      LOBYTE(v23) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
      v12 = [(PFParallaxLayerStack *)v13 initWithLayers:v14 layout:v15 depthEnabled:v16 parallaxDisabled:v17 clockAreaLuminance:v20 settlingEffectEnabled:v21 spatialPhotoEnabled:v19 userAdjustedVisibleFrame:v23];
    }
  }

  else
  {
    v12 = self;
  }

  return v12;
}

- (id)layerStackByRemovingLayersWithOptions:(unint64_t)a3
{
  v35 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = self;
    v6 = [(PFParallaxLayerStack *)self layers];
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (!v7)
    {
      goto LABEL_33;
    }

    v8 = v7;
    v9 = *v31;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        if (([v11 isForeground] & 1) == 0)
        {
          v12 = [v11 isBackground];
          if ((v4 & 1) == 0 || (v12 & 1) == 0)
          {
            goto LABEL_13;
          }

LABEL_12:
          v13 = [v11 identifier];
          [v5 addObject:v13];

          goto LABEL_13;
        }

        if (v4)
        {
          goto LABEL_12;
        }

LABEL_13:
        v14 = [v11 isBackfill];
        if ((v4 & 2) != 0 && v14)
        {
          v15 = [v11 identifier];
          [v5 addObject:v15];
        }

        v16 = [v11 isDebug];
        if ((v4 & 0x10) != 0 && v16)
        {
          v17 = [v11 identifier];
          [v5 addObject:v17];
        }

        v18 = [v11 isInactive];
        if ((v4 & 4) != 0 && v18)
        {
          v19 = [v11 identifier];
          [v5 addObject:v19];
        }

        v20 = [v11 isSettlingEffect];
        if ((v4 & 0x40) != 0 && v20)
        {
          v21 = [v11 identifier];
          [v5 addObject:v21];
        }

        v22 = [v11 identifier];
        v23 = PFParallaxLayerIDIsAnySpatialPhoto(v22);

        if (v23)
        {
          v24 = [v11 identifier];
          v25 = v24;
          if ((v4 & 0x100) != 0)
          {
            goto LABEL_30;
          }

          v26 = [v24 hasSuffix:@"backfill"];

          if ((v4 & 0x400) != 0)
          {
            if (v26)
            {
              v25 = [v11 identifier];
LABEL_30:
              [v5 addObject:v25];

              continue;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (!v8)
      {
LABEL_33:

        v27 = [(PFParallaxLayerStack *)v29 layerStackByRemovingLayersWithIdentifiers:v5];

        goto LABEL_35;
      }
    }
  }

  v27 = self;
LABEL_35:

  return v27;
}

- (id)layerStackByUpdatingLayers:(id)a3 imageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  if ([v7 count])
  {
    v8 = PFMap(v7, &__block_literal_global_133_13295);
    v9 = [(PFParallaxLayerStack *)self layerMap];
    v10 = [v9 mutableCopy];

    v36 = v8;
    [v10 removeObjectsForKeys:v8];
    v35 = v10;
    v11 = [v10 allValues];
    v12 = [(PFParallaxLayerStack *)self layout];
    [v12 imageSize];
    if (v13 <= width)
    {
      v16 = width;
      v18 = height;
    }

    else
    {
      v14 = [(PFParallaxLayerStack *)self layout];
      [v14 imageSize];
      v16 = v15;
      v18 = v17;
    }

    v20 = [(PFParallaxLayerStack *)self layout];
    [v20 imageSize];
    v21 = [PFParallaxLayerStack _resizeLayers:"_resizeLayers:oldImageSize:newImageSize:" oldImageSize:v11 newImageSize:?];

    v22 = [(PFParallaxLayerStack *)self _resizeLayers:v7 oldImageSize:width newImageSize:height, v16, v18];

    v23 = [(PFParallaxLayerStack *)self layout];
    v24 = [v23 layoutByUpdatingImageSize:{v16, v18}];

    v25 = [v21 arrayByAddingObjectsFromArray:v22];
    v26 = [PFParallaxLayerStack alloc];
    v27 = [(PFParallaxLayerStack *)self depthEnabled];
    v28 = [(PFParallaxLayerStack *)self parallaxDisabled];
    [(PFParallaxLayerStack *)self clockAreaLuminance];
    v30 = v29;
    v31 = [(PFParallaxLayerStack *)self settlingEffectEnabled];
    v32 = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
    LOBYTE(v34) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
    v19 = [(PFParallaxLayerStack *)v26 initWithLayers:v25 layout:v24 depthEnabled:v27 parallaxDisabled:v28 clockAreaLuminance:v31 settlingEffectEnabled:v32 spatialPhotoEnabled:v30 userAdjustedVisibleFrame:v34];

    v7 = v22;
  }

  else
  {
    v19 = self;
  }

  return v19;
}

- (id)_resizeLayers:(id)a3 oldImageSize:(CGSize)a4 newImageSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.height;
  v8 = a4.width;
  v9 = a3;
  v10 = v9;
  if (v8 == width && v7 == height)
  {
    v12 = v9;
  }

  else
  {
    v16 = *MEMORY[0x1E695EFF8];
    v19 = v16;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74__PFParallaxLayerStack_Updating___resizeLayers_oldImageSize_newImageSize___block_invoke;
    v15[3] = &__block_descriptor_96_e42___PFParallaxLayer_16__0__PFParallaxLayer_8l;
    v17 = v8;
    v18 = v7;
    v20 = width;
    v21 = height;
    v12 = PFMap(v9, v15);
  }

  v13 = v12;

  return v13;
}

id __74__PFParallaxLayerStack_Updating___resizeLayers_oldImageSize_newImageSize___block_invoke(double *a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  v8 = a1[6];
  v7 = a1[7];
  v10 = v9 - a1[4];
  v11 = 0.0;
  v12 = 0.0;
  if (v8 != 0.0)
  {
    v10 = v10 / v8;
    v12 = v5 / v8;
  }

  v13 = v4 - a1[5];
  if (v7 != 0.0)
  {
    v13 = v13 / v7;
    v11 = v6 / v7;
  }

  v14 = [v3 layerByUpdatingFrame:{a1[8] + v10 * a1[10], a1[9] + v13 * a1[11], v12 * a1[10], v11 * a1[11]}];

  return v14;
}

- (id)layerStackByUpdatingLayout:(id)a3
{
  v4 = a3;
  v5 = [(PFParallaxLayerStack *)self layers];
  v6 = [(PFParallaxLayerStack *)self layout];
  [v6 imageSize];
  v8 = v7;
  v10 = v9;
  [v4 imageSize];
  v12 = v11;
  v14 = v13;

  if (v8 != v12 || v10 != v14)
  {
    [v4 imageSize];
    v17 = v16;
    v18 = [(PFParallaxLayerStack *)self layout];
    [v18 imageSize];
    v20 = v19;

    if (v17 >= v20)
    {
      v21 = [(PFParallaxLayerStack *)self layers];
      v22 = [(PFParallaxLayerStack *)self layout];
      [v22 imageSize];
      v24 = v23;
      v26 = v25;
      [v4 imageSize];
      v29 = [(PFParallaxLayerStack *)self _resizeLayers:v21 oldImageSize:v24 newImageSize:v26, v27, v28];

      v5 = v29;
    }

    else
    {
      v21 = [(PFParallaxLayerStack *)self layout];
      [v21 imageSize];
      [v4 layoutByUpdatingImageSize:?];
      v4 = v22 = v4;
    }
  }

  v30 = [PFParallaxLayerStack alloc];
  v31 = [(PFParallaxLayerStack *)self depthEnabled];
  v32 = [(PFParallaxLayerStack *)self parallaxDisabled];
  [(PFParallaxLayerStack *)self clockAreaLuminance];
  v34 = v33;
  v35 = [(PFParallaxLayerStack *)self settlingEffectEnabled];
  v36 = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
  LOBYTE(v39) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
  v37 = [(PFParallaxLayerStack *)v30 initWithLayers:v5 layout:v4 depthEnabled:v31 parallaxDisabled:v32 clockAreaLuminance:v35 settlingEffectEnabled:v36 spatialPhotoEnabled:v34 userAdjustedVisibleFrame:v39];

  return v37;
}

- (id)layerStackByUpdatingClockAreaLuminance:(double)a3
{
  v5 = [PFParallaxLayerStack alloc];
  v6 = [(PFParallaxLayerStack *)self layers];
  v7 = [(PFParallaxLayerStack *)self layout];
  v8 = [(PFParallaxLayerStack *)self depthEnabled];
  v9 = [(PFParallaxLayerStack *)self parallaxDisabled];
  v10 = [(PFParallaxLayerStack *)self settlingEffectEnabled];
  v11 = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
  LOBYTE(v14) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
  v12 = [(PFParallaxLayerStack *)v5 initWithLayers:v6 layout:v7 depthEnabled:v8 parallaxDisabled:v9 clockAreaLuminance:v10 settlingEffectEnabled:v11 spatialPhotoEnabled:a3 userAdjustedVisibleFrame:v14];

  return v12;
}

- (id)layerStackByUpdatingParallaxDisabled:(BOOL)a3
{
  v3 = a3;
  if ([(PFParallaxLayerStack *)self parallaxDisabled]== a3)
  {
    v13 = self;
  }

  else
  {
    v5 = [PFParallaxLayerStack alloc];
    v6 = [(PFParallaxLayerStack *)self layers];
    v7 = [(PFParallaxLayerStack *)self layout];
    v8 = [(PFParallaxLayerStack *)self depthEnabled];
    [(PFParallaxLayerStack *)self clockAreaLuminance];
    v10 = v9;
    v11 = [(PFParallaxLayerStack *)self settlingEffectEnabled];
    v12 = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
    LOBYTE(v15) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
    v13 = [(PFParallaxLayerStack *)v5 initWithLayers:v6 layout:v7 depthEnabled:v8 parallaxDisabled:v3 clockAreaLuminance:v11 settlingEffectEnabled:v12 spatialPhotoEnabled:v10 userAdjustedVisibleFrame:v15];
  }

  return v13;
}

- (id)layerStackByUpdatingUserAdjustedVisibleFrame:(BOOL)a3
{
  if ([(PFParallaxLayerStack *)self userAdjustedVisibleFrame]== a3)
  {
    v11 = self;
  }

  else
  {
    v5 = [PFParallaxLayerStack alloc];
    v6 = [(PFParallaxLayerStack *)self layers];
    v7 = [(PFParallaxLayerStack *)self layout];
    v8 = [(PFParallaxLayerStack *)self depthEnabled];
    v9 = [(PFParallaxLayerStack *)self parallaxDisabled];
    [(PFParallaxLayerStack *)self clockAreaLuminance];
    LOBYTE(v13) = a3;
    v11 = [(PFParallaxLayerStack *)v5 initWithLayers:v6 layout:v7 depthEnabled:v8 parallaxDisabled:v9 clockAreaLuminance:[(PFParallaxLayerStack *)self settlingEffectEnabled] settlingEffectEnabled:[(PFParallaxLayerStack *)self spatialPhotoEnabled] spatialPhotoEnabled:v10 userAdjustedVisibleFrame:v13];
  }

  return v11;
}

- (id)layerStackByUpdatingSpatialPhotoEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(PFParallaxLayerStack *)self spatialPhotoEnabled]== a3)
  {
    v13 = self;
  }

  else
  {
    v5 = [PFParallaxLayerStack alloc];
    v6 = [(PFParallaxLayerStack *)self layers];
    v7 = [(PFParallaxLayerStack *)self layout];
    v8 = [(PFParallaxLayerStack *)self depthEnabled];
    v9 = [(PFParallaxLayerStack *)self parallaxDisabled];
    [(PFParallaxLayerStack *)self clockAreaLuminance];
    v11 = v10;
    v12 = [(PFParallaxLayerStack *)self settlingEffectEnabled];
    LOBYTE(v15) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
    v13 = [(PFParallaxLayerStack *)v5 initWithLayers:v6 layout:v7 depthEnabled:v8 parallaxDisabled:v9 clockAreaLuminance:v12 settlingEffectEnabled:v3 spatialPhotoEnabled:v11 userAdjustedVisibleFrame:v15];
  }

  return v13;
}

- (id)layerStackByUpdatingSettlingEffectEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(PFParallaxLayerStack *)self settlingEffectEnabled]== a3)
  {
    v13 = self;
  }

  else
  {
    v5 = [PFParallaxLayerStack alloc];
    v6 = [(PFParallaxLayerStack *)self layers];
    v7 = [(PFParallaxLayerStack *)self layout];
    v8 = [(PFParallaxLayerStack *)self depthEnabled];
    v9 = [(PFParallaxLayerStack *)self parallaxDisabled];
    [(PFParallaxLayerStack *)self clockAreaLuminance];
    v11 = v10;
    v12 = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
    LOBYTE(v15) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
    v13 = [(PFParallaxLayerStack *)v5 initWithLayers:v6 layout:v7 depthEnabled:v8 parallaxDisabled:v9 clockAreaLuminance:v3 settlingEffectEnabled:v12 spatialPhotoEnabled:v11 userAdjustedVisibleFrame:v15];
  }

  return v13;
}

- (id)layerStackByUpdatingDepthEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(PFParallaxLayerStack *)self depthEnabled]== a3)
  {
    v13 = self;
  }

  else
  {
    v5 = [PFParallaxLayerStack alloc];
    v6 = [(PFParallaxLayerStack *)self layers];
    v7 = [(PFParallaxLayerStack *)self layout];
    v8 = [(PFParallaxLayerStack *)self parallaxDisabled];
    [(PFParallaxLayerStack *)self clockAreaLuminance];
    v10 = v9;
    v11 = [(PFParallaxLayerStack *)self settlingEffectEnabled];
    v12 = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
    LOBYTE(v15) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
    v13 = [(PFParallaxLayerStack *)v5 initWithLayers:v6 layout:v7 depthEnabled:v3 parallaxDisabled:v8 clockAreaLuminance:v11 settlingEffectEnabled:v12 spatialPhotoEnabled:v10 userAdjustedVisibleFrame:v15];
  }

  return v13;
}

- (id)layerStackByUpdatingClockLayerOrder:(id)a3
{
  v4 = [(PFPosterOrientedLayout *)self->_layout layoutByUpdatingClockLayerOrder:a3];
  v5 = [PFParallaxLayerStack alloc];
  v6 = [(PFParallaxLayerStack *)self layers];
  v7 = [(PFParallaxLayerStack *)self depthEnabled];
  v8 = [(PFParallaxLayerStack *)self parallaxDisabled];
  [(PFParallaxLayerStack *)self clockAreaLuminance];
  v10 = v9;
  v11 = [(PFParallaxLayerStack *)self settlingEffectEnabled];
  v12 = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
  LOBYTE(v15) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
  v13 = [(PFParallaxLayerStack *)v5 initWithLayers:v6 layout:v4 depthEnabled:v7 parallaxDisabled:v8 clockAreaLuminance:v11 settlingEffectEnabled:v12 spatialPhotoEnabled:v10 userAdjustedVisibleFrame:v15];

  return v13;
}

- (id)layerStackByUpdatingInactiveFrame:(CGRect)a3
{
  v4 = [(PFPosterOrientedLayout *)self->_layout layoutByUpdatingInactiveFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [PFParallaxLayerStack alloc];
  v6 = [(PFParallaxLayerStack *)self layers];
  v7 = [(PFParallaxLayerStack *)self depthEnabled];
  v8 = [(PFParallaxLayerStack *)self parallaxDisabled];
  [(PFParallaxLayerStack *)self clockAreaLuminance];
  v10 = v9;
  v11 = [(PFParallaxLayerStack *)self settlingEffectEnabled];
  v12 = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
  LOBYTE(v15) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
  v13 = [(PFParallaxLayerStack *)v5 initWithLayers:v6 layout:v4 depthEnabled:v7 parallaxDisabled:v8 clockAreaLuminance:v11 settlingEffectEnabled:v12 spatialPhotoEnabled:v10 userAdjustedVisibleFrame:v15];

  return v13;
}

- (id)layerStackByUpdatingVisibleFrame:(CGRect)a3
{
  v4 = [(PFPosterOrientedLayout *)self->_layout layoutByUpdatingVisibleFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [PFParallaxLayerStack alloc];
  v6 = [(PFParallaxLayerStack *)self layers];
  v7 = [(PFParallaxLayerStack *)self depthEnabled];
  v8 = [(PFParallaxLayerStack *)self parallaxDisabled];
  [(PFParallaxLayerStack *)self clockAreaLuminance];
  v10 = v9;
  v11 = [(PFParallaxLayerStack *)self settlingEffectEnabled];
  v12 = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
  LOBYTE(v15) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
  v13 = [(PFParallaxLayerStack *)v5 initWithLayers:v6 layout:v4 depthEnabled:v7 parallaxDisabled:v8 clockAreaLuminance:v11 settlingEffectEnabled:v12 spatialPhotoEnabled:v10 userAdjustedVisibleFrame:v15];

  return v13;
}

@end