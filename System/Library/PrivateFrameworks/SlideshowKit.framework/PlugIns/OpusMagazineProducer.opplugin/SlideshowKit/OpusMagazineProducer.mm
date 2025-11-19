@interface OpusMagazineProducer
- (BOOL)_addPageWithPageInfo:(id)a3 primaryResolutionKey:(id)a4 progressBlock:(id)a5 error:(id *)a6;
- (BOOL)_authorBootstrap:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (BOOL)_authorCluster:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (BOOL)_authorFinish:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (BOOL)_authorImport:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (BOOL)_authorProduce:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (BOOL)author:(BOOL)a3 progressBlock:(id)a4 requiresProducer:(BOOL *)a5 error:(id *)a6;
- (BOOL)liveAuthorInitialBootstrap:(id)a3 error:(id *)a4;
- (BOOL)needsLiveAuthoring;
- (BOOL)resetLiveAuthoring;
- (OpusMagazineProducer)init;
- (float)_croppedFractionforRectAspectRatio:(float)a3 photoAspectRatio:(float)a4;
- (float)currentLiveAuthoringProgress;
- (float)liveAuthoringProgressForMediaItem:(id)a3;
- (id)_addPageTemplateToPresentation:(id)a3 templateName:(id)a4 withSettings:(id)a5 zOrder:(id)a6;
- (id)_allLayoutsFromTileEngine:(id)a3;
- (id)_configPageWidgetsSettings:(id)a3 mediaItemMediaAttributes:(id)a4 textItems:(id)a5 pageItems:(id)a6 pageInfo:(id)a7 properties:(id)a8 progressBlock:(id)a9 error:(id *)a10;
- (id)_configPanoramaSettings:(id)a3 panDuration:(double)a4;
- (id)_resolveThumbnailPageWidgetForWidget:(id)a3;
- (id)_setupResolutions:(id)a3;
- (id)liveAuthorNextChunk:(id)a3 error:(id *)a4;
- (unint64_t)totalNumberOfLiveAuthoringItems;
- (void)_addAnimationsToLayout:(id)a3;
- (void)_initCouchPotatoSettings;
- (void)_initDurationsForPageInfos:(id)a3;
- (void)_initNavigatorSettings;
- (void)_initTemplatesAndScript:(id)a3;
- (void)dealloc;
- (void)didChangeTextForWidget:(id)a3 toSettings:(id)a4;
- (void)didPanMediaForWidget:(id)a3 toState:(id)a4;
@end

@implementation OpusMagazineProducer

- (OpusMagazineProducer)init
{
  v3.receiver = self;
  v3.super_class = OpusMagazineProducer;
  result = [(OpusMagazineProducer *)&v3 init];
  if (result)
  {
    result->_autoLayoutEngine = 0;
    result->_synopsisGroups = 0;
    result->_pageDurations = 0;
    result->_transitionDuration = 0.5;
  }

  return result;
}

- (void)dealloc
{
  autoLayoutEngine = self->_autoLayoutEngine;
  if (autoLayoutEngine)
  {

    self->_autoLayoutEngine = 0;
  }

  synopsisGroups = self->_synopsisGroups;
  if (synopsisGroups)
  {

    self->_synopsisGroups = 0;
  }

  pageDurations = self->_pageDurations;
  if (pageDurations)
  {

    self->_pageDurations = 0;
  }

  v6.receiver = self;
  v6.super_class = OpusMagazineProducer;
  [(OpusMagazineProducer *)&v6 dealloc];
}

- (id)_setupResolutions:(id)a3
{
  v4 = [-[OpusMagazineProducer presentation](self "presentation")];
  if (!v4 || (v5 = v4, ![(NSArray *)v4 count]))
  {
    v26[0] = [NSValue valueWithCGSize:1024.0, 768.0];
    v26[1] = [NSValue valueWithCGSize:768.0, 1024.0];
    v5 = [NSArray arrayWithObjects:v26 count:2];
  }

  [-[NSArray objectAtIndexedSubscript:](v5 objectAtIndexedSubscript:{0), "CGSizeValue"}];
  v19 = [OKRuntime resolutionStringWithSize:1 keepAspectRatio:?];
  v6 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        [v11 CGSizeValue];
        v13 = v12;
        v15 = v14;
        v16 = [OKRuntime resolutionStringWithSize:0 keepAspectRatio:?];
        v17 = [OKRuntime resolutionStringWithSize:1 keepAspectRatio:v13, v15];
        [v6 addObject:v16];
        if (a3)
        {
          [a3 setObject:v11 forKey:v17];
        }
      }

      v8 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  [objc_msgSend(-[OpusMagazineProducer presentation](self "presentation")];
  return v19;
}

- (id)_addPageTemplateToPresentation:(id)a3 templateName:(id)a4 withSettings:(id)a5 zOrder:(id)a6
{
  v8 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [a6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(a6);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        if ([v14 hasPrefix:@"textBlock"])
        {
          v15 = [a5 objectForKey:v14];
          v16 = v14;
          v17 = @"TextBlock";
          goto LABEL_12;
        }

        if ([v14 hasPrefix:@"media"])
        {
          v15 = [a5 objectForKey:v14];
          v16 = v14;
          v17 = @"Media";
          goto LABEL_12;
        }

        if ([v14 hasPrefix:@"text"])
        {
          v15 = [a5 objectForKey:v14];
          v16 = v14;
          v17 = @"Text";
          goto LABEL_12;
        }

        if ([v14 hasPrefix:@"titleText"])
        {
          v18 = +[OKPresentationWidget widgetWithName:templateName:className:settings:userData:subWidgets:materials:](OKPresentationWidget, "widgetWithName:templateName:className:settings:userData:subWidgets:materials:", v14, @"TitleText", 0, [a5 objectForKey:v14], &off_118F8, 0, 0);
          goto LABEL_13;
        }

        if ([v14 hasPrefix:@"subtitleText"])
        {
          v15 = [a5 objectForKey:v14];
          v16 = v14;
          v17 = @"SubtitleText";
LABEL_12:
          v18 = [OKPresentationWidget widgetWithName:v16 templateName:v17 className:0 settings:v15 userData:0 subWidgets:0 materials:0];
LABEL_13:
          v11 = v18;
          goto LABEL_14;
        }

        if ([v14 hasPrefix:@"map"])
        {
          v15 = [a5 objectForKey:v14];
          v16 = v14;
          v17 = @"Map";
          goto LABEL_12;
        }

LABEL_14:
        if (v11)
        {
          [v8 addObject:v11];
        }

        v13 = v13 + 1;
      }

      while (v10 != v13);
      v19 = [a6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v10 = v19;
    }

    while (v19);
  }

  [v8 addObject:{+[OKPresentationWidget widgetWithName:templateName:className:settings:userData:subWidgets:materials:](OKPresentationWidget, "widgetWithName:templateName:className:settings:userData:subWidgets:materials:", @"background", @"Background", 0, 0, 0, 0, 0)}];
  v20 = [OKPresentationPage pageWithName:a4 templateName:0 navigatorName:0 properties:0 settings:0 userData:0 widgets:v8];
  [a3 addPageTemplate:v20];
  return v20;
}

- (void)_addAnimationsToLayout:(id)a3
{
  if (self->_randomSeed)
  {
    v4 = @"-15";
  }

  else
  {
    v4 = @"15";
  }

  v26 = v4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [a3 objectForKey:@"appearOrder"];
  v27 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v27)
  {
    v5 = 0;
    v25 = *v29;
    v6 = 0.2;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v9 = [objc_msgSend(a3 objectForKey:{v8), "objectForKey:", @"animateSettings"}];
        [objc_msgSend(objc_msgSend(a3 objectForKey:{v8), "objectForKey:", @"rect", "CGRectValue"}];
        v11 = v10;
        v13 = v12;
        if ([v8 hasPrefix:@"titleText"])
        {
          v14 = 1.25;
        }

        else
        {
          v14 = 1.0;
        }

        v15 = random() / 2147483650.0 * (v14 * 1.25 + -1.0) + 1.0;
        v16 = v14 * (random() / 2147483650.0 * 30.0 + -15.0);
        v17 = v15 + -1.0;
        v18 = -(v11 * (v15 + -1.0));
        if (v16 > 0.0)
        {
          v18 = v11 * (v15 + -1.0);
        }

        v19 = v18 * 0.5 - v16;
        v20 = v14 * (random() / 2147483650.0 * 30.0 + -15.0);
        v21 = -(v13 * v17);
        if (v20 > 0.0)
        {
          v21 = v13 * v17;
        }

        v22 = v21 * 0.5 - v20;
        v23 = [NSString stringWithFormat:@"page.widgets.%@", v8];
        [v9 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"\tanimateTo(%@, %.2f, %ld, %ld, %@, %@, %@, %@, %@);\n", v23, *&v15, v19, v22, @"0", @"0.35", v26, @"15", @"5", @"willScript"}];
        ++v5;
        [v9 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"function animation_%@ () {\n\tanimateTo(%@, 1, 0, 0, 1, %@, 0, 0, 0);\n}\nOKWidgetView.animate(%.2f, %.2f, '%@', animation_%@, 0);\n", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v5), v23, @"0.35", random() / 2147483650.0 * 0.35 + 0.45, *&v6, kCAMediaTimingFunctionEaseOut, +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v5)), @"didScript"}];
        v6 = v6 + 0.2;
      }

      v27 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v27);
  }
}

- (id)_allLayoutsFromTileEngine:(id)a3
{
  if (qword_15A00 && [qword_15A00 count])
  {
    return qword_15A00;
  }

  v80 = objc_alloc_init(OKAutoLayoutTileMaker);
  v67 = +[NSMutableDictionary dictionary];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v103 objects:v125 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v104;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v104 != v6)
        {
          objc_enumerationMutation(a3);
        }

        v8 = *(*(&v103 + 1) + 8 * i);
        v9 = [a3 objectForKeyedSubscript:v8];
        [v9 CGSizeValue];
        v12 = v10 / v11;
        if (v10 / v11 <= 1.0)
        {
          v16 = (v11 / 90.0);
          v120[0] = @"tileSizes";
          v119[0] = [NSValue valueWithCGSize:8.0, 10.0, v12];
          v119[1] = [NSValue valueWithCGSize:8.0, 10.0];
          v119[2] = [NSValue valueWithCGSize:8.0, 10.0];
          v119[3] = [NSValue valueWithCGSize:8.0, 10.0];
          v119[4] = [NSValue valueWithCGSize:8.0, 10.0];
          v119[5] = [NSValue valueWithCGSize:8.0, 10.0];
          v121[0] = [NSArray arrayWithObjects:v119 count:6];
          v121[1] = v9;
          v120[1] = @"sizeInPx";
          v120[2] = @"borderInPx";
          v121[2] = [NSNumber numberWithUnsignedInteger:v16];
          v14 = v121;
          v15 = v120;
        }

        else
        {
          v13 = (v10 / 90.0);
          v123[0] = @"tileSizes";
          v122[0] = [NSValue valueWithCGSize:10.0, 8.0, v12];
          v122[1] = [NSValue valueWithCGSize:10.0, 8.0];
          v122[2] = [NSValue valueWithCGSize:10.0, 8.0];
          v122[3] = [NSValue valueWithCGSize:10.0, 8.0];
          v122[4] = [NSValue valueWithCGSize:10.0, 8.0];
          v122[5] = [NSValue valueWithCGSize:10.0, 8.0];
          v124[0] = [NSArray arrayWithObjects:v122 count:6];
          v124[1] = v9;
          v123[1] = @"sizeInPx";
          v123[2] = @"borderInPx";
          v124[2] = [NSNumber numberWithUnsignedInteger:v13];
          v14 = v124;
          v15 = v123;
        }

        [v67 setObject:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary forKey:{"dictionaryWithObjects:forKeys:count:", v14, v15, 3), v8}];
      }

      v5 = [a3 countByEnumeratingWithState:&v103 objects:v125 count:16];
    }

    while (v5);
  }

  [(OKAutoLayoutTileMaker *)v80 setMinFrameArea:0.15];
  [(OKAutoLayoutTileMaker *)v80 setMaxFrameAspectRatio:3.0];
  [(OKAutoLayoutTileMaker *)v80 setMinFrameAspectRatio:0.5];
  [(OKAutoLayoutTileMaker *)v80 setOneUpWhitespaceAllowed:0.0];
  v64 = +[NSMutableDictionary dictionary];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = [v67 allKeys];
  v65 = [obj countByEnumeratingWithState:&v99 objects:v118 count:16];
  if (v65)
  {
    v63 = *v100;
    do
    {
      v17 = 0;
      do
      {
        if (*v100 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v66 = v17;
        v18 = *(*(&v99 + 1) + 8 * v17);
        [objc_msgSend(objc_msgSend(v67 objectForKeyedSubscript:{v18), "objectForKeyedSubscript:", @"sizeInPx", "CGSizeValue"}];
        v71 = v19;
        v21 = v20;
        v76 = [NSValue valueWithCGRect:0.0, 0.0];
        v70 = [objc_msgSend(objc_msgSend(v67 objectForKeyedSubscript:{v18), "objectForKeyedSubscript:", @"borderInPx", "integerValue"}];
        v85 = +[NSMutableDictionary dictionary];
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v77 = v18;
        v68 = [objc_msgSend(v67 objectForKeyedSubscript:{v18), "objectForKeyedSubscript:", @"tileSizes"}];
        v72 = [v68 countByEnumeratingWithState:&v95 objects:v117 count:16];
        if (v72)
        {
          v82 = 0;
          v22 = 0;
          v69 = *v96;
          do
          {
            v23 = 0;
            v24 = v22;
            do
            {
              if (*v96 != v69)
              {
                objc_enumerationMutation(v68);
              }

              v74 = v23;
              [*(*(&v95 + 1) + 8 * v23) CGSizeValue];
              v26 = v25;
              [(OKAutoLayoutTileMaker *)v80 setColumns:v27];
              [(OKAutoLayoutTileMaker *)v80 setRows:v26];
              v75 = [(OKAutoLayoutTileMaker *)v80 layoutsForFrames:v24 + 1 inRect:v70 borderInPx:0.0, 0.0, v71, v21];
              if (v24 > 5)
              {
                v28 = 1112014848;
              }

              else
              {
                v28 = dword_C10C[v24];
              }

              v93 = 0u;
              v94 = 0u;
              v91 = 0u;
              v92 = 0u;
              v81 = [v75 countByEnumeratingWithState:&v91 objects:v116 count:16];
              v73 = v24 + 1;
              if (v81)
              {
                v29 = 1;
                v78 = v24 + 1;
                v79 = *v92;
                do
                {
                  v30 = 0;
                  do
                  {
                    if (*v92 != v79)
                    {
                      objc_enumerationMutation(v75);
                    }

                    v83 = v30;
                    v31 = *(*(&v91 + 1) + 8 * v30);
                    v84 = v29;
                    v86 = [NSString stringWithFormat:@"%dUp_%@_%ldx%ld_%d", v78, v77, [(OKAutoLayoutTileMaker *)v80 columns], [(OKAutoLayoutTileMaker *)v80 rows], v29];
                    v115[0] = v86;
                    v114[0] = @"name";
                    v114[1] = @"baseScore";
                    LODWORD(v32) = v28;
                    v33 = [NSNumber numberWithFloat:v32];
                    v114[2] = @"screen rect";
                    v115[1] = v33;
                    v115[2] = v76;
                    v34 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:3]];
                    v35 = +[NSMutableArray array];
                    v87 = 0u;
                    v88 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    v36 = [v31 countByEnumeratingWithState:&v87 objects:v113 count:16];
                    if (v36)
                    {
                      v37 = v36;
                      LODWORD(v38) = 0;
                      v39 = *v88;
                      do
                      {
                        v40 = 0;
                        v38 = v38;
                        do
                        {
                          if (*v88 != v39)
                          {
                            objc_enumerationMutation(v31);
                          }

                          v41 = *(*(&v87 + 1) + 8 * v40);
                          [v35 addObject:{objc_msgSend(&off_119E8, "objectAtIndexedSubscript:", v38)}];
                          v112[0] = v41;
                          v111[0] = @"rect";
                          v111[1] = @"animateSettings";
                          v112[1] = +[NSMutableDictionary dictionary];
                          -[NSMutableDictionary setObject:forKey:](v34, "setObject:forKey:", +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v112, v111, 2), [&off_119E8 objectAtIndexedSubscript:v38++]);
                          v40 = v40 + 1;
                        }

                        while (v37 != v40);
                        v37 = [v31 countByEnumeratingWithState:&v87 objects:v113 count:16];
                      }

                      while (v37);
                      v42 = v38 == 1;
                    }

                    else
                    {
                      v42 = 0;
                    }

                    [(NSMutableDictionary *)v34 setObject:v35 forKey:@"appearOrder"];
                    [v85 setObject:v34 forKey:v86];
                    if ((v82 & 0x100000000) == 0 && v42)
                    {
                      [objc_msgSend(v31 objectAtIndexedSubscript:{0), "CGRectValue"}];
                      v126.size.height = v43 / 3.0;
                      v126.origin.y = v44 + v126.size.height * 2.0;
                      v127 = CGRectInset(v126, 10.0, 0.0);
                      x = v127.origin.x;
                      y = v127.origin.y;
                      width = v127.size.width;
                      height = v127.size.height;
                      v49 = [NSMutableArray arrayWithArray:v35];
                      [(NSMutableArray *)v49 addObject:@"titleText1"];
                      v50 = [NSMutableDictionary dictionaryWithDictionary:v34];
                      v109[0] = @"rect";
                      v110[0] = [NSValue valueWithCGRect:x, y, width, height];
                      v109[1] = @"animateSettings";
                      v51 = +[NSMutableDictionary dictionary];
                      v109[2] = @"isTitle";
                      v110[1] = v51;
                      v110[2] = &__kCFBooleanTrue;
                      [(NSMutableDictionary *)v50 setObject:[NSDictionary forKey:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v110 forKeys:v109 count:3], @"titleText1"];
                      [(NSMutableDictionary *)v50 setObject:v49 forKey:@"appearOrder"];
                      [(NSMutableDictionary *)v50 setObject:[(NSString *)v86 stringByAppendingString:@"_Title"] forKey:@"name"];
                      [v85 setObject:v50 forKey:{-[NSString stringByAppendingString:](v86, "stringByAppendingString:", @"_Title"}];
                      BYTE4(v82) = 1;
                    }

                    if (v42 & ~v82)
                    {
                      [objc_msgSend(v31 objectAtIndexedSubscript:{0), "CGRectValue"}];
                      v128.size.height = v52 / 3.0;
                      v128.origin.y = v53 + v128.size.height * 2.0;
                      v129 = CGRectInset(v128, 10.0, 0.0);
                      v54 = v129.origin.x;
                      v55 = v129.origin.y;
                      v56 = v129.size.width;
                      v57 = v129.size.height;
                      v58 = [NSMutableArray arrayWithArray:v35];
                      [(NSMutableArray *)v58 addObject:@"subtitleText1"];
                      v59 = [NSMutableDictionary dictionaryWithDictionary:v34];
                      v107[0] = @"rect";
                      v108[0] = [NSValue valueWithCGRect:v54, v55, v56, v57];
                      v107[1] = @"animateSettings";
                      v60 = +[NSMutableDictionary dictionary];
                      v107[2] = @"isSubtitle";
                      v108[1] = v60;
                      v108[2] = &__kCFBooleanTrue;
                      [(NSMutableDictionary *)v59 setObject:[NSDictionary forKey:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v108 forKeys:v107 count:3], @"subtitleText1"];
                      [(NSMutableDictionary *)v59 setObject:v58 forKey:@"appearOrder"];
                      [(NSMutableDictionary *)v59 setObject:[(NSString *)v86 stringByAppendingString:@"_Subtitle"] forKey:@"name"];
                      [v85 setObject:v59 forKey:{-[NSString stringByAppendingString:](v86, "stringByAppendingString:", @"_Subtitle"}];
                      LODWORD(v82) = 1;
                    }

                    v29 = (v84 + 1);
                    v30 = v83 + 1;
                  }

                  while ((v83 + 1) != v81);
                  v81 = [v75 countByEnumeratingWithState:&v91 objects:v116 count:16];
                }

                while (v81);
              }

              v22 = v73;
              v23 = v74 + 1;
              v24 = v73;
            }

            while ((v74 + 1) != v72);
            v72 = [v68 countByEnumeratingWithState:&v95 objects:v117 count:16];
          }

          while (v72);
        }

        [v64 setObject:v85 forKey:v77];
        v17 = v66 + 1;
      }

      while ((v66 + 1) != v65);
      v65 = [obj countByEnumeratingWithState:&v99 objects:v118 count:16];
    }

    while (v65);
  }

  qword_15A00 = v64;

  return v64;
}

- (id)_configPanoramaSettings:(id)a3 panDuration:(double)a4
{
  [a3 aspectRatio];
  if (v6 < 2.0 && v6 > 0.5)
  {
    return 0;
  }

  v8 = +[NSMutableDictionary dictionary];
  v17 = [NSMutableDictionary dictionaryWithDictionary:&off_11920];
  [v8 setObject:@"fullMediaFill" forKey:@"panningType"];
  [v8 setObject:&__kCFBooleanFalse forKey:@"autoplay"];
  [v8 setObject:&off_11A30 forKey:@"speedMitigator"];
  +[OKAutoLayout panningCropThreshold];
  [v8 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"panningCropThreshold"}];
  if ([a3 hasRegionsOfInterest])
  {
    v9 = [a3 regionsOfInterest];
    v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      v14 = kOKMediaItemMetadataRegionOfInterestBounds;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v16 = [*(*(&v19 + 1) + 8 * v15) objectForKeyedSubscript:v14];
          if (v16)
          {
            [v10 addObject:v16];
          }

          v15 = v15 + 1;
        }

        while (v12 != v15);
        v12 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [v8 setObject:v10 forKey:@"mediaItemRegionsOfInterest"];
  }

  [v8 setObject:kCAMediaTimingFunctionEaseInEaseOut forKey:@"timingFunction"];
  [a3 aspectRatio];
  [v8 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"mediaItemAspectRatio"}];
  if (a4 >= 0.0)
  {
    [v8 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", a4), @"duration"}];
  }

  [(NSMutableDictionary *)v17 setObject:v8 forKey:@"settings"];
  return v17;
}

- (id)_configPageWidgetsSettings:(id)a3 mediaItemMediaAttributes:(id)a4 textItems:(id)a5 pageItems:(id)a6 pageInfo:(id)a7 properties:(id)a8 progressBlock:(id)a9 error:(id *)a10
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v16 = [NSMutableDictionary dictionary:a3];
  v17 = [a7 objectForKey:@"primary resolution"];
  v18 = a7;
  v19 = self;
  v69 = [v18 objectForKey:@"all layouts"];
  v20 = [v69 objectForKey:v17];
  [(OpusMagazineProducer *)self _addAnimationsToLayout:v20];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [a6 objectEnumerator];
  v65 = [obj countByEnumeratingWithState:&v77 objects:v83 count:16];
  if (v65)
  {
    v72 = 0;
    v21 = @"\nfunction animations () {\n";
    v22 = &stru_10CB0;
    v64 = *v78;
    v61 = v12;
    v62 = v16;
    v59 = v14;
    v60 = v13;
    v57 = v20;
    v58 = self;
    while (1)
    {
      for (i = 0; i != v65; i = i + 1)
      {
        if (*v78 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v77 + 1) + 8 * i);
        if ([v24 hasPrefix:@"media"])
        {
          v66 = v22;
          v67 = v21;
          v25 = [v14 objectForKeyedSubscript:v24];
          v26 = [v25 metadata];
          v27 = [v13 objectForKeyedSubscript:v24];
          if (v27)
          {
            [v27 offset];
            [v16 setObject:+[NSValue valueWithCGPoint:](NSValue forKey:{"valueWithCGPoint:"), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", v24, @"offset"}];
          }

          [v16 setObject:objc_msgSend(objc_msgSend(v25 forKey:{"uniqueURL"), "absoluteString"), objc_msgSend(v24, "stringByAppendingString:", @".url"}];
          [v26 aspectRatio];
          v29 = v28;
          if ([v26 type] != &dword_0 + 3)
          {
            pageDurations = v19->_pageDurations;
            if (pageDurations)
            {
              v31 = [(NSMutableArray *)pageDurations objectAtIndexedSubscript:v19->_pageDurationsIndex];
              if ([v31 itemDurations])
              {
                [objc_msgSend(objc_msgSend(v31 "itemDurations")];
                v33 = v32;
              }

              else
              {
                v33 = 0.0;
              }
            }

            else
            {
              v33 = -1.0;
            }

            v36 = [(OpusMagazineProducer *)v19 _configPanoramaSettings:v26 panDuration:v33];
            if (v36)
            {
              v82 = v36;
              [v16 setObject:+[NSArray arrayWithObjects:count:](NSArray forKey:{"arrayWithObjects:count:", &v82, 1), objc_msgSend(v24, "stringByAppendingString:", @".contentEffects"}];
              if (v33 > 0.0)
              {
                [v16 setObject:&__kCFBooleanFalse forKey:{objc_msgSend(v24, "stringByAppendingString:", @".editable"}];
                [v16 removeObjectForKey:{objc_msgSend(v24, "stringByAppendingString:", @".offset"}];
                [v16 removeObjectForKey:{objc_msgSend(v24, "stringByAppendingString:", @".scale"}];
              }
            }
          }

          v22 = v66;
          if (![-[OpusMagazineProducer presentation](v19 "presentation")])
          {
            goto LABEL_39;
          }

          v37 = v24;
          v70 = +[NSMutableDictionary dictionary];
          v71 = +[NSMutableDictionary dictionary];
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v68 = [v69 allKeys];
          v38 = [v68 countByEnumeratingWithState:&v73 objects:v81 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v74;
            v41 = v29;
            do
            {
              for (j = 0; j != v39; j = j + 1)
              {
                if (*v74 != v40)
                {
                  objc_enumerationMutation(v68);
                }

                v43 = *(*(&v73 + 1) + 8 * j);
                [objc_msgSend(objc_msgSend(objc_msgSend(v69 objectForKey:{v43), "objectForKey:", v37), "objectForKey:", @"rect", "CGRectValue"}];
                v46 = v44 / v45;
                v47 = v44 / v45;
                *&v46 = v47;
                *&v48 = v41;
                [OKAutoLayout croppedPercentageforRectASP:v46 photoASP:v48];
                v50 = v49 * 100.0;
                v51 = v50;
                *&v50 = v47;
                v52 = [OKAutoLayout needsPanoramaEffectForRectASP:v50 mediaASP:COERCE_DOUBLE(LODWORD(v41) | 0x4059000000000000)];
                [v70 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"  #%@\n  %@%@ cropped", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v72 + 1), +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", v51), @"%", v43}];
                v53 = @"{0,1,0,0.9}";
                if (v51 > 19)
                {
                  v53 = @"{1,0.85,0.15,0.9}";
                }

                if (v52)
                {
                  v54 = @"{1,0,0,0.9}";
                }

                else
                {
                  v54 = v53;
                }

                [v71 setObject:v54 forKey:v43];
              }

              v39 = [v68 countByEnumeratingWithState:&v73 objects:v81 count:16];
            }

            while (v39);
          }

          v24 = v37;
          v16 = v62;
          [v62 setObject:v70 forKey:{objc_msgSend(v37, "stringByAppendingString:", @".croppedText.@text"}];
          v35 = @".croppedText.@textColor";
          v13 = v60;
          v12 = v61;
          v19 = v58;
          v14 = v59;
          v20 = v57;
          v22 = v66;
          v34 = v71;
        }

        else
        {
          if (![v12 objectForKey:v24])
          {
            continue;
          }

          v67 = v21;
          v34 = [v12 objectForKeyedSubscript:v24];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = @".attributedText";
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_39;
            }

            [v16 setObject:v34 forKey:{objc_msgSend(v24, "stringByAppendingString:", @".text"}];
            if (![objc_msgSend(v20 objectForKey:{v24), "objectForKey:", @"textColor"}])
            {
              goto LABEL_39;
            }

            v34 = [objc_msgSend(v20 objectForKey:{v24), "objectForKey:", @"textColor"}];
            v35 = @".textColor";
          }
        }

        [v16 setObject:v34 forKey:{objc_msgSend(v24, "stringByAppendingString:", v35)}];
LABEL_39:
        v55 = [objc_msgSend(v20 objectForKey:{v24), "objectForKey:", @"animateSettings"}];
        v21 = -[__CFString stringByAppendingString:](v67, "stringByAppendingString:", [v55 objectForKey:@"willScript"]);
        v22 = -[__CFString stringByAppendingString:](v22, "stringByAppendingString:", [v55 objectForKey:@"didScript"]);
        [v55 removeAllObjects];
        ++v72;
      }

      v65 = [obj countByEnumeratingWithState:&v77 objects:v83 count:16];
      if (!v65)
      {
        goto LABEL_44;
      }
    }
  }

  v21 = @"\nfunction animations () {\n";
  v22 = &stru_10CB0;
LABEL_44:
  [v16 setObject:objc_msgSend(objc_msgSend(-[__CFString stringByAppendingString:](v21 forKey:{"stringByAppendingString:", @"} if (info.animated) { OKWidgetView.animate(0, 0, null, animations, function(finished) {\n\n"), "stringByAppendingString:", v22), "stringByAppendingString:", @"}); }\n", @"willAppearActionScript"}];
  [v16 setObject:@"page.data = null;" forKey:@"didAppearActionScript"];
  return v16;
}

- (BOOL)_authorBootstrap:(id)a3 progressBlock:(id)a4 error:(id *)a5
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ([objc_msgSend(-[OpusMagazineProducer presentation](self presentation])
  {
    if ([objc_msgSend(objc_msgSend(-[OpusMagazineProducer presentation](self "presentation")])
    {
      v8 = v15;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v9 = sub_5B3C;
    }

    else
    {
      v8 = v14;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v9 = sub_5BA4;
    }
  }

  else
  {
    v8 = &v12;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v9 = sub_5C0C;
  }

  v8[2] = v9;
  v8[3] = &unk_10340;
  v8[4] = a4;
  v8[5] = &v16;
  [(OpusMagazineProducer *)self cleanupPresentation:v12, v13];
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
  v10 = 0;
  if (a4)
  {
    (*(a4 + 2))(a4, &v10, 0.5);
    [objc_msgSend(a3 "audioList")];
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

- (BOOL)_authorProduce:(id)a3 progressBlock:(id)a4 error:(id *)a5
{
  v26 = 0;
  v8 = [-[OpusMagazineProducer presentation](self presentation];
  if (v8)
  {
    v9 = [v8 mediaItemsAtIndexes:{+[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, objc_msgSend(v8, "numberOfMediaItems"))}];
  }

  else
  {
    v9 = [-[OpusMagazineProducer presentation](self "presentation")];
  }

  v10 = v9;
  self->_synopsisGroups = objc_alloc_init(NSMutableArray);
  [(OpusMagazineProducer *)self _initCouchPotatoSettings];
  [(OpusMagazineProducer *)self _initNavigatorSettings];
  v11 = +[NSMutableDictionary dictionary];
  v12 = [(OpusMagazineProducer *)self _setupResolutions:v11];
  [(OpusMagazineProducer *)self _initTemplatesAndScript:v11];
  v13 = [(OpusMagazineProducer *)self _allLayoutsFromTileEngine:v11];
  v14 = [[OKAutoLayout alloc] initWithPresentation:[(OpusMagazineProducer *)self presentation]];
  [(OKAutoLayout *)v14 setAllowMovieWithPhotos:1];
  v15 = [(OKAutoLayout *)v14 generatePagesByMediaItems:v10 layoutsByResolution:v13 primaryResolutionKey:v12];
  [(OpusMagazineProducer *)self _initDurationsForPageInfos:v15];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(OpusMagazineProducer *)self _addPageWithPageInfo:*(*(&v22 + 1) + 8 * i) primaryResolutionKey:v12 progressBlock:0 error:0];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v17);
  }

  if (v14)
  {
  }

  if (a4)
  {
    (*(a4 + 2))(a4, &v26, 0.9);
    v20 = v26;
    if (a5 && (v26 & 1) != 0)
    {
      *a5 = [NSError errorWithDomain:OKErrorDomain code:-4 userInfo:0];
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  return (v20 & 1) == 0;
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
  [-[OpusMagazineProducer presentation](self "presentation")];
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

- (BOOL)author:(BOOL)a3 progressBlock:(id)a4 requiresProducer:(BOOL *)a5 error:(id *)a6
{
  v9 = a3;
  v11 = objc_alloc_init(OpusMagazineProducerContext);
  self->_randomSeed = random();
  if ([(OpusMagazineProducer *)self _authorBootstrap:v11 progressBlock:a4 error:a6]&& [(OpusMagazineProducer *)self _authorCluster:v11 progressBlock:a4 error:a6]&& (!v9 || [(OpusMagazineProducer *)self _authorImport:v11 progressBlock:a4 error:a6]) && [(OpusMagazineProducer *)self _authorProduce:v11 progressBlock:a4 error:a6]&& [(OpusMagazineProducer *)self _authorFinish:v11 progressBlock:a4 error:a6])
  {
    *a5 = !v9;

    return !a6 || *a6 == 0;
  }

  else
  {

    return 0;
  }
}

- (void)_initTemplatesAndScript:(id)a3
{
  [-[OpusMagazineProducer presentation](self "presentation")];
  v5 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v14 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [objc_msgSend(a3 objectForKeyedSubscript:{v10), "CGSizeValue"}];
        [v5 setObject:+[NSValue valueWithCGRect:](NSValue forKey:{"valueWithCGRect:", 0.0, 0.0, v11, v12), v10}];
      }

      v7 = [a3 countByEnumeratingWithState:&v14 objects:v27 count:16];
    }

    while (v7);
  }

  if ([-[OpusMagazineProducer presentation](self "presentation")])
  {
    v25[0] = @"fontName";
    v25[1] = @"fontSize";
    v26[0] = @"Avenir-Black";
    v26[1] = &off_11A70;
    v25[2] = @"textColor";
    v25[3] = @"textAlignment";
    v26[2] = @"{1,0,0,0.9}";
    v26[3] = @"center";
    v25[4] = @"numberOfLines";
    v25[5] = @"lineBreakMode";
    v26[4] = &off_11A88;
    v26[5] = @"truncatingTail";
    v25[6] = @"adjustsFontSizeToFitWidth";
    v25[7] = @"minimumScaleFactor";
    v26[6] = &__kCFBooleanTrue;
    v26[7] = &off_11A40;
    v25[8] = @"textShadowOffset";
    v26[8] = [NSValue valueWithCGSize:1.0, 1.0];
    v25[9] = @"textShadowColor";
    v26[9] = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.67];
    v25[10] = @"frame";
    v26[10] = [NSValue valueWithCGRect:0.0, 0.0, 80.0, 50.0];
    v24 = [OKPresentationWidget widgetWithName:@"croppedText" templateName:0 className:@"OKWidgetLabelView" settings:[NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:11] userData:0 subWidgets:0 materials:0];
    v13 = [NSArray arrayWithObjects:&v24 count:1];
  }

  else
  {
    v13 = 0;
  }

  v22[0] = @"@frame";
  v22[1] = @"backgroundColor";
  v23[0] = v5;
  v23[1] = @"{0.94,0.94,0.94,1}";
  [-[OpusMagazineProducer presentation](self "presentation")];
  [-[OpusMagazineProducer presentation](self "presentation")];
  [-[OpusMagazineProducer presentation](self "presentation")];
  v20[0] = @"fontName";
  v20[1] = @"fontSize";
  v21[0] = @"Avenir-Black";
  v21[1] = &off_11A50;
  v20[2] = @"textColor";
  v20[3] = @"textAlignment";
  v21[2] = @"{1,1,1,0.9}";
  v21[3] = @"center";
  v20[4] = @"numberOfLines";
  v20[5] = @"lineBreakMode";
  v21[4] = &off_11A88;
  v21[5] = @"truncatingTail";
  v21[6] = &off_11A40;
  v20[6] = @"minimumScaleFactor";
  v20[7] = @"textShadowOffset";
  v21[7] = [NSValue valueWithCGSize:1.0, 1.0];
  v20[8] = @"textShadowColor";
  v21[8] = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.67];
  [-[OpusMagazineProducer presentation](self "presentation")];
  v18[0] = @"fontName";
  v18[1] = @"fontSize";
  v19[0] = @"DINAlternate-Bold";
  v19[1] = &off_11A50;
  v18[2] = @"textColor";
  v18[3] = @"textAlignment";
  v19[2] = @"{1,1,1,0.9}";
  v19[3] = @"center";
  v18[4] = @"numberOfLines";
  v18[5] = @"lineBreakMode";
  v19[4] = &off_11A88;
  v19[5] = @"truncatingTail";
  v19[6] = &off_11A40;
  v18[6] = @"minimumScaleFactor";
  v18[7] = @"textShadowOffset";
  v19[7] = [NSValue valueWithCGSize:1.0, 1.0];
  v18[8] = @"textShadowColor";
  v19[8] = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.67];
  [-[OpusMagazineProducer presentation](self "presentation")];
}

- (void)_initCouchPotatoSettings
{
  [objc_msgSend(-[OpusMagazineProducer presentation](self "presentation")];
  [objc_msgSend(-[OpusMagazineProducer presentation](self "presentation")];
  [objc_msgSend(-[OpusMagazineProducer presentation](self "presentation")];
  v3 = [OKPresentationCouchStep couchStepWithAnchorPageName:@"page1" script:@"document.mainNavigator.goToNext();" duration:&__NSDictionary0__struct settings:0.5];
  [(OKPresentationCouchStep *)v3 setDependencies:&off_11A00];
  v4 = [OKPresentationCouch couchWithName:kOKPresentationRootNavigatorName settings:&__NSDictionary0__struct steps:0 restartScript:@"document.mainNavigator.navigateToPage('page1', true, info.completionBlock);"];
  [(OKPresentationCouch *)v4 setLoopStep:v3];
  v5 = [(OpusMagazineProducer *)self presentation];

  [v5 addCouch:v4];
}

- (void)_initNavigatorSettings
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [-[OpusMagazineProducer presentation](self "presentation")];
  if ([v4 count])
  {
    v14 = v3;
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v15 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v23 = @"url";
          v24 = [objc_msgSend(v10 "uniqueURL")];
          [v5 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v24, &v23, 1)}];
          [objc_msgSend(v10 "metadata")];
          self->_audioPlaylistDuration = v11 + self->_audioPlaylistDuration;
        }

        v7 = [v4 countByEnumeratingWithState:&v15 objects:v25 count:16];
      }

      while (v7);
    }

    v3 = v14;
    [v14 setObject:v5 forKeyedSubscript:@"audioPlaylist"];
    if ([-[OpusMagazineProducer presentation](self "presentation")])
    {
      v12 = &__kCFBooleanFalse;
    }

    else
    {
      v12 = &__kCFBooleanTrue;
    }

    [v14 setObject:v12 forKeyedSubscript:@"audioPlaylistLoops"];
  }

  [v3 setObject:@"     pageName = info.keyPath.slice(0 forKeyedSubscript:{info.keyPath.indexOf(.));     navigator.navigateToPage(pageName, info.animated, 0);     /*\tnavigator.pages[pageName].navigationScript(info.keyPath.slice(info.keyPath.indexOf(.) + 1, -1)); */     ", @"navigationScript"}];
  v21[1] = @"settings";
  v22[0] = @"OKTransitionFade";
  v21[0] = @"class";
  v19 = @"duration";
  v20 = [NSNumber numberWithDouble:self->_transitionDuration];
  v22[1] = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [v3 setObject:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v22, v21, 2), @"defaultTransition"}];
  [v3 setObject:&off_119C0 forKeyedSubscript:@"overrideTransition"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"wraps"];
  v13 = [-[OpusMagazineProducer presentation](self "presentation")];
  if (v13)
  {
    [v3 setObject:v13 forKeyedSubscript:@"interactiveTransitionSettings"];
  }

  [-[OpusMagazineProducer presentation](self "presentation")];
}

- (float)_croppedFractionforRectAspectRatio:(float)a3 photoAspectRatio:(float)a4
{
  if (a4 >= a3)
  {
    return (a4 - a3) / a4;
  }

  else
  {
    return (1.0 / a4 - 1.0 / a3) / (1.0 / a4);
  }
}

- (void)_initDurationsForPageInfos:(id)a3
{
  v4 = self;
  [-[OpusMagazineProducer presentation](self "presentation")];
  v6 = v5;
  if (v5 != -1.0)
  {
    v65 = [-[OpusMagazineProducer presentation](v4 "presentation")];
    v7 = objc_alloc_init(NSMutableArray);
    v8 = objc_alloc_init(NSMutableArray);
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = a3;
    v66 = v4;
    v69 = v7;
    v62 = v8;
    v63 = [a3 countByEnumeratingWithState:&v75 objects:v80 count:16];
    if (!v63)
    {
      goto LABEL_41;
    }

    v61 = *v76;
    if (v6 <= 2.0)
    {
      v9 = v6;
    }

    else
    {
      v9 = 2.0;
    }

    do
    {
      for (i = 0; i != v63; i = v36 + 1)
      {
        if (*v76 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v64 = i;
        v11 = *(*(&v75 + 1) + 8 * i);
        v12 = [v11 objectForKey:@"mediaItemsDict"];
        v13 = [v11 objectForKeyedSubscript:@"allItems"];
        v14 = objc_alloc_init(NSMutableDictionary);
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v15 = [v13 countByEnumeratingWithState:&v71 objects:v79 count:16];
        v67 = v14;
        if (v15)
        {
          v16 = v15;
          v17 = *v72;
          do
          {
            v18 = 0;
            do
            {
              if (*v72 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v19 = *(*(&v71 + 1) + 8 * v18);
              v20 = [objc_msgSend(v12 objectForKeyedSubscript:{v19), "metadata"}];
              if (v20)
              {
                v21 = v20;
                if ([v20 type] == &dword_0 + 3)
                {
                  v22 = v69;
                  v14 = v67;
                  -[NSNumber setObject:forKeyedSubscript:](v67, "setObject:forKeyedSubscript:", +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v69 count]), v19);
                  [v21 duration];
                  v23 = [OFRescalableSegment nonRescalableSegmentWithDuration:?];
LABEL_17:
                  [v22 addObject:v23];
                  goto LABEL_23;
                }

                v24 = [objc_msgSend(v11 objectForKey:{@"all layouts", "objectForKey:", objc_msgSend(v11, "objectForKey:", @"primary resolution"}];
                [v21 aspectRatio];
                if (v25 >= 2.0 || v25 <= 0.5)
                {
                  v27 = v25;
                  [objc_msgSend(objc_msgSend(v24 objectForKeyedSubscript:{v19), "objectForKeyedSubscript:", @"rect", "CGRectValue"}];
                  v30 = v28 / v29;
                  *&v30 = v28 / v29;
                  *&v31 = v27;
                  [(OpusMagazineProducer *)v66 _croppedFractionforRectAspectRatio:v30 photoAspectRatio:v31];
                  LODWORD(v27) = v32;
                  +[OKAutoLayout panningCropThreshold];
                  if (*&v27 >= v33)
                  {
                    v22 = v69;
                    -[NSNumber setObject:forKeyedSubscript:](v14, "setObject:forKeyedSubscript:", +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v69 count]), v19);
                    if (v65)
                    {
                      v23 = [OFRescalableSegment lessRescalableSegmentWithDefaultDuration:v6 minimumDuration:v6 * 0.5];
                    }

                    else
                    {
                      v23 = [OFRescalableSegment lessRescalableSegmentWithDefaultDuration:v6 minimumDuration:v6 * 0.5 maximumDuration:v6 + v6];
                    }

                    goto LABEL_17;
                  }
                }
              }

LABEL_23:
              v18 = v18 + 1;
            }

            while (v16 != v18);
            v34 = [v13 countByEnumeratingWithState:&v71 objects:v79 count:16];
            v16 = v34;
          }

          while (v34);
        }

        v4 = v66;
        v8 = v62;
        if ([(NSNumber *)v14 count])
        {
          v35 = -1;
          v7 = v69;
          v36 = v64;
        }

        else
        {
          v7 = v69;
          v35 = [v69 count];
          if (v65)
          {
            v37 = [OFRescalableSegment rescalableSegmentWithDefaultDuration:v6 minimumDuration:v9];
          }

          else
          {
            v37 = [OFRescalableSegment rescalableSegmentWithDefaultDuration:v6 minimumDuration:v9 maximumDuration:v6 * 5.0];
          }

          v36 = v64;
          [v69 addObject:v37];
        }

        [v7 addObject:{+[OFRescalableSegment nonRescalableSegmentWithDuration:](OFRescalableSegment, "nonRescalableSegmentWithDuration:", v66->_transitionDuration)}];
        v38 = [(NSNumber *)v67 count];
        v39 = v67;
        if (!v38)
        {
          v39 = [NSNumber numberWithInteger:v35];
        }

        [v62 addObject:v39];
        if (v67)
        {
        }
      }

      v63 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
    }

    while (v63);
LABEL_41:
    v40 = malloc_type_malloc(8 * [v7 count], 0x100004000313F17uLL);
    if ([v7 count])
    {
      [-[OpusMagazineProducer presentation](v4 "presentation")];
      v42 = v41;
      v43 = [[OFRescaler alloc] initWithSegments:v7];
      [v43 defaultDuration];
      if (!v65 || (audioPlaylistDuration = v4->_audioPlaylistDuration, audioPlaylistDuration <= 0.0))
      {
        audioPlaylistDuration = v44;
        if (v42 > -1.0)
        {
          [v43 minimumDuration];
          v47 = v46;
          [v43 maximumDuration];
          v49 = v48;
          [v43 minimumDuration];
          audioPlaylistDuration = v47 + v42 * (v49 - v50);
        }
      }

      [v43 computeSegmentDurations:v40 forTotalDuration:audioPlaylistDuration];
      v52 = v51;
      [-[OpusMagazineProducer presentation](v4 "presentation")];
      v53 = [(OpusMagazineProducer *)v4 presentation];
      [v43 minimumDuration];
      [v53 addGuideline:{+[OKPresentationGuideline guidelineAuthoringMinimumDuration:](OKPresentationGuideline, "guidelineAuthoringMinimumDuration:")}];
      v54 = [(OpusMagazineProducer *)v4 presentation];
      if ((v65 & 1) == 0)
      {
        [v43 maximumDuration];
        v52 = v55;
      }

      v68 = v43;
      [v54 addGuideline:{+[OKPresentationGuideline guidelineAuthoringMaximumDuration:](OKPresentationGuideline, "guidelineAuthoringMaximumDuration:", v52)}];
      v4->_pageDurations = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
      if ([v8 count])
      {
        for (j = 0; j < [v8 count]; ++j)
        {
          v57 = [v8 objectAtIndexedSubscript:j];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v58 = objc_alloc_init(OpusMagazinePageItemDurations);
            v59 = objc_alloc_init(NSMutableDictionary);
            v70[0] = _NSConcreteStackBlock;
            v70[1] = 3221225472;
            v70[2] = sub_753C;
            v70[3] = &unk_10368;
            v70[4] = v59;
            v70[5] = v40;
            [v57 enumerateKeysAndObjectsUsingBlock:v70];
            [(OpusMagazinePageItemDurations *)v58 setItemDurations:v59];
            if (v59)
            {
            }

            v8 = v62;
            if (!v58)
            {
              continue;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v58 = objc_alloc_init(OpusMagazinePageItemDurations);
            -[OpusMagazinePageItemDurations setPageDuration:](v58, "setPageDuration:", v40[[v57 integerValue]]);
            if (!v58)
            {
              continue;
            }
          }

          [(NSMutableArray *)v66->_pageDurations addObject:v58];
        }
      }

      v7 = v69;
      if (v68)
      {
      }
    }

    free(v40);
    if (v8)
    {
    }

    if (v7)
    {
    }
  }
}

- (BOOL)needsLiveAuthoring
{
  objc_sync_enter(self);
  v3 = [(OKAutoLayout *)self->_autoLayoutEngine liveFeedNumOfMediasUsed];
  v4 = [objc_msgSend(-[OpusMagazineProducer presentation](self "presentation")];
  objc_sync_exit(self);
  if (v3 >= v4)
  {
    [(OpusMagazineProducer *)self resetLiveAuthoring];
  }

  return v3 < v4;
}

- (BOOL)resetLiveAuthoring
{
  objc_sync_enter(self);
  [(OKAutoLayout *)self->_autoLayoutEngine endFeed];
  autoLayoutEngine = self->_autoLayoutEngine;
  if (autoLayoutEngine)
  {

    self->_autoLayoutEngine = 0;
  }

  objc_sync_exit(self);
  return 0;
}

- (BOOL)liveAuthorInitialBootstrap:(id)a3 error:(id *)a4
{
  v9 = 0;
  [objc_msgSend(-[OpusMagazineProducer presentation](self "presentation")];
  [(OpusMagazineProducer *)self _initCouchPotatoSettings];
  if (a3)
  {
    (*(a3 + 2))(a3, &v9, 0.6);
    if (v9 == 1)
    {
      if (a4)
      {
LABEL_4:
        v7 = [NSError errorWithDomain:OKErrorDomain code:-4 userInfo:0];
        result = 0;
        *a4 = v7;
        return result;
      }

      return 0;
    }

    [(OpusMagazineProducer *)self _initNavigatorSettings];
    (*(a3 + 2))(a3, &v9, 1.0);
    if (v9)
    {
      if (a4)
      {
        goto LABEL_4;
      }

      return 0;
    }
  }

  else
  {
    [(OpusMagazineProducer *)self _initNavigatorSettings];
  }

  return 1;
}

- (id)liveAuthorNextChunk:(id)a3 error:(id *)a4
{
  objc_sync_enter(self);
  if (!self->_autoLayoutEngine)
  {
    v7 = +[NSMutableDictionary dictionary];
    v8 = [(OpusMagazineProducer *)self _setupResolutions:v7];
    [(OpusMagazineProducer *)self _initTemplatesAndScript:v7];
    v9 = [(OpusMagazineProducer *)self _allLayoutsFromTileEngine:v7];
    v10 = [[OKAutoLayout alloc] initWithPresentation:[(OpusMagazineProducer *)self presentation]];
    self->_autoLayoutEngine = v10;
    [(OKAutoLayout *)v10 setAllowMovieWithPhotos:1];
    [(OKAutoLayout *)self->_autoLayoutEngine startFeedWith:v9 primaryResolutionKey:v8];
  }

  v11 = [-[OpusMagazineProducer presentation](self "presentation")];
  if ([(OKAutoLayout *)self->_autoLayoutEngine liveFeedNumOfMediasUsed]< 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = [(OKAutoLayout *)self->_autoLayoutEngine liveFeedNumOfMediasUsed]- 1;
  }

  v13 = [(OKAutoLayout *)self->_autoLayoutEngine liveFeedNumOfMediasUsed];
  autoLayoutEngine = self->_autoLayoutEngine;
  if (v13)
  {
    v15 = [v11 numberOfMediaItems];
    if (v15 + ~v12 >= 6)
    {
      v16 = 6;
    }

    else
    {
      v16 = v15 + ~v12;
    }

    v17 = -[OKAutoLayout generateNextPagesByMediaItems:maxPages:isFirstPage:](autoLayoutEngine, "generateNextPagesByMediaItems:maxPages:isFirstPage:", [v11 mediaItemsAtIndexes:{+[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v12 + 1, v16)}], 1, 0);
    if ([v17 count])
    {
      -[OpusMagazineProducer _addPageWithPageInfo:primaryResolutionKey:progressBlock:error:](self, "_addPageWithPageInfo:primaryResolutionKey:progressBlock:error:", [v17 objectAtIndexedSubscript:0], -[OKAutoLayout liveFeedPrimaryResolutionKey](self->_autoLayoutEngine, "liveFeedPrimaryResolutionKey"), a3, a4);
    }
  }

  else
  {
    v19 = [v11 numberOfMediaItems];
    if (v19 >= 0xC)
    {
      v20 = 12;
    }

    else
    {
      v20 = v19;
    }

    v21 = -[OKAutoLayout generateNextPagesByMediaItems:maxPages:isFirstPage:](autoLayoutEngine, "generateNextPagesByMediaItems:maxPages:isFirstPage:", [v11 mediaItemsAtIndexes:{+[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, v20)}], 2, 1);
    for (i = 0; [v21 count] > i; ++i)
    {
      -[OpusMagazineProducer _addPageWithPageInfo:primaryResolutionKey:progressBlock:error:](self, "_addPageWithPageInfo:primaryResolutionKey:progressBlock:error:", [v21 objectAtIndexedSubscript:i], -[OKAutoLayout liveFeedPrimaryResolutionKey](self->_autoLayoutEngine, "liveFeedPrimaryResolutionKey"), a3, a4);
    }
  }

  objc_sync_exit(self);
  return &off_11A18;
}

- (unint64_t)totalNumberOfLiveAuthoringItems
{
  objc_sync_enter(self);
  v3 = [objc_msgSend(-[OpusMagazineProducer presentation](self "presentation")];
  objc_sync_exit(self);
  return v3;
}

- (float)currentLiveAuthoringProgress
{
  objc_sync_enter(self);
  v3 = [(OKAutoLayout *)self->_autoLayoutEngine liveFeedNumOfMediasUsed];
  v4 = v3 / [objc_msgSend(-[OpusMagazineProducer presentation](self "presentation")];
  objc_sync_exit(self);
  return v4;
}

- (float)liveAuthoringProgressForMediaItem:(id)a3
{
  objc_sync_enter(self);
  v5 = [objc_msgSend(-[OpusMagazineProducer presentation](self "presentation")];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 9.2234e18;
  }

  else
  {
    v6 = (v5 + 1) / [objc_msgSend(-[OpusMagazineProducer presentation](self "presentation")];
  }

  objc_sync_exit(self);
  return v6;
}

- (BOOL)_addPageWithPageInfo:(id)a3 primaryResolutionKey:(id)a4 progressBlock:(id)a5 error:(id *)a6
{
  v10 = [objc_msgSend(objc_msgSend(-[OpusMagazineProducer presentation](self "presentation")];
  v11 = [NSString stringWithFormat:@"page%ld", v10 + 1];
  v12 = [NSString stringWithFormat:@"\ndocument.mainNavigator.navigateToNext();"];
  v13 = [a3 objectForKey:@"primary resolution"];
  v83 = [a3 objectForKey:@"all layouts"];
  v79 = [v83 objectForKey:v13];
  v73 = [a3 objectForKey:@"mediaItemsDict"];
  v69 = [a3 objectForKey:@"textItemsDict"];
  v70 = [a3 objectForKeyedSubscript:@"allItems"];
  v14 = objc_alloc_init(NSMutableDictionary);
  if (v10)
  {
    v15 = [OKPresentationCouchStep couchStepWithAnchorPageName:[NSString stringWithFormat:@"page%ld-intermediate" script:v10] duration:v12 settings:&__NSDictionary0__struct, self->_transitionDuration];
    v114 = [NSString stringWithFormat:@"mainNavigator.pages.%@", v11];
    [(OKPresentationCouchStep *)v15 setDependencies:[NSArray arrayWithObjects:&v114 count:1]];
    [objc_msgSend(-[OpusMagazineProducer presentation](self "presentation")];
  }

  v76 = v10;
  v72 = v11;
  v100[0] = _NSConcreteStackBlock;
  v100[1] = 3221225472;
  v100[2] = sub_8640;
  v100[3] = &unk_10390;
  v100[4] = self;
  v100[5] = v14;
  [v73 enumerateKeysAndObjectsUsingBlock:v100];
  v16 = +[NSMutableDictionary dictionary];
  v68 = self;
  v17 = [(OpusMagazineProducer *)self _configPageWidgetsSettings:v73 mediaItemMediaAttributes:v14 textItems:v69 pageItems:v70 pageInfo:a3 properties:v16 progressBlock:a5 error:a6];
  if (v14)
  {
  }

  v67 = v17;
  v18 = [v79 objectForKey:@"appearOrder"];
  v78 = +[NSMutableDictionary dictionary];
  v77 = +[NSMutableArray array];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v18;
  v80 = [v18 countByEnumeratingWithState:&v96 objects:v113 count:16];
  v66 = v16;
  if (v80)
  {
    v74 = *v97;
    v19 = @"[";
    do
    {
      for (i = 0; i != v80; i = v34 + 1)
      {
        v82 = v19;
        if (*v97 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v81 = i;
        v21 = *(*(&v96 + 1) + 8 * i);
        v22 = [v79 objectForKey:v21];
        v23 = +[NSMutableDictionary dictionary];
        [v23 setObject:objc_msgSend(v22 forKey:{"objectForKey:", @"rect", a4}];
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v24 = [v83 allKeys];
        v25 = [v24 countByEnumeratingWithState:&v92 objects:v112 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v93;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v93 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v92 + 1) + 8 * j);
              if (([v29 isEqualToString:v13] & 1) == 0)
              {
                v30 = [objc_msgSend(v83 objectForKey:{v29), "objectForKey:", v21}];
                if (v30)
                {
                  v31 = v30;
                  if ([v30 objectForKey:@"rect"])
                  {
                    [v23 setObject:objc_msgSend(v31 forKey:{"objectForKey:", @"rect", v29}];
                  }
                }
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v92 objects:v112 count:16];
          }

          while (v26);
        }

        v110 = @"@frame";
        v111 = v23;
        [v78 setObject:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary forKey:{"dictionaryWithObjects:forKeys:count:", &v111, &v110, 1), v21}];
        if ([v21 hasPrefix:@"media"])
        {
          v32 = v82;
          v33 = v76;
          v34 = v81;
          if ([(__CFString *)v82 length]>= 2)
          {
            v32 = [(__CFString *)v82 stringByAppendingString:@", "];
          }

          v19 = [(__CFString *)v32 stringByAppendingString:[NSString stringWithFormat:@"%@", v21]];
        }

        else
        {
          v33 = v76;
          v34 = v81;
          v19 = v82;
        }

        [v77 insertObject:v21 atIndex:0];
      }

      v80 = [obj countByEnumeratingWithState:&v96 objects:v113 count:16];
    }

    while (v80);
  }

  else
  {
    v19 = @"[";
    v33 = v76;
  }

  v35 = [(__CFString *)v19 stringByAppendingString:@"]"];
  [(OpusMagazineProducer *)v68 _addPageTemplateToPresentation:[(OpusMagazineProducer *)v68 presentation] templateName:v72 withSettings:v78 zOrder:v77];
  v36 = [OKPresentationPage pageWithName:v72 templateName:v72 navigatorName:0 properties:v66 settings:v67 userData:0 widgets:0];
  [-[OpusMagazineProducer presentation](v68 "presentation")];
  [objc_msgSend(-[OpusMagazineProducer presentation](v68 "presentation")];
  if (!v33)
  {
    v37 = kOKPresentationThumbnailNavigatorName;
    v38 = [NSString stringWithFormat:@"%@-%@", v72, kOKPresentationThumbnailNavigatorName];
    v39 = [[NSMutableDictionary alloc] initWithDictionary:v67];
    [v39 removeObjectForKey:@"willAppearActionScript"];
    [-[OpusMagazineProducer presentation](v68 "presentation")];
    if (v39)
    {
    }

    v109 = v38;
    [-[OpusMagazineProducer presentation](v68 "presentation")];
  }

  if ([v73 count] == &dword_0 + 1 && objc_msgSend(v69, "count") == &dword_0 + 1)
  {
    [objc_msgSend(-[OKPresentationPage widgetWithName:](v36 widgetWithName:{objc_msgSend(objc_msgSend(v69, "allKeys"), "lastObject")), "userSettings"), "setObject:forKeyedSubscript:", objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v73, "allValues"), "lastObject"), "uniqueURL"), "absoluteString"), @"associatedMediaURL"}];
  }

  pageDurations = v68->_pageDurations;
  if (pageDurations)
  {
    ++v68->_pageDurationsIndex;
    v41 = [(NSMutableArray *)pageDurations objectAtIndexedSubscript:?];
    if ([v41 itemDurations])
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v42 = [objc_msgSend(v41 "itemDurations")];
      v43 = [v42 countByEnumeratingWithState:&v88 objects:v108 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v89;
        v46 = 0.0;
        do
        {
          for (k = 0; k != v44; k = k + 1)
          {
            if (*v89 != v45)
            {
              objc_enumerationMutation(v42);
            }

            [*(*(&v88 + 1) + 8 * k) doubleValue];
            v46 = v46 + v48;
          }

          v44 = [v42 countByEnumeratingWithState:&v88 objects:v108 count:16];
        }

        while (v44);
      }

      else
      {
        v46 = 0.0;
      }
    }

    else
    {
      [v41 pageDuration];
      v46 = -1.0;
      if (v49 != -1.0)
      {
        [v41 pageDuration];
        v46 = v50;
      }
    }
  }

  else
  {
    v46 = -1.0;
  }

  [objc_msgSend(-[OpusMagazineProducer presentation](v68 "presentation")];
  if (v68->_synopsisGroups)
  {
    v51 = objc_alloc_init(NSMutableArray);
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v52 = [v70 countByEnumeratingWithState:&v84 objects:v107 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v85;
      v55 = kOKPresentationGuidelineAuthoringSynopsisItemType;
      v56 = kOKPresentationGuidelineAuthoringSynopsisItemValue;
      v57 = kOKPresentationGuidelineAuthoringSynopsisItemNavigationKeyPath;
      do
      {
        for (m = 0; m != v53; m = m + 1)
        {
          if (*v85 != v54)
          {
            objc_enumerationMutation(v70);
          }

          v59 = *(*(&v84 + 1) + 8 * m);
          v60 = [v73 objectForKeyedSubscript:v59];
          if (v60)
          {
            v106[0] = &off_11AA0;
            v105[0] = v55;
            v105[1] = v56;
            v106[1] = [objc_msgSend(v60 "uniqueURL")];
            v105[2] = v57;
            v106[2] = [NSString stringWithFormat:@"%@.%@", v72, v59];
            v61 = v106;
            v62 = v105;
            v63 = 3;
          }

          else
          {
            if (![v69 objectForKeyedSubscript:v59])
            {
              continue;
            }

            v103[1] = v57;
            v104[0] = &off_11AB8;
            v103[0] = v55;
            v104[1] = [(NSString *)v72 stringByAppendingString:[NSString stringWithFormat:@".%@", v59]];
            v61 = v104;
            v62 = v103;
            v63 = 2;
          }

          [v51 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v61, v62, v63)}];
        }

        v53 = [v70 countByEnumeratingWithState:&v84 objects:v107 count:16];
      }

      while (v53);
    }

    synopsisGroups = v68->_synopsisGroups;
    v101[0] = kOKPresentationGuidelineAuthoringSynopsisGroupName;
    v101[1] = kOKPresentationGuidelineAuthoringSynopsisGroupItems;
    v102[0] = v72;
    v102[1] = v51;
    [(NSMutableArray *)synopsisGroups addObject:[NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:2]];
    if (v51)
    {
    }
  }

  return 1;
}

- (void)didPanMediaForWidget:(id)a3 toState:(id)a4
{
  v7.receiver = self;
  v7.super_class = OpusMagazineProducer;
  [(OpusMagazineProducer *)&v7 didPanMediaForWidget:a3 toState:a4];
  v6 = [(OpusMagazineProducer *)self _resolveThumbnailPageWidgetForWidget:a3];
  if (v6)
  {
    -[OpusMagazineProducer addSettingsFromDictionary:onWidget:](self, "addSettingsFromDictionary:onWidget:", [a3 settings], v6);
  }
}

- (void)didChangeTextForWidget:(id)a3 toSettings:(id)a4
{
  v7.receiver = self;
  v7.super_class = OpusMagazineProducer;
  [(OpusMagazineProducer *)&v7 didChangeTextForWidget:a3 toSettings:a4];
  v6 = [(OpusMagazineProducer *)self _resolveThumbnailPageWidgetForWidget:a3];
  if (v6)
  {
    -[OpusMagazineProducer addSettingsFromDictionary:onWidget:](self, "addSettingsFromDictionary:onWidget:", [a3 settings], v6);
  }
}

- (id)_resolveThumbnailPageWidgetForWidget:(id)a3
{
  v4 = [a3 keyPath];
  if (![v4 hasPrefix:@"page1"])
  {
    return 0;
  }

  v5 = [@"page1" length];
  v6 = [v4 stringByReplacingCharactersInRange:0 withString:{v5, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.page1-%@", kOKPresentationThumbnailNavigatorName, kOKPresentationThumbnailNavigatorName)}];
  v7 = [a3 presentation];

  return [v7 canvasForKeyPath:v6];
}

@end