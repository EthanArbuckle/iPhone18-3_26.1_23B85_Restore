@interface MPAuthoringController
+ (id)sharedController;
+ (void)releaseSharedController;
- (BOOL)canDocumentFitToAudio:(id)a3 withOptions:(id)a4 requiredAudioDuration:(double *)a5;
- (BOOL)canLayerGroupFitToAudio:(id)a3 inDocument:(id)a4 withOptions:(id)a5 requiredAudioDuration:(double *)a6;
- (BOOL)determineIfSlideDisplayesForTheWholeDurationForEffect:(id)a3 presetID:(id)a4 atIndex:(int64_t)a5 inStyleID:(id)a6;
- (BOOL)imagesHaveMovie:(id)a3 start:(int64_t)a4 count:(int64_t)a5;
- (BOOL)prepareDocumentForExport:(id)a3 withOptions:(id)a4;
- (MPAuthoringController)init;
- (double)maximumDurationForLayer:(id)a3 inDocument:(id)a4 withOptions:(id)a5;
- (double)minimumDurationForLayer:(id)a3 inDocument:(id)a4 withOptions:(id)a5;
- (id)_addVideoPaths:(id)a3 toEndOfLayer:(id)a4 inDocument:(id)a5 withOptions:(id)a6;
- (id)_collectVersionInformationFromStyle:(id)a3;
- (id)_grabAndRemoveTitleEffectFromDocument:(id)a3 withOptions:(id)a4;
- (id)createAudioPlayListFromAudioPaths:(id)a3 andOptions:(id)a4;
- (id)createEffectToTransitionMapWithOptions:(id)a3;
- (id)createLayerWithImages:(id)a3 effects:(id)a4 andOptions:(id)a5;
- (id)dynamicLayerWithImages:(id)a3 withOptions:(id)a4;
- (id)effectAuthoredLayerWithImages:(id)a3 withOptions:(id)a4;
- (id)effectContainersWithImages:(id)a3 effects:(id)a4 andOptions:(id)a5;
- (id)effectContainersWithPaths:(id)a3 forDocument:(id)a4 withOptions:(id)a5;
- (id)effectsForImages:(id)a3 withOptions:(id)a4;
- (id)exportTransitionFromOptions:(id)a3;
- (id)filtersForEffectFromOptions:(id)a3;
- (id)filtersForLayerFromOptions:(id)a3;
- (id)filtersForSlideFromOptions:(id)a3;
- (id)findEffectIDInPresetArray:(id)a3 forImages:(id)a4 withOptions:(id)a5;
- (id)findEffectIDInWeighter:(id)a3 images:(id)a4 startingIndex:(int64_t)a5 count:(int64_t)a6 triesToFind:(int64_t *)a7 constraints:(id)a8 previousTags:(id)a9;
- (id)frameFromOptions:(id)a3;
- (id)loopTransitionFromOptions:(id)a3;
- (id)orderImages:(id)a3 withOptions:(id)a4;
- (id)pickRandomPathsInArray:(id)a3 excludingPaths:(id)a4 count:(int64_t)a5;
- (id)shuffleImagesByRating:(id)a3 withOptions:(id)a4;
- (id)slidesWithImages:(id)a3 andOptions:(id)a4;
- (id)sortImagePaths:(id)a3 toAspectRatiosInEffectPresetID:(id)a4 withOptions:(id)a5;
- (id)titleEffectsForImages:(id)a3 withOptions:(id)a4;
- (id)transitionFromOptions:(id)a3 firstEffectContainer:(id)a4 nextEffectContainer:(id)a5;
- (int64_t)_countOfEmptyContainersInIntroOfLayer:(id)a3 withOptions:(id)a4;
- (int64_t)_numberOfSlidesForOutroInLayer:(id)a3 withOptions:(id)a4;
- (int64_t)bestCountFromClusterForEffectWithImages:(id)a3 atStartIndex:(int64_t)a4 withWeighter:(id)a5 usedIndex:(int64_t *)a6;
- (unint64_t)authorDocument:(id)a3 withOptions:(id)a4;
- (unint64_t)authorLayerGroup:(id)a3 inDocument:(id)a4 withOptions:(id)a5;
- (void)_checkForEmptyLayersInDocument:(id)a3;
- (void)_readdTitleEffect:(id)a3 toDocument:(id)a4 withOptions:(id)a5;
- (void)_reorderImagesInDocument:(id)a3 withOptions:(id)a4;
- (void)addStyledCaptionToSlide:(id)a3 inDocument:(id)a4 withOptions:(id)a5;
- (void)authorPlacesWithImages:(id)a3 forLayerGroup:(id)a4 inDocument:(id)a5 withOptions:(id)a6;
- (void)beatAlignEffectContainers:(id)a3 toBeats:(id)a4 withOptions:(id)a5;
- (void)beatAlignLayer:(id)a3 toBeats:(id)a4 withOptions:(id)a5;
- (void)beatAlignLayers:(id)a3 toAudioPlaylist:(id)a4 forDocument:(id)a5 withOptions:(id)a6;
- (void)cacheROIInformationForImages:(id)a3 withOptions:(id)a4;
- (void)checkForOffsetsForLayers:(id)a3 withOptions:(id)a4;
- (void)cleanup:(BOOL)a3;
- (void)clearROICache;
- (void)combineEffectsNearSlide:(id)a3 inDocument:(id)a4 withOptions:(id)a5;
- (void)combineSlides:(id)a3 inDocument:(id)a4 withOptions:(id)a5;
- (void)configureFiltersInDocument:(id)a3 withOptions:(id)a4;
- (void)configureIntroInDocument:(id)a3 withOptions:(id)a4;
- (void)configureOutroInDocument:(id)a3 withOptions:(id)a4;
- (void)configurePanoramaInformationToEffect:(id)a3 inDocument:(id)a4 startingIndex:(int64_t)a5 count:(int64_t)a6 removeOldIndex:(int64_t)a7;
- (void)configureTransitionsInDocument:(id)a3 withOptions:(id)a4;
- (void)dealloc;
- (void)fillDurationsForLayers:(id)a3 withOptions:(id)a4;
- (void)findUsableClustersForUserDefinedSlideOrderPresentation:(id)a3 inClusters:(id)a4;
- (void)finishLogging;
- (void)insertVideoPaths:(id)a3 atIndex:(int64_t)a4 inDocument:(id)a5 withOptions:(id)a6;
- (void)matchDurationsForLayers:(id)a3 withOptions:(id)a4;
- (void)moveSlidesFromIndicies:(id)a3 toIndex:(int64_t)a4 inDocument:(id)a5 withOptions:(id)a6;
- (void)performInitialFaceDetectionInGroup:(id)a3 withOptions:(id)a4;
- (void)populateWeighter:(id)a3 withEffects:(id)a4 andOptions:(id)a5;
- (void)populateWeighter:(id)a3 withTransitions:(id)a4 andOptions:(id)a5;
- (void)prepareDocumentForPlayback:(id)a3 withOptions:(id)a4;
- (void)reconfigureColorSchemeForLayerGroup:(id)a3 inDocument:(id)a4 withOptions:(id)a5;
- (void)reconfigureColorSchemeInDocument:(id)a3 withOptions:(id)a4;
- (void)reconfigureImagesInDocument:(id)a3 withOptions:(id)a4;
- (void)reconfigureTitleEffectForLayerGroup:(id)a3 inDocument:(id)a4 withOptions:(id)a5;
- (void)reconfigureTitleEffectInDocument:(id)a3 withOptions:(id)a4;
- (void)removeSlidesAtIndicies:(id)a3 inDocument:(id)a4 withOptions:(id)a5;
- (void)removeStyledCaptionFromSlide:(id)a3 inDocument:(id)a4 withOptions:(id)a5;
- (void)scaleDurationsForLayerGroup:(id)a3 inDocument:(id)a4 withOptions:(id)a5;
- (void)scaleDurationsInDocument:(id)a3 withOptions:(id)a4;
- (void)scaleDurationsInEffectContainers:(id)a3 withOptions:(id)a4;
- (void)scaleDurationsInLayer:(id)a3 withMutableOptions:(id)a4;
- (void)scaleDurationsInLayer:(id)a3 withOptions:(id)a4;
- (void)scaleLayerToMatchAudio:(id)a3 withBeats:(id)a4 withOptions:(id)a5;
- (void)scaleLayerToMatchAudio:(id)a3 withOptions:(id)a4;
- (void)setAuthoredDocument:(id)a3;
- (void)setTitleTextToColor:(CGColor *)a3 forLayerGroup:(id)a4 inDocument:(id)a5 withOptions:(id)a6;
- (void)setTitleTextToColor:(CGColor *)a3 inDocument:(id)a4 withOptions:(id)a5;
- (void)setupClustersWithPaths:(id)a3 withOptions:(id)a4;
- (void)startLogging;
- (void)upgradeDocument:(id)a3 withOptions:(id)a4;
- (void)upgradeLayerGroup:(id)a3 inDocument:(id)a4 withOptions:(id)a5;
@end

@implementation MPAuthoringController

+ (id)sharedController
{
  result = qword_1EF358;
  if (!qword_1EF358)
  {
    objc_sync_enter(a1);
    if (!qword_1EF358)
    {
      qword_1EF358 = objc_alloc_init(MPAuthoringController);
    }

    objc_sync_exit(a1);
    return qword_1EF358;
  }

  return result;
}

+ (void)releaseSharedController
{
  if (qword_1EF358)
  {
    objc_sync_enter(a1);

    qword_1EF358 = 0;
    objc_sync_exit(a1);
  }

  +[MPClusterController releaseSharedController];
}

- (MPAuthoringController)init
{
  v8.receiver = self;
  v8.super_class = MPAuthoringController;
  v2 = [(MPAuthoringController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSRecursiveLock);
    v2->_beatLock = v3;
    [(NSRecursiveLock *)v3 setName:@"MPAuthoringController.beatLock"];
    v2->_weighter = objc_alloc_init(MPWeighter);
    v2->_transitionWeighter = objc_alloc_init(MPWeighter);
    v2->_stats = objc_alloc_init(NSMutableDictionary);
    v4 = objc_alloc_init(NSLock);
    v2->_cachedROILock = v4;
    [(NSLock *)v4 setName:@"MPAuthoringController.cachedROILock"];
    v2->_cachedROIInformation = 0;
    v2->_authorLock = objc_alloc_init(NSLock);
    v2->_logLevel = 0;
    v2->_placesDistanceSeperation = 2000.0;
    v2->_placesDebug = 0;
    v5 = +[NSUserDefaults standardUserDefaults];
    if ([(NSUserDefaults *)v5 objectForKey:@"PlacesDebug"])
    {
      v2->_placesDebug = [(NSUserDefaults *)v5 BOOLForKey:@"PlacesDebug"];
    }

    if ([(NSUserDefaults *)v5 objectForKey:@"placesDistanceSeperation"])
    {
      [(NSUserDefaults *)v5 floatForKey:@"placesDistanceSeperation"];
      v2->_placesDistanceSeperation = v6;
    }

    if ([(NSUserDefaults *)v5 objectForKey:@"logLevel"])
    {
      v2->_logLevel = [(NSUserDefaults *)v5 integerForKey:@"logLevel"];
    }
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPAuthoringController;
  [(MPAuthoringController *)&v3 dealloc];
}

- (unint64_t)authorDocument:(id)a3 withOptions:(id)a4
{
  v7 = [a3 documentLayerGroup];

  return [(MPAuthoringController *)self authorLayerGroup:v7 inDocument:a3 withOptions:a4];
}

- (unint64_t)authorLayerGroup:(id)a3 inDocument:(id)a4 withOptions:(id)a5
{
  v176 = objc_autoreleasePoolPush();
  [(NSLock *)self->_authorLock lock];
  [(MPAuthoringController *)self startLogging];
  self->_cancelAuthoring = 0;
  if (!a5)
  {
    a5 = [a3 authoringOptions];
  }

  [(MPAuthoringController *)self setAuthoredDocument:a4];
  self->_isAuthoring = 1;
  p_vtable = &OBJC_METACLASS___MPDocumentInternal.vtable;
  v10 = [MPAuthoringUtilities randomSeedFromOptions:a5];
  self->_seed = v10;
  srandom(v10);
  v11 = [[NSMutableDictionary alloc] initWithDictionary:a5];
  v12 = [NSNumber numberWithInteger:self->_seed];
  [v11 setObject:v12 forKey:kMPAuthoringSeed];
  v13 = [v11 objectForKey:kMPAuthoringStyleID];
  if (!v13 || (v14 = v13, ![+[MPStyleManager sharedManager](MPStyleManager "sharedManager")]))
  {
    v14 = @"Classic";
    [v11 setObject:@"Classic" forKey:kMPAuthoringStyleID];
  }

  if ([+[NSUserDefaults BOOLForKey:"BOOLForKey:"]
  {
    v15 = [NSNumber numberWithBool:0];
    [v11 setObject:v15 forKey:kMPAuthoringUseTitleEffect];
    v16 = [NSNumber numberWithBool:1];
    [v11 setObject:v16 forKey:kMPAuthoringUseImageOnlyTitleEffect];
  }

  v169 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v184 = [objc_msgSend(v11 objectForKey:{kMPAuthoringLive), "BOOLValue"}];
  if ([a3 countOfLayers])
  {
    if ([v11 objectForKey:kMPAuthoringLiveReset])
    {
      v17 = [objc_msgSend(v11 objectForKey:{kMPAuthoringLiveReset), "BOOLValue"}] ^ 1;
    }

    else
    {
      v17 = 1;
    }

    v178 = v17;
  }

  else
  {
    v178 = 0;
  }

  if (v184)
  {
    [v11 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", v178), @"isSetup"}];
    v18 = [NSNumber numberWithBool:1];
    [v11 setObject:v18 forKey:kMPAuthoringAlwaysIncludeLastTransition];
    if (v178)
    {
      [v11 removeObjectForKey:kMPAuthoringIntroEffectID];
    }

    else
    {
      [(MPWeighter *)self->_weighter clearAllItems];
      [(MPWeighter *)self->_transitionWeighter clearAllItems];
    }
  }

  v181 = v14;
  if ([+[MPStyleManager sharedManager](MPStyleManager "sharedManager")])
  {
    v19 = [a3 copy];
  }

  else
  {
    v19 = 0;
  }

  v187 = a5;
  v20 = [MPAuthoringUtilities presentationOrderFromOptions:a5];
  v21 = [a3 videoPaths];
  v22 = [MPAuthoringUtilities videoPathsRangeFromOptions:v11];
  v180 = a4;
  v188 = v11;
  v189 = a3;
  v190 = v23;
  v168 = v19;
  v164 = v22;
  if (v22 | v23)
  {
    v25 = v22;
    v171 = v23;
    v24 = v176;
    if (&v23[v22] > [(NSMutableArray *)v21 count])
    {
      v171 = [(NSMutableArray *)v21 count]- v25;
    }

    if (v20 == 4)
    {
      v21 = [NSMutableArray arrayWithArray:[(MPAuthoringController *)self shuffleImagesByRating:v21 withOptions:v11]];
    }

    else
    {
      v26 = [[NSIndexSet alloc] initWithIndexesInRange:{v25, v171}];
      if (v171)
      {
        v27 = [NSMutableArray arrayWithArray:[(NSMutableArray *)v21 objectsAtIndexes:v26]];
      }

      else
      {
        v27 = +[NSMutableArray array];
      }

      v21 = v27;
    }

    v28 = [v11 objectForKey:kMPAuthoringLiveMissedImages];
    v29 = 0;
    if (v28 && v20 != 4)
    {
      v30 = v28;
      v185 = [v28 copy];
      if ([v30 count])
      {
        v31 = [[NSIndexSet alloc] initWithIndexesInRange:{0, objc_msgSend(v30, "count")}];
        [(NSMutableArray *)v21 insertObjects:v30 atIndexes:v31];
      }

      v32 = +[NSMutableArray array];
      v33 = objc_alloc_init(NSMutableArray);
      v204 = 0u;
      v205 = 0u;
      v206 = 0u;
      v207 = 0u;
      v34 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v204 objects:v211 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v205;
        do
        {
          for (i = 0; i != v35; i = i + 1)
          {
            if (*v205 != v36)
            {
              objc_enumerationMutation(v21);
            }

            v38 = *(*(&v204 + 1) + 8 * i);
            if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
            {
              v39 = v32;
            }

            else
            {
              v39 = v33;
            }

            [(NSMutableArray *)v39 addObject:v38];
          }

          v35 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v204 objects:v211 count:16];
        }

        while (v35);
      }

      v40 = [NSMutableSet setWithArray:v185];
      [(NSMutableSet *)v40 intersectsSet:[NSSet setWithArray:v33]];
      v200 = 0u;
      v201 = 0u;
      v202 = 0u;
      v203 = 0u;
      v41 = [(NSMutableSet *)v40 countByEnumeratingWithState:&v200 objects:v210 count:16];
      v24 = v176;
      p_vtable = &OBJC_METACLASS___MPDocumentInternal.vtable;
      if (v41)
      {
        v42 = v41;
        v43 = *v201;
        do
        {
          for (j = 0; j != v42; j = j + 1)
          {
            if (*v201 != v43)
            {
              objc_enumerationMutation(v40);
            }

            [(NSMutableArray *)v33 removeObject:*(*(&v200 + 1) + 8 * j)];
          }

          v42 = [(NSMutableSet *)v40 countByEnumeratingWithState:&v200 objects:v210 count:16];
        }

        while (v42);
      }

      [(MPDocument *)self->_authoredDocument setAuthoringOption:v33 forKey:kMPAuthoringLiveMissedImages];
      v29 = [(NSMutableArray *)v33 count]!= 0;

      v21 = v32;
      a4 = v180;
      v11 = v188;
    }

    if (v184)
    {
      v45 = [v11 objectForKey:kMPAuthoringLiveUseOutro];
      v46 = v45 ? [v45 BOOLValue] ^ 1 : 0;
      if (&v171[v164] < [objc_msgSend(v189 "videoPaths")] || v29 || v46)
      {
        v47 = [NSNumber numberWithBool:0];
        [v11 setObject:v47 forKey:kMPAuthoringUseLoopTransition];
        [v11 setObject:kMPFadeNone forKey:kMPAuthoringOutroEffectID];
        [v11 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"hasMoreImages"}];
      }
    }

    a3 = v189;
  }

  else
  {
    v171 = 0;
    v24 = v176;
  }

  v48 = [(NSMutableArray *)v21 count];
  v174 = v48 != 0;
  v49 = [MPAuthoringUtilities minimumNumberOfDynamicSlidesToAddFromOptions:v11];
  if ([a3 loopingMode] == &dword_4 + 1)
  {
    if (v169)
    {
      v161 = 1;
      v166 = 0;
      goto LABEL_74;
    }

    v161 = 1;
    v166 = 1;
    v52 = v190;
  }

  else
  {
    v50 = [a3 loopingMode];
    v51 = v169;
    v166 = v169 ^ 1;
    if (v50 != &dword_0 + 2)
    {
      v51 = 0;
    }

    if (v51)
    {
      v161 = 1;
      goto LABEL_74;
    }

    v161 = v50 == &dword_0 + 2;
    v52 = v190;
    if (v50 != &dword_0 + 2)
    {
      v52 = v171;
    }
  }

  v53 = [objc_msgSend(a3 "videoPaths")];
  if (v52 >= v53)
  {
    v49 = v53;
  }

  else
  {
    v49 = v52;
  }

LABEL_74:
  v54 = v48 != 0;
  v55 = v49 - [(NSMutableArray *)v21 count];
  v56 = [(NSMutableArray *)v21 count];
  v177 = v55;
  v162 = [objc_msgSend(a3 "videoPaths")];
  v163 = v56;
  if ((v54 | v178))
  {
    if (v55 > 0)
    {
      v57 = v184;
    }

    else
    {
      v57 = 0;
    }

    if (v57 == 1)
    {
      v58 = [a3 videoPaths];
      v59 = objc_alloc_init(NSMutableArray);
      v60 = [v11 objectForKey:kMPAuthoringLivePlaceholderIndex];
      if (v60)
      {
        v191 = [v60 integerValue];
      }

      else
      {
        v191 = 0;
      }

      v62 = [v58 count];
      if (v62 >= 1)
      {
        v63 = v62;
        v64 = 0;
        v65 = v191;
        if (v191 >= v62)
        {
          v65 = 0;
        }

        v191 = v65;
        do
        {
          if ([v59 count] >= v177)
          {
            break;
          }

          v66 = [v58 objectAtIndex:v191];
          if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
          {
            [v59 addObject:v66];
          }

          else
          {
            ++v64;
          }

          a4 = v180;
          v11 = v188;
          v67 = v191 + 1 < v63 ? v191 + 1 : 0;
          v191 = v67;
        }

        while (v64 < v63);
        v24 = v176;
        p_vtable = &OBJC_METACLASS___MPDocumentInternal.vtable;
        if ([v59 count])
        {
          [(NSMutableArray *)v21 addObjectsFromArray:v59];
          v174 = 1;
        }

        authoredDocument = self->_authoredDocument;
        v69 = [NSNumber numberWithInteger:v191];
        [(MPDocument *)authoredDocument setAuthoringOption:v69 forKey:kMPAuthoringLivePlaceholderIndex];
      }
    }

    else
    {
      v191 = -1;
    }
  }

  else
  {
    v191 = -1;
    self->_seed = -1;
    v61 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v61 postNotificationName:kMPAuthoringNoImagesAvailableNotification object:self->_authoredDocument userInfo:0];
    v174 = 0;
  }

  p_cancelAuthoring = &self->_cancelAuthoring;
  v175 = v184 ^ 1;
  [(MPAuthoringController *)self clearROICache];
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v71 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v196 objects:v209 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v197;
    do
    {
      for (k = 0; k != v72; k = k + 1)
      {
        if (*v197 != v73)
        {
          objc_enumerationMutation(v21);
        }

        [(MPDocument *)self->_authoredDocument absolutePathForAssetAtPath:*(*(&v196 + 1) + 8 * k)];
      }

      v72 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v196 objects:v209 count:16];
    }

    while (v72);
  }

  [a4 setTemporarilyCacheAbsolutePaths:1];
  [(MPAuthoringController *)self cacheROIInformationForImages:v21 withOptions:v11];
  v75 = v189;
  v76 = [objc_msgSend(v189 "audioPaths")];
  v186 = [MPAuthoringUtilities ignoreClusteringForImages:v21 withOptions:v11];
  v165 = v178 ^ 1;
  v170 = v175 | v178 ^ 1;
  v173 = v76;
  if ((v170 & 1) == 0)
  {
    v167 = 0;
    goto LABEL_134;
  }

  [-[MPDocument montage](self->_authoredDocument "montage")];
  v77 = [MPAuthoringUtilities replaceAudioPlaylistFromOptions:v11];
  if (v77)
  {
    [objc_msgSend(v189 "audioPlaylist")];
    if ([v76 count])
    {
      v78 = v77;
    }

    else
    {
      v78 = 0;
    }

    if ((v78 & 1) == 0)
    {
      [v76 count];
      goto LABEL_117;
    }

LABEL_123:
    [v189 setAudioPlaylist:{-[MPAuthoringController createAudioPlayListFromAudioPaths:andOptions:](self, "createAudioPlayListFromAudioPaths:andOptions:", v76, v11)}];
    goto LABEL_124;
  }

  [v76 count];
  if ([v76 count])
  {
    v79 = [objc_msgSend(v189 "audioPlaylist")];
    if (v79 != [v76 count])
    {
      goto LABEL_123;
    }
  }

LABEL_117:
  if (![v76 count] && +[MPAuthoringUtilities useDefaultAudioFromOptions:](MPAuthoringUtilities, "useDefaultAudioFromOptions:", v11))
  {
    v80 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
    [v189 setAudioPaths:v80];
    if (v80 && [v80 count])
    {
      [v189 setAudioPlaylist:{-[MPAuthoringController createAudioPlayListFromAudioPaths:andOptions:](self, "createAudioPlayListFromAudioPaths:andOptions:", v80, v11)}];
    }

    [v76 addObjectsFromArray:v80];
    v81 = 0;
    goto LABEL_125;
  }

LABEL_124:
  v81 = 1;
LABEL_125:
  v167 = [MPAuthoringUtilities alignToBeatsFromOptions:v11];
  v82 = [MPAuthoringUtilities createBeatsFromOptions:v11];
  if (v81 && v167 && (([v173 count] != 0) & v82) == 1)
  {
    p_cancelAuthoring = &self->_cancelAuthoring;
    [NSThread detachNewThreadSelector:"createBeatsThreaded:" toTarget:self withObject:[NSArray arrayWithObjects:v11, v173, 0]];
  }

  [objc_msgSend(v189 "audioPlaylist")];
  if (v83 > 0.0 && +[MPAuthoringUtilities audioScalingModeFromOptions:](MPAuthoringUtilities, "audioScalingModeFromOptions:", v11) == &dword_0 + 1 && ![v11 objectForKey:kMPAuthoringAudioDuration])
  {
    [objc_msgSend(v189 "audioPlaylist")];
    v84 = [NSNumber numberWithDouble:?];
    [v11 setObject:v84 forKey:kMPAuthoringAudioDuration];
  }

  [-[MPDocument montage](self->_authoredDocument "montage")];
LABEL_134:
  v85 = v181;
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [self->_delegate authoringDocument:self->_authoredDocument progress:p_cancelAuthoring shouldCancel:0.1];
  }

  v172 = objc_alloc_init(NSMutableArray);
  if (![(__CFString *)v181 isEqualToString:@"Places"])
  {
    v182 = objc_alloc_init(NSMutableArray);
    v94 = [MPAuthoringUtilities numberOfLayersFromOptions:v11];
    if (v94 >= 1)
    {
      v95 = v94;
      v183 = 0;
      v96 = 0;
      v179 = v166 | v178;
      v97 = 0.0;
      v98 = 0.0;
      while (1)
      {
        if (*p_cancelAuthoring)
        {
          goto LABEL_175;
        }

        v99 = objc_autoreleasePoolPush();
        v100 = [NSNumber numberWithInteger:v96];
        [v11 setObject:v100 forKey:kMPAuthoringLayerIndex];
        v101 = p_vtable;
        v102 = [p_vtable + 172 isLayerEffectAuthoredFromOptions:v187];
        if ((v186 & 1) == 0 && [(NSMutableArray *)v21 count]>= 3)
        {
          [(MPAuthoringController *)self setupClustersWithPaths:v21 withOptions:v11];
        }

        v103 = v11;
        v104 = [(MPAuthoringController *)self orderImages:v21 withOptions:v11];
        if (((v166 | v165) & 1) == 0)
        {
          v183 = [(MPAuthoringController *)self slidesWithImages:v104 andOptions:v103];
          goto LABEL_170;
        }

        if ((v179 & 1) == 0)
        {
          break;
        }

        if (!v102)
        {
          v103 = v188;
          v111 = [(MPAuthoringController *)self effectsForImages:v104 withOptions:v188];
          if ([v111 count])
          {
            v112 = [(MPAuthoringController *)self createLayerWithImages:v104 effects:v111 andOptions:v188];
            if ([v112 countOfEffectContainers] > 0 || objc_msgSend(v104, "count"))
            {
              [v112 setAudioPriority:v96 + 10];
              [v182 addObject:v112];
              [(MPAuthoringController *)self checkForOffsetsForLayers:v182 withOptions:v188];
              [v188 removeObjectForKey:kMPAuthoringMinimumDuration];
              [v188 removeObjectForKey:kMPAuthoringMaximumDuration];
              [(MPAuthoringController *)self scaleDurationsInLayer:v112 withMutableOptions:v188];
              [objc_msgSend(v188 objectForKeyedSubscript:{kMPAuthoringMinimumDuration), "doubleValue"}];
              v114 = v113;
              [objc_msgSend(v188 objectForKeyedSubscript:{kMPAuthoringMaximumDuration), "doubleValue"}];
              if (v114 >= v97)
              {
                v97 = v114;
              }

              if (v115 >= v98)
              {
                v116 = v98;
              }

              else
              {
                v116 = v115;
              }

              if (v115 <= 0.0)
              {
                v116 = v98;
              }

              if (v98 == 0.0)
              {
                v98 = v115;
              }

              else
              {
                v98 = v116;
              }

              v11 = v188;
              if (v167)
              {
                v75 = v189;
                if ([v173 count])
                {
                  v117 = -[MPAuthoringController beatsForAudioPlaylist:withOptions:](self, "beatsForAudioPlaylist:withOptions:", [v189 audioPlaylist], v188);
                  if (v117)
                  {
                    [(MPAuthoringController *)self beatAlignLayer:v112 toBeats:v117 withOptions:v188];
                  }
                }

                goto LABEL_201;
              }

              goto LABEL_172;
            }
          }

LABEL_170:
          v11 = v103;
LABEL_172:
          p_vtable = v101;
          goto LABEL_173;
        }

        p_vtable = v101;
        if ([v101 + 172 useTitleEffectFromOptions:v187])
        {
          v105 = +[NSArray arrayWithObject:](NSArray, "arrayWithObject:", [v104 objectAtIndex:0]);
          v106 = [(MPAuthoringController *)self titleEffectsForImages:v105 withOptions:v187];
          if (v106)
          {
            v107 = [-[MPAuthoringController effectContainersWithImages:effects:andOptions:](self effectContainersWithImages:v105 effects:v106 andOptions:{v187), "mutableCopy"}];
            v108 = [(MPAuthoringController *)self effectAuthoredLayerWithImages:v104 withOptions:v188];
            v109 = v108;
            if (v107)
            {
              v75 = v189;
              if ([v108 countOfEffectContainers] >= 1)
              {
                [v109 insertEffectContainers:v107 atIndex:0];
              }

              goto LABEL_200;
            }
          }

          else
          {
            v109 = [(MPAuthoringController *)self effectAuthoredLayerWithImages:v104 withOptions:v188];
            v107 = 0;
          }

          v75 = v189;
LABEL_200:

          [v182 addObject:v109];
          v11 = v188;
LABEL_201:
          p_vtable = v101;
          goto LABEL_174;
        }

        v118 = v104;
        v11 = v188;
        [v182 addObject:{-[MPAuthoringController effectAuthoredLayerWithImages:withOptions:](self, "effectAuthoredLayerWithImages:withOptions:", v118, v188)}];
LABEL_173:
        v75 = v189;
LABEL_174:
        objc_autoreleasePoolPop(v99);
        p_cancelAuthoring = &self->_cancelAuthoring;
LABEL_175:
        ++v96;
        if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [self->_delegate authoringDocument:self->_authoredDocument progress:p_cancelAuthoring shouldCancel:(v96 / v95) * 0.8 + 0.1];
        }

        if (v95 == v96)
        {
          goto LABEL_203;
        }
      }

      v110 = v104;
      v11 = v188;
      [v182 addObject:{-[MPAuthoringController dynamicLayerWithImages:withOptions:](self, "dynamicLayerWithImages:withOptions:", v110, v188)}];
      goto LABEL_172;
    }

    v183 = 0;
    v98 = 0.0;
    v97 = 0.0;
LABEL_203:
    v119 = self->_authoredDocument;
    v120 = [NSNumber numberWithDouble:v97];
    [(MPDocument *)v119 setAuthoringOption:v120 forKey:kMPAuthoringMinimumDuration];
    v121 = self->_authoredDocument;
    v122 = [NSNumber numberWithDouble:v98];
    [(MPDocument *)v121 setAuthoringOption:v122 forKey:kMPAuthoringMaximumDuration];
    v123 = [NSNumber numberWithDouble:v97];
    [v11 setObject:v123 forKeyedSubscript:kMPAuthoringMinimumDuration];
    v124 = [NSNumber numberWithDouble:v98];
    [v11 setObject:v124 forKeyedSubscript:kMPAuthoringMaximumDuration];
    v85 = v181;
    v125 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")]);
    [v11 setObject:v125 forKey:kMPAuthoringLayerIndex];
    if (!v174)
    {
      [-[MPDocument montage](self->_authoredDocument "montage")];
      [v75 removeAllLayers];
      v86 = v182;
      [v75 addLayers:v182];
      [-[MPDocument montage](self->_authoredDocument "montage")];
      v24 = v176;
      a4 = v180;
      goto LABEL_208;
    }

    v24 = v176;
    a4 = v180;
    if ((v166 | v165))
    {
      v86 = v182;
      if (v170)
      {
        [-[MPDocument montage](self->_authoredDocument "montage")];
        [v75 removeAllLayers];
        [v75 addLayers:v182];
        [-[MPDocument montage](self->_authoredDocument "montage")];
        [(MPAuthoringController *)self performInitialFaceDetectionInGroup:v75 withOptions:v187];
        goto LABEL_254;
      }

      v141 = p_vtable;
      v142 = [v182 count];
      if (v142 >= 1)
      {
        v143 = v142;
        for (m = 0; m != v143; ++m)
        {
          v145 = [v182 objectAtIndex:m];
          v146 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
          v147 = [v75 layers];
          v148 = [v75 countOfLayers];
          if ((v148 - 1) >= m)
          {
            v149 = m;
          }

          else
          {
            v149 = v148 - 1;
          }

          v150 = [v147 objectAtIndex:v149];
          if (v146)
          {
            v151 = v150;
            if ([objc_msgSend(v150 "layerID")])
            {
              v152 = [objc_msgSend(v145 "effectContainers")];
              [v145 removeAllEffectContainers];
              if ([objc_msgSend(objc_msgSend(v151 "effectContainers")] >= 1)
              {
                [-[MPDocument montage](self->_authoredDocument "montage")];
                [v151 addEffectContainers:v152];
                [-[MPDocument montage](self->_authoredDocument "montage")];
                [v172 addObjectsFromArray:v152];
              }
            }
          }
        }
      }

      if (v182)
      {
      }

      v86 = [v75 layers];
      v11 = v188;
      p_vtable = v141;
    }

    else
    {
      [-[MPDocument montage](self->_authoredDocument "montage")];
      v132 = [v11 objectForKey:kMPAuthoringDynamicEffect];
      v133 = [objc_msgSend(v132 "slides")];
      [v132 addSlides:v183];
      v134 = [v11 objectForKey:kMPAuthoringDynamicLastIndexUsed];
      if (v134)
      {
        v135 = p_vtable;
        v136 = [NSIndexSet alloc];
        v137 = [v134 integerValue];
        v138 = v137 - [v132 liveIndex];
        v11 = v188;
        if (v138 >= v133)
        {
          v138 = v133;
        }

        v139 = v136;
        p_vtable = v135;
        v140 = [v139 initWithIndexesInRange:{0, v138 & ~(v138 >> 63)}];
        [v132 setLiveIndex:{objc_msgSend(v134, "integerValue")}];
        [v132 removeSlidesAtIndices:v140];
      }

      -[MPAuthoringController configurePanoramaInformationToEffect:inDocument:startingIndex:count:removeOldIndex:](self, "configurePanoramaInformationToEffect:inDocument:startingIndex:count:removeOldIndex:", v132, v180, [objc_msgSend(v132 "slides")] - objc_msgSend(v183, "count"), -1, objc_msgSend(v134, "integerValue"));
      if (v182)
      {
      }

      v86 = [v75 layers];
      [-[MPDocument montage](self->_authoredDocument "montage")];
    }

    p_cancelAuthoring = &self->_cancelAuthoring;
    v85 = v181;
LABEL_254:
    if (!v184)
    {
      goto LABEL_139;
    }

    v153 = &v171[v164];
    if (&v163[v177 + v164] <= v162)
    {
LABEL_261:
      [v75 setLastSlideUsed:v153];
      goto LABEL_139;
    }

    if (v169)
    {
      v154 = v191;
      v155 = v161;
      if (v191 == -1)
      {
        goto LABEL_259;
      }
    }

    else
    {
      v154 = v191;
      v155 = v161;
      if (v191 == -1 || !v161)
      {
LABEL_259:
        if (v155)
        {
          [v75 setUsedAllPaths:1];
          v156 = v86;
          v157 = self->_authoredDocument;
          v158 = [NSNumber numberWithInteger:0];
          v159 = v157;
          v86 = v156;
          v85 = v181;
          [(MPDocument *)v159 setAuthoringOption:v158 forKey:kMPAuthoringLivePlaceholderIndex];
        }

        goto LABEL_261;
      }
    }

    v153 = v154;
    goto LABEL_259;
  }

  [-[MPDocument montage](self->_authoredDocument "montage")];
  [(MPAuthoringController *)self authorPlacesWithImages:v21 forLayerGroup:v189 inDocument:a4 withOptions:v11];
  v86 = [[NSMutableArray alloc] initWithArray:{objc_msgSend(v189, "layers")}];
  [-[MPDocument montage](self->_authoredDocument "montage")];
  v183 = 0;
LABEL_139:
  if (!*p_cancelAuthoring && v174)
  {
    v87 = [p_vtable + 172 subtitlesFromOptions:v11];
    if (v87)
    {
      v88 = v87;
      if ([v87 count])
      {
        v89 = v86;
        [-[MPDocument montage](self->_authoredDocument "montage")];
        v194 = 0u;
        v195 = 0u;
        v192 = 0u;
        v193 = 0u;
        v90 = [v88 countByEnumeratingWithState:&v192 objects:v208 count:16];
        if (v90)
        {
          v91 = v90;
          v92 = *v193;
          do
          {
            for (n = 0; n != v91; n = n + 1)
            {
              if (*v193 != v92)
              {
                objc_enumerationMutation(v88);
              }

              [(MPAuthoringController *)self addStyledCaptionToSlide:[MPUtilities slideForPath:a4 inDocument:?], a4, v11];
            }

            v91 = [v88 countByEnumeratingWithState:&v192 objects:v208 count:16];
          }

          while (v91);
        }

        [(MPAuthoringController *)self configureFiltersInDocument:a4 withOptions:v11];
        [(MPAuthoringController *)self configureTransitionsInDocument:a4 withOptions:v11];
        [(MPAuthoringController *)self scaleDurationsInDocument:a4 withOptions:v11];
        [-[MPDocument montage](self->_authoredDocument "montage")];
        p_cancelAuthoring = &self->_cancelAuthoring;
        v75 = v189;
        v85 = v181;
        v86 = v89;
        v24 = v176;
      }
    }

    if ([v86 count] >= 2)
    {
      [-[MPDocument montage](self->_authoredDocument "montage")];
      [(MPAuthoringController *)self matchDurationsForLayers:v86 withOptions:v11];
      [(MPAuthoringController *)self fillDurationsForLayers:v86 withOptions:v11];
      [(MPAuthoringController *)self checkForOffsetsForLayers:v86 withOptions:v11];
      [-[MPDocument montage](self->_authoredDocument "montage")];
    }

    if ((v170 & 1) == 0)
    {
      v126 = [[NSDictionary alloc] initWithObjectsAndKeys:{v172, @"effectContainers", a4, @"document", v11, @"options", 0}];
      v85 = v181;
      p_cancelAuthoring = &self->_cancelAuthoring;
      +[NSThread detachNewThreadSelector:toTarget:withObject:](NSThread, "detachNewThreadSelector:toTarget:withObject:", "_applyCropToSlidesInEffectContainersWithArguments:", +[MPCropController sharedController], v126);

      v24 = v176;
      goto LABEL_211;
    }

    [-[MPDocument montage](self->_authoredDocument "montage")];
    [(MPAuthoringController *)self reconfigureColorSchemeForLayerGroup:v75 inDocument:a4 withOptions:v11];
    [-[MPDocument montage](self->_authoredDocument "montage")];
    [+[MPCropController sharedController](MPCropController "sharedController")];

    goto LABEL_209;
  }

LABEL_208:

  if (v170)
  {
LABEL_209:
    [(MPAuthoringController *)self configureIntroInDocument:self->_authoredDocument withOptions:v11];
    [(MPAuthoringController *)self configureOutroInDocument:self->_authoredDocument withOptions:v11];
  }

LABEL_211:
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [self->_delegate authoringDocument:self->_authoredDocument progress:p_cancelAuthoring shouldCancel:1.0];
  }

  if (*p_cancelAuthoring && v168)
  {
    v127 = [v75 navigatorKey];
    if (v127)
    {
      [a4 setLayer:v168 forKey:v127];
    }

    else
    {
      [a4 setDocumentLayerGroup:v168];
    }
  }

  if (v183)
  {
  }

  if (v168)
  {
  }

  self->_isAuthoring = 0;
  if (!self->_cancelAuthoring && (!v184 || self->_logLevel >= 2))
  {
    if ([p_vtable + 172 collectVersionInformationFromOptions:v11])
    {
      v128 = self->_authoredDocument;
      v129 = [(MPAuthoringController *)self _collectVersionInformationFromStyle:v85];
      [(MPDocument *)v128 setDocumentAttribute:v129 forKey:kMPDocumentAuthoringVersions];
    }

    [(MPAuthoringController *)self finishLogging];
  }

  [a4 setTemporarilyCacheAbsolutePaths:0];
  v130 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v130 postNotificationName:kMPAuthoringDidFinishApplyingStyleNotification object:self->_authoredDocument userInfo:0];
  [(MPAuthoringController *)self cleanup:v175];
  [(NSLock *)self->_authorLock unlock];
  objc_autoreleasePoolPop(v24);
  if (self->_cancelAuthoring)
  {
    return -1;
  }

  else
  {
    return self->_seed;
  }
}

- (void)upgradeDocument:(id)a3 withOptions:(id)a4
{
  v7 = [a3 documentLayerGroup];

  [(MPAuthoringController *)self upgradeLayerGroup:v7 inDocument:a3 withOptions:a4];
}

- (void)upgradeLayerGroup:(id)a3 inDocument:(id)a4 withOptions:(id)a5
{
  [objc_msgSend(a4 "montage")];
  v7 = [objc_msgSend(a3 "authoredVersionInfo")];
  LODWORD(v8) = 1032805417;
  [v7 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v8), @"authoringVersion"}];
  [a3 setAuthoredVersionInfo:v7];

  if (v7)
  {
    [a4 setDocumentAttribute:v7 forKey:kMPDocumentAuthoringVersions];
  }

  v9 = [a4 montage];

  [v9 unlock];
}

- (id)effectContainersWithPaths:(id)a3 forDocument:(id)a4 withOptions:(id)a5
{
  v5 = a5;
  if (!a5)
  {
    v5 = [a4 documentAttributeForKey:kMPDocumentAuthoringOptions];
  }

  [(MPAuthoringController *)self setAuthoredDocument:a4];
  v9 = [(MPAuthoringController *)self orderImages:a3 withOptions:v5];
  v10 = [(MPAuthoringController *)self effectContainersWithImages:v9 effects:[(MPAuthoringController *)self effectsForImages:v9 withOptions:v5] andOptions:v5];
  [(MPAuthoringController *)self scaleDurationsInEffectContainers:v10 withOptions:v5];
  [+[MPCropController sharedController](MPCropController "sharedController")];
  [(MPWeighter *)self->_weighter clearAllItems];
  [(MPAuthoringController *)self cleanup];
  return v10;
}

- (void)beatAlignLayers:(id)a3 toAudioPlaylist:(id)a4 forDocument:(id)a5 withOptions:(id)a6
{
  v6 = a6;
  if (!a6)
  {
    v6 = [a5 documentAttributeForKey:kMPDocumentAuthoringOptions];
  }

  [(MPAuthoringController *)self setAuthoredDocument:a5];
  v11 = [(MPAuthoringController *)self beatsForAudioPlaylist:a4 withOptions:v6];
  if (v11)
  {
    v12 = v11;
    if ([v11 count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v13 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v18;
        do
        {
          v16 = 0;
          do
          {
            if (*v18 != v15)
            {
              objc_enumerationMutation(a3);
            }

            [(MPAuthoringController *)self beatAlignLayer:*(*(&v17 + 1) + 8 * v16) toBeats:v12 withOptions:v6];
            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v14);
      }
    }
  }

  [(MPAuthoringController *)self cleanup];
}

- (void)scaleDurationsInDocument:(id)a3 withOptions:(id)a4
{
  v7 = [a3 documentLayerGroup];

  [(MPAuthoringController *)self scaleDurationsForLayerGroup:v7 inDocument:a3 withOptions:a4];
}

- (void)scaleDurationsForLayerGroup:(id)a3 inDocument:(id)a4 withOptions:(id)a5
{
  v5 = a5;
  if ([objc_msgSend(a5 objectForKey:{kMPAuthoringStyleID), "isEqualToString:", @"Places"}])
  {

    [(MPAuthoringController *)self scaleDurationsInPlacesForDocument:a4 withOptions:v5];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    if (!self->_isAuthoring)
    {
      [objc_msgSend(a4 montage];
      [a3 reconnectAll];
    }

    if (!v5)
    {
      v5 = [a3 authoringOptions];
    }

    if (!self->_isAuthoring)
    {
      [(MPAuthoringController *)self setAuthoredDocument:a4];
    }

    v7 = [[NSMutableDictionary alloc] initWithDictionary:v5];
    if (![v7 objectForKey:kMPAuthoringAudioDuration])
    {
      [objc_msgSend(a3 "audioPlaylist")];
      v8 = [NSNumber numberWithDouble:?];
      [v7 setObject:v8 forKey:kMPAuthoringAudioDuration];
    }

    v32 = [MPAuthoringUtilities alignToBeatsFromOptions:v7, context];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [a3 layers];
    v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    v33 = self;
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      v12 = 0.0;
      v13 = 0.0;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          if (![MPAuthoringUtilities isLayerEffectAuthoredFromOptions:v5])
          {
            v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 zIndex]);
            [v7 setObject:v16 forKey:kMPAuthoringLayerIndex];
            [v7 removeObjectForKey:kMPAuthoringMinimumDuration];
            [v7 removeObjectForKey:kMPAuthoringMaximumDuration];
            [(MPAuthoringController *)self scaleDurationsInLayer:v15 withMutableOptions:v7];
            [objc_msgSend(v7 objectForKeyedSubscript:{kMPAuthoringMinimumDuration), "doubleValue"}];
            v18 = v17;
            [objc_msgSend(v7 objectForKeyedSubscript:{kMPAuthoringMaximumDuration), "doubleValue"}];
            if (v18 >= v13)
            {
              v13 = v18;
            }

            if (v19 >= v12)
            {
              v20 = v12;
            }

            else
            {
              v20 = v19;
            }

            if (v19 <= 0.0)
            {
              v20 = v12;
            }

            if (v12 == 0.0)
            {
              v12 = v19;
            }

            else
            {
              v12 = v20;
            }

            if (v32)
            {
              if ([objc_msgSend(a4 "audioPlaylist")] >= 1)
              {
                v21 = -[MPAuthoringController beatsForAudioPlaylist:withOptions:](self, "beatsForAudioPlaylist:withOptions:", [a3 audioPlaylist], v7);
                if (v21)
                {
                  [(MPAuthoringController *)self beatAlignLayer:v15 toBeats:v21 withOptions:v7];
                }
              }
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = 0.0;
      v13 = 0.0;
    }

    authoredDocument = self->_authoredDocument;
    v23 = [NSNumber numberWithDouble:v13];
    [(MPDocument *)authoredDocument setAuthoringOption:v23 forKey:kMPAuthoringMinimumDuration];
    v24 = v33->_authoredDocument;
    v25 = [NSNumber numberWithDouble:v12];
    [(MPDocument *)v24 setAuthoringOption:v25 forKey:kMPAuthoringMaximumDuration];
    v26 = [NSNumber numberWithDouble:v13];
    [v7 setObject:v26 forKeyedSubscript:kMPAuthoringMinimumDuration];
    v27 = [NSNumber numberWithDouble:v12];
    [v7 setObject:v27 forKeyedSubscript:kMPAuthoringMaximumDuration];
    [(MPAuthoringController *)v33 matchDurationsForLayers:obj withOptions:v7];
    [(MPAuthoringController *)v33 fillDurationsForLayers:obj withOptions:v7];
    [(MPAuthoringController *)v33 checkForOffsetsForLayers:obj withOptions:v7];

    [a3 reconfigureLoopingMode];
    if (!v33->_isAuthoring)
    {
      [(MPAuthoringController *)v33 cleanup];
      [objc_msgSend(a4 "montage")];
    }

    objc_autoreleasePoolPop(contexta);
  }
}

- (void)reconfigureImagesInDocument:(id)a3 withOptions:(id)a4
{
  if ([objc_msgSend(objc_msgSend(a3 "documentLayerGroup")])
  {

    [(MPAuthoringController *)self authorDocument:a3 withOptions:a4];
  }

  else
  {

    [(MPAuthoringController *)self _reorderImagesInDocument:a3 withOptions:a4];
  }
}

- (void)reconfigureTitleEffectInDocument:(id)a3 withOptions:(id)a4
{
  v7 = [a3 documentLayerGroup];

  [(MPAuthoringController *)self reconfigureTitleEffectForLayerGroup:v7 inDocument:a3 withOptions:a4];
}

- (void)reconfigureTitleEffectForLayerGroup:(id)a3 inDocument:(id)a4 withOptions:(id)a5
{
  if ([a3 countOfLayers] >= 1)
  {
    [objc_msgSend(a4 "montage")];
    if (!a5)
    {
      a5 = [a3 authoringOptions];
    }

    v8 = [MPAuthoringUtilities styleFromOptions:a5];
    v9 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
    v10 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
    v11 = [a3 layers];
    if (v10 < [v11 count])
    {
      v12 = [objc_msgSend(objc_msgSend(v11 objectAtIndex:{v10), "effectContainers"), "objectAtIndex:", 0}];
      v13 = [v9 objectForKey:@"backgroundEffect"];
      v14 = v13 ? 2 : 1;
      if (v14 <= [v12 countOfEffects])
      {
        v15 = [objc_msgSend(v12 "effects")];
        [v15 replaceTextsWitStrings:{objc_msgSend(a5, "objectForKey:", kMPAuthoringTitleStrings)}];
      }
    }

    v16 = [a4 montage];

    [v16 unlock];
  }
}

- (void)reconfigureColorSchemeInDocument:(id)a3 withOptions:(id)a4
{
  v7 = [a3 documentLayerGroup];

  [(MPAuthoringController *)self reconfigureColorSchemeForLayerGroup:v7 inDocument:a3 withOptions:a4];
}

- (void)reconfigureColorSchemeForLayerGroup:(id)a3 inDocument:(id)a4 withOptions:(id)a5
{
  [objc_msgSend(a4 "montage")];
  if (!a5)
  {
    a5 = [a3 authoringOptions];
  }

  v9 = [MPAuthoringUtilities colorSchemeFromOptions:a5];
  if (v9)
  {
    v10 = v9;
    if ([a5 objectForKey:kMPAuthoringBackgroundColor] || (v14 = objc_msgSend(v10, "objectForKey:", @"background")) == 0)
    {
      v11 = [MPAuthoringUtilities backgroundColorFromOptions:a5];
    }

    else
    {
      v11 = [MPUtilities CGColorFromString:v14];
    }

    [a3 setBackgroundCGColor:v11];
    v15 = [v10 objectForKey:@"titleText"];
    if (v15)
    {
      v16 = v15;
      if ([a5 objectForKeyedSubscript:kMPAuthoringColorScheme])
      {
        v13 = [MPUtilities CGColorFromString:v16];
LABEL_14:
        [(MPAuthoringController *)self setTitleTextToColor:v13 forLayerGroup:a3 inDocument:a4 withOptions:a5];
      }
    }
  }

  else
  {
    [a3 setBackgroundCGColor:{+[MPAuthoringUtilities backgroundColorFromOptions:](MPAuthoringUtilities, "backgroundColorFromOptions:", a5)}];
    v12 = [a5 objectForKey:kMPAuthoringTitleColor];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MPUtilities CGColorFromString:v12];
      if (v13)
      {
        goto LABEL_14;
      }
    }
  }

  v17 = [a4 montage];

  [v17 unlock];
}

- (BOOL)prepareDocumentForExport:(id)a3 withOptions:(id)a4
{
  v4 = a4;
  if (!a4)
  {
    v4 = [a3 documentAttributeForKey:kMPDocumentAuthoringOptions];
  }

  v7 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v8 = [a3 countOfLayers];
  if (v7 >= v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = v7;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    [objc_msgSend(a3 "montage")];
    v10 = [objc_msgSend(a3 "layers")];
    v11 = [objc_msgSend(v10 "effectContainers")];
    v12 = [NSMutableDictionary dictionaryWithDictionary:v4];
    v13 = [NSNumber numberWithInteger:v9];
    [(NSMutableDictionary *)v12 setObject:v13 forKey:kMPAuthoringLayerIndex];
    if ([MPAuthoringUtilities exportTransitionIDFromOptions:v12])
    {
      v14 = [(MPAuthoringController *)self exportTransitionFromOptions:v12];
      v15 = +[MPEffectContainer effectContainer];
      [MPAuthoringUtilities exportTransitionDurationFromOptions:v12];
      v17 = v16;
      [v14 setDuration:?];
      [v15 setDuration:v17];
      [v10 addEffectContainer:v15];
      [v11 duration];
      v19 = v18;
      [v11 introTransitionDuration];
      if (v19 - v20 >= v17)
      {
        [v11 setUserInfoAttribute:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", -1.0), @"savedExportDuration"}];
      }

      else
      {
        [v11 duration];
        [v11 setUserInfoAttribute:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"savedExportDuration"}];
        [v11 duration];
        v22 = v21;
        [v11 duration];
        v24 = v23;
        [v11 introTransitionDuration];
        [v11 setDuration:v22 + v17 - (v24 - v25)];
      }

      v29 = v11;
      v30 = v14;
      goto LABEL_16;
    }

    v27 = [v11 countOfEffects];
    v28 = [v11 transition];
    if (v27)
    {
      if (v28)
      {
        v29 = v11;
        v30 = 0;
LABEL_16:
        [v29 setTransition:v30];
LABEL_17:
        if ([MPAuthoringUtilities audioScalingModeFromOptions:v4]== &dword_0 + 1)
        {
          [a3 setDocumentAttribute:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", objc_msgSend(a3, "loopingMode")), @"exportLoopingMode"}];
          [a3 setLoopingMode:0];
        }

        v26 = 1;
        v31 = [NSNumber numberWithBool:1];
        [a3 setDocumentAttribute:v31 forKey:kMPDocumentPreparedForExport];
        -[MPAuthoringController matchDurationsForLayers:withOptions:](self, "matchDurationsForLayers:withOptions:", [a3 layers], v12);
        -[MPAuthoringController fillDurationsForLayers:withOptions:](self, "fillDurationsForLayers:withOptions:", [a3 layers], v12);
        goto LABEL_20;
      }
    }

    else if (v28)
    {
      [v28 duration];
      v34 = v33;
      [v11 setTransition:0];
      [v11 duration];
      [v11 setUserInfoAttribute:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"savedExportDuration"}];
      [v11 duration];
      [v11 setDuration:v35 - v34];
      goto LABEL_17;
    }

    v26 = 0;
LABEL_20:
    [objc_msgSend(a3 "montage")];
    return v26;
  }

  return 0;
}

- (void)prepareDocumentForPlayback:(id)a3 withOptions:(id)a4
{
  v4 = a4;
  if (!a4)
  {
    v4 = [a3 documentAttributeForKey:kMPDocumentAuthoringOptions];
  }

  v7 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v8 = [a3 countOfLayers];
  if (v7 >= v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = v7;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    [objc_msgSend(a3 "montage")];
    v10 = [a3 objectInLayersAtIndex:v9];
    if ([v10 countOfEffectContainers])
    {
      v11 = [NSMutableDictionary dictionaryWithDictionary:v4];
      v12 = &kCTUnderlineColorAttributeName_ptr;
      v13 = [NSNumber numberWithInteger:v9];
      [(NSMutableDictionary *)v11 setObject:v13 forKey:kMPAuthoringLayerIndex];
      v14 = [objc_msgSend(v10 "effectContainers")];
      if ([a3 documentAttributeForKey:@"exportLoopingMode"])
      {
        [a3 setLoopingMode:{objc_msgSend(objc_msgSend(a3, "documentAttributeForKey:", @"exportLoopingMode", "integerValue")}];
        [a3 setDocumentAttribute:0 forKey:@"exportLoopingMode"];
      }

      v15 = [MPAuthoringUtilities shouldComputeLoopTransitionFromOptions:v11];
      v16 = [MPAuthoringUtilities exportTransitionIDFromOptions:v11];
      if (!v16 && !(([v14 countOfEffects] == 0) | v15 & 1))
      {
        goto LABEL_45;
      }

      v17 = [v14 index];
      v18 = [a3 documentAttributeForKey:kMPDocumentPreparedForExport];
      if (v16 && v18 && [v18 BOOLValue])
      {
        v19 = [objc_msgSend(v10 "effectContainers")];
        [v10 removeEffectContainersAtIndices:{+[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", v17)}];
      }

      else
      {
        v19 = [objc_msgSend(v10 "effectContainers")];
      }

      v20 = objc_opt_respondsToSelector();
      v21 = objc_opt_respondsToSelector();
      if (v20)
      {
        v22 = v21;
        v23 = [self->_delegate document:a3 shouldUseDefaultTransitionForEffectContainer:v19 containerIndex:objc_msgSend(v19 layerIndex:{"index"), v9}];
        if ((v23 & 1) == 0)
        {
          v12 = &kCTUnderlineColorAttributeName_ptr;
          if (((v22 ^ 1) & 1) == 0)
          {
            v24 = [self->_delegate document:a3 needsTransitionForEffectContainer:v19 containerIndex:objc_msgSend(v19 layerIndex:{"index"), v9}];
            if (!v24)
            {
              goto LABEL_30;
            }

            goto LABEL_27;
          }

LABEL_25:
          if ((v23 & v15) != 1 || (v24 = -[MPAuthoringController loopTransitionFromOptions:](self, "loopTransitionFromOptions:", v11), +[MPAuthoringUtilities transitionDurationFromOptions:](MPAuthoringUtilities, "transitionDurationFromOptions:", v11), [v24 setDuration:?], !v24))
          {
LABEL_30:
            if ([v19 transition])
            {
              v29 = [v19 userInfoAttributeForKey:@"savedExportDuration"];
              [v19 setTransition:0];
              if (v29)
              {
                [v29 doubleValue];
                if (v30 > 0.0)
                {
                  [v29 doubleValue];
LABEL_41:
                  [v19 setDuration:?];
                  goto LABEL_42;
                }
              }

              if (![v19 countOfEffects])
              {
                [v19 introTransitionDuration];
                goto LABEL_41;
              }
            }

LABEL_42:
            if ([objc_msgSend(v4 objectForKey:{kMPAuthoringAudioScalingMode), "integerValue"}] == &dword_0 + 1)
            {
              [(MPAuthoringController *)self scaleDurationsInDocument:a3 withOptions:v11];
            }

            -[MPAuthoringController matchDurationsForLayers:withOptions:](self, "matchDurationsForLayers:withOptions:", [a3 layers], v11);
            -[MPAuthoringController fillDurationsForLayers:withOptions:](self, "fillDurationsForLayers:withOptions:", [a3 layers], v11);
LABEL_45:
            v39 = [(CFStringRef *)v12[26] numberWithBool:0];
            [a3 setDocumentAttribute:v39 forKey:kMPDocumentPreparedForExport];
            v40 = [a3 montage];

            [v40 unlock];
            return;
          }

LABEL_27:
          v25 = [v19 userInfoAttributeForKey:@"savedExportDuration"];
          if (v25 && (v26 = v25, [v25 doubleValue], v27 > 0.0))
          {
            [v26 doubleValue];
          }

          else
          {
            if ((([v19 countOfEffects] == 0) & v15) != 1)
            {
              goto LABEL_38;
            }

            [v19 duration];
            v32 = v31;
            [v19 introTransitionDuration];
            v34 = v33;
            [v24 duration];
            if (v32 >= v34 + v35)
            {
              goto LABEL_38;
            }

            [v19 introTransitionDuration];
            v37 = v36;
            [v24 duration];
            v28 = v37 + v38;
          }

          [v19 setDuration:v28];
LABEL_38:
          [v19 setTransition:v24];
          goto LABEL_42;
        }
      }

      else
      {
        v23 = 1;
      }

      v12 = &kCTUnderlineColorAttributeName_ptr;
      goto LABEL_25;
    }
  }
}

- (BOOL)canDocumentFitToAudio:(id)a3 withOptions:(id)a4 requiredAudioDuration:(double *)a5
{
  v9 = [a3 documentLayerGroup];

  return [(MPAuthoringController *)self canLayerGroupFitToAudio:v9 inDocument:a3 withOptions:a4 requiredAudioDuration:a5];
}

- (BOOL)canLayerGroupFitToAudio:(id)a3 inDocument:(id)a4 withOptions:(id)a5 requiredAudioDuration:(double *)a6
{
  v7 = a5;
  if (!a5)
  {
    v7 = [a3 authoringOptions];
  }

  v10 = objc_alloc_init(MPDocument);
  v11 = [NSMutableDictionary dictionaryWithDictionary:v7];
  v12 = [NSNumber numberWithInteger:1];
  [(NSMutableDictionary *)v11 setObject:v12 forKey:kMPAuthoringAudioScalingMode];
  v13 = [NSNumber numberWithBool:0];
  [(NSMutableDictionary *)v11 setObject:v13 forKey:kMPAuthoringRequestGeneratedImages];
  [(NSMutableDictionary *)v11 removeObjectForKey:kMPAuthoringLayerTimeScale];
  -[MPDocument setVideoPaths:](v10, "setVideoPaths:", [a3 videoPaths]);
  -[MPDocument setAudioPaths:](v10, "setAudioPaths:", [a3 audioPaths]);
  -[MPDocument _setMediaProperties:](v10, "_setMediaProperties:", [a4 mediaProperties]);
  [(MPDocument *)v10 setDocumentAttribute:v11 forKey:kMPDocumentAuthoringOptions];
  -[MPDocument setAssetKeyDelegate:](v10, "setAssetKeyDelegate:", [a4 assetKeyDelegate]);
  v14 = objc_alloc_init(MPAuthoringController);
  [(MPAuthoringController *)v14 authorLayerGroup:[(MPDocument *)v10 documentLayerGroup] inDocument:v10 withOptions:v11];

  v15 = [v7 objectForKey:kMPAuthoringAudioDuration];
  if (v15)
  {
    [v15 doubleValue];
  }

  else
  {
    [-[MPDocument audioPlaylist](v10 "audioPlaylist")];
  }

  v17 = v16;
  [(MPDocument *)v10 videoDuration];
  if (a6)
  {
    *a6 = v18;
  }

  v19 = vabdd_f64(v18, v17) < 1.0;

  return v19;
}

- (void)cleanup:(BOOL)a3
{
  v3 = a3;
  [(MPAuthoringController *)self cleanupClusters];
  if (v3)
  {
    [(MPWeighter *)self->_weighter clearAllItems];
    [(MPWeighter *)self->_transitionWeighter clearAllItems];
    shuffleWeighter = self->_shuffleWeighter;
    if (shuffleWeighter)
    {
      [(MPWeighter *)shuffleWeighter clearAllItems];

      self->_shuffleWeighter = 0;
    }
  }

  cachedROIInformation = self->_cachedROIInformation;
  if (cachedROIInformation)
  {

    self->_cachedROIInformation = 0;
  }

  [(MPAuthoringController *)self setAuthoredDocument:0];
}

- (void)clearROICache
{
  cachedROIInformation = self->_cachedROIInformation;
  if (cachedROIInformation)
  {

    self->_cachedROIInformation = 0;
  }
}

- (void)configureIntroInDocument:(id)a3 withOptions:(id)a4
{
  v4 = a4;
  if (![objc_msgSend(a4 objectForKey:{kMPAuthoringLive), "BOOLValue"}] || !MRIsAppleTV())
  {
LABEL_20:
    v17 = [MPAuthoringUtilities introEffectIDFromOptions:v4, v19, v20];
    if (v17 && [v17 isEqualToString:kMPFadeInEffect])
    {
      [MPAuthoringUtilities introDurationFromOptions:v4];
      if (v18 == -1.0)
      {
        v18 = 0.5;
      }

      [a3 setFadeInDuration:v18];
    }

    return;
  }

  v6 = [v4 mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [a3 layers];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v8)
  {

    goto LABEL_20;
  }

  v9 = v8;
  v19 = v4;
  v20 = a3;
  v10 = 0;
  v21 = 0;
  v11 = *v24;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v24 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v23 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [NSNumber numberWithInteger:v10];
        [v6 setObject:v14 forKey:kMPAuthoringLayerIndex];
        if ([MPAuthoringUtilities useIntroTransition:v6])
        {
          v15 = [v13 countOfEffectContainers] < 1 ? 0 : objc_msgSend(v13, "objectInEffectContainersAtIndex:", 0);
          v16 = [(MPAuthoringController *)self transitionFromOptions:v6 firstEffectContainer:v15 nextEffectContainer:v15, v19, v20];
          if (([objc_msgSend(v16 "transitionID")] & 1) == 0)
          {
            [v13 setIntroTransition:v16];
            v21 = 1;
          }
        }
      }

      ++v10;
    }

    v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v9);

  v4 = v19;
  a3 = v20;
  if ((v21 & 1) == 0)
  {
    goto LABEL_20;
  }
}

- (void)configureOutroInDocument:(id)a3 withOptions:(id)a4
{
  v7 = [MPAuthoringUtilities outroEffectIDFromOptions:a4];
  if (v7 && [v7 isEqualToString:kMPFadeOutEffect])
  {
    [MPAuthoringUtilities outroDurationFromOptions:a4];
    if (v8 == -1.0)
    {
      [-[MPAuthoringController transitionFromOptions:](self transitionFromOptions:{a4), "duration"}];
    }

    [a3 setFadeOutDuration:?];
  }
}

- (void)setTitleTextToColor:(CGColor *)a3 inDocument:(id)a4 withOptions:(id)a5
{
  v9 = [a4 documentLayerGroup];

  [(MPAuthoringController *)self setTitleTextToColor:a3 forLayerGroup:v9 inDocument:a4 withOptions:a5];
}

- (void)setTitleTextToColor:(CGColor *)a3 forLayerGroup:(id)a4 inDocument:(id)a5 withOptions:(id)a6
{
  v23 = [+[MPStyleManager sharedManager](MPStyleManager sharedManager];
  v8 = [a4 layers];
  if ([v8 count])
  {
    obj = [objc_msgSend(v8 objectAtIndex:{0), "effectContainers"}];
    if ([obj count])
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v24)
      {
        v22 = *v31;
        do
        {
          v9 = 0;
          do
          {
            if (*v31 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v25 = v9;
            v10 = *(*(&v30 + 1) + 8 * v9);
            v11 = [v23 objectForKey:@"backgroundEffect"];
            if (v11)
            {
              v12 = 2;
            }

            else
            {
              v12 = 1;
            }

            if (v12 <= [v10 countOfEffects])
            {
              v13 = [objc_msgSend(v10 "effects")];
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              v29 = 0u;
              v14 = [v13 texts];
              v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v27;
                do
                {
                  for (i = 0; i != v16; i = i + 1)
                  {
                    if (*v27 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v26 + 1) + 8 * i);
                    v20 = [[NSMutableAttributedString alloc] initWithAttributedString:{objc_msgSend(v19, "attributedString")}];
                    [v20 addAttributes:+[NSDictionary dictionaryWithObject:forKey:](NSDictionary range:{"dictionaryWithObject:forKey:", a3, kCTForegroundColorAttributeName), 0, objc_msgSend(v20, "length")}];
                    [v19 setAttributedString:v20];
                  }

                  v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
                }

                while (v16);
              }
            }

            v9 = v25 + 1;
          }

          while ((v25 + 1) != v24);
          v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v24);
      }
    }
  }
}

- (void)setAuthoredDocument:(id)a3
{
  authoredDocument = self->_authoredDocument;
  if (authoredDocument)
  {

    self->_authoredDocument = 0;
  }

  if (a3)
  {
    self->_authoredDocument = a3;
  }
}

- (id)_collectVersionInformationFromStyle:(id)a3
{
  v4 = +[NSMutableDictionary dictionary];
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    do
    {
      v10 = 0;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        v12 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
        if (v12)
        {
          [v5 setObject:v12 forKey:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v8);
  }

  [v4 setObject:v5 forKey:@"effectVersions"];

  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      v18 = 0;
      do
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v36 + 1) + 8 * v18);
        v20 = [+[MPTransitionManager sharedManager](MPTransitionManager "sharedManager")];
        if (v20)
        {
          [v13 setObject:v20 forKey:v19];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v16);
  }

  [v4 setObject:v13 forKey:@"transitionVersions"];

  v21 = objc_alloc_init(NSMutableDictionary);
  v22 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v33;
    do
    {
      v26 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v32 + 1) + 8 * v26);
        v28 = [+[MPFrameManager sharedManager](MPFrameManager "sharedManager")];
        if (v28)
        {
          [v21 setObject:v28 forKey:v27];
        }

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v24);
  }

  [v4 setObject:v21 forKey:@"frameVersions"];

  v29 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (v29)
  {
    [v4 setObject:v29 forKey:@"styleVersion"];
  }

  LODWORD(v30) = 1032805417;
  [v4 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v30), @"authoringVersion"}];
  return v4;
}

- (id)shuffleImagesByRating:(id)a3 withOptions:(id)a4
{
  [MPAuthoringUtilities videoPathsRangeFromOptions:a4];
  v7 = v6;
  v8 = [a3 count];
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (!self->_shuffleWeighter)
  {
    self->_shuffleWeighter = objc_alloc_init(MPWeighter);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [a3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(a3);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [(MPDocument *)self->_authoredDocument propertiesForMediaPath:v14];
          [objc_msgSend(v15 objectForKey:{kMPMetaDataRating), "floatValue"}];
          [(MPWeighter *)self->_shuffleWeighter addItem:v14 withWeight:(v16 * 100.0) andContraints:0];
        }

        v11 = [a3 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }
  }

  v17 = objc_alloc_init(NSMutableIndexSet);
  v18 = objc_alloc_init(NSMutableArray);
  if (v9 >= 1)
  {
    do
    {
      v19 = [(MPWeighter *)self->_shuffleWeighter getRandomIndex];
      [v18 addObject:{objc_msgSend(-[MPWeighter allItems](self->_weighter, "allItems"), "objectAtIndex:", v19)}];
      [v17 addIndex:v19];
      [(MPWeighter *)self->_shuffleWeighter addIndexToIgnore:v19];
      --v9;
    }

    while (v9);
  }

  [(MPWeighter *)self->_shuffleWeighter ignoreIndices:v17];

  return v18;
}

- (id)orderImages:(id)a3 withOptions:(id)a4
{
  if ([MPAuthoringUtilities layerHasImagesFromOptions:a4])
  {
    v7 = [MPAuthoringUtilities presentationOrderFromOptions:a4];
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v8 = +[NSMutableArray array];
        v24 = [a3 mutableCopy];
        v25 = v24;
        while ([v24 count])
        {
          v26 = random();
          v27 = v26 % [v25 count];
          [v8 addObject:{objc_msgSend(v25, "objectAtIndex:", v27)}];
          [v25 removeObjectAtIndex:v27];
          v24 = v25;
        }

        return v8;
      }

      if (v7 != 6)
      {
        return a3;
      }
    }

    else
    {
      if (!v7)
      {
        if (!self->_isAuthoring)
        {
          [(MPAuthoringController *)self setupClustersWithPaths:a3 withOptions:a4];
        }

        v10 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [+[MPClusterController sharedController](MPClusterController "sharedController")]);
        v11 = [NSMutableArray arrayWithArray:a3];
        v8 = +[NSMutableArray array];
        while ([(NSMutableArray *)v11 count])
        {
          if (![(NSMutableArray *)v10 count]|| (v12 = [(NSMutableArray *)v10 objectAtIndex:0]) == 0)
          {
            [v8 addObjectsFromArray:v11];
            [(NSMutableArray *)v11 removeAllObjects];
            break;
          }

          v13 = v12;
          v14 = [v12 allSlides];
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v33;
LABEL_20:
            v18 = 0;
            while (1)
            {
              if (*v33 != v17)
              {
                objc_enumerationMutation(v14);
              }

              if (!-[NSMutableArray containsObject:](v11, "containsObject:", [*(*(&v32 + 1) + 8 * v18) path]))
              {
                break;
              }

              if (v16 == ++v18)
              {
                v16 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
                if (v16)
                {
                  goto LABEL_20;
                }

                goto LABEL_26;
              }
            }
          }

          else
          {
LABEL_26:
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v19 = [v14 countByEnumeratingWithState:&v28 objects:v37 count:16];
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
                    objc_enumerationMutation(v14);
                  }

                  v23 = *(*(&v28 + 1) + 8 * i);
                  [v8 addObject:{objc_msgSend(v23, "path")}];
                  -[NSMutableArray removeObject:](v11, "removeObject:", [v23 path]);
                }

                v20 = [v14 countByEnumeratingWithState:&v28 objects:v37 count:16];
              }

              while (v20);
            }
          }

          [(NSMutableArray *)v10 removeObject:v13];
        }

        if (!self->_isAuthoring)
        {
          [(MPAuthoringController *)self cleanupClusters];
        }

        return v8;
      }

      if (v7 != 1)
      {
        return a3;
      }
    }

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_9E9C4;
    v36[3] = &unk_1AB390;
    v36[4] = self;
    return [a3 sortedArrayUsingComparator:v36];
  }

  return +[NSArray array];
}

- (void)authorPlacesWithImages:(id)a3 forLayerGroup:(id)a4 inDocument:(id)a5 withOptions:(id)a6
{
  v11 = objc_autoreleasePoolPush();
  v12 = [(MPAuthoringController *)self orderImages:a3 withOptions:a6];
  if ([v12 count])
  {
    v13 = [(MPAuthoringController *)self createLayersForPlacesForImages:v12 forDocument:a5 withOptions:a6];
    if (!self->_cancelAuthoring)
    {
      v14 = v13;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = *v21;
        do
        {
          v19 = 0;
          do
          {
            if (*v21 != v18)
            {
              objc_enumerationMutation(v14);
            }

            [*(*(&v20 + 1) + 8 * v19) setAudioPriority:v17 + 10];
            ++v17;
            v19 = v19 + 1;
          }

          while (v16 != v19);
          v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v16);
      }

      [a4 removeAllLayers];
      [a4 addLayers:v14];
      [(MPAuthoringController *)self scaleDurationsInDocument:a5 withOptions:a6];
    }
  }

  else
  {
    [a4 removeAllLayers];
  }

  objc_autoreleasePoolPop(v11);
}

- (void)cacheROIInformationForImages:(id)a3 withOptions:(id)a4
{
  if (!self->_cachedROIInformation)
  {
    self->_cachedROIInformation = objc_alloc_init(NSMutableDictionary);
    if ([a3 count])
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2020000000;
      v11 = 0;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_9ECC4;
      v6[3] = &unk_1AB3B8;
      v7 = 0;
      v6[4] = self;
      v6[5] = &v8;
      [a3 enumerateObjectsWithOptions:1 usingBlock:v6];
      [(NSMutableDictionary *)self->_cachedROIInformation setObject:[NSNumber forKey:"numberWithBool:" numberWithBool:?], @"movieExists"];
      _Block_object_dispose(&v8, 8);
    }
  }
}

- (id)effectsForImages:(id)a3 withOptions:(id)a4
{
  v7 = +[NSMutableArray array];
  v8 = +[MPClusterController sharedController];
  v9 = +[MPEffectManager sharedManager];
  v10 = [MPAuthoringUtilities styleFromOptions:a4];
  v164 = [MPAuthoringUtilities layerIndexFromOptions:a4];
  v173 = [MPAuthoringUtilities effectListFromOptions:a4];
  v11 = [MPAuthoringUtilities layerHasImagesFromOptions:a4];
  v162 = [MPAuthoringUtilities canRepeatEffectWithPreset:a4];
  v155 = [MPAuthoringUtilities canRepeatPreset:a4];
  v167 = [MPAuthoringUtilities useLargestEffectsFromOptions:a4];
  v157 = [MPAuthoringUtilities matchEffectsUsingTagsFromOptions:a4];
  v12 = [MPAuthoringUtilities outroEffectIDFromOptions:a4];
  v13 = [a3 count];
  v168 = v9;
  v14 = v13 - [v9 numberOfSlidesForEffectID:v12];
  v170 = self;
  v153 = v12;
  if ([(NSMutableDictionary *)self->_cachedROIInformation objectForKey:@"movieExists"])
  {
    v160 = [-[NSMutableDictionary objectForKey:](self->_cachedROIInformation objectForKey:{@"movieExists", "BOOLValue"}];
  }

  else
  {
    v160 = 1;
  }

  v15 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  obj = [objc_msgSend(a4 objectForKey:{@"isSetup", "BOOLValue"}];
  if (v14 < 0)
  {
LABEL_7:
    v16 = [a3 count];
    v153 = 0;
    goto LABEL_8;
  }

  v16 = v14;
  if (!v14)
  {
    if (![a3 count])
    {
      v16 = 0;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_8:
  v158 = [MPAuthoringUtilities ignoreClusteringForImages:a3 withOptions:a4]| v15 ^ 1;
  if ((v158 & 1) == 0 && ((v11 ^ 1) & 1) == 0)
  {
    [v8 updateClusterRatings];
    v17 = [a4 objectForKey:kMPAuthoringCachedAbsolutePaths];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = a3;
    }

    v19 = [v8 clustersBasedOnOrderedPaths:v18];
    v20 = [v8 allSlidesSortedByPaths:v18];
    if (v20)
    {
      [(MPAuthoringController *)v170 findUsableClustersForUserDefinedSlideOrderPresentation:v20 inClusters:v19];
      LOBYTE(v158) = 0;
    }

    else
    {
      LOBYTE(v158) = 1;
    }
  }

  [(MPAuthoringController *)v170 cacheROIInformationForImages:a3 withOptions:a4];
  v161 = v7;
  v154 = a4;
  v169 = a3;
  if (obj)
  {
    goto LABEL_17;
  }

  if ([MPAuthoringUtilities useTitleEffectFromOptions:a4])
  {
    v24 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
    v25 = objc_alloc_init(NSMutableArray);
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v26 = [v24 objectEnumerator];
    v27 = [v26 countByEnumeratingWithState:&v205 objects:v215 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v206;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v206 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v205 + 1) + 8 * i);
          if (([objc_msgSend(v31 objectForKey:{@"imageOnlyTitleEffect", "BOOLValue"}] & 1) == 0)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v205 objects:v215 count:16];
      }

      while (v28);
    }

    a3 = v169;
    v32 = [(MPAuthoringController *)v170 findEffectIDInPresetArray:v25 forImages:v169 withOptions:v154];

    v7 = v161;
    v23 = v173;
    if (!v32)
    {
      v32 = [MPAuthoringUtilities titleEffectFromOptions:v154];
      if (!v32)
      {
        goto LABEL_51;
      }
    }
  }

  else
  {
    if (![MPAuthoringUtilities useImageOnlyTitleEffectFromOptions:a4])
    {
LABEL_17:
      v21 = 0;
      p_isa = &v170->super.isa;
LABEL_18:
      v23 = v173;
      goto LABEL_52;
    }

    v33 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
    v34 = objc_alloc_init(NSMutableArray);
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v35 = [v33 objectEnumerator];
    v36 = [v35 countByEnumeratingWithState:&v201 objects:v214 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v202;
      do
      {
        for (j = 0; j != v37; j = j + 1)
        {
          if (*v202 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v201 + 1) + 8 * j);
          if ([objc_msgSend(v40 objectForKey:{@"imageOnlyTitleEffect", "BOOLValue"}])
          {
            [v34 addObject:v40];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v201 objects:v214 count:16];
      }

      while (v37);
    }

    if ([v34 count])
    {
      a3 = v169;
      v32 = [(MPAuthoringController *)v170 findEffectIDInPresetArray:v34 forImages:v169 withOptions:v154];
      v7 = v161;
    }

    else
    {
      v32 = 0;
      v7 = v161;
      a3 = v169;
    }

    v23 = v173;
    if (!v32)
    {
      goto LABEL_51;
    }
  }

  if (v164 == [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")])
  {
    v41 = [v32 objectForKey:@"presetID"];
    v42 = [v32 objectForKey:@"backgroundEffect"];
    v43 = [v9 numberOfSlidesForEffectID:{+[MPUtilities idOfCombinedID:](MPUtilities, "idOfCombinedID:", v41)}];
    v21 = v43;
    p_isa = &v170->super.isa;
    if (v42)
    {
      v21 = &v43[[v9 numberOfSlidesForEffectID:{+[MPUtilities idOfCombinedID:](MPUtilities, "idOfCombinedID:", v42)}]];
      if (((v21 > v16) & v11) == 0)
      {
        v41 = [NSArray arrayWithObjects:v42, v41, 0];
LABEL_248:
        [v7 addObject:v41];
        goto LABEL_18;
      }
    }

    else if (((v43 > v16) & v11) == 0)
    {
      goto LABEL_248;
    }

    v21 = 0;
    goto LABEL_18;
  }

LABEL_51:
  v21 = 0;
  p_isa = &v170->super.isa;
LABEL_52:
  if ((([(NSArray *)v23 count]== 0) & v11) == 1)
  {
    v23 = [NSArray arrayWithObject:[NSDictionary dictionaryWithObjectsAndKeys:@"JustASlide/Default", @"presetID", [NSNumber numberWithInteger:1], @"likelihood", 0]];
  }

  if ([(NSArray *)v23 count]== &dword_0 + 1)
  {
    v44 = [-[NSArray lastObject](v23 "lastObject")];
    v45 = [v9 numOfImagesForEffectPresetID:v44];
    if ((((v45 == 0x7FFFFFFFFFFFFFFFLL) & v11 ^ (v45 > 0)) & v11) == 1)
    {
      if (v21 < v16)
      {
        v46 = v45;
        v47 = v21;
        do
        {
          if (v16 - v47 >= v46)
          {
            [v161 addObject:v44];
            v48 = v46;
          }

          else
          {
            [v161 addObject:@"JustASlide/Default"];
            v48 = 1;
          }

          v47 += v48;
        }

        while (v47 < v16);
      }
    }

    else
    {
      [v7 addObject:v44];
    }

    goto LABEL_239;
  }

  if (v11)
  {
    v171 = v21;
    v156 = v16;
    [p_isa populateWeighter:p_isa[8] withEffects:v23 andOptions:v154];
    v152 = [p_isa[8] imageCounts];
    v159 = [v152 lastIndex];
    [p_isa[8] setEvenlyPickByID:{+[MPAuthoringUtilities pickEffectsEvenlyByIDWithOptions:](MPAuthoringUtilities, "pickEffectsEvenlyByIDWithOptions:", v154)}];
    v49 = [v154 objectForKey:kMPAuthoringInitiallyIgnoreEffect];
    if (v49)
    {
      v50 = [objc_msgSend(p_isa[8] "allItems")];
      if (v50 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [p_isa[8] ignoreIndex:v50];
      }
    }

    v174 = objc_alloc_init(NSMutableArray);
    if ((obj & 1) == 0)
    {
      v199 = 0u;
      v200 = 0u;
      v197 = 0u;
      v198 = 0u;
      v51 = [(NSArray *)v23 countByEnumeratingWithState:&v197 objects:v213 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v198;
        do
        {
          for (k = 0; k != v52; k = k + 1)
          {
            if (*v198 != v53)
            {
              objc_enumerationMutation(v23);
            }

            v55 = *(*(&v197 + 1) + 8 * k);
            v56 = [v55 objectForKey:@"order"];
            if (v56)
            {
              v57 = v56;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || (!MRIsAppleTV() ? (v58 = @"Desktop") : (v58 = @"AppleTV"), (v57 = [v57 objectForKey:v58]) != 0))
              {
                v59 = [v57 integerValue];
                if (v59 >= [v174 count])
                {
                  [v174 addObject:v55];
                }

                else
                {
                  [v174 insertObject:v55 atIndex:v59];
                }
              }
            }
          }

          v52 = [(NSArray *)v23 countByEnumeratingWithState:&v197 objects:v213 count:16];
        }

        while (v52);
      }
    }

    v60 = v174;
    if ([v174 count])
    {
      v61 = objc_alloc_init(MPWeighter);
      [(MPAuthoringController *)v170 populateWeighter:v61 withEffects:v174 andOptions:v154];
      v195 = 0u;
      v196 = 0u;
      v193 = 0u;
      v194 = 0u;
      obja = [(MPWeighter *)v61 allItems];
      v62 = [obja countByEnumeratingWithState:&v193 objects:v212 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = *v194;
        do
        {
          for (m = 0; m != v63; m = m + 1)
          {
            if (*v194 != v64)
            {
              objc_enumerationMutation(obja);
            }

            v66 = *(*(&v193 + 1) + 8 * m);
            v67 = [MPUtilities idOfCombinedID:v66];
            v68 = -[MPAuthoringController findEffectIDInWeighter:images:startingIndex:count:triesToFind:constraints:previousTags:](v170, "findEffectIDInWeighter:images:startingIndex:count:triesToFind:constraints:previousTags:", v61, v169, v171, [v168 numberOfSlidesForEffectID:v66], 0, 0, 0);
            if (v68)
            {
              v69 = v68;
              v171 = &v171[[v168 numberOfSlidesForEffectID:v67]];
              [v161 addObject:v69];
            }
          }

          v63 = [obja countByEnumeratingWithState:&v193 objects:v212 count:16];
        }

        while (v63);
      }

      if ([v161 count])
      {
        v70 = v170;
        v71 = [-[MPWeighter allItems](v170->_weighter "allItems")];
        v72 = v154;
        a3 = v169;
        v73 = v156;
        v74 = v164;
        v60 = v174;
        if (v71 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(MPWeighter *)v170->_weighter ignoreIndex:v71];
        }
      }

      else
      {
        v72 = v154;
        a3 = v169;
        v70 = v170;
        v73 = v156;
        v74 = v164;
        v60 = v174;
      }
    }

    else
    {
      v72 = v154;
      v70 = v170;
      v73 = v156;
      v74 = v164;
    }

    v151 = [objc_msgSend(v72 objectForKey:{kMPAuthoringLive), "BOOLValue"}];
    if (v151 && [-[MPDocument layers](v70->_authoredDocument "layers")] > v74 && (v75 = objc_msgSend(-[MPDocument layers](v70->_authoredDocument, "layers"), "objectAtIndex:", v74), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (v76 = objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v75, "effectContainers"), "lastObject"), "effects"), "lastObject"), (v77 = -[MPWeighter constraintsForItem:](v70->_weighter, "constraintsForItem:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%@", objc_msgSend(v76, "effectID"), objc_msgSend(v76, "presetID")))) != 0))
    {
      objb = v77[2];
    }

    else
    {
      objb = 0;
    }

    v78 = v171;
    if (v171 < v73)
    {
      v175 = 0;
      while (1)
      {
        v172 = v78;
        v192 = 0x7FFFFFFFFFFFFFFFLL;
        v79 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v158 & 1) == 0)
        {
          v79 = [(MPAuthoringController *)v70 bestCountFromClusterForEffectWithImages:a3 atStartIndex:v78 withWeighter:v70->_weighter usedIndex:&v192];
        }

        v80 = v79;
        v81 = v172;
        v163 = v73 - v172;
        v82 = v73 - v172 >= v159 ? v159 : v73 - v172;
        v83 = v82 > 0 ? v160 : 0;
        if (v83 == 1)
        {
          v84 = -1;
          while (([objc_msgSend(-[NSMutableDictionary objectForKey:](v70->_cachedROIInformation objectForKey:{objc_msgSend(a3, "objectAtIndex:", v81)), "objectForKey:", @"isMovie", "BOOLValue"}] & 1) == 0)
          {
            --v84;
            ++v81;
            if (v82 + v84 == -1)
            {
              goto LABEL_123;
            }
          }

          [(MPWeighter *)v70->_weighter clearIgnoreIndices];
          v82 = -v84;
LABEL_123:
          v85 = v167;
        }

        else
        {
          v85 = v167;
        }

        v86 = v80;
        if (v80 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

LABEL_141:
        v94 = objc_alloc_init(NSMutableIndexSet);
        v95 = [(MPWeighter *)v70->_weighter ignoredIndices];
        if ((v85 & 1) == 0)
        {
          v165 = v86;
          v190 = 0u;
          v191 = 0u;
          v188 = 0u;
          v189 = 0u;
          v96 = [(MPWeighter *)v170->_weighter allConstraints];
          v97 = [v96 countByEnumeratingWithState:&v188 objects:v211 count:16];
          if (v97)
          {
            v98 = v97;
            v99 = 0;
            v100 = *v189;
            do
            {
              for (n = 0; n != v98; n = n + 1)
              {
                if (*v189 != v100)
                {
                  objc_enumerationMutation(v96);
                }

                v102 = *(*(*(&v188 + 1) + 8 * n) + 8);
                if (v102 <= v82 && ([v95 containsIndex:v99] & 1) == 0)
                {
                  [v94 addIndex:v102];
                }

                ++v99;
              }

              v98 = [v96 countByEnumeratingWithState:&v188 objects:v211 count:16];
            }

            while (v98);
          }

          v86 = v165;
          [v94 removeIndex:v165];
          a3 = v169;
          v85 = v167;
        }

        v166 = 0;
        v187 = 0;
        v103 = -1;
        while ((v103 == -1) | v85 & 1)
        {
LABEL_166:
          if (v85)
          {
            v112 = v170;
            v113 = [(MPWeighter *)v170->_weighter numberOfItemsWithImageCount:v86];
            v114 = (v113 & ~(v113 >> 63)) + 1;
            while (--v114)
            {
              v115 = a3;
              v116 = a3;
              v117 = v86;
              v93 = [(MPAuthoringController *)v170 findEffectIDInWeighter:v170->_weighter images:v116 startingIndex:v172 count:v86 triesToFind:&v187 constraints:0 previousTags:v175];
              v118 = [-[MPWeighter allItems](v170->_weighter "allItems")];
              if (![(MPWeighter *)v170->_weighter itemAtIndex:v118 meetsContraints:objb])
              {
                [(MPWeighter *)v170->_weighter addIndexToIgnore:v118];
                v93 = 0;
              }

              v86 = v117;
              a3 = v115;
              if (v93)
              {
                goto LABEL_177;
              }
            }

            v93 = 0;
          }

          else if (v86 == v103)
          {
            v93 = 0;
            v112 = v170;
          }

          else
          {
            v112 = v170;
            v93 = [(MPAuthoringController *)v170 findEffectIDInWeighter:v170->_weighter images:a3 startingIndex:v172 count:v86 triesToFind:&v187 constraints:objb previousTags:v175];
          }

LABEL_177:
          if (v162)
          {
            v119 = v163;
          }

          else
          {
            v119 = v163;
            if ([v95 containsIndex:{objc_msgSend(-[MPWeighter allItems](v112->_weighter, "allItems"), "indexOfObject:", v93)}] && objc_msgSend(v94, "count"))
            {
              v93 = 0;
            }
          }

          if (([v94 count] | v93) == 0 && !v166)
          {
            v120 = a3;
            v121 = v86;
            [v94 addIndex:1];
            v122 = [v95 firstIndex];
            if (v122 != 0x7FFFFFFFFFFFFFFFLL)
            {
              for (ii = v122; ii != 0x7FFFFFFFFFFFFFFFLL; ii = [v95 indexGreaterThanIndex:ii])
              {
                if (*([-[MPWeighter allConstraints](v112->_weighter "allConstraints")] + 1) <= v119)
                {
                  [v94 addIndex:?];
                }
              }
            }

            v166 = [v94 count] != 0;
            v86 = v121;
            a3 = v120;
          }

          if ([v94 count])
          {
            v103 = v86;
            v85 = v167;
            if (!v93)
            {
              continue;
            }
          }

          goto LABEL_193;
        }

        if ([v94 count])
        {
          v104 = objc_alloc_init(NSMutableIndexSet);
          v183 = 0u;
          v184 = 0u;
          v185 = 0u;
          v186 = 0u;
          v105 = [(MPWeighter *)v170->_weighter allConstraints];
          v106 = [v105 countByEnumeratingWithState:&v183 objects:v210 count:16];
          if (v106)
          {
            v107 = v106;
            v108 = 0;
            v109 = *v184;
            do
            {
              for (jj = 0; jj != v107; jj = jj + 1)
              {
                if (*v184 != v109)
                {
                  objc_enumerationMutation(v105);
                }

                if ([v94 containsIndex:*(*(*(&v183 + 1) + 8 * jj) + 8)])
                {
                  [v104 addIndex:v108];
                }

                ++v108;
              }

              v107 = [v105 countByEnumeratingWithState:&v183 objects:v210 count:16];
            }

            while (v107);
          }

          v111 = [(MPWeighter *)v170->_weighter getRandomIndexInSubset:v104];

          v86 = *([-[MPWeighter allConstraints](v170->_weighter "allConstraints")] + 1);
          [v94 removeIndex:v86];
          a3 = v169;
          v85 = v167;
          goto LABEL_166;
        }

        v93 = 0;
LABEL_193:
        v124 = v187 < 1 || v86 < 1;
        v70 = v170;
        if (!v124)
        {
          v125 = 0;
          v126 = v172;
          v127 = &v172[v86];
          do
          {
            v128 = -[NSMutableDictionary objectForKey:](v170->_cachedROIInformation, "objectForKey:", [a3 objectAtIndex:v126]);
            if ([objc_msgSend(v128 objectForKey:{@"canSwitch", "BOOLValue"}])
            {
              if ((v187 & v125) != 0)
              {
                [v128 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 0), @"wasFlipped"}];
              }

              ++v125;
            }

            ++v126;
          }

          while (v126 < v127);
        }

        if (((v93 == 0) & v160) == 1)
        {
          if ([(MPAuthoringController *)v170 imagesHaveMovie:a3 start:v172 count:v159])
          {
            v129 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 1), @"numOfImages", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 0), @"ignoreMovies", 0}];
            v130 = [(MPWeighter *)v170->_weighter indicesMeetingConstraints:v129];

            if ([v130 count])
            {
              v131 = [v130 firstIndex];
              if (v131 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v132 = v131;
                do
                {
                  if (-[MPAuthoringController imagesHaveMovie:start:count:](v170, "imagesHaveMovie:start:count:", a3, v172, *([-[MPWeighter allConstraints](v170->_weighter "allConstraints")] + 1)))
                  {
                    v93 = [-[MPWeighter allItems](v170->_weighter "allItems")];
                  }

                  else
                  {
                    v93 = 0;
                  }

                  v133 = [v130 indexGreaterThanIndex:v132];
                  if (v133 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    break;
                  }

                  v132 = v133;
                }

                while (!v93);
                goto LABEL_213;
              }
            }
          }

LABEL_214:
          v134 = [(MPWeighter *)v170->_weighter allItems];
          v93 = [v134 objectAtIndex:v192];
        }

        else
        {
LABEL_213:
          if (!v93)
          {
            goto LABEL_214;
          }
        }

LABEL_216:
        weighter = v70->_weighter;
        if (v162)
        {
          [(MPWeighter *)weighter clearIgnoreIndices];
        }

        else
        {
          v136 = [-[MPWeighter allItems](weighter "allItems")];
          if (v136 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(MPWeighter *)v70->_weighter ignoreIndex:v136];
          }

          if ((v155 & 1) == 0)
          {
            v137 = [MPUtilities presetIDOfCombinedID:v93];
            v179 = 0u;
            v180 = 0u;
            v181 = 0u;
            v182 = 0u;
            v138 = [(MPWeighter *)v70->_weighter allItems];
            v139 = [v138 countByEnumeratingWithState:&v179 objects:v209 count:16];
            if (v139)
            {
              v140 = v139;
              v141 = 0;
              v142 = *v180;
              do
              {
                for (kk = 0; kk != v140; kk = kk + 1)
                {
                  if (*v180 != v142)
                  {
                    objc_enumerationMutation(v138);
                  }

                  if ([*(*(&v179 + 1) + 8 * kk) hasSuffix:v137])
                  {
                    [(MPWeighter *)v70->_weighter addIndexToIgnore:v141];
                  }

                  ++v141;
                }

                v140 = [v138 countByEnumeratingWithState:&v179 objects:v209 count:16];
              }

              while (v140);
            }
          }
        }

        if (v70->_logLevel >= 2)
        {
          v144 = [-[MPWeighter allItems](v70->_weighter "allItems")];
          if (v144 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(MPWeighter *)v70->_weighter increaseUsageCountOfObjectAtIndex:v144];
          }
        }

        v145 = [v168 numOfImagesForEffectPresetID:v93];
        [v161 addObject:v93];
        v146 = [(MPWeighter *)v70->_weighter constraintsForItem:v93];
        if (v146)
        {
          objb = v146[2];
        }

        else
        {
          objb = 0;
        }

        a3 = v169;
        if (v157)
        {
          v175 = [objc_msgSend(v168 attributesForEffectID:+[MPUtilities idOfCombinedID:](MPUtilities andPresetID:{"idOfCombinedID:", v93), +[MPUtilities idOfCombinedID:](MPUtilities, "idOfCombinedID:", v93)), "objectForKey:", @"endLayoutTags"}];
        }

        v78 = &v172[v145];
        v73 = v156;
        if (&v172[v145] >= v156)
        {
          goto LABEL_239;
        }
      }

      if (objb)
      {
        v87 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v82), @"numOfImages", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 0), @"hasPanorama", 0}];
        [v87 addEntriesFromDictionary:objb];
        v192 = [(MPWeighter *)v70->_weighter getRandomIndexMeetingContraints:v87];

        if (v85)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v192 = [(MPWeighter *)v70->_weighter getRandomIndexWithNoPanoramasForImageCount:v82];
        if (v85)
        {
LABEL_127:
          v88 = [v152 lastIndex];
          if (v151)
          {
            v89 = vcvtpd_s64_f64(vcvtd_n_f64_s64(v163, 1uLL));
            if (v163 <= v88)
            {
              v86 = v82;
            }

            else
            {
              v86 = v89;
            }
          }

          else
          {
            v86 = v82;
            if (v82 > v88)
            {
              if (v82 >= (2 * [v152 lastIndex]))
              {
                v86 = [v152 lastIndex];
              }

              else
              {
                v86 = vcvtpd_s64_f64(vcvtd_n_f64_s64(v82, 1uLL));
              }
            }
          }

LABEL_138:
          if (v86 == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_139:
            [(MPWeighter *)v70->_weighter clearIgnoreIndices];
            v91 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v163), @"numOfImages", 0}];
            v92 = [(MPWeighter *)v70->_weighter getRandomIndexMeetingContraints:v91];

            v93 = @"JustASlide/Default";
            if (v92 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v93 = [-[MPWeighter allItems](v70->_weighter "allItems")];
            }

            goto LABEL_216;
          }

          goto LABEL_141;
        }
      }

      if (v192 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_139;
      }

      v90 = [(MPWeighter *)v70->_weighter allConstraints];
      v86 = *([v90 objectAtIndex:v192] + 1);
      goto LABEL_138;
    }
  }

LABEL_239:
  v147 = [MPAuthoringUtilities lastPresetFromOptions:v154];
  if (v147)
  {
    v148 = v147;
    if (([objc_msgSend(v154 objectForKey:{@"hasMoreImages", "BOOLValue"}] & 1) == 0)
    {
      v149 = +[MPAuthoringUtilities idFromPresetID:](MPAuthoringUtilities, "idFromPresetID:", [v161 lastObject]);
      [v161 removeObjectAtIndex:{objc_msgSend(v161, "count") - 1}];
      [v161 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%@", v149, v148)}];
    }
  }

  if (v153 && ([v153 hasPrefix:@"Fade"] & 1) == 0)
  {
    [v161 addObject:v153];
  }

  return v161;
}

- (BOOL)imagesHaveMovie:(id)a3 start:(int64_t)a4 count:(int64_t)a5
{
  v9 = [a3 count];
  if (a5 < 1)
  {
    return 0;
  }

  v10 = v9;
  v11 = a5 + a4;
  while (a4 >= v10 || ([objc_msgSend(-[NSMutableDictionary objectForKey:](self->_cachedROIInformation objectForKey:{objc_msgSend(a3, "objectAtIndex:", a4)), "objectForKey:", @"isMovie", "BOOLValue"}] & 1) == 0)
  {
    if (++a4 >= v11)
    {
      return 0;
    }
  }

  return 1;
}

- (int64_t)bestCountFromClusterForEffectWithImages:(id)a3 atStartIndex:(int64_t)a4 withWeighter:(id)a5 usedIndex:(int64_t *)a6
{
  v9 = [+[MPClusterController sharedController](MPClusterController "sharedController")];
  v10 = [+[MPClusterController sharedController](MPClusterController "sharedController")];
  if (!v10)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = [v10 allSlides];
  v12 = [v11 count];
  v13 = v12 - [v11 indexOfObject:v9];
  [(MPWeighter *)self->_weighter clearIgnoreIndices];
  v14 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v13), @"numOfImages", 0}];
  v15 = [a5 indicesEqualingConstraints:v14];
  if ([v15 count])
  {
    v16 = [a5 getRandomIndexInSubset:v15];
  }

  else
  {
    v16 = [a5 getRandomIndexMeetingContraints:v14];
  }

  v17 = *([objc_msgSend(a5 "allConstraints")] + 1);

  if (a6)
  {
    *a6 = v17;
  }

  return v17;
}

- (id)findEffectIDInPresetArray:(id)a3 forImages:(id)a4 withOptions:(id)a5
{
  v9 = objc_alloc_init(MPWeighter);
  [(MPAuthoringController *)self populateWeighter:v9 withEffects:a3 andOptions:a5];
  v10 = [(MPWeighter *)v9 imageCounts];
  if (![v10 lastIndex])
  {
    goto LABEL_26;
  }

  if ([MPAuthoringUtilities ignoreClusteringForImages:a4 withOptions:a5])
  {
    goto LABEL_14;
  }

  v11 = [(MPAuthoringController *)self bestCountFromClusterForEffectWithImages:a4 atStartIndex:0 withWeighter:v9 usedIndex:0];
  if (([v10 containsIndex:v11] & 1) == 0)
  {
    v11 = [v10 indexLessThanIndex:v11];
  }

  if (v11 == 0x7FFFFFFFFFFFFFFFLL || (v12 = [(MPAuthoringController *)self findEffectIDInWeighter:v9 images:a4 startingIndex:0 count:v11 triesToFind:0 constraints:0 previousTags:0]) == 0)
  {
LABEL_14:
    v13 = [v10 lastIndex];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_26;
    }

    v14 = v13;
    do
    {
      if ([a4 count] >= v14)
      {
        v12 = [(MPAuthoringController *)self findEffectIDInWeighter:v9 images:a4 startingIndex:0 count:v14 triesToFind:0 constraints:0 previousTags:0];
      }

      else
      {
        v12 = 0;
      }

      v15 = [v10 indexLessThanIndex:v14];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v14 = v15;
    }

    while (!v12);
    if (!v12)
    {
      goto LABEL_26;
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [a3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
LABEL_17:
    v19 = 0;
    while (1)
    {
      if (*v25 != v18)
      {
        objc_enumerationMutation(a3);
      }

      v20 = *(*(&v24 + 1) + 8 * v19);
      v21 = [v20 objectForKey:@"presetID"];
      v22 = [v20 objectForKey:@"backgroundEffect"];
      if (!v22)
      {
        v22 = v21;
      }

      if ([v22 isEqualToString:v12])
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [a3 countByEnumeratingWithState:&v24 objects:v28 count:16];
        v20 = 0;
        if (v17)
        {
          goto LABEL_17;
        }

        break;
      }
    }
  }

  else
  {
LABEL_26:
    v20 = 0;
  }

  return v20;
}

- (void)populateWeighter:(id)a3 withEffects:(id)a4 andOptions:(id)a5
{
  if ([a3 count])
  {
    if ([objc_msgSend(a5 objectForKey:{kMPAuthoringLive), "BOOLValue"}])
    {
      return;
    }

    [a3 clearAllItems];
  }

  v102 = +[MPEffectManager sharedManager];
  [MPAuthoringUtilities aspectRatioFromOptions:a5];
  v8 = v7;
  v9 = [MPAuthoringUtilities screenSizeFromOptions:a5];
  v91 = [MPAuthoringUtilities matchEffectsUsingTagsFromOptions:a5];
  v10 = [MPAuthoringUtilities styleFromOptions:a5];
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v11 = [a4 countByEnumeratingWithState:&v139 objects:v149 count:16];
  if (v11)
  {
    v12 = v11;
    v89 = self;
    v99 = 0;
    v103 = *v140;
    v88 = v10;
    v90 = v9;
    do
    {
      v13 = 0;
      v93 = v12;
      do
      {
        if (*v140 != v103)
        {
          objc_enumerationMutation(a4);
        }

        v14 = *(*(&v139 + 1) + 8 * v13);
        v15 = [v14 objectForKey:@"likelihood"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (MRIsAppleTV())
          {
            v16 = @"AppleTV";
          }

          else
          {
            v16 = @"Desktop";
          }

          v15 = [v15 objectForKey:v16];
        }

        v17 = [v14 objectForKey:@"presetID"];
        if ([v14 objectForKey:@"backgroundEffect"])
        {
          v17 = [v14 objectForKey:@"backgroundEffect"];
        }

        v18 = [v14 objectForKey:@"exclusion"];
        v104 = v15;
        if (MRIsAppleTV() && (v137 = 0u, v138 = 0u, v135 = 0u, v136 = 0u, (v19 = [v18 countByEnumeratingWithState:&v135 objects:v148 count:16]) != 0))
        {
          v20 = v19;
          v21 = *v136;
          v22 = 1;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v136 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v22 &= [*(*(&v135 + 1) + 8 * i) isEqualToString:@"AppleTV"] ^ 1;
            }

            v20 = [v18 countByEnumeratingWithState:&v135 objects:v148 count:16];
          }

          while (v20);
        }

        else
        {
          v22 = 1;
        }

        switch(v9)
        {
          case 2uLL:
            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            v32 = [v18 countByEnumeratingWithState:&v123 objects:v145 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v124;
              do
              {
                for (j = 0; j != v33; j = j + 1)
                {
                  if (*v124 != v34)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v22 &= [*(*(&v123 + 1) + 8 * j) isEqualToString:@"smallScreen"] ^ 1;
                }

                v33 = [v18 countByEnumeratingWithState:&v123 objects:v145 count:16];
              }

              while (v33);
            }

            break;
          case 1uLL:
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v28 = [v18 countByEnumeratingWithState:&v127 objects:v146 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v128;
              do
              {
                for (k = 0; k != v29; k = k + 1)
                {
                  if (*v128 != v30)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v22 &= [*(*(&v127 + 1) + 8 * k) isEqualToString:@"mediumScreen"] ^ 1;
                }

                v29 = [v18 countByEnumeratingWithState:&v127 objects:v146 count:16];
              }

              while (v29);
            }

            break;
          case 0uLL:
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v24 = [v18 countByEnumeratingWithState:&v131 objects:v147 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v132;
              do
              {
                for (m = 0; m != v25; m = m + 1)
                {
                  if (*v132 != v26)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v22 &= [*(*(&v131 + 1) + 8 * m) isEqualToString:@"largeScreen"] ^ 1;
                }

                v25 = [v18 countByEnumeratingWithState:&v131 objects:v147 count:16];
              }

              while (v25);
            }

            break;
        }

        v36 = v14;
        v37 = [v14 objectForKey:@"minAspectRatio"];
        if (v37)
        {
          [v37 floatValue];
          v39 = v38 <= 1.0 || v8 <= 1.0;
          if ((!v39 || v38 < 1.0 && v8 < 1.0) && v8 < v38 + -0.00999999978)
          {
            LOBYTE(v22) = 0;
          }
        }

        v40 = [v14 objectForKey:@"maxAspectRatio"];
        if (!v40 || (([v40 floatValue], v41 <= 1.0) || v8 <= 1.0) && (v41 >= 1.0 || v8 >= 1.0) || v8 <= v41 + 0.00999999978)
        {
          if (((v17 != 0) & v22) == 1)
          {
            v42 = [v102 numOfImagesForEffectPresetID:v17];
            v43 = objc_alloc_init(MPWeighterConstraint);
            v105 = v42;
            v43->numOfImages = v42;
            v44 = [objc_msgSend(v36 objectForKey:{@"moviesOnly", "BOOLValue"}];
            v101 = [objc_msgSend(v36 objectForKey:{@"ignoreMovies", "BOOLValue"}];
            v45 = [MPUtilities idOfCombinedID:v17];
            v46 = [v102 orientationForEffectID:v45];
            v47 = v46;
            if ((v8 >= 1.0 || ([v46 isEqualToString:@"landscape"] & 1) == 0) && (v8 < 1.0 || (objc_msgSend(v47, "isEqualToString:", @"portrait") & 1) == 0))
            {
              v94 = v44;
              v97 = v17;
              v98 = v13;
              v48 = [MPUtilities presetIDOfCombinedID:v17];
              v49 = [objc_msgSend(v102 mediaAspectRatioHintsForEffectID:v45 usingPresetID:v48 defaultAspectRatio:{v8), "allValues"}];
              v96 = v36;
              v50 = [v36 objectForKey:@"aspectRatios"];
              if (v50)
              {
                v49 = v50;
              }

              v119 = 0u;
              v120 = 0u;
              v121 = 0u;
              v122 = 0u;
              v51 = [v49 countByEnumeratingWithState:&v119 objects:v144 count:16];
              if (v51)
              {
                v52 = v51;
                v53 = 0;
                v54 = 0;
                v106 = 0;
                v107 = 0;
                v55 = *v120;
                do
                {
                  v56 = 0;
                  v57 = v106;
                  do
                  {
                    if (*v120 != v55)
                    {
                      objc_enumerationMutation(v49);
                    }

                    [*(*(&v119 + 1) + 8 * v56) floatValue];
                    v59 = v58;
                    if (v58 >= 1.075 || v59 <= 0.95)
                    {
                      if (v58 >= 3.0)
                      {
                        ++v54;
                      }

                      else if (v59 >= 1.075)
                      {
                        ++v57;
                      }

                      else
                      {
                        ++v107;
                      }
                    }

                    else
                    {
                      ++v53;
                    }

                    v56 = v56 + 1;
                  }

                  while (v52 != v56);
                  v106 = v57;
                  v52 = [v49 countByEnumeratingWithState:&v119 objects:v144 count:16];
                }

                while (v52);
              }

              else
              {
                v54 = 0;
                v106 = 0;
                v107 = 0;
              }

              v95 = v43;
              v114 = +[NSMutableArray array];
              v60 = +[NSMutableArray array];
              v61 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
              v115 = 0u;
              v116 = 0u;
              v117 = 0u;
              v118 = 0u;
              v62 = [v61 countByEnumeratingWithState:&v115 objects:v143 count:16];
              if (v62)
              {
                v63 = v62;
                v111 = 0;
                v112 = 0;
                v109 = 0;
                v110 = 0;
                v108 = 0;
                v113 = 0;
                v64 = 0;
                v65 = *v116;
                do
                {
                  for (n = 0; n != v63; n = n + 1)
                  {
                    if (*v116 != v65)
                    {
                      objc_enumerationMutation(v61);
                    }

                    v67 = *(*(&v115 + 1) + 8 * n);
                    v68 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
                    if (v68 > 3)
                    {
                      if (v68 == &dword_4)
                      {
                        ++v111;
                      }

                      else if (v68 == (&dword_4 + 1))
                      {
                        ++v109;
                      }

                      else if (v68 == (&dword_4 + 2))
                      {
                        ++v108;
                      }
                    }

                    else if (v68 == (&dword_0 + 1))
                    {
                      ++v110;
                    }

                    else if (v68 == (&dword_0 + 2))
                    {
                      ++v112;
                    }

                    else
                    {
                      v69 = v113;
                      if (v68 == (&dword_0 + 3))
                      {
                        v69 = v113 + 1;
                      }

                      v113 = v69;
                    }

                    v70 = [v67 objectForKey:@"maxBreak"];
                    if (v70)
                    {
                      [v114 addObject:v70];
                    }

                    v71 = [v67 objectForKey:@"minBreak"];
                    if (v71)
                    {
                      [v60 addObject:v71];
                    }

                    ++v64;
                  }

                  v63 = [v61 countByEnumeratingWithState:&v115 objects:v143 count:16];
                }

                while (v63);
              }

              else
              {
                v111 = 0;
                v112 = 0;
                v109 = 0;
                v110 = 0;
                v108 = 0;
                v113 = 0;
              }

              v72 = 0x7FFFFFFFFFFFFFFFLL;
              v73 = v105;
              if (v105 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v74 = 0;
                v75 = 0;
                v54 = 0;
                v76 = 0;
                v43 = v95;
                v77 = v101;
              }

              else
              {
                v43 = v95;
                v77 = v101;
                if (v105 < 1)
                {
                  v76 = 0;
                }

                else
                {
                  v78 = 0;
                  v76 = 0;
                  do
                  {
                    v79 = [(MPAuthoringController *)v89 determineIfSlideDisplayesForTheWholeDurationForEffect:v45 presetID:v48 atIndex:v78 inStyleID:v88];
                    v73 = v105;
                    if (v105 == 1)
                    {
                      v80 = 1;
                    }

                    else
                    {
                      v80 = v79;
                    }

                    v76 += v80;
                    ++v78;
                  }

                  while (v105 != v78);
                }

                v75 = v106;
                v74 = v107;
                v72 = v73 - v106 - (v54 + v107);
              }

              -[MPWeighterConstraint setNextConstraints:](v43, "setNextConstraints:", [v96 objectForKey:@"nextConstraints"]);
              [(MPWeighterConstraint *)v43 setPresetID:v48];
              v43->movieCount = v76;
              v43->moviesOnly = v94;
              v43->ignoreMovies = v77;
              v43->wideLandscape = v54;
              v43->square = v72;
              v43->landscape = v75;
              v43->portrait = v74;
              v43->hPanoramas = v110;
              v43->vPanoramas = v112;
              v43->supportsHPanoramas = v111;
              v43->supportsVPanoramas = v109;
              v43->supportsAllPanoramas = v108;
              v43->allPanoramas = v113;
              v86 = v110 > 0 || v112 > 0 || v113 > 0 || v111 > 0 || v109 > 0 || v108 > 0;
              v43->hasPanorama = v86;
              [(MPWeighterConstraint *)v43 setMaxAspectRatios:v114];
              [(MPWeighterConstraint *)v43 setMinAspectRatios:v60];
              v13 = v98;
              if (v91)
              {
                -[MPWeighterConstraint setTags:](v43, "setTags:", [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")]);
              }

              v99 |= v43->hasPanorama;
              [a3 addItem:v97 withWeight:objc_msgSend(v104 andContraints:{"integerValue"), v43}];
              v9 = v90;
            }

            v12 = v93;
          }
        }

        v13 = v13 + 1;
      }

      while (v13 != v12);
      v12 = [a4 countByEnumeratingWithState:&v139 objects:v149 count:16];
    }

    while (v12);
    v87 = v99 ^ 1;
  }

  else
  {
    v87 = 1;
  }

  [a3 setIgnorePanoramas:v87 & 1];
}

- (void)populateWeighter:(id)a3 withTransitions:(id)a4 andOptions:(id)a5
{
  if ([a3 count])
  {
    if ([objc_msgSend(a5 objectForKey:{kMPAuthoringLive), "BOOLValue"}])
    {
      return;
    }

    [a3 clearAllItems];
  }

  v7 = [MPAuthoringUtilities useTransitionLayoutTagsWithOptions:a5];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [a4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(a4);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = objc_alloc_init(MPWeighterConstraint);
          if (v7)
          {
            v22 = [+[MPTransitionManager sharedManager](MPTransitionManager "sharedManager")];
            -[MPWeighterConstraint setTags:](v17, "setTags:", [v22 objectForKey:@"tags"]);
            v17->tagsOnSourceOnly = [objc_msgSend(v22 objectForKey:{@"tagsOnSourceOnly", "BOOLValue"}];
          }

          v20 = a3;
          v21 = v12;
          v19 = &dword_0 + 1;
          goto LABEL_22;
        }

        v13 = [v12 objectForKey:@"likelihood"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (MRIsAppleTV())
          {
            v14 = @"AppleTV";
          }

          else
          {
            v14 = @"Desktop";
          }

          v13 = [v13 objectForKey:v14];
        }

        v15 = [v12 objectForKey:@"presetID"];
        if (v15)
        {
          v16 = v15;
          v17 = objc_alloc_init(MPWeighterConstraint);
          v18 = [v12 objectForKey:@"constraints"];
          if (v18)
          {
            -[MPWeighterConstraint setPresetID:](v17, "setPresetID:", [v18 objectForKey:@"presetID"]);
          }

          v19 = [v13 integerValue];
          v20 = a3;
          v21 = v16;
LABEL_22:
          [v20 addItem:v21 withWeight:v19 andContraints:v17];

          continue;
        }
      }

      v9 = [a4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }
}

- (id)findEffectIDInWeighter:(id)a3 images:(id)a4 startingIndex:(int64_t)a5 count:(int64_t)a6 triesToFind:(int64_t *)a7 constraints:(id)a8 previousTags:(id)a9
{
  v12 = [a4 count];
  v13 = a6 + a5;
  v41 = a6;
  v42 = a5;
  if (a6 < 1)
  {
    v45 = 0;
    v17 = 0.0;
  }

  else
  {
    v14 = a5;
    v15 = 0;
    v45 = 0;
    do
    {
      if (v14 < v12)
      {
        v16 = -[NSMutableDictionary objectForKey:](self->_cachedROIInformation, "objectForKey:", [a4 objectAtIndex:v14]);
        v15 += [objc_msgSend(v16 objectForKey:{@"canSwitch", "BOOLValue"}];
        v45 += [objc_msgSend(v16 objectForKey:{@"isMovie", "BOOLValue"}];
      }

      ++v14;
    }

    while (v14 < v13);
    v17 = v15;
    a5 = v42;
  }

  v18 = 0;
  v40 = exp2f(v17);
  v49 = v12;
  do
  {
    v46 = v18;
    v51 = +[NSMutableArray array];
    if (v41 < 1)
    {
      v23 = 0;
      v22 = 0;
      v21 = 0;
      v47 = 0;
      v48 = 0;
      v20 = 0;
      v19 = 0;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v47 = 0;
      v48 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      do
      {
        if (a5 < v12)
        {
          v52 = v22;
          v24 = v13;
          v25 = [a4 objectAtIndex:a5];
          v26 = [(NSMutableDictionary *)self->_cachedROIInformation objectForKey:v25];
          [objc_msgSend(v26 objectForKey:{@"aspectRatio", "floatValue"}];
          v27 = [v26 objectForKey:@"imageAspectRatio"];
          v28 = self;
          if (v27)
          {
            v29 = v27;
            [v27 floatValue];
            v31 = v30;
            [v51 addObject:v29];
            self = v28;
          }

          else
          {
            authoredDocument = self->_authoredDocument;
            if (!authoredDocument)
            {
              NSLog(@"Going to create some bad layouts!!!");
              authoredDocument = self->_authoredDocument;
            }

            [(MPDocument *)authoredDocument resolutionForPath:v25];
            v31 = v33 / v34;
            *&v33 = v33 / v34;
            [v51 addObject:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v33)}];
          }

          v13 = v24;
          v35 = [objc_msgSend(v26 objectForKey:{@"panoramaType", "integerValue"}];
          if (v35 == &dword_0 + 2)
          {
            ++v47;
          }

          else if (v35 == &dword_0 + 1)
          {
            ++v48;
          }

          v21 += [objc_msgSend(v26 objectForKey:{@"fitsInExtraWide", "BOOLValue"}];
          [objc_msgSend(v26 objectForKey:{@"canSwitch", "BOOLValue"}];
          if (v31 > 1.0)
          {
            ++v19;
            ++v23;
          }

          else
          {
            ++v20;
          }

          v22 = v52;
          if (v31 <= 1.0)
          {
            v22 = v52 + 1;
          }

          v12 = v49;
        }

        ++a5;
      }

      while (a5 < v13);
    }

    v36 = [a3 getRandomItemMeetingNumberOfFaceLandscapes:v19 facePortraits:v20 imageLandscapes:v23 imagePortraits:v22 vPanoramas:v47 hPanoramas:v48 movies:v45 fitsInExtraWide:v21 aspectRatios:v51 previousTags:a9];
    v37 = v36;
    if (a8)
    {
      a5 = v42;
      v18 = v46;
      if (v36 && ![a3 itemAtIndex:objc_msgSend(-[MPWeighter allItems](self->_weighter meetsContraints:{"allItems"), "indexOfObject:", v36), a8}])
      {
        v37 = 0;
      }
    }

    else
    {
      a5 = v42;
      v18 = v46;
    }

    if (v37)
    {
      break;
    }

    ++v18;
  }

  while (v18 < v40);
  if (a7)
  {
    *a7 = v18;
  }

  return v37;
}

- (BOOL)determineIfSlideDisplayesForTheWholeDurationForEffect:(id)a3 presetID:(id)a4 atIndex:(int64_t)a5 inStyleID:(id)a6
{
  if ([+[MREffectManager sharedManager](MREffectManager "sharedManager")])
  {
    [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
    if (v10 == 0.0)
    {
      return 0;
    }
  }

  v11 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if (!v11)
  {
    return 1;
  }

  v12 = v11;
  v23 = 0.0;
  v24 = 0.0;
  v22 = 0.0;
  [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  v13 = v24 + v23 + v22;
  v14 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  v15 = [NSDictionary alloc];
  v16 = [NSNumber numberWithDouble:v23];
  v17 = [NSNumber numberWithDouble:v24];
  v18 = [v15 initWithObjectsAndKeys:{v16, @"phaseInDuration", v17, @"mainDuration", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v22), @"phaseOutDuration", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v13), @"fullDuration", 0}];
  v19 = [MPUtilities executeScript:v12 withHeader:v18 andAttributes:v14];

  if (!v19)
  {
    return 1;
  }

  v20 = CGSizeFromString(v19);
  if (v20.height < 0.0 && v20.width == 0.0)
  {
    return 1;
  }

  if (v20.height + v20.width > v13)
  {
    return v20.height == 0.0;
  }

  return 0;
}

- (void)scaleDurationsInLayer:(id)a3 withOptions:(id)a4
{
  if (![MPAuthoringUtilities layerCanSkipScaleCalculation:"layerCanSkipScaleCalculation:withOptions:" withOptions:?])
  {
    v7 = objc_autoreleasePoolPush();
    [MPAuthoringUtilities audioDurationFromOptions:a4];
    v9 = v8;
    [MPAuthoringUtilities audioDurationFactorFromOptions:a4];
    v11 = v10;
    v12 = [MPAuthoringUtilities audioScalingModeFromOptions:a4];
    v13 = [a4 mutableCopy];
    v14 = v13;
    if ((v11 > -1.0 || v9 > 0.0) && v12 == 1)
    {
      [v13 removeObjectForKey:kMPAuthoringLayerTimeScale];
      [a3 setSkipTimeCalculations:1];
      -[MPAuthoringController scaleDurationsInEffectContainers:withOptions:](self, "scaleDurationsInEffectContainers:withOptions:", [a3 effectContainers], v14);
      [a3 setSkipTimeCalculations:0];
      [(MPAuthoringController *)self scaleLayerToMatchAudio:a3 withOptions:v14];
    }

    else
    {
      [a3 setSkipTimeCalculations:1];
      -[MPAuthoringController scaleDurationsInEffectContainers:withOptions:](self, "scaleDurationsInEffectContainers:withOptions:", [a3 effectContainers], v14);
      [a3 setSkipTimeCalculations:0];
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)scaleDurationsInLayer:(id)a3 withMutableOptions:(id)a4
{
  if (![MPAuthoringUtilities layerCanSkipScaleCalculation:"layerCanSkipScaleCalculation:withOptions:" withOptions:?])
  {
    v7 = objc_autoreleasePoolPush();
    [MPAuthoringUtilities audioDurationFromOptions:a4];
    v9 = v8;
    [MPAuthoringUtilities audioDurationFactorFromOptions:a4];
    v11 = v10;
    v12 = [MPAuthoringUtilities audioScalingModeFromOptions:a4];
    v13 = v11 > -1.0 || v9 > 0.0;
    v14 = v12 == 1 && v13;
    v15 = [a4 mutableCopy];
    v16 = v15;
    if (v14)
    {
      [v15 removeObjectForKey:kMPAuthoringLayerTimeScale];
    }

    [a3 setSkipTimeCalculations:1];
    -[MPAuthoringController scaleDurationsInEffectContainers:withOptions:](self, "scaleDurationsInEffectContainers:withOptions:", [a3 effectContainers], v16);

    [a3 setSkipTimeCalculations:0];
    [objc_msgSend(a4 objectForKeyedSubscript:{kMPAuthoringMinimumDuration), "doubleValue"}];
    if (v17 == 0.0)
    {
      [(MPAuthoringController *)self minimumDurationForLayer:a3 inDocument:self->_authoredDocument withOptions:a4];
      v18 = [NSNumber numberWithDouble:?];
      [a4 setObject:v18 forKeyedSubscript:kMPAuthoringMinimumDuration];
    }

    [objc_msgSend(a4 objectForKeyedSubscript:{kMPAuthoringMaximumDuration), "doubleValue"}];
    if (v19 == 0.0)
    {
      [(MPAuthoringController *)self maximumDurationForLayer:a3 inDocument:self->_authoredDocument withOptions:a4];
      v20 = [NSNumber numberWithDouble:?];
      [a4 setObject:v20 forKeyedSubscript:kMPAuthoringMaximumDuration];
    }

    if (v14)
    {
      [(MPAuthoringController *)self scaleLayerToMatchAudio:a3 withOptions:a4];
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)scaleDurationsInEffectContainers:(id)a3 withOptions:(id)a4
{
  v123 = +[MPEffectManager sharedManager];
  [MPAuthoringUtilities durationPerEffectFromOptions:a4];
  v8 = v7;
  [-[MPAuthoringController transitionFromOptions:](self transitionFromOptions:{a4), "duration"}];
  v103 = v9;
  [MPAuthoringUtilities layerTimeScaleFromOptions:a4];
  v107 = v10;
  [MPAuthoringUtilities minimumTransitionDurationFromOptions:a4];
  v12 = v11;
  [MPAuthoringUtilities minimumEffectDurationFromOptions:a4];
  v115 = v13;
  v114 = [MPAuthoringUtilities matchPhasesWithTransitionFromOptions:a4];
  v102 = [MPAuthoringUtilities useUniformDurations:a4];
  v112 = [MPAuthoringUtilities idFromPresetID:[MPAuthoringUtilities outroEffectIDFromOptions:a4]];
  v111 = [MPAuthoringUtilities scaleOutroEffectFromOptions:a4];
  [objc_msgSend(a3 "lastObject")];
  v15 = v14;
  v104 = [MPAuthoringUtilities scaleEffectsForPanoramasFromOptions:a4];
  [MPAuthoringUtilities breakDurationScaleFromOptions:a4];
  v110 = v16;
  [MPAuthoringUtilities portraitBreakDurationScaleFromOptions:a4];
  v109 = v17;
  [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v108 = v18;
  v133 = [MPAuthoringUtilities customDurationsFromOptions:a4];
  [MPAuthoringUtilities baseBreakAspectRatioFromOptions:a4];
  v20 = v19;
  [MPAuthoringUtilities basePortraitBreakAspectRatioFromOptions:a4];
  v22 = v21;
  [MPAuthoringUtilities aspectRatioFromOptions:a4];
  v131 = v23;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v116 = [a3 countByEnumeratingWithState:&v154 objects:v162 count:16];
  if (v116)
  {
    v113 = *v155;
    v24 = 1.0 / v20;
    if (v22 > 0.0)
    {
      v24 = v22;
    }

    v105 = v24;
    v25 = v103;
    if (v103 < v12)
    {
      v25 = v12;
    }

    v117 = v25;
    v106 = a3;
    v130 = v20;
    do
    {
      v26 = 0;
      do
      {
        v119 = v15;
        if (*v155 != v113)
        {
          objc_enumerationMutation(a3);
        }

        v27 = *(*(&v154 + 1) + 8 * v26);
        v28 = 0.0;
        v118 = v26;
        if ([objc_msgSend(v27 "effects")] && (v29 = objc_msgSend(objc_msgSend(v27, "effects"), "objectAtIndex:", 0), v111 & 1 | ((objc_msgSend(v112, "isEqualToString:", objc_msgSend(v29, "effectID")) & 1) == 0)))
        {
          if ([v29 supportsEffectTiming] && (v30 = v108, v108 == 0.0))
          {
            [v29 fullDuration];
          }

          else
          {
            [v123 defaultFullDurationForEffectID:{objc_msgSend(v29, "effectID", v30)}];
          }

          v37 = v133;
          v38 = v107 * v31;
          v152 = 0u;
          v153 = 0u;
          if (fmax(v38, 0.0) <= v8 * v107)
          {
            v35 = v8 * v107;
          }

          else
          {
            v35 = v38;
          }

          v150 = 0uLL;
          v151 = 0uLL;
          obj = [v27 effects];
          v124 = [obj countByEnumeratingWithState:&v150 objects:v161 count:16];
          if (v124)
          {
            v132 = v29;
            LOBYTE(v29) = 0;
            v39 = 0;
            v40 = 0;
            LOBYTE(v41) = 0;
            v129 = 0;
            v134 = 0;
            v121 = *v151;
            v122 = v27;
            v34 = 0.0;
            v36 = v115;
            while (1)
            {
              for (i = 0; i != v124; i = v69 + 1)
              {
                v126 = v41;
                v128 = v36;
                if (*v151 != v121)
                {
                  objc_enumerationMutation(obj);
                }

                v127 = v29;
                v125 = i;
                v43 = *(*(&v150 + 1) + 8 * i);
                [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
                v45 = v44;
                v146 = 0u;
                v147 = 0u;
                v148 = 0u;
                v149 = 0u;
                v135 = v43;
                v46 = [v43 slides];
                v137 = [v46 countByEnumeratingWithState:&v146 objects:v160 count:16];
                if (v137)
                {
                  v47 = 0;
                  v48 = *v147;
                  v136 = *v147;
                  do
                  {
                    for (j = 0; j != v137; j = j + 1)
                    {
                      if (*v147 != v48)
                      {
                        objc_enumerationMutation(v46);
                      }

                      v50 = *(*(&v146 + 1) + 8 * j);
                      v51 = [v37 objectForKeyedSubscript:{objc_msgSend(v50, "path")}];
                      if ([v50 hasMovie])
                      {
                        -[MPDocument stopTimeForPath:](self->_authoredDocument, "stopTimeForPath:", [v50 path]);
                        if (v52 == 0.0)
                        {
                          -[MPDocument durationForPath:](self->_authoredDocument, "durationForPath:", [v50 path]);
                        }

                        v53 = v52;
                        -[MPDocument startTimeForPath:](self->_authoredDocument, "startTimeForPath:", [v50 path]);
                        v55 = v54;
                        if (self->_logLevel >= 2)
                        {
                          v48 = v136;
                          -[NSMutableDictionary setObject:forKey:](self->_stats, "setObject:forKey:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [-[NSMutableDictionary objectForKey:](self->_stats objectForKey:{@"movieCount", "integerValue"}] + 1), @"movieCount");
                        }

                        if ((v40 & (v45 + v53 - v55 < v35)) == 0)
                        {
                          v35 = v45 + v53 - v55;
                        }

                        v40 = 1;
                      }

                      else
                      {
                        if (v51)
                        {
                          [v51 doubleValue];
                          if (v56 >= v35)
                          {
                            v57 = v56;
                          }

                          else
                          {
                            v57 = v35;
                          }

                          v83 = (v39 & 1) == 0;
                          v39 = 1;
                          if (v83)
                          {
                            v35 = v56;
                          }

                          else
                          {
                            v35 = v57;
                          }

                          goto LABEL_74;
                        }

                        if (([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")] & 1) == 0)
                        {
                          -[MPDocument resolutionForPath:](self->_authoredDocument, "resolutionForPath:", [v50 path]);
                          v60 = v58 / v59;
                          if (v58 / v59 < 0.5 || v60 > 2.0)
                          {
                            [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
                            v63 = v62;
                            if (v60 >= 1.0 || v60 <= v62)
                            {
                              v65 = v60 > 1.0 && v60 < v62;
                              v37 = v133;
                              if (v65 && v130 < 0.0)
                              {
                                goto LABEL_74;
                              }
                            }

                            else
                            {
                              v37 = v133;
                              if (v130 < 0.0)
                              {
                                goto LABEL_74;
                              }
                            }

                            v66 = v60 / v62;
                            v67 = v34 / v28;
                            if ((v134 & 1) == 0)
                            {
                              v67 = 0.0;
                            }

                            v68 = v28 / v34;
                            if ((v134 & 1) == 0)
                            {
                              v68 = 0.0;
                            }

                            if (v60 < 1.0)
                            {
                              v66 = v63 / v60;
                              v67 = v68;
                            }

                            if (v66 <= v67)
                            {
                              v134 = 1;
                            }

                            else
                            {
                              if (!v129)
                              {
                                v129 = [v135 effectID];
                              }

                              v134 = 1;
                              v28 = v63;
                              v34 = v60;
                            }
                          }
                        }
                      }

LABEL_74:
                      ++v47;
                    }

                    v137 = [v46 countByEnumeratingWithState:&v146 objects:v160 count:16];
                  }

                  while (v137);
                }

                if (v126)
                {
                  v41 = 1;
                  v27 = v122;
                  v36 = v128;
                  v69 = v125;
                  v70 = v135;
                  if ((v127 & 1) == 0)
                  {
                    goto LABEL_78;
                  }
                }

                else
                {
                  v70 = v135;
                  v41 = [v135 countOfSlides] > 0;
                  v27 = v122;
                  v36 = v128;
                  v69 = v125;
                  if ((v127 & 1) == 0)
                  {
LABEL_78:
                    LODWORD(v29) = [v70 supportsEffectTiming];
                    goto LABEL_81;
                  }
                }

                LODWORD(v29) = 1;
LABEL_81:
                [v123 minimumEffectDurationForEffectID:{objc_msgSend(v70, "effectID")}];
                if (v71 > v36)
                {
                  v36 = v71;
                }
              }

              v124 = [obj countByEnumeratingWithState:&v150 objects:v161 count:16];
              if (!v124)
              {
                v33 = v41 & (v29 ^ 1 | (v108 != 0.0));
                v32 = v134 & v104;
                goto LABEL_87;
              }
            }
          }

          v129 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0.0;
          v36 = v115;
LABEL_87:
          a3 = v106;
        }

        else
        {
          v129 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0.0;
          v35 = v8 * v107;
          v36 = v115;
        }

        v72 = [v27 transition];
        if (v72)
        {
          v73 = v117;
        }

        else
        {
          v73 = 0.0;
        }

        if (v32)
        {
          v74 = v110;
          if (v109 > 0.0 && v34 < 1.0)
          {
            v74 = v109;
          }

          if (v130 >= 0.0)
          {
            v76 = v34 / v130;
            v77 = v105 / v34;
          }

          else
          {
            v76 = v34 / v28;
            v77 = v28 / v34;
          }

          if (v34 < 1.0)
          {
            v76 = v77;
          }

          if (v76 > 1.1)
          {
            v78 = v74 * v76;
            [v123 panoramaScaleOffsetForEffectID:v129];
            v35 = v79 + v78 * (v35 - v79);
          }
        }

        if (v33)
        {
          v80 = v119 + v73;
          if (v35 >= v119 + v73)
          {
            v80 = v35;
          }

          if (v80 >= v36)
          {
            v81 = v80;
          }

          else
          {
            v81 = v36;
          }

          [v27 duration];
          v83 = v81 <= 0.0 || v81 == v82;
          if (!v83)
          {
            [v27 setDuration:v81];
          }
        }

        if (v72)
        {
          [objc_msgSend(v27 "transition")];
        }

        if (v114)
        {
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v84 = [v27 effects];
          v85 = [v84 countByEnumeratingWithState:&v142 objects:v159 count:16];
          if (v85)
          {
            v86 = v85;
            v87 = *v143;
            do
            {
              for (k = 0; k != v86; k = k + 1)
              {
                if (*v143 != v87)
                {
                  objc_enumerationMutation(v84);
                }

                v89 = *(*(&v142 + 1) + 8 * k);
                [v89 setPhaseInDuration:v119];
                [v27 outroTransitionDuration];
                [v89 setPhaseOutDuration:?];
              }

              v86 = [v84 countByEnumeratingWithState:&v142 objects:v159 count:16];
            }

            while (v86);
          }
        }

        [v27 outroTransitionDuration];
        v15 = v90;
        v26 = v118 + 1;
      }

      while ((v118 + 1) != v116);
      v116 = [a3 countByEnumeratingWithState:&v154 objects:v162 count:16];
    }

    while (v116);
  }

  if (v102)
  {
    [objc_msgSend(a3 "lastObject")];
    v92 = v91;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v93 = [a3 countByEnumeratingWithState:&v138 objects:v158 count:16];
    if (v93)
    {
      v94 = v93;
      v95 = *v139;
      do
      {
        for (m = 0; m != v94; m = m + 1)
        {
          if (*v139 != v95)
          {
            objc_enumerationMutation(a3);
          }

          v97 = *(*(&v138 + 1) + 8 * m);
          [v97 outroTransitionDuration];
          v99 = -(v92 + v98 - v103 * 2.0);
          if (v99 > 0.0)
          {
            [v97 duration];
            [v97 setDuration:v100 - v99];
          }

          [v97 outroTransitionDuration];
          v92 = v101;
        }

        v94 = [a3 countByEnumeratingWithState:&v138 objects:v158 count:16];
      }

      while (v94);
    }
  }
}

- (void)matchDurationsForLayers:(id)a3 withOptions:(id)a4
{
  p_vtable = &OBJC_METACLASS___MPDocumentInternal.vtable;
  v6 = [MPAuthoringUtilities styleFromOptions:a4];
  p_superclass = MCGenericAction.superclass;
  v8 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v9 = [a3 count];
  if (v9 >= 1)
  {
    v10 = v9;
    v11 = 0;
    v35 = v8;
    do
    {
      v12 = [objc_msgSend(p_vtable + 172 layerDescriptionForLayerWithZIndex:v11 forStyle:{v6), "objectForKey:", @"matchDuration"}];
      if (v12)
      {
        v13 = v12;
        v14 = [a3 objectAtIndex:v11];
        v15 = [objc_msgSend(p_superclass + 414 "sharedManager")];
        if (![v14 layerID] || objc_msgSend(v15, "isEqualToString:", objc_msgSend(v14, "layerID")))
        {
          v16 = [objc_msgSend(objc_msgSend(v8 objectForKey:{v13), "objectForKey:", @"zIndex", "integerValue"}];
          if (v16 < v10)
          {
            v17 = a3;
            [objc_msgSend(a3 objectAtIndex:{v16), "duration"}];
            v19 = v18;
            [v14 duration];
            v21 = v20;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v22 = [v14 effectContainers];
            v23 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v37;
              v26 = v19 / v21;
              do
              {
                for (i = 0; i != v24; i = i + 1)
                {
                  if (*v37 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v28 = *(*(&v36 + 1) + 8 * i);
                  if ([v28 countOfEffects] >= 1)
                  {
                    [v28 duration];
                    [v28 setDuration:v26 * v29];
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
              }

              while (v24);
            }

            [v14 duration];
            p_vtable = (&OBJC_METACLASS___MPDocumentInternal + 24);
            a3 = v17;
            p_superclass = (MCGenericAction + 8);
            v8 = v35;
            if (v19 != v30)
            {
              v31 = [objc_msgSend(v14 "effectContainers")];
              [v31 duration];
              v33 = v32;
              [v14 duration];
              [v31 setDuration:v33 + v19 - v34];
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v10);
  }
}

- (void)fillDurationsForLayers:(id)a3 withOptions:(id)a4
{
  v5 = [MPAuthoringUtilities styleFromOptions:a4];
  v6 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v7 = [a3 count];
  if (v7 >= 1)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:i forStyle:{v5), "objectForKey:", @"fillDuration"}];
      if (v10)
      {
        v11 = v10;
        v12 = [a3 objectAtIndex:i];
        v13 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
        if (![v12 layerID] || objc_msgSend(v13, "isEqualToString:", objc_msgSend(v12, "layerID")))
        {
          v14 = [objc_msgSend(objc_msgSend(v6 objectForKey:{v11), "objectForKey:", @"zIndex", "integerValue"}];
          if (v14 < v8)
          {
            [objc_msgSend(a3 objectAtIndex:{v14), "duration"}];
            v16 = v15;
            [v12 duration];
            v18 = v17;
            v19 = [objc_msgSend(v12 "effectContainers")];
            if (v19 && (v20 = v19, ![objc_msgSend(v19 "effects")]))
            {
              [v20 startTime];
              [v20 setDuration:v18 + v16 - v18 - v22];
            }

            else
            {
              v21 = +[MPEffectContainer effectContainer];
              [v21 setDuration:v16 - v18];
              [v12 addEffectContainer:v21];
            }
          }
        }
      }
    }
  }
}

- (void)checkForOffsetsForLayers:(id)a3 withOptions:(id)a4
{
  if ([a3 count] == &dword_0 + 1)
  {
    v5 = [a3 lastObject];
    if ([objc_msgSend(v5 "effectContainers")])
    {
      v6 = [objc_msgSend(v5 "effectContainers")];
      if (![objc_msgSend(v6 "effects")] && !objc_msgSend(v6, "transition"))
      {
        v7 = [NSIndexSet indexSetWithIndex:0];

        [v5 removeEffectContainersAtIndices:v7];
      }
    }
  }
}

- (void)beatAlignLayer:(id)a3 toBeats:(id)a4 withOptions:(id)a5
{
  -[MPAuthoringController beatAlignEffectContainers:toBeats:withOptions:](self, "beatAlignEffectContainers:toBeats:withOptions:", [a3 effectContainers], a4, a5);
  [MPAuthoringUtilities audioDurationFromOptions:a5];
  v10 = v9;
  if (![MPAuthoringUtilities layerCanSkipScaleCalculation:a3 withOptions:a5]&& v10 > 0.0 && [MPAuthoringUtilities audioScalingModeFromOptions:a5]== &dword_0 + 1)
  {
    v11 = [a4 count];
    [MPAuthoringUtilities minimumEffectDurationFromOptions:a5];
    v13 = v12;
    [MPAuthoringUtilities minimumTransitionDurationFromOptions:a5];
    v15 = v14;
    if (vcvtd_n_f64_u64([a4 count], 1uLL) > objc_msgSend(a3, "countOfEffectContainers") && v11 / v10 > v13 - v15)
    {
      [(MPAuthoringController *)self scaleLayerToMatchAudio:a3 withBeats:a4 withOptions:a5];
      [a3 duration];
      if (vabdd_f64(v16, v10) > 1.0)
      {
        -[MPAuthoringController beatAlignEffectContainers:toBeats:withOptions:](self, "beatAlignEffectContainers:toBeats:withOptions:", [a3 effectContainers], a4, a5);
        [(MPAuthoringController *)self scaleLayerToMatchAudio:a3 withBeats:a4 withOptions:a5];
        [a3 duration];
        if (vabdd_f64(v17, v10) > 1.0)
        {
          v18 = v17 - v10;
          [MPAuthoringUtilities minimumEffectDurationFromOptions:a5];
          v20 = v19;
          v21 = [objc_msgSend(a3 "effectContainers")];
          [v21 duration];
          if (v22 - v18 >= v20)
          {
            [v21 setDuration:?];
          }
        }
      }
    }

    [a3 duration];
    if (vabdd_f64(v23, v10) > 1.0)
    {
      [a3 setSkipTimeCalculations:1];
      -[MPAuthoringController scaleDurationsInEffectContainers:withOptions:](self, "scaleDurationsInEffectContainers:withOptions:", [a3 effectContainers], a5);
      [a3 setSkipTimeCalculations:0];

      [(MPAuthoringController *)self scaleLayerToMatchAudio:a3 withOptions:a5];
    }
  }
}

- (void)scaleLayerToMatchAudio:(id)a3 withOptions:(id)a4
{
  [MPAuthoringUtilities minimumEffectDurationFromOptions:a4];
  v7 = v6;
  [MPAuthoringUtilities minimumTransitionDurationFromOptions:a4];
  v9 = v8;
  [MPAuthoringUtilities maximumTransitionDurationFromOptions:a4];
  v11 = v10;
  [MPAuthoringUtilities audioDurationFromOptions:a4];
  v13 = v12;
  [MPAuthoringUtilities audioDurationFactorFromOptions:a4];
  v15 = v14;
  v127 = a3;
  [a3 duration];
  v17 = v16;
  v142 = +[MPEffectManager sharedManager];
  v132 = [MPAuthoringUtilities matchPhasesWithTransitionFromOptions:a4];
  v143 = [MPAuthoringUtilities scaleEffectsForPanoramasFromOptions:a4];
  v18 = [MPAuthoringUtilities customDurationsFromOptions:a4];
  [objc_msgSend(a4 objectForKeyedSubscript:{kMPAuthoringMinimumDuration), "doubleValue"}];
  v20 = v19;
  [objc_msgSend(a4 objectForKeyedSubscript:{kMPAuthoringMaximumDuration), "doubleValue"}];
  if (v15 <= -1.0 || v21 <= 0.0)
  {
    if (v13 >= v20)
    {
      if (v21 <= 0.0 || v13 <= v21)
      {
        v20 = v13;
      }

      else
      {
        v20 = v21;
      }
    }
  }

  else
  {
    v20 = v20 + (v21 - v20) * v15;
  }

  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v23 = [a3 effectContainers];
  v24 = [v23 countByEnumeratingWithState:&v184 objects:v198 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v185;
    v27 = 0.0;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v185 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [*(*(&v184 + 1) + 8 * i) outroTransitionDuration];
        v27 = v27 + v29;
      }

      v25 = [v23 countByEnumeratingWithState:&v184 objects:v198 count:16];
    }

    while (v25);
  }

  else
  {
    v27 = 0.0;
  }

  if (v27 <= v20)
  {
    obja = [v127 effectContainers];
    v57 = [obja objectAtIndex:0];
    if ([v57 countOfEffects])
    {
      v126 = 0;
      v58 = 0.0;
    }

    else
    {
      v126 = v57;
      [v57 duration];
      v58 = v59;
    }

    v60 = [obja lastObject];
    if ([v60 countOfEffects] >= 1 && ((v61 = +[MPAuthoringUtilities outroEffectIDFromOptions:](MPAuthoringUtilities, "outroEffectIDFromOptions:", a4), v62 = +[MPAuthoringUtilities scaleOutroEffectFromOptions:](MPAuthoringUtilities, "scaleOutroEffectFromOptions:", a4), !objc_msgSend(v61, "hasPrefix:", objc_msgSend(objc_msgSend(objc_msgSend(v60, "effects"), "lastObject"), "effectID"))) || (v62 & 1) != 0))
    {
      v64 = 0;
    }

    else
    {
      [v60 duration];
      v58 = v58 + v63;
      v64 = v60;
    }

    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v65 = [obja countByEnumeratingWithState:&v168 objects:v194 count:16];
    v66 = 0.0;
    v125 = v64;
    if (!v65)
    {
      v69 = 0.0;
      goto LABEL_124;
    }

    v67 = v65;
    v68 = *v169;
    v69 = 0.0;
    v70 = v126;
    v121 = *v169;
    while (1)
    {
      v71 = 0;
      v123 = v67;
      do
      {
        if (*v169 != v68)
        {
          objc_enumerationMutation(obja);
        }

        v72 = *(*(&v168 + 1) + 8 * v71);
        if (v72 != v70 && v72 != v64)
        {
          v133 = v71;
          v166 = 0u;
          v167 = 0u;
          v164 = 0u;
          v165 = 0u;
          v128 = v72;
          v140 = [v72 effects];
          v74 = [v140 countByEnumeratingWithState:&v164 objects:v193 count:16];
          if (v74)
          {
            v75 = v74;
            LOBYTE(v76) = 0;
            v136 = 0;
            v77 = *v165;
            do
            {
              for (j = 0; j != v75; j = j + 1)
              {
                if (*v165 != v77)
                {
                  objc_enumerationMutation(v140);
                }

                v79 = *(*(&v164 + 1) + 8 * j);
                v160 = 0u;
                v161 = 0u;
                v162 = 0u;
                v163 = 0u;
                v80 = [v79 slides];
                v81 = [v80 countByEnumeratingWithState:&v160 objects:v192 count:16];
                if (!v81)
                {
LABEL_103:
                  v85 = 1;
                  if (v76)
                  {
                    goto LABEL_107;
                  }

                  goto LABEL_104;
                }

                v82 = v81;
                v83 = *v161;
LABEL_97:
                v84 = 0;
                while (1)
                {
                  if (*v161 != v83)
                  {
                    objc_enumerationMutation(v80);
                  }

                  if ([v18 objectForKeyedSubscript:{objc_msgSend(*(*(&v160 + 1) + 8 * v84), "path")}])
                  {
                    break;
                  }

                  if (v82 == ++v84)
                  {
                    v82 = [v80 countByEnumeratingWithState:&v160 objects:v192 count:16];
                    if (!v82)
                    {
                      goto LABEL_103;
                    }

                    goto LABEL_97;
                  }
                }

                v85 = 0;
                if (v76)
                {
LABEL_107:
                  v76 = 1;
                  goto LABEL_108;
                }

LABEL_104:
                if ([v79 countOfSlides] < 1)
                {
                  v76 = 0;
                }

                else
                {
                  v76 = v85 & ([v79 hasMovies] ^ 1);
LABEL_108:
                  if ((v143 & v76) == 1)
                  {
                    if (([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")] & 1) == 0)
                    {
                      v136 |= [v79 hasPanoramasInDocument:self->_authoredDocument];
                    }

                    v76 = 1;
                  }
                }
              }

              v75 = [v140 countByEnumeratingWithState:&v164 objects:v193 count:16];
            }

            while (v75);
            if ((v76 & v136) == 1)
            {
              [v128 duration];
              v69 = v69 + v86;
LABEL_119:
              v64 = v125;
              v70 = v126;
              v68 = v121;
              v67 = v123;
              v71 = v133;
              goto LABEL_120;
            }

            if (v76)
            {
              goto LABEL_119;
            }
          }

          [v128 duration];
          v58 = v58 + v87;
          goto LABEL_119;
        }

LABEL_120:
        v71 = v71 + 1;
      }

      while (v71 != v67);
      v67 = [obja countByEnumeratingWithState:&v168 objects:v194 count:16];
      if (!v67)
      {
LABEL_124:
        v88 = v27 + v17 - v58 - v69;
        if (v88 > 0.0)
        {
          v89 = v20 - v58;
          v66 = (v27 + v20 - v58 - v69) / v88;
          if (v66 > 1.0)
          {
            if (v69 <= 0.0)
            {
LABEL_133:
              v137 = 0;
              goto LABEL_134;
            }

LABEL_132:
            v137 = 1;
            v66 = (v27 + v89) / (v27 + v17 - v58);
LABEL_134:
            v158 = 0u;
            v159 = 0u;
            v156 = 0u;
            v157 = 0u;
            v124 = [obja countByEnumeratingWithState:&v156 objects:v191 count:{16, v121}];
            if (!v124)
            {
              return;
            }

            v122 = *v157;
            while (1)
            {
              for (k = 0; k != v124; k = k + 1)
              {
                if (*v157 != v122)
                {
                  objc_enumerationMutation(obja);
                }

                v91 = *(*(&v156 + 1) + 8 * k);
                v152 = 0u;
                v153 = 0u;
                v154 = 0u;
                v155 = 0u;
                v141 = [v91 effects];
                v92 = [v141 countByEnumeratingWithState:&v152 objects:v190 count:16];
                if (v92)
                {
                  v93 = v92;
                  v134 = v91;
                  v129 = k;
                  LOBYTE(v94) = 0;
                  v95 = *v153;
                  do
                  {
                    for (m = 0; m != v93; m = m + 1)
                    {
                      if (*v153 != v95)
                      {
                        objc_enumerationMutation(v141);
                      }

                      v97 = *(*(&v152 + 1) + 8 * m);
                      v148 = 0u;
                      v149 = 0u;
                      v150 = 0u;
                      v151 = 0u;
                      v98 = [v97 slides];
                      v99 = [v98 countByEnumeratingWithState:&v148 objects:v189 count:16];
                      if (!v99)
                      {
LABEL_152:
                        v103 = 1;
                        if (v94)
                        {
                          goto LABEL_156;
                        }

                        goto LABEL_153;
                      }

                      v100 = v99;
                      v101 = *v149;
LABEL_146:
                      v102 = 0;
                      while (1)
                      {
                        if (*v149 != v101)
                        {
                          objc_enumerationMutation(v98);
                        }

                        if ([v18 objectForKeyedSubscript:{objc_msgSend(*(*(&v148 + 1) + 8 * v102), "path")}])
                        {
                          break;
                        }

                        if (v100 == ++v102)
                        {
                          v100 = [v98 countByEnumeratingWithState:&v148 objects:v189 count:16];
                          if (!v100)
                          {
                            goto LABEL_152;
                          }

                          goto LABEL_146;
                        }
                      }

                      v103 = 0;
                      if (v94)
                      {
LABEL_156:
                        v94 = 1;
                        goto LABEL_157;
                      }

LABEL_153:
                      if ([v97 countOfSlides] < 1)
                      {
                        v94 = 0;
                      }

                      else
                      {
                        v94 = v103 & ([v97 hasMovies] ^ 1);
LABEL_157:
                        if ((v143 & v94) == 1)
                        {
                          if ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")])
                          {
                            v94 = 1;
                          }

                          else
                          {
                            v94 = v137 | [v97 hasPanoramasInDocument:self->_authoredDocument] ^ 1;
                          }
                        }
                      }
                    }

                    v93 = [v141 countByEnumeratingWithState:&v152 objects:v190 count:16];
                  }

                  while (v93);
                  if (v134 == v126 || v134 == v125)
                  {
                    v105 = 0;
                  }

                  else
                  {
                    v105 = v94;
                  }

                  k = v129;
                  if (v105 == 1)
                  {
                    v146 = 0u;
                    v147 = 0u;
                    v144 = 0u;
                    v145 = 0u;
                    v106 = [v134 effects];
                    v107 = [v106 countByEnumeratingWithState:&v144 objects:v188 count:16];
                    v108 = v7;
                    if (v107)
                    {
                      v109 = v107;
                      v110 = *v145;
                      v108 = v7;
                      do
                      {
                        for (n = 0; n != v109; n = n + 1)
                        {
                          if (*v145 != v110)
                          {
                            objc_enumerationMutation(v106);
                          }

                          [v142 minimumEffectDurationForEffectID:{objc_msgSend(*(*(&v144 + 1) + 8 * n), "effectID")}];
                          if (v112 > v108)
                          {
                            v108 = v112;
                          }
                        }

                        v109 = [v106 countByEnumeratingWithState:&v144 objects:v188 count:16];
                      }

                      while (v109);
                    }

                    [v134 duration];
                    v114 = v113;
                    [v134 introTransitionDuration];
                    v116 = v115;
                    if ([objc_msgSend(obja "lastObject")] && !objc_msgSend(v134, "index"))
                    {
                      [v134 outroTransitionDuration];
                      v116 = v117;
                    }

                    v118 = v66 * v114;
                    [v134 outroTransitionDuration];
                    v120 = v116 + v119;
                    if (v118 >= v120)
                    {
                      v120 = v118;
                    }

                    if (v120 < v108)
                    {
                      v120 = v108;
                    }

                    [v134 setDuration:v120];
                  }
                }
              }

              v124 = [obja countByEnumeratingWithState:&v156 objects:v191 count:16];
              if (!v124)
              {
                return;
              }
            }
          }

          if (v66 != 0.0)
          {
            goto LABEL_133;
          }
        }

        v137 = 0;
        if (v20 <= v17 || v69 <= 0.0)
        {
          goto LABEL_134;
        }

        v89 = v20 - v58;
        goto LABEL_132;
      }
    }
  }

  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  obj = [v127 effectContainers];
  v139 = [obj countByEnumeratingWithState:&v180 objects:v197 count:16];
  if (!v139)
  {
    return;
  }

  v135 = *v181;
  v30 = v20 / v27;
  do
  {
    for (ii = 0; ii != v139; ii = ii + 1)
    {
      if (*v181 != v135)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v180 + 1) + 8 * ii);
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v33 = [v32 effects];
      v34 = [v33 countByEnumeratingWithState:&v176 objects:v196 count:16];
      if (!v34)
      {
        v36 = 0;
        v38 = v7;
        goto LABEL_46;
      }

      v35 = v34;
      LOBYTE(v36) = 0;
      v37 = *v177;
      v38 = v7;
      do
      {
        for (jj = 0; jj != v35; jj = jj + 1)
        {
          if (*v177 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v40 = *(*(&v176 + 1) + 8 * jj);
          [v142 minimumEffectDurationForEffectID:{objc_msgSend(v40, "effectID")}];
          if (v41 > v38)
          {
            v38 = v41;
          }

          if (v36)
          {
            v36 = 1;
          }

          else
          {
            if ([v40 countOfSlides] < 1)
            {
              v36 = 0;
              continue;
            }

            v36 = [v40 hasMovies] ^ 1;
          }

          if ((v143 & v36) == 1)
          {
            if ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")])
            {
              v36 = 1;
            }

            else
            {
              v36 = [v40 hasPanoramasInDocument:self->_authoredDocument] ^ 1;
            }
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v176 objects:v196 count:16];
      }

      while (v35);
LABEL_46:
      [v32 outroTransitionDuration];
      v43 = v42;
      if ([v32 transition])
      {
        v44 = v30 * v43;
        if (v30 * v43 < v9)
        {
          v44 = v9;
        }

        if (v44 <= v11)
        {
          v45 = v44;
        }

        else
        {
          v45 = v11;
        }

        [objc_msgSend(v32 "transition")];
        if (v132)
        {
          v174 = 0u;
          v175 = 0u;
          v172 = 0u;
          v173 = 0u;
          v46 = [v32 effects];
          v47 = [v46 countByEnumeratingWithState:&v172 objects:v195 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v173;
            do
            {
              for (kk = 0; kk != v48; kk = kk + 1)
              {
                if (*v173 != v49)
                {
                  objc_enumerationMutation(v46);
                }

                v51 = *(*(&v172 + 1) + 8 * kk);
                [v51 setPhaseInDuration:v9];
                [v51 setPhaseOutDuration:v9];
              }

              v48 = [v46 countByEnumeratingWithState:&v172 objects:v195 count:16];
            }

            while (v48);
          }
        }

        if (v36)
        {
          [v32 introTransitionDuration];
          v53 = v52;
          if ([objc_msgSend(objc_msgSend(v127 "effectContainers")] && !objc_msgSend(v32, "index"))
          {
            [v32 outroTransitionDuration];
            v53 = v54;
          }

          v55 = v45 + v53;
LABEL_67:
          if (v55 < v38)
          {
            v55 = v38;
          }

          [v32 setDuration:v55];
        }
      }

      else
      {
        [v32 introTransitionDuration];
        if (((v56 != 0.0) & v36) == 1)
        {
          [v32 introTransitionDuration];
          goto LABEL_67;
        }
      }
    }

    v139 = [obj countByEnumeratingWithState:&v180 objects:v197 count:16];
  }

  while (v139);
}

- (void)scaleLayerToMatchAudio:(id)a3 withBeats:(id)a4 withOptions:(id)a5
{
  [MPAuthoringUtilities audioDurationFromOptions:a5];
  v10 = v9;
  [MPAuthoringUtilities minimumEffectDurationFromOptions:a5];
  v12 = v11;
  v113 = +[MPEffectManager sharedManager];
  v13 = [MPAuthoringUtilities scaleEffectsForPanoramasFromOptions:a5];
  [a3 duration];
  v102 = a4;
  if (v14 < v10)
  {
    v100 = [a4 count];
    v138 = 0x7FFFFFFFFFFFFFFFLL;
    [a3 duration];
    [(MPAuthoringController *)self findClosestBeatForTime:a4 inBeats:&v138 atIndex:?];
    v97 = v138;
    v99 = [[NSSortDescriptor alloc] initWithKey:@"duration" ascending:1];
    v103 = objc_alloc_init(NSMutableArray);
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    obj = [a3 effectContainers];
    v109 = [obj countByEnumeratingWithState:&v134 objects:v144 count:16];
    if (!v109)
    {
      goto LABEL_27;
    }

    v107 = *v135;
    while (1)
    {
      for (i = 0; i != v109; i = i + 1)
      {
        if (*v135 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v134 + 1) + 8 * i);
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v133 = 0u;
        v17 = [v16 effects];
        v18 = [v17 countByEnumeratingWithState:&v130 objects:v143 count:16];
        if (v18)
        {
          v19 = v18;
          v111 = v16;
          LOBYTE(v20) = 0;
          v21 = *v131;
          while (1)
          {
            for (j = 0; j != v19; j = j + 1)
            {
              if (*v131 != v21)
              {
                objc_enumerationMutation(v17);
              }

              v23 = *(*(&v130 + 1) + 8 * j);
              if (v20)
              {
                v20 = 1;
              }

              else
              {
                if ([*(*(&v130 + 1) + 8 * j) countOfSlides] < 1)
                {
                  v20 = 0;
                  continue;
                }

                v20 = [v23 hasMovies] ^ 1;
              }

              if ((v13 & v20) == 1)
              {
                if ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")])
                {
                  v20 = 1;
                }

                else
                {
                  v20 = [v23 hasPanoramasInDocument:self->_authoredDocument] ^ 1;
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v130 objects:v143 count:16];
            if (!v19)
            {
              if (v20)
              {
                [v103 addObject:v111];
              }

              break;
            }
          }
        }
      }

      v109 = [obj countByEnumeratingWithState:&v134 objects:v144 count:16];
      if (!v109)
      {
LABEL_27:
        v24 = [v103 sortedArrayUsingDescriptors:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", v99, v97)}];

        if ([v24 count] && &v100[-v98] >= 1)
        {
          v25 = 0;
          do
          {
            v26 = [v24 count];
            v27 = v25;
            if (v26 <= v25)
            {
              v27 = v25 % [v24 count];
            }

            v28 = [v24 objectAtIndex:v27];
            v126 = 0u;
            v127 = 0u;
            v128 = 0u;
            v129 = 0u;
            v29 = [v28 effects];
            v30 = [v29 countByEnumeratingWithState:&v126 objects:v142 count:16];
            v31 = v12;
            if (v30)
            {
              v32 = v30;
              v33 = *v127;
              v31 = v12;
              do
              {
                for (k = 0; k != v32; k = k + 1)
                {
                  if (*v127 != v33)
                  {
                    objc_enumerationMutation(v29);
                  }

                  [v113 minimumEffectDurationForEffectID:{objc_msgSend(*(*(&v126 + 1) + 8 * k), "effectID")}];
                  if (v35 > v31)
                  {
                    v31 = v35;
                  }
                }

                v32 = [v29 countByEnumeratingWithState:&v126 objects:v142 count:16];
              }

              while (v32);
            }

            [v28 startTime];
            v37 = v36;
            [v28 duration];
            [(MPAuthoringController *)self findClosestBeatForTime:v102 inBeats:&v138 atIndex:v37 + v38];
            if (v138 != v100 - 1)
            {
              [objc_msgSend(v102 objectAtIndex:{v138 + 1), "doubleValue"}];
              v40 = v39;
              [objc_msgSend(v102 objectAtIndex:{v138), "doubleValue"}];
              v42 = v40 - v41;
              [v28 duration];
              v44 = v43 + v42;
              [v28 outroTransitionDuration];
              v46 = v45;
              [v28 introTransitionDuration];
              if (v44 >= v46 + v47)
              {
                if (v44 >= v31)
                {
                  v48 = v44;
                }

                else
                {
                  v48 = v31;
                }

                [v28 setDuration:v48];
              }
            }

            ++v25;
          }

          while (v25 != &v100[-v98]);
        }

        return;
      }
    }
  }

  if (v14 > v10)
  {
    v49 = v14;
    [objc_msgSend(a4 objectAtIndex:{0), "doubleValue"}];
    v51 = v50;
    v52 = v49 - v10 + v50;
    v53 = [a4 count];
    v54 = 0;
    if (v51 < v52 && v53 >= 2)
    {
      v54 = 0;
      v56 = v53 - 1;
      do
      {
        [objc_msgSend(a4 objectAtIndex:{++v54), "doubleValue"}];
      }

      while (v57 < v52 && v54 < v56);
    }

    v104 = v54;
    v138 = v54;
    v101 = [[NSSortDescriptor alloc] initWithKey:@"duration" ascending:0];
    obja = objc_alloc_init(NSMutableArray);
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v108 = [a3 effectContainers];
    v112 = [v108 countByEnumeratingWithState:&v122 objects:v141 count:16];
    if (v112)
    {
      v110 = *v123;
      do
      {
        for (m = 0; m != v112; m = m + 1)
        {
          if (*v123 != v110)
          {
            objc_enumerationMutation(v108);
          }

          v60 = *(*(&v122 + 1) + 8 * m);
          v118 = 0u;
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          v61 = [v60 effects];
          v62 = [v61 countByEnumeratingWithState:&v118 objects:v140 count:16];
          if (v62)
          {
            v63 = v62;
            v64 = 0;
            v65 = *v119;
            do
            {
              for (n = 0; n != v63; n = n + 1)
              {
                if (*v119 != v65)
                {
                  objc_enumerationMutation(v61);
                }

                if (v64)
                {
                  v64 = 1;
                }

                else
                {
                  v67 = *(*(&v118 + 1) + 8 * n);
                  if ([v67 countOfSlides] < 1)
                  {
                    v68 = 0;
                  }

                  else
                  {
                    v68 = [v67 hasMovies] ^ 1;
                  }

                  if ((v13 ^ 1 | v68))
                  {
                    v64 = v13 | v68;
                  }

                  else
                  {
                    v64 = [v67 hasPanoramasInDocument:self->_authoredDocument] ^ 1;
                  }
                }
              }

              v63 = [v61 countByEnumeratingWithState:&v118 objects:v140 count:16];
            }

            while (v63);
            if (v64)
            {
              [obja addObject:v60];
            }
          }
        }

        v112 = [v108 countByEnumeratingWithState:&v122 objects:v141 count:16];
      }

      while (v112);
    }

    v69 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [obja sortedArrayUsingDescriptors:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", v101)}]);

    if ([(NSMutableArray *)v69 count])
    {
      if (v104 <= [(NSMutableArray *)v69 count])
      {
        if (!v104)
        {
          return;
        }
      }

      else
      {
        v70 = (v104 - [(NSMutableArray *)v69 count]);
        if (v70 >= [(NSMutableArray *)v69 count])
        {
          v70 = [(NSMutableArray *)v69 count]- 1;
        }

        [(NSMutableArray *)v69 addObjectsFromArray:[(NSMutableArray *)v69 objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:0, v70]]];
      }

      v71 = 0;
      do
      {
        v72 = [(NSMutableArray *)v69 count];
        v73 = v71;
        if (v72 <= v71)
        {
          v73 = v71 % [(NSMutableArray *)v69 count];
        }

        v74 = [(NSMutableArray *)v69 objectAtIndex:v73];
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v75 = [v74 effects];
        v76 = [v75 countByEnumeratingWithState:&v114 objects:v139 count:16];
        v77 = v12;
        if (v76)
        {
          v78 = v76;
          v79 = *v115;
          v77 = v12;
          do
          {
            for (ii = 0; ii != v78; ii = ii + 1)
            {
              if (*v115 != v79)
              {
                objc_enumerationMutation(v75);
              }

              [v113 minimumEffectDurationForEffectID:{objc_msgSend(*(*(&v114 + 1) + 8 * ii), "effectID")}];
              if (v81 > v77)
              {
                v77 = v81;
              }
            }

            v78 = [v75 countByEnumeratingWithState:&v114 objects:v139 count:16];
          }

          while (v78);
        }

        [v74 startTime];
        v83 = v82;
        [v74 duration];
        [(MPAuthoringController *)self findClosestBeatForTime:v102 inBeats:&v138 atIndex:v83 + v84];
        if (v138)
        {
          [objc_msgSend(v102 "objectAtIndex:"doubleValue"")];
          v86 = v85;
          [objc_msgSend(v102 objectAtIndex:{v138 - 1), "doubleValue"}];
          v88 = v86 - v87;
          [v74 duration];
          v90 = v89;
          [v74 duration];
          v92 = v91 - v88;
          [v74 outroTransitionDuration];
          v94 = v93;
          [v74 introTransitionDuration];
          if (v92 >= v94 + v95)
          {
            v96 = v90 - v88;
            if (v90 - v88 < v77)
            {
              v96 = v77;
            }

            [v74 setDuration:v96];
          }
        }

        ++v71;
      }

      while (v71 != v104);
    }
  }
}

- (void)beatAlignEffectContainers:(id)a3 toBeats:(id)a4 withOptions:(id)a5
{
  v81 = +[MPEffectManager sharedManager];
  v79 = [MPAuthoringUtilities lockTransitionDurationFromOptions:a5];
  [MPAuthoringUtilities minimumTransitionDurationFromOptions:a5];
  v76 = v9;
  [MPAuthoringUtilities maximumTransitionDurationFromOptions:a5];
  v75 = v10;
  [MPAuthoringUtilities minimumEffectDurationFromOptions:a5];
  v88 = v11;
  v78 = [MPAuthoringUtilities matchPhasesWithTransitionFromOptions:a5];
  v80 = [MPAuthoringUtilities canAdjustPhaseDurations:a5];
  v12 = [MPAuthoringUtilities scaleEffectsForPanoramasFromOptions:a5];
  v77 = [a4 count];
  v97 = 0;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = a3;
  v87 = [a3 countByEnumeratingWithState:&v93 objects:v99 count:16];
  if (v87)
  {
    v85 = 0;
    v86 = *v94;
    do
    {
      for (i = 0; i != v87; i = i + 1)
      {
        if (*v94 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v93 + 1) + 8 * i);
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v15 = [v14 effects];
        v16 = [v15 countByEnumeratingWithState:&v89 objects:v98 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v90;
          while (2)
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v90 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v89 + 1) + 8 * j);
              if ([v20 hasMovies] & 1) != 0 || v12 && (objc_msgSend(v20, "hasPanoramasInDocument:", self->_authoredDocument))
              {
                [v14 countOfEffects];
                goto LABEL_77;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v89 objects:v98 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        if ([v14 countOfEffects] >= 1)
        {
          v21 = [objc_msgSend(v14 "effects")];
          [v81 minimumEffectDurationForEffectID:{objc_msgSend(v21, "effectID")}];
          if (v22 <= v88)
          {
            v23 = v88;
          }

          else
          {
            v23 = v22;
          }

          [v14 startTime];
          v25 = v24;
          [v21 mainDuration];
          v27 = v26;
          [v21 phaseInDuration];
          v29 = v28;
          [v21 phaseOutDuration];
          v31 = v30;
          [v14 outroTransitionDuration];
          v32 = v25 + v29;
          v82 = v33;
          if (((v29 != 0.0) & v80) == 1)
          {
            [(MPAuthoringController *)self findClosestBeatForTime:a4 inBeats:&v97 atIndex:v25 + v29];
            v32 = v34;
          }

          [(MPAuthoringController *)self findClosestBeatForTime:a4 inBeats:&v97 atIndex:v27 + v32];
          v36 = v35;
          v37 = v31 + v35;
          if (((v31 != 0.0) & v80) == 1)
          {
            [(MPAuthoringController *)self findClosestBeatForTime:a4 inBeats:&v97 atIndex:v31 + v35];
            v37 = v38;
          }

          v39 = v97;
          if (v29 == 0.0)
          {
            v40 = 0.0;
          }

          else
          {
            v40 = v32 - v25;
          }

          v41 = v36 - v40 - v25;
          if (v31 == 0.0)
          {
            v42 = 0.0;
          }

          else
          {
            v42 = v37 - v41 - v40 - v25;
          }

          v83 = v40;
          v43 = v40 + v41 + v42;
          if (v43 >= v23)
          {
            v56 = v40;
          }

          else
          {
            if (v97 + 1 < v77)
            {
              v44 = v97 + 2;
              do
              {
                [objc_msgSend(a4 objectAtIndex:{v44 - 1), "doubleValue"}];
                v46 = v45;
                [objc_msgSend(a4 objectAtIndex:{v97), "doubleValue"}];
                v48 = v46 - v47;
                v49 = v36 + v48;
                v50 = v41 + v48;
                v51 = v43 + v48;
                v52 = v44 >= v77;
                v53 = v51 < v23;
                if (v52 && v53)
                {
                  v36 = v49 + v88 - v51;
                }

                else
                {
                  v36 = v49;
                }

                if (v52 && v53)
                {
                  v41 = v50 + v88 - v51;
                }

                else
                {
                  v41 = v50;
                }

                if (v52 && v53)
                {
                  v43 = v51 + v88 - v51;
                }

                else
                {
                  v43 = v51;
                }
              }

              while (v43 < v23 && v44++ < v77);
            }

            if (v31 != 0.0)
            {
              [(MPAuthoringController *)self findClosestBeatForTime:a4 inBeats:&v97 atIndex:v31 + v36];
              v36 = v55;
            }

            v56 = v83;
            if (v31 == 0.0)
            {
              v42 = 0.0;
            }

            else
            {
              v42 = v36 - v41 - v83 - v25;
            }

            v39 = v97;
            v37 = v36;
          }

          [objc_msgSend(a4 "lastObject")];
          if (v37 >= v57)
          {
            return;
          }

          v58 = [v14 transition];
          if (v58)
          {
            v59 = v79;
          }

          else
          {
            v59 = 1;
          }

          if ((v59 & 1) == 0)
          {
            v60 = v58;
            [(MPAuthoringController *)self findClosestBeatForTime:a4 inBeats:&v97 atIndex:v37 - v82];
            v62 = vabdd_f64(v37, v61);
            [+[MPTransitionManager sharedManager](MPTransitionManager "sharedManager")];
            v64 = vabdd_f64(v82, v62) > v63 * 0.4 + 0.1 || v62 < v76;
            if (!v64 && v62 <= v75)
            {
              [v60 setDuration:v62];
            }
          }

          v66 = v56 + v41 + v42;
          [v14 outroTransitionDuration];
          v68 = v67;
          [v14 introTransitionDuration];
          if (v66 < v68 + v69)
          {
            [v14 outroTransitionDuration];
            v71 = v70;
            [v14 introTransitionDuration];
            v41 = v41 + v71 + v72 - v66;
          }

          if (v78)
          {
            [v14 introTransitionDuration];
            [v21 setPhaseInDuration:?];
            [v21 setMainDuration:v41];
            [v14 outroTransitionDuration];
            v42 = v73;
          }

          else
          {
            [v21 setPhaseInDuration:v56];
            [v21 setMainDuration:v41];
          }

          [v21 setPhaseOutDuration:v42];
          if (v85 == [a4 count] - 1)
          {
            return;
          }

          v74 = v39;
          if (v39 == 9.22337204e18)
          {
            v74 = (v85 + 1);
          }

          v85 = v74;
        }

LABEL_77:
        ;
      }

      v87 = [obj countByEnumeratingWithState:&v93 objects:v99 count:16];
    }

    while (v87);
  }
}

- (double)minimumDurationForLayer:(id)a3 inDocument:(id)a4 withOptions:(id)a5
{
  [MPAuthoringUtilities minimumEffectDurationFromOptions:a5];
  v8 = v7;
  v42 = [MPAuthoringUtilities scaleEffectsForPanoramasFromOptions:a5];
  v41 = +[MPEffectManager sharedManager];
  v9 = [MPAuthoringUtilities customDurationsFromOptions:a5];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [a3 effectContainers];
  v36 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v36)
  {
    v35 = *v52;
    v10 = 0.0;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v52 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v51 + 1) + 8 * v11);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v37 = v11;
        v38 = v12;
        v40 = [v12 effects];
        v13 = [v40 countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = *v48;
          v17 = v8;
          while (1)
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v48 != v16)
              {
                objc_enumerationMutation(v40);
              }

              v19 = *(*(&v47 + 1) + 8 * i);
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v20 = [v19 slides];
              v21 = [v20 countByEnumeratingWithState:&v43 objects:v55 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v44;
LABEL_13:
                v24 = 0;
                while (1)
                {
                  if (*v44 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  if ([v9 objectForKeyedSubscript:{objc_msgSend(*(*(&v43 + 1) + 8 * v24), "path")}])
                  {
                    break;
                  }

                  if (v22 == ++v24)
                  {
                    v22 = [v20 countByEnumeratingWithState:&v43 objects:v55 count:16];
                    if (v22)
                    {
                      goto LABEL_13;
                    }

                    goto LABEL_19;
                  }
                }

                v25 = 0;
                if ((v15 & 1) == 0)
                {
                  goto LABEL_20;
                }

LABEL_23:
                v26 = 1;
                goto LABEL_24;
              }

LABEL_19:
              v25 = 1;
              if (v15)
              {
                goto LABEL_23;
              }

LABEL_20:
              if ([v19 countOfSlides] < 1)
              {
                goto LABEL_34;
              }

              v26 = v25 & ([v19 hasMovies] ^ 1);
LABEL_24:
              if ((v42 & v26) == 1 && ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")] & 1) == 0)
              {
                if ([v19 hasPanoramasInDocument:a4])
                {
                  goto LABEL_34;
                }
              }

              else if (!v26)
              {
                goto LABEL_34;
              }

              [v41 minimumEffectDurationForEffectID:{objc_msgSend(v19, "effectID")}];
              if (v27 >= v17)
              {
                v17 = v27;
              }

              v15 = 1;
            }

            v14 = [v40 countByEnumeratingWithState:&v47 objects:v56 count:16];
            if (!v14)
            {
              [v38 outroTransitionDuration];
              v29 = v17 + v28;
              goto LABEL_35;
            }
          }
        }

LABEL_34:
        [v38 duration];
        v31 = v30;
        [v38 outroTransitionDuration];
        v29 = v31 - v32;
LABEL_35:
        v10 = v10 + v29;
        v11 = v37 + 1;
      }

      while ((v37 + 1) != v36);
      v36 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
      if (!v36)
      {
        return v10;
      }
    }
  }

  return 0.0;
}

- (double)maximumDurationForLayer:(id)a3 inDocument:(id)a4 withOptions:(id)a5
{
  [MPAuthoringUtilities audioDurationFromOptions:a5];
  v8 = v7;
  [MPAuthoringUtilities audioDurationFactorFromOptions:a5];
  v10 = v9;
  [MPAuthoringUtilities minimumEffectDurationFromOptions:a5];
  v12 = v11;
  v53 = [MPAuthoringUtilities scaleEffectsForPanoramasFromOptions:a5];
  v52 = +[MPEffectManager sharedManager];
  v13 = [MPAuthoringUtilities customDurationsFromOptions:a5];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v14 = [a3 effectContainers];
  v15 = [v14 countByEnumeratingWithState:&v66 objects:v73 count:16];
  v16 = 0.0;
  v17 = 0.0;
  if (v15)
  {
    v18 = v15;
    v19 = *v67;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v67 != v19)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v66 + 1) + 8 * i) outroTransitionDuration];
        v17 = v17 + v21;
      }

      v18 = [v14 countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v18);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [a3 effectContainers];
  v47 = [obj countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v47)
  {
    v46 = *v63;
    v16 = 0.0;
    do
    {
      v22 = 0;
      do
      {
        if (*v63 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v62 + 1) + 8 * v22);
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v48 = v23;
        v49 = v22;
        v51 = [v23 effects];
        v24 = [v51 countByEnumeratingWithState:&v58 objects:v71 count:16];
        if (!v24)
        {
          goto LABEL_45;
        }

        v25 = v24;
        LOBYTE(v26) = 0;
        v27 = *v59;
        v28 = v12;
        while (2)
        {
          for (j = 0; j != v25; j = j + 1)
          {
            if (*v59 != v27)
            {
              objc_enumerationMutation(v51);
            }

            v30 = *(*(&v58 + 1) + 8 * j);
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v31 = [v30 slides];
            v32 = [v31 countByEnumeratingWithState:&v54 objects:v70 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v55;
LABEL_20:
              v35 = 0;
              while (1)
              {
                if (*v55 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                if ([v13 objectForKeyedSubscript:{objc_msgSend(*(*(&v54 + 1) + 8 * v35), "path")}])
                {
                  break;
                }

                if (v33 == ++v35)
                {
                  v33 = [v31 countByEnumeratingWithState:&v54 objects:v70 count:16];
                  if (v33)
                  {
                    goto LABEL_20;
                  }

                  goto LABEL_26;
                }
              }

              v36 = 0;
              if ((v26 & 1) == 0)
              {
                goto LABEL_27;
              }

LABEL_30:
              v26 = 1;
              goto LABEL_31;
            }

LABEL_26:
            v36 = 1;
            if (v26)
            {
              goto LABEL_30;
            }

LABEL_27:
            if ([v30 countOfSlides] < 1)
            {
              goto LABEL_45;
            }

            v26 = v36 & ([v30 hasMovies] ^ 1);
LABEL_31:
            if ((v53 & v26) == 1 && ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")] & 1) == 0)
            {
              v37 = [v30 hasPanoramasInDocument:a4];
            }

            else
            {
              v37 = 0;
            }

            if ((v26 ^ 1 | v37))
            {
              if ((v26 & 1) == 0)
              {
                goto LABEL_45;
              }

              if (v37)
              {
                [v48 duration];
                v16 = v16 + v39 * 2.0;
                goto LABEL_46;
              }

              goto LABEL_48;
            }

            [v52 minimumEffectDurationForEffectID:{objc_msgSend(v30, "effectID")}];
            if (v38 >= v28)
            {
              v28 = v38;
            }
          }

          v25 = [v51 countByEnumeratingWithState:&v58 objects:v71 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }

        if (v26)
        {
LABEL_48:
          v16 = v16 + v28 * 29.0;
          goto LABEL_46;
        }

LABEL_45:
        [v48 duration];
        v16 = v16 + v40;
LABEL_46:
        v22 = v49 + 1;
      }

      while ((v49 + 1) != v47);
      v41 = [obj countByEnumeratingWithState:&v62 objects:v72 count:16];
      v47 = v41;
    }

    while (v41);
  }

  result = v17 + v16;
  if (v8 > v17 + v16 && v10 == -1.0 && v8 != -1.0)
  {
    return v8;
  }

  return result;
}

- (void)configureFiltersInDocument:(id)a3 withOptions:(id)a4
{
  v50 = objc_opt_respondsToSelector();
  v7 = objc_opt_respondsToSelector();
  v32 = [[NSMutableDictionary alloc] initWithDictionary:a4];
  v47 = a4;
  v40 = [MPAuthoringUtilities reconfigureRangeFromOptions:a4];
  range1 = v8;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v49 = a3;
  obj = [a3 layers];
  v33 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v33)
  {
    *&v48[8] = 0;
    v46 = 0;
    v31 = *v64;
    *v48 = v7 ^ 1u;
    do
    {
      v9 = 0;
      do
      {
        if (*v64 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v63 + 1) + 8 * v9);
        v11 = [NSNumber numberWithInteger:*&v48[4]];
        [v32 setObject:v11 forKey:kMPAuthoringLayerIndex];
        v12 = [MPAuthoringUtilities shouldComputeSlideFiltersFromOptions:v32];
        v34 = v9;
        if ((v12 | v50))
        {
          v13 = v12;
          v14 = [v10 effectContainers];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v35 = v14;
          v37 = [v14 countByEnumeratingWithState:&v59 objects:v69 count:16];
          if (v37)
          {
            v15 = 0;
            v36 = *v60;
            do
            {
              v16 = 0;
              do
              {
                if (*v60 != v36)
                {
                  objc_enumerationMutation(v35);
                }

                v38 = v16;
                v17 = *(*(&v59 + 1) + 8 * v16);
                v55 = 0u;
                v56 = 0u;
                v57 = 0u;
                v58 = 0u;
                v39 = [v17 effects];
                v42 = [v39 countByEnumeratingWithState:&v55 objects:v68 count:16];
                if (v42)
                {
                  v18 = 0;
                  v41 = *v56;
                  do
                  {
                    v19 = 0;
                    do
                    {
                      if (*v56 != v41)
                      {
                        objc_enumerationMutation(v39);
                      }

                      v44 = v19;
                      v20 = *(*(&v55 + 1) + 8 * v19);
                      v45 = [objc_msgSend(v20 "slides")];
                      if (!range1 || (v71.location = v40, v71.length = range1, v72.length = v45, v72.location = v46, NSIntersectionRange(v71, v72).length))
                      {
                        v53 = 0u;
                        v54 = 0u;
                        v51 = 0u;
                        v52 = 0u;
                        v21 = [v20 slides];
                        v22 = [v21 countByEnumeratingWithState:&v51 objects:v67 count:16];
                        if (v22)
                        {
                          v23 = v22;
                          v24 = *v52;
                          do
                          {
                            for (i = 0; i != v23; i = i + 1)
                            {
                              if (*v52 != v24)
                              {
                                objc_enumerationMutation(v21);
                              }

                              v26 = *(*(&v51 + 1) + 8 * i);
                              if (v50)
                              {
                                v27 = [self->_delegate document:v49 shouldUseDefaultFiltersForSlide:*(*(&v51 + 1) + 8 * i) effectIndex:v18 containerIndex:v15 layerIndex:*&v48[4]];
                                if (((v27 | *v48) & 1) == 0)
                                {
                                  v28 = [self->_delegate document:v49 needsFiltersForSlide:v26 effectIndex:v18 containerIndex:v15 layerIndex:*&v48[4]];
                                  goto LABEL_30;
                                }
                              }

                              else
                              {
                                v27 = 1;
                              }

                              if ((v13 & v27) != 1)
                              {
                                continue;
                              }

                              v28 = [(MPAuthoringController *)self filtersForSlideFromOptions:v47];
LABEL_30:
                              v29 = v28;
                              if (v28 && [v28 count])
                              {
                                [v26 addFilters:v29];
                              }
                            }

                            v23 = [v21 countByEnumeratingWithState:&v51 objects:v67 count:16];
                          }

                          while (v23);
                        }
                      }

                      v46 += v45;
                      ++v18;
                      v19 = v44 + 1;
                    }

                    while ((v44 + 1) != v42);
                    v42 = [v39 countByEnumeratingWithState:&v55 objects:v68 count:16];
                  }

                  while (v42);
                }

                ++v15;
                v16 = v38 + 1;
              }

              while ((v38 + 1) != v37);
              v37 = [v35 countByEnumeratingWithState:&v59 objects:v69 count:16];
            }

            while (v37);
          }
        }

        ++*&v48[4];
        v9 = v34 + 1;
      }

      while ((v34 + 1) != v33);
      v33 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
    }

    while (v33);
  }
}

- (void)configureTransitionsInDocument:(id)a3 withOptions:(id)a4
{
  v7 = objc_opt_respondsToSelector();
  v8 = objc_opt_respondsToSelector();
  v41 = a4;
  v35 = [MPAuthoringUtilities shouldComputeTransitionsFromOptions:a4];
  if (v35 & 1) != 0 || (v7)
  {
    v9 = [[NSMutableDictionary alloc] initWithDictionary:a4];
    v42 = [MPAuthoringUtilities reconfigureRangeFromOptions:a4];
    v39 = v10;
    v11 = [objc_msgSend(a4 objectForKey:{@"keepTransitions", "BOOLValue"}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v37 = a3;
    obj = [a3 layers];
    v12 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (!v12)
    {
      goto LABEL_40;
    }

    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v50;
    v36 = v8 ^ 1;
    v17 = &kCTUnderlineColorAttributeName_ptr;
    v30 = *v50;
    v31 = v9;
    while (1)
    {
      v18 = 0;
      v32 = v13;
      do
      {
        if (*v50 != v16)
        {
          v19 = v18;
          objc_enumerationMutation(obj);
          v18 = v19;
        }

        v34 = v18;
        v20 = *(*(&v49 + 1) + 8 * v18);
        v21 = [(CFStringRef *)v17[26] numberWithInteger:v15, v30, v31];
        [v9 setObject:v21 forKey:kMPAuthoringLayerIndex];
        if ([MPAuthoringUtilities canHaveTransitionsFromOptions:v9])
        {
          v40 = v15;
          v22 = [v20 effectContainers];
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v44 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (!v44)
          {
            goto LABEL_37;
          }

          v23 = v20;
          v24 = 0;
          v43 = *v46;
          v25 = v39;
          v38 = v22;
          while (1)
          {
            for (i = 0; i != v44; i = i + 1)
            {
              if (*v46 != v43)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v45 + 1) + 8 * i);
              if ((([v27 transition] != 0) & v11) == 0)
              {
                if (v25 && (v14 < v42 || v14 - v42 >= v25))
                {
                  goto LABEL_34;
                }

                if (v7)
                {
                  v28 = [self->_delegate document:v37 shouldUseDefaultTransitionForEffectContainer:v27 containerIndex:v24 layerIndex:v40];
                  if ((v28 | v36))
                  {
                    v22 = v38;
                    v25 = v39;
                    if (v28)
                    {
                      goto LABEL_21;
                    }

LABEL_34:
                    ++v14;
                    ++v24;
                    continue;
                  }

                  v22 = v38;
                  v25 = v39;
                  if (![self->_delegate document:v37 needsTransitionForEffectContainer:v27 containerIndex:v24 layerIndex:v40])
                  {
                    goto LABEL_34;
                  }
                }

                else
                {
LABEL_21:
                  if (v24 == [objc_msgSend(v23 "effectContainers")] - 1 && +[MPAuthoringUtilities shouldComputeLoopTransitionFromOptions:](MPAuthoringUtilities, "shouldComputeLoopTransitionFromOptions:", v41))
                  {
                    v29 = [(MPAuthoringController *)self loopTransitionFromOptions:v41];
                  }

                  else
                  {
                    if (v24 == [objc_msgSend(v23 "effectContainers")] - 1)
                    {
                      if ((v35 & [MPAuthoringUtilities shouldComputeLoopTransitionFromOptions:v41]& 1) == 0)
                      {
                        goto LABEL_34;
                      }
                    }

                    else if (!v35)
                    {
                      goto LABEL_34;
                    }

                    if (v24 >= [objc_msgSend(v23 "effectContainers")] - 1)
                    {
                      goto LABEL_34;
                    }

                    v29 = [(MPAuthoringController *)self transitionFromOptions:v41];
                  }

                  if (!v29)
                  {
                    goto LABEL_34;
                  }
                }

                [v27 setTransition:?];
                goto LABEL_34;
              }
            }

            v44 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
            if (!v44)
            {
LABEL_37:
              v15 = v40 + 1;
              v9 = v31;
              v13 = v32;
              v16 = v30;
              v17 = &kCTUnderlineColorAttributeName_ptr;
              break;
            }
          }
        }

        v18 = v34 + 1;
      }

      while ((v34 + 1) != v13);
      v13 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (!v13)
      {
LABEL_40:

        return;
      }
    }
  }
}

- (id)createLayerWithImages:(id)a3 effects:(id)a4 andOptions:(id)a5
{
  v9 = [MPAuthoringUtilities styleFromOptions:a5];
  v10 = [MPAuthoringUtilities layerIndexFromOptions:a5];
  v11 = +[MPLayer layer];
  v12 = [-[MPAuthoringController effectContainersWithImages:effects:andOptions:](self effectContainersWithImages:a3 effects:a4 andOptions:{a5), "mutableCopy"}];
  [MPAuthoringUtilities layerOffsetFromOptions:a5];
  if (v13 != 0.0)
  {
    v14 = v13;
    v15 = +[MPEffectContainer effectContainer];
    [v15 setDuration:v14];
    [v12 insertObject:v15 atIndex:0];
  }

  [v11 addEffectContainers:v12];

  v16 = [(MPAuthoringController *)self filtersForLayerFromOptions:a5];
  if ([v16 count])
  {
    [v11 addFilters:v16];
  }

  [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  [v11 setSize:?];
  [v11 setLayerID:{objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager, "sharedManager"), "layerIDForLayerIndex:ofStyle:", v10, v9)}];
  return v11;
}

- (id)slidesWithImages:(id)a3 andOptions:(id)a4
{
  v7 = [a3 count];
  v8 = [MPAuthoringUtilities shouldComputeFramesFromOptions:a4];
  v9 = [MPAuthoringUtilities shouldComputeSlideFiltersFromOptions:a4];
  v25 = [MPAuthoringUtilities layerIndexFromOptions:a4];
  [MPAuthoringUtilities movieVolumeFromOptions:a4];
  v11 = v10;
  v26 = [MPAuthoringUtilities shouldDuckMoviesFromOptions:a4];
  v28 = [[NSMutableDictionary alloc] initWithDictionary:a4];
  if (self->_delegate)
  {
    v12 = objc_opt_respondsToSelector();
    v27 = objc_opt_respondsToSelector();
  }

  else
  {
    v27 = 0;
    v12 = 0;
  }

  v13 = +[NSMutableArray array];
  v14 = [a4 objectForKey:kMPAuthoringCachedAbsolutePaths];
  if (v7 >= 1)
  {
    v15 = v14;
    v16 = 0;
    v17 = v9 | v12;
    while (1)
    {
      v18 = -[MPSlide initWithPath:]([MPSlide alloc], "initWithPath:", [a3 objectAtIndex:v16]);
      if (v15)
      {
        -[MPSlide setAbsolutePath:](v18, "setAbsolutePath:", [v15 objectAtIndex:v16]);
      }

      if ([(MPDocument *)self->_authoredDocument isMovieAtPath:[(MPSlide *)v18 path]])
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      [(MPSlide *)v18 setMediaType:v19];
      if ([(MPSlide *)v18 hasMovie])
      {
        [(MPDocument *)self->_authoredDocument volumeForPath:[(MPSlide *)v18 path]];
        [(MPSlide *)v18 setAudioVolume:?];
        if (v11 != 1.0)
        {
          [(MPSlide *)v18 setAudioVolume:v11];
        }

        if (v26)
        {
          [(MPSlide *)v18 setAudioDuckInDuration:1.0];
          [(MPSlide *)v18 setAudioDuckOutDuration:1.0];
          [(MPSlide *)v18 setAudioDuckLevel:0.25];
        }
      }

      if (v8)
      {
        v20 = [(MPAuthoringController *)self frameFromOptions:v28];
        if (v20)
        {
          [(MPSlide *)v18 setFrame:v20];
        }
      }

      if ((v17 & 1) == 0)
      {
        goto LABEL_28;
      }

      if ((v27 & 1) == 0)
      {
        break;
      }

      v21 = [self->_delegate document:self->_authoredDocument shouldUseDefaultFiltersForSlide:v18 effectIndex:0 containerIndex:0 layerIndex:v25];
      if (((v21 | v27 ^ 1) & 1) == 0)
      {
        v22 = [self->_delegate document:self->_authoredDocument needsFiltersForSlide:v18 effectIndex:0 containerIndex:0 layerIndex:v25];
        goto LABEL_25;
      }

      if (v21)
      {
        break;
      }

LABEL_28:
      [v13 addObject:v18];

      if (v7 == ++v16)
      {
        goto LABEL_29;
      }
    }

    v22 = [(MPAuthoringController *)self filtersForSlideFromOptions:v28];
LABEL_25:
    v23 = v22;
    if (v22 && [v22 count])
    {
      [(MPSlide *)v18 addFilters:v23];
    }

    goto LABEL_28;
  }

LABEL_29:

  return v13;
}

- (id)dynamicLayerWithImages:(id)a3 withOptions:(id)a4
{
  v7 = [MPAuthoringUtilities effectListFromOptions:a4];
  v8 = [MPAuthoringUtilities layerHasImagesFromOptions:a4];
  if ([v7 count] && (v9 = objc_msgSend(objc_msgSend(v7, "lastObject"), "objectForKey:", @"presetID"), v10 = objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager, "sharedManager"), "numOfImagesForEffectPresetID:", v9), v11 = objc_msgSend(+[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:", a4), "isEqualToString:", @"Dateline"), ((v10 == 0x7FFFFFFFFFFFFFFFLL) & v8) == 1))
  {
    v12 = v11;
    v13 = [[MPLayerEffect alloc] initWithEffectID:[MPUtilities andPaths:"idOfCombinedID:" idOfCombinedID:v9], a3];
    if (v12)
    {
      -[MPLayerEffect setEffectAttribute:forKey:](v13, "setEffectAttribute:forKey:", [a4 objectForKey:kMPAuthoringJournalRepresentation], @"journal");
    }

    [(MPAuthoringController *)self configurePanoramaInformationToEffect:v13 inDocument:self->_authoredDocument startingIndex:0 count:-1 removeOldIndex:-1];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = [(MPLayerEffect *)v13 slides];
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v32 + 1) + 8 * i);
          if (-[MPDocument isMovieAtPath:](self->_authoredDocument, "isMovieAtPath:", [v19 path]))
          {
            v20 = 3;
          }

          else
          {
            v20 = 2;
          }

          [v19 setMediaType:v20];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v16);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v21 = [(MPLayerEffect *)v13 slides];
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v29;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v28 + 1) + 8 * j);
          if ([v26 hasMovie])
          {
            -[MPDocument volumeForPath:](self->_authoredDocument, "volumeForPath:", [v26 path]);
            [v26 setAudioVolume:?];
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)titleEffectsForImages:(id)a3 withOptions:(id)a4
{
  v30 = +[NSMutableArray array];
  v6 = [MPAuthoringUtilities styleFromOptions:a4];
  v7 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v8 = objc_alloc_init(NSMutableArray);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = [v7 objectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        if (([objc_msgSend(v14 objectForKey:{@"imageOnlyTitleEffect", "BOOLValue"}] & 1) == 0)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

  v15 = [(MPAuthoringController *)self findEffectIDInPresetArray:v8 forImages:a3 withOptions:a4];

  if (v15)
  {
    v16 = v30;
    p_vtable = (&OBJC_METACLASS___MPDocumentInternal + 24);
  }

  else
  {
    p_vtable = &OBJC_METACLASS___MPDocumentInternal.vtable;
    v18 = [MPAuthoringUtilities titleEffectFromOptions:a4];
    v16 = v30;
    if (!v18)
    {
      return v16;
    }

    v15 = v18;
  }

  v19 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if ([p_vtable + 172 layerIndexFromOptions:a4] == v19)
  {
    v20 = [v15 objectForKey:@"presetID"];
    v21 = [v15 objectForKey:@"backgroundEffect"];
    v22 = +[MPEffectManager sharedManager];
    v23 = [v22 numberOfSlidesForEffectID:{+[MPUtilities idOfCombinedID:](MPUtilities, "idOfCombinedID:", v20)}];
    if (v21)
    {
      v23 = &v23[[v22 numberOfSlidesForEffectID:{+[MPUtilities idOfCombinedID:](MPUtilities, "idOfCombinedID:", v21)}]];
    }

    v24 = [p_vtable + 172 outroEffectIDFromOptions:a4];
    v25 = [a3 count];
    v26 = v25 - [v22 numberOfSlidesForEffectID:v24];
    v27 = [p_vtable + 172 layerHasImagesFromOptions:a4];
    if (v23 <= v26 || (v27 & 1) == 0)
    {
      if (v21)
      {
        v20 = [NSArray arrayWithObjects:v21, v20, 0];
      }

      [v16 addObject:v20];
    }
  }

  return v16;
}

- (id)effectAuthoredLayerWithImages:(id)a3 withOptions:(id)a4
{
  v7 = [MPAuthoringUtilities shouldDuckMoviesFromOptions:a4];
  [MPAuthoringUtilities movieVolumeFromOptions:a4];
  v9 = v8;
  v10 = [objc_msgSend(+[MPAuthoringUtilities effectListFromOptions:](MPAuthoringUtilities effectListFromOptions:{a4), "lastObject"), "objectForKey:", @"presetID"}];
  v79 = [MPUtilities idOfCombinedID:v10];
  v77 = [MPUtilities presetIDOfCombinedID:v10];
  v11 = [MPAuthoringUtilities styleFromOptions:a4];
  v12 = [MPAuthoringUtilities layerIndexFromOptions:a4];
  v73 = a4;
  [MPAuthoringUtilities aspectRatioFromOptions:a4];
  v14 = v13;
  v74 = +[MPLayer layer];
  [v74 setLayerID:{objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager, "sharedManager"), "layerIDForLayerIndex:ofStyle:", v12, v11)}];
  v81 = [a3 mutableCopy];
  v87 = +[NSMutableArray array];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v15 = a3;
  v16 = [a3 countByEnumeratingWithState:&v105 objects:v113 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v106;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v106 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v105 + 1) + 8 * i);
        v21 = objc_alloc_init(NSMutableDictionary);
        [(MPDocument *)self->_authoredDocument resolutionForPath:v20];
        v24 = v22 / v23;
        *&v24 = v24;
        [v21 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v24), @"aspectRatio"}];
        if ([(MPDocument *)self->_authoredDocument isMovieAtPath:v20])
        {
          [v21 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"isMovie"}];
          [(MPDocument *)self->_authoredDocument durationForPath:v20];
          [v21 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"duration"}];
        }

        [v87 addObject:v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v105 objects:v113 count:16];
    }

    while (v17);
  }

  v25 = [objc_msgSend(v73 objectForKey:{kMPAuthoringTellEffectsToSyncToMusic), "BOOLValue"}];
  v26 = &off_1BBE90;
  if (!v25)
  {
    v26 = 0;
  }

  v75 = v26;
  v27 = v81;
  v28 = v87;
  while ([v81 count])
  {
    v29 = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
    v30 = [v29 effectAuthoredSlideCount];
    v31 = [v29 effectAuthoredAttributes];
    v85 = [NSIndexSet indexSetWithIndexesInRange:0, v30];
    v32 = [v27 objectsAtIndexes:?];
    v83 = +[MPEffectContainer effectContainer];
    v33 = [MPEffect effectWithEffectID:v79 andPaths:v32];
    [(MPEffect *)v33 setPresetID:v77];
    [(MPEffect *)v33 setEffectAttributes:v31];
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v34 = [(MPEffect *)v33 slides];
    v35 = [(NSArray *)v34 countByEnumeratingWithState:&v101 objects:v112 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v102;
      do
      {
        for (j = 0; j != v36; j = j + 1)
        {
          if (*v102 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v101 + 1) + 8 * j);
          v40 = -[MPDocument isMovieAtPath:](self->_authoredDocument, "isMovieAtPath:", [v39 path]);
          if (v40)
          {
            v41 = 3;
          }

          else
          {
            v41 = 2;
          }

          [v39 setMediaType:v41];
          if (v40)
          {
            v42 = v9;
            if (v9 == 1.0)
            {
              -[MPDocument volumeForPath:](self->_authoredDocument, "volumeForPath:", [v39 path]);
            }

            [v39 setAudioVolume:v42];
            if (v7)
            {
              [v39 setAudioDuckInDuration:1.0];
              [v39 setAudioDuckOutDuration:1.0];
              [v39 setAudioDuckLevel:0.25];
            }
          }
        }

        v36 = [(NSArray *)v34 countByEnumeratingWithState:&v101 objects:v112 count:16];
      }

      while (v36);
    }

    [(MPAuthoringController *)self configurePanoramaInformationToEffect:v33 inDocument:self->_authoredDocument startingIndex:0 count:-1 removeOldIndex:-1];
    [v83 addEffect:v33];
    [v74 addEffectContainer:v83];
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v43 = [(MPEffect *)v33 slides];
    v44 = [(NSArray *)v43 countByEnumeratingWithState:&v97 objects:v111 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v98;
      do
      {
        for (k = 0; k != v45; k = k + 1)
        {
          if (*v98 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v97 + 1) + 8 * k);
          if (-[MPDocument isMovieAtPath:](self->_authoredDocument, "isMovieAtPath:", [v48 path]))
          {
            v49 = 3;
          }

          else
          {
            v49 = 2;
          }

          [v48 setMediaType:v49];
        }

        v45 = [(NSArray *)v43 countByEnumeratingWithState:&v97 objects:v111 count:16];
      }

      while (v45);
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v50 = [(MPEffect *)v33 slides];
    v51 = [(NSArray *)v50 countByEnumeratingWithState:&v93 objects:v110 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v94;
      do
      {
        for (m = 0; m != v52; m = m + 1)
        {
          if (*v94 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v93 + 1) + 8 * m);
          if ([v55 hasMovie])
          {
            -[MPDocument volumeForPath:](self->_authoredDocument, "volumeForPath:", [v55 path]);
            [v55 setAudioVolume:?];
          }
        }

        v52 = [(NSArray *)v50 countByEnumeratingWithState:&v93 objects:v110 count:16];
      }

      while (v52);
    }

    v28 = v87;
    [v87 removeObjectsAtIndexes:v85];
    v27 = v81;
    [v81 removeObjectsAtIndexes:v85];
  }

  v56 = [v74 effectContainers];
  v57 = [v56 count];
  v58 = [MPAuthoringUtilities shouldComputeLoopTransitionFromOptions:v73];
  v59 = [MPAuthoringUtilities shouldComputeTransitionsFromOptions:v73];
  v86 = [v73 mutableCopy];
  v76 = [MPAuthoringUtilities repeatTransitionsFromOptions:v73];
  v88 = objc_alloc_init(NSAutoreleasePool);
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v60 = [v56 countByEnumeratingWithState:&v89 objects:v109 count:16];
  if (!v60)
  {
    v78 = 0;
    goto LABEL_78;
  }

  v61 = v60;
  v62 = 0;
  v78 = 0;
  v80 = v56;
  v63 = *v90;
  v84 = v58;
  v64 = v59 | v58;
  v82 = v57 - 1;
  do
  {
    for (n = 0; n != v61; n = n + 1)
    {
      if (*v90 != v63)
      {
        objc_enumerationMutation(v56);
      }

      if ((v64 & (v62 < v57)) == 1)
      {
        v66 = *(*(&v89 + 1) + 8 * n);
        if ([objc_msgSend(v66 "effects")])
        {
          if (((v82 == v62) & v84) == 1)
          {
            v67 = [(MPAuthoringController *)self loopTransitionFromOptions:v86];
            goto LABEL_64;
          }

          if (v82 != v62)
          {
            v68 = [v56 objectAtIndex:v62 + 1];
LABEL_63:
            v67 = [(MPAuthoringController *)self transitionFromOptions:v86 firstEffectContainer:v66 nextEffectContainer:v68];
LABEL_64:
            v69 = v67;
            if (!v67)
            {
LABEL_71:
              v56 = v80;
              goto LABEL_72;
            }

            [v66 setTransition:v67];
            if (v76)
            {
              v70 = [v69 transitionPresetID];
              if (v78)
              {
                if ([v78 isEqualToString:v70])
                {
                  goto LABEL_68;
                }

                [v86 removeObjectForKey:kMPAuthoringIgnoreTransitionList];
              }

              v78 = v70;
              goto LABEL_71;
            }

LABEL_68:
            v71 = [[NSArray alloc] initWithObjects:{objc_msgSend(v69, "transitionPresetID"), 0}];
            [v86 setObject:v71 forKey:kMPAuthoringIgnoreTransitionList];

            goto LABEL_71;
          }

          if (![v86 objectForKey:kMPAuthoringUseLoopTransition] || objc_msgSend(v66, "countOfEffects") || (objc_msgSend(objc_msgSend(v86, "objectForKey:", kMPAuthoringUseLoopTransition), "BOOLValue") & 1) != 0)
          {
            v68 = 0;
            goto LABEL_63;
          }
        }
      }

LABEL_72:
      ++v62;
      if (__ROR8__(0x888888888888888 - 0x1111111111111111 * v62, 1) <= 0x888888888888888uLL)
      {

        v88 = objc_alloc_init(NSAutoreleasePool);
      }
    }

    v61 = [v56 countByEnumeratingWithState:&v89 objects:v109 count:16];
  }

  while (v61);
LABEL_78:

  [v88 drain];
  if (v78)
  {
  }

  return v74;
}

- (id)effectContainersWithImages:(id)a3 effects:(id)a4 andOptions:(id)a5
{
  v201 = +[MPEffectManager sharedManager];
  v193 = a3;
  v198 = [a3 count];
  p_vtable = &OBJC_METACLASS___MPDocumentInternal.vtable;
  v188 = [MPAuthoringUtilities shouldComputeFramesFromOptions:a5];
  v165 = [MPAuthoringUtilities shouldComputeTransitionsFromOptions:a5];
  v9 = [MPAuthoringUtilities shouldComputeSlideFiltersFromOptions:a5];
  v169 = [MPAuthoringUtilities shouldComputeLoopTransitionFromOptions:a5];
  v196 = [MPAuthoringUtilities useBestAspectRatioFromOptions:a5];
  v190 = [MPAuthoringUtilities layerIndexFromOptions:a5];
  [MPAuthoringUtilities movieVolumeFromOptions:a5];
  v11 = v10;
  v167 = [MPAuthoringUtilities repeatTransitionsFromOptions:a5];
  [MPAuthoringUtilities effectPadding:a5];
  v13 = v12;
  v187 = [MPAuthoringUtilities padTextOnlyEffects:a5];
  v14 = [(MPAuthoringController *)self filtersForEffectFromOptions:a5];
  v182 = [MPAuthoringUtilities outroEffectIDFromOptions:a5];
  v175 = [(MPAuthoringController *)self createEffectToTransitionMapWithOptions:a5];
  v186 = [MPAuthoringUtilities shouldDuckMoviesFromOptions:a5];
  v181 = [+[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities styleFromOptions:{a5), "isEqualToString:", @"Dateline"}];
  if ([MPAuthoringUtilities fitMoviesWhenPossibleFromOptions:a5])
  {
    v15 = ![MPAuthoringUtilities needsFitMovieAttributeFromOptions:a5];
  }

  else
  {
    LOBYTE(v15) = 1;
  }

  v180 = v15;
  v173 = v14;
  v184 = [MPAuthoringUtilities effectNeedsPreviousAttributesFromOptions:a5];
  v209 = [[NSMutableDictionary alloc] initWithDictionary:a5];
  if (self->_delegate)
  {
    v170 = objc_opt_respondsToSelector();
    v16 = objc_opt_respondsToSelector();
    v17 = objc_opt_respondsToSelector();
    v189 = objc_opt_respondsToSelector();
    v18 = v17 ^ 1;
  }

  else
  {
    v189 = 0;
    v16 = 0;
    v170 = 0;
    v18 = 1;
  }

  v166 = v18;
  if ((([+[MPAuthoringUtilities transitionListFromOptions:](MPAuthoringUtilities transitionListFromOptions:{a5), "count"}] == &dword_0 + 1) & v165) == 1)
  {
    v168 = [(MPAuthoringController *)self transitionFromOptions:a5];
  }

  else
  {
    if (v165)
    {
      v19 = [MPAuthoringUtilities pickTransitionsEvenlyByIDWithOptions:a5];
      v20 = [MPAuthoringUtilities matchEffectsUsingTagsFromOptions:a5];
      v21 = [MPAuthoringUtilities transitionListFromOptions:a5];
      [v21 lastObject];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || v19 || v20)
      {
        [(MPAuthoringController *)self populateWeighter:self->_transitionWeighter withTransitions:v21 andOptions:a5];
        [(MPWeighter *)self->_transitionWeighter setEvenlyPickByID:v19];
      }
    }

    v168 = 0;
  }

  v177 = +[NSMutableArray array];
  if (([objc_msgSend(v209 objectForKey:{kMPAuthoringLive), "BOOLValue"}] & v184) == 1 && objc_msgSend(-[MPDocument layers](self->_authoredDocument, "layers"), "count"))
  {
    v183 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(-[MPDocument layers](self->_authoredDocument "layers")];
  }

  else
  {
    v183 = 0;
  }

  v176 = objc_alloc_init(NSAutoreleasePool);
  v258 = 0u;
  v259 = 0u;
  v260 = 0u;
  v261 = 0u;
  v22 = &kCTUnderlineColorAttributeName_ptr;
  v197 = a5;
  v174 = [a4 countByEnumeratingWithState:&v258 objects:v274 count:16];
  if (v174)
  {
    v23 = 0;
    v172 = *v259;
    v185 = v9 | v16;
    v24 = 0;
    y = CGPointZero.y;
    do
    {
      v27 = 0;
      do
      {
        if (*v259 != v172)
        {
          objc_enumerationMutation(a4);
        }

        v178 = v27;
        v28 = *(*(&v258 + 1) + 8 * v27);
        v29 = +[MPEffectContainer effectContainer];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v28;
        }

        else
        {
          v30 = [objc_alloc(v22[46]) initWithObjects:{v28, 0}];
        }

        v257 = 0u;
        v256 = 0u;
        v254 = 0u;
        v255 = 0u;
        v179 = v30;
        v194 = [v30 countByEnumeratingWithState:&v254 objects:v273 count:16];
        if (v194)
        {
          v31 = 0;
          v191 = *v255;
          v192 = v29;
          v206 = v23;
          do
          {
            v32 = 0;
            do
            {
              v207 = v31;
              if (*v255 != v191)
              {
                objc_enumerationMutation(v179);
              }

              v199 = v32;
              v33 = *(*(&v254 + 1) + 8 * v32);
              v34 = [MPUtilities idOfCombinedID:v33];
              v35 = [MPUtilities presetIDOfCombinedID:v33];
              v36 = [v201 numberOfSlidesForEffectID:v34];
              v200 = v24;
              v202 = v36;
              if (v36 < 1)
              {
                v51 = [MPEffect effectWithEffectID:v34];
                [(MPEffect *)v51 setPresetID:v35];
                v52 = v34;
                goto LABEL_115;
              }

              v37 = v36;
              v195 = v35;
              v203 = v34;
              v38 = [NSIndexSet alloc];
              if (v198 >= v37)
              {
                v39 = v37;
              }

              else
              {
                v39 = v198;
              }

              v40 = [v38 initWithIndexesInRange:{v24, v39}];
              v41 = v24;
              v42 = [v193 objectsAtIndexes:v40];

              v43 = [a5 objectForKey:kMPAuthoringCachedAbsolutePaths];
              if (v43)
              {
                v44 = v43;
                v45 = [NSIndexSet alloc];
                v46 = [v44 count];
                if (v46 >= v37)
                {
                  v47 = v37;
                }

                else
                {
                  v47 = v46;
                }

                v48 = [v45 initWithIndexesInRange:{v41, v47}];
                v49 = v37;
                v50 = [v44 objectsAtIndexes:v48];
              }

              else
              {
                v49 = v37;
                v50 = 0;
              }

              if ((v49 == &dword_0 + 1) | v196 & 1 || (v252 = 0u, v253 = 0u, v250 = 0u, v251 = 0u, (v53 = [v42 countByEnumeratingWithState:&v250 objects:v272 count:16]) == 0))
              {
                v55 = 0;
              }

              else
              {
                v54 = v53;
                v55 = 0;
                v56 = *v251;
                do
                {
                  for (i = 0; i != v54; i = i + 1)
                  {
                    if (*v251 != v56)
                    {
                      objc_enumerationMutation(v42);
                    }

                    [objc_msgSend(-[NSMutableDictionary objectForKey:](self->_cachedROIInformation objectForKey:{*(*(&v250 + 1) + 8 * i)), "objectForKey:", @"aspectRatio", "floatValue"}];
                    v59 = v58 < 0.5;
                    if (v58 > 2.0)
                    {
                      v59 = 1;
                    }

                    v55 |= v59;
                  }

                  v54 = [v42 countByEnumeratingWithState:&v250 objects:v272 count:16];
                }

                while (v54);
              }

              if (v196)
              {
                if (v202 != 1)
                {
                  goto LABEL_59;
                }
              }

              else if (((v202 != 1) & v55) != 0)
              {
LABEL_59:
                v61 = [(MPAuthoringController *)self sortImagePaths:v42 toAspectRatiosInEffectPresetID:v33 withOptions:v209];
                v60 = +[NSMutableArray array];
                v62 = +[NSMutableArray array];
                v246 = 0u;
                v247 = 0u;
                v248 = 0u;
                v249 = 0u;
                v63 = [v61 countByEnumeratingWithState:&v246 objects:v271 count:16];
                if (v63)
                {
                  v64 = v63;
                  v65 = *v247;
                  do
                  {
                    for (j = 0; j != v64; j = j + 1)
                    {
                      if (*v247 != v65)
                      {
                        objc_enumerationMutation(v61);
                      }

                      v67 = [*(*(&v246 + 1) + 8 * j) integerValue];
                      if ((v67 & 0x8000000000000000) == 0)
                      {
                        v68 = v67;
                        [v60 addObject:{objc_msgSend(v42, "objectAtIndex:", v67)}];
                        if (v50)
                        {
                          [v62 addObject:{objc_msgSend(v50, "objectAtIndex:", v68)}];
                        }
                      }
                    }

                    v64 = [v61 countByEnumeratingWithState:&v246 objects:v271 count:16];
                  }

                  while (v64);
                }

                if (v50)
                {
                  v50 = v62;
                }

                else
                {
                  v50 = 0;
                }

                a5 = v197;
                goto LABEL_73;
              }

              v60 = v42;
LABEL_73:
              v69 = v203;
              v70 = [MPEffect effectWithEffectID:v203 andPaths:v60];
              [(MPEffect *)v70 setSkipEffectTiming:1];
              [(MPEffect *)v70 setPresetID:v195];
              if (v184)
              {
                v71 = [-[MPEffect effectAttributes](v70 "effectAttributes")];
                if (v183)
                {
                  v72 = [v183 mutableCopy];
                  [v72 removeObjectForKey:@"previousAttributes"];
                  v69 = v203;
                  [v71 setObject:v72 forKey:@"previousAttributes"];
                  [(MPEffect *)v70 setEffectAttributes:v71];
                }

                else
                {
                  [(MPEffect *)v70 setEffectAttributes:v71];
                }

                v183 = v71;
              }

              if (v181)
              {
                -[MPEffect setEffectAttribute:forKey:](v70, "setEffectAttribute:forKey:", [a5 objectForKey:kMPAuthoringJournalRepresentation], @"journal");
              }

              if ((v180 & 1) == 0)
              {
                [(MPEffect *)v70 setEffectAttribute:[NSNumber forKey:"numberWithBool:" numberWithBool:?], @"fitMovies"];
              }

              [(MPAuthoringController *)self configurePanoramaInformationToEffect:v70 inDocument:self->_authoredDocument startingIndex:0 count:-1 removeOldIndex:-1];
              v73 = [v201 numberOfSecondarySlidesForEffectID:v69];
              if (v73 >= 1)
              {
                v74 = v73;
                v75 = [a5 objectForKey:kMPAuthoringSecondaryPaths];
                if (v75)
                {
                  v76 = v75;
                }

                else
                {
                  v76 = v193;
                }

                [(MPEffect *)v70 createSecondarySlidesWithPaths:[(MPAuthoringController *)self pickRandomPathsInArray:v76 excludingPaths:v60 count:v74]];
              }

              v244 = 0u;
              v245 = 0u;
              v242 = 0u;
              v243 = 0u;
              v51 = v70;
              v77 = [(MPEffect *)v70 slides];
              v78 = [(NSArray *)v77 countByEnumeratingWithState:&v242 objects:v270 count:16];
              if (v78)
              {
                v79 = v78;
                v80 = *v243;
                do
                {
                  for (k = 0; k != v79; k = k + 1)
                  {
                    if (*v243 != v80)
                    {
                      objc_enumerationMutation(v77);
                    }

                    v82 = *(*(&v242 + 1) + 8 * k);
                    if (-[MPDocument isMovieAtPath:](self->_authoredDocument, "isMovieAtPath:", [v82 path]))
                    {
                      v83 = 3;
                    }

                    else
                    {
                      v83 = 2;
                    }

                    [v82 setMediaType:v83];
                  }

                  v79 = [(NSArray *)v77 countByEnumeratingWithState:&v242 objects:v270 count:16];
                }

                while (v79);
              }

              v240 = 0u;
              v241 = 0u;
              v238 = 0u;
              v239 = 0u;
              v84 = [(MPEffect *)v51 slides];
              v85 = [(NSArray *)v84 countByEnumeratingWithState:&v238 objects:v269 count:16];
              if (v85)
              {
                v86 = v85;
                v87 = *v239;
                do
                {
                  for (m = 0; m != v86; m = m + 1)
                  {
                    if (*v239 != v87)
                    {
                      objc_enumerationMutation(v84);
                    }

                    v89 = *(*(&v238 + 1) + 8 * m);
                    if ([v89 hasMovie])
                    {
                      -[MPDocument volumeForPath:](self->_authoredDocument, "volumeForPath:", [v89 path]);
                      [v89 setAudioVolume:?];
                    }
                  }

                  v86 = [(NSArray *)v84 countByEnumeratingWithState:&v238 objects:v269 count:16];
                }

                while (v86);
              }

              if (v50)
              {
                v236 = 0u;
                v237 = 0u;
                v234 = 0u;
                v235 = 0u;
                v90 = [(MPEffect *)v51 slides];
                v91 = [(NSArray *)v90 countByEnumeratingWithState:&v234 objects:v268 count:16];
                if (v91)
                {
                  v92 = v91;
                  v93 = 0;
                  v94 = *v235;
                  do
                  {
                    for (n = 0; n != v92; n = n + 1)
                    {
                      if (*v235 != v94)
                      {
                        objc_enumerationMutation(v90);
                      }

                      [*(*(&v234 + 1) + 8 * n) setAbsolutePath:{objc_msgSend(v50, "objectAtIndex:", v93++)}];
                    }

                    v92 = [(NSArray *)v90 countByEnumeratingWithState:&v234 objects:v268 count:16];
                  }

                  while (v92);
                }
              }

              [(MPEffect *)v51 setSkipEffectTiming:0];
              [(MPEffect *)v51 updateTiming];
              v52 = v203;
LABEL_115:
              if ([v201 numOfTextsForEffectID:v52] >= 1)
              {
                v96 = [a5 objectForKey:kMPAuthoringTitleStrings];
                v97 = [a5 objectForKey:kMPAuthoringOutroTitleStrings];
                if ([v182 hasPrefix:v52])
                {
                  v98 = v97 == 0;
                }

                else
                {
                  v98 = 1;
                }

                if (v98 || ![v97 count])
                {
                  [MPAuthoringUtilities multilineSizeFactorFromOptions:a5];
                  if (!v96)
                  {
                    goto LABEL_126;
                  }

                  v100 = v101;
                  v97 = v96;
                }

                else
                {
                  [MPAuthoringUtilities multilineSizeFactorFromOptions:a5];
                  v100 = v99;
                }

                if (![v97 count])
                {
LABEL_126:
                  [(MPEffect *)v51 createTextsWithDefaultStrings];
                  goto LABEL_127;
                }

                [(MPEffect *)v51 createTextsWithStrings:v97 secondLineFactor:v100];
              }

LABEL_127:
              if (v188)
              {
                v232 = 0u;
                v233 = 0u;
                v230 = 0u;
                v231 = 0u;
                v102 = [(MPEffect *)v51 slides];
                v103 = [(NSArray *)v102 countByEnumeratingWithState:&v230 objects:v267 count:16];
                if (v103)
                {
                  v104 = v103;
                  v105 = *v231;
                  do
                  {
                    for (ii = 0; ii != v104; ii = ii + 1)
                    {
                      if (*v231 != v105)
                      {
                        objc_enumerationMutation(v102);
                      }

                      v107 = *(*(&v230 + 1) + 8 * ii);
                      v108 = [(MPAuthoringController *)self frameFromOptions:v209];
                      if (v108)
                      {
                        [v107 setFrame:v108];
                      }
                    }

                    v104 = [(NSArray *)v102 countByEnumeratingWithState:&v230 objects:v267 count:16];
                  }

                  while (v104);
                }
              }

              if (v185)
              {
                v228 = 0u;
                v229 = 0u;
                v226 = 0u;
                v227 = 0u;
                v109 = [(MPEffect *)v51 slides];
                v110 = [(NSArray *)v109 countByEnumeratingWithState:&v226 objects:v266 count:16];
                if (v110)
                {
                  v111 = v110;
                  v112 = *v227;
                  do
                  {
                    for (jj = 0; jj != v111; jj = jj + 1)
                    {
                      if (*v227 != v112)
                      {
                        objc_enumerationMutation(v109);
                      }

                      v114 = *(*(&v226 + 1) + 8 * jj);
                      if (v189)
                      {
                        v115 = [self->_delegate document:self->_authoredDocument shouldUseDefaultFiltersForSlide:*(*(&v226 + 1) + 8 * jj) effectIndex:v207 containerIndex:v206 layerIndex:v190];
                        if (((v115 | v189 ^ 1) & 1) == 0)
                        {
                          v116 = [self->_delegate document:self->_authoredDocument needsFiltersForSlide:v114 effectIndex:v207 containerIndex:v206 layerIndex:v190];
                          goto LABEL_148;
                        }

                        if (!v115)
                        {
                          continue;
                        }
                      }

                      v116 = [(MPAuthoringController *)self filtersForSlideFromOptions:v209];
LABEL_148:
                      v117 = v116;
                      if (v116 && [v116 count])
                      {
                        [v114 addFilters:v117];
                      }
                    }

                    v111 = [(NSArray *)v109 countByEnumeratingWithState:&v226 objects:v266 count:16];
                  }

                  while (v111);
                }
              }

              if (v202 > 0)
              {
                v118 = 1;
              }

              else
              {
                v118 = v187;
              }

              if (v13 > 0.0 && v118)
              {
                v25 = v13 * -2.0 + 1.0 + v13 * -2.0 + 1.0;
                [(MPEffect *)v51 setSize:v25, v25];
                [(MPEffect *)v51 setPosition:CGPointZero.x, y];
              }

              v29 = v192;
              if (v11 != 1.0)
              {
                v224 = 0u;
                v225 = 0u;
                v222 = 0u;
                v223 = 0u;
                v119 = [(MPEffect *)v51 slides];
                v120 = [(NSArray *)v119 countByEnumeratingWithState:&v222 objects:v265 count:16];
                if (v120)
                {
                  v121 = v120;
                  v122 = *v223;
                  do
                  {
                    for (kk = 0; kk != v121; kk = kk + 1)
                    {
                      if (*v223 != v122)
                      {
                        objc_enumerationMutation(v119);
                      }

                      v124 = *(*(&v222 + 1) + 8 * kk);
                      if ([v124 hasMovie])
                      {
                        [v124 setAudioVolume:v11];
                      }
                    }

                    v121 = [(NSArray *)v119 countByEnumeratingWithState:&v222 objects:v265 count:16];
                  }

                  while (v121);
                }
              }

              a5 = v197;
              if (v186)
              {
                v220 = 0u;
                v221 = 0u;
                v218 = 0u;
                v219 = 0u;
                v125 = [(MPEffect *)v51 slides];
                v126 = [(NSArray *)v125 countByEnumeratingWithState:&v218 objects:v264 count:16];
                if (v126)
                {
                  v127 = v126;
                  v128 = *v219;
                  do
                  {
                    for (mm = 0; mm != v127; mm = mm + 1)
                    {
                      if (*v219 != v128)
                      {
                        objc_enumerationMutation(v125);
                      }

                      v130 = *(*(&v218 + 1) + 8 * mm);
                      if ([v130 hasMovie])
                      {
                        [v130 setAudioDuckInDuration:1.0];
                        [v130 setAudioDuckOutDuration:1.0];
                        [v130 setAudioDuckLevel:0.25];
                      }
                    }

                    v127 = [(NSArray *)v125 countByEnumeratingWithState:&v218 objects:v264 count:16];
                  }

                  while (v127);
                }
              }

              [v192 addEffect:v51];
              v131 = v198;
              if (v198 >= v202)
              {
                v131 = v202;
              }

              v24 = &v200[v131];
              v23 = v206;
              v31 = v207 + 1;
              v32 = v199 + 1;
              p_vtable = &OBJC_METACLASS___MPDocumentInternal.vtable;
              v22 = &kCTUnderlineColorAttributeName_ptr;
            }

            while ((v199 + 1) != v194);
            v194 = [v179 countByEnumeratingWithState:&v254 objects:v273 count:16];
          }

          while (v194);
        }

        if (v173 && [v173 count])
        {
          [v29 addFilters:v173];
        }

        if (v29)
        {
          [v177 addObject:v29];
        }

        ++v23;

        if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * v23 + 0x888888888888888, 1) <= 0x888888888888888uLL)
        {

          v176 = objc_alloc_init(NSAutoreleasePool);
        }

        v27 = v178 + 1;
      }

      while ((v178 + 1) != v174);
      v174 = [a4 countByEnumeratingWithState:&v258 objects:v274 count:16];
    }

    while (v174);
  }

  if (v183)
  {
  }

  v132 = [v177 count];
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v133 = [v177 countByEnumeratingWithState:&v214 objects:v263 count:16];
  if (!v133)
  {
    [v176 drain];
    goto LABEL_239;
  }

  v134 = v133;
  v135 = 0;
  v208 = *v215;
  v204 = 0;
  v205 = v132 - 1;
  v136 = v177;
  do
  {
    v137 = 0;
    do
    {
      if (*v215 != v208)
      {
        objc_enumerationMutation(v136);
      }

      v138 = *(*(&v214 + 1) + 8 * v137);
      v139 = v209;
      if (v175)
      {
        v140 = [*(*(&v214 + 1) + 8 * v137) effects];
        v139 = v209;
        if ([v140 count])
        {
          v141 = [v175 objectForKey:{objc_msgSend(objc_msgSend(v140, "objectAtIndex:", 0), "effectPresetID")}];
          v139 = v209;
          if (v141)
          {
            v142 = v141;
            v139 = [v209 mutableCopy];
            v143 = [[NSArray alloc] initWithObjects:{v142, 0}];
            [v139 setObject:v143 forKey:kMPAuthoringTransitionList];
          }
        }
      }

      if (((v165 | v170 | v169) ^ 1) & 1 | (v135 >= v132))
      {
        v136 = v177;
        goto LABEL_229;
      }

      v136 = v177;
      if (!v138 || ![objc_msgSend(v138 "effects")])
      {
        goto LABEL_229;
      }

      if ((v170 & 1) == 0)
      {
        goto LABEL_209;
      }

      v144 = [self->_delegate document:self->_authoredDocument shouldUseDefaultTransitionForEffectContainer:v138 containerIndex:v135 layerIndex:v190];
      if ((v144 | v166))
      {
        v136 = v177;
        if (!v144)
        {
          goto LABEL_229;
        }

LABEL_209:
        if (((v205 == v135) & v169) == 1)
        {
          v145 = [(MPAuthoringController *)self loopTransitionFromOptions:v209];
        }

        else
        {
          if (v205 == v135)
          {
            if ([v197 objectForKey:kMPAuthoringUseLoopTransition] && !objc_msgSend(v138, "countOfEffects") && (objc_msgSend(objc_msgSend(v197, "objectForKey:", kMPAuthoringUseLoopTransition), "BOOLValue") & 1) == 0)
            {
              goto LABEL_229;
            }

            v146 = 0;
          }

          else
          {
            v146 = [v136 objectAtIndex:v135 + 1];
          }

          if (v168)
          {
            v145 = [v168 copy];
          }

          else
          {
            v145 = [(MPAuthoringController *)self transitionFromOptions:v139 firstEffectContainer:v138 nextEffectContainer:v146];
          }
        }

        v147 = v145;
        if (!v145)
        {
          goto LABEL_229;
        }

        goto LABEL_224;
      }

      v147 = [self->_delegate document:self->_authoredDocument needsTransitionForEffectContainer:v138 containerIndex:v135 layerIndex:v190];
      v136 = v177;
      if (!v147)
      {
        goto LABEL_229;
      }

LABEL_224:
      [v138 setTransition:v147];
      if ((v167 & 1) == 0)
      {
        goto LABEL_228;
      }

      if (v168)
      {
        goto LABEL_229;
      }

      v148 = [v147 transitionPresetID];
      if (v204)
      {
        if ([v204 isEqualToString:v148])
        {
LABEL_228:
          v149 = [[NSArray alloc] initWithObjects:{objc_msgSend(v147, "transitionPresetID"), 0}];
          [v209 setObject:v149 forKey:kMPAuthoringIgnoreTransitionList];

          goto LABEL_229;
        }

        [v209 removeObjectForKey:kMPAuthoringIgnoreTransitionList];
      }

      v204 = v148;
LABEL_229:
      ++v135;
      if (__ROR8__(0x888888888888888 - 0x1111111111111111 * v135, 1) <= 0x888888888888888uLL)
      {

        v176 = objc_alloc_init(NSAutoreleasePool);
      }

      v137 = v137 + 1;
    }

    while (v134 != v137);
    v150 = [v136 countByEnumeratingWithState:&v214 objects:v263 count:16];
    v134 = v150;
  }

  while (v150);
  [v176 drain];
  a5 = v197;
  p_vtable = (&OBJC_METACLASS___MPDocumentInternal + 24);
  if (v204)
  {
  }

LABEL_239:
  v151 = [p_vtable + 172 gapInformationFromOptions:a5];
  if (v151)
  {
    v152 = v151;
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v153 = [v151 countByEnumeratingWithState:&v210 objects:v262 count:16];
    if (v153)
    {
      v154 = v153;
      v155 = 0;
      v156 = *v211;
      do
      {
        for (nn = 0; nn != v154; nn = nn + 1)
        {
          if (*v211 != v156)
          {
            objc_enumerationMutation(v152);
          }

          v158 = *(*(&v210 + 1) + 8 * nn);
          v159 = [objc_msgSend(v158 objectForKey:{@"index", "integerValue"}];
          [objc_msgSend(v158 objectForKey:{@"duration", "doubleValue"}];
          v161 = v160;
          v162 = +[MPEffectContainer effectContainer];
          [v162 setDuration:v161];
          v163 = v159 + v155;
          if (v163 >= 1)
          {
            [objc_msgSend(v177 objectAtIndex:{v163 - 1), "setTransition:", 0}];
          }

          [objc_msgSend(v177 objectAtIndex:{v163), "setTransition:", 0}];
          [v177 insertObject:v162 atIndex:v163];
          ++v155;
        }

        v154 = [v152 countByEnumeratingWithState:&v210 objects:v262 count:16];
      }

      while (v154);
    }
  }

  return v177;
}

- (id)createEffectToTransitionMapWithOptions:(id)a3
{
  v4 = [MPAuthoringUtilities styleFromOptions:?];
  v5 = +[NSMutableDictionary dictionary];
  v6 = objc_alloc_init(NSMutableArray);
  [v6 addObjectsFromArray:{objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager, "sharedManager"), "titleEffectLayoutsForStyleID:", v4)}];
  [v6 addObjectsFromArray:{+[MPAuthoringUtilities effectListFromOptions:](MPAuthoringUtilities, "effectListFromOptions:", a3)}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 objectForKey:@"transitionID"];
        if (v12)
        {
          [v5 setObject:v12 forKey:{objc_msgSend(v11, "objectForKey:", @"presetID"}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (id)loopTransitionFromOptions:(id)a3
{
  v5 = [MPAuthoringUtilities loopTransitionIDFromOptions:?];
  if ([v5 isEqualToString:@"Use Default"])
  {

    return [(MPAuthoringController *)self transitionFromOptions:a3];
  }

  else
  {
    v7 = [MPAuthoringUtilities idFromPresetID:v5];
    v8 = [MPAuthoringUtilities presetIDFromPresetID:v5];
    if (v7)
    {
      v9 = v8;
      v7 = [MPTransition transitionWithTransitionID:v7];
      [(MPTransition *)v7 setPresetID:v9];
    }

    return v7;
  }
}

- (id)exportTransitionFromOptions:(id)a3
{
  v3 = [MPAuthoringUtilities exportTransitionIDFromOptions:a3];
  v4 = [MPAuthoringUtilities idFromPresetID:v3];
  v5 = [MPAuthoringUtilities presetIDFromPresetID:v3];
  v6 = [MPTransition transitionWithTransitionID:v4];
  [(MPTransition *)v6 setPresetID:v5];
  return v6;
}

- (id)sortImagePaths:(id)a3 toAspectRatiosInEffectPresetID:(id)a4 withOptions:(id)a5
{
  v7 = a3;
  if ([a3 count] == &dword_0 + 1 || objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager, "sharedManager"), "numOfImagesForEffectPresetID:", a4) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = +[NSMutableArray array];
    if ([v7 count])
    {
      v9 = 0;
      do
      {
        [v8 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v9++)}];
      }

      while (v9 < [v7 count]);
    }

    return v8;
  }

  v10 = [MPUtilities idOfCombinedID:a4];
  v11 = [MPUtilities presetIDOfCombinedID:a4];
  [MPAuthoringUtilities aspectRatioFromOptions:a5];
  v13 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  v129 = +[NSMutableArray array];
  v14 = [v13 count];
  if (v14 < 1)
  {
    v18 = 0;
    v124 = 0;
    v17 = 0;
    v16 = 0;
  }

  else
  {
    v15 = v14;
    v16 = 0;
    v17 = 0;
    v124 = 0;
    v18 = 0;
    for (i = 0; i != v15; ++i)
    {
      v20 = [v13 objectForKey:ImageKey(i)];
      [v20 floatValue];
      v22 = v21;
      if (v21 <= 0.95)
      {
        ++v16;
      }

      else if (v21 >= 3.0)
      {
        ++v18;
      }

      else
      {
        v23 = v124;
        if (v22 < 1.075)
        {
          v23 = v124 + 1;
        }

        v124 = v23;
        if (v22 >= 1.075)
        {
          ++v17;
        }
      }

      [v129 addObject:v20];
    }
  }

  v122 = v16;
  v116 = v18;
  p_superclass = MCGenericAction.superclass;
  v25 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  v126 = +[NSMutableIndexSet indexSet];
  v127 = +[NSMutableIndexSet indexSet];
  v120 = +[NSMutableIndexSet indexSet];
  v26 = [v25 count];
  if (v26 >= 1)
  {
    v27 = v26;
    v28 = 0;
    v29 = 0;
    while (1)
    {
      v30 = [objc_msgSend(p_superclass + 199 "sharedManager")];
      if (v30 <= 6)
      {
        v31 = v30;
        v32 = 1 << v30;
        v33 = v127;
        if ((v32 & 0x12) != 0)
        {
          goto LABEL_28;
        }

        v33 = v126;
        if (((1 << v31) & 0x24) != 0)
        {
          goto LABEL_28;
        }

        if (((1 << v31) & 0x48) != 0)
        {
          break;
        }
      }

LABEL_30:
      ++v29;
      p_superclass = (MCGenericAction + 8);
      if (v27 == v29)
      {
        goto LABEL_33;
      }
    }

    v33 = v120;
LABEL_28:
    [v33 addIndex:v29];
    if (v31 == 6)
    {
      ++v28;
    }

    goto LABEL_30;
  }

  v28 = 0;
LABEL_33:
  v34 = [v126 count];
  v35 = [v127 count];
  v36 = [v120 count];
  v37 = [v129 count];
  if (v37 != [v7 count] || (v38 = &v34[v35 + v36], v122 >= 1) && !v17 && !v124 && !v18 && !v38 || !v122 && v17 >= 1 && !v124 && !v18 && !v38 || !v122 && !v17 && v124 >= 1 && !v18 && !v38 || v28 == v124 + v18 + v17 + v122)
  {
    v8 = +[NSMutableArray array];
    if ([v7 count])
    {
      v39 = 0;
      do
      {
        [v8 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v39++)}];
      }

      while (v39 < [v7 count]);
    }

    return v8;
  }

  v109 = &v34[v35 + v36];
  v41 = +[NSMutableArray array];
  v115 = +[NSMutableArray array];
  v42 = +[NSMutableArray array];
  v119 = +[NSMutableArray array];
  v121 = +[NSMutableArray array];
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v114 = v41;
  v117 = v42;
  v125 = [v7 countByEnumeratingWithState:&v142 objects:v149 count:16];
  if (!v125)
  {
    goto LABEL_95;
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v123 = *v143;
  obj = v7;
  do
  {
    v46 = 0;
    do
    {
      if (*v143 != v123)
      {
        objc_enumerationMutation(obj);
      }

      v47 = [(NSMutableDictionary *)self->_cachedROIInformation objectForKey:*(*(&v142 + 1) + 8 * v46)];
      [objc_msgSend(v47 objectForKey:{@"aspectRatio", "floatValue"}];
      v49 = v48;
      [objc_msgSend(v47 objectForKey:{@"imageAspectRatio", "floatValue"}];
      v51 = v50;
      v52 = [objc_msgSend(v47 objectForKey:{@"fitsInExtraWide", "BOOLValue"}];
      v53 = [objc_msgSend(v47 objectForKey:{@"roiCount", "integerValue"}];
      v54 = v53 > 0;
      v55 = [objc_msgSend(v47 objectForKey:{@"wasFlipped", "BOOLValue"}];
      if (v49 < 0.5 && ([v126 count] || objc_msgSend(v120, "count")))
      {
        v56 = [NSNumber numberWithInteger:v44];
        v57 = v121;
LABEL_67:
        [v57 addObject:v56];
        goto LABEL_68;
      }

      if (v49 > 2.0 && ([v127 count] || objc_msgSend(v120, "count")))
      {
        v56 = [NSNumber numberWithInteger:v44];
        v57 = v119;
        goto LABEL_67;
      }

      v59 = v51 > 1.0 && v45 < v116;
      if ((v59 & v52) == 1)
      {
        [v117 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v44)}];
        ++v45;
        goto LABEL_68;
      }

      if (v49 <= 1.0 && ((v49 <= 1.0) & v55) == 0)
      {
        if (v53 <= 1)
        {
          ++v113;
          v56 = [NSNumber numberWithInteger:v44];
          v57 = v114;
          goto LABEL_67;
        }

        v66 = [objc_msgSend(v47 objectForKey:{@"intersects", "BOOLValue"}];
        v62 = [NSNumber numberWithInteger:v44];
        if (v66)
        {
          v63 = v114;
          v64 = [v114 count];
          v65 = v113;
          goto LABEL_90;
        }

        [v114 insertObject:v62 atIndex:v111++];
      }

      else
      {
        if (v53 <= 1)
        {
          ++v112;
          v56 = [NSNumber numberWithInteger:v44];
          v57 = v115;
          goto LABEL_67;
        }

        v61 = [objc_msgSend(v47 objectForKey:{@"intersects", "BOOLValue"}];
        v62 = [NSNumber numberWithInteger:v44];
        if (v61)
        {
          v63 = v115;
          v64 = [v115 count];
          v65 = v112;
LABEL_90:
          [v63 insertObject:v62 atIndex:&v64[-v65]];
          goto LABEL_68;
        }

        [v115 insertObject:v62 atIndex:v110++];
      }

LABEL_68:
      v43 |= v54;
      ++v44;
      v46 = v46 + 1;
    }

    while (v125 != v46);
    v7 = obj;
    v67 = [obj countByEnumeratingWithState:&v142 objects:v149 count:16];
    v125 = v67;
  }

  while (v67);
  v41 = v114;
  v42 = v117;
  if (v43)
  {
    goto LABEL_102;
  }

LABEL_95:
  if (([v41 count] || objc_msgSend(v42, "count") || !objc_msgSend(v115, "count") || objc_msgSend(v119, "count") || objc_msgSend(v121, "count")) && (!objc_msgSend(v41, "count") || objc_msgSend(v42, "count") || objc_msgSend(v115, "count") || objc_msgSend(v119, "count") || objc_msgSend(v121, "count")))
  {
LABEL_102:
    if (self->_logLevel > 1)
    {
      -[NSMutableDictionary setObject:forKey:](self->_stats, "setObject:forKey:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [-[NSMutableDictionary objectForKey:](self->_stats objectForKey:{@"numOfLandscapes", "integerValue"}] + objc_msgSend(v115, "count")), @"numOfLandscapes");
      -[NSMutableDictionary setObject:forKey:](self->_stats, "setObject:forKey:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [-[NSMutableDictionary objectForKey:](self->_stats objectForKey:{@"numOfPortraits", "integerValue"}] + objc_msgSend(v41, "count")), @"numOfPortraits");
    }

    v8 = +[NSMutableArray array];
    v68 = [v7 count];
    if (v68 >= 1)
    {
      v69 = v68;
      do
      {
        [v8 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -1)}];
        --v69;
      }

      while (v69);
    }

    if (v109 >= 1)
    {
      v70 = [v129 count];
      if (v70 >= 1)
      {
        v71 = v70;
        for (j = 0; j != v71; ++j)
        {
          if (![v126 containsIndex:j] || (v73 = v121, !objc_msgSend(v121, "count")))
          {
            if (![v127 containsIndex:j])
            {
              continue;
            }

            v73 = v119;
            if (![v119 count])
            {
              continue;
            }
          }

          [v8 replaceObjectAtIndex:j withObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(objc_msgSend(v73, "objectAtIndex:", 0), "integerValue"))}];
          [v73 removeObjectAtIndex:0];
        }

        for (k = 0; k != v71; ++k)
        {
          if (([objc_msgSend(v8 objectAtIndex:{k), "integerValue"}] & 0x8000000000000000) != 0)
          {
            if ([v120 containsIndex:k] && (v75 = v121, objc_msgSend(v121, "count")) || objc_msgSend(v120, "containsIndex:", k) && (v75 = v119, objc_msgSend(v119, "count")))
            {
              [v8 replaceObjectAtIndex:k withObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(objc_msgSend(v75, "objectAtIndex:", 0), "integerValue"))}];
              [v75 removeObjectAtIndex:0];
            }
          }
        }
      }
    }

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v76 = [v129 countByEnumeratingWithState:&v138 objects:v148 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = 0;
      v79 = *v139;
      do
      {
        v80 = 0;
        do
        {
          if (*v139 != v79)
          {
            objc_enumerationMutation(v129);
          }

          v81 = *(*(&v138 + 1) + 8 * v80);
          if (([objc_msgSend(v8 objectAtIndex:{v78), "integerValue"}] & 0x8000000000000000) != 0)
          {
            [v81 floatValue];
            if (v82 >= 3.0 && [v117 count])
            {
              v83 = v117;
LABEL_146:
              [v8 replaceObjectAtIndex:v78 withObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(objc_msgSend(v83, "objectAtIndex:", 0), "integerValue"))}];
              [v83 removeObjectAtIndex:0];
              goto LABEL_147;
            }

            [v81 floatValue];
            if (v84 < 1.075)
            {
              [v81 floatValue];
              if (v85 > 0.95)
              {
                goto LABEL_147;
              }

              if (self->_logLevel >= 2)
              {
                -[NSMutableDictionary setObject:forKey:](self->_stats, "setObject:forKey:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [-[NSMutableDictionary objectForKey:](self->_stats objectForKey:{@"numOfDZPortraits", "integerValue"}] + 1), @"numOfDZPortraits");
              }

              v83 = v114;
              if ([v114 count])
              {
                goto LABEL_146;
              }

              if (![v115 count])
              {
                goto LABEL_147;
              }

              if (self->_logLevel >= 2)
              {
                -[NSMutableDictionary setObject:forKey:](self->_stats, "setObject:forKey:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [-[NSMutableDictionary objectForKey:](self->_stats objectForKey:{@"misplacedLandscapes", "integerValue"}] + 1), @"misplacedLandscapes");
              }

              v86 = v115;
              goto LABEL_153;
            }

            if (self->_logLevel >= 2)
            {
              -[NSMutableDictionary setObject:forKey:](self->_stats, "setObject:forKey:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [-[NSMutableDictionary objectForKey:](self->_stats objectForKey:{@"numOfDZLandscapes", "integerValue"}] + 1), @"numOfDZLandscapes");
            }

            v83 = v115;
            if ([v115 count])
            {
              goto LABEL_146;
            }

            v83 = v117;
            if ([v117 count])
            {
              goto LABEL_146;
            }

            if ([v114 count])
            {
              if (self->_logLevel >= 2)
              {
                -[NSMutableDictionary setObject:forKey:](self->_stats, "setObject:forKey:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [-[NSMutableDictionary objectForKey:](self->_stats objectForKey:{@"misplacedPortraits", "integerValue"}] + 1), @"misplacedPortraits");
              }

              v86 = v114;
LABEL_153:
              [v8 replaceObjectAtIndex:v78 withObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(objc_msgSend(v86, "lastObject"), "integerValue"))}];
              [v86 removeLastObject];
            }
          }

LABEL_147:
          ++v78;
          v80 = v80 + 1;
        }

        while (v77 != v80);
        v87 = [v129 countByEnumeratingWithState:&v138 objects:v148 count:16];
        v77 = v87;
      }

      while (v87);
    }

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v88 = [v129 countByEnumeratingWithState:&v134 objects:v147 count:16];
    v89 = v115;
    if (v88)
    {
      v90 = v88;
      v91 = 0;
      v92 = *v135;
      do
      {
        for (m = 0; m != v90; m = m + 1)
        {
          if (*v135 != v92)
          {
            objc_enumerationMutation(v129);
          }

          v94 = *(*(&v134 + 1) + 8 * m);
          if (([objc_msgSend(v8 objectAtIndex:{v91), "integerValue"}] & 0x8000000000000000) != 0)
          {
            [v94 floatValue];
            if (v95 > 0.95)
            {
              [v94 floatValue];
              if (v96 < 1.075)
              {
                if (self->_logLevel >= 2)
                {
                  v89 = v115;
                  -[NSMutableDictionary setObject:forKey:](self->_stats, "setObject:forKey:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [-[NSMutableDictionary objectForKey:](self->_stats objectForKey:{@"numOfDZSquares", "integerValue"}] + 1), @"numOfDZSquares");
                }

                v97 = v89;
                if ([v89 count] || (v97 = v114, objc_msgSend(v114, "count")) || (v97 = v117, objc_msgSend(v117, "count")))
                {
                  [v8 replaceObjectAtIndex:v91 withObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(objc_msgSend(v97, "objectAtIndex:", 0), "integerValue"))}];
                  [v97 removeObjectAtIndex:0];
                }
              }
            }
          }

          ++v91;
        }

        v90 = [v129 countByEnumeratingWithState:&v134 objects:v147 count:16];
      }

      while (v90);
    }

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v98 = [v129 countByEnumeratingWithState:&v130 objects:v146 count:16];
    if (v98)
    {
      v99 = v98;
      v100 = 0;
      v101 = *v131;
      do
      {
        for (n = 0; n != v99; n = n + 1)
        {
          if (*v131 != v101)
          {
            objc_enumerationMutation(v129);
          }

          v103 = *(*(&v130 + 1) + 8 * n);
          if (([objc_msgSend(v8 objectAtIndex:{v100), "integerValue"}] & 0x8000000000000000) != 0)
          {
            if (self->_logLevel >= 2)
            {
              -[NSMutableDictionary setObject:forKey:](self->_stats, "setObject:forKey:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [-[NSMutableDictionary objectForKey:](self->_stats objectForKey:{@"numOfDZFallbacks", "integerValue"}] + 1), @"numOfDZFallbacks");
            }

            [v103 floatValue];
            if (v104 < 1.0)
            {
              v105 = v121;
            }

            else
            {
              v105 = v119;
            }

            v106 = [v105 count];
            if (v105 == v119)
            {
              v107 = v121;
            }

            else
            {
              v107 = v119;
            }

            if (!v106)
            {
              v105 = v107;
            }

            if ([v105 count])
            {
              [v8 replaceObjectAtIndex:v100 withObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(objc_msgSend(v105, "objectAtIndex:", 0), "integerValue"))}];
              [v105 removeObjectAtIndex:0];
            }

            else
            {
              [v8 replaceObjectAtIndex:v100 withObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 0)}];
            }
          }

          ++v100;
        }

        v99 = [v129 countByEnumeratingWithState:&v130 objects:v146 count:16];
      }

      while (v99);
    }
  }

  else
  {
    v8 = +[NSMutableArray array];
    if ([v7 count])
    {
      v108 = 0;
      do
      {
        [v8 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v108++)}];
      }

      while (v108 < [v7 count]);
    }
  }

  return v8;
}

- (id)filtersForLayerFromOptions:(id)a3
{
  v4 = [MPAuthoringUtilities styleFromOptions:?];
  v5 = [MPAuthoringUtilities layerIndexFromOptions:a3];
  v6 = +[NSMutableArray array];
  v7 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:v5 forStyle:{v4), "objectForKey:", @"layerFilterPresets"}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = +[MPFilter filterWithFilterID:](MPFilter, "filterWithFilterID:", [v12 stringByDeletingLastPathComponent]);
        -[MPFilter setPresetID:](v13, "setPresetID:", [v12 lastPathComponent]);
        [v6 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)filtersForEffectFromOptions:(id)a3
{
  v4 = [MPAuthoringUtilities layerIndexFromOptions:?];
  v5 = [MPAuthoringUtilities styleFromOptions:a3];
  v6 = +[NSMutableArray array];
  [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v8 = v7;
  v9 = random();
  if (v8 == -1.0)
  {
    if (0xAAAAAAAAAAAAAAABLL * v9 + 0x2AAAAAAAAAAAAAAALL >= 0x5555555555555555)
    {
      return v6;
    }
  }

  else if ((v9 % 100) + v8 * -100.0 >= 0.0)
  {
    return v6;
  }

  v10 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:v4 forStyle:{v5), "objectForKey:", @"filterPresets"}];
  if (![v10 count])
  {
    return 0;
  }

  v11 = [v10 objectAtIndex:{random() % objc_msgSend(v10, "count")}];
  if (v11)
  {
    v12 = v11;
    v13 = +[MPFilter filterWithFilterID:](MPFilter, "filterWithFilterID:", [v11 stringByDeletingLastPathComponent]);
    -[MPFilter setPresetID:](v13, "setPresetID:", [v12 lastPathComponent]);
    [v6 addObject:v13];
  }

  return v6;
}

- (id)filtersForSlideFromOptions:(id)a3
{
  v4 = +[NSMutableArray array];
  v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", a3), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:", a3)), "objectForKey:", @"filterPresets"}];
  if (v5)
  {
    v6 = v5;
    if ([v5 count])
    {
      v7 = [v6 objectAtIndex:{random() % objc_msgSend(v6, "count")}];
      if (v7)
      {
        v8 = v7;
        v9 = +[MPFilter filterWithFilterID:](MPFilter, "filterWithFilterID:", [v7 stringByDeletingLastPathComponent]);
        -[MPFilter setPresetID:](v9, "setPresetID:", [v8 lastPathComponent]);
        [v4 addObject:v9];
      }
    }
  }

  return v4;
}

- (id)frameFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:"), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:", a3)), "objectForKey:", @"frames"}];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (![v3 count])
  {
    return 0;
  }

  v5 = [v4 objectAtIndex:{random() % objc_msgSend(v4, "count")}];
  if (!v5)
  {
    return 0;
  }

  return [MPFrame frameWithFrameID:v5];
}

- (id)createAudioPlayListFromAudioPaths:(id)a3 andOptions:(id)a4
{
  v6 = +[MPAudioPlaylist audioPlaylist];
  v7 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(a3);
        }

        [v7 addObject:{+[MPSong songWithPath:](MPSong, "songWithPath:", *(*(&v13 + 1) + 8 * v11))}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [v6 addSongs:v7];
  if ([MPAuthoringUtilities fadeOutAudioFromOptions:a4])
  {
    [v6 setFadeOutDuration:1.0];
  }

  return v6;
}

- (id)pickRandomPathsInArray:(id)a3 excludingPaths:(id)a4 count:(int64_t)a5
{
  v8 = +[NSMutableArray array];
  for (i = [a3 mutableCopy]; objc_msgSend(v8, "count") < a5 && objc_msgSend(i, "count"); objc_msgSend(i, "removeObjectAtIndex:", v11))
  {
    v10 = random();
    v11 = v10 % [i count];
    v12 = [i objectAtIndex:v11];
    if (([a4 containsObject:v12] & 1) == 0)
    {
      [v8 addObject:v12];
    }
  }

  while ([v8 count] < a5)
  {
    [v8 addObject:{objc_msgSend(a3, "objectAtIndex:", random() % objc_msgSend(a3, "count"))}];
  }

  return v8;
}

- (id)transitionFromOptions:(id)a3 firstEffectContainer:(id)a4 nextEffectContainer:(id)a5
{
  v9 = +[MPTransitionManager sharedManager];
  p_vtable = &OBJC_METACLASS___MPDocumentInternal.vtable;
  v11 = [MPAuthoringUtilities transitionListFromOptions:a3];
  if (![v11 count])
  {
    return 0;
  }

  if ([(MPWeighter *)self->_transitionWeighter count]>= 1)
  {
    if ([MPAuthoringUtilities effectDecidesTransitionFromOptions:a3])
    {
      v12 = -[MPWeighter getRandomIndexMeetingContraints:](self->_transitionWeighter, "getRandomIndexMeetingContraints:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", [objc_msgSend(a4 objectInEffectsAtIndex:{0), "presetID"}], @"presetID", 0));
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [(MPWeighter *)self->_transitionWeighter getRandomIndex];
      }

LABEL_149:
      v15 = [v11 objectAtIndex:v12];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v15 objectForKey:@"presetID"];
      }

      goto LABEL_151;
    }

    v92 = a5;
    v95 = v11;
    v96 = a3;
    v16 = [MPAuthoringUtilities ignoreTransitionListFromOptions:a3];
    v17 = +[NSMutableIndexSet indexSet];
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v18 = [v16 countByEnumeratingWithState:&v123 objects:v133 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v124;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v124 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = [-[MPWeighter allItems](self->_transitionWeighter "allItems")];
          if (v22 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v17 addIndex:v22];
          }
        }

        v19 = [v16 countByEnumeratingWithState:&v123 objects:v133 count:16];
      }

      while (v19);
    }

    [(MPWeighter *)self->_transitionWeighter ignoreIndices:v17];
    p_vtable = &OBJC_METACLASS___MPDocumentInternal.vtable;
    a3 = v96;
    if (![MPAuthoringUtilities useTransitionLayoutTagsWithOptions:v96])
    {
      goto LABEL_61;
    }

    v23 = [a4 objectInEffectsAtIndex:0];
    v24 = [v23 effectID];
    v25 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    v26 = +[MPAuthoringUtilities aspectRatioMatchesDefault:withOptions:](MPAuthoringUtilities, "aspectRatioMatchesDefault:withOptions:", [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")], v96);
    v89 = v24;
    v27 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    v28 = [v27 isEqualToString:@"landscape"];
    v29 = [v27 isEqualToString:@"portrait"];
    v97 = [objc_msgSend(v25 objectForKey:{@"endLayoutTags", "mutableCopy"}];
    v91 = v9;
    if ((v26 & 1) == 0)
    {
      v30 = [v97 copy];
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v31 = [v30 countByEnumeratingWithState:&v119 objects:v132 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v120;
        do
        {
          for (j = 0; j != v32; j = j + 1)
          {
            if (*v120 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v119 + 1) + 8 * j);
            if (v28 && ([*(*(&v119 + 1) + 8 * j) hasPrefix:@"X"] & 1) != 0 || v29 && objc_msgSend(v35, "hasPrefix:", @"Y"))
            {
              [v97 removeObject:v35];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v119 objects:v132 count:16];
        }

        while (v32);
      }

      v9 = v91;
      a3 = v96;
    }

    v36 = +[NSMutableSet set];
    obj = +[NSMutableSet set];
    if (v92)
    {
      v88 = v36;
      v37 = [v92 objectInEffectsAtIndex:0];
      v38 = [v37 effectID];
      v39 = [objc_msgSend(objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
      p_vtable = &OBJC_METACLASS___MPDocumentInternal.vtable;
      v40 = +[MPAuthoringUtilities aspectRatioMatchesDefault:withOptions:](MPAuthoringUtilities, "aspectRatioMatchesDefault:withOptions:", [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")], a3);
      v41 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
      v42 = [v41 isEqualToString:@"landscape"];
      v43 = [v41 isEqualToString:@"portrait"];
      if ((v40 & 1) == 0)
      {
        v44 = v43;
        v93 = v38;
        v45 = v39;
        v46 = [v39 copy];
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v47 = [v46 countByEnumeratingWithState:&v115 objects:v131 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v116;
          do
          {
            for (k = 0; k != v48; k = k + 1)
            {
              if (*v116 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v115 + 1) + 8 * k);
              if (v42 && ([*(*(&v115 + 1) + 8 * k) hasPrefix:@"X"] & 1) != 0 || v44 && objc_msgSend(v51, "hasPrefix:", @"Y"))
              {
                [v45 removeObject:v51];
              }
            }

            v48 = [v46 countByEnumeratingWithState:&v115 objects:v131 count:16];
          }

          while (v48);
        }

        v9 = v91;
        v38 = v93;
        a3 = v96;
        p_vtable = &OBJC_METACLASS___MPDocumentInternal.vtable;
        v39 = v45;
      }

      v52 = [v38 isEqualToString:@"JustASlide"];
      v53 = &kCTUnderlineColorAttributeName_ptr;
      v36 = v88;
      if (v52)
      {
        v54 = v97;
        [v88 addObjectsFromArray:v97];
        goto LABEL_56;
      }

      v55 = [v89 isEqualToString:@"JustASlide"];
      [v88 addObjectsFromArray:v39];
      if ((v55 & 1) == 0)
      {
        v54 = v97;
        [v88 addObjectsFromArray:v97];
        [obj addObjectsFromArray:v39];
        [obj intersectSet:{+[NSMutableSet setWithArray:](NSMutableSet, "setWithArray:", v97)}];
LABEL_56:
        v94 = [v54 count];
        if ([v36 count])
        {
          v12 = -[MPWeighter getRandomIndexMeetingContraints:oneMatch:](self->_transitionWeighter, "getRandomIndexMeetingContraints:oneMatch:", -[CFStringRef dictionaryWithObjectsAndKeys:](v53[50], "dictionaryWithObjectsAndKeys:", [v36 allObjects], @"tags", 0), 0);
        }

        else
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (([0 isEqualToString:@"JustASlide"] & 1) == 0)
        {
          v90 = v39;
          v56 = [v97 mutableCopy];
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          v114 = 0u;
          v57 = [v97 countByEnumeratingWithState:&v111 objects:v130 count:16];
          if (v57)
          {
            v58 = v57;
            v59 = *v112;
            do
            {
              for (m = 0; m != v58; m = m + 1)
              {
                if (*v112 != v59)
                {
                  objc_enumerationMutation(v97);
                }

                v61 = *(*(&v111 + 1) + 8 * m);
                if (([v61 hasPrefix:@"X"] & 1) == 0)
                {
                  [v56 removeObject:v61];
                }
              }

              v58 = [v97 countByEnumeratingWithState:&v111 objects:v130 count:16];
            }

            while (v58);
          }

          v62 = [v97 mutableCopy];
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v63 = [v97 countByEnumeratingWithState:&v107 objects:v129 count:16];
          if (v63)
          {
            v64 = v63;
            v65 = *v108;
            do
            {
              for (n = 0; n != v64; n = n + 1)
              {
                if (*v108 != v65)
                {
                  objc_enumerationMutation(v97);
                }

                v67 = *(*(&v107 + 1) + 8 * n);
                if (([v67 hasPrefix:@"Y"] & 1) == 0)
                {
                  [v62 removeObject:v67];
                }
              }

              v64 = [v97 countByEnumeratingWithState:&v107 objects:v129 count:16];
            }

            while (v64);
          }

          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v68 = obj;
            if (v94)
            {
              if ([v56 count])
              {
                v12 = [(MPWeighter *)self->_transitionWeighter getRandomIndexMeetingContraints:[NSDictionary oneMatch:"dictionaryWithObjectsAndKeys:" dictionaryWithObjectsAndKeys:v56, @"tags", [NSNumber numberWithBool:1], @"tagsOnSourceOnly", 0], 0];
              }

              else
              {
                v12 = 0x7FFFFFFFFFFFFFFFLL;
              }
            }
          }

          else
          {
            v68 = obj;
          }

          v69 = [v68 mutableCopy];
          v103 = 0u;
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          v70 = [v68 countByEnumeratingWithState:&v103 objects:v128 count:16];
          if (v70)
          {
            v71 = v70;
            v72 = *v104;
            do
            {
              for (ii = 0; ii != v71; ii = ii + 1)
              {
                if (*v104 != v72)
                {
                  objc_enumerationMutation(obj);
                }

                v74 = *(*(&v103 + 1) + 8 * ii);
                if (([v74 hasPrefix:@"X"] & 1) == 0)
                {
                  [v69 removeObject:v74];
                }
              }

              v68 = obj;
              v71 = [obj countByEnumeratingWithState:&v103 objects:v128 count:16];
            }

            while (v71);
          }

          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([v69 count])
            {
              v12 = -[MPWeighter getRandomIndexMeetingContraints:oneMatch:](self->_transitionWeighter, "getRandomIndexMeetingContraints:oneMatch:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", [v69 allObjects], @"tags", 0), 0);
            }

            else
            {
              v12 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (v12 == 0x7FFFFFFFFFFFFFFFLL && v94)
            {
              if ([v56 count])
              {
                v12 = [(MPWeighter *)self->_transitionWeighter getRandomIndexMeetingContraints:[NSDictionary oneMatch:"dictionaryWithObjectsAndKeys:" dictionaryWithObjectsAndKeys:v56, @"tags", 0], 0];
              }

              else
              {
                v12 = 0x7FFFFFFFFFFFFFFFLL;
              }
            }

            if (v12 == 0x7FFFFFFFFFFFFFFFLL && v94)
            {
              if ([v62 count])
              {
                v12 = [(MPWeighter *)self->_transitionWeighter getRandomIndexMeetingContraints:[NSDictionary oneMatch:"dictionaryWithObjectsAndKeys:" dictionaryWithObjectsAndKeys:v62, @"tags", [NSNumber numberWithBool:1], @"tagsOnSourceOnly", 0], 0];
              }

              else
              {
                v12 = 0x7FFFFFFFFFFFFFFFLL;
              }
            }
          }

          v75 = [v68 mutableCopy];
          v99 = 0u;
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v76 = [v68 countByEnumeratingWithState:&v99 objects:v127 count:16];
          if (v76)
          {
            v77 = v76;
            v78 = *v100;
            do
            {
              for (jj = 0; jj != v77; jj = jj + 1)
              {
                if (*v100 != v78)
                {
                  objc_enumerationMutation(obj);
                }

                v80 = *(*(&v99 + 1) + 8 * jj);
                if (([v80 hasPrefix:@"Y"] & 1) == 0)
                {
                  [v75 removeObject:v80];
                }
              }

              v77 = [obj countByEnumeratingWithState:&v99 objects:v127 count:16];
            }

            while (v77);
          }

          a3 = v96;
          p_vtable = (&OBJC_METACLASS___MPDocumentInternal + 24);
          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([v75 count])
            {
              v12 = -[MPWeighter getRandomIndexMeetingContraints:oneMatch:](self->_transitionWeighter, "getRandomIndexMeetingContraints:oneMatch:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", [v75 allObjects], @"tags", 0), 0);
            }

            else
            {
              v12 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (v12 == 0x7FFFFFFFFFFFFFFFLL && v94)
            {
              if ([v62 count])
              {
                v12 = [(MPWeighter *)self->_transitionWeighter getRandomIndexMeetingContraints:[NSDictionary oneMatch:"dictionaryWithObjectsAndKeys:" dictionaryWithObjectsAndKeys:v62, @"tags", 0], 0];
              }

              else
              {
                v12 = 0x7FFFFFFFFFFFFFFFLL;
              }
            }

            if (v12 == 0x7FFFFFFFFFFFFFFFLL && v94)
            {
              if ([v56 count])
              {
                v12 = [(MPWeighter *)self->_transitionWeighter getRandomIndexMeetingContraints:[NSDictionary dictionaryWithObjectsAndKeys:v56, @"tags", [NSNumber numberWithBool:1], @"tagsOnSourceOnly", 0]];
              }

              else
              {
                v12 = 0x7FFFFFFFFFFFFFFFLL;
              }
            }

            if (v12 == 0x7FFFFFFFFFFFFFFFLL && v94)
            {
              if ([v62 count])
              {
                v12 = [(MPWeighter *)self->_transitionWeighter getRandomIndexMeetingContraints:[NSDictionary dictionaryWithObjectsAndKeys:v62, @"tags", [NSNumber numberWithBool:1], @"tagsOnSourceOnly", 0]];
              }

              else
              {
                v12 = 0x7FFFFFFFFFFFFFFFLL;
              }
            }
          }

          if ([obj count])
          {
            v12 = -[MPWeighter getRandomIndexMeetingContraints:](self->_transitionWeighter, "getRandomIndexMeetingContraints:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", [obj allObjects], @"tags", 0));
          }

          v9 = v91;
          if (v12 == 0x7FFFFFFFFFFFFFFFLL && v94)
          {
            v12 = [(MPWeighter *)self->_transitionWeighter getRandomIndexMeetingContraints:[NSDictionary dictionaryWithObjectsAndKeys:v97, @"tags", 0]];
          }

          if (v12 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_147;
          }

          if (v94)
          {
            v12 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = 0x7FFFFFFFFFFFFFFFLL;
            if (v90)
            {
              v12 = [(MPWeighter *)self->_transitionWeighter getRandomIndexMeetingContraints:[NSDictionary dictionaryWithObjectsAndKeys:v90, @"tags", [NSNumber numberWithBool:0], @"tagsOnSourceOnly", 0]];
            }
          }

          if (v12 == 0x7FFFFFFFFFFFFFFFLL && v90)
          {
            v12 = [(MPWeighter *)self->_transitionWeighter getRandomIndexMeetingContraints:[NSDictionary dictionaryWithObjectsAndKeys:v90, @"tags", 0]];
          }
        }

        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_147:
          v11 = v95;
          if (v12 >= [v95 count])
          {
            v81 = random();
            v12 = v81 % [v95 count];
          }

          goto LABEL_149;
        }

LABEL_61:
        v12 = [(MPWeighter *)self->_transitionWeighter getRandomIndex];
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(MPWeighter *)self->_transitionWeighter clearIgnoreIndices];
          v12 = [(MPWeighter *)self->_transitionWeighter getRandomIndex];
        }

        goto LABEL_147;
      }
    }

    else
    {
      v39 = 0;
      p_vtable = (&OBJC_METACLASS___MPDocumentInternal + 24);
      v53 = &kCTUnderlineColorAttributeName_ptr;
    }

    v54 = v97;
    goto LABEL_56;
  }

  v13 = [v11 mutableCopy];
  v14 = [MPAuthoringUtilities ignoreTransitionListFromOptions:a3];
  if (([v13 isEqualToArray:v14] & 1) == 0)
  {
    [v13 removeObjectsInArray:v14];
  }

  v15 = [v13 objectAtIndex:{random() % objc_msgSend(v13, "count")}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v15 objectForKey:@"presetID"];
  }

LABEL_151:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v15 objectForKey:@"presetID"];
  }

  if (!v15)
  {
    return 0;
  }

  v82 = [p_vtable + 172 idFromPresetID:v15];
  v83 = [MPTransition transitionWithTransitionID:v82];
  [p_vtable + 172 transitionDurationFromOptions:a3];
  v85 = v84;
  if (v84 == -1.0)
  {
    [v9 defaultDurationForTransitionID:v82];
    v85 = v86;
  }

  if ([objc_msgSend(v15 componentsSeparatedByString:{@"/", "count"}] >= 2)
  {
    -[MPTransition setPresetID:](v83, "setPresetID:", [v15 lastPathComponent]);
  }

  [(MPTransition *)v83 setDuration:v85];
  return v83;
}

- (void)performInitialFaceDetectionInGroup:(id)a3 withOptions:(id)a4
{
  v35 = [a3 layers];
  v36 = [MPAuthoringUtilities styleFromOptions:a4];
  if (([objc_msgSend(a4 objectForKey:{kMPAuthoringSkipFaceDetectionAtStart), "BOOLValue"}] & 1) == 0)
  {
    v7 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
    if ([a3 detectFacesInBackground])
    {
      if (v7)
      {
        v34 = [v35 count];
        if (v34 >= 1)
        {
          v8 = 0;
          while (1)
          {
            v38 = v8;
            v9 = [v35 objectAtIndex:?];
            v10 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v11 = [v9 slides];
            v12 = [v11 countByEnumeratingWithState:&v57 objects:v64 count:16];
            if (!v12)
            {
              goto LABEL_47;
            }

            v13 = v12;
            v14 = 0;
            v15 = *v58;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v58 != v15)
                {
                  objc_enumerationMutation(v11);
                }

                if (v14 <= 4)
                {
                  v17 = *(*(&v57 + 1) + 8 * i);
                  [v17 showTime];
                  if (v18 < 3.0)
                  {
                    -[MPDocument regionsOfInterestForPath:detect:](self->_authoredDocument, "regionsOfInterestForPath:detect:", [v17 path], 1);
                    ++v14;
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v57 objects:v64 count:16];
            }

            while (v13);
            v19 = v38;
            if (v14 > 4)
            {
              return;
            }

LABEL_48:
            v8 = v19 + 1;
            if (v8 >= v34)
            {
              return;
            }
          }

          if (v10)
          {
            if ([v9 countOfEffectContainers] >= 1)
            {
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              obj = [v9 effectContainers];
              v40 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
              if (v40)
              {
                v20 = 0;
                v39 = *v54;
LABEL_23:
                v21 = 0;
                while (1)
                {
                  if (*v54 != v39)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v22 = *(*(&v53 + 1) + 8 * v21);
                  v49 = 0u;
                  v50 = 0u;
                  v51 = 0u;
                  v52 = 0u;
                  v41 = v21;
                  v42 = v22;
                  v43 = [v22 effects];
                  v23 = [v43 countByEnumeratingWithState:&v49 objects:v62 count:16];
                  if (v23)
                  {
                    v24 = v23;
                    v44 = *v50;
LABEL_28:
                    v25 = 0;
                    while (1)
                    {
                      if (*v50 != v44)
                      {
                        objc_enumerationMutation(v43);
                      }

                      v26 = *(*(&v49 + 1) + 8 * v25);
                      v45 = 0u;
                      v46 = 0u;
                      v47 = 0u;
                      v48 = 0u;
                      v27 = [v26 slides];
                      v28 = [v27 countByEnumeratingWithState:&v45 objects:v61 count:16];
                      if (v28)
                      {
                        v29 = v28;
                        v30 = *v46;
                        do
                        {
                          for (j = 0; j != v29; j = j + 1)
                          {
                            if (*v46 != v30)
                            {
                              objc_enumerationMutation(v27);
                            }

                            if (v20 <= 4)
                            {
                              v32 = *(*(&v45 + 1) + 8 * j);
                              [v32 showTime];
                              if (v33 < 3.0)
                              {
                                -[MPDocument regionsOfInterestForPath:detect:](self->_authoredDocument, "regionsOfInterestForPath:detect:", [v32 path], 1);
                                ++v20;
                              }
                            }
                          }

                          v29 = [v27 countByEnumeratingWithState:&v45 objects:v61 count:16];
                        }

                        while (v29);
                      }

                      if (v20 > 4)
                      {
                        break;
                      }

                      if (++v25 == v24)
                      {
                        v24 = [v43 countByEnumeratingWithState:&v49 objects:v62 count:16];
                        if (v24)
                        {
                          goto LABEL_28;
                        }

                        break;
                      }
                    }
                  }

                  if ([v42 countOfEffects] > 0)
                  {
                    break;
                  }

                  v21 = v41 + 1;
                  if ((v41 + 1) == v40)
                  {
                    v40 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
                    if (v40)
                    {
                      goto LABEL_23;
                    }

                    break;
                  }
                }
              }
            }
          }

LABEL_47:
          v19 = v38;
          goto LABEL_48;
        }
      }
    }
  }
}

- (void)configurePanoramaInformationToEffect:(id)a3 inDocument:(id)a4 startingIndex:(int64_t)a5 count:(int64_t)a6 removeOldIndex:(int64_t)a7
{
  if ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")])
  {
    v12 = [a3 slides];
    if (a6 <= 0)
    {
      a6 = [v12 count] - a5;
    }

    v51 = a7;
    v13 = [objc_msgSend(a3 "slides")];
    v14 = [a3 effectAttributeForKey:@"breakInformation"];
    if (!v14)
    {
      v14 = +[NSMutableDictionary dictionary];
    }

    v52 = v14;
    v50 = a3;
    v15 = [a3 liveIndex];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v16 = [v13 countByEnumeratingWithState:&v69 objects:v76 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = v15 + a5;
      v19 = *v70;
      v53 = *v70;
      v54 = v13;
      do
      {
        v20 = 0;
        v55 = v17;
        do
        {
          if (*v70 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v21 = *(*(&v69 + 1) + 8 * v20);
          [a4 resolutionForPath:{objc_msgSend(v21, "path")}];
          v24 = v22 / v23;
          if (v22 / v23 < 0.5 || v24 > 2.0)
          {
            v26 = ImageKey(v18);
            v27 = [a4 regionsOfInterestForPath:{objc_msgSend(v21, "path")}];
            v28 = v27;
            if (v24 >= 1.0)
            {
              v67 = 0uLL;
              v68 = 0uLL;
              v65 = 0uLL;
              v66 = 0uLL;
              v35 = [v27 countByEnumeratingWithState:&v65 objects:v75 count:16];
              if (!v35)
              {
                goto LABEL_36;
              }

              v36 = v35;
              v56 = v26;
              v31 = 0;
              v32 = 0;
              v37 = *v66;
              do
              {
                for (i = 0; i != v36; i = i + 1)
                {
                  if (*v66 != v37)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v39 = COERCE_DOUBLE(CGRectFromString([*(*(&v65 + 1) + 8 * i) objectForKey:kMPMetaDataRegionOfInterestBounds]));
                  v32 |= v39 < 0.333000004;
                  v31 |= v39 > 0.666000009;
                }

                v36 = [v28 countByEnumeratingWithState:&v65 objects:v75 count:16];
              }

              while (v36);
            }

            else
            {
              v63 = 0uLL;
              v64 = 0uLL;
              v61 = 0uLL;
              v62 = 0uLL;
              v29 = [v27 countByEnumeratingWithState:&v61 objects:v74 count:16];
              if (!v29)
              {
                goto LABEL_36;
              }

              v30 = v29;
              v56 = v26;
              v31 = 0;
              v32 = 0;
              v33 = *v62;
              do
              {
                for (j = 0; j != v30; j = j + 1)
                {
                  if (*v62 != v33)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v77 = CGRectFromString([*(*(&v61 + 1) + 8 * j) objectForKey:kMPMetaDataRegionOfInterestBounds]);
                  v32 |= v77.origin.y < 0.333000004;
                  v31 |= v77.origin.y > 0.666000009;
                }

                v30 = [v28 countByEnumeratingWithState:&v61 objects:v74 count:{16, v77.origin.x}];
              }

              while (v30);
            }

            if (v32 & 1 | ((v31 & 1) == 0))
            {
              v40 = v31 | ~v32;
              v19 = v53;
              v13 = v54;
              v17 = v55;
              v41 = v56;
              if (v40)
              {
                goto LABEL_36;
              }

              v42 = -1;
            }

            else
            {
              v42 = 1;
              v19 = v53;
              v13 = v54;
              v17 = v55;
              v41 = v56;
            }

            v43 = +[NSMutableDictionary dictionary];
            [v43 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", v42), @"panEndDirection"}];
            [v52 setObject:v43 forKey:v41];
          }

LABEL_36:
          ++v18;
          v20 = v20 + 1;
        }

        while (v20 != v17);
        v17 = [v13 countByEnumeratingWithState:&v69 objects:v76 count:16];
      }

      while (v17);
    }

    if ([v52 count])
    {
      [v50 setEffectAttribute:v52 forKey:@"breakInformation"];
    }

    if (a7 >= 1)
    {
      v44 = [v52 allKeys];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v45 = [v44 countByEnumeratingWithState:&v57 objects:v73 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v58;
        do
        {
          for (k = 0; k != v46; k = k + 1)
          {
            if (*v58 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v57 + 1) + 8 * k);
            if ([objc_msgSend(v49 substringFromIndex:{5), "integerValue"}] < v51)
            {
              [v52 removeObjectForKey:v49];
            }
          }

          v46 = [v44 countByEnumeratingWithState:&v57 objects:v73 count:16];
        }

        while (v46);
      }
    }
  }
}

- (void)startLogging
{
  self->_logTiming = MRGetCurrentTime();
  if (self->_logLevel >= 2)
  {
    [(NSMutableDictionary *)self->_stats setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:?], @"numOfLandscapes"];
    [(NSMutableDictionary *)self->_stats setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:?], @"numOfPortraits"];
    [(NSMutableDictionary *)self->_stats setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:?], @"movieCount"];
    [(NSMutableDictionary *)self->_stats setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:?], @"numOfDZPortraits"];
    [(NSMutableDictionary *)self->_stats setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:?], @"numOfDZLandscapes"];
    [(NSMutableDictionary *)self->_stats setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:?], @"numOfDZSquares"];
    [(NSMutableDictionary *)self->_stats setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:?], @"misplacedLandscapes"];
    stats = self->_stats;
    v4 = [NSNumber numberWithInteger:0];

    [(NSMutableDictionary *)stats setObject:v4 forKey:@"misplacedPortraits"];
  }
}

- (void)finishLogging
{
  if (self->_logLevel >= 1)
  {
    v2 = self;
    v3 = MRGetCurrentTime();
    authoredDocument = v2->_authoredDocument;
    v5 = authoredDocument ? [(MPDocument *)authoredDocument styleID]: @"None";
    NSLog(@"iLifeSlideshow Authoring: Seed #: %d, Style ID: %@, Time Taken: %.5f", v2->_seed, v5, v3 - v2->_logTiming);
    if (v2->_logLevel >= 2)
    {
      NSLog(@"Quick Stats:");
      v6 = [-[NSMutableDictionary objectForKey:](v2->_stats objectForKey:{@"numOfLandscapes", "integerValue"}];
      v7 = [-[NSMutableDictionary objectForKey:](v2->_stats objectForKey:{@"numOfPortraits", "integerValue"}];
      NSLog(@" - Images: %d Count, %d Landscapes, %d Portraits, Including %d Movies", &v6[v7], v6, v7, [-[NSMutableDictionary objectForKey:](v2->_stats objectForKey:{@"movieCount", "integerValue"}]);
      NSLog(@" - Drop Zones: %d Landscapes, %d Portraits, %d Squares", [-[NSMutableDictionary objectForKey:](v2->_stats objectForKey:{@"numOfDZLandscapes", "integerValue"}], objc_msgSend(-[NSMutableDictionary objectForKey:](v2->_stats, "objectForKey:", @"numOfDZPortraits"), "integerValue"), objc_msgSend(-[NSMutableDictionary objectForKey:](v2->_stats, "objectForKey:", @"numOfDZSquares"), "integerValue"));
      NSLog(@" - Wrong Aspect Ratio Placement: %d Landscapes, %d Portraits", [-[NSMutableDictionary objectForKey:](v2->_stats objectForKey:{@"misplacedLandscapes", "integerValue"}], objc_msgSend(-[NSMutableDictionary objectForKey:](v2->_stats, "objectForKey:", @"misplacedPortraits"), "integerValue"));
      if (v2->_logLevel >= 3)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v8 = [(MPWeighter *)v2->_weighter allConstraints];
        v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v9)
        {
          v10 = v9;
          v23 = v2;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = *v29;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v29 != v14)
              {
                objc_enumerationMutation(v8);
              }

              v16 = *(*(&v28 + 1) + 8 * i);
              v13 += v16[8];
              v11 += v16[9];
              v12 += v16[7];
            }

            v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
          }

          while (v10);
          v2 = v23;
        }

        else
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
        }

        NSLog(@" - Default %@ Dropzones: %d Landscapes, %d Portraits, %d Squares", v5, v13, v11, v12);
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v17 = [(MPWeighter *)v2->_weighter allUsageCounts];
        v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v21 = *v25;
          do
          {
            for (j = 0; j != v19; j = j + 1)
            {
              if (*v25 != v21)
              {
                objc_enumerationMutation(v17);
              }

              NSLog(@" - %@ : %d", [-[MPWeighter allItems](v2->_weighter "allItems")], objc_msgSend(*(*(&v24 + 1) + 8 * j), "integerValue"));
            }

            v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v19);
        }
      }
    }
  }
}

- (void)moveSlidesFromIndicies:(id)a3 toIndex:(int64_t)a4 inDocument:(id)a5 withOptions:(id)a6
{
  v6 = a6;
  if (!a6)
  {
    v6 = [a5 documentAttributeForKey:kMPDocumentAuthoringOptions];
  }

  v11 = [MPAuthoringUtilities reorderModeFromOptions:v6];
  switch(v11)
  {
    case 1uLL:
      v18 = objc_autoreleasePoolPush();
      [(MPAuthoringController *)self setAuthoredDocument:a5];
      [objc_msgSend(a5 "montage")];
      v19 = [a5 mainLayers];
      if ([v19 count])
      {
        v20 = [v19 lastObject];
        if ([v20 countOfEffectContainers] >= 1)
        {
          v21 = [a3 containsIndex:0];
          if (!a4 || (v22 = 0, v21))
          {
            v22 = [(MPAuthoringController *)self _grabAndRemoveTitleEffectFromDocument:a5 withOptions:v6];
          }

          v23 = 0;
          if (![objc_msgSend(v20 objectInEffectContainersAtIndex:{0), "countOfEffects"}])
          {
            v23 = 0;
            do
            {
              ++v23;
            }

            while (![objc_msgSend(v20 objectInEffectContainersAtIndex:{v23), "countOfEffects"}]);
          }

          v24 = [a3 indexSetWithOffset:v23];
          v25 = v23 + a4;
          if (v25 >= [v20 countOfEffectContainers] - 1)
          {
            v26 = [objc_msgSend(objc_msgSend(v20 "effectContainers")] < 1 || -[MPAuthoringController _numberOfSlidesForOutroInLayer:withOptions:](self, "_numberOfSlidesForOutroInLayer:withOptions:", v20, v6) == 0;
            if (v25 >= [v20 countOfEffectContainers] - v26)
            {
              v38 = [v20 countOfEffectContainers];
              v25 = v38 - [v24 count];
            }

            v25 -= v26;
          }

          [v20 moveEffectContainersFromIndices:v24 toIndex:v25];
          if (v22)
          {
            [(MPAuthoringController *)self _readdTitleEffect:v22 toDocument:a5 withOptions:v6];
          }
        }
      }

      v39 = [objc_msgSend(a5 "orderedVideoPaths")];
      [a5 setVideoPaths:v39];

      [objc_msgSend(a5 "montage")];
      [(MPAuthoringController *)self cleanup];

      objc_autoreleasePoolPop(v18);
      break;
    case 2uLL:
      v40 = [objc_msgSend(a5 "orderedVideoPaths")];
      v17 = [v40 objectsAtIndexes:a3];
      [(MPAuthoringController *)self removeSlidesAtIndicies:a3 inDocument:a5 withOptions:v6];
      [(MPAuthoringController *)self insertVideoPaths:v17 atIndex:a4 inDocument:a5 withOptions:v6];

      break;
    case 3uLL:
      v12 = [objc_msgSend(a5 "orderedVideoPaths")];
      v13 = [v12 objectsAtIndexes:a3];
      [v12 removeObjectsAtIndexes:a3];
      if ([v12 count] < a4)
      {
        a4 = [v12 count];
      }

      [v12 insertObjects:v13 atIndexes:{+[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", a4, objc_msgSend(v13, "count"))}];
      [a5 setVideoPaths:v12];

      v14 = [v6 objectForKey:kMPAuthoringUseBestAspectRatio];
      if (v14)
      {
        v15 = [v14 BOOLValue];
        v16 = [NSNumber numberWithBool:0];
        [a5 setAuthoringOption:v16 forKey:kMPAuthoringUseBestAspectRatio];
        [(MPAuthoringController *)self authorDocument:a5 withOptions:v6];
        if ((v15 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        v35 = [NSNumber numberWithBool:0];
        [a5 setAuthoringOption:v35 forKey:kMPAuthoringUseBestAspectRatio];
        [(MPAuthoringController *)self authorDocument:a5 withOptions:v6];
      }

      v36 = [NSNumber numberWithBool:1];
      v37 = kMPAuthoringUseBestAspectRatio;

      [a5 setAuthoringOption:v36 forKey:v37];
      break;
    default:
      v27 = [objc_msgSend(a5 "orderedVideoPaths")];
      v28 = [v27 objectsAtIndexes:a3];
      [v27 removeObjectsAtIndexes:a3];
      if ([v27 count] < a4)
      {
        a4 = [v27 count];
      }

      [v27 insertObjects:v28 atIndexes:{+[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", a4, objc_msgSend(v28, "count"))}];
      [a5 setVideoPaths:v27];

      v29 = [MPAuthoringUtilities subtitlesFromOptions:v6];
      if (v29)
      {
        v30 = v29;
        if ([v29 count])
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v31 = [v30 countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v42;
            do
            {
              for (i = 0; i != v32; i = i + 1)
              {
                if (*v42 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                [(MPAuthoringController *)self removeStyledCaptionFromSlide:[MPUtilities slideForPath:a5 inDocument:?], a5, v6];
              }

              v32 = [v30 countByEnumeratingWithState:&v41 objects:v45 count:16];
            }

            while (v32);
          }
        }
      }

      [(MPAuthoringController *)self _reorderImagesInDocument:a5 withOptions:v6];
      break;
  }
}

- (void)insertVideoPaths:(id)a3 atIndex:(int64_t)a4 inDocument:(id)a5 withOptions:(id)a6
{
  v6 = a6;
  if (!a6)
  {
    v6 = [a5 documentAttributeForKey:kMPDocumentAuthoringOptions];
  }

  v101 = [MPAuthoringUtilities reorderModeFromOptions:v6];
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v10 = [a3 countByEnumeratingWithState:&v135 objects:v147 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v136;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v136 != v12)
        {
          objc_enumerationMutation(a3);
        }

        v14 = *(*(&v135 + 1) + 8 * i);
        if (([v14 hasPrefix:@"iphoto://"] & 1) != 0 || objc_msgSend(v14, "hasPrefix:", @"aperture://"))
        {
          [a5 absolutePathForAssetAtPath:v14];
        }
      }

      v11 = [a3 countByEnumeratingWithState:&v135 objects:v147 count:16];
    }

    while (v11);
  }

  v15 = [NSMutableArray arrayWithArray:a3];
  v16 = v101;
  if (v101 == &dword_0 + 2)
  {
    v17 = [a5 allSlides];
    if ([v17 count] <= a4 || (v18 = objc_msgSend(v17, "objectAtIndex:", a4)) == 0)
    {
      v30 = [a5 mainLayers];
      v29 = self;
      if ([v30 count])
      {
        a4 = [objc_msgSend(v30 "lastObject")];
      }

      goto LABEL_31;
    }

    v19 = v18;
    v20 = [v18 parentEffect];
    v21 = [v19 index];
    if (v21 >= [objc_msgSend(v20 "slides")] || objc_msgSend(objc_msgSend(v20, "slides"), "count") < 2)
    {
      a4 = [objc_msgSend(v20 "parentContainer")];
      v29 = self;
      goto LABEL_31;
    }

    v97 = v20;
    v22 = [objc_msgSend(v20 "slides")];
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v131 objects:v146 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v132;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v132 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v131 + 1) + 8 * j);
          v28 = [objc_msgSend(v27 "path")];
          [v27 setPath:{-[NSMutableArray objectAtIndex:](v15, "objectAtIndex:", 0)}];
          [(NSMutableArray *)v15 removeObjectAtIndex:0];
          [(NSMutableArray *)v15 addObject:v28];
        }

        v24 = [v22 countByEnumeratingWithState:&v131 objects:v146 count:16];
      }

      while (v24);
    }

    a4 = [objc_msgSend(v97 "parentContainer")] + 1;
    v16 = 2;
  }

  v29 = self;
  if (v16 == 3)
  {
LABEL_42:
    v36 = [objc_msgSend(a5 "orderedVideoPaths")];
    if (a4 >= [v36 count])
    {
      a4 = [v36 count];
    }

    [v36 insertObjects:v15 atIndexes:{+[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", a4, -[NSMutableArray count](v15, "count"))}];
    [a5 setVideoPaths:v36];

    v37 = [v6 objectForKey:kMPAuthoringUseBestAspectRatio];
    if (v37)
    {
      v38 = [v37 BOOLValue];
      v39 = [NSNumber numberWithBool:0];
      [a5 setAuthoringOption:v39 forKey:kMPAuthoringUseBestAspectRatio];
      [(MPAuthoringController *)v29 authorDocument:a5 withOptions:v6];
      if ((v38 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      v41 = [NSNumber numberWithBool:0];
      [a5 setAuthoringOption:v41 forKey:kMPAuthoringUseBestAspectRatio];
      [(MPAuthoringController *)v29 authorDocument:a5 withOptions:v6];
    }

    v42 = [NSNumber numberWithBool:1];
    [a5 setAuthoringOption:v42 forKey:kMPAuthoringUseBestAspectRatio];
    return;
  }

LABEL_31:
  if (![objc_msgSend(a5 "allSlides")])
  {
    goto LABEL_42;
  }

  if ((v16 - 1) > 1)
  {
    v40 = [objc_msgSend(a5 "orderedVideoPaths")];
    if (a4 >= [v40 count])
    {
      a4 = [v40 count];
    }

    [v40 insertObjects:v15 atIndexes:{+[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", a4, -[NSMutableArray count](v15, "count"))}];
    [a5 setVideoPaths:v40];

    [(MPAuthoringController *)v29 _reorderImagesInDocument:a5 withOptions:v6];
  }

  else
  {
    v31 = a4;
    v32 = objc_autoreleasePoolPush();
    [(MPAuthoringController *)v29 setAuthoredDocument:a5];
    [objc_msgSend(a5 "montage")];
    v33 = [a5 mainLayers];
    if ([v33 count])
    {
      v98 = v32;
      v34 = [v33 lastObject];
      if ([v34 countOfEffectContainers] >= 1)
      {
        v35 = 0;
        if (![objc_msgSend(v34 objectInEffectContainersAtIndex:{0), "countOfEffects"}])
        {
          v35 = 0;
          do
          {
            ++v35;
          }

          while (![objc_msgSend(v34 objectInEffectContainersAtIndex:{v35), "countOfEffects"}]);
        }

        v31 += v35;
        if (v31 >= [v34 countOfEffectContainers])
        {
          if ([objc_msgSend(objc_msgSend(v34 "effectContainers")] < 1)
          {
            v31 = [v34 countOfEffectContainers];
          }

          else if (![(MPAuthoringController *)v29 _numberOfSlidesForOutroInLayer:v34 withOptions:v6])
          {
            v31 = [v34 countOfEffectContainers] - 1;
          }
        }
      }

      if (v31 || [v34 countOfEffectContainers] < 1)
      {
        v93 = 0;
      }

      else
      {
        v93 = [(MPAuthoringController *)v29 _grabAndRemoveTitleEffectFromDocument:a5 withOptions:v6];
      }

      v43 = [NSMutableDictionary dictionaryWithDictionary:v6];
      v44 = [NSNumber numberWithBool:0];
      [(NSMutableDictionary *)v43 setObject:v44 forKey:kMPAuthoringUseTitleEffect];
      v45 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")]);
      [(NSMutableDictionary *)v43 setObject:v45 forKey:kMPAuthoringLayerIndex];
      v46 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [a5 videoPaths]);
      [(NSMutableArray *)v46 addObjectsFromArray:v15];
      [(NSMutableDictionary *)v43 setObject:v46 forKey:kMPAuthoringSecondaryPaths];
      v47 = [NSNumber numberWithBool:1];
      [(NSMutableDictionary *)v43 setObject:v47 forKey:kMPAuthoringAlwaysIncludeLastTransition];
      if (v31 >= [v34 countOfEffectContainers])
      {
        [(MPAuthoringController *)v29 _addVideoPaths:v15 toEndOfLayer:v34 inDocument:a5 withOptions:v43];
      }

      else
      {
        [(NSMutableDictionary *)v43 setObject:&stru_1AC858 forKey:kMPAuthoringOutroEffectID];
        [v34 insertEffectContainers:-[MPAuthoringController effectContainersWithImages:effects:andOptions:](v29 atIndex:{"effectContainersWithImages:effects:andOptions:", v15, -[MPAuthoringController effectsForImages:withOptions:](v29, "effectsForImages:withOptions:", v15, v43), v43), v31}];
      }

      v95 = v43;
      if (v93)
      {
        [(MPAuthoringController *)v29 _readdTitleEffect:v93 toDocument:a5 withOptions:v6];
      }

      v29->_skipApplyingSettings = 1;
      v48 = [MPAuthoringUtilities subtitlesFromOptions:v6];
      if (v48)
      {
        v49 = v48;
        if ([v48 count])
        {
          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v50 = [v49 countByEnumeratingWithState:&v127 objects:v145 count:16];
          if (v50)
          {
            v51 = v50;
            v52 = *v128;
            do
            {
              for (k = 0; k != v51; k = k + 1)
              {
                if (*v128 != v52)
                {
                  objc_enumerationMutation(v49);
                }

                v54 = *(*(&v127 + 1) + 8 * k);
                if ([a3 containsObject:v54])
                {
                  [(MPAuthoringController *)self addStyledCaptionToSlide:[MPUtilities slideForPath:a5 inDocument:?], a5, v6];
                }
              }

              v51 = [v49 countByEnumeratingWithState:&v127 objects:v145 count:16];
            }

            while (v51);
          }
        }
      }

      v29 = self;
      self->_skipApplyingSettings = 0;
      v55 = [NSValue valueWithRange:v31, [(NSMutableArray *)v15 count]];
      [(NSMutableDictionary *)v95 setObject:v55 forKey:kMPAuthoringReconfigureIndices];
      if (([objc_msgSend(v6 objectForKey:{@"fastInsert", "BOOLValue"}] & 1) == 0)
      {
        [(MPAuthoringController *)self configureFiltersInDocument:a5 withOptions:v95];
        [(MPAuthoringController *)self reconfigureColorSchemeInDocument:a5 withOptions:v95];
      }

      [(MPAuthoringController *)self configureTransitionsInDocument:a5 withOptions:v95];
      [(MPAuthoringController *)self scaleDurationsInDocument:a5 withOptions:v95];
      [+[MPCropController sharedController](MPCropController "sharedController")];
      v32 = v98;
    }

    v56 = [objc_msgSend(a5 "orderedVideoPaths")];
    [a5 setVideoPaths:v56];

    [objc_msgSend(a5 "montage")];
    [(MPAuthoringController *)v29 cleanup];
    objc_autoreleasePoolPop(v32);
  }

  v99 = [objc_msgSend(a5 "orderedVideoPaths")];
  if ([v99 count] >= 1)
  {
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    obj = [a5 layers];
    v89 = [obj countByEnumeratingWithState:&v123 objects:v144 count:16];
    if (v89)
    {
      v88 = *v124;
      do
      {
        v57 = 0;
        do
        {
          if (*v124 != v88)
          {
            objc_enumerationMutation(obj);
          }

          v90 = v57;
          v58 = *(*(&v123 + 1) + 8 * v57);
          if (([v58 isAudioLayer] & 1) == 0)
          {
            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            v91 = [v58 effectContainers];
            v94 = [v91 countByEnumeratingWithState:&v119 objects:v143 count:16];
            if (v94)
            {
              v92 = *v120;
              do
              {
                v59 = 0;
                do
                {
                  if (*v120 != v92)
                  {
                    objc_enumerationMutation(v91);
                  }

                  v96 = v59;
                  v60 = *(*(&v119 + 1) + 8 * v59);
                  v115 = 0u;
                  v116 = 0u;
                  v117 = 0u;
                  v118 = 0u;
                  v102 = [v60 effects];
                  v61 = [v102 countByEnumeratingWithState:&v115 objects:v142 count:16];
                  if (v61)
                  {
                    v62 = v61;
                    v63 = *v116;
                    do
                    {
                      for (m = 0; m != v62; m = m + 1)
                      {
                        if (*v116 != v63)
                        {
                          objc_enumerationMutation(v102);
                        }

                        v65 = *(*(&v115 + 1) + 8 * m);
                        v66 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
                        if (v66 >= 1)
                        {
                          v67 = v66;
                          v68 = +[NSMutableSet set];
                          v111 = 0u;
                          v112 = 0u;
                          v113 = 0u;
                          v114 = 0u;
                          v69 = [v65 secondarySlides];
                          v70 = [v69 countByEnumeratingWithState:&v111 objects:v141 count:16];
                          if (v70)
                          {
                            v71 = v70;
                            v72 = *v112;
                            do
                            {
                              for (n = 0; n != v71; n = n + 1)
                              {
                                if (*v112 != v72)
                                {
                                  objc_enumerationMutation(v69);
                                }

                                [v68 addObject:{objc_msgSend(*(*(&v111 + 1) + 8 * n), "path")}];
                              }

                              v71 = [v69 countByEnumeratingWithState:&v111 objects:v141 count:16];
                            }

                            while (v71);
                          }

                          if ([v68 count] < v67)
                          {
                            v74 = +[NSMutableArray array];
                            v107 = 0u;
                            v108 = 0u;
                            v109 = 0u;
                            v110 = 0u;
                            v75 = [v65 slides];
                            v76 = [v75 countByEnumeratingWithState:&v107 objects:v140 count:16];
                            if (v76)
                            {
                              v77 = v76;
                              v78 = *v108;
                              do
                              {
                                for (ii = 0; ii != v77; ii = ii + 1)
                                {
                                  if (*v108 != v78)
                                  {
                                    objc_enumerationMutation(v75);
                                  }

                                  [v74 addObject:{objc_msgSend(*(*(&v107 + 1) + 8 * ii), "path")}];
                                }

                                v77 = [v75 countByEnumeratingWithState:&v107 objects:v140 count:16];
                              }

                              while (v77);
                            }

                            v80 = [(MPAuthoringController *)self pickRandomPathsInArray:v99 excludingPaths:v74 count:v67];
                            v103 = 0u;
                            v104 = 0u;
                            v105 = 0u;
                            v106 = 0u;
                            v81 = [v65 secondarySlides];
                            v82 = [v81 countByEnumeratingWithState:&v103 objects:v139 count:16];
                            if (v82)
                            {
                              v83 = v82;
                              v84 = 0;
                              v85 = *v104;
                              do
                              {
                                for (jj = 0; jj != v83; jj = jj + 1)
                                {
                                  if (*v104 != v85)
                                  {
                                    objc_enumerationMutation(v81);
                                  }

                                  [*(*(&v103 + 1) + 8 * jj) setPath:{objc_msgSend(v80, "objectAtIndex:", v84++)}];
                                }

                                v83 = [v81 countByEnumeratingWithState:&v103 objects:v139 count:16];
                              }

                              while (v83);
                            }
                          }
                        }
                      }

                      v62 = [v102 countByEnumeratingWithState:&v115 objects:v142 count:16];
                    }

                    while (v62);
                  }

                  v59 = v96 + 1;
                }

                while ((v96 + 1) != v94);
                v94 = [v91 countByEnumeratingWithState:&v119 objects:v143 count:16];
              }

              while (v94);
            }
          }

          v57 = v90 + 1;
        }

        while ((v90 + 1) != v89);
        v89 = [obj countByEnumeratingWithState:&v123 objects:v144 count:16];
      }

      while (v89);
    }
  }
}

- (void)removeSlidesAtIndicies:(id)a3 inDocument:(id)a4 withOptions:(id)a5
{
  v7 = a3;
  if (![a3 count])
  {
    return;
  }

  if (!a5)
  {
    a5 = [a4 documentAttributeForKey:kMPDocumentAuthoringOptions];
  }

  v162 = a5;
  v9 = [MPAuthoringUtilities reorderModeFromOptions:a5];
  v141 = a4;
  v146 = self;
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      v49 = objc_autoreleasePoolPush();
      [(MPAuthoringController *)self setAuthoredDocument:a4];
      [objc_msgSend(a4 "montage")];
      v50 = [a4 mainLayers];
      if ([v50 count])
      {
        v51 = [v50 lastObject];
        if (([objc_msgSend(v162 objectForKey:{@"skipEmptyContainerCheck", "BOOLValue"}] & 1) == 0)
        {
          v52 = 0;
          if (![objc_msgSend(v51 objectInEffectContainersAtIndex:{0), "countOfEffects"}])
          {
            v52 = 0;
            do
            {
              ++v52;
            }

            while (![objc_msgSend(v51 objectInEffectContainersAtIndex:{v52), "countOfEffects"}]);
          }

          v7 = [objc_msgSend(v7 indexSetWithOffset:{v52), "indexSetWithMaximum:", objc_msgSend(v51, "countOfEffectContainers") - 1}];
        }

        if ([v7 containsIndex:0] && objc_msgSend(v51, "countOfEffectContainers") > 0)
        {
          v53 = v162;
          v54 = [(MPAuthoringController *)self _grabAndRemoveTitleEffectFromDocument:a4 withOptions:v162];
          [v51 removeEffectContainersAtIndices:v7];
          if (v54)
          {
            [(MPAuthoringController *)self _readdTitleEffect:v54 toDocument:a4 withOptions:v162];
          }
        }

        else
        {
          [v51 removeEffectContainersAtIndices:v7];
          v53 = v162;
        }

        [(MPAuthoringController *)self _checkForEmptyLayersInDocument:a4];
        [(MPAuthoringController *)self scaleDurationsInDocument:a4 withOptions:v53];
      }

      v135 = [objc_msgSend(a4 "orderedVideoPaths")];
      [a4 setVideoPaths:v135];

      [objc_msgSend(a4 "montage")];
      [(MPAuthoringController *)self cleanup];

      objc_autoreleasePoolPop(v49);
      return;
    }

    if (v9 == 2)
    {
      context = objc_autoreleasePoolPush();
      [(MPAuthoringController *)self setAuthoredDocument:a4];
      [objc_msgSend(a4 "montage")];
      v175 = +[NSMutableArray array];
      v10 = [a4 mainLayers];
      if ([v10 count])
      {
        v171 = [v10 lastObject];
        v11 = [objc_msgSend(a4 "allSlides")];
        v198 = 0u;
        v199 = 0u;
        v200 = 0u;
        v201 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v198 objects:v247 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v199;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v199 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v198 + 1) + 8 * i);
              v17 = [v16 parentEffect];
              if ([objc_msgSend(v17 "slides")] == &dword_0 + 1)
              {
                v18 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [objc_msgSend(v17 "parentContainer")]);
                if (-[NSIndexSet containsIndex:](v18, "containsIndex:", 0) && [v171 countOfEffectContainers] >= 1)
                {
                  v19 = [(MPAuthoringController *)self _grabAndRemoveTitleEffectFromDocument:v141 withOptions:v162];
                }

                else
                {
                  v19 = 0;
                }

                [objc_msgSend(objc_msgSend(v17 "parentContainer")];
                if (v19)
                {
                  [(MPAuthoringController *)self _readdTitleEffect:v19 toDocument:v141 withOptions:v162];
                }
              }

              else
              {
                [v17 setReplaceSlides:0];
                [v17 removeSlidesAtIndices:{+[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", objc_msgSend(v16, "index"))}];
                [v17 setReplaceSlides:1];
                v20 = [v162 mutableCopy];
                v21 = [NSNumber numberWithBool:0];
                [v20 setObject:v21 forKey:kMPAuthoringUseTitleEffect];
                [v20 setObject:kMPFadeNone forKey:kMPAuthoringOutroEffectID];
                v22 = -[MPAuthoringController effectsForImages:withOptions:](self, "effectsForImages:withOptions:", [v17 videoPaths], v20);

                if ([v22 count] == &dword_0 + 1)
                {
                  v23 = [v22 lastObject];
                  [v17 setEffectID:{+[MPUtilities idOfCombinedID:](MPUtilities, "idOfCombinedID:", v23)}];
                  [v17 setPresetID:{+[MPUtilities presetIDOfCombinedID:](MPUtilities, "presetIDOfCombinedID:", v23)}];
                }
              }

              [v175 addObject:{objc_msgSend(v16, "path")}];
            }

            v13 = [v11 countByEnumeratingWithState:&v198 objects:v247 count:16];
          }

          while (v13);
        }

        a4 = v141;
        [(MPAuthoringController *)self _checkForEmptyLayersInDocument:v141];
        [(MPAuthoringController *)self scaleDurationsInDocument:v141 withOptions:v162];
      }

      v24 = [objc_msgSend(a4 "orderedVideoPaths")];
      [a4 setVideoPaths:v24];
      v25 = [v24 count];
      if (v25 >= 1)
      {
        v26 = v25;
        v196 = 0u;
        v197 = 0u;
        v194 = 0u;
        v195 = 0u;
        obj = [v141 layers];
        v144 = [obj countByEnumeratingWithState:&v194 objects:v246 count:16];
        if (v144)
        {
          v142 = *v195;
          do
          {
            v27 = 0;
            do
            {
              if (*v195 != v142)
              {
                objc_enumerationMutation(obj);
              }

              v148 = v27;
              v28 = *(*(&v194 + 1) + 8 * v27);
              if (([v28 isAudioLayer] & 1) == 0)
              {
                v192 = 0u;
                v193 = 0u;
                v190 = 0u;
                v191 = 0u;
                v150 = [v28 effectContainers];
                v156 = [v150 countByEnumeratingWithState:&v190 objects:v245 count:16];
                if (v156)
                {
                  v153 = *v191;
                  do
                  {
                    v29 = 0;
                    do
                    {
                      if (*v191 != v153)
                      {
                        objc_enumerationMutation(v150);
                      }

                      v159 = v29;
                      v30 = *(*(&v190 + 1) + 8 * v29);
                      v186 = 0u;
                      v187 = 0u;
                      v188 = 0u;
                      v189 = 0u;
                      v163 = [v30 effects];
                      v168 = [v163 countByEnumeratingWithState:&v186 objects:v244 count:16];
                      if (v168)
                      {
                        v165 = *v187;
                        do
                        {
                          v31 = 0;
                          do
                          {
                            if (*v187 != v165)
                            {
                              objc_enumerationMutation(v163);
                            }

                            v172 = v31;
                            v32 = *(*(&v186 + 1) + 8 * v31);
                            v33 = +[NSMutableArray array];
                            v182 = 0u;
                            v183 = 0u;
                            v184 = 0u;
                            v185 = 0u;
                            v34 = [v32 secondarySlides];
                            v35 = [v34 countByEnumeratingWithState:&v182 objects:v243 count:16];
                            if (v35)
                            {
                              v36 = v35;
                              v37 = *v183;
                              do
                              {
                                for (j = 0; j != v36; j = j + 1)
                                {
                                  if (*v183 != v37)
                                  {
                                    objc_enumerationMutation(v34);
                                  }

                                  [v33 addObject:{objc_msgSend(*(*(&v182 + 1) + 8 * j), "path")}];
                                }

                                v36 = [v34 countByEnumeratingWithState:&v182 objects:v243 count:16];
                              }

                              while (v36);
                            }

                            v180 = 0u;
                            v181 = 0u;
                            v178 = 0u;
                            v179 = 0u;
                            v39 = [v32 secondarySlides];
                            v40 = [v39 countByEnumeratingWithState:&v178 objects:v242 count:16];
                            if (v40)
                            {
                              v41 = v40;
                              v42 = *v179;
                              do
                              {
                                for (k = 0; k != v41; k = k + 1)
                                {
                                  if (*v179 != v42)
                                  {
                                    objc_enumerationMutation(v39);
                                  }

                                  v44 = *(*(&v178 + 1) + 8 * k);
                                  if ([v175 indexOfObject:{objc_msgSend(v44, "path")}] != 0x7FFFFFFFFFFFFFFFLL)
                                  {
                                    do
                                    {
                                      v45 = [v24 objectAtIndex:random() % v26];
                                    }

                                    while ([v33 indexOfObject:v45] != 0x7FFFFFFFFFFFFFFFLL && v26 > objc_msgSend(v33, "count"));
                                    [v44 setPath:v45];
                                  }
                                }

                                v41 = [v39 countByEnumeratingWithState:&v178 objects:v242 count:16];
                              }

                              while (v41);
                            }

                            v31 = v172 + 1;
                          }

                          while (v172 + 1 != v168);
                          v168 = [v163 countByEnumeratingWithState:&v186 objects:v244 count:16];
                        }

                        while (v168);
                      }

                      v29 = v159 + 1;
                    }

                    while ((v159 + 1) != v156);
                    v156 = [v150 countByEnumeratingWithState:&v190 objects:v245 count:16];
                  }

                  while (v156);
                }
              }

              v27 = v148 + 1;
            }

            while ((v148 + 1) != v144);
            v144 = [obj countByEnumeratingWithState:&v194 objects:v246 count:16];
          }

          while (v144);
        }
      }

      [objc_msgSend(v141 "montage")];
      [(MPAuthoringController *)v146 cleanup];
      objc_autoreleasePoolPop(context);
      return;
    }

LABEL_207:
    v177 = [objc_msgSend(a4 "orderedVideoPaths")];
    [v177 removeObjectsAtIndexes:v7];
    [a4 setVideoPaths:v177];
    [(MPAuthoringController *)self _reorderImagesInDocument:a4 withOptions:a5];

    return;
  }

  if (v9 == 4)
  {
    v55 = [objc_msgSend(a4 "allSlides")];
    v173 = +[NSMutableDictionary dictionary];
    v176 = +[NSMutableArray array];
    v238 = 0u;
    v239 = 0u;
    v240 = 0u;
    v241 = 0u;
    v56 = [v55 countByEnumeratingWithState:&v238 objects:v257 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v239;
      do
      {
        for (m = 0; m != v57; m = m + 1)
        {
          if (*v239 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v60 = *(*(&v238 + 1) + 8 * m);
          v61 = [objc_msgSend(v60 "parentEffect")];
          v62 = [v173 objectForKey:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(v61, "index"))}];
          if (!v62)
          {
            v62 = +[NSMutableArray array];
            [v173 setObject:v62 forKey:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(v61, "index"))}];
          }

          [v62 addObject:v60];
          [v176 addObject:{objc_msgSend(v60, "path")}];
        }

        v57 = [v55 countByEnumeratingWithState:&v238 objects:v257 count:16];
      }

      while (v57);
    }

    v63 = [a4 mainLayers];
    v64 = v146;
    v65 = v162;
    if (![v63 count])
    {
      return;
    }

    v66 = [v63 lastObject];
    v67 = [NSMutableDictionary dictionaryWithDictionary:v162];
    v68 = [v162 objectForKey:kMPAuthoringStyleID];
    v69 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
    v70 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")]);
    [(NSMutableDictionary *)v67 setObject:v70 forKey:kMPAuthoringLayerIndex];
    v71 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [a4 videoPaths]);
    [(NSMutableDictionary *)v67 setObject:v71 forKey:kMPAuthoringSecondaryPaths];
    v237 = 0u;
    v236 = 0u;
    v235 = 0u;
    v234 = 0u;
    v166 = [v173 countByEnumeratingWithState:&v234 objects:v256 count:16];
    if (!v166)
    {
      goto LABEL_165;
    }

    v151 = 0;
    v169 = v69 - 1;
    v72 = *v235;
    v157 = v67;
    v160 = v66;
    v154 = *v235;
    while (1)
    {
      for (n = 0; n != v166; n = n + 1)
      {
        if (*v235 != v72)
        {
          objc_enumerationMutation(v173);
        }

        v74 = [v173 objectForKey:*(*(&v234 + 1) + 8 * n)];
        v75 = [objc_msgSend(v74 "lastObject")];
        v76 = [objc_msgSend(v75 "parentContainer")];
        v77 = [v75 countOfSlides];
        v78 = [v74 count];
        v80 = v169 < 2 || v76 > 0;
        if (v77 == v78 && v80)
        {
          if (v76)
          {
            v91 = 0;
          }

          else
          {
            v91 = 0;
            if ([v66 countOfEffectContainers] >= 1 && v169 <= 1)
            {
              v91 = [(MPAuthoringController *)v64 _grabAndRemoveTitleEffectFromDocument:a4 withOptions:v162];
            }
          }

          [v66 removeEffectContainersAtIndices:{+[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", v76)}];
          if (v91)
          {
            [(MPAuthoringController *)v64 _readdTitleEffect:v91 toDocument:a4 withOptions:v162];
          }

          continue;
        }

        v82 = +[NSMutableArray array];
        v230 = 0u;
        v231 = 0u;
        v232 = 0u;
        v233 = 0u;
        v83 = [v75 slides];
        v84 = [v83 countByEnumeratingWithState:&v230 objects:v255 count:16];
        if (v84)
        {
          v85 = v84;
          v86 = *v231;
          do
          {
            for (ii = 0; ii != v85; ii = ii + 1)
            {
              if (*v231 != v86)
              {
                objc_enumerationMutation(v83);
              }

              v88 = *(*(&v230 + 1) + 8 * ii);
              if (([v74 containsObject:v88] & 1) == 0)
              {
                [v82 addObject:{objc_msgSend(v88, "path")}];
              }
            }

            v85 = [v83 countByEnumeratingWithState:&v230 objects:v255 count:16];
          }

          while (v85);
        }

        v66 = v160;
        if (!v76 && v169 >= 2)
        {
          v89 = [v75 countOfSlides];
          a4 = v141;
          v64 = v146;
          v67 = v157;
          if (v89 == [v74 count])
          {
            v90 = [v162 objectForKey:kMPAuthoringUseTitleEffect];
            if (v90)
            {
              v151 = [v90 BOOLValue];
            }

            else
            {
              v151 = 1;
            }
          }

          [v160 countOfEffectContainers];
LABEL_134:
          v92 = 0;
          goto LABEL_135;
        }

        a4 = v141;
        v64 = v146;
        v67 = v157;
        if (v76)
        {
          goto LABEL_134;
        }

        v92 = 0;
        if ([v160 countOfEffectContainers] >= 1 && v169 <= 1)
        {
          v92 = [(MPAuthoringController *)v146 _grabAndRemoveTitleEffectFromDocument:v141 withOptions:v162];
        }

LABEL_135:
        [v160 removeEffectContainersAtIndices:{+[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", v76)}];
        [(NSMutableDictionary *)v67 removeObjectForKey:kMPAuthoringOutroEffectID];
        [(NSMutableDictionary *)v67 removeObjectForKey:kMPAuthoringReconfigureIndices];
        v93 = [NSNumber numberWithBool:0];
        [(NSMutableDictionary *)v67 setObject:v93 forKey:kMPAuthoringUseTitleEffect];
        if (v76 >= [v160 countOfEffectContainers])
        {
          v94 = [(MPAuthoringController *)v64 _addVideoPaths:v82 toEndOfLayer:v160 inDocument:a4 withOptions:v67];
          if (!v92)
          {
            goto LABEL_140;
          }

LABEL_139:
          [(MPAuthoringController *)v64 _readdTitleEffect:v92 toDocument:a4 withOptions:v162];
          goto LABEL_140;
        }

        [(NSMutableDictionary *)v67 setObject:&stru_1AC858 forKey:kMPAuthoringOutroEffectID];
        v94 = [(MPAuthoringController *)v64 effectContainersWithImages:v82 effects:[(MPAuthoringController *)v64 effectsForImages:v82 withOptions:v67] andOptions:v67];
        [v160 insertEffectContainers:v94 atIndex:v76];
        if (v92)
        {
          goto LABEL_139;
        }

LABEL_140:
        if ([v94 count])
        {
          [+[MPCropController sharedController](MPCropController "sharedController")];
          v95 = [objc_msgSend(v94 objectAtIndex:{0), "allSlides"}];
          if ([v95 count])
          {
            v96 = +[NSValue valueWithRange:](NSValue, "valueWithRange:", [objc_msgSend(a4 "allSlides")], objc_msgSend(v82, "count"));
            [(NSMutableDictionary *)v67 setObject:v96 forKey:kMPAuthoringReconfigureIndices];
            [(MPAuthoringController *)v64 configureFiltersInDocument:a4 withOptions:v67];
            [(MPAuthoringController *)v64 configureTransitionsInDocument:a4 withOptions:v67];
          }
        }

        v72 = v154;
      }

      v166 = [v173 countByEnumeratingWithState:&v234 objects:v256 count:16];
      if (!v166)
      {
        v65 = v162;
        if ((v151 & 1) != 0 && [v66 countOfEffectContainers] >= 1)
        {
          [(NSMutableDictionary *)v67 removeObjectForKey:kMPAuthoringOutroEffectID];
          [(NSMutableDictionary *)v67 removeObjectForKey:kMPAuthoringReconfigureIndices];
          v97 = [NSNumber numberWithBool:1];
          [(NSMutableDictionary *)v67 setObject:v97 forKey:kMPAuthoringUseTitleEffect];
          [(NSMutableDictionary *)v67 setObject:&stru_1AC858 forKey:kMPAuthoringOutroEffectID];
          v98 = +[NSMutableArray array];
          v226 = 0u;
          v227 = 0u;
          v228 = 0u;
          v229 = 0u;
          v99 = [objc_msgSend(objc_msgSend(v66 "effectContainers")];
          v100 = [v99 countByEnumeratingWithState:&v226 objects:v254 count:16];
          if (v100)
          {
            v101 = v100;
            v102 = *v227;
            do
            {
              for (jj = 0; jj != v101; jj = jj + 1)
              {
                if (*v227 != v102)
                {
                  objc_enumerationMutation(v99);
                }

                v104 = *(*(&v226 + 1) + 8 * jj);
                v222 = 0u;
                v223 = 0u;
                v224 = 0u;
                v225 = 0u;
                v105 = [v104 slides];
                v106 = [v105 countByEnumeratingWithState:&v222 objects:v253 count:16];
                if (v106)
                {
                  v107 = v106;
                  v108 = *v223;
                  do
                  {
                    for (kk = 0; kk != v107; kk = kk + 1)
                    {
                      if (*v223 != v108)
                      {
                        objc_enumerationMutation(v105);
                      }

                      [v98 addObject:{objc_msgSend(*(*(&v222 + 1) + 8 * kk), "path")}];
                    }

                    v107 = [v105 countByEnumeratingWithState:&v222 objects:v253 count:16];
                  }

                  while (v107);
                }
              }

              v101 = [v99 countByEnumeratingWithState:&v226 objects:v254 count:16];
            }

            while (v101);
          }

          [v160 removeEffectContainersAtIndices:{+[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", 0)}];
          v64 = v146;
          v110 = [(MPAuthoringController *)v146 effectContainersWithImages:v98 effects:[(MPAuthoringController *)v146 effectsForImages:v98 withOptions:v157] andOptions:v157];
          [v160 insertEffectContainers:v110 atIndex:0];
          a4 = v141;
          v65 = v162;
          if ([v110 count])
          {
            [+[MPCropController sharedController](MPCropController "sharedController")];
            v111 = [objc_msgSend(v110 objectAtIndex:{0), "allSlides"}];
            if ([v111 count])
            {
              v112 = +[NSValue valueWithRange:](NSValue, "valueWithRange:", [objc_msgSend(v141 "allSlides")], objc_msgSend(v98, "count"));
              [(NSMutableDictionary *)v157 setObject:v112 forKey:kMPAuthoringReconfigureIndices];
              [(MPAuthoringController *)v146 configureFiltersInDocument:v141 withOptions:v157];
              [(MPAuthoringController *)v146 configureTransitionsInDocument:v141 withOptions:v157];
            }
          }
        }

LABEL_165:
        [(MPAuthoringController *)v64 scaleDurationsInDocument:a4 withOptions:v65];
        v113 = [objc_msgSend(a4 "orderedVideoPaths")];
        [a4 setVideoPaths:v113];
        v114 = [v113 count];
        if (v114 >= 1)
        {
          v115 = v114;
          v220 = 0u;
          v221 = 0u;
          v218 = 0u;
          v219 = 0u;
          v143 = [a4 layers];
          v147 = [v143 countByEnumeratingWithState:&v218 objects:v252 count:16];
          if (v147)
          {
            v145 = *v219;
            do
            {
              v116 = 0;
              do
              {
                if (*v219 != v145)
                {
                  objc_enumerationMutation(v143);
                }

                v149 = v116;
                v117 = *(*(&v218 + 1) + 8 * v116);
                if (([v117 isAudioLayer] & 1) == 0)
                {
                  v216 = 0u;
                  v217 = 0u;
                  v214 = 0u;
                  v215 = 0u;
                  v152 = [v117 effectContainers];
                  v158 = [v152 countByEnumeratingWithState:&v214 objects:v251 count:16];
                  if (v158)
                  {
                    v155 = *v215;
                    do
                    {
                      v118 = 0;
                      do
                      {
                        if (*v215 != v155)
                        {
                          objc_enumerationMutation(v152);
                        }

                        v161 = v118;
                        v119 = *(*(&v214 + 1) + 8 * v118);
                        v210 = 0u;
                        v211 = 0u;
                        v212 = 0u;
                        v213 = 0u;
                        v164 = [v119 effects];
                        v170 = [v164 countByEnumeratingWithState:&v210 objects:v250 count:16];
                        if (v170)
                        {
                          v167 = *v211;
                          do
                          {
                            v120 = 0;
                            do
                            {
                              if (*v211 != v167)
                              {
                                objc_enumerationMutation(v164);
                              }

                              v174 = v120;
                              v121 = *(*(&v210 + 1) + 8 * v120);
                              v122 = +[NSMutableArray array];
                              v206 = 0u;
                              v207 = 0u;
                              v208 = 0u;
                              v209 = 0u;
                              v123 = [v121 secondarySlides];
                              v124 = [v123 countByEnumeratingWithState:&v206 objects:v249 count:16];
                              if (v124)
                              {
                                v125 = v124;
                                v126 = *v207;
                                do
                                {
                                  for (mm = 0; mm != v125; mm = mm + 1)
                                  {
                                    if (*v207 != v126)
                                    {
                                      objc_enumerationMutation(v123);
                                    }

                                    [v122 addObject:{objc_msgSend(*(*(&v206 + 1) + 8 * mm), "path")}];
                                  }

                                  v125 = [v123 countByEnumeratingWithState:&v206 objects:v249 count:16];
                                }

                                while (v125);
                              }

                              v204 = 0u;
                              v205 = 0u;
                              v202 = 0u;
                              v203 = 0u;
                              v128 = [v121 secondarySlides];
                              v129 = [v128 countByEnumeratingWithState:&v202 objects:v248 count:16];
                              if (v129)
                              {
                                v130 = v129;
                                v131 = *v203;
                                do
                                {
                                  for (nn = 0; nn != v130; nn = nn + 1)
                                  {
                                    if (*v203 != v131)
                                    {
                                      objc_enumerationMutation(v128);
                                    }

                                    v133 = *(*(&v202 + 1) + 8 * nn);
                                    if ([v176 indexOfObject:{objc_msgSend(v133, "path")}] != 0x7FFFFFFFFFFFFFFFLL)
                                    {
                                      do
                                      {
                                        v134 = [v113 objectAtIndex:random() % v115];
                                      }

                                      while ([v122 indexOfObject:v134] != 0x7FFFFFFFFFFFFFFFLL && v115 > objc_msgSend(v122, "count"));
                                      [v133 setPath:v134];
                                    }
                                  }

                                  v130 = [v128 countByEnumeratingWithState:&v202 objects:v248 count:16];
                                }

                                while (v130);
                              }

                              v120 = v174 + 1;
                            }

                            while (v174 + 1 != v170);
                            v170 = [v164 countByEnumeratingWithState:&v210 objects:v250 count:16];
                          }

                          while (v170);
                        }

                        v118 = v161 + 1;
                      }

                      while ((v161 + 1) != v158);
                      v158 = [v152 countByEnumeratingWithState:&v214 objects:v251 count:16];
                    }

                    while (v158);
                  }
                }

                v116 = v149 + 1;
              }

              while ((v149 + 1) != v147);
              v147 = [v143 countByEnumeratingWithState:&v218 objects:v252 count:16];
            }

            while (v147);
          }
        }

        return;
      }
    }
  }

  if (v9 != 3)
  {
    goto LABEL_207;
  }

  v46 = [objc_msgSend(a4 "orderedVideoPaths")];
  [v46 removeObjectsAtIndexes:v7];
  [a4 setVideoPaths:v46];

  v47 = [v162 objectForKey:kMPAuthoringUseBestAspectRatio];
  if (v47)
  {
    v48 = [v47 BOOLValue];
  }

  else
  {
    v48 = 1;
  }

  v136 = [NSNumber numberWithBool:0];
  [a4 setAuthoringOption:v136 forKey:kMPAuthoringUseBestAspectRatio];
  if ([objc_msgSend(a4 "videoPaths")])
  {
    [(MPAuthoringController *)self authorDocument:a4 withOptions:v162];
    if (!v48)
    {
      return;
    }
  }

  else
  {
    [a4 removeAllLayers];
    if (!v48)
    {
      return;
    }
  }

  v137 = [NSNumber numberWithBool:1];
  v138 = kMPAuthoringUseBestAspectRatio;

  [a4 setAuthoringOption:v137 forKey:v138];
}

- (void)addStyledCaptionToSlide:(id)a3 inDocument:(id)a4 withOptions:(id)a5
{
  if ([objc_msgSend(a3 userInfoAttributeForKey:{@"hasSubtitle", "BOOLValue"}])
  {
    return;
  }

  v9 = a5 ? a5 : [objc_msgSend(a4 "documentLayerGroup")];
  v10 = [NSMutableDictionary dictionaryWithDictionary:v9];
  v11 = [a4 videoPaths];
  [(NSMutableDictionary *)v10 setObject:v11 forKey:kMPAuthoringSecondaryPaths];
  v12 = [NSNumber numberWithBool:1];
  [(NSMutableDictionary *)v10 setObject:v12 forKey:kMPAuthoringAlwaysIncludeLastTransition];
  [(NSMutableDictionary *)v10 setObject:kMPFadeNone forKey:kMPAuthoringOutroEffectID];
  v13 = [NSNumber numberWithBool:0];
  [(NSMutableDictionary *)v10 setObject:v13 forKey:kMPAuthoringUseLoopTransition];
  v14 = [MPAuthoringUtilities styleFromOptions:v10];
  v15 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  if (![v15 count])
  {
    return;
  }

  v82 = self;
  v74 = [objc_msgSend(a3 "path")];
  v80 = [a3 parentEffect];
  v17 = v14;
  v18 = [v80 parentContainer];
  v78 = [v18 index];
  v75 = [v18 parentLayer];
  v72 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v19 = [NSNumber numberWithInteger:?];
  v81 = v10;
  [(NSMutableDictionary *)v10 setObject:v19 forKey:kMPAuthoringLayerIndex];
  v71 = v17;
  v20 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v21 = [a3 index];
  v76 = a5;
  v77 = a4;
  v73 = a3;
  if (v20 == &dword_0 + 1)
  {
    v22 = [a3 index] + 1;
  }

  else
  {
    v22 = v21;
  }

  v23 = +[NSMutableArray array];
  v24 = [objc_msgSend(v80 "slides")];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v25 = [v24 countByEnumeratingWithState:&v95 objects:v102 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v96;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v96 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [v23 addObject:{objc_msgSend(*(*(&v95 + 1) + 8 * i), "path")}];
      }

      v26 = [v24 countByEnumeratingWithState:&v95 objects:v102 count:16];
    }

    while (v26);
  }

  v29 = +[NSMutableArray array];
  v30 = [objc_msgSend(v80 "slides")];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v31 = [v30 countByEnumeratingWithState:&v91 objects:v101 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v92;
    do
    {
      for (j = 0; j != v32; j = j + 1)
      {
        if (*v92 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [v29 addObject:{objc_msgSend(*(*(&v91 + 1) + 8 * j), "path")}];
      }

      v32 = [v30 countByEnumeratingWithState:&v91 objects:v101 count:16];
    }

    while (v32);
  }

  if (v82->_isAuthoring)
  {
    v35 = [NSNumber numberWithInteger:v72];
    v36 = v81;
    [(NSMutableDictionary *)v81 setObject:v35 forKey:kMPAuthoringLayerIndex];
  }

  else
  {
    [(MPAuthoringController *)v82 setAuthoredDocument:v77];
    v37 = [NSMutableArray arrayWithArray:v23];
    [(NSMutableArray *)v37 addObjectsFromArray:v29];
    v38 = v37;
    v36 = v81;
    [(MPAuthoringController *)v82 cacheROIInformationForImages:v38 withOptions:v81];
  }

  v39 = [(MPAuthoringController *)v82 findEffectIDInPresetArray:v16 forImages:v29 withOptions:v36];
  if (v39)
  {
    v40 = v39;
    v41 = +[NSMutableArray array];
  }

  else
  {
    v40 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
    v41 = +[NSMutableArray array];
    if (!v40)
    {
      goto LABEL_35;
    }
  }

  v42 = [v40 objectForKey:@"presetID"];
  v43 = [v40 objectForKey:@"backgroundEffect"];
  v44 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if (v43)
  {
    v45 = &v44[[+[MPEffectManager sharedManager](MPEffectManager "sharedManager")]];
    if (v45 <= [v30 count])
    {
      v42 = [NSArray arrayWithObjects:v43, v42, 0];
LABEL_34:
      [v41 addObject:v42];
    }
  }

  else if (v44 <= [v30 count])
  {
    goto LABEL_34;
  }

LABEL_35:
  v46 = v82;
  if ([v41 count])
  {
    if ([v23 count])
    {
      if ([MPAuthoringUtilities useTitleEffectFromOptions:a5])
      {
        v47 = [-[MPDocument titleEffect](v82->_authoredDocument "titleEffect")];
        if (!v23 || (v48 = v47, ![objc_msgSend(v23 objectAtIndex:{0), "isEqualToString:", objc_msgSend(objc_msgSend(v77, "orderedVideoPaths"), "objectAtIndex:", 0)}]) || !v48)
        {
          v49 = [NSNumber numberWithBool:0];
          [(NSMutableDictionary *)v81 setObject:v49 forKey:kMPAuthoringUseTitleEffect];
        }
      }
    }

    v50 = v78;
    [v75 removeEffectContainersAtIndices:{+[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", v78)}];
    if ([v23 count])
    {
      v51 = [(MPAuthoringController *)v82 effectContainersWithImages:v23 effects:[(MPAuthoringController *)v82 effectsForImages:v23 withOptions:v81] andOptions:v81];
      [v75 insertEffectContainers:v51 atIndex:v78];
      v50 = &v78[[v51 count]];
    }

    v52 = [v73 path];
    v53 = [(NSMutableDictionary *)v81 objectForKey:kMPAuthoringSubtitles];
    if (!v53 || (v54 = [v53 objectForKey:v52]) == 0)
    {
      v54 = @"Subtitle Text Here";
    }

    v55 = [NSArray arrayWithObject:v54];
    [(NSMutableDictionary *)v81 setObject:v55 forKey:kMPAuthoringTitleStrings];
    v56 = [(MPAuthoringController *)v82 effectContainersWithImages:v29 effects:v41 andOptions:v81];
    v79 = v50;
    [v75 insertEffectContainers:v56 atIndex:v50];
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v57 = [v56 countByEnumeratingWithState:&v87 objects:v100 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = 0;
      v60 = *v88;
      do
      {
        for (k = 0; k != v58; k = k + 1)
        {
          if (*v88 != v60)
          {
            objc_enumerationMutation(v56);
          }

          v62 = *(*(&v87 + 1) + 8 * k);
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v63 = [v62 effects];
          v64 = [v63 countByEnumeratingWithState:&v83 objects:v99 count:16];
          if (v64)
          {
            v65 = v64;
            v66 = *v84;
            do
            {
              for (m = 0; m != v65; m = m + 1)
              {
                if (*v84 != v66)
                {
                  objc_enumerationMutation(v63);
                }

                v59 += [*(*(&v83 + 1) + 8 * m) countOfSlides];
              }

              v65 = [v63 countByEnumeratingWithState:&v83 objects:v99 count:16];
            }

            while (v65);
          }
        }

        v58 = [v56 countByEnumeratingWithState:&v87 objects:v100 count:16];
      }

      while (v58);
    }

    else
    {
      v59 = 0;
    }

    [v29 removeObjectsAtIndexes:{+[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, v59)}];
    v68 = [v56 count];
    v46 = v82;
    if ([v29 count])
    {
      v69 = [NSNumber numberWithBool:0];
      [(NSMutableDictionary *)v81 setObject:v69 forKey:kMPAuthoringUseTitleEffect];
      [v75 insertEffectContainers:-[MPAuthoringController effectContainersWithImages:effects:andOptions:](v82 atIndex:{"effectContainersWithImages:effects:andOptions:", v29, -[MPAuthoringController effectsForImages:withOptions:](v82, "effectsForImages:withOptions:", v29, v81), v81), &v79[v68]}];
    }
  }

  [+[MPUtilities slideForPath:inDocument:](MPUtilities slideForPath:v74 inDocument:{v77), "setUserInfoAttribute:forKey:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1), @"hasSubtitle"}];

  v70 = v76;
  if (!v46->_isAuthoring && !v46->_skipApplyingSettings)
  {
    [(MPAuthoringController *)v46 cleanup];
    if (!v76)
    {
      v70 = +[NSDictionary dictionaryWithDictionary:](NSDictionary, "dictionaryWithDictionary:", [objc_msgSend(v77 "documentLayerGroup")]);
    }

    [(MPAuthoringController *)v46 reconfigureColorSchemeInDocument:v77 withOptions:v70];
    [(MPAuthoringController *)v46 configureFiltersInDocument:v77 withOptions:v70];
    [(MPAuthoringController *)v46 configureTransitionsInDocument:v77 withOptions:v70];
    [(MPAuthoringController *)v46 scaleDurationsInDocument:v77 withOptions:v70];
    [+[MPCropController sharedController](MPCropController "sharedController")];
  }
}

- (void)removeStyledCaptionFromSlide:(id)a3 inDocument:(id)a4 withOptions:(id)a5
{
  if ([objc_msgSend(a3 userInfoAttributeForKey:{@"hasSubtitle", "BOOLValue"}])
  {
    if (!a5)
    {
      a5 = [objc_msgSend(a4 "documentLayerGroup")];
    }

    v7 = [MPAuthoringUtilities styleFromOptions:a5];
    v8 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
    if (v8)
    {
      v9 = v8;
      if ([v8 count])
      {
        v10 = [objc_msgSend(a3 "parentEffect")];
        v59 = [objc_msgSend(a3 "path")];
        v11 = [a5 mutableCopy];
        v12 = [NSNumber numberWithBool:0];
        [v11 setObject:v12 forKey:kMPAuthoringUseTitleEffect];
        v13 = [NSNumber numberWithBool:1];
        [v11 setObject:v13 forKey:kMPAuthoringAlwaysIncludeLastTransition];
        v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")]);
        [v11 setObject:v14 forKey:kMPAuthoringLayerIndex];
        v15 = [a4 videoPaths];
        v60 = v11;
        [v11 setObject:v15 forKey:kMPAuthoringSecondaryPaths];
        v16 = [v10 parentLayer];
        v17 = [objc_msgSend(v16 "effectContainers")];
        v18 = [v16 countOfEffectContainers] - 2;
        if (v18 == [v10 index] && !objc_msgSend(v17, "countOfEffects"))
        {
          v20 = 1;
        }

        else
        {
          [v60 setObject:kMPFadeNone forKey:kMPAuthoringOutroEffectID];
          v19 = [NSNumber numberWithBool:0];
          [v60 setObject:v19 forKey:kMPAuthoringUseLoopTransition];
          v20 = 0;
        }

        if (!self->_isAuthoring)
        {
          [(MPAuthoringController *)self setAuthoredDocument:a4];
        }

        v21 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
        if (v21 == &dword_0 + 2)
        {
          v25 = [objc_msgSend(a3 "parentEffect")];
          v23 = [v25 parentLayer];
          v24 = [v25 index] - 1;
        }

        else
        {
          if (v21 != &dword_0 + 1)
          {
            v69 = v20;
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v29 = [v10 effects];
            v30 = [v29 countByEnumeratingWithState:&v91 objects:v100 count:16];
            if (v30)
            {
              v31 = v30;
              v67 = *v92;
              while (2)
              {
                for (i = 0; i != v31; i = i + 1)
                {
                  if (*v92 != v67)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v33 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%@", [*(*(&v91 + 1) + 8 * i) effectID], objc_msgSend(*(*(&v91 + 1) + 8 * i), "presetID"));
                  v87 = 0u;
                  v88 = 0u;
                  v89 = 0u;
                  v90 = 0u;
                  v34 = [v9 countByEnumeratingWithState:&v87 objects:v99 count:16];
                  if (v34)
                  {
                    v35 = v34;
                    v36 = *v88;
LABEL_23:
                    v37 = 0;
                    while (1)
                    {
                      if (*v88 != v36)
                      {
                        objc_enumerationMutation(v9);
                      }

                      if ([objc_msgSend(*(*(&v87 + 1) + 8 * v37) objectForKey:{@"presetID", "isEqualToString:", v33}])
                      {
                        goto LABEL_31;
                      }

                      if (v35 == ++v37)
                      {
                        v35 = [v9 countByEnumeratingWithState:&v87 objects:v99 count:16];
                        if (v35)
                        {
                          goto LABEL_23;
                        }

                        break;
                      }
                    }
                  }
                }

                v31 = [v29 countByEnumeratingWithState:&v91 objects:v100 count:16];
                if (v31)
                {
                  continue;
                }

                break;
              }
            }

LABEL_31:
            v38 = +[NSMutableArray array];
            v83 = 0u;
            v84 = 0u;
            v85 = 0u;
            v86 = 0u;
            v39 = [v10 effects];
            v40 = [v39 countByEnumeratingWithState:&v83 objects:v98 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v84;
              do
              {
                for (j = 0; j != v41; j = j + 1)
                {
                  if (*v84 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  [v38 addObjectsFromArray:{objc_msgSend(*(*(&v83 + 1) + 8 * j), "videoPaths")}];
                }

                v41 = [v39 countByEnumeratingWithState:&v83 objects:v98 count:16];
              }

              while (v41);
            }

            obj = [(MPAuthoringController *)self effectContainersWithImages:v38 effects:[(MPAuthoringController *)self effectsForImages:v38 withOptions:v60] andOptions:v60];
            v44 = [v10 parentLayer];
            v45 = [v10 index];
            if (v69)
            {
              [v44 removeEffectContainersAtIndices:{+[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", v45 + 1)}];
            }

            [v44 removeEffectContainersAtIndices:{+[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", v45)}];
            [v44 insertEffectContainers:obj atIndex:v45];
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v65 = [obj countByEnumeratingWithState:&v79 objects:v97 count:16];
            if (v65)
            {
              v70 = 0;
              v64 = *v80;
              do
              {
                v46 = 0;
                do
                {
                  if (*v80 != v64)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v66 = v46;
                  v47 = *(*(&v79 + 1) + 8 * v46);
                  v75 = 0u;
                  v76 = 0u;
                  v77 = 0u;
                  v78 = 0u;
                  v68 = [v47 effects];
                  v48 = [v68 countByEnumeratingWithState:&v75 objects:v96 count:16];
                  if (v48)
                  {
                    v49 = v48;
                    v50 = *v76;
                    do
                    {
                      for (k = 0; k != v49; k = k + 1)
                      {
                        if (*v76 != v50)
                        {
                          objc_enumerationMutation(v68);
                        }

                        v52 = *(*(&v75 + 1) + 8 * k);
                        v71 = 0u;
                        v72 = 0u;
                        v73 = 0u;
                        v74 = 0u;
                        v53 = [v52 slides];
                        v54 = [v53 countByEnumeratingWithState:&v71 objects:v95 count:16];
                        if (v54)
                        {
                          v55 = v54;
                          v56 = *v72;
                          while (2)
                          {
                            for (m = 0; m != v55; m = m + 1)
                            {
                              if (*v72 != v56)
                              {
                                objc_enumerationMutation(v53);
                              }

                              v58 = *(*(&v71 + 1) + 8 * m);
                              if ([objc_msgSend(v58 "path")])
                              {
                                v70 = v58;
                                goto LABEL_60;
                              }
                            }

                            v55 = [v53 countByEnumeratingWithState:&v71 objects:v95 count:16];
                            if (v55)
                            {
                              continue;
                            }

                            break;
                          }
                        }

LABEL_60:
                        ;
                      }

                      v49 = [v68 countByEnumeratingWithState:&v75 objects:v96 count:16];
                    }

                    while (v49);
                  }

                  v46 = v66 + 1;
                }

                while ((v66 + 1) != v65);
                v65 = [obj countByEnumeratingWithState:&v79 objects:v97 count:16];
              }

              while (v65);
            }

            else
            {
              v70 = 0;
            }

            v26 = self;
            [(MPAuthoringController *)self clearROICache];
            v27 = self;
            v28 = v70;
            goto LABEL_68;
          }

          v22 = [objc_msgSend(a3 "parentEffect")];
          v23 = [v22 parentLayer];
          v24 = [v22 index] + 1;
        }

        [v23 removeEffectContainersAtIndices:{+[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", v24)}];
        v26 = self;
        v27 = self;
        v28 = a3;
LABEL_68:
        [(MPAuthoringController *)v27 combineEffectsNearSlide:v28 inDocument:a4 withOptions:v60];
        [+[MPUtilities slideForPath:inDocument:](MPUtilities slideForPath:v59 inDocument:{a4), "setUserInfoAttribute:forKey:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 0), @"hasSubtitle"}];

        if (!v26->_isAuthoring)
        {
          [(MPAuthoringController *)v26 cleanup];
          [(MPAuthoringController *)v26 scaleDurationsInDocument:a4 withOptions:v60];
          [+[MPCropController sharedController](MPCropController "sharedController")];
        }
      }
    }
  }
}

- (void)combineSlides:(id)a3 inDocument:(id)a4 withOptions:(id)a5
{
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableSet set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [a3 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(a3);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        [v8 addObject:{objc_msgSend(v14, "path")}];
        [v9 addObject:{objc_msgSend(objc_msgSend(v14, "parentEffect"), "parentContainer")}];
      }

      v11 = [a3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v15 = [objc_msgSend(v9 "anyObject")];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v9);
        }

        v21 = [*(*(&v23 + 1) + 8 * j) index];
        if (v21 < v19)
        {
          v19 = v21;
        }

        [v15 removeEffectContainersAtIndices:{+[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", v21)}];
      }

      v17 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [v15 insertEffectContainers:-[MPAuthoringController effectContainersWithPaths:forDocument:withOptions:](self atIndex:{"effectContainersWithPaths:forDocument:withOptions:", v8, a4, a5), v19}];
}

- (void)combineEffectsNearSlide:(id)a3 inDocument:(id)a4 withOptions:(id)a5
{
  v8 = [MPAuthoringUtilities effectListFromOptions:a5];
  v9 = +[NSMutableArray array];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v74 objects:v82 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v75;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v75 != v12)
        {
          objc_enumerationMutation(v8);
        }

        [v9 addObject:{objc_msgSend(*(*(&v74 + 1) + 8 * i), "objectForKey:", @"presetID"}];
      }

      v11 = [v8 countByEnumeratingWithState:&v74 objects:v82 count:16];
    }

    while (v11);
  }

  if ([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")] < 3)
  {
    return;
  }

  v14 = [objc_msgSend(a3 "parentEffect")];
  v15 = [v14 parentLayer];
  v16 = 0;
  while (1)
  {
    v17 = v14;
    if (v16)
    {
      break;
    }

LABEL_13:
    if ([v17 index] >= 2)
    {
      v18 = [v15 objectInEffectContainersAtIndex:{objc_msgSend(v17, "index") - 1}];
      if (v18)
      {
        v16 = v18;
        if (![v18 textCount] && objc_msgSend(v16, "countOfEffects") > 0)
        {
          continue;
        }
      }
    }

    goto LABEL_19;
  }

  if ([v16 slideCount] == &dword_0 + 1)
  {
    v17 = v16;
    if ([v16 index] < 1)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v17 = v16;
LABEL_19:
  v19 = 0;
  while (2)
  {
    v20 = v14;
    if (!v19)
    {
LABEL_23:
      v22 = [v20 index];
      if (v22 >= ([v15 countOfEffectContainers] - 1))
      {
        goto LABEL_28;
      }

      v23 = [v15 objectInEffectContainersAtIndex:{objc_msgSend(v20, "index") + 1}];
      if (!v23)
      {
        goto LABEL_28;
      }

      v19 = v23;
      if ([v23 textCount])
      {
        goto LABEL_28;
      }

      continue;
    }

    break;
  }

  if ([v19 slideCount] == &dword_0 + 1)
  {
    v21 = [v19 index];
    v20 = v19;
    if (v21 >= [v15 countOfEffectContainers])
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v20 = v19;
LABEL_28:
  if (v17 != v20)
  {
    v24 = +[NSMutableArray array];
    v50 = self;
    if ([v20 countOfEffects] || (v25 = objc_msgSend(v15, "countOfEffectContainers") - 1, v25 != objc_msgSend(v20, "index")))
    {
      v27 = 0;
    }

    else
    {
      v26 = [a5 objectForKey:kMPAuthoringOutroEffectID];
      v27 = [v26 isEqualToString:kMPFadeNone] ^ 1;
    }

    v49 = v15;
    v48 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", [v17 index], objc_msgSend(v20, "index") + v27 - objc_msgSend(v17, "index"));
    v28 = [objc_msgSend(v15 "effectContainers")];
    v29 = +[NSMutableArray array];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v28;
    v54 = [v28 countByEnumeratingWithState:&v70 objects:v81 count:16];
    if (v54)
    {
      v53 = *v71;
      do
      {
        v30 = 0;
        do
        {
          if (*v71 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v55 = v30;
          v31 = *(*(&v70 + 1) + 8 * v30);
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v56 = [v31 effects];
          v32 = [v56 countByEnumeratingWithState:&v66 objects:v80 count:16];
          if (v32)
          {
            v33 = v32;
            v57 = *v67;
            do
            {
              for (j = 0; j != v33; j = j + 1)
              {
                if (*v67 != v57)
                {
                  objc_enumerationMutation(v56);
                }

                v35 = *(*(&v66 + 1) + 8 * j);
                v62 = 0u;
                v63 = 0u;
                v64 = 0u;
                v65 = 0u;
                v36 = [v35 slides];
                v37 = [v36 countByEnumeratingWithState:&v62 objects:v79 count:16];
                if (v37)
                {
                  v38 = v37;
                  v39 = *v63;
                  do
                  {
                    for (k = 0; k != v38; k = k + 1)
                    {
                      if (*v63 != v39)
                      {
                        objc_enumerationMutation(v36);
                      }

                      v41 = *(*(&v62 + 1) + 8 * k);
                      if ([objc_msgSend(v41 userInfoAttributeForKey:{@"hasSubtitle", "BOOLValue"}])
                      {
                        [v29 addObject:{objc_msgSend(v41, "path")}];
                      }

                      [v24 addObject:{objc_msgSend(v41, "path")}];
                    }

                    v38 = [v36 countByEnumeratingWithState:&v62 objects:v79 count:16];
                  }

                  while (v38);
                }
              }

              v33 = [v56 countByEnumeratingWithState:&v66 objects:v80 count:16];
            }

            while (v33);
          }

          v30 = v55 + 1;
        }

        while ((v55 + 1) != v54);
        v54 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
      }

      while (v54);
    }

    [v49 removeEffectContainersAtIndices:v48];
    v42 = [a5 mutableCopy];
    v43 = [NSNumber numberWithBool:0];
    [v42 setObject:v43 forKey:kMPAuthoringUseTitleEffect];
    [v49 insertEffectContainers:-[MPAuthoringController effectContainersWithImages:effects:andOptions:](v50 atIndex:{"effectContainersWithImages:effects:andOptions:", v24, -[MPAuthoringController effectsForImages:withOptions:](v50, "effectsForImages:withOptions:", v24, v42), v42), -[NSIndexSet firstIndex](v48, "firstIndex")}];
    if ([v29 count])
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v44 = [v29 countByEnumeratingWithState:&v58 objects:v78 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v59;
        do
        {
          for (m = 0; m != v45; m = m + 1)
          {
            if (*v59 != v46)
            {
              objc_enumerationMutation(v29);
            }

            [+[MPUtilities slideForPath:inDocument:](MPUtilities slideForPath:*(*(&v58 + 1) + 8 * m) inDocument:{a4), "setUserInfoAttribute:forKey:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1), @"hasSubtitle"}];
          }

          v45 = [v29 countByEnumeratingWithState:&v58 objects:v78 count:16];
        }

        while (v45);
      }
    }
  }
}

- (void)_reorderImagesInDocument:(id)a3 withOptions:(id)a4
{
  v4 = a3;
  if ([objc_msgSend(a3 "videoPaths")])
  {
    if ([v4 countOfLayers])
    {
      context = objc_autoreleasePoolPush();
      [(MPAuthoringController *)self setAuthoredDocument:v4];
      [objc_msgSend(v4 "montage")];
      v6 = [v4 mainLayers];
      v84 = +[NSMutableSet set];
      v7 = [NSMutableDictionary dictionaryWithDictionary:a4];
      v71 = +[NSMutableArray array];
      v86.location = [MPAuthoringUtilities reconfigureRangeFromOptions:a4];
      v86.length = v8;
      v70 = [a4 objectForKey:kMPAuthoringStyleID];
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      obj = v6;
      v9 = [v6 countByEnumeratingWithState:&v115 objects:v126 count:16];
      v75 = self;
      v76 = v4;
      v72 = v7;
      if (v9)
      {
        v10 = v9;
        v11 = *v116;
        v69 = *v116;
        do
        {
          v12 = 0;
          v73 = v10;
          do
          {
            if (*v116 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v115 + 1) + 8 * v12);
            if (([v13 isAudioLayer] & 1) == 0)
            {
              v79 = v13;
              v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")]);
              [(NSMutableDictionary *)v7 setObject:v14 forKey:kMPAuthoringLayerIndex];
              v15 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", -[MPAuthoringController orderImages:withOptions:](self, "orderImages:withOptions:", [v4 videoPaths], v7));
              v16 = [MPAuthoringUtilities effectListFromOptions:v7];
              v17 = +[NSMutableArray array];
              v111 = 0u;
              v112 = 0u;
              v113 = 0u;
              v114 = 0u;
              v18 = [v16 countByEnumeratingWithState:&v111 objects:v125 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v112;
                do
                {
                  for (i = 0; i != v19; i = i + 1)
                  {
                    if (*v112 != v20)
                    {
                      objc_enumerationMutation(v16);
                    }

                    [v17 addObject:{objc_msgSend(*(*(&v111 + 1) + 8 * i), "objectForKey:", @"presetID"}];
                  }

                  v19 = [v16 countByEnumeratingWithState:&v111 objects:v125 count:16];
                }

                while (v19);
              }

              v78 = v12;
              v77 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
              v22 = [v13 effectContainers];
              v107 = 0u;
              v108 = 0u;
              v109 = 0u;
              v110 = 0u;
              v80 = v22;
              v82 = [v22 countByEnumeratingWithState:&v107 objects:v124 count:16];
              if (v82)
              {
                v23 = 0;
                v81 = *v108;
                do
                {
                  v24 = 0;
                  do
                  {
                    if (*v108 != v81)
                    {
                      objc_enumerationMutation(v80);
                    }

                    v83 = v24;
                    v25 = *(*(&v107 + 1) + 8 * v24);
                    v103 = 0u;
                    v104 = 0u;
                    v105 = 0u;
                    v106 = 0u;
                    v85 = [v25 effects];
                    v26 = [v85 countByEnumeratingWithState:&v103 objects:v123 count:16];
                    if (v26)
                    {
                      v27 = v26;
                      v28 = *v104;
                      do
                      {
                        for (j = 0; j != v27; j = j + 1)
                        {
                          if (*v104 != v28)
                          {
                            objc_enumerationMutation(v85);
                          }

                          v30 = *(*(&v103 + 1) + 8 * j);
                          v31 = [v30 countOfSlides];
                          if (v86.length && (v128.location = v23, v128.length = v31, !NSIntersectionRange(v86, v128).length) && [(NSMutableArray *)v15 count]>= v31)
                          {
                            if ([(NSMutableArray *)v15 count])
                            {
                              [(NSMutableArray *)v15 removeObjectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:0, v31]];
                            }
                          }

                          else if (v31 >= 1)
                          {
                            v32 = 0;
                            while ([(NSMutableArray *)v15 count])
                            {
                              v33 = [objc_msgSend(v30 "slides")];
                              v34 = [(NSMutableArray *)v15 objectAtIndex:0];
                              if (([objc_msgSend(v33 "path")] & 1) == 0)
                              {
                                [v30 replaceSlideAtIndex:v32 withSlide:{+[MPSlide slideWithPath:](MPSlide, "slideWithPath:", v34)}];
                              }

                              [(NSMutableArray *)v15 removeObjectAtIndex:0];
                              if (v31 == ++v32)
                              {
                                goto LABEL_39;
                              }
                            }

                            [v30 setReplaceSlides:0];
                            [v30 removeSlidesAtIndices:{+[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v32, v31 - v32)}];
                            [v30 setReplaceSlides:1];
                            [v84 addObject:v30];
                          }

LABEL_39:
                          v23 += v31;
                        }

                        v27 = [v85 countByEnumeratingWithState:&v103 objects:v123 count:16];
                      }

                      while (v27);
                    }

                    v24 = v83 + 1;
                  }

                  while ((v83 + 1) != v82);
                  v82 = [v80 countByEnumeratingWithState:&v107 objects:v124 count:16];
                }

                while (v82);
              }

              if (v77 != &dword_0 + 1)
              {
                v35 = [objc_msgSend(v79 "effectContainers")];
                for (k = v35; ; v35 = k)
                {
                  v37 = [v35 nextObject];
                  if (!v37)
                  {
                    break;
                  }

                  v101 = 0u;
                  v102 = 0u;
                  v99 = 0u;
                  v100 = 0u;
                  v38 = [v37 effects];
                  v39 = [v38 countByEnumeratingWithState:&v99 objects:v122 count:16];
                  if (v39)
                  {
                    v40 = v39;
                    v41 = *v100;
LABEL_51:
                    v42 = 0;
                    while (1)
                    {
                      if (*v100 != v41)
                      {
                        objc_enumerationMutation(v38);
                      }

                      v43 = *(*(&v99 + 1) + 8 * v42);
                      if ([v43 countOfSlides] != &dword_0 + 1 || (objc_msgSend(objc_msgSend(objc_msgSend(v43, "objectInSlidesAtIndex:", 0), "userInfoAttributeForKey:", @"hasSubtitle"), "BOOLValue") & 1) != 0)
                      {
                        goto LABEL_44;
                      }

                      [v84 addObject:v43];
                      if (v40 == ++v42)
                      {
                        v40 = [v38 countByEnumeratingWithState:&v99 objects:v122 count:16];
                        if (v40)
                        {
                          goto LABEL_51;
                        }

                        break;
                      }
                    }
                  }
                }
              }

LABEL_44:
              [v71 addObjectsFromArray:v15];
              self = v75;
              v4 = v76;
              v7 = v72;
              v10 = v73;
              v11 = v69;
              v12 = v78;
            }

            v12 = v12 + 1;
          }

          while (v12 != v10);
          v44 = [obj countByEnumeratingWithState:&v115 objects:v126 count:16];
          v10 = v44;
        }

        while (v44);
      }

      v45 = +[NSMutableArray array];
      if ([v84 count])
      {
        v46 = [[NSSortDescriptor alloc] initWithKey:@"parentContainer.index" ascending:1];
        v47 = [objc_msgSend(v84 "allObjects")];

        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v48 = [v47 countByEnumeratingWithState:&v95 objects:v121 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v96;
          do
          {
            for (m = 0; m != v49; m = m + 1)
            {
              if (*v96 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v95 + 1) + 8 * m);
              v91 = 0u;
              v92 = 0u;
              v93 = 0u;
              v94 = 0u;
              v53 = [v52 slides];
              v54 = [v53 countByEnumeratingWithState:&v91 objects:v120 count:16];
              if (v54)
              {
                v55 = v54;
                v56 = *v92;
                do
                {
                  for (n = 0; n != v55; n = n + 1)
                  {
                    if (*v92 != v56)
                    {
                      objc_enumerationMutation(v53);
                    }

                    [v45 addObject:{objc_msgSend(*(*(&v91 + 1) + 8 * n), "path")}];
                  }

                  v55 = [v53 countByEnumeratingWithState:&v91 objects:v120 count:16];
                }

                while (v55);
              }

              v58 = [v52 parentContainer];
              [v58 removeEffectsAtIndices:{+[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", objc_msgSend(v52, "zIndex"))}];
              if (![v58 slideCount])
              {
                [objc_msgSend(v58 "parentLayer")];
              }
            }

            v49 = [v47 countByEnumeratingWithState:&v95 objects:v121 count:16];
          }

          while (v49);
        }
      }

      v59 = [objc_msgSend(v76 "mainLayers")];
      v60 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")]);
      [(NSMutableDictionary *)v72 setObject:v60 forKey:kMPAuthoringLayerIndex];
      [v45 addObjectsFromArray:v71];
      if ([v45 count])
      {
        [(MPAuthoringController *)v75 _addVideoPaths:v45 toEndOfLayer:v59 inDocument:v76 withOptions:v72];
      }

      [(MPAuthoringController *)v75 _checkForEmptyLayersInDocument:v76];
      v75->_skipApplyingSettings = 1;
      v61 = [MPAuthoringUtilities subtitlesFromOptions:a4];
      if (v61)
      {
        v62 = v61;
        if ([v61 count])
        {
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v63 = [v62 countByEnumeratingWithState:&v87 objects:v119 count:16];
          if (v63)
          {
            v64 = v63;
            v65 = *v88;
            do
            {
              for (ii = 0; ii != v64; ii = ii + 1)
              {
                if (*v88 != v65)
                {
                  objc_enumerationMutation(v62);
                }

                [(MPAuthoringController *)v75 addStyledCaptionToSlide:[MPUtilities slideForPath:v76 inDocument:?], v76, a4];
              }

              v64 = [v62 countByEnumeratingWithState:&v87 objects:v119 count:16];
            }

            while (v64);
          }
        }
      }

      v75->_skipApplyingSettings = 0;
      [(MPAuthoringController *)v75 configureFiltersInDocument:v76 withOptions:v72];
      [(MPAuthoringController *)v75 configureTransitionsInDocument:v76 withOptions:v72];
      [(MPAuthoringController *)v75 reconfigureColorSchemeInDocument:v76 withOptions:v72];
      [(MPAuthoringController *)v75 scaleDurationsInDocument:v76 withOptions:v72];
      [+[MPCropController sharedController](MPCropController "sharedController")];
      [objc_msgSend(v76 "montage")];
      [(MPAuthoringController *)v75 cleanup];
      objc_autoreleasePoolPop(context);
    }

    else
    {

      [(MPAuthoringController *)self authorDocument:v4 withOptions:a4];
    }
  }

  else
  {

    [v4 removeAllLayers];
  }
}

- (id)_addVideoPaths:(id)a3 toEndOfLayer:(id)a4 inDocument:(id)a5 withOptions:(id)a6
{
  v9 = [NSMutableDictionary dictionaryWithDictionary:a6];
  v38 = [a4 zIndex];
  v10 = [MPAuthoringUtilities outroEffectIDFromOptions:v9];
  if ([a4 countOfEffectContainers] < 1)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v11 = [objc_msgSend(a4 "effectContainers")];
  if ([objc_msgSend(v11 "effects")])
  {
    v12 = [v10 hasPrefix:{objc_msgSend(objc_msgSend(v11, "objectInEffectsAtIndex:", 0), "effectID")}];
    if (!v12 || (v13 = [v11 index], objc_msgSend(a4, "removeEffectContainersAtIndices:", +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", v13)), v14 = v13 < 1, v15 = v13 - 1, v14))
    {
      v16 = a3;
    }

    else
    {
      v16 = a3;
      if ([a4 countOfEffectContainers] >= 1)
      {
        v11 = [a4 objectInEffectContainersAtIndex:v15];
      }
    }

    v17 = [objc_msgSend(v11 "effects")];
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%@", [v17 effectID], objc_msgSend(v17, "presetID"));
    [(NSMutableDictionary *)v9 setObject:v18 forKey:kMPAuthoringInitiallyIgnoreEffect];
    a3 = v16;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  else if ([v10 isEqualToString:kMPFadeOutEffect])
  {
    v28 = [v11 index];
    [a4 removeEffectContainersAtIndices:{+[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", v28)}];
    v14 = v28 < 1;
    v29 = v28 - 1;
    if (!v14 && [a4 countOfEffectContainers] >= 1)
    {
      [a4 objectInEffectContainersAtIndex:v29];
    }

    goto LABEL_9;
  }

LABEL_10:
  if ([a4 countOfEffectContainers])
  {
    v19 = 0;
  }

  else
  {
    v19 = [MPAuthoringUtilities useTitleEffectFromOptions:v9];
  }

  v20 = [NSNumber numberWithBool:v19];
  [(NSMutableDictionary *)v9 setObject:v20 forKey:kMPAuthoringUseTitleEffect];
  v21 = [(MPAuthoringController *)self orderImages:a3 withOptions:v9];
  v22 = [(MPAuthoringController *)self effectContainersWithImages:v21 effects:[(MPAuthoringController *)self effectsForImages:v21 withOptions:v9] andOptions:v9];
  if (v11)
  {
    v23 = objc_opt_respondsToSelector();
    v24 = objc_opt_respondsToSelector();
    if (v23)
    {
      v25 = v24;
      v26 = [self->_delegate document:a5 shouldUseDefaultTransitionForEffectContainer:v11 containerIndex:objc_msgSend(v11 layerIndex:{"index"), v38}];
      if ((v26 & 1) == 0 && ((v25 ^ 1) & 1) == 0)
      {
        v27 = [self->_delegate document:a5 needsTransitionForEffectContainer:v11 containerIndex:objc_msgSend(v11 layerIndex:{"index"), v38}];
LABEL_25:
        v30 = v27;
LABEL_26:
        [a4 addEffectContainers:v22];
        [v11 setTransition:v30];
        goto LABEL_27;
      }

      if (!v26)
      {
        v30 = 0;
        goto LABEL_26;
      }
    }

    v27 = [(MPAuthoringController *)self transitionFromOptions:a6];
    goto LABEL_25;
  }

  [a4 addEffectContainers:v22];
LABEL_27:
  if ([v10 isEqualToString:kMPFadeOutEffect])
  {
    v31 = [a4 countOfEffectContainers];
    if (v31 >= 3)
    {
      v32 = [objc_msgSend(a4 "effectContainers")];
      v33 = [v32 transition];
      if (v33)
      {
        [v33 setTransitionID:@"Dissolve"];
      }

      else
      {
        v34 = [MPTransition transitionWithTransitionID:@"Dissolve"];
        [-[MPAuthoringController transitionFromOptions:](self transitionFromOptions:{v9), "duration"}];
        if (v35 > 0.0)
        {
          [(MPTransition *)v34 setDuration:?];
        }

        [v32 setTransition:v34];
      }
    }
  }

  return v22;
}

- (id)_grabAndRemoveTitleEffectFromDocument:(id)a3 withOptions:(id)a4
{
  v6 = [MPAuthoringUtilities titleEffectFromOptions:a4];
  if (v6 && (v7 = v6, v8 = +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:", a4), v9 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")], v9 == objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager, "sharedManager"), "indexOfMainLayerForStyleID:", v8)) && (v10 = objc_msgSend(a3, "objectInLayersAtIndex:", v9), objc_msgSend(v10, "countOfEffectContainers") >= 1) && (v11 = +[MPUtilities idOfCombinedID:](MPUtilities, "idOfCombinedID:", objc_msgSend(v7, "objectForKey:", @"presetID")), v12 = objc_msgSend(v10, "objectInEffectContainersAtIndex:", 0), v22 = 0u, v23 = 0u, v24 = 0u, v25 = 0u, v13 = objc_msgSend(v12, "effects", 0), (v14 = objc_msgSend(v13, "countByEnumeratingWithState:objects:count:", &v22, v26, 16)) != 0))
  {
    v15 = v14;
    v16 = *v23;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        if ([v11 isEqualToString:{objc_msgSend(v18, "effectID")}])
        {
          v21 = v18;
          v19 = v21;
          if (v21)
          {
            [v12 removeEffectsAtIndices:{+[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", objc_msgSend(v21, "zIndex"))}];
          }

          return v19;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v19 = 0;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_readdTitleEffect:(id)a3 toDocument:(id)a4 withOptions:(id)a5
{
  v6 = [a4 objectInLayersAtIndex:{objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager, "sharedManager"), "indexOfTitleEffectLayerForStyleID:", +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:", a5))}];
  if ([v6 countOfEffectContainers] >= 1)
  {
    v7 = [v6 objectInEffectContainersAtIndex:0];

    [v7 addEffect:a3];
  }
}

- (void)_checkForEmptyLayersInDocument:(id)a3
{
  if ([objc_msgSend(a3 "allSlides")])
  {
    v4 = [a3 countOfLayers];
    if (v4 >= 1)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        if (![objc_msgSend(a3 objectInLayersAtIndex:{i), "countOfEffectContainers"}])
        {
          [a3 removeLayersAtIndices:{+[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", i)}];
        }
      }
    }
  }

  else
  {

    [a3 removeAllLayers];
  }
}

- (int64_t)_numberOfSlidesForOutroInLayer:(id)a3 withOptions:(id)a4
{
  v6 = [NSMutableDictionary dictionaryWithDictionary:a4];
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")]);
  [(NSMutableDictionary *)v6 setObject:v7 forKey:kMPAuthoringLayerIndex];
  v8 = [MPAuthoringUtilities outroEffectIDFromOptions:v6];
  if (!v8)
  {
    return -1;
  }

  v9 = v8;
  v10 = [objc_msgSend(a3 "effectContainers")];
  if ([v10 countOfEffects] < 1)
  {
    return -1;
  }

  v11 = [objc_msgSend(v10 "effects")];
  if (![v9 hasPrefix:{objc_msgSend(v11, "effectID")}])
  {
    return -1;
  }

  return [v11 countOfSlides];
}

- (int64_t)_countOfEmptyContainersInIntroOfLayer:(id)a3 withOptions:(id)a4
{
  v5 = 0;
  if (![objc_msgSend(a3 objectInEffectContainersAtIndex:{0, a4), "countOfEffects"}])
  {
    v5 = 0;
    do
    {
      ++v5;
    }

    while (![objc_msgSend(a3 objectInEffectContainersAtIndex:{v5), "countOfEffects"}]);
  }

  return v5;
}

- (void)setupClustersWithPaths:(id)a3 withOptions:(id)a4
{
  v6 = [MPClusterController sharedController:a3];
  [v6 setAuthoredDocument:self->_authoredDocument];
  [v6 flush];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(a3);
        }

        [v6 addSlideForPath:*(*(&v12 + 1) + 8 * v11) withIndex:v9++];
        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)findUsableClustersForUserDefinedSlideOrderPresentation:(id)a3 inClusters:(id)a4
{
  v6 = +[MPClusterController sharedController];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = a4;
  v22 = [a4 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v22)
  {
    v25 = 0;
    v21 = *v32;
    do
    {
      v7 = 0;
      do
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v7;
        v8 = *(*(&v31 + 1) + 8 * v7);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v26 = v8;
        v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v28;
          do
          {
            v12 = 0;
            v24 = v10;
            do
            {
              if (*v28 != v11)
              {
                objc_enumerationMutation(v26);
              }

              v13 = *(*(&v27 + 1) + 8 * v12);
              v14 = [v6 clusterSlidesSortedByUserDefinedSortOrder:v13 userDefinedSlideOrder:a3];
              if ([v14 count])
              {
                v15 = [a3 indexOfObject:{objc_msgSend(v14, "objectAtIndex:", 0)}];
                if (![v14 count])
                {
                  goto LABEL_20;
                }

                v16 = v6;
                v17 = 0;
                do
                {
                  v18 = [v14 objectAtIndex:v17];
                  v19 = &v15[v17] < [a3 count] && v18 == objc_msgSend(a3, "objectAtIndex:", &v15[v17]);
                  ++v17;
                }

                while (v17 < [v14 count] && v19);
                v6 = v16;
                v10 = v24;
                if (v19)
                {
LABEL_20:
                  [objc_msgSend(objc_msgSend(a3 objectAtIndex:{v25), "usableSlideClusters"), "addObject:", v13}];
                }
              }

              v12 = v12 + 1;
            }

            while (v12 != v10);
            v10 = [v26 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v10);
        }

        ++v25;
        v7 = v23 + 1;
      }

      while ((v23 + 1) != v22);
      v22 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v22);
  }
}

@end