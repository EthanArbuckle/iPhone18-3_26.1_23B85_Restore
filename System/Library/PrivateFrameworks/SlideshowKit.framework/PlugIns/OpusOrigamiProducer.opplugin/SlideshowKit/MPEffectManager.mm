@interface MPEffectManager
+ (id)sharedManager;
+ (void)initialize;
+ (void)loadEffectManagerWithPaths:(id)paths;
+ (void)releaseSharedManager;
- (BOOL)allowTextCustomizationForEffectID:(id)d presetID:(id)iD forTextAtIndex:(int64_t)index;
- (BOOL)effectDoesAccumulate:(id)accumulate;
- (BOOL)effectNeedsPanoInformation:(id)information;
- (BOOL)effectNeedsRandomSeedInformation:(id)information;
- (BOOL)posterTimeIsStaticForEffectID:(id)d andPresetID:(id)iD;
- (BOOL)skipPanoramaScaleForEffectID:(id)d;
- (BOOL)useUppercaseForEffectID:(id)d presetID:(id)iD forTextAtIndex:(int64_t)index;
- (MPEffectManager)initWithPaths:(id)paths;
- (double)defaultFullDurationForEffectID:(id)d;
- (double)defaultMainDurationForEffectID:(id)d;
- (double)defaultPhaseInDurationForEffectID:(id)d;
- (double)defaultPhaseOutDurationForEffectID:(id)d;
- (double)defaultPosterFrameTimeForEffect:(id)effect;
- (double)defaultPosterFrameTimeForEffectID:(id)d andPresetID:(id)iD;
- (double)durationPaddingForEffectID:(id)d;
- (double)maxFontSizeInEffectID:(id)d presetID:(id)iD atIndex:(int64_t)index;
- (double)mediaAspectRatioForEffectID:(id)d usingAttributes:(id)attributes atIndex:(int64_t)index defaultAspectRatio:(double)ratio;
- (double)mediaAspectRatioForEffectID:(id)d usingAttributes:(id)attributes atIndex:(int64_t)index defaultAspectRatio:(double)ratio imageAspectRatio:(double)aspectRatio;
- (double)mediaAspectRatioForEffectID:(id)d usingPresetID:(id)iD atIndex:(int64_t)index;
- (double)mediaAspectRatioForEffectID:(id)d usingPresetID:(id)iD atIndex:(int64_t)index defaultAspectRatio:(double)ratio;
- (double)mediaAspectRatioHintForEffectID:(id)d usingAttributes:(id)attributes atIndex:(int64_t)index defaultAspectRatio:(double)ratio;
- (double)minimumEffectDurationForEffectID:(id)d;
- (double)panoramaScaleOffsetForEffectID:(id)d;
- (id)allCategoryIDs;
- (id)aspectRatioForEffectID:(id)d;
- (id)attributesForEffectID:(id)d andPresetID:(id)iD;
- (id)categoryIDsForEffectID:(id)d;
- (id)controlForAttribute:(id)attribute forEffectID:(id)d;
- (id)defaultStringForTextInEffectID:(id)d presetID:(id)iD atIndex:(int64_t)index needsNSConversion:(BOOL)conversion;
- (id)effectIDsForCategoryID:(id)d;
- (id)effectsWithNumOfImages:(unint64_t)images;
- (id)imageInputInfoForEffectID:(id)d;
- (id)localizedCategoryNameFromCategoryID:(id)d;
- (id)localizedEffectNameForEffectID:(id)d;
- (id)localizedFontsForEffectID:(id)d;
- (id)localizedSettingsUITitleForTitleKey:(id)key inEffect:(id)effect;
- (id)localizedString:(id)string forEffectID:(id)d;
- (id)mediaAspectRatioHintsForEffectID:(id)d usingPresetID:(id)iD defaultAspectRatio:(double)ratio;
- (id)mediaAspectRatiosForEffectID:(id)d usingPresetID:(id)iD;
- (id)mediaAspectRatiosForEffectID:(id)d usingPresetID:(id)iD defaultAspectRatio:(double)ratio;
- (id)orientationForEffectID:(id)d;
- (id)presetIDsForEffectID:(id)d;
- (id)settingsUIControlDescriptionsForEffect:(id)effect;
- (id)showTimeScriptForEffectID:(id)d atSlideIndex:(int64_t)index;
- (id)sizeScriptForEffectID:(id)d atIndex:(int64_t)index;
- (id)versionOfEffectID:(id)d;
- (int64_t)numberOfSecondarySlidesForEffectID:(id)d;
- (int64_t)numberOfSlidesForEffectID:(id)d;
- (int64_t)panoTypeForSlideAtIndex:(int64_t)index inEffect:(id)effect forPresetID:(id)d;
- (unint64_t)maxNumOfImagesPerEffectInList:(id)list;
- (unint64_t)minNumOfImagesPerEffectInList:(id)list;
- (unint64_t)numOfImagesForEffectID:(id)d;
- (unint64_t)numOfImagesForEffectPresetID:(id)d;
- (void)_loadFontsFromPath:(id)path requiredFonts:(id)fonts;
- (void)dealloc;
- (void)defaultDurationsForEffectID:(id)d phaseInDuration:(double *)duration mainDuration:(double *)mainDuration phaseOutDuration:(double *)outDuration;
@end

@implementation MPEffectManager

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___MPEffectManager;
  objc_msgSendSuper2(&v2, "initialize");
}

+ (id)sharedManager
{
  result = qword_1EF2D8;
  if (!qword_1EF2D8)
  {
    objc_sync_enter(self);
    if (!qword_1EF2D8)
    {
      qword_1EF2D8 = [[MPEffectManager alloc] initWithPaths:0];
    }

    objc_sync_exit(self);
    return qword_1EF2D8;
  }

  return result;
}

+ (void)releaseSharedManager
{
  if (qword_1EF2D8)
  {
    objc_sync_enter(self);

    qword_1EF2D8 = 0;

    objc_sync_exit(self);
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

- (id)versionOfEffectID:(id)d
{
  v3 = [(NSMutableDictionary *)self->mEffects objectForKey:d];

  return [v3 objectForKey:@"version"];
}

- (unint64_t)numOfImagesForEffectID:(id)d
{
  v5 = [-[NSMutableDictionary objectForKey:](self->mEffects "objectForKey:{"objectForKey:", @"hasMultiImageInput"}")];
  if (v5 && ([v5 BOOLValue] & 1) != 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"numberOfImages"}];
  v8 = [(NSMutableDictionary *)self->mEffects objectForKey:d];
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
    result = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"imageInputInfo", "count"}];
    if (result)
    {
      return result;
    }
  }

  if ([d rangeOfString:@"/"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v9 = [d substringToIndex:{objc_msgSend(d, "rangeOfString:", @"/"}];
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

- (id)categoryIDsForEffectID:(id)d
{
  v3 = [(NSMutableDictionary *)self->mEffects objectForKey:d];

  return [v3 objectForKey:@"categories"];
}

- (id)effectIDsForCategoryID:(id)d
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
        if (([-[MPEffectManager categoryIDsForEffectID:](self categoryIDsForEffectID:{v11), "containsObject:", d}] & 1) != 0 || objc_msgSend(d, "isEqualToString:", @"all"))
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

- (id)localizedEffectNameForEffectID:(id)d
{
  result = [-[NSMutableDictionary objectForKey:](self->mEffects "objectForKey:{"objectForKey:", @"localizedEffectName"}")];
  if (!result)
  {
    return d;
  }

  return result;
}

- (id)localizedCategoryNameFromCategoryID:(id)d
{
  v5 = [(NSMutableDictionary *)self->mCategories objectForKey:?];
  if (!v5)
  {
    v7 = [(MPEffectManager *)self effectIDsForCategoryID:d];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!v8)
    {
      return d;
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

        return d;
      }
    }
  }

  return v5;
}

- (id)localizedString:(id)string forEffectID:(id)d
{
  result = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"Localized Strings", "objectForKey:", string}];
  if (!result)
  {
    return string;
  }

  return result;
}

- (id)localizedSettingsUITitleForTitleKey:(id)key inEffect:(id)effect
{
  result = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{effect), "objectForKey:", @"localizedSettingsUI", "objectForKey:", key}];
  if (!result)
  {
    return key;
  }

  return result;
}

- (id)controlForAttribute:(id)attribute forEffectID:(id)d
{
  v5 = [(MPEffectManager *)self settingsUIControlDescriptionsForEffect:d];
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
        if ([objc_msgSend(v10 objectForKey:{kMPEffectUIControlAttributeKey[0]), "isEqualToString:", attribute}])
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

- (id)settingsUIControlDescriptionsForEffect:(id)effect
{
  v3 = [(NSMutableDictionary *)self->mEffects objectForKey:effect];

  return [v3 objectForKey:@"settingsUI"];
}

- (id)effectsWithNumOfImages:(unint64_t)images
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
        if ([(MPEffectManager *)self numberOfSlidesForEffectID:v11]== images)
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

- (double)maxFontSizeInEffectID:(id)d presetID:(id)iD atIndex:(int64_t)index
{
  if (iD)
  {
    iDCopy = iD;
  }

  else
  {
    iDCopy = @"Default";
  }

  v7 = [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if ([v7 count] <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:index];
  }

  v9 = [v8 objectForKey:@"maxFontSize"];
  if (!v9)
  {
    return -1.0;
  }

  [v9 floatValue];
  return v10;
}

- (id)presetIDsForEffectID:(id)d
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"presets"}];

  return [v3 allKeys];
}

- (id)attributesForEffectID:(id)d andPresetID:(id)iD
{
  [(NSLock *)self->mLock lock];
  v7 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"presets", "objectForKey:", iD}];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    iD = @"Default";
    v8 = [objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"presets", "objectForKey:", @"Default", "copy"}];
    if (!v8)
    {
LABEL_5:
      v8 = [NSMutableDictionary dictionaryWithDictionary:v8];
      v9 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"presets", "mutableCopy"}];
      [v9 setObject:v8 forKey:iD];
      [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "setObject:forKey:", v9, @"presets"}];

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

- (id)mediaAspectRatiosForEffectID:(id)d usingPresetID:(id)iD
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
      [(MPEffectManager *)self mediaAspectRatioForEffectID:d usingAttributes:[(MPEffectManager *)self attributesForEffectID:d andPresetID:iD] atIndex:i defaultAspectRatio:1.6];
      *&v11 = v11;
      [v7 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v11), ImageKey(i)}];
    }
  }

  return v7;
}

- (double)mediaAspectRatioForEffectID:(id)d usingPresetID:(id)iD atIndex:(int64_t)index
{
  v6 = [(MPEffectManager *)self mediaAspectRatiosForEffectID:d usingPresetID:iD];
  if (!v6)
  {
    return 9.22337204e18;
  }

  v7 = v6;
  if ([v6 count] <= index)
  {
    return 9.22337204e18;
  }

  [objc_msgSend(v7 objectForKey:{ImageKey(index)), "floatValue"}];
  return v8;
}

- (id)mediaAspectRatiosForEffectID:(id)d usingPresetID:(id)iD defaultAspectRatio:(double)ratio
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
      [(MPEffectManager *)self mediaAspectRatioForEffectID:d usingPresetID:iD atIndex:i defaultAspectRatio:ratio];
      *&v13 = v13;
      [v9 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v13), ImageKey(i)}];
    }
  }

  return v9;
}

- (double)mediaAspectRatioForEffectID:(id)d usingPresetID:(id)iD atIndex:(int64_t)index defaultAspectRatio:(double)ratio
{
  v11 = [NSString stringWithFormat:@"as/%d/%@/%@/%f", index, d, iD, *&ratio];
  v12 = [(NSMutableDictionary *)self->mCachedAspectRatios objectForKey:v11];
  if (v12)
  {
    [v12 floatValue];
    return v13;
  }

  else
  {
    [(MPEffectManager *)self mediaAspectRatioForEffectID:d usingAttributes:[(MPEffectManager *)self attributesForEffectID:d andPresetID:iD] atIndex:index defaultAspectRatio:ratio];
    v14 = v15;
    *&v15 = v15;
    [(NSMutableDictionary *)self->mCachedAspectRatios setObject:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v15], v11];
  }

  return v14;
}

- (double)mediaAspectRatioForEffectID:(id)d usingAttributes:(id)attributes atIndex:(int64_t)index defaultAspectRatio:(double)ratio
{
  v10 = [(MPEffectManager *)self imageInputInfoForEffectID:?];
  v11 = [v10 count];
  if ((v11 - 1) >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = (v11 - 1);
  }

  v13 = [objc_msgSend(v10 objectAtIndex:{indexCopy), "objectForKey:", @"sizeScript"}];
  if (v13 && (v14 = v13, v15 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", ratio), @"layerWidth", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", 1.0), @"layerHeight", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager, "sharedManager"), "numOfImagesForEffectID:", d)), @"numOfImages", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", index), @"indexOfImage", 0}], v16 = +[MPUtilities executeScript:withHeader:andAttributes:](MPUtilities, "executeScript:withHeader:andAttributes:", v14, v15, attributes), v15, v17 = CGSizeFromString(v16), v17.height > 0.0))
  {
    return v17.width / v17.height;
  }

  else
  {
    return 9.22337204e18;
  }
}

- (id)imageInputInfoForEffectID:(id)d
{
  v3 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"imageInputInfo", "copy"}];

  return v3;
}

- (double)defaultPhaseInDurationForEffectID:(id)d
{
  v4 = 0.0;
  [(MPEffectManager *)self defaultDurationsForEffectID:d phaseInDuration:&v4 mainDuration:0 phaseOutDuration:0];
  return v4;
}

- (double)defaultMainDurationForEffectID:(id)d
{
  v4 = 0.0;
  [(MPEffectManager *)self defaultDurationsForEffectID:d phaseInDuration:0 mainDuration:&v4 phaseOutDuration:0];
  return v4;
}

- (double)defaultPhaseOutDurationForEffectID:(id)d
{
  v4 = 0.0;
  [(MPEffectManager *)self defaultDurationsForEffectID:d phaseInDuration:0 mainDuration:0 phaseOutDuration:&v4];
  return v4;
}

- (void)defaultDurationsForEffectID:(id)d phaseInDuration:(double *)duration mainDuration:(double *)mainDuration phaseOutDuration:(double *)outDuration
{
  if ([+[MREffectManager sharedManager](MREffectManager "sharedManager")])
  {
    v11 = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
    v12 = v11;
    if (duration)
    {
      [v11 phaseInDuration];
      *duration = v13;
    }

    if (mainDuration)
    {
      [v12 mainDuration];
      *mainDuration = v14;
    }

    if (outDuration)
    {
      [v12 phaseOutDuration];
LABEL_25:
      *outDuration = v15;
    }
  }

  else
  {
    if (duration)
    {
      if ([d hasPrefix:@"SlidingPanels"])
      {
        v16 = 0x3FE5555C52E72DA1;
      }

      else
      {
        [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"phaseInDuration", "doubleValue"}];
      }

      *duration = v16;
    }

    if (mainDuration)
    {
      [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"mainDuration", "doubleValue"}];
      *mainDuration = v17;
      v18 = [d hasPrefix:@"SlidingPanels"];
      v19 = *mainDuration;
      if (v18)
      {
        v19 = *mainDuration + -1.0;
      }

      if ((v18 & 1) != 0 || v19 == 0.0)
      {
        if (v19 == 0.0)
        {
          v19 = 3.0;
        }

        *mainDuration = v19;
      }
    }

    if (outDuration)
    {
      if ([d hasPrefix:@"SlidingPanels"])
      {
        v15 = 0x3FD555475A31A4BELL;
      }

      else
      {
        [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"phaseOutDuration", "doubleValue"}];
      }

      goto LABEL_25;
    }
  }
}

- (double)defaultPosterFrameTimeForEffectID:(id)d andPresetID:(id)iD
{
  if (!iD)
  {
    iD = @"Default";
  }

  v6 = [-[MPEffectManager attributesForEffectID:andPresetID:](self attributesForEffectID:d andPresetID:{iD), "objectForKey:", @"posterTime"}];
  if (v6 || (v6 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"posterTime"}]) != 0)
  {

    [v6 doubleValue];
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
    [(MPEffectManager *)self defaultDurationsForEffectID:d phaseInDuration:&v9 mainDuration:&v8 phaseOutDuration:0];
    return v9 + v8 * 0.5;
  }

  return result;
}

- (double)defaultPosterFrameTimeForEffect:(id)effect
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
    [(MPEffectManager *)self defaultDurationsForEffectID:effect phaseInDuration:&v8 mainDuration:&v7 phaseOutDuration:0];
    result = v8 + v7;
    if (v8 + v7 == 0.0)
    {
      return v7 * 0.5;
    }
  }

  return result;
}

- (int64_t)numberOfSlidesForEffectID:(id)d
{
  v5 = [-[NSMutableDictionary objectForKey:](self->mEffects "objectForKey:{"objectForKey:", @"hasMultiImageInput"}")];
  if (v5 && ([v5 BOOLValue] & 1) != 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"numberOfSlides"}];
  if (v7)
  {

    return [v7 integerValue];
  }

  else
  {
    v8 = +[MPEffectManager sharedManager];

    return [v8 numOfImagesForEffectID:d];
  }
}

- (int64_t)numberOfSecondarySlidesForEffectID:(id)d
{
  result = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"numberOfSecondarySlides"}];
  if (result)
  {

    return [result integerValue];
  }

  return result;
}

- (id)orientationForEffectID:(id)d
{
  v3 = [(NSMutableDictionary *)self->mEffects objectForKey:d];

  return [v3 objectForKey:@"orientation"];
}

- (id)aspectRatioForEffectID:(id)d
{
  result = [-[NSMutableDictionary objectForKey:](self->mEffects "objectForKey:{"objectForKey:", @"aspectRatio"}")];
  if (!result)
  {
    if ([d hasPrefix:@"Origami2-P"])
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

- (id)localizedFontsForEffectID:(id)d
{
  v3 = [(NSMutableDictionary *)self->mEffects objectForKey:d];

  return [v3 objectForKey:@"Localized Fonts"];
}

- (BOOL)skipPanoramaScaleForEffectID:(id)d
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"skipPanoramaScale"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

- (id)defaultStringForTextInEffectID:(id)d presetID:(id)iD atIndex:(int64_t)index needsNSConversion:(BOOL)conversion
{
  if (iD)
  {
    iDCopy = iD;
  }

  else
  {
    iDCopy = @"Default";
  }

  v10 = [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if ([v10 count] <= index)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v10 objectAtIndex:index];
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

  v15 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"Localized Fonts"}];
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

- (BOOL)posterTimeIsStaticForEffectID:(id)d andPresetID:(id)iD
{
  if (iD)
  {
    iDCopy = iD;
  }

  else
  {
    iDCopy = @"Default";
  }

  v7 = [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if (v7 || (v7 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"posterTimeIsStatic"}]) != 0)
  {

    LOBYTE(v7) = [v7 BOOLValue];
  }

  return v7;
}

- (id)showTimeScriptForEffectID:(id)d atSlideIndex:(int64_t)index
{
  v5 = [(MPEffectManager *)self imageInputInfoForEffectID:d];
  if ([v5 count] <= index)
  {
    lastObject = [v5 lastObject];
  }

  else
  {
    lastObject = [v5 objectAtIndex:index];
  }

  return [lastObject objectForKey:@"showTimeScript"];
}

- (double)minimumEffectDurationForEffectID:(id)d
{
  dCopy = d;
  if ([d rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    dCopy = [dCopy substringToIndex:{objc_msgSend(dCopy, "rangeOfString:", @"/"}];
  }

  v5 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{dCopy), "objectForKey:", @"minimumEffectDuration"}];
  if (!v5)
  {
    return 0.0;
  }

  [v5 doubleValue];
  return result;
}

- (id)sizeScriptForEffectID:(id)d atIndex:(int64_t)index
{
  v5 = [(MPEffectManager *)self imageInputInfoForEffectID:d];
  if ([v5 count] <= index)
  {
    lastObject = [v5 lastObject];
  }

  else
  {
    lastObject = [v5 objectAtIndex:index];
  }

  return [lastObject objectForKey:@"sizeScript"];
}

- (double)defaultFullDurationForEffectID:(id)d
{
  v5 = [MPUtilities idOfCombinedID:?];
  v9 = 0.0;
  v10 = 0.0;
  if (v5)
  {
    dCopy = v5;
  }

  else
  {
    dCopy = d;
  }

  v8 = 0.0;
  [(MPEffectManager *)self defaultDurationsForEffectID:dCopy phaseInDuration:&v10 mainDuration:&v9 phaseOutDuration:&v8];
  return v10 + v9 + v8;
}

- (unint64_t)numOfImagesForEffectPresetID:(id)d
{
  dCopy = d;
  if ([d rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    dCopy = [dCopy substringToIndex:{objc_msgSend(dCopy, "rangeOfString:", @"/"}];
  }

  return [(MPEffectManager *)self numberOfSlidesForEffectID:dCopy];
}

- (unint64_t)maxNumOfImagesPerEffectInList:(id)list
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [list countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(list);
      }

      v10 = [(MPEffectManager *)self numberOfSlidesForEffectID:*(*(&v12 + 1) + 8 * i)];
      if (v10 > v7)
      {
        v7 = v10;
      }
    }

    v6 = [list countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v6);
  return v7;
}

- (unint64_t)minNumOfImagesPerEffectInList:(id)list
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [list countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(list);
      }

      v10 = [(MPEffectManager *)self numberOfSlidesForEffectID:*(*(&v12 + 1) + 8 * i)];
      if (v10 < v8)
      {
        v8 = v10;
      }
    }

    v6 = [list countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v6);
  return v8;
}

- (BOOL)effectNeedsRandomSeedInformation:(id)information
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{information), "objectForKey:", @"needsRandomSeed"}];

  return [v3 BOOLValue];
}

- (BOOL)effectNeedsPanoInformation:(id)information
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{information), "objectForKey:", @"needsPanoInformation"}];

  return [v3 BOOLValue];
}

- (BOOL)effectDoesAccumulate:(id)accumulate
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{accumulate), "objectForKey:", @"accumulates"}];

  return [v3 BOOLValue];
}

- (id)mediaAspectRatioHintsForEffectID:(id)d usingPresetID:(id)iD defaultAspectRatio:(double)ratio
{
  v9 = [NSString stringWithFormat:@"hint/%@/%@/%f", d, iD, *&ratio];
  v10 = [(NSMutableDictionary *)self->mCachedAspectRatios objectForKey:v9];
  if (!v10)
  {
    v10 = +[NSMutableDictionary dictionary];
    v11 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [-[MPEffectManager imageInputInfoForEffectID:](self imageInputInfoForEffectID:{d), "count"}];
    }

    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        [(MPEffectManager *)self mediaAspectRatioHintForEffectID:d usingAttributes:[(MPEffectManager *)self attributesForEffectID:d andPresetID:iD] atIndex:i defaultAspectRatio:ratio];
        *&v13 = v13;
        [v10 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v13), ImageKey(i)}];
      }
    }

    [(NSMutableDictionary *)self->mCachedAspectRatios setObject:v10 forKey:v9];
  }

  return v10;
}

- (int64_t)panoTypeForSlideAtIndex:(int64_t)index inEffect:(id)effect forPresetID:(id)d
{
  index = [NSString stringWithFormat:@"%@/%@-%ld", effect, d, index];
  v10 = [(NSMutableDictionary *)self->mCachedBreakInfo objectForKey:index];
  if (v10)
  {

    return [v10 integerValue];
  }

  else
  {
    v12 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    v13 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    v14 = [objc_msgSend(v12 objectAtIndex:{index), "objectForKey:", @"panoType"}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v14 integerValue];
    }

    else if (v14)
    {
      selfCopy = self;
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
      integerValue = v25;

      self = selfCopy;
    }

    else
    {
      integerValue = 0;
    }

    [(NSMutableDictionary *)self->mCachedBreakInfo setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:integerValue], index];
    return integerValue;
  }
}

- (double)mediaAspectRatioHintForEffectID:(id)d usingAttributes:(id)attributes atIndex:(int64_t)index defaultAspectRatio:(double)ratio
{
  v11 = [(MPEffectManager *)self imageInputInfoForEffectID:?];
  v12 = [v11 count];
  if ((v12 - 1) >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = (v12 - 1);
  }

  v14 = [objc_msgSend(v11 objectAtIndex:{indexCopy), "objectForKey:", @"aspectRatioHint"}];
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
        v18 = [attributes countByEnumeratingWithState:&v28 objects:v32 count:16];
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
                objc_enumerationMutation(attributes);
              }

              v22 = *(*(&v28 + 1) + 8 * i);
              v23 = [attributes objectForKey:v22];
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

            v19 = [attributes countByEnumeratingWithState:&v28 objects:v32 count:16];
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

    [(MPEffectManager *)self mediaAspectRatioForEffectID:d usingAttributes:attributes atIndex:index defaultAspectRatio:ratio];
  }

  return result;
}

- (double)mediaAspectRatioForEffectID:(id)d usingAttributes:(id)attributes atIndex:(int64_t)index defaultAspectRatio:(double)ratio imageAspectRatio:(double)aspectRatio
{
  v12 = [(MPEffectManager *)self imageInputInfoForEffectID:?];
  v13 = [v12 count];
  if ((v13 - 1) >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = (v13 - 1);
  }

  v15 = [objc_msgSend(v12 objectAtIndex:{indexCopy), "objectForKey:", @"sizeScript"}];
  if (v15 && (v16 = v15, v17 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", ratio), @"layerWidth", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", 1.0), @"layerHeight", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager, "sharedManager"), "numOfImagesForEffectID:", d)), @"numOfImages", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", aspectRatio), @"imageAspectRatio", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", index), @"indexOfImage", 0}], v18 = +[MPUtilities executeScript:withHeader:andAttributes:](MPUtilities, "executeScript:withHeader:andAttributes:", v16, v17, attributes), v17, v19 = CGSizeFromString(v18), v19.height > 0.0))
  {
    return v19.width / v19.height;
  }

  else
  {
    return 9.22337204e18;
  }
}

- (double)panoramaScaleOffsetForEffectID:(id)d
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"panoramaScaleOffset"}];
  if (!v3)
  {
    return 0.0;
  }

  [v3 doubleValue];
  return result;
}

- (double)durationPaddingForEffectID:(id)d
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mEffects objectForKey:{d), "objectForKey:", @"durationPadding"}];
  if (!v3)
  {
    return 0.0;
  }

  [v3 doubleValue];
  return result;
}

- (BOOL)useUppercaseForEffectID:(id)d presetID:(id)iD forTextAtIndex:(int64_t)index
{
  if (iD)
  {
    iDCopy = iD;
  }

  else
  {
    iDCopy = @"Default";
  }

  v7 = [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if ([v7 count] <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:index];
  }

  v9 = [v8 objectForKey:@"uppercase"];
  if (v9)
  {

    LOBYTE(v9) = [v9 BOOLValue];
  }

  return v9;
}

- (BOOL)allowTextCustomizationForEffectID:(id)d presetID:(id)iD forTextAtIndex:(int64_t)index
{
  if (iD)
  {
    iDCopy = iD;
  }

  else
  {
    iDCopy = @"Default";
  }

  v7 = [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if ([v7 count] <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:index];
  }

  v9 = [v8 objectForKey:@"allowCustomization"];
  if (!v9)
  {
    return 1;
  }

  return [v9 BOOLValue];
}

+ (void)loadEffectManagerWithPaths:(id)paths
{
  if (qword_1EF2D8)
  {

    qword_1EF2D8 = 0;
  }

  qword_1EF2D8 = [[MPEffectManager alloc] initWithPaths:paths];
}

- (MPEffectManager)initWithPaths:(id)paths
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
    if (paths)
    {
      [v6 addObjectsFromArray:paths];
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

- (void)_loadFontsFromPath:(id)path requiredFonts:(id)fonts
{
  if ([+[NSFileManager fileExistsAtPath:path], "fileExistsAtPath:", path])
  {
    path = [+[NSFileManager defaultManager](NSFileManager enumeratorAtPath:"enumeratorAtPath:", path];
    nextObject = [(NSDirectoryEnumerator *)path nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      do
      {
        v9 = +[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", [path stringByAppendingPathComponent:nextObject2]);
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

        nextObject2 = [(NSDirectoryEnumerator *)path nextObject];
      }

      while (nextObject2);
    }
  }
}

@end