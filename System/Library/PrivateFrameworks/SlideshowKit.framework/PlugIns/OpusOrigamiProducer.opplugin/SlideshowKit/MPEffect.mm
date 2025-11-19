@interface MPEffect
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (id)effectWithEffectID:(id)a3;
+ (id)effectWithEffectID:(id)a3 andPaths:(id)a4;
+ (id)effectWithEffectID:(id)a3 andStrings:(id)a4;
+ (id)effectWithEffectID:(id)a3 strings:(id)a4 paths:(id)a5;
- (BOOL)hasMovies;
- (BOOL)hasPanoramasInDocument:(id)a3;
- (BOOL)isLive;
- (BOOL)needsParallelizer;
- (CGPoint)position;
- (CGSize)size;
- (MPEffect)init;
- (MPEffect)initWithEffectID:(id)a3 andPaths:(id)a4;
- (MPEffect)initWithEffectID:(id)a3 andStrings:(id)a4;
- (MPEffect)initWithEffectID:(id)a3 strings:(id)a4 paths:(id)a5;
- (NSString)presetID;
- (double)fullDuration;
- (double)lowestDisplayTime;
- (id)_effectAttributes;
- (id)animationPathForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)effectAttributeForKey:(id)a3;
- (id)formattedAttributes;
- (id)fullDebugLog;
- (id)nearestLayerGroup;
- (id)nearestPlug;
- (id)objectID;
- (id)parentDocument;
- (id)plugID;
- (id)scriptingAnimations;
- (id)slideForMCSlide:(id)a3;
- (id)slideInformationWithDocument:(id)a3;
- (id)videoPaths;
- (int64_t)maxNumberOfSecondarySlides;
- (int64_t)maxNumberOfSlides;
- (int64_t)zIndex;
- (void)_updateEffectTimingWithDocument:(id)a3 forExport:(BOOL)a4;
- (void)_updateTiming:(BOOL)a3 forExport:(BOOL)a4;
- (void)addFilter:(id)a3;
- (void)addFilters:(id)a3;
- (void)addSecondarySlide:(id)a3;
- (void)addSecondarySlides:(id)a3;
- (void)addSlide:(id)a3;
- (void)addSlides:(id)a3;
- (void)addText:(id)a3;
- (void)addTexts:(id)a3;
- (void)applyFormattedAttributes;
- (void)cleanup;
- (void)copyAnimationPaths:(id)a3;
- (void)copyAudioPlaylist:(id)a3;
- (void)copyFilters:(id)a3;
- (void)copySecondarySlides:(id)a3;
- (void)copySlides:(id)a3;
- (void)copyTexts:(id)a3;
- (void)copyVars:(id)a3;
- (void)createSecondarySlidesWithPaths:(id)a3;
- (void)createSlidesWithPaths:(id)a3;
- (void)createTextsWithDefaultStrings;
- (void)createTextsWithStrings:(id)a3 secondLineFactor:(double)a4 fillIn:(BOOL)a5;
- (void)dealloc;
- (void)insertFilters:(id)a3 atIndex:(int64_t)a4;
- (void)insertObject:(id)a3 inFiltersAtIndex:(int64_t)a4;
- (void)insertObject:(id)a3 inSlidesAtIndex:(int64_t)a4;
- (void)insertObject:(id)a3 inTextsAtIndex:(int64_t)a4;
- (void)insertSecondarySlides:(id)a3 atIndex:(int64_t)a4;
- (void)insertSlides:(id)a3 atIndex:(int64_t)a4;
- (void)insertTexts:(id)a3 atIndex:(int64_t)a4;
- (void)moveFiltersFromIndices:(id)a3 toIndex:(int64_t)a4;
- (void)moveSlidesFromIndices:(id)a3 toIndex:(int64_t)a4;
- (void)moveTextsFromIndices:(id)a3 toIndex:(int64_t)a4;
- (void)reconfigureSlides;
- (void)removeAllFilters;
- (void)removeAllSecondarySlides;
- (void)removeAllSlides;
- (void)removeAllTexts;
- (void)removeAnimationPathForKey:(id)a3;
- (void)removeFiltersAtIndices:(id)a3;
- (void)removeObjectFromFiltersAtIndex:(int64_t)a3;
- (void)removeObjectFromSlidesAtIndex:(int64_t)a3;
- (void)removeObjectFromTextsAtIndex:(int64_t)a3;
- (void)removeSecondarySlidesAtIndices:(id)a3;
- (void)removeSlidesAtIndices:(id)a3;
- (void)removeTextsAtIndices:(id)a3;
- (void)replaceObjectInFiltersAtIndex:(int64_t)a3 withObject:(id)a4;
- (void)replaceObjectInSlidesAtIndex:(int64_t)a3 withObject:(id)a4;
- (void)replaceObjectInTextsAtIndex:(int64_t)a3 withObject:(id)a4;
- (void)replaceSlideAtIndex:(int64_t)a3 withSlide:(id)a4;
- (void)replaceTextsWitStrings:(id)a3;
- (void)scaleMainDuration;
- (void)setAnimationPath:(id)a3 forKey:(id)a4;
- (void)setAudioPlaylist:(id)a3;
- (void)setContainer:(id)a3;
- (void)setEffectAttribute:(id)a3 forKey:(id)a4;
- (void)setEffectAttributes:(id)a3;
- (void)setEffectID:(id)a3;
- (void)setFullDuration:(double)a3;
- (void)setHeight:(double)a3;
- (void)setMainDuration:(double)a3;
- (void)setOpacity:(double)a3;
- (void)setParentContainer:(id)a3;
- (void)setPhaseInDuration:(double)a3;
- (void)setPhaseOutDuration:(double)a3;
- (void)setPlug:(id)a3;
- (void)setPosition:(CGPoint)a3;
- (void)setPresetID:(id)a3;
- (void)setRandomSeed:(int64_t)a3;
- (void)setRotationAngle:(double)a3;
- (void)setScale:(double)a3;
- (void)setScriptingAnimations:(id)a3;
- (void)setSize:(CGSize)a3;
- (void)setWidth:(double)a3;
- (void)setXPosition:(double)a3;
- (void)setXRotationAngle:(double)a3;
- (void)setYPosition:(double)a3;
- (void)setYRotationAngle:(double)a3;
- (void)setZPosition:(double)a3;
- (void)updateEffectAttributes;
@end

@implementation MPEffect

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  if ([a3 isEqualToString:@"slides"])
  {
    return 0;
  }

  else
  {
    return [a3 isEqualToString:@"texts"] ^ 1;
  }
}

+ (id)effectWithEffectID:(id)a3
{
  v3 = [[a1 alloc] initWithEffectID:a3];

  return v3;
}

+ (id)effectWithEffectID:(id)a3 andPaths:(id)a4
{
  v4 = [[a1 alloc] initWithEffectID:a3 andPaths:a4];

  return v4;
}

+ (id)effectWithEffectID:(id)a3 andStrings:(id)a4
{
  v4 = [[a1 alloc] initWithEffectID:a3 andStrings:a4];

  return v4;
}

+ (id)effectWithEffectID:(id)a3 strings:(id)a4 paths:(id)a5
{
  v5 = [[a1 alloc] initWithEffectID:a3 strings:a4 paths:a5];

  return v5;
}

- (MPEffect)initWithEffectID:(id)a3 andPaths:(id)a4
{
  v6 = [(MPEffect *)self init];
  v7 = v6;
  if (v6)
  {
    effectID = v6->_effectID;
    if (effectID)
    {

      v7->_effectID = 0;
    }

    v7->_effectID = [a3 copy];
    presetID = v7->_presetID;
    if (presetID)
    {

      v7->_presetID = 0;
    }

    v7->_presetID = [@"Default" copy];
    v7->_supportsEffectTiming = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
    if ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")])
    {
      v7->_randomSeed = arc4random();
    }

    [(MPEffect *)v7 createSlidesWithPaths:a4];
    [(MPEffect *)v7 _updateTiming:0];
  }

  return v7;
}

- (MPEffect)initWithEffectID:(id)a3 andStrings:(id)a4
{
  v6 = [(MPEffect *)self init];
  v7 = v6;
  if (v6)
  {
    effectID = v6->_effectID;
    if (effectID)
    {

      v7->_effectID = 0;
    }

    v7->_effectID = [a3 copy];
    presetID = v7->_presetID;
    if (presetID)
    {

      v7->_presetID = 0;
    }

    v7->_presetID = [@"Default" copy];
    v7->_supportsEffectTiming = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
    if ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")])
    {
      v7->_randomSeed = arc4random();
    }

    [(MPEffect *)v7 createTextsWithStrings:a4 secondLineFactor:1.0];
    [(MPEffect *)v7 _updateTiming:0];
  }

  return v7;
}

- (MPEffect)initWithEffectID:(id)a3 strings:(id)a4 paths:(id)a5
{
  v8 = [(MPEffect *)self init];
  v9 = v8;
  if (v8)
  {
    effectID = v8->_effectID;
    if (effectID)
    {

      v9->_effectID = 0;
    }

    v9->_effectID = [a3 copy];
    presetID = v9->_presetID;
    if (presetID)
    {

      v9->_presetID = 0;
    }

    v9->_presetID = [@"Default" copy];
    v9->_supportsEffectTiming = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
    if ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")])
    {
      v9->_randomSeed = arc4random();
    }

    [(MPEffect *)v9 createTextsWithStrings:a4 secondLineFactor:1.0];
    [(MPEffect *)v9 createSlidesWithPaths:a5];
    [(MPEffect *)v9 _updateTiming:0];
  }

  return v9;
}

- (MPEffect)init
{
  v5.receiver = self;
  v5.super_class = MPEffect;
  v2 = [(MPEffect *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 5) = 0;
    *(v2 + 13) = 0x3FF0000000000000;
    *(v2 + 7) = CGPointZero;
    *(v2 + 8) = xmmword_1637E0;
    *(v2 + 18) = 0x4000000000000000;
    *(v2 + 20) = 0;
    *(v2 + 21) = 0;
    *(v2 + 22) = 0x3FF0000000000000;
    *(v2 + 184) = 0u;
    *(v2 + 200) = 0u;
    *(v2 + 232) = xmmword_1637F0;
    *(v2 + 27) = [@"Undefined" copy];
    *(v3 + 28) = [@"Default" copy];
    *(v3 + 8) = 0u;
    *(v3 + 24) = 0u;
    *(v3 + 3) = 0u;
    *(v3 + 4) = 0u;
    *(v3 + 73) = 0u;
    *(v3 + 31) = 0;
    *(v3 + 32) = 0;
    v3[264] = 0;
  }

  return v3;
}

- (id)description
{
  v3 = -[NSString stringByAppendingFormat:]([[+[NSString stringWithFormat:](NSString stringByAppendingFormat:@"============================= Effect %d Description ============================\n" stringByAppendingFormat:"stringByAppendingFormat:", @"\t                         ID: %@\n", [(MPEffect *)self effectID]], "stringByAppendingFormat:", @"\t                  Preset ID: %@\n", [(MPEffect *)self presetID]], "stringByAppendingFormat:", @"\t                 Attributes: %@\n", [(MPEffect *)self effectAttributes]);
  slides = self->_slides;
  if (slides)
  {
    slides = [(NSMutableArray *)slides count];
  }

  v5 = [(NSString *)v3 stringByAppendingFormat:@"\t                Slide Count: %d\n", slides];
  texts = self->_texts;
  if (texts)
  {
    texts = [(NSMutableArray *)texts count];
  }

  v7 = [(NSString *)v5 stringByAppendingFormat:@"\t                 Text Count: %d\n", texts];
  filters = self->_filters;
  if (filters)
  {
    filters = [(NSMutableArray *)filters count];
  }

  v9 = [(NSString *)v7 stringByAppendingFormat:@"\t               Filter Count: %d\n", filters];
  [(MPEffect *)self mainDuration];
  v11 = [(NSString *)v9 stringByAppendingFormat:@"\t              Main Duration: %f\n", v10];
  [(MPEffect *)self phaseInDuration];
  v13 = [(NSString *)v11 stringByAppendingFormat:@"\t          Phase In Duration: %f\n", v12];
  [(MPEffect *)self phaseOutDuration];
  v15 = [(NSString *)v13 stringByAppendingFormat:@"\t         Phase Out Duration: %f\n", v14];
  [(MPEffect *)self opacity];
  v17 = [(NSString *)v15 stringByAppendingFormat:@"\t                    Opacity: %f\n", v16];
  [(MPEffect *)self position];
  v18 = [(NSString *)v17 stringByAppendingFormat:@"\t                   Position: %@\n", NSStringFromCGPoint(v32)];
  [(MPEffect *)self size];
  v19 = [(NSString *)v18 stringByAppendingFormat:@"\t                       Size: %@\n", NSStringFromCGSize(v33)];
  [(MPEffect *)self zPosition];
  v21 = [v19 stringByAppendingFormat:@"\t                 Z Position: %f\n", v20];
  [(MPEffect *)self xRotationAngle];
  v23 = [v21 stringByAppendingFormat:@"\t           X Rotation Angle: %f\n", v22];
  [(MPEffect *)self yRotationAngle];
  v25 = [v23 stringByAppendingFormat:@"\t           Y Rotation Angle: %f\n", v24];
  [(MPEffect *)self rotationAngle];
  v27 = [v25 stringByAppendingFormat:@"\t           Z Rotation Angle: %f\n", v26];
  if (self->_plug)
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  v29 = [v27 stringByAppendingFormat:@"\t            Has Effect Plug: %@\n", v28];
  if (self->_container)
  {
    v30 = @"YES";
  }

  else
  {
    v30 = @"NO";
  }

  return [v29 stringByAppendingFormat:@"\t Has Effect EffectContainer: %@\n", v30];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 copyVars:self];
  [v4 copySlides:self->_slides];
  [v4 copySecondarySlides:self->_secondarySlides];
  [v4 copyTexts:self->_texts];
  [v4 copyFilters:self->_filters];
  [v4 copyAnimationPaths:self->_animationPaths];
  [v4 copyAudioPlaylist:self->_audioPlaylist];
  return v4;
}

- (void)dealloc
{
  [(MPEffect *)self cleanup];
  plug = self->_plug;
  if (plug)
  {
  }

  self->_plug = 0;
  container = self->_container;
  if (container)
  {
  }

  self->_container = 0;

  self->_attributes = 0;
  self->_slides = 0;

  self->_secondarySlides = 0;
  self->_texts = 0;

  self->_animationPaths = 0;
  self->_filters = 0;

  self->_audioPlaylist = 0;
  self->_effectTiming = 0;

  self->_effectID = 0;
  self->_presetID = 0;

  self->_uuid = 0;
  v5.receiver = self;
  v5.super_class = MPEffect;
  [(MPEffect *)&v5 dealloc];
}

- (void)setEffectID:(id)a3
{
  effectID = self->_effectID;
  if (effectID)
  {

    self->_effectID = 0;
  }

  self->_effectID = [a3 copy];
  self->_supportsEffectTiming = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
  [(MPEffect *)self _updateTiming:1];
  if (self->_randomSeed == -1 && [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")])
  {
    self->_randomSeed = arc4random();
  }

  [(MPEffect *)self setPresetID:@"Default"];
  if (self->_replaceSlides)
  {
    [(MPEffect *)self reconfigureSlides];
  }

  container = self->_container;
  if (container)
  {

    [(MCContainerEffect *)container setEffectID:a3];
  }
}

- (NSString)presetID
{
  if (self->_presetID)
  {
    return self->_presetID;
  }

  else
  {
    return @"Default";
  }
}

- (void)setPresetID:(id)a3
{
  presetID = self->_presetID;
  if (presetID)
  {

    self->_presetID = 0;
  }

  self->_presetID = [a3 copy];
  attributes = self->_attributes;
  if (attributes)
  {

    self->_attributes = 0;
  }

  [(MPEffect *)self applyFormattedAttributes];
  if (self->_supportsEffectTiming)
  {

    [(MPEffect *)self _updateTiming:1];
  }
}

- (void)setEffectAttributes:(id)a3
{
  attributes = self->_attributes;
  if (attributes)
  {

    self->_attributes = 0;
  }

  self->_attributes = [a3 mutableCopy];
  [(MPEffect *)self applyFormattedAttributes];
  if (self->_supportsEffectTiming)
  {

    [(MPEffect *)self _updateTiming:1];
  }
}

- (id)effectAttributeForKey:(id)a3
{
  v4 = [(MPEffect *)self _effectAttributes];

  return [v4 objectForKey:a3];
}

- (void)setEffectAttribute:(id)a3 forKey:(id)a4
{
  attributes = self->_attributes;
  if (!attributes)
  {
    attributes = objc_alloc_init(NSMutableDictionary);
    self->_attributes = attributes;
  }

  [(NSMutableDictionary *)attributes setValue:a3 forKey:a4];
  container = self->_container;
  if (container)
  {

    [(MCContainerEffect *)container setEffectAttribute:a3 forKey:a4];
  }
}

- (void)setOpacity:(double)a3
{
  self->_opacity = a3;
  if (self->_container)
  {
    if (a3 == 1.0 && self->_plug && (v5 = self->_parentContainer) != 0 && ![(MPEffectContainer *)v5 shouldBeParallelizer])
    {
      parentContainer = self->_parentContainer;

      [(MPEffectContainer *)parentContainer convertFromParallelizerToEffectContainer];
    }

    else
    {
      plug = self->_plug;
      if (a3 != 1.0 && plug == 0)
      {
        v8 = self->_parentContainer;

        [(MPEffectContainer *)v8 convertFromEffectContainerToParallelizer];
      }

      else if (plug)
      {

        [(MCPlugParallel *)plug setOpacity:a3];
      }
    }
  }
}

- (void)setScale:(double)a3
{
  self->_scale = a3;
  if (self->_container)
  {
    if (a3 != 1.0 && self->_plug && (v5 = self->_parentContainer) != 0 && ![(MPEffectContainer *)v5 shouldBeParallelizer])
    {
      parentContainer = self->_parentContainer;

      [(MPEffectContainer *)parentContainer convertFromParallelizerToEffectContainer];
    }

    else
    {
      plug = self->_plug;
      if (a3 == 1.0 && plug == 0)
      {
        v8 = self->_parentContainer;

        [(MPEffectContainer *)v8 convertFromEffectContainerToParallelizer];
      }

      else if (plug)
      {

        [(MCPlugParallel *)plug setScale:a3];
      }
    }
  }
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setPosition:(CGPoint)a3
{
  self->_position = a3;
  if (!self->_container)
  {
    return;
  }

  y = a3.y;
  x = a3.x;
  plug = self->_plug;
  if (a3.x != CGPointZero.x || a3.y != CGPointZero.y)
  {
    if (!plug)
    {
      parentContainer = self->_parentContainer;

      [(MPEffectContainer *)parentContainer convertFromEffectContainerToParallelizer];
      return;
    }

    goto LABEL_13;
  }

  if (!plug)
  {
    return;
  }

  if ([(MPEffect *)self needsParallelizer])
  {
    plug = self->_plug;
    if (!plug)
    {
      return;
    }

LABEL_13:

    [(MCPlugParallel *)plug setPosition:x, y];
    return;
  }

  v9 = self->_parentContainer;

  [(MPEffectContainer *)v9 convertFromParallelizerToEffectContainer];
}

- (void)setZPosition:(double)a3
{
  self->_zPosition = a3;
  if (self->_container)
  {
    if (a3 == 0.0 && self->_plug && (v5 = self->_parentContainer) != 0 && ![(MPEffectContainer *)v5 shouldBeParallelizer])
    {
      parentContainer = self->_parentContainer;

      [(MPEffectContainer *)parentContainer convertFromParallelizerToEffectContainer];
    }

    else
    {
      plug = self->_plug;
      if (a3 != 0.0 && plug == 0)
      {
        v8 = self->_parentContainer;

        [(MPEffectContainer *)v8 convertFromEffectContainerToParallelizer];
      }

      else if (plug)
      {

        [(MCPlugParallel *)plug setZPosition:a3];
      }
    }
  }
}

- (void)setRotationAngle:(double)a3
{
  self->_rotationAngle = a3;
  if (self->_container)
  {
    if (a3 == 0.0 && self->_plug && (v5 = self->_parentContainer) != 0 && ![(MPEffectContainer *)v5 shouldBeParallelizer])
    {
      parentContainer = self->_parentContainer;

      [(MPEffectContainer *)parentContainer convertFromParallelizerToEffectContainer];
    }

    else
    {
      plug = self->_plug;
      if (a3 != 0.0 && plug == 0)
      {
        v8 = self->_parentContainer;

        [(MPEffectContainer *)v8 convertFromEffectContainerToParallelizer];
      }

      else if (plug)
      {

        [(MCPlugParallel *)plug setRotationAngle:a3];
      }
    }
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setSize:(CGSize)a3
{
  self->_size = a3;
  if (!self->_container)
  {
    return;
  }

  height = a3.height;
  width = a3.width;
  plug = self->_plug;
  if (a3.width != 2.0 || a3.height != 2.0)
  {
    if (!plug)
    {
      parentContainer = self->_parentContainer;

      [(MPEffectContainer *)parentContainer convertFromEffectContainerToParallelizer];
      return;
    }

    goto LABEL_14;
  }

  if (!plug)
  {
    return;
  }

  if (!self->_parentContainer)
  {
LABEL_14:

    [(MCPlugParallel *)plug setSize:width, height];
    return;
  }

  if ([(MPEffectContainer *)self->_parentContainer shouldBeParallelizer])
  {
    plug = self->_plug;
    if (!plug)
    {
      return;
    }

    goto LABEL_14;
  }

  v9 = self->_parentContainer;

  [(MPEffectContainer *)v9 convertFromParallelizerToEffectContainer];
}

- (void)setXRotationAngle:(double)a3
{
  self->_xRotationAngle = a3;
  if (self->_container)
  {
    if (a3 == 0.0 && self->_plug && (v5 = self->_parentContainer) != 0 && ![(MPEffectContainer *)v5 shouldBeParallelizer])
    {
      parentContainer = self->_parentContainer;

      [(MPEffectContainer *)parentContainer convertFromParallelizerToEffectContainer];
    }

    else
    {
      plug = self->_plug;
      if (a3 != 0.0 && plug == 0)
      {
        v8 = self->_parentContainer;

        [(MPEffectContainer *)v8 convertFromEffectContainerToParallelizer];
      }

      else if (plug)
      {

        [(MCPlugParallel *)plug setXRotationAngle:a3];
      }
    }
  }
}

- (void)setYRotationAngle:(double)a3
{
  self->_yRotationAngle = a3;
  if (self->_container)
  {
    if (a3 == 0.0 && self->_plug && (v5 = self->_parentContainer) != 0 && ![(MPEffectContainer *)v5 shouldBeParallelizer])
    {
      parentContainer = self->_parentContainer;

      [(MPEffectContainer *)parentContainer convertFromParallelizerToEffectContainer];
    }

    else
    {
      plug = self->_plug;
      if (a3 != 0.0 && plug == 0)
      {
        v8 = self->_parentContainer;

        [(MPEffectContainer *)v8 convertFromEffectContainerToParallelizer];
      }

      else if (plug)
      {

        [(MCPlugParallel *)plug setYRotationAngle:a3];
      }
    }
  }
}

- (double)fullDuration
{
  [(MPEffect *)self phaseInDuration];
  v4 = v3;
  [(MPEffect *)self mainDuration];
  v6 = v4 + v5;
  [(MPEffect *)self phaseOutDuration];
  return v6 + v7;
}

- (void)setFullDuration:(double)a3
{
  [(MPEffect *)self fullDuration];
  v6 = v5 - a3;
  [(MPEffect *)self mainDuration];
  v8 = v7 + v6;

  [(MPEffect *)self setMainDuration:v8];
}

- (void)setPhaseInDuration:(double)a3
{
  if (a3 >= 0.0)
  {
    v3 = a3;
    [(MPEffect *)self phaseInDuration];
    if (v5 != v3)
    {
      v6 = [objc_msgSend(-[MPEffect parentContainer](self "parentContainer")];
      v7 = [(MPEffect *)self nearestLayerGroup];
      if (v7)
      {
        v8 = [v7 autoAdjustDuration];
      }

      else
      {
        v8 = 1;
      }

      if (self->_parentContainer)
      {
        if (([objc_msgSend(v6 documentAttributeForKey:{kMPDocumentEnforceSafeTiming), "BOOLValue"}] & v8) == 1)
        {
          [(MPEffect *)self phaseInDuration];
          v10 = v9 - v3;
          [(MPEffect *)self fullDuration];
          v12 = v11 - v10;
          [(MPEffectContainer *)self->_parentContainer findMinDuration];
          if (v12 < v13)
          {
            [(MPEffectContainer *)self->_parentContainer findMinDuration];
            v15 = v14;
            [(MPEffect *)self phaseOutDuration];
            v17 = v15 - v16;
            [(MPEffect *)self mainDuration];
            v3 = v17 - v18;
          }
        }
      }

      [(MPEffect *)self phaseInDuration];
      self->_phaseInDuration = v3;
      if (v8)
      {
        [(MPEffectContainer *)self->_parentContainer calculateDurationToSmallest:v3 < v19];
      }

      if (self->_container)
      {
        plug = self->_plug;
        if (!plug)
        {
          plug = [(MPEffectContainer *)self->_parentContainer plug];
        }

        [(MCPlug *)plug setPhaseInDuration:v3];
      }

      effectTiming = self->_effectTiming;
      if (effectTiming)
      {
        phaseOutDuration = self->_phaseOutDuration;
        mainDuration = self->_mainDuration;
        phaseInDuration = self->_phaseInDuration;

        [(MZEffectTiming *)effectTiming setPhaseInDuration:phaseInDuration mainDuration:mainDuration phaseOutDuration:phaseOutDuration];
      }
    }
  }
}

- (void)setPhaseOutDuration:(double)a3
{
  if (a3 >= 0.0)
  {
    v3 = a3;
    [(MPEffect *)self phaseOutDuration];
    if (v5 != v3)
    {
      v6 = [objc_msgSend(-[MPEffect parentContainer](self "parentContainer")];
      v7 = [(MPEffect *)self nearestLayerGroup];
      if (v7)
      {
        v8 = [v7 autoAdjustDuration];
      }

      else
      {
        v8 = 1;
      }

      if (self->_parentContainer)
      {
        if (([objc_msgSend(v6 documentAttributeForKey:{kMPDocumentEnforceSafeTiming), "BOOLValue"}] & v8) == 1)
        {
          [(MPEffect *)self phaseOutDuration];
          v10 = v9 - v3;
          [(MPEffect *)self fullDuration];
          v12 = v11 - v10;
          [(MPEffectContainer *)self->_parentContainer findMinDuration];
          if (v12 < v13)
          {
            [(MPEffectContainer *)self->_parentContainer findMinDuration];
            v15 = v14;
            [(MPEffect *)self phaseInDuration];
            v17 = v15 - v16;
            [(MPEffect *)self mainDuration];
            v3 = v17 - v18;
          }
        }
      }

      [(MPEffect *)self phaseOutDuration];
      self->_phaseOutDuration = v3;
      if (v8)
      {
        [(MPEffectContainer *)self->_parentContainer calculateDurationToSmallest:v3 < v19];
      }

      if (self->_container)
      {
        plug = self->_plug;
        if (!plug)
        {
          plug = [(MPEffectContainer *)self->_parentContainer plug];
        }

        [(MCPlug *)plug setPhaseOutDuration:v3];
      }

      effectTiming = self->_effectTiming;
      if (effectTiming)
      {
        phaseOutDuration = self->_phaseOutDuration;
        mainDuration = self->_mainDuration;
        phaseInDuration = self->_phaseInDuration;

        [(MZEffectTiming *)effectTiming setPhaseInDuration:phaseInDuration mainDuration:mainDuration phaseOutDuration:phaseOutDuration];
      }
    }
  }
}

- (void)setMainDuration:(double)a3
{
  if (a3 >= 0.0)
  {
    v3 = a3;
    [(MPEffect *)self mainDuration];
    if (v5 != v3)
    {
      v6 = [objc_msgSend(-[MPEffect parentContainer](self "parentContainer")];
      v7 = [(MPEffect *)self nearestLayerGroup];
      if (v7)
      {
        v8 = [v7 autoAdjustDuration];
      }

      else
      {
        v8 = 1;
      }

      if (self->_parentContainer)
      {
        if (([objc_msgSend(v6 documentAttributeForKey:{kMPDocumentEnforceSafeTiming), "BOOLValue"}] & v8) == 1)
        {
          [(MPEffect *)self mainDuration];
          v10 = v9 - v3;
          [(MPEffect *)self fullDuration];
          v12 = v11 - v10;
          [(MPEffectContainer *)self->_parentContainer findMinDuration];
          if (v12 < v13)
          {
            [(MPEffectContainer *)self->_parentContainer findMinDuration];
            v15 = v14;
            [(MPEffect *)self phaseInDuration];
            v17 = v15 - v16;
            [(MPEffect *)self phaseOutDuration];
            v3 = v17 - v18;
          }
        }
      }

      [(MPEffect *)self mainDuration];
      self->_mainDuration = v3;
      if (v8)
      {
        [(MPEffectContainer *)self->_parentContainer calculateDurationToSmallest:v3 < v19];
      }

      if (self->_container)
      {
        plug = self->_plug;
        if (!plug)
        {
          plug = [(MPEffectContainer *)self->_parentContainer plug];
        }

        [(MCPlug *)plug setLoopDuration:v3];
      }

      effectTiming = self->_effectTiming;
      if (effectTiming)
      {
        phaseOutDuration = self->_phaseOutDuration;
        mainDuration = self->_mainDuration;
        phaseInDuration = self->_phaseInDuration;

        [(MZEffectTiming *)effectTiming setPhaseInDuration:phaseInDuration mainDuration:mainDuration phaseOutDuration:phaseOutDuration];
      }
    }
  }
}

- (int64_t)zIndex
{
  parentContainer = self->_parentContainer;
  if (!parentContainer)
  {
    return -1;
  }

  if (self->_container)
  {
    return [(MCPlugParallel *)self->_plug zIndex];
  }

  v5 = [(MPEffectContainer *)parentContainer effects];

  return [v5 indexOfObject:self];
}

- (void)addSlide:(id)a3
{
  v6 = [[NSArray alloc] initWithObjects:{a3, 0}];
  slides = self->_slides;
  if (slides)
  {
    v5 = [(NSMutableArray *)slides count];
  }

  else
  {
    v5 = 0;
  }

  [(MPEffect *)self insertSlides:v6 atIndex:v5];
}

- (void)addSlides:(id)a3
{
  slides = self->_slides;
  if (slides)
  {
    v6 = [(NSMutableArray *)slides count];
  }

  else
  {
    v6 = 0;
  }

  [(MPEffect *)self insertSlides:a3 atIndex:v6];
}

- (void)insertSlides:(id)a3 atIndex:(int64_t)a4
{
  v7 = objc_autoreleasePoolPush();
  if (!self->_slides)
  {
    self->_slides = objc_alloc_init(NSMutableArray);
  }

  v8 = [[NSIndexSet alloc] initWithIndexesInRange:{a4, objc_msgSend(a3, "count")}];
  if (!self->_replaceSlides)
  {
    [(MPEffect *)self willChange:2 valuesAtIndexes:v8 forKey:@"slides"];
  }

  if ([(NSMutableArray *)self->_slides count])
  {
    v9 = [(MCContainerEffect *)self->_container isLive];
  }

  else
  {
    v9 = 0;
  }

  v59 = v8;
  [(NSMutableArray *)self->_slides insertObjects:a3 atIndexes:v8];
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v10 = [a3 countByEnumeratingWithState:&v81 objects:v90 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v82;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v82 != v12)
        {
          objc_enumerationMutation(a3);
        }

        [*(*(&v81 + 1) + 8 * i) setParent:self];
      }

      v11 = [a3 countByEnumeratingWithState:&v81 objects:v90 count:16];
    }

    while (v11);
  }

  if (self->_container)
  {
    v57 = v7;
    v14 = objc_alloc_init(NSMutableArray);
    if (v9)
    {
      a4 = [(MCContainerEffect *)self->_container nextAvailableSlideIndex];
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v15 = [a3 countByEnumeratingWithState:&v77 objects:v89 count:16];
    if (v15)
    {
      v16 = v15;
      v60 = *v78;
      v17 = -1;
      while (2)
      {
        v18 = 0;
        v19 = v17;
        do
        {
          if (*v78 != v60)
          {
            objc_enumerationMutation(a3);
          }

          v20 = [*(*(&v77 + 1) + 8 * v18) path];
          v21 = v20;
          v17 = v20 == 0;
          if (v19 != -1 && v19 != v17)
          {
            goto LABEL_36;
          }

          v18 = v18 + 1;
          v19 = v20 == 0;
        }

        while (v16 != v18);
        v16 = [a3 countByEnumeratingWithState:&v77 objects:v89 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      if (!v21)
      {
LABEL_36:
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v27 = [a3 countByEnumeratingWithState:&v73 objects:v88 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v74;
          do
          {
            for (j = 0; j != v28; j = j + 1)
            {
              if (*v74 != v29)
              {
                objc_enumerationMutation(a3);
              }

              v31 = *(*(&v73 + 1) + 8 * j);
              if ([v31 path])
              {
                v32 = -[MCContainerEffect insertSlideForAsset:atIndex:](self->_container, "insertSlideForAsset:atIndex:", [objc_msgSend(-[MPEffectContainer parentLayer](self->_parentContainer "parentLayer")], a4);
              }

              else
              {
                v32 = [(MCContainerEffect *)self->_container insertSlideAtIndex:a4];
              }

              [v14 addObject:v32];
              if (v9)
              {
                a4 = [(MCContainerEffect *)self->_container nextAvailableSlideIndex];
              }

              else
              {
                ++a4;
              }
            }

            v28 = [a3 countByEnumeratingWithState:&v73 objects:v88 count:16];
          }

          while (v28);
        }

        goto LABEL_49;
      }
    }

    v22 = objc_alloc_init(NSMutableArray);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v23 = [a3 countByEnumeratingWithState:&v69 objects:v87 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v70;
      do
      {
        for (k = 0; k != v24; k = k + 1)
        {
          if (*v70 != v25)
          {
            objc_enumerationMutation(a3);
          }

          [v22 addObject:{objc_msgSend(objc_msgSend(-[MPEffectContainer parentLayer](self->_parentContainer, "parentLayer"), "montage"), "videoAssetForFileAtPath:", objc_msgSend(*(*(&v69 + 1) + 8 * k), "path"))}];
        }

        v24 = [a3 countByEnumeratingWithState:&v69 objects:v87 count:16];
      }

      while (v24);
    }

    [v14 addObjectsFromArray:{-[MCContainerEffect insertSlidesForAssets:atIndex:](self->_container, "insertSlidesForAssets:atIndex:", v22, a4)}];

LABEL_49:
    v33 = [v14 objectEnumerator];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v34 = [a3 countByEnumeratingWithState:&v65 objects:v86 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v66;
      do
      {
        for (m = 0; m != v35; m = m + 1)
        {
          if (*v66 != v36)
          {
            objc_enumerationMutation(a3);
          }

          [*(*(&v65 + 1) + 8 * m) setSlide:{objc_msgSend(v33, "nextObject")}];
        }

        v35 = [a3 countByEnumeratingWithState:&v65 objects:v86 count:16];
      }

      while (v35);
    }

    v7 = v57;
  }

  v38 = v59;
  if (!self->_replaceSlides)
  {
    [(MPEffect *)self didChange:2 valuesAtIndexes:v59 forKey:@"slides"];
  }

  if (self->_supportsEffectTiming)
  {
    v39 = [(MPEffect *)self parentDocument];
    if (!v39)
    {
      if ([+[MPAuthoringController sharedController](MPAuthoringController "sharedController")])
      {
        v39 = [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
      }

      else
      {
        v39 = 0;
      }
    }

    v40 = [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
    if ([v39 isLive] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v58 = v7;
      v41 = objc_alloc_init(NSMutableArray);
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v42 = [a3 countByEnumeratingWithState:&v61 objects:v85 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v62;
        height = CGSizeZero.height;
        do
        {
          for (n = 0; n != v43; n = n + 1)
          {
            if (*v62 != v44)
            {
              objc_enumerationMutation(a3);
            }

            v47 = [*(*(&v61 + 1) + 8 * n) path];
            if (v47)
            {
              v48 = v47;
              v49 = objc_alloc_init(NSMutableDictionary);
              if (v39)
              {
                [v39 resolutionForPath:v48];
              }

              else
              {
                [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
              }

              if (v50 == CGSizeZero.width && v51 == height && v40 != 0)
              {
                [v40 resolutionForPath:v48];
              }

              v54 = v50 / v51;
              *&v54 = v54;
              [v49 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v54), @"aspectRatio"}];
              [v41 addObject:v49];
            }
          }

          v43 = [a3 countByEnumeratingWithState:&v61 objects:v85 count:16];
        }

        while (v43);
      }

      if ([v41 count])
      {
        [(MZEffectTiming *)self->_effectTiming appendSlideInformation:v41 andTextInformation:0];
      }

      [(MZEffectTiming *)self->_effectTiming phaseInDuration];
      [(MPEffect *)self setPhaseInDuration:?];
      [(MZEffectTiming *)self->_effectTiming phaseOutDuration];
      [(MPEffect *)self setPhaseOutDuration:?];
      [(MZEffectTiming *)self->_effectTiming mainDuration];
      [(MPEffect *)self setMainDuration:?];
      v7 = v58;
      v38 = v59;
      if ([(NSMutableArray *)self->_slides count])
      {
        v55 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->_slides objectAtIndex:{0), "slide"), "index"}];
        v56 = ([objc_msgSend(-[NSMutableArray lastObject](self->_slides "lastObject")] - v55 + 1);
      }

      else
      {
        v55 = 0;
        v56 = 0;
      }

      [(MZEffectTiming *)self->_effectTiming setMultiImageSlideRange:v55, v56];
    }

    else
    {
      [(MPEffect *)self _updateTiming:1];
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (void)removeSlidesAtIndices:(id)a3
{
  slides = self->_slides;
  if (slides)
  {
    if ([(NSMutableArray *)slides count])
    {
      v6 = [a3 lastIndex];
      if (v6 < [(NSMutableArray *)self->_slides count])
      {
        v7 = objc_autoreleasePoolPush();
        if (self->_replaceSlides)
        {
          v8 = 4;
        }

        else
        {
          v8 = 3;
        }

        [(MPEffect *)self willChange:v8 valuesAtIndexes:a3 forKey:@"slides"];
        if (self->_container)
        {
          v9 = [a3 mutableCopy];
          if ([(MCContainerEffect *)self->_container isLive])
          {
            [v9 shiftIndexesStartingAtIndex:objc_msgSend(v9 by:{"firstIndex"), self->_liveIndex - objc_msgSend(a3, "count")}];
          }

          [(MCContainerEffect *)self->_container removeSlidesAtIndices:v9];
        }

        v10 = [a3 lastIndex];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          for (i = v10; i != 0x7FFFFFFFFFFFFFFFLL; i = [a3 indexLessThanIndex:i])
          {
            v12 = [(NSMutableArray *)self->_slides objectAtIndex:i];
            [v12 setParent:0];
            [v12 setSlide:0];
          }
        }

        [(NSMutableArray *)self->_slides removeObjectsAtIndexes:a3];
        if (self->_replaceSlides)
        {
          v13 = [a3 firstIndex];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            for (j = v13; j != 0x7FFFFFFFFFFFFFFFLL; j = [a3 indexGreaterThanIndex:j])
            {
              v15 = [[NSArray alloc] initWithObjects:{+[MPSlide slide](MPSlide, "slide"), 0}];
              [(MPEffect *)self insertSlides:v15 atIndex:j];
            }
          }
        }

        [(MPEffect *)self didChange:v8 valuesAtIndexes:a3 forKey:@"slides"];
        if (self->_supportsEffectTiming)
        {
          v16 = [(MPEffect *)self parentDocument];
          if (!v16)
          {
            if ([+[MPAuthoringController sharedController](MPAuthoringController "sharedController")])
            {
              v16 = [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
            }

            else
            {
              v16 = 0;
            }
          }

          if (![v16 isLive] || (objc_opt_respondsToSelector() & 1) == 0)
          {
            [(MPEffect *)self _updateTiming:1];
          }

          if ([v16 isLive])
          {
            if ([(NSMutableArray *)self->_slides count])
            {
              v17 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->_slides objectAtIndex:{0), "slide"), "index"}];
              v18 = ([objc_msgSend(-[NSMutableArray lastObject](self->_slides "lastObject")] - v17 + 1);
            }

            else
            {
              v17 = 0;
              v18 = 0;
            }

            [(MZEffectTiming *)self->_effectTiming setMultiImageSlideRange:v17, v18];
          }
        }

        objc_autoreleasePoolPop(v7);
      }
    }
  }
}

- (void)removeAllSlides
{
  if ([(NSMutableArray *)self->_slides count])
  {
    v3 = [NSIndexSet alloc];
    slides = self->_slides;
    if (slides)
    {
      v5 = [(NSMutableArray *)slides count];
    }

    else
    {
      v5 = 0;
    }

    v6 = [v3 initWithIndexesInRange:{0, v5}];
    [(MPEffect *)self removeSlidesAtIndices:v6];
  }
}

- (void)replaceSlideAtIndex:(int64_t)a3 withSlide:(id)a4
{
  if (self->_slides)
  {
    v7 = [[NSIndexSet alloc] initWithIndex:a3];
    [(MPEffect *)self willChange:4 valuesAtIndexes:v7 forKey:@"slides"];
    container = self->_container;
    if (container)
    {
      [(MCContainerEffect *)container removeSlidesAtIndices:v7];
      v9 = [(NSMutableArray *)self->_slides objectAtIndex:a3];
      [v9 setParent:0];
      [v9 setSlide:0];
    }

    [(NSMutableArray *)self->_slides removeObjectsAtIndexes:v7];
    replaceSlides = self->_replaceSlides;
    self->_replaceSlides = 1;
    v11 = [[NSArray alloc] initWithObjects:{a4, 0}];
    [(MPEffect *)self insertSlides:v11 atIndex:a3];

    self->_replaceSlides = replaceSlides;
    [(MPEffect *)self didChange:4 valuesAtIndexes:v7 forKey:@"slides"];

    if (self->_supportsEffectTiming)
    {

      [(MPEffect *)self _updateTiming:1];
    }
  }
}

- (void)moveSlidesFromIndices:(id)a3 toIndex:(int64_t)a4
{
  slides = self->_slides;
  if (slides)
  {
    if (self->_container)
    {
      [(MCContainerEffect *)self->_container moveSlidesAtIndices:a3 toIndex:a4];
      slides = self->_slides;
    }

    v8 = [(NSMutableArray *)slides objectsAtIndexes:a3];
    [(NSMutableArray *)self->_slides removeObjectsAtIndexes:a3];
    v9 = [[NSIndexSet alloc] initWithIndexesInRange:{a4, objc_msgSend(v8, "count")}];
    [(NSMutableArray *)self->_slides insertObjects:v8 atIndexes:v9];
  }
}

- (void)addSecondarySlide:(id)a3
{
  v6 = [[NSArray alloc] initWithObjects:{a3, 0}];
  secondarySlides = self->_secondarySlides;
  if (secondarySlides)
  {
    v5 = [(NSMutableArray *)secondarySlides count];
  }

  else
  {
    v5 = 0;
  }

  [(MPEffect *)self insertSecondarySlides:v6 atIndex:v5];
}

- (void)addSecondarySlides:(id)a3
{
  secondarySlides = self->_secondarySlides;
  if (secondarySlides)
  {
    v6 = [(NSMutableArray *)secondarySlides count];
  }

  else
  {
    v6 = 0;
  }

  [(MPEffect *)self insertSecondarySlides:a3 atIndex:v6];
}

- (void)insertSecondarySlides:(id)a3 atIndex:(int64_t)a4
{
  v7 = objc_autoreleasePoolPush();
  if (!self->_secondarySlides)
  {
    self->_secondarySlides = objc_alloc_init(NSMutableArray);
  }

  v8 = [[NSIndexSet alloc] initWithIndexesInRange:{a4, objc_msgSend(a3, "count")}];
  if (!self->_replaceSlides)
  {
    [(MPEffect *)self willChange:2 valuesAtIndexes:v8 forKey:@"secondarySlides"];
  }

  [(NSMutableArray *)self->_secondarySlides insertObjects:a3 atIndexes:v8];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(a3);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        [v13 setParent:self];
        [v13 setIsSecondary:1];
      }

      v10 = [a3 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v10);
  }

  if (self->_container)
  {
    v26 = v7;
    v14 = objc_alloc_init(NSMutableArray);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = [a3 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(a3);
          }

          v19 = *(*(&v31 + 1) + 8 * j);
          if ([v19 path])
          {
            v20 = -[MCContainerEffect insertSlideForAsset:atIndex:](self->_container, "insertSlideForAsset:atIndex:", [objc_msgSend(-[MPEffectContainer parentLayer](self->_parentContainer "parentLayer")], -[MPEffect maxNumberOfSlides](self, "maxNumberOfSlides") + a4);
          }

          else
          {
            v20 = [(MCContainerEffect *)self->_container insertSlideAtIndex:[(MPEffect *)self maxNumberOfSlides]+ a4];
          }

          [v14 addObject:v20];
          ++a4;
        }

        v16 = [a3 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v16);
    }

    v21 = [v14 objectEnumerator];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = [a3 countByEnumeratingWithState:&v27 objects:v39 count:16];
    v7 = v26;
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        for (k = 0; k != v23; k = k + 1)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(a3);
          }

          [*(*(&v27 + 1) + 8 * k) setSlide:{objc_msgSend(v21, "nextObject")}];
        }

        v23 = [a3 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v23);
    }
  }

  if (!self->_replaceSlides)
  {
    [(MPEffect *)self didChange:2 valuesAtIndexes:v8 forKey:@"secondarySlides"];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)removeSecondarySlidesAtIndices:(id)a3
{
  secondarySlides = self->_secondarySlides;
  if (secondarySlides)
  {
    if ([(NSMutableArray *)secondarySlides count])
    {
      v6 = [a3 lastIndex];
      if (v6 < [(NSMutableArray *)self->_secondarySlides count])
      {
        v7 = objc_autoreleasePoolPush();
        if (self->_replaceSlides)
        {
          v8 = 4;
        }

        else
        {
          v8 = 3;
        }

        [(MPEffect *)self willChange:v8 valuesAtIndexes:a3 forKey:@"secondarySlides"];
        if (self->_container)
        {
          v9 = +[NSMutableIndexSet indexSet];
          v10 = [a3 firstIndex];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            for (i = v10; i != 0x7FFFFFFFFFFFFFFFLL; i = [a3 indexGreaterThanIndex:i])
            {
              [v9 addIndex:{&i[-[MPEffect maxNumberOfSlides](self, "maxNumberOfSlides")]}];
            }
          }

          [(MCContainerEffect *)self->_container removeSlidesAtIndices:v9];
        }

        v12 = [a3 lastIndex];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          for (j = v12; j != 0x7FFFFFFFFFFFFFFFLL; j = [a3 indexLessThanIndex:j])
          {
            v14 = [(NSMutableArray *)self->_secondarySlides objectAtIndex:j];
            [v14 setParent:0];
            [v14 setSlide:0];
          }
        }

        [(NSMutableArray *)self->_secondarySlides removeObjectsAtIndexes:a3];
        [(MPEffect *)self didChange:v8 valuesAtIndexes:a3 forKey:@"secondarySlides"];

        objc_autoreleasePoolPop(v7);
      }
    }
  }
}

- (void)removeAllSecondarySlides
{
  if ([(NSMutableArray *)self->_secondarySlides count])
  {
    v3 = [NSIndexSet alloc];
    secondarySlides = self->_secondarySlides;
    if (secondarySlides)
    {
      v5 = [(NSMutableArray *)secondarySlides count];
    }

    else
    {
      v5 = 0;
    }

    v6 = [v3 initWithIndexesInRange:{0, v5}];
    [(MPEffect *)self removeSecondarySlidesAtIndices:v6];
  }
}

- (void)_updateEffectTimingWithDocument:(id)a3 forExport:(BOOL)a4
{
  if (!self->_supportsEffectTiming || self->_skipEffectTiming)
  {
    return;
  }

  v5 = a4;

  self->_effectTiming = 0;
  v7 = [(MPEffect *)self formattedAttributes];
  if (!a3)
  {
    v8 = [(MPEffect *)self parentDocument];
    if (v8)
    {
      a3 = v8;
    }

    else
    {
      v10 = 1.77777779;
      if (![+[MPAuthoringController sharedController](MPAuthoringController "sharedController")])
      {
        a3 = 0;
        goto LABEL_8;
      }

      a3 = [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
      if (!a3)
      {
        goto LABEL_8;
      }
    }
  }

  [a3 aspectRatio];
  v10 = v9;
LABEL_8:
  if (v5)
  {
    v7 = [NSMutableDictionary dictionaryWithDictionary:v7];
    [(NSMutableDictionary *)v7 setObject:[NSNumber forKey:"numberWithBool:" numberWithBool:?], @"updateEffectAuthoredTimingForExport"];
  }

  self->_effectTiming = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
  if ((objc_opt_respondsToSelector() & 1) != 0 && v5)
  {
    v11 = [(MZEffectTiming *)self->_effectTiming effectAuthoredAttributes];
    if (v11)
    {
      v12 = v11;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = [v11 keyEnumerator];
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v13);
            }

            -[MPEffect setEffectAttribute:forKey:](self, "setEffectAttribute:forKey:", [v12 objectForKey:*(*(&v18 + 1) + 8 * i)], *(*(&v18 + 1) + 8 * i));
          }

          v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v15);
      }
    }
  }
}

- (void)_updateTiming:(BOOL)a3 forExport:(BOOL)a4
{
  if (!self->_cleaningUp)
  {
    v4 = a4;
    v5 = a3;
    v7 = +[MPEffectManager sharedManager];
    v15 = 0.0;
    v16 = 0.0;
    v14 = 0.0;
    if (self->_supportsEffectTiming)
    {
      [(MPEffect *)self _updateEffectTimingWithDocument:0 forExport:v4];
      [(MZEffectTiming *)self->_effectTiming phaseInDuration];
      v9 = v8;
      [(MZEffectTiming *)self->_effectTiming phaseOutDuration];
      v11 = v10;
      [(MZEffectTiming *)self->_effectTiming mainDuration];
      v13 = v12;
      if (v5)
      {
        if (self->_supportsEffectTiming)
        {
          [(MPEffect *)self setPhaseInDuration:v9];
          [(MPEffect *)self setPhaseOutDuration:v11];
          [(MPEffect *)self setMainDuration:v13];
        }

        return;
      }
    }

    else
    {
      if (v5)
      {
        return;
      }

      [v7 defaultDurationsForEffectID:self->_effectID phaseInDuration:&v15 mainDuration:&v16 phaseOutDuration:&v14];
      v11 = v14;
      v9 = v15;
      v13 = v16;
    }

    self->_phaseInDuration = v9;
    self->_phaseOutDuration = v11;
    self->_mainDuration = v13;
  }
}

- (double)lowestDisplayTime
{
  effectTiming = self->_effectTiming;
  if (!effectTiming)
  {
    return -1.0;
  }

  [(MZEffectTiming *)effectTiming lowestDisplayTime];
  return result;
}

- (void)addText:(id)a3
{
  v6 = [[NSArray alloc] initWithObjects:{a3, 0}];
  texts = self->_texts;
  if (texts)
  {
    v5 = [(NSMutableArray *)texts count];
  }

  else
  {
    v5 = 0;
  }

  [(MPEffect *)self insertTexts:v6 atIndex:v5];
}

- (void)addTexts:(id)a3
{
  texts = self->_texts;
  if (texts)
  {
    v6 = [(NSMutableArray *)texts count];
  }

  else
  {
    v6 = 0;
  }

  [(MPEffect *)self insertTexts:a3 atIndex:v6];
}

- (void)insertTexts:(id)a3 atIndex:(int64_t)a4
{
  v7 = objc_autoreleasePoolPush();
  if (!self->_texts)
  {
    self->_texts = objc_alloc_init(NSMutableArray);
  }

  v8 = [[NSIndexSet alloc] initWithIndexesInRange:{a4, objc_msgSend(a3, "count")}];
  [(MPEffect *)self willChange:2 valuesAtIndexes:v8 forKey:@"texts"];
  [(NSMutableArray *)self->_texts insertObjects:a3 atIndexes:v8];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      v12 = 0;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(a3);
        }

        [*(*(&v31 + 1) + 8 * v12) setParent:self];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [a3 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v10);
  }

  if (self->_container)
  {
    v13 = objc_alloc_init(NSMutableArray);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [a3 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        v17 = 0;
        do
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(a3);
          }

          [v13 addObject:{objc_msgSend(*(*(&v27 + 1) + 8 * v17), "attributedString")}];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [a3 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v15);
    }

    v18 = [-[MCContainerEffect insertTextsForAttributedStrings:atIndex:](self->_container insertTextsForAttributedStrings:v13 atIndex:{a4), "objectEnumerator"}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = [a3 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      do
      {
        v22 = 0;
        do
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(a3);
          }

          [*(*(&v23 + 1) + 8 * v22) setText:{objc_msgSend(v18, "nextObject")}];
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [a3 countByEnumeratingWithState:&v23 objects:v35 count:16];
      }

      while (v20);
    }
  }

  [(MPEffect *)self didChange:2 valuesAtIndexes:v8 forKey:@"texts"];

  objc_autoreleasePoolPop(v7);
}

- (void)removeTextsAtIndices:(id)a3
{
  texts = self->_texts;
  if (texts && [(NSMutableArray *)texts count])
  {
    v6 = objc_autoreleasePoolPush();
    [(MPEffect *)self willChange:3 valuesAtIndexes:a3 forKey:@"texts"];
    container = self->_container;
    if (container)
    {
      [(MCContainerEffect *)container removeTextsAtIndices:a3];
    }

    v8 = [a3 lastIndex];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v8; i != 0x7FFFFFFFFFFFFFFFLL; i = [a3 indexLessThanIndex:i])
      {
        v10 = [(NSMutableArray *)self->_texts objectAtIndex:i];
        [v10 setParent:0];
        [v10 setText:0];
      }
    }

    [(NSMutableArray *)self->_texts removeObjectsAtIndexes:a3];
    [(MPEffect *)self didChange:3 valuesAtIndexes:a3 forKey:@"texts"];

    objc_autoreleasePoolPop(v6);
  }
}

- (void)removeAllTexts
{
  if ([(NSMutableArray *)self->_texts count])
  {
    v3 = [[NSIndexSet alloc] initWithIndexesInRange:{0, -[NSMutableArray count](self->_texts, "count")}];
    [(MPEffect *)self removeTextsAtIndices:v3];
  }
}

- (void)moveTextsFromIndices:(id)a3 toIndex:(int64_t)a4
{
  texts = self->_texts;
  if (texts)
  {
    if (self->_container)
    {
      [(MCContainerEffect *)self->_container moveTextsAtIndices:a3 toIndex:a4];
      texts = self->_texts;
    }

    v8 = [(NSMutableArray *)texts objectsAtIndexes:a3];
    [(NSMutableArray *)self->_texts removeObjectsAtIndexes:a3];
    v9 = [[NSIndexSet alloc] initWithIndexesInRange:{a4, objc_msgSend(v8, "count")}];
    [(NSMutableArray *)self->_texts insertObjects:v8 atIndexes:v9];
  }
}

- (void)addFilter:(id)a3
{
  v4 = [NSArray arrayWithObject:a3];
  filters = self->_filters;
  if (filters)
  {
    v6 = [(NSMutableArray *)filters count];
  }

  else
  {
    v6 = 0;
  }

  [(MPEffect *)self insertFilters:v4 atIndex:v6];
}

- (void)addFilters:(id)a3
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

  [(MPEffect *)self insertFilters:a3 atIndex:v6];
}

- (void)insertFilters:(id)a3 atIndex:(int64_t)a4
{
  v4 = a4;
  v7 = [[NSIndexSet alloc] initWithIndexesInRange:{a4, objc_msgSend(a3, "count")}];
  [(MPEffect *)self willChange:2 valuesAtIndexes:v7 forKey:@"filters"];
  filters = self->_filters;
  if (!filters)
  {
    filters = objc_alloc_init(NSMutableArray);
    self->_filters = filters;
  }

  [(NSMutableArray *)filters insertObjects:a3 atIndexes:v7];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(a3);
        }

        [*(*(&v24 + 1) + 8 * v12) setParent:self];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [a3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }

  v13 = [(NSMutableArray *)self->_filters count];
  plug = self->_plug;
  if (v13)
  {
    if (!plug)
    {
      [(MPEffectContainer *)self->_parentContainer convertFromEffectContainerToParallelizer];
      goto LABEL_21;
    }
  }

  else if (!plug)
  {
    goto LABEL_21;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = [a3 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      v19 = v4;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(a3);
        }

        v4 = v19 + 1;
        [*(*(&v20 + 1) + 8 * v18) setFilter:{-[MCPlugParallel insertFilterWithFilterID:atIndex:](self->_plug, "insertFilterWithFilterID:atIndex:", objc_msgSend(*(*(&v20 + 1) + 8 * v18), "filterID"), v19)}];
        v18 = v18 + 1;
        ++v19;
      }

      while (v16 != v18);
      v16 = [a3 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

LABEL_21:
  [(MPEffect *)self didChange:2 valuesAtIndexes:v7 forKey:@"filters"];
}

- (void)removeFiltersAtIndices:(id)a3
{
  filters = self->_filters;
  if (filters && [(NSMutableArray *)filters count])
  {
    [(MPEffect *)self willChange:3 valuesAtIndexes:a3 forKey:@"filters"];
    v6 = [a3 lastIndex];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v6; i != 0x7FFFFFFFFFFFFFFFLL; i = [a3 indexLessThanIndex:i])
      {
        v8 = [(NSMutableArray *)self->_filters objectAtIndex:i];
        [v8 setParent:0];
        [v8 setFilter:0];
      }
    }

    plug = self->_plug;
    if (plug)
    {
      [(MCPlugParallel *)plug removeFiltersAtIndices:a3];
    }

    [(NSMutableArray *)self->_filters removeObjectsAtIndexes:a3];
    if (![(NSMutableArray *)self->_filters count]&& self->_plug && ![(MPEffect *)self needsParallelizer])
    {
      [(MPEffectContainer *)self->_parentContainer convertFromParallelizerToEffectContainer];
    }

    [(MPEffect *)self didChange:3 valuesAtIndexes:a3 forKey:@"filters"];
  }
}

- (void)removeAllFilters
{
  if ([(NSMutableArray *)self->_filters count])
  {
    v3 = [[NSIndexSet alloc] initWithIndexesInRange:{0, -[NSMutableArray count](self->_filters, "count")}];
    [(MPEffect *)self removeFiltersAtIndices:v3];
  }
}

- (void)moveFiltersFromIndices:(id)a3 toIndex:(int64_t)a4
{
  if (self->_filters)
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
}

- (id)animationPathForKey:(id)a3
{
  result = self->_animationPaths;
  if (result)
  {
    return [result objectForKey:a3];
  }

  return result;
}

- (void)setAnimationPath:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    if (!self->_animationPaths)
    {
      self->_animationPaths = objc_alloc_init(NSMutableDictionary);
    }

    v7 = [(MPEffect *)self animationPathForKey:a4];
    if (v7)
    {
      v8 = v7;
      [v7 setParent:0];
      [v8 setAnimationPath:0];
    }

    [a3 setParent:self];
    [(NSMutableDictionary *)self->_animationPaths setObject:a3 forKey:a4];
    plug = self->_plug;
    if (plug)
    {
      [(MCPlug *)plug removeAnimationPathForKey:a4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v11 = off_1A4CB0;
      if ((isKindOfClass & 1) == 0)
      {
        v11 = off_1A4CB8;
      }

      v12 = [(__objc2_class *)*v11 animationPathWithKey:a4];
      [(MCPlug *)self->_plug addAnimationPath:v12];

      [a3 setAnimationPath:v12];
    }
  }

  else
  {

    [(MPEffect *)self removeAnimationPathForKey:a4];
  }
}

- (void)removeAnimationPathForKey:(id)a3
{
  if (self->_animationPaths)
  {
    v5 = [(MPEffect *)self animationPathForKey:?];
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
}

- (void)setAudioPlaylist:(id)a3
{
  audioPlaylist = self->_audioPlaylist;
  if (audioPlaylist)
  {
    [(MPAudioPlaylist *)audioPlaylist setParentObject:0];
    [(MPAudioPlaylist *)self->_audioPlaylist setMontage:0];
    [(MPAudioPlaylist *)self->_audioPlaylist setAudioPlaylist:0];

    self->_audioPlaylist = 0;
  }

  if (a3)
  {
    v6 = a3;
    self->_audioPlaylist = v6;
    [(MPAudioPlaylist *)v6 setParentObject:self];
    if (self->_container)
    {
      -[MPAudioPlaylist setMontage:](self->_audioPlaylist, "setMontage:", [-[MPEffectContainer parentLayer](self->_parentContainer "parentLayer")]);
      v7 = self->_audioPlaylist;
      v8 = [(MCContainer *)self->_container audioPlaylistCreateIfNeeded];

      [(MPAudioPlaylist *)v7 setAudioPlaylist:v8];
    }
  }
}

- (void)setRandomSeed:(int64_t)a3
{
  self->_randomSeed = a3;
  container = self->_container;
  if (container)
  {
    [(MCContainerEffect *)container setEffectAttribute:[NSNumber numberWithInteger:?], @"PresetID"];
  }

  if (self->_supportsEffectTiming)
  {

    [(MPEffect *)self _updateTiming:1];
  }
}

- (int64_t)maxNumberOfSlides
{
  v3 = +[MPEffectManager sharedManager];
  v4 = [(MPEffect *)self effectID];

  return [v3 numberOfSlidesForEffectID:v4];
}

- (int64_t)maxNumberOfSecondarySlides
{
  v3 = +[MPEffectManager sharedManager];
  v4 = [(MPEffect *)self effectID];

  return [v3 numberOfSecondarySlidesForEffectID:v4];
}

- (void)createTextsWithDefaultStrings
{
  v3 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  v4 = v3;
  if (self->_texts)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 < 1;
  }

  if (v5)
  {
    if (v3 < 1)
    {
      return;
    }
  }

  else
  {
    self->_texts = objc_alloc_init(NSMutableArray);
  }

  v6 = 0;
  do
  {
    v7 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    if (v7)
    {
      v8 = [MPText textWithAttributedString:v7];
      [(MPText *)v8 setParent:self];
      [(NSMutableArray *)self->_texts addObject:v8];
    }

    ++v6;
  }

  while (v4 != v6);
}

- (void)replaceTextsWitStrings:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v5 = [a3 count];
    if (v5 >= 1)
    {
      v6 = v5;
      v7 = 0;
      v8 = &kCTUnderlineColorAttributeName_ptr;
      v9 = &kCTUnderlineColorAttributeName_ptr;
      while (v7 >= [(NSMutableArray *)self->_texts count])
      {
LABEL_15:
        if (v6 == ++v7)
        {
          return;
        }
      }

      v10 = [v3 objectAtIndex:v7];
      v11 = [(NSMutableArray *)self->_texts objectAtIndex:v7];
      if (v10)
      {
        objc_opt_class();
        v12 = v10;
        if (objc_opt_isKindOfClass())
        {
          v13 = [objc_alloc(v8[22]) initWithAttributedString:v10];
LABEL_14:
          [v11 setAttributedString:v13];

          goto LABEL_15;
        }
      }

      else
      {
        v12 = 0;
      }

      if ([0 length])
      {
        v14 = objc_alloc(v8[22]);
        v15 = [v11 attributedString];
        v16 = v14;
      }

      else
      {
        v27 = +[MPEffectManager sharedManager];
        v17 = v12;
        v18 = v6;
        v19 = v3;
        v20 = v8;
        v21 = v9;
        v22 = [(MPEffect *)self effectID];
        v23 = [(MPEffect *)self presetID];
        v24 = v22;
        v9 = v21;
        v8 = v20;
        v3 = v19;
        v6 = v18;
        v12 = v17;
        v25 = [v27 defaultStringForTextInEffectID:v24 presetID:v23 atIndex:v7];
        v16 = objc_alloc(v8[22]);
        v15 = v25;
      }

      v26 = [v16 initWithAttributedString:v15];
      v13 = v26;
      if (v10)
      {
        [v26 replaceCharactersInRange:0 withString:{objc_msgSend(v26, "length"), v12}];
      }

      goto LABEL_14;
    }
  }
}

- (void)createTextsWithStrings:(id)a3 secondLineFactor:(double)a4 fillIn:(BOOL)a5
{
  v5 = a5;
  if (a3 && !self->_texts && [a3 count])
  {
    self->_texts = objc_alloc_init(NSMutableArray);
  }

  p_superclass = MCGenericAction.superclass;
  v10 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if (a3)
  {
    v11 = [a3 count];
  }

  else
  {
    v11 = 0;
  }

  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (!v5)
  {
    v10 = v12;
  }

  if (v10 >= 1)
  {
    v13 = 0;
    v29 = v11;
    do
    {
      if (a3)
      {
        if (v13 >= v11)
        {
          v14 = [a3 lastObject];
        }

        else
        {
          v14 = [a3 objectAtIndex:v13];
        }

        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v17 = [[NSMutableAttributedString alloc] initWithAttributedString:{objc_msgSend(objc_msgSend(p_superclass + 199, "sharedManager"), "defaultStringForTextInEffectID:presetID:atIndex:", -[MPEffect effectID](self, "effectID"), -[MPEffect presetID](self, "presetID"), v13)}];
        v16 = v17;
        if (v15)
        {
          [v17 replaceCharactersInRange:0 withString:{objc_msgSend(v17, "length"), v15}];
          if (a4 != 1.0)
          {
            if ([v15 length])
            {
              v18 = [v15 lineRangeForRange:{0, 1}];
              v20 = &v18[v19];
              v21 = [v15 length];
              if (v21 != v20)
              {
                v31[0] = 0;
                v31[1] = 0;
                v30 = (v21 - v20);
                v22 = [objc_msgSend(v16 attributesAtIndex:0 effectiveRange:{v31), "objectForKey:", kCTFontAttributeName}];
                v23 = p_superclass;
                v24 = CTFontCopyPostScriptName(v22);
                Size = CTFontGetSize(v22);
                v26 = CTFontCreateWithName(v24, Size * a4, 0);
                v27 = v24;
                p_superclass = v23;
                CFRelease(v27);
                v11 = v29;
                [v16 addAttribute:kCTFontAttributeName value:v26 range:{v20, v30}];
                CFRelease(v26);
              }
            }
          }
        }
      }

      v28 = [[MPText alloc] initWithAttributedString:v16];

      [(MPText *)v28 setParent:self];
      [(NSMutableArray *)self->_texts addObject:v28];

      ++v13;
    }

    while (v10 != v13);
  }
}

- (void)createSlidesWithPaths:(id)a3
{
  v5 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [a3 count];
  }

  if (self->_slides || v5 < 1)
  {
    if (v5 < 1)
    {
      return;
    }
  }

  else
  {
    self->_slides = objc_alloc_init(NSMutableArray);
  }

  for (i = 0; i != v5; ++i)
  {
    if (i < [a3 count] && (v7 = objc_msgSend(a3, "objectAtIndex:", i)) != 0)
    {
      v8 = [[MPSlide alloc] initWithPath:v7];
    }

    else
    {
      v8 = objc_alloc_init(MPSlide);
    }

    v9 = v8;
    [(MPSlide *)v8 setParent:self];
    [(NSMutableArray *)self->_slides addObject:v9];
  }
}

- (void)createSecondarySlidesWithPaths:(id)a3
{
  v5 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  v6 = v5;
  if (self->_secondarySlides)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 < 1;
  }

  if (v7)
  {
    if (v5 < 1)
    {
      return;
    }
  }

  else
  {
    self->_secondarySlides = objc_alloc_init(NSMutableArray);
  }

  v8 = 0;
  do
  {
    if (a3 && v8 < [a3 count] && (v9 = objc_msgSend(a3, "objectAtIndex:", v8)) != 0)
    {
      v10 = [[MPSlide alloc] initWithPath:v9];
    }

    else
    {
      v10 = objc_alloc_init(MPSlide);
    }

    v11 = v10;
    [(MPSlide *)v10 setParent:self];
    [(MPSlide *)v11 setIsSecondary:1];
    [(NSMutableArray *)self->_secondarySlides addObject:v11];

    ++v8;
  }

  while (v6 != v8);
}

- (void)reconfigureSlides
{
  v3 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  v4 = [(NSMutableArray *)self->_slides count];
  v5 = [(NSMutableArray *)self->_slides count];
  if (v4 >= v3)
  {
    if (v3 >= v5)
    {
      return;
    }

    v13 = [[NSIndexSet alloc] initWithIndexesInRange:{v3, -[NSMutableArray count](self->_slides, "count") - v3}];
    v14 = [(NSMutableArray *)self->_slides objectsAtIndexes:v13];
    self->_replaceSlides = 0;
    [(MPEffect *)self removeSlidesAtIndices:v13];

    self->_replaceSlides = 1;
    v15 = [NSDictionary dictionaryWithObjectsAndKeys:v14, @"slides", 0];
    v9 = +[NSNotificationCenter defaultCenter];
    v10 = MPEffectDidRemoveSlidesNotification;
    v11 = self;
    v12 = v15;
  }

  else
  {
    v6 = v3 - v5;
    v7 = objc_alloc_init(NSMutableArray);
    if (v6 >= 1)
    {
      do
      {
        [v7 addObject:{+[MPSlide slide](MPSlide, "slide")}];
        --v6;
      }

      while (v6);
    }

    self->_replaceSlides = 0;
    [(MPEffect *)self addSlides:v7];
    self->_replaceSlides = 1;
    v8 = [NSDictionary dictionaryWithObjectsAndKeys:v7, @"slides", 0];

    v9 = +[NSNotificationCenter defaultCenter];
    v10 = MPEffectDidAddSlidesNotification;
    v11 = self;
    v12 = v8;
  }

  [(NSNotificationCenter *)v9 postNotificationName:v10 object:v11 userInfo:v12];
}

- (id)fullDebugLog
{
  v3 = [[NSString stringByAppendingFormat:@"\n%@\n" stringWithFormat:?], "stringByAppendingFormat:", @"=============================== Effect %d Slides =============================\n", [(MPEffect *)self zIndex]];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  slides = self->_slides;
  v5 = [(NSMutableArray *)slides countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(slides);
        }

        v3 = -[NSString stringByAppendingFormat:](v3, "stringByAppendingFormat:", @"%@\n", [*(*(&v30 + 1) + 8 * i) fullDebugLog]);
      }

      v6 = [(NSMutableArray *)slides countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v6);
  }

  v9 = [(NSString *)v3 stringByAppendingFormat:@"=============================== Effect %d Texts ==============================\n", [(MPEffect *)self zIndex]];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  texts = self->_texts;
  v11 = [(NSMutableArray *)texts countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(texts);
        }

        v9 = -[NSString stringByAppendingFormat:](v9, "stringByAppendingFormat:", @"%@\n", [*(*(&v26 + 1) + 8 * j) fullDebugLog]);
      }

      v12 = [(NSMutableArray *)texts countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v12);
  }

  v15 = [(NSString *)v9 stringByAppendingFormat:@"============================== Effect %d Filters =============================\n", [(MPEffect *)self zIndex]];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  filters = self->_filters;
  v17 = [(NSMutableArray *)filters countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (k = 0; k != v18; k = k + 1)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(filters);
        }

        v15 = -[NSString stringByAppendingFormat:](v15, "stringByAppendingFormat:", @"%@\n", [*(*(&v22 + 1) + 8 * k) fullDebugLog]);
      }

      v18 = [(NSMutableArray *)filters countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v18);
  }

  return v15;
}

- (id)videoPaths
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(MPEffect *)self slides];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) path];
        if (v9)
        {
          [v3 addObject:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)isLive
{
  if (self->_container)
  {
    container = self->_container;
  }

  else
  {
    container = [(MPEffect *)self parentDocument];
  }

  return [(MCContainerEffect *)container isLive];
}

- (id)_effectAttributes
{
  v3 = [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  [v3 addEntriesFromDictionary:self->_attributes];
  return v3;
}

- (id)formattedAttributes
{
  if (self->_attributes)
  {
    v3 = [[NSMutableDictionary alloc] initWithDictionary:{-[MPEffect _effectAttributes](self, "_effectAttributes")}];
  }

  else
  {
    v3 = objc_alloc_init(NSMutableDictionary);
  }

  v4 = v3;
  [v3 setObject:-[MPEffect presetID](self forKey:{"presetID"), @"PresetID"}];
  if ((self->_randomSeed & 0x8000000000000000) == 0)
  {
    [v4 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:"), @"RandomSeed"}];
  }

  return v4;
}

- (void)applyFormattedAttributes
{
  if (self->_container)
  {
    [(MCContainerEffect *)self->_container setEffectAttributes:[(MPEffect *)self _effectAttributes]];
    [(MCContainerEffect *)self->_container setEffectAttribute:[(MPEffect *)self presetID] forKey:@"PresetID"];
    if ((self->_randomSeed & 0x8000000000000000) == 0)
    {
      container = self->_container;
      v4 = [NSNumber numberWithInteger:?];

      [(MCContainerEffect *)container setEffectAttribute:v4 forKey:@"RandomSeed"];
    }
  }
}

- (id)slideInformationWithDocument:(id)a3
{
  v23 = +[NSMutableArray array];
  if (!a3)
  {
    a3 = [(MPEffect *)self parentDocument];
    if (!a3)
    {
      if ([+[MPAuthoringController sharedController](MPAuthoringController "sharedController")])
      {
        a3 = [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
      }

      else
      {
        a3 = 0;
      }
    }
  }

  v5 = [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  slides = self->_slides;
  v7 = [(NSMutableArray *)slides countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    height = CGSizeZero.height;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(slides);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = [v12 path];
        if (v13)
        {
          v14 = v13;
          v15 = objc_alloc_init(NSMutableDictionary);
          if (a3)
          {
            [a3 resolutionForPath:v14];
          }

          else
          {
            [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
          }

          if (v16 == CGSizeZero.width && v17 == height && v5 != 0)
          {
            [v5 resolutionForPath:v14];
          }

          v20 = v16 / v17;
          *&v20 = v20;
          [v15 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v20), @"aspectRatio"}];
          if ([v12 slide])
          {
            if ([v12 hasMovie])
            {
              goto LABEL_25;
            }
          }

          else if ([a3 isMovieAtPath:v14])
          {
LABEL_25:
            [v15 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"isMovie"}];
            [a3 durationForPath:v14];
            [v15 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"duration"}];
          }

          [v23 addObject:v15];
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v21 = [(NSMutableArray *)slides countByEnumeratingWithState:&v24 objects:v28 count:16];
      v8 = v21;
    }

    while (v21);
  }

  return v23;
}

- (void)updateEffectAttributes
{
  v3 = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
  if (v3)
  {
    v4 = v3;
    v5 = [(MPEffect *)self effectAttributes];
    [v5 addEntriesFromDictionary:v4];

    [(MPEffect *)self setEffectAttributes:v5];
  }
}

- (id)plugID
{
  v2 = [(MPEffect *)self nearestPlug];

  return [v2 objectID];
}

- (id)objectID
{
  v2 = [(MPEffect *)self nearestPlug];

  return [v2 objectID];
}

- (id)parentDocument
{
  v2 = [-[MPEffect parentContainer](self "parentContainer")];

  return [v2 parentDocument];
}

- (id)nearestPlug
{
  if (self->_plug)
  {
    return self->_plug;
  }

  v5 = [(MPEffect *)self parentContainer];

  return [v5 plug];
}

- (void)copyVars:(id)a3
{
  self->_position = *(a3 + 7);
  self->_size = *(a3 + 136);
  self->_zPosition = *(a3 + 16);
  self->_rotationAngle = *(a3 + 19);
  self->_xRotationAngle = *(a3 + 20);
  self->_yRotationAngle = *(a3 + 21);
  self->_scale = *(a3 + 22);
  self->_opacity = *(a3 + 13);
  self->_timeIn = *(a3 + 23);
  self->_phaseInDuration = *(a3 + 24);
  self->_phaseOutDuration = *(a3 + 25);
  self->_mainDuration = *(a3 + 26);
  self->_audioPriority = *(a3 + 29);
  effectID = self->_effectID;
  if (effectID)
  {

    self->_effectID = 0;
  }

  self->_effectID = [*(a3 + 27) copy];
  presetID = self->_presetID;
  if (presetID)
  {

    self->_presetID = 0;
  }

  self->_presetID = [*(a3 + 28) copy];
  uuid = self->_uuid;
  if (uuid)
  {

    self->_uuid = 0;
  }
}

- (void)copySlides:(id)a3
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

    [(MPEffect *)self addSlides:v5];
  }
}

- (void)copySecondarySlides:(id)a3
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

    [(MPEffect *)self addSecondarySlides:v5];
  }
}

- (void)copyTexts:(id)a3
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

    [(MPEffect *)self addTexts:v5];
  }
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

    [(MPEffect *)self addFilters:a3];
  }
}

- (void)copyAnimationPaths:(id)a3
{
  if (a3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
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
          [(MPEffect *)self setAnimationPath:v10 forKey:v9];
        }

        v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (void)copyAudioPlaylist:(id)a3
{
  v4 = [a3 copy];
  [(MPEffect *)self setAudioPlaylist:v4];
}

- (void)cleanup
{
  self->_cleaningUp = 1;
  *&self->_replaceSlides = 0;
  [(MPEffect *)self removeAllSlides];
  [(MPEffect *)self removeAllSecondarySlides];
  [(MPEffect *)self removeAllTexts];
  [(MPEffect *)self removeAllFilters];
  [(MPEffect *)self setAudioPlaylist:0];
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

        [(MPEffect *)self removeAnimationPathForKey:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
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
    [(MPEffect *)self opacity];
    [(MCPlugParallel *)self->_plug setOpacity:?];
    [(MPEffect *)self position];
    [(MCPlugParallel *)self->_plug setPosition:?];
    [(MPEffect *)self rotationAngle];
    [(MCPlugParallel *)self->_plug setRotationAngle:?];
    [(MPEffect *)self size];
    [(MCPlugParallel *)self->_plug setSize:?];
    [(MPEffect *)self xRotationAngle];
    [(MCPlugParallel *)self->_plug setXRotationAngle:?];
    [(MPEffect *)self yRotationAngle];
    [(MCPlugParallel *)self->_plug setYRotationAngle:?];
    [(MPEffect *)self scale];
    [(MCPlugParallel *)self->_plug setScale:?];
    [(MPEffect *)self phaseOutDuration];
    [(MCPlug *)self->_plug setPhaseOutDuration:?];
    [(MPEffect *)self phaseInDuration];
    [(MCPlug *)self->_plug setPhaseInDuration:?];
    [(MPEffect *)self mainDuration];
    [(MCPlug *)self->_plug setLoopDuration:?];
    [(MCPlugParallel *)self->_plug setAudioPriority:[(MPEffect *)self audioPriority]];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    filters = self->_filters;
    v8 = [(NSMutableArray *)filters countByEnumeratingWithState:&v43 objects:v50 count:16];
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
            objc_enumerationMutation(filters);
          }

          [*(*(&v43 + 1) + 8 * i) setFilter:{-[MCPlugParallel addFilterWithFilterID:](self->_plug, "addFilterWithFilterID:", objc_msgSend(*(*(&v43 + 1) + 8 * i), "filterID"))}];
        }

        v9 = [(NSMutableArray *)filters countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v9);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    animationPaths = self->_animationPaths;
    v13 = [(NSMutableDictionary *)animationPaths countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v40;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(animationPaths);
          }

          v17 = *(*(&v39 + 1) + 8 * j);
          v18 = [(NSMutableDictionary *)self->_animationPaths objectForKey:v17];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = off_1A4CB0;
          }

          else
          {
            v19 = off_1A4CB8;
          }

          v20 = [(__objc2_class *)*v19 animationPathWithKey:v17];
          [(MCPlug *)self->_plug addAnimationPath:v20];
          [v18 setAnimationPath:v20];
        }

        v14 = [(NSMutableDictionary *)animationPaths countByEnumeratingWithState:&v39 objects:v49 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v21 = self->_filters;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v35 objects:v48 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v36;
      do
      {
        for (k = 0; k != v23; k = k + 1)
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v35 + 1) + 8 * k) setFilter:0];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v35 objects:v48 count:16];
      }

      while (v23);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = self->_animationPaths;
    v27 = [(NSMutableDictionary *)v26 countByEnumeratingWithState:&v31 objects:v47 count:16];
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
            objc_enumerationMutation(v26);
          }

          [-[NSMutableDictionary objectForKey:](self->_animationPaths objectForKey:{*(*(&v31 + 1) + 8 * m)), "setAnimationPath:", 0}];
        }

        v28 = [(NSMutableDictionary *)v26 countByEnumeratingWithState:&v31 objects:v47 count:16];
      }

      while (v28);
    }
  }
}

- (void)setContainer:(id)a3
{
  container = self->_container;
  if (container)
  {
    [(MCContainer *)container specialRelease];
    self->_container = 0;
  }

  v6 = [a3 specialRetain];
  self->_container = v6;
  if (v6)
  {
    if ([-[MPEffect parentDocument](self "parentDocument")])
    {
      [(MCContainerEffect *)self->_container setIsLive:1];
    }

    [(MCContainerEffect *)self->_container setEffectID:[(MPEffect *)self effectID]];
    [(MPEffect *)self applyFormattedAttributes];
    v7 = [-[MPEffectContainer parentLayer](self->_parentContainer "parentLayer")];
    v8 = objc_alloc_init(NSMutableArray);
    v9 = objc_alloc_init(NSMutableArray);
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    slides = self->_slides;
    v11 = [(NSMutableArray *)slides countByEnumeratingWithState:&v92 objects:v103 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v93;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v93 != v13)
          {
            objc_enumerationMutation(slides);
          }

          v15 = *(*(&v92 + 1) + 8 * i);
          if ([v15 path])
          {
            v16 = [v7 videoAssetForFileAtPath:{objc_msgSend(v15, "path")}];
            v17 = v9;
          }

          else
          {
            [v8 addObjectsFromArray:{-[MCContainerEffect addSlidesForAssets:](self->_container, "addSlidesForAssets:", v9)}];
            [v9 removeAllObjects];
            v16 = [(MCContainerEffect *)self->_container addSlide];
            v17 = v8;
          }

          [v17 addObject:v16];
        }

        v12 = [(NSMutableArray *)slides countByEnumeratingWithState:&v92 objects:v103 count:16];
      }

      while (v12);
    }

    [v8 addObjectsFromArray:{-[MCContainerEffect addSlidesForAssets:](self->_container, "addSlidesForAssets:", v9)}];
    [v9 removeAllObjects];
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    secondarySlides = self->_secondarySlides;
    v19 = [(NSMutableArray *)secondarySlides countByEnumeratingWithState:&v88 objects:v102 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v89;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v89 != v21)
          {
            objc_enumerationMutation(secondarySlides);
          }

          v23 = *(*(&v88 + 1) + 8 * j);
          if ([v23 path])
          {
            v24 = [v7 videoAssetForFileAtPath:{objc_msgSend(v23, "path")}];
            v25 = v9;
          }

          else
          {
            [v8 addObjectsFromArray:{-[MCContainerEffect addSlidesForAssets:](self->_container, "addSlidesForAssets:", v9)}];
            [v9 removeAllObjects];
            v24 = [(MCContainerEffect *)self->_container addSlide];
            v25 = v8;
          }

          [v25 addObject:v24];
        }

        v20 = [(NSMutableArray *)secondarySlides countByEnumeratingWithState:&v88 objects:v102 count:16];
      }

      while (v20);
    }

    [v8 addObjectsFromArray:{-[MCContainerEffect addSlidesForAssets:](self->_container, "addSlidesForAssets:", v9)}];

    v26 = [v8 objectEnumerator];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v27 = self->_slides;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v84 objects:v101 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v85;
      do
      {
        for (k = 0; k != v29; k = k + 1)
        {
          if (*v85 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [*(*(&v84 + 1) + 8 * k) setSlide:{objc_msgSend(v26, "nextObject")}];
        }

        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v84 objects:v101 count:16];
      }

      while (v29);
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v32 = self->_secondarySlides;
    v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v80 objects:v100 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v81;
      do
      {
        for (m = 0; m != v34; m = m + 1)
        {
          if (*v81 != v35)
          {
            objc_enumerationMutation(v32);
          }

          [*(*(&v80 + 1) + 8 * m) setSlide:{objc_msgSend(v26, "nextObject")}];
        }

        v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v80 objects:v100 count:16];
      }

      while (v34);
    }

    v37 = objc_alloc_init(NSMutableArray);
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    texts = self->_texts;
    v39 = [(NSMutableArray *)texts countByEnumeratingWithState:&v76 objects:v99 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v77;
      do
      {
        for (n = 0; n != v40; n = n + 1)
        {
          if (*v77 != v41)
          {
            objc_enumerationMutation(texts);
          }

          [v37 addObject:{objc_msgSend(*(*(&v76 + 1) + 8 * n), "attributedString")}];
        }

        v40 = [(NSMutableArray *)texts countByEnumeratingWithState:&v76 objects:v99 count:16];
      }

      while (v40);
    }

    v43 = [-[MCContainerEffect addTextsForAttributedStrings:](self->_container addTextsForAttributedStrings:{v37), "objectEnumerator"}];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v44 = self->_texts;
    v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v72 objects:v98 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v73;
      do
      {
        for (ii = 0; ii != v46; ii = ii + 1)
        {
          if (*v73 != v47)
          {
            objc_enumerationMutation(v44);
          }

          [*(*(&v72 + 1) + 8 * ii) setText:{objc_msgSend(v43, "nextObject")}];
        }

        v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v72 objects:v98 count:16];
      }

      while (v46);
    }

    audioPlaylist = self->_audioPlaylist;
    if (audioPlaylist)
    {
      -[MPAudioPlaylist setMontage:](audioPlaylist, "setMontage:", [-[MPEffectContainer parentLayer](self->_parentContainer "parentLayer")]);
      v50 = self->_audioPlaylist;
      v51 = [(MCContainer *)self->_container audioPlaylistCreateIfNeeded];
      v52 = v50;
LABEL_72:
      [(MPAudioPlaylist *)v52 setAudioPlaylist:v51];
    }
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v53 = self->_slides;
    v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v68 objects:v97 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v69;
      do
      {
        for (jj = 0; jj != v55; jj = jj + 1)
        {
          if (*v69 != v56)
          {
            objc_enumerationMutation(v53);
          }

          [*(*(&v68 + 1) + 8 * jj) setSlide:0];
        }

        v55 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v68 objects:v97 count:16];
      }

      while (v55);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v58 = self->_texts;
    v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v64 objects:v96 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v65;
      do
      {
        for (kk = 0; kk != v60; kk = kk + 1)
        {
          if (*v65 != v61)
          {
            objc_enumerationMutation(v58);
          }

          [*(*(&v64 + 1) + 8 * kk) setText:0];
        }

        v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v64 objects:v96 count:16];
      }

      while (v60);
    }

    v63 = self->_audioPlaylist;
    if (v63)
    {
      [(MPAudioPlaylist *)v63 setMontage:0];
      v52 = self->_audioPlaylist;
      v51 = 0;
      goto LABEL_72;
    }
  }
}

- (void)setParentContainer:(id)a3
{
  if (a3 && self->_parentContainer)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"An effect container may one have one parent.  Please remove it first.  This is unsupported." userInfo:0, v3, v4]);
  }

  self->_parentContainer = a3;
}

- (BOOL)needsParallelizer
{
  [(MPEffect *)self opacity];
  if (v3 != 1.0)
  {
    return 1;
  }

  [(MPEffect *)self position];
  if (v5 != CGPointZero.x || v4 != CGPointZero.y)
  {
    return 1;
  }

  [(MPEffect *)self rotationAngle];
  if (v7 != 0.0)
  {
    return 1;
  }

  [(MPEffect *)self size];
  result = 1;
  if (v10 == 2.0 && v9 == 2.0)
  {
    [(MPEffect *)self zPosition];
    if (v11 == 0.0)
    {
      [(MPEffect *)self xRotationAngle];
      if (v12 == 0.0)
      {
        [(MPEffect *)self yRotationAngle];
        if (v13 == 0.0)
        {
          [(MPEffect *)self scale];
          if (v14 == 1.0 && ![-[MPEffect filters](self "filters")] && !objc_msgSend(-[MPEffect animationPaths](self, "animationPaths"), "count"))
          {
            parentContainer = self->_parentContainer;
            if (!parentContainer || [(MPEffectContainer *)parentContainer countOfEffects]<= 1)
            {
              return 0;
            }
          }
        }
      }
    }

    return 1;
  }

  return result;
}

- (void)scaleMainDuration
{
  [(MPEffectContainer *)self->_parentContainer duration];
  v4 = v3;
  [(MPEffect *)self phaseInDuration];
  v6 = v5;
  [(MPEffect *)self phaseOutDuration];
  v8 = v7;
  [(MPEffect *)self mainDuration];
  v10 = v9;
  v11 = v6 + v8 + v9;
  if (v4 != v11)
  {
    v12 = v9 + v4 - v11;
    if (v12 >= 0.0)
    {
      if (v9 != v12)
      {
        [(MPEffect *)self willChangeValueForKey:@"mainDuration"];
        self->_mainDuration = v12;
        [(MPEffect *)self didChangeValueForKey:@"mainDuration"];
      }

      if (self->_container)
      {
        plug = self->_plug;
        if (!plug)
        {
          plug = [(MPEffectContainer *)self->_parentContainer plug];
        }

        [(MCPlug *)plug loopDuration];
        if (v24 != v12)
        {
          v22 = plug;
          v21 = v12;
          goto LABEL_25;
        }
      }
    }

    else
    {
      v13 = v6 / (v6 + v8);
      v14 = v4 * v13;
      v15 = 1.0 - v13;
      if (v4 * v13 != v6)
      {
        [(MPEffect *)self willChangeValueForKey:@"phaseInDuration"];
        self->_phaseInDuration = v14;
        [(MPEffect *)self didChangeValueForKey:@"phaseInDuration"];
      }

      v16 = v4 * v15;
      if (v10 != 0.0)
      {
        [(MPEffect *)self willChangeValueForKey:@"mainDuration"];
        self->_mainDuration = 0.0;
        [(MPEffect *)self didChangeValueForKey:@"mainDuration"];
      }

      if (v16 != v8)
      {
        [(MPEffect *)self willChangeValueForKey:@"phaseOutDuration"];
        self->_phaseOutDuration = v16;
        [(MPEffect *)self didChangeValueForKey:@"phaseOutDuration"];
      }

      if (self->_container)
      {
        v17 = self->_plug;
        if (!v17)
        {
          v17 = [(MPEffectContainer *)self->_parentContainer plug];
        }

        [(MCPlug *)v17 phaseInDuration];
        if (v18 != v14)
        {
          [(MCPlug *)v17 setPhaseInDuration:v14];
        }

        [(MCPlug *)v17 phaseOutDuration];
        if (v19 != v16)
        {
          [(MCPlug *)v17 setPhaseOutDuration:v16];
        }

        [(MCPlug *)v17 loopDuration];
        if (v20 != 0.0)
        {
          v21 = 0.0;
          v22 = v17;
LABEL_25:
          [(MCPlug *)v22 setLoopDuration:v21];
        }
      }
    }
  }

  effectTiming = self->_effectTiming;
  if (effectTiming)
  {
    phaseOutDuration = self->_phaseOutDuration;
    mainDuration = self->_mainDuration;
    phaseInDuration = self->_phaseInDuration;

    [(MZEffectTiming *)effectTiming setPhaseInDuration:phaseInDuration mainDuration:mainDuration phaseOutDuration:phaseOutDuration];
  }
}

- (BOOL)hasMovies
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  slides = self->_slides;
  v3 = [(NSMutableArray *)slides countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(slides);
        }

        if ([*(*(&v8 + 1) + 8 * v6) hasMovie])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v3 = [(NSMutableArray *)slides countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (BOOL)hasPanoramasInDocument:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  slides = self->_slides;
  v5 = [(NSMutableArray *)slides countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(slides);
        }

        if ([*(*(&v10 + 1) + 8 * v8) isPanoramaInDocument:a3])
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v5 = [(NSMutableArray *)slides countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (id)nearestLayerGroup
{
  v2 = [(MPEffect *)self parentContainer];

  return [v2 nearestLayerGroup];
}

- (id)slideForMCSlide:(id)a3
{
  v5 = [(NSArray *)[(MPEffect *)self slides] copy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v23 + 1) + 8 * v9);
      v11 = [objc_msgSend(v10 "slide")];
      if (v11 == [a3 index])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (v10)
    {
      return v10;
    }
  }

  else
  {
LABEL_9:
  }

  v12 = [-[MPEffect secondarySlides](self "secondarySlides")];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
LABEL_13:
    v16 = 0;
    while (1)
    {
      if (*v20 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v10 = *(*(&v19 + 1) + 8 * v16);
      v17 = [objc_msgSend(v10 "slide")];
      if (v17 == [a3 index])
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v14)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    v10 = 0;
  }

  return v10;
}

- (void)insertObject:(id)a3 inSlidesAtIndex:(int64_t)a4
{
  v6 = [NSArray arrayWithObject:a3];

  [(MPEffect *)self insertSlides:v6 atIndex:a4];
}

- (void)removeObjectFromSlidesAtIndex:(int64_t)a3
{
  v4 = [NSIndexSet indexSetWithIndex:a3];

  [(MPEffect *)self removeSlidesAtIndices:v4];
}

- (void)replaceObjectInSlidesAtIndex:(int64_t)a3 withObject:(id)a4
{
  [(MPEffect *)self removeSlidesAtIndices:[NSIndexSet indexSetWithIndex:?]];
  v7 = [NSArray arrayWithObject:a4];

  [(MPEffect *)self insertSlides:v7 atIndex:a3];
}

- (void)insertObject:(id)a3 inTextsAtIndex:(int64_t)a4
{
  v6 = [NSArray arrayWithObject:a3];

  [(MPEffect *)self insertTexts:v6 atIndex:a4];
}

- (void)removeObjectFromTextsAtIndex:(int64_t)a3
{
  v4 = [NSIndexSet indexSetWithIndex:a3];

  [(MPEffect *)self removeTextsAtIndices:v4];
}

- (void)replaceObjectInTextsAtIndex:(int64_t)a3 withObject:(id)a4
{
  [(MPEffect *)self removeTextsAtIndices:[NSIndexSet indexSetWithIndex:?]];
  v7 = [NSArray arrayWithObject:a4];

  [(MPEffect *)self insertTexts:v7 atIndex:a3];
}

- (void)insertObject:(id)a3 inFiltersAtIndex:(int64_t)a4
{
  v6 = [NSArray arrayWithObject:a3];

  [(MPEffect *)self insertFilters:v6 atIndex:a4];
}

- (void)removeObjectFromFiltersAtIndex:(int64_t)a3
{
  v4 = [NSIndexSet indexSetWithIndex:a3];

  [(MPEffect *)self removeFiltersAtIndices:v4];
}

- (void)replaceObjectInFiltersAtIndex:(int64_t)a3 withObject:(id)a4
{
  [(MPEffect *)self removeFiltersAtIndices:[NSIndexSet indexSetWithIndex:?]];
  v7 = [NSArray arrayWithObject:a4];

  [(MPEffect *)self insertFilters:v7 atIndex:a3];
}

- (void)setXPosition:(double)a3
{
  [(MPEffect *)self yPosition];

  [(MPEffect *)self setPosition:a3, v5];
}

- (void)setYPosition:(double)a3
{
  [(MPEffect *)self xPosition];

  [(MPEffect *)self setPosition:?];
}

- (void)setHeight:(double)a3
{
  [(MPEffect *)self width];

  [(MPEffect *)self setSize:?];
}

- (void)setWidth:(double)a3
{
  [(MPEffect *)self height];

  [(MPEffect *)self setSize:a3, v5];
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

        [(MPEffect *)self setAnimationPath:v9 forKey:v5];
      }

      v21 = [a3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v21);
  }
}

@end