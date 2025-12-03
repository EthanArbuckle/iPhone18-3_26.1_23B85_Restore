@interface MPLayerEffect
+ (id)layerEffectWithEffectID:(id)d;
+ (id)layerEffectWithEffectID:(id)d andPaths:(id)paths;
+ (id)layerEffectWithEffectID:(id)d andStrings:(id)strings;
+ (id)layerEffectWithEffectID:(id)d strings:(id)strings paths:(id)paths;
- (BOOL)isLive;
- (MPLayerEffect)init;
- (MPLayerEffect)initWithEffectID:(id)d andPaths:(id)paths;
- (MPLayerEffect)initWithEffectID:(id)d andStrings:(id)strings;
- (MPLayerEffect)initWithEffectID:(id)d strings:(id)strings paths:(id)paths;
- (NSString)presetID;
- (double)lowestDisplayTime;
- (double)mainDuration;
- (id)_effectAttributes;
- (id)allSlides:(BOOL)slides;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)effectAttributeForKey:(id)key;
- (id)effectAttributes;
- (id)formattedAttributes;
- (id)slideForMCSlide:(id)slide;
- (id)slideInformation;
- (int64_t)maxNumberOfSecondarySlides;
- (int64_t)maxNumberOfSlides;
- (void)_updateEffectTiming;
- (void)_updateTiming:(BOOL)timing;
- (void)addSecondarySlide:(id)slide;
- (void)addSecondarySlides:(id)slides;
- (void)addSlide:(id)slide;
- (void)addSlides:(id)slides;
- (void)addText:(id)text;
- (void)addTexts:(id)texts;
- (void)applyFormattedAttributes;
- (void)copySecondarySlides:(id)slides;
- (void)copySlides:(id)slides;
- (void)copyTexts:(id)texts;
- (void)createSecondarySlidesWithPaths:(id)paths;
- (void)createSlidesWithPaths:(id)paths;
- (void)createTextsWithStrings:(id)strings secondLineFactor:(double)factor fillIn:(BOOL)in;
- (void)dealloc;
- (void)insertSecondarySlides:(id)slides atIndex:(int64_t)index;
- (void)insertSlides:(id)slides atIndex:(int64_t)index;
- (void)insertTexts:(id)texts atIndex:(int64_t)index;
- (void)moveSlidesFromIndices:(id)indices toIndex:(int64_t)index;
- (void)moveTextsFromIndices:(id)indices toIndex:(int64_t)index;
- (void)removeAllSecondarySlides;
- (void)removeAllSlides;
- (void)removeAllTexts;
- (void)removeSecondarySlidesAtIndices:(id)indices;
- (void)removeSlidesAtIndices:(id)indices;
- (void)removeTextsAtIndices:(id)indices;
- (void)setDuration:(double)duration;
- (void)setEffectAttribute:(id)attribute forKey:(id)key;
- (void)setEffectAttributes:(id)attributes;
- (void)setEffectID:(id)d;
- (void)setLayerEffect:(id)effect;
- (void)setPhaseInDuration:(double)duration;
- (void)setPhaseOutDuration:(double)duration;
- (void)setPresetID:(id)d;
- (void)setRandomSeed:(int64_t)seed;
@end

@implementation MPLayerEffect

- (MPLayerEffect)init
{
  v4.receiver = self;
  v4.super_class = MPLayerEffect;
  v2 = [(MPLayer *)&v4 init];
  if (v2)
  {
    v2->_effectID = @"Undefined";
    v2->_presetID = @"Default";
    v2->_slides = 0;
    v2->_secondarySlides = 0;
    v2->_texts = 0;
    v2->_randomSeed = -1;
    v2->_effectAttributes = 0;
    v2->_liveIndex = 0;
  }

  return v2;
}

+ (id)layerEffectWithEffectID:(id)d
{
  v3 = [[self alloc] initWithEffectID:d];

  return v3;
}

+ (id)layerEffectWithEffectID:(id)d andPaths:(id)paths
{
  v4 = [[self alloc] initWithEffectID:d andPaths:paths];

  return v4;
}

+ (id)layerEffectWithEffectID:(id)d andStrings:(id)strings
{
  v4 = [[self alloc] initWithEffectID:d andStrings:strings];

  return v4;
}

+ (id)layerEffectWithEffectID:(id)d strings:(id)strings paths:(id)paths
{
  v5 = [[self alloc] initWithEffectID:d strings:strings paths:paths];

  return v5;
}

- (MPLayerEffect)initWithEffectID:(id)d andPaths:(id)paths
{
  v6 = [(MPLayerEffect *)self init];
  if (v6)
  {
    v6->_effectID = [d copy];
    v6->_presetID = [@"Default" copy];
    if ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")])
    {
      v6->_randomSeed = arc4random();
    }

    v6->_supportsEffectTiming = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
    [(MPLayerEffect *)v6 createSlidesWithPaths:paths];
    [(MPLayerEffect *)v6 _updateTiming:0];
  }

  return v6;
}

- (MPLayerEffect)initWithEffectID:(id)d andStrings:(id)strings
{
  v6 = [(MPLayerEffect *)self init];
  if (v6)
  {
    v6->_effectID = [d copy];
    v6->_presetID = [@"Default" copy];
    if ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")])
    {
      v6->_randomSeed = arc4random();
    }

    v6->_supportsEffectTiming = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
    [(MPLayerEffect *)v6 createTextsWithStrings:strings secondLineFactor:1.0];
    [(MPLayerEffect *)v6 _updateTiming:0];
  }

  return v6;
}

- (MPLayerEffect)initWithEffectID:(id)d strings:(id)strings paths:(id)paths
{
  v8 = [(MPLayerEffect *)self init];
  if (v8)
  {
    v8->_effectID = [d copy];
    v8->_presetID = [@"Default" copy];
    if ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")])
    {
      v8->_randomSeed = arc4random();
    }

    v8->_supportsEffectTiming = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
    [(MPLayerEffect *)v8 createTextsWithStrings:strings secondLineFactor:1.0];
    [(MPLayerEffect *)v8 createSlidesWithPaths:paths];
    [(MPLayerEffect *)v8 _updateTiming:0];
  }

  return v8;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = MPLayerEffect;
  v3 = [(MPLayer *)&v6 description];
  if (self->_layerEffect)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  return [v3 stringByAppendingFormat:@"\t          Has Layer Effect: %@\n", v4];
}

- (void)dealloc
{
  v4.receiver = self;
  v4.super_class = MPLayerEffect;
  [(MPLayer *)&v4 cleanup];

  self->_effectTiming = 0;
  self->_effectID = 0;

  self->_presetID = 0;
  self->_slides = 0;

  self->_secondarySlides = 0;
  self->_texts = 0;

  self->_layerEffect = 0;
  self->_effectAttributes = 0;
  v3.receiver = self;
  v3.super_class = MPLayerEffect;
  [(MPLayer *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MPLayerEffect;
  v4 = [(MPLayer *)&v6 copyWithZone:zone];
  [v4 copySlides:self->_slides];
  [v4 copySecondarySlides:self->_secondarySlides];
  [v4 copyTexts:self->_texts];
  [v4 setEffectID:self->_effectID];
  [v4 setPresetID:self->_presetID];
  [v4 setRandomSeed:self->_randomSeed];
  if (self->_effectAttributes)
  {
    [v4 setEffectAttributes:?];
  }

  return v4;
}

- (void)setEffectID:(id)d
{
  effectID = self->_effectID;
  if (effectID)
  {

    self->_effectID = 0;
  }

  self->_effectID = [d copy];
  if (self->_randomSeed == -1 && [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")])
  {
    self->_randomSeed = arc4random();
  }

  [(MPLayerEffect *)self setPresetID:@"Default"];
  layerEffect = self->_layerEffect;
  if (layerEffect)
  {
    [(MCContainerEffect *)layerEffect setEffectID:d];
  }

  self->_supportsEffectTiming = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];

  [(MPLayerEffect *)self _updateTiming:1];
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
  effectAttributes = self->_effectAttributes;
  if (effectAttributes)
  {

    self->_effectAttributes = 0;
  }

  if (self->_layerEffect)
  {
    [(MPLayerEffect *)self applyFormattedAttributes];
  }

  if (self->_supportsEffectTiming)
  {

    [(MPLayerEffect *)self _updateTiming:1];
  }
}

- (void)setRandomSeed:(int64_t)seed
{
  self->_randomSeed = seed;
  layerEffect = self->_layerEffect;
  if (layerEffect)
  {
    [(MCContainerEffect *)layerEffect setEffectAttribute:[NSNumber numberWithInteger:?], @"PresetID"];
  }

  if (self->_supportsEffectTiming)
  {

    [(MPLayerEffect *)self _updateTiming:1];
  }
}

- (id)effectAttributes
{
  result = self->_effectAttributes;
  if (!result)
  {
    v4 = [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];

    return v4;
  }

  return result;
}

- (void)setEffectAttributes:(id)attributes
{
  effectAttributes = self->_effectAttributes;
  if (effectAttributes)
  {

    self->_effectAttributes = 0;
  }

  self->_effectAttributes = [attributes mutableCopy];
  if (self->_layerEffect)
  {

    [(MPLayerEffect *)self applyFormattedAttributes];
  }
}

- (id)effectAttributeForKey:(id)key
{
  effectAttributes = self->_effectAttributes;
  if (effectAttributes)
  {
    objc_sync_enter(self->_effectAttributes);
    v6 = [(NSMutableDictionary *)self->_effectAttributes objectForKey:key];
    objc_sync_exit(effectAttributes);
    return v6;
  }

  else
  {
    v8 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];

    return [v8 objectForKey:key];
  }
}

- (void)setEffectAttribute:(id)attribute forKey:(id)key
{
  effectAttributes = self->_effectAttributes;
  if (!effectAttributes)
  {
    effectAttributes = [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    self->_effectAttributes = effectAttributes;
  }

  objc_sync_enter(effectAttributes);
  [(NSMutableDictionary *)self->_effectAttributes setValue:attribute forKey:key];
  objc_sync_exit(effectAttributes);
  layerEffect = self->_layerEffect;
  if (layerEffect)
  {

    [(MCContainerEffect *)layerEffect setEffectAttribute:attribute forKey:key];
  }
}

- (void)addSlide:(id)slide
{
  v4 = [NSArray arrayWithObject:slide];
  slides = self->_slides;
  if (slides)
  {
    v6 = [(NSMutableArray *)slides count];
  }

  else
  {
    v6 = 0;
  }

  [(MPLayerEffect *)self insertSlides:v4 atIndex:v6];
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

  [(MPLayerEffect *)self insertSlides:slides atIndex:v6];
}

- (void)insertSlides:(id)slides atIndex:(int64_t)index
{
  context = objc_autoreleasePoolPush();
  if (!self->_slides)
  {
    self->_slides = objc_alloc_init(NSMutableArray);
  }

  v59 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", index, [slides count]);
  [MPLayerEffect willChange:"willChange:valuesAtIndexes:forKey:" valuesAtIndexes:2 forKey:?];
  if ([(NSMutableArray *)self->_slides count])
  {
    isLive = [(MCContainerEffect *)self->_layerEffect isLive];
  }

  else
  {
    isLive = 0;
  }

  -[NSMutableArray insertObjects:atIndexes:](self->_slides, "insertObjects:atIndexes:", slides, +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", index, [slides count]));
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v8 = [slides countByEnumeratingWithState:&v83 objects:v92 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v84;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v84 != v10)
        {
          objc_enumerationMutation(slides);
        }

        [*(*(&v83 + 1) + 8 * i) setParent:self];
      }

      v9 = [slides countByEnumeratingWithState:&v83 objects:v92 count:16];
    }

    while (v9);
  }

  if (self->_layerEffect)
  {
    v62 = objc_alloc_init(NSMutableArray);
    if (isLive)
    {
      index = [(MCContainerEffect *)self->_layerEffect nextAvailableSlideIndex];
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v12 = [slides countByEnumeratingWithState:&v79 objects:v91 count:16];
    if (v12)
    {
      v13 = v12;
      v61 = *v80;
      v14 = -1;
      while (2)
      {
        v15 = 0;
        v16 = v14;
        do
        {
          if (*v80 != v61)
          {
            objc_enumerationMutation(slides);
          }

          path = [*(*(&v79 + 1) + 8 * v15) path];
          v18 = path;
          v14 = path == 0;
          if (v16 != -1 && v16 != v14)
          {
            goto LABEL_34;
          }

          v15 = v15 + 1;
          v16 = path == 0;
        }

        while (v13 != v15);
        v13 = [slides countByEnumeratingWithState:&v79 objects:v91 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      if (!v18)
      {
LABEL_34:
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v24 = [slides countByEnumeratingWithState:&v75 objects:v90 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v76;
          do
          {
            for (j = 0; j != v25; j = j + 1)
            {
              if (*v76 != v26)
              {
                objc_enumerationMutation(slides);
              }

              v28 = *(*(&v75 + 1) + 8 * j);
              if ([v28 path])
              {
                v29 = -[MCContainerEffect insertSlideForAsset:atIndex:](self->_layerEffect, "insertSlideForAsset:atIndex:", [-[MPLayer montage](self "montage")], index);
              }

              else
              {
                v29 = [(MCContainerEffect *)self->_layerEffect insertSlideAtIndex:index];
              }

              [v62 addObject:v29];
              if (isLive)
              {
                index = [(MCContainerEffect *)self->_layerEffect nextAvailableSlideIndex];
              }

              else
              {
                ++index;
              }
            }

            v25 = [slides countByEnumeratingWithState:&v75 objects:v90 count:16];
          }

          while (v25);
        }

        goto LABEL_47;
      }
    }

    v19 = objc_alloc_init(NSMutableArray);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v20 = [slides countByEnumeratingWithState:&v71 objects:v89 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v72;
      do
      {
        for (k = 0; k != v21; k = k + 1)
        {
          if (*v72 != v22)
          {
            objc_enumerationMutation(slides);
          }

          [v19 addObject:{objc_msgSend(-[MPLayer montage](self, "montage"), "videoAssetForFileAtPath:", objc_msgSend(*(*(&v71 + 1) + 8 * k), "path"))}];
        }

        v21 = [slides countByEnumeratingWithState:&v71 objects:v89 count:16];
      }

      while (v21);
    }

    [v62 addObjectsFromArray:{-[MCContainerEffect insertSlidesForAssets:atIndex:](self->_layerEffect, "insertSlidesForAssets:atIndex:", v19, index)}];

LABEL_47:
    objectEnumerator = [v62 objectEnumerator];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v31 = [slides countByEnumeratingWithState:&v67 objects:v88 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v68;
      do
      {
        for (m = 0; m != v32; m = m + 1)
        {
          if (*v68 != v33)
          {
            objc_enumerationMutation(slides);
          }

          [*(*(&v67 + 1) + 8 * m) setSlide:{objc_msgSend(objectEnumerator, "nextObject")}];
        }

        v32 = [slides countByEnumeratingWithState:&v67 objects:v88 count:16];
      }

      while (v32);
    }
  }

  [(MPLayerEffect *)self didChange:2 valuesAtIndexes:v59 forKey:@"slides"];
  if (self->_supportsEffectTiming)
  {
    parentDocument = [(MPLayer *)self parentDocument];
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

    v36 = [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
    if ([parentDocument isLive] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v37 = objc_alloc_init(NSMutableArray);
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v38 = [slides countByEnumeratingWithState:&v63 objects:v87 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v64;
        height = CGSizeZero.height;
        do
        {
          for (n = 0; n != v39; n = n + 1)
          {
            if (*v64 != v40)
            {
              objc_enumerationMutation(slides);
            }

            path2 = [*(*(&v63 + 1) + 8 * n) path];
            if (path2)
            {
              v44 = path2;
              v45 = +[NSMutableDictionary dictionary];
              if (parentDocument)
              {
                [parentDocument resolutionForPath:v44];
              }

              else
              {
                [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
              }

              if (v46 == CGSizeZero.width && v47 == height && v36 != 0)
              {
                [v36 resolutionForPath:v44];
              }

              v50 = v46 / v47;
              *&v50 = v50;
              [v45 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v50), @"aspectRatio"}];
              [v37 addObject:v45];
            }
          }

          v39 = [slides countByEnumeratingWithState:&v63 objects:v87 count:16];
        }

        while (v39);
      }

      if ([v37 count])
      {
        [(MZEffectTiming *)self->_effectTiming appendSlideInformation:v37 andTextInformation:0];
      }

      [(MZEffectTiming *)self->_effectTiming phaseInDuration];
      v52 = v51;
      [(MZEffectTiming *)self->_effectTiming phaseOutDuration];
      v54 = v53;
      [(MZEffectTiming *)self->_effectTiming mainDuration];
      v56 = v55;
      [(MPLayerEffect *)self setPhaseInDuration:v52];
      [(MPLayerEffect *)self setPhaseOutDuration:v54];
      [(MPLayerEffect *)self setDuration:v54 + v52 + v56];
      if ([(NSMutableArray *)self->_slides count])
      {
        v57 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->_slides objectAtIndex:{0), "slide"), "index"}];
        v58 = ([objc_msgSend(-[NSMutableArray lastObject](self->_slides "lastObject")] - v57 + 1);
      }

      else
      {
        v57 = 0;
        v58 = 0;
      }

      [(MZEffectTiming *)self->_effectTiming setMultiImageSlideRange:v57, v58];
    }

    else
    {
      [(MPLayerEffect *)self _updateTiming:1];
    }
  }

  objc_autoreleasePoolPop(context);
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
        [(MPLayerEffect *)self willChange:3 valuesAtIndexes:indices forKey:@"slides"];
        if (self->_layerEffect)
        {
          v8 = [indices mutableCopy];
          if ([(MCContainerEffect *)self->_layerEffect isLive])
          {
            [v8 shiftIndexesStartingAtIndex:objc_msgSend(v8 by:{"firstIndex"), self->_liveIndex - objc_msgSend(indices, "count")}];
          }

          [(MCContainerEffect *)self->_layerEffect removeSlidesAtIndices:v8];
        }

        lastIndex2 = [indices lastIndex];
        if (lastIndex2 != 0x7FFFFFFFFFFFFFFFLL)
        {
          for (i = lastIndex2; i != 0x7FFFFFFFFFFFFFFFLL; i = [indices indexLessThanIndex:i])
          {
            v11 = [(NSMutableArray *)self->_slides objectAtIndex:i];
            [v11 setParent:0];
            [v11 setSlide:0];
          }
        }

        [(NSMutableArray *)self->_slides removeObjectsAtIndexes:indices];
        [(MPLayerEffect *)self didChange:3 valuesAtIndexes:indices forKey:@"slides"];
        if (self->_supportsEffectTiming)
        {
          parentDocument = [(MPLayer *)self parentDocument];
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
            [(MPLayerEffect *)self _updateTiming:1];
          }

          if ([parentDocument isLive])
          {
            if ([(NSMutableArray *)self->_slides count])
            {
              v13 = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->_slides objectAtIndex:{0), "slide"), "index"}];
              v14 = ([objc_msgSend(-[NSMutableArray lastObject](self->_slides "lastObject")] - v13 + 1);
            }

            else
            {
              v13 = 0;
              v14 = 0;
            }

            [(MZEffectTiming *)self->_effectTiming setMultiImageSlideRange:v13, v14];
          }
        }

        objc_autoreleasePoolPop(v7);
      }
    }
  }
}

- (void)removeAllSlides
{
  slides = self->_slides;
  if (slides)
  {
    v4 = [(NSMutableArray *)slides count];
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSIndexSet indexSetWithIndexesInRange:0, v4];

  [(MPLayerEffect *)self removeSlidesAtIndices:v5];
}

- (void)moveSlidesFromIndices:(id)indices toIndex:(int64_t)index
{
  slides = self->_slides;
  if (slides)
  {
    if (self->_layerEffect)
    {
      [(MCContainerEffect *)self->_layerEffect moveSlidesAtIndices:indices toIndex:index];
      slides = self->_slides;
    }

    v8 = [(NSMutableArray *)slides objectsAtIndexes:indices];
    [(NSMutableArray *)self->_slides removeObjectsAtIndexes:indices];
    v9 = self->_slides;
    v10 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", index, [v8 count]);

    [(NSMutableArray *)v9 insertObjects:v8 atIndexes:v10];
  }
}

- (void)addSecondarySlide:(id)slide
{
  v4 = [NSArray arrayWithObject:slide];
  secondarySlides = self->_secondarySlides;
  if (secondarySlides)
  {
    v6 = [(NSMutableArray *)secondarySlides count];
  }

  else
  {
    v6 = 0;
  }

  [(MPLayerEffect *)self insertSecondarySlides:v4 atIndex:v6];
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

  [(MPLayerEffect *)self insertSecondarySlides:slides atIndex:v6];
}

- (void)insertSecondarySlides:(id)slides atIndex:(int64_t)index
{
  context = objc_autoreleasePoolPush();
  if (!self->_secondarySlides)
  {
    self->_secondarySlides = objc_alloc_init(NSMutableArray);
  }

  v24 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", index, [slides count]);
  [MPLayerEffect willChange:"willChange:valuesAtIndexes:forKey:" valuesAtIndexes:2 forKey:?];
  -[NSMutableArray insertObjects:atIndexes:](self->_secondarySlides, "insertObjects:atIndexes:", slides, +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", index, [slides count]));
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [slides countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(slides);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        [v11 setParent:self];
        [v11 setIsSecondary:1];
      }

      v8 = [slides countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  if (self->_layerEffect)
  {
    v12 = objc_alloc_init(NSMutableArray);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = [slides countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(slides);
          }

          v17 = *(*(&v30 + 1) + 8 * j);
          if ([v17 path])
          {
            index = -[MCContainerEffect insertSlideForAsset:atIndex:](self->_layerEffect, "insertSlideForAsset:atIndex:", [-[MPLayer montage](self "montage")], -[MPLayerEffect maxNumberOfSlides](self, "maxNumberOfSlides") + index);
          }

          else
          {
            index = [(MCContainerEffect *)self->_layerEffect insertSlideAtIndex:[(MPLayerEffect *)self maxNumberOfSlides]+ index];
          }

          [v12 addObject:index];
          ++index;
        }

        v14 = [slides countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v14);
    }

    objectEnumerator = [v12 objectEnumerator];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = [slides countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        for (k = 0; k != v21; k = k + 1)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(slides);
          }

          [*(*(&v26 + 1) + 8 * k) setSlide:{objc_msgSend(objectEnumerator, "nextObject")}];
        }

        v21 = [slides countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v21);
    }
  }

  [(MPLayerEffect *)self didChange:2 valuesAtIndexes:v24 forKey:@"secondarySlides"];
  objc_autoreleasePoolPop(context);
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
        [(MPLayerEffect *)self willChange:3 valuesAtIndexes:indices forKey:@"secondarySlides"];
        layerEffect = self->_layerEffect;
        if (layerEffect)
        {
          [(MCContainerEffect *)layerEffect removeSlidesAtIndices:indices];
        }

        lastIndex2 = [indices lastIndex];
        if (lastIndex2 != 0x7FFFFFFFFFFFFFFFLL)
        {
          for (i = lastIndex2; i != 0x7FFFFFFFFFFFFFFFLL; i = [indices indexLessThanIndex:i])
          {
            v11 = [(NSMutableArray *)self->_secondarySlides objectAtIndex:i];
            [v11 setParent:0];
            [v11 setSlide:0];
          }
        }

        [(NSMutableArray *)self->_secondarySlides removeObjectsAtIndexes:indices];
        [(MPLayerEffect *)self didChange:3 valuesAtIndexes:indices forKey:@"secondarySlides"];

        objc_autoreleasePoolPop(v7);
      }
    }
  }
}

- (void)addText:(id)text
{
  v4 = [NSArray arrayWithObject:text];
  texts = self->_texts;
  if (texts)
  {
    v6 = [(NSMutableArray *)texts count];
  }

  else
  {
    v6 = 0;
  }

  [(MPLayerEffect *)self insertTexts:v4 atIndex:v6];
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

  [(MPLayerEffect *)self insertTexts:texts atIndex:v6];
}

- (void)insertTexts:(id)texts atIndex:(int64_t)index
{
  v7 = objc_autoreleasePoolPush();
  if (!self->_texts)
  {
    self->_texts = objc_alloc_init(NSMutableArray);
  }

  v8 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", index, [texts count]);
  [(MPLayerEffect *)self willChange:2 valuesAtIndexes:v8 forKey:@"texts"];
  -[NSMutableArray insertObjects:atIndexes:](self->_texts, "insertObjects:atIndexes:", texts, +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", index, [texts count]));
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

  if (self->_layerEffect)
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

    v18 = [-[MCContainerEffect insertTextsForAttributedStrings:atIndex:](self->_layerEffect insertTextsForAttributedStrings:v13 atIndex:{index), "objectEnumerator"}];
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

  [(MPLayerEffect *)self didChange:2 valuesAtIndexes:v8 forKey:@"texts"];
  objc_autoreleasePoolPop(v7);
}

- (void)removeTextsAtIndices:(id)indices
{
  texts = self->_texts;
  if (texts && [(NSMutableArray *)texts count])
  {
    v6 = objc_autoreleasePoolPush();
    [(MPLayerEffect *)self willChange:3 valuesAtIndexes:indices forKey:@"texts"];
    layerEffect = self->_layerEffect;
    if (layerEffect)
    {
      [(MCContainerEffect *)layerEffect removeTextsAtIndices:indices];
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
    [(MPLayerEffect *)self didChange:3 valuesAtIndexes:indices forKey:@"texts"];

    objc_autoreleasePoolPop(v6);
  }
}

- (void)removeAllTexts
{
  v3 = [NSIndexSet indexSetWithIndexesInRange:0, [(NSMutableArray *)self->_texts count]];

  [(MPLayerEffect *)self removeTextsAtIndices:v3];
}

- (void)moveTextsFromIndices:(id)indices toIndex:(int64_t)index
{
  texts = self->_texts;
  if (texts)
  {
    if (self->_layerEffect)
    {
      [(MCContainerEffect *)self->_layerEffect moveTextsAtIndices:indices toIndex:index];
      texts = self->_texts;
    }

    v8 = [(NSMutableArray *)texts objectsAtIndexes:indices];
    [(NSMutableArray *)self->_texts removeObjectsAtIndexes:indices];
    v9 = self->_texts;
    v10 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", index, [v8 count]);

    [(NSMutableArray *)v9 insertObjects:v8 atIndexes:v10];
  }
}

- (void)removeAllSecondarySlides
{
  secondarySlides = self->_secondarySlides;
  if (secondarySlides)
  {
    v4 = [(NSMutableArray *)secondarySlides count];
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSIndexSet indexSetWithIndexesInRange:0, v4];

  [(MPLayerEffect *)self removeSecondarySlidesAtIndices:v5];
}

- (double)mainDuration
{
  [(MPLayer *)self duration];
  v4 = v3;
  [(MPLayer *)self phaseInDuration];
  v6 = v4 - v5;
  [(MPLayer *)self phaseOutDuration];
  return v6 - v7;
}

- (void)setDuration:(double)duration
{
  v19.receiver = self;
  v19.super_class = MPLayerEffect;
  [(MPLayer *)&v19 setDuration:duration];
  effectTiming = self->_effectTiming;
  if (effectTiming)
  {
    [(MPLayerInternal *)self->super._internal phaseInDuration];
    v6 = v5;
    [(MPLayerEffect *)self mainDuration];
    v8 = v7;
    [(MPLayerInternal *)self->super._internal phaseOutDuration];
    [(MZEffectTiming *)effectTiming setPhaseInDuration:v6 mainDuration:v8 phaseOutDuration:v9];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  slides = [(MPLayerEffect *)self slides];
  v11 = [(NSArray *)slides countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(slides);
        }

        [*(*(&v15 + 1) + 8 * i) resetCachedTimes];
      }

      v12 = [(NSArray *)slides countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)setPhaseInDuration:(double)duration
{
  v19.receiver = self;
  v19.super_class = MPLayerEffect;
  [(MPLayer *)&v19 setPhaseInDuration:duration];
  effectTiming = self->_effectTiming;
  if (effectTiming)
  {
    [(MPLayerInternal *)self->super._internal phaseInDuration];
    v6 = v5;
    [(MPLayerEffect *)self mainDuration];
    v8 = v7;
    [(MPLayerInternal *)self->super._internal phaseOutDuration];
    [(MZEffectTiming *)effectTiming setPhaseInDuration:v6 mainDuration:v8 phaseOutDuration:v9];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  slides = [(MPLayerEffect *)self slides];
  v11 = [(NSArray *)slides countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(slides);
        }

        [*(*(&v15 + 1) + 8 * i) resetCachedTimes];
      }

      v12 = [(NSArray *)slides countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)setPhaseOutDuration:(double)duration
{
  v19.receiver = self;
  v19.super_class = MPLayerEffect;
  [(MPLayer *)&v19 setPhaseOutDuration:duration];
  effectTiming = self->_effectTiming;
  if (effectTiming)
  {
    [(MPLayerInternal *)self->super._internal phaseInDuration];
    v6 = v5;
    [(MPLayerEffect *)self mainDuration];
    v8 = v7;
    [(MPLayerInternal *)self->super._internal phaseOutDuration];
    [(MZEffectTiming *)effectTiming setPhaseInDuration:v6 mainDuration:v8 phaseOutDuration:v9];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  slides = [(MPLayerEffect *)self slides];
  v11 = [(NSArray *)slides countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(slides);
        }

        [*(*(&v15 + 1) + 8 * i) resetCachedTimes];
      }

      v12 = [(NSArray *)slides countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)_updateEffectTiming
{
  if (self->_supportsEffectTiming)
  {
    v17 = v11;
    v18 = v10;
    v19 = v7;
    v20 = v6;
    v21 = v5;
    v22 = v4;
    v23 = v3;
    v24 = v2;
    if (!self->_skipEffectTiming)
    {

      self->_effectTiming = 0;
      formattedAttributes = [(MPLayerEffect *)self formattedAttributes];
      parentDocument = [(MPLayer *)self parentDocument];
      if (parentDocument || (v16 = 1.77777779, [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")]) && (parentDocument = objc_msgSend(+[MPAuthoringController sharedController](MPAuthoringController, "sharedController"), "authoredDocument")) != 0)
      {
        [parentDocument aspectRatio];
        v16 = v15;
      }

      self->_effectTiming = [+[MREffectManager sharedManager](MREffectManager sharedManager];
    }
  }
}

- (id)_effectAttributes
{
  v3 = [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  [v3 addEntriesFromDictionary:self->super._attributes];
  return v3;
}

- (void)_updateTiming:(BOOL)timing
{
  timingCopy = timing;
  v5 = +[MPEffectManager sharedManager];
  v13 = 0.0;
  v14 = 0.0;
  v12 = 0.0;
  if (!self->_supportsEffectTiming)
  {
    if (timingCopy)
    {
      return;
    }

    [v5 defaultDurationsForEffectID:self->_effectID phaseInDuration:&v13 mainDuration:&v14 phaseOutDuration:&v12];
    v7 = v13;
    goto LABEL_9;
  }

  [(MPLayerEffect *)self _updateEffectTiming];
  [(MZEffectTiming *)self->_effectTiming phaseInDuration];
  v7 = v6;
  v13 = v6;
  [(MZEffectTiming *)self->_effectTiming phaseOutDuration];
  v9 = v8;
  v12 = v8;
  [(MZEffectTiming *)self->_effectTiming mainDuration];
  v14 = v10;
  if (!timingCopy)
  {
LABEL_9:
    [(MPLayerInternal *)self->super._internal setPhaseInDuration:v7];
    [(MPLayerInternal *)self->super._internal setPhaseOutDuration:v12];
    [(MPLayerInternal *)self->super._internal setDuration:v14 + v13 + v12];
    return;
  }

  if (self->_supportsEffectTiming)
  {
    v11 = v10;
    [(MPLayerEffect *)self setPhaseInDuration:v7];
    [(MPLayerEffect *)self setPhaseOutDuration:v9];

    [(MPLayerEffect *)self setDuration:v11 + v7 + v9];
  }
}

- (id)allSlides:(BOOL)slides
{
  slidesCopy = slides;
  v5 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  slides = [(MPLayerEffect *)self slides];
  v7 = [(NSArray *)slides countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(slides);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if ([v11 path])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSArray *)slides countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  if (slidesCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    secondarySlides = [(MPLayerEffect *)self secondarySlides];
    v13 = [secondarySlides countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(secondarySlides);
          }

          v17 = *(*(&v19 + 1) + 8 * j);
          if ([v17 path])
          {
            [v5 addObject:v17];
          }
        }

        v14 = [secondarySlides countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }
  }

  return v5;
}

- (double)lowestDisplayTime
{
  effectTiming = self->_effectTiming;
  if (!effectTiming)
  {
    return 0.0;
  }

  [(MZEffectTiming *)effectTiming lowestDisplayTime];
  return result;
}

- (int64_t)maxNumberOfSlides
{
  v3 = +[MPEffectManager sharedManager];
  effectID = [(MPLayerEffect *)self effectID];

  return [v3 numberOfSlidesForEffectID:effectID];
}

- (int64_t)maxNumberOfSecondarySlides
{
  v3 = +[MPEffectManager sharedManager];
  effectID = [(MPLayerEffect *)self effectID];

  return [v3 numberOfSecondarySlidesForEffectID:effectID];
}

- (void)createTextsWithStrings:(id)strings secondLineFactor:(double)factor fillIn:(BOOL)in
{
  inCopy = in;
  stringsCopy = strings;
  v9 = 136;
  if (strings && !self->_texts && [strings count])
  {
    self->_texts = objc_alloc_init(NSMutableArray);
  }

  v10 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if (stringsCopy)
  {
    v11 = [stringsCopy count];
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

  if (inCopy)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  if (v13 >= 1)
  {
    v14 = 0;
    p_vtable = (&OBJC_METACLASS___MPDocumentInternal + 24);
    while (1)
    {
      if (stringsCopy)
      {
        v16 = v14 >= v11 ? [stringsCopy lastObject] : objc_msgSend(stringsCopy, "objectAtIndex:", v14);
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v18 = v17;
LABEL_32:
      v32 = [objc_alloc((p_vtable + 252)) initWithAttributedString:v18];

      [v32 setParent:self];
      [*(&self->super.super.isa + v9) addObject:v32];

      if (v13 == ++v14)
      {
        return;
      }
    }

    v19 = stringsCopy;
    v20 = v9;
    v21 = v11;
    v22 = [[NSMutableAttributedString alloc] initWithAttributedString:{objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager, "sharedManager"), "defaultStringForTextInEffectID:presetID:atIndex:", -[MPLayerEffect effectID](self, "effectID"), -[MPLayerEffect presetID](self, "presetID"), v14)}];
    v18 = v22;
    if (v17)
    {
      [v22 replaceCharactersInRange:0 withString:{objc_msgSend(v22, "length"), v17}];
      if (factor == 1.0 || ![v17 length])
      {
        v9 = v20;
LABEL_31:
        p_vtable = &OBJC_METACLASS___MPDocumentInternal.vtable;
        goto LABEL_32;
      }

      v23 = [v17 lineRangeForRange:{0, 1}];
      v25 = &v23[v24];
      v26 = [v17 length];
      if (v26 != v25)
      {
        v34[0] = 0;
        v34[1] = 0;
        v33 = (v26 - v25);
        v27 = [objc_msgSend(v18 attributesAtIndex:0 effectiveRange:{v34), "objectForKey:", kCTFontAttributeName}];
        v28 = CTFontCopyPostScriptName(v27);
        Size = CTFontGetSize(v27);
        v30 = CTFontCreateWithName(v28, Size * factor, 0);
        CFRelease(v28);
        [v18 addAttribute:kCTFontAttributeName value:v30 range:{v25, v33}];
        v31 = v30;
        v11 = v21;
        CFRelease(v31);
      }
    }

    v9 = v20;
    stringsCopy = v19;
    goto LABEL_31;
  }
}

- (void)createSlidesWithPaths:(id)paths
{
  v5 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [paths count];
  }

  if (self->_slides)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 < 1;
  }

  if (v6)
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

  v7 = 0;
  do
  {
    if (v7 < [paths count] && (v8 = objc_msgSend(paths, "objectAtIndex:", v7)) != 0)
    {
      v9 = [[MPSlide alloc] initWithPath:v8];
    }

    else
    {
      v9 = objc_alloc_init(MPSlide);
    }

    v10 = v9;
    [(MPSlide *)v9 setParent:self];
    [(NSMutableArray *)self->_slides addObject:v10];

    ++v7;
  }

  while (v5 != v7);
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

- (BOOL)isLive
{
  if (self->_layerEffect)
  {
    layerEffect = self->_layerEffect;
  }

  else
  {
    layerEffect = [(MPLayer *)self parentDocument];
  }

  return [(MCContainerEffect *)layerEffect isLive];
}

- (id)formattedAttributes
{
  if (self->super._attributes)
  {
    v3 = [[NSMutableDictionary alloc] initWithDictionary:{-[MPLayerEffect _effectAttributes](self, "_effectAttributes")}];
  }

  else
  {
    v3 = objc_alloc_init(NSMutableDictionary);
  }

  v4 = v3;
  [v3 setObject:-[MPLayerEffect presetID](self forKey:{"presetID"), @"PresetID"}];
  if ((self->_randomSeed & 0x8000000000000000) == 0)
  {
    [v4 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:"), @"RandomSeed"}];
  }

  return v4;
}

- (void)applyFormattedAttributes
{
  if (self->_layerEffect)
  {
    [(MCContainerEffect *)self->_layerEffect setEffectAttributes:[(MPLayerEffect *)self _effectAttributes]];
    [(MCContainerEffect *)self->_layerEffect setEffectAttribute:[(MPLayerEffect *)self presetID] forKey:@"PresetID"];
    if ((self->_randomSeed & 0x8000000000000000) == 0)
    {
      layerEffect = self->_layerEffect;
      v4 = [NSNumber numberWithInteger:?];

      [(MCContainerEffect *)layerEffect setEffectAttribute:v4 forKey:@"RandomSeed"];
    }
  }
}

- (id)slideInformation
{
  v21 = +[NSMutableArray array];
  parentDocument = [(MPLayer *)self parentDocument];
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

  v4 = [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  slides = self->_slides;
  v6 = [(NSMutableArray *)slides countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    height = CGSizeZero.height;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(slides);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        path = [v11 path];
        if (path)
        {
          v13 = path;
          v14 = objc_alloc_init(NSMutableDictionary);
          if (parentDocument)
          {
            [parentDocument resolutionForPath:v13];
          }

          else
          {
            [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
          }

          if (v15 == CGSizeZero.width && v16 == height && v4 != 0)
          {
            [v4 resolutionForPath:v13];
          }

          v19 = v15 / v16;
          *&v19 = v19;
          [v14 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v19), @"aspectRatio"}];
          if ([v11 hasMovie])
          {
            [v14 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"isMovie"}];
            [parentDocument durationForPath:v13];
            [v14 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"duration"}];
          }

          [v21 addObject:v14];
        }
      }

      v7 = [(NSMutableArray *)slides countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  return v21;
}

- (void)setLayerEffect:(id)effect
{
  effectCopy = effect;
  self->_layerEffect = effectCopy;
  if (effectCopy)
  {
    if ([-[MPLayer parentDocument](self "parentDocument")])
    {
      [(MCContainerEffect *)self->_layerEffect setIsLive:1];
    }

    [(MCContainerEffect *)self->_layerEffect setEffectID:[(MPLayerEffect *)self effectID]];
    [(MPLayerEffect *)self applyFormattedAttributes];
    v6 = objc_alloc_init(NSMutableArray);
    v7 = objc_alloc_init(NSMutableArray);
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    slides = self->_slides;
    v9 = [(NSMutableArray *)slides countByEnumeratingWithState:&v86 objects:v97 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v87;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v87 != v11)
          {
            objc_enumerationMutation(slides);
          }

          v13 = *(*(&v86 + 1) + 8 * i);
          if ([v13 path])
          {
            addSlide = [-[MPLayer montage](self "montage")];
            v15 = v7;
          }

          else
          {
            [v6 addObjectsFromArray:{-[MCContainerEffect addSlidesForAssets:](self->_layerEffect, "addSlidesForAssets:", v7)}];
            [v7 removeAllObjects];
            addSlide = [(MCContainerEffect *)self->_layerEffect addSlide];
            v15 = v6;
          }

          [v15 addObject:addSlide];
        }

        v10 = [(NSMutableArray *)slides countByEnumeratingWithState:&v86 objects:v97 count:16];
      }

      while (v10);
    }

    [v6 addObjectsFromArray:{-[MCContainerEffect addSlidesForAssets:](self->_layerEffect, "addSlidesForAssets:", v7)}];
    [v7 removeAllObjects];
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    secondarySlides = self->_secondarySlides;
    v17 = [(NSMutableArray *)secondarySlides countByEnumeratingWithState:&v82 objects:v96 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v83;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v83 != v19)
          {
            objc_enumerationMutation(secondarySlides);
          }

          v21 = *(*(&v82 + 1) + 8 * j);
          if ([v21 path])
          {
            addSlide2 = [-[MPLayer montage](self "montage")];
            v23 = v7;
          }

          else
          {
            [v6 addObjectsFromArray:{-[MCContainerEffect addSlidesForAssets:](self->_layerEffect, "addSlidesForAssets:", v7)}];
            [v7 removeAllObjects];
            addSlide2 = [(MCContainerEffect *)self->_layerEffect addSlide];
            v23 = v6;
          }

          [v23 addObject:addSlide2];
        }

        v18 = [(NSMutableArray *)secondarySlides countByEnumeratingWithState:&v82 objects:v96 count:16];
      }

      while (v18);
    }

    [v6 addObjectsFromArray:{-[MCContainerEffect addSlidesForAssets:](self->_layerEffect, "addSlidesForAssets:", v7)}];

    objectEnumerator = [v6 objectEnumerator];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v25 = self->_slides;
    v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v78 objects:v95 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v79;
      do
      {
        for (k = 0; k != v27; k = k + 1)
        {
          if (*v79 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v78 + 1) + 8 * k) setSlide:{objc_msgSend(objectEnumerator, "nextObject")}];
        }

        v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v78 objects:v95 count:16];
      }

      while (v27);
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v30 = self->_secondarySlides;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v74 objects:v94 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v75;
      do
      {
        for (m = 0; m != v32; m = m + 1)
        {
          if (*v75 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [*(*(&v74 + 1) + 8 * m) setSlide:{objc_msgSend(objectEnumerator, "nextObject")}];
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v74 objects:v94 count:16];
      }

      while (v32);
    }

    v35 = objc_alloc_init(NSMutableArray);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    texts = self->_texts;
    v37 = [(NSMutableArray *)texts countByEnumeratingWithState:&v70 objects:v93 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v71;
      do
      {
        for (n = 0; n != v38; n = n + 1)
        {
          if (*v71 != v39)
          {
            objc_enumerationMutation(texts);
          }

          [v35 addObject:{objc_msgSend(*(*(&v70 + 1) + 8 * n), "attributedString")}];
        }

        v38 = [(NSMutableArray *)texts countByEnumeratingWithState:&v70 objects:v93 count:16];
      }

      while (v38);
    }

    v41 = [-[MCContainerEffect addTextsForAttributedStrings:](self->_layerEffect addTextsForAttributedStrings:{v35), "objectEnumerator"}];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v42 = self->_texts;
    v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v66 objects:v92 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v67;
      do
      {
        for (ii = 0; ii != v44; ii = ii + 1)
        {
          if (*v67 != v45)
          {
            objc_enumerationMutation(v42);
          }

          [*(*(&v66 + 1) + 8 * ii) setText:{objc_msgSend(v41, "nextObject")}];
        }

        v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v66 objects:v92 count:16];
      }

      while (v44);
    }

    v65.receiver = self;
    v65.super_class = MPLayerEffect;
    [(MPLayer *)&v65 configureActions];
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v47 = self->_slides;
    v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v61 objects:v91 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v62;
      do
      {
        for (jj = 0; jj != v49; jj = jj + 1)
        {
          if (*v62 != v50)
          {
            objc_enumerationMutation(v47);
          }

          [*(*(&v61 + 1) + 8 * jj) setSlide:0];
        }

        v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v61 objects:v91 count:16];
      }

      while (v49);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v52 = self->_texts;
    v53 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v57 objects:v90 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v58;
      do
      {
        for (kk = 0; kk != v54; kk = kk + 1)
        {
          if (*v58 != v55)
          {
            objc_enumerationMutation(v52);
          }

          [*(*(&v57 + 1) + 8 * kk) setText:0];
        }

        v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v57 objects:v90 count:16];
      }

      while (v54);
    }
  }
}

- (void)copySlides:(id)slides
{
  if (slides)
  {
    v5 = +[NSMutableArray array];
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

    [(MPLayerEffect *)self addSlides:v5];
  }
}

- (void)copySecondarySlides:(id)slides
{
  if (slides)
  {
    v5 = +[NSMutableArray array];
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

    [(MPLayerEffect *)self addSecondarySlides:v5];
  }
}

- (void)copyTexts:(id)texts
{
  if (texts)
  {
    v5 = +[NSMutableArray array];
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

    [(MPLayerEffect *)self addTexts:v5];
  }
}

- (id)slideForMCSlide:(id)slide
{
  v5 = [(NSArray *)[(MPLayerEffect *)self slides] copy];
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

  v12 = [-[MPLayerEffect secondarySlides](self "secondarySlides")];
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

@end