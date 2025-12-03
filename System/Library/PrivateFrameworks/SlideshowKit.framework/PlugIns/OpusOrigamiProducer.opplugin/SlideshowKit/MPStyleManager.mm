@interface MPStyleManager
+ (id)sharedManager;
+ (void)loadStyleManagerWithPaths:(id)paths;
+ (void)releaseSharedManager;
- (BOOL)authorOnAspectRatioChangeForStyleID:(id)d;
- (BOOL)canCancelAuthoringForStyleID:(id)d;
- (BOOL)canUseClusteringForStyleID:(id)d;
- (BOOL)easeKenBurnsForStyleID:(id)d;
- (BOOL)hasImagesForLayerID:(id)d forStyleID:(id)iD;
- (BOOL)isDynamicForStyleID:(id)d;
- (BOOL)needsFaceDetectionForStyleID:(id)d;
- (BOOL)needsReauthorOnAspectRatioChange:(id)change;
- (BOOL)needsStyleUpdateOnSlideChangeForStyleID:(id)d;
- (BOOL)needsTimingUpdateOnSlideChangeForStyleID:(id)d;
- (BOOL)needsToBeLiveForStyleID:(id)d;
- (BOOL)supportsRandomTransitionForStyleID:(id)d;
- (CGColor)backgroundCGColorForStyleID:(id)d;
- (CGSize)defaultSizeForZIndex:(int64_t)index ofStyle:(id)style;
- (MPStyleManager)initWithPaths:(id)paths;
- (double)allowUserDefinedDurationForStyleID:(id)d;
- (double)basePeriodForLayerIndex:(int64_t)index ofStyle:(id)style;
- (double)defaultAutoKenBurnsLikelihoodForEffect:(id)effect withPreset:(id)preset ofStyle:(id)style;
- (double)defaultAutoKenBurnsLikelihoodForZIndex:(int64_t)index ofStyle:(id)style;
- (double)defaultEffectDurationForLayer:(int64_t)layer ofStyle:(id)style;
- (double)defaultFilterLikelihoodForZIndex:(int64_t)index ofStyle:(id)style;
- (double)defaultTransitionDurationForLayer:(int64_t)layer ofStyle:(id)style withAspectRatio:(double)ratio;
- (double)delayFaceDetectionForStyleID:(id)d;
- (double)displayDurationFactorForEffectID:(id)d inStyleID:(id)iD;
- (double)displayDurationFactorForStyleID:(id)d;
- (double)minimumDurationForEffectID:(id)d forStyleID:(id)iD;
- (double)minimumEffectDurationForStyleID:(id)d;
- (double)navigationIncrementForStyleID:(id)d;
- (double)posterTimeForStyleID:(id)d;
- (double)shortestDurationForEffectID:(id)d forStyleID:(id)iD;
- (double)shortestEffectDurationForStyleID:(id)d;
- (id)_containerDescriptionForLayerAtIndex:(int64_t)index ofStyle:(id)style;
- (id)backgroundColorLayersForStyleID:(id)d;
- (id)defaultColorSchemeForStyleID:(id)d;
- (id)defaultPositionForZIndex:(int64_t)index ofStyle:(id)style;
- (id)demoDocumentWithImages:(id)images properties:(id)properties count:(int64_t)count options:(id)options;
- (id)effectIDsForStyleID:(id)d;
- (id)effectPresetIDsForLayerIndex:(int64_t)index ofStyleID:(id)d;
- (id)effectPresetIDsForStyleID:(id)d;
- (id)effectPresetsForLayerIndex:(int64_t)index ofStyleID:(id)d;
- (id)framesForStyleID:(id)d;
- (id)interstitialEffectLayoutForStyleID:(id)d;
- (id)interstitialEffectLayoutsForStyleID:(id)d;
- (id)layerIDForLayerIndex:(int64_t)index ofStyle:(id)style;
- (id)localizedNameForStyleID:(id)d;
- (id)localizedNameForStyleID:(id)d withLanguage:(id)language;
- (id)previewPathForStyleID:(id)d;
- (id)resourcePathForStyleID:(id)d;
- (id)songPathsForStyleID:(id)d;
- (id)thumbnailPathForStyleID:(id)d;
- (id)thumbnailPathForStyleID:(id)d scaleFactor:(double)factor;
- (id)titleEffectLayoutForStyleID:(id)d;
- (id)titleEffectLayoutsForStyleID:(id)d;
- (id)transitionsForStyleID:(id)d;
- (id)versionOfStyleID:(id)d;
- (int64_t)antialiasLevelForStyleID:(id)d;
- (int64_t)defaultAutoKenBurnsLevelForEffect:(id)effect withPreset:(id)preset ofStyle:(id)style;
- (int64_t)defaultAutoKenBurnsLevelForZIndex:(int64_t)index ofStyle:(id)style;
- (int64_t)dynamicBatchSizeForStyleID:(id)d;
- (int64_t)indexOfMainLayerForStyleID:(id)d;
- (int64_t)indexOfTitleEffectLayerForStyleID:(id)d;
- (int64_t)kenBurnsOffsetTypeForStyleID:(id)d;
- (int64_t)layerIndexForLayerID:(id)d ofStyle:(id)style;
- (int64_t)numberOfSlidesToPreloadForStyleID:(id)d;
- (unint64_t)mediaPresentationOrderForStyleID:(id)d;
- (unint64_t)regionOfInterestPickModeForStyleID:(id)d;
- (unint64_t)reorderModeForStyleID:(id)d;
- (unint64_t)subtitleOrderForStyleID:(id)d;
- (void)dealloc;
- (void)reloadBundles;
@end

@implementation MPStyleManager

+ (id)sharedManager
{
  result = qword_1EF3A0;
  if (!qword_1EF3A0)
  {
    objc_sync_enter(self);
    if (!qword_1EF3A0)
    {
      qword_1EF3A0 = [[MPStyleManager alloc] initWithPaths:0];
    }

    objc_sync_exit(self);
    return qword_1EF3A0;
  }

  return result;
}

+ (void)releaseSharedManager
{
  if (qword_1EF3A0)
  {
    objc_sync_enter(self);

    qword_1EF3A0 = 0;

    objc_sync_exit(self);
  }
}

- (void)dealloc
{
  self->mStyles = 0;

  self->mPaths = 0;
  self->mCurrentLocale = 0;
  v3.receiver = self;
  v3.super_class = MPStyleManager;
  [(MPStyleManager *)&v3 dealloc];
}

- (id)versionOfStyleID:(id)d
{
  v3 = [(NSMutableDictionary *)self->mStyles objectForKey:d];

  return [v3 objectForKey:@"version"];
}

- (BOOL)needsFaceDetectionForStyleID:(id)d
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mStyles objectForKey:{d), "objectForKey:", @"needsFaceDetection"}];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

- (double)delayFaceDetectionForStyleID:(id)d
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mStyles objectForKey:{d), "objectForKey:", @"delayFaceDetection"}];
  if (!v3)
  {
    return 0.0;
  }

  [v3 doubleValue];
  return result;
}

- (BOOL)needsToBeLiveForStyleID:(id)d
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mStyles objectForKey:{d), "objectForKey:", @"needsToBeLive"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

- (BOOL)isDynamicForStyleID:(id)d
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mStyles objectForKey:{d), "objectForKey:", @"isDynamic"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

- (int64_t)dynamicBatchSizeForStyleID:(id)d
{
  result = [-[NSMutableDictionary objectForKey:](self->mStyles objectForKey:{d), "objectForKey:", @"dynamicBatchSize"}];
  if (result)
  {

    return [result integerValue];
  }

  return result;
}

- (id)localizedNameForStyleID:(id)d
{
  v5 = +[NSLocale preferredLanguages];
  if (v5 && (v6 = v5, [(NSArray *)v5 count]))
  {
    v7 = [(NSArray *)v6 objectAtIndex:0];
  }

  else
  {
    v7 = &stru_1AC858;
  }

  if (([(__CFString *)v7 isEqualToString:self->mCurrentLocale]& 1) == 0)
  {
    [(MPStyleManager *)self reloadBundles];
  }

  result = [-[NSMutableDictionary objectForKey:](self->mStyles objectForKey:{d), "objectForKey:", @"localizedStyleName"}];
  if (!result)
  {
    return d;
  }

  return result;
}

- (id)localizedNameForStyleID:(id)d withLanguage:(id)language
{
  v5 = +[NSDictionary dictionaryWithContentsOfFile:](NSDictionary, "dictionaryWithContentsOfFile:", [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mStyles "objectForKey:{"objectForKey:", @"resources", "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.lproj/LocalizedDescription.plist", language)}")]);
  if (v5)
  {
    v5 = [(NSDictionary *)v5 objectForKey:@"_LOCALIZABLE_"];
  }

  result = [(NSDictionary *)v5 objectForKey:@"localizedStyleName"];
  if (!result)
  {
    return d;
  }

  return result;
}

- (id)thumbnailPathForStyleID:(id)d
{
  v3 = [(NSMutableDictionary *)self->mStyles objectForKey:d];

  return [v3 objectForKey:@"thumbnail"];
}

- (id)thumbnailPathForStyleID:(id)d scaleFactor:(double)factor
{
  v5 = [-[NSMutableDictionary objectForKey:](self->mStyles objectForKey:{d), "objectForKey:", @"thumbnail"}];
  v6 = v5;
  if (factor > 1.0)
  {
    v7 = [objc_msgSend(objc_msgSend(v5 "stringByDeletingPathExtension")];
    if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
    {
      return v7;
    }
  }

  return v6;
}

- (id)previewPathForStyleID:(id)d
{
  v3 = [(NSMutableDictionary *)self->mStyles objectForKey:d];

  return [v3 objectForKey:@"preview"];
}

- (id)resourcePathForStyleID:(id)d
{
  v3 = [(NSMutableDictionary *)self->mStyles objectForKey:d];

  return [v3 objectForKey:@"resources"];
}

- (id)framesForStyleID:(id)d
{
  v5 = +[NSMutableSet set];
  v6 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{d), "objectForKey:", @"layout"}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [v5 addObjectsFromArray:{objc_msgSend(objc_msgSend(v6, "objectForKey:", *(*(&v12 + 1) + 8 * v10)), "objectForKey:", @"slideFramesCriteria"}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)effectPresetIDsForStyleID:(id)d
{
  v5 = +[NSMutableSet set];
  v6 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{d), "objectForKey:", @"layout"}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [v5 addObjectsFromArray:{objc_msgSend(objc_msgSend(v6, "objectForKey:", *(*(&v12 + 1) + 8 * v10)), "objectForKey:", @"effectPresets"}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)effectPresetsForLayerIndex:(int64_t)index ofStyleID:(id)d
{
  v5 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{d), "objectForKey:", @"layout"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v15;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = [v5 objectForKey:*(*(&v14 + 1) + 8 * i)];
      if ([objc_msgSend(v11 objectForKey:{@"zIndex", "integerValue"}] == index)
      {
        v12 = [v11 objectForKey:@"effectPresets"];
        if ([v12 count])
        {
          v8 = v12;
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v7);
  return v8;
}

- (CGColor)backgroundCGColorForStyleID:(id)d
{
  v3 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{d), "objectForKey:", @"backgroundColor"}];
  if (!v3 || (v4 = [MPUtilities CGColorFromString:v3]) == 0)
  {
    v5 = [MPUtilities newColorSpaceForDevice:0];
    v4 = CGColorCreate(v5, &v7);
    CGColorSpaceRelease(v5);
  }

  return v4;
}

- (id)effectIDsForStyleID:(id)d
{
  v5 = +[NSMutableSet set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{d), "objectForKey:", @"layout"}];
  v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v16)
  {
    v15 = *v23;
    do
    {
      v6 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [objc_msgSend(obj objectForKey:{*(*(&v22 + 1) + 8 * v6)), "objectForKey:", @"effectPresets"}];
        if ([v7 count])
        {
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v19;
            do
            {
              v11 = 0;
              do
              {
                if (*v19 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = [*(*(&v18 + 1) + 8 * v11) valueForKey:@"presetID"];
                if (v12)
                {
                  v13 = v12;
                  if ([v12 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v13 = [v13 substringToIndex:{objc_msgSend(v13, "rangeOfString:", @"/"}];
                  }

                  [v5 addObject:v13];
                }

                v11 = v11 + 1;
              }

              while (v9 != v11);
              v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v9);
          }
        }

        v6 = v6 + 1;
      }

      while (v6 != v16);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v16);
  }

  return v5;
}

- (id)transitionsForStyleID:(id)d
{
  v5 = +[NSMutableSet set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{d), "objectForKey:", @"layout"}];
  v16 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v16)
  {
    v15 = *v24;
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = v6;
        v7 = [objc_msgSend(obj objectForKey:{*(*(&v23 + 1) + 8 * v6), v15), "objectForKey:", @"transitionPresets"}];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v20;
          do
          {
            v11 = 0;
            do
            {
              if (*v20 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v19 + 1) + 8 * v11);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v12 = [v12 objectForKey:@"presetID"];
              }

              v13 = [MPUtilities idOfCombinedID:v12];
              if (v13)
              {
                [v5 addObject:v13];
              }

              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v9);
        }

        v6 = v18 + 1;
      }

      while ((v18 + 1) != v16);
      v16 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v16);
  }

  return v5;
}

- (id)songPathsForStyleID:(id)d
{
  v3 = [objc_msgSend(-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{d), "objectForKey:", @"songs", "copy"}];

  return v3;
}

- (int64_t)indexOfMainLayerForStyleID:(id)d
{
  v3 = [(MPStyleManager *)self descriptionForStyleID:d];
  v4 = [v3 objectForKey:@"mainLayer"];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"background";
  }

  v6 = [objc_msgSend(objc_msgSend(v3 objectForKey:{@"layout", "objectForKey:", v5), "objectForKey:", @"zIndex"}];

  return [v6 integerValue];
}

- (int64_t)indexOfTitleEffectLayerForStyleID:(id)d
{
  v4 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"background";
  }

  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];

  return [v6 integerValue];
}

- (id)titleEffectLayoutsForStyleID:(id)d
{
  v3 = [(MPStyleManager *)self descriptionForStyleID:d];

  return [v3 objectForKey:@"titleEffects"];
}

- (id)interstitialEffectLayoutsForStyleID:(id)d
{
  v3 = [(MPStyleManager *)self descriptionForStyleID:d];

  return [v3 objectForKey:@"interstitialEffects"];
}

- (id)interstitialEffectLayoutForStyleID:(id)d
{
  v3 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{d), "objectForKey:", @"interstitialEffects"}];
  v4 = [v3 count];
  if (v4 < 1)
  {
    return 0;
  }

  v5 = rand() % v4;

  return [v3 objectAtIndex:v5];
}

- (id)titleEffectLayoutForStyleID:(id)d
{
  v3 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{d), "objectForKey:", @"titleEffects"}];
  v4 = [v3 count];
  if (v4 < 1)
  {
    return 0;
  }

  v5 = rand() % v4;

  return [v3 objectAtIndex:v5];
}

- (double)shortestEffectDurationForStyleID:(id)d
{
  v5 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v7 = v6;
  if (v6 < 0.0)
  {
    v8 = [(MPStyleManager *)self effectPresetIDsForLayerIndex:v5 ofStyleID:d];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      v7 = -1.0;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
          if (v13 < v7 || v7 == -1.0)
          {
            v7 = v13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    else
    {
      v7 = -1.0;
    }
  }

  [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (v7 < v15)
  {
    v7 = v15;
  }

  [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  return fmax(v7 * v16, 0.0);
}

- (double)shortestDurationForEffectID:(id)d forStyleID:(id)iD
{
  v6 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v8 = v7;
  if (v7 < 0.0)
  {
    [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    v8 = v9;
  }

  [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (v8 < v10)
  {
    v8 = v10;
  }

  [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  return fmax(v8 * v11, 0.0);
}

- (double)minimumDurationForEffectID:(id)d forStyleID:(id)iD
{
  [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if (v6 == 0.0)
  {
    [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  }

  v7 = v6;
  [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (v7 >= v8)
  {
    v8 = v7;
  }

  return fmax(v8, 0.0);
}

- (double)minimumEffectDurationForStyleID:(id)d
{
  v3 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = -1.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [objc_msgSend(v3 objectForKey:{*(*(&v13 + 1) + 8 * i)), "objectForKey:", @"minimumEffectDuration"}];
        if (v9)
        {
          [v9 doubleValue];
          if (v10 < v7 || v7 == -1.0)
          {
            v7 = v10;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = -1.0;
  }

  return fmax(v7, 0.0);
}

- (BOOL)supportsRandomTransitionForStyleID:(id)d
{
  v3 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

- (id)defaultColorSchemeForStyleID:(id)d
{
  v3 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];

  return [v3 objectForKey:@"defaultColorScheme"];
}

- (BOOL)authorOnAspectRatioChangeForStyleID:(id)d
{
  v3 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];

  return [v3 BOOLValue];
}

- (unint64_t)subtitleOrderForStyleID:(id)d
{
  result = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (result)
  {

    return [result integerValue];
  }

  return result;
}

- (int64_t)numberOfSlidesToPreloadForStyleID:(id)d
{
  v3 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (!v3)
  {
    return 15;
  }

  return [v3 integerValue];
}

- (BOOL)needsTimingUpdateOnSlideChangeForStyleID:(id)d
{
  v3 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

- (BOOL)needsStyleUpdateOnSlideChangeForStyleID:(id)d
{
  v3 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

- (BOOL)needsReauthorOnAspectRatioChange:(id)change
{
  v3 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

- (double)posterTimeForStyleID:(id)d
{
  v3 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{d), "objectForKey:", @"posterTime"}];
  if (!v3)
  {
    return -1.0;
  }

  [v3 doubleValue];
  return result;
}

- (BOOL)canUseClusteringForStyleID:(id)d
{
  v3 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (void)loadStyleManagerWithPaths:(id)paths
{
  if (qword_1EF3A0)
  {

    qword_1EF3A0 = 0;
  }

  qword_1EF3A0 = [[MPStyleManager alloc] initWithPaths:paths];
}

- (unint64_t)mediaPresentationOrderForStyleID:(id)d
{
  v3 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{d), "objectForKey:", @"mediaPresentationOrder"}];
  if (!v3)
  {
    return 2;
  }

  return [v3 integerValue];
}

- (id)demoDocumentWithImages:(id)images properties:(id)properties count:(int64_t)count options:(id)options
{
  v11 = [options objectForKey:kMPAuthoringStyleID];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"Classic";
  }

  v13 = [(MPStyleManager *)self descriptionForStyleID:v12];
  v14 = [v13 objectForKey:@"demoSlideCount"];
  if (v14)
  {
    countCopy = [v14 integerValue];
  }

  else
  {
    countCopy = &dword_0 + 2;
  }

  if (count != -1)
  {
    countCopy = count;
    if ([images count] <= count)
    {
      countCopy = [images count];
    }
  }

  if ([images count] >= countCopy)
  {
    images = [images objectsAtIndexes:{+[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, countCopy)}];
  }

  v16 = objc_alloc_init(MPDocument);
  [(MPDocument *)v16 _setMediaProperties:properties];
  v17 = [NSMutableDictionary dictionaryWithDictionary:[(MPDocument *)v16 documentAttributeForKey:kMPDocumentAuthoringOptions]];
  v18 = [NSNumber numberWithBool:0];
  [(NSMutableDictionary *)v17 setObject:v18 forKey:kMPAuthoringUseTitleEffect];
  v19 = [NSNumber numberWithBool:0];
  [(NSMutableDictionary *)v17 setObject:v19 forKey:kMPAuthoringUseDefaultAudio];
  v20 = [NSNumber numberWithFloat:0.0];
  [(NSMutableDictionary *)v17 setObject:v20 forKey:kMPAuthoringMovieVolume];
  v21 = [NSNumber numberWithBool:0];
  [(NSMutableDictionary *)v17 setObject:v21 forKey:kMPAuthoringSaveVersionInformation];
  v22 = [NSNumber numberWithBool:0];
  [(NSMutableDictionary *)v17 setObject:v22 forKey:kMPAuthoringRequestGeneratedImages];
  v23 = [v13 objectForKey:@"demoOptions"];
  if (v23)
  {
    [(NSMutableDictionary *)v17 addEntriesFromDictionary:v23];
  }

  if (options)
  {
    [(NSMutableDictionary *)v17 addEntriesFromDictionary:options];
  }

  [(MPDocument *)v16 setDocumentAttribute:v17 forKey:kMPDocumentAuthoringOptions];
  [(MPDocument *)v16 addVideoPaths:images];
  [(MPDocument *)v16 applyStyle:v12];

  return v16;
}

- (int64_t)antialiasLevelForStyleID:(id)d
{
  result = [-[NSMutableDictionary objectForKey:](self->mStyles objectForKey:{d), "objectForKey:", @"antialiasLevel"}];
  if (result)
  {

    return [result integerValue];
  }

  return result;
}

- (double)displayDurationFactorForStyleID:(id)d
{
  v5 = [d hasSuffix:@"Mobile"];
  result = 1.0;
  if (v5)
  {
    v7 = -[MPStyleManager effectPresetIDsForLayerIndex:ofStyleID:](self, "effectPresetIDsForLayerIndex:ofStyleID:", [+[MPStyleManager sharedManager](MPStyleManager sharedManager], d);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
          if (v13 > v10)
          {
            v10 = v13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
      v14 = v10;
    }

    else
    {
      v14 = 0.0;
    }

    return 1.0 / v14;
  }

  return result;
}

- (double)displayDurationFactorForEffectID:(id)d inStyleID:(id)iD
{
  v5 = [d hasPrefix:{@"HangingPictures", iD}];
  result = 1.0;
  if (v5)
  {
    return 1.0 / [+[MPEffectManager sharedManager](MPEffectManager sharedManager];
  }

  return result;
}

- (int64_t)kenBurnsOffsetTypeForStyleID:(id)d
{
  v3 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{d), "valueForKey:", @"kenBurnsOffsetType"}];
  if (!v3)
  {
    return -1;
  }

  return [v3 integerValue];
}

- (BOOL)easeKenBurnsForStyleID:(id)d
{
  v3 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{d), "valueForKey:", @"easeKenBurns"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

- (CGSize)defaultSizeForZIndex:(int64_t)index ofStyle:(id)style
{
  v5 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{style), "objectForKey:", @"layout"}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  height = 2.0;
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [v5 objectForKey:*(*(&v16 + 1) + 8 * v10)];
        if ([objc_msgSend(v11 objectForKey:{@"zIndex", "integerValue"}] == index)
        {
          v13 = [v11 objectForKey:@"size"];
          width = 2.0;
          if (v13)
          {
            v14 = CGSizeFromString(v13);
            width = v14.width;
            height = v14.height;
          }

          goto LABEL_12;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  width = 2.0;
LABEL_12:
  v15 = height;
  result.height = v15;
  result.width = width;
  return result;
}

- (unint64_t)reorderModeForStyleID:(id)d
{
  result = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (result)
  {

    return [result integerValue];
  }

  return result;
}

- (id)defaultPositionForZIndex:(int64_t)index ofStyle:(id)style
{
  v5 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{style), "objectForKey:", @"layout"}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v5 objectForKey:*(*(&v11 + 1) + 8 * v9)];
        if ([objc_msgSend(v10 objectForKey:{@"zIndex", "integerValue"}] == index)
        {
          return [v10 objectForKey:@"position"];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (double)defaultFilterLikelihoodForZIndex:(int64_t)index ofStyle:(id)style
{
  v5 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{style), "objectForKey:", @"layout"}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  v7 = -1.0;
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [v5 objectForKey:*(*(&v15 + 1) + 8 * i)];
        if ([objc_msgSend(v11 objectForKey:{@"zIndex", "integerValue"}] == index)
        {
          v12 = [v11 objectForKey:@"filterLikelihood"];
          if (v12)
          {
            [v12 floatValue];
            return v13;
          }

          return v7;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v7;
}

- (double)defaultAutoKenBurnsLikelihoodForZIndex:(int64_t)index ofStyle:(id)style
{
  v5 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{style), "objectForKey:", @"layout"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  result = -1.0;
  if (v6)
  {
    v8 = v6;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [v5 objectForKey:*(*(&v14 + 1) + 8 * i)];
        if ([objc_msgSend(v11 objectForKey:{@"zIndex", "integerValue"}] == index)
        {
          v12 = [v11 objectForKey:@"autoKenBurnsLikelihood"];
          result = -1.0;
          if (v12)
          {
            [v12 floatValue];
            result = v13;
          }

          goto LABEL_12;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    result = -1.0;
  }

LABEL_12:
  if (result == -1.0)
  {
    return 1.0;
  }

  return result;
}

- (int64_t)defaultAutoKenBurnsLevelForZIndex:(int64_t)index ofStyle:(id)style
{
  v5 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{style), "objectForKey:", @"layout"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [v5 objectForKey:*(*(&v13 + 1) + 8 * v9)];
      if ([objc_msgSend(v10 objectForKey:{@"zIndex", "integerValue"}] == index)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        return 1;
      }
    }

    v11 = [v10 objectForKey:@"autoKenBurnsLevel"];
    if (v11)
    {
      result = [v11 integerValue];
      if (result != -1)
      {
        return result;
      }
    }
  }

  return 1;
}

- (double)defaultAutoKenBurnsLikelihoodForEffect:(id)effect withPreset:(id)preset ofStyle:(id)style
{
  v7 = [(MPStyleManager *)self descriptionForStyleID:style];
  v8 = [v7 objectForKey:@"layout"];
  v9 = [v7 objectForKey:@"mainLayer"];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"background";
  }

  v11 = [objc_msgSend(v8 objectForKey:{v10), "objectForKey:", @"effectPresets"}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v12)
  {
    return -1.0;
  }

  v13 = v12;
  v14 = *v23;
  v15 = -1.0;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v23 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v22 + 1) + 8 * i);
      v18 = [v17 valueForKey:@"presetID"];
      if ([v18 hasPrefix:effect])
      {
        if ([v18 hasSuffix:preset])
        {
          v19 = [v17 objectForKey:@"autoKenBurnsLikelihood"];
          if (v19)
          {
            [v19 floatValue];
            v15 = v20;
          }
        }
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v13);
  return v15;
}

- (int64_t)defaultAutoKenBurnsLevelForEffect:(id)effect withPreset:(id)preset ofStyle:(id)style
{
  v7 = [(MPStyleManager *)self descriptionForStyleID:style];
  v8 = [v7 objectForKey:@"layout"];
  v9 = [v7 objectForKey:@"mainLayer"];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"background";
  }

  v11 = [objc_msgSend(v8 objectForKey:{v10), "objectForKey:", @"effectPresets"}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v12)
  {
    return 1;
  }

  v13 = v12;
  v14 = *v22;
  integerValue = &dword_0 + 1;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v22 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v21 + 1) + 8 * i);
      v18 = [v17 valueForKey:@"presetID"];
      if ([v18 hasPrefix:effect])
      {
        if ([v18 hasSuffix:preset])
        {
          v19 = [v17 objectForKey:@"autoKenBurnsLevel"];
          if (v19)
          {
            integerValue = [v19 integerValue];
          }
        }
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v13);
  return integerValue;
}

- (id)effectPresetIDsForLayerIndex:(int64_t)index ofStyleID:(id)d
{
  v6 = +[NSMutableSet set];
  v7 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{d), "objectForKey:", @"layout"}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v7 objectForKey:*(*(&v25 + 1) + 8 * v11)];
        if ([objc_msgSend(v12 objectForKey:{@"zIndex", "integerValue"}] == index)
        {
          v13 = [v12 objectForKey:@"effectPresets"];
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v22;
            do
            {
              v17 = 0;
              do
              {
                if (*v22 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [*(*(&v21 + 1) + 8 * v17) valueForKey:@"presetID"];
                if (v18)
                {
                  [v6 addObject:v18];
                }

                v17 = v17 + 1;
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v15);
          }
        }

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  return v6;
}

- (double)defaultEffectDurationForLayer:(int64_t)layer ofStyle:(id)style
{
  v4 = [(MPStyleManager *)self _containerDescriptionForLayerAtIndex:layer ofStyle:style];
  if (!v4)
  {
    return -1.0;
  }

  v5 = v4;
  if (![v4 objectForKey:@"recommendedEffectDuration"])
  {
    return -1.0;
  }

  v6 = [v5 objectForKey:@"recommendedEffectDuration"];

  [v6 doubleValue];
  return result;
}

- (double)defaultTransitionDurationForLayer:(int64_t)layer ofStyle:(id)style withAspectRatio:(double)ratio
{
  v6 = [(MPStyleManager *)self _containerDescriptionForLayerAtIndex:layer ofStyle:style];
  if (!v6)
  {
    return -1.0;
  }

  v7 = v6;
  v8 = -1.0;
  if (ratio < 1.0)
  {
    v9 = [v6 objectForKey:@"recommendedPortraitTransitionDuration"];
    if (v9)
    {
      [v9 doubleValue];
      v8 = v10;
      if (v10 >= 0.0)
      {
        return v8;
      }
    }
  }

  v11 = [v7 objectForKey:@"recommendedTransitionDuration"];
  if (!v11)
  {
    return v8;
  }

  [v11 doubleValue];
  return result;
}

- (double)basePeriodForLayerIndex:(int64_t)index ofStyle:(id)style
{
  v4 = [-[MPStyleManager _containerDescriptionForLayerAtIndex:ofStyle:](self _containerDescriptionForLayerAtIndex:index ofStyle:{style), "objectForKey:", @"basePeriod"}];
  if (!v4)
  {
    return 1.0;
  }

  [v4 doubleValue];
  return result;
}

- (int64_t)layerIndexForLayerID:(id)d ofStyle:(id)style
{
  v4 = [objc_msgSend(objc_msgSend(objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];

  return [v4 integerValue];
}

- (id)layerIDForLayerIndex:(int64_t)index ofStyle:(id)style
{
  v5 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{style), "objectForKey:", @"layout"}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
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
    if ([objc_msgSend(objc_msgSend(v5 objectForKey:{v10), "objectForKey:", @"zIndex", "integerValue"}] == index)
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

- (id)backgroundColorLayersForStyleID:(id)d
{
  v3 = [(MPStyleManager *)self descriptionForStyleID:d];
  v4 = [v3 objectForKey:@"backgroundColorLayer"];
  if (v4)
  {

    return [NSArray arrayWithObject:v4];
  }

  else
  {

    return [v3 objectForKey:@"backgroundColorLayers"];
  }
}

- (unint64_t)regionOfInterestPickModeForStyleID:(id)d
{
  v3 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{d), "objectForKey:", @"roiPickMode"}];

  return [v3 integerValue];
}

- (BOOL)canCancelAuthoringForStyleID:(id)d
{
  v3 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{d), "objectForKey:", @"canCancelAuthoring"}];

  return [v3 BOOLValue];
}

- (BOOL)hasImagesForLayerID:(id)d forStyleID:(id)iD
{
  v4 = [objc_msgSend(objc_msgSend(objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (!v4 || (v5 = [v4 BOOLValue]) != 0)
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (double)navigationIncrementForStyleID:(id)d
{
  v3 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (!v3)
  {
    return -1.0;
  }

  [v3 doubleValue];
  return result;
}

- (double)allowUserDefinedDurationForStyleID:(id)d
{
  v4 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  result = 0.0;
  if ((v4 & 1) == 0)
  {
    sharedManager = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager sharedManager];
    if (sharedManager)
    {
      return [sharedManager BOOLValue];
    }

    else
    {
      return 1.0;
    }
  }

  return result;
}

- (MPStyleManager)initWithPaths:(id)paths
{
  v9.receiver = self;
  v9.super_class = MPStyleManager;
  v4 = [(MPStyleManager *)&v9 init];
  if (v4)
  {
    v5 = +[NSMutableArray array];
    v6 = v5;
    if (paths)
    {
      [v5 addObjectsFromArray:paths];
    }

    else
    {
      [v5 addObject:{-[NSString stringByAppendingPathComponent:](-[NSBundle resourcePath](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "resourcePath"), "stringByAppendingPathComponent:", @"Content"}];
    }

    v4->mPaths = v6;
    [(MPStyleManager *)v4 reloadBundles];
    Current = CFAbsoluteTimeGetCurrent();
    srand(Current);
    if (![(NSMutableDictionary *)v4->mStyles count])
    {
      NSLog(@"iLife Slideshow: No Styles Found");
    }
  }

  return v4;
}

- (void)reloadBundles
{
  selfCopy = self;
  mCurrentLocale = self->mCurrentLocale;
  if (mCurrentLocale)
  {

    selfCopy->mCurrentLocale = 0;
  }

  v4 = +[NSLocale preferredLanguages];
  if (v4 && (v5 = v4, [(NSArray *)v4 count]))
  {
    v6 = [-[NSArray objectAtIndex:](v5 objectAtIndex:{0), "copy"}];
  }

  else
  {
    v6 = &stru_1AC858;
  }

  selfCopy->mCurrentLocale = &v6->isa;
  mStyles = selfCopy->mStyles;
  if (mStyles)
  {

    selfCopy->mStyles = 0;
  }

  selfCopy->mStyles = objc_alloc_init(NSMutableDictionary);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = selfCopy->mPaths;
  v42 = [(NSArray *)obj countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v42)
  {
    v8 = &kCTUnderlineColorAttributeName_ptr;
    v41 = *v65;
    v44 = selfCopy;
    do
    {
      v9 = 0;
      do
      {
        if (*v65 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v9;
        v55 = *(*(&v64 + 1) + 8 * v9);
        v10 = -[CFStringRef dataWithContentsOfFile:](v8[48], "dataWithContentsOfFile:", [v55 stringByAppendingPathComponent:@"StyleDescriptions.plist"]);
        if (v10)
        {
          v11 = [NSPropertyListSerialization propertyListWithData:v10 options:2 format:0 error:0];
          if (v11)
          {
            [(NSMutableDictionary *)selfCopy->mStyles addEntriesFromDictionary:v11];
          }
        }

        v12 = -[NSFileManager contentsOfDirectoryAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "contentsOfDirectoryAtPath:error:", [v55 stringByAppendingPathComponent:@"Styles/"], 0);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v48 = v12;
        v13 = [(NSArray *)v12 countByEnumeratingWithState:&v60 objects:v69 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v61;
          v45 = *v61;
          do
          {
            v16 = 0;
            v46 = v14;
            do
            {
              if (*v61 != v15)
              {
                objc_enumerationMutation(v48);
              }

              v17 = [v55 stringByAppendingFormat:@"/Styles/%@", *(*(&v60 + 1) + 8 * v16)];
              if ([objc_msgSend(v17 "pathExtension")])
              {
                v18 = [[NSBundle alloc] initWithPath:v17];
                if (v18)
                {
                  v49 = v16;
                  v19 = v18;
                  v47 = [objc_msgSend(v17 "lastPathComponent")];
                  v20 = [v19 pathForResource:@"StyleDescription" ofType:@"plist"];
                  v50 = v19;
                  v21 = [v19 pathForResource:@"LocalizedDescription" ofType:@"plist"];
                  if (v20)
                  {
                    v22 = v21;
                    v23 = [(CFStringRef *)v8[48] dataWithContentsOfFile:v20];
                    if (v23)
                    {
                      v24 = [NSPropertyListSerialization propertyListWithData:v23 options:2 format:0 error:0];
                      if (v24)
                      {
                        v25 = v24;
                        if (v22)
                        {
                          v26 = [NSDictionary dictionaryWithContentsOfFile:v22];
                          if (v26)
                          {
                            [v25 addEntriesFromDictionary:{-[NSDictionary objectForKey:](v26, "objectForKey:", @"_LOCALIZABLE_"}];
                          }
                        }

                        [v25 setObject:objc_msgSend(objc_msgSend(v50 forKey:{"infoDictionary"), "objectForKey:", @"CFBundleVersion", @"version"}];
                        v27 = [v17 stringByAppendingPathComponent:@"Contents/Resources/"];
                        [v25 setObject:v27 forKey:@"resources"];
                        [v25 setObject:objc_msgSend(v27 forKey:{"stringByAppendingPathComponent:", @"Icon.tiff", @"thumbnail"}];
                        [v25 setObject:objc_msgSend(v27 forKey:{"stringByAppendingPathComponent:", @"Preview.mov", @"preview"}];
                        [v25 setObject:v17 forKey:@"bundlePath"];
                        v54 = +[NSMutableArray array];
                        v52 = +[NSMutableDictionary dictionary];
                        v28 = [v25 objectForKey:@"songs_embedded"];
                        if (!v28)
                        {
                          v28 = [v25 objectForKey:@"songs"];
                        }

                        v58 = 0u;
                        v59 = 0u;
                        v56 = 0u;
                        v57 = 0u;
                        v29 = [v28 countByEnumeratingWithState:&v56 objects:v68 count:16];
                        if (v29)
                        {
                          v30 = v29;
                          v53 = *v57;
                          v51 = v28;
                          do
                          {
                            for (i = 0; i != v30; i = i + 1)
                            {
                              if (*v57 != v53)
                              {
                                objc_enumerationMutation(v51);
                              }

                              v32 = [*(*(&v56 + 1) + 8 * i) objectForKey:@"path"];
                              v33 = [NSString stringWithFormat:@"%@/Audio/%@", v55, v32];
                              [v54 addObject:v33];
                              v34 = [+[MPSongManager sharedManager](MPSongManager "sharedManager")];
                              v35 = +[NSDictionary dictionaryWithContentsOfFile:](NSDictionary, "dictionaryWithContentsOfFile:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/Audio/%@", v55, [v34 objectForKey:@"beats"]));
                              if (v35)
                              {
                                v36 = v35;
                                [v52 setObject:-[NSDictionary objectForKey:](v35 forKey:{"objectForKey:", @"beats", v33}];
                                [+[MPSongManager sharedManager](MPSongManager "sharedManager")];
                              }

                              v37 = [v34 objectForKey:@"duration"];
                              if (v37)
                              {
                                v38 = v37;
                                v39 = [NSNumber numberWithDouble:0.0];
                                [+[MPAssetManager sharedManager](MPAssetManager "sharedManager")];
                              }
                            }

                            v30 = [v51 countByEnumeratingWithState:&v56 objects:v68 count:16];
                          }

                          while (v30);
                        }

                        [v25 setObject:v54 forKey:@"songs"];
                        [v25 setObject:v52 forKey:@"beats"];
                        selfCopy = v44;
                        [(NSMutableDictionary *)v44->mStyles setObject:v25 forKey:v47];
                        v8 = &kCTUnderlineColorAttributeName_ptr;
                      }
                    }
                  }

                  v15 = v45;
                  v14 = v46;
                  v16 = v49;
                }
              }

              v16 = v16 + 1;
            }

            while (v16 != v14);
            v14 = [(NSArray *)v48 countByEnumeratingWithState:&v60 objects:v69 count:16];
          }

          while (v14);
        }

        v9 = v43 + 1;
      }

      while ((v43 + 1) != v42);
      v42 = [(NSArray *)obj countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v42);
  }
}

- (id)_containerDescriptionForLayerAtIndex:(int64_t)index ofStyle:(id)style
{
  v5 = [-[MPStyleManager descriptionForStyleID:](self descriptionForStyleID:{style), "objectForKey:", @"layout"}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
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

    v10 = [v5 objectForKey:*(*(&v12 + 1) + 8 * v9)];
    if ([objc_msgSend(v10 objectForKey:{@"zIndex", "integerValue"}] == index)
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

@end