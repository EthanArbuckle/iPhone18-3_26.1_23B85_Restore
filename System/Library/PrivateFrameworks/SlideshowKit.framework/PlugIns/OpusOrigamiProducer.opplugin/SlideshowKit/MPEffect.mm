@interface MPEffect
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)effectWithEffectID:(id)d;
+ (id)effectWithEffectID:(id)d andPaths:(id)paths;
+ (id)effectWithEffectID:(id)d andStrings:(id)strings;
+ (id)effectWithEffectID:(id)d strings:(id)strings paths:(id)paths;
- (BOOL)hasMovies;
- (BOOL)hasPanoramasInDocument:(id)document;
- (BOOL)isLive;
- (BOOL)needsParallelizer;
- (CGPoint)position;
- (CGSize)size;
- (MPEffect)init;
- (MPEffect)initWithEffectID:(id)d andPaths:(id)paths;
- (MPEffect)initWithEffectID:(id)d andStrings:(id)strings;
- (MPEffect)initWithEffectID:(id)d strings:(id)strings paths:(id)paths;
- (NSString)presetID;
- (double)fullDuration;
- (double)lowestDisplayTime;
- (id)_effectAttributes;
- (id)animationPathForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)effectAttributeForKey:(id)key;
- (id)formattedAttributes;
- (id)fullDebugLog;
- (id)nearestLayerGroup;
- (id)nearestPlug;
- (id)objectID;
- (id)parentDocument;
- (id)plugID;
- (id)scriptingAnimations;
- (id)slideForMCSlide:(id)slide;
- (id)slideInformationWithDocument:(id)document;
- (id)videoPaths;
- (int64_t)maxNumberOfSecondarySlides;
- (int64_t)maxNumberOfSlides;
- (int64_t)zIndex;
- (void)_updateEffectTimingWithDocument:(id)document forExport:(BOOL)export;
- (void)_updateTiming:(BOOL)timing forExport:(BOOL)export;
- (void)addFilter:(id)filter;
- (void)addFilters:(id)filters;
- (void)addSecondarySlide:(id)slide;
- (void)addSecondarySlides:(id)slides;
- (void)addSlide:(id)slide;
- (void)addSlides:(id)slides;
- (void)addText:(id)text;
- (void)addTexts:(id)texts;
- (void)applyFormattedAttributes;
- (void)cleanup;
- (void)copyAnimationPaths:(id)paths;
- (void)copyAudioPlaylist:(id)playlist;
- (void)copyFilters:(id)filters;
- (void)copySecondarySlides:(id)slides;
- (void)copySlides:(id)slides;
- (void)copyTexts:(id)texts;
- (void)copyVars:(id)vars;
- (void)createSecondarySlidesWithPaths:(id)paths;
- (void)createSlidesWithPaths:(id)paths;
- (void)createTextsWithDefaultStrings;
- (void)createTextsWithStrings:(id)strings secondLineFactor:(double)factor fillIn:(BOOL)in;
- (void)dealloc;
- (void)insertFilters:(id)filters atIndex:(int64_t)index;
- (void)insertObject:(id)object inFiltersAtIndex:(int64_t)index;
- (void)insertObject:(id)object inSlidesAtIndex:(int64_t)index;
- (void)insertObject:(id)object inTextsAtIndex:(int64_t)index;
- (void)insertSecondarySlides:(id)slides atIndex:(int64_t)index;
- (void)insertSlides:(id)slides atIndex:(int64_t)index;
- (void)insertTexts:(id)texts atIndex:(int64_t)index;
- (void)moveFiltersFromIndices:(id)indices toIndex:(int64_t)index;
- (void)moveSlidesFromIndices:(id)indices toIndex:(int64_t)index;
- (void)moveTextsFromIndices:(id)indices toIndex:(int64_t)index;
- (void)reconfigureSlides;
- (void)removeAllFilters;
- (void)removeAllSecondarySlides;
- (void)removeAllSlides;
- (void)removeAllTexts;
- (void)removeAnimationPathForKey:(id)key;
- (void)removeFiltersAtIndices:(id)indices;
- (void)removeObjectFromFiltersAtIndex:(int64_t)index;
- (void)removeObjectFromSlidesAtIndex:(int64_t)index;
- (void)removeObjectFromTextsAtIndex:(int64_t)index;
- (void)removeSecondarySlidesAtIndices:(id)indices;
- (void)removeSlidesAtIndices:(id)indices;
- (void)removeTextsAtIndices:(id)indices;
- (void)replaceObjectInFiltersAtIndex:(int64_t)index withObject:(id)object;
- (void)replaceObjectInSlidesAtIndex:(int64_t)index withObject:(id)object;
- (void)replaceObjectInTextsAtIndex:(int64_t)index withObject:(id)object;
- (void)replaceSlideAtIndex:(int64_t)index withSlide:(id)slide;
- (void)replaceTextsWitStrings:(id)strings;
- (void)scaleMainDuration;
- (void)setAnimationPath:(id)path forKey:(id)key;
- (void)setAudioPlaylist:(id)playlist;
- (void)setContainer:(id)container;
- (void)setEffectAttribute:(id)attribute forKey:(id)key;
- (void)setEffectAttributes:(id)attributes;
- (void)setEffectID:(id)d;
- (void)setFullDuration:(double)duration;
- (void)setHeight:(double)height;
- (void)setMainDuration:(double)duration;
- (void)setOpacity:(double)opacity;
- (void)setParentContainer:(id)container;
- (void)setPhaseInDuration:(double)duration;
- (void)setPhaseOutDuration:(double)duration;
- (void)setPlug:(id)plug;
- (void)setPosition:(CGPoint)position;
- (void)setPresetID:(id)d;
- (void)setRandomSeed:(int64_t)seed;
- (void)setRotationAngle:(double)angle;
- (void)setScale:(double)scale;
- (void)setScriptingAnimations:(id)animations;
- (void)setSize:(CGSize)size;
- (void)setWidth:(double)width;
- (void)setXPosition:(double)position;
- (void)setXRotationAngle:(double)angle;
- (void)setYPosition:(double)position;
- (void)setYRotationAngle:(double)angle;
- (void)setZPosition:(double)position;
- (void)updateEffectAttributes;
@end

@implementation MPEffect

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  if ([key isEqualToString:@"slides"])
  {
    return 0;
  }

  else
  {
    return [key isEqualToString:@"texts"] ^ 1;
  }
}

+ (id)effectWithEffectID:(id)d
{
  v3 = [[self alloc] initWithEffectID:d];

  return v3;
}

+ (id)effectWithEffectID:(id)d andPaths:(id)paths
{
  v4 = [[self alloc] initWithEffectID:d andPaths:paths];

  return v4;
}

+ (id)effectWithEffectID:(id)d andStrings:(id)strings
{
  v4 = [[self alloc] initWithEffectID:d andStrings:strings];

  return v4;
}

+ (id)effectWithEffectID:(id)d strings:(id)strings paths:(id)paths
{
  v5 = [[self alloc] initWithEffectID:d strings:strings paths:paths];

  return v5;
}

- (MPEffect)initWithEffectID:(id)d andPaths:(id)paths
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

    v7->_effectID = [d copy];
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

    [(MPEffect *)v7 createSlidesWithPaths:paths];
    [(MPEffect *)v7 _updateTiming:0];
  }

  return v7;
}

- (MPEffect)initWithEffectID:(id)d andStrings:(id)strings
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

    v7->_effectID = [d copy];
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

    [(MPEffect *)v7 createTextsWithStrings:strings secondLineFactor:1.0];
    [(MPEffect *)v7 _updateTiming:0];
  }

  return v7;
}

- (MPEffect)initWithEffectID:(id)d strings:(id)strings paths:(id)paths
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

    v9->_effectID = [d copy];
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

    [(MPEffect *)v9 createTextsWithStrings:strings secondLineFactor:1.0];
    [(MPEffect *)v9 createSlidesWithPaths:paths];
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

  slides = [(NSString *)v3 stringByAppendingFormat:@"\t                Slide Count: %d\n", slides];
  texts = self->_texts;
  if (texts)
  {
    texts = [(NSMutableArray *)texts count];
  }

  texts = [(NSString *)slides stringByAppendingFormat:@"\t                 Text Count: %d\n", texts];
  filters = self->_filters;
  if (filters)
  {
    filters = [(NSMutableArray *)filters count];
  }

  filters = [(NSString *)texts stringByAppendingFormat:@"\t               Filter Count: %d\n", filters];
  [(MPEffect *)self mainDuration];
  v11 = [(NSString *)filters stringByAppendingFormat:@"\t              Main Duration: %f\n", v10];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (void)setEffectID:(id)d
{
  effectID = self->_effectID;
  if (effectID)
  {

    self->_effectID = 0;
  }

  self->_effectID = [d copy];
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

    [(MCContainerEffect *)container setEffectID:d];
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

- (void)setPresetID:(id)d
{
  presetID = self->_presetID;
  if (presetID)
  {

    self->_presetID = 0;
  }

  self->_presetID = [d copy];
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

- (void)setEffectAttributes:(id)attributes
{
  attributes = self->_attributes;
  if (attributes)
  {

    self->_attributes = 0;
  }

  self->_attributes = [attributes mutableCopy];
  [(MPEffect *)self applyFormattedAttributes];
  if (self->_supportsEffectTiming)
  {

    [(MPEffect *)self _updateTiming:1];
  }
}

- (id)effectAttributeForKey:(id)key
{
  _effectAttributes = [(MPEffect *)self _effectAttributes];

  return [_effectAttributes objectForKey:key];
}

- (void)setEffectAttribute:(id)attribute forKey:(id)key
{
  attributes = self->_attributes;
  if (!attributes)
  {
    attributes = objc_alloc_init(NSMutableDictionary);
    self->_attributes = attributes;
  }

  [(NSMutableDictionary *)attributes setValue:attribute forKey:key];
  container = self->_container;
  if (container)
  {

    [(MCContainerEffect *)container setEffectAttribute:attribute forKey:key];
  }
}

- (void)setOpacity:(double)opacity
{
  self->_opacity = opacity;
  if (self->_container)
  {
    if (opacity == 1.0 && self->_plug && (v5 = self->_parentContainer) != 0 && ![(MPEffectContainer *)v5 shouldBeParallelizer])
    {
      parentContainer = self->_parentContainer;

      [(MPEffectContainer *)parentContainer convertFromParallelizerToEffectContainer];
    }

    else
    {
      plug = self->_plug;
      if (opacity != 1.0 && plug == 0)
      {
        v8 = self->_parentContainer;

        [(MPEffectContainer *)v8 convertFromEffectContainerToParallelizer];
      }

      else if (plug)
      {

        [(MCPlugParallel *)plug setOpacity:opacity];
      }
    }
  }
}

- (void)setScale:(double)scale
{
  self->_scale = scale;
  if (self->_container)
  {
    if (scale != 1.0 && self->_plug && (v5 = self->_parentContainer) != 0 && ![(MPEffectContainer *)v5 shouldBeParallelizer])
    {
      parentContainer = self->_parentContainer;

      [(MPEffectContainer *)parentContainer convertFromParallelizerToEffectContainer];
    }

    else
    {
      plug = self->_plug;
      if (scale == 1.0 && plug == 0)
      {
        v8 = self->_parentContainer;

        [(MPEffectContainer *)v8 convertFromEffectContainerToParallelizer];
      }

      else if (plug)
      {

        [(MCPlugParallel *)plug setScale:scale];
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

- (void)setPosition:(CGPoint)position
{
  self->_position = position;
  if (!self->_container)
  {
    return;
  }

  y = position.y;
  x = position.x;
  plug = self->_plug;
  if (position.x != CGPointZero.x || position.y != CGPointZero.y)
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

- (void)setZPosition:(double)position
{
  self->_zPosition = position;
  if (self->_container)
  {
    if (position == 0.0 && self->_plug && (v5 = self->_parentContainer) != 0 && ![(MPEffectContainer *)v5 shouldBeParallelizer])
    {
      parentContainer = self->_parentContainer;

      [(MPEffectContainer *)parentContainer convertFromParallelizerToEffectContainer];
    }

    else
    {
      plug = self->_plug;
      if (position != 0.0 && plug == 0)
      {
        v8 = self->_parentContainer;

        [(MPEffectContainer *)v8 convertFromEffectContainerToParallelizer];
      }

      else if (plug)
      {

        [(MCPlugParallel *)plug setZPosition:position];
      }
    }
  }
}

- (void)setRotationAngle:(double)angle
{
  self->_rotationAngle = angle;
  if (self->_container)
  {
    if (angle == 0.0 && self->_plug && (v5 = self->_parentContainer) != 0 && ![(MPEffectContainer *)v5 shouldBeParallelizer])
    {
      parentContainer = self->_parentContainer;

      [(MPEffectContainer *)parentContainer convertFromParallelizerToEffectContainer];
    }

    else
    {
      plug = self->_plug;
      if (angle != 0.0 && plug == 0)
      {
        v8 = self->_parentContainer;

        [(MPEffectContainer *)v8 convertFromEffectContainerToParallelizer];
      }

      else if (plug)
      {

        [(MCPlugParallel *)plug setRotationAngle:angle];
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

- (void)setSize:(CGSize)size
{
  self->_size = size;
  if (!self->_container)
  {
    return;
  }

  height = size.height;
  width = size.width;
  plug = self->_plug;
  if (size.width != 2.0 || size.height != 2.0)
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

- (void)setXRotationAngle:(double)angle
{
  self->_xRotationAngle = angle;
  if (self->_container)
  {
    if (angle == 0.0 && self->_plug && (v5 = self->_parentContainer) != 0 && ![(MPEffectContainer *)v5 shouldBeParallelizer])
    {
      parentContainer = self->_parentContainer;

      [(MPEffectContainer *)parentContainer convertFromParallelizerToEffectContainer];
    }

    else
    {
      plug = self->_plug;
      if (angle != 0.0 && plug == 0)
      {
        v8 = self->_parentContainer;

        [(MPEffectContainer *)v8 convertFromEffectContainerToParallelizer];
      }

      else if (plug)
      {

        [(MCPlugParallel *)plug setXRotationAngle:angle];
      }
    }
  }
}

- (void)setYRotationAngle:(double)angle
{
  self->_yRotationAngle = angle;
  if (self->_container)
  {
    if (angle == 0.0 && self->_plug && (v5 = self->_parentContainer) != 0 && ![(MPEffectContainer *)v5 shouldBeParallelizer])
    {
      parentContainer = self->_parentContainer;

      [(MPEffectContainer *)parentContainer convertFromParallelizerToEffectContainer];
    }

    else
    {
      plug = self->_plug;
      if (angle != 0.0 && plug == 0)
      {
        v8 = self->_parentContainer;

        [(MPEffectContainer *)v8 convertFromEffectContainerToParallelizer];
      }

      else if (plug)
      {

        [(MCPlugParallel *)plug setYRotationAngle:angle];
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

- (void)setFullDuration:(double)duration
{
  [(MPEffect *)self fullDuration];
  v6 = v5 - duration;
  [(MPEffect *)self mainDuration];
  v8 = v7 + v6;

  [(MPEffect *)self setMainDuration:v8];
}

- (void)setPhaseInDuration:(double)duration
{
  if (duration >= 0.0)
  {
    durationCopy = duration;
    [(MPEffect *)self phaseInDuration];
    if (v5 != durationCopy)
    {
      v6 = [objc_msgSend(-[MPEffect parentContainer](self "parentContainer")];
      nearestLayerGroup = [(MPEffect *)self nearestLayerGroup];
      if (nearestLayerGroup)
      {
        autoAdjustDuration = [nearestLayerGroup autoAdjustDuration];
      }

      else
      {
        autoAdjustDuration = 1;
      }

      if (self->_parentContainer)
      {
        if (([objc_msgSend(v6 documentAttributeForKey:{kMPDocumentEnforceSafeTiming), "BOOLValue"}] & autoAdjustDuration) == 1)
        {
          [(MPEffect *)self phaseInDuration];
          v10 = v9 - durationCopy;
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
            durationCopy = v17 - v18;
          }
        }
      }

      [(MPEffect *)self phaseInDuration];
      self->_phaseInDuration = durationCopy;
      if (autoAdjustDuration)
      {
        [(MPEffectContainer *)self->_parentContainer calculateDurationToSmallest:durationCopy < v19];
      }

      if (self->_container)
      {
        plug = self->_plug;
        if (!plug)
        {
          plug = [(MPEffectContainer *)self->_parentContainer plug];
        }

        [(MCPlug *)plug setPhaseInDuration:durationCopy];
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

- (void)setPhaseOutDuration:(double)duration
{
  if (duration >= 0.0)
  {
    durationCopy = duration;
    [(MPEffect *)self phaseOutDuration];
    if (v5 != durationCopy)
    {
      v6 = [objc_msgSend(-[MPEffect parentContainer](self "parentContainer")];
      nearestLayerGroup = [(MPEffect *)self nearestLayerGroup];
      if (nearestLayerGroup)
      {
        autoAdjustDuration = [nearestLayerGroup autoAdjustDuration];
      }

      else
      {
        autoAdjustDuration = 1;
      }

      if (self->_parentContainer)
      {
        if (([objc_msgSend(v6 documentAttributeForKey:{kMPDocumentEnforceSafeTiming), "BOOLValue"}] & autoAdjustDuration) == 1)
        {
          [(MPEffect *)self phaseOutDuration];
          v10 = v9 - durationCopy;
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
            durationCopy = v17 - v18;
          }
        }
      }

      [(MPEffect *)self phaseOutDuration];
      self->_phaseOutDuration = durationCopy;
      if (autoAdjustDuration)
      {
        [(MPEffectContainer *)self->_parentContainer calculateDurationToSmallest:durationCopy < v19];
      }

      if (self->_container)
      {
        plug = self->_plug;
        if (!plug)
        {
          plug = [(MPEffectContainer *)self->_parentContainer plug];
        }

        [(MCPlug *)plug setPhaseOutDuration:durationCopy];
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

- (void)setMainDuration:(double)duration
{
  if (duration >= 0.0)
  {
    durationCopy = duration;
    [(MPEffect *)self mainDuration];
    if (v5 != durationCopy)
    {
      v6 = [objc_msgSend(-[MPEffect parentContainer](self "parentContainer")];
      nearestLayerGroup = [(MPEffect *)self nearestLayerGroup];
      if (nearestLayerGroup)
      {
        autoAdjustDuration = [nearestLayerGroup autoAdjustDuration];
      }

      else
      {
        autoAdjustDuration = 1;
      }

      if (self->_parentContainer)
      {
        if (([objc_msgSend(v6 documentAttributeForKey:{kMPDocumentEnforceSafeTiming), "BOOLValue"}] & autoAdjustDuration) == 1)
        {
          [(MPEffect *)self mainDuration];
          v10 = v9 - durationCopy;
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
            durationCopy = v17 - v18;
          }
        }
      }

      [(MPEffect *)self mainDuration];
      self->_mainDuration = durationCopy;
      if (autoAdjustDuration)
      {
        [(MPEffectContainer *)self->_parentContainer calculateDurationToSmallest:durationCopy < v19];
      }

      if (self->_container)
      {
        plug = self->_plug;
        if (!plug)
        {
          plug = [(MPEffectContainer *)self->_parentContainer plug];
        }

        [(MCPlug *)plug setLoopDuration:durationCopy];
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

  effects = [(MPEffectContainer *)parentContainer effects];

  return [effects indexOfObject:self];
}

- (void)addSlide:(id)slide
{
  v6 = [[NSArray alloc] initWithObjects:{slide, 0}];
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

- (void)addSlides:(id)slides
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

  [(MPEffect *)self insertSlides:slides atIndex:v6];
}

- (void)insertSlides:(id)slides atIndex:(int64_t)index
{
  v7 = objc_autoreleasePoolPush();
  if (!self->_slides)
  {
    self->_slides = objc_alloc_init(NSMutableArray);
  }

  v8 = [[NSIndexSet alloc] initWithIndexesInRange:{index, objc_msgSend(slides, "count")}];
  if (!self->_replaceSlides)
  {
    [(MPEffect *)self willChange:2 valuesAtIndexes:v8 forKey:@"slides"];
  }

  if ([(NSMutableArray *)self->_slides count])
  {
    isLive = [(MCContainerEffect *)self->_container isLive];
  }

  else
  {
    isLive = 0;
  }

  v59 = v8;
  [(NSMutableArray *)self->_slides insertObjects:slides atIndexes:v8];
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v10 = [slides countByEnumeratingWithState:&v81 objects:v90 count:16];
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
          objc_enumerationMutation(slides);
        }

        [*(*(&v81 + 1) + 8 * i) setParent:self];
      }

      v11 = [slides countByEnumeratingWithState:&v81 objects:v90 count:16];
    }

    while (v11);
  }

  if (self->_container)
  {
    v57 = v7;
    v14 = objc_alloc_init(NSMutableArray);
    if (isLive)
    {
      index = [(MCContainerEffect *)self->_container nextAvailableSlideIndex];
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v15 = [slides countByEnumeratingWithState:&v77 objects:v89 count:16];
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
            objc_enumerationMutation(slides);
          }

          path = [*(*(&v77 + 1) + 8 * v18) path];
          v21 = path;
          v17 = path == 0;
          if (v19 != -1 && v19 != v17)
          {
            goto LABEL_36;
          }

          v18 = v18 + 1;
          v19 = path == 0;
        }

        while (v16 != v18);
        v16 = [slides countByEnumeratingWithState:&v77 objects:v89 count:16];
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
        v27 = [slides countByEnumeratingWithState:&v73 objects:v88 count:16];
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
                objc_enumerationMutation(slides);
              }

              v31 = *(*(&v73 + 1) + 8 * j);
              if ([v31 path])
              {
                v32 = -[MCContainerEffect insertSlideForAsset:atIndex:](self->_container, "insertSlideForAsset:atIndex:", [objc_msgSend(-[MPEffectContainer parentLayer](self->_parentContainer "parentLayer")], index);
              }

              else
              {
                v32 = [(MCContainerEffect *)self->_container insertSlideAtIndex:index];
              }

              [v14 addObject:v32];
              if (isLive)
              {
                index = [(MCContainerEffect *)self->_container nextAvailableSlideIndex];
              }

              else
              {
                ++index;
              }
            }

            v28 = [slides countByEnumeratingWithState:&v73 objects:v88 count:16];
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
    v23 = [slides countByEnumeratingWithState:&v69 objects:v87 count:16];
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
            objc_enumerationMutation(slides);
          }

          [v22 addObject:{objc_msgSend(objc_msgSend(-[MPEffectContainer parentLayer](self->_parentContainer, "parentLayer"), "montage"), "videoAssetForFileAtPath:", objc_msgSend(*(*(&v69 + 1) + 8 * k), "path"))}];
        }

        v24 = [slides countByEnumeratingWithState:&v69 objects:v87 count:16];
      }

      while (v24);
    }

    [v14 addObjectsFromArray:{-[MCContainerEffect insertSlidesForAssets:atIndex:](self->_container, "insertSlidesForAssets:atIndex:", v22, index)}];

LABEL_49:
    objectEnumerator = [v14 objectEnumerator];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v34 = [slides countByEnumeratingWithState:&v65 objects:v86 count:16];
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
            objc_enumerationMutation(slides);
          }

          [*(*(&v65 + 1) + 8 * m) setSlide:{objc_msgSend(objectEnumerator, "nextObject")}];
        }

        v35 = [slides countByEnumeratingWithState:&v65 objects:v86 count:16];
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
    parentDocument = [(MPEffect *)self parentDocument];
    if (!parentDocument)
    {
      if ([+[MPAuthoringController sharedController](MPAuthoringController "sharedController")])
      {
        parentDocument = [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
      }

      else
      {
        parentDocument = 0;
      }
    }

    v40 = [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
    if ([parentDocument isLive] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v58 = v7;
      v41 = objc_alloc_init(NSMutableArray);
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v42 = [slides countByEnumeratingWithState:&v61 objects:v85 count:16];
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
              objc_enumerationMutation(slides);
            }

            path2 = [*(*(&v61 + 1) + 8 * n) path];
            if (path2)
            {
              v48 = path2;
              v49 = objc_alloc_init(NSMutableDictionary);
              if (parentDocument)
              {
                [parentDocument resolutionForPath:v48];
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

          v43 = [slides countByEnumeratingWithState:&v61 objects:v85 count:16];
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

- (void)removeSlidesAtIndices:(id)indices
{
  slides = self->_slides;
  if (slides)
  {
    if ([(NSMutableArray *)slides count])
    {
      lastIndex = [indices lastIndex];
      if (lastIndex < [(NSMutableArray *)self->_slides count])
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

        [(MPEffect *)self willChange:v8 valuesAtIndexes:indices forKey:@"slides"];
        if (self->_container)
        {
          v9 = [indices mutableCopy];
          if ([(MCContainerEffect *)self->_container isLive])
          {
            [v9 shiftIndexesStartingAtIndex:objc_msgSend(v9 by:{"firstIndex"), self->_liveIndex - objc_msgSend(indices, "count")}];
          }

          [(MCContainerEffect *)self->_container removeSlidesAtIndices:v9];
        }

        lastIndex2 = [indices lastIndex];
        if (lastIndex2 != 0x7FFFFFFFFFFFFFFFLL)
        {
          for (i = lastIndex2; i != 0x7FFFFFFFFFFFFFFFLL; i = [indices indexLessThanIndex:i])
          {
            v12 = [(NSMutableArray *)self->_slides objectAtIndex:i];
            [v12 setParent:0];
            [v12 setSlide:0];
          }
        }

        [(NSMutableArray *)self->_slides removeObjectsAtIndexes:indices];
        if (self->_replaceSlides)
        {
          firstIndex = [indices firstIndex];
          if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
          {
            for (j = firstIndex; j != 0x7FFFFFFFFFFFFFFFLL; j = [indices indexGreaterThanIndex:j])
            {
              v15 = [[NSArray alloc] initWithObjects:{+[MPSlide slide](MPSlide, "slide"), 0}];
              [(MPEffect *)self insertSlides:v15 atIndex:j];
            }
          }
        }

        [(MPEffect *)self didChange:v8 valuesAtIndexes:indices forKey:@"slides"];
        if (self->_supportsEffectTiming)
        {
          parentDocument = [(MPEffect *)self parentDocument];
          if (!parentDocument)
          {
            if ([+[MPAuthoringController sharedController](MPAuthoringController "sharedController")])
            {
              parentDocument = [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
            }

            else
            {
              parentDocument = 0;
            }
          }

          if (![parentDocument isLive] || (objc_opt_respondsToSelector() & 1) == 0)
          {
            [(MPEffect *)self _updateTiming:1];
          }

          if ([parentDocument isLive])
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

- (void)replaceSlideAtIndex:(int64_t)index withSlide:(id)slide
{
  if (self->_slides)
  {
    v7 = [[NSIndexSet alloc] initWithIndex:index];
    [(MPEffect *)self willChange:4 valuesAtIndexes:v7 forKey:@"slides"];
    container = self->_container;
    if (container)
    {
      [(MCContainerEffect *)container removeSlidesAtIndices:v7];
      v9 = [(NSMutableArray *)self->_slides objectAtIndex:index];
      [v9 setParent:0];
      [v9 setSlide:0];
    }

    [(NSMutableArray *)self->_slides removeObjectsAtIndexes:v7];
    replaceSlides = self->_replaceSlides;
    self->_replaceSlides = 1;
    v11 = [[NSArray alloc] initWithObjects:{slide, 0}];
    [(MPEffect *)self insertSlides:v11 atIndex:index];

    self->_replaceSlides = replaceSlides;
    [(MPEffect *)self didChange:4 valuesAtIndexes:v7 forKey:@"slides"];

    if (self->_supportsEffectTiming)
    {

      [(MPEffect *)self _updateTiming:1];
    }
  }
}

- (void)moveSlidesFromIndices:(id)indices toIndex:(int64_t)index
{
  slides = self->_slides;
  if (slides)
  {
    if (self->_container)
    {
      [(MCContainerEffect *)self->_container moveSlidesAtIndices:indices toIndex:index];
      slides = self->_slides;
    }

    v8 = [(NSMutableArray *)slides objectsAtIndexes:indices];
    [(NSMutableArray *)self->_slides removeObjectsAtIndexes:indices];
    v9 = [[NSIndexSet alloc] initWithIndexesInRange:{index, objc_msgSend(v8, "count")}];
    [(NSMutableArray *)self->_slides insertObjects:v8 atIndexes:v9];
  }
}

- (void)addSecondarySlide:(id)slide
{
  v6 = [[NSArray alloc] initWithObjects:{slide, 0}];
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

- (void)addSecondarySlides:(id)slides
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

  [(MPEffect *)self insertSecondarySlides:slides atIndex:v6];
}

- (void)insertSecondarySlides:(id)slides atIndex:(int64_t)index
{
  v7 = objc_autoreleasePoolPush();
  if (!self->_secondarySlides)
  {
    self->_secondarySlides = objc_alloc_init(NSMutableArray);
  }

  v8 = [[NSIndexSet alloc] initWithIndexesInRange:{index, objc_msgSend(slides, "count")}];
  if (!self->_replaceSlides)
  {
    [(MPEffect *)self willChange:2 valuesAtIndexes:v8 forKey:@"secondarySlides"];
  }

  [(NSMutableArray *)self->_secondarySlides insertObjects:slides atIndexes:v8];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = [slides countByEnumeratingWithState:&v35 objects:v41 count:16];
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
          objc_enumerationMutation(slides);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        [v13 setParent:self];
        [v13 setIsSecondary:1];
      }

      v10 = [slides countByEnumeratingWithState:&v35 objects:v41 count:16];
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
    v15 = [slides countByEnumeratingWithState:&v31 objects:v40 count:16];
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
            objc_enumerationMutation(slides);
          }

          v19 = *(*(&v31 + 1) + 8 * j);
          if ([v19 path])
          {
            index = -[MCContainerEffect insertSlideForAsset:atIndex:](self->_container, "insertSlideForAsset:atIndex:", [objc_msgSend(-[MPEffectContainer parentLayer](self->_parentContainer "parentLayer")], -[MPEffect maxNumberOfSlides](self, "maxNumberOfSlides") + index);
          }

          else
          {
            index = [(MCContainerEffect *)self->_container insertSlideAtIndex:[(MPEffect *)self maxNumberOfSlides]+ index];
          }

          [v14 addObject:index];
          ++index;
        }

        v16 = [slides countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v16);
    }

    objectEnumerator = [v14 objectEnumerator];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = [slides countByEnumeratingWithState:&v27 objects:v39 count:16];
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
            objc_enumerationMutation(slides);
          }

          [*(*(&v27 + 1) + 8 * k) setSlide:{objc_msgSend(objectEnumerator, "nextObject")}];
        }

        v23 = [slides countByEnumeratingWithState:&v27 objects:v39 count:16];
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

- (void)removeSecondarySlidesAtIndices:(id)indices
{
  secondarySlides = self->_secondarySlides;
  if (secondarySlides)
  {
    if ([(NSMutableArray *)secondarySlides count])
    {
      lastIndex = [indices lastIndex];
      if (lastIndex < [(NSMutableArray *)self->_secondarySlides count])
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

        [(MPEffect *)self willChange:v8 valuesAtIndexes:indices forKey:@"secondarySlides"];
        if (self->_container)
        {
          v9 = +[NSMutableIndexSet indexSet];
          firstIndex = [indices firstIndex];
          if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
          {
            for (i = firstIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [indices indexGreaterThanIndex:i])
            {
              [v9 addIndex:{&i[-[MPEffect maxNumberOfSlides](self, "maxNumberOfSlides")]}];
            }
          }

          [(MCContainerEffect *)self->_container removeSlidesAtIndices:v9];
        }

        lastIndex2 = [indices lastIndex];
        if (lastIndex2 != 0x7FFFFFFFFFFFFFFFLL)
        {
          for (j = lastIndex2; j != 0x7FFFFFFFFFFFFFFFLL; j = [indices indexLessThanIndex:j])
          {
            v14 = [(NSMutableArray *)self->_secondarySlides objectAtIndex:j];
            [v14 setParent:0];
            [v14 setSlide:0];
          }
        }

        [(NSMutableArray *)self->_secondarySlides removeObjectsAtIndexes:indices];
        [(MPEffect *)self didChange:v8 valuesAtIndexes:indices forKey:@"secondarySlides"];

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

- (void)_updateEffectTimingWithDocument:(id)document forExport:(BOOL)export
{
  if (!self->_supportsEffectTiming || self->_skipEffectTiming)
  {
    return;
  }

  exportCopy = export;

  self->_effectTiming = 0;
  formattedAttributes = [(MPEffect *)self formattedAttributes];
  if (!document)
  {
    parentDocument = [(MPEffect *)self parentDocument];
    if (parentDocument)
    {
      document = parentDocument;
    }

    else
    {
      v10 = 1.77777779;
      if (![+[MPAuthoringController sharedController](MPAuthoringController "sharedController")])
      {
        document = 0;
        goto LABEL_8;
      }

      document = [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
      if (!document)
      {
        goto LABEL_8;
      }
    }
  }

  [document aspectRatio];
  v10 = v9;
LABEL_8:
  if (exportCopy)
  {
    formattedAttributes = [NSMutableDictionary dictionaryWithDictionary:formattedAttributes];
    [(NSMutableDictionary *)formattedAttributes setObject:[NSNumber forKey:"numberWithBool:" numberWithBool:?], @"updateEffectAuthoredTimingForExport"];
  }

  self->_effectTiming = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
  if ((objc_opt_respondsToSelector() & 1) != 0 && exportCopy)
  {
    effectAuthoredAttributes = [(MZEffectTiming *)self->_effectTiming effectAuthoredAttributes];
    if (effectAuthoredAttributes)
    {
      v12 = effectAuthoredAttributes;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      keyEnumerator = [effectAuthoredAttributes keyEnumerator];
      v14 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
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
              objc_enumerationMutation(keyEnumerator);
            }

            -[MPEffect setEffectAttribute:forKey:](self, "setEffectAttribute:forKey:", [v12 objectForKey:*(*(&v18 + 1) + 8 * i)], *(*(&v18 + 1) + 8 * i));
          }

          v15 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v15);
      }
    }
  }
}

- (void)_updateTiming:(BOOL)timing forExport:(BOOL)export
{
  if (!self->_cleaningUp)
  {
    exportCopy = export;
    timingCopy = timing;
    v7 = +[MPEffectManager sharedManager];
    v15 = 0.0;
    v16 = 0.0;
    v14 = 0.0;
    if (self->_supportsEffectTiming)
    {
      [(MPEffect *)self _updateEffectTimingWithDocument:0 forExport:exportCopy];
      [(MZEffectTiming *)self->_effectTiming phaseInDuration];
      v9 = v8;
      [(MZEffectTiming *)self->_effectTiming phaseOutDuration];
      v11 = v10;
      [(MZEffectTiming *)self->_effectTiming mainDuration];
      v13 = v12;
      if (timingCopy)
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
      if (timingCopy)
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

- (void)addText:(id)text
{
  v6 = [[NSArray alloc] initWithObjects:{text, 0}];
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

- (void)addTexts:(id)texts
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

  [(MPEffect *)self insertTexts:texts atIndex:v6];
}

- (void)insertTexts:(id)texts atIndex:(int64_t)index
{
  v7 = objc_autoreleasePoolPush();
  if (!self->_texts)
  {
    self->_texts = objc_alloc_init(NSMutableArray);
  }

  v8 = [[NSIndexSet alloc] initWithIndexesInRange:{index, objc_msgSend(texts, "count")}];
  [(MPEffect *)self willChange:2 valuesAtIndexes:v8 forKey:@"texts"];
  [(NSMutableArray *)self->_texts insertObjects:texts atIndexes:v8];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [texts countByEnumeratingWithState:&v31 objects:v37 count:16];
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
          objc_enumerationMutation(texts);
        }

        [*(*(&v31 + 1) + 8 * v12) setParent:self];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [texts countByEnumeratingWithState:&v31 objects:v37 count:16];
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
    v14 = [texts countByEnumeratingWithState:&v27 objects:v36 count:16];
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
            objc_enumerationMutation(texts);
          }

          [v13 addObject:{objc_msgSend(*(*(&v27 + 1) + 8 * v17), "attributedString")}];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [texts countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v15);
    }

    v18 = [-[MCContainerEffect insertTextsForAttributedStrings:atIndex:](self->_container insertTextsForAttributedStrings:v13 atIndex:{index), "objectEnumerator"}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = [texts countByEnumeratingWithState:&v23 objects:v35 count:16];
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
            objc_enumerationMutation(texts);
          }

          [*(*(&v23 + 1) + 8 * v22) setText:{objc_msgSend(v18, "nextObject")}];
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [texts countByEnumeratingWithState:&v23 objects:v35 count:16];
      }

      while (v20);
    }
  }

  [(MPEffect *)self didChange:2 valuesAtIndexes:v8 forKey:@"texts"];

  objc_autoreleasePoolPop(v7);
}

- (void)removeTextsAtIndices:(id)indices
{
  texts = self->_texts;
  if (texts && [(NSMutableArray *)texts count])
  {
    v6 = objc_autoreleasePoolPush();
    [(MPEffect *)self willChange:3 valuesAtIndexes:indices forKey:@"texts"];
    container = self->_container;
    if (container)
    {
      [(MCContainerEffect *)container removeTextsAtIndices:indices];
    }

    lastIndex = [indices lastIndex];
    if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = lastIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [indices indexLessThanIndex:i])
      {
        v10 = [(NSMutableArray *)self->_texts objectAtIndex:i];
        [v10 setParent:0];
        [v10 setText:0];
      }
    }

    [(NSMutableArray *)self->_texts removeObjectsAtIndexes:indices];
    [(MPEffect *)self didChange:3 valuesAtIndexes:indices forKey:@"texts"];

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

- (void)moveTextsFromIndices:(id)indices toIndex:(int64_t)index
{
  texts = self->_texts;
  if (texts)
  {
    if (self->_container)
    {
      [(MCContainerEffect *)self->_container moveTextsAtIndices:indices toIndex:index];
      texts = self->_texts;
    }

    v8 = [(NSMutableArray *)texts objectsAtIndexes:indices];
    [(NSMutableArray *)self->_texts removeObjectsAtIndexes:indices];
    v9 = [[NSIndexSet alloc] initWithIndexesInRange:{index, objc_msgSend(v8, "count")}];
    [(NSMutableArray *)self->_texts insertObjects:v8 atIndexes:v9];
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

  [(MPEffect *)self insertFilters:v4 atIndex:v6];
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

  [(MPEffect *)self insertFilters:filters atIndex:v6];
}

- (void)insertFilters:(id)filters atIndex:(int64_t)index
{
  indexCopy = index;
  v7 = [[NSIndexSet alloc] initWithIndexesInRange:{index, objc_msgSend(filters, "count")}];
  [(MPEffect *)self willChange:2 valuesAtIndexes:v7 forKey:@"filters"];
  filters = self->_filters;
  if (!filters)
  {
    filters = objc_alloc_init(NSMutableArray);
    self->_filters = filters;
  }

  [(NSMutableArray *)filters insertObjects:filters atIndexes:v7];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [filters countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(filters);
        }

        [*(*(&v24 + 1) + 8 * v12) setParent:self];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [filters countByEnumeratingWithState:&v24 objects:v29 count:16];
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
  v15 = [filters countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      v19 = indexCopy;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(filters);
        }

        indexCopy = v19 + 1;
        [*(*(&v20 + 1) + 8 * v18) setFilter:{-[MCPlugParallel insertFilterWithFilterID:atIndex:](self->_plug, "insertFilterWithFilterID:atIndex:", objc_msgSend(*(*(&v20 + 1) + 8 * v18), "filterID"), v19)}];
        v18 = v18 + 1;
        ++v19;
      }

      while (v16 != v18);
      v16 = [filters countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

LABEL_21:
  [(MPEffect *)self didChange:2 valuesAtIndexes:v7 forKey:@"filters"];
}

- (void)removeFiltersAtIndices:(id)indices
{
  filters = self->_filters;
  if (filters && [(NSMutableArray *)filters count])
  {
    [(MPEffect *)self willChange:3 valuesAtIndexes:indices forKey:@"filters"];
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

    plug = self->_plug;
    if (plug)
    {
      [(MCPlugParallel *)plug removeFiltersAtIndices:indices];
    }

    [(NSMutableArray *)self->_filters removeObjectsAtIndexes:indices];
    if (![(NSMutableArray *)self->_filters count]&& self->_plug && ![(MPEffect *)self needsParallelizer])
    {
      [(MPEffectContainer *)self->_parentContainer convertFromParallelizerToEffectContainer];
    }

    [(MPEffect *)self didChange:3 valuesAtIndexes:indices forKey:@"filters"];
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

    plug = self->_plug;
    if (plug)
    {

      [(MCPlugParallel *)plug moveFiltersAtIndices:indices toIndex:index];
    }
  }
}

- (id)animationPathForKey:(id)key
{
  result = self->_animationPaths;
  if (result)
  {
    return [result objectForKey:key];
  }

  return result;
}

- (void)setAnimationPath:(id)path forKey:(id)key
{
  if (path)
  {
    if (!self->_animationPaths)
    {
      self->_animationPaths = objc_alloc_init(NSMutableDictionary);
    }

    v7 = [(MPEffect *)self animationPathForKey:key];
    if (v7)
    {
      v8 = v7;
      [v7 setParent:0];
      [v8 setAnimationPath:0];
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

    [(MPEffect *)self removeAnimationPathForKey:key];
  }
}

- (void)removeAnimationPathForKey:(id)key
{
  if (self->_animationPaths)
  {
    v5 = [(MPEffect *)self animationPathForKey:?];
    plug = self->_plug;
    if (plug)
    {
      [(MCPlug *)plug removeAnimationPathForKey:key];
      [v5 setAnimationPath:0];
    }

    [v5 setParent:0];
    animationPaths = self->_animationPaths;

    [(NSMutableDictionary *)animationPaths removeObjectForKey:key];
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
    if (self->_container)
    {
      -[MPAudioPlaylist setMontage:](self->_audioPlaylist, "setMontage:", [-[MPEffectContainer parentLayer](self->_parentContainer "parentLayer")]);
      v7 = self->_audioPlaylist;
      audioPlaylistCreateIfNeeded = [(MCContainer *)self->_container audioPlaylistCreateIfNeeded];

      [(MPAudioPlaylist *)v7 setAudioPlaylist:audioPlaylistCreateIfNeeded];
    }
  }
}

- (void)setRandomSeed:(int64_t)seed
{
  self->_randomSeed = seed;
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
  effectID = [(MPEffect *)self effectID];

  return [v3 numberOfSlidesForEffectID:effectID];
}

- (int64_t)maxNumberOfSecondarySlides
{
  v3 = +[MPEffectManager sharedManager];
  effectID = [(MPEffect *)self effectID];

  return [v3 numberOfSecondarySlidesForEffectID:effectID];
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

- (void)replaceTextsWitStrings:(id)strings
{
  if (strings)
  {
    stringsCopy = strings;
    v5 = [strings count];
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

      v10 = [stringsCopy objectAtIndex:v7];
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
        attributedString = [v11 attributedString];
        v16 = v14;
      }

      else
      {
        v27 = +[MPEffectManager sharedManager];
        v17 = v12;
        v18 = v6;
        v19 = stringsCopy;
        v20 = v8;
        v21 = v9;
        effectID = [(MPEffect *)self effectID];
        presetID = [(MPEffect *)self presetID];
        v24 = effectID;
        v9 = v21;
        v8 = v20;
        stringsCopy = v19;
        v6 = v18;
        v12 = v17;
        v25 = [v27 defaultStringForTextInEffectID:v24 presetID:presetID atIndex:v7];
        v16 = objc_alloc(v8[22]);
        attributedString = v25;
      }

      v26 = [v16 initWithAttributedString:attributedString];
      v13 = v26;
      if (v10)
      {
        [v26 replaceCharactersInRange:0 withString:{objc_msgSend(v26, "length"), v12}];
      }

      goto LABEL_14;
    }
  }
}

- (void)createTextsWithStrings:(id)strings secondLineFactor:(double)factor fillIn:(BOOL)in
{
  inCopy = in;
  if (strings && !self->_texts && [strings count])
  {
    self->_texts = objc_alloc_init(NSMutableArray);
  }

  p_superclass = MCGenericAction.superclass;
  v10 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if (strings)
  {
    v11 = [strings count];
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

  if (!inCopy)
  {
    v10 = v12;
  }

  if (v10 >= 1)
  {
    v13 = 0;
    v29 = v11;
    do
    {
      if (strings)
      {
        if (v13 >= v11)
        {
          lastObject = [strings lastObject];
        }

        else
        {
          lastObject = [strings objectAtIndex:v13];
        }

        v15 = lastObject;
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
          if (factor != 1.0)
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
                v26 = CTFontCreateWithName(v24, Size * factor, 0);
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

- (void)createSlidesWithPaths:(id)paths
{
  v5 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [paths count];
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
    if (i < [paths count] && (v7 = objc_msgSend(paths, "objectAtIndex:", i)) != 0)
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

- (void)createSecondarySlidesWithPaths:(id)paths
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
    if (paths && v8 < [paths count] && (v9 = objc_msgSend(paths, "objectAtIndex:", v8)) != 0)
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
    selfCopy2 = self;
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
    selfCopy2 = self;
    v12 = v8;
  }

  [(NSNotificationCenter *)v9 postNotificationName:v10 object:selfCopy2 userInfo:v12];
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
  slides = [(MPEffect *)self slides];
  v5 = [(NSArray *)slides countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(slides);
        }

        path = [*(*(&v11 + 1) + 8 * v8) path];
        if (path)
        {
          [v3 addObject:path];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)slides countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)slideInformationWithDocument:(id)document
{
  v23 = +[NSMutableArray array];
  if (!document)
  {
    document = [(MPEffect *)self parentDocument];
    if (!document)
    {
      if ([+[MPAuthoringController sharedController](MPAuthoringController "sharedController")])
      {
        document = [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
      }

      else
      {
        document = 0;
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
        path = [v12 path];
        if (path)
        {
          v14 = path;
          v15 = objc_alloc_init(NSMutableDictionary);
          if (document)
          {
            [document resolutionForPath:v14];
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

          else if ([document isMovieAtPath:v14])
          {
LABEL_25:
            [v15 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"isMovie"}];
            [document durationForPath:v14];
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
    effectAttributes = [(MPEffect *)self effectAttributes];
    [effectAttributes addEntriesFromDictionary:v4];

    [(MPEffect *)self setEffectAttributes:effectAttributes];
  }
}

- (id)plugID
{
  nearestPlug = [(MPEffect *)self nearestPlug];

  return [nearestPlug objectID];
}

- (id)objectID
{
  nearestPlug = [(MPEffect *)self nearestPlug];

  return [nearestPlug objectID];
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

  parentContainer = [(MPEffect *)self parentContainer];

  return [parentContainer plug];
}

- (void)copyVars:(id)vars
{
  self->_position = *(vars + 7);
  self->_size = *(vars + 136);
  self->_zPosition = *(vars + 16);
  self->_rotationAngle = *(vars + 19);
  self->_xRotationAngle = *(vars + 20);
  self->_yRotationAngle = *(vars + 21);
  self->_scale = *(vars + 22);
  self->_opacity = *(vars + 13);
  self->_timeIn = *(vars + 23);
  self->_phaseInDuration = *(vars + 24);
  self->_phaseOutDuration = *(vars + 25);
  self->_mainDuration = *(vars + 26);
  self->_audioPriority = *(vars + 29);
  effectID = self->_effectID;
  if (effectID)
  {

    self->_effectID = 0;
  }

  self->_effectID = [*(vars + 27) copy];
  presetID = self->_presetID;
  if (presetID)
  {

    self->_presetID = 0;
  }

  self->_presetID = [*(vars + 28) copy];
  uuid = self->_uuid;
  if (uuid)
  {

    self->_uuid = 0;
  }
}

- (void)copySlides:(id)slides
{
  if (slides)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [slides countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(slides);
          }

          v10 = [*(*(&v11 + 1) + 8 * v9) copy];
          [v5 addObject:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [slides countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(MPEffect *)self addSlides:v5];
  }
}

- (void)copySecondarySlides:(id)slides
{
  if (slides)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [slides countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(slides);
          }

          v10 = [*(*(&v11 + 1) + 8 * v9) copy];
          [v5 addObject:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [slides countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(MPEffect *)self addSecondarySlides:v5];
  }
}

- (void)copyTexts:(id)texts
{
  if (texts)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [texts countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(texts);
          }

          v10 = [*(*(&v11 + 1) + 8 * v9) copy];
          [v5 addObject:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [texts countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(MPEffect *)self addTexts:v5];
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

    [(MPEffect *)self addFilters:filters];
  }
}

- (void)copyAnimationPaths:(id)paths
{
  if (paths)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
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
          [(MPEffect *)self setAnimationPath:v10 forKey:v9];
        }

        v6 = [paths countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (void)copyAudioPlaylist:(id)playlist
{
  v4 = [playlist copy];
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
  allKeys = [(NSMutableDictionary *)self->_animationPaths allKeys];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [allKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        [(MPEffect *)self removeAnimationPathForKey:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
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

- (void)setContainer:(id)container
{
  container = self->_container;
  if (container)
  {
    [(MCContainer *)container specialRelease];
    self->_container = 0;
  }

  specialRetain = [container specialRetain];
  self->_container = specialRetain;
  if (specialRetain)
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
            addSlide = [v7 videoAssetForFileAtPath:{objc_msgSend(v15, "path")}];
            v17 = v9;
          }

          else
          {
            [v8 addObjectsFromArray:{-[MCContainerEffect addSlidesForAssets:](self->_container, "addSlidesForAssets:", v9)}];
            [v9 removeAllObjects];
            addSlide = [(MCContainerEffect *)self->_container addSlide];
            v17 = v8;
          }

          [v17 addObject:addSlide];
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
            addSlide2 = [v7 videoAssetForFileAtPath:{objc_msgSend(v23, "path")}];
            v25 = v9;
          }

          else
          {
            [v8 addObjectsFromArray:{-[MCContainerEffect addSlidesForAssets:](self->_container, "addSlidesForAssets:", v9)}];
            [v9 removeAllObjects];
            addSlide2 = [(MCContainerEffect *)self->_container addSlide];
            v25 = v8;
          }

          [v25 addObject:addSlide2];
        }

        v20 = [(NSMutableArray *)secondarySlides countByEnumeratingWithState:&v88 objects:v102 count:16];
      }

      while (v20);
    }

    [v8 addObjectsFromArray:{-[MCContainerEffect addSlidesForAssets:](self->_container, "addSlidesForAssets:", v9)}];

    objectEnumerator = [v8 objectEnumerator];
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

          [*(*(&v84 + 1) + 8 * k) setSlide:{objc_msgSend(objectEnumerator, "nextObject")}];
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

          [*(*(&v80 + 1) + 8 * m) setSlide:{objc_msgSend(objectEnumerator, "nextObject")}];
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
      audioPlaylistCreateIfNeeded = [(MCContainer *)self->_container audioPlaylistCreateIfNeeded];
      v52 = v50;
LABEL_72:
      [(MPAudioPlaylist *)v52 setAudioPlaylist:audioPlaylistCreateIfNeeded];
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
      audioPlaylistCreateIfNeeded = 0;
      goto LABEL_72;
    }
  }
}

- (void)setParentContainer:(id)container
{
  if (container && self->_parentContainer)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"An effect container may one have one parent.  Please remove it first.  This is unsupported." userInfo:0, v3, v4]);
  }

  self->_parentContainer = container;
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
        plug = self->_plug;
        if (!plug)
        {
          plug = [(MPEffectContainer *)self->_parentContainer plug];
        }

        [(MCPlug *)plug phaseInDuration];
        if (v18 != v14)
        {
          [(MCPlug *)plug setPhaseInDuration:v14];
        }

        [(MCPlug *)plug phaseOutDuration];
        if (v19 != v16)
        {
          [(MCPlug *)plug setPhaseOutDuration:v16];
        }

        [(MCPlug *)plug loopDuration];
        if (v20 != 0.0)
        {
          v21 = 0.0;
          v22 = plug;
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

- (BOOL)hasPanoramasInDocument:(id)document
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

        if ([*(*(&v10 + 1) + 8 * v8) isPanoramaInDocument:document])
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
  parentContainer = [(MPEffect *)self parentContainer];

  return [parentContainer nearestLayerGroup];
}

- (id)slideForMCSlide:(id)slide
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
      if (v11 == [slide index])
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
      if (v17 == [slide index])
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

- (void)insertObject:(id)object inSlidesAtIndex:(int64_t)index
{
  v6 = [NSArray arrayWithObject:object];

  [(MPEffect *)self insertSlides:v6 atIndex:index];
}

- (void)removeObjectFromSlidesAtIndex:(int64_t)index
{
  v4 = [NSIndexSet indexSetWithIndex:index];

  [(MPEffect *)self removeSlidesAtIndices:v4];
}

- (void)replaceObjectInSlidesAtIndex:(int64_t)index withObject:(id)object
{
  [(MPEffect *)self removeSlidesAtIndices:[NSIndexSet indexSetWithIndex:?]];
  v7 = [NSArray arrayWithObject:object];

  [(MPEffect *)self insertSlides:v7 atIndex:index];
}

- (void)insertObject:(id)object inTextsAtIndex:(int64_t)index
{
  v6 = [NSArray arrayWithObject:object];

  [(MPEffect *)self insertTexts:v6 atIndex:index];
}

- (void)removeObjectFromTextsAtIndex:(int64_t)index
{
  v4 = [NSIndexSet indexSetWithIndex:index];

  [(MPEffect *)self removeTextsAtIndices:v4];
}

- (void)replaceObjectInTextsAtIndex:(int64_t)index withObject:(id)object
{
  [(MPEffect *)self removeTextsAtIndices:[NSIndexSet indexSetWithIndex:?]];
  v7 = [NSArray arrayWithObject:object];

  [(MPEffect *)self insertTexts:v7 atIndex:index];
}

- (void)insertObject:(id)object inFiltersAtIndex:(int64_t)index
{
  v6 = [NSArray arrayWithObject:object];

  [(MPEffect *)self insertFilters:v6 atIndex:index];
}

- (void)removeObjectFromFiltersAtIndex:(int64_t)index
{
  v4 = [NSIndexSet indexSetWithIndex:index];

  [(MPEffect *)self removeFiltersAtIndices:v4];
}

- (void)replaceObjectInFiltersAtIndex:(int64_t)index withObject:(id)object
{
  [(MPEffect *)self removeFiltersAtIndices:[NSIndexSet indexSetWithIndex:?]];
  v7 = [NSArray arrayWithObject:object];

  [(MPEffect *)self insertFilters:v7 atIndex:index];
}

- (void)setXPosition:(double)position
{
  [(MPEffect *)self yPosition];

  [(MPEffect *)self setPosition:position, v5];
}

- (void)setYPosition:(double)position
{
  [(MPEffect *)self xPosition];

  [(MPEffect *)self setPosition:?];
}

- (void)setHeight:(double)height
{
  [(MPEffect *)self width];

  [(MPEffect *)self setSize:?];
}

- (void)setWidth:(double)width
{
  [(MPEffect *)self height];

  [(MPEffect *)self setSize:width, v5];
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
        orderedKeyframes = [v4 orderedKeyframes];
        v8 = [orderedKeyframes countByEnumeratingWithState:&v25 objects:v33 count:16];
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
                objc_enumerationMutation(orderedKeyframes);
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

            v9 = [orderedKeyframes countByEnumeratingWithState:&v25 objects:v33 count:16];
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

- (void)setScriptingAnimations:(id)animations
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = [animations countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v21)
  {
    v19 = *v24;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(animations);
        }

        v5 = *(*(&v23 + 1) + 8 * i);
        v6 = [animations objectForKey:{v5, v19}];
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

      v21 = [animations countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v21);
  }
}

@end