@interface OKAutoLayout
+ (BOOL)needsPanoramaEffectForRectASP:(float)p mediaASP:(float)sP;
+ (float)croppedPercentageforRectASP:(float)p photoASP:(float)sP;
+ (float)scaleFactorForMediaItem:(id)item toFitInRect:(CGRect)rect;
- (BOOL)startFeedWith:(id)with primaryResolutionKey:(id)key;
- (OKAutoLayout)initWithPresentation:(id)presentation;
- (double)_croppingScoreForMediaItems:(id)items layoutInfo:(id)info;
- (double)_maxDurationOfMediaItems:(id)items;
- (id)_findBestMatchingLayoutFromLayouts:(id)layouts forMediaItems:(id)items currentIndx:(unint64_t)indx checkFollowingMediaItems:(int64_t)mediaItems remainingItems:(unint64_t)remainingItems subtitleAttributesForMediaItems:(id)forMediaItems isFirstPage:(BOOL)page;
- (id)_matchMediaItems:(id)items toLayoutInfo:(id)info orderedKeys:(id)keys;
- (id)_metadataForMediaItem:(id)item;
- (id)_parseLayouts:(id)layouts;
- (id)_titleTextForPresentation:(id)presentation;
- (id)generateNextPagesByMediaItems:(id)items maxPages:(int64_t)pages isFirstPage:(BOOL)page;
- (id)generatePagesByMediaItems:(id)items layoutsByResolution:(id)resolution primaryResolutionKey:(id)key;
- (id)liveFeedPrimaryResolutionKey;
- (int64_t)liveFeedNumOfMediasUsed;
- (int64_t)liveFeedNumOfPagesGenerated;
- (void)dealloc;
- (void)endFeed;
@end

@implementation OKAutoLayout

- (OKAutoLayout)initWithPresentation:(id)presentation
{
  v6.receiver = self;
  v6.super_class = OKAutoLayout;
  v4 = [(OKAutoLayout *)&v6 init];
  if (v4)
  {
    v4->_presentation = presentation;
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

+ (float)croppedPercentageforRectASP:(float)p photoASP:(float)sP
{
  if (sP < p)
  {
    sP = 1.0 / sP;
    p = 1.0 / p;
  }

  return (sP - p) / sP;
}

+ (BOOL)needsPanoramaEffectForRectASP:(float)p mediaASP:(float)sP
{
  +[OKAutoLayout panningCropThreshold];
  v7 = v6;
  *&v8 = p;
  *&v9 = sP;
  [OKAutoLayout croppedPercentageforRectASP:v8 photoASP:v9];
  return v10 > v7;
}

+ (float)scaleFactorForMediaItem:(id)item toFitInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  [item resolution];
  v8 = v7;
  v10 = v9;
  v11 = width / height;
  [item aspectRatio];
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

- (double)_croppingScoreForMediaItems:(id)items layoutInfo:(id)info
{
  aspectRatiosInAppearOrder = [info aspectRatiosInAppearOrder];
  areaPercentInAppearOrder = [info areaPercentInAppearOrder];
  rectNamesInAppearOrder = [info rectNamesInAppearOrder];
  if ([aspectRatiosInAppearOrder count])
  {
    v10 = 0;
    v11 = 0.0;
    v31 = 0.6;
    while (1)
    {
      [objc_msgSend(aspectRatiosInAppearOrder objectAtIndexedSubscript:{v10, *&v31), "floatValue"}];
      v13 = v12;
      [-[OKAutoLayout _metadataForMediaItem:](self _metadataForMediaItem:{objc_msgSend(items, "objectAtIndexedSubscript:", v10)), "aspectRatio"}];
      v15 = v14;
      *&v14 = v13;
      *&v16 = v15;
      [OKAutoLayout croppedPercentageforRectASP:v14 photoASP:v16];
      v18 = v17;
      [objc_msgSend(areaPercentInAppearOrder objectAtIndexedSubscript:{v10), "floatValue"}];
      v20 = v19;
      v21 = -[OKAutoLayout _metadataForMediaItem:](self, "_metadataForMediaItem:", [items objectAtIndexedSubscript:v10]);
      [info rectForRectName:{objc_msgSend(rectNamesInAppearOrder, "objectAtIndexedSubscript:", v10)}];
      [OKAutoLayout scaleFactorForMediaItem:v21 toFitInRect:?];
      v23 = v22;
      +[OKAutoLayout photoScoreForMediaItem:](OKAutoLayout, "photoScoreForMediaItem:", -[OKAutoLayout _metadataForMediaItem:](self, "_metadataForMediaItem:", [items objectAtIndexedSubscript:v10]));
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
      if (++v10 >= [aspectRatiosInAppearOrder count])
      {
        return v11;
      }
    }
  }

  return 0.0;
}

- (id)_matchMediaItems:(id)items toLayoutInfo:(id)info orderedKeys:(id)keys
{
  rectNamesInAppearOrder = [info rectNamesInAppearOrder];
  v8 = +[NSMutableDictionary dictionary];
  if ([items count])
  {
    v9 = 0;
    do
    {
      [v8 setObject:objc_msgSend(items forKey:{"objectAtIndexedSubscript:", v9), objc_msgSend(rectNamesInAppearOrder, "objectAtIndexedSubscript:", v9)}];
      ++v9;
    }

    while (v9 < [items count]);
  }

  if (keys)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(items);
          }

          [keys addObject:{objc_msgSend(rectNamesInAppearOrder, "objectAtIndexedSubscript:", objc_msgSend(items, "indexOfObject:", *(*(&v15 + 1) + 8 * v13)))}];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  return v8;
}

- (id)_findBestMatchingLayoutFromLayouts:(id)layouts forMediaItems:(id)items currentIndx:(unint64_t)indx checkFollowingMediaItems:(int64_t)mediaItems remainingItems:(unint64_t)remainingItems subtitleAttributesForMediaItems:(id)forMediaItems isFirstPage:(BOOL)page
{
  mediaItemsCopy = mediaItems;
  mediaItems = [NSString stringWithFormat:@"%ldUp", mediaItems];
  if ([(OKAutoLayout *)self _titleTextForPresentation:self->_presentation])
  {
    pageCopy = page;
  }

  else
  {
    pageCopy = 0;
  }

  v48 = pageCopy;
  v17 = pageCopy || [forMediaItems objectForKeyedSubscript:{objc_msgSend(objc_msgSend(items, "objectAtIndexedSubscript:", indx), "uniqueURL")}] == 0;
  v51 = [items subarrayWithRange:{indx, objc_msgSend(items, "count") - indx}];
  v46 = +[NSMutableArray array];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  layoutsCopy = layouts;
  obj = [layouts allValues];
  v57 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v57)
  {
    v50 = v17;
    itemsCopy = items;
    v41 = 0;
    v56 = *v63;
    v18 = -10000.0;
    pageCopy3 = page;
    v20 = mediaItems;
    selfCopy = self;
    v43 = mediaItemsCopy;
    remainingItemsCopy = remainingItems;
    indxCopy = indx;
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
        if ((mediaItemsCopy == -1 || [objc_msgSend(*(*(&v62 + 1) + 8 * v21) "name")]) && objc_msgSend(v22, "numOfMedia") <= remainingItems && (objc_msgSend(v22, "isSubtitle") & v50 & 1) == 0 && (v50 || objc_msgSend(v22, "isSubtitle") && objc_msgSend(v22, "numOfMedia") == &dword_0 + 1) && (!v48 || objc_msgSend(v22, "isTitle")) && (!objc_msgSend(v22, "isTitle") || pageCopy3))
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
            if ([-[OKAutoLayout _metadataForMediaItem:](selfCopy _metadataForMediaItem:{v28), "type"}] == &dword_0 + 3)
            {
              v23 = v24++ > 2;
            }

            else
            {
              v23 |= (v24 > 0) & ~[(OKAutoLayout *)selfCopy allowMovieWithPhotos];
            }

            v30 = [forMediaItems objectForKeyedSubscript:{objc_msgSend(v28, "uniqueURL")}];
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

          self = selfCopy;
          mediaItemsCopy = v43;
          remainingItems = remainingItemsCopy;
          indx = indxCopy;
          pageCopy3 = page;
          if (v23)
          {
            v20 = mediaItems;
          }

          else
          {
LABEL_45:
            -[OKAutoLayout _croppingScoreForMediaItems:layoutInfo:](self, "_croppingScoreForMediaItems:layoutInfo:", [itemsCopy subarrayWithRange:{indx, objc_msgSend(v22, "numOfMedia")}], v22);
            v32 = v31;
            v66[0] = [v22 name];
            [v22 currentScore];
            v66[1] = [NSNumber numberWithDouble:v33 - v32];
            [v46 addObject:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v66, 2)}];
            [v22 currentScore];
            v20 = mediaItems;
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
    return [layoutsCopy objectForKeyedSubscript:{objc_msgSend(v37, "objectAtIndexedSubscript:", 0)}];
  }

  return v38;
}

- (double)_maxDurationOfMediaItems:(id)items
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(items);
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

    v6 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v6);
  return v8;
}

- (id)_titleTextForPresentation:(id)presentation
{
  guidelineAuthoringAttributedTitle = [presentation guidelineAuthoringAttributedTitle];
  result = [presentation guidelineAuthoringTitle];
  if (guidelineAuthoringAttributedTitle)
  {
    return guidelineAuthoringAttributedTitle;
  }

  return result;
}

- (id)generatePagesByMediaItems:(id)items layoutsByResolution:(id)resolution primaryResolutionKey:(id)key
{
  selfCopy = self;
  v59 = [(OKAutoLayout *)self _parseLayouts:resolution];
  v58 = +[NSMutableDictionary dictionary];
  v8 = +[NSMutableIndexSet indexSet];
  if ([items count])
  {
    v9 = 0;
    do
    {
      v10 = [items objectAtIndexedSubscript:v9];
      v11 = -[OKPresentation guidelineAuthoringMediaAttributesForKey:](selfCopy->_presentation, "guidelineAuthoringMediaAttributesForKey:", [objc_msgSend(v10 "uniqueURL")]);
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

    while (v9 < [items count]);
  }

  v60 = +[NSMutableArray array];
  if ([items count])
  {
    v13 = 0;
    itemsCopy = items;
    v50 = v8;
    while (1)
    {
      v14 = [items count] - v13;
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
      v20 = -[OKAutoLayout _findBestMatchingLayoutFromLayouts:forMediaItems:currentIndx:checkFollowingMediaItems:remainingItems:subtitleAttributesForMediaItems:isFirstPage:](selfCopy, "_findBestMatchingLayoutFromLayouts:forMediaItems:currentIndx:checkFollowingMediaItems:remainingItems:subtitleAttributesForMediaItems:isFirstPage:", [v59 objectForKey:key], items, v13, -1, v18, v58, v49);
      v21 = objc_alloc_init(NSMutableArray);
      v22 = [v58 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(items, "objectAtIndexedSubscript:", v13), "uniqueURL")}];
      if (!v19)
      {
        v26 = [(OKAutoLayout *)selfCopy _titleTextForPresentation:selfCopy->_presentation];
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
          attributedText = [v22 attributedText];
          if (attributedText)
          {
            break;
          }

          attributedText = [v22 text];
          if (attributedText)
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
        v28 = selfCopy;
        v54 = v27;
        [v27 setObject:objc_msgSend(v20 forKey:{"origLayout"), key}];
        v53 = v20;
        v57 = v13;
        v29 = [items subarrayWithRange:{v13, objc_msgSend(v20, "numOfMedia")}];
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        allKeys = [v59 allKeys];
        v31 = [allKeys countByEnumeratingWithState:&v61 objects:v67 count:16];
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
                objc_enumerationMutation(allKeys);
              }

              v35 = *(*(&v61 + 1) + 8 * i);
              if (([v35 isEqualToString:key] & 1) == 0)
              {
                keyCopy = key;
                v37 = [v59 objectForKey:v35];
                v38 = [v29 count];
                LOBYTE(v49) = [v60 count] == 0;
                v39 = [(OKAutoLayout *)v28 _findBestMatchingLayoutFromLayouts:v37 forMediaItems:itemsCopy currentIndx:v57 checkFollowingMediaItems:v38 remainingItems:v56 subtitleAttributesForMediaItems:v58 isFirstPage:v49];
                if (v39)
                {
                  [v54 setObject:objc_msgSend(v39 forKey:{"origLayout"), v35}];
                }

                else
                {
                  NSLog(@"can NOT find matched layout for resolution: %@", v35);
                }

                key = keyCopy;
              }
            }

            v32 = [allKeys countByEnumeratingWithState:&v61 objects:v67 count:16];
          }

          while (v32);
        }

        selfCopy = v28;
        [(OKAutoLayout *)v28 _maxDurationOfMediaItems:v29];
        v41 = v40;
        v42 = v28;
        v43 = v29;
        v21 = v52;
        v20 = v53;
        v44 = [(OKAutoLayout *)v42 _matchMediaItems:v43 toLayoutInfo:v53 orderedKeys:v52];
        v65[0] = @"primary resolution";
        v65[1] = @"all layouts";
        v66[0] = key;
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
        items = itemsCopy;
        v8 = v50;
        v13 = v57;
      }

      [v20 currentScore];
      *&v47 = v46 + -5.0;
      [v20 setCurrentScore:v47];
      v13 += [v20 numOfMedia];
      if (v13 >= [items count])
      {
        goto LABEL_47;
      }
    }

    v24 = attributedText;
LABEL_28:
    textWidgetName = [v20 textWidgetName];
    v69 = v24;
    v25 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&textWidgetName count:1];
    [v21 addObject:{objc_msgSend(v20, "textWidgetName")}];
    goto LABEL_29;
  }

LABEL_47:
  [(NSMutableDictionary *)selfCopy->_metadataCacheDict removeAllObjects];
  return v60;
}

- (id)_metadataForMediaItem:(id)item
{
  metadata = -[NSMutableDictionary objectForKey:](self->_metadataCacheDict, "objectForKey:", [item uniqueURL]);
  if (!metadata)
  {
    metadata = [item metadata];
    if (metadata)
    {
      -[NSMutableDictionary setObject:forKey:](self->_metadataCacheDict, "setObject:forKey:", metadata, [item uniqueURL]);
    }
  }

  return metadata;
}

- (id)_parseLayouts:(id)layouts
{
  v19 = +[NSMutableDictionary dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [layouts allKeys];
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
        v6 = [layouts objectForKey:v4];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        allKeys = [v6 allKeys];
        v8 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                objc_enumerationMutation(allKeys);
              }

              v12 = *(*(&v22 + 1) + 8 * j);
              v13 = -[OKAutoLayoutLayoutInfo initWithLayout:]([OKAutoLayoutLayoutInfo alloc], "initWithLayout:", [v6 objectForKey:v12]);
              [(OKAutoLayoutLayoutInfo *)v13 baseScore];
              if (v14 > 0.0)
              {
                [v5 setObject:v13 forKey:v12];
              }
            }

            v9 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
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

- (BOOL)startFeedWith:(id)with primaryResolutionKey:(id)key
{
  self->_liveFeedContext = objc_opt_new();
  [(OKAutoLayoutLiveFeedContext *)self->_liveFeedContext setLayoutInfos:[(OKAutoLayout *)self _parseLayouts:with]];
  [(OKAutoLayoutLiveFeedContext *)self->_liveFeedContext setPrimaryResolutionKey:key];
  [(OKAutoLayoutLiveFeedContext *)self->_liveFeedContext setPagesGenerated:0];
  return 1;
}

- (id)generateNextPagesByMediaItems:(id)items maxPages:(int64_t)pages isFirstPage:(BOOL)page
{
  selfCopy = self;
  layoutInfos = [(OKAutoLayoutLiveFeedContext *)self->_liveFeedContext layoutInfos];
  primaryResolutionKey = [(OKAutoLayoutLiveFeedContext *)selfCopy->_liveFeedContext primaryResolutionKey];
  pagesGenerated = [(OKAutoLayoutLiveFeedContext *)selfCopy->_liveFeedContext pagesGenerated];
  v8 = +[NSMutableArray array];
  itemsCopy = items;
  if ([items count])
  {
    v9 = 0;
    v38 = v8;
    do
    {
      if ([v8 count] >= pages)
      {
        break;
      }

      LOBYTE(v37) = page;
      v10 = [itemsCopy count] - v9;
      v11 = [(OKAutoLayout *)selfCopy _findBestMatchingLayoutFromLayouts:[(NSMutableDictionary *)layoutInfos objectForKey:primaryResolutionKey] forMediaItems:itemsCopy currentIndx:v9 checkFollowingMediaItems:-1 remainingItems:v10 subtitleAttributesForMediaItems:&__NSDictionary0__struct isFirstPage:v37];
      v12 = [itemsCopy subarrayWithRange:{v9, objc_msgSend(v11, "numOfMedia")}];
      v13 = objc_alloc_init(NSMutableArray);
      if (pagesGenerated | v9 || (v14 = [(OKAutoLayout *)selfCopy _titleTextForPresentation:selfCopy->_presentation]) == 0)
      {
        v16 = &__NSDictionary0__struct;
        if (v11)
        {
LABEL_9:
          v41 = v16;
          v42 = v13;
          v46 = v9;
          v17 = selfCopy;
          v18 = +[NSMutableDictionary dictionary];
          v45 = +[NSMutableDictionary dictionary];
          v43 = v11;
          v44 = v18;
          [v18 setObject:objc_msgSend(v11 forKey:{"origLayout"), primaryResolutionKey}];
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          allKeys = [(NSMutableDictionary *)layoutInfos allKeys];
          v20 = [allKeys countByEnumeratingWithState:&v50 objects:v56 count:16];
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
                  objc_enumerationMutation(allKeys);
                }

                v24 = *(*(&v50 + 1) + 8 * i);
                if (([v24 isEqualToString:primaryResolutionKey] & 1) == 0)
                {
                  LOBYTE(v37) = page;
                  v25 = -[OKAutoLayout _findBestMatchingLayoutFromLayouts:forMediaItems:currentIndx:checkFollowingMediaItems:remainingItems:subtitleAttributesForMediaItems:isFirstPage:](v17, "_findBestMatchingLayoutFromLayouts:forMediaItems:currentIndx:checkFollowingMediaItems:remainingItems:subtitleAttributesForMediaItems:isFirstPage:", -[NSMutableDictionary objectForKey:](layoutInfos, "objectForKey:", v24), itemsCopy, v46, [v12 count], v10, &__NSDictionary0__struct, v37);
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

              v21 = [allKeys countByEnumeratingWithState:&v50 objects:v56 count:16];
            }

            while (v21);
          }

          selfCopy = v17;
          [(OKAutoLayout *)v17 _maxDurationOfMediaItems:v12];
          v30 = v29;
          v31 = v17;
          v13 = v42;
          v32 = [(OKAutoLayout *)v31 _matchMediaItems:v12 toLayoutInfo:v43 orderedKeys:v42];
          v54[0] = @"primary resolution";
          v54[1] = @"all layouts";
          v55[0] = primaryResolutionKey;
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
          -[OKAutoLayoutLiveFeedContext setMediasUsed:](selfCopy->_liveFeedContext, "setMediasUsed:", [v43 numOfMedia] + -[OKAutoLayoutLiveFeedContext mediasUsed](selfCopy->_liveFeedContext, "mediasUsed"));
          v9 = [v43 numOfMedia] + v46;
          [v43 currentScore];
          *&v35 = v34 + -5.0;
          [v43 setCurrentScore:v35];
          [(OKAutoLayoutFreqController *)selfCopy->_freqController addOnePageLayout:v45];
          goto LABEL_24;
        }
      }

      else
      {
        v15 = v14;
        textWidgetName = [v11 textWidgetName];
        v58 = v15;
        v16 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&textWidgetName count:1];
        [v13 addObject:{objc_msgSend(v11, "textWidgetName")}];
        if (v11)
        {
          goto LABEL_9;
        }
      }

      v8 = v38;
LABEL_24:

      page = 0;
    }

    while (v9 < [itemsCopy count]);
  }

  [(NSMutableDictionary *)selfCopy->_metadataCacheDict removeAllObjects];
  -[OKAutoLayoutLiveFeedContext setPagesGenerated:](selfCopy->_liveFeedContext, "setPagesGenerated:", [v8 count] + -[OKAutoLayoutLiveFeedContext pagesGenerated](selfCopy->_liveFeedContext, "pagesGenerated"));
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