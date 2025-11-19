@interface MPLayer
+ (id)effectLayer;
+ (id)layer;
+ (id)sequentialLayer;
- (CGPoint)position;
- (CGSize)size;
- (MPLayer)init;
- (id)allSlides:(BOOL)a3;
- (id)allSongs;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)fullDebugLog;
- (id)layerKey;
- (id)parentDocument;
- (id)scriptingAnimations;
- (int64_t)zIndex;
- (void)addEffectContainer:(id)a3;
- (void)addEffectContainers:(id)a3;
- (void)addFilter:(id)a3;
- (void)addFilters:(id)a3;
- (void)cleanup;
- (void)configureActions;
- (void)copyActions:(id)a3;
- (void)copyAnimationPaths:(id)a3;
- (void)copyAudioPlaylist:(id)a3;
- (void)copyEffectContainers:(id)a3;
- (void)copyFilters:(id)a3;
- (void)copyStruct:(id)a3;
- (void)dealloc;
- (void)insertFilters:(id)a3 atIndex:(int64_t)a4;
- (void)insertObject:(id)a3 inEffectContainersAtIndex:(int64_t)a4;
- (void)insertObject:(id)a3 inFiltersAtIndex:(int64_t)a4;
- (void)moveFiltersFromIndices:(id)a3 toIndex:(int64_t)a4;
- (void)reconnectAllTransitions;
- (void)reconnectTransitionForEffectContainerAtIndex:(int64_t)a3;
- (void)removeActionForKey:(id)a3;
- (void)removeAllEffectContainers;
- (void)removeAllFilters;
- (void)removeAnimationPathForKey:(id)a3;
- (void)removeFiltersAtIndices:(id)a3;
- (void)removeObjectFromEffectContainersAtIndex:(int64_t)a3;
- (void)removeObjectFromFiltersAtIndex:(int64_t)a3;
- (void)replaceObjectInEffectContainersAtIndex:(int64_t)a3 withObject:(id)a4;
- (void)replaceObjectInFiltersAtIndex:(int64_t)a3 withObject:(id)a4;
- (void)resetStartTimes;
- (void)setAction:(id)a3 forKey:(id)a4;
- (void)setAnimationPath:(id)a3 forKey:(id)a4;
- (void)setAudioPriority:(int64_t)a3;
- (void)setDuration:(double)a3;
- (void)setHeight:(double)a3;
- (void)setIsAudioLayer:(BOOL)a3;
- (void)setIsTriggered:(BOOL)a3;
- (void)setMontage:(id)a3;
- (void)setNumberOfLoops:(double)a3;
- (void)setOpacity:(double)a3;
- (void)setParent:(id)a3;
- (void)setPhaseInDuration:(double)a3;
- (void)setPhaseOutDuration:(double)a3;
- (void)setPlug:(id)a3;
- (void)setPosition:(CGPoint)a3;
- (void)setRotationAngle:(double)a3;
- (void)setScale:(double)a3;
- (void)setScriptingAnimations:(id)a3;
- (void)setSize:(CGSize)a3;
- (void)setSkipTimeCalculations:(BOOL)a3;
- (void)setStartsPaused:(BOOL)a3;
- (void)setTimeIn:(double)a3;
- (void)setWidth:(double)a3;
- (void)setXPosition:(double)a3;
- (void)setXRotationAngle:(double)a3;
- (void)setYPosition:(double)a3;
- (void)setYRotationAngle:(double)a3;
- (void)setZIndex:(int64_t)a3;
- (void)setZPosition:(double)a3;
- (void)updateDurationPadding:(double)a3;
- (void)updateMainDuration;
@end

@implementation MPLayer

+ (id)layer
{
  v2 = objc_alloc_init(MPLayerSerializer);

  return v2;
}

+ (id)sequentialLayer
{
  v2 = objc_alloc_init(MPLayerSerializer);

  return v2;
}

+ (id)effectLayer
{
  v2 = objc_alloc_init(MPLayerEffect);

  return v2;
}

- (MPLayer)init
{
  v4.receiver = self;
  v4.super_class = MPLayer;
  v2 = [(MPLayer *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(MPLayerInternal);
    v2->_effectContainers = 0;
    v2->_filters = 0;
    v2->_attributes = objc_alloc_init(NSMutableDictionary);
    v2->_skipTimeCalculations = 0;
    v2->_actions = 0;
    v2->_audioPlaylist = 0;
    v2->_animationPaths = 0;
    [(MPLayerInternal *)v2->_internal setTitle:0];
    [(MPLayerInternal *)v2->_internal setNumberOfLoops:1.0];
    [(MPLayerInternal *)v2->_internal setOpacity:1.0];
    [(MPLayerInternal *)v2->_internal setPosition:CGPointZero.x, CGPointZero.y];
    [(MPLayerInternal *)v2->_internal setZPosition:0.0];
    [(MPLayerInternal *)v2->_internal setSize:2.0, 2.0];
    [(MPLayerInternal *)v2->_internal setXRotationAngle:0.0];
    [(MPLayerInternal *)v2->_internal setYRotationAngle:0.0];
    [(MPLayerInternal *)v2->_internal setScale:1.0];
    [(MPLayerInternal *)v2->_internal setTimeIn:0.0];
    [(MPLayerInternal *)v2->_internal setStartsPaused:0];
    [(MPLayerInternal *)v2->_internal setIsTriggered:0];
    [(MPLayerInternal *)v2->_internal setDuration:0.0];
    [(MPLayerInternal *)v2->_internal setPhaseInDuration:0.0];
    [(MPLayerInternal *)v2->_internal setPhaseOutDuration:0.0];
    [(MPLayerInternal *)v2->_internal setIsAudioLayer:0];
    [(MPLayerInternal *)v2->_internal setAudioPriority:0];
    [(MPLayerInternal *)v2->_internal setDurationPadding:0.0];
    [(MPLayerInternal *)v2->_internal setLayerID:0];
    [(MPLayerInternal *)v2->_internal setZIndex:0];
    [(MPLayerInternal *)v2->_internal setContainerLock:objc_alloc_init(NSLock)];
    [(NSLock *)[(MPLayerInternal *)v2->_internal containerLock] setName:@"MPLayerInternal.containerLock"];
    [(MPLayerInternal *)v2->_internal setUuid:+[MPUtilities stringWithNewUUID]];
    [(MPLayerInternal *)v2->_internal setCleaningUp:0];
  }

  return v2;
}

- (id)description
{
  v3 = [[+[NSString stringWithFormat:](NSString stringByAppendingFormat:@"============================= Layer %d Description =============================\n" stringByAppendingFormat:"stringByAppendingFormat:", @"\t        Effect Container Count: %d\n", [(NSMutableArray *)self->_effectContainers count]], "stringByAppendingFormat:", @"\t                  Filter Count: %d\n", [(NSMutableArray *)self->_filters count]];
  [(MPLayer *)self duration];
  v5 = [(NSString *)v3 stringByAppendingFormat:@"\t                      Duration: %f\n", v4];
  if (self->_plug)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  return [(NSString *)v5 stringByAppendingFormat:@"\t                Has Layer Plug: %@\n", v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 copyStruct:self->_internal];
  [v4 copyEffectContainers:self->_effectContainers];
  [v4 copyFilters:self->_filters];
  [v4 copyAnimationPaths:self->_animationPaths];
  [v4 copyAudioPlaylist:self->_audioPlaylist];
  [v4 copyActions:self->_actions];
  return v4;
}

- (void)dealloc
{
  montage = self->_montage;
  if (montage)
  {
  }

  self->_montage = 0;

  self->_internal = 0;
  self->_audioPlaylist = 0;

  self->_effectContainers = 0;
  self->_filters = 0;

  self->_attributes = 0;
  self->_animationPaths = 0;

  self->_actions = 0;
  v4.receiver = self;
  v4.super_class = MPLayer;
  [(MPLayer *)&v4 dealloc];
}

- (void)addEffectContainer:(id)a3
{
  v4 = [[NSArray alloc] initWithObjects:{a3, 0}];
  [(MPLayer *)self insertEffectContainers:v4 atIndex:[(NSMutableArray *)self->_effectContainers count]];
}

- (void)addEffectContainers:(id)a3
{
  v5 = [(NSMutableArray *)self->_effectContainers count];

  [(MPLayer *)self insertEffectContainers:a3 atIndex:v5];
}

- (void)removeAllEffectContainers
{
  if ([(NSMutableArray *)self->_effectContainers count])
  {
    v3 = [[NSIndexSet alloc] initWithIndexesInRange:{0, -[NSMutableArray count](self->_effectContainers, "count")}];
    [(MPLayer *)self removeEffectContainersAtIndices:v3];
  }
}

- (void)addFilter:(id)a3
{
  v4 = [NSArray arrayWithObject:a3];
  v5 = [(NSMutableArray *)self->_filters count];

  [(MPLayer *)self insertFilters:v4 atIndex:v5];
}

- (void)addFilters:(id)a3
{
  v5 = [(NSMutableArray *)self->_filters count];

  [(MPLayer *)self insertFilters:a3 atIndex:v5];
}

- (void)insertFilters:(id)a3 atIndex:(int64_t)a4
{
  v4 = a4;
  v7 = [[NSIndexSet alloc] initWithIndexesInRange:{a4, objc_msgSend(a3, "count")}];
  [(MPLayer *)self willChange:2 valuesAtIndexes:v7 forKey:@"filters"];
  filters = self->_filters;
  if (!filters)
  {
    filters = objc_alloc_init(NSMutableArray);
    self->_filters = filters;
  }

  [(NSMutableArray *)filters insertObjects:a3 atIndexes:v7];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(a3);
        }

        [*(*(&v22 + 1) + 8 * v12) setParent:self];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [a3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  if (self->_plug)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = [a3 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        v17 = v4;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(a3);
          }

          v4 = v17 + 1;
          [*(*(&v18 + 1) + 8 * v16) setFilter:{-[MCPlugParallel insertFilterWithFilterID:atIndex:](self->_plug, "insertFilterWithFilterID:atIndex:", objc_msgSend(*(*(&v18 + 1) + 8 * v16), "filterID"), v17)}];
          v16 = v16 + 1;
          ++v17;
        }

        while (v14 != v16);
        v14 = [a3 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }
  }

  [(MPLayer *)self didChange:2 valuesAtIndexes:v7 forKey:@"filters"];
}

- (void)removeFiltersAtIndices:(id)a3
{
  if ([(NSMutableArray *)self->_filters count])
  {
    [(MPLayer *)self willChange:3 valuesAtIndexes:a3 forKey:@"filters"];
    v5 = [a3 lastIndex];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v5; i != 0x7FFFFFFFFFFFFFFFLL; i = [a3 indexLessThanIndex:i])
      {
        v7 = [(NSMutableArray *)self->_filters objectAtIndex:i];
        [v7 setParent:0];
        [v7 setFilter:0];
      }
    }

    plug = self->_plug;
    if (plug)
    {
      [(MCPlugParallel *)plug removeFiltersAtIndices:a3];
    }

    [(NSMutableArray *)self->_filters removeObjectsAtIndexes:a3];

    [(MPLayer *)self didChange:3 valuesAtIndexes:a3 forKey:@"filters"];
  }
}

- (void)removeAllFilters
{
  if ([(NSMutableArray *)self->_filters count])
  {
    v3 = [[NSIndexSet alloc] initWithIndexesInRange:{0, -[NSMutableArray count](self->_filters, "count")}];
    [(MPLayer *)self removeFiltersAtIndices:v3];
  }
}

- (void)moveFiltersFromIndices:(id)a3 toIndex:(int64_t)a4
{
  v7 = [a3 firstIndex];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    do
    {
      v9 = [(NSMutableArray *)self->_filters objectAtIndex:v8];
      [(NSMutableArray *)self->_filters removeObjectAtIndex:v8];
      [(NSMutableArray *)self->_filters insertObject:v9 atIndex:a4 - (v8 < a4)];
      v8 = [a3 indexGreaterThanIndex:v8];
      ++a4;
    }

    while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  }

  plug = self->_plug;
  if (plug)
  {

    [(MCPlugParallel *)plug moveFiltersAtIndices:a3 toIndex:a4];
  }
}

- (void)setAnimationPath:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v7 = [(MPLayer *)self animationPathForKey:a4];
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

    [(MPLayer *)self removeAnimationPathForKey:a4];
  }
}

- (void)removeAnimationPathForKey:(id)a3
{
  v5 = [(MPLayer *)self animationPathForKey:?];
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
  [(MPLayerInternal *)self->_internal setOpacity:?];
  plug = self->_plug;
  if (plug)
  {

    [(MCPlugParallel *)plug setOpacity:a3];
  }
}

- (void)setScale:(double)a3
{
  [(MPLayerInternal *)self->_internal setScale:?];
  plug = self->_plug;
  if (plug)
  {

    [(MCPlugParallel *)plug setScale:a3];
  }
}

- (CGPoint)position
{
  [(MPLayerInternal *)self->_internal position];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(MPLayerInternal *)self->_internal setPosition:?];
  plug = self->_plug;
  if (plug)
  {

    [(MCPlugParallel *)plug setPosition:x, y];
  }
}

- (void)setZPosition:(double)a3
{
  [(MPLayerInternal *)self->_internal setZPosition:?];
  plug = self->_plug;
  if (plug)
  {

    [(MCPlugParallel *)plug setZPosition:a3];
  }
}

- (void)setRotationAngle:(double)a3
{
  [(MPLayerInternal *)self->_internal setRotationAngle:?];
  plug = self->_plug;
  if (plug)
  {

    [(MCPlugParallel *)plug setRotationAngle:a3];
  }
}

- (CGSize)size
{
  [(MPLayerInternal *)self->_internal size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(MPLayerInternal *)self->_internal setSize:?];
  plug = self->_plug;
  if (plug)
  {

    [(MCPlugParallel *)plug setSize:width, height];
  }
}

- (void)setXRotationAngle:(double)a3
{
  [(MPLayerInternal *)self->_internal setXRotationAngle:?];
  plug = self->_plug;
  if (plug)
  {

    [(MCPlugParallel *)plug setXRotationAngle:a3];
  }
}

- (void)setYRotationAngle:(double)a3
{
  [(MPLayerInternal *)self->_internal setYRotationAngle:?];
  plug = self->_plug;
  if (plug)
  {

    [(MCPlugParallel *)plug setYRotationAngle:a3];
  }
}

- (int64_t)zIndex
{
  plug = self->_plug;
  if (plug)
  {
    return [(MCPlugParallel *)plug zIndex];
  }

  internal = self->_internal;

  return [(MPLayerInternal *)internal zIndex];
}

- (void)setZIndex:(int64_t)a3
{
  v3 = a3;
  [(MPLayerInternal *)self->_internal setZIndex:?];
  if ([-[MPLayer parent](self "parent")])
  {
    plug = self->_plug;
    if (plug)
    {

      [(MCPlugParallel *)plug setZIndex:v3];
    }
  }
}

- (void)setTimeIn:(double)a3
{
  [(MPLayerInternal *)self->_internal setTimeIn:?];
  plug = self->_plug;
  if (plug)
  {

    [(MCPlugParallel *)plug setTimeIn:a3];
  }
}

- (void)setDuration:(double)a3
{
  if (a3 < 0.0)
  {
    NSLog(@"iLifeSlideshow: Trying to set a duration less than 0.", a2);
    a3 = 0.0;
  }

  [(MPLayerInternal *)self->_internal setDuration:a3];
  [(MPLayer *)self updateMainDuration];
  [(MPLayer *)self resetStartTimes];
  if (!self->_skipTimeCalculations)
  {
    v4 = [(MPLayer *)self parent];

    [v4 resetDuration];
  }
}

- (void)setPhaseInDuration:(double)a3
{
  [(MPLayerInternal *)self->_internal setPhaseInDuration:?];
  plug = self->_plug;
  if (plug)
  {
    [(MCPlug *)plug setPhaseInDuration:a3];

    [(MPLayer *)self updateMainDuration];
  }
}

- (void)setPhaseOutDuration:(double)a3
{
  [(MPLayerInternal *)self->_internal setPhaseOutDuration:?];
  plug = self->_plug;
  if (plug)
  {
    [(MCPlug *)plug setPhaseOutDuration:a3];

    [(MPLayer *)self updateMainDuration];
  }
}

- (void)setIsTriggered:(BOOL)a3
{
  v3 = a3;
  [(MPLayerInternal *)self->_internal setIsTriggered:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlugParallel *)plug setIsTriggered:v3];
    }
  }
}

- (void)setStartsPaused:(BOOL)a3
{
  v3 = a3;
  [(MPLayerInternal *)self->_internal setStartsPaused:?];
  plug = self->_plug;
  if (plug)
  {

    [(MCPlug *)plug setStartsPaused:v3];
  }
}

- (void)setAudioPriority:(int64_t)a3
{
  v3 = a3;
  [(MPLayerInternal *)self->_internal setAudioPriority:?];
  plug = self->_plug;
  if (plug)
  {

    [(MCPlugParallel *)plug setAudioPriority:v3];
  }
}

- (void)setNumberOfLoops:(double)a3
{
  [(MPLayerInternal *)self->_internal setNumberOfLoops:?];
  plug = self->_plug;
  if (plug)
  {
    [(MCPlug *)plug setNumberOfLoops:a3];
    [(MPLayer *)self updateMainDuration];
  }

  parent = self->_parent;

  [parent resetDuration];
}

- (void)setIsAudioLayer:(BOOL)a3
{
  [(MPLayerInternal *)self->_internal setIsAudioLayer:a3];
  if ([(MPLayerInternal *)self->_internal isAudioLayer])
  {
    height = CGSizeZero.height;

    [(MPLayer *)self setSize:CGSizeZero.width, height];
  }
}

- (id)layerKey
{
  if (![-[MPLayer parent](self "parent")])
  {
    return 0;
  }

  v3 = [-[MPLayer parent](self "parent")];
  v4 = [(MPLayer *)self uuid];

  return [v3 objectForKey:v4];
}

- (void)setAction:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    if (!self->_actions)
    {
      self->_actions = objc_alloc_init(NSMutableDictionary);
    }

    v7 = [(MPLayer *)self actionForKey:a4];
    if (v7)
    {
      [v7 setParent:0];
    }

    [a3 setParent:self];
    [(NSMutableDictionary *)self->_actions setObject:a3 forKey:a4];
    plug = self->_plug;
    if (plug)
    {
      v9 = [MPUtilities createMCAction:a3 forPlug:plug withKey:a4];

      [a3 setAction:v9];
    }
  }

  else
  {

    [(MPLayer *)self removeActionForKey:a4];
  }
}

- (void)removeActionForKey:(id)a3
{
  v5 = [(MPLayer *)self actionForKey:?];
  plug = self->_plug;
  if (plug)
  {
    [(MCPlug *)plug removeActionForKey:a3];
  }

  [v5 setParent:0];
  actions = self->_actions;

  [(NSMutableDictionary *)actions removeObjectForKey:a3];
}

- (id)allSlides:(BOOL)a3
{
  v31 = a3;
  v4 = +[NSMutableArray array];
  [(NSLock *)[(MPLayerInternal *)self->_internal containerLock] lock];
  v5 = [(NSMutableArray *)self->_effectContainers copy];
  [(NSLock *)[(MPLayerInternal *)self->_internal containerLock] unlock];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v5;
  v28 = [v5 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v28)
  {
    v27 = *v45;
    do
    {
      v6 = 0;
      do
      {
        if (*v45 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v6;
        v7 = [objc_msgSend(*(*(&v44 + 1) + 8 * v6) "effects")];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v30 = v7;
        v8 = [v7 countByEnumeratingWithState:&v40 objects:v50 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v41;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v41 != v10)
              {
                objc_enumerationMutation(v30);
              }

              v12 = *(*(&v40 + 1) + 8 * i);
              v13 = [objc_msgSend(v12 "slides")];
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v14 = [v13 countByEnumeratingWithState:&v36 objects:v49 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v37;
                do
                {
                  for (j = 0; j != v15; j = j + 1)
                  {
                    if (*v37 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = *(*(&v36 + 1) + 8 * j);
                    if ([v18 path] && objc_msgSend(v18, "parent"))
                    {
                      [v4 addObject:v18];
                    }
                  }

                  v15 = [v13 countByEnumeratingWithState:&v36 objects:v49 count:16];
                }

                while (v15);
              }

              if (v31)
              {
                v19 = [objc_msgSend(v12 "secondarySlides")];
                v32 = 0u;
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v20 = [v19 countByEnumeratingWithState:&v32 objects:v48 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v33;
                  do
                  {
                    for (k = 0; k != v21; k = k + 1)
                    {
                      if (*v33 != v22)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v24 = *(*(&v32 + 1) + 8 * k);
                      if ([v24 path] && objc_msgSend(v24, "parent"))
                      {
                        [v4 addObject:v24];
                      }
                    }

                    v21 = [v19 countByEnumeratingWithState:&v32 objects:v48 count:16];
                  }

                  while (v21);
                }
              }
            }

            v9 = [v30 countByEnumeratingWithState:&v40 objects:v50 count:16];
          }

          while (v9);
        }

        v6 = v29 + 1;
      }

      while ((v29 + 1) != v28);
      v28 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v28);
  }

  return v4;
}

- (id)allSongs
{
  v3 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  effectContainers = self->_effectContainers;
  v5 = [(NSMutableArray *)effectContainers countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(effectContainers);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        [v3 addObjectsFromArray:{objc_msgSend(objc_msgSend(v9, "audioPlaylist"), "songs")}];
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v10 = [v9 effects];
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [v3 addObjectsFromArray:{objc_msgSend(objc_msgSend(*(*(&v16 + 1) + 8 * j), "audioPlaylist"), "songs")}];
            }

            v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v12);
        }
      }

      v6 = [(NSMutableArray *)effectContainers countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)fullDebugLog
{
  v3 = [[NSString stringByAppendingFormat:@"\n%@\n" stringWithFormat:?], "stringByAppendingFormat:", @"============================ Layer %d Effect Containers =======================\n", [(MPLayer *)self zIndex]];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  effectContainers = self->_effectContainers;
  v5 = [(NSMutableArray *)effectContainers countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(effectContainers);
        }

        v3 = -[NSString stringByAppendingFormat:](v3, "stringByAppendingFormat:", @"%@\n", [*(*(&v20 + 1) + 8 * i) fullDebugLog]);
      }

      v6 = [(NSMutableArray *)effectContainers countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v9 = [(NSString *)v3 stringByAppendingFormat:@"================================ Layer %d Filters =============================\n", [(MPLayer *)self zIndex]];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  filters = self->_filters;
  v11 = [(NSMutableArray *)filters countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(filters);
        }

        v9 = -[NSString stringByAppendingFormat:](v9, "stringByAppendingFormat:", @"%@\n", [*(*(&v16 + 1) + 8 * j) fullDebugLog]);
      }

      v12 = [(NSMutableArray *)filters countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  return v9;
}

- (id)parentDocument
{
  v2 = [(MPLayer *)self parent];
  objc_opt_class();
  while ((objc_opt_isKindOfClass() & 1) == 0 && v2)
  {
    v2 = [v2 parent];
    objc_opt_class();
  }

  return v2;
}

- (void)copyStruct:(id)a3
{
  [a3 numberOfLoops];
  [(MPLayerInternal *)self->_internal setNumberOfLoops:?];
  [a3 position];
  [(MPLayerInternal *)self->_internal setPosition:?];
  [a3 size];
  [(MPLayerInternal *)self->_internal setSize:?];
  [a3 zPosition];
  [(MPLayerInternal *)self->_internal setZPosition:?];
  [a3 rotationAngle];
  [(MPLayerInternal *)self->_internal setRotationAngle:?];
  [a3 xRotationAngle];
  [(MPLayerInternal *)self->_internal setXRotationAngle:?];
  [a3 yRotationAngle];
  [(MPLayerInternal *)self->_internal setYRotationAngle:?];
  [a3 scale];
  [(MPLayerInternal *)self->_internal setScale:?];
  [a3 opacity];
  [(MPLayerInternal *)self->_internal setOpacity:?];
  [a3 timeIn];
  [(MPLayerInternal *)self->_internal setTimeIn:?];
  -[MPLayerInternal setIsTriggered:](self->_internal, "setIsTriggered:", [a3 isTriggered]);
  -[MPLayerInternal setStartsPaused:](self->_internal, "setStartsPaused:", [a3 startsPaused]);
  [a3 duration];
  [(MPLayerInternal *)self->_internal setDuration:?];
  [a3 phaseInDuration];
  [(MPLayerInternal *)self->_internal setPhaseInDuration:?];
  [a3 phaseOutDuration];
  [(MPLayerInternal *)self->_internal setPhaseOutDuration:?];
  -[MPLayerInternal setAudioPriority:](self->_internal, "setAudioPriority:", [a3 audioPriority]);
  -[MPLayerInternal setTitle:](self->_internal, "setTitle:", [objc_msgSend(a3 "title")]);
  -[MPLayerInternal setLayerID:](self->_internal, "setLayerID:", [objc_msgSend(a3 "layerID")]);
  -[MPLayerInternal setZIndex:](self->_internal, "setZIndex:", [a3 zIndex]);
  internal = self->_internal;

  [(MPLayerInternal *)internal setUuid:0];
}

- (void)copyEffectContainers:(id)a3
{
  v5 = objc_alloc_init(NSMutableArray);
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

  [(MPLayer *)self addEffectContainers:v5];
}

- (void)copyFilters:(id)a3
{
  if (a3)
  {
    v5 = objc_alloc_init(NSMutableArray);
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

    [(MPLayer *)self addFilters:a3];
  }
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
        [(MPLayer *)self setAnimationPath:v10 forKey:v9];
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
        [(MPLayer *)self setAction:v10 forKey:v9];
      }

      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)copyAudioPlaylist:(id)a3
{
  v4 = [a3 copy];
  [(MPLayer *)self setAudioPlaylist:v4];
}

- (void)cleanup
{
  [(MPLayerInternal *)self->_internal setCleaningUp:1];
  self->_skipTimeCalculations = 1;
  [(MPLayer *)self removeAllEffectContainers];
  [(MPLayer *)self removeAllFilters];
  v3 = [(NSMutableDictionary *)self->_animationPaths allKeys];
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

        [(MPLayer *)self removeAnimationPathForKey:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(MPLayer *)self setAudioPlaylist:0];
}

- (void)setPlug:(id)a3
{
  v5 = a3;
  self->_plug = v5;
  if (v5)
  {
    [(MPLayer *)self numberOfLoops];
    [(MCPlug *)self->_plug setNumberOfLoops:?];
    [(MPLayer *)self position];
    [(MCPlugParallel *)self->_plug setPosition:?];
    [(MPLayer *)self size];
    [(MCPlugParallel *)self->_plug setSize:?];
    [(MPLayer *)self zPosition];
    [(MCPlugParallel *)self->_plug setZPosition:?];
    [(MPLayer *)self rotationAngle];
    [(MCPlugParallel *)self->_plug setRotationAngle:?];
    [(MPLayer *)self xRotationAngle];
    [(MCPlugParallel *)self->_plug setXRotationAngle:?];
    [(MPLayer *)self yRotationAngle];
    [(MCPlugParallel *)self->_plug setYRotationAngle:?];
    [(MPLayer *)self scale];
    [(MCPlugParallel *)self->_plug setScale:?];
    [(MPLayer *)self opacity];
    [(MCPlugParallel *)self->_plug setOpacity:?];
    [(MPLayer *)self timeIn];
    [(MCPlugParallel *)self->_plug setTimeIn:?];
    [(MCPlugParallel *)self->_plug setIsTriggered:[(MPLayer *)self isTriggered]];
    [(MCPlug *)self->_plug setStartsPaused:[(MPLayer *)self startsPaused]];
    [(MPLayer *)self phaseInDuration];
    [(MCPlug *)self->_plug setPhaseInDuration:?];
    [(MPLayer *)self phaseOutDuration];
    [(MCPlug *)self->_plug setPhaseOutDuration:?];
    [(MCPlugParallel *)self->_plug setAudioPriority:[(MPLayer *)self audioPriority]];
    if ([-[MPLayer parent](self "parent")])
    {
      [(MCPlugParallel *)self->_plug setZIndex:[(MPLayerInternal *)self->_internal zIndex]];
    }

    [(MPLayer *)self updateMainDuration];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    filters = self->_filters;
    v7 = [(NSMutableArray *)filters countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v54;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v54 != v9)
          {
            objc_enumerationMutation(filters);
          }

          [*(*(&v53 + 1) + 8 * i) setFilter:{-[MCPlugParallel addFilterWithFilterID:](self->_plug, "addFilterWithFilterID:", objc_msgSend(*(*(&v53 + 1) + 8 * i), "filterID"))}];
        }

        v8 = [(NSMutableArray *)filters countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v8);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    animationPaths = self->_animationPaths;
    v12 = [(NSMutableDictionary *)animationPaths countByEnumeratingWithState:&v49 objects:v60 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v50;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v50 != v14)
          {
            objc_enumerationMutation(animationPaths);
          }

          v16 = *(*(&v49 + 1) + 8 * j);
          v17 = [(NSMutableDictionary *)self->_animationPaths objectForKey:v16];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = off_1A4CB0;
          }

          else
          {
            v18 = off_1A4CB8;
          }

          v19 = [(__objc2_class *)*v18 animationPathWithKey:v16];
          [(MCPlug *)self->_plug addAnimationPath:v19];
          [v17 setAnimationPath:v19];
        }

        v13 = [(NSMutableDictionary *)animationPaths countByEnumeratingWithState:&v49 objects:v60 count:16];
      }

      while (v13);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    actions = self->_actions;
    v21 = [(NSMutableDictionary *)actions countByEnumeratingWithState:&v45 objects:v59 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v46;
      do
      {
        for (k = 0; k != v22; k = k + 1)
        {
          if (*v46 != v23)
          {
            objc_enumerationMutation(actions);
          }

          v25 = *(*(&v45 + 1) + 8 * k);
          v26 = [(NSMutableDictionary *)self->_actions objectForKey:v25];
          [v26 setAction:{+[MPUtilities createMCAction:forPlug:withKey:](MPUtilities, "createMCAction:forPlug:withKey:", v26, self->_plug, v25)}];
        }

        v22 = [(NSMutableDictionary *)actions countByEnumeratingWithState:&v45 objects:v59 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v27 = self->_filters;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v41 objects:v58 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v42;
      do
      {
        for (m = 0; m != v29; m = m + 1)
        {
          if (*v42 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [*(*(&v41 + 1) + 8 * m) setFilter:0];
        }

        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v41 objects:v58 count:16];
      }

      while (v29);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v32 = self->_animationPaths;
    v33 = [(NSMutableDictionary *)v32 countByEnumeratingWithState:&v37 objects:v57 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v38;
      do
      {
        for (n = 0; n != v34; n = n + 1)
        {
          if (*v38 != v35)
          {
            objc_enumerationMutation(v32);
          }

          [-[NSMutableDictionary objectForKey:](self->_animationPaths objectForKey:{*(*(&v37 + 1) + 8 * n)), "setAnimationPath:", 0}];
        }

        v34 = [(NSMutableDictionary *)v32 countByEnumeratingWithState:&v37 objects:v57 count:16];
      }

      while (v34);
    }
  }
}

- (void)setParent:(id)a3
{
  if (a3 && self->_parent)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"A layer may one have one parent.  Please remove it first.  This is unsupported." userInfo:0]);
  }

  self->_parent = a3;
  if (![(MPLayerInternal *)self->_internal uuid])
  {
    v4 = +[MPUtilities stringWithNewUUID];
    internal = self->_internal;

    [(MPLayerInternal *)internal setUuid:v4];
  }
}

- (void)setMontage:(id)a3
{
  montage = self->_montage;
  if (montage)
  {

    self->_montage = 0;
  }

  self->_montage = a3;
}

- (void)setSkipTimeCalculations:(BOOL)a3
{
  self->_skipTimeCalculations = a3;
  [(MPLayer *)self resetStartTimes];
  if (!self->_skipTimeCalculations)
  {
    v4 = [(MPLayer *)self parent];

    [v4 resetDuration];
  }
}

- (void)updateDurationPadding:(double)a3
{
  internal = self->_internal;
  [(MPLayerInternal *)internal durationPadding];
  [(MPLayerInternal *)internal setDurationPadding:v6 + a3];
  [(MPLayerInternal *)self->_internal durationPadding];
  if (v7 < 0.0)
  {
    [(MPLayerInternal *)self->_internal setDurationPadding:0.0];
  }

  [(MPLayer *)self updateMainDuration];
  v8 = [(MPLayer *)self parent];
  [-[MPLayer parent](self "parent")];
  v10 = v9 + a3;

  [v8 setDurationPadding:v10];
}

- (void)updateMainDuration
{
  if (self->_plug)
  {
    [(MPLayer *)self phaseInDuration];
    v4 = v3;
    [(MPLayer *)self phaseOutDuration];
    v6 = v4 + v5;
    [(MPLayer *)self duration];
    v8 = v7 - v6;
    if (v8 >= 0.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0.0;
    }

    [(MPLayerInternal *)self->_internal durationPadding];
    v11 = v10 + v9;
    plug = self->_plug;

    [(MCPlug *)plug setLoopDuration:v11];
  }
}

- (void)reconnectTransitionForEffectContainerAtIndex:(int64_t)a3
{
  if ([(MPLayer *)self countOfEffectContainers]> a3)
  {
    v5 = [(NSMutableArray *)self->_effectContainers objectAtIndex:a3];
    if (([v5 isTransitionConnected] & 1) == 0)
    {
      [objc_msgSend(v5 "transition")];
      [(MPLayer *)self updateDurationPadding:-v6];
      effectContainers = self->_effectContainers;
      v8 = a3 ? [(NSMutableArray *)effectContainers objectAtIndex:a3 - 1]: [(NSMutableArray *)effectContainers lastObject];
      v9 = v8;
      if (([v8 isTransitionConnected] & 1) == 0)
      {
        [objc_msgSend(v9 "transition")];
        v11 = -v10;

        [(MPLayer *)self updateDurationPadding:v11];
      }
    }
  }
}

- (void)reconnectAllTransitions
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  effectContainers = self->_effectContainers;
  v3 = [(NSMutableArray *)effectContainers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(effectContainers);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (([v7 isTransitionConnected] & 1) == 0)
        {
          [v7 reconnectTransition];
        }
      }

      v4 = [(NSMutableArray *)effectContainers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)resetStartTimes
{
  if (!self->_skipTimeCalculations)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    effectContainers = self->_effectContainers;
    v3 = [(NSMutableArray *)effectContainers countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      v6 = 0.0;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(effectContainers);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          [v8 setStartTime:v6];
          [v8 duration];
          v10 = v9;
          [v8 outroTransitionDuration];
          v6 = v6 + v10 - v11;
        }

        v4 = [(NSMutableArray *)effectContainers countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }
  }
}

- (void)configureActions
{
  if ([(MPLayer *)self parentDocument])
  {
    if (([-[MPLayer parentDocument](self "parentDocument")] & 1) == 0)
    {
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      actions = self->_actions;
      v4 = [(NSMutableDictionary *)actions countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v9;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v9 != v6)
            {
              objc_enumerationMutation(actions);
            }

            [-[NSMutableDictionary objectForKey:](self->_actions objectForKey:{*(*(&v8 + 1) + 8 * i)), "configureTarget"}];
          }

          v5 = [(NSMutableDictionary *)actions countByEnumeratingWithState:&v8 objects:v12 count:16];
        }

        while (v5);
      }
    }
  }
}

- (void)insertObject:(id)a3 inEffectContainersAtIndex:(int64_t)a4
{
  v6 = [NSArray arrayWithObject:a3];

  [(MPLayer *)self insertEffectContainers:v6 atIndex:a4];
}

- (void)removeObjectFromEffectContainersAtIndex:(int64_t)a3
{
  v4 = [NSIndexSet indexSetWithIndex:a3];

  [(MPLayer *)self removeEffectContainersAtIndices:v4];
}

- (void)replaceObjectInEffectContainersAtIndex:(int64_t)a3 withObject:(id)a4
{
  [(MPLayer *)self removeEffectContainersAtIndices:[NSIndexSet indexSetWithIndex:?]];
  v7 = [NSArray arrayWithObject:a4];

  [(MPLayer *)self insertEffectContainers:v7 atIndex:a3];
}

- (void)insertObject:(id)a3 inFiltersAtIndex:(int64_t)a4
{
  v6 = [NSArray arrayWithObject:a3];

  [(MPLayer *)self insertFilters:v6 atIndex:a4];
}

- (void)removeObjectFromFiltersAtIndex:(int64_t)a3
{
  v4 = [NSIndexSet indexSetWithIndex:a3];

  [(MPLayer *)self removeFiltersAtIndices:v4];
}

- (void)replaceObjectInFiltersAtIndex:(int64_t)a3 withObject:(id)a4
{
  [(MPLayer *)self removeFiltersAtIndices:[NSIndexSet indexSetWithIndex:?]];
  v7 = [NSArray arrayWithObject:a4];

  [(MPLayer *)self insertFilters:v7 atIndex:a3];
}

- (void)setXPosition:(double)a3
{
  [(MPLayer *)self yPosition];

  [(MPLayer *)self setPosition:a3, v5];
}

- (void)setYPosition:(double)a3
{
  [(MPLayer *)self xPosition];

  [(MPLayer *)self setPosition:?];
}

- (void)setHeight:(double)a3
{
  [(MPLayer *)self width];

  [(MPLayer *)self setSize:?];
}

- (void)setWidth:(double)a3
{
  [(MPLayer *)self height];

  [(MPLayer *)self setSize:a3, v5];
}

- (id)scriptingAnimations
{
  v20 = +[NSMutableDictionary dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_animationPaths;
  v21 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v21)
  {
    v18 = *v30;
    do
    {
      v2 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v2;
        v3 = *(*(&v29 + 1) + 8 * v2);
        v22 = +[NSMutableDictionary dictionary];
        v4 = [(NSMutableDictionary *)self->_animationPaths objectForKey:v3];
        v5 = +[NSMutableArray array];
        v6 = +[NSMutableArray array];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v7 = [v4 orderedKeyframes];
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v25 + 1) + 8 * i);
              if (([v3 isEqualToString:@"size"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"position"))
              {
                v24 = 0;
                [v12 point];
                LOWORD(v24) = v13;
                [v12 point];
                HIWORD(v24) = v14;
                v15 = [NSData dataWithBytes:&v24 length:4];
              }

              else
              {
                [v12 scalar];
                v15 = [NSNumber numberWithDouble:?];
              }

              [v6 addObject:v15];
              [v12 time];
              [v5 addObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:")}];
            }

            v9 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v9);
        }

        [v22 setObject:v5 forKey:@"times"];
        [v22 setObject:v6 forKey:@"values"];
        [v20 setObject:v22 forKey:v3];
        v2 = v23 + 1;
      }

      while ((v23 + 1) != v21);
      v21 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v21);
  }

  return v20;
}

- (void)setScriptingAnimations:(id)a3
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = [a3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v21)
  {
    v19 = *v24;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(a3);
        }

        v5 = *(*(&v23 + 1) + 8 * i);
        v6 = [a3 objectForKey:{v5, v19}];
        v7 = [v6 objectForKey:@"times"];
        v8 = [v6 objectForKey:@"values"];
        v9 = +[MPAnimationPathKeyframed animationPath];
        v10 = [v7 count];
        if (v10 >= 1)
        {
          v11 = v10;
          for (j = 0; j != v11; ++j)
          {
            if (([v5 isEqualToString:@"size"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"position"))
            {
              v22 = 0;
              [objc_msgSend(v8 objectAtIndex:{j), "getBytes:length:", &v22, 4}];
              v13 = v22;
              v14 = SHIWORD(v22);
              [objc_msgSend(v7 objectAtIndex:{j), "doubleValue"}];
              [v9 createKeyframeWithPoint:v13 atTime:{v14, v15}];
            }

            else
            {
              [objc_msgSend(v8 objectAtIndex:{j), "doubleValue"}];
              v17 = v16;
              [objc_msgSend(v7 objectAtIndex:{j), "doubleValue"}];
              [v9 createKeyframeWithScalar:v17 atTime:v18];
            }
          }
        }

        [(MPLayer *)self setAnimationPath:v9 forKey:v5];
      }

      v21 = [a3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v21);
  }
}

@end