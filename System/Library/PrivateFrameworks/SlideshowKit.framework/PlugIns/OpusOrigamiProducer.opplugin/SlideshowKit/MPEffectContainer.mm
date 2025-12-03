@interface MPEffectContainer
+ (id)effectContainer;
- (BOOL)shouldBeParallelizer;
- (MPEffectContainer)init;
- (double)findMinDuration;
- (double)introTransitionDuration;
- (double)outroTransitionDuration;
- (id)container;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)fullDebugLog;
- (id)nearestLayerGroup;
- (id)parentDocument;
- (id)scriptingTransition;
- (int64_t)index;
- (int64_t)slideCount;
- (int64_t)textCount;
- (void)addEffect:(id)effect;
- (void)addEffects:(id)effects;
- (void)addFilter:(id)filter;
- (void)addFilters:(id)filters;
- (void)adjustPhasesWithDuration:(double)duration;
- (void)calculateDurationToSmallest:(BOOL)smallest;
- (void)cleanup;
- (void)convertFromEffectContainerToParallelizer;
- (void)convertFromParallelizerToEffectContainer;
- (void)copyAudioPlaylist:(id)playlist;
- (void)copyEffects:(id)effects;
- (void)copyFilters:(id)filters;
- (void)copyTransition:(id)transition;
- (void)copyVars:(id)vars;
- (void)dealloc;
- (void)disconnectTransition;
- (void)insertEffects:(id)effects atIndex:(int64_t)index;
- (void)insertFilters:(id)filters atIndex:(int64_t)index;
- (void)insertObject:(id)object inEffectsAtIndex:(int64_t)index;
- (void)insertObject:(id)object inFiltersAtIndex:(int64_t)index;
- (void)moveEffectsFromIndices:(id)indices toIndex:(int64_t)index;
- (void)moveFiltersFromIndices:(id)indices toIndex:(int64_t)index;
- (void)reconnectTransition;
- (void)removeAllEffects;
- (void)removeAllFilters;
- (void)removeEffectsAtIndices:(id)indices;
- (void)removeFiltersAtIndices:(id)indices;
- (void)removeObjectFromEffectsAtIndex:(int64_t)index;
- (void)removeObjectFromFiltersAtIndex:(int64_t)index;
- (void)replaceObjectInEffectsAtIndex:(int64_t)index withObject:(id)object;
- (void)replaceObjectInFiltersAtIndex:(int64_t)index withObject:(id)object;
- (void)setAudioPlaylist:(id)playlist;
- (void)setBackgroundCGColor:(CGColor *)color;
- (void)setBackgroundColorString:(id)string;
- (void)setContainerEffect:(id)effect;
- (void)setContainerParallelizer:(id)parallelizer;
- (void)setContainerPlug:(id)plug;
- (void)setDuration:(double)duration;
- (void)setParentLayer:(id)layer;
- (void)setScriptingTransition:(id)transition;
- (void)setTransition:(id)transition;
- (void)setUserInfoAttribute:(id)attribute forKey:(id)key;
@end

@implementation MPEffectContainer

+ (id)effectContainer
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (MPEffectContainer)init
{
  v3.receiver = self;
  v3.super_class = MPEffectContainer;
  result = [(MPEffectContainer *)&v3 init];
  if (result)
  {
    result->_transitionDisconnected = 0;
    result->_audioPlaylist = 0;
    *&result->_containerPlug = 0u;
    *&result->_effects = 0u;
    *&result->_attributes = 0u;
    result->_backgroundColor = 0;
    result->_uuid = 0;
    result->_startTime = -1.0;
    result->_duration = 0.0;
  }

  return result;
}

- (id)description
{
  v3 = [NSString stringWithFormat:@"======================== Effect Container %d Description =======================\n", [(MPEffectContainer *)self index]];
  effects = self->_effects;
  if (effects)
  {
    effects = [(NSMutableArray *)effects count];
  }

  effects = [(NSString *)v3 stringByAppendingFormat:@"\t               Effect Count: %d\n", effects];
  filters = self->_filters;
  if (filters)
  {
    filters = [(NSMutableArray *)filters count];
  }

  filters = [(NSString *)effects stringByAppendingFormat:@"\t               Filter Count: %d\n", filters];
  [(MPEffectContainer *)self duration];
  v9 = [(NSString *)filters stringByAppendingFormat:@"\t                   Duration: %f\n", v8];
  if ([(MPEffectContainer *)self transition])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [(NSString *)v9 stringByAppendingFormat:@"\t             Has Transition: %@\n", v10];
  if (self->_containerPlug)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [(NSString *)v11 stringByAppendingFormat:@"\t         Has Container Plug: %@\n", v12];
  if (self->_containerParallelizer)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  return [(NSString *)v13 stringByAppendingFormat:@"\t Has Container Parallelizer: %@\n", v14];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 copyVars:self];
  [v4 copyEffects:self->_effects];
  [v4 copyFilters:self->_filters];
  [v4 copyTransition:self->_transition];
  [v4 copyAudioPlaylist:self->_audioPlaylist];
  return v4;
}

- (void)dealloc
{
  [(MPEffectContainer *)self cleanup];
  containerPlug = self->_containerPlug;
  if (containerPlug)
  {
  }

  self->_containerPlug = 0;
  containerParallelizer = self->_containerParallelizer;
  if (containerParallelizer)
  {
  }

  self->_containerParallelizer = 0;

  self->_audioPlaylist = 0;
  self->_attributes = 0;

  self->_effects = 0;
  self->_filters = 0;

  self->_transition = 0;
  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    CGColorRelease(backgroundColor);
    self->_backgroundColor = 0;
  }

  self->_uuid = 0;
  v6.receiver = self;
  v6.super_class = MPEffectContainer;
  [(MPEffectContainer *)&v6 dealloc];
}

- (void)addEffect:(id)effect
{
  v6 = [[NSArray alloc] initWithObjects:{effect, 0}];
  effects = self->_effects;
  if (effects)
  {
    v5 = [(NSMutableArray *)effects count];
  }

  else
  {
    v5 = 0;
  }

  [(MPEffectContainer *)self insertEffects:v6 atIndex:v5];
}

- (void)addEffects:(id)effects
{
  effects = self->_effects;
  if (effects)
  {
    v6 = [(NSMutableArray *)effects count];
  }

  else
  {
    v6 = 0;
  }

  [(MPEffectContainer *)self insertEffects:effects atIndex:v6];
}

- (void)insertEffects:(id)effects atIndex:(int64_t)index
{
  if (!self->_effects)
  {
    self->_effects = objc_alloc_init(NSMutableArray);
  }

  v7 = [[NSIndexSet alloc] initWithIndexesInRange:{index, objc_msgSend(effects, "count")}];
  [(MPEffectContainer *)self willChange:2 valuesAtIndexes:v7 forKey:@"effects"];
  [(NSMutableArray *)self->_effects insertObjects:effects atIndexes:v7];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = [effects countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(effects);
        }

        [*(*(&v43 + 1) + 8 * i) setParentContainer:self];
      }

      v9 = [effects countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v9);
  }

  if (self->_containerPlug)
  {
    if (-[MPEffectContainer shouldBeParallelizer](self, "shouldBeParallelizer") || [effects count] != &dword_0 + 1)
    {
      if (!self->_containerParallelizer)
      {
        [(MPEffectContainer *)self convertFromEffectContainerToParallelizer];
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v14 = [effects countByEnumeratingWithState:&v39 objects:v49 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v40;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v40 != v16)
            {
              objc_enumerationMutation(effects);
            }

            v18 = *(*(&v39 + 1) + 8 * j);
            v19 = [-[MPLayer montage](self->_parentLayer "montage")];
            [v18 setPlug:{-[MCContainerParallelizer setPlugForContainer:forID:](self->_containerParallelizer, "setPlugForContainer:forID:", v19, +[MPUtilities stringWithNewUUID](MPUtilities, "stringWithNewUUID"))}];
            [v18 setContainer:v19];
          }

          v15 = [effects countByEnumeratingWithState:&v39 objects:v49 count:16];
        }

        while (v15);
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      effects = self->_effects;
      v21 = [(NSMutableArray *)effects countByEnumeratingWithState:&v35 objects:v48 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = 0;
        v24 = *v36;
        do
        {
          for (k = 0; k != v22; k = k + 1)
          {
            if (*v36 != v24)
            {
              objc_enumerationMutation(effects);
            }

            [objc_msgSend(*(*(&v35 + 1) + 8 * k) "plug")];
          }

          v22 = [(NSMutableArray *)effects countByEnumeratingWithState:&v35 objects:v48 count:16];
        }

        while (v22);
      }
    }

    else
    {
      if (self->_containerParallelizer)
      {
        [(MPEffectContainer *)self convertFromParallelizerToEffectContainer];
      }

      v12 = [-[MPLayer montage](self->_parentLayer "montage")];
      [(MCPlug *)self->_containerPlug setContainer:v12];
      lastObject = [effects lastObject];
      [lastObject setPlug:0];
      [lastObject setContainer:v12];
    }
  }

  if ([(NSMutableArray *)self->_effects count]&& ([(MPEffectContainer *)self duration], v26 == 0.0))
  {
    [(MPEffectContainer *)self calculateDurationToSmallest:0];
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = [effects countByEnumeratingWithState:&v31 objects:v47 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v32;
      do
      {
        for (m = 0; m != v28; m = m + 1)
        {
          if (*v32 != v29)
          {
            objc_enumerationMutation(effects);
          }

          [*(*(&v31 + 1) + 8 * m) scaleMainDuration];
        }

        v28 = [effects countByEnumeratingWithState:&v31 objects:v47 count:16];
      }

      while (v28);
    }
  }

  [(MPEffectContainer *)self outroTransitionDuration];
  [(MPEffectContainer *)self adjustPhasesWithDuration:?];
  [(MPEffectContainer *)self didChange:2 valuesAtIndexes:v7 forKey:@"effects"];
}

- (void)removeEffectsAtIndices:(id)indices
{
  effects = self->_effects;
  if (effects && [(NSMutableArray *)effects count])
  {
    v6 = objc_autoreleasePoolPush();
    [(MPEffectContainer *)self willChange:3 valuesAtIndexes:indices forKey:@"effects"];
    if ([(NSMutableArray *)self->_effects count]< 2)
    {
      if (-[NSMutableArray count](self->_effects, "count") == &dword_0 + 1 && ![indices firstIndex])
      {
        v12 = [(NSMutableArray *)self->_effects objectAtIndex:0];
        v13 = v12;
        if (self->_containerPlug)
        {
          containerParallelizer = self->_containerParallelizer;
          if (containerParallelizer)
          {
            -[MCContainerParallelizer removePlug:](containerParallelizer, "removePlug:", [v12 plug]);

            self->_containerParallelizer = 0;
          }

          v15 = [-[MPLayer montage](self->_parentLayer "montage")];
          self->_containerParallelizer = v15;
          [(MCPlug *)self->_containerPlug setContainer:v15];
        }

        [v13 setParentContainer:0];
        [v13 setPlug:0];
        [v13 setContainer:0];
      }
    }

    else
    {
      lastIndex = [indices lastIndex];
      if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
      {
        for (i = lastIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [indices indexLessThanIndex:i])
        {
          v9 = [(NSMutableArray *)self->_effects objectAtIndex:i];
          v10 = v9;
          v11 = self->_containerParallelizer;
          if (v11)
          {
            -[MCContainerParallelizer removePlug:](v11, "removePlug:", [v9 plug]);
          }

          [v10 setParentContainer:0];
          [v10 setPlug:0];
          [v10 setContainer:0];
        }
      }
    }

    [(NSMutableArray *)self->_effects removeObjectsAtIndexes:indices];
    if (self->_containerParallelizer)
    {
      if ([(MPEffectContainer *)self shouldBeParallelizer])
      {
        if (self->_containerParallelizer)
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v16 = self->_effects;
          v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = 0;
            v20 = *v23;
            do
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v23 != v20)
                {
                  objc_enumerationMutation(v16);
                }

                [objc_msgSend(*(*(&v22 + 1) + 8 * j) "plug")];
              }

              v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
            }

            while (v18);
          }
        }
      }

      else
      {
        [(MPEffectContainer *)self convertFromParallelizerToEffectContainer];
      }
    }

    [(MPEffectContainer *)self didChange:3 valuesAtIndexes:indices forKey:@"effects"];
    objc_autoreleasePoolPop(v6);
  }
}

- (void)removeAllEffects
{
  if ([(NSMutableArray *)self->_effects count])
  {
    v3 = [[NSIndexSet alloc] initWithIndexesInRange:{0, -[NSMutableArray count](self->_effects, "count")}];
    [(MPEffectContainer *)self removeEffectsAtIndices:v3];
  }
}

- (void)moveEffectsFromIndices:(id)indices toIndex:(int64_t)index
{
  if (self->_effects)
  {
    containerParallelizer = self->_containerParallelizer;
    if (containerParallelizer)
    {
      v8 = [NSMutableArray arrayWithArray:[(MCContainerParallelizer *)containerParallelizer zOrderedPlugs]];
      v9 = [(NSMutableArray *)v8 objectsAtIndexes:indices];
      [(NSMutableArray *)v8 removeObjectsAtIndexes:indices];
      v10 = [[NSIndexSet alloc] initWithIndexesInRange:{index, objc_msgSend(v9, "count")}];
      [(NSMutableArray *)v8 insertObjects:v9 atIndexes:v10];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v19;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v18 + 1) + 8 * i) setZIndex:v13++];
          }

          v12 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }
    }

    v16 = [(NSMutableArray *)self->_effects objectsAtIndexes:indices];
    [(NSMutableArray *)self->_effects removeObjectsAtIndexes:indices];
    v17 = [[NSIndexSet alloc] initWithIndexesInRange:{index, objc_msgSend(v16, "count")}];
    [(NSMutableArray *)self->_effects insertObjects:v16 atIndexes:v17];
  }
}

- (void)setTransition:(id)transition
{
  if (transition)
  {
    v5 = [-[MPEffectContainer parentLayer](self "parentLayer")];
    if ([objc_msgSend(v5 documentAttributeForKey:{kMPDocumentEnforceSafeTiming), "BOOLValue"}])
    {
      [(MPEffectContainer *)self duration];
      v7 = v6;
      parentLayer = self->_parentLayer;
      if (parentLayer)
      {
        effectContainers = [(MPLayer *)parentLayer effectContainers];
        if ([(MPEffectContainer *)self index])
        {
          v10 = [effectContainers objectAtIndex:{-[MPEffectContainer index](self, "index") - 1}];
        }

        else
        {
          v10 = 0;
        }

        index = [(MPEffectContainer *)self index];
        if (index != [effectContainers count] - 1)
        {
          v12 = [effectContainers objectAtIndex:{-[MPEffectContainer index](self, "index") + 1}];
          if (v12)
          {
            v13 = v12;
            [v12 duration];
            if (v7 >= v14)
            {
              v7 = v14;
            }

            if ([v13 transition])
            {
              [v13 duration];
              v16 = v15;
              [objc_msgSend(v13 "transition")];
              v18 = v16 - v17;
              if (v7 >= v18)
              {
                v7 = v18;
              }
            }
          }
        }

        if (v10)
        {
          if ([v10 transition])
          {
            [(MPEffectContainer *)self duration];
            v20 = v19;
            [objc_msgSend(v10 "transition")];
            v22 = v20 - v21;
            if (v7 >= v22)
            {
              v7 = v22;
            }
          }
        }
      }

      [transition duration];
      if (v23 > v7)
      {
        [transition setDuration:v7];
      }
    }
  }

  if (self->_parentLayer)
  {
    transition = self->_transition;
    v25 = 0.0;
    v26 = 0.0;
    if (transition && [(MPTransition *)transition parentContainer])
    {
      [(MPTransition *)self->_transition duration];
      v26 = v27;
    }

    if (transition)
    {
      [transition duration];
      v25 = v28;
    }

    [(MPLayer *)self->_parentLayer duration];
    v30 = v29 - (v25 - v26);
  }

  else
  {
    v30 = -1.0;
    v26 = 0.0;
  }

  v31 = self->_transition;
  if (v31)
  {
    [(MPTransition *)v31 setParent:0];
    v32 = self->_transition;
    if (v32)
    {

      self->_transition = 0;
    }
  }

  if (transition)
  {
    transitionCopy = transition;
    self->_transition = transitionCopy;
    [(MPTransition *)transitionCopy setParent:self];
    if (![(MPEffectContainer *)self isTransitionConnected])
    {
      v34 = self->_parentLayer;
      [(MPTransition *)self->_transition duration];
      [(MPLayer *)v34 updateDurationPadding:v35 - v26];
    }
  }

  else if (self->_containerPlug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![(MPEffectContainer *)self isTransitionConnected])
      {
        [(MPLayer *)self->_parentLayer updateDurationPadding:-v26];
      }

      self->_transitionDisconnected = 0;
      [(MCPlug *)self->_containerPlug setTransitionID:0];
      [(MCPlug *)self->_containerPlug setTransitionDuration:0.0];
      [(MCPlug *)self->_containerPlug setTransitionAttributes:0];
    }
  }

  [(MPEffectContainer *)self outroTransitionDuration];
  [(MPEffectContainer *)self adjustPhasesWithDuration:?];
  if (v30 != -1.0)
  {
    v36 = self->_parentLayer;

    [(MPLayer *)v36 setDuration:v30];
  }
}

- (void)addFilter:(id)filter
{
  v4 = [NSArray arrayWithObject:filter];
  filters = self->_filters;
  if (filters)
  {
    v6 = [(NSMutableArray *)filters count];
  }

  else
  {
    v6 = 0;
  }

  [(MPEffectContainer *)self insertFilters:v4 atIndex:v6];
}

- (void)addFilters:(id)filters
{
  filters = self->_filters;
  if (filters)
  {
    v6 = [(NSMutableArray *)filters count];
  }

  else
  {
    v6 = 0;
  }

  [(MPEffectContainer *)self insertFilters:filters atIndex:v6];
}

- (void)insertFilters:(id)filters atIndex:(int64_t)index
{
  if (!self->_filters)
  {
    self->_filters = objc_alloc_init(NSMutableArray);
  }

  v7 = [[NSIndexSet alloc] initWithIndexesInRange:{index, objc_msgSend(filters, "count")}];
  [(MPEffectContainer *)self willChange:2 valuesAtIndexes:v7 forKey:@"filters"];
  [(NSMutableArray *)self->_filters insertObjects:filters atIndexes:v7];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [filters countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(filters);
        }

        [*(*(&v21 + 1) + 8 * i) setParent:self];
      }

      v9 = [filters countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  if (self->_containerPlug)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [filters countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        indexCopy = index;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(filters);
          }

          index = indexCopy + 1;
          [*(*(&v17 + 1) + 8 * v15) setFilter:{-[MCPlug insertFilterWithFilterID:atIndex:](self->_containerPlug, "insertFilterWithFilterID:atIndex:", objc_msgSend(*(*(&v17 + 1) + 8 * v15), "filterID"), indexCopy)}];
          v15 = v15 + 1;
          ++indexCopy;
        }

        while (v13 != v15);
        v13 = [filters countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }
  }

  [(MPEffectContainer *)self didChange:2 valuesAtIndexes:v7 forKey:@"filters"];
}

- (void)removeFiltersAtIndices:(id)indices
{
  filters = self->_filters;
  if (filters && [(NSMutableArray *)filters count])
  {
    [(MPEffectContainer *)self willChange:3 valuesAtIndexes:indices forKey:@"filters"];
    lastIndex = [indices lastIndex];
    if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = lastIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [indices indexLessThanIndex:i])
      {
        v8 = [(NSMutableArray *)self->_filters objectAtIndex:i];
        [v8 setParent:0];
        [v8 setFilter:0];
      }
    }

    containerPlug = self->_containerPlug;
    if (containerPlug)
    {
      [(MCPlug *)containerPlug removeFiltersAtIndices:indices];
    }

    [(NSMutableArray *)self->_filters removeObjectsAtIndexes:indices];

    [(MPEffectContainer *)self didChange:3 valuesAtIndexes:indices forKey:@"filters"];
  }
}

- (void)removeAllFilters
{
  if ([(NSMutableArray *)self->_filters count])
  {
    v3 = [[NSIndexSet alloc] initWithIndexesInRange:{0, -[NSMutableArray count](self->_filters, "count")}];
    [(MPEffectContainer *)self removeFiltersAtIndices:v3];
  }
}

- (void)moveFiltersFromIndices:(id)indices toIndex:(int64_t)index
{
  if (self->_filters)
  {
    firstIndex = [indices firstIndex];
    if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = firstIndex;
      do
      {
        v9 = [(NSMutableArray *)self->_filters objectAtIndex:v8];
        [(NSMutableArray *)self->_filters removeObjectAtIndex:v8];
        [(NSMutableArray *)self->_filters insertObject:v9 atIndex:index - (v8 < index)];
        v8 = [indices indexGreaterThanIndex:v8];
        ++index;
      }

      while (v8 != 0x7FFFFFFFFFFFFFFFLL);
    }

    containerPlug = self->_containerPlug;
    if (containerPlug)
    {

      [(MCPlug *)containerPlug moveFiltersAtIndices:indices toIndex:index];
    }
  }
}

- (void)setBackgroundColorString:(id)string
{
  v4 = [MPUtilities CGColorFromString:string];

  [(MPEffectContainer *)self setBackgroundCGColor:v4];
}

- (void)setBackgroundCGColor:(CGColor *)color
{
  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    CGColorRelease(backgroundColor);
    self->_backgroundColor = 0;
  }

  if (color)
  {
    self->_backgroundColor = CGColorRetain(color);
    if (!self->_containerPlug)
    {
      return;
    }

    containerParallelizer = self->_containerParallelizer;
    if (!containerParallelizer)
    {
      [(MPEffectContainer *)self convertFromEffectContainerToParallelizer];
      containerParallelizer = self->_containerParallelizer;
      if (!containerParallelizer)
      {
        return;
      }
    }

    colorCopy = color;
    goto LABEL_14;
  }

  if (self->_containerPlug && self->_containerParallelizer)
  {
    if (![(MPEffectContainer *)self shouldBeParallelizer])
    {
      [(MPEffectContainer *)self convertFromParallelizerToEffectContainer];
    }

    containerParallelizer = self->_containerParallelizer;
    if (containerParallelizer)
    {
      colorCopy = 0;
LABEL_14:

      [(MCContainerParallelizer *)containerParallelizer setBackgroundColor:colorCopy];
    }
  }
}

- (void)setAudioPlaylist:(id)playlist
{
  audioPlaylist = self->_audioPlaylist;
  if (audioPlaylist)
  {
    [(MPAudioPlaylist *)audioPlaylist setParentObject:0];
    [(MPAudioPlaylist *)self->_audioPlaylist setMontage:0];
    [(MPAudioPlaylist *)self->_audioPlaylist setAudioPlaylist:0];

    self->_audioPlaylist = 0;
  }

  if (playlist)
  {
    playlistCopy = playlist;
    self->_audioPlaylist = playlistCopy;
    [(MPAudioPlaylist *)playlistCopy setParentObject:self];
    if (self->_containerPlug)
    {
      if (self->_containerParallelizer || ([(MPEffectContainer *)self convertFromEffectContainerToParallelizer], self->_containerParallelizer))
      {
        [(MPAudioPlaylist *)self->_audioPlaylist setMontage:[(MPLayer *)self->_parentLayer montage]];
        v7 = self->_audioPlaylist;
        audioPlaylistCreateIfNeeded = [(MCContainer *)self->_containerParallelizer audioPlaylistCreateIfNeeded];

        [(MPAudioPlaylist *)v7 setAudioPlaylist:audioPlaylistCreateIfNeeded];
      }
    }
  }

  else if (self->_containerPlug && self->_containerParallelizer && ![(MPEffectContainer *)self shouldBeParallelizer])
  {

    [(MPEffectContainer *)self convertFromParallelizerToEffectContainer];
  }
}

- (int64_t)index
{
  parentLayer = self->_parentLayer;
  if (!parentLayer)
  {
    return -1;
  }

  if (!self->_containerPlug)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    parentLayer = self->_parentLayer;
LABEL_5:
    effectContainers = [(MPLayer *)parentLayer effectContainers];

    return [effectContainers indexOfObject:self];
  }

  containerPlug = self->_containerPlug;

  return [(MCPlug *)containerPlug index];
}

- (void)setDuration:(double)duration
{
  if (duration >= 0.0)
  {
    durationCopy = duration;
    v5 = [-[MPEffectContainer parentLayer](self "parentLayer")];
    nearestLayerGroup = [(MPEffectContainer *)self nearestLayerGroup];
    if (nearestLayerGroup)
    {
      v7 = [nearestLayerGroup autoAdjustDuration] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    if ([objc_msgSend(v5 documentAttributeForKey:{kMPDocumentEnforceSafeTiming), "BOOLValue"}])
    {
      if ((v7 & 1) == 0)
      {
        [(MPEffectContainer *)self findMinDuration];
        if (v8 > durationCopy)
        {
          [(MPEffectContainer *)self findMinDuration];
          durationCopy = v9;
        }
      }
    }

    [(MPEffectContainer *)self duration];
    v11 = durationCopy - v10;
    self->_duration = durationCopy;
    parentLayer = self->_parentLayer;
    if (!((parentLayer == 0) | v7 & 1))
    {
      [(MPLayer *)parentLayer duration];
      [(MPLayer *)self->_parentLayer setDuration:v11 + v13];
    }

    if ((v7 & 1) == 0)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      effects = self->_effects;
      v15 = [(NSMutableArray *)effects countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v21;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v21 != v17)
            {
              objc_enumerationMutation(effects);
            }

            [*(*(&v20 + 1) + 8 * i) scaleMainDuration];
          }

          v16 = [(NSMutableArray *)effects countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v16);
      }
    }

    if (self->_containerPlug && [(NSMutableArray *)self->_effects count]!= &dword_0 + 1)
    {
      [(MCPlug *)self->_containerPlug loopDuration];
      if (!v7)
      {
        v19 = v11 + v19;
      }

      [(MCPlug *)self->_containerPlug setLoopDuration:v19];
    }

    if ((v7 & 1) == 0)
    {
      [(MPEffectContainer *)self outroTransitionDuration];
      [(MPEffectContainer *)self adjustPhasesWithDuration:?];
    }
  }
}

- (double)introTransitionDuration
{
  index = [(MPEffectContainer *)self index];
  if (!index)
  {
    return 0.0;
  }

  v4 = [objc_msgSend(-[MPLayer effectContainers](self->_parentLayer "effectContainers")];
  if (!v4)
  {
    return 0.0;
  }

  [v4 duration];
  return result;
}

- (double)outroTransitionDuration
{
  transition = self->_transition;
  if (!transition)
  {
    return 0.0;
  }

  [(MPTransition *)transition duration];
  return result;
}

- (id)container
{
  if (self->_containerParallelizer)
  {
    return self->_containerParallelizer;
  }

  lastObject = [(NSMutableArray *)self->_effects lastObject];

  return [lastObject container];
}

- (double)findMinDuration
{
  parentLayer = self->_parentLayer;
  if (!parentLayer)
  {
    return 0.0;
  }

  effectContainers = [(MPLayer *)parentLayer effectContainers];
  if ([(MPEffectContainer *)self index])
  {
    v5 = [effectContainers objectAtIndex:{-[MPEffectContainer index](self, "index") - 1}];
  }

  else
  {
    v5 = 0;
  }

  if ([(MPEffectContainer *)self transition])
  {
    [(MPTransition *)[(MPEffectContainer *)self transition] duration];
    v6 = v7 + 0.0;
    if (!v5)
    {
      return v6;
    }
  }

  else
  {
    v6 = 0.0;
    if (!v5)
    {
      return v6;
    }
  }

  if ([v5 transition])
  {
    [objc_msgSend(v5 "transition")];
    return v6 + v8;
  }

  return v6;
}

- (void)disconnectTransition
{
  if ([(MPEffectContainer *)self transition])
  {
    if (self->_containerPlug)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && !self->_transitionDisconnected)
      {
        self->_transitionDisconnected = 1;
        [(MCPlug *)self->_containerPlug setTransitionID:0];
        [(MCPlug *)self->_containerPlug setTransitionDuration:0.0];
        parentLayer = self->_parentLayer;
        [(MPTransition *)self->_transition duration];

        [(MPLayer *)parentLayer updateDurationPadding:?];
      }
    }
  }
}

- (void)reconnectTransition
{
  if (self->_transitionDisconnected)
  {
    if (self->_containerPlug)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_transitionDisconnected = 0;
        [(MCPlug *)self->_containerPlug setTransitionID:[(MPTransition *)[(MPEffectContainer *)self transition] transitionID]];
        [(MPTransition *)[(MPEffectContainer *)self transition] duration];
        [(MCPlug *)self->_containerPlug setTransitionDuration:?];
        parentLayer = self->_parentLayer;
        [(MPTransition *)self->_transition duration];
        v5 = -v4;

        [(MPLayer *)parentLayer updateDurationPadding:v5];
      }
    }
  }
}

- (id)fullDebugLog
{
  v3 = [NSString stringWithFormat:@"\n%@\n", [(MPEffectContainer *)self description]];
  transition = self->_transition;
  if (transition)
  {
    v3 = [(NSString *)v3 stringByAppendingFormat:@"%@\n", [(MPTransition *)transition fullDebugLog]];
  }

  v5 = [(NSString *)v3 stringByAppendingFormat:@"========================= Effect Container %d Effects =========================\n", [(MPEffectContainer *)self index]];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  effects = self->_effects;
  v7 = [(NSMutableArray *)effects countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(effects);
        }

        v5 = -[NSString stringByAppendingFormat:](v5, "stringByAppendingFormat:", @"%@\n", [*(*(&v22 + 1) + 8 * i) fullDebugLog]);
      }

      v8 = [(NSMutableArray *)effects countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v11 = [(NSString *)v5 stringByAppendingFormat:@"========================= Effect Container %d Filters =========================\n", [(MPEffectContainer *)self index]];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  filters = self->_filters;
  v13 = [(NSMutableArray *)filters countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(filters);
        }

        v11 = -[NSString stringByAppendingFormat:](v11, "stringByAppendingFormat:", @"%@\n", [*(*(&v18 + 1) + 8 * j) fullDebugLog]);
      }

      v14 = [(NSMutableArray *)filters countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  return v11;
}

- (id)parentDocument
{
  parentLayer = [(MPEffectContainer *)self parentLayer];

  return [parentLayer parentDocument];
}

- (void)copyVars:(id)vars
{
  self->_startTime = *(vars + 10);
  self->_duration = *(vars + 11);
  uuid = self->_uuid;
  if (uuid)
  {

    self->_uuid = 0;
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    CGColorRelease(backgroundColor);
    self->_backgroundColor = 0;
  }

  self->_backgroundColor = CGColorCreateCopy(*(vars + 12));
}

- (void)copyEffects:(id)effects
{
  if (effects)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [effects countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(effects);
          }

          v10 = [*(*(&v11 + 1) + 8 * v9) copy];
          [v5 addObject:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [effects countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(MPEffectContainer *)self addEffects:v5];
  }
}

- (void)copyFilters:(id)filters
{
  if (filters)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [filters countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(filters);
          }

          v10 = [*(*(&v11 + 1) + 8 * v9) copy];
          [v5 addObject:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [filters countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(MPEffectContainer *)self addFilters:filters];
  }
}

- (void)copyTransition:(id)transition
{
  v4 = [transition copy];
  [(MPEffectContainer *)self setTransition:v4];
}

- (void)copyAudioPlaylist:(id)playlist
{
  v4 = [playlist copy];
  [(MPEffectContainer *)self setAudioPlaylist:v4];
}

- (void)adjustPhasesWithDuration:(double)duration
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  effects = self->_effects;
  v6 = [(NSMutableArray *)effects countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(effects);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([objc_msgSend(v10 effectAttributeForKey:{@"matchTransitionToPhase", "BOOLValue"}])
        {
          [v10 phaseInDuration];
          v12 = v11;
          [(MPEffectContainer *)self introTransitionDuration];
          v14 = v13;
          v15 = v12 - v13;
          [v10 phaseOutDuration];
          v17 = v16 - duration;
          [v10 mainDuration];
          v19 = v18;
          if (v17 == 0.0)
          {
            if (v15 == 0.0)
            {
              continue;
            }
          }

          else
          {
            [v10 setPhaseOutDuration:duration];
            if (v15 == 0.0)
            {
              goto LABEL_12;
            }
          }

          [v10 setPhaseInDuration:v14];
LABEL_12:
          [v10 setMainDuration:v17 + v15 + v19];
          continue;
        }
      }

      v7 = [(NSMutableArray *)effects countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }
}

- (void)cleanup
{
  [(MPEffectContainer *)self removeAllEffects];
  [(MPEffectContainer *)self removeAllFilters];
  [(MPEffectContainer *)self setTransition:0];

  [(MPEffectContainer *)self setAudioPlaylist:0];
}

- (void)setContainerPlug:(id)plug
{
  containerPlug = self->_containerPlug;
  if (containerPlug)
  {

    self->_containerPlug = 0;
  }

  plugCopy = plug;
  self->_containerPlug = plugCopy;
  if (plugCopy)
  {
    if ([(NSMutableArray *)self->_effects count]== &dword_0 + 1)
    {
      lastObject = [(NSMutableArray *)self->_effects lastObject];
      [lastObject phaseInDuration];
      [(MCPlug *)self->_containerPlug setPhaseInDuration:?];
      [lastObject phaseOutDuration];
      [(MCPlug *)self->_containerPlug setPhaseOutDuration:?];
      [lastObject mainDuration];
    }

    else
    {
      [(MPEffectContainer *)self duration];
    }

    [(MCPlug *)self->_containerPlug setLoopDuration:?];
    shouldBeParallelizer = [(MPEffectContainer *)self shouldBeParallelizer];
    containerParallelizer = self->_containerParallelizer;
    if (shouldBeParallelizer)
    {
      if (!containerParallelizer)
      {
        [(MPEffectContainer *)self convertFromEffectContainerToParallelizer];
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      effects = self->_effects;
      v22 = [(NSMutableArray *)effects countByEnumeratingWithState:&v51 objects:v58 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = 0;
        v25 = *v52;
        do
        {
          v26 = 0;
          v27 = v24;
          do
          {
            if (*v52 != v25)
            {
              objc_enumerationMutation(effects);
            }

            v28 = *(*(&v51 + 1) + 8 * v26);
            v29 = [-[MPLayer montage](self->_parentLayer "montage")];
            v30 = [(MCContainerParallelizer *)self->_containerParallelizer setPlugForContainer:v29 forID:+[MPUtilities stringWithNewUUID]];
            [v28 setPlug:v30];
            [v28 setContainer:v29];
            v24 = v27 + 1;
            [v30 setZIndex:v27];
            v26 = v26 + 1;
            ++v27;
          }

          while (v23 != v26);
          v23 = [(NSMutableArray *)effects countByEnumeratingWithState:&v51 objects:v58 count:16];
        }

        while (v23);
      }
    }

    else
    {
      if (containerParallelizer)
      {
      }

      self->_containerParallelizer = 0;
      v31 = [-[MPLayer montage](self->_parentLayer "montage")];
      [(MCPlug *)self->_containerPlug setContainer:v31];
      lastObject2 = [(NSMutableArray *)self->_effects lastObject];
      [lastObject2 setPlug:0];
      [lastObject2 setContainer:v31];
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    filters = self->_filters;
    v34 = [(NSMutableArray *)filters countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v48;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v48 != v36)
          {
            objc_enumerationMutation(filters);
          }

          [*(*(&v47 + 1) + 8 * i) setFilter:{-[MCPlug addFilterWithFilterID:](self->_containerPlug, "addFilterWithFilterID:", objc_msgSend(*(*(&v47 + 1) + 8 * i), "filterID"))}];
        }

        v35 = [(NSMutableArray *)filters countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v35);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      transition = self->_transition;
      if (transition)
      {
        [(MCPlug *)self->_containerPlug setTransitionID:[(MPTransition *)transition transitionID]];
        [(MPTransition *)self->_transition duration];
        [(MCPlug *)self->_containerPlug setTransitionDuration:?];
        [(MPTransition *)self->_transition applyFormattedAttributes];
      }
    }
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v8 = self->_effects;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v43 objects:v56 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      do
      {
        for (j = 0; j != v10; j = j + 1)
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v43 + 1) + 8 * j);
          [v13 setPlug:0];
          [v13 setContainer:0];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v43 objects:v56 count:16];
      }

      while (v10);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = self->_filters;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v39 objects:v55 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v40;
      do
      {
        for (k = 0; k != v16; k = k + 1)
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v39 + 1) + 8 * k) setFilter:0];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v39 objects:v55 count:16];
      }

      while (v16);
    }
  }
}

- (void)setContainerParallelizer:(id)parallelizer
{
  containerParallelizer = self->_containerParallelizer;
  if (containerParallelizer)
  {

    self->_containerParallelizer = 0;
  }

  parallelizerCopy = parallelizer;
  self->_containerParallelizer = parallelizerCopy;
  if (parallelizerCopy)
  {
    [(MCContainerParallelizer *)parallelizerCopy setBackgroundColor:self->_backgroundColor];
    audioPlaylist = self->_audioPlaylist;
    if (!audioPlaylist)
    {
      return;
    }

    [(MPAudioPlaylist *)audioPlaylist setMontage:[(MPLayer *)self->_parentLayer montage]];
    v8 = self->_audioPlaylist;
    audioPlaylistCreateIfNeeded = [(MCContainer *)self->_containerParallelizer audioPlaylistCreateIfNeeded];
    v10 = v8;
  }

  else
  {
    v11 = self->_audioPlaylist;
    if (!v11)
    {
      return;
    }

    [(MPAudioPlaylist *)v11 setMontage:0];
    v10 = self->_audioPlaylist;
    audioPlaylistCreateIfNeeded = 0;
  }

  [(MPAudioPlaylist *)v10 setAudioPlaylist:audioPlaylistCreateIfNeeded];
}

- (void)setContainerEffect:(id)effect
{
  lastObject = [(NSMutableArray *)self->_effects lastObject];
  [lastObject setPlug:0];

  [lastObject setContainer:effect];
}

- (void)setParentLayer:(id)layer
{
  if (layer && self->_parentLayer)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"An effect container may one have one parent.  Please remove it first.  This is unsupported." userInfo:0, v3, v4]);
  }

  self->_transitionDisconnected = 0;
  self->_parentLayer = layer;
}

- (BOOL)shouldBeParallelizer
{
  if ([(NSMutableArray *)self->_effects count]== &dword_0 + 1 && ![(MPEffectContainer *)self backgroundCGColor]&& ![(MPEffectContainer *)self audioPlaylist])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    effects = self->_effects;
    v3 = [(NSMutableArray *)effects countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (!v3)
    {
      return v3;
    }

    v5 = v3;
    v6 = *v10;
LABEL_8:
    v7 = 0;
    while (1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(effects);
      }

      if ([*(*(&v9 + 1) + 8 * v7) needsParallelizer])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSMutableArray *)effects countByEnumeratingWithState:&v9 objects:v13 count:16];
        LOBYTE(v3) = 0;
        if (v5)
        {
          goto LABEL_8;
        }

        return v3;
      }
    }
  }

  LOBYTE(v3) = 1;
  return v3;
}

- (void)convertFromParallelizerToEffectContainer
{
  if (![(MPEffectContainer *)self shouldBeParallelizer]&& self->_containerPlug)
  {
    v3 = [-[MPEffectContainer parentLayer](self "parentLayer")];
    [objc_msgSend(v3 "montage")];
    lastObject = [(NSMutableArray *)self->_effects lastObject];
    [objc_msgSend(lastObject "plug")];
    v6 = v5;
    [objc_msgSend(lastObject "plug")];
    v8 = v7;
    [objc_msgSend(lastObject "plug")];
    v10 = v9;
    container = [lastObject container];
    if (container)
    {
      v12 = container;
      [container specialRetain];
      -[MCContainerParallelizer removePlug:](self->_containerParallelizer, "removePlug:", [lastObject plug]);
      [(MCPlug *)self->_containerPlug setContainer:v12];
      [v12 specialRelease];
    }

    [(MCPlug *)self->_containerPlug setPhaseInDuration:v6];
    [(MCPlug *)self->_containerPlug setPhaseOutDuration:v10];
    [(MCPlug *)self->_containerPlug setLoopDuration:v8];
    containerParallelizer = self->_containerParallelizer;
    if (containerParallelizer)
    {

      self->_containerParallelizer = 0;
    }

    [lastObject setPlug:0];
    montage = [v3 montage];

    [montage unlock];
  }
}

- (void)convertFromEffectContainerToParallelizer
{
  v3 = [-[MPEffectContainer parentLayer](self "parentLayer")];
  [objc_msgSend(v3 "montage")];
  v4 = [(NSMutableArray *)self->_effects objectAtIndex:0];
  v5 = [objc_msgSend(v4 "container")];
  containerParallelizer = self->_containerParallelizer;
  if (containerParallelizer)
  {

    self->_containerParallelizer = 0;
  }

  v7 = [-[MPLayer montage](self->_parentLayer "montage")];
  self->_containerParallelizer = v7;
  [(MCPlug *)self->_containerPlug setContainer:v7];
  v8 = [(MCContainerParallelizer *)self->_containerParallelizer setPlugForContainer:v5 forID:+[MPUtilities stringWithNewUUID]];
  [v5 specialRelease];
  [(MCPlug *)self->_containerPlug loopDuration];
  [v8 setLoopDuration:?];
  [(MCPlug *)self->_containerPlug phaseInDuration];
  [v8 setPhaseInDuration:?];
  [(MCPlug *)self->_containerPlug phaseOutDuration];
  [v8 setPhaseOutDuration:?];
  containerPlug = self->_containerPlug;
  [(MCPlug *)containerPlug phaseInDuration];
  v11 = v10;
  [(MCPlug *)self->_containerPlug phaseOutDuration];
  v13 = v11 + v12;
  [(MCPlug *)containerPlug loopDuration];
  [(MCPlug *)containerPlug setLoopDuration:v14 + v13];
  [(MCPlug *)self->_containerPlug setPhaseInDuration:0.0];
  [(MCPlug *)self->_containerPlug setPhaseOutDuration:0.0];
  [v4 setPlug:v8];
  montage = [v3 montage];

  [montage unlock];
}

- (void)calculateDurationToSmallest:(BOOL)smallest
{
  smallestCopy = smallest;
  v5 = [(NSMutableArray *)self->_effects count];
  effects = self->_effects;
  if (v5 == &dword_0 + 1)
  {
    lastObject = [(NSMutableArray *)effects lastObject];
    [lastObject phaseInDuration];
    v9 = v8;
    [lastObject phaseOutDuration];
    v11 = v10;
    [lastObject mainDuration];
    v13 = v12;
    v14 = v9 + v11 + v12;
    [(MPEffectContainer *)self duration];
    if (v14 != v15)
    {
      v16 = v15;
      [(MPEffectContainer *)self willChangeValueForKey:@"duration"];
      self->_duration = v14;
      [(MPEffectContainer *)self didChangeValueForKey:@"duration"];
      parentLayer = self->_parentLayer;
      if (parentLayer)
      {
        [(MPLayer *)parentLayer duration];
        [(MPLayer *)self->_parentLayer setDuration:v14 - v16 + v18];
      }

      containerPlug = self->_containerPlug;
      if (containerPlug)
      {
        [(MCPlug *)containerPlug phaseInDuration];
        if (v20 != v9)
        {
          [(MCPlug *)self->_containerPlug setPhaseInDuration:v9];
        }

        [(MCPlug *)self->_containerPlug phaseOutDuration];
        if (v21 != v11)
        {
          [(MCPlug *)self->_containerPlug setPhaseOutDuration:v11];
        }

        [(MCPlug *)self->_containerPlug loopDuration];
        if (v22 != v13)
        {
          v23 = self->_containerPlug;

          [(MCPlug *)v23 setLoopDuration:v13];
        }
      }
    }
  }

  else if ([(NSMutableArray *)effects count]>= 2)
  {
    [-[NSMutableArray objectAtIndex:](self->_effects objectAtIndex:{0), "fullDuration"}];
    v25 = v24;
    if (smallestCopy)
    {
      v58 = 0uLL;
      v59 = 0uLL;
      v56 = 0uLL;
      v57 = 0uLL;
      v26 = self->_effects;
      v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v56 objects:v62 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v57;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v57 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [*(*(&v56 + 1) + 8 * i) fullDuration];
            if (v31 < v25)
            {
              v25 = v31;
            }
          }

          v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v56 objects:v62 count:16];
        }

        while (v28);
      }
    }

    else
    {
      v54 = 0uLL;
      v55 = 0uLL;
      v52 = 0uLL;
      v53 = 0uLL;
      v32 = self->_effects;
      v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v53;
        do
        {
          for (j = 0; j != v34; j = j + 1)
          {
            if (*v53 != v35)
            {
              objc_enumerationMutation(v32);
            }

            [*(*(&v52 + 1) + 8 * j) fullDuration];
            if (v37 > v25)
            {
              v25 = v37;
            }
          }

          v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v52 objects:v61 count:16];
        }

        while (v34);
      }
    }

    [(MPEffectContainer *)self duration];
    v39 = v38;
    [(MPEffectContainer *)self willChangeValueForKey:@"duration"];
    self->_duration = v25;
    [(MPEffectContainer *)self didChangeValueForKey:@"duration"];
    v40 = self->_parentLayer;
    if (v40)
    {
      [(MPLayer *)v40 duration];
      [(MPLayer *)self->_parentLayer setDuration:v25 - v39 + v41];
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v42 = self->_effects;
    v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v48 objects:v60 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v49;
      do
      {
        for (k = 0; k != v44; k = k + 1)
        {
          if (*v49 != v45)
          {
            objc_enumerationMutation(v42);
          }

          [*(*(&v48 + 1) + 8 * k) scaleMainDuration];
        }

        v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v48 objects:v60 count:16];
      }

      while (v44);
    }

    v47 = self->_containerPlug;
    if (v47)
    {
      [(MCPlug *)v47 setLoopDuration:v25];
    }
  }
}

- (void)setUserInfoAttribute:(id)attribute forKey:(id)key
{
  attributes = self->_attributes;
  if (!attributes)
  {
    attributes = objc_alloc_init(NSMutableDictionary);
    self->_attributes = attributes;
  }

  [(NSMutableDictionary *)attributes setObject:attribute forKey:key];
}

- (int64_t)slideCount
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  effects = self->_effects;
  v3 = [(NSMutableArray *)effects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v10;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(effects);
      }

      v5 += [*(*(&v9 + 1) + 8 * i) countOfSlides];
    }

    v4 = [(NSMutableArray *)effects countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v4);
  return v5;
}

- (int64_t)textCount
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  effects = self->_effects;
  v3 = [(NSMutableArray *)effects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v10;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(effects);
      }

      v5 += [*(*(&v9 + 1) + 8 * i) countOfTexts];
    }

    v4 = [(NSMutableArray *)effects countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v4);
  return v5;
}

- (id)nearestLayerGroup
{
  parentLayer = [(MPEffectContainer *)self parentLayer];
  objc_opt_class();
  while ((objc_opt_isKindOfClass() & 1) == 0 && parentLayer)
  {
    parentLayer = [parentLayer parent];
    objc_opt_class();
  }

  return parentLayer;
}

- (void)insertObject:(id)object inEffectsAtIndex:(int64_t)index
{
  v6 = [NSArray arrayWithObject:object];

  [(MPEffectContainer *)self insertEffects:v6 atIndex:index];
}

- (void)removeObjectFromEffectsAtIndex:(int64_t)index
{
  v4 = [NSIndexSet indexSetWithIndex:index];

  [(MPEffectContainer *)self removeEffectsAtIndices:v4];
}

- (void)replaceObjectInEffectsAtIndex:(int64_t)index withObject:(id)object
{
  [(MPEffectContainer *)self removeEffectsAtIndices:[NSIndexSet indexSetWithIndex:?]];
  v7 = [NSArray arrayWithObject:object];

  [(MPEffectContainer *)self insertEffects:v7 atIndex:index];
}

- (void)insertObject:(id)object inFiltersAtIndex:(int64_t)index
{
  v6 = [NSArray arrayWithObject:object];

  [(MPEffectContainer *)self insertFilters:v6 atIndex:index];
}

- (void)removeObjectFromFiltersAtIndex:(int64_t)index
{
  v4 = [NSIndexSet indexSetWithIndex:index];

  [(MPEffectContainer *)self removeFiltersAtIndices:v4];
}

- (void)replaceObjectInFiltersAtIndex:(int64_t)index withObject:(id)object
{
  [(MPEffectContainer *)self removeFiltersAtIndices:[NSIndexSet indexSetWithIndex:?]];
  v7 = [NSArray arrayWithObject:object];

  [(MPEffectContainer *)self insertFilters:v7 atIndex:index];
}

- (id)scriptingTransition
{
  if (self->_transition)
  {
    v4 = +[NSMutableDictionary dictionary];
    [v4 setObject:-[MPTransition transitionID](self->_transition forKey:{"transitionID"), @"transitionID"}];
    [v4 setObject:-[MPTransition presetID](self->_transition forKey:{"presetID"), @"presetID"}];
    [(MPTransition *)self->_transition duration];
    [v4 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"duration"}];
    return v4;
  }

  else
  {

    return +[NSDictionary dictionary];
  }
}

- (void)setScriptingTransition:(id)transition
{
  if ([transition objectForKey:@"transitionID"])
  {
    if ([objc_msgSend(transition objectForKey:{@"transitionID", "isEqualToString:", &stru_1AC858}])
    {
      v5 = 0;
    }

    else
    {
      v5 = +[MPTransition transitionWithTransitionID:](MPTransition, "transitionWithTransitionID:", [transition objectForKey:@"transitionID"]);
      if ([transition objectForKey:@"presetID"])
      {
        -[MPTransition setPresetID:](v5, "setPresetID:", [transition objectForKey:@"presetID"]);
      }

      if ([transition objectForKey:@"duration"])
      {
        [objc_msgSend(transition objectForKey:{@"duration", "doubleValue"}];
        [(MPTransition *)v5 setDuration:?];
      }
    }

    [(MPEffectContainer *)self setTransition:v5];
  }
}

@end