@interface OpusNewClassicProducer
- (BOOL)_authorBootstrap:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (BOOL)_authorCluster:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (BOOL)_authorFinish:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (BOOL)_authorProduce:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (BOOL)liveAuthorInitialBootstrap:(id)a3 error:(id *)a4;
- (BOOL)needsLiveAuthoring;
- (BOOL)resetLiveAuthoring;
- (OpusNewClassicProducer)init;
- (float)currentLiveAuthoringProgress;
- (float)liveAuthoringProgressForMediaItem:(id)a3;
- (id)_addPageForMediaItem:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (id)_contentModeOfPageForAllResolutions:(double)a3;
- (id)_createContentEffectSettingsForMediatItemAtIndex:(unint64_t)a3 metadata:(id)a4;
- (id)_fontSizesFromScreenSizes:(id)a3;
- (id)_setupResolutions;
- (id)_titleFramesFromScreenSizes:(id)a3;
- (id)liveAuthorNextChunk:(id)a3 error:(id *)a4;
- (id)stringForTransitionDirection:(unint64_t)a3;
- (id)transitionForType:(id)a3 withDuration:(double)a4 withDirection:(unint64_t)a5;
- (unint64_t)totalNumberOfLiveAuthoringItems;
- (void)_addSynopsisGuideline:(id)a3 forPageName:(id)a4 withTextItem:(id)a5;
- (void)_initCouchPotatoSettings;
- (void)_initDurationsForMediaItems:(id)a3;
- (void)_initNavigatorSettings;
- (void)_initTemplates;
- (void)dealloc;
@end

@implementation OpusNewClassicProducer

- (OpusNewClassicProducer)init
{
  v3.receiver = self;
  v3.super_class = OpusNewClassicProducer;
  result = [(OpusNewClassicProducer *)&v3 init];
  if (result)
  {
    result->_currentFeederIndex = 0;
    result->_synopsisGroups = 0;
  }

  return result;
}

- (void)dealloc
{
  couchStepDurations = self->_couchStepDurations;
  if (couchStepDurations)
  {

    self->_couchStepDurations = 0;
  }

  synopsisGroups = self->_synopsisGroups;
  if (synopsisGroups)
  {

    self->_synopsisGroups = 0;
  }

  v5.receiver = self;
  v5.super_class = OpusNewClassicProducer;
  [(OpusNewClassicProducer *)&v5 dealloc];
}

- (id)_createContentEffectSettingsForMediatItemAtIndex:(unint64_t)a3 metadata:(id)a4
{
  v7 = +[NSMutableDictionary dictionary];
  v8 = [NSMutableDictionary dictionaryWithDictionary:&off_91C0];
  [a4 aspectRatio];
  if (v9 >= 2.0)
  {
    v11 = 1;
  }

  else
  {
    [a4 aspectRatio];
    v11 = v10 <= 0.5;
  }

  v12 = [objc_msgSend(objc_msgSend(objc_msgSend(-[OpusNewClassicProducer presentation](self "presentation")];
  if (v11)
  {
    if (v12)
    {
      transitionPanningType = @"randomFit";
    }

    else
    {
      transitionPanningType = @"randomFill";
    }
  }

  else
  {
    if ([a4 hasRegionsOfInterest])
    {
      v28 = a3;
      v29 = v8;
      v14 = [a4 regionsOfInterest];
      v15 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v14, "count")}];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v31;
        v19 = kOKMediaItemMetadataRegionOfInterestBounds;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v21 = [*(*(&v30 + 1) + 8 * i) objectForKeyedSubscript:v19];
            if (v21)
            {
              [v15 addObject:v21];
            }
          }

          v17 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v17);
      }

      [v7 setObject:v15 forKey:@"mediaItemRegionsOfInterest"];
      a3 = v28;
      v8 = v29;
    }

    if (self->_transitionPanningType)
    {
      transitionPanningType = self->_transitionPanningType;
    }

    else
    {
      transitionPanningType = @"fullMediaFill";
    }
  }

  [v7 setObject:transitionPanningType forKey:kOKWidgetContentEffectSettingPanningType];
  v22 = arc4random();
  [v7 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", arc4random() | (v22 << 32)), kOKWidgetContentEffectSettingSeed}];
  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"autoplay"];
  [a4 aspectRatio];
  [v7 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"mediaItemAspectRatio"}];
  if (v11)
  {
    v23 = kOKWidgetContentEffectSettingKenBurnsSpeedMitigator;
    v24 = &off_92D8;
  }

  else
  {
    couchStepDurations = self->_couchStepDurations;
    if (couchStepDurations)
    {
      v24 = [(NSMutableArray *)couchStepDurations objectAtIndexedSubscript:a3];
    }

    else
    {
      v24 = &off_92E8;
    }

    v23 = kOKWidgetContentEffectSettingKBDuration;
  }

  [v7 setObject:v24 forKeyedSubscript:v23];
  v26 = [NSNumber numberWithDouble:self->_transitionDuration + self->_transitionDuration];
  [v7 setObject:v26 forKeyedSubscript:kOKWidgetContentEffectSettingKenBurnsDurationPadding];
  [(NSMutableDictionary *)v8 setObject:v7 forKey:@"settings"];
  return v8;
}

- (id)transitionForType:(id)a3 withDuration:(double)a4 withDirection:(unint64_t)a5
{
  if (a4 <= 0.1)
  {
    NSLog(@"ERROR: invalid transition duration: %.3f", *&a4);
    return 0;
  }

  v9 = [NSString stringWithFormat:@"OKTransition%@", a3];
  v10 = [(OpusNewClassicProducer *)self stringForTransitionDirection:a5];
  if ([a3 isEqualToString:@"Dissolve"])
  {
    v10 = 0;
  }

  else
  {
    if ([a3 isEqualToString:@"Control"])
    {
      v9 = @"OKTransitionParallaxControl";
      goto LABEL_16;
    }

    if ([a3 isEqualToString:@"Uncover"])
    {
      v9 = @"OKTransitionParallaxReveal";
      goto LABEL_16;
    }

    if ([a3 isEqualToString:@"Cover"])
    {
      v9 = @"OKTransitionParallaxMoveIn";
      goto LABEL_16;
    }

    if ([a3 isEqualToString:@"FadeThruColor"])
    {
      v9 = @"OKTransitionFadeThruColor";
      goto LABEL_16;
    }
  }

  if (!v9)
  {
    NSLog(@"ERROR: unknown transition: %@", a3);
    return 0;
  }

LABEL_16:
  v11 = +[NSMutableDictionary dictionary];
  v12 = +[NSMutableDictionary dictionary];
  v13 = v12;
  if (v10)
  {
    [v12 setValue:v10 forKey:@"direction"];
  }

  [v13 setValue:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", a4), @"duration"}];
  [v11 setValue:v9 forKey:@"class"];
  [v11 setValue:v13 forKey:@"settings"];
  return v11;
}

- (id)stringForTransitionDirection:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_8280 + a3 - 1);
  }
}

- (void)_addSynopsisGuideline:(id)a3 forPageName:(id)a4 withTextItem:(id)a5
{
  v17[0] = &off_9328;
  v16[0] = kOKPresentationGuidelineAuthoringSynopsisItemType;
  v16[1] = kOKPresentationGuidelineAuthoringSynopsisItemValue;
  v17[1] = [objc_msgSend(a3 "uniqueURL")];
  v16[2] = kOKPresentationGuidelineAuthoringSynopsisItemNavigationKeyPath;
  v17[2] = [a4 stringByAppendingString:@".media"];
  v8 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
  if (a5)
  {
    v15[0] = a5;
    v15[1] = v8;
    v9 = v15;
    v10 = 2;
  }

  else
  {
    v14 = v8;
    v9 = &v14;
    v10 = 1;
  }

  v11 = [NSArray arrayWithObjects:v9 count:v10];
  v12[0] = kOKPresentationGuidelineAuthoringSynopsisGroupName;
  v12[1] = kOKPresentationGuidelineAuthoringSynopsisGroupItems;
  v13[0] = a4;
  v13[1] = v11;
  [(NSMutableArray *)self->_synopsisGroups addObject:[NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2]];
}

- (id)_addPageForMediaItem:(id)a3 progressBlock:(id)a4 error:(id *)a5
{
  v9 = [objc_msgSend(objc_msgSend(-[OpusNewClassicProducer presentation](self "presentation")];
  v10 = [NSString stringWithFormat:@"page%ld", v9 + 1];
  v11 = [NSString stringWithFormat:@"\ndocument.mainNavigator.navigateToNext();"];
  v52 = a3;
  v12 = [a3 metadataWithProgress:a4 error:a5];
  v13 = [objc_msgSend(objc_msgSend(objc_msgSend(-[OpusNewClassicProducer presentation](self "presentation")];
  v14 = [v12 type] != &dword_0 + 3;
  if (!v12)
  {
    return 0;
  }

  v51 = v12;
  if (v9)
  {
    couchStepDurations = self->_couchStepDurations;
    if (couchStepDurations)
    {
      ++self->_couchStepDurationIndex;
      [-[NSMutableArray objectAtIndexedSubscript:](couchStepDurations "objectAtIndexedSubscript:"doubleValue"")];
      v17 = v16;
    }

    else
    {
      v17 = 0.0;
    }

    v19 = [OKPresentationCouchStep couchStepWithAnchorPageName:[NSString stringWithFormat:@"page%ld-intermediate" script:v9] duration:v11 settings:&__NSDictionary0__struct, v17];
    v61 = [NSString stringWithFormat:@"mainNavigator.pages.%@", v10];
    [(OKPresentationCouchStep *)v19 setDependencies:[NSArray arrayWithObjects:&v61 count:1]];
    [objc_msgSend(-[OpusNewClassicProducer presentation](self "presentation")];
  }

  v20 = 0.0;
  if (!v13)
  {
    v14 = 0;
LABEL_13:
    self->_transitionDuration = v20;
    goto LABEL_14;
  }

  self->_transitionDuration = 1.0;
  self->_transitionPanningType = 0;
  v21 = [-[OpusNewClassicProducer presentation](self "presentation")];
  if (v21)
  {
    v22 = v21;
    self->_transitionPanningType = [v21 objectForKeyedSubscript:@"panningType"];
    if (([objc_msgSend(v22 objectForKeyedSubscript:{@"transitionDisabled", "BOOLValue"}] & 1) == 0)
    {
      [objc_msgSend(v22 valueForKey:{@"transitionDuration", "doubleValue"}];
      v20 = v23;
    }

    goto LABEL_13;
  }

LABEL_14:
  v24 = [-[OpusNewClassicProducer presentation](self "presentation")];
  v25 = [NSString stringWithFormat:@"page%ld", v9 + 1];
  v59 = @"media.url";
  v60 = [objc_msgSend(a3 "uniqueURL")];
  v26 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1]];
  [(NSMutableDictionary *)v26 setObject:@"page.data = null;" forKey:@"didAppearActionScript"];
  if (v14)
  {
    v58 = [(OpusNewClassicProducer *)self _createContentEffectSettingsForMediatItemAtIndex:self->_couchStepDurationIndex metadata:v51];
    [(NSMutableDictionary *)v26 setObject:[NSArray forKey:"arrayWithObjects:count:" arrayWithObjects:1 count:?], @"media.contentEffects"];
    [(NSMutableDictionary *)v26 setObject:+[UIColor forKey:"blackColor"], @"media.backgroundColor"];
    v27 = &__kCFBooleanFalse;
    v28 = @"media.shouldFitRegionOfInterest";
LABEL_18:
    [(NSMutableDictionary *)v26 setObject:v27 forKeyedSubscript:v28];
    goto LABEL_19;
  }

  if (v24)
  {
    [(NSDictionary *)v24 offset];
    v27 = [NSValue valueWithCGPoint:?];
    v28 = @"media.offset";
    goto LABEL_18;
  }

LABEL_19:
  v29 = [-[OpusNewClassicProducer presentation](self "presentation")];
  v30 = [-[OpusNewClassicProducer presentation](self "presentation")];
  if (!v9)
  {
    v31 = v30;
    if (v29 | v30)
    {
      if (v30)
      {
        v32 = @"title.attributedText";
        v33 = v26;
      }

      else
      {
        v32 = @"title.text";
        v33 = v26;
        v31 = v29;
      }

      [(NSMutableDictionary *)v33 setObject:v31 forKeyedSubscript:v32];
      if (self->_synopsisGroups)
      {
        v57[0] = &off_9340;
        v56[0] = kOKPresentationGuidelineAuthoringSynopsisItemType;
        v56[1] = kOKPresentationGuidelineAuthoringSynopsisItemNavigationKeyPath;
        v57[1] = [(NSString *)v25 stringByAppendingString:@".title"];
        v24 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:2];
      }

      else
      {
        v24 = 0;
      }

      v40 = 0;
      v39 = 1;
      goto LABEL_41;
    }
  }

  if (!v24)
  {
    v39 = 0;
LABEL_29:
    v40 = 0;
    goto LABEL_41;
  }

  v34 = [(NSDictionary *)v24 text];
  v35 = [(NSDictionary *)v24 attributedText];
  if (!(v34 | v35))
  {
    v39 = 0;
    v24 = 0;
    goto LABEL_29;
  }

  v36 = v35;
  if (v35)
  {
    v37 = @"subtitle.attributedText";
    v38 = v26;
  }

  else
  {
    v37 = @"subtitle.text";
    v38 = v26;
    v36 = v34;
  }

  [(NSMutableDictionary *)v38 setObject:v36 forKeyedSubscript:v37];
  if (self->_synopsisGroups)
  {
    v55[0] = &off_9340;
    v54[0] = kOKPresentationGuidelineAuthoringSynopsisItemType;
    v54[1] = kOKPresentationGuidelineAuthoringSynopsisItemNavigationKeyPath;
    v55[1] = [(NSString *)v25 stringByAppendingString:@".subtitle"];
    v24 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];
    v39 = 0;
  }

  else
  {
    v39 = 0;
    v24 = 0;
  }

  v40 = 1;
LABEL_41:
  if ([objc_msgSend(objc_msgSend(objc_msgSend(-[OpusNewClassicProducer presentation](self presentation])
  {
    [v51 aspectRatio];
    v41 = [(OpusNewClassicProducer *)self _contentModeOfPageForAllResolutions:?];
    if (v41)
    {
      [(NSMutableDictionary *)v26 setObject:v41 forKey:@"media.@contentMode"];
    }
  }

  v42 = @"SimplePage";
  if (v40)
  {
    v42 = @"SubtitlePage";
  }

  if (v39)
  {
    v43 = @"TitlePage";
  }

  else
  {
    v43 = v42;
  }

  v44 = [OKPresentationPage pageWithName:v25 templateName:v43 navigatorName:0 properties:0 settings:v26 userData:0 widgets:0];
  [-[OpusNewClassicProducer presentation](self "presentation")];
  if (self->_synopsisGroups)
  {
    [(OpusNewClassicProducer *)self _addSynopsisGuideline:v52 forPageName:v25 withTextItem:v24];
  }

  [objc_msgSend(-[OpusNewClassicProducer presentation](self "presentation")];
  if (!v9)
  {
    v48 = kOKPresentationThumbnailNavigatorName;
    v49 = [OKPresentationPage pageWithName:[NSString stringWithFormat:@"%@-%@" templateName:v25 navigatorName:kOKPresentationThumbnailNavigatorName] properties:v43 settings:0 userData:0 widgets:v26, 0, 0];
    [-[OpusNewClassicProducer presentation](self "presentation")];
    v53 = [(OKPresentationPage *)v49 name];
    [-[OpusNewClassicProducer presentation](self "presentation")];
    if (!v40)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v40)
  {
LABEL_53:
    [objc_msgSend(-[OKPresentationPage widgetWithName:](v44 widgetWithName:{@"subtitle", "userSettings"), "setObject:forKeyedSubscript:", objc_msgSend(objc_msgSend(v52, "uniqueURL"), "absoluteString"), @"associatedMediaURL"}];
  }

LABEL_54:
  v45 = [NSString stringWithFormat:@"playAllWidgetsTogetherWithEarlyCompletionNotice(document, page, [media], %f);", *&self->_transitionDuration];
  v46 = self->_couchStepDurations;
  if (v46)
  {
    ++self->_couchStepDurationIndex;
    [-[NSMutableArray objectAtIndexedSubscript:](v46 "objectAtIndexedSubscript:"doubleValue"")];
  }

  else
  {
    v47 = -1.0;
  }

  v50 = [OKPresentationCouchStep couchStepWithAnchorPageName:v25 script:v45 duration:&__NSDictionary0__struct settings:v47];
  [(OKPresentationCouchStep *)v50 setIgnoresBusiness:[(NSString *)v45 length]== 0];
  [objc_msgSend(-[OpusNewClassicProducer presentation](self "presentation")];
  return &off_9370;
}

- (id)_contentModeOfPageForAllResolutions:(double)a3
{
  v5 = +[NSMutableDictionary dictionary];
  v6 = [-[OpusNewClassicProducer presentation](self "presentation")];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  result = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (result)
  {
    v8 = result;
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v18 + 1) + 8 * i) CGSizeValue];
        v14 = v12 / v13;
        if (v12 / v13 <= a3)
        {
          v15 = (a3 - v14) / a3;
        }

        else
        {
          v15 = (1.0 / a3 + -1.0 / v14) / (1.0 / a3);
        }

        v16 = [OKRuntime resolutionStringWithSize:1 keepAspectRatio:?];
        if (v15 >= 0.2)
        {
          v17 = @"scaleAspectFit";
        }

        else
        {
          v17 = @"scaleAspectFill";
        }

        v9 |= v15 < 0.2;
        [v5 setObject:v17 forKey:v16];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
    if (v9)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)_setupResolutions
{
  v3 = [-[OpusNewClassicProducer presentation](self "presentation")];
  if (v3 && (v4 = v3, [v3 count]))
  {
    v18 = self;
    v5 = +[NSMutableArray array];
    v6 = +[NSMutableDictionary dictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v19 + 1) + 8 * v10) CGSizeValue];
          v12 = v11;
          v14 = v13;
          v15 = [OKRuntime resolutionStringWithSize:0 keepAspectRatio:?];
          v16 = [OKRuntime resolutionStringWithSize:1 keepAspectRatio:v12, v14];
          [v5 addObject:v15];
          [v6 setObject:+[NSValue valueWithCGRect:](NSValue forKey:{"valueWithCGRect:", 0.0, 0.0, v12, v14), v16}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    [objc_msgSend(-[OpusNewClassicProducer presentation](v18 "presentation")];
  }

  else
  {
    [objc_msgSend(-[OpusNewClassicProducer presentation](self "presentation")];
    v24[0] = OKResolutionString1024x768;
    v24[1] = OKResolutionString768x1024;
    v25[0] = @"{{0, 0}, {1024, 768}}";
    v25[1] = @"{{0, 0}, {768, 1024}}";
    return [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  }

  return v6;
}

- (id)_titleFramesFromScreenSizes:(id)a3
{
  v4 = +[NSMutableDictionary dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [objc_msgSend(a3 objectForKeyedSubscript:{v10), "CGRectValue"}];
        [v4 setObject:+[NSValue valueWithCGRect:](NSValue forKey:{"valueWithCGRect:"), v10}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_fontSizesFromScreenSizes:(id)a3
{
  v4 = +[NSMutableDictionary dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 containsString:@"320"])
        {
          v11 = 32;
        }

        else if ([v10 containsString:@"1024"])
        {
          v11 = 48;
        }

        else if ([v10 containsString:@"1920"])
        {
          v11 = 72;
        }

        else
        {
          v11 = 48;
        }

        [v4 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", v11), v10}];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_initTemplates
{
  v3 = +[UIColor clearColor];
  v4 = [-[OpusNewClassicProducer presentation](self "presentation")];
  v5 = [v4 objectForKeyedSubscript:@"transitionID"];
  v6 = [objc_msgSend(v4 objectForKeyedSubscript:{@"transitionWantsOpaquePages", "BOOLValue"}];
  if (([v5 isEqualToString:@"Dissolve"] & 1) != 0 || v6)
  {
    v3 = +[UIColor blackColor];
  }

  v19 = v3;
  v7 = [(OpusNewClassicProducer *)self _setupResolutions];
  v8 = [(OpusNewClassicProducer *)self _titleFramesFromScreenSizes:v7];
  v9 = [(OpusNewClassicProducer *)self _fontSizesFromScreenSizes:v7];
  v10 = [objc_msgSend(objc_msgSend(objc_msgSend(-[OpusNewClassicProducer presentation](self "presentation")];
  v27[0] = @"fontName";
  v27[1] = @"@fontSize";
  v28[0] = @"Avenir-Black";
  v28[1] = v9;
  v27[2] = @"@frame";
  v27[3] = @"textColor";
  v11 = @"scaleAspectFill";
  v28[2] = v8;
  v28[3] = @"{1,1,1,0.9}";
  v27[4] = @"textAlignment";
  v27[5] = @"numberOfLines";
  v28[4] = @"center";
  v28[5] = &off_9358;
  v27[6] = @"lineBreakMode";
  v27[7] = @"minimumScaleFactor";
  v28[6] = @"truncatingTail";
  v28[7] = &off_92F8;
  v27[8] = @"textShadowOffset";
  if (v10)
  {
    v11 = @"scaleAspectFit";
  }

  v18 = v11;
  v27[9] = @"textShadowColor";
  v28[8] = [NSValue valueWithCGSize:1.0, 1.0];
  v28[9] = @"{0,0,0,.67}";
  v12 = [OKPresentationWidget widgetWithName:@"title" templateName:0 className:@"OKWidgetLabelView" settings:[NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:10] userData:0 subWidgets:0 materials:0];
  v25[0] = @"fontName";
  v25[1] = @"@fontSize";
  v26[0] = @"Avenir-Oblique";
  v26[1] = v9;
  v25[2] = @"@frame";
  v25[3] = @"textColor";
  v26[2] = v8;
  v26[3] = @"{1,1,1,0.9}";
  v25[4] = @"textAlignment";
  v25[5] = @"numberOfLines";
  v26[4] = @"center";
  v26[5] = &off_9358;
  v25[6] = @"lineBreakMode";
  v25[7] = @"minimumScaleFactor";
  v26[6] = @"truncatingTail";
  v26[7] = &off_92F8;
  v25[8] = @"textShadowOffset";
  v25[9] = @"textShadowColor";
  v26[8] = [NSValue valueWithCGSize:1.0, 1.0];
  v26[9] = @"{0,0,0,.67}";
  v13 = [OKPresentationWidget widgetWithName:@"title" templateName:0 className:@"OKWidgetLabelView" settings:[NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:10] userData:0 subWidgets:0 materials:0];
  [-[OpusNewClassicProducer presentation](self "presentation")];
  v23[0] = @"@frame";
  v23[1] = @"contentMode";
  v24[0] = v7;
  v24[1] = v18;
  v23[2] = @"backgroundColor";
  v23[3] = @"disablePlayButton";
  v24[2] = v19;
  v24[3] = &__kCFBooleanTrue;
  v14 = [OKPresentationWidget widgetWithName:@"media" templateName:0 className:@"OKWidgetMediaView" settings:[NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4] userData:0 subWidgets:0 materials:0];
  [-[OpusNewClassicProducer presentation](self "presentation")];
  v22 = v14;
  v15 = [OKPresentationPage pageWithName:@"SimplePage" templateName:0 navigatorName:0 properties:0 settings:0 userData:0 widgets:[NSArray arrayWithObjects:&v22 count:1]];
  v21[0] = v12;
  v21[1] = v14;
  v16 = [OKPresentationPage pageWithName:@"TitlePage" templateName:0 navigatorName:0 properties:0 settings:0 userData:0 widgets:[NSArray arrayWithObjects:v21 count:2]];
  v20[0] = v13;
  v20[1] = v14;
  v17 = [OKPresentationPage pageWithName:@"SubtitlePage" templateName:0 navigatorName:0 properties:0 settings:0 userData:0 widgets:[NSArray arrayWithObjects:v20 count:2]];
  [-[OpusNewClassicProducer presentation](self "presentation")];
  [-[OpusNewClassicProducer presentation](self "presentation")];
  [-[OpusNewClassicProducer presentation](self "presentation")];
}

- (void)_initCouchPotatoSettings
{
  v2 = [(OpusNewClassicProducer *)self presentation];
  v3 = [v2 info];
  [v3 setCouchPotatoSupported:1];
  [v3 setCouchPotatoDelay:0.0];
  [v2 guidelineAuthoringPageDuration];
  [v3 setCouchPotatoStepDuration:?];
  [v2 addCouch:{+[OKPresentationCouch couchWithName:settings:steps:restartScript:](OKPresentationCouch, "couchWithName:settings:steps:restartScript:", kOKPresentationRootNavigatorName, &__NSDictionary0__struct, 0, @"document.mainNavigator.navigateToPage('page1', true, info.completionBlock);")}];
  v4 = [v2 rootCouch];
  v5 = [OKPresentationCouchStep couchStepWithAnchorPageName:@"page1" script:@"document.mainNavigator.navigateToNext();" duration:&__NSDictionary0__struct settings:0.0];

  [v4 setLoopStep:v5];
}

- (void)_initNavigatorSettings
{
  [(OpusNewClassicProducer *)self _setupResolutions];
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:@"     pageName = info.keyPath.slice(0 forKeyedSubscript:{info.keyPath.indexOf(.));     navigator.gotoPage(pageName, info.animated, 0);     /*\tnavigator.pages[pageName].navigationScript(info.keyPath.slice(info.keyPath.indexOf(.) + 1, -1)); */     ", @"navigationScript"}];
  self->_transitionDuration = 1.0;
  [v3 setObject:&off_9210 forKeyedSubscript:@"overrideTransition"];
  v33[0] = @"class";
  v33[1] = @"settings";
  v34[0] = @"OKTransitionDissolve";
  v31 = @"duration";
  v32 = [NSNumber numberWithDouble:self->_transitionDuration];
  v34[1] = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  [v3 setObject:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v34, v33, 2), @"defaultTransition"}];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"wraps"];
  [v3 setObject:+[UIColor blackColor](UIColor forKeyedSubscript:{"blackColor"), @"backgroundColor"}];
  v4 = [-[OpusNewClassicProducer presentation](self "presentation")];
  if (v4)
  {
    v6 = v4;
    v7 = [v4 objectForKeyedSubscript:@"transitionID"];
    if ([objc_msgSend(v6 objectForKeyedSubscript:{@"transitionDisabled", "BOOLValue"}])
    {
      [v3 setObject:&off_9260 forKeyedSubscript:@"overrideTransition"];
      v8 = 0.0;
      v5 = &off_92B0;
LABEL_7:
      [v3 setObject:v5 forKeyedSubscript:@"defaultTransition"];
      self->_transitionDuration = v8;
      goto LABEL_8;
    }

    v9 = [objc_msgSend(v6 valueForKey:{@"transitionDirection", "unsignedIntegerValue"}];
    [objc_msgSend(v6 valueForKey:{@"transitionDuration", "doubleValue"}];
    v8 = v10;
    v11 = [(OpusNewClassicProducer *)self transitionForType:v7 withDuration:v9 withDirection:0.15];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"overrideTransition"];
    }

    v5 = [(OpusNewClassicProducer *)self transitionForType:v7 withDuration:v9 withDirection:v8];
    if (v5)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v12 = [-[OpusNewClassicProducer presentation](self presentation];
  if (v12)
  {
    [v3 setObject:v12 forKeyedSubscript:@"interactiveTransitionSettings"];
  }

  v13 = [-[OpusNewClassicProducer presentation](self "presentation")];
  if (v13)
  {
    v14 = v13;
    if ([v13 count])
    {
      v23 = v3;
      v15 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v14, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v16 = [v14 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v25;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v24 + 1) + 8 * i);
            v28 = @"url";
            v29 = [objc_msgSend(v20 "uniqueURL")];
            [v15 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v29, &v28, 1)}];
            [objc_msgSend(v20 "metadata")];
            self->_audioPlaylistDuration = v21 + self->_audioPlaylistDuration;
          }

          v17 = [v14 countByEnumeratingWithState:&v24 objects:v30 count:16];
        }

        while (v17);
      }

      v3 = v23;
      [v23 setObject:v15 forKeyedSubscript:@"audioPlaylist"];
      if ([-[OpusNewClassicProducer presentation](self "presentation")])
      {
        v22 = &__kCFBooleanFalse;
      }

      else
      {
        v22 = &__kCFBooleanTrue;
      }

      [v23 setObject:v22 forKeyedSubscript:@"audioPlaylistLoops"];
    }
  }

  [-[OpusNewClassicProducer presentation](self "presentation")];
}

- (void)_initDurationsForMediaItems:(id)a3
{
  [-[OpusNewClassicProducer presentation](self "presentation")];
  v6 = v5;
  v7 = objc_alloc_init(NSMutableArray);
  v44 = [-[OpusNewClassicProducer presentation](self "presentation")];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v8)
  {
    v45 = -1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v47;
  if (v6 <= 1.0)
  {
    v12 = v6;
  }

  else
  {
    v12 = 1.0;
  }

  v45 = -1;
  do
  {
    v13 = 0;
    v43 = v10;
    v14 = (v10 + 1);
    do
    {
      if (*v47 != v11)
      {
        objc_enumerationMutation(a3);
      }

      v15 = *(*(&v46 + 1) + 8 * v13);
      v16 = [-[OpusNewClassicProducer presentation](self "presentation")];
      if (v16)
      {
        [v16 duration];
        v18 = v17;
      }

      else
      {
        v18 = -1.0;
      }

      v19 = [v15 metadata];
      if ([v19 type] == &dword_0 + 3)
      {
        [v19 duration];
LABEL_16:
        [v7 addObject:{+[OFRescalableSegment nonRescalableSegmentWithDuration:](OFRescalableSegment, "nonRescalableSegmentWithDuration:", v20)}];
        goto LABEL_17;
      }

      if (v18 != -1.0)
      {
        v20 = v18;
        goto LABEL_16;
      }

      if (v44)
      {
        v21 = [OFRescalableSegment rescalableSegmentWithDefaultDuration:v6 minimumDuration:v12];
      }

      else
      {
        v21 = [OFRescalableSegment rescalableSegmentWithDefaultDuration:v6 minimumDuration:v12 maximumDuration:v6 * 5.0];
      }

      [v7 addObject:v21];
      if (v45 == -1)
      {
        v45 = [v7 count] - 1;
      }

LABEL_17:
      if (v14 < [a3 count])
      {
        [v7 addObject:{+[OFRescalableSegment nonRescalableSegmentWithDuration:](OFRescalableSegment, "nonRescalableSegmentWithDuration:", self->_transitionDuration)}];
      }

      ++v13;
      ++v14;
    }

    while (v9 != v13);
    v10 = &v9[v43];
    v22 = [a3 countByEnumeratingWithState:&v46 objects:v50 count:16];
    v9 = v22;
  }

  while (v22);
LABEL_29:
  v23 = [v7 count];
  v24 = malloc_type_malloc(8 * v23, 0x100004000313F17uLL);
  if (v23)
  {
    [-[OpusNewClassicProducer presentation](self "presentation")];
    v26 = v25;
    v27 = [[OFRescaler alloc] initWithSegments:v7];
    [v27 defaultDuration];
    if (!v44 || (audioPlaylistDuration = self->_audioPlaylistDuration, audioPlaylistDuration <= 0.0))
    {
      audioPlaylistDuration = v28;
      if (v26 > -1.0)
      {
        [v27 minimumDuration];
        v31 = v30;
        [v27 maximumDuration];
        v33 = v32;
        [v27 minimumDuration];
        audioPlaylistDuration = v31 + v26 * (v33 - v34);
      }
    }

    [v27 computeSegmentDurations:v24 forTotalDuration:audioPlaylistDuration];
    v36 = v35;
    [-[OpusNewClassicProducer presentation](self "presentation")];
    v37 = [(OpusNewClassicProducer *)self presentation];
    [v27 minimumDuration];
    [v37 addGuideline:{+[OKPresentationGuideline guidelineAuthoringMinimumDuration:](OKPresentationGuideline, "guidelineAuthoringMinimumDuration:")}];
    v38 = [(OpusNewClassicProducer *)self presentation];
    if ((v44 & 1) == 0)
    {
      [v27 maximumDuration];
      v36 = v39;
    }

    [v38 addGuideline:{+[OKPresentationGuideline guidelineAuthoringMaximumDuration:](OKPresentationGuideline, "guidelineAuthoringMaximumDuration:", v36)}];
    v40 = [(OpusNewClassicProducer *)self presentation];
    if (v45 != -1)
    {
      v6 = v24[v45];
    }

    [v40 addGuideline:{+[OKPresentationGuideline guidelineAuthoringCurrentPageDuration:](OKPresentationGuideline, "guidelineAuthoringCurrentPageDuration:", v6)}];
    if (v27)
    {
    }

    self->_couchStepDurations = [[NSMutableArray alloc] initWithCapacity:v23];
    v41 = v24;
    do
    {
      v42 = *v41++;
      [(NSMutableArray *)self->_couchStepDurations addObject:[NSNumber numberWithDouble:v42]];
      v23 = v23 - 1;
    }

    while (v23);
  }

  free(v24);
  if (v7)
  {
  }
}

- (BOOL)_authorBootstrap:(id)a3 progressBlock:(id)a4 error:(id *)a5
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ([objc_msgSend(-[OpusNewClassicProducer presentation](self presentation])
  {
    if ([objc_msgSend(objc_msgSend(-[OpusNewClassicProducer presentation](self "presentation")])
    {
      v8 = v15;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v9 = sub_3444;
    }

    else
    {
      v8 = v14;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v9 = sub_34AC;
    }
  }

  else
  {
    v8 = &v12;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v9 = sub_3514;
  }

  v8[2] = v9;
  v8[3] = &unk_8210;
  v8[4] = a4;
  v8[5] = &v16;
  [(OpusNewClassicProducer *)self cleanupPresentation:v12, v13];
  v10 = *(v17 + 24);
  if (v10 == 1)
  {
    if (a5)
    {
      *a5 = [NSError errorWithDomain:OKErrorDomain code:-4 userInfo:0];
    }
  }

  else
  {
    self->_synopsisGroups = objc_alloc_init(NSMutableArray);
  }

  _Block_object_dispose(&v16, 8);
  return v10 ^ 1;
}

- (BOOL)_authorCluster:(id)a3 progressBlock:(id)a4 error:(id *)a5
{
  v8 = 0;
  if (a4)
  {
    (*(a4 + 2))(a4, &v8, a3, 0.3);
    v6 = v8;
    if (a5 && (v8 & 1) != 0)
    {
      *a5 = [NSError errorWithDomain:OKErrorDomain code:-4 userInfo:0];
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) == 0;
}

- (BOOL)_authorProduce:(id)a3 progressBlock:(id)a4 error:(id *)a5
{
  v8 = [-[OpusNewClassicProducer presentation](self presentation];
  if (v8)
  {
    v9 = [v8 mediaItemsAtIndexes:{+[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, objc_msgSend(v8, "numberOfMediaItems"))}];
  }

  else
  {
    v9 = [-[OpusNewClassicProducer presentation](self "presentation")];
  }

  v10 = v9;
  [(OpusNewClassicProducer *)self _initTemplates];
  [(OpusNewClassicProducer *)self _initCouchPotatoSettings];
  [(OpusNewClassicProducer *)self _initNavigatorSettings];
  [(OpusNewClassicProducer *)self _initDurationsForMediaItems:v10];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
LABEL_6:
    v14 = 0;
    while (1)
    {
      if (*v20 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v19 + 1) + 8 * v14);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_37E4;
      v18[3] = &unk_8238;
      v18[4] = v10;
      v18[5] = a4;
      v16 = [(OpusNewClassicProducer *)self _addPageForMediaItem:v15 progressBlock:v18 error:a5];
      if (!v16)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    LOBYTE(v16) = 1;
  }

  return v16;
}

- (BOOL)_authorFinish:(id)a3 progressBlock:(id)a4 error:(id *)a5
{
  v11 = 0;
  v12[0] = kOKPresentationGuidelineAuthoringSynopsisCollectionName;
  v12[1] = kOKPresentationGuidelineAuthoringSynopsisCollectionGroups;
  synopsisGroups = self->_synopsisGroups;
  v13[0] = @"0";
  v13[1] = synopsisGroups;
  v14 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  [-[OpusNewClassicProducer presentation](self "presentation")];
  if (a4)
  {
    (*(a4 + 2))(a4, &v11, 1.0);
    v9 = v11;
    if (a5 && (v11 & 1) != 0)
    {
      *a5 = [NSError errorWithDomain:OKErrorDomain code:-4 userInfo:0];
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return (v9 & 1) == 0;
}

- (BOOL)needsLiveAuthoring
{
  objc_sync_enter(self);
  currentFeederIndex = self->_currentFeederIndex;
  LOBYTE(currentFeederIndex) = currentFeederIndex < [objc_msgSend(-[OpusNewClassicProducer presentation](self "presentation")];
  objc_sync_exit(self);
  return currentFeederIndex;
}

- (BOOL)resetLiveAuthoring
{
  objc_sync_enter(self);
  self->_currentFeederIndex = 0;
  objc_sync_exit(self);
  return 0;
}

- (BOOL)liveAuthorInitialBootstrap:(id)a3 error:(id *)a4
{
  v9 = 0;
  [(OpusNewClassicProducer *)self _initTemplates];
  if (!a3)
  {
    [(OpusNewClassicProducer *)self _initCouchPotatoSettings];
    [(OpusNewClassicProducer *)self _initNavigatorSettings];
    return 1;
  }

  (*(a3 + 2))(a3, &v9, 0.3);
  if (v9 != 1)
  {
    [(OpusNewClassicProducer *)self _initCouchPotatoSettings];
    (*(a3 + 2))(a3, &v9, 0.6);
    if (v9 != 1)
    {
      [(OpusNewClassicProducer *)self _initNavigatorSettings];
      (*(a3 + 2))(a3, &v9, 0.6);
      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }
  }

  if (!a4)
  {
    return 0;
  }

  v7 = [NSError errorWithDomain:OKErrorDomain code:-4 userInfo:0];
  result = 0;
  *a4 = v7;
  return result;
}

- (id)liveAuthorNextChunk:(id)a3 error:(id *)a4
{
  objc_sync_enter(self);
  v7 = [-[OpusNewClassicProducer presentation](self "presentation")];
  v8 = +[NSMutableSet set];
  currentFeederIndex = self->_currentFeederIndex;
  if (currentFeederIndex)
  {
    self->_currentFeederIndex = currentFeederIndex + 1;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_3ED0;
    v15[3] = &unk_8260;
    v15[4] = a3;
    v10 = -[OpusNewClassicProducer _addPageForMediaItem:progressBlock:error:](self, "_addPageForMediaItem:progressBlock:error:", [v7 mediaItemAtIndex:?], v15, a4);
  }

  else
  {
    self->_currentFeederIndex = 1;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_3E98;
    v17[3] = &unk_8260;
    v17[4] = a3;
    v11 = -[OpusNewClassicProducer _addPageForMediaItem:progressBlock:error:](self, "_addPageForMediaItem:progressBlock:error:", [v7 mediaItemAtIndex:?], v17, a4);
    if (!v11)
    {
      goto LABEL_9;
    }

    [v8 addObjectsFromArray:v11];
    v12 = self->_currentFeederIndex;
    if (v12 >= [objc_msgSend(-[OpusNewClassicProducer presentation](self "presentation")])
    {
      goto LABEL_8;
    }

    ++self->_currentFeederIndex;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_3EB0;
    v16[3] = &unk_8260;
    v16[4] = a3;
    v10 = -[OpusNewClassicProducer _addPageForMediaItem:progressBlock:error:](self, "_addPageForMediaItem:progressBlock:error:", [v7 mediaItemAtIndex:?], v16, a4);
  }

  if (!v10)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  [v8 addObjectsFromArray:v10];
LABEL_8:
  v13 = [v8 allObjects];
LABEL_10:
  objc_sync_exit(self);
  return v13;
}

- (unint64_t)totalNumberOfLiveAuthoringItems
{
  objc_sync_enter(self);
  v3 = [objc_msgSend(-[OpusNewClassicProducer presentation](self "presentation")];
  objc_sync_exit(self);
  return v3;
}

- (float)currentLiveAuthoringProgress
{
  objc_sync_enter(self);
  currentFeederIndex = self->_currentFeederIndex;
  v4 = (currentFeederIndex + 1) / [objc_msgSend(-[OpusNewClassicProducer presentation](self "presentation")];
  objc_sync_exit(self);
  return v4;
}

- (float)liveAuthoringProgressForMediaItem:(id)a3
{
  objc_sync_enter(self);
  v5 = [objc_msgSend(-[OpusNewClassicProducer presentation](self "presentation")];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 9.2234e18;
  }

  else
  {
    v6 = (v5 + 1) / [objc_msgSend(-[OpusNewClassicProducer presentation](self "presentation")];
  }

  objc_sync_exit(self);
  return v6;
}

@end