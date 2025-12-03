@interface MPNavigator
- (CGPoint)position;
- (CGSize)size;
- (MPNavigator)init;
- (id)actionableObjectForID:(id)d;
- (id)allSlides:(BOOL)slides;
- (id)allSongs;
- (id)copyWithZone:(_NSZone *)zone;
- (id)layerKey;
- (id)navigatorKey;
- (id)parentDocument;
- (int64_t)zIndex;
- (void)cleanup;
- (void)configureActions;
- (void)copyActions:(id)actions;
- (void)copyAnimationPaths:(id)paths;
- (void)copyLayers:(id)layers;
- (void)copyStruct:(id)struct;
- (void)dealloc;
- (void)reconnectAll;
- (void)removeActionForKey:(id)key;
- (void)removeAllLayers;
- (void)removeAnimationPathForKey:(id)key;
- (void)removeLayerForKey:(id)key;
- (void)setAction:(id)action forKey:(id)key;
- (void)setAnimationPath:(id)path forKey:(id)key;
- (void)setContainer:(id)container;
- (void)setDuration:(double)duration;
- (void)setInitialLayer:(id)layer;
- (void)setIsTriggered:(BOOL)triggered;
- (void)setLayer:(id)layer forKey:(id)key;
- (void)setNumberOfLoops:(double)loops;
- (void)setOpacity:(double)opacity;
- (void)setParent:(id)parent;
- (void)setPhaseInDuration:(double)duration;
- (void)setPhaseOutDuration:(double)duration;
- (void)setPlug:(id)plug;
- (void)setPosition:(CGPoint)position;
- (void)setRotationAngle:(double)angle;
- (void)setScale:(double)scale;
- (void)setSize:(CGSize)size;
- (void)setStartsPaused:(BOOL)paused;
- (void)setTimeIn:(double)in;
- (void)setXRotationAngle:(double)angle;
- (void)setYRotationAngle:(double)angle;
- (void)setZIndex:(int64_t)index;
- (void)setZPosition:(double)position;
@end

@implementation MPNavigator

- (MPNavigator)init
{
  v5.receiver = self;
  v5.super_class = MPNavigator;
  v2 = [(MPNavigator *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MPNavigatorInternal);
    v2->_animationPaths = 0;
    v2->_layers = 0;
    v2->_actions = 0;
    v2->_internal = v3;
    [(MPNavigatorInternal *)v2->_internal setUuid:+[MPUtilities stringWithNewUUID]];
    [(MPNavigatorInternal *)v2->_internal setLayerKeyDictionary:objc_alloc_init(NSMutableDictionary)];
    [(MPNavigatorInternal *)v2->_internal setStartPlugID:0];
    [(MPNavigatorInternal *)v2->_internal setOpacity:1.0];
    [(MPNavigatorInternal *)v2->_internal setPosition:CGPointZero.x, CGPointZero.y];
    [(MPNavigatorInternal *)v2->_internal setZPosition:0.0];
    [(MPNavigatorInternal *)v2->_internal setSize:2.0, 2.0];
    [(MPNavigatorInternal *)v2->_internal setXRotationAngle:0.0];
    [(MPNavigatorInternal *)v2->_internal setYRotationAngle:0.0];
    [(MPNavigatorInternal *)v2->_internal setYRotationAngle:0.0];
    [(MPNavigatorInternal *)v2->_internal setScale:1.0];
    [(MPNavigatorInternal *)v2->_internal setZIndex:0];
    [(MPNavigatorInternal *)v2->_internal setNumberOfLoops:1.0];
    [(MPNavigatorInternal *)v2->_internal setDuration:10000000.0];
    [(MPNavigatorInternal *)v2->_internal setTimeIn:0.0];
    [(MPNavigatorInternal *)v2->_internal setStartsPaused:0];
    [(MPNavigatorInternal *)v2->_internal setIsTriggered:0];
    [(MPNavigatorInternal *)v2->_internal setPhaseInDuration:0.0];
    [(MPNavigatorInternal *)v2->_internal setPhaseOutDuration:0.0];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 copyStruct:self->_internal];
  [v4 copyLayers:self->_layers];
  [v4 copyAnimationPaths:self->_animationPaths];
  [v4 copyActions:self->_actions];
  return v4;
}

- (void)dealloc
{
  [(MPNavigator *)self cleanup];

  self->_internal = 0;
  self->_navigator = 0;

  self->_plug = 0;
  self->_animationPaths = 0;

  self->_layers = 0;
  self->_actions = 0;
  v3.receiver = self;
  v3.super_class = MPNavigator;
  [(MPNavigator *)&v3 dealloc];
}

- (id)navigatorKey
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  layerKeyDictionary = [self->_parent layerKeyDictionary];
  uuid = [(MPNavigator *)self uuid];

  return [layerKeyDictionary objectForKey:uuid];
}

- (id)layerKey
{
  if (![-[MPNavigator parent](self "parent")])
  {
    return 0;
  }

  v3 = [-[MPNavigator parent](self "parent")];
  uuid = [(MPNavigator *)self uuid];

  return [v3 objectForKey:uuid];
}

- (void)setLayer:(id)layer forKey:(id)key
{
  if ([(NSMutableDictionary *)self->_layers objectForKey:key])
  {
    [(MPNavigator *)self removeLayerForKey:key];
  }

  if (!self->_layers)
  {
    self->_layers = objc_alloc_init(NSMutableDictionary);
  }

  [layer setParent:self];
  [(NSMutableDictionary *)self->_layers setObject:layer forKey:key];
  -[NSMutableDictionary setObject:forKey:](-[MPNavigatorInternal layerKeyDictionary](self->_internal, "layerKeyDictionary"), "setObject:forKey:", key, [layer uuid]);
  if (self->_navigator)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = [-[MPNavigator parentDocument](self "parentDocument")];
    if (isKindOfClass)
    {
      createNavigatorContainer = [v8 createNavigatorContainer];
      v10 = [(MCContainerNavigator *)self->_navigator setPlugForContainer:createNavigatorContainer forID:key];
      [layer setContainer:createNavigatorContainer];
      [layer setPlug:v10];
    }

    else
    {
      createParallelizerContainer = [v8 createParallelizerContainer];
      v12 = [(MCContainerNavigator *)self->_navigator setPlugForContainer:createParallelizerContainer forID:key];
      [layer setContainer:createParallelizerContainer];
      [layer setPlug:v12];
      [layer resetDuration];
    }

    [-[MPNavigator parentDocument](self "parentDocument")];
    if (![(MPNavigatorInternal *)self->_internal startPlugID])
    {

      [(MPNavigator *)self setInitialLayer:key];
    }
  }
}

- (void)removeLayerForKey:(id)key
{
  v5 = [(NSMutableDictionary *)self->_layers objectForKey:?];
  v6 = v5;
  if (self->_navigator)
  {
    plug = [v5 plug];
    if (plug)
    {
      [(MCContainerNavigator *)self->_navigator removePlug:plug];
    }
  }

  [v6 setPlug:0];
  [v6 setContainer:0];
  [v6 setParent:0];
  -[NSMutableDictionary removeObjectForKey:](-[MPNavigatorInternal layerKeyDictionary](self->_internal, "layerKeyDictionary"), "removeObjectForKey:", [v6 uuid]);
  [(NSMutableDictionary *)self->_layers removeObjectForKey:key];
  if ([(NSString *)[(MPNavigatorInternal *)self->_internal startPlugID] isEqualToString:key])
  {
    if ([(NSMutableDictionary *)self->_layers count])
    {
      v8 = [-[NSMutableDictionary allKeys](self->_layers "allKeys")];
    }

    else
    {
      v8 = 0;
    }

    [(MPNavigator *)self setInitialLayer:v8];
  }
}

- (void)removeAllLayers
{
  v3 = [(NSMutableDictionary *)self->_layers copy];
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

        [(MPNavigator *)self removeLayerForKey:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setInitialLayer:(id)layer
{
  [(MPNavigatorInternal *)self->_internal setStartPlugID:?];
  navigator = self->_navigator;
  if (navigator)
  {
    if (layer)
    {
      v6 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->_layers objectForKey:{layer), "plug"), "idInSupercontainer"}];
      navigator = self->_navigator;
    }

    else
    {
      v6 = 0;
    }

    [(MCContainerNavigator *)navigator setStartPlugID:v6];
  }
}

- (void)setAnimationPath:(id)path forKey:(id)key
{
  if (path)
  {
    v7 = [(MPNavigator *)self animationPathForKey:key];
    if (v7)
    {
      v8 = v7;
      [v7 setParent:0];
      [v8 setAnimationPath:0];
    }

    if (!self->_animationPaths)
    {
      self->_animationPaths = objc_alloc_init(NSMutableDictionary);
    }

    [path setParent:self];
    [(NSMutableDictionary *)self->_animationPaths setObject:path forKey:key];
    plug = self->_plug;
    if (plug)
    {
      [(MCPlug *)plug removeAnimationPathForKey:key];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v11 = off_1A4CB0;
      if ((isKindOfClass & 1) == 0)
      {
        v11 = off_1A4CB8;
      }

      v12 = [(__objc2_class *)*v11 animationPathWithKey:key];
      [(MCPlug *)self->_plug addAnimationPath:v12];

      [path setAnimationPath:v12];
    }
  }

  else
  {

    [(MPNavigator *)self removeAnimationPathForKey:key];
  }
}

- (void)removeAnimationPathForKey:(id)key
{
  v5 = [(MPNavigator *)self animationPathForKey:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MCPlug *)self->_plug removeAnimationPathForKey:key];
      [v5 setAnimationPath:0];
    }
  }

  [v5 setParent:0];
  animationPaths = self->_animationPaths;

  [(NSMutableDictionary *)animationPaths removeObjectForKey:key];
}

- (void)setOpacity:(double)opacity
{
  [(MPNavigatorInternal *)self->_internal setOpacity:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlug *)plug setOpacity:opacity];
    }
  }
}

- (CGPoint)position
{
  [(MPNavigatorInternal *)self->_internal position];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  [(MPNavigatorInternal *)self->_internal setPosition:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlug *)plug setPosition:x, y];
    }
  }
}

- (void)setZPosition:(double)position
{
  [(MPNavigatorInternal *)self->_internal setZPosition:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlug *)plug setZPosition:position];
    }
  }
}

- (void)setRotationAngle:(double)angle
{
  [(MPNavigatorInternal *)self->_internal setRotationAngle:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlug *)plug setRotationAngle:angle];
    }
  }
}

- (CGSize)size
{
  [(MPNavigatorInternal *)self->_internal size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(MPNavigatorInternal *)self->_internal setSize:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlug *)plug setSize:width, height];
    }
  }
}

- (void)setXRotationAngle:(double)angle
{
  [(MPNavigatorInternal *)self->_internal setXRotationAngle:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlug *)plug setXRotationAngle:angle];
    }
  }
}

- (void)setYRotationAngle:(double)angle
{
  [(MPNavigatorInternal *)self->_internal setYRotationAngle:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlug *)plug setYRotationAngle:angle];
    }
  }
}

- (void)setScale:(double)scale
{
  [(MPNavigatorInternal *)self->_internal setScale:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlug *)plug setScale:scale];
    }
  }
}

- (int64_t)zIndex
{
  plug = self->_plug;
  if (plug)
  {
    return [(MCPlug *)plug zIndex];
  }

  internal = self->_internal;

  return [(MPNavigatorInternal *)internal zIndex];
}

- (void)setZIndex:(int64_t)index
{
  indexCopy = index;
  [(MPNavigatorInternal *)self->_internal setZIndex:?];
  if ([-[MPNavigator parent](self "parent")])
  {
    plug = self->_plug;
    if (plug)
    {

      [(MCPlug *)plug setZIndex:indexCopy];
    }
  }
}

- (void)setTimeIn:(double)in
{
  [(MPNavigatorInternal *)self->_internal setTimeIn:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlug *)plug setTimeIn:in];
    }
  }
}

- (void)setDuration:(double)duration
{
  [(MPNavigatorInternal *)self->_internal setDuration:?];
  if (self->_plug)
  {
    [(MPNavigatorInternal *)self->_internal phaseInDuration];
    v6 = duration - v5;
    [(MPNavigatorInternal *)self->_internal phaseOutDuration];
    v8 = v6 - v7;
    if (v8 < 0.0)
    {
      v8 = 0.0;
    }

    plug = self->_plug;

    [(MCPlug *)plug setLoopDuration:v8];
  }
}

- (void)setPhaseInDuration:(double)duration
{
  [(MPNavigatorInternal *)self->_internal setPhaseInDuration:?];
  plug = self->_plug;
  if (plug)
  {
    [(MCPlug *)plug setPhaseInDuration:duration];
    [(MPNavigatorInternal *)self->_internal duration];
    v7 = v6;
    [(MPNavigatorInternal *)self->_internal phaseInDuration];
    v9 = v7 - v8;
    [(MPNavigatorInternal *)self->_internal phaseOutDuration];
    v11 = v9 - v10;
    if (v11 < 0.0)
    {
      v11 = 0.0;
    }

    v12 = self->_plug;

    [(MCPlug *)v12 setLoopDuration:v11];
  }
}

- (void)setPhaseOutDuration:(double)duration
{
  [(MPNavigatorInternal *)self->_internal setPhaseOutDuration:?];
  plug = self->_plug;
  if (plug)
  {
    [(MCPlug *)plug setPhaseOutDuration:duration];
    [(MPNavigatorInternal *)self->_internal duration];
    v7 = v6;
    [(MPNavigatorInternal *)self->_internal phaseInDuration];
    v9 = v7 - v8;
    [(MPNavigatorInternal *)self->_internal phaseOutDuration];
    v11 = v9 - v10;
    if (v11 < 0.0)
    {
      v11 = 0.0;
    }

    v12 = self->_plug;

    [(MCPlug *)v12 setLoopDuration:v11];
  }
}

- (void)setNumberOfLoops:(double)loops
{
  [(MPNavigatorInternal *)self->_internal setNumberOfLoops:?];
  plug = self->_plug;
  if (plug)
  {
    [(MCPlug *)plug setNumberOfLoops:loops];
    [(MPNavigatorInternal *)self->_internal duration];
    v7 = v6;
    [(MPNavigatorInternal *)self->_internal phaseInDuration];
    v9 = v7 - v8;
    [(MPNavigatorInternal *)self->_internal phaseOutDuration];
    v11 = v9 - v10;
    if (v11 < 0.0)
    {
      v11 = 0.0;
    }

    v12 = self->_plug;

    [(MCPlug *)v12 setLoopDuration:v11];
  }
}

- (void)setIsTriggered:(BOOL)triggered
{
  triggeredCopy = triggered;
  [(MPNavigatorInternal *)self->_internal setIsTriggered:?];
  if (self->_plug)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plug = self->_plug;

      [(MCPlug *)plug setIsTriggered:triggeredCopy];
    }
  }
}

- (void)setStartsPaused:(BOOL)paused
{
  pausedCopy = paused;
  [(MPNavigatorInternal *)self->_internal setStartsPaused:?];
  plug = self->_plug;
  if (plug)
  {

    [(MCPlug *)plug setStartsPaused:pausedCopy];
  }
}

- (void)setAction:(id)action forKey:(id)key
{
  if (action)
  {
    v7 = [(MPNavigator *)self actionForKey:key];
    if (v7)
    {
      [v7 setParent:0];
    }

    if (!self->_actions)
    {
      self->_actions = objc_alloc_init(NSMutableDictionary);
    }

    [action setParent:self];
    [(NSMutableDictionary *)self->_actions setObject:action forKey:key];
    plug = self->_plug;
    if (plug)
    {
      v9 = [MPUtilities createMCAction:action forPlug:plug withKey:key];

      [action setAction:v9];
    }
  }

  else
  {

    [(MPNavigator *)self removeActionForKey:key];
  }
}

- (void)removeActionForKey:(id)key
{
  v5 = [(MPNavigator *)self actionForKey:?];
  plug = self->_plug;
  if (plug)
  {
    [(MCPlug *)plug removeActionForKey:key];
  }

  [v5 setParent:0];
  actions = self->_actions;

  [(NSMutableDictionary *)actions removeObjectForKey:key];
}

- (id)allSlides:(BOOL)slides
{
  slidesCopy = slides;
  v5 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  layers = self->_layers;
  v7 = [(NSMutableDictionary *)layers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(layers);
        }

        [v5 addObjectsFromArray:{objc_msgSend(-[NSMutableDictionary objectForKey:](self->_layers, "objectForKey:", *(*(&v12 + 1) + 8 * i)), "allSlides:", slidesCopy)}];
      }

      v8 = [(NSMutableDictionary *)layers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)allSongs
{
  v3 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  layers = self->_layers;
  v5 = [(NSMutableDictionary *)layers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(layers);
        }

        [v3 addObjectsFromArray:{objc_msgSend(-[NSMutableDictionary objectForKey:](self->_layers, "objectForKey:", *(*(&v10 + 1) + 8 * i)), "allSongs")}];
      }

      v6 = [(NSMutableDictionary *)layers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)parentDocument
{
  parent = [(MPNavigator *)self parent];
  objc_opt_class();
  while ((objc_opt_isKindOfClass() & 1) == 0 && parent)
  {
    parent = [parent parent];
    objc_opt_class();
  }

  return parent;
}

- (void)setParent:(id)parent
{
  if (parent && self->_parent)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"A layer may one have one parent.  Please remove it first.  This is unsupported." userInfo:0]);
  }

  self->_parent = parent;
  if (![(MPNavigatorInternal *)self->_internal uuid])
  {
    v4 = +[MPUtilities stringWithNewUUID];
    internal = self->_internal;

    [(MPNavigatorInternal *)internal setUuid:v4];
  }
}

- (void)configureActions
{
  if (-[MPNavigator parentDocument](self, "parentDocument") && ([-[MPNavigator parentDocument](self "parentDocument")] & 1) == 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    layers = self->_layers;
    v4 = [(NSMutableDictionary *)layers countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(layers);
          }

          [-[NSMutableDictionary objectForKey:](self->_layers objectForKey:{*(*(&v17 + 1) + 8 * i)), "configureActions"}];
        }

        v5 = [(NSMutableDictionary *)layers countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v5);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    actions = self->_actions;
    v9 = [(NSMutableDictionary *)actions countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (j = 0; j != v10; j = j + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(actions);
          }

          [-[NSMutableDictionary objectForKey:](self->_actions objectForKey:{*(*(&v13 + 1) + 8 * j)), "configureTarget"}];
        }

        v10 = [(NSMutableDictionary *)actions countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (void)setContainer:(id)container
{
  navigator = self->_navigator;
  if (navigator)
  {
    [(MCContainer *)navigator specialRelease];
    self->_navigator = 0;
  }

  self->_navigator = [container specialRetain];
}

- (void)setPlug:(id)plug
{
  plug = self->_plug;
  if (plug)
  {

    self->_plug = 0;
  }

  plugCopy = plug;
  self->_plug = plugCopy;
  if (plugCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MPNavigator *)self size];
      [(MCPlug *)self->_plug setSize:?];
      [(MPNavigator *)self position];
      [(MCPlug *)self->_plug setPosition:?];
      [(MCPlug *)self->_plug setAudioPriority:2];
      [(MPNavigator *)self zPosition];
      [(MCPlug *)self->_plug setZPosition:?];
      [(MPNavigator *)self rotationAngle];
      [(MCPlug *)self->_plug setRotationAngle:?];
      [(MPNavigator *)self xRotationAngle];
      [(MCPlug *)self->_plug setXRotationAngle:?];
      [(MPNavigator *)self yRotationAngle];
      [(MCPlug *)self->_plug setYRotationAngle:?];
      [(MPNavigator *)self scale];
      [(MCPlug *)self->_plug setScale:?];
      [(MPNavigator *)self opacity];
      [(MCPlug *)self->_plug setOpacity:?];
      [(MPNavigator *)self timeIn];
      [(MCPlug *)self->_plug setTimeIn:?];
      [(MCPlug *)self->_plug setIsTriggered:[(MPNavigator *)self isTriggered]];
      if ([-[MPNavigator parent](self "parent")])
      {
        [(MCPlug *)self->_plug setZIndex:[(MPNavigatorInternal *)self->_internal zIndex]];
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      animationPaths = self->_animationPaths;
      v8 = [(NSMutableDictionary *)animationPaths countByEnumeratingWithState:&v75 objects:v84 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v76;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v76 != v10)
            {
              objc_enumerationMutation(animationPaths);
            }

            v12 = *(*(&v75 + 1) + 8 * i);
            v13 = [(NSMutableDictionary *)self->_animationPaths objectForKey:v12];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = off_1A4CB0;
            }

            else
            {
              v14 = off_1A4CB8;
            }

            v15 = [(__objc2_class *)*v14 animationPathWithKey:v12];
            [(MCPlug *)self->_plug addAnimationPath:v15];
            [v13 setAnimationPath:v15];
          }

          v9 = [(NSMutableDictionary *)animationPaths countByEnumeratingWithState:&v75 objects:v84 count:16];
        }

        while (v9);
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      actions = self->_actions;
      v17 = [(NSMutableDictionary *)actions countByEnumeratingWithState:&v71 objects:v83 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v72;
        do
        {
          for (j = 0; j != v18; j = j + 1)
          {
            if (*v72 != v19)
            {
              objc_enumerationMutation(actions);
            }

            v21 = *(*(&v71 + 1) + 8 * j);
            v22 = [(NSMutableDictionary *)self->_actions objectForKey:v21];
            [v22 setAction:{+[MPUtilities createMCAction:forPlug:withKey:](MPUtilities, "createMCAction:forPlug:withKey:", v22, self->_plug, v21)}];
          }

          v18 = [(NSMutableDictionary *)actions countByEnumeratingWithState:&v71 objects:v83 count:16];
        }

        while (v18);
      }
    }

    [(MPNavigatorInternal *)self->_internal duration];
    v24 = v23;
    [(MPNavigatorInternal *)self->_internal phaseInDuration];
    v26 = v24 - v25;
    [(MPNavigatorInternal *)self->_internal phaseOutDuration];
    v28 = v26 - v27;
    if (v28 < 0.0)
    {
      v28 = 0.0;
    }

    [(MCPlug *)self->_plug setLoopDuration:v28];
    [(MPNavigatorInternal *)self->_internal numberOfLoops];
    [(MCPlug *)self->_plug setNumberOfLoops:?];
    [(MPNavigator *)self phaseInDuration];
    [(MCPlug *)self->_plug setPhaseInDuration:?];
    [(MPNavigator *)self phaseOutDuration];
    [(MCPlug *)self->_plug setPhaseOutDuration:?];
    [(MCPlug *)self->_plug setStartsPaused:[(MPNavigator *)self startsPaused]];
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    layers = self->_layers;
    v30 = [(NSMutableDictionary *)layers countByEnumeratingWithState:&v67 objects:v82 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v68;
      do
      {
        for (k = 0; k != v31; k = k + 1)
        {
          if (*v68 != v32)
          {
            objc_enumerationMutation(layers);
          }

          v34 = *(*(&v67 + 1) + 8 * k);
          v35 = [(NSMutableDictionary *)self->_layers objectForKey:v34];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v36 = [objc_msgSend(-[MPNavigator parentDocument](self "parentDocument")];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v36 = [objc_msgSend(-[MPNavigator parentDocument](self "parentDocument")];
          }

          v37 = v36;
          v38 = [(MCContainerNavigator *)self->_navigator setPlugForContainer:v36 forID:v34];
          [v35 setContainer:v37];
          [v35 setPlug:v38];
        }

        v31 = [(NSMutableDictionary *)layers countByEnumeratingWithState:&v67 objects:v82 count:16];
      }

      while (v31);
    }

    if ([(MPNavigatorInternal *)self->_internal startPlugID])
    {
      -[MCContainerNavigator setStartPlugID:](self->_navigator, "setStartPlugID:", [objc_msgSend(-[NSMutableDictionary objectForKey:](self->_layers objectForKey:{-[MPNavigatorInternal startPlugID](self->_internal, "startPlugID")), "plug"), "idInSupercontainer"}]);
    }

    [(MPNavigator *)self configureActions];
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    allValues = [(NSMutableDictionary *)self->_layers allValues];
    v40 = [allValues countByEnumeratingWithState:&v63 objects:v81 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v64;
      do
      {
        for (m = 0; m != v41; m = m + 1)
        {
          if (*v64 != v42)
          {
            objc_enumerationMutation(allValues);
          }

          v44 = *(*(&v63 + 1) + 8 * m);
          [v44 setPlug:0];
          [v44 setContainer:0];
        }

        v41 = [allValues countByEnumeratingWithState:&v63 objects:v81 count:16];
      }

      while (v41);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v45 = self->_animationPaths;
    v46 = [(NSMutableDictionary *)v45 countByEnumeratingWithState:&v59 objects:v80 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v60;
      do
      {
        for (n = 0; n != v47; n = n + 1)
        {
          if (*v60 != v48)
          {
            objc_enumerationMutation(v45);
          }

          [-[NSMutableDictionary objectForKey:](self->_animationPaths objectForKey:{*(*(&v59 + 1) + 8 * n)), "setAnimationPath:", 0}];
        }

        v47 = [(NSMutableDictionary *)v45 countByEnumeratingWithState:&v59 objects:v80 count:16];
      }

      while (v47);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v50 = self->_actions;
    v51 = [(NSMutableDictionary *)v50 countByEnumeratingWithState:&v55 objects:v79 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v56;
      do
      {
        for (ii = 0; ii != v52; ii = ii + 1)
        {
          if (*v56 != v53)
          {
            objc_enumerationMutation(v50);
          }

          [-[NSMutableDictionary objectForKey:](self->_actions objectForKey:{*(*(&v55 + 1) + 8 * ii)), "setAction:", 0}];
        }

        v52 = [(NSMutableDictionary *)v50 countByEnumeratingWithState:&v55 objects:v79 count:16];
      }

      while (v52);
    }
  }
}

- (void)cleanup
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  allValues = [(NSMutableDictionary *)self->_layers allValues];
  v4 = [allValues countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v26 + 1) + 8 * v7) cleanup];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v5);
  }

  [(MPNavigator *)self removeAllLayers];
  allKeys = [(NSMutableDictionary *)self->_animationPaths allKeys];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [allKeys countByEnumeratingWithState:&v22 objects:v31 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        [(MPNavigator *)self removeAnimationPathForKey:*(*(&v22 + 1) + 8 * v12)];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allKeys countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v10);
  }

  allKeys2 = [(NSMutableDictionary *)self->_actions allKeys];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = [allKeys2 countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(allKeys2);
        }

        [(MPNavigator *)self removeActionForKey:*(*(&v18 + 1) + 8 * v17)];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [allKeys2 countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v15);
  }

  self->_parent = 0;
}

- (void)copyStruct:(id)struct
{
  -[MPNavigatorInternal setStartPlugID:](self->_internal, "setStartPlugID:", [struct startPlugID]);
  [struct position];
  [(MPNavigatorInternal *)self->_internal setPosition:?];
  [struct size];
  [(MPNavigatorInternal *)self->_internal setSize:?];
  [struct zPosition];
  [(MPNavigatorInternal *)self->_internal setZPosition:?];
  [struct rotationAngle];
  [(MPNavigatorInternal *)self->_internal setRotationAngle:?];
  [struct xRotationAngle];
  [(MPNavigatorInternal *)self->_internal setXRotationAngle:?];
  [struct yRotationAngle];
  [(MPNavigatorInternal *)self->_internal setYRotationAngle:?];
  [struct scale];
  [(MPNavigatorInternal *)self->_internal setScale:?];
  [struct opacity];
  [(MPNavigatorInternal *)self->_internal setOpacity:?];
  -[MPNavigatorInternal setZIndex:](self->_internal, "setZIndex:", [struct zIndex]);
  [struct numberOfLoops];
  [(MPNavigatorInternal *)self->_internal setNumberOfLoops:?];
  [struct duration];
  [(MPNavigatorInternal *)self->_internal setDuration:?];
  [struct timeIn];
  [(MPNavigatorInternal *)self->_internal setTimeIn:?];
  -[MPNavigatorInternal setIsTriggered:](self->_internal, "setIsTriggered:", [struct isTriggered]);
  -[MPNavigatorInternal setStartsPaused:](self->_internal, "setStartsPaused:", [struct startsPaused]);
  [struct phaseInDuration];
  [(MPNavigatorInternal *)self->_internal setPhaseInDuration:?];
  [struct phaseOutDuration];
  [(MPNavigatorInternal *)self->_internal setPhaseOutDuration:?];
  internal = self->_internal;

  [(MPNavigatorInternal *)internal setUuid:0];
}

- (void)copyLayers:(id)layers
{
  v5 = +[NSMutableDictionary dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [layers countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(layers);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [objc_msgSend(layers objectForKey:{v10), "copy"}];
        [v5 setObject:v11 forKey:v10];
      }

      v7 = [layers countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v5);
        }

        -[MPNavigator setLayer:forKey:](self, "setLayer:forKey:", [v5 objectForKey:*(*(&v16 + 1) + 8 * j)], *(*(&v16 + 1) + 8 * j));
      }

      v13 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (void)copyAnimationPaths:(id)paths
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [paths countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(paths);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [objc_msgSend(paths objectForKey:{v9), "copy"}];
        [(MPNavigator *)self setAnimationPath:v10 forKey:v9];
      }

      v6 = [paths countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)copyActions:(id)actions
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(actions);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [objc_msgSend(actions objectForKey:{v9), "copy"}];
        [(MPNavigator *)self setAction:v10 forKey:v9];
      }

      v6 = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)reconnectAll
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  layers = self->_layers;
  v4 = [(NSMutableDictionary *)layers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(layers);
        }

        [-[NSMutableDictionary objectForKey:](self->_layers objectForKey:{*(*(&v8 + 1) + 8 * i)), "reconnectAll"}];
      }

      v5 = [(NSMutableDictionary *)layers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)actionableObjectForID:(id)d
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  layers = self->_layers;
  v6 = [(NSMutableDictionary *)layers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v14;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v14 != v8)
    {
      objc_enumerationMutation(layers);
    }

    v10 = [(NSMutableDictionary *)self->_layers objectForKey:*(*(&v13 + 1) + 8 * v9)];
    if ([objc_msgSend(v10 "uuid")])
    {
      return v10;
    }

    v11 = [v10 actionableObjectForID:d];
    if (v11)
    {
      return v11;
    }

    if (v7 == ++v9)
    {
      v7 = [(NSMutableDictionary *)layers countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = 0;
      if (v7)
      {
        goto LABEL_3;
      }

      return v10;
    }
  }
}

@end