@interface OpusMarimbaProducer
+ (id)_mediaAttributesForKey:(id)a3 withAttributes:(id)a4;
+ (id)_mediaPropertiesForMediaItem:(id)a3;
+ (id)_transitionSettingsForTransition:(id)a3;
- (BOOL)_authorBootstrap:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (BOOL)_authorCluster:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (BOOL)_authorFinish:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (BOOL)_authorImport:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (BOOL)_authorProduce:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (BOOL)author:(BOOL)a3 progressBlock:(id)a4 requiresProducer:(BOOL *)a5 error:(id *)a6;
- (BOOL)liveAuthorInitialBootstrap:(id)a3 error:(id *)a4;
- (BOOL)needsLiveAuthoring;
- (BOOL)resetLiveAuthoring;
- (float)currentLiveAuthoringProgress;
- (float)liveAuthoringProgressForMediaItem:(id)a3;
- (id)_durationDictionaryForGuidelines;
- (id)_subtitleDictionaryForGuidelines;
- (id)liveAuthorNextChunk:(id)a3 error:(id *)a4;
- (unint64_t)totalNumberOfLiveAuthoringItems;
- (void)_initCouchPotatoSettings;
- (void)_initNavigatorSettingsForLiveAuthoring:(BOOL)a3;
- (void)_initTemplates;
- (void)_updateSynopsisGuideline;
- (void)didChangeTextForWidget:(id)a3 toSettings:(id)a4;
- (void)didPanMediaForWidget:(id)a3 toState:(id)a4;
@end

@implementation OpusMarimbaProducer

- (BOOL)_authorBootstrap:(id)a3 progressBlock:(id)a4 error:(id *)a5
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ([objc_msgSend(-[OpusMarimbaProducer presentation](self presentation])
  {
    if ([objc_msgSend(objc_msgSend(-[OpusMarimbaProducer presentation](self "presentation")])
    {
      v8 = v15;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v9 = sub_66B20;
    }

    else
    {
      v8 = v14;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v9 = sub_66B88;
    }
  }

  else
  {
    v8 = &v12;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v9 = sub_66BF0;
  }

  v8[2] = v9;
  v8[3] = &unk_1AAEF8;
  v8[4] = a4;
  v8[5] = &v16;
  [(OpusMarimbaProducer *)self cleanupPresentation:v12, v13];
  v10 = *(v17 + 24);
  if (a5 && *(v17 + 24))
  {
    *a5 = [NSError errorWithDomain:OKErrorDomain code:-4 userInfo:0];
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

- (BOOL)_authorImport:(id)a3 progressBlock:(id)a4 error:(id *)a5
{
  v8 = 0;
  if (a4)
  {
    (*(a4 + 2))(a4, &v8, a3, 0.5);
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

- (void)_initTemplates
{
  [-[OpusMarimbaProducer presentation](self "presentation")];
  v3 = [objc_msgSend(objc_msgSend(objc_msgSend(-[OpusMarimbaProducer presentation](self "presentation")];
  v15[0] = @"@frame";
  v13[0] = OKResolutionString1024x768;
  v13[1] = OKResolutionString768x1024;
  v14[0] = @"{{0, 0}, {1024, 768}}";
  v14[1] = @"{{0, 0}, {768, 1024}}";
  v16[0] = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[1] = &__kCFBooleanFalse;
  v15[1] = @"autoplay";
  v15[2] = @"forceLive";
  v16[2] = [NSNumber numberWithBool:v3];
  v4 = [+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary mutableCopy:v16];
  v5 = [-[OpusMarimbaProducer presentation](self "presentation")];
  if (v5)
  {
    [v4 setObject:v5 forKeyedSubscript:@"interactiveTransitionSettings"];
  }

  v6 = [-[OpusMarimbaProducer presentation](self "presentation")];
  if (v6)
  {
    v7 = v6;
    v8 = @"attributedTitle";
LABEL_7:
    [v4 setObject:v7 forKey:v8];
    goto LABEL_8;
  }

  v9 = [-[OpusMarimbaProducer presentation](self "presentation")];
  if (v9)
  {
    v7 = v9;
    v8 = @"title";
    goto LABEL_7;
  }

LABEL_8:
  v10 = [OKPresentationWidget widgetWithName:@"marimba" templateName:@"Marimba" className:0 settings:v4 userData:0 subWidgets:0 materials:0];

  v11 = +[NSMutableDictionary dictionary];
  [v11 setObject:@"page.data = null;" forKey:@"didAppearActionScript"];
  v12 = v10;
  [-[OpusMarimbaProducer presentation](self "presentation")];
}

- (void)_initCouchPotatoSettings
{
  [objc_msgSend(-[OpusMarimbaProducer presentation](self "presentation")];
  [objc_msgSend(-[OpusMarimbaProducer presentation](self "presentation")];
  [objc_msgSend(-[OpusMarimbaProducer presentation](self "presentation")];
  [objc_msgSend(-[OpusMarimbaProducer presentation](self "presentation")];
  v3 = [OKPresentationCouch couchWithName:kOKPresentationRootNavigatorName settings:&__NSDictionary0__struct steps:0 restartScript:@"document.mainNavigator.pages['page'].widgets['marimba'].restart(info.completionBlock);"];
  [-[OpusMarimbaProducer presentation](self "presentation")];
  v4 = [OKPresentationCouchStep couchStepWithAnchorPageName:@"page" script:@"playAllWidgetsSequentially(document duration:page settings:[marimba]);", &__NSDictionary0__struct, -1.0];

  [(OKPresentationCouch *)v3 addStep:v4];
}

- (void)_initNavigatorSettingsForLiveAuthoring:(BOOL)a3
{
  v3 = a3;
  [objc_msgSend(-[OpusMarimbaProducer presentation](self "presentation")];
  v5 = +[NSMutableDictionary dictionary];
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(-[OpusMarimbaProducer presentation](self "presentation")];
  v7 = [-[OpusMarimbaProducer presentation](self "presentation")];
  if (v7)
  {
    v8 = v7;
    if ([v7 count])
    {
      v25 = v3;
      v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v27;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v26 + 1) + 8 * i);
            v33 = @"url";
            v34 = [objc_msgSend(v14 "uniqueURL")];
            [v9 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v34, &v33, 1)}];
            [objc_msgSend(v14 "metadata")];
          }

          v11 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
        }

        while (v11);
      }

      [v5 setObject:v9 forKeyedSubscript:@"audioPlaylist"];
      if (v6)
      {
        v15 = &__kCFBooleanFalse;
      }

      else
      {
        v15 = &__kCFBooleanTrue;
      }

      [v5 setObject:v15 forKeyedSubscript:@"audioPlaylistLoops"];

      v3 = v25;
    }
  }

  v16 = [objc_msgSend(objc_msgSend(-[OpusMarimbaProducer presentation](self "presentation")];
  v17 = [-[OpusMarimbaProducer presentation](self "presentation")];
  v18 = v17;
  if (!v3)
  {
    v18 = [v17 allMediaURLs];
  }

  v19 = [(OpusMarimbaProducer *)self _subtitleDictionaryForGuidelines];
  v20 = [(OpusMarimbaProducer *)self _durationDictionaryForGuidelines];
  v21 = +[NSMutableDictionary dictionary];
  [v21 setObject:&off_1BBE40 forKeyedSubscript:@"actionBindings"];
  if (v3)
  {
    if (!v20)
    {
      v20 = &__NSDictionary0__struct;
    }

    if (!v19)
    {
      v19 = &__NSDictionary0__struct;
    }

    v31[0] = @"marimba.mediaFeeder";
    v31[1] = @"marimba.style";
    v32[0] = v18;
    v32[1] = v16;
    v31[2] = @"marimba.seed";
    v32[2] = [NSNumber numberWithUnsignedInt:arc4random()];
    v32[3] = v19;
    v31[3] = @"marimba.subtitles";
    v31[4] = @"marimba.durations";
    v32[4] = v20;
    [v21 addEntriesFromDictionary:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v32, v31, 5)}];
  }

  [-[OpusMarimbaProducer presentation](self "presentation")];
  [v5 setObject:@"  \t\t\tnavigator.pages['page'].widgets['marimba'].gotoItem(info.keyPath forKeyedSubscript:{info.animated, 0); \t\t", @"navigationScript"}];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"wraps"];
  [-[OpusMarimbaProducer presentation](self "presentation")];
  v22 = [[NSMutableDictionary alloc] initWithDictionary:v21];
  [v22 setObject:&__kCFBooleanTrue forKeyedSubscript:@"marimba.gotoPosterFrame"];
  v23 = [OKPresentationPage pageWithName:@"page-thumbnail" templateName:@"MarimbaPage" navigatorName:0 properties:0 settings:v22 userData:0 widgets:0];

  [-[OpusMarimbaProducer presentation](self "presentation")];
  v24 = kOKPresentationThumbnailNavigatorName;
  v30 = [(OKPresentationPage *)v23 name];
  [-[OpusMarimbaProducer presentation](self "presentation")];
}

- (BOOL)_authorProduce:(id)a3 progressBlock:(id)a4 error:(id *)a5
{
  if (OFLoggerLevel >= 5)
  {
    [OFLogger logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKitPlugins/OpusProducers/OpusMarimbaProducer/OpusMarimbaProducer.m" line:355 andFormat:@"Marimba::_authorProduce called"];
  }

  v10 = 0;
  [(OpusMarimbaProducer *)self _initTemplates];
  [(OpusMarimbaProducer *)self _initNavigatorSettingsForLiveAuthoring:0];
  [(OpusMarimbaProducer *)self _initCouchPotatoSettings];
  [(OpusMarimbaProducer *)self _updateSynopsisGuideline];

  self->_marimbaDocument = 0;
  if (a4)
  {
    (*(a4 + 2))(a4, &v10, 0.9);
    v8 = v10;
    if (a5 && (v10 & 1) != 0)
    {
      *a5 = [NSError errorWithDomain:OKErrorDomain code:-4 userInfo:0];
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return (v8 & 1) == 0;
}

- (BOOL)_authorFinish:(id)a3 progressBlock:(id)a4 error:(id *)a5
{
  v8 = 0;
  if (a4)
  {
    (*(a4 + 2))(a4, &v8, a3, 1.0);
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

- (BOOL)author:(BOOL)a3 progressBlock:(id)a4 requiresProducer:(BOOL *)a5 error:(id *)a6
{
  v9 = a3;
  v11 = objc_alloc_init(OpusMarimbaProducerContext);
  if ([(OpusMarimbaProducer *)self _authorBootstrap:v11 progressBlock:a4 error:a6]&& [(OpusMarimbaProducer *)self _authorCluster:v11 progressBlock:a4 error:a6]&& (!v9 || [(OpusMarimbaProducer *)self _authorImport:v11 progressBlock:a4 error:a6]) && [(OpusMarimbaProducer *)self _authorProduce:v11 progressBlock:a4 error:a6]&& [(OpusMarimbaProducer *)self _authorFinish:v11 progressBlock:a4 error:a6])
  {
    v12 = 1;
    *a5 = 1;

    if (a6)
    {
      return *a6 == 0;
    }
  }

  else
  {

    return 0;
  }

  return v12;
}

- (void)_updateSynopsisGuideline
{
  v61 = [-[OpusMarimbaProducer presentation](self "presentation")];
  v3 = [-[OpusMarimbaProducer presentation](self "presentation")];
  if (v3)
  {
    v4 = [v3 string];
  }

  else
  {
    v4 = [-[OpusMarimbaProducer presentation](self "presentation")];
  }

  v5 = v4;
  v6 = [objc_msgSend(objc_msgSend(-[OpusMarimbaProducer presentation](self "presentation")];
  v7 = &kCTUnderlineColorAttributeName_ptr;
  v51 = self;
  if (self->_marimbaDocument && ([v6 isEqualToString:@"KenBurns"] & 1) == 0)
  {
    v55 = v5;
    v56 = +[NSMutableArray array];
    v8 = [-[MPDocument mainLayers](self->_marimbaDocument "mainLayers")];
    v77 = objc_alloc_init(NSMutableArray);
    v75 = objc_alloc_init(NSMutableArray);
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    obj = [v8 effectContainers];
    v58 = [obj countByEnumeratingWithState:&v102 objects:v138 count:16];
    if (v58)
    {
      v9 = 0;
      v59 = 0;
      v57 = *v103;
      v81 = kOKPresentationGuidelineAuthoringSynopsisItemType;
      v78 = kOKPresentationGuidelineAuthoringSynopsisItemValue;
      v10 = kOKPresentationGuidelineAuthoringSynopsisItemNavigationKeyPath;
      v73 = kOKPresentationGuidelineAuthoringSynopsisItemName;
      v53 = kOKPresentationGuidelineAuthoringSynopsisGroupItems;
      v54 = kOKPresentationGuidelineAuthoringSynopsisGroupName;
      do
      {
        v11 = 0;
        do
        {
          if (*v103 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v102 + 1) + 8 * v11);
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v101 = 0u;
          v60 = v12;
          v62 = v11;
          v63 = [v12 effects];
          v68 = [v63 countByEnumeratingWithState:&v98 objects:v137 count:16];
          if (v68)
          {
            v65 = *v99;
            if (v9)
            {
              v13 = 1;
            }

            else
            {
              v13 = v55 == 0;
            }

            v14 = !v13;
            do
            {
              v15 = 0;
              do
              {
                if (*v99 != v65)
                {
                  objc_enumerationMutation(v63);
                }

                v16 = v15;
                v17 = *(*(&v98 + 1) + 8 * v15);
                v94 = 0u;
                v95 = 0u;
                v96 = 0u;
                v97 = 0u;
                v18 = [v17 texts];
                v19 = [v18 countByEnumeratingWithState:&v94 objects:v136 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v95;
                  do
                  {
                    for (i = 0; i != v20; i = i + 1)
                    {
                      if (*v95 != v21)
                      {
                        objc_enumerationMutation(v18);
                      }

                      v23 = *(*(&v94 + 1) + 8 * i);
                      v24 = @"title";
                      if ((v14 & 1) == 0)
                      {
                        v24 = [NSString stringWithFormat:@"text-%d", v9];
                      }

                      v135[0] = &off_1BBEF8;
                      v134[0] = v81;
                      v134[1] = v78;
                      v25 = [objc_msgSend(v23 "attributedString")];
                      v134[2] = v10;
                      v135[1] = v25;
                      v135[2] = v24;
                      [v77 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v135, v134, 3)}];
                    }

                    v20 = [v18 countByEnumeratingWithState:&v94 objects:v136 count:16];
                  }

                  while (v20);
                }

                v15 = v16 + 1;
              }

              while ((v16 + 1) != v68);
              v68 = [v63 countByEnumeratingWithState:&v98 objects:v137 count:16];
            }

            while (v68);
          }

          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v66 = [v60 effects];
          v71 = [v66 countByEnumeratingWithState:&v90 objects:v133 count:16];
          if (v71)
          {
            v69 = *v91;
            do
            {
              for (j = 0; j != v71; j = j + 1)
              {
                if (*v91 != v69)
                {
                  objc_enumerationMutation(v66);
                }

                v27 = *(*(&v90 + 1) + 8 * j);
                v86 = 0u;
                v87 = 0u;
                v88 = 0u;
                v89 = 0u;
                v28 = [v27 slides];
                v29 = [v28 countByEnumeratingWithState:&v86 objects:v132 count:16];
                if (v29)
                {
                  v30 = v29;
                  v31 = *v87;
                  do
                  {
                    for (k = 0; k != v30; k = k + 1)
                    {
                      if (*v87 != v31)
                      {
                        objc_enumerationMutation(v28);
                      }

                      v33 = *(*(&v86 + 1) + 8 * k);
                      if ([v33 path])
                      {
                        v34 = [NSString stringWithFormat:@"media-%d", v9];
                        v130[0] = v73;
                        v131[0] = [NSNumber numberWithUnsignedInteger:v9];
                        v131[1] = &off_1BBF10;
                        v130[1] = v81;
                        v130[2] = v78;
                        v35 = [v33 path];
                        v130[3] = v10;
                        v131[2] = v35;
                        v131[3] = v34;
                        [v75 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v131, v130, 4)}];
                        ++v9;
                      }
                    }

                    v30 = [v28 countByEnumeratingWithState:&v86 objects:v132 count:16];
                  }

                  while (v30);
                }
              }

              v71 = [v66 countByEnumeratingWithState:&v90 objects:v133 count:16];
            }

            while (v71);
          }

          v36 = [v77 arrayByAddingObjectsFromArray:v75];
          if ([v36 count])
          {
            v128[0] = v54;
            v37 = [NSString stringWithFormat:@"%lu", v59];
            v128[1] = v53;
            v129[0] = v37;
            v129[1] = v36;
            [v56 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v129, v128, 2)}];
            ++v59;
          }

          [v77 removeAllObjects];
          [v75 removeAllObjects];
          v11 = v62 + 1;
        }

        while (v62 + 1 != v58);
        v58 = [obj countByEnumeratingWithState:&v102 objects:v138 count:16];
      }

      while (v58);
    }

    v125 = kOKPresentationGuidelineAuthoringSynopsisCollectionGroups;
    v126 = v56;
    v127 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
    v38 = &v127;
    v7 = &kCTUnderlineColorAttributeName_ptr;
  }

  else
  {
    v76 = +[NSMutableArray array];
    if (v5)
    {
      v123[0] = kOKPresentationGuidelineAuthoringSynopsisGroupName;
      v124[0] = [NSString stringWithFormat:@"%lu", 0];
      v123[1] = kOKPresentationGuidelineAuthoringSynopsisGroupItems;
      v120[0] = kOKPresentationGuidelineAuthoringSynopsisItemType;
      v120[1] = kOKPresentationGuidelineAuthoringSynopsisItemValue;
      v121[0] = &off_1BBEF8;
      v121[1] = v5;
      v120[2] = kOKPresentationGuidelineAuthoringSynopsisItemNavigationKeyPath;
      v121[2] = @"title";
      v122 = [NSDictionary dictionaryWithObjects:v121 forKeys:v120 count:3];
      v80 = 1;
      v124[1] = [NSArray arrayWithObjects:&v122 count:1];
      [v76 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v124, v123, 2)}];
    }

    else
    {
      v80 = 0;
    }

    v72 = [(OpusMarimbaProducer *)self _subtitleDictionaryForGuidelines];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v74 = [v61 countByEnumeratingWithState:&v82 objects:v119 count:16];
    if (v74)
    {
      v39 = 0;
      v70 = *v83;
      v67 = kOKPresentationGuidelineAuthoringSynopsisGroupName;
      v40 = kOKPresentationGuidelineAuthoringSynopsisGroupItems;
      v41 = kOKPresentationGuidelineAuthoringSynopsisItemType;
      v42 = kOKPresentationGuidelineAuthoringSynopsisItemValue;
      v43 = kOKPresentationGuidelineAuthoringSynopsisItemNavigationKeyPath;
      v64 = kOKPresentationGuidelineAuthoringSynopsisItemNavigationKeyPath;
      do
      {
        for (m = 0; m != v74; m = m + 1)
        {
          if (*v83 != v70)
          {
            objc_enumerationMutation(v61);
          }

          v79 = *(*(&v82 + 1) + 8 * m);
          v45 = [v72 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(v79, "uniqueURL"), "absoluteString")}];
          if (v45)
          {
            v46 = v45;
            v117[0] = v67;
            v118[0] = [NSString stringWithFormat:@"%lu", v80];
            v117[1] = v40;
            v114[0] = v41;
            v114[1] = v42;
            v115[0] = &off_1BBEF8;
            v115[1] = v46;
            v114[2] = v43;
            v47 = v39;
            v115[2] = [NSString stringWithFormat:@"text-%d", v39];
            v116 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:3];
            v118[1] = [NSArray arrayWithObjects:&v116 count:1];
            [v76 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v118, v117, 2)}];
            v48 = v67;
            v49 = v47;
            v50 = v80 + 1;
          }

          else
          {
            v47 = v39;
            v49 = v39;
            v48 = v67;
            v50 = v80;
          }

          v112[0] = v48;
          v80 = v50 + 1;
          v113[0] = [NSString stringWithFormat:@"%lu", v50];
          v112[1] = v40;
          v110[0] = &off_1BBF10;
          v109[0] = v41;
          v109[1] = v42;
          v110[1] = [objc_msgSend(v79 "uniqueURL")];
          v109[2] = v64;
          v110[2] = [NSString stringWithFormat:@"media-%d", v49];
          v111 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:3];
          v7 = &kCTUnderlineColorAttributeName_ptr;
          v113[1] = [NSArray arrayWithObjects:&v111 count:1];
          [v76 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v113, v112, 2)}];
          v43 = v64;
          v39 = v47 + 1;
        }

        v74 = [v61 countByEnumeratingWithState:&v82 objects:v119 count:16];
      }

      while (v74);
    }

    v106 = kOKPresentationGuidelineAuthoringSynopsisCollectionGroups;
    v107 = v76;
    v108 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
    v38 = &v108;
  }

  [-[OpusMarimbaProducer presentation](v51 "presentation")];
}

- (id)_subtitleDictionaryForGuidelines
{
  v2 = [-[OpusMarimbaProducer presentation](self "presentation")];
  v3 = +[NSMutableDictionary dictionary];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_6834C;
  v5[3] = &unk_1AAF20;
  v5[4] = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
  return v3;
}

- (id)_durationDictionaryForGuidelines
{
  v2 = [-[OpusMarimbaProducer presentation](self "presentation")];
  v3 = +[NSMutableDictionary dictionary];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_6846C;
  v5[3] = &unk_1AAF20;
  v5[4] = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
  return v3;
}

- (BOOL)needsLiveAuthoring
{
  objc_sync_enter(self);
  currentFeederIndex = self->_currentFeederIndex;
  LOBYTE(currentFeederIndex) = currentFeederIndex < [objc_msgSend(-[OpusMarimbaProducer presentation](self "presentation")];
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
  [(OpusMarimbaProducer *)self _initTemplates];
  if (a3)
  {
    (*(a3 + 2))(a3, &v9, 0.3);
    if (v9 == 1 || ([(OpusMarimbaProducer *)self _initCouchPotatoSettings], (*(a3 + 2))(a3, &v9, 0.6), v9 == 1) || (v7 = 1, [(OpusMarimbaProducer *)self _initNavigatorSettingsForLiveAuthoring:1], (*(a3 + 2))(a3, &v9, 0.6), (v9 & 1) != 0))
    {
      v7 = 0;
      if (a4)
      {
        *a4 = [NSError errorWithDomain:OKErrorDomain code:-4 userInfo:0];
      }
    }
  }

  else
  {
    [(OpusMarimbaProducer *)self _initCouchPotatoSettings];
    v7 = 1;
    [(OpusMarimbaProducer *)self _initNavigatorSettingsForLiveAuthoring:1];
  }

  return v7;
}

- (id)liveAuthorNextChunk:(id)a3 error:(id *)a4
{
  objc_sync_enter(self);
  v5 = [-[OpusMarimbaProducer presentation](self "presentation")];
  v6 = self->_currentFeederIndex + 100;
  self->_currentFeederIndex = v6;
  if (v6 > [v5 numberOfMediaItems])
  {
    self->_currentFeederIndex = [v5 numberOfMediaItems];
  }

  objc_sync_exit(self);
  return &off_1BC000;
}

- (unint64_t)totalNumberOfLiveAuthoringItems
{
  objc_sync_enter(self);
  v3 = [objc_msgSend(-[OpusMarimbaProducer presentation](self "presentation")];
  objc_sync_exit(self);
  return v3;
}

- (float)currentLiveAuthoringProgress
{
  objc_sync_enter(self);
  currentFeederIndex = self->_currentFeederIndex;
  v4 = (currentFeederIndex + 1) / [objc_msgSend(-[OpusMarimbaProducer presentation](self "presentation")];
  objc_sync_exit(self);
  return v4;
}

- (float)liveAuthoringProgressForMediaItem:(id)a3
{
  objc_sync_enter(self);
  v5 = [objc_msgSend(-[OpusMarimbaProducer presentation](self "presentation")];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 9.2234e18;
  }

  else
  {
    v6 = (v5 + 1) / [objc_msgSend(-[OpusMarimbaProducer presentation](self "presentation")];
  }

  objc_sync_exit(self);
  return v6;
}

- (void)didPanMediaForWidget:(id)a3 toState:(id)a4
{
  v6 = [a4 objectForKeyedSubscript:@"mediaURL"];
  if (v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_68978;
    v7[3] = &unk_1AAF48;
    v7[4] = a4;
    [-[OpusMarimbaProducer presentation](self "presentation")];
  }
}

- (void)didChangeTextForWidget:(id)a3 toSettings:(id)a4
{
  v7 = [a4 objectForKeyedSubscript:@"attributedText"];
  if (v7)
  {
    v8 = v7;
    if ([v7 length])
    {
      v9 = [a4 objectForKeyedSubscript:@"mediaURL"];
      if ([objc_msgSend(a4 objectForKeyedSubscript:{@"isTitle", "BOOLValue"}])
      {
        [-[OpusMarimbaProducer presentation](self "presentation")];
        v10 = [(OpusMarimbaProducer *)self presentation];
        [v10 removeGuidelineForGlobalUniqueKey:{+[OKPresentationGuideline globalUniqueKeyForKey:](OKPresentationGuideline, "globalUniqueKeyForKey:", kOKPresentationGuidelineAuthoringTitle)}];

        [(OpusMarimbaProducer *)self setSettingsObject:v8 forKeyPath:@"attributedTitle" onWidget:a3];
      }

      else if (v9)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_68BB8;
        v12[3] = &unk_1AAF48;
        v12[4] = v8;
        [-[OpusMarimbaProducer presentation](self "presentation")];
        v11 = [objc_msgSend(objc_msgSend(a3 "mergedSettings")];
        if (!v11)
        {
          v11 = objc_alloc_init(NSMutableDictionary);
        }

        [v11 setObject:v8 forKey:{objc_msgSend(v9, "absoluteString")}];
        [(OpusMarimbaProducer *)self setSettingsObject:v11 forKeyPath:@"attributedSubtitles" onWidget:a3];
      }
    }
  }
}

+ (id)_mediaPropertiesForMediaItem:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = +[NSMutableDictionary dictionary];
  v5 = [a3 metadata];
  [v5 duration];
  if (v6 < 3.0 && v6 > 0.0)
  {
    v6 = 3.0;
  }

  v8 = [NSNumber numberWithDouble:v6];
  [v4 setObject:v8 forKeyedSubscript:kMPMetaDataDuration];
  [v4 setObject:&off_1BC078 forKeyedSubscript:kMPMetaDataStartTime];
  [v4 setObject:v8 forKeyedSubscript:kMPMetaDataStopTime];
  if ([v5 creationDate])
  {
    v9 = [v5 creationDate];
    [v4 setObject:v9 forKeyedSubscript:kMPMetaDataCreationDate];
  }

  [v5 resolution];
  [v4 setObject:NSStringFromCGSize(v18) forKeyedSubscript:kMPMetaDataResolution];
  if ([v5 type] == &dword_0 + 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  v11 = [NSNumber numberWithInt:v10];
  [v4 setObject:v11 forKeyedSubscript:kMPMetaDataMediaType];
  if ([v5 name])
  {
    v12 = [v5 name];
    [v4 setObject:v12 forKeyedSubscript:kMPMetaDataCaption];
  }

  if ([v5 caption])
  {
    v13 = [v5 caption];
    [v4 setObject:v13 forKeyedSubscript:kMPMetaDataComment];
  }

  [v5 longitude];
  v14 = [NSNumber numberWithDouble:?];
  [v4 setObject:v14 forKeyedSubscript:kMPMetaDataLongitude];
  [v5 latitude];
  v15 = [NSNumber numberWithDouble:?];
  [v4 setObject:v15 forKeyedSubscript:kMPMetaDataLatitude];
  if ([v5 regionsOfInterest])
  {
    v16 = [v5 regionsOfInterest];
    [v4 setObject:v16 forKeyedSubscript:kMPMetaDataRegionOfInterestRectangles];
  }

  return v4;
}

+ (id)_mediaAttributesForKey:(id)a3 withAttributes:(id)a4
{
  v6 = [a4 objectForKeyedSubscript:?];
  if (!v6)
  {
    v6 = objc_alloc_init(OKProducerMediaAttributes);
    [a4 setObject:v6 forKeyedSubscript:a3];
  }

  return v6;
}

+ (id)_transitionSettingsForTransition:(id)a3
{
  if (!a3)
  {
    return &off_1BBE68;
  }

  v4 = [a3 transitionID];
  v5 = [a3 presetID];
  if (([(__CFString *)v4 isEqualToString:@"Dissolve"]& 1) != 0 || ([(__CFString *)v4 isEqualToString:@"Push"]& 1) != 0 || ([(__CFString *)v4 isEqualToString:@"Reveal"]& 1) != 0 || ([(__CFString *)v4 isEqualToString:@"MoveIn"]& 1) != 0 || ([(__CFString *)v4 isEqualToString:@"Uncover"]& 1) != 0 || [(__CFString *)v4 isEqualToString:@"Cover"])
  {
    v6 = ([(__CFString *)v4 isEqualToString:@"Uncover"]& 1) == 0 && ![(__CFString *)v4 isEqualToString:@"Cover"];
  }

  else
  {
    v6 = 1;
    v4 = @"Dissolve";
  }

  if ([v5 isEqualToString:@"ToLeft"])
  {
    v8 = 1;
  }

  else if ([v5 isEqualToString:@"ToRight"])
  {
    v8 = 2;
  }

  else if ([v5 isEqualToString:@"ToTop"])
  {
    v8 = 3;
  }

  else if ([v5 isEqualToString:@"ToBottom"])
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  if ([(__CFString *)v4 isEqualToString:@"Dissolve"])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v11[0] = v4;
  v10[0] = @"transitionID";
  v10[1] = @"transitionDirection";
  v11[1] = [NSNumber numberWithUnsignedInteger:v9];
  v10[2] = @"transitionDuration";
  [a3 duration];
  v11[2] = [NSNumber numberWithDouble:?];
  v10[3] = @"transitionWantsOpaquePages";
  v11[3] = [NSNumber numberWithBool:v6];
  return [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
}

@end