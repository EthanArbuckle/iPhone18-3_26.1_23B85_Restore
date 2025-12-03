@interface PFParallaxLayerStack
- (BOOL)_layerIncludesHeadroom:(id)headroom;
- (BOOL)hasAnySpatialLayer;
- (BOOL)hasBackfillLayers;
- (BOOL)hasDebugLayers;
- (BOOL)hasInactiveLayers;
- (BOOL)hasMainLayers;
- (BOOL)spatialPhotoBackfillIncludesHeadroom;
- (BOOL)spatialPhotoIncludesHeadroom;
- (CGSize)size;
- (PFParallaxLayerStack)initWithLayers:(id)layers layout:(id)layout depthEnabled:(BOOL)enabled parallaxDisabled:(BOOL)disabled clockAreaLuminance:(double)luminance settlingEffectEnabled:(BOOL)effectEnabled spatialPhotoEnabled:(BOOL)photoEnabled userAdjustedVisibleFrame:(BOOL)self0;
- (id)_resizeLayers:(id)layers oldImageSize:(CGSize)size newImageSize:(CGSize)imageSize;
- (id)description;
- (id)layerStackByRemovingLayersWithIdentifiers:(id)identifiers;
- (id)layerStackByRemovingLayersWithOptions:(unint64_t)options;
- (id)layerStackByUpdatingClockAreaLuminance:(double)luminance;
- (id)layerStackByUpdatingClockLayerOrder:(id)order;
- (id)layerStackByUpdatingDepthEnabled:(BOOL)enabled;
- (id)layerStackByUpdatingInactiveFrame:(CGRect)frame;
- (id)layerStackByUpdatingLayers:(id)layers imageSize:(CGSize)size;
- (id)layerStackByUpdatingLayout:(id)layout;
- (id)layerStackByUpdatingParallaxDisabled:(BOOL)disabled;
- (id)layerStackByUpdatingSettlingEffectEnabled:(BOOL)enabled;
- (id)layerStackByUpdatingSpatialPhotoEnabled:(BOOL)enabled;
- (id)layerStackByUpdatingUserAdjustedVisibleFrame:(BOOL)frame;
- (id)layerStackByUpdatingVisibleFrame:(CGRect)frame;
@end

@implementation PFParallaxLayerStack

- (BOOL)_layerIncludesHeadroom:(id)headroom
{
  if (!headroom)
  {
    return 0;
  }

  [headroom frame];
  return v3 < 0.0;
}

- (BOOL)spatialPhotoIncludesHeadroom
{
  selfCopy = self;
  spatialPhotoBackgroundLayer = [(PFParallaxLayerStack *)self spatialPhotoBackgroundLayer];
  LOBYTE(selfCopy) = [(PFParallaxLayerStack *)selfCopy _layerIncludesHeadroom:spatialPhotoBackgroundLayer];

  return selfCopy;
}

- (BOOL)spatialPhotoBackfillIncludesHeadroom
{
  selfCopy = self;
  spatialPhotoBackgroundBackfillLayer = [(PFParallaxLayerStack *)self spatialPhotoBackgroundBackfillLayer];
  LOBYTE(selfCopy) = [(PFParallaxLayerStack *)selfCopy _layerIncludesHeadroom:spatialPhotoBackgroundBackfillLayer];

  return selfCopy;
}

- (BOOL)hasDebugLayers
{
  layers = [(PFParallaxLayerStack *)self layers];
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
  layers = [(PFParallaxLayerStack *)self layers];
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
  layers = [(PFParallaxLayerStack *)self layers];
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
  layers = [(PFParallaxLayerStack *)self layers];
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
  layers = [(PFParallaxLayerStack *)self layers];
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
  layout = [(PFParallaxLayerStack *)self layout];
  [layout imageSize];
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
  depthEnabled = [(PFParallaxLayerStack *)self depthEnabled];
  v10 = [(PFParallaxLayerStack *)self parallaxDisabled]^ 1;
  settlingEffectEnabled = [(PFParallaxLayerStack *)self settlingEffectEnabled];
  spatialPhotoEnabled = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
  layers = [(PFParallaxLayerStack *)self layers];
  layout = [(PFParallaxLayerStack *)self layout];
  v15 = [v3 stringWithFormat:@"<%@:%p %0.0fx%0.0f depth:%d parallax:%d settling:%d spatial:%d layers:%@ layout:%@>", v4, self, v6, v8, depthEnabled, v10, settlingEffectEnabled, spatialPhotoEnabled, layers, layout];

  return v15;
}

- (PFParallaxLayerStack)initWithLayers:(id)layers layout:(id)layout depthEnabled:(BOOL)enabled parallaxDisabled:(BOOL)disabled clockAreaLuminance:(double)luminance settlingEffectEnabled:(BOOL)effectEnabled spatialPhotoEnabled:(BOOL)photoEnabled userAdjustedVisibleFrame:(BOOL)self0
{
  v45 = *MEMORY[0x1E69E9840];
  layersCopy = layers;
  layoutCopy = layout;
  if (!layersCopy)
  {
    _PFAssertFailHandler();
  }

  v19 = layoutCopy;
  enabledCopy = enabled;
  disabledCopy = disabled;
  effectEnabledCopy = effectEnabled;
  if (!layoutCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "A layer stack requires a layout", buf, 2u);
  }

  v42.receiver = self;
  v42.super_class = PFParallaxLayerStack;
  v20 = [(PFParallaxLayerStack *)&v42 init];
  v21 = [layersCopy copy];
  layers = v20->_layers;
  v20->_layers = v21;

  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v24 = layersCopy;
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
        identifier = [v29 identifier];
        [v23 setObject:v29 forKeyedSubscript:identifier];
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

  v20->_depthEnabled = enabledCopy;
  v20->_spatialPhotoEnabled = photoEnabled;
  v20->_parallaxDisabled = disabledCopy;
  v20->_clockAreaLuminance = luminance;
  v20->_settlingEffectEnabled = effectEnabledCopy;
  v20->_userAdjustedVisibleFrame = frame;

  return v20;
}

- (id)layerStackByRemovingLayersWithIdentifiers:(id)identifiers
{
  v29 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v5 = [(NSDictionary *)self->_layerMap mutableCopy];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = identifiersCopy;
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
      selfCopy2 = self;
    }

    else
    {
      v13 = [PFParallaxLayerStack alloc];
      allValues = [v5 allValues];
      layout = [(PFParallaxLayerStack *)self layout];
      depthEnabled = [(PFParallaxLayerStack *)self depthEnabled];
      parallaxDisabled = [(PFParallaxLayerStack *)self parallaxDisabled];
      [(PFParallaxLayerStack *)self clockAreaLuminance];
      v19 = v18;
      settlingEffectEnabled = [(PFParallaxLayerStack *)self settlingEffectEnabled];
      spatialPhotoEnabled = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
      LOBYTE(v23) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
      selfCopy2 = [(PFParallaxLayerStack *)v13 initWithLayers:allValues layout:layout depthEnabled:depthEnabled parallaxDisabled:parallaxDisabled clockAreaLuminance:settlingEffectEnabled settlingEffectEnabled:spatialPhotoEnabled spatialPhotoEnabled:v19 userAdjustedVisibleFrame:v23];
    }
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (id)layerStackByRemovingLayersWithOptions:(unint64_t)options
{
  v35 = *MEMORY[0x1E69E9840];
  if (options)
  {
    optionsCopy = options;
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    selfCopy = self;
    layers = [(PFParallaxLayerStack *)self layers];
    v7 = [layers countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(layers);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        if (([v11 isForeground] & 1) == 0)
        {
          isBackground = [v11 isBackground];
          if ((optionsCopy & 1) == 0 || (isBackground & 1) == 0)
          {
            goto LABEL_13;
          }

LABEL_12:
          identifier = [v11 identifier];
          [v5 addObject:identifier];

          goto LABEL_13;
        }

        if (optionsCopy)
        {
          goto LABEL_12;
        }

LABEL_13:
        isBackfill = [v11 isBackfill];
        if ((optionsCopy & 2) != 0 && isBackfill)
        {
          identifier2 = [v11 identifier];
          [v5 addObject:identifier2];
        }

        isDebug = [v11 isDebug];
        if ((optionsCopy & 0x10) != 0 && isDebug)
        {
          identifier3 = [v11 identifier];
          [v5 addObject:identifier3];
        }

        isInactive = [v11 isInactive];
        if ((optionsCopy & 4) != 0 && isInactive)
        {
          identifier4 = [v11 identifier];
          [v5 addObject:identifier4];
        }

        isSettlingEffect = [v11 isSettlingEffect];
        if ((optionsCopy & 0x40) != 0 && isSettlingEffect)
        {
          identifier5 = [v11 identifier];
          [v5 addObject:identifier5];
        }

        identifier6 = [v11 identifier];
        v23 = PFParallaxLayerIDIsAnySpatialPhoto(identifier6);

        if (v23)
        {
          identifier7 = [v11 identifier];
          identifier8 = identifier7;
          if ((optionsCopy & 0x100) != 0)
          {
            goto LABEL_30;
          }

          v26 = [identifier7 hasSuffix:@"backfill"];

          if ((optionsCopy & 0x400) != 0)
          {
            if (v26)
            {
              identifier8 = [v11 identifier];
LABEL_30:
              [v5 addObject:identifier8];

              continue;
            }
          }
        }
      }

      v8 = [layers countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (!v8)
      {
LABEL_33:

        selfCopy2 = [(PFParallaxLayerStack *)selfCopy layerStackByRemovingLayersWithIdentifiers:v5];

        goto LABEL_35;
      }
    }
  }

  selfCopy2 = self;
LABEL_35:

  return selfCopy2;
}

- (id)layerStackByUpdatingLayers:(id)layers imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  layersCopy = layers;
  if ([layersCopy count])
  {
    v8 = PFMap(layersCopy, &__block_literal_global_133_13295);
    layerMap = [(PFParallaxLayerStack *)self layerMap];
    v10 = [layerMap mutableCopy];

    v36 = v8;
    [v10 removeObjectsForKeys:v8];
    v35 = v10;
    allValues = [v10 allValues];
    layout = [(PFParallaxLayerStack *)self layout];
    [layout imageSize];
    if (v13 <= width)
    {
      v16 = width;
      v18 = height;
    }

    else
    {
      layout2 = [(PFParallaxLayerStack *)self layout];
      [layout2 imageSize];
      v16 = v15;
      v18 = v17;
    }

    layout3 = [(PFParallaxLayerStack *)self layout];
    [layout3 imageSize];
    v21 = [PFParallaxLayerStack _resizeLayers:"_resizeLayers:oldImageSize:newImageSize:" oldImageSize:allValues newImageSize:?];

    v22 = [(PFParallaxLayerStack *)self _resizeLayers:layersCopy oldImageSize:width newImageSize:height, v16, v18];

    layout4 = [(PFParallaxLayerStack *)self layout];
    v24 = [layout4 layoutByUpdatingImageSize:{v16, v18}];

    v25 = [v21 arrayByAddingObjectsFromArray:v22];
    v26 = [PFParallaxLayerStack alloc];
    depthEnabled = [(PFParallaxLayerStack *)self depthEnabled];
    parallaxDisabled = [(PFParallaxLayerStack *)self parallaxDisabled];
    [(PFParallaxLayerStack *)self clockAreaLuminance];
    v30 = v29;
    settlingEffectEnabled = [(PFParallaxLayerStack *)self settlingEffectEnabled];
    spatialPhotoEnabled = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
    LOBYTE(v34) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
    selfCopy = [(PFParallaxLayerStack *)v26 initWithLayers:v25 layout:v24 depthEnabled:depthEnabled parallaxDisabled:parallaxDisabled clockAreaLuminance:settlingEffectEnabled settlingEffectEnabled:spatialPhotoEnabled spatialPhotoEnabled:v30 userAdjustedVisibleFrame:v34];

    layersCopy = v22;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)_resizeLayers:(id)layers oldImageSize:(CGSize)size newImageSize:(CGSize)imageSize
{
  height = imageSize.height;
  width = imageSize.width;
  v7 = size.height;
  v8 = size.width;
  layersCopy = layers;
  v10 = layersCopy;
  if (v8 == width && v7 == height)
  {
    v12 = layersCopy;
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
    v12 = PFMap(layersCopy, v15);
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

- (id)layerStackByUpdatingLayout:(id)layout
{
  layoutCopy = layout;
  layers = [(PFParallaxLayerStack *)self layers];
  layout = [(PFParallaxLayerStack *)self layout];
  [layout imageSize];
  v8 = v7;
  v10 = v9;
  [layoutCopy imageSize];
  v12 = v11;
  v14 = v13;

  if (v8 != v12 || v10 != v14)
  {
    [layoutCopy imageSize];
    v17 = v16;
    layout2 = [(PFParallaxLayerStack *)self layout];
    [layout2 imageSize];
    v20 = v19;

    if (v17 >= v20)
    {
      layers2 = [(PFParallaxLayerStack *)self layers];
      layout3 = [(PFParallaxLayerStack *)self layout];
      [layout3 imageSize];
      v24 = v23;
      v26 = v25;
      [layoutCopy imageSize];
      v29 = [(PFParallaxLayerStack *)self _resizeLayers:layers2 oldImageSize:v24 newImageSize:v26, v27, v28];

      layers = v29;
    }

    else
    {
      layers2 = [(PFParallaxLayerStack *)self layout];
      [layers2 imageSize];
      [layoutCopy layoutByUpdatingImageSize:?];
      layoutCopy = layout3 = layoutCopy;
    }
  }

  v30 = [PFParallaxLayerStack alloc];
  depthEnabled = [(PFParallaxLayerStack *)self depthEnabled];
  parallaxDisabled = [(PFParallaxLayerStack *)self parallaxDisabled];
  [(PFParallaxLayerStack *)self clockAreaLuminance];
  v34 = v33;
  settlingEffectEnabled = [(PFParallaxLayerStack *)self settlingEffectEnabled];
  spatialPhotoEnabled = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
  LOBYTE(v39) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
  v37 = [(PFParallaxLayerStack *)v30 initWithLayers:layers layout:layoutCopy depthEnabled:depthEnabled parallaxDisabled:parallaxDisabled clockAreaLuminance:settlingEffectEnabled settlingEffectEnabled:spatialPhotoEnabled spatialPhotoEnabled:v34 userAdjustedVisibleFrame:v39];

  return v37;
}

- (id)layerStackByUpdatingClockAreaLuminance:(double)luminance
{
  v5 = [PFParallaxLayerStack alloc];
  layers = [(PFParallaxLayerStack *)self layers];
  layout = [(PFParallaxLayerStack *)self layout];
  depthEnabled = [(PFParallaxLayerStack *)self depthEnabled];
  parallaxDisabled = [(PFParallaxLayerStack *)self parallaxDisabled];
  settlingEffectEnabled = [(PFParallaxLayerStack *)self settlingEffectEnabled];
  spatialPhotoEnabled = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
  LOBYTE(v14) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
  v12 = [(PFParallaxLayerStack *)v5 initWithLayers:layers layout:layout depthEnabled:depthEnabled parallaxDisabled:parallaxDisabled clockAreaLuminance:settlingEffectEnabled settlingEffectEnabled:spatialPhotoEnabled spatialPhotoEnabled:luminance userAdjustedVisibleFrame:v14];

  return v12;
}

- (id)layerStackByUpdatingParallaxDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  if ([(PFParallaxLayerStack *)self parallaxDisabled]== disabled)
  {
    selfCopy = self;
  }

  else
  {
    v5 = [PFParallaxLayerStack alloc];
    layers = [(PFParallaxLayerStack *)self layers];
    layout = [(PFParallaxLayerStack *)self layout];
    depthEnabled = [(PFParallaxLayerStack *)self depthEnabled];
    [(PFParallaxLayerStack *)self clockAreaLuminance];
    v10 = v9;
    settlingEffectEnabled = [(PFParallaxLayerStack *)self settlingEffectEnabled];
    spatialPhotoEnabled = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
    LOBYTE(v15) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
    selfCopy = [(PFParallaxLayerStack *)v5 initWithLayers:layers layout:layout depthEnabled:depthEnabled parallaxDisabled:disabledCopy clockAreaLuminance:settlingEffectEnabled settlingEffectEnabled:spatialPhotoEnabled spatialPhotoEnabled:v10 userAdjustedVisibleFrame:v15];
  }

  return selfCopy;
}

- (id)layerStackByUpdatingUserAdjustedVisibleFrame:(BOOL)frame
{
  if ([(PFParallaxLayerStack *)self userAdjustedVisibleFrame]== frame)
  {
    selfCopy = self;
  }

  else
  {
    v5 = [PFParallaxLayerStack alloc];
    layers = [(PFParallaxLayerStack *)self layers];
    layout = [(PFParallaxLayerStack *)self layout];
    depthEnabled = [(PFParallaxLayerStack *)self depthEnabled];
    parallaxDisabled = [(PFParallaxLayerStack *)self parallaxDisabled];
    [(PFParallaxLayerStack *)self clockAreaLuminance];
    LOBYTE(v13) = frame;
    selfCopy = [(PFParallaxLayerStack *)v5 initWithLayers:layers layout:layout depthEnabled:depthEnabled parallaxDisabled:parallaxDisabled clockAreaLuminance:[(PFParallaxLayerStack *)self settlingEffectEnabled] settlingEffectEnabled:[(PFParallaxLayerStack *)self spatialPhotoEnabled] spatialPhotoEnabled:v10 userAdjustedVisibleFrame:v13];
  }

  return selfCopy;
}

- (id)layerStackByUpdatingSpatialPhotoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(PFParallaxLayerStack *)self spatialPhotoEnabled]== enabled)
  {
    selfCopy = self;
  }

  else
  {
    v5 = [PFParallaxLayerStack alloc];
    layers = [(PFParallaxLayerStack *)self layers];
    layout = [(PFParallaxLayerStack *)self layout];
    depthEnabled = [(PFParallaxLayerStack *)self depthEnabled];
    parallaxDisabled = [(PFParallaxLayerStack *)self parallaxDisabled];
    [(PFParallaxLayerStack *)self clockAreaLuminance];
    v11 = v10;
    settlingEffectEnabled = [(PFParallaxLayerStack *)self settlingEffectEnabled];
    LOBYTE(v15) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
    selfCopy = [(PFParallaxLayerStack *)v5 initWithLayers:layers layout:layout depthEnabled:depthEnabled parallaxDisabled:parallaxDisabled clockAreaLuminance:settlingEffectEnabled settlingEffectEnabled:enabledCopy spatialPhotoEnabled:v11 userAdjustedVisibleFrame:v15];
  }

  return selfCopy;
}

- (id)layerStackByUpdatingSettlingEffectEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(PFParallaxLayerStack *)self settlingEffectEnabled]== enabled)
  {
    selfCopy = self;
  }

  else
  {
    v5 = [PFParallaxLayerStack alloc];
    layers = [(PFParallaxLayerStack *)self layers];
    layout = [(PFParallaxLayerStack *)self layout];
    depthEnabled = [(PFParallaxLayerStack *)self depthEnabled];
    parallaxDisabled = [(PFParallaxLayerStack *)self parallaxDisabled];
    [(PFParallaxLayerStack *)self clockAreaLuminance];
    v11 = v10;
    spatialPhotoEnabled = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
    LOBYTE(v15) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
    selfCopy = [(PFParallaxLayerStack *)v5 initWithLayers:layers layout:layout depthEnabled:depthEnabled parallaxDisabled:parallaxDisabled clockAreaLuminance:enabledCopy settlingEffectEnabled:spatialPhotoEnabled spatialPhotoEnabled:v11 userAdjustedVisibleFrame:v15];
  }

  return selfCopy;
}

- (id)layerStackByUpdatingDepthEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(PFParallaxLayerStack *)self depthEnabled]== enabled)
  {
    selfCopy = self;
  }

  else
  {
    v5 = [PFParallaxLayerStack alloc];
    layers = [(PFParallaxLayerStack *)self layers];
    layout = [(PFParallaxLayerStack *)self layout];
    parallaxDisabled = [(PFParallaxLayerStack *)self parallaxDisabled];
    [(PFParallaxLayerStack *)self clockAreaLuminance];
    v10 = v9;
    settlingEffectEnabled = [(PFParallaxLayerStack *)self settlingEffectEnabled];
    spatialPhotoEnabled = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
    LOBYTE(v15) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
    selfCopy = [(PFParallaxLayerStack *)v5 initWithLayers:layers layout:layout depthEnabled:enabledCopy parallaxDisabled:parallaxDisabled clockAreaLuminance:settlingEffectEnabled settlingEffectEnabled:spatialPhotoEnabled spatialPhotoEnabled:v10 userAdjustedVisibleFrame:v15];
  }

  return selfCopy;
}

- (id)layerStackByUpdatingClockLayerOrder:(id)order
{
  v4 = [(PFPosterOrientedLayout *)self->_layout layoutByUpdatingClockLayerOrder:order];
  v5 = [PFParallaxLayerStack alloc];
  layers = [(PFParallaxLayerStack *)self layers];
  depthEnabled = [(PFParallaxLayerStack *)self depthEnabled];
  parallaxDisabled = [(PFParallaxLayerStack *)self parallaxDisabled];
  [(PFParallaxLayerStack *)self clockAreaLuminance];
  v10 = v9;
  settlingEffectEnabled = [(PFParallaxLayerStack *)self settlingEffectEnabled];
  spatialPhotoEnabled = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
  LOBYTE(v15) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
  v13 = [(PFParallaxLayerStack *)v5 initWithLayers:layers layout:v4 depthEnabled:depthEnabled parallaxDisabled:parallaxDisabled clockAreaLuminance:settlingEffectEnabled settlingEffectEnabled:spatialPhotoEnabled spatialPhotoEnabled:v10 userAdjustedVisibleFrame:v15];

  return v13;
}

- (id)layerStackByUpdatingInactiveFrame:(CGRect)frame
{
  v4 = [(PFPosterOrientedLayout *)self->_layout layoutByUpdatingInactiveFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = [PFParallaxLayerStack alloc];
  layers = [(PFParallaxLayerStack *)self layers];
  depthEnabled = [(PFParallaxLayerStack *)self depthEnabled];
  parallaxDisabled = [(PFParallaxLayerStack *)self parallaxDisabled];
  [(PFParallaxLayerStack *)self clockAreaLuminance];
  v10 = v9;
  settlingEffectEnabled = [(PFParallaxLayerStack *)self settlingEffectEnabled];
  spatialPhotoEnabled = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
  LOBYTE(v15) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
  v13 = [(PFParallaxLayerStack *)v5 initWithLayers:layers layout:v4 depthEnabled:depthEnabled parallaxDisabled:parallaxDisabled clockAreaLuminance:settlingEffectEnabled settlingEffectEnabled:spatialPhotoEnabled spatialPhotoEnabled:v10 userAdjustedVisibleFrame:v15];

  return v13;
}

- (id)layerStackByUpdatingVisibleFrame:(CGRect)frame
{
  v4 = [(PFPosterOrientedLayout *)self->_layout layoutByUpdatingVisibleFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = [PFParallaxLayerStack alloc];
  layers = [(PFParallaxLayerStack *)self layers];
  depthEnabled = [(PFParallaxLayerStack *)self depthEnabled];
  parallaxDisabled = [(PFParallaxLayerStack *)self parallaxDisabled];
  [(PFParallaxLayerStack *)self clockAreaLuminance];
  v10 = v9;
  settlingEffectEnabled = [(PFParallaxLayerStack *)self settlingEffectEnabled];
  spatialPhotoEnabled = [(PFParallaxLayerStack *)self spatialPhotoEnabled];
  LOBYTE(v15) = [(PFParallaxLayerStack *)self userAdjustedVisibleFrame];
  v13 = [(PFParallaxLayerStack *)v5 initWithLayers:layers layout:v4 depthEnabled:depthEnabled parallaxDisabled:parallaxDisabled clockAreaLuminance:settlingEffectEnabled settlingEffectEnabled:spatialPhotoEnabled spatialPhotoEnabled:v10 userAdjustedVisibleFrame:v15];

  return v13;
}

@end