@interface MPLayerGroup
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
- (BOOL)detectFacesInBackground;
- (BOOL)nearingEndWithOptions:(id)a3;
- (CGPoint)position;
- (CGSize)size;
- (MPLayerGroup)init;
- (double)aspectRatioDidChange:(double)a3 atTime:(double)a4;
- (double)duration;
- (double)posterTime;
- (double)videoDuration;
- (id)absoluteVideoPaths;
- (id)actionableObjectForID:(id)a3;
- (id)allEffectContainers;
- (id)allEffects;
- (id)allSlides:(BOOL)a3;
- (id)allSongs;
- (id)authoringOptionForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)layerKey;
- (id)mainLayers;
- (id)navigatorKey;
- (id)observer;
- (id)orderedVideoPaths;
- (id)parentDocument;
- (id)valueInLayersWithName:(id)a3;
- (int64_t)lastSlideUsed;
- (int64_t)zIndex;
- (unint64_t)setStyleID:(id)a3;
- (void)addAudioPath:(id)a3;
- (void)addAudioPaths:(id)a3;
- (void)addLayer:(id)a3;
- (void)addLayers:(id)a3;
- (void)addVideoPath:(id)a3;
- (void)addVideoPaths:(id)a3;
- (void)cleanup;
- (void)configureActions;
- (void)copyActions:(id)a3;
- (void)copyAnimationPaths:(id)a3;
- (void)copyAudioPlaylist:(id)a3;
- (void)copyLayerDictionary:(id)a3;
- (void)copyLayers:(id)a3;
- (void)copyStruct:(id)a3;
- (void)dealloc;
- (void)insertLayers:(id)a3 atIndex:(int64_t)a4;
- (void)insertObject:(id)a3 inLayersAtIndex:(int64_t)a4;
- (void)moveLayersFromIndices:(id)a3 toIndex:(int64_t)a4;
- (void)reconfigureLoopingMode;
- (void)reconnectAll;
- (void)removeActionForKey:(id)a3;
- (void)removeAllLayers;
- (void)removeAnimationPathForKey:(id)a3;
- (void)removeLayerForKey:(id)a3;
- (void)removeLayersAtIndices:(id)a3;
- (void)removeObjectFromLayersAtIndex:(int64_t)a3;
- (void)removePath:(id)a3;
- (void)removePaths:(id)a3;
- (void)replaceObjectInLayersAtIndex:(int64_t)a3 withObject:(id)a4;
- (void)resetDuration;
- (void)setAction:(id)a3 forKey:(id)a4;
- (void)setAnimationPath:(id)a3 forKey:(id)a4;
- (void)setAudioPaths:(id)a3;
- (void)setAudioPlaylist:(id)a3;
- (void)setAuthoringOption:(id)a3 forKey:(id)a4;
- (void)setAuthoringOptions:(id)a3;
- (void)setBackgroundCGColor:(CGColor *)a3;
- (void)setBackgroundColorString:(id)a3;
- (void)setContainer:(id)a3;
- (void)setDuration:(double)a3;
- (void)setDurationPadding:(double)a3;
- (void)setInitialState:(id)a3;
- (void)setIsTriggered:(BOOL)a3;
- (void)setLastSlideUsed:(int64_t)a3;
- (void)setLayer:(id)a3 forKey:(id)a4;
- (void)setLoopingMode:(unint64_t)a3;
- (void)setNumberOfLoops:(double)a3;
- (void)setOpacity:(double)a3;
- (void)setParent:(id)a3;
- (void)setPhaseInDuration:(double)a3;
- (void)setPhaseOutDuration:(double)a3;
- (void)setPlug:(id)a3;
- (void)setPosition:(CGPoint)a3;
- (void)setRotationAngle:(double)a3;
- (void)setScale:(double)a3;
- (void)setSize:(CGSize)a3;
- (void)setStartsPaused:(BOOL)a3;
- (void)setTimeIn:(double)a3;
- (void)setVideoPaths:(id)a3;
- (void)setXRotationAngle:(double)a3;
- (void)setYRotationAngle:(double)a3;
- (void)setZIndex:(int64_t)a3;
- (void)setZPosition:(double)a3;
@end

@implementation MPLayerGroup

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  if ([a3 isEqualToString:@"layers"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"numberOfLoops") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"audioPlaylist"))
  {
    return 0;
  }

  else
  {
    return [a3 isEqualToString:@"backgroundColor"] ^ 1;
  }
}

- (MPLayerGroup)init
{
  v5.receiver = self;
  v5.super_class = MPLayerGroup;
  v2 = [(MPLayerGroup *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MPLayerGroupInternal);
    v2->_userProvidedVideoPaths = 0;
    v2->_userProvidedAudioPaths = 0;
    v2->_internal = v3;
    v2->_layers = 0;
    v2->_layerDictionary = 0;
    v2->_animationPaths = 0;
    v2->_actions = 0;
    v2->_authoringOptions = 0;
    [(MPLayerGroupInternal *)v2->_internal setUuid:+[MPUtilities stringWithNewUUID]];
    [(MPLayerGroupInternal *)v2->_internal setLayerKeyDictionary:0];
    [(MPLayerGroupInternal *)v2->_internal setNumberOfLoops:1.0];
    [(MPLayerGroupInternal *)v2->_internal setLoopingMode:0];
    [(MPLayerGroupInternal *)v2->_internal setDurationPadding:0.0];
    [(MPLayerGroupInternal *)v2->_internal setDuration:0.0];
    [(MPLayerGroupInternal *)v2->_internal setTimeIn:0.0];
    [(MPLayerGroupInternal *)v2->_internal setStartsPaused:0];
    [(MPLayerGroupInternal *)v2->_internal setIsTriggered:0];
    [(MPLayerGroupInternal *)v2->_internal setPhaseInDuration:0.0];
    [(MPLayerGroupInternal *)v2->_internal setPhaseOutDuration:0.0];
    [(MPLayerGroupInternal *)v2->_internal setSendLiveNotification:0];
    [(MPLayerGroupInternal *)v2->_internal setLiveLock:objc_alloc_init(NSRecursiveLock)];
    [(NSRecursiveLock *)[(MPLayerGroupInternal *)v2->_internal liveLock] setName:@"MPLayerGroupInternal.liveLock"];
    [(MPLayerGroupInternal *)v2->_internal setAutoAdjustDuration:1];
    [(MPLayerGroupInternal *)v2->_internal setIsDocumentLayerGroup:0];
    [(MPLayerGroupInternal *)v2->_internal setOpacity:1.0];
    [(MPLayerGroupInternal *)v2->_internal setPosition:CGPointZero.x, CGPointZero.y];
    [(MPLayerGroupInternal *)v2->_internal setZPosition:0.0];
    [(MPLayerGroupInternal *)v2->_internal setSize:2.0, 2.0];
    [(MPLayerGroupInternal *)v2->_internal setXRotationAngle:0.0];
    [(MPLayerGroupInternal *)v2->_internal setYRotationAngle:0.0];
    [(MPLayerGroupInternal *)v2->_internal setScale:1.0];
    [(MPLayerGroupInternal *)v2->_internal setZIndex:0];
    v2->_audioPlaylist = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 copyStruct:self->_internal];
  [v4 copyLayers:self->_layers];
  [v4 copyLayerDictionary:self->_layerDictionary];
  [v4 copyAudioPlaylist:self->_audioPlaylist];
  [v4 copyAnimationPaths:self->_animationPaths];
  [v4 copyActions:self->_actions];
  [v4 setVideoPaths:self->_userProvidedVideoPaths];
  [v4 setAudioPaths:self->_userProvidedAudioPaths];
  [v4 setAuthoringOptions:self->_authoringOptions];
  return v4;
}

- (void)dealloc
{
  v3 = [(MPLayerGroupInternal *)self->_internal liveLock];
  [(NSRecursiveLock *)v3 lock];
  [(MPLayerGroup *)self cleanup];

  self->_internal = 0;
  self->_parallelizer = 0;

  self->_plug = 0;
  self->_layers = 0;

  self->_layerDictionary = 0;
  self->_animationPaths = 0;

  self->_actions = 0;
  self->_audioPlaylist = 0;

  self->_authoringOptions = 0;
  self->_userProvidedVideoPaths = 0;

  self->_userProvidedAudioPaths = 0;
  [(NSRecursiveLock *)v3 unlock];

  v4.receiver = self;
  v4.super_class = MPLayerGroup;
  [(MPLayerGroup *)&v4 dealloc];
}

- (id)navigatorKey
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  v4 = [self->_parent layerKeyDictionary];
  v5 = [(MPLayerGroup *)self uuid];

  return [v4 objectForKey:v5];
}

- (unint64_t)setStyleID:(id)a3
{
  v5 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  [(NSRecursiveLock *)[(MPLayerGroupInternal *)self->_internal liveLock] lock];
  authoringOptions = self->_authoringOptions;
  if (!authoringOptions)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    self->_authoringOptions = v7;
    [(NSMutableDictionary *)v7 setObject:@"Classic" forKey:kMPAuthoringStyleID];
    v8 = self->_authoringOptions;
    v9 = [NSNumber numberWithInteger:0];
    [(NSMutableDictionary *)v8 setObject:v9 forKey:kMPAuthoringAudioScalingMode];
    authoringOptions = self->_authoringOptions;
  }

  [(NSMutableDictionary *)authoringOptions setObject:a3 forKey:kMPAuthoringStyleID];
  v10 = [(NSMutableDictionary *)self->_authoringOptions objectForKey:@"wasLive"];
  if ([+[MPStyleManager sharedManager](MPStyleManager "sharedManager")])
  {
    if ([-[NSMutableDictionary objectForKey:](self->_authoringOptions objectForKey:{kMPAuthoringLive), "BOOLValue"}])
    {
      goto LABEL_10;
    }

    v11 = self->_authoringOptions;
    v12 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)v11 setObject:v12 forKey:kMPAuthoringLive];
    v13 = self->_authoringOptions;
    v14 = [NSNumber numberWithBool:0];
    v15 = @"wasLive";
    goto LABEL_9;
  }

  if (v10 && ([v10 BOOLValue] & 1) == 0)
  {
    v13 = self->_authoringOptions;
    v14 = [NSNumber numberWithBool:0];
    v15 = kMPAuthoringLive;
LABEL_9:
    [(NSMutableDictionary *)v13 setObject:v14 forKey:v15];
    [(MPLayerGroupInternal *)self->_internal setSendLiveNotification:1];
  }

LABEL_10:
  v16 = [[NSMutableDictionary alloc] initWithDictionary:self->_authoringOptions];
  v17 = [objc_msgSend(v16 objectForKey:{kMPAuthoringLive), "BOOLValue"}];
  v18 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (!v17)
  {
    goto LABEL_20;
  }

  v19 = v18;
  v20 = [v16 objectForKey:kMPAuthoringLiveMaxSlidePreload];
  if (!v20)
  {
    v21 = (&dword_C + 3);
    if (!v19)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v21 = [v20 integerValue];
  if (v19)
  {
LABEL_13:
    v21 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
    v22 = [NSNumber numberWithInteger:v21];
    [v16 setObject:v22 forKey:kMPAuthoringDynamicMinimumSlidesToAdd];
  }

LABEL_14:
  v23 = [(MPLayerGroup *)self lastSlideUsed];
  v24 = [(NSMutableArray *)self->_userProvidedVideoPaths count];
  if (&v24[-v23] < v21)
  {
    v21 = &v24[-v23];
  }

  v25 = [v16 objectForKeyedSubscript:kMPAuthoringUseTitleEffect];
  if (!v25 || [v25 BOOLValue])
  {
    v26 = [NSNumber numberWithBool:v23 == 0];
    [v16 setObject:v26 forKey:kMPAuthoringUseTitleEffect];
  }

  v27 = [NSValue valueWithRange:v23, v21];
  [v16 setObject:v27 forKey:kMPAuthoringVideoPathIndicies];
  v28 = [NSNumber numberWithBool:1];
  [v16 setObject:v28 forKey:kMPAuthoringLiveReset];
LABEL_20:
  v29 = [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
  [(NSRecursiveLock *)[(MPLayerGroupInternal *)self->_internal liveLock] unlock];

  if (v29 != -1)
  {
    [(MPLayerGroup *)self reconfigureLoopingMode];
    if (v5 != [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")])
    {
      [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:" object:@"documentAntialiasLevelDidChange", [(MPLayerGroup *)self parentDocument]];
    }
  }

  if ([(MPLayerGroupInternal *)self->_internal sendLiveNotification])
  {
    v30 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v30 postNotificationName:kMPAuthoringLiveDidChangeNotification object:[(MPLayerGroup *)self parentDocument] userInfo:0];
    [(MPLayerGroupInternal *)self->_internal setSendLiveNotification:0];
  }

  if (v17)
  {
    v31 = [(MPLayerGroup *)self authoringOptions];
    v32 = [v31 objectForKey:kMPAuthoringLiveMissedImages];
    if (v32)
    {
      v33 = [v32 count];
    }

    else
    {
      v33 = 0;
    }

    v34 = [(MPLayerGroup *)self lastSlideUsed];
    if (v34 >= &v33[[(NSMutableArray *)self->_userProvidedVideoPaths count]] || [(MPLayerGroupInternal *)self->_internal usedAllPaths])
    {
      v35 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v35 postNotificationName:kMPAuthoringLiveUsedAllPathsNotification object:[(MPLayerGroup *)self parentDocument] userInfo:0];
      if ([(MPLayerGroup *)self loopingMode]== &dword_4 + 1 || [(MPLayerGroup *)self loopingMode]== &dword_0 + 2)
      {
        if (v34 >= [(NSMutableArray *)self->_userProvidedVideoPaths count])
        {
          v36 = 0;
        }

        else
        {
          v36 = v34;
        }

        [(MPLayerGroup *)self setLastSlideUsed:v36];
      }
    }

    [(MPLayerGroupInternal *)self->_internal setUsedAllPaths:0];
  }

  return v29;
}

- (void)setAuthoringOption:(id)a3 forKey:(id)a4
{
  authoringOptions = self->_authoringOptions;
  objc_sync_enter(authoringOptions);
  if (!self->_authoringOptions)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    self->_authoringOptions = v8;
    [(NSMutableDictionary *)v8 setObject:@"Classic" forKey:kMPAuthoringStyleID];
    v9 = self->_authoringOptions;
    v10 = [NSNumber numberWithInteger:0];
    [(NSMutableDictionary *)v9 setObject:v10 forKey:kMPAuthoringAudioScalingMode];
  }

  if (a3)
  {
    v11 = +[NSNull null];
    v12 = self->_authoringOptions;
    if (v11 != a3)
    {
      [(NSMutableDictionary *)v12 setObject:a3 forKey:a4];
      goto LABEL_8;
    }
  }

  else
  {
    v12 = self->_authoringOptions;
  }

  [(NSMutableDictionary *)v12 removeObjectForKey:a4];
LABEL_8:

  objc_sync_exit(authoringOptions);
}

- (id)authoringOptionForKey:(id)a3
{
  authoringOptions = self->_authoringOptions;
  objc_sync_enter(authoringOptions);
  v6 = [(NSMutableDictionary *)self->_authoringOptions objectForKey:a3];
  objc_sync_exit(authoringOptions);
  return v6;
}

- (void)setAuthoringOptions:(id)a3
{
  authoringOptions = self->_authoringOptions;
  objc_sync_enter(authoringOptions);
  if (!self->_authoringOptions)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    self->_authoringOptions = v6;
    [(NSMutableDictionary *)v6 setObject:@"Classic" forKey:kMPAuthoringStyleID];
    v7 = self->_authoringOptions;
    v8 = [NSNumber numberWithInteger:0];
    [(NSMutableDictionary *)v7 setObject:v8 forKey:kMPAuthoringAudioScalingMode];
  }

  if ([a3 objectForKey:kMPAuthoringLive])
  {
    if ([-[MPLayerGroup layers](self "layers")])
    {
      v9 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v9 postNotificationName:kMPAuthoringLiveDidChangeNotification object:[(MPLayerGroup *)self parentDocument] userInfo:0];
      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    [(MPLayerGroupInternal *)self->_internal setSendLiveNotification:v10];
  }

  [(NSMutableDictionary *)self->_authoringOptions removeAllObjects];
  [(NSMutableDictionary *)self->_authoringOptions addEntriesFromDictionary:a3];

  objc_sync_exit(authoringOptions);
}

- (void)addLayer:(id)a3
{
  v4 = [NSArray arrayWithObject:a3];
  v5 = [(NSMutableArray *)self->_layers count];

  [(MPLayerGroup *)self insertLayers:v4 atIndex:v5];
}

- (void)addLayers:(id)a3
{
  v5 = [(NSMutableArray *)self->_layers count];

  [(MPLayerGroup *)self insertLayers:a3 atIndex:v5];
}

- (void)insertLayers:(id)a3 atIndex:(int64_t)a4
{
  context = objc_autoreleasePoolPush();
  if (!self->_layers)
  {
    self->_layers = objc_alloc_init(NSMutableArray);
  }

  v7 = [[NSIndexSet alloc] initWithIndexesInRange:{a4, objc_msgSend(a3, "count")}];
  [-[MPLayerGroup observer](self "observer")];
  v19 = v7;
  [(NSMutableArray *)self->_layers insertObjects:a3 atIndexes:v7];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        [v12 setParent:self];
        +[MPUtilities createPlugInContainer:forLayer:key:inDocument:](MPUtilities, "createPlugInContainer:forLayer:key:inDocument:", self->_parallelizer, v12, +[MPUtilities stringWithNewUUID], [(MPLayerGroup *)self parentDocument]);
      }

      v9 = [a3 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  if (self->_parallelizer)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    layers = self->_layers;
    v14 = [(NSMutableArray *)layers countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v22;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(layers);
          }

          [objc_msgSend(*(*(&v21 + 1) + 8 * j) "plug")];
        }

        v15 = [(NSMutableArray *)layers countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v15);
    }
  }

  if ([(MPLayerGroup *)self parentDocument])
  {
    [(MPLayerGroup *)self reconfigureLoopingMode];
  }

  [-[MPLayerGroup observer](self "observer")];

  objc_autoreleasePoolPop(context);
}

- (void)removeAllLayers
{
  [objc_msgSend(-[MPLayerGroup parentDocument](self "parentDocument")];
  v3 = [[NSIndexSet alloc] initWithIndexesInRange:{0, -[NSMutableArray count](self->_layers, "count")}];
  [(MPLayerGroup *)self removeLayersAtIndices:v3];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(NSMutableDictionary *)self->_layerDictionary allKeys];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(MPLayerGroup *)self removeLayerForKey:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [objc_msgSend(-[MPLayerGroup parentDocument](self "parentDocument")];
}

- (void)removeLayersAtIndices:(id)a3
{
  [objc_msgSend(-[MPLayerGroup parentDocument](self "parentDocument")];
  context = objc_autoreleasePoolPush();
  [-[MPLayerGroup observer](self "observer")];
  v5 = [a3 lastIndex];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v5; i != 0x7FFFFFFFFFFFFFFFLL; i = [a3 indexLessThanIndex:i])
    {
      v7 = [(NSMutableArray *)self->_layers objectAtIndex:i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 reconnectAllTransitions];
      }

      if (self->_parallelizer)
      {
        objc_opt_respondsToSelector();
        -[MCContainerParallelizer removePlug:](self->_parallelizer, "removePlug:", [v7 plug]);
        [v7 setPlug:0];
      }

      [v7 setParent:0];
      if (objc_opt_respondsToSelector())
      {
        [v7 setMontage:0];
      }

      if (objc_opt_respondsToSelector())
      {
        [v7 setLayerSerializer:0];
      }

      else if (objc_opt_respondsToSelector())
      {
        [v7 setLayerEffect:0];
      }

      else if (objc_opt_respondsToSelector())
      {
        [v7 setContainer:0];
      }

      else
      {
        NSLog(@"what kind of container is that?!?!?");
      }
    }
  }

  [(NSMutableArray *)self->_layers removeObjectsAtIndexes:a3];
  if (self->_parallelizer)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    layers = self->_layers;
    v9 = [(NSMutableArray *)layers countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v17;
      do
      {
        for (j = 0; j != v10; j = j + 1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(layers);
          }

          v14 = *(*(&v16 + 1) + 8 * j);
          objc_opt_respondsToSelector();
          [objc_msgSend(v14 "plug")];
        }

        v10 = [(NSMutableArray *)layers countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  [(MPLayerGroup *)self resetDuration];
  [-[MPLayerGroup observer](self "observer")];
  objc_autoreleasePoolPop(context);
  [objc_msgSend(-[MPLayerGroup parentDocument](self "parentDocument")];
}

- (void)moveLayersFromIndices:(id)a3 toIndex:(int64_t)a4
{
  [-[MPLayerGroup observer](self "observer")];
  parallelizer = self->_parallelizer;
  if (parallelizer)
  {
    v8 = [NSMutableArray arrayWithArray:[(MCContainerParallelizer *)parallelizer zOrderedPlugs]];
    v9 = [(NSMutableArray *)v8 objectsAtIndexes:a3];
    [(NSMutableArray *)v8 removeObjectsAtIndexes:a3];
    -[NSMutableArray insertObjects:atIndexes:](v8, "insertObjects:atIndexes:", v9, +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", a4, [v9 count]));
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v17;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v16 + 1) + 8 * i) setZIndex:v12++];
        }

        v11 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  v15 = [(NSMutableArray *)self->_layers objectsAtIndexes:a3];
  [(NSMutableArray *)self->_layers removeObjectsAtIndexes:a3];
  -[NSMutableArray insertObjects:atIndexes:](self->_layers, "insertObjects:atIndexes:", v15, +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", a4, [v15 count]));
  [-[MPLayerGroup observer](self "observer")];
}

- (double)videoDuration
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  layers = self->_layers;
  v3 = [(NSMutableArray *)layers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v6 = 0.0;
    while (1)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(layers);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 conformsToProtocol:&OBJC_PROTOCOL___MPNavigatorSupportInternal])
        {
          [v8 duration];
        }

        else
        {
          if ([v8 isAudioLayer])
          {
            continue;
          }

          [v8 timeIn];
          v11 = v10;
          [v8 duration];
          v9 = v11 + v12;
        }

        if (v9 >= v6)
        {
          v6 = v9;
        }
      }

      v4 = [(NSMutableArray *)layers countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (!v4)
      {
        return v6;
      }
    }
  }

  return 0.0;
}

- (double)duration
{
  if ([(MPLayerGroupInternal *)self->_internal autoAdjustDuration])
  {
    audioPlaylist = self->_audioPlaylist;
    if (audioPlaylist)
    {
      [(MPAudioPlaylist *)audioPlaylist duration];
      v5 = v4;
    }

    else
    {
      v5 = 0.0;
    }

    [(MPLayerGroup *)self videoDuration];
    if (result < v5)
    {
      return v5;
    }
  }

  else
  {
    internal = self->_internal;

    [(MPLayerGroupInternal *)internal duration];
  }

  return result;
}

- (void)setDuration:(double)a3
{
  [(MPLayerGroupInternal *)self->_internal duration];
  if (a3 >= 0.0 || v5 != a3)
  {
    [(MPLayerGroupInternal *)self->_internal setDuration:a3];
    if (self->_plug)
    {
      [(MPLayerGroupInternal *)self->_internal phaseInDuration];
      v8 = a3 - v7;
      [(MPLayerGroupInternal *)self->_internal phaseOutDuration];
      v10 = v8 - v9;
      if (v10 < 0.0)
      {
        v10 = 0.0;
      }

      plug = self->_plug;

      [(MCPlug *)plug setLoopDuration:v10];
    }
  }
}

- (void)setTimeIn:(double)a3
{
  [(MPLayerGroupInternal *)self->_internal setTimeIn:?];
  plug = self->_plug;
  if (plug)
  {

    [(MCPlugParallel *)plug setTimeIn:a3];
  }
}

- (void)setIsTriggered:(BOOL)a3
{
  v3 = a3;
  [(MPLayerGroupInternal *)self->_internal setIsTriggered:?];
  plug = self->_plug;
  if (plug)
  {

    [(MCPlugParallel *)plug setIsTriggered:v3];
  }
}

- (void)setStartsPaused:(BOOL)a3
{
  v3 = a3;
  [(MPLayerGroupInternal *)self->_internal setStartsPaused:?];
  plug = self->_plug;
  if (plug)
  {

    [(MCPlug *)plug setStartsPaused:v3];
  }
}

- (void)setAudioPlaylist:(id)a3
{
  [-[MPLayerGroup observer](self "observer")];
  v5 = [(MPLayerGroup *)self parentDocument];
  if (self->_audioPlaylist)
  {
    if ([(MPLayerGroupInternal *)self->_internal backgroundAudioID])
    {
      [(MCContainerParallelizer *)self->_parallelizer removePlugForID:[(MPLayerGroupInternal *)self->_internal backgroundAudioID]];
    }

    if (v5 && [v5 documentLayerGroup] == self)
    {
      [(MPAudioPlaylist *)self->_audioPlaylist fadeOutDuration];
      [v5 setAudioFadeOutDuration:?];
    }

    [(MPAudioPlaylist *)self->_audioPlaylist setPlug:0];
    [(MPAudioPlaylist *)self->_audioPlaylist setParentObject:0];
    [(MPAudioPlaylist *)self->_audioPlaylist setMontage:0];
    [(MPAudioPlaylist *)self->_audioPlaylist setAudioPlaylist:0];

    self->_audioPlaylist = 0;
  }

  if (a3)
  {
    v6 = a3;
    self->_audioPlaylist = v6;
    [(MPAudioPlaylist *)v6 setParentObject:self];
    if (self->_parallelizer)
    {
      if (v5 && [v5 documentLayerGroup] == self)
      {
        if (![(MPLayerGroupInternal *)self->_internal backgroundAudioID])
        {
          [(MPLayerGroupInternal *)self->_internal setBackgroundAudioID:+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"ba%@", +[MPUtilities stringWithNewUUID])];
        }

        v7 = [objc_msgSend(v5 "montage")];
        v8 = [(MCContainerParallelizer *)self->_parallelizer setPlugForContainer:v7 forID:[(MPLayerGroupInternal *)self->_internal backgroundAudioID]];
        [v8 setLoopDuration:0.0];
        [v8 setZIndex:100];
        -[MPAudioPlaylist setMontage:](self->_audioPlaylist, "setMontage:", [v5 montage]);
        -[MPAudioPlaylist setAudioPlaylist:](self->_audioPlaylist, "setAudioPlaylist:", [v7 audioPlaylistCreateIfNeeded]);
        [(MPAudioPlaylist *)self->_audioPlaylist setPlug:v8];
        [(MPAudioPlaylist *)self->_audioPlaylist fadeOutDuration];
        [v5 setAudioFadeOutDuration:?];
      }

      else
      {
        -[MPAudioPlaylist setMontage:](self->_audioPlaylist, "setMontage:", [v5 montage]);
        [(MPAudioPlaylist *)self->_audioPlaylist setAudioPlaylist:[(MCContainer *)self->_parallelizer audioPlaylistCreateIfNeeded]];
        [(MPAudioPlaylist *)self->_audioPlaylist setPlug:self->_plug];
      }
    }
  }

  [(MPLayerGroup *)self reconfigureLoopingMode];
  v9 = [(MPLayerGroup *)self observer];

  [v9 didChangeValueForKey:@"audioPlaylist"];
}

- (void)setLoopingMode:(unint64_t)a3
{
  [-[MPLayerGroup observer](self "observer")];
  [(MPLayerGroupInternal *)self->_internal setLoopingMode:a3];
  [(MPLayerGroup *)self reconfigureLoopingMode];
  v5 = [(MPLayerGroup *)self observer];

  [v5 didChangeValueForKey:@"loopingMode"];
}

- (void)setBackgroundColorString:(id)a3
{
  v4 = [MPUtilities CGColorFromString:a3];

  [(MPLayerGroup *)self setBackgroundCGColor:v4];
}

- (void)setBackgroundCGColor:(CGColor *)a3
{
  v4 = self;
  [-[MPLayerGroup observer](self "observer")];
  if (CGColorGetNumberOfComponents(a3) == 2)
  {
    v5 = +[MPUtilities newColorSpaceForDevice];
    v6 = CGColorGetComponents(a3);
    components[0] = *v6;
    components[1] = components[0];
    components[2] = *v6;
    components[3] = v6[1];
    v7 = CGColorCreate(v5, components);
    parallelizer = v4->_parallelizer;
    if (parallelizer)
    {
      [(MCContainerParallelizer *)parallelizer setBackgroundColor:v7];
    }

    [(MPLayerGroupInternal *)v4->_internal setBackgroundColor:a3];
    CGColorSpaceRelease(v5);
    CGColorRelease(v7);
  }

  else
  {
    [(MPLayerGroupInternal *)v4->_internal setBackgroundColor:a3];
    v9 = v4->_parallelizer;
    if (v9)
    {
      [(MCContainerParallelizer *)v9 setBackgroundColor:a3];
    }
  }

  [-[MPLayerGroup observer](v4 "observer")];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v25 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v25)
  {
    v23 = *v47;
    v24 = v4;
    do
    {
      v10 = 0;
      do
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v10;
        v29 = *(*(&v46 + 1) + 8 * v10);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v27 = [(MPLayerGroup *)v4 layers];
        v30 = [v27 countByEnumeratingWithState:&v42 objects:v52 count:16];
        if (v30)
        {
          v28 = *v43;
          do
          {
            v11 = 0;
            do
            {
              if (*v43 != v28)
              {
                objc_enumerationMutation(v27);
              }

              v31 = v11;
              v12 = *(*(&v42 + 1) + 8 * v11);
              if ([objc_msgSend(v12 "layerID")])
              {
                v40 = 0u;
                v41 = 0u;
                v38 = 0u;
                v39 = 0u;
                v32 = [v12 effectContainers];
                v13 = [v32 countByEnumeratingWithState:&v38 objects:v51 count:16];
                if (v13)
                {
                  v14 = v13;
                  v33 = *v39;
                  do
                  {
                    v15 = 0;
                    do
                    {
                      if (*v39 != v33)
                      {
                        objc_enumerationMutation(v32);
                      }

                      v16 = *(*(&v38 + 1) + 8 * v15);
                      v34 = 0u;
                      v35 = 0u;
                      v36 = 0u;
                      v37 = 0u;
                      v17 = [v16 effects];
                      v18 = [v17 countByEnumeratingWithState:&v34 objects:v50 count:16];
                      if (v18)
                      {
                        v19 = v18;
                        v20 = *v35;
                        do
                        {
                          v21 = 0;
                          do
                          {
                            if (*v35 != v20)
                            {
                              objc_enumerationMutation(v17);
                            }

                            [*(*(&v34 + 1) + 8 * v21) setEffectAttribute:+[MPUtilities stringFromCGColor:](MPUtilities forKey:{"stringFromCGColor:", a3), @"backgroundColorAsString"}];
                            v21 = v21 + 1;
                          }

                          while (v19 != v21);
                          v19 = [v17 countByEnumeratingWithState:&v34 objects:v50 count:16];
                        }

                        while (v19);
                      }

                      v15 = v15 + 1;
                    }

                    while (v15 != v14);
                    v14 = [v32 countByEnumeratingWithState:&v38 objects:v51 count:16];
                  }

                  while (v14);
                }
              }

              v11 = v31 + 1;
            }

            while ((v31 + 1) != v30);
            v30 = [v27 countByEnumeratingWithState:&v42 objects:v52 count:16];
          }

          while (v30);
        }

        v10 = v26 + 1;
        v4 = v24;
      }

      while ((v26 + 1) != v25);
      v25 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v25);
  }
}

- (void)setInitialState:(id)a3
{
  parallelizer = self->_parallelizer;
  if (parallelizer)
  {
    [(MCContainer *)parallelizer setInitialState:a3];
  }

  internal = self->_internal;

  [(MPLayerGroupInternal *)internal setInitialState:a3];
}

- (void)addVideoPath:(id)a3
{
  userProvidedVideoPaths = self->_userProvidedVideoPaths;
  if (!userProvidedVideoPaths)
  {
    userProvidedVideoPaths = objc_alloc_init(NSMutableArray);
    self->_userProvidedVideoPaths = userProvidedVideoPaths;
  }

  [(NSMutableArray *)userProvidedVideoPaths addObject:a3];
}

- (void)addVideoPaths:(id)a3
{
  userProvidedVideoPaths = self->_userProvidedVideoPaths;
  if (!userProvidedVideoPaths)
  {
    userProvidedVideoPaths = objc_alloc_init(NSMutableArray);
    self->_userProvidedVideoPaths = userProvidedVideoPaths;
  }

  [(NSMutableArray *)userProvidedVideoPaths addObjectsFromArray:a3];
}

- (void)addAudioPath:(id)a3
{
  userProvidedAudioPaths = self->_userProvidedAudioPaths;
  if (!userProvidedAudioPaths)
  {
    userProvidedAudioPaths = objc_alloc_init(NSMutableArray);
    self->_userProvidedAudioPaths = userProvidedAudioPaths;
  }

  [(NSMutableArray *)userProvidedAudioPaths addObject:a3];
}

- (void)addAudioPaths:(id)a3
{
  userProvidedAudioPaths = self->_userProvidedAudioPaths;
  if (!userProvidedAudioPaths)
  {
    userProvidedAudioPaths = objc_alloc_init(NSMutableArray);
    self->_userProvidedAudioPaths = userProvidedAudioPaths;
  }

  [(NSMutableArray *)userProvidedAudioPaths addObjectsFromArray:a3];
}

- (void)removePath:(id)a3
{
  p_userProvidedVideoPaths = &self->_userProvidedVideoPaths;
  if (([(NSMutableArray *)self->_userProvidedVideoPaths containsObject:?]& 1) == 0)
  {
    userProvidedAudioPaths = self->_userProvidedAudioPaths;
    p_userProvidedAudioPaths = &self->_userProvidedAudioPaths;
    if (![(NSMutableArray *)userProvidedAudioPaths containsObject:a3])
    {
      return;
    }

    p_userProvidedVideoPaths = p_userProvidedAudioPaths;
  }

  v8 = *p_userProvidedVideoPaths;
  v9 = [*p_userProvidedVideoPaths indexOfObject:a3];

  [v8 removeObjectAtIndex:v9];
}

- (void)removePaths:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(a3);
        }

        [(MPLayerGroup *)self removePath:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)orderedVideoPaths
{
  v2 = [(MPLayerGroup *)self mainLayers];
  v3 = +[NSMutableArray array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v2;
  v23 = [v2 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v23)
  {
    v22 = *v42;
    do
    {
      v4 = 0;
      do
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v4;
        v5 = *(*(&v41 + 1) + 8 * v4);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v25 = [v5 effectContainers];
        v27 = [v25 countByEnumeratingWithState:&v37 objects:v47 count:16];
        if (v27)
        {
          v26 = *v38;
          do
          {
            v6 = 0;
            do
            {
              if (*v38 != v26)
              {
                objc_enumerationMutation(v25);
              }

              v28 = v6;
              v7 = *(*(&v37 + 1) + 8 * v6);
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v8 = [v7 effects];
              v9 = [v8 countByEnumeratingWithState:&v33 objects:v46 count:16];
              if (v9)
              {
                v10 = v9;
                v11 = *v34;
                do
                {
                  for (i = 0; i != v10; i = i + 1)
                  {
                    if (*v34 != v11)
                    {
                      objc_enumerationMutation(v8);
                    }

                    v13 = *(*(&v33 + 1) + 8 * i);
                    v29 = 0u;
                    v30 = 0u;
                    v31 = 0u;
                    v32 = 0u;
                    v14 = [v13 slides];
                    v15 = [v14 countByEnumeratingWithState:&v29 objects:v45 count:16];
                    if (v15)
                    {
                      v16 = v15;
                      v17 = *v30;
                      do
                      {
                        for (j = 0; j != v16; j = j + 1)
                        {
                          if (*v30 != v17)
                          {
                            objc_enumerationMutation(v14);
                          }

                          v19 = *(*(&v29 + 1) + 8 * j);
                          if ([v19 path])
                          {
                            [v3 addObject:{objc_msgSend(v19, "path")}];
                          }
                        }

                        v16 = [v14 countByEnumeratingWithState:&v29 objects:v45 count:16];
                      }

                      while (v16);
                    }
                  }

                  v10 = [v8 countByEnumeratingWithState:&v33 objects:v46 count:16];
                }

                while (v10);
              }

              v6 = v28 + 1;
            }

            while ((v28 + 1) != v27);
            v27 = [v25 countByEnumeratingWithState:&v37 objects:v47 count:16];
          }

          while (v27);
        }

        v4 = v24 + 1;
      }

      while ((v24 + 1) != v23);
      v23 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v23);
  }

  return v3;
}

- (void)setVideoPaths:(id)a3
{
  userProvidedVideoPaths = self->_userProvidedVideoPaths;
  if (userProvidedVideoPaths)
  {
  }

  self->_userProvidedVideoPaths = [a3 mutableCopy];
}

- (void)setAudioPaths:(id)a3
{
  userProvidedAudioPaths = self->_userProvidedAudioPaths;
  if (userProvidedAudioPaths)
  {
  }

  self->_userProvidedAudioPaths = [a3 mutableCopy];
}

- (id)mainLayers
{
  [(NSRecursiveLock *)[(MPLayerGroupInternal *)self->_internal liveLock] lock];
  v3 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v4 = [(MPLayerGroup *)self countOfLayers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(MPLayerGroup *)self layers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4 -= [*(*(&v13 + 1) + 8 * i) isAudioLayer];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (v3 >= v4)
  {
    v10 = v4 - 1;
  }

  else
  {
    v10 = v3;
  }

  if (v10 < 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = [(NSMutableArray *)self->_layers objectAtIndex:?];
  }

  [(NSRecursiveLock *)[(MPLayerGroupInternal *)self->_internal liveLock] unlock];
  if (v11)
  {
    return [NSArray arrayWithObject:v11];
  }

  else
  {
    return +[NSArray array];
  }
}

- (void)setNumberOfLoops:(double)a3
{
  if (a3 > 0.0)
  {
    [-[MPLayerGroup observer](self "observer")];
    [(MPLayerGroupInternal *)self->_internal setNumberOfLoops:a3];
    plug = self->_plug;
    if (plug)
    {
      [(MCPlug *)plug setNumberOfLoops:a3];
      if ([(MPLayerGroupInternal *)self->_internal autoAdjustDuration])
      {
        [(MPLayerGroup *)self resetDuration];
      }

      else
      {
        [(MPLayerGroupInternal *)self->_internal duration];
        v8 = v7;
        [(MPLayerGroupInternal *)self->_internal phaseInDuration];
        v10 = v8 - v9;
        [(MPLayerGroupInternal *)self->_internal phaseOutDuration];
        v12 = v10 - v11;
        if (v12 < 0.0)
        {
          v12 = 0.0;
        }

        [(MCPlug *)self->_plug setLoopDuration:v12];
      }
    }

    v13 = [(MPLayerGroup *)self observer];

    [v13 didChangeValueForKey:@"numberOfLoops"];
  }
}

- (void)setPhaseInDuration:(double)a3
{
  [(MPLayerGroupInternal *)self->_internal phaseInDuration];
  if (v5 != a3)
  {
    [(MPLayerGroupInternal *)self->_internal setPhaseInDuration:a3];
    plug = self->_plug;
    if (plug)
    {
      [(MCPlug *)plug setPhaseInDuration:a3];
      if ([(MPLayerGroupInternal *)self->_internal autoAdjustDuration])
      {

        [(MPLayerGroup *)self resetDuration];
      }

      else
      {
        [(MPLayerGroupInternal *)self->_internal duration];
        v8 = v7;
        [(MPLayerGroupInternal *)self->_internal phaseInDuration];
        v10 = v8 - v9;
        [(MPLayerGroupInternal *)self->_internal phaseOutDuration];
        v12 = v10 - v11;
        if (v12 < 0.0)
        {
          v12 = 0.0;
        }

        v13 = self->_plug;

        [(MCPlug *)v13 setLoopDuration:v12];
      }
    }
  }
}

- (void)setPhaseOutDuration:(double)a3
{
  [(MPLayerGroupInternal *)self->_internal phaseOutDuration];
  if (a3 >= 0.0 && v5 != a3)
  {
    [(MPLayerGroupInternal *)self->_internal setPhaseOutDuration:a3];
    plug = self->_plug;
    if (plug)
    {
      [(MCPlug *)plug setPhaseOutDuration:a3];
      if ([(MPLayerGroupInternal *)self->_internal autoAdjustDuration])
      {

        [(MPLayerGroup *)self resetDuration];
      }

      else
      {
        [(MPLayerGroupInternal *)self->_internal duration];
        v9 = v8;
        [(MPLayerGroupInternal *)self->_internal phaseInDuration];
        v11 = v9 - v10;
        [(MPLayerGroupInternal *)self->_internal phaseOutDuration];
        v13 = v11 - v12;
        if (v13 < 0.0)
        {
          v13 = 0.0;
        }

        v14 = self->_plug;

        [(MCPlug *)v14 setLoopDuration:v13];
      }
    }
  }
}

- (id)layerKey
{
  if (![-[MPLayerGroup parent](self "parent")])
  {
    return 0;
  }

  v3 = [-[MPLayerGroup parent](self "parent")];
  v4 = [(MPLayerGroup *)self uuid];

  return [v3 objectForKey:v4];
}

- (void)setLayer:(id)a3 forKey:(id)a4
{
  v7 = objc_autoreleasePoolPush();
  layerDictionary = self->_layerDictionary;
  if (!layerDictionary)
  {
    self->_layerDictionary = objc_alloc_init(NSMutableDictionary);
    [(MPLayerGroupInternal *)self->_internal setLayerKeyDictionary:objc_alloc_init(NSMutableDictionary)];
    layerDictionary = self->_layerDictionary;
  }

  if ([(NSMutableDictionary *)layerDictionary objectForKey:a4])
  {
    [(MPLayerGroup *)self removeLayerForKey:a4];
  }

  [a3 setParent:self];
  [(NSMutableDictionary *)self->_layerDictionary setObject:a3 forKey:a4];
  -[NSMutableDictionary setObject:forKey:](-[MPLayerGroupInternal layerKeyDictionary](self->_internal, "layerKeyDictionary"), "setObject:forKey:", a4, [a3 uuid]);
  if (self->_plug)
  {
    [MPUtilities createPlugInContainer:self->_parallelizer forLayer:a3 key:a4 inDocument:[(MPLayerGroup *)self parentDocument]];
  }

  if ([(MPLayerGroup *)self parentDocument])
  {
    [(MPLayerGroup *)self reconfigureLoopingMode];
    [-[MPLayerGroup parentDocument](self "parentDocument")];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)removeLayerForKey:(id)a3
{
  [objc_msgSend(-[MPLayerGroup parentDocument](self "parentDocument")];
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMutableDictionary *)self->_layerDictionary objectForKey:a3];
  if (v6)
  {
    v7 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 reconnectAllTransitions];
    }

    parallelizer = self->_parallelizer;
    if (parallelizer)
    {
      -[MCContainerParallelizer removePlug:](parallelizer, "removePlug:", [v7 plug]);
      [v7 setPlug:0];
    }

    [v7 setParent:0];
    if (objc_opt_respondsToSelector())
    {
      [v7 setMontage:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [v7 setLayerSerializer:0];
    }

    else if (objc_opt_respondsToSelector())
    {
      [v7 setLayerEffect:0];
    }

    else if (objc_opt_respondsToSelector())
    {
      [v7 setContainer:0];
    }

    else
    {
      NSLog(@"what kind of container is that?!?!?");
    }

    -[NSMutableDictionary removeObjectForKey:](-[MPLayerGroupInternal layerKeyDictionary](self->_internal, "layerKeyDictionary"), "removeObjectForKey:", [v7 uuid]);
    [(NSMutableDictionary *)self->_layerDictionary removeObjectForKey:a3];
    [(MPLayerGroup *)self resetDuration];
    objc_autoreleasePoolPop(v5);
    v9 = [-[MPLayerGroup parentDocument](self "parentDocument")];

    [v9 unlock];
  }

  else
  {

    objc_autoreleasePoolPop(v5);
  }
}

- (void)setAnimationPath:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v7 = [(MPLayerGroup *)self animationPathForKey:a4];
    if (v7)
    {
      v8 = v7;
      [v7 setParent:0];
      [v8 setAnimationPath:0];
    }

    [a3 setParent:self];
    animationPaths = self->_animationPaths;
    if (!animationPaths)
    {
      animationPaths = objc_alloc_init(NSMutableDictionary);
      self->_animationPaths = animationPaths;
    }

    [(NSMutableDictionary *)animationPaths setObject:a3 forKey:a4];
    plug = self->_plug;
    if (plug)
    {
      [(MCPlug *)plug removeAnimationPathForKey:a4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v12 = off_1A4CB0;
      if ((isKindOfClass & 1) == 0)
      {
        v12 = off_1A4CB8;
      }

      v13 = [(__objc2_class *)*v12 animationPathWithKey:a4];
      [(MCPlug *)self->_plug addAnimationPath:v13];

      [a3 setAnimationPath:v13];
    }
  }

  else
  {

    [(MPLayerGroup *)self removeAnimationPathForKey:a4];
  }
}

- (void)removeAnimationPathForKey:(id)a3
{
  v5 = [(MPLayerGroup *)self animationPathForKey:?];
  plug = self->_plug;
  if (plug)
  {
    [(MCPlug *)plug removeAnimationPathForKey:a3];
    [v5 setAnimationPath:0];
  }

  [v5 setParent:0];
  animationPaths = self->_animationPaths;

  [(NSMutableDictionary *)animationPaths removeObjectForKey:a3];
}

- (void)setOpacity:(double)a3
{
  [(MPLayerGroupInternal *)self->_internal setOpacity:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlugParallel *)plug setOpacity:a3];
    }
  }
}

- (CGPoint)position
{
  [(MPLayerGroupInternal *)self->_internal position];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(MPLayerGroupInternal *)self->_internal setPosition:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlugParallel *)plug setPosition:x, y];
    }
  }
}

- (void)setZPosition:(double)a3
{
  [(MPLayerGroupInternal *)self->_internal setZPosition:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlugParallel *)plug setZPosition:a3];
    }
  }
}

- (void)setRotationAngle:(double)a3
{
  [(MPLayerGroupInternal *)self->_internal setRotationAngle:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlugParallel *)plug setRotationAngle:a3];
    }
  }
}

- (CGSize)size
{
  [(MPLayerGroupInternal *)self->_internal size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(MPLayerGroupInternal *)self->_internal setSize:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlugParallel *)plug setSize:width, height];
    }
  }
}

- (void)setXRotationAngle:(double)a3
{
  [(MPLayerGroupInternal *)self->_internal setXRotationAngle:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlugParallel *)plug setXRotationAngle:a3];
    }
  }
}

- (void)setYRotationAngle:(double)a3
{
  [(MPLayerGroupInternal *)self->_internal setYRotationAngle:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlugParallel *)plug setYRotationAngle:a3];
    }
  }
}

- (void)setScale:(double)a3
{
  [(MPLayerGroupInternal *)self->_internal setScale:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlugParallel *)plug setScale:a3];
    }
  }
}

- (int64_t)zIndex
{
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [(MCPlugParallel *)self->_plug zIndex];
    }
  }

  internal = self->_internal;

  return [(MPLayerGroupInternal *)internal zIndex];
}

- (void)setZIndex:(int64_t)a3
{
  v3 = a3;
  [(MPLayerGroupInternal *)self->_internal setZIndex:?];
  if ([-[MPLayerGroup parent](self "parent")])
  {
    plug = self->_plug;
    if (plug)
    {

      [(MCPlugParallel *)plug setZIndex:v3];
    }
  }
}

- (void)setAction:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v7 = [(MPLayerGroup *)self actionForKey:a4];
    if (v7)
    {
      [v7 setParent:0];
    }

    [a3 setParent:self];
    actions = self->_actions;
    if (!actions)
    {
      actions = objc_alloc_init(NSMutableDictionary);
      self->_actions = actions;
    }

    [(NSMutableDictionary *)actions setObject:a3 forKey:a4];
    plug = self->_plug;
    if (plug)
    {
      v10 = [MPUtilities createMCAction:a3 forPlug:plug withKey:a4];

      [a3 setAction:v10];
    }
  }

  else
  {

    [(MPLayerGroup *)self removeActionForKey:a4];
  }
}

- (void)removeActionForKey:(id)a3
{
  v5 = [(MPLayerGroup *)self actionForKey:?];
  plug = self->_plug;
  if (plug)
  {
    [(MCPlug *)plug removeActionForKey:a3];
  }

  [v5 setParent:0];
  actions = self->_actions;

  [(NSMutableDictionary *)actions removeObjectForKey:a3];
}

- (id)allEffectContainers
{
  v3 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  layers = self->_layers;
  v5 = [(NSMutableArray *)layers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(layers);
        }

        [v3 addObjectsFromArray:{objc_msgSend(*(*(&v10 + 1) + 8 * v8), "effectContainers")}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)layers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)allEffects
{
  v3 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(MPLayerGroup *)self allEffectContainers];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObjectsFromArray:{objc_msgSend(*(*(&v10 + 1) + 8 * v8), "effects")}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)allSlides:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(MPLayerGroup *)self mainLayers];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObjectsFromArray:{objc_msgSend(*(*(&v21 + 1) + 8 * i), "allSlides:", v3)}];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  layerDictionary = self->_layerDictionary;
  v12 = [(NSMutableDictionary *)layerDictionary countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(layerDictionary);
        }

        [v5 addObjectsFromArray:{objc_msgSend(-[NSMutableDictionary objectForKey:](self->_layerDictionary, "objectForKey:", *(*(&v17 + 1) + 8 * j)), "allSlides:", v3)}];
      }

      v13 = [(NSMutableDictionary *)layerDictionary countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  return v5;
}

- (id)allSongs
{
  v3 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  layers = self->_layers;
  v5 = [(NSMutableArray *)layers countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(layers);
        }

        [v3 addObjectsFromArray:{objc_msgSend(*(*(&v19 + 1) + 8 * i), "allSongs")}];
      }

      v6 = [(NSMutableArray *)layers countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  layerDictionary = self->_layerDictionary;
  v10 = [(NSMutableDictionary *)layerDictionary countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(layerDictionary);
        }

        [v3 addObjectsFromArray:{objc_msgSend(-[NSMutableDictionary objectForKey:](self->_layerDictionary, "objectForKey:", *(*(&v15 + 1) + 8 * j)), "allSongs")}];
      }

      v11 = [(NSMutableDictionary *)layerDictionary countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }

  [v3 addObjectsFromArray:{-[MPAudioPlaylist songs](self->_audioPlaylist, "songs")}];
  return v3;
}

- (double)posterTime
{
  [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v4 = v3;
  if (v3 == -1.0)
  {
    v6 = [objc_msgSend(-[MPLayerGroup mainLayers](self "mainLayers")];
    v7 = [(NSMutableArray *)self->_layers count]<= v6 ? [(NSMutableArray *)self->_layers count]- 1 : v6;
    v4 = 1.0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = [(MPLayerGroup *)self objectInLayersAtIndex:?];
      if ([v8 countOfEffectContainers] >= 1)
      {
        v9 = [objc_msgSend(v8 objectInEffectContainersAtIndex:{0), "countOfEffects"}] == 0;
        if ([v8 countOfEffectContainers] > v9)
        {
          v10 = [objc_msgSend(v8 objectInEffectContainersAtIndex:{v9), "objectInEffectsAtIndex:", 0}];
          [v10 phaseInDuration];
          v4 = v11;
          [-[MPLayerGroup parentDocument](self "parentDocument")];
          if (v4 < v12)
          {
            v4 = v12;
          }

          if (v4 == 0.0)
          {
            [v10 mainDuration];
            return v13 * 0.5;
          }
        }
      }
    }
  }

  return v4;
}

- (id)absoluteVideoPaths
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(MPLayerGroup *)self videoPaths];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([MPUtilities pathIsRelative:v9])
        {
          v9 = [-[MPLayerGroup parentDocument](self "parentDocument")];
        }

        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)parentDocument
{
  v2 = [(MPLayerGroup *)self parent];
  objc_opt_class();
  while ((objc_opt_isKindOfClass() & 1) == 0 && v2)
  {
    v2 = [v2 parent];
    objc_opt_class();
  }

  return v2;
}

- (id)observer
{
  if (!-[MPLayerGroupInternal isDocumentLayerGroup](self->_internal, "isDocumentLayerGroup") || ![-[MPLayerGroup parentDocument](self "parentDocument")])
  {
    return self;
  }

  return [(MPLayerGroup *)self parentDocument];
}

- (void)setParent:(id)a3
{
  if (a3 && self->_parent)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"A layer may one have one parent.  Please remove it first.  This is unsupported." userInfo:0]);
  }

  self->_parent = a3;
  if (![(MPLayerGroupInternal *)self->_internal uuid])
  {
    [(MPLayerGroupInternal *)self->_internal setUuid:+[MPUtilities stringWithNewUUID]];
  }

  if (self->_parent && [-[MPLayerGroup parentDocument](self "parentDocument")])
  {

    [(MPLayerGroup *)self cachePaths];
  }
}

- (void)configureActions
{
  if (-[MPLayerGroup parentDocument](self, "parentDocument") && ([-[MPLayerGroup parentDocument](self "parentDocument")] & 1) == 0)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    layers = self->_layers;
    v4 = [(NSMutableArray *)layers countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v27;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(layers);
          }

          [*(*(&v26 + 1) + 8 * i) configureActions];
        }

        v5 = [(NSMutableArray *)layers countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v5);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [(NSMutableDictionary *)self->_layerDictionary allValues];
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (j = 0; j != v10; j = j + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v22 + 1) + 8 * j) configureActions];
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v10);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    actions = self->_actions;
    v14 = [(NSMutableDictionary *)actions countByEnumeratingWithState:&v18 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        for (k = 0; k != v15; k = k + 1)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(actions);
          }

          [-[NSMutableDictionary objectForKey:](self->_actions objectForKey:{*(*(&v18 + 1) + 8 * k)), "configureTarget"}];
        }

        v15 = [(NSMutableDictionary *)actions countByEnumeratingWithState:&v18 objects:v30 count:16];
      }

      while (v15);
    }
  }
}

- (void)setContainer:(id)a3
{
  if (self->_parallelizer)
  {
    if ([(MPLayerGroupInternal *)self->_internal backgroundAudioID])
    {
      [(MCContainerParallelizer *)self->_parallelizer removePlugForID:[(MPLayerGroupInternal *)self->_internal backgroundAudioID]];
    }

    [(MCContainer *)self->_parallelizer specialRelease];
    self->_parallelizer = 0;
  }

  v5 = [a3 specialRetain];
  self->_parallelizer = v5;
  if (v5)
  {
    if ([(MPLayerGroupInternal *)self->_internal backgroundColor])
    {
      [(MCContainerParallelizer *)self->_parallelizer setBackgroundColor:[(MPLayerGroupInternal *)self->_internal backgroundColor]];
    }

    if ([(MPLayerGroupInternal *)self->_internal initialState])
    {
      v6 = [(MPLayerGroupInternal *)self->_internal initialState];
      parallelizer = self->_parallelizer;

      [(MCContainer *)parallelizer setInitialState:v6];
    }
  }

  else
  {
    [(MPAudioPlaylist *)self->_audioPlaylist setAudioPlaylist:0];
    audioPlaylist = self->_audioPlaylist;

    [(MPAudioPlaylist *)audioPlaylist setPlug:0];
  }
}

- (void)setPlug:(id)a3
{
  plug = self->_plug;
  if (plug)
  {

    self->_plug = 0;
  }

  v6 = a3;
  self->_plug = v6;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MCPlugParallel *)self->_plug setSize:2.0, 2.0];
      [(MCPlugParallel *)self->_plug setAudioPriority:2];
      [(MPLayerGroup *)self position];
      [(MCPlugParallel *)self->_plug setPosition:?];
      [(MPLayerGroup *)self size];
      [(MCPlugParallel *)self->_plug setSize:?];
      [(MPLayerGroup *)self zPosition];
      [(MCPlugParallel *)self->_plug setZPosition:?];
      [(MPLayerGroup *)self rotationAngle];
      [(MCPlugParallel *)self->_plug setRotationAngle:?];
      [(MPLayerGroup *)self xRotationAngle];
      [(MCPlugParallel *)self->_plug setXRotationAngle:?];
      [(MPLayerGroup *)self yRotationAngle];
      [(MCPlugParallel *)self->_plug setYRotationAngle:?];
      [(MPLayerGroup *)self scale];
      [(MCPlugParallel *)self->_plug setScale:?];
      [(MPLayerGroup *)self opacity];
      [(MCPlugParallel *)self->_plug setOpacity:?];
      [(MPLayerGroup *)self timeIn];
      [(MCPlugParallel *)self->_plug setTimeIn:?];
      [(MCPlugParallel *)self->_plug setIsTriggered:[(MPLayerGroup *)self isTriggered]];
      [(MCPlug *)self->_plug setStartsPaused:[(MPLayerGroup *)self startsPaused]];
      if ([-[MPLayerGroup parent](self "parent")])
      {
        [(MCPlugParallel *)self->_plug setZIndex:[(MPLayerGroupInternal *)self->_internal zIndex]];
      }
    }

    if (![(MPLayerGroupInternal *)self->_internal autoAdjustDuration])
    {
      [(MPLayerGroupInternal *)self->_internal duration];
      v8 = v7;
      [(MPLayerGroupInternal *)self->_internal phaseInDuration];
      v10 = v8 - v9;
      [(MPLayerGroupInternal *)self->_internal phaseOutDuration];
      v12 = v10 - v11;
      if (v12 < 0.0)
      {
        v12 = 0.0;
      }

      [(MCPlug *)self->_plug setLoopDuration:v12];
      [(MPLayerGroupInternal *)self->_internal numberOfLoops];
      [(MCPlug *)self->_plug setNumberOfLoops:?];
    }

    [(MPLayerGroup *)self phaseInDuration];
    [(MCPlug *)self->_plug setPhaseInDuration:?];
    [(MPLayerGroup *)self phaseOutDuration];
    [(MCPlug *)self->_plug setPhaseOutDuration:?];
    layers = self->_layers;
    if (layers)
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v14 = [(NSMutableArray *)layers countByEnumeratingWithState:&v86 objects:v96 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = 0;
        v17 = *v87;
        do
        {
          v18 = 0;
          v19 = v16;
          do
          {
            if (*v87 != v17)
            {
              objc_enumerationMutation(layers);
            }

            v16 = v19 + 1;
            [+[MPUtilities createPlugInContainer:forLayer:key:inDocument:](MPUtilities createPlugInContainer:self->_parallelizer forLayer:*(*(&v86 + 1) + 8 * v18) key:+[MPUtilities stringWithNewUUID](MPUtilities inDocument:{"stringWithNewUUID"), -[MPLayerGroup parentDocument](self, "parentDocument")), "setZIndex:", v19}];
            v18 = v18 + 1;
            ++v19;
          }

          while (v15 != v18);
          v15 = [(NSMutableArray *)layers countByEnumeratingWithState:&v86 objects:v96 count:16];
        }

        while (v15);
      }
    }

    layerDictionary = self->_layerDictionary;
    if (layerDictionary)
    {
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v21 = [(NSMutableDictionary *)layerDictionary countByEnumeratingWithState:&v82 objects:v95 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v83;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v83 != v23)
            {
              objc_enumerationMutation(layerDictionary);
            }

            [MPUtilities createPlugInContainer:self->_parallelizer forLayer:[(NSMutableDictionary *)self->_layerDictionary objectForKey:*(*(&v82 + 1) + 8 * i)] key:*(*(&v82 + 1) + 8 * i) inDocument:[(MPLayerGroup *)self parentDocument]];
          }

          v22 = [(NSMutableDictionary *)layerDictionary countByEnumeratingWithState:&v82 objects:v95 count:16];
        }

        while (v22);
      }
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    animationPaths = self->_animationPaths;
    v26 = [(NSMutableDictionary *)animationPaths countByEnumeratingWithState:&v78 objects:v94 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v79;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v79 != v28)
          {
            objc_enumerationMutation(animationPaths);
          }

          v30 = *(*(&v78 + 1) + 8 * j);
          v31 = [(NSMutableDictionary *)self->_animationPaths objectForKey:v30];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = off_1A4CB0;
          }

          else
          {
            v32 = off_1A4CB8;
          }

          v33 = [(__objc2_class *)*v32 animationPathWithKey:v30];
          [(MCPlug *)self->_plug addAnimationPath:v33];
          [v31 setAnimationPath:v33];
        }

        v27 = [(NSMutableDictionary *)animationPaths countByEnumeratingWithState:&v78 objects:v94 count:16];
      }

      while (v27);
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    actions = self->_actions;
    v35 = [(NSMutableDictionary *)actions countByEnumeratingWithState:&v74 objects:v93 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v75;
      do
      {
        for (k = 0; k != v36; k = k + 1)
        {
          if (*v75 != v37)
          {
            objc_enumerationMutation(actions);
          }

          v39 = *(*(&v74 + 1) + 8 * k);
          v40 = [(NSMutableDictionary *)self->_actions objectForKey:v39];
          [v40 setAction:{+[MPUtilities createMCAction:forPlug:withKey:](MPUtilities, "createMCAction:forPlug:withKey:", v40, self->_plug, v39)}];
        }

        v36 = [(NSMutableDictionary *)actions countByEnumeratingWithState:&v74 objects:v93 count:16];
      }

      while (v36);
    }

    if (self->_audioPlaylist)
    {
      v41 = [(MPLayerGroup *)self parentDocument];
      if (v41 && [v41 documentLayerGroup] == self)
      {
        if (![(MPLayerGroupInternal *)self->_internal backgroundAudioID])
        {
          [(MPLayerGroupInternal *)self->_internal setBackgroundAudioID:+[MPUtilities stringWithNewUUID]];
        }

        v59 = [objc_msgSend(-[MPLayerGroup parentDocument](self "parentDocument")];
        v60 = [(MCContainerParallelizer *)self->_parallelizer setPlugForContainer:v59 forID:[(MPLayerGroupInternal *)self->_internal backgroundAudioID]];
        [v60 setLoopDuration:0.0];
        [v60 setZIndex:100];
        -[MPAudioPlaylist setMontage:](self->_audioPlaylist, "setMontage:", [-[MPLayerGroup parentDocument](self "parentDocument")]);
        -[MPAudioPlaylist setAudioPlaylist:](self->_audioPlaylist, "setAudioPlaylist:", [v59 audioPlaylistCreateIfNeeded]);
        [(MPAudioPlaylist *)self->_audioPlaylist setPlug:v60];
        v61 = [(MPLayerGroup *)self parentDocument];
        [(MPAudioPlaylist *)self->_audioPlaylist fadeOutDuration];
        [v61 setAudioFadeOutDuration:?];
      }

      else
      {
        -[MPAudioPlaylist setMontage:](self->_audioPlaylist, "setMontage:", [-[MPLayerGroup parentDocument](self "parentDocument")]);
        [(MPAudioPlaylist *)self->_audioPlaylist setAudioPlaylist:[(MCContainer *)self->_parallelizer audioPlaylistCreateIfNeeded]];
        [(MPAudioPlaylist *)self->_audioPlaylist setPlug:self->_plug];
      }

      [(MPLayerGroup *)self reconfigureLoopingMode];
    }

    [(MPLayerGroup *)self resetDuration];
    [(MPLayerGroup *)self configureActions];
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v42 = self->_layers;
    v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v70 objects:v92 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v71;
      do
      {
        for (m = 0; m != v44; m = m + 1)
        {
          if (*v71 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v70 + 1) + 8 * m);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v47 setPlug:0];
            [v47 setLayerSerializer:0];
          }

          else
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            [v47 setPlug:0];
            if (isKindOfClass)
            {
              [v47 setLayerEffect:0];
            }

            else
            {
              [v47 setContainer:0];
            }
          }
        }

        v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v70 objects:v92 count:16];
      }

      while (v44);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v49 = self->_animationPaths;
    v50 = [(NSMutableDictionary *)v49 countByEnumeratingWithState:&v66 objects:v91 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v67;
      do
      {
        for (n = 0; n != v51; n = n + 1)
        {
          if (*v67 != v52)
          {
            objc_enumerationMutation(v49);
          }

          [-[NSMutableDictionary objectForKey:](self->_animationPaths objectForKey:{*(*(&v66 + 1) + 8 * n)), "setAnimationPath:", 0}];
        }

        v51 = [(NSMutableDictionary *)v49 countByEnumeratingWithState:&v66 objects:v91 count:16];
      }

      while (v51);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v54 = self->_actions;
    v55 = [(NSMutableDictionary *)v54 countByEnumeratingWithState:&v62 objects:v90 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v63;
      do
      {
        for (ii = 0; ii != v56; ii = ii + 1)
        {
          if (*v63 != v57)
          {
            objc_enumerationMutation(v54);
          }

          [-[NSMutableDictionary objectForKey:](self->_actions objectForKey:{*(*(&v62 + 1) + 8 * ii)), "setAction:", 0}];
        }

        v56 = [(NSMutableDictionary *)v54 countByEnumeratingWithState:&v62 objects:v90 count:16];
      }

      while (v56);
    }
  }
}

- (void)cleanup
{
  [(NSRecursiveLock *)[(MPLayerGroupInternal *)self->_internal liveLock] lock];
  [(MPLayerGroup *)self removeAllLayers];
  [(NSRecursiveLock *)[(MPLayerGroupInternal *)self->_internal liveLock] unlock];
  [(MPLayerGroup *)self setAudioPlaylist:0];
  v3 = [(NSMutableDictionary *)self->_animationPaths allKeys];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(MPLayerGroup *)self removeAnimationPathForKey:*(*(&v17 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v8 = [(NSMutableDictionary *)self->_actions allKeys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(MPLayerGroup *)self removeActionForKey:*(*(&v13 + 1) + 8 * v12)];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }

  self->_parent = 0;
}

- (void)resetDuration
{
  if ([(MPLayerGroupInternal *)self->_internal autoAdjustDuration])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    layers = self->_layers;
    v4 = [(NSMutableArray *)layers countByEnumeratingWithState:&v35 objects:v39 count:16];
    v5 = 0.0;
    v6 = 0.0;
    if (v4)
    {
      v7 = v4;
      v8 = *v36;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(layers);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          if ([v10 conformsToProtocol:&OBJC_PROTOCOL___MPNavigatorSupportInternal])
          {
            [v10 duration];
            v12 = v11;
            [v10 numberOfLoops];
            v14 = v12 * v13;
          }

          else
          {
            [v10 timeIn];
            v16 = v15;
            [v10 duration];
            v18 = v17;
            [v10 numberOfLoops];
            v14 = v16 + v18 * v19;
          }

          if (v14 >= v6)
          {
            v6 = v14;
          }
        }

        v7 = [(NSMutableArray *)layers countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v7);
    }

    [objc_msgSend(-[MPLayerGroup parentDocument](self "parentDocument")];
    v20 = [(MCContainerParallelizer *)self->_parallelizer plugForID:[(MPLayerGroupInternal *)self->_internal backgroundAudioID]];
    if ([(MPLayerGroup *)self loopingMode]!= &dword_4 && [(MPLayerGroup *)self loopingMode])
    {
      [v20 loopDuration];
      v22 = v21;
      [(MPLayerGroup *)self numberOfLoops];
      v5 = v22 * v23;
    }

    [(MPLayerGroupInternal *)self->_internal phaseInDuration];
    v25 = v24;
    [(MPLayerGroupInternal *)self->_internal phaseOutDuration];
    v27 = v25 + v26;
    v28 = v6 - v27;
    if (v6 - v27 < 0.0)
    {
      v28 = 0.0;
    }

    v29 = v27 + v28;
    if (v29 >= v5)
    {
      v30 = v29;
    }

    else
    {
      v30 = v5;
    }

    [(MPLayerGroupInternal *)self->_internal durationPadding];
    v32 = v31 + v30 - v27;
    [(MCPlug *)self->_plug loopDuration];
    if (v33 != v32 || ([(MPLayerGroupInternal *)self->_internal durationPadding], v34 > 0.00001))
    {
      [-[MPLayerGroup observer](self "observer")];
      [(MCPlug *)self->_plug setLoopDuration:v32];
      [-[MPLayerGroup observer](self "observer")];
    }

    [objc_msgSend(-[MPLayerGroup parentDocument](self "parentDocument")];
  }
}

- (void)setDurationPadding:(double)a3
{
  [(MPLayerGroupInternal *)self->_internal setDurationPadding:a3];
  [(MPLayerGroupInternal *)self->_internal durationPadding];
  if (v4 < 0.0)
  {
    [(MPLayerGroupInternal *)self->_internal setDurationPadding:0.0];
  }

  [(MPLayerGroup *)self resetDuration];
}

- (void)reconnectAll
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  layers = self->_layers;
  v3 = [(NSMutableArray *)layers countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(layers);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        if ([v7 conformsToProtocol:&OBJC_PROTOCOL___MPNavigatorSupportInternal])
        {
          [v7 reconnectAll];
        }

        else
        {
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          v8 = [v7 effectContainers];
          v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v15;
            do
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v15 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v14 + 1) + 8 * j);
                if (([v13 isTransitionConnected] & 1) == 0)
                {
                  [v13 reconnectTransition];
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
            }

            while (v10);
          }
        }
      }

      v4 = [(NSMutableArray *)layers countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }
}

- (void)reconfigureLoopingMode
{
  if (![(MPLayerGroupInternal *)self->_internal autoAdjustDuration])
  {
    return;
  }

  if ([(MPLayerGroup *)self loopingMode]== &dword_4)
  {
    [(MPLayerGroup *)self setNumberOfLoops:1.0];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    layers = self->_layers;
    v4 = [(NSMutableArray *)layers countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v58;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v58 != v6)
          {
            objc_enumerationMutation(layers);
          }

          [*(*(&v57 + 1) + 8 * i) setNumberOfLoops:1.0];
        }

        v5 = [(NSMutableArray *)layers countByEnumeratingWithState:&v57 objects:v65 count:16];
      }

      while (v5);
    }

LABEL_10:
    v8 = [(MCContainerParallelizer *)self->_parallelizer plugForID:[(MPLayerGroupInternal *)self->_internal backgroundAudioID]];
    if (v8)
    {
      v9 = v8;
      [v8 setNumberOfLoops:25000.0];
      audioPlaylist = self->_audioPlaylist;
      if (audioPlaylist)
      {
        [(MPAudioPlaylist *)audioPlaylist duration];
      }

      else
      {
        v11 = 0.0;
      }

      [v9 setLoopDuration:v11];
    }

    return;
  }

  if ([(MPLayerGroup *)self loopingMode]== &dword_0 + 1)
  {
    v12 = [(MCContainerParallelizer *)self->_parallelizer plugForID:[(MPLayerGroupInternal *)self->_internal backgroundAudioID]];
    if (v12)
    {
      v13 = v12;
      [v12 setNumberOfLoops:1.0];
      v14 = self->_audioPlaylist;
      if (v14)
      {
        [(MPAudioPlaylist *)v14 duration];
      }

      else
      {
        v15 = 0.0;
      }

      [v13 setLoopDuration:v15];
    }

    [(MPLayerGroup *)self setNumberOfLoops:25000.0];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v31 = self->_layers;
    v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v53 objects:v64 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v54;
      do
      {
        for (j = 0; j != v33; j = j + 1)
        {
          if (*v54 != v34)
          {
            objc_enumerationMutation(v31);
          }

          [*(*(&v53 + 1) + 8 * j) setNumberOfLoops:1.0];
        }

        v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v53 objects:v64 count:16];
      }

      while (v33);
    }
  }

  else
  {
    if ([(MPLayerGroup *)self loopingMode]== &dword_0 + 2)
    {
      [(MPLayerGroup *)self setNumberOfLoops:1.0];
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v16 = self->_layers;
      v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v49 objects:v63 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v50;
        do
        {
          for (k = 0; k != v18; k = k + 1)
          {
            if (*v50 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v49 + 1) + 8 * k) setNumberOfLoops:25000.0];
          }

          v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v49 objects:v63 count:16];
        }

        while (v18);
      }

      goto LABEL_10;
    }

    v21 = [(MPLayerGroup *)self loopingMode];
    v22 = [(MCContainerParallelizer *)self->_parallelizer plugForID:[(MPLayerGroupInternal *)self->_internal backgroundAudioID]];
    v23 = v22;
    if (v21 == 5)
    {
      if (v22)
      {
        [v22 setNumberOfLoops:25000.0];
        [(MPLayerGroup *)self videoDuration];
        [v23 setLoopDuration:?];
      }

      [(MPLayerGroup *)self setNumberOfLoops:25000.0];
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v24 = self->_layers;
      v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v45 objects:v62 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v46;
        do
        {
          for (m = 0; m != v26; m = m + 1)
          {
            if (*v46 != v27)
            {
              objc_enumerationMutation(v24);
            }

            [*(*(&v45 + 1) + 8 * m) setNumberOfLoops:25000.0];
          }

          v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v45 objects:v62 count:16];
        }

        while (v26);
      }
    }

    else
    {
      if (v22)
      {
        [v22 setNumberOfLoops:1.0];
        v29 = self->_audioPlaylist;
        if (v29)
        {
          [(MPAudioPlaylist *)v29 duration];
        }

        else
        {
          v30 = 0.0;
        }

        [v23 setLoopDuration:v30];
      }

      [(MPLayerGroup *)self setNumberOfLoops:1.0];
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v36 = self->_layers;
      v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v41 objects:v61 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v42;
        do
        {
          for (n = 0; n != v38; n = n + 1)
          {
            if (*v42 != v39)
            {
              objc_enumerationMutation(v36);
            }

            [*(*(&v41 + 1) + 8 * n) setNumberOfLoops:1.0];
          }

          v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v41 objects:v61 count:16];
        }

        while (v38);
      }
    }
  }
}

- (void)copyStruct:(id)a3
{
  [a3 numberOfLoops];
  [(MPLayerGroupInternal *)self->_internal setNumberOfLoops:?];
  -[MPLayerGroupInternal setLoopingMode:](self->_internal, "setLoopingMode:", [a3 loopingMode]);
  [a3 duration];
  [(MPLayerGroupInternal *)self->_internal setDuration:?];
  [a3 timeIn];
  [(MPLayerGroupInternal *)self->_internal setTimeIn:?];
  -[MPLayerGroupInternal setIsTriggered:](self->_internal, "setIsTriggered:", [a3 isTriggered]);
  -[MPLayerGroupInternal setStartsPaused:](self->_internal, "setStartsPaused:", [a3 startsPaused]);
  [a3 phaseInDuration];
  [(MPLayerGroupInternal *)self->_internal setPhaseInDuration:?];
  [a3 phaseOutDuration];
  [(MPLayerGroupInternal *)self->_internal setPhaseOutDuration:?];
  -[MPLayerGroupInternal setBackgroundAudioID:](self->_internal, "setBackgroundAudioID:", [objc_msgSend(a3 "backgroundAudioID")]);
  [a3 position];
  [(MPLayerGroupInternal *)self->_internal setPosition:?];
  [a3 size];
  [(MPLayerGroupInternal *)self->_internal setSize:?];
  [a3 zPosition];
  [(MPLayerGroupInternal *)self->_internal setZPosition:?];
  [a3 rotationAngle];
  [(MPLayerGroupInternal *)self->_internal setRotationAngle:?];
  [a3 xRotationAngle];
  [(MPLayerGroupInternal *)self->_internal setXRotationAngle:?];
  [a3 yRotationAngle];
  [(MPLayerGroupInternal *)self->_internal setYRotationAngle:?];
  [a3 scale];
  [(MPLayerGroupInternal *)self->_internal setScale:?];
  [a3 opacity];
  [(MPLayerGroupInternal *)self->_internal setOpacity:?];
  -[MPLayerGroupInternal setZIndex:](self->_internal, "setZIndex:", [a3 zIndex]);
  -[MPLayerGroupInternal setAutoAdjustDuration:](self->_internal, "setAutoAdjustDuration:", [a3 autoAdjustDuration]);
  [(MPLayerGroupInternal *)self->_internal setUuid:0];
  -[MPLayerGroupInternal setInitialState:](self->_internal, "setInitialState:", [a3 initialState]);
  Copy = CGColorCreateCopy([a3 backgroundColor]);
  [(MPLayerGroupInternal *)self->_internal setBackgroundColor:Copy];

  CGColorRelease(Copy);
}

- (void)copyLayers:(id)a3
{
  v5 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) copy];
        [v5 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    [(MPLayerGroup *)self addLayers:v5];
  }
}

- (void)copyLayerDictionary:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [objc_msgSend(a3 objectForKey:{v9), "copy"}];
        [(MPLayerGroup *)self setLayer:v10 forKey:v9];
      }

      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)copyAudioPlaylist:(id)a3
{
  v4 = [a3 copy];
  [(MPLayerGroup *)self setAudioPlaylist:v4];
}

- (void)copyAnimationPaths:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [objc_msgSend(a3 objectForKey:{v9), "copy"}];
        [(MPLayerGroup *)self setAnimationPath:v10 forKey:v9];
      }

      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)copyActions:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [objc_msgSend(a3 objectForKey:{v9), "copy"}];
        [(MPLayerGroup *)self setAction:v10 forKey:v9];
      }

      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (BOOL)nearingEndWithOptions:(id)a3
{
  [(NSRecursiveLock *)[(MPLayerGroupInternal *)self->_internal liveLock] lock];
  v5 = [a3 objectForKey:@"requestedNumberOfSlides"];
  v6 = [a3 objectForKey:@"container"];
  v7 = [(MPLayerGroup *)self parentDocument];
  if (v5)
  {
    v8 = [MPUtilities effectForMCContainerEffect:v6 inDocument:v7];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      goto LABEL_6;
    }

LABEL_9:
    [(NSRecursiveLock *)[(MPLayerGroupInternal *)self->_internal liveLock] unlock];
    return 0;
  }

  v11 = [MPUtilities layerForContainer:v6 inDocument:v7];
  if (!v11)
  {
    goto LABEL_9;
  }

  v10 = v11;
  v9 = 0;
LABEL_6:
  if (([+[MPStyleManager sharedManager](MPStyleManager "sharedManager")] & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v12 postNotificationName:kMPAuthoringLiveNeedsPathsNotification object:[(MPLayerGroup *)self parentDocument] userInfo:0];
  v13 = [[NSMutableDictionary alloc] initWithDictionary:{-[MPLayerGroup authoringOptions](self, "authoringOptions")}];
  v14 = [(MPLayerGroup *)self lastSlideUsed];
  v15 = [v13 objectForKey:kMPAuthoringLiveMissedImages];
  if (v15)
  {
    v16 = [v15 count];
  }

  else
  {
    v16 = 0;
  }

  if (v14 >= &v16[[(NSMutableArray *)self->_userProvidedVideoPaths count]])
  {
    [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
    [(NSRecursiveLock *)[(MPLayerGroupInternal *)self->_internal liveLock] unlock];

    return 0;
  }

  v18 = [v13 objectForKey:kMPAuthoringLiveMaxSlidePreload];
  if (!v18)
  {
    v19 = (&dword_C + 3);
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v19 = [v18 integerValue];
  if (v5)
  {
LABEL_15:
    v19 = [v5 integerValue];
  }

LABEL_16:
  v20 = [(MPLayerGroup *)self loopingMode]== &dword_4 + 1 || [(MPLayerGroup *)self loopingMode]== &dword_0 + 2;
  v21 = &v16[[(NSMutableArray *)self->_userProvidedVideoPaths count]- v14];
  if (v21 >= v19)
  {
    v21 = v19;
  }

  if (v5 != 0 || v20)
  {
    v22 = v19;
  }

  else
  {
    v22 = v21;
  }

  v23 = [NSNumber numberWithBool:0];
  [v13 setObject:v23 forKey:kMPAuthoringUseTitleEffect];
  v24 = [NSValue valueWithRange:v14, v22];
  [v13 setObject:v24 forKey:kMPAuthoringVideoPathIndicies];
  if (v5)
  {
    [v13 setObject:v9 forKey:kMPAuthoringDynamicEffect];
    v25 = [a3 objectForKey:@"firstSlideIndexStillNeeded"];
    [v13 setObject:v25 forKey:kMPAuthoringDynamicLastIndexUsed];
    [v13 setObject:v5 forKey:kMPAuthoringDynamicMinimumSlidesToAdd];
  }

  v26 = [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
  if (v26 == -1)
  {
    [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
  }

  v27 = [(MPLayerGroup *)self lastSlideUsed];
  v28 = [NSDictionary dictionaryWithObject:[NSNumber numberWithInteger:v27] forKey:@"lastUsedIndex"];
  v29 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v29 postNotificationName:kMPAuthoringLiveDidAddEffectsNotification object:[(MPLayerGroup *)self parentDocument] userInfo:v28];
  v30 = [v13 objectForKey:kMPAuthoringLiveMissedImages];
  if (v30)
  {
    v31 = [v30 count];
  }

  else
  {
    v31 = 0;
  }

  if (v27 >= &v31[[(NSMutableArray *)self->_userProvidedVideoPaths count]] || [(MPLayerGroupInternal *)self->_internal usedAllPaths])
  {
    v32 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v32 postNotificationName:kMPAuthoringLiveUsedAllPathsNotification object:[(MPLayerGroup *)self parentDocument] userInfo:0];
    if (v20)
    {
      if (v27 >= [(NSMutableArray *)self->_userProvidedVideoPaths count])
      {
        v33 = 0;
      }

      else
      {
        v33 = v27;
      }

      [(MPLayerGroup *)self setLastSlideUsed:v33];
    }
  }

  [(MPLayerGroupInternal *)self->_internal setUsedAllPaths:0];

  [(NSRecursiveLock *)[(MPLayerGroupInternal *)self->_internal liveLock] unlock];
  return v26 != -1;
}

- (double)aspectRatioDidChange:(double)a3 atTime:(double)a4
{
  [(NSRecursiveLock *)[(MPLayerGroupInternal *)self->_internal liveLock] lock];
  v7 = [(MPLayerGroup *)self authoringOptionForKey:kMPAuthoringAuthorOnAspectRatioChange];
  if (!v7 || ([v7 BOOLValue] & 1) != 0)
  {
    v73 = self;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    obj = [MPUtilities effectContainersForTime:[(MPLayerGroup *)self parentDocument] inDocument:a4];
    v9 = [obj countByEnumeratingWithState:&v100 objects:v109 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      v77 = *v101;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v101 != v77)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v100 + 1) + 8 * i);
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v15 = [v14 effects];
          v16 = [v15 countByEnumeratingWithState:&v96 objects:v108 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v97;
            do
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v97 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                if ([*(*(&v96 + 1) + 8 * j) countOfSlides] >= 1)
                {
                  v11 = v12 != 0;
                  if (v12 && (v20 = [v12 index], v20 >= objc_msgSend(v14, "index")))
                  {
                    v11 = 1;
                  }

                  else
                  {
                    v12 = v14;
                  }
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v96 objects:v108 count:16];
            }

            while (v17);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v100 objects:v109 count:16];
      }

      while (v10);
      if (v11)
      {
        v21 = -2;
      }

      else
      {
        v21 = -1;
      }
    }

    else
    {
      v12 = 0;
      v21 = -1;
    }

    v24 = +[NSMutableArray array];
    v25 = [v12 parentLayer];
    v26 = [v25 countOfEffectContainers];
    if (v26 <= 3)
    {
      internal = v73->_internal;
      goto LABEL_70;
    }

    v27 = v26;
    v71 = v21;
    obja = v25;
    [v12 startTime];
    v29 = a4 - v28;
    [v12 duration];
    v31 = v30 - v29;
    v32 = [v12 index];
    if (v31 >= 3.0)
    {
      v33 = v32 + 1;
    }

    else
    {
      v33 = v32 + 2;
    }

    v70 = [v12 index];
    v78 = [NSIndexSet indexSetWithIndexesInRange:v33, v27 - v33];
    v68 = v33;
    if (v27 > v33)
    {
      v35 = [objc_msgSend(obja "effectContainers")];
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v36 = [v35 countByEnumeratingWithState:&v92 objects:v107 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v93;
        do
        {
          for (k = 0; k != v37; k = k + 1)
          {
            if (*v93 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v92 + 1) + 8 * k);
            v88 = 0u;
            v89 = 0u;
            v90 = 0u;
            v91 = 0u;
            v41 = [v40 effects];
            v42 = [v41 countByEnumeratingWithState:&v88 objects:v106 count:16];
            if (v42)
            {
              v43 = v42;
              v44 = *v89;
              do
              {
                for (m = 0; m != v43; m = m + 1)
                {
                  if (*v89 != v44)
                  {
                    objc_enumerationMutation(v41);
                  }

                  [v24 addObjectsFromArray:{objc_msgSend(*(*(&v88 + 1) + 8 * m), "videoPaths")}];
                }

                v43 = [v41 countByEnumeratingWithState:&v88 objects:v106 count:16];
              }

              while (v43);
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v92 objects:v107 count:16];
        }

        while (v37);
      }
    }

    *&v34 = a3;
    v46 = [NSNumber numberWithFloat:v34, v68];
    v47 = v73;
    [(MPLayerGroup *)v73 setAuthoringOption:v46 forKey:kMPAuthoringAspectRatio];
    v48 = [-[MPLayerGroup authoringOptions](v73 "authoringOptions")];
    v49 = [NSNumber numberWithInteger:1];
    [v48 setObject:v49 forKey:kMPAuthoringReorderMode];
    [v48 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"skipEmptyContainerCheck"}];
    [v48 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"keepTransitions"}];
    [v48 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"fastInsert"}];
    [v48 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"isChangingAspectRatio"}];
    [v48 removeObjectForKey:kMPAuthoringIntroEffectID];
    if ([v24 count])
    {
      [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
      [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
    }

    v50 = &v70[v71];
    v51 = [(MPLayerGroup *)v73 authoringOptionForKey:kMPAuthoringAuthorOldEffectsOnAspectRatioChange];
    if (v51)
    {
      v52 = [v51 BOOLValue] ^ 1;
      if ((v50 & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      LOBYTE(v52) = 0;
      if ((v50 & 0x8000000000000000) != 0)
      {
LABEL_69:
        [v12 startTime];
        a4 = v29 + v66;

        internal = v47->_internal;
        goto LABEL_70;
      }
    }

    if ((v52 & 1) == 0)
    {
      v79 = v48;
      v72 = [objc_msgSend(objc_msgSend(obja "effectContainers")] == 0;
      v53 = [NSIndexSet indexSetWithIndexesInRange:?];
      v54 = [obja effectContainers];
      objb = v53;
      v55 = [v54 objectsAtIndexes:v53];
      [v24 removeAllObjects];
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v56 = [v55 countByEnumeratingWithState:&v84 objects:v105 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v85;
        do
        {
          for (n = 0; n != v57; n = n + 1)
          {
            if (*v85 != v58)
            {
              objc_enumerationMutation(v55);
            }

            v60 = *(*(&v84 + 1) + 8 * n);
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            v83 = 0u;
            v61 = [v60 effects];
            v62 = [v61 countByEnumeratingWithState:&v80 objects:v104 count:16];
            if (v62)
            {
              v63 = v62;
              v64 = *v81;
              do
              {
                for (ii = 0; ii != v63; ii = ii + 1)
                {
                  if (*v81 != v64)
                  {
                    objc_enumerationMutation(v61);
                  }

                  [v24 addObjectsFromArray:{objc_msgSend(*(*(&v80 + 1) + 8 * ii), "videoPaths")}];
                }

                v63 = [v61 countByEnumeratingWithState:&v80 objects:v104 count:16];
              }

              while (v63);
            }
          }

          v57 = [v55 countByEnumeratingWithState:&v84 objects:v105 count:16];
        }

        while (v57);
      }

      v47 = v73;
      v48 = v79;
      [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
      [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
    }

    goto LABEL_69;
  }

  *&v8 = a3;
  v22 = [NSNumber numberWithFloat:v8];
  [(MPLayerGroup *)self setAuthoringOption:v22 forKey:kMPAuthoringAspectRatio];
  [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
  internal = self->_internal;
LABEL_70:
  [(NSRecursiveLock *)[(MPLayerGroupInternal *)internal liveLock] unlock];
  return a4;
}

- (void)setLastSlideUsed:(int64_t)a3
{
  [(NSRecursiveLock *)[(MPLayerGroupInternal *)self->_internal liveLock] lock];
  v5 = [[NSMutableDictionary alloc] initWithDictionary:{-[MPLayerGroup authoringOptions](self, "authoringOptions")}];
  v6 = [NSNumber numberWithInteger:a3];
  [v5 setObject:v6 forKey:kMPAuthoringLiveSlideIndex];
  [(MPLayerGroup *)self setAuthoringOptions:v5];

  v7 = [(MPLayerGroupInternal *)self->_internal liveLock];

  [(NSRecursiveLock *)v7 unlock];
}

- (int64_t)lastSlideUsed
{
  v2 = [(MPLayerGroup *)self authoringOptions];
  result = [v2 objectForKey:kMPAuthoringLiveSlideIndex];
  if (result)
  {

    return [result integerValue];
  }

  return result;
}

- (id)actionableObjectForID:(id)a3
{
  if (self->_layerDictionary)
  {
    layers = [(NSMutableDictionary *)self->_layerDictionary allValues];
  }

  else
  {
    layers = self->_layers;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [(NSMutableArray *)layers countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v36;
  v8 = &off_1BB000;
LABEL_6:
  v9 = 0;
  while (1)
  {
    if (*v36 != v7)
    {
      objc_enumerationMutation(layers);
    }

    v10 = *(*(&v35 + 1) + 8 * v9);
    if ([objc_msgSend(v10 "uuid")])
    {
      return v10;
    }

    if ([v10 conformsToProtocol:v8[119]])
    {
      v11 = [v10 actionableObjectForID:a3];
      if (v11)
      {
        return v11;
      }
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v12 = [v10 effectContainers];
      v13 = [v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v32;
        v23 = v7;
        v24 = layers;
        v25 = *v32;
        v26 = v12;
LABEL_15:
        v16 = 0;
        while (1)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v10 = *(*(&v31 + 1) + 8 * v16);
          if ([objc_msgSend(v10 uuid])
          {
            return v10;
          }

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v17 = [v10 effects];
          v18 = [v17 countByEnumeratingWithState:&v27 objects:v39 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v28;
LABEL_21:
            v21 = 0;
            while (1)
            {
              if (*v28 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v10 = *(*(&v27 + 1) + 8 * v21);
              if ([objc_msgSend(v10 "uuid")])
              {
                return v10;
              }

              if (v19 == ++v21)
              {
                v19 = [v17 countByEnumeratingWithState:&v27 objects:v39 count:16];
                if (v19)
                {
                  goto LABEL_21;
                }

                break;
              }
            }
          }

          v16 = v16 + 1;
          v15 = v25;
          v12 = v26;
          if (v16 == v14)
          {
            v14 = [v26 countByEnumeratingWithState:&v31 objects:v40 count:16];
            v7 = v23;
            layers = v24;
            v8 = &off_1BB000;
            if (v14)
            {
              goto LABEL_15;
            }

            break;
          }
        }
      }
    }

    if (++v9 == v6)
    {
      v6 = [(NSMutableArray *)layers countByEnumeratingWithState:&v35 objects:v41 count:16];
      v10 = 0;
      if (v6)
      {
        goto LABEL_6;
      }

      return v10;
    }
  }
}

- (BOOL)detectFacesInBackground
{
  v2 = [(MPLayerGroup *)self authoringOptionForKey:kMPAuthoringDetectFacesInBackground];
  if (v2)
  {

    LOBYTE(v2) = [v2 BOOLValue];
  }

  return v2;
}

- (id)valueInLayersWithName:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  layers = self->_layers;
  v5 = [(NSMutableArray *)layers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(layers);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "title")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)layers countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)insertObject:(id)a3 inLayersAtIndex:(int64_t)a4
{
  v6 = [NSArray arrayWithObject:a3];

  [(MPLayerGroup *)self insertLayers:v6 atIndex:a4];
}

- (void)removeObjectFromLayersAtIndex:(int64_t)a3
{
  v4 = [NSIndexSet indexSetWithIndex:a3];

  [(MPLayerGroup *)self removeLayersAtIndices:v4];
}

- (void)replaceObjectInLayersAtIndex:(int64_t)a3 withObject:(id)a4
{
  [(MPLayerGroup *)self removeLayersAtIndices:[NSIndexSet indexSetWithIndex:?]];
  v7 = [NSArray arrayWithObject:a4];

  [(MPLayerGroup *)self insertLayers:v7 atIndex:a3];
}

@end