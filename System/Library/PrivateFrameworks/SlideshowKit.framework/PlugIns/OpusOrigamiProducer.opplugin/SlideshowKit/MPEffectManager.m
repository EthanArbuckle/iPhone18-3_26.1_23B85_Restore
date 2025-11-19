@interface MPEffectManager
+ (id)sharedManager;
+ (void)initialize;
+ (void)loadEffectManagerWithPaths:(id)a3;
+ (void)releaseSharedManager;
- (BOOL)allowTextCustomizationForEffectID:(id)a3 presetID:(id)a4 forTextAtIndex:(int64_t)a5;
- (BOOL)effectDoesAccumulate:(id)a3;
- (BOOL)effectNeedsPanoInformation:(id)a3;
- (BOOL)effectNeedsRandomSeedInformation:(id)a3;
- (BOOL)posterTimeIsStaticForEffectID:(id)a3 andPresetID:(id)a4;
- (BOOL)skipPanoramaScaleForEffectID:(id)a3;
- (BOOL)useUppercaseForEffectID:(id)a3 presetID:(id)a4 forTextAtIndex:(int64_t)a5;
- (MPEffectManager)initWithPaths:(id)a3;
- (double)defaultFullDurationForEffectID:(id)a3;
- (double)defaultMainDurationForEffectID:(id)a3;
- (double)defaultPhaseInDurationForEffectID:(id)a3;
- (double)defaultPhaseOutDurationForEffectID:(id)a3;
- (double)defaultPosterFrameTimeForEffect:(id)a3;
- (double)defaultPosterFrameTimeForEffectID:(id)a3 andPresetID:(id)a4;
- (double)durationPaddingForEffectID:(id)a3;
- (double)maxFontSizeInEffectID:(id)a3 presetID:(id)a4 atIndex:(int64_t)a5;
- (double)mediaAspectRatioForEffectID:(id)a3 usingAttributes:(id)a4 atIndex:(int64_t)a5 defaultAspectRatio:(double)a6;
- (double)mediaAspectRatioForEffectID:(id)a3 usingAttributes:(id)a4 atIndex:(int64_t)a5 defaultAspectRatio:(double)a6 imageAspectRatio:(double)a7;
- (double)mediaAspectRatioForEffectID:(id)a3 usingPresetID:(id)a4 atIndex:(int64_t)a5;
- (double)mediaAspectRatioForEffectID:(id)a3 usingPresetID:(id)a4 atIndex:(int64_t)a5 defaultAspectRatio:(double)a6;
- (double)mediaAspectRatioHintForEffectID:(id)a3 usingAttributes:(id)a4 atIndex:(int64_t)a5 defaultAspectRatio:(double)a6;
- (double)minimumEffectDurationForEffectID:(id)a3;
- (double)panoramaScaleOffsetForEffectID:(id)a3;
- (id)allCategoryIDs;
- (id)aspectRatioForEffectID:(id)a3;
- (id)attributesForEffectID:(id)a3 andPresetID:(id)a4;
- (id)categoryIDsForEffectID:(id)a3;
- (id)controlForAttribute:(id)a3 forEffectID:(id)a4;
- (id)defaultStringForTextInEffectID:(id)a3 presetID:(id)a4 atIndex:(int64_t)a5 needsNSConversion:(BOOL)a6;
- (id)effectIDsForCategoryID:(id)a3;
- (id)effectsWithNumOfImages:(unint64_t)a3;
- (id)imageInputInfoForEffectID:(id)a3;
- (id)localizedCategoryNameFromCategoryID:(id)a3;
- (id)localizedEffectNameForEffectID:(id)a3;
- (id)localizedFontsForEffectID:(id)a3;
- (id)localizedSettingsUITitleForTitleKey:(id)a3 inEffect:(id)a4;
- (id)localizedString:(id)a3 forEffectID:(id)a4;
- (id)mediaAspectRatioHintsForEffectID:(id)a3 usingPresetID:(id)a4 defaultAspectRatio:(double)a5;
- (id)mediaAspectRatiosForEffectID:(id)a3 usingPresetID:(id)a4;
- (id)mediaAspectRatiosForEffectID:(id)a3 usingPresetID:(id)a4 defaultAspectRatio:(double)a5;
- (id)orientationForEffectID:(id)a3;
- (id)presetIDsForEffectID:(id)a3;
- (id)settingsUIControlDescriptionsForEffect:(id)a3;
- (id)showTimeScriptForEffectID:(id)a3 atSlideIndex:(int64_t)a4;
- (id)sizeScriptForEffectID:(id)a3 atIndex:(int64_t)a4;
- (id)versionOfEffectID:(id)a3;
- (int64_t)numberOfSecondarySlidesForEffectID:(id)a3;
- (int64_t)numberOfSlidesForEffectID:(id)a3;
- (int64_t)panoTypeForSlideAtIndex:(int64_t)a3 inEffect:(id)a4 forPresetID:(id)a5;
- (unint64_t)maxNumOfImagesPerEffectInList:(id)a3;
- (unint64_t)minNumOfImagesPerEffectInList:(id)a3;
- (unint64_t)numOfImagesForEffectID:(id)a3;
- (unint64_t)numOfImagesForEffectPresetID:(id)a3;
- (void)_loadFontsFromPath:(id)a3 requiredFonts:(id)a4;
- (void)dealloc;
- (void)defaultDurationsForEffectID:(id)a3 phaseInDuration:(double *)a4 mainDuration:(double *)a5 phaseOutDuration:(double *)a6;
@end

@implementation MPEffectManager

+ (void)initialize
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___MPEffectManager;
  objc_msgSendSuper2(&v2, "initialize");
}

+ (id)sharedManager
{
  result = qword_1EF2D8;
  if (!qword_1EF2D8)
  {
    objc_sync_enter(a1);
    if (!qword_1EF2D8)
    {
      qword_1EF2D8 = [[MPEffectManager alloc] initWithPaths:0];
    }

    objc_sync_exit(a1);
    return qword_1EF2D8;
  }

  return result;
}

+ (void)releaseSharedManager
{
  if (qword_1EF2D8)
  {
    objc_sync_enter(a1);

    qword_1EF2D8 = 0;

    objc_sync_exit(a1);
  }
}

- (void)dealloc
{
  v3 = self->mLock;
  [(NSLock *)v3 lock];

  self->mEffects = 0;
  self->mCategories = 0;

  self->mCachedAspectRatios = 0;
  self->mCachedBreakInfo = 0;

  self->mLock = 0;
  [(NSLock *)v3 unlock];

  error = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mRegisteredFonts = self->mRegisteredFonts;
  v5 = [(NSMutableArray *)mRegisteredFonts countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(mRegisteredFonts);
        }

        if (!CTFontManagerUnregisterFontsForURL(*(*(&v11 + 1) + 8 * i), kCTFontManagerScopeProcess, &error))
        {
          v9 = CFErrorCopyDescription(error);
          NSLog(@"CTFontManagerUnregisterFontsForURL failed, error '%@'\n", v9);
          CFRelease(v9);
        }
      }

      v6 = [(NSMutableArray *)mRegisteredFonts countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  self->mRegisteredFonts = 0;
  v10.receiver = self;
  v10.super_class = MPEffectManager;
  [(MPEffectManager *)&v10 dealloc];
}

- (id)versionOfEffectID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mEffects objectForKey:a3];

  return [v3 objectForKey:@"version"];
}

- (unint64_t)numOfImagesForEffectID:(id)a3
{
  v5 = [-[NSMutableDictionary objectForKey:](self->mEffects "objectForKey:{"objectForKey:", @"hasMultiImageInput"}")];
  if (v5 && ([v5 BOOLValue] & 1) != 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"numberOfImages"}];
  v8 = [(NSMutableDictionary *)self->mEffects objectForKey:a3];
  if (v7)
  {
    result = [objc_msgSend(v8 objectForKey:{@"numberOfImages", "intValue"}];
    if (result)
    {
      return result;
    }
  }

  else if ([v8 objectForKey:@"imageInputInfo"])
  {
    result = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"imageInputInfo", "count"}];
    if (result)
    {
      return result;
    }
  }

  if ([a3 rangeOfString:@"/"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v9 = [a3 substringToIndex:{objc_msgSend(a3, "rangeOfString:", @"/"}];
  v10 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{v9), "objectForKey:", @"imageInputInfo"}];
  v11 = [(NSMutableDictionary *)self->mEffects objectForKey:v9];
  if (v10)
  {
    v12 = [v11 objectForKey:@"imageInputInfo"];

    return [v12 count];
  }

  else
  {
    result = [v11 objectForKey:@"numberOfImages"];
    if (result)
    {
      return [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{v9), "objectForKey:", @"numberOfImages", "intValue"}];
    }
  }

  return result;
}

- (id)categoryIDsForEffectID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mEffects objectForKey:a3];

  return [v3 objectForKey:@"categories"];
}

- (id)effectIDsForCategoryID:(id)a3
{
  v5 = +[NSMutableSet set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mEffects = self->mEffects;
  v7 = [(NSMutableDictionary *)mEffects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(mEffects);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (([-[MPEffectManager categoryIDsForEffectID:](self categoryIDsForEffectID:{v11), "containsObject:", a3}] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"all"))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableDictionary *)mEffects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)localizedEffectNameForEffectID:(id)a3
{
  result = [-[NSMutableDictionary objectForKey:](self->mEffects "objectForKey:{"objectForKey:", @"localizedEffectName"}")];
  if (!result)
  {
    return a3;
  }

  return result;
}

- (id)localizedCategoryNameFromCategoryID:(id)a3
{
  v5 = [(NSMutableDictionary *)self->mCategories objectForKey:?];
  if (!v5)
  {
    v7 = [(MPEffectManager *)self effectIDsForCategoryID:a3];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!v8)
    {
      return a3;
    }

    v9 = v8;
    v10 = *v13;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v13 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v5 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{*(*(&v12 + 1) + 8 * v11)), "objectForKey:", @"localizedCategoryName"}];
      if (v5)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v9)
        {
          goto LABEL_6;
        }

        return a3;
      }
    }
  }

  return v5;
}

- (id)localizedString:(id)a3 forEffectID:(id)a4
{
  result = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a4), "objectForKey:", @"Localized Strings", "objectForKey:", a3}];
  if (!result)
  {
    return a3;
  }

  return result;
}

- (id)localizedSettingsUITitleForTitleKey:(id)a3 inEffect:(id)a4
{
  result = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a4), "objectForKey:", @"localizedSettingsUI", "objectForKey:", a3}];
  if (!result)
  {
    return a3;
  }

  return result;
}

- (id)controlForAttribute:(id)a3 forEffectID:(id)a4
{
  v5 = [(MPEffectManager *)self settingsUIControlDescriptionsForEffect:a4];
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

        v10 = *(*(&v11 + 1) + 8 * v9);
        if ([objc_msgSend(v10 objectForKey:{kMPEffectUIControlAttributeKey[0]), "isEqualToString:", a3}])
        {
          return [v10 copy];
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

- (id)settingsUIControlDescriptionsForEffect:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mEffects objectForKey:a3];

  return [v3 objectForKey:@"settingsUI"];
}

- (id)effectsWithNumOfImages:(unint64_t)a3
{
  v5 = +[NSMutableSet set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mEffects = self->mEffects;
  v7 = [(NSMutableDictionary *)mEffects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(mEffects);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([(MPEffectManager *)self numberOfSlidesForEffectID:v11]== a3)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableDictionary *)mEffects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)allCategoryIDs
{
  v3 = +[NSMutableArray array];
  [v3 addObjectsFromArray:{-[NSMutableDictionary allKeys](self->mCategories, "allKeys")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->mEffects;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(MPEffectManager *)self categoryIDsForEffectID:*(*(&v20 + 1) + 8 * i)];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v16 + 1) + 8 * j);
              if (([v3 containsObject:v13] & 1) == 0)
              {
                [v3 addObject:v13];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  return v3;
}

- (double)maxFontSizeInEffectID:(id)a3 presetID:(id)a4 atIndex:(int64_t)a5
{
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = @"Default";
  }

  v7 = [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if ([v7 count] <= a5)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:a5];
  }

  v9 = [v8 objectForKey:@"maxFontSize"];
  if (!v9)
  {
    return -1.0;
  }

  [v9 floatValue];
  return v10;
}

- (id)presetIDsForEffectID:(id)a3
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"presets"}];

  return [v3 allKeys];
}

- (id)attributesForEffectID:(id)a3 andPresetID:(id)a4
{
  [(NSLock *)self->mLock lock];
  v7 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"presets", "objectForKey:", a4}];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    a4 = @"Default";
    v8 = [objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"presets", "objectForKey:", @"Default", "copy"}];
    if (!v8)
    {
LABEL_5:
      v8 = [NSMutableDictionary dictionaryWithDictionary:v8];
      v9 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"presets", "mutableCopy"}];
      [v9 setObject:v8 forKey:a4];
      [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "setObject:forKey:", v9, @"presets"}];

      goto LABEL_6;
    }
  }

  if (![(NSMutableDictionary *)v8 objectForKey:@"processed"])
  {
    goto LABEL_5;
  }

LABEL_6:
  [(NSLock *)self->mLock unlock];
  return v8;
}

- (id)mediaAspectRatiosForEffectID:(id)a3 usingPresetID:(id)a4
{
  v7 = +[NSMutableDictionary dictionary];
  v8 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      [(MPEffectManager *)self mediaAspectRatioForEffectID:a3 usingAttributes:[(MPEffectManager *)self attributesForEffectID:a3 andPresetID:a4] atIndex:i defaultAspectRatio:1.6];
      *&v11 = v11;
      [v7 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v11), ImageKey(i)}];
    }
  }

  return v7;
}

- (double)mediaAspectRatioForEffectID:(id)a3 usingPresetID:(id)a4 atIndex:(int64_t)a5
{
  v6 = [(MPEffectManager *)self mediaAspectRatiosForEffectID:a3 usingPresetID:a4];
  if (!v6)
  {
    return 9.22337204e18;
  }

  v7 = v6;
  if ([v6 count] <= a5)
  {
    return 9.22337204e18;
  }

  [objc_msgSend(v7 objectForKey:{ImageKey(a5)), "floatValue"}];
  return v8;
}

- (id)mediaAspectRatiosForEffectID:(id)a3 usingPresetID:(id)a4 defaultAspectRatio:(double)a5
{
  v9 = +[NSMutableDictionary dictionary];
  v10 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      [(MPEffectManager *)self mediaAspectRatioForEffectID:a3 usingPresetID:a4 atIndex:i defaultAspectRatio:a5];
      *&v13 = v13;
      [v9 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v13), ImageKey(i)}];
    }
  }

  return v9;
}

- (double)mediaAspectRatioForEffectID:(id)a3 usingPresetID:(id)a4 atIndex:(int64_t)a5 defaultAspectRatio:(double)a6
{
  v11 = [NSString stringWithFormat:@"as/%d/%@/%@/%f", a5, a3, a4, *&a6];
  v12 = [(NSMutableDictionary *)self->mCachedAspectRatios objectForKey:v11];
  if (v12)
  {
    [v12 floatValue];
    return v13;
  }

  else
  {
    [(MPEffectManager *)self mediaAspectRatioForEffectID:a3 usingAttributes:[(MPEffectManager *)self attributesForEffectID:a3 andPresetID:a4] atIndex:a5 defaultAspectRatio:a6];
    v14 = v15;
    *&v15 = v15;
    [(NSMutableDictionary *)self->mCachedAspectRatios setObject:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v15], v11];
  }

  return v14;
}

- (double)mediaAspectRatioForEffectID:(id)a3 usingAttributes:(id)a4 atIndex:(int64_t)a5 defaultAspectRatio:(double)a6
{
  v10 = [(MPEffectManager *)self imageInputInfoForEffectID:?];
  v11 = [v10 count];
  if ((v11 - 1) >= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = (v11 - 1);
  }

  v13 = [objc_msgSend(v10 objectAtIndex:{v12), "objectForKey:", @"sizeScript"}];
  if (v13 && (v14 = v13, v15 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", a6), @"layerWidth", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", 1.0), @"layerHeight", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager, "sharedManager"), "numOfImagesForEffectID:", a3)), @"numOfImages", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", a5), @"indexOfImage", 0}], v16 = +[MPUtilities executeScript:withHeader:andAttributes:](MPUtilities, "executeScript:withHeader:andAttributes:", v14, v15, a4), v15, v17 = CGSizeFromString(v16), v17.height > 0.0))
  {
    return v17.width / v17.height;
  }

  else
  {
    return 9.22337204e18;
  }
}

- (id)imageInputInfoForEffectID:(id)a3
{
  v3 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"imageInputInfo", "copy"}];

  return v3;
}

- (double)defaultPhaseInDurationForEffectID:(id)a3
{
  v4 = 0.0;
  [(MPEffectManager *)self defaultDurationsForEffectID:a3 phaseInDuration:&v4 mainDuration:0 phaseOutDuration:0];
  return v4;
}

- (double)defaultMainDurationForEffectID:(id)a3
{
  v4 = 0.0;
  [(MPEffectManager *)self defaultDurationsForEffectID:a3 phaseInDuration:0 mainDuration:&v4 phaseOutDuration:0];
  return v4;
}

- (double)defaultPhaseOutDurationForEffectID:(id)a3
{
  v4 = 0.0;
  [(MPEffectManager *)self defaultDurationsForEffectID:a3 phaseInDuration:0 mainDuration:0 phaseOutDuration:&v4];
  return v4;
}

- (void)defaultDurationsForEffectID:(id)a3 phaseInDuration:(double *)a4 mainDuration:(double *)a5 phaseOutDuration:(double *)a6
{
  if ([+[MREffectManager sharedManager](MREffectManager "sharedManager")])
  {
    v11 = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
    v12 = v11;
    if (a4)
    {
      [v11 phaseInDuration];
      *a4 = v13;
    }

    if (a5)
    {
      [v12 mainDuration];
      *a5 = v14;
    }

    if (a6)
    {
      [v12 phaseOutDuration];
LABEL_25:
      *a6 = v15;
    }
  }

  else
  {
    if (a4)
    {
      if ([a3 hasPrefix:@"SlidingPanels"])
      {
        v16 = 0x3FE5555C52E72DA1;
      }

      else
      {
        [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"phaseInDuration", "doubleValue"}];
      }

      *a4 = v16;
    }

    if (a5)
    {
      [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"mainDuration", "doubleValue"}];
      *a5 = v17;
      v18 = [a3 hasPrefix:@"SlidingPanels"];
      v19 = *a5;
      if (v18)
      {
        v19 = *a5 + -1.0;
      }

      if ((v18 & 1) != 0 || v19 == 0.0)
      {
        if (v19 == 0.0)
        {
          v19 = 3.0;
        }

        *a5 = v19;
      }
    }

    if (a6)
    {
      if ([a3 hasPrefix:@"SlidingPanels"])
      {
        v15 = 0x3FD555475A31A4BELL;
      }

      else
      {
        [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"phaseOutDuration", "doubleValue"}];
      }

      goto LABEL_25;
    }
  }
}

- (double)defaultPosterFrameTimeForEffectID:(id)a3 andPresetID:(id)a4
{
  if (!a4)
  {
    a4 = @"Default";
  }

  v6 = [-[MPEffectManager attributesForEffectID:andPresetID:](self attributesForEffectID:a3 andPresetID:{a4), "objectForKey:", @"posterTime"}];
  if (v6 || (v6 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"posterTime"}]) != 0)
  {

    [v6 doubleValue];
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
    [(MPEffectManager *)self defaultDurationsForEffectID:a3 phaseInDuration:&v9 mainDuration:&v8 phaseOutDuration:0];
    return v9 + v8 * 0.5;
  }

  return result;
}

- (double)defaultPosterFrameTimeForEffect:(id)a3
{
  v5 = [-[NSMutableDictionary objectForKey:](self->mEffects "objectForKey:{"objectForKey:", @"posterTime"}")];
  if (v5)
  {

    [v5 doubleValue];
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    [(MPEffectManager *)self defaultDurationsForEffectID:a3 phaseInDuration:&v8 mainDuration:&v7 phaseOutDuration:0];
    result = v8 + v7;
    if (v8 + v7 == 0.0)
    {
      return v7 * 0.5;
    }
  }

  return result;
}

- (int64_t)numberOfSlidesForEffectID:(id)a3
{
  v5 = [-[NSMutableDictionary objectForKey:](self->mEffects "objectForKey:{"objectForKey:", @"hasMultiImageInput"}")];
  if (v5 && ([v5 BOOLValue] & 1) != 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"numberOfSlides"}];
  if (v7)
  {

    return [v7 integerValue];
  }

  else
  {
    v8 = +[MPEffectManager sharedManager];

    return [v8 numOfImagesForEffectID:a3];
  }
}

- (int64_t)numberOfSecondarySlidesForEffectID:(id)a3
{
  result = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"numberOfSecondarySlides"}];
  if (result)
  {

    return [result integerValue];
  }

  return result;
}

- (id)orientationForEffectID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mEffects objectForKey:a3];

  return [v3 objectForKey:@"orientation"];
}

- (id)aspectRatioForEffectID:(id)a3
{
  result = [-[NSMutableDictionary objectForKey:](self->mEffects "objectForKey:{"objectForKey:", @"aspectRatio"}")];
  if (!result)
  {
    if ([a3 hasPrefix:@"Origami2-P"])
    {
      return @"HiddenAspectRatio";
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)localizedFontsForEffectID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mEffects objectForKey:a3];

  return [v3 objectForKey:@"Localized Fonts"];
}

- (BOOL)skipPanoramaScaleForEffectID:(id)a3
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"skipPanoramaScale"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

- (id)defaultStringForTextInEffectID:(id)a3 presetID:(id)a4 atIndex:(int64_t)a5 needsNSConversion:(BOOL)a6
{
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = @"Default";
  }

  v10 = [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if ([v10 count] <= a5)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v10 objectAtIndex:a5];
  }

  v12 = [v11 objectForKey:@"fontSize"];
  v13 = [v11 objectForKey:@"fontName"];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"Helvetica";
  }

  v15 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"Localized Fonts"}];
  if (v15)
  {
    v16 = [v15 objectForKey:v14];
    if (v16)
    {
      v17 = v16;
      v14 = [v16 objectForKey:@"Name"];
      v18 = [v17 objectForKey:@"Size"];
      if (!v14)
      {
        return 0;
      }

      v12 = v18;
    }
  }

  v19 = [v11 objectForKey:@"title"];
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = @"Text";
  }

  v21 = +[MPUtilities CGColorFromString:](MPUtilities, "CGColorFromString:", [v11 objectForKey:@"fontColor"]);
  [v12 floatValue];
  v23 = CTFontCreateWithName(v14, v22, 0);
  v33 = [objc_msgSend(v11 objectForKey:{@"alignment", "intValue"}];
  [objc_msgSend(v11 objectForKey:{@"headIndent", "floatValue"}];
  v32 = v24;
  settings.spec = kCTParagraphStyleSpecifierAlignment;
  settings.valueSize = 1;
  settings.value = &v33;
  v35 = 1;
  v36 = 4;
  v37 = &v32;
  v38 = 2;
  v39 = 4;
  v40 = &v32;
  v25 = CTParagraphStyleCreate(&settings, 3uLL);
  v26 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v21, kCTForegroundColorAttributeName, v23, kCTFontAttributeName, v25, kCTParagraphStyleAttributeName, 0];
  CFRelease(v25);
  CFRelease(v23);
  v27 = [v11 objectForKey:@"kern"];
  if (v27)
  {
    [(NSMutableDictionary *)v26 setObject:v27 forKey:kCTKernAttributeName];
  }

  v28 = [objc_msgSend(v11 objectForKey:{@"shadow", "mutableCopy"}];
  if (v28)
  {
    v29 = v28;
    if ([v28 objectForKey:@"offset"])
    {
      v30 = CGSizeFromString([v29 objectForKey:@"offset"]);
      [v29 setObject:+[NSValue valueWithCGSize:](NSValue forKey:{"valueWithCGSize:", v30.width, v30.height), @"offset"}];
    }

    if ([v29 objectForKey:@"color"])
    {
      [v29 setObject:+[MPUtilities CGColorFromString:](MPUtilities forKey:{"CGColorFromString:", objc_msgSend(v29, "objectForKey:", @"color", @"color"}];
    }

    if ([v29 objectForKey:@"blurRadius"])
    {
      [objc_msgSend(v29 objectForKey:{@"blurRadius", "floatValue"}];
      [v29 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"blurRadius"}];
    }

    [(NSMutableDictionary *)v26 setObject:v29 forKey:@"shadow"];
  }

  return [[NSAttributedString alloc] initWithString:v20 attributes:v26];
}

- (BOOL)posterTimeIsStaticForEffectID:(id)a3 andPresetID:(id)a4
{
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = @"Default";
  }

  v7 = [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if (v7 || (v7 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"posterTimeIsStatic"}]) != 0)
  {

    LOBYTE(v7) = [v7 BOOLValue];
  }

  return v7;
}

- (id)showTimeScriptForEffectID:(id)a3 atSlideIndex:(int64_t)a4
{
  v5 = [(MPEffectManager *)self imageInputInfoForEffectID:a3];
  if ([v5 count] <= a4)
  {
    v6 = [v5 lastObject];
  }

  else
  {
    v6 = [v5 objectAtIndex:a4];
  }

  return [v6 objectForKey:@"showTimeScript"];
}

- (double)minimumEffectDurationForEffectID:(id)a3
{
  v3 = a3;
  if ([a3 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v3 substringToIndex:{objc_msgSend(v3, "rangeOfString:", @"/"}];
  }

  v5 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{v3), "objectForKey:", @"minimumEffectDuration"}];
  if (!v5)
  {
    return 0.0;
  }

  [v5 doubleValue];
  return result;
}

- (id)sizeScriptForEffectID:(id)a3 atIndex:(int64_t)a4
{
  v5 = [(MPEffectManager *)self imageInputInfoForEffectID:a3];
  if ([v5 count] <= a4)
  {
    v6 = [v5 lastObject];
  }

  else
  {
    v6 = [v5 objectAtIndex:a4];
  }

  return [v6 objectForKey:@"sizeScript"];
}

- (double)defaultFullDurationForEffectID:(id)a3
{
  v5 = [MPUtilities idOfCombinedID:?];
  v9 = 0.0;
  v10 = 0.0;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a3;
  }

  v8 = 0.0;
  [(MPEffectManager *)self defaultDurationsForEffectID:v6 phaseInDuration:&v10 mainDuration:&v9 phaseOutDuration:&v8];
  return v10 + v9 + v8;
}

- (unint64_t)numOfImagesForEffectPresetID:(id)a3
{
  v3 = a3;
  if ([a3 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v3 substringToIndex:{objc_msgSend(v3, "rangeOfString:", @"/"}];
  }

  return [(MPEffectManager *)self numberOfSlidesForEffectID:v3];
}

- (unint64_t)maxNumOfImagesPerEffectInList:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v13;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(a3);
      }

      v10 = [(MPEffectManager *)self numberOfSlidesForEffectID:*(*(&v12 + 1) + 8 * i)];
      if (v10 > v7)
      {
        v7 = v10;
      }
    }

    v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v6);
  return v7;
}

- (unint64_t)minNumOfImagesPerEffectInList:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    return 99;
  }

  v6 = v5;
  v7 = *v13;
  v8 = 99;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(a3);
      }

      v10 = [(MPEffectManager *)self numberOfSlidesForEffectID:*(*(&v12 + 1) + 8 * i)];
      if (v10 < v8)
      {
        v8 = v10;
      }
    }

    v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v6);
  return v8;
}

- (BOOL)effectNeedsRandomSeedInformation:(id)a3
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"needsRandomSeed"}];

  return [v3 BOOLValue];
}

- (BOOL)effectNeedsPanoInformation:(id)a3
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"needsPanoInformation"}];

  return [v3 BOOLValue];
}

- (BOOL)effectDoesAccumulate:(id)a3
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"accumulates"}];

  return [v3 BOOLValue];
}

- (id)mediaAspectRatioHintsForEffectID:(id)a3 usingPresetID:(id)a4 defaultAspectRatio:(double)a5
{
  v9 = [NSString stringWithFormat:@"hint/%@/%@/%f", a3, a4, *&a5];
  v10 = [(NSMutableDictionary *)self->mCachedAspectRatios objectForKey:v9];
  if (!v10)
  {
    v10 = +[NSMutableDictionary dictionary];
    v11 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [-[MPEffectManager imageInputInfoForEffectID:](self imageInputInfoForEffectID:{a3), "count"}];
    }

    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        [(MPEffectManager *)self mediaAspectRatioHintForEffectID:a3 usingAttributes:[(MPEffectManager *)self attributesForEffectID:a3 andPresetID:a4] atIndex:i defaultAspectRatio:a5];
        *&v13 = v13;
        [v10 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v13), ImageKey(i)}];
      }
    }

    [(NSMutableDictionary *)self->mCachedAspectRatios setObject:v10 forKey:v9];
  }

  return v10;
}

- (int64_t)panoTypeForSlideAtIndex:(int64_t)a3 inEffect:(id)a4 forPresetID:(id)a5
{
  v9 = [NSString stringWithFormat:@"%@/%@-%ld", a4, a5, a3];
  v10 = [(NSMutableDictionary *)self->mCachedBreakInfo objectForKey:v9];
  if (v10)
  {

    return [v10 integerValue];
  }

  else
  {
    v12 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    v13 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    v14 = [objc_msgSend(v12 objectAtIndex:{a3), "objectForKey:", @"panoType"}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 integerValue];
    }

    else if (v14)
    {
      v26 = self;
      v16 = [[MUMathExpressionFloatBased alloc] initWithString:v14 error:0];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v17 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v13);
            }

            v21 = *(*(&v27 + 1) + 8 * i);
            v22 = [v13 objectForKey:v21];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v23 = objc_opt_class();
              if (![NSStringFromClass(v23) isEqualToString:@"NSCFBoolean"])
              {
                continue;
              }
            }

            [v22 doubleValue];
            *&v24 = v24;
            [(MUMathExpressionFloatBased *)v16 setValue:v21 forVariable:v24];
          }

          v18 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v18);
      }

      [(MUMathExpressionFloatBased *)v16 evaluate];
      v15 = v25;

      self = v26;
    }

    else
    {
      v15 = 0;
    }

    [(NSMutableDictionary *)self->mCachedBreakInfo setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:v15], v9];
    return v15;
  }
}

- (double)mediaAspectRatioHintForEffectID:(id)a3 usingAttributes:(id)a4 atIndex:(int64_t)a5 defaultAspectRatio:(double)a6
{
  v11 = [(MPEffectManager *)self imageInputInfoForEffectID:?];
  v12 = [v11 count];
  if ((v12 - 1) >= a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = (v12 - 1);
  }

  v14 = [objc_msgSend(v11 objectAtIndex:{v13), "objectForKey:", @"aspectRatioHint"}];
  if (v14)
  {
    v15 = v14;
    v16 = 1.0;
    if (([v14 isEqualToString:@"all"] & 1) == 0)
    {
      v16 = 1.5;
      if (([v15 isEqualToString:@"landscape"] & 1) == 0)
      {
        v17 = [[MUMathExpressionFloatBased alloc] initWithString:v15 error:0];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v18 = [a4 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v29;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v29 != v20)
              {
                objc_enumerationMutation(a4);
              }

              v22 = *(*(&v28 + 1) + 8 * i);
              v23 = [a4 objectForKey:v22];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v24 = objc_opt_class();
                if (![NSStringFromClass(v24) isEqualToString:@"NSCFBoolean"])
                {
                  continue;
                }
              }

              [v23 doubleValue];
              *&v25 = v25;
              [(MUMathExpressionFloatBased *)v17 setValue:v22 forVariable:v25];
            }

            v19 = [a4 countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v19);
        }

        [(MUMathExpressionFloatBased *)v17 evaluate];
        v16 = v26;
      }
    }

    return v16;
  }

  else
  {

    [(MPEffectManager *)self mediaAspectRatioForEffectID:a3 usingAttributes:a4 atIndex:a5 defaultAspectRatio:a6];
  }

  return result;
}

- (double)mediaAspectRatioForEffectID:(id)a3 usingAttributes:(id)a4 atIndex:(int64_t)a5 defaultAspectRatio:(double)a6 imageAspectRatio:(double)a7
{
  v12 = [(MPEffectManager *)self imageInputInfoForEffectID:?];
  v13 = [v12 count];
  if ((v13 - 1) >= a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = (v13 - 1);
  }

  v15 = [objc_msgSend(v12 objectAtIndex:{v14), "objectForKey:", @"sizeScript"}];
  if (v15 && (v16 = v15, v17 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", a6), @"layerWidth", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", 1.0), @"layerHeight", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager, "sharedManager"), "numOfImagesForEffectID:", a3)), @"numOfImages", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", a7), @"imageAspectRatio", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", a5), @"indexOfImage", 0}], v18 = +[MPUtilities executeScript:withHeader:andAttributes:](MPUtilities, "executeScript:withHeader:andAttributes:", v16, v17, a4), v17, v19 = CGSizeFromString(v18), v19.height > 0.0))
  {
    return v19.width / v19.height;
  }

  else
  {
    return 9.22337204e18;
  }
}

- (double)panoramaScaleOffsetForEffectID:(id)a3
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"panoramaScaleOffset"}];
  if (!v3)
  {
    return 0.0;
  }

  [v3 doubleValue];
  return result;
}

- (double)durationPaddingForEffectID:(id)a3
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{a3), "objectForKey:", @"durationPadding"}];
  if (!v3)
  {
    return 0.0;
  }

  [v3 doubleValue];
  return result;
}

- (BOOL)useUppercaseForEffectID:(id)a3 presetID:(id)a4 forTextAtIndex:(int64_t)a5
{
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = @"Default";
  }

  v7 = [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if ([v7 count] <= a5)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:a5];
  }

  v9 = [v8 objectForKey:@"uppercase"];
  if (v9)
  {

    LOBYTE(v9) = [v9 BOOLValue];
  }

  return v9;
}

- (BOOL)allowTextCustomizationForEffectID:(id)a3 presetID:(id)a4 forTextAtIndex:(int64_t)a5
{
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = @"Default";
  }

  v7 = [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if ([v7 count] <= a5)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:a5];
  }

  v9 = [v8 objectForKey:@"allowCustomization"];
  if (!v9)
  {
    return 1;
  }

  return [v9 BOOLValue];
}

+ (void)loadEffectManagerWithPaths:(id)a3
{
  if (qword_1EF2D8)
  {

    qword_1EF2D8 = 0;
  }

  qword_1EF2D8 = [[MPEffectManager alloc] initWithPaths:a3];
}

- (MPEffectManager)initWithPaths:(id)a3
{
  v89.receiver = self;
  v89.super_class = MPEffectManager;
  v4 = [(MPEffectManager *)&v89 init];
  if (v4)
  {
    v4->mEffects = objc_alloc_init(NSMutableDictionary);
    v4->mCategories = objc_alloc_init(NSMutableDictionary);
    v4->mCachedAspectRatios = objc_alloc_init(NSMutableDictionary);
    v4->mCachedBreakInfo = objc_alloc_init(NSMutableDictionary);
    v4->mRegisteredFonts = objc_alloc_init(NSMutableArray);
    v5 = objc_alloc_init(NSLock);
    v4->mLock = v5;
    [(NSLock *)v5 setName:@"MPEffectManager.lock"];
    v6 = +[NSMutableArray array];
    v7 = v6;
    if (a3)
    {
      [v6 addObjectsFromArray:a3];
    }

    else
    {
      [v6 addObject:{-[NSString stringByAppendingPathComponent:](-[NSBundle resourcePath](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "resourcePath"), "stringByAppendingPathComponent:", @"Content"}];
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = v7;
    v57 = [v7 countByEnumeratingWithState:&v85 objects:v94 count:16];
    if (v57)
    {
      v56 = *v86;
      do
      {
        v8 = 0;
        do
        {
          if (*v86 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v58 = v8;
          v64 = *(*(&v85 + 1) + 8 * v8);
          v9 = [NSArray arrayWithObjects:@"EffectDescriptions.plist", @"EffectDescriptionsSynergy.plist", 0];
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v67 = v9;
          v10 = [(NSArray *)v9 countByEnumeratingWithState:&v81 objects:v93 count:16];
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
                  objc_enumerationMutation(v67);
                }

                v14 = +[NSData dataWithContentsOfFile:](NSData, "dataWithContentsOfFile:", [v64 stringByAppendingPathComponent:*(*(&v81 + 1) + 8 * i)]);
                if (v14)
                {
                  v15 = [NSPropertyListSerialization propertyListWithData:v14 options:2 format:0 error:0];
                  if (v15)
                  {
                    v16 = v15;
                    v79 = 0u;
                    v80 = 0u;
                    v77 = 0u;
                    v78 = 0u;
                    v17 = [v15 countByEnumeratingWithState:&v77 objects:v92 count:16];
                    if (v17)
                    {
                      v18 = v17;
                      v19 = *v78;
                      do
                      {
                        for (j = 0; j != v18; j = j + 1)
                        {
                          if (*v78 != v19)
                          {
                            objc_enumerationMutation(v16);
                          }

                          v21 = *(*(&v77 + 1) + 8 * j);
                          v22 = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(v16, "objectForKey:", v21)}];
                          [(NSMutableDictionary *)v4->mEffects setObject:v22 forKey:v21];
                        }

                        v18 = [v16 countByEnumeratingWithState:&v77 objects:v92 count:16];
                      }

                      while (v18);
                    }
                  }
                }
              }

              v11 = [(NSArray *)v67 countByEnumeratingWithState:&v81 objects:v93 count:16];
            }

            while (v11);
          }

          v23 = +[NSFileManager defaultManager];
          v65 = +[NSMutableSet set];
          v24 = -[NSFileManager contentsOfDirectoryAtPath:error:](v23, "contentsOfDirectoryAtPath:error:", [v64 stringByAppendingPathComponent:@"Effects/"], 0);
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v61 = v24;
          v25 = [(NSArray *)v24 countByEnumeratingWithState:&v73 objects:v91 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v74;
            v59 = *v74;
            do
            {
              v28 = 0;
              v60 = v26;
              do
              {
                if (*v74 != v27)
                {
                  objc_enumerationMutation(v61);
                }

                v29 = [v64 stringByAppendingFormat:@"/Effects/%@", *(*(&v73 + 1) + 8 * v28)];
                if ([objc_msgSend(v29 "pathExtension")])
                {
                  v30 = [[NSBundle alloc] initWithPath:v29];
                  if (v30)
                  {
                    v31 = v30;
                    v62 = v28;
                    v68 = v29;
                    v32 = [objc_msgSend(v29 "lastPathComponent")];
                    v33 = [v31 pathForResource:@"EffectDescription" ofType:@"plist"];
                    v63 = v31;
                    v34 = [v31 pathForResource:@"LocalizedDescription" ofType:@"plist"];
                    if (v33)
                    {
                      v35 = v34;
                      v36 = [NSData dataWithContentsOfFile:v33];
                      if (v36)
                      {
                        v37 = [NSPropertyListSerialization propertyListWithData:v36 options:2 format:0 error:0];
                      }

                      else
                      {
                        v37 = 0;
                      }

                      v66 = [NSString stringWithFormat:@"%@/Contents/Resources", v68];
                      v38 = [objc_msgSend(v31 "infoDictionary")];
                      v39 = [v37 objectForKey:@"effects"];
                      if (v39)
                      {
                        v40 = v39;
                        if (v35)
                        {
                          v35 = [NSDictionary dictionaryWithContentsOfFile:v35];
                        }

                        v41 = [(NSDictionary *)v35 objectForKey:@"_LOCALIZABLE_"];
                        v42 = [(NSDictionary *)v35 objectForKey:@"effects"];
                        v69 = 0u;
                        v70 = 0u;
                        v71 = 0u;
                        v72 = 0u;
                        v43 = [v40 countByEnumeratingWithState:&v69 objects:v90 count:16];
                        if (v43)
                        {
                          v44 = v43;
                          v45 = *v70;
                          do
                          {
                            for (k = 0; k != v44; k = k + 1)
                            {
                              if (*v70 != v45)
                              {
                                objc_enumerationMutation(v40);
                              }

                              v47 = *(*(&v69 + 1) + 8 * k);
                              v48 = +[NSMutableDictionary dictionary];
                              [v48 addEntriesFromDictionary:{objc_msgSend(v40, "objectForKey:", v47)}];
                              if (v41)
                              {
                                [v48 addEntriesFromDictionary:v41];
                              }

                              v49 = [v42 objectForKey:v47];
                              if (v49)
                              {
                                [v48 addEntriesFromDictionary:{objc_msgSend(v49, "objectForKey:", @"_LOCALIZABLE_"}];
                              }

                              [v48 setObject:v38 forKey:@"version"];
                              v50 = [v48 objectForKey:@"Fonts"];
                              if (v50)
                              {
                                [v65 addObjectsFromArray:v50];
                              }

                              [v48 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@/Contents/Resources/%@", v68, @"Icon.tiff", @"thumbnail"}];
                              [v48 setObject:v66 forKey:@"resourceFolderPath"];
                              [(NSMutableDictionary *)v4->mEffects setObject:v48 forKey:v47];
                            }

                            v44 = [v40 countByEnumeratingWithState:&v69 objects:v90 count:16];
                          }

                          while (v44);
                        }
                      }

                      else
                      {
                        v51 = +[NSMutableDictionary dictionary];
                        [v51 addEntriesFromDictionary:v37];
                        if (v35)
                        {
                          v52 = [NSDictionary dictionaryWithContentsOfFile:v35];
                          if (v52)
                          {
                            [v51 addEntriesFromDictionary:{-[NSDictionary objectForKey:](v52, "objectForKey:", @"_LOCALIZABLE_"}];
                          }
                        }

                        [v51 setObject:v38 forKey:@"version"];
                        v53 = [v51 objectForKey:@"Fonts"];
                        if (v53)
                        {
                          [v65 addObjectsFromArray:v53];
                        }

                        [v51 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@/Contents/Resources/%@", v68, @"Icon.tiff", @"thumbnail"}];
                        [v51 setObject:v66 forKey:@"resourceFolderPath"];
                        [(NSMutableDictionary *)v4->mEffects setObject:v51 forKey:v32];
                      }
                    }

                    v27 = v59;
                    v26 = v60;
                    v28 = v62;
                  }
                }

                v28 = v28 + 1;
              }

              while (v28 != v26);
              v26 = [(NSArray *)v61 countByEnumeratingWithState:&v73 objects:v91 count:16];
            }

            while (v26);
          }

          -[NSMutableDictionary addEntriesFromDictionary:](v4->mCategories, "addEntriesFromDictionary:", +[NSDictionary dictionaryWithContentsOfFile:](NSDictionary, "dictionaryWithContentsOfFile:", [v64 stringByAppendingPathComponent:@"LocalizedEffectCategories.plist"]));
          -[MPEffectManager _loadFontsFromPath:requiredFonts:](v4, "_loadFontsFromPath:requiredFonts:", [v64 stringByAppendingPathComponent:@"Fonts"], v65);
          v8 = v58 + 1;
        }

        while ((v58 + 1) != v57);
        v57 = [obj countByEnumeratingWithState:&v85 objects:v94 count:16];
      }

      while (v57);
    }
  }

  return v4;
}

- (void)_loadFontsFromPath:(id)a3 requiredFonts:(id)a4
{
  if ([+[NSFileManager fileExistsAtPath:a3], "fileExistsAtPath:", a3])
  {
    v6 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtPath:"enumeratorAtPath:", a3];
    v7 = [(NSDirectoryEnumerator *)v6 nextObject];
    if (v7)
    {
      v8 = v7;
      do
      {
        v9 = +[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", [a3 stringByAppendingPathComponent:v8]);
        error = 0;
        if (CTFontManagerRegisterFontsForURL(v9, kCTFontManagerScopeProcess, &error))
        {
          [(NSMutableArray *)self->mRegisteredFonts addObject:v9];
        }

        else
        {
          v10 = CFErrorCopyDescription(error);
          NSLog(@"CTFontManagerRegisterFontsForURL failed, error '%@'\n", v10);
          CFRelease(v10);
        }

        v8 = [(NSDirectoryEnumerator *)v6 nextObject];
      }

      while (v8);
    }
  }
}

@end