@interface OKAutoLayout
+ (BOOL)needsPanoramaEffectForRectASP:(float)a3 mediaASP:(float)a4;
+ (float)croppedPercentageforRectASP:(float)a3 photoASP:(float)a4;
+ (float)scaleFactorForMediaItem:(id)a3 toFitInRect:(CGRect)a4;
- (BOOL)startFeedWith:(id)a3 primaryResolutionKey:(id)a4;
- (OKAutoLayout)initWithPresentation:(id)a3;
- (double)_croppingScoreForMediaItems:(id)a3 layoutInfo:(id)a4;
- (double)_maxDurationOfMediaItems:(id)a3;
- (id)_findBestMatchingLayoutFromLayouts:(id)a3 forMediaItems:(id)a4 currentIndx:(unint64_t)a5 checkFollowingMediaItems:(int64_t)a6 remainingItems:(unint64_t)a7 subtitleAttributesForMediaItems:(id)a8 isFirstPage:(BOOL)a9;
- (id)_matchMediaItems:(id)a3 toLayoutInfo:(id)a4 orderedKeys:(id)a5;
- (id)_metadataForMediaItem:(id)a3;
- (id)_parseLayouts:(id)a3;
- (id)_titleTextForPresentation:(id)a3;
- (id)generateNextPagesByMediaItems:(id)a3 maxPages:(int64_t)a4 isFirstPage:(BOOL)a5;
- (id)generatePagesByMediaItems:(id)a3 layoutsByResolution:(id)a4 primaryResolutionKey:(id)a5;
- (id)liveFeedPrimaryResolutionKey;
- (int64_t)liveFeedNumOfMediasUsed;
- (int64_t)liveFeedNumOfPagesGenerated;
- (void)dealloc;
- (void)endFeed;
@end

@implementation OKAutoLayout

- (OKAutoLayout)initWithPresentation:(id)a3
{
  v6.receiver = self;
  v6.super_class = OKAutoLayout;
  v4 = [(OKAutoLayout *)&v6 init];
  if (v4)
  {
    v4->_presentation = a3;
    [(OKAutoLayout *)v4 setAllowMovieWithPhotos:0];
    [(OKAutoLayout *)v4 setForceToIterateAllLayouts:0];
    v4->_metadataCacheDict = objc_opt_new();
    v4->_liveFeedContext = 0;
    v4->_freqController = objc_opt_new();
  }

  return v4;
}

- (void)dealloc
{
  presentation = self->_presentation;
  if (presentation)
  {

    self->_presentation = 0;
  }

  metadataCacheDict = self->_metadataCacheDict;
  if (metadataCacheDict)
  {

    self->_metadataCacheDict = 0;
  }

  liveFeedContext = self->_liveFeedContext;
  if (liveFeedContext)
  {

    self->_liveFeedContext = 0;
  }

  freqController = self->_freqController;
  if (freqController)
  {

    self->_freqController = 0;
  }

  v7.receiver = self;
  v7.super_class = OKAutoLayout;
  [(OKAutoLayout *)&v7 dealloc];
}

+ (float)croppedPercentageforRectASP:(float)a3 photoASP:(float)a4
{
  if (a4 < a3)
  {
    a4 = 1.0 / a4;
    a3 = 1.0 / a3;
  }

  return (a4 - a3) / a4;
}

+ (BOOL)needsPanoramaEffectForRectASP:(float)a3 mediaASP:(float)a4
{
  +[OKAutoLayout panningCropThreshold];
  v7 = v6;
  *&v8 = a3;
  *&v9 = a4;
  [OKAutoLayout croppedPercentageforRectASP:v8 photoASP:v9];
  return v10 > v7;
}

+ (float)scaleFactorForMediaItem:(id)a3 toFitInRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  [a3 resolution];
  v8 = v7;
  v10 = v9;
  v11 = width / height;
  [a3 aspectRatio];
  *&v12 = v12;
  if (*&v12 >= v11)
  {
    return height / v10;
  }

  else
  {
    return width / v8;
  }
}

- (double)_croppingScoreForMediaItems:(id)a3 layoutInfo:(id)a4
{
  v7 = [a4 aspectRatiosInAppearOrder];
  v8 = [a4 areaPercentInAppearOrder];
  v9 = [a4 rectNamesInAppearOrder];
  if ([v7 count])
  {
    v10 = 0;
    v11 = 0.0;
    v31 = 0.6;
    while (1)
    {
      [objc_msgSend(v7 objectAtIndexedSubscript:{v10, *&v31), "floatValue"}];
      v13 = v12;
      [-[OKAutoLayout _metadataForMediaItem:](self _metadataForMediaItem:{objc_msgSend(a3, "objectAtIndexedSubscript:", v10)), "aspectRatio"}];
      v15 = v14;
      *&v14 = v13;
      *&v16 = v15;
      [OKAutoLayout croppedPercentageforRectASP:v14 photoASP:v16];
      v18 = v17;
      [objc_msgSend(v8 objectAtIndexedSubscript:{v10), "floatValue"}];
      v20 = v19;
      v21 = -[OKAutoLayout _metadataForMediaItem:](self, "_metadataForMediaItem:", [a3 objectAtIndexedSubscript:v10]);
      [a4 rectForRectName:{objc_msgSend(v9, "objectAtIndexedSubscript:", v10)}];
      [OKAutoLayout scaleFactorForMediaItem:v21 toFitInRect:?];
      v23 = v22;
      +[OKAutoLayout photoScoreForMediaItem:](OKAutoLayout, "photoScoreForMediaItem:", -[OKAutoLayout _metadataForMediaItem:](self, "_metadataForMediaItem:", [a3 objectAtIndexedSubscript:v10]));
      v25 = v20;
      v26 = (v24 + 0.5) * v20;
      if (v23 <= 1.0)
      {
        v28 = v18;
        if (v18 <= 0.2)
        {
          goto LABEL_37;
        }

        if (v15 < 0.5 || v15 > 2.0)
        {
          if ((v15 > 1.0 || v13 > 1.0) && (v15 < 1.0 || v13 < 1.0))
          {
            goto LABEL_30;
          }

          if (v13 > 1.5 || (v28 = v13, HIDWORD(v25) = 1072001187, v13 < 0.67))
          {
            *&v28 = v13;
            *&v25 = v15;
            if ([OKAutoLayout needsPanoramaEffectForRectASP:v28 mediaASP:v25])
            {
              goto LABEL_38;
            }

            goto LABEL_37;
          }
        }

        else
        {
          v29 = v13 + -1.0;
          if (v29 < 0.0)
          {
            v29 = -v29;
          }

          if (v29 > 0.1 && (v15 > 1.0 || v13 > 1.0) && (v15 < 1.0 || v13 < 1.0))
          {
LABEL_30:
            v27 = 100.0;
            goto LABEL_5;
          }

          if (v13 < 0.5 || v13 > 2.0)
          {
            v27 = 90.0;
            goto LABEL_5;
          }

          if (v29 >= 0.1 || v28 <= 0.4)
          {
            if (v28 <= v31)
            {
              if (v28 <= 0.4)
              {
                if (v28 > 0.2)
                {
                  v26 = v26 * 30.0;
                }

                goto LABEL_37;
              }

              v27 = 35.0;
            }

            else
            {
              v27 = 50.0;
            }

            goto LABEL_5;
          }
        }

        v27 = 80.0;
      }

      else
      {
        v27 = 150.0;
      }

LABEL_5:
      v26 = v26 + v27;
LABEL_37:
      v11 = v11 + (v18 * v26);
LABEL_38:
      if (++v10 >= [v7 count])
      {
        return v11;
      }
    }
  }

  return 0.0;
}

- (id)_matchMediaItems:(id)a3 toLayoutInfo:(id)a4 orderedKeys:(id)a5
{
  v7 = [a4 rectNamesInAppearOrder];
  v8 = +[NSMutableDictionary dictionary];
  if ([a3 count])
  {
    v9 = 0;
    do
    {
      [v8 setObject:objc_msgSend(a3 forKey:{"objectAtIndexedSubscript:", v9), objc_msgSend(v7, "objectAtIndexedSubscript:", v9)}];
      ++v9;
    }

    while (v9 < [a3 count]);
  }

  if (a5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(a3);
          }

          [a5 addObject:{objc_msgSend(v7, "objectAtIndexedSubscript:", objc_msgSend(a3, "indexOfObject:", *(*(&v15 + 1) + 8 * v13)))}];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  return v8;
}

- (id)_findBestMatchingLayoutFromLayouts:(id)a3 forMediaItems:(id)a4 currentIndx:(unint64_t)a5 checkFollowingMediaItems:(int64_t)a6 remainingItems:(unint64_t)a7 subtitleAttributesForMediaItems:(id)a8 isFirstPage:(BOOL)a9
{
  v11 = a6;
  v47 = [NSString stringWithFormat:@"%ldUp", a6];
  if ([(OKAutoLayout *)self _titleTextForPresentation:self->_presentation])
  {
    v16 = a9;
  }

  else
  {
    v16 = 0;
  }

  v48 = v16;
  v17 = v16 || [a8 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(a4, "objectAtIndexedSubscript:", a5), "uniqueURL")}] == 0;
  v51 = [a4 subarrayWithRange:{a5, objc_msgSend(a4, "count") - a5}];
  v46 = +[NSMutableArray array];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v40 = a3;
  obj = [a3 allValues];
  v57 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v57)
  {
    v50 = v17;
    v45 = a4;
    v41 = 0;
    v56 = *v63;
    v18 = -10000.0;
    v19 = a9;
    v20 = v47;
    v54 = self;
    v43 = v11;
    v44 = a7;
    v42 = a5;
    do
    {
      v21 = 0;
      do
      {
        if (*v63 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v62 + 1) + 8 * v21);
        if ((v11 == -1 || [objc_msgSend(*(*(&v62 + 1) + 8 * v21) "name")]) && objc_msgSend(v22, "numOfMedia") <= a7 && (objc_msgSend(v22, "isSubtitle") & v50 & 1) == 0 && (v50 || objc_msgSend(v22, "isSubtitle") && objc_msgSend(v22, "numOfMedia") == &dword_0 + 1) && (!v48 || objc_msgSend(v22, "isTitle")) && (!objc_msgSend(v22, "isTitle") || v19))
        {
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v55 = [v51 countByEnumeratingWithState:&v58 objects:v67 count:16];
          if (!v55)
          {
            goto LABEL_45;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v49 = 0;
          v53 = *v59;
LABEL_25:
          v26 = 0;
          v27 = v49 + 1;
          v49 += v55;
          while (1)
          {
            if (*v59 != v53)
            {
              objc_enumerationMutation(v51);
            }

            v28 = *(*(&v58 + 1) + 8 * v26);
            if ([-[OKAutoLayout _metadataForMediaItem:](v54 _metadataForMediaItem:{v28), "type"}] == &dword_0 + 3)
            {
              v23 = v24++ > 2;
            }

            else
            {
              v23 |= (v24 > 0) & ~[(OKAutoLayout *)v54 allowMovieWithPhotos];
            }

            v30 = [a8 objectForKeyedSubscript:{objc_msgSend(v28, "uniqueURL")}];
            if (v30)
            {
              v23 = v25 > 0;
            }

            if (v27 >= [v22 numOfMedia])
            {
              break;
            }

            if (v30)
            {
              ++v25;
            }

            v26 = v26 + 1;
            ++v27;
            if (v55 == v26)
            {
              v55 = [v51 countByEnumeratingWithState:&v58 objects:v67 count:16];
              if (v55)
              {
                goto LABEL_25;
              }

              break;
            }
          }

          self = v54;
          v11 = v43;
          a7 = v44;
          a5 = v42;
          v19 = a9;
          if (v23)
          {
            v20 = v47;
          }

          else
          {
LABEL_45:
            -[OKAutoLayout _croppingScoreForMediaItems:layoutInfo:](self, "_croppingScoreForMediaItems:layoutInfo:", [v45 subarrayWithRange:{a5, objc_msgSend(v22, "numOfMedia")}], v22);
            v32 = v31;
            v66[0] = [v22 name];
            [v22 currentScore];
            v66[1] = [NSNumber numberWithDouble:v33 - v32];
            [v46 addObject:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v66, 2)}];
            [v22 currentScore];
            v20 = v47;
            if (v34 - v32 > v18)
            {
              [v22 currentScore];
              v18 = v35 - v32;
              v41 = v22;
            }
          }
        }

        v21 = v21 + 1;
      }

      while (v21 != v57);
      v36 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
      v57 = v36;
    }

    while (v36);
  }

  else
  {
    v41 = 0;
  }

  v37 = [(OKAutoLayoutFreqController *)self->_freqController bestLayoutByFreqOfAnyUpsFromLayouts:v46];
  v38 = v41;
  if (v37)
  {
    return [v40 objectForKeyedSubscript:{objc_msgSend(v37, "objectAtIndexedSubscript:", 0)}];
  }

  return v38;
}

- (double)_maxDurationOfMediaItems:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v5)
  {
    return 0.0;
  }

  v6 = v5;
  v7 = *v15;
  v8 = 0.0;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(a3);
      }

      v10 = *(*(&v14 + 1) + 8 * i);
      if ([-[OKAutoLayout _metadataForMediaItem:](self _metadataForMediaItem:{v10), "type"}] == &dword_0 + 3)
      {
        [-[OKAutoLayout _metadataForMediaItem:](self _metadataForMediaItem:{v10), "duration"}];
        if (v11 > v8)
        {
          [-[OKAutoLayout _metadataForMediaItem:](self _metadataForMediaItem:{v10), "duration"}];
          v8 = v12;
        }
      }
    }

    v6 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v6);
  return v8;
}

- (id)_titleTextForPresentation:(id)a3
{
  v4 = [a3 guidelineAuthoringAttributedTitle];
  result = [a3 guidelineAuthoringTitle];
  if (v4)
  {
    return v4;
  }

  return result;
}

- (id)generatePagesByMediaItems:(id)a3 layoutsByResolution:(id)a4 primaryResolutionKey:(id)a5
{
  v7 = self;
  v59 = [(OKAutoLayout *)self _parseLayouts:a4];
  v58 = +[NSMutableDictionary dictionary];
  v8 = +[NSMutableIndexSet indexSet];
  if ([a3 count])
  {
    v9 = 0;
    do
    {
      v10 = [a3 objectAtIndexedSubscript:v9];
      v11 = -[OKPresentation guidelineAuthoringMediaAttributesForKey:](v7->_presentation, "guidelineAuthoringMediaAttributesForKey:", [objc_msgSend(v10 "uniqueURL")]);
      if (v11)
      {
        v12 = v11;
        if ([v11 text] || objc_msgSend(v12, "attributedText"))
        {
          [v58 setObject:v12 forKeyedSubscript:{objc_msgSend(v10, "uniqueURL")}];
          [v8 addIndex:v9];
        }
      }

      ++v9;
    }

    while (v9 < [a3 count]);
  }

  v60 = +[NSMutableArray array];
  if ([a3 count])
  {
    v13 = 0;
    v55 = a3;
    v50 = v8;
    while (1)
    {
      v14 = [a3 count] - v13;
      v15 = [v8 indexGreaterThanOrEqualToIndex:v13];
      if (v15 == v13)
      {
        v16 = 1;
      }

      else
      {
        v16 = v14;
      }

      if (v15 <= v13 || v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = v16;
      }

      else
      {
        v18 = &v15[-v13];
      }

      v19 = [v60 count];
      LOBYTE(v49) = v19 == 0;
      v56 = v18;
      v20 = -[OKAutoLayout _findBestMatchingLayoutFromLayouts:forMediaItems:currentIndx:checkFollowingMediaItems:remainingItems:subtitleAttributesForMediaItems:isFirstPage:](v7, "_findBestMatchingLayoutFromLayouts:forMediaItems:currentIndx:checkFollowingMediaItems:remainingItems:subtitleAttributesForMediaItems:isFirstPage:", [v59 objectForKey:a5], a3, v13, -1, v18, v58, v49);
      v21 = objc_alloc_init(NSMutableArray);
      v22 = [v58 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(a3, "objectAtIndexedSubscript:", v13), "uniqueURL")}];
      if (!v19)
      {
        v26 = [(OKAutoLayout *)v7 _titleTextForPresentation:v7->_presentation];
        if (v26)
        {
          v24 = v26;
          if ([v20 isTitle])
          {
            goto LABEL_28;
          }
        }
      }

      if (v22)
      {
        if ([v20 isSubtitle])
        {
          v23 = [v22 attributedText];
          if (v23)
          {
            break;
          }

          v23 = [v22 text];
          if (v23)
          {
            break;
          }
        }
      }

      v25 = &__NSDictionary0__struct;
LABEL_29:
      v27 = +[NSMutableDictionary dictionary];
      if (v20)
      {
        v51 = v25;
        v52 = v21;
        v28 = v7;
        v54 = v27;
        [v27 setObject:objc_msgSend(v20 forKey:{"origLayout"), a5}];
        v53 = v20;
        v57 = v13;
        v29 = [a3 subarrayWithRange:{v13, objc_msgSend(v20, "numOfMedia")}];
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v30 = [v59 allKeys];
        v31 = [v30 countByEnumeratingWithState:&v61 objects:v67 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v62;
          do
          {
            for (i = 0; i != v32; i = i + 1)
            {
              if (*v62 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v61 + 1) + 8 * i);
              if (([v35 isEqualToString:a5] & 1) == 0)
              {
                v36 = a5;
                v37 = [v59 objectForKey:v35];
                v38 = [v29 count];
                LOBYTE(v49) = [v60 count] == 0;
                v39 = [(OKAutoLayout *)v28 _findBestMatchingLayoutFromLayouts:v37 forMediaItems:v55 currentIndx:v57 checkFollowingMediaItems:v38 remainingItems:v56 subtitleAttributesForMediaItems:v58 isFirstPage:v49];
                if (v39)
                {
                  [v54 setObject:objc_msgSend(v39 forKey:{"origLayout"), v35}];
                }

                else
                {
                  NSLog(@"can NOT find matched layout for resolution: %@", v35);
                }

                a5 = v36;
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v61 objects:v67 count:16];
          }

          while (v32);
        }

        v7 = v28;
        [(OKAutoLayout *)v28 _maxDurationOfMediaItems:v29];
        v41 = v40;
        v42 = v28;
        v43 = v29;
        v21 = v52;
        v20 = v53;
        v44 = [(OKAutoLayout *)v42 _matchMediaItems:v43 toLayoutInfo:v53 orderedKeys:v52];
        v65[0] = @"primary resolution";
        v65[1] = @"all layouts";
        v66[0] = a5;
        v66[1] = v54;
        v65[2] = @"mediaItemsDict";
        v65[3] = @"textItemsDict";
        v66[2] = v44;
        v66[3] = v51;
        v66[4] = v52;
        v65[4] = @"allItems";
        v65[5] = @"maxMediaDuration";
        if (v41 >= 0.0)
        {
          v45 = v41;
        }

        else
        {
          v45 = 0.0;
        }

        v66[5] = [NSNumber numberWithDouble:v45];
        [v60 addObject:{-[NSDictionary mutableCopy](+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v66, v65, 6), "mutableCopy")}];
        a3 = v55;
        v8 = v50;
        v13 = v57;
      }

      [v20 currentScore];
      *&v47 = v46 + -5.0;
      [v20 setCurrentScore:v47];
      v13 += [v20 numOfMedia];
      if (v13 >= [a3 count])
      {
        goto LABEL_47;
      }
    }

    v24 = v23;
LABEL_28:
    v68 = [v20 textWidgetName];
    v69 = v24;
    v25 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    [v21 addObject:{objc_msgSend(v20, "textWidgetName")}];
    goto LABEL_29;
  }

LABEL_47:
  [(NSMutableDictionary *)v7->_metadataCacheDict removeAllObjects];
  return v60;
}

- (id)_metadataForMediaItem:(id)a3
{
  v5 = -[NSMutableDictionary objectForKey:](self->_metadataCacheDict, "objectForKey:", [a3 uniqueURL]);
  if (!v5)
  {
    v5 = [a3 metadata];
    if (v5)
    {
      -[NSMutableDictionary setObject:forKey:](self->_metadataCacheDict, "setObject:forKey:", v5, [a3 uniqueURL]);
    }
  }

  return v5;
}

- (id)_parseLayouts:(id)a3
{
  v19 = +[NSMutableDictionary dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [a3 allKeys];
  v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v20)
  {
    v17 = *v27;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v26 + 1) + 8 * i);
        v5 = +[NSMutableDictionary dictionary];
        v21 = v4;
        v6 = [a3 objectForKey:v4];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v7 = [v6 allKeys];
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v22 + 1) + 8 * j);
              v13 = -[OKAutoLayoutLayoutInfo initWithLayout:]([OKAutoLayoutLayoutInfo alloc], "initWithLayout:", [v6 objectForKey:v12]);
              [(OKAutoLayoutLayoutInfo *)v13 baseScore];
              if (v14 > 0.0)
              {
                [v5 setObject:v13 forKey:v12];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v9);
        }

        [v19 setObject:v5 forKey:v21];
      }

      v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }

  return v19;
}

- (BOOL)startFeedWith:(id)a3 primaryResolutionKey:(id)a4
{
  self->_liveFeedContext = objc_opt_new();
  [(OKAutoLayoutLiveFeedContext *)self->_liveFeedContext setLayoutInfos:[(OKAutoLayout *)self _parseLayouts:a3]];
  [(OKAutoLayoutLiveFeedContext *)self->_liveFeedContext setPrimaryResolutionKey:a4];
  [(OKAutoLayoutLiveFeedContext *)self->_liveFeedContext setPagesGenerated:0];
  return 1;
}

- (id)generateNextPagesByMediaItems:(id)a3 maxPages:(int64_t)a4 isFirstPage:(BOOL)a5
{
  v6 = self;
  v47 = [(OKAutoLayoutLiveFeedContext *)self->_liveFeedContext layoutInfos];
  v7 = [(OKAutoLayoutLiveFeedContext *)v6->_liveFeedContext primaryResolutionKey];
  v39 = [(OKAutoLayoutLiveFeedContext *)v6->_liveFeedContext pagesGenerated];
  v8 = +[NSMutableArray array];
  v49 = a3;
  if ([a3 count])
  {
    v9 = 0;
    v38 = v8;
    do
    {
      if ([v8 count] >= a4)
      {
        break;
      }

      LOBYTE(v37) = a5;
      v10 = [v49 count] - v9;
      v11 = [(OKAutoLayout *)v6 _findBestMatchingLayoutFromLayouts:[(NSMutableDictionary *)v47 objectForKey:v7] forMediaItems:v49 currentIndx:v9 checkFollowingMediaItems:-1 remainingItems:v10 subtitleAttributesForMediaItems:&__NSDictionary0__struct isFirstPage:v37];
      v12 = [v49 subarrayWithRange:{v9, objc_msgSend(v11, "numOfMedia")}];
      v13 = objc_alloc_init(NSMutableArray);
      if (v39 | v9 || (v14 = [(OKAutoLayout *)v6 _titleTextForPresentation:v6->_presentation]) == 0)
      {
        v16 = &__NSDictionary0__struct;
        if (v11)
        {
LABEL_9:
          v41 = v16;
          v42 = v13;
          v46 = v9;
          v17 = v6;
          v18 = +[NSMutableDictionary dictionary];
          v45 = +[NSMutableDictionary dictionary];
          v43 = v11;
          v44 = v18;
          [v18 setObject:objc_msgSend(v11 forKey:{"origLayout"), v7}];
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v19 = [(NSMutableDictionary *)v47 allKeys];
          v20 = [v19 countByEnumeratingWithState:&v50 objects:v56 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v51;
            do
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v51 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v50 + 1) + 8 * i);
                if (([v24 isEqualToString:v7] & 1) == 0)
                {
                  LOBYTE(v37) = a5;
                  v25 = -[OKAutoLayout _findBestMatchingLayoutFromLayouts:forMediaItems:currentIndx:checkFollowingMediaItems:remainingItems:subtitleAttributesForMediaItems:isFirstPage:](v17, "_findBestMatchingLayoutFromLayouts:forMediaItems:currentIndx:checkFollowingMediaItems:remainingItems:subtitleAttributesForMediaItems:isFirstPage:", -[NSMutableDictionary objectForKey:](v47, "objectForKey:", v24), v49, v46, [v12 count], v10, &__NSDictionary0__struct, v37);
                  if (v25)
                  {
                    v26 = v25;
                    [v25 currentScore];
                    *&v28 = v27 + -5.0;
                    [v26 setCurrentScore:v28];
                    [v44 setObject:objc_msgSend(v26 forKey:{"origLayout"), v24}];
                    [v45 setObject:objc_msgSend(v26 forKey:{"name"), v24}];
                  }

                  else
                  {
                    NSLog(@"can NOT find matched layout for resolution: %@", v24);
                  }
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v50 objects:v56 count:16];
            }

            while (v21);
          }

          v6 = v17;
          [(OKAutoLayout *)v17 _maxDurationOfMediaItems:v12];
          v30 = v29;
          v31 = v17;
          v13 = v42;
          v32 = [(OKAutoLayout *)v31 _matchMediaItems:v12 toLayoutInfo:v43 orderedKeys:v42];
          v54[0] = @"primary resolution";
          v54[1] = @"all layouts";
          v55[0] = v7;
          v55[1] = v44;
          v54[2] = @"mediaItemsDict";
          v54[3] = @"textItemsDict";
          v55[2] = v32;
          v55[3] = v41;
          v55[4] = v42;
          v54[4] = @"allItems";
          v54[5] = @"maxMediaDuration";
          if (v30 >= 0.0)
          {
            v33 = v30;
          }

          else
          {
            v33 = 0.0;
          }

          v55[5] = [NSNumber numberWithDouble:v33];
          v8 = v38;
          [v38 addObject:{-[NSDictionary mutableCopy](+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v55, v54, 6), "mutableCopy")}];
          -[OKAutoLayoutLiveFeedContext setMediasUsed:](v6->_liveFeedContext, "setMediasUsed:", [v43 numOfMedia] + -[OKAutoLayoutLiveFeedContext mediasUsed](v6->_liveFeedContext, "mediasUsed"));
          v9 = [v43 numOfMedia] + v46;
          [v43 currentScore];
          *&v35 = v34 + -5.0;
          [v43 setCurrentScore:v35];
          [(OKAutoLayoutFreqController *)v6->_freqController addOnePageLayout:v45];
          goto LABEL_24;
        }
      }

      else
      {
        v15 = v14;
        v57 = [v11 textWidgetName];
        v58 = v15;
        v16 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        [v13 addObject:{objc_msgSend(v11, "textWidgetName")}];
        if (v11)
        {
          goto LABEL_9;
        }
      }

      v8 = v38;
LABEL_24:

      a5 = 0;
    }

    while (v9 < [v49 count]);
  }

  [(NSMutableDictionary *)v6->_metadataCacheDict removeAllObjects];
  -[OKAutoLayoutLiveFeedContext setPagesGenerated:](v6->_liveFeedContext, "setPagesGenerated:", [v8 count] + -[OKAutoLayoutLiveFeedContext pagesGenerated](v6->_liveFeedContext, "pagesGenerated"));
  return v8;
}

- (void)endFeed
{
  liveFeedContext = self->_liveFeedContext;
  if (liveFeedContext)
  {

    self->_liveFeedContext = 0;
  }
}

- (int64_t)liveFeedNumOfMediasUsed
{
  result = self->_liveFeedContext;
  if (result)
  {
    return [result mediasUsed];
  }

  return result;
}

- (int64_t)liveFeedNumOfPagesGenerated
{
  result = self->_liveFeedContext;
  if (result)
  {
    return [result pagesGenerated];
  }

  return result;
}

- (id)liveFeedPrimaryResolutionKey
{
  result = self->_liveFeedContext;
  if (result)
  {
    return [result primaryResolutionKey];
  }

  return result;
}

@end