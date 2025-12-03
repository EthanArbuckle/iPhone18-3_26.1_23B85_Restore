@interface MPDocument
+ (void)initialize;
- (BOOL)detectFacesInBackground;
- (BOOL)isAudioAtPath:(id)path;
- (BOOL)isImageAtPath:(id)path;
- (BOOL)isLive;
- (BOOL)isMovieAtPath:(id)path;
- (BOOL)isSupportedMovieForAssetAtPath:(id)path;
- (CGColor)backgroundCGColor;
- (CGImage)CGImageForAssetAtPath:(id)path andSize:(CGSize)size orientation:(char *)orientation thumbnailIfPossible:(BOOL)possible now:(BOOL)now;
- (CGImage)thumbnailCGImageForAssetAtPath:(id)path andSize:(CGSize)size;
- (CGPoint)latLongPointForMap:(id)map withAttributes:(id)attributes;
- (CGPoint)pointForMap:(id)map withAttributes:(id)attributes;
- (CGSize)resolutionForAssetAtPath:(id)path;
- (CGSize)resolutionForPath:(id)path;
- (MPDocument)init;
- (double)aspectRatio;
- (double)aspectRatioDidChange:(double)change atTime:(double)time;
- (double)duration;
- (double)durationForPath:(id)path;
- (double)numberOfLoops;
- (double)posterTime;
- (double)startTimeForAssetAtPath:(id)path;
- (double)startTimeForPath:(id)path;
- (double)stopTimeForAssetAtPath:(id)path;
- (double)stopTimeForPath:(id)path;
- (double)videoDuration;
- (double)volumeForPath:(id)path;
- (id)absolutePathForAssetAtPath:(id)path;
- (id)absolutePathForAssetAtPath:(id)path andSize:(CGSize)size;
- (id)absolutePathForStillAssetAtPath:(id)path andSize:(CGSize)size;
- (id)absoluteVideoPaths;
- (id)actionableObjectForID:(id)d;
- (id)allEffectContainers;
- (id)allEffects;
- (id)allElements;
- (id)allSlides:(BOOL)slides;
- (id)allSongs;
- (id)altitudeForPath:(id)path;
- (id)areaForPath:(id)path;
- (id)audioPaths;
- (id)audioPlaylist;
- (id)authoringOptionForKey:(id)key;
- (id)avAssetForAssetAtPath:(id)path;
- (id)cachedAbsolutePathFromPath:(id)path;
- (id)cachedAbsoluteStillPathFromPath:(id)path;
- (id)captionForPath:(id)path;
- (id)cityForPath:(id)path;
- (id)countryForPath:(id)path;
- (id)creationDateForPath:(id)path;
- (id)currentStyle;
- (id)dataForAssetAtPath:(id)path andSize:(CGSize)size;
- (id)definedPlaceNameForPath:(id)path;
- (id)description;
- (id)documentAttributeForKey:(id)key;
- (id)flightPlanFrom:(CGPoint)from to:(CGPoint)to;
- (id)keywordsForPath:(id)path;
- (id)latitudeForPath:(id)path;
- (id)layers;
- (id)longitudeForPath:(id)path;
- (id)mainLayers;
- (id)neighborhoodForPath:(id)path;
- (id)objectInLayersAtIndex:(int64_t)index;
- (id)oceanForPath:(id)path;
- (id)orderedVideoPaths;
- (id)organizedRandomTransitions;
- (id)outroEffect;
- (id)placeForPath:(id)path;
- (id)propertiesForMediaPath:(id)path;
- (id)propertiesForMediaPathAndCreateIfNeeded:(id)needed withValue:(id)value forKey:(id)key;
- (id)regionsOfInterestForPath:(id)path detect:(BOOL)detect;
- (id)stateForPath:(id)path;
- (id)styleID;
- (id)tiledMapPathsForAttributes:(id)attributes;
- (id)titleEffect;
- (id)valueInLayersWithName:(id)name;
- (id)videoPaths;
- (int64_t)antialiasLevel;
- (int64_t)countOfLayers;
- (int64_t)mapLevelForPath:(id)path;
- (int64_t)mediaTypeForPath:(id)path;
- (unint64_t)applyStyle:(id)style;
- (unint64_t)loopingMode;
- (void)addAudioPath:(id)path;
- (void)addAudioPaths:(id)paths;
- (void)addLayer:(id)layer;
- (void)addLayers:(id)layers;
- (void)addVideoPath:(id)path;
- (void)addVideoPaths:(id)paths;
- (void)beginBatchModify;
- (void)cleanup;
- (void)configureActions;
- (void)dealloc;
- (void)endBatchModify;
- (void)insertLayers:(id)layers atIndex:(int64_t)index;
- (void)insertObject:(id)object inLayersAtIndex:(int64_t)index;
- (void)moveLayersFromIndices:(id)indices toIndex:(int64_t)index;
- (void)organizeRandomTransitions;
- (void)reconnectAllTransitions;
- (void)removeAllAudioPaths;
- (void)removeAllLayers;
- (void)removeAllVideoPaths;
- (void)removeLayerForKey:(id)key;
- (void)removeLayersAtIndices:(id)indices;
- (void)removeObjectFromLayersAtIndex:(int64_t)index;
- (void)removePath:(id)path;
- (void)removePaths:(id)paths;
- (void)removePropertiesForMediaPath:(id)path;
- (void)replaceObjectInLayersAtIndex:(int64_t)index withObject:(id)object;
- (void)setAbsolutePath:(id)path forKey:(id)key;
- (void)setAbsoluteStillPath:(id)path forKey:(id)key;
- (void)setAssetKeyDelegate:(id)delegate;
- (void)setAudioPaths:(id)paths;
- (void)setAudioPlaylist:(id)playlist;
- (void)setAuthoringOption:(id)option forKey:(id)key;
- (void)setBackgroundCGColor:(CGColor *)color;
- (void)setDocumentAttribute:(id)attribute forKey:(id)key;
- (void)setDocumentLayerGroup:(id)group;
- (void)setLayer:(id)layer forKey:(id)key;
- (void)setLoopingMode:(unint64_t)mode;
- (void)setMediaProperties:(id)properties;
- (void)setMontage:(id)montage;
- (void)setNumberOfLoops:(double)loops;
- (void)setProperties:(id)properties forMediaPath:(id)path;
- (void)setStyleID:(id)d;
- (void)setTemporarilyCacheAbsolutePaths:(BOOL)paths;
- (void)setVideoPaths:(id)paths;
- (void)setupDocumentLayerGroup;
- (void)setupLayerGroups;
- (void)upgradeDocument;
@end

@implementation MPDocument

+ (void)initialize
{
  +[MPEffectManager sharedManager];
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___MPDocument;
  objc_msgSendSuper2(&v3, "initialize");
}

- (MPDocument)init
{
  v19.receiver = self;
  v19.super_class = MPDocument;
  v2 = [(MPDocument *)&v19 init];
  if (v2)
  {
    v2->_documentAttributes = objc_alloc_init(NSMutableDictionary);
    v2->_fileProperties = objc_alloc_init(NSMutableDictionary);
    v2->_internal = objc_alloc_init(MPDocumentInternal);
    [(MPDocumentInternal *)v2->_internal setPropertiesLock:objc_alloc_init(NSRecursiveLock)];
    [(NSRecursiveLock *)[(MPDocumentInternal *)v2->_internal propertiesLock] setName:@"MPDocument.propertiesLock"];
    -[MPDocumentInternal setAssetLogging:](v2->_internal, "setAssetLogging:", [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"marimbaAssetLogging"]);
    [(MPDocumentInternal *)v2->_internal setCachedAbsolutePaths:+[NSMutableDictionary dictionary]];
    [(MPDocumentInternal *)v2->_internal setCachedAbsoluteStillPaths:+[NSMutableDictionary dictionary]];
    [(MPDocumentInternal *)v2->_internal setCachedPathLock:objc_alloc_init(NSLock)];
    [(NSLock *)[(MPDocumentInternal *)v2->_internal cachedPathLock] setName:@"MPDocument.cachedPathLock"];
    [(MPDocumentInternal *)v2->_internal setBatchModifyCount:0];
    [(MPDocumentInternal *)v2->_internal setIsInBatchModify:0];
    [(MPDocumentInternal *)v2->_internal setNeedsActionConfigure:0];
    [(MPDocumentInternal *)v2->_internal setUuid:+[MPUtilities stringWithNewUUID]];
    [(MPDocumentInternal *)v2->_internal setCacheAbsolutePathOverride:0];
    [(MPDocumentInternal *)v2->_internal setAlwaysLookupAbsolutePaths:0];
    documentAttributes = v2->_documentAttributes;
    v4 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)documentAttributes setObject:v4 forKey:kMPDocumentEnforceSafeTiming];
    v5 = v2->_documentAttributes;
    v6 = [NSNumber numberWithInteger:0];
    [(NSMutableDictionary *)v5 setObject:v6 forKey:kMPDocumentTimingMode];
    v7 = v2->_documentAttributes;
    v8 = [NSNumber numberWithBool:0];
    [(NSMutableDictionary *)v7 setObject:v8 forKey:kMPDocumentPreparedForExport];
    v9 = v2->_documentAttributes;
    v10 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)v9 setObject:v10 forKey:kMPDocumentSupportsRandomTransition];
    v11 = v2->_documentAttributes;
    v12 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)v11 setObject:v12 forKey:kMPDocumentCacheAbsolutePaths];
    v13 = v2->_documentAttributes;
    LODWORD(v14) = *"ffF@";
    v15 = [NSNumber numberWithFloat:v14];
    [(NSMutableDictionary *)v13 setObject:v15 forKey:kMPDocumentVersion];
    v2->_preserveMedia = 0;
    [(MPDocument *)v2 setUndoManager:0];
    v2->_montage = 0;
    initFromScratch = [[MCMontage alloc] initFromScratch];
    v17 = initFromScratch;
    if (initFromScratch)
    {
      [objc_msgSend(initFromScratch "rootPlug")];
    }

    [(MPDocument *)v2 setMontage:v17];

    v2->_layerGroups = objc_alloc_init(NSMutableDictionary);
    [(MPDocument *)v2 setupDocumentLayerGroup];
  }

  return v2;
}

- (id)description
{
  v3 = [[NSString stringWithFormat:?], "stringByAppendingFormat:", @"\t                   Style ID: %@\n", [(MPDocument *)self currentStyle]];
  [(MPDocument *)self duration];
  return [(NSString *)v3 stringByAppendingFormat:@"\t                   Duration: %f\n", v4];
}

- (void)dealloc
{
  [(MPDocument *)self cleanup];
  [(MPDocument *)self setAssetKeyDelegate:0];
  [(NSRecursiveLock *)[(MPDocumentInternal *)self->_internal propertiesLock] lock];

  self->_fileProperties = 0;
  [(NSRecursiveLock *)[(MPDocumentInternal *)self->_internal propertiesLock] unlock];

  self->_internal = 0;
  self->_layerGroups = 0;
  montage = self->_montage;
  if (montage)
  {

    self->_montage = 0;
  }

  self->_documentAttributes = 0;
  objc_storeWeak(&self->_assetKeyDelegate, 0);
  v4.receiver = self;
  v4.super_class = MPDocument;
  [(MPDocument *)&v4 dealloc];
}

- (id)currentStyle
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup styleID];
}

- (unint64_t)applyStyle:(id)style
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];
  v5 = documentLayerGroup;
  v6 = [(MPLayerGroup *)documentLayerGroup setStyleID:style];

  return v6;
}

- (id)documentAttributeForKey:(id)key
{
  if ([key isEqualToString:kMPDocumentAuthoringOptions])
  {
    documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

    return [(MPLayerGroup *)documentLayerGroup authoringOptions];
  }

  else
  {
    result = [(NSMutableDictionary *)self->_documentAttributes objectForKey:key];
    if (!result)
    {
      if ([key isEqualToString:kMPDocumentNameAttribute])
      {

        return [(MPDocument *)self displayName];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (void)setDocumentAttribute:(id)attribute forKey:(id)key
{
  if ([key isEqualToString:kMPDocumentAuthoringOptions])
  {
    documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

    [(MPLayerGroup *)documentLayerGroup setAuthoringOptions:attribute];
  }

  else
  {
    documentAttributes = self->_documentAttributes;
    if (attribute)
    {
      [(NSMutableDictionary *)documentAttributes setObject:attribute forKey:key];
    }

    else
    {
      [(NSMutableDictionary *)documentAttributes removeObjectForKey:key];
    }

    if ([key isEqualToString:kMPDocumentRandomTransitionList])
    {

      [(MPDocument *)self organizeRandomTransitions];
    }
  }
}

- (void)setMediaProperties:(id)properties
{
  [(NSRecursiveLock *)[(MPDocumentInternal *)self->_internal propertiesLock] lock];
  fileProperties = self->_fileProperties;
  if (fileProperties)
  {
  }

  self->_fileProperties = objc_alloc_init(NSMutableDictionary);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [properties countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(properties);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [objc_msgSend(properties objectForKey:{v10), "mutableCopy"}];
        [(NSMutableDictionary *)self->_fileProperties setObject:v11 forKey:v10];
      }

      v7 = [properties countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSRecursiveLock *)[(MPDocumentInternal *)self->_internal propertiesLock] unlock];
}

- (id)propertiesForMediaPath:(id)path
{
  [(NSRecursiveLock *)[(MPDocumentInternal *)self->_internal propertiesLock] lock];
  v5 = [(NSMutableDictionary *)self->_fileProperties objectForKey:path];
  [(NSRecursiveLock *)[(MPDocumentInternal *)self->_internal propertiesLock] unlock];

  return v5;
}

- (void)setProperties:(id)properties forMediaPath:(id)path
{
  v7 = [properties mutableCopy];
  v8 = [properties objectForKey:kMPMetaDataRegionOfInterestRectangles];
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v7;
      v10 = +[NSMutableArray array];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v18 + 1) + 8 * i);
            v16 = [v9 objectForKey:v15];
            [v10 addObject:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v15, kMPMetaDataRegionOfInterestID, v16, kMPMetaDataRegionOfInterestBounds, 0)}];
          }

          v12 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }

      v7 = v17;
      [v17 setObject:v10 forKey:kMPMetaDataRegionOfInterestRectangles];
    }
  }

  [(NSRecursiveLock *)[(MPDocumentInternal *)self->_internal propertiesLock] lock];
  [(NSMutableDictionary *)self->_fileProperties setObject:v7 forKey:path];
  [(NSRecursiveLock *)[(MPDocumentInternal *)self->_internal propertiesLock] unlock];
  if (![(MPDocument *)self assetKeyDelegate])
  {
    [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
  }
}

- (void)removePropertiesForMediaPath:(id)path
{
  [(NSRecursiveLock *)[(MPDocumentInternal *)self->_internal propertiesLock] lock];
  [(NSMutableDictionary *)self->_fileProperties removeObjectForKey:path];
  propertiesLock = [(MPDocumentInternal *)self->_internal propertiesLock];

  [(NSRecursiveLock *)propertiesLock unlock];
}

- (id)authoringOptionForKey:(id)key
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup authoringOptionForKey:key];
}

- (void)setAuthoringOption:(id)option forKey:(id)key
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup setAuthoringOption:option forKey:key];
}

- (unint64_t)loopingMode
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup loopingMode];
}

- (void)setLoopingMode:(unint64_t)mode
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup setLoopingMode:mode];
}

- (double)numberOfLoops
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup numberOfLoops];
  return result;
}

- (void)setNumberOfLoops:(double)loops
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup setNumberOfLoops:loops];
}

- (void)setAssetKeyDelegate:(id)delegate
{
  if ([(MPDocument *)self assetKeyDelegate])
  {
    objc_storeWeak(&self->_assetKeyDelegate, 0);
  }

  if (delegate)
  {
    objc_storeWeak(&self->_assetKeyDelegate, delegate);
    if ([(MPDocumentInternal *)self->_internal documentLayerGroup])
    {
      documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

      [(MPLayerGroup *)documentLayerGroup cachePaths];
    }
  }
}

- (void)beginBatchModify
{
  if (![(MPDocumentInternal *)self->_internal batchModifyCount])
  {
    [(MPDocumentInternal *)self->_internal setIsInBatchModify:1];
    [(MCMontage *)self->_montage lock];
  }

  internal = self->_internal;
  v4 = [(MPDocumentInternal *)internal batchModifyCount]+ 1;

  [(MPDocumentInternal *)internal setBatchModifyCount:v4];
}

- (void)endBatchModify
{
  [(MPDocumentInternal *)self->_internal setBatchModifyCount:[(MPDocumentInternal *)self->_internal batchModifyCount]- 1];
  if (![(MPDocumentInternal *)self->_internal batchModifyCount])
  {
    [(MPDocumentInternal *)self->_internal setIsInBatchModify:0];
    [(MCMontage *)self->_montage unlock];
    if ([(MPDocumentInternal *)self->_internal needsActionConfigure])
    {
      [(MPDocument *)self configureActions];
      internal = self->_internal;

      [(MPDocumentInternal *)internal setNeedsActionConfigure:0];
    }
  }
}

- (id)allSlides:(BOOL)slides
{
  slidesCopy = slides;
  if ([(MPDocumentInternal *)self->_internal documentLayerGroup])
  {
    documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

    return [(MPLayerGroup *)documentLayerGroup allSlides:slidesCopy];
  }

  else
  {
    v7 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    layerGroups = self->_layerGroups;
    v9 = [(NSMutableDictionary *)layerGroups countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(layerGroups);
          }

          [v7 addObjectsFromArray:{objc_msgSend(-[NSMutableDictionary objectForKey:](self->_layerGroups, "objectForKey:", *(*(&v13 + 1) + 8 * i)), "allSlides:", slidesCopy)}];
        }

        v10 = [(NSMutableDictionary *)layerGroups countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }

    return v7;
  }
}

- (id)allElements
{
  if (![-[MPDocument styleID](self "styleID")])
  {
    return 0;
  }

  documentLayerGroup = [(MPDocument *)self documentLayerGroup];
  if ([documentLayerGroup countOfLayers] < 2)
  {
    return 0;
  }

  v4 = +[NSMutableArray array];
  v6 = [objc_msgSend(documentLayerGroup "layers")];
  v7 = [objc_msgSend(documentLayerGroup "layers")];
  obj = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  effectContainers = [v6 effectContainers];
  v9 = [effectContainers countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(effectContainers);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(objc_msgSend(v13 "effects")])
        {
          [obj addObject:v13];
        }
      }

      v10 = [effectContainers countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    v17 = 1;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [objc_msgSend(*(*(&v25 + 1) + 8 * j) "effects")];
        v20 = NSRangeFromString([v19 effectAttributeForKey:@"pinRange"]);
        if (!v20.location)
        {
          [v4 addObject:{objc_msgSend(objc_msgSend(v19, "texts"), "objectAtIndex:", 0)}];
        }

        if (v20.length >= 1)
        {
          v21 = 1;
          do
          {
            [v4 addObject:{objc_msgSend(objc_msgSend(v19, "texts"), "objectAtIndex:", v21)}];
            v22 = [v7 objectInEffectContainersAtIndex:v17];
            if ([v22 countOfEffects] >= 1)
            {
              do
              {
                [v4 addObjectsFromArray:{objc_msgSend(objc_msgSend(objc_msgSend(v22, "effects"), "lastObject"), "slides")}];
                v22 = [v7 objectInEffectContainersAtIndex:++v17];
              }

              while ([v22 countOfEffects] > 0);
            }

            ++v17;
          }

          while (v21++ != v20.length);
        }
      }

      v15 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v15);
  }

  return v4;
}

- (void)cleanup
{
  [(MPDocument *)self setAssetKeyDelegate:0];
  [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] cleanup];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  allValues = [(NSMutableDictionary *)self->_layerGroups allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7) cleanup];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(MPDocument *)self removeAllLayers];
  [(MPDocument *)self setAudioPlaylist:0];
  [(MCMontage *)self->_montage demolish];
}

- (double)posterTime
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup posterTime];
  return result;
}

- (void)addVideoPath:(id)path
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup addVideoPath:path];
}

- (void)addVideoPaths:(id)paths
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup addVideoPaths:paths];
}

- (void)addAudioPath:(id)path
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup addAudioPath:path];
}

- (void)addAudioPaths:(id)paths
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup addAudioPaths:paths];
}

- (void)removePath:(id)path
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup removePath:path];
}

- (void)removePaths:(id)paths
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup removePaths:paths];
}

- (id)videoPaths
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup videoPaths];
}

- (id)orderedVideoPaths
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup orderedVideoPaths];
}

- (void)setVideoPaths:(id)paths
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup setVideoPaths:paths];
}

- (id)audioPaths
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup audioPaths];
}

- (void)setAudioPaths:(id)paths
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup setAudioPaths:paths];
}

- (void)removeAllVideoPaths
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup removeAllVideoPaths];
}

- (void)removeAllAudioPaths
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup removeAllAudioPaths];
}

- (id)layers
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup layers];
}

- (void)addLayer:(id)layer
{
  v4 = [[NSArray alloc] initWithObjects:{layer, 0}];
  [(MPDocument *)self insertLayers:v4 atIndex:[(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] countOfLayers]];
}

- (void)addLayers:(id)layers
{
  countOfLayers = [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] countOfLayers];

  [(MPDocument *)self insertLayers:layers atIndex:countOfLayers];
}

- (void)insertLayers:(id)layers atIndex:(int64_t)index
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup insertLayers:layers atIndex:index];
}

- (void)removeAllLayers
{
  if ([(MPDocumentInternal *)self->_internal documentLayerGroup])
  {
    documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

    [(MPLayerGroup *)documentLayerGroup removeAllLayers];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    allKeys = [(NSMutableDictionary *)self->_layerGroups allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          [(MPDocument *)self removeLayerForKey:*(*(&v9 + 1) + 8 * v8)];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)removeLayersAtIndices:(id)indices
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup removeLayersAtIndices:indices];
}

- (void)moveLayersFromIndices:(id)indices toIndex:(int64_t)index
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup moveLayersFromIndices:indices toIndex:index];
}

- (void)setLayer:(id)layer forKey:(id)key
{
  [(MPDocument *)self setupLayerGroups];
  if ([(MPDocument *)self layerForKey:key])
  {
    [(MPDocument *)self removeLayerForKey:key];
  }

  container = [(MCPlug *)[(MCMontage *)self->_montage rootPlug] container];
  [layer setParent:self];
  [MPUtilities createPlugInContainer:container forLayer:layer key:key inDocument:self];
  if (objc_opt_respondsToSelector())
  {
    [layer resetDuration];
  }

  [(NSMutableDictionary *)self->_layerGroups setObject:layer forKey:key];

  [(MPDocument *)self configureActions];
}

- (void)removeLayerForKey:(id)key
{
  v5 = [(NSMutableDictionary *)self->_layerGroups objectForKey:?];
  container = [(MCPlug *)[(MCMontage *)self->_montage rootPlug] container];
  plug = [v5 plug];
  if (plug)
  {
    [(MCContainer *)container removePlug:plug];
  }

  [v5 setPlug:0];
  [v5 setContainer:0];
  [v5 setParent:0];
  layerGroups = self->_layerGroups;

  [(NSMutableDictionary *)layerGroups removeObjectForKey:key];
}

- (CGColor)backgroundCGColor
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup backgroundCGColor];
}

- (void)setBackgroundCGColor:(CGColor *)color
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup setBackgroundCGColor:color];
}

- (double)duration
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup duration];
  return result;
}

- (double)videoDuration
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup videoDuration];
  return result;
}

- (id)audioPlaylist
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup audioPlaylist];
}

- (void)setAudioPlaylist:(id)playlist
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup setAudioPlaylist:playlist];
}

- (id)mainLayers
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup mainLayers];
}

- (id)titleEffect
{
  v3 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v4 = [v3 objectForKey:@"layer"];
  v17 = 0u;
  v18 = 0u;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"background";
  }

  v19 = 0uLL;
  v20 = 0uLL;
  layers = [(MPDocument *)self layers];
  v7 = [layers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
LABEL_6:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(layers);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      if ([objc_msgSend(v11 "layerID")])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [layers countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }
    }

    if (v11)
    {
      goto LABEL_16;
    }
  }

LABEL_14:
  v12 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (v12 >= [(MPDocument *)self countOfLayers])
  {
    return 0;
  }

  v11 = [(MPDocument *)self objectInLayersAtIndex:v12];
LABEL_16:
  v13 = [objc_msgSend(v11 "effectContainers")];
  v14 = [v3 objectForKey:@"backgroundEffect"];
  v15 = v14 ? 2 : 1;
  if (v15 <= [objc_msgSend(v13 "effects")])
  {
    return [objc_msgSend(v13 "effects")];
  }

  else
  {
    return 0;
  }
}

- (id)outroEffect
{
  v3 = [-[MPDocument mainLayers](self "mainLayers")];
  v4 = [objc_msgSend(objc_msgSend(objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [objc_msgSend(objc_msgSend(v3 "effectContainers")];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([v4 hasPrefix:{objc_msgSend(v10, "effectID")}])
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)allEffectContainers
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup allEffectContainers];
}

- (id)allEffects
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup allEffects];
}

- (id)allSongs
{
  if ([(MPDocumentInternal *)self->_internal documentLayerGroup])
  {
    documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

    return [(MPLayerGroup *)documentLayerGroup allSongs];
  }

  else
  {
    v5 = +[NSMutableArray array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    layerGroups = self->_layerGroups;
    v7 = [(NSMutableDictionary *)layerGroups countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(layerGroups);
          }

          [v5 addObjectsFromArray:{objc_msgSend(-[NSMutableDictionary objectForKey:](self->_layerGroups, "objectForKey:", *(*(&v11 + 1) + 8 * i)), "allSongs")}];
        }

        v8 = [(NSMutableDictionary *)layerGroups countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    return v5;
  }
}

- (int64_t)antialiasLevel
{
  v3 = +[MPStyleManager sharedManager];
  styleID = [(MPDocument *)self styleID];

  return [v3 antialiasLevelForStyleID:styleID];
}

- (void)reconnectAllTransitions
{
  if ([(MPDocumentInternal *)self->_internal documentLayerGroup])
  {
    layerGroups = [NSDictionary dictionaryWithObject:[(MPDocumentInternal *)self->_internal documentLayerGroup] forKey:@"docLayerGroup"];
  }

  else
  {
    layerGroups = self->_layerGroups;
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = [(NSMutableDictionary *)layerGroups countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(layerGroups);
        }

        [-[NSMutableDictionary objectForKey:](layerGroups objectForKey:{*(*(&v8 + 1) + 8 * v7)), "reconnectAll"}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)layerGroups countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (CGSize)resolutionForPath:(id)path
{
  if (NSStringHasPrefix(path, "map"))
  {
    height = 2048.0;
    width = 2048.0;
  }

  else
  {
    v7 = [(MPDocument *)self propertiesForMediaPath:path];
    v8 = [v7 objectForKey:kMPMetaDataResolution];
    if (v8)
    {
      v9 = CGSizeFromString(v8);
      width = v9.width;
      height = v9.height;
    }

    else if (-[MPDocument assetKeyDelegate](self, "assetKeyDelegate") && (-[MPDocument assetKeyDelegate](self, "assetKeyDelegate"), (objc_opt_respondsToSelector() & 1) != 0) && (([-[MPDocument assetKeyDelegate](self "assetKeyDelegate")], width = v11, height = v10, v11 == CGSizeZero.width) ? (v12 = v10 == CGSizeZero.height) : (v12 = 0), !v12) || ((objc_msgSend(+[MPAssetManager sharedManager](MPAssetManager, "sharedManager"), "resolutionForAssetAtPath:", -[MPDocument absolutePathForAssetAtPath:](self, "absolutePathForAssetAtPath:", path)), width = v14, height = v13, v14 == CGSizeZero.width) ? (v15 = v13 == CGSizeZero.height) : (v15 = 0), !v15))
    {
      v18.width = width;
      v18.height = height;
      [(MPDocument *)self propertiesForMediaPathAndCreateIfNeeded:path withValue:NSStringFromCGSize(v18) forKey:kMPMetaDataResolution];
    }
  }

  v16 = width;
  v17 = height;
  result.height = v17;
  result.width = v16;
  return result;
}

- (double)startTimeForPath:(id)path
{
  v5 = 0.0;
  if ([(MPDocument *)self isImageAtPath:?])
  {
    return v5;
  }

  v6 = [(MPDocument *)self propertiesForMediaPath:path];
  v7 = [v6 objectForKey:kMPMetaDataStartTime];
  if (!v7)
  {
    [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
    v5 = v9;
    v10 = [NSNumber numberWithDouble:?];
    [(MPDocument *)self propertiesForMediaPathAndCreateIfNeeded:path withValue:v10 forKey:kMPMetaDataStartTime];
    return v5;
  }

  [v7 doubleValue];
  return result;
}

- (double)stopTimeForPath:(id)path
{
  v5 = 0.0;
  if ([(MPDocument *)self isImageAtPath:?])
  {
    return v5;
  }

  v6 = [(MPDocument *)self propertiesForMediaPath:path];
  v7 = [v6 objectForKey:kMPMetaDataStopTime];
  if (!v7)
  {
    [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
    v5 = v9;
    v10 = [NSNumber numberWithDouble:?];
    [(MPDocument *)self propertiesForMediaPathAndCreateIfNeeded:path withValue:v10 forKey:kMPMetaDataStopTime];
    return v5;
  }

  [v7 doubleValue];
  return result;
}

- (double)durationForPath:(id)path
{
  v5 = 0.0;
  if ([(MPDocument *)self isImageAtPath:?])
  {
    return v5;
  }

  v6 = [(MPDocument *)self propertiesForMediaPath:path];
  v7 = [v6 objectForKey:kMPMetaDataDuration];
  if (!v7)
  {
    [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
    v5 = v9;
    v10 = [NSNumber numberWithDouble:?];
    [(MPDocument *)self propertiesForMediaPathAndCreateIfNeeded:path withValue:v10 forKey:kMPMetaDataDuration];
    return v5;
  }

  [v7 doubleValue];
  return result;
}

- (int64_t)mediaTypeForPath:(id)path
{
  v5 = [(MPDocument *)self propertiesForMediaPath:?];
  v6 = [v5 objectForKey:kMPMetaDataMediaType];
  if (v6 || (-[MPDocument assetKeyDelegate](self, "assetKeyDelegate"), (objc_opt_respondsToSelector() & 1) != 0) && (v8 = -[MPDocument assetKeyDelegate](self, "assetKeyDelegate"), (v6 = [v8 attributeForKey:kMPMetaDataMediaType forAssetKey:path withOptions:0]) != 0))
  {

    return [v6 integerValue];
  }

  else if ([(MPDocument *)self isImageAtPath:path])
  {
    return 2;
  }

  else if ([(MPDocument *)self isMovieAtPath:path])
  {
    return 3;
  }

  else
  {
    return [(MPDocument *)self isAudioAtPath:path];
  }
}

- (id)propertiesForMediaPathAndCreateIfNeeded:(id)needed withValue:(id)value forKey:(id)key
{
  [(NSRecursiveLock *)[(MPDocumentInternal *)self->_internal propertiesLock] lock];
  v9 = [(NSMutableDictionary *)self->_fileProperties objectForKey:needed];
  v10 = v9;
  if (needed && !v9)
  {
    v10 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->_fileProperties setObject:v10 forKey:needed];
  }

  [v10 setObject:value forKey:key];
  [(NSRecursiveLock *)[(MPDocumentInternal *)self->_internal propertiesLock] unlock];
  return v10;
}

- (void)setDocumentLayerGroup:(id)group
{
  if ([(MPDocumentInternal *)self->_internal documentLayerGroup])
  {
    [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] cleanup];
    [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] setContainer:0];
    [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] setPlug:0];
    [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] setParent:0];
    [(MPDocumentInternal *)self->_internal setDocumentLayerGroup:0];
  }

  if (group)
  {
    v5 = [-[NSMutableDictionary allKeys](self->_layerGroups "allKeys")];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(MPDocument *)self removeLayerForKey:*(*(&v10 + 1) + 8 * v9)];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(MPDocumentInternal *)self->_internal setDocumentLayerGroup:group];
    [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] setIsDocumentLayerGroup:1];
    [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] setParent:self];
    [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] setContainer:[(MCPlug *)[(MCMontage *)self->_montage rootPlug] container]];
    [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] setPlug:[(MCMontage *)self->_montage rootPlug]];
  }
}

- (void)setupDocumentLayerGroup
{
  if (![(MPDocumentInternal *)self->_internal documentLayerGroup])
  {
    v3 = [-[NSMutableDictionary allKeys](self->_layerGroups "allKeys")];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(MPDocument *)self removeLayerForKey:*(*(&v8 + 1) + 8 * v7)];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(MPDocumentInternal *)self->_internal setDocumentLayerGroup:objc_alloc_init(MPLayerGroup)];
    [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] setIsDocumentLayerGroup:1];
    [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] setParent:self];
    [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] setContainer:[(MCPlug *)[(MCMontage *)self->_montage rootPlug] container]];
    [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] setPlug:[(MCMontage *)self->_montage rootPlug]];
  }
}

- (void)setupLayerGroups
{
  if ([(MPDocumentInternal *)self->_internal documentLayerGroup])
  {
    [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] cleanup];
    [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] setContainer:0];
    [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] setPlug:0];
    [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] setParent:0];
    [(MPDocumentInternal *)self->_internal setDocumentLayerGroup:0];
    rootPlug = [(MCMontage *)self->_montage rootPlug];

    [(MCPlug *)rootPlug setLoopDuration:10000000.0];
  }
}

- (id)actionableObjectForID:(id)d
{
  if (![(MPDocumentInternal *)self->_internal cachedActionableLayers]|| (v5 = [(NSMutableDictionary *)[(MPDocumentInternal *)self->_internal cachedActionableLayers] objectForKey:d]) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    allValues = [(NSMutableDictionary *)self->_layerGroups allValues];
    v8 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          v12 = [*(*(&v14 + 1) + 8 * v11) actionableObjectForID:d];
          if (v12)
          {
            v5 = v12;
            goto LABEL_13;
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_13:
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)upgradeDocument
{
  [-[MPDocument documentAttributeForKey:](self documentAttributeForKey:{kMPDocumentVersion), "floatValue"}];
  if (v3 < 3.1)
  {
    v4 = v3;
    if ([(MPDocument *)self assetKeyDelegate])
    {
      if (v4 == 1.0)
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        layers = [(MPLayerGroup *)[(MPDocumentInternal *)self->_internal documentLayerGroup] layers];
        v6 = [layers countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v16;
          do
          {
            v9 = 0;
            do
            {
              if (*v16 != v8)
              {
                objc_enumerationMutation(layers);
              }

              v10 = *(*(&v15 + 1) + 8 * v9);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                effectContainers = [v10 effectContainers];
                if ([effectContainers count] == &dword_0 + 1)
                {
                  lastObject = [effectContainers lastObject];
                  if ([lastObject transition])
                  {
                    [lastObject setTransition:0];
                  }
                }
              }

              v9 = v9 + 1;
            }

            while (v7 != v9);
            v7 = [layers countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v7);
        }
      }

      [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
      LODWORD(v13) = *"ffF@";
      v14 = [NSNumber numberWithFloat:v13];
      [(MPDocument *)self setDocumentAttribute:v14 forKey:kMPDocumentVersion];
    }
  }
}

- (void)setMontage:(id)montage
{
  montage = self->_montage;
  if (montage)
  {
  }

  self->_montage = montage;
}

- (id)absoluteVideoPaths
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup absoluteVideoPaths];
}

- (double)volumeForPath:(id)path
{
  if ([(MPDocument *)self isImageAtPath:?])
  {
    return 1.0;
  }

  v5 = [(MPDocument *)self propertiesForMediaPath:path];
  v6 = [v5 objectForKey:kMPMetaDataVolume];
  if (!v6)
  {
    return 1.0;
  }

  [v6 doubleValue];
  return result;
}

- (BOOL)isImageAtPath:(id)path
{
  v5 = [(MPDocument *)self propertiesForMediaPath:?];
  v6 = [v5 objectForKey:kMPMetaDataMediaType];
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
    v8 = [NSNumber numberWithInteger:integerValue];
    [(MPDocument *)self propertiesForMediaPathAndCreateIfNeeded:path withValue:v8 forKey:kMPMetaDataMediaType];
  }

  return integerValue == &dword_0 + 2;
}

- (BOOL)isMovieAtPath:(id)path
{
  v5 = [(MPDocument *)self propertiesForMediaPath:?];
  v6 = [v5 objectForKey:kMPMetaDataMediaType];
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
    v8 = [NSNumber numberWithInteger:integerValue];
    [(MPDocument *)self propertiesForMediaPathAndCreateIfNeeded:path withValue:v8 forKey:kMPMetaDataMediaType];
  }

  return integerValue == &dword_0 + 3;
}

- (BOOL)isAudioAtPath:(id)path
{
  v5 = [(MPDocument *)self propertiesForMediaPath:?];
  v6 = [v5 objectForKey:kMPMetaDataMediaType];
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
    v8 = [NSNumber numberWithInteger:integerValue];
    [(MPDocument *)self propertiesForMediaPathAndCreateIfNeeded:path withValue:v8 forKey:kMPMetaDataMediaType];
  }

  return integerValue == &dword_0 + 1;
}

- (id)regionsOfInterestForPath:(id)path detect:(BOOL)detect
{
  detectCopy = detect;
  if (![(MPDocument *)self propertiesForMediaPath:?])
  {
    if (!detectCopy)
    {
      return 0;
    }

    goto LABEL_17;
  }

  v7 = [(MPDocument *)self propertiesForMediaPath:path];
  v8 = [v7 objectForKey:kMPMetaDataRegionOfInterestRectangles];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v9 = v8;
  [v8 lastObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return v9;
  }

  v10 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v9);
        }

        [v10 addObject:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", *(*(&v20 + 1) + 8 * i), kMPMetaDataRegionOfInterestBounds, 0)}];
      }

      v12 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  [(MPDocument *)self propertiesForMediaPathAndCreateIfNeeded:path withValue:v10 forKey:kMPMetaDataRegionOfInterestRectangles];
  if (!v10)
  {
LABEL_16:
    if (!detectCopy)
    {
      return v10;
    }

LABEL_17:
    v15 = [(MPDocument *)self absolutePathForAssetAtPath:path];
    [(MPDocument *)self assetKeyDelegate];
    if (objc_opt_respondsToSelector())
    {
      v16 = [-[MPDocument assetKeyDelegate](self "assetKeyDelegate")];
    }

    else if ([MPUtilities pathIsRelative:v15])
    {
      v19 = 0;
      v16 = [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
    }

    else
    {
      v16 = [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
    }

    v10 = v16;
    if (v16)
    {
      [(MPDocument *)self propertiesForMediaPathAndCreateIfNeeded:path withValue:v16 forKey:kMPMetaDataRegionOfInterestRectangles];
    }

    else
    {
      v17 = +[NSArray array];
      [(MPDocument *)self propertiesForMediaPathAndCreateIfNeeded:path withValue:v17 forKey:kMPMetaDataRegionOfInterestRectangles];
      return +[NSArray array];
    }
  }

  return v10;
}

- (id)creationDateForPath:(id)path
{
  v5 = [(MPDocument *)self propertiesForMediaPath:?];
  result = [v5 objectForKey:kMPMetaDataCreationDate];
  if (!result)
  {
    v7 = +[MPAssetManager sharedManager];
    v8 = [(MPDocument *)self absolutePathForAssetAtPath:path];

    return [v7 creationDateForAssetAtPath:v8];
  }

  return result;
}

- (id)keywordsForPath:(id)path
{
  v5 = [(MPDocument *)self propertiesForMediaPath:?];
  result = [v5 objectForKey:kMPMetaDataKeywords];
  if (!result)
  {
    v7 = +[MPAssetManager sharedManager];
    v8 = [(MPDocument *)self absolutePathForAssetAtPath:path];

    return [v7 keywordsForAssetAtPath:v8];
  }

  return result;
}

- (id)captionForPath:(id)path
{
  v3 = [(MPDocument *)self propertiesForMediaPath:path];
  v4 = kMPMetaDataCaption;

  return [v3 objectForKey:v4];
}

- (id)latitudeForPath:(id)path
{
  v5 = [(MPDocument *)self propertiesForMediaPath:?];
  result = [v5 objectForKey:kMPMetaDataLatitude];
  if (!result)
  {
    [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];

    return [NSNumber numberWithDouble:?];
  }

  return result;
}

- (id)longitudeForPath:(id)path
{
  v5 = [(MPDocument *)self propertiesForMediaPath:?];
  result = [v5 objectForKey:kMPMetaDataLongitude];
  if (!result)
  {
    [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];

    return [NSNumber numberWithDouble:?];
  }

  return result;
}

- (id)countryForPath:(id)path
{
  v3 = [(MPDocument *)self propertiesForMediaPath:path];
  v4 = kMPMetaDataCountry;

  return [v3 objectForKey:v4];
}

- (id)oceanForPath:(id)path
{
  v3 = [(MPDocument *)self propertiesForMediaPath:path];
  v4 = kMPMetaDataOcean;

  return [v3 objectForKey:v4];
}

- (id)stateForPath:(id)path
{
  v3 = [(MPDocument *)self propertiesForMediaPath:path];
  v4 = kMPMetaDataStateOrProvince;

  return [v3 objectForKey:v4];
}

- (id)cityForPath:(id)path
{
  v3 = [(MPDocument *)self propertiesForMediaPath:path];
  v4 = kMPMetaDataCity;

  return [v3 objectForKey:v4];
}

- (id)placeForPath:(id)path
{
  v3 = [(MPDocument *)self propertiesForMediaPath:path];
  v4 = kMPMetaDataPlace;

  return [v3 objectForKey:v4];
}

- (id)areaForPath:(id)path
{
  v3 = [(MPDocument *)self propertiesForMediaPath:path];
  v4 = kMPMetaDataArea;

  return [v3 objectForKey:v4];
}

- (id)neighborhoodForPath:(id)path
{
  v3 = [(MPDocument *)self propertiesForMediaPath:path];
  v4 = kMPMetaDataNeighborhood;

  return [v3 objectForKey:v4];
}

- (id)definedPlaceNameForPath:(id)path
{
  v3 = [(MPDocument *)self propertiesForMediaPath:path];
  v4 = kMPMetaDataDefinedPlaceName;

  return [v3 objectForKey:v4];
}

- (id)altitudeForPath:(id)path
{
  v5 = [(MPDocument *)self propertiesForMediaPath:?];
  result = [v5 objectForKey:kMPMetaDataAltitude];
  if (!result)
  {
    [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];

    return [NSNumber numberWithDouble:?];
  }

  return result;
}

- (id)tiledMapPathsForAttributes:(id)attributes
{
  [(MPDocument *)self assetKeyDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [-[MPDocument assetKeyDelegate](self "assetKeyDelegate")]) == 0)
  {
    v6 = [attributes objectForKey:kMPAssetMapInset];
    if (v6)
    {
      [v6 CGSizeValue];
      v8 = v7;
      v10 = v9;
      width = CGSizeZero.width;
      height = CGSizeZero.height;
    }

    else
    {
      width = CGSizeZero.width;
      height = CGSizeZero.height;
      v10 = height;
      v8 = CGSizeZero.width;
    }

    v13 = [attributes objectForKey:kMPAssetMapLatLongPoints];
    v14 = [-[MPDocument assetKeyDelegate](self "assetKeyDelegate")];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v24 + 1) + 8 * i) CGPointValue];
          [v14 pointForLatLongCoordinates:?];
          v21 = v19 > 4096.0 - v8 || v19 < v8;
          v22 = v20 < v10;
          if (v20 > 4096.0 - v10)
          {
            v22 = 1;
          }

          v23 = v21 || v22;
          if (v21 || v22)
          {
            goto LABEL_20;
          }
        }

        v16 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      if (v23)
      {
LABEL_20:
        v14 = [-[MPDocument assetKeyDelegate](self "assetKeyDelegate")];
      }
    }

    return [v14 mapGridWithRows:2 columns:2];
  }

  return result;
}

- (CGPoint)latLongPointForMap:(id)map withAttributes:(id)attributes
{
  [objc_msgSend(attributes objectForKey:{kMPAssetOptionMapPoint), "CGPointValue"}];
  if (map && (v8 = v6, v9 = v7, [(MPDocument *)self assetKeyDelegate], (objc_opt_respondsToSelector() & 1) != 0))
  {
    [objc_msgSend(-[MPDocument assetKeyDelegate](self "assetKeyDelegate")];
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)pointForMap:(id)map withAttributes:(id)attributes
{
  [(MPDocument *)self assetKeyDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [objc_msgSend(attributes objectForKey:{kMPAssetOptionMapLatLong), "CGPointValue"}];
    v12 = v11;
    v14 = v13;
    if (map && ([(MPDocument *)self assetKeyDelegate], (objc_opt_respondsToSelector() & 1) != 0))
    {
      v15 = [-[MPDocument assetKeyDelegate](self "assetKeyDelegate")];
    }

    else
    {
      [(MPDocument *)self assetKeyDelegate];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_28;
      }

      v16 = [attributes objectForKey:kMPAssetMapLatLongPoints];
      assetKeyDelegate = [(MPDocument *)self assetKeyDelegate];
      width = CGSizeZero.width;
      height = CGSizeZero.height;
      v20 = [assetKeyDelegate mapTileCenteredAt:v16 size:4096.0 inset:{4096.0, CGSizeZero.width, height}];
      if (!v20)
      {
        goto LABEL_28;
      }

      v21 = v20;
      v22 = [attributes objectForKey:kMPAssetMapInset];
      if (v22)
      {
        [v22 CGSizeValue];
        width = v23;
        height = v24;
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v25 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v35;
        while (2)
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v35 != v27)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v34 + 1) + 8 * i) CGPointValue];
            [v21 pointForLatLongCoordinates:?];
            v31 = v29 > 4096.0 - width || v29 < width;
            v32 = v30 < height;
            if (v30 > 4096.0 - height)
            {
              v32 = 1;
            }

            v33 = v31 || v32;
            if (v31 || v32)
            {
              goto LABEL_25;
            }
          }

          v26 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }

        if (v33)
        {
LABEL_25:
          v21 = [-[MPDocument assetKeyDelegate](self "assetKeyDelegate")];
        }
      }

      v15 = v21;
    }

    [v15 pointForLatLongCoordinates:{v12, v14}];
    goto LABEL_29;
  }

  assetKeyDelegate2 = [(MPDocument *)self assetKeyDelegate];
  v8 = [assetKeyDelegate2 attributeForKey:kMPAssetAttributeMapPoint forAssetKey:map withOptions:attributes];
  if (!v8)
  {
LABEL_28:
    x = CGPointZero.x;
    y = CGPointZero.y;
    goto LABEL_29;
  }

  [v8 CGPointValue];
LABEL_29:
  result.y = y;
  result.x = x;
  return result;
}

- (int64_t)mapLevelForPath:(id)path
{
  [(MPDocument *)self assetKeyDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  assetKeyDelegate = [(MPDocument *)self assetKeyDelegate];
  v6 = [assetKeyDelegate attributeForKey:kMPAssetAttributeMapLevel forAssetKey:path withOptions:0];

  return [v6 integerValue];
}

- (id)flightPlanFrom:(CGPoint)from to:(CGPoint)to
{
  y = to.y;
  x = to.x;
  v6 = from.y;
  v7 = from.x;
  [(MPDocument *)self assetKeyDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  assetKeyDelegate = [(MPDocument *)self assetKeyDelegate];

  return [assetKeyDelegate flightPlanFrom:v7 to:{v6, x, y}];
}

- (void)organizeRandomTransitions
{
  v3 = [(MPDocument *)self documentAttributeForKey:kMPDocumentRandomTransitionList];
  orderedRandomTransitions = [(MPDocumentInternal *)self->_internal orderedRandomTransitions];
  obj = v3;
  if (v3)
  {
    if (!orderedRandomTransitions)
    {
      [(MPDocumentInternal *)self->_internal setOrderedRandomTransitions:+[NSMutableDictionary dictionary]];
    }

    selfCopy = self;
    [(NSMutableDictionary *)[(MPDocumentInternal *)self->_internal orderedRandomTransitions] removeAllObjects];
    v5 = +[NSMutableDictionary dictionary];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v6 = [v3 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v44;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v44 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [*(*(&v43 + 1) + 8 * i) componentsSeparatedByString:@"/"];
          if ([v10 count])
          {
            v11 = [v10 objectAtIndex:0];
          }

          else
          {
            v11 = 0;
          }

          v12 = @"Default";
          if ([v10 count] >= 2)
          {
            v12 = [v10 objectAtIndex:1];
          }

          if (v11)
          {
            v13 = v11;
          }

          else
          {
            v13 = @"Dissolve";
          }

          v14 = [v5 objectForKey:v13];
          if (v14)
          {
            [v14 addObject:v12];
          }

          else
          {
            v15 = [[NSMutableArray alloc] initWithObjects:{v12, 0}];
            [v5 setObject:v15 forKey:v13];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v7);
    }

    v16 = +[NSMutableArray array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v17 = [v5 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v40;
      v31 = *v40;
      v32 = v5;
      do
      {
        v20 = 0;
        obja = v18;
        do
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(v5);
          }

          v21 = *(*(&v39 + 1) + 8 * v20);
          v22 = [v5 objectForKey:v21];
          if ([v22 count] == &dword_0 + 1)
          {
            v23 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%@", v21, [v22 lastObject]);
          }

          else
          {
            v23 = +[NSMutableArray array];
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v24 = [v22 countByEnumeratingWithState:&v35 objects:v47 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = v16;
              v27 = *v36;
              do
              {
                for (j = 0; j != v25; j = j + 1)
                {
                  if (*v36 != v27)
                  {
                    objc_enumerationMutation(v22);
                  }

                  [(NSString *)v23 addObject:[NSString stringWithFormat:@"%@/%@", v21, *(*(&v35 + 1) + 8 * j)]];
                }

                v25 = [v22 countByEnumeratingWithState:&v35 objects:v47 count:16];
              }

              while (v25);
              v16 = v26;
              v19 = v31;
              v5 = v32;
            }

            v18 = obja;
          }

          [v16 addObject:v23];
          v20 = v20 + 1;
        }

        while (v20 != v18);
        v18 = [v5 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v18);
    }

    [(NSMutableDictionary *)[(MPDocumentInternal *)selfCopy->_internal orderedRandomTransitions] setObject:v16 forKey:@"transitionPresetIDs"];
  }

  else if (orderedRandomTransitions)
  {
    internal = self->_internal;

    [(MPDocumentInternal *)internal setOrderedRandomTransitions:0];
  }
}

- (id)organizedRandomTransitions
{
  if (![(MPDocumentInternal *)self->_internal orderedRandomTransitions])
  {
    [(MPDocument *)self organizeRandomTransitions];
  }

  internal = self->_internal;

  return [(MPDocumentInternal *)internal orderedRandomTransitions];
}

- (double)aspectRatio
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];
  v3 = [(MPLayerGroup *)documentLayerGroup authoringOptionForKey:kMPAuthoringAspectRatio];
  if (!v3)
  {
    return 1.77777779;
  }

  [v3 floatValue];
  return v4;
}

- (double)aspectRatioDidChange:(double)change atTime:(double)time
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup aspectRatioDidChange:change atTime:time];
  return result;
}

- (BOOL)detectFacesInBackground
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup detectFacesInBackground];
}

- (BOOL)isLive
{
  v2 = [(MPDocument *)self authoringOptionForKey:kMPAuthoringLive];
  if (v2)
  {

    LOBYTE(v2) = [v2 BOOLValue];
  }

  return v2;
}

- (id)cachedAbsolutePathFromPath:(id)path
{
  [(NSLock *)[(MPDocumentInternal *)self->_internal cachedPathLock] lock];
  v5 = [(NSMutableDictionary *)[(MPDocumentInternal *)self->_internal cachedAbsolutePaths] objectForKey:path];
  [(NSLock *)[(MPDocumentInternal *)self->_internal cachedPathLock] unlock];
  return v5;
}

- (void)setAbsolutePath:(id)path forKey:(id)key
{
  [(NSLock *)[(MPDocumentInternal *)self->_internal cachedPathLock] lock];
  cachedAbsolutePaths = [(MPDocumentInternal *)self->_internal cachedAbsolutePaths];
  if (path)
  {
    -[NSMutableDictionary setObject:forKey:](cachedAbsolutePaths, "setObject:forKey:", [path copy], key);
  }

  else
  {
    [(NSMutableDictionary *)cachedAbsolutePaths removeObjectForKey:key];
  }

  cachedPathLock = [(MPDocumentInternal *)self->_internal cachedPathLock];

  [(NSLock *)cachedPathLock unlock];
}

- (id)cachedAbsoluteStillPathFromPath:(id)path
{
  [(NSLock *)[(MPDocumentInternal *)self->_internal cachedPathLock] lock];
  v5 = [(NSMutableDictionary *)[(MPDocumentInternal *)self->_internal cachedAbsoluteStillPaths] objectForKey:path];
  [(NSLock *)[(MPDocumentInternal *)self->_internal cachedPathLock] unlock];
  return v5;
}

- (void)setAbsoluteStillPath:(id)path forKey:(id)key
{
  [(NSLock *)[(MPDocumentInternal *)self->_internal cachedPathLock] lock];
  cachedAbsoluteStillPaths = [(MPDocumentInternal *)self->_internal cachedAbsoluteStillPaths];
  if (path)
  {
    -[NSMutableDictionary setObject:forKey:](cachedAbsoluteStillPaths, "setObject:forKey:", [path copy], key);
  }

  else
  {
    [(NSMutableDictionary *)cachedAbsoluteStillPaths removeObjectForKey:key];
  }

  cachedPathLock = [(MPDocumentInternal *)self->_internal cachedPathLock];

  [(NSLock *)cachedPathLock unlock];
}

- (void)setTemporarilyCacheAbsolutePaths:(BOOL)paths
{
  pathsCopy = paths;
  if (([-[NSMutableDictionary objectForKey:](self->_documentAttributes objectForKey:{kMPDocumentCacheAbsolutePaths), "BOOLValue"}] & 1) == 0)
  {
    internal = self->_internal;

    [(MPDocumentInternal *)internal setCacheAbsolutePathOverride:pathsCopy];
  }
}

- (void)configureActions
{
  if ([(MPDocumentInternal *)self->_internal isInBatchModify])
  {
    internal = self->_internal;

    [(MPDocumentInternal *)internal setNeedsActionConfigure:1];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    allValues = [(NSMutableDictionary *)self->_layerGroups allValues];
    v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v9 + 1) + 8 * i) configureActions];
        }

        v6 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (int64_t)countOfLayers
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup countOfLayers];
}

- (id)objectInLayersAtIndex:(int64_t)index
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup objectInLayersAtIndex:index];
}

- (id)valueInLayersWithName:(id)name
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup valueInLayersWithName:name];
}

- (void)insertObject:(id)object inLayersAtIndex:(int64_t)index
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup insertObject:object inLayersAtIndex:index];
}

- (void)removeObjectFromLayersAtIndex:(int64_t)index
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup removeObjectFromLayersAtIndex:index];
}

- (void)replaceObjectInLayersAtIndex:(int64_t)index withObject:(id)object
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup replaceObjectInLayersAtIndex:index withObject:object];
}

- (id)styleID
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  return [(MPLayerGroup *)documentLayerGroup styleID];
}

- (void)setStyleID:(id)d
{
  documentLayerGroup = [(MPDocumentInternal *)self->_internal documentLayerGroup];

  [(MPLayerGroup *)documentLayerGroup setStyleID:d];
}

- (id)absolutePathForAssetAtPath:(id)path
{
  if (![(MPDocumentInternal *)self->_internal alwaysLookupAbsolutePaths]&& ![MPUtilities pathIsRelative:path])
  {
    return path;
  }

  if (NSStringHasPrefix(path, "mtg"))
  {
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"media/%@", [path substringFromIndex:6]);
    v6 = [objc_msgSend(-[MPDocument fileURL](self "fileURL")];
    v7 = [v6 stringByAppendingPathComponent:v5];
    v8 = [NSArray arrayWithObjects:@"2048", @"1024", @"768", @"512", @"384", @"256", 0];
    if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
    {
      v9 = 0;
      do
      {
        v7 = [v6 stringByAppendingPathComponent:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"media/%d-%@", objc_msgSend(-[NSArray objectAtIndex:](v8, "objectAtIndex:", v9), "intValue"), objc_msgSend(path, "substringFromIndex:", 6))}];
        if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
        {
          break;
        }

        ++v9;
      }

      while (v9 < [(NSArray *)v8 count]);
    }

    return v7;
  }

  if (-[MPDocumentInternal cacheAbsolutePathOverride](self->_internal, "cacheAbsolutePathOverride") || [-[NSMutableDictionary objectForKey:](self->_documentAttributes objectForKey:{kMPDocumentCacheAbsolutePaths), "BOOLValue"}])
  {
    v7 = [(MPDocument *)self cachedAbsolutePathFromPath:path];
    if (v7)
    {
      return v7;
    }
  }

  if ([(MPDocument *)self assetKeyDelegate])
  {
    v10 = [-[MPDocument assetKeyDelegate](self "assetKeyDelegate")];
    if (v10)
    {
      v7 = v10;
      [(MPDocument *)self setAbsolutePath:v10 forKey:path];
      return v7;
    }
  }

  v12 = +[MPAssetManager sharedManager];

  return [v12 absolutePathFromPath:path];
}

- (id)absolutePathForAssetAtPath:(id)path andSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (![(MPDocumentInternal *)self->_internal alwaysLookupAbsolutePaths]&& ![MPUtilities pathIsRelative:path])
  {
    return path;
  }

  if (NSStringHasPrefix(path, "mtg"))
  {
    v8 = [NSArray arrayWithObjects:@"256", @"384", @"512", @"768", @"1024", @"2048", 0];
    v9 = [objc_msgSend(-[MPDocument fileURL](self "fileURL")];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        integerValue = [*(*(&v25 + 1) + 8 * v13) integerValue];
        if (width < integerValue)
        {
          v15 = [v9 stringByAppendingPathComponent:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"media/%d-%@", integerValue, objc_msgSend(path, "substringFromIndex:", 6))}];
          if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
          {
            break;
          }
        }

        if (v11 == ++v13)
        {
          v11 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v11)
          {
            goto LABEL_6;
          }

          goto LABEL_20;
        }
      }

      if (v15)
      {
        return v15;
      }
    }

LABEL_20:
    v17 = [v9 stringByAppendingPathComponent:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"media/%@", objc_msgSend(path, "substringFromIndex:", 6))}];
    if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
    {
      v22 = 0;
    }

    else
    {
      v18 = 0;
      v19 = -1;
      do
      {
        v20 = v19;
        v17 = [v9 stringByAppendingPathComponent:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"media/%d-%@", objc_msgSend(-[NSArray objectAtIndex:](v8, "objectAtIndex:", -[NSArray count](v8, "count") + v19), "intValue"), objc_msgSend(path, "substringFromIndex:", 6))}];
        if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
        {
          break;
        }

        ++v18;
        v21 = [(NSArray *)v8 count];
        v19 = v20 - 1;
      }

      while (v18 < v21);
      v22 = -v20;
    }

    if (v22 >= [(NSArray *)v8 count])
    {
      return 0;
    }

    else
    {
      return v17;
    }
  }

  v15 = [(MPDocument *)self cachedAbsolutePathFromPath:path];
  if (v15)
  {
    return v15;
  }

  if ([(MPDocument *)self assetKeyDelegate])
  {
    v16 = [-[MPDocument assetKeyDelegate](self "assetKeyDelegate")];
    if (v16)
    {
      v15 = v16;
      [(MPDocument *)self setAbsolutePath:v16 forKey:path];
      return v15;
    }
  }

  v24 = +[MPAssetManager sharedManager];

  return [v24 absolutePathFromPath:path];
}

- (id)absolutePathForStillAssetAtPath:(id)path andSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = [(MPDocument *)self cachedAbsoluteStillPathFromPath:?];
  if ([(MPDocument *)self assetKeyDelegate])
  {
    v8 = [-[MPDocument assetKeyDelegate](self "assetKeyDelegate")];
    if (v8)
    {
      [(MPDocument *)self setAbsoluteStillPath:v8 forKey:path];
    }
  }

  return v8;
}

- (CGImage)CGImageForAssetAtPath:(id)path andSize:(CGSize)size orientation:(char *)orientation thumbnailIfPossible:(BOOL)possible now:(BOOL)now
{
  nowCopy = now;
  possibleCopy = possible;
  height = size.height;
  width = size.width;
  assetKeyDelegate = [(MPDocument *)self assetKeyDelegate];
  if (!assetKeyDelegate)
  {
    return 0;
  }

  v14 = assetKeyDelegate;
  if (objc_opt_respondsToSelector())
  {
    v15 = [v14 retainedCGImageForAssetKey:path andSize:orientation orientation:possibleCopy thumbnailIfPossible:nowCopy now:{width, height}];
LABEL_8:

    return v15;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v14 retainedCGImageForAssetKey:path andSize:orientation orientation:{width, height}];
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v14 retainedCGImageForAssetKey:path andSize:{width, height}];
    goto LABEL_8;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (possibleCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v15 = [v14 retainedThumbnailCGImageForAssetKey:path andSize:{width, height}];
      goto LABEL_8;
    }

    return 0;
  }

  return [v14 cgImageForAssetKey:path andSize:{width, height}];
}

- (CGImage)thumbnailCGImageForAssetAtPath:(id)path andSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(MPDocument *)self assetKeyDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v8 = [-[MPDocument assetKeyDelegate](self "assetKeyDelegate")];

  return v8;
}

- (id)avAssetForAssetAtPath:(id)path
{
  if (![(MPDocument *)self assetKeyDelegate])
  {
    return 0;
  }

  [(MPDocument *)self assetKeyDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  assetKeyDelegate = [(MPDocument *)self assetKeyDelegate];

  return [assetKeyDelegate avAssetForAssetKey:path];
}

- (id)dataForAssetAtPath:(id)path andSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (![(MPDocument *)self assetKeyDelegate])
  {
    return 0;
  }

  [(MPDocument *)self assetKeyDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  assetKeyDelegate = [(MPDocument *)self assetKeyDelegate];

  return [assetKeyDelegate imageDataForAssetKey:path andSize:{width, height}];
}

- (BOOL)isSupportedMovieForAssetAtPath:(id)path
{
  if (NSStringHasPrefix(path, "map"))
  {
    return 0;
  }

  v6 = [(MPDocument *)self propertiesForMediaPath:path];
  v7 = [v6 objectForKey:kMPMetaDataMediaType];
  if (v7)
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
  }

  return integerValue == &dword_0 + 3;
}

- (CGSize)resolutionForAssetAtPath:(id)path
{
  if (NSStringHasPrefix(path, "map"))
  {
    width = 2048.0;
    height = 2048.0;
  }

  else
  {
    v7 = [(MPDocument *)self propertiesForMediaPath:path];
    v8 = [v7 objectForKey:kMPMetaDataResolution];
    if (v8)
    {

      v9 = CGSizeFromString(v8);
      height = v9.height;
      width = v9.width;
    }

    else
    {

      [(MPDocument *)self resolutionForPath:path];
    }
  }

  result.height = height;
  result.width = width;
  return result;
}

- (double)startTimeForAssetAtPath:(id)path
{
  if ([(MPDocumentInternal *)self->_internal assetLogging])
  {
    NSLog(@"startTimeForAssetAtPath: %@", path);
  }

  [(MPDocument *)self startTimeForPath:path];
  return result;
}

- (double)stopTimeForAssetAtPath:(id)path
{
  if ([(MPDocumentInternal *)self->_internal assetLogging])
  {
    NSLog(@"stopTimeForAssetAtPath: %@", path);
  }

  [(MPDocument *)self stopTimeForPath:path];
  return result;
}

@end