@interface MPSlide
+ (id)slide;
+ (id)slideWithPath:(id)a3;
- (BOOL)canZoom;
- (BOOL)determineShowTime:(double *)a3 showDuration:(double *)a4;
- (BOOL)hasAnimationPathForKey:(id)a3;
- (BOOL)hasMovie;
- (BOOL)isPanoramaInDocument:(id)a3;
- (BOOL)needsStyleUpdateOnSlideChange;
- (BOOL)needsTimingUpdateOnSlideChange;
- (CGPoint)center;
- (MPSlide)init;
- (MPSlide)initWithLayerGroup:(id)a3;
- (MPSlide)initWithPath:(id)a3;
- (NSString)absolutePath;
- (NSString)sizingMode;
- (double)audioVolume;
- (double)duration;
- (double)originalAspectRatio;
- (double)showDisplayStartTime;
- (double)showDisplayTime;
- (double)showDuration;
- (double)showTime;
- (double)startTime;
- (id)action;
- (id)animationPathForKey:(id)a3;
- (id)animationPaths;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)fullDebugLog;
- (id)keyframedAnimationPathForKey:(id)a3;
- (id)nearestLayer;
- (id)parentSubtitleEffect;
- (id)scriptingAnimations;
- (id)scriptingFrame;
- (id)userInfoAttributeForKey:(id)a3;
- (int64_t)index;
- (int64_t)liveIndex;
- (void)addFilter:(id)a3;
- (void)addFilters:(id)a3;
- (void)cleanup;
- (void)copyAnimationPaths:(id)a3;
- (void)copyFilters:(id)a3;
- (void)copyFrame:(id)a3;
- (void)copyLayerGroup:(id)a3;
- (void)copyVars:(id)a3;
- (void)dealloc;
- (void)duplicateAnimationPaths;
- (void)insertFilters:(id)a3 atIndex:(int64_t)a4;
- (void)insertObject:(id)a3 inFilterAtIndex:(int64_t)a4;
- (void)moveFiltersFromIndices:(id)a3 toIndex:(int64_t)a4;
- (void)removeAllFilters;
- (void)removeAnimationPathForKey:(id)a3;
- (void)removeFiltersAtIndices:(id)a3;
- (void)removeObjectFromFilterAtIndex:(int64_t)a3;
- (void)replaceObjectInFilterAtIndex:(int64_t)a3 withObject:(id)a4;
- (void)setAbsolutePath:(id)a3;
- (void)setAnimationPath:(id)a3 forKey:(id)a4;
- (void)setAudioDuckInDuration:(double)a3;
- (void)setAudioDuckLevel:(double)a3;
- (void)setAudioDuckOutDuration:(double)a3;
- (void)setAudioFadeInDuration:(double)a3;
- (void)setAudioFadeOutDuration:(double)a3;
- (void)setAudioVolume:(double)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setDuration:(double)a3;
- (void)setFrame:(id)a3;
- (void)setLayerGroup:(id)a3;
- (void)setParent:(id)a3;
- (void)setPath:(id)a3;
- (void)setRotation:(double)a3;
- (void)setScale:(double)a3;
- (void)setScriptingAnimations:(id)a3;
- (void)setScriptingFrame:(id)a3;
- (void)setSizingMode:(id)a3;
- (void)setSlide:(id)a3;
- (void)setStartTime:(double)a3;
- (void)setUserInfoAttribute:(id)a3 forKey:(id)a4;
@end

@implementation MPSlide

+ (id)slide
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)slideWithPath:(id)a3
{
  v3 = [[a1 alloc] initWithPath:a3];

  return v3;
}

- (MPSlide)init
{
  v9.receiver = self;
  v9.super_class = MPSlide;
  result = [(MPSlide *)&v9 init];
  if (result)
  {
    result->_slide = 0;
    *&result->_filters = 0u;
    *&result->_path = 0u;
    *&result->_frame = 0u;
    __asm { FMOV            V1.2D, #-1.0 }

    *&result->_startTime = _Q1;
    *&result->_audioFadeInDuration = 0u;
    *&result->_audioDuckInDuration = 0u;
    result->_sizingMode = 0;
    result->_mediaType = -1;
    *&result->_center.y = xmmword_1637B0;
    *&result->_rotation = xmmword_1637C0;
    __asm { FMOV            V0.2D, #1.0 }

    *&result->_audioDuckLevel = _Q0;
    result->_mirrorToDuplicatePaths = 0;
    *&result->_cachedShowTime = vdupq_n_s64(0xC059000000000000);
  }

  return result;
}

- (MPSlide)initWithPath:(id)a3
{
  v4 = [(MPSlide *)self init];
  v5 = v4;
  if (a3 && v4)
  {
    v4->_path = [a3 copy];
  }

  return v5;
}

- (MPSlide)initWithLayerGroup:(id)a3
{
  v4 = [(MPSlide *)self init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      layerGroup = a3;
      v5->_layerGroup = layerGroup;
    }

    else
    {
      layerGroup = v4->_layerGroup;
    }

    [(MPLayerGroup *)layerGroup setParent:v5];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 copyVars:self];
  if (self->_path)
  {
    [v4 setPath:?];
  }

  if (self->_layerGroup)
  {
    [v4 copyLayerGroup:?];
  }

  [v4 copyFilters:self->_filters];
  [v4 copyAnimationPaths:self->_animationPaths];
  [v4 copyFrame:self->_frame];
  return v4;
}

- (id)description
{
  v3 = [[+[NSString stringWithFormat:](NSString stringByAppendingFormat:@"============================= Slide %d Description =============================\n" stringByAppendingFormat:"stringByAppendingFormat:", @"\t                          Path: %@\n", [(MPSlide *)self path]], "stringByAppendingFormat:", @"\t                 Absolute Path: %@\n", [(MPSlide *)self absolutePath]];
  filters = self->_filters;
  if (filters)
  {
    filters = [(NSMutableArray *)filters count];
  }

  v5 = [(NSString *)v3 stringByAppendingFormat:@"\t                  Filter Count: %d\n", filters];
  if ([(MPSlide *)self frame])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(NSString *)v5 stringByAppendingFormat:@"\t                     Has Frame: %@\n", v6];
  if (self->_slide)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  return [(NSString *)v7 stringByAppendingFormat:@"\t                     Has Slide: %@\n", v8];
}

- (void)dealloc
{
  [(MPSlide *)self cleanup];

  self->_slide = 0;
  self->_filters = 0;

  self->_animationPaths = 0;
  self->_attributes = 0;

  self->_path = 0;
  self->_layerGroup = 0;

  self->_frame = 0;
  self->_sizingMode = 0;
  v3.receiver = self;
  v3.super_class = MPSlide;
  [(MPSlide *)&v3 dealloc];
}

- (void)setFrame:(id)a3
{
  frame = self->_frame;
  if (frame)
  {

    self->_frame = 0;
  }

  v6 = a3;
  self->_frame = v6;
  [(MPFrame *)v6 setParentSlide:self];
  if (self->_slide)
  {
    v7 = [a3 frameID];
    slide = self->_slide;

    [(MCSlide *)slide setFrameID:v7];
  }
}

- (void)setPath:(id)a3
{
  if (a3)
  {
    [(MPSlide *)self setLayerGroup:0];
  }

  if (![(MPSlide *)self isSecondary])
  {
    [(MPSlide *)self setAbsolutePath:0];
  }

  path = self->_path;
  if (path)
  {

    self->_path = 0;
  }

  if (a3)
  {
    self->_path = [a3 copy];
  }

  v6 = -1.0;
  v7 = -1.0;
  if (self->_duration != -1.0)
  {
    [(MPSlide *)self duration];
  }

  [(MPSlide *)self setDuration:v7];
  if (self->_startTime != -1.0)
  {
    [(MPSlide *)self startTime];
    v6 = v8;
  }

  [(MPSlide *)self setStartTime:v6];
  [-[MPSlide parentDocument](self "parentDocument")];
  self->_cachedSize.width = v9;
  self->_cachedSize.height = v10;
  slide = self->_slide;
  if (slide)
  {
    if (self->_path)
    {
      v12 = [objc_msgSend(-[MPSlide parentDocument](self "parentDocument")];
      slide = self->_slide;
    }

    else
    {
      v12 = 0;
    }

    [(MCSlide *)slide setAsset:v12];
  }
}

- (NSString)absolutePath
{
  path = self->_path;
  if (![MPUtilities pathIsRelative:path])
  {
    return path;
  }

  v4 = [(MPSlide *)self parentDocument];
  if (!v4)
  {
    return path;
  }

  v5 = self->_path;

  return [v4 absolutePathForAssetAtPath:v5];
}

- (void)setAbsolutePath:(id)a3
{
  if (self->_path)
  {
    [-[MPSlide parentDocument](self "parentDocument")];
  }

  if (a3)
  {
    [-[MPSlide parentDocument](self "parentDocument")];
    self->_cachedSize.width = v5;
    self->_cachedSize.height = v6;
  }

  else
  {
    [-[MPSlide parentDocument](self "parentDocument")];
  }

  if ([(MCSlide *)self->_slide asset])
  {
    [(MCAsset *)[(MCSlide *)self->_slide asset] setPath:self->_path];
  }

  if (self->_mirrorToDuplicatePaths)
  {
    slide = self->_slide;
    if (slide)
    {
      v8 = [(MCAssetVideo *)[(MCSlide *)slide asset] slides];
      if (v8)
      {
        v9 = v8;
        if ([(NSSet *)v8 count]>= 2)
        {
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v10 = [(NSSet *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v19;
            do
            {
              for (i = 0; i != v11; i = i + 1)
              {
                if (*v19 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v18 + 1) + 8 * i);
                if (v14 != self->_slide)
                {
                  v15 = [MPUtilities slideForSlide:v14 inDocument:[(MPSlide *)self parentDocument]];
                  if (v15)
                  {
                    v16 = v15 == self;
                  }

                  else
                  {
                    v16 = 1;
                  }

                  if (!v16)
                  {
                    v17 = v15;
                    if (([objc_msgSend(-[MPSlide parent](v15 "parent")] & 1) == 0)
                    {
                      [(MPSlide *)v17 setAbsolutePath:a3];
                    }
                  }
                }
              }

              v11 = [(NSSet *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
            }

            while (v11);
          }
        }
      }
    }
  }
}

- (void)setLayerGroup:(id)a3
{
  layerGroup = self->_layerGroup;
  if (layerGroup != a3)
  {
    if (a3)
    {
      [(MPSlide *)self setPath:0];
      layerGroup = self->_layerGroup;
    }

    if (layerGroup)
    {
      [(MPLayerGroup *)layerGroup setParent:0];

      self->_layerGroup = 0;
    }

    if (a3)
    {
      v6 = a3;
      self->_layerGroup = v6;
      [(MPLayerGroup *)v6 setParent:self];
    }

    slide = self->_slide;
    if (slide)
    {
      v8 = self->_layerGroup;
      if (v8)
      {
        v9 = [MPUtilities createPlugInSlide:slide forLayer:v8 inDocument:[(MPSlide *)self parentDocument]];
        v10 = self->_slide;
      }

      else
      {
        v10 = self->_slide;
        v9 = 0;
      }

      [(MCSlide *)v10 setPlug:v9];
    }
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

  [(MPSlide *)self insertFilters:v4 atIndex:v6];
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

  [(MPSlide *)self insertFilters:a3 atIndex:v6];
}

- (void)insertFilters:(id)a3 atIndex:(int64_t)a4
{
  if (!self->_filters)
  {
    self->_filters = objc_alloc_init(NSMutableArray);
  }

  v7 = [[NSIndexSet alloc] initWithIndexesInRange:{a4, objc_msgSend(a3, "count")}];
  [(MPSlide *)self willChange:2 valuesAtIndexes:v7 forKey:@"filters"];
  [(NSMutableArray *)self->_filters insertObjects:a3 atIndexes:v7];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(a3);
        }

        [*(*(&v51 + 1) + 8 * i) setParent:self];
      }

      v9 = [a3 countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v9);
  }

  if (self->_slide)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v12 = [a3 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v48;
      do
      {
        v15 = 0;
        v16 = a4;
        do
        {
          if (*v48 != v14)
          {
            objc_enumerationMutation(a3);
          }

          a4 = v16 + 1;
          [*(*(&v47 + 1) + 8 * v15) setFilter:{-[MCSlide insertFilterWithFilterID:atIndex:](self->_slide, "insertFilterWithFilterID:atIndex:", objc_msgSend(*(*(&v47 + 1) + 8 * v15), "filterID"), v16)}];
          v15 = v15 + 1;
          ++v16;
        }

        while (v13 != v15);
        v13 = [a3 countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v13);
    }
  }

  v17 = [(MPSlide *)self parentDocument];
  v36 = v7;
  [(MPSlide *)self didChange:2 valuesAtIndexes:v7 forKey:@"filters"];
  if (self->_mirrorToDuplicatePaths)
  {
    slide = self->_slide;
    if (slide)
    {
      v19 = [(MCAssetVideo *)[(MCSlide *)slide asset] slides];
      if (v19)
      {
        v20 = v19;
        if ([(NSSet *)v19 count]>= 2)
        {
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v21 = [(NSSet *)v20 countByEnumeratingWithState:&v43 objects:v56 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v44;
            v24 = MPAudioPlaylist;
            v37 = v20;
            v38 = v17;
            do
            {
              for (j = 0; j != v22; j = j + 1)
              {
                if (*v44 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v26 = *(*(&v43 + 1) + 8 * j);
                if (v26 != self->_slide)
                {
                  v27 = [&v24[12] slideForSlide:v26 inDocument:v17];
                  if (v27 && v27 != self)
                  {
                    v29 = v27;
                    if (([objc_msgSend(-[MPSlide parent](v27 "parent")] & 1) == 0)
                    {
                      v30 = +[NSMutableArray array];
                      v39 = 0u;
                      v40 = 0u;
                      v41 = 0u;
                      v42 = 0u;
                      filters = self->_filters;
                      v32 = [(NSMutableArray *)filters countByEnumeratingWithState:&v39 objects:v55 count:16];
                      if (v32)
                      {
                        v33 = v32;
                        v34 = *v40;
                        do
                        {
                          for (k = 0; k != v33; k = k + 1)
                          {
                            if (*v40 != v34)
                            {
                              objc_enumerationMutation(filters);
                            }

                            [v30 addObject:{objc_msgSend(*(*(&v39 + 1) + 8 * k), "copy")}];
                          }

                          v33 = [(NSMutableArray *)filters countByEnumeratingWithState:&v39 objects:v55 count:16];
                        }

                        while (v33);
                      }

                      [(MPSlide *)v29 removeAllFilters];
                      [(MPSlide *)v29 insertFilters:v30 atIndex:0];
                      v20 = v37;
                      v17 = v38;
                      v24 = MPAudioPlaylist;
                    }
                  }
                }
              }

              v22 = [(NSSet *)v20 countByEnumeratingWithState:&v43 objects:v56 count:16];
            }

            while (v22);
          }
        }
      }
    }
  }
}

- (void)removeFiltersAtIndices:(id)a3
{
  filters = self->_filters;
  if (filters && [(NSMutableArray *)filters count])
  {
    [(MPSlide *)self willChange:3 valuesAtIndexes:a3 forKey:@"filters"];
    v6 = [(MPSlide *)self parentDocument];
    v7 = [a3 lastIndex];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v7; i != 0x7FFFFFFFFFFFFFFFLL; i = [a3 indexLessThanIndex:i])
      {
        v9 = [(NSMutableArray *)self->_filters objectAtIndex:i];
        [v9 setParent:0];
        [v9 setFilter:0];
      }
    }

    slide = self->_slide;
    if (slide)
    {
      [(MCSlide *)slide removeFiltersAtIndices:a3];
    }

    [(NSMutableArray *)self->_filters removeObjectsAtIndexes:a3];
    if (self->_mirrorToDuplicatePaths)
    {
      v11 = self->_slide;
      if (v11)
      {
        v12 = [(MCAssetVideo *)[(MCSlide *)v11 asset] slides];
        if (v12)
        {
          v13 = v12;
          if ([(NSSet *)v12 count]>= 2)
          {
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v14 = [(NSSet *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v23;
              do
              {
                for (j = 0; j != v15; j = j + 1)
                {
                  if (*v23 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v22 + 1) + 8 * j);
                  if (v18 != self->_slide)
                  {
                    v19 = [MPUtilities slideForSlide:v18 inDocument:v6];
                    if (v19)
                    {
                      v20 = v19 == self;
                    }

                    else
                    {
                      v20 = 1;
                    }

                    if (!v20)
                    {
                      v21 = v19;
                      if (([objc_msgSend(-[MPSlide parent](v19 "parent")] & 1) == 0)
                      {
                        [(MPSlide *)v21 removeFiltersAtIndices:a3];
                      }
                    }
                  }
                }

                v15 = [(NSSet *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
              }

              while (v15);
            }
          }
        }
      }
    }

    [(MPSlide *)self didChange:3 valuesAtIndexes:a3 forKey:@"filters"];
  }
}

- (void)removeAllFilters
{
  if ([(NSMutableArray *)self->_filters count])
  {
    v3 = [NSIndexSet alloc];
    filters = self->_filters;
    if (filters)
    {
      v5 = [(NSMutableArray *)filters count];
    }

    else
    {
      v5 = 0;
    }

    v6 = [v3 initWithIndexesInRange:{0, v5}];
    [(MPSlide *)self removeFiltersAtIndices:v6];
  }
}

- (void)moveFiltersFromIndices:(id)a3 toIndex:(int64_t)a4
{
  if (self->_filters)
  {
    v6 = [a3 firstIndex];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v6;
      do
      {
        v8 = [(NSMutableArray *)self->_filters objectAtIndex:v7];
        [(NSMutableArray *)self->_filters removeObjectAtIndex:v7];
        [(NSMutableArray *)self->_filters insertObject:v8 atIndex:((__PAIR128__(a4, v7) - a4) >> 64)];
        v7 = [a3 indexGreaterThanIndex:v7];
        ++a4;
      }

      while (v7 != 0x7FFFFFFFFFFFFFFFLL);
    }

    slide = self->_slide;
    if (slide)
    {
      [(MCSlide *)slide moveFiltersAtIndices:a3 toIndex:a4];
    }

    v10 = [(MPSlide *)self parentDocument];
    if (self->_mirrorToDuplicatePaths)
    {
      v11 = v10;
      v12 = self->_slide;
      if (v12)
      {
        v13 = [(MCAssetVideo *)[(MCSlide *)v12 asset] slides];
        if (v13)
        {
          v14 = v13;
          if ([(NSSet *)v13 count]>= 2)
          {
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v15 = [(NSSet *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v25;
              do
              {
                for (i = 0; i != v16; i = i + 1)
                {
                  if (*v25 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v24 + 1) + 8 * i);
                  if (v19 != self->_slide)
                  {
                    v20 = [MPUtilities slideForSlide:v19 inDocument:v11];
                    if (v20)
                    {
                      v21 = v20 == self;
                    }

                    else
                    {
                      v21 = 1;
                    }

                    if (!v21)
                    {
                      v22 = v20;
                      if (([objc_msgSend(-[MPSlide parent](v20 "parent")] & 1) == 0)
                      {
                        [(MPSlide *)v22 moveFiltersFromIndices:a3 toIndex:a4];
                      }
                    }
                  }
                }

                v16 = [(NSSet *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
              }

              while (v16);
            }
          }
        }
      }
    }
  }
}

- (id)animationPaths
{
  [(MPSlide *)self center];
  v5 = v4 == 0.5 && v3 == 0.5;
  if (!v5 && ![(NSMutableDictionary *)self->_animationPaths objectForKey:@"center"])
  {
    v6 = +[MPAnimationPathKeyframed animationPath];
    [(MPSlide *)self center];
    [v6 createKeyframeWithPoint:? atTime:?];
    [(MPSlide *)self setAnimationPath:v6 forKey:@"center"];
  }

  [(MPSlide *)self scale];
  if (v7 != 1.0 && ![(NSMutableDictionary *)self->_animationPaths objectForKey:@"scale"])
  {
    v8 = +[MPAnimationPathKeyframed animationPath];
    [(MPSlide *)self scale];
    [v8 createKeyframeWithScalar:? atTime:?];
    [(MPSlide *)self setAnimationPath:v8 forKey:@"scale"];
  }

  [(MPSlide *)self rotation];
  if (v9 != 0.0 && ![(NSMutableDictionary *)self->_animationPaths objectForKey:@"angle"])
  {
    v10 = +[MPAnimationPathKeyframed animationPath];
    [(MPSlide *)self rotation];
    [v10 createKeyframeWithScalar:? atTime:?];
    [(MPSlide *)self setAnimationPath:v10 forKey:@"angle"];
  }

  return self->_animationPaths;
}

- (id)animationPathForKey:(id)a3
{
  animationPaths = self->_animationPaths;
  if (!animationPaths || (v6 = [(NSMutableDictionary *)animationPaths objectForKey:a3]) == 0)
  {
    if ([a3 isEqualToString:@"center"])
    {
      v6 = +[MPAnimationPathKeyframed animationPath];
      [(MPSlide *)self center];
      [v6 createKeyframeWithPoint:? atTime:?];
      v7 = @"center";
    }

    else if ([a3 isEqualToString:@"scale"])
    {
      v6 = +[MPAnimationPathKeyframed animationPath];
      [(MPSlide *)self scale];
      [v6 createKeyframeWithScalar:? atTime:?];
      v7 = @"scale";
    }

    else
    {
      if (![a3 isEqualToString:@"angle"])
      {
        return 0;
      }

      v6 = +[MPAnimationPathKeyframed animationPath];
      [(MPSlide *)self rotation];
      [v6 createKeyframeWithScalar:? atTime:?];
      v7 = @"angle";
    }

    [(MPSlide *)self setAnimationPath:v6 forKey:v7];
  }

  return v6;
}

- (BOOL)hasAnimationPathForKey:(id)a3
{
  animationPaths = self->_animationPaths;
  if (animationPaths)
  {
    LOBYTE(animationPaths) = [(NSMutableDictionary *)animationPaths objectForKeyedSubscript:a3]!= 0;
  }

  return animationPaths;
}

- (id)keyframedAnimationPathForKey:(id)a3
{
  v3 = [(MPSlide *)self animationPathForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (void)setAnimationPath:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    animationPaths = self->_animationPaths;
    if (animationPaths || (animationPaths = objc_alloc_init(NSMutableDictionary), (self->_animationPaths = animationPaths) != 0))
    {
      v8 = [(NSMutableDictionary *)animationPaths objectForKey:a4];
      if (v8)
      {
        v9 = v8;
        [v8 setParent:0];
        [v9 setAnimationPath:0];
      }
    }

    [a3 setParent:self];
    [(NSMutableDictionary *)self->_animationPaths setObject:a3 forKey:a4];
    slide = self->_slide;
    if (slide)
    {
      [(MCSlide *)slide removeAnimationPathForKey:a4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v12 = off_1A4CB0;
      if ((isKindOfClass & 1) == 0)
      {
        v12 = off_1A4CB8;
      }

      v13 = [(__objc2_class *)*v12 animationPathWithKey:a4];
      [(MCSlide *)self->_slide addAnimationPath:v13];
      [a3 setAnimationPath:v13];
    }

    v27 = a3;
    v14 = [(MPSlide *)self parentDocument];
    if (self->_mirrorToDuplicatePaths)
    {
      v15 = v14;
      v16 = self->_slide;
      if (v16)
      {
        v17 = [(MCAssetVideo *)[(MCSlide *)v16 asset] slides];
        if (v17)
        {
          v18 = v17;
          if ([(NSSet *)v17 count]>= 2)
          {
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v19 = [(NSSet *)v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v29;
              do
              {
                for (i = 0; i != v20; i = i + 1)
                {
                  if (*v29 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(*(&v28 + 1) + 8 * i);
                  if (v23 != self->_slide)
                  {
                    v24 = [MPUtilities slideForSlide:v23 inDocument:v15];
                    if (v24)
                    {
                      v25 = v24 == self;
                    }

                    else
                    {
                      v25 = 1;
                    }

                    if (!v25)
                    {
                      v26 = v24;
                      if (([objc_msgSend(-[MPSlide parent](v24 "parent")] & 1) == 0)
                      {
                        -[MPSlide setAnimationPath:forKey:](v26, "setAnimationPath:forKey:", [v27 copy], a4);
                      }
                    }
                  }
                }

                v20 = [(NSSet *)v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
              }

              while (v20);
            }
          }
        }
      }
    }
  }

  else
  {

    [(MPSlide *)self removeAnimationPathForKey:a4];
  }
}

- (void)removeAnimationPathForKey:(id)a3
{
  animationPaths = self->_animationPaths;
  if (animationPaths)
  {
    v6 = [(NSMutableDictionary *)animationPaths objectForKey:?];
    v7 = [(MPSlide *)self parentDocument];
    slide = self->_slide;
    if (slide)
    {
      [(MCSlide *)slide removeAnimationPathForKey:a3];
      [v6 setAnimationPath:0];
    }

    [v6 setParent:0];
    [(NSMutableDictionary *)self->_animationPaths removeObjectForKey:a3];
    if (self->_mirrorToDuplicatePaths)
    {
      v9 = self->_slide;
      if (v9)
      {
        v10 = [(MCAssetVideo *)[(MCSlide *)v9 asset] slides];
        if (v10)
        {
          v11 = v10;
          if ([(NSSet *)v10 count]>= 2)
          {
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v12 = [(NSSet *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v21;
              do
              {
                v15 = 0;
                do
                {
                  if (*v21 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v20 + 1) + 8 * v15);
                  if (v16 != self->_slide)
                  {
                    v17 = [MPUtilities slideForSlide:v16 inDocument:v7];
                    if (v17)
                    {
                      v18 = v17 == self;
                    }

                    else
                    {
                      v18 = 1;
                    }

                    if (!v18)
                    {
                      v19 = v17;
                      if (([objc_msgSend(-[MPSlide parent](v17 "parent")] & 1) == 0)
                      {
                        [(MPSlide *)v19 removeAnimationPathForKey:a3];
                      }
                    }
                  }

                  v15 = v15 + 1;
                }

                while (v13 != v15);
                v13 = [(NSSet *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
              }

              while (v13);
            }
          }
        }
      }
    }
  }
}

- (double)showTime
{
  result = self->_cachedShowTime;
  if (result < 0.0)
  {
    v8[3] = v2;
    v8[4] = v3;
    if ([(MPEffectSupport *)self->_parent effectTiming])
    {
      [-[MPEffectSupport effectTiming](self->_parent "effectTiming")];
    }

    else
    {
      v7 = 0xBFF0000000000000;
      v8[0] = 0;
      v6 = [(MPSlide *)self determineShowTime:v8 showDuration:&v7];
      result = 0.0;
      if (!v6)
      {
        return result;
      }

      result = *v8;
    }

    self->_cachedShowTime = result;
  }

  return result;
}

- (double)showDuration
{
  cachedShowDuration = self->_cachedShowDuration;
  if (cachedShowDuration < 0.0)
  {
    if ([(MPEffectSupport *)self->_parent effectTiming])
    {
      [-[MPEffectSupport effectTiming](self->_parent "effectTiming")];
      cachedShowDuration = v4;
      self->_cachedShowDuration = v4;
    }

    else
    {
      v8 = -1.0;
      v9 = 0.0;
      [(MPEffectSupport *)self->_parent fullDuration];
      cachedShowDuration = v5;
      if ([(MPSlide *)self determineShowTime:&v9 showDuration:&v8])
      {
        if (v8 + v9 > cachedShowDuration || v8 < 0.0)
        {
          cachedShowDuration = cachedShowDuration - v9;
        }

        else
        {
          cachedShowDuration = v8;
        }

        self->_cachedShowDuration = cachedShowDuration;
      }
    }
  }

  return cachedShowDuration;
}

- (double)showDisplayTime
{
  parent = self->_parent;
  if (!parent)
  {
    return 0.0;
  }

  v4 = [(MPEffectSupport *)parent effectTiming];
  if (v4)
  {
    v5 = v4;
    v6 = [(MPSlide *)self liveIndex];

    [v5 displayTimeForSlideAtIndex:v6];
  }

  else
  {
    v7 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    v8 = [(MPSlide *)self index];
    if (v8 >= [v7 count])
    {
      v9 = [v7 lastObject];
    }

    else
    {
      v9 = [v7 objectAtIndex:{-[MPSlide index](self, "index")}];
    }

    v10 = [v9 objectForKey:@"showDisplayTime"];
    if (v10)
    {
      [v10 doubleValue];
      v12 = v11;
      v21 = 0.0;
      [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
      if ([-[MPEffectSupport effectID](self->_parent "effectID")])
      {
        v12 = v12 + -0.5;
        v21 = v21 + 0.83333;
      }

      [(MPEffectSupport *)self->_parent mainDuration];
      v14 = v12 * (v13 / v21);
      [(MPEffectSupport *)self->_parent phaseInDuration];
      v16 = v14 + v15;
      [-[MPEffectSupport parentContainer](self->_parent "parentContainer")];
      if (v16 >= result)
      {
        return v16;
      }
    }

    else
    {
      [(MPSlide *)self showTime];
      v18 = v17;
      [(MPSlide *)self showDuration];
      return v18 + v19 * 0.5;
    }
  }

  return result;
}

- (double)showDisplayStartTime
{
  v13 = 0.0;
  v3 = [(MPEffectSupport *)self->_parent effectTiming];
  if (v3 && (v4 = v3, (objc_opt_respondsToSelector() & 1) != 0))
  {
    v5 = [(MPSlide *)self liveIndex];

    [v4 showTimeForSlideAtIndex:v5];
  }

  else if ([(MPSlide *)self determineShowTime:&v13 showDuration:&v12])
  {
    return v13;
  }

  else
  {
    v7 = [objc_msgSend(objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    if (v7)
    {
      v8 = v7;
      [(MPSlide *)self showDisplayTime];
      v10 = v9;
      [v8 doubleValue];
      return fmax(v10 - v11, 0.0);
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

- (double)startTime
{
  result = self->_startTime;
  if (result == -1.0)
  {
    v4 = [(MPSlide *)self parentDocument];
    if (v4)
    {
      v5 = v4;
      v6 = [(MPSlide *)self path];

      [v5 startTimeForPath:v6];
    }

    else
    {
      v7 = +[MPAssetManager sharedManager];
      v8 = [(MPSlide *)self absolutePath];

      [v7 startTimeForAssetAtPath:v8];
    }
  }

  return result;
}

- (void)setStartTime:(double)a3
{
  self->_startTime = a3;
  slide = self->_slide;
  if (a3 == -1.0 || slide == 0)
  {
    if (a3 == -1.0 && slide != 0)
    {
      [(MCSlide *)slide undefineStartTime];
    }
  }

  else
  {
    [(MCSlide *)slide setStartTime:?];
  }
}

- (double)duration
{
  result = self->_duration;
  if (result == -1.0)
  {
    v4 = [(MPSlide *)self parentDocument];
    if (v4)
    {
      [v4 stopTimeForPath:{-[MPSlide path](self, "path")}];
    }

    else
    {
      [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
    }

    v6 = v5;
    [(MPSlide *)self startTime];
    return v6 - v7;
  }

  return result;
}

- (void)setDuration:(double)a3
{
  self->_duration = a3;
  slide = self->_slide;
  if (a3 == -1.0 || slide == 0)
  {
    if (a3 == -1.0 && slide != 0)
    {
      [(MCSlide *)slide undefineDuration];
    }
  }

  else
  {
    [(MCSlide *)slide setDuration:?];
  }
}

- (double)audioVolume
{
  result = self->_audioVolume;
  if (result == -1.0)
  {
    return 1.0;
  }

  return result;
}

- (void)setAudioVolume:(double)a3
{
  self->_audioVolume = a3;
  slide = self->_slide;
  if (slide)
  {
    *&a3 = a3;
    [(MCSlide *)slide setAudioVolume:a3];
  }
}

- (void)setAudioFadeInDuration:(double)a3
{
  self->_audioFadeInDuration = a3;
  slide = self->_slide;
  if (slide)
  {
    [(MCSlide *)slide setAudioFadeInDuration:?];
  }
}

- (void)setAudioFadeOutDuration:(double)a3
{
  self->_audioFadeOutDuration = a3;
  slide = self->_slide;
  if (slide)
  {
    [(MCSlide *)slide setAudioFadeOutDuration:?];
  }
}

- (void)setAudioDuckInDuration:(double)a3
{
  self->_audioDuckInDuration = a3;
  slide = self->_slide;
  if (slide)
  {
    [(MCSlide *)slide setAudioDuckInDuration:?];
  }
}

- (void)setAudioDuckOutDuration:(double)a3
{
  self->_audioDuckOutDuration = a3;
  slide = self->_slide;
  if (slide)
  {
    [(MCSlide *)slide setAudioDuckOutDuration:?];
  }
}

- (void)setAudioDuckLevel:(double)a3
{
  self->_audioDuckLevel = a3;
  slide = self->_slide;
  if (slide)
  {
    *&a3 = a3;
    [(MCSlide *)slide setAudioDuckLevel:a3];
  }
}

- (NSString)sizingMode
{
  result = self->_sizingMode;
  if (result)
  {
    return result;
  }

  if (!self->_parent)
  {
    return 0;
  }

  v4 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  isSecondary = self->_isSecondary;
  v6 = [(MPSlide *)self index];
  if (isSecondary)
  {
    v6 += [(MPEffectSupport *)self->_parent maxNumberOfSlides];
  }

  if (v6 < [v4 count])
  {
    result = [v4 objectAtIndex:v6];
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")] != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  result = [v4 lastObject];
  if (!result)
  {
    return result;
  }

LABEL_10:

  return [(NSString *)result objectForKey:@"kenBurnsType"];
}

- (void)setSizingMode:(id)a3
{
  sizingMode = self->_sizingMode;
  if (sizingMode)
  {

    self->_sizingMode = 0;
  }

  self->_sizingMode = [a3 copy];
  frame = self->_frame;
  if (frame)
  {
    [(MPFrame *)frame setFrameAttribute:a3 forKey:@"sizingMode"];
  }

  slide = self->_slide;
  if (slide && ([(MCSlide *)slide kenBurnsType]|| ![(NSString *)self->_sizingMode isEqualToString:@"Crop to Fit"]))
  {
    [(MCSlide *)self->_slide setKenBurnsType:a3];
  }

  if (self->_mirrorToDuplicatePaths)
  {
    v8 = self->_slide;
    if (v8)
    {
      v9 = [(MCAssetVideo *)[(MCSlide *)v8 asset] slides];
      if (v9)
      {
        v10 = v9;
        if ([(NSSet *)v9 count]>= 2)
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v11 = [(NSSet *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v20;
            do
            {
              v14 = 0;
              do
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v19 + 1) + 8 * v14);
                if (v15 != self->_slide)
                {
                  v16 = [MPUtilities slideForSlide:v15 inDocument:[(MPSlide *)self parentDocument]];
                  if (v16)
                  {
                    v17 = v16 == self;
                  }

                  else
                  {
                    v17 = 1;
                  }

                  if (!v17)
                  {
                    v18 = v16;
                    if (([objc_msgSend(-[MPSlide parent](v16 "parent")] & 1) == 0)
                    {
                      [(MPSlide *)v18 setSizingMode:a3];
                    }
                  }
                }

                v14 = v14 + 1;
              }

              while (v12 != v14);
              v12 = [(NSSet *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
            }

            while (v12);
          }
        }
      }
    }
  }
}

- (int64_t)index
{
  parent = self->_parent;
  if (!parent)
  {
    return -1;
  }

  if (self->_isSecondary && !self->_slide)
  {
    goto LABEL_7;
  }

  if (![-[MPSlide parentEffect](self "parentEffect")] || !self->_isSecondary)
  {
    if (!self->_slide || [-[MPSlide parentEffect](self "parentEffect")])
    {
      v4 = [(MPEffectSupport *)self->_parent slides];
      goto LABEL_11;
    }

    isSecondary = self->_isSecondary;
    v6 = [(MCSlide *)self->_slide index];
    if (isSecondary)
    {
      v6 -= [-[MPEffectSupport slides](self->_parent "slides")];
    }

    return v6;
  }

  parent = self->_parent;
LABEL_7:
  v4 = [(MPEffectSupport *)parent secondarySlides];
LABEL_11:

  return [v4 indexOfObject:self];
}

- (int64_t)liveIndex
{
  parent = self->_parent;
  if (!parent)
  {
    return -1;
  }

  slide = self->_slide;
  if (self->_isSecondary)
  {
    if (slide)
    {
      v5 = [(MCSlide *)self->_slide index];
      return v5 - [-[MPEffectSupport slides](self->_parent "slides")];
    }

    v8 = [(MPEffectSupport *)parent secondarySlides];
    goto LABEL_12;
  }

  if (!slide)
  {
    v8 = [(MPEffectSupport *)parent slides];
LABEL_12:

    return [v8 indexOfObject:self];
  }

  v7 = self->_slide;

  return [(MCSlide *)v7 index];
}

- (id)parentSubtitleEffect
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = [(MPSlide *)self nearestLayer];
  v4 = [(MPEffectSupport *)self->_parent parentContainer];
  v5 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (v5)
  {
    if (v5 == &dword_0 + 2)
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }

    v4 = [v3 objectInEffectContainersAtIndex:{objc_msgSend(v4, "index") + v6}];
  }

  v7 = [v4 effects];

  return [v7 lastObject];
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setCenter:(CGPoint)a3
{
  self->_center = a3;
  slide = self->_slide;
  if (slide)
  {
    [(MCSlide *)slide setCenter:?];
  }
}

- (void)setScale:(double)a3
{
  self->_scale = a3;
  slide = self->_slide;
  if (slide)
  {
    [(MCSlide *)slide setScale:?];
  }
}

- (void)setRotation:(double)a3
{
  self->_rotation = a3;
  slide = self->_slide;
  if (slide)
  {
    [(MCSlide *)slide setRotation:?];
  }
}

- (id)userInfoAttributeForKey:(id)a3
{
  result = self->_attributes;
  if (result)
  {
    return [result objectForKey:a3];
  }

  return result;
}

- (void)setUserInfoAttribute:(id)a3 forKey:(id)a4
{
  attributes = self->_attributes;
  if (!attributes)
  {
    attributes = objc_alloc_init(NSMutableDictionary);
    self->_attributes = attributes;
  }

  [(NSMutableDictionary *)attributes setObject:a3 forKey:a4];
}

- (BOOL)hasMovie
{
  mediaType = self->_mediaType;
  if (mediaType != -1)
  {
    return mediaType == 3;
  }

  slide = self->_slide;
  if ((!slide || ![(MCSlide *)slide asset]) && !self->_path)
  {
    return 0;
  }

  v6 = [(MPSlide *)self parentDocument];
  if (v6)
  {
    v7 = [v6 isMovieAtPath:{-[MPSlide path](self, "path")}];
  }

  else
  {
    v7 = [MPFileValidationManager validateFilesForMovies:[NSArray arrayWithObject:[(MPSlide *)self absolutePath]] extensionsOnly:0];
  }

  v3 = v7;
  if (v7)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  [(MPSlide *)self setMediaType:v8];
  return v3;
}

- (BOOL)needsStyleUpdateOnSlideChange
{
  v3 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  isSecondary = self->_isSecondary;
  v5 = [(MPSlide *)self index];
  if (isSecondary)
  {
    v5 += [(MPEffectSupport *)self->_parent maxNumberOfSlides];
  }

  if (v5 >= [v3 count])
  {
    if ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [v3 lastObject];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [v3 objectAtIndex:v5];
  }

  v7 = [v6 objectForKey:@"panoType"];
  if (v7)
  {
    v8 = [v7 integerValue] != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(MPSlide *)self parentDocument];
  v10 = [v9 styleID];
  if (v9)
  {
    return [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")] & v8;
  }

  else
  {
    return 0;
  }
}

- (BOOL)needsTimingUpdateOnSlideChange
{
  v3 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  isSecondary = self->_isSecondary;
  v5 = [(MPSlide *)self index];
  if (isSecondary)
  {
    v5 += [(MPEffectSupport *)self->_parent maxNumberOfSlides];
  }

  if (v5 >= [v3 count])
  {
    if ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [v3 lastObject];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [v3 objectAtIndex:v5];
  }

  v7 = [v6 objectForKey:@"panoType"];
  if (v7)
  {
    v8 = [v7 integerValue] != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(MPSlide *)self parentDocument];
  v10 = [v9 styleID];
  if (v9)
  {
    return [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")] & v8;
  }

  else
  {
    return 0;
  }
}

- (double)originalAspectRatio
{
  width = self->_cachedSize.width;
  result = 0.0;
  if (width != 0.0)
  {
    height = self->_cachedSize.height;
    if (height != 0.0)
    {
      return width / height;
    }
  }

  return result;
}

- (id)fullDebugLog
{
  v3 = [NSString stringWithFormat:@"\n%@\n", [(MPSlide *)self description]];
  frame = self->_frame;
  if (frame)
  {
    v3 = [(NSString *)v3 stringByAppendingFormat:@"%@\n", [(MPFrame *)frame fullDebugLog]];
  }

  v5 = [(NSString *)v3 stringByAppendingFormat:@"=============================== Slide %d Filters =============================\n", [(MPSlide *)self index]];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  filters = self->_filters;
  v7 = [(NSMutableArray *)filters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(filters);
        }

        v5 = -[NSString stringByAppendingFormat:](v5, "stringByAppendingFormat:", @"%@\n", [*(*(&v12 + 1) + 8 * v10) fullDebugLog]);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)filters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)canZoom
{
  v3 = [(MPSlide *)self parentDocument];
  v4 = [v3 styleID];
  if ([v4 isEqualToString:@"KenBurns"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"Classic"))
  {
    return 1;
  }

  else
  {
    return ![(MPSlide *)self isPanoramaInDocument:v3];
  }
}

- (id)action
{
  v3 = [-[MPSlide parent](self "parent")];
  v4 = [NSString stringWithFormat:@"slide%d", [(MPSlide *)self index]];

  return [v3 actionForKey:v4];
}

- (void)copyVars:(id)a3
{
  self->_startTime = *(a3 + 9);
  self->_duration = *(a3 + 10);
  self->_audioVolume = *(a3 + 20);
  self->_audioFadeInDuration = *(a3 + 11);
  self->_audioFadeOutDuration = *(a3 + 12);
  self->_audioDuckInDuration = *(a3 + 13);
  self->_audioDuckOutDuration = *(a3 + 14);
  self->_audioDuckLevel = *(a3 + 15);
  sizingMode = self->_sizingMode;
  if (sizingMode)
  {

    self->_sizingMode = 0;
  }

  self->_sizingMode = [*(a3 + 21) copy];
}

- (void)copyFrame:(id)a3
{
  frame = self->_frame;
  if (frame)
  {

    self->_frame = 0;
  }

  v6 = [a3 copy];
  [(MPSlide *)self setFrame:v6];
}

- (void)copyLayerGroup:(id)a3
{
  layerGroup = self->_layerGroup;
  if (layerGroup)
  {

    self->_layerGroup = 0;
  }

  v6 = [a3 copy];
  [(MPSlide *)self setLayerGroup:v6];
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

    [(MPSlide *)self addFilters:v5];
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
          [(MPSlide *)self setAnimationPath:v10 forKey:v9];
        }

        v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (void)cleanup
{
  [(MPSlide *)self removeAllFilters];
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

        [(MPSlide *)self removeAnimationPathForKey:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)nearestLayer
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return self->_parent;
  }

  v3 = [-[MPSlide parent](self "parent")];

  return [v3 parentLayer];
}

- (BOOL)determineShowTime:(double *)a3 showDuration:(double *)a4
{
  if ([(MPSlide *)self index]== -1 || !self->_parent)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    if (v7)
    {
      v8 = v7;
      v9 = [NSDictionary alloc];
      [(MPEffectSupport *)self->_parent phaseInDuration];
      v10 = [NSNumber numberWithDouble:?];
      [(MPEffectSupport *)self->_parent mainDuration];
      v11 = [NSNumber numberWithDouble:?];
      [(MPEffectSupport *)self->_parent phaseOutDuration];
      v12 = [NSNumber numberWithDouble:?];
      [(MPEffectSupport *)self->_parent fullDuration];
      v13 = [v9 initWithObjectsAndKeys:{v10, @"phaseInDuration", v11, @"mainDuration", v12, @"phaseOutDuration", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:"), @"fullDuration", 0}];
      v14 = [MPUtilities executeScript:v8 withHeader:v13 andAttributes:[(MPEffectSupport *)self->_parent effectAttributes]];

      if (v14)
      {
        v15 = CGSizeFromString(v14);
        if (a3)
        {
          *a3 = v15.width;
        }

        if (a4)
        {
          *a4 = v15.height;
        }
      }

      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

- (void)setSlide:(id)a3
{
  slide = self->_slide;
  if (slide)
  {

    self->_slide = 0;
  }

  v6 = a3;
  self->_slide = v6;
  if (v6)
  {
    frame = self->_frame;
    if (frame)
    {
      [(MCSlide *)self->_slide setFrameID:[(MPFrame *)frame frameID]];
      [(MCSlide *)self->_slide setFrameAttribute:[(MPFrame *)self->_frame presetID] forKey:@"PresetID"];
      [(MCSlide *)self->_slide setFrameAttribute:[(MPFrame *)self->_frame frameAttributes] forKey:@"specificAttributes"];
    }

    if (self->_sizingMode && ([(MCSlide *)self->_slide kenBurnsType]|| ![(NSString *)self->_sizingMode isEqualToString:@"Crop to Fit"]))
    {
      [(MCSlide *)self->_slide setKenBurnsType:self->_sizingMode];
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    filters = self->_filters;
    v9 = [(NSMutableArray *)filters countByEnumeratingWithState:&v84 objects:v94 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v85;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v85 != v11)
          {
            objc_enumerationMutation(filters);
          }

          [*(*(&v84 + 1) + 8 * i) setFilter:{-[MCSlide addFilterWithFilterID:](self->_slide, "addFilterWithFilterID:", objc_msgSend(*(*(&v84 + 1) + 8 * i), "filterID"))}];
        }

        v10 = [(NSMutableArray *)filters countByEnumeratingWithState:&v84 objects:v94 count:16];
      }

      while (v10);
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    animationPaths = self->_animationPaths;
    v14 = [(NSMutableDictionary *)animationPaths countByEnumeratingWithState:&v80 objects:v93 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v81;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v81 != v16)
          {
            objc_enumerationMutation(animationPaths);
          }

          v18 = *(*(&v80 + 1) + 8 * j);
          v19 = [(NSMutableDictionary *)self->_animationPaths objectForKey:v18];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = off_1A4CB0;
          }

          else
          {
            v20 = off_1A4CB8;
          }

          v21 = [(__objc2_class *)*v20 animationPathWithKey:v18];
          [(MCSlide *)self->_slide addAnimationPath:v21];
          [v19 setAnimationPath:v21];
        }

        v15 = [(NSMutableDictionary *)animationPaths countByEnumeratingWithState:&v80 objects:v93 count:16];
      }

      while (v15);
    }

    if (self->_cachedSize.width == CGSizeZero.width && self->_cachedSize.height == CGSizeZero.height)
    {
      [-[MPSlide parentDocument](self "parentDocument")];
      self->_cachedSize.width = v23;
      self->_cachedSize.height = v24;
    }

    [(MPSlide *)self center];
    [(MCSlide *)self->_slide setCenter:?];
    [(MPSlide *)self rotation];
    [(MCSlide *)self->_slide setRotation:?];
    [(MPSlide *)self scale];
    [(MCSlide *)self->_slide setScale:?];
    if ([(MPSlide *)self hasMovie])
    {
      if (self->_path)
      {
        if (self->_startTime != -1.0)
        {
          [(MCSlide *)self->_slide setStartTime:?];
        }

        if (self->_duration != -1.0)
        {
          [(MCSlide *)self->_slide setDuration:?];
        }
      }

      audioVolume = self->_audioVolume;
      if (audioVolume != -1.0)
      {
        *&audioVolume = audioVolume;
        [(MCSlide *)self->_slide setAudioVolume:audioVolume];
      }

      [(MPSlide *)self audioFadeInDuration];
      [(MCSlide *)self->_slide setAudioFadeInDuration:?];
      [(MPSlide *)self audioFadeOutDuration];
      [(MCSlide *)self->_slide setAudioFadeOutDuration:?];
      [(MPSlide *)self audioDuckInDuration];
      [(MCSlide *)self->_slide setAudioDuckInDuration:?];
      [(MPSlide *)self audioDuckOutDuration];
      [(MCSlide *)self->_slide setAudioDuckOutDuration:?];
      [(MPSlide *)self audioDuckLevel];
      *&v26 = v26;
      [(MCSlide *)self->_slide setAudioDuckLevel:v26];
    }

    layerGroup = self->_layerGroup;
    if (layerGroup)
    {
      v28 = [MPUtilities createPlugInSlide:self->_slide forLayer:layerGroup inDocument:[(MPSlide *)self parentDocument]];
    }

    else
    {
      v28 = 0;
    }

    [(MCSlide *)self->_slide setPlug:v28];
    if (self->_mirrorToDuplicatePaths)
    {
      v39 = self->_slide;
      if (v39)
      {
        obj = [(MCAssetVideo *)[(MCSlide *)v39 asset] slides];
        if (obj)
        {
          if ([(NSSet *)obj count]>= 2)
          {
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v40 = [(NSSet *)obj countByEnumeratingWithState:&v76 objects:v92 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v77;
              do
              {
                for (k = 0; k != v41; k = k + 1)
                {
                  if (*v77 != v42)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v44 = *(*(&v76 + 1) + 8 * k);
                  if (v44 != self->_slide)
                  {
                    v45 = [MPUtilities slideForSlide:v44 inDocument:[(MPSlide *)self parentDocument]];
                    if (v45 && v45 != self)
                    {
                      v47 = v45;
                      if (([objc_msgSend(-[MPSlide parent](v45 "parent")] & 1) == 0)
                      {
                        v48 = +[NSMutableArray array];
                        v72 = 0u;
                        v73 = 0u;
                        v74 = 0u;
                        v75 = 0u;
                        v49 = self->_filters;
                        v50 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v72 objects:v91 count:16];
                        if (v50)
                        {
                          v51 = v50;
                          v52 = *v73;
                          do
                          {
                            for (m = 0; m != v51; m = m + 1)
                            {
                              if (*v73 != v52)
                              {
                                objc_enumerationMutation(v49);
                              }

                              [v48 addObject:{objc_msgSend(*(*(&v72 + 1) + 8 * m), "copy")}];
                            }

                            v51 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v72 objects:v91 count:16];
                          }

                          while (v51);
                        }

                        [(MPSlide *)v47 removeAllFilters];
                        [(MPSlide *)v47 addFilters:v48];
                        [(MPSlide *)v47 setSizingMode:self->_sizingMode];
                        v70 = 0u;
                        v71 = 0u;
                        v68 = 0u;
                        v69 = 0u;
                        v54 = self->_animationPaths;
                        v55 = [(NSMutableDictionary *)v54 countByEnumeratingWithState:&v68 objects:v90 count:16];
                        if (v55)
                        {
                          v56 = v55;
                          v57 = *v69;
                          do
                          {
                            for (n = 0; n != v56; n = n + 1)
                            {
                              if (*v69 != v57)
                              {
                                objc_enumerationMutation(v54);
                              }

                              -[MPSlide setAnimationPath:forKey:](v47, "setAnimationPath:forKey:", [-[NSMutableDictionary objectForKey:](self->_animationPaths objectForKey:{*(*(&v68 + 1) + 8 * n)), "copy"}], *(*(&v68 + 1) + 8 * n));
                            }

                            v56 = [(NSMutableDictionary *)v54 countByEnumeratingWithState:&v68 objects:v90 count:16];
                          }

                          while (v56);
                        }
                      }
                    }
                  }
                }

                v41 = [(NSSet *)obj countByEnumeratingWithState:&v76 objects:v92 count:16];
              }

              while (v41);
            }
          }
        }
      }
    }
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v29 = self->_filters;
    v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v64 objects:v89 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v65;
      do
      {
        for (ii = 0; ii != v31; ii = ii + 1)
        {
          if (*v65 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [*(*(&v64 + 1) + 8 * ii) setFilter:0];
        }

        v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v64 objects:v89 count:16];
      }

      while (v31);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v34 = self->_animationPaths;
    v35 = [(NSMutableDictionary *)v34 countByEnumeratingWithState:&v60 objects:v88 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v61;
      do
      {
        for (jj = 0; jj != v36; jj = jj + 1)
        {
          if (*v61 != v37)
          {
            objc_enumerationMutation(v34);
          }

          [-[NSMutableDictionary objectForKey:](self->_animationPaths objectForKey:{*(*(&v60 + 1) + 8 * jj)), "setAnimationPath:", 0}];
        }

        v36 = [(NSMutableDictionary *)v34 countByEnumeratingWithState:&v60 objects:v88 count:16];
      }

      while (v36);
    }
  }
}

- (void)duplicateAnimationPaths
{
  if (self->_mirrorToDuplicatePaths)
  {
    slide = self->_slide;
    if (slide)
    {
      obj = [(MCAssetVideo *)[(MCSlide *)slide asset] slides];
      if (obj)
      {
        if ([(NSSet *)obj count]>= 2)
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v4 = [(NSSet *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v4)
          {
            v5 = v4;
            v6 = *v23;
            do
            {
              for (i = 0; i != v5; i = i + 1)
              {
                if (*v23 != v6)
                {
                  objc_enumerationMutation(obj);
                }

                v8 = *(*(&v22 + 1) + 8 * i);
                if (v8 != self->_slide)
                {
                  v9 = [MPUtilities slideForSlide:v8 inDocument:[(MPSlide *)self parentDocument]];
                  if (v9 && v9 != self)
                  {
                    v11 = v9;
                    if (([objc_msgSend(-[MPSlide parent](v9 "parent")] & 1) == 0)
                    {
                      v20 = 0u;
                      v21 = 0u;
                      v18 = 0u;
                      v19 = 0u;
                      animationPaths = self->_animationPaths;
                      v13 = [(NSMutableDictionary *)animationPaths countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                              objc_enumerationMutation(animationPaths);
                            }

                            -[MPSlide setAnimationPath:forKey:](v11, "setAnimationPath:forKey:", [-[NSMutableDictionary objectForKey:](self->_animationPaths objectForKey:{*(*(&v18 + 1) + 8 * j)), "copy"}], *(*(&v18 + 1) + 8 * j));
                          }

                          v14 = [(NSMutableDictionary *)animationPaths countByEnumeratingWithState:&v18 objects:v26 count:16];
                        }

                        while (v14);
                      }
                    }
                  }
                }
              }

              v5 = [(NSSet *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
            }

            while (v5);
          }
        }
      }
    }
  }
}

- (void)setParent:(id)a3
{
  if (a3 && self->_parent)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"A slide may one have one parent.  Please remove it first.  This is unsupported." userInfo:0, v3, v4]);
  }

  self->_parent = a3;

  [(MPSlide *)self resetCachedTimes];
}

- (BOOL)isPanoramaInDocument:(id)a3
{
  [a3 resolutionForPath:{-[MPSlide path](self, "path")}];
  v5 = v3 / v4;
  return v5 > 2.0 || v5 < 0.5;
}

- (void)insertObject:(id)a3 inFilterAtIndex:(int64_t)a4
{
  v6 = [[NSArray alloc] initWithObjects:{a3, 0}];
  [(MPSlide *)self insertFilters:v6 atIndex:a4];
}

- (void)removeObjectFromFilterAtIndex:(int64_t)a3
{
  v4 = [[NSIndexSet alloc] initWithIndex:a3];
  [(MPSlide *)self removeFiltersAtIndices:v4];
}

- (void)replaceObjectInFilterAtIndex:(int64_t)a3 withObject:(id)a4
{
  [(MPSlide *)self removeFiltersAtIndices:[NSIndexSet indexSetWithIndex:?]];
  v7 = [NSArray arrayWithObject:a4];

  [(MPSlide *)self insertFilters:v7 atIndex:a3];
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
              if ([v3 isEqualToString:@"center"])
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
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v21 = *v25;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(a3);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v8 = [a3 objectForKey:v7];
        v9 = [v8 objectForKey:@"times"];
        v10 = [v8 objectForKey:@"values"];
        v11 = +[MPAnimationPathKeyframed animationPath];
        v12 = [v9 count];
        if (v12 >= 1)
        {
          v13 = v12;
          for (j = 0; j != v13; ++j)
          {
            if ([v7 isEqualToString:@"center"])
            {
              v23 = 0;
              [objc_msgSend(v10 objectAtIndex:{j), "getBytes:length:", &v23, 4}];
              v15 = v23;
              v16 = SHIWORD(v23);
              [objc_msgSend(v9 objectAtIndex:{j), "doubleValue"}];
              [v11 createKeyframeWithPoint:v15 atTime:{v16, v17}];
            }

            else
            {
              [objc_msgSend(v10 objectAtIndex:{j), "doubleValue"}];
              v19 = v18;
              [objc_msgSend(v9 objectAtIndex:{j), "doubleValue"}];
              [v11 createKeyframeWithScalar:v19 atTime:v20];
            }
          }
        }

        [(MPSlide *)self setAnimationPath:v11 forKey:v7];
      }

      v5 = [a3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }
}

- (id)scriptingFrame
{
  if (self->_frame)
  {
    v4 = +[NSMutableDictionary dictionary];
    [v4 setObject:-[MPFrame frameID](self->_frame forKey:{"frameID"), @"frameID"}];
    [v4 setObject:-[MPFrame presetID](self->_frame forKey:{"presetID"), @"presetID"}];
    return v4;
  }

  else
  {

    return +[NSDictionary dictionary];
  }
}

- (void)setScriptingFrame:(id)a3
{
  if ([a3 objectForKey:@"frameID"])
  {
    if ([objc_msgSend(a3 objectForKey:{@"frameID", "isEqualToString:", &stru_1AC858}])
    {
      v5 = 0;
    }

    else
    {
      v5 = +[MPFrame frameWithFrameID:](MPFrame, "frameWithFrameID:", [a3 objectForKey:@"frameID"]);
      if ([a3 objectForKey:@"presetID"])
      {
        -[MPFrame setPresetID:](v5, "setPresetID:", [a3 objectForKey:@"presetID"]);
      }
    }

    [(MPSlide *)self setFrame:v5];
  }
}

@end