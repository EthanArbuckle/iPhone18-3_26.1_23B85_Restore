@interface SBPIPMultidisplayHyperregionComposer
- (CGPoint)defaultCornerPositionForLayoutSettingsPosition:(unint64_t)position proposedCenter:(CGPoint)center geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction;
- (SBPIPMultidisplayHyperregionComposer)init;
- (SBPIPPositionGeometryContext)_adjustGeometryContextIfNeeded:(SEL)needed forComposer:(SBPIPPositionGeometryContext *)composer;
- (SBPIPPositionHyperregionComposerDelegate)delegate;
- (id)_composerForWindowScene:(id)scene;
- (id)_identifierForScene:(id)scene;
- (id)mergeMutableRegionsMap:(id)map withMap:(id)withMap;
- (id)mutableRegionMapForScene:(id)scene geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction;
- (id)positionRegionsForRegions:(id)regions geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction;
- (unint64_t)canonicalPositionForPoint:(CGPoint)point proposedPosition:(unint64_t)position geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction;
- (void)invalidate;
- (void)setConnectedWindowScenes:(id)scenes;
@end

@implementation SBPIPMultidisplayHyperregionComposer

- (SBPIPMultidisplayHyperregionComposer)init
{
  v6.receiver = self;
  v6.super_class = SBPIPMultidisplayHyperregionComposer;
  v2 = [(SBPIPMultidisplayHyperregionComposer *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sceneIdentifiersToComposers = v2->_sceneIdentifiersToComposers;
    v2->_sceneIdentifiersToComposers = dictionary;
  }

  return v2;
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained positionRegionComposerDidInvalidate:self];
}

- (void)setConnectedWindowScenes:(id)scenes
{
  v28 = *MEMORY[0x277D85DE8];
  scenesCopy = scenes;
  if ((BSEqualArrays() & 1) == 0)
  {
    v5 = MEMORY[0x277CBEB58];
    allKeys = [(NSMutableDictionary *)self->_sceneIdentifiersToComposers allKeys];
    v7 = [v5 setWithArray:allKeys];

    v22 = scenesCopy;
    v8 = [scenesCopy copy];
    connectedWindowScenes = self->_connectedWindowScenes;
    self->_connectedWindowScenes = v8;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = self->_connectedWindowScenes;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          session = [v15 session];
          persistentIdentifier = [session persistentIdentifier];

          [v7 removeObject:persistentIdentifier];
          v18 = [(NSMutableDictionary *)self->_sceneIdentifiersToComposers objectForKeyedSubscript:persistentIdentifier];

          if (!v18)
          {
            v19 = objc_alloc_init(SBPIPDefaultPositionHyperregionComposer);
            [(SBPIPDefaultPositionHyperregionComposer *)v19 setRepresentedWindowScene:v15];
            [(NSMutableDictionary *)self->_sceneIdentifiersToComposers setObject:v19 forKeyedSubscript:persistentIdentifier];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    sceneIdentifiersToComposers = self->_sceneIdentifiersToComposers;
    allObjects = [v7 allObjects];
    [(NSMutableDictionary *)sceneIdentifiersToComposers removeObjectsForKeys:allObjects];

    scenesCopy = v22;
  }
}

- (id)_composerForWindowScene:(id)scene
{
  sceneIdentifiersToComposers = self->_sceneIdentifiersToComposers;
  session = [scene session];
  persistentIdentifier = [session persistentIdentifier];
  v6 = [(NSMutableDictionary *)sceneIdentifiersToComposers objectForKeyedSubscript:persistentIdentifier];

  return v6;
}

- (id)_identifierForScene:(id)scene
{
  session = [scene session];
  persistentIdentifier = [session persistentIdentifier];

  return persistentIdentifier;
}

- (id)mutableRegionMapForScene:(id)scene geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction
{
  v8 = [(SBPIPMultidisplayHyperregionComposer *)self _composerForWindowScene:scene];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0;
  v41 = 0u;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v9 = *&geometry->stashedMinimumPadding.bottom;
  v32 = *&geometry->stashedMinimumPadding.top;
  v33 = v9;
  v34 = *&geometry->offscreenCorners;
  v10 = *&geometry->edgeInsets.bottom;
  v28 = *&geometry->edgeInsets.top;
  v29 = v10;
  v11 = *&geometry->minimumPadding.bottom;
  v30 = *&geometry->minimumPadding.top;
  v31 = v11;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  pipStashedSize = geometry->pipStashedSize;
  v25 = pipAnchorPointOffset;
  size = geometry->containerBounds.size;
  origin = geometry->containerBounds.origin;
  v27 = size;
  pipLastSteadySize = geometry->pipLastSteadySize;
  pipCurrentSize = geometry->pipCurrentSize;
  v23 = pipLastSteadySize;
  [(SBPIPMultidisplayHyperregionComposer *)self _adjustGeometryContextIfNeeded:&pipCurrentSize forComposer:v8];
  v32 = v45;
  v33 = v46;
  v34 = v47;
  v28 = v41;
  v29 = v42;
  v30 = v43;
  v31 = v44;
  pipStashedSize = v37;
  v25 = v38;
  origin = v39;
  v27 = v40;
  pipCurrentSize = v35;
  v23 = v36;
  v15 = *&interaction->currentPosition.y;
  v20[2] = *&interaction->initialPosition.y;
  v20[3] = v15;
  projectedPositionStashProgress = interaction->projectedPositionStashProgress;
  v16 = *&interaction->projectedPosition.y;
  v20[0] = *&interaction->isStashed;
  v20[1] = v16;
  v17 = [v8 positionRegionsForRegions:0 geometry:&pipCurrentSize interaction:v20];
  v18 = [v17 mutableCopy];

  return v18;
}

- (id)mergeMutableRegionsMap:(id)map withMap:(id)withMap
{
  v40 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  withMapCopy = withMap;
  v7 = withMapCopy;
  if (mapCopy)
  {
    v8 = mapCopy;
  }

  else
  {
    v8 = withMapCopy;
  }

  v9 = v8;
  if (mapCopy && v7)
  {
    v10 = MEMORY[0x277CBEB58];
    allKeys = [mapCopy allKeys];
    v12 = [v10 setWithArray:allKeys];

    allKeys2 = [v7 allKeys];
    [v12 addObjectsFromArray:allKeys2];

    v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v12, "count")}];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v12;
    v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
      v31 = *v36;
      v32 = v9;
      do
      {
        v17 = 0;
        v33 = v15;
        do
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v35 + 1) + 8 * v17);
          v19 = [mapCopy objectForKeyedSubscript:{v18, v31}];
          v20 = [v7 objectForKeyedSubscript:v18];
          v21 = v20;
          if (v19)
          {
            v22 = v20 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            if (v19)
            {
              v23 = v19;
            }

            else
            {
              v23 = v20;
            }

            v24 = v23;
          }

          else
          {
            v24 = [objc_alloc(MEMORY[0x277D76010]) initWithDimensions:{objc_msgSend(v19, "_dimensions")}];
            _regions = [v19 _regions];
            _regions2 = [v21 _regions];
            [_regions arrayByAddingObjectsFromArray:_regions2];
            v27 = v7;
            v29 = v28 = mapCopy;
            [v24 _setRegions:v29];

            mapCopy = v28;
            v7 = v27;
            v16 = v31;

            v9 = v32;
            v15 = v33;
          }

          [v9 setObject:v24 forKeyedSubscript:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v15);
    }
  }

  return v9;
}

- (id)positionRegionsForRegions:(id)regions geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction
{
  v44 = *MEMORY[0x277D85DE8];
  regionsCopy = regions;
  v8 = [(NSArray *)self->_connectedWindowScenes count];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v35 = [WeakRetained targetWindowSceneForRegionComposer:self];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  selfCopy = self;
  obj = self->_connectedWindowScenes;
  v10 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_25;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v40;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v40 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v39 + 1) + 8 * i);
      if (!interaction->hasActiveGesture && v35 != v15 && v8 > 1)
      {
        continue;
      }

      v17 = *&geometry->stashedMinimumPadding.bottom;
      v38[10] = *&geometry->stashedMinimumPadding.top;
      v38[11] = v17;
      v38[12] = *&geometry->offscreenCorners;
      v18 = *&geometry->edgeInsets.bottom;
      v38[6] = *&geometry->edgeInsets.top;
      v38[7] = v18;
      v19 = *&geometry->minimumPadding.bottom;
      v38[8] = *&geometry->minimumPadding.top;
      v38[9] = v19;
      pipAnchorPointOffset = geometry->pipAnchorPointOffset;
      v38[2] = geometry->pipStashedSize;
      v38[3] = pipAnchorPointOffset;
      size = geometry->containerBounds.size;
      v38[4] = geometry->containerBounds.origin;
      v38[5] = size;
      pipLastSteadySize = geometry->pipLastSteadySize;
      v38[0] = geometry->pipCurrentSize;
      v38[1] = pipLastSteadySize;
      v23 = *&interaction->currentPosition.y;
      v36[2] = *&interaction->initialPosition.y;
      v36[3] = v23;
      projectedPositionStashProgress = interaction->projectedPositionStashProgress;
      v24 = *&interaction->projectedPosition.y;
      v36[0] = *&interaction->isStashed;
      v36[1] = v24;
      v25 = [(SBPIPMultidisplayHyperregionComposer *)selfCopy mutableRegionMapForScene:v15 geometry:v38 interaction:v36];
      if (v8 >= 2)
      {
        _sbDisplayConfiguration = [v15 _sbDisplayConfiguration];
        v27 = SBSDisplayEdgeAdjacentToNeighboringDisplay();
        if (v27)
        {
          if (v27 == 2)
          {
            v28 = &unk_283371EE8;
            goto LABEL_16;
          }
        }

        else
        {
          v28 = &unk_283371ED0;
LABEL_16:
          [v25 removeObjectForKey:v28];
        }

        if (v35 != v15)
        {
          [v25 removeObjectForKey:&unk_283371ED0];
          [v25 removeObjectForKey:&unk_283371EE8];
          [v25 removeObjectForKey:&unk_283371F00];
          [v25 removeObjectForKey:&unk_283371F18];
        }
      }

      v29 = [(SBPIPMultidisplayHyperregionComposer *)selfCopy mergeMutableRegionsMap:v12 withMap:v25];

      v12 = v29;
      continue;
    }

    v11 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v11);
LABEL_25:

  v30 = [v12 copy];

  return v30;
}

- (SBPIPPositionGeometryContext)_adjustGeometryContextIfNeeded:(SEL)needed forComposer:(SBPIPPositionGeometryContext *)composer
{
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  representedWindowScene = [v8 representedWindowScene];

  if (WeakRetained)
  {
    v11 = *&composer->stashedMinimumPadding.bottom;
    v18[10] = *&composer->stashedMinimumPadding.top;
    v18[11] = v11;
    v18[12] = *&composer->offscreenCorners;
    v12 = *&composer->edgeInsets.bottom;
    v18[6] = *&composer->edgeInsets.top;
    v18[7] = v12;
    v13 = *&composer->minimumPadding.bottom;
    v18[8] = *&composer->minimumPadding.top;
    v18[9] = v13;
    pipAnchorPointOffset = composer->pipAnchorPointOffset;
    v18[2] = composer->pipStashedSize;
    v18[3] = pipAnchorPointOffset;
    size = composer->containerBounds.size;
    v18[4] = composer->containerBounds.origin;
    v18[5] = size;
    pipLastSteadySize = composer->pipLastSteadySize;
    v18[0] = composer->pipCurrentSize;
    v18[1] = pipLastSteadySize;
    [WeakRetained regionComposer:self transformGeometryContext:v18 toWindowScene:representedWindowScene];
  }

  else
  {
    *&retstr->stashedMinimumPadding.bottom = 0u;
    *&retstr->offscreenCorners = 0u;
    *&retstr->minimumPadding.bottom = 0u;
    *&retstr->stashedMinimumPadding.top = 0u;
    *&retstr->edgeInsets.bottom = 0u;
    *&retstr->minimumPadding.top = 0u;
    retstr->containerBounds.size = 0u;
    *&retstr->edgeInsets.top = 0u;
    retstr->pipAnchorPointOffset = 0u;
    retstr->containerBounds.origin = 0u;
    retstr->pipLastSteadySize = 0u;
    retstr->pipStashedSize = 0u;
    retstr->pipCurrentSize = 0u;
  }

  return result;
}

- (unint64_t)canonicalPositionForPoint:(CGPoint)point proposedPosition:(unint64_t)position geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained targetWindowSceneForRegionComposer:self];

  v14 = [(SBPIPMultidisplayHyperregionComposer *)self _composerForWindowScene:v13];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0;
  v46 = 0u;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v15 = *&geometry->stashedMinimumPadding.bottom;
  v37 = *&geometry->stashedMinimumPadding.top;
  v38 = v15;
  v39 = *&geometry->offscreenCorners;
  v40 = 0;
  v16 = *&geometry->edgeInsets.bottom;
  v33 = *&geometry->edgeInsets.top;
  v34 = v16;
  v17 = *&geometry->minimumPadding.bottom;
  v35 = *&geometry->minimumPadding.top;
  v36 = v17;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  pipStashedSize = geometry->pipStashedSize;
  v30 = pipAnchorPointOffset;
  size = geometry->containerBounds.size;
  origin = geometry->containerBounds.origin;
  v32 = size;
  pipLastSteadySize = geometry->pipLastSteadySize;
  pipCurrentSize = geometry->pipCurrentSize;
  v28 = pipLastSteadySize;
  [(SBPIPMultidisplayHyperregionComposer *)self _adjustGeometryContextIfNeeded:&pipCurrentSize forComposer:v14];
  v37 = v50;
  v38 = v51;
  v39 = v52;
  v33 = v46;
  v34 = v47;
  v35 = v48;
  v36 = v49;
  pipStashedSize = v42;
  v30 = v43;
  origin = v44;
  v32 = v45;
  pipCurrentSize = v40;
  v28 = v41;
  v21 = *&interaction->currentPosition.y;
  v25[2] = *&interaction->initialPosition.y;
  v25[3] = v21;
  projectedPositionStashProgress = interaction->projectedPositionStashProgress;
  v22 = *&interaction->projectedPosition.y;
  v25[0] = *&interaction->isStashed;
  v25[1] = v22;
  v23 = [v14 canonicalPositionForPoint:position proposedPosition:&pipCurrentSize geometry:v25 interaction:{x, y}];

  return v23;
}

- (CGPoint)defaultCornerPositionForLayoutSettingsPosition:(unint64_t)position proposedCenter:(CGPoint)center geometry:(SBPIPPositionGeometryContext *)geometry interaction:(SBPIPPositionInteractionStateContext *)interaction
{
  y = center.y;
  x = center.x;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained targetWindowSceneForRegionComposer:self];

  v14 = [(SBPIPMultidisplayHyperregionComposer *)self _composerForWindowScene:v13];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0;
  v50 = 0u;
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v15 = *&geometry->stashedMinimumPadding.bottom;
  v41 = *&geometry->stashedMinimumPadding.top;
  v42 = v15;
  v43 = *&geometry->offscreenCorners;
  v44 = 0;
  v16 = *&geometry->edgeInsets.bottom;
  v37 = *&geometry->edgeInsets.top;
  v38 = v16;
  v17 = *&geometry->minimumPadding.bottom;
  v39 = *&geometry->minimumPadding.top;
  v40 = v17;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  pipStashedSize = geometry->pipStashedSize;
  v34 = pipAnchorPointOffset;
  size = geometry->containerBounds.size;
  origin = geometry->containerBounds.origin;
  v36 = size;
  pipLastSteadySize = geometry->pipLastSteadySize;
  pipCurrentSize = geometry->pipCurrentSize;
  v32 = pipLastSteadySize;
  [(SBPIPMultidisplayHyperregionComposer *)self _adjustGeometryContextIfNeeded:&pipCurrentSize forComposer:v14];
  v41 = v54;
  v42 = v55;
  v43 = v56;
  v37 = v50;
  v38 = v51;
  v39 = v52;
  v40 = v53;
  pipStashedSize = v46;
  v34 = v47;
  origin = v48;
  v36 = v49;
  pipCurrentSize = v44;
  v32 = v45;
  v21 = *&interaction->currentPosition.y;
  v29[2] = *&interaction->initialPosition.y;
  v29[3] = v21;
  projectedPositionStashProgress = interaction->projectedPositionStashProgress;
  v22 = *&interaction->projectedPosition.y;
  v29[0] = *&interaction->isStashed;
  v29[1] = v22;
  [v14 defaultCornerPositionForLayoutSettingsPosition:position proposedCenter:&pipCurrentSize geometry:v29 interaction:{x, y}];
  v24 = v23;
  v26 = v25;

  v27 = v24;
  v28 = v26;
  result.y = v28;
  result.x = v27;
  return result;
}

- (SBPIPPositionHyperregionComposerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end