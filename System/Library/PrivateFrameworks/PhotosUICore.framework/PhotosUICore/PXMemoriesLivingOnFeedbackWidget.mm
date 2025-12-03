@interface PXMemoriesLivingOnFeedbackWidget
- (BOOL)hasContentForCurrentInput;
- (CGSize)_layoutTokenViewsWithWidth:(double)width;
- (NSArray)featureViews;
- (PXWidgetDelegate)widgetDelegate;
- (UIView)contentView;
- (id)_loadContentView;
- (id)_tokenViewsWithSuperview:(id)superview;
- (void)_loadContentData;
- (void)_loadFeaturesFromPhotosGraphProperties:(id)properties;
- (void)_showReportFeedback;
- (void)loadContentData;
- (void)setContext:(id)context;
- (void)setWidgetDelegate:(id)delegate;
@end

@implementation PXMemoriesLivingOnFeedbackWidget

- (PXWidgetDelegate)widgetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetDelegate);

  return WeakRetained;
}

- (void)_showReportFeedback
{
  v3 = [PXMemoryDiagnosticsViewController alloc];
  memory = [(PXMemoriesLivingOnFeedbackWidget *)self memory];
  v6 = [(PXMemoryDiagnosticsViewController *)v3 initWithMemory:memory];

  [(PXCuratedAssetCollectionDiagnosticsViewController *)v6 setShouldPresentTapToRadar:1];
  widgetDelegate = [(PXMemoriesLivingOnFeedbackWidget *)self widgetDelegate];
  [widgetDelegate widget:self transitionToViewController:v6 withTransitionType:2];
}

- (CGSize)_layoutTokenViewsWithWidth:(double)width
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695F058];
  height = *(MEMORY[0x1E695F058] + 24);
  r1 = *(MEMORY[0x1E695F058] + 16);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  featureViews = [(PXMemoriesLivingOnFeedbackWidget *)self featureViews];
  v7 = [featureViews countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    x = *v4;
    y = v4[1];
    v11 = *v25;
    v22 = width + -20.0;
    v12 = 20.0;
    v13 = 20.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(featureViews);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        [v15 intrinsicContentSize];
        v17 = v16;
        v19 = v18;
        v31.origin.x = v13;
        v31.origin.y = v12;
        v31.size.width = v17;
        v31.size.height = v19;
        if (CGRectGetMaxX(v31) > v22)
        {
          v13 = 20.0;
          v12 = v12 + v19 + 4.0;
        }

        [v15 setFrame:{v13, v12, v17, v19}];
        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = r1;
        v32.size.height = height;
        v34.origin.x = v13;
        v34.origin.y = v12;
        v34.size.width = v17;
        v34.size.height = v19;
        v33 = CGRectUnion(v32, v34);
        x = v33.origin.x;
        y = v33.origin.y;
        r1 = v33.size.width;
        height = v33.size.height;
        v33.origin.x = v13;
        v33.origin.y = v12;
        v33.size.width = v17;
        v33.size.height = v19;
        v13 = CGRectGetMaxX(v33) + 4.0;
      }

      v8 = [featureViews countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v20 = height + 15.0;
  v21 = r1;
  result.height = v20;
  result.width = v21;
  return result;
}

- (NSArray)featureViews
{
  featureViews = self->_featureViews;
  if (!featureViews)
  {
    contentView = [(PXMemoriesLivingOnFeedbackWidget *)self contentView];
    v5 = [(PXMemoriesLivingOnFeedbackWidget *)self _tokenViewsWithSuperview:contentView];
    v6 = self->_featureViews;
    self->_featureViews = v5;

    featureViews = self->_featureViews;
  }

  return featureViews;
}

- (id)_tokenViewsWithSuperview:(id)superview
{
  v21 = *MEMORY[0x1E69E9840];
  superviewCopy = superview;
  array = [MEMORY[0x1E695DF70] array];
  v6 = superviewCopy;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(PXMemoriesLivingOnFeedbackWidget *)self features];
  v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_alloc_init(PXProtoTextualFeatureView);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __61__PXMemoriesLivingOnFeedbackWidget__tokenViewsWithSuperview___block_invoke;
        v15[3] = &unk_1E774BE00;
        v15[4] = v11;
        [(PXProtoFeatureView *)v12 performChanges:v15];
        [array addObject:v12];
        [v6 addSubview:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)_loadFeaturesFromPhotosGraphProperties:(id)properties
{
  v88 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v4 = [propertiesCopy objectForKeyedSubscript:@"info"];
  v49 = [v4 objectForKeyedSubscript:@"meaningLabels"];
  v53 = [v4 objectForKeyedSubscript:@"moodKeywords"];
  v54 = [v4 objectForKeyedSubscript:@"suggestedMood"];
  v51 = v4;
  v55 = [v4 objectForKeyedSubscript:@"notificationQuality"];
  v52 = propertiesCopy;
  v5 = [propertiesCopy objectForKeyedSubscript:@"backingMoments"];
  v60 = [MEMORY[0x1E695DFA8] set];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v5;
  v58 = [obj countByEnumeratingWithState:&v77 objects:v87 count:16];
  if (v58)
  {
    v57 = *v78;
    do
    {
      v6 = 0;
      do
      {
        if (*v78 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v59 = v6;
        v7 = [*(*(&v77 + 1) + 8 * v6) objectForKeyedSubscript:@"keywords"];
        v8 = [v7 objectForKeyedSubscript:@"Place"];

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v73 objects:v86 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v74;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v74 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v73 + 1) + 8 * i);
              v15 = [v14 rangeOfString:@"]"];
              if (v15 < 2 || v15 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v17 = PLUIGetLog();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v85 = v14;
                  _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "Cannot parse place %@ in places. Unknown format.", buf, 0xCu);
                }
              }

              else
              {
                v17 = [v14 substringWithRange:{1, v15 - 1}];
                [v60 addObject:v17];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v73 objects:v86 count:16];
          }

          while (v11);
        }

        v6 = v59 + 1;
      }

      while (v59 + 1 != v58);
      v58 = [obj countByEnumeratingWithState:&v77 objects:v87 count:16];
    }

    while (v58);
  }

  v18 = [v49 count];
  v19 = [v53 count];
  v20 = [v60 count];
  v21 = v55 != 0;
  if (v54)
  {
    ++v21;
  }

  v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:v21 + v18 + v19 + v20];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v23 = v49;
  v24 = [v23 countByEnumeratingWithState:&v69 objects:v83 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v70;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v70 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v69 + 1) + 8 * j);
        v29 = [(__CFString *)v28 isEqualToString:@"HolidayEvent"];
        v30 = [PXMemoriesDebugFeature alloc];
        if (v29)
        {
          v31 = &stru_1F1741150;
          v32 = 1;
        }

        else
        {
          v31 = v28;
          v32 = 0;
        }

        v33 = [(PXMemoriesDebugFeature *)v30 initWithLocalizedTitle:v31 type:v32];
        [v22 addObject:v33];
      }

      v25 = [v23 countByEnumeratingWithState:&v69 objects:v83 count:16];
    }

    while (v25);
  }

  if (v54)
  {
    v34 = [[PXMemoriesDebugFeature alloc] initWithLocalizedTitle:v54 type:3];
    [v22 addObject:v34];
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v35 = v53;
  v36 = [v35 countByEnumeratingWithState:&v65 objects:v82 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v66;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v66 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [[PXMemoriesDebugFeature alloc] initWithLocalizedTitle:*(*(&v65 + 1) + 8 * k) type:4];
        [v22 addObject:v40];
      }

      v37 = [v35 countByEnumeratingWithState:&v65 objects:v82 count:16];
    }

    while (v37);
  }

  if (v55 && ([v55 isEqualToString:@"None"] & 1) == 0)
  {
    v41 = [[PXMemoriesDebugFeature alloc] initWithLocalizedTitle:v55 type:5];
    [v22 addObject:v41];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v42 = v60;
  v43 = [v42 countByEnumeratingWithState:&v61 objects:v81 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v62;
    do
    {
      for (m = 0; m != v44; ++m)
      {
        if (*v62 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [[PXMemoriesDebugFeature alloc] initWithLocalizedTitle:*(*(&v61 + 1) + 8 * m) type:2];
        [v22 addObject:v47];
      }

      v44 = [v42 countByEnumeratingWithState:&v61 objects:v81 count:16];
    }

    while (v44);
  }

  [(PXMemoriesLivingOnFeedbackWidget *)self setFeatures:v22];
  featureViews = self->_featureViews;
  self->_featureViews = 0;
}

- (id)_loadContentView
{
  v2 = objc_alloc(MEMORY[0x1E69DD250]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  return v3;
}

- (UIView)contentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    _loadContentView = [(PXMemoriesLivingOnFeedbackWidget *)self _loadContentView];
    v5 = self->_contentView;
    self->_contentView = _loadContentView;

    contentView = self->_contentView;
  }

  return contentView;
}

- (void)_loadContentData
{
  context = [(PXMemoriesLivingOnFeedbackWidget *)self context];
  assetCollections = [context assetCollections];
  if ([assetCollections count] == 1)
  {
    firstObject = [assetCollections firstObject];
    if ([firstObject assetCollectionType] == 4)
    {
      v5 = firstObject;
      [(PXMemoriesLivingOnFeedbackWidget *)self setMemory:v5];
      photosGraphProperties = [v5 photosGraphProperties];

      [(PXMemoriesLivingOnFeedbackWidget *)self _loadFeaturesFromPhotosGraphProperties:photosGraphProperties];
    }
  }

  self->_hasLoadedContentData = 1;
}

- (void)loadContentData
{
  if (!self->_hasLoadedContentData)
  {
    [(PXMemoriesLivingOnFeedbackWidget *)self _loadContentData];
  }
}

- (BOOL)hasContentForCurrentInput
{
  [(PXMemoriesLivingOnFeedbackWidget *)self loadContentData];
  features = [(PXMemoriesLivingOnFeedbackWidget *)self features];
  v4 = [features count];

  return v4 != 0;
}

- (void)setWidgetDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_widgetDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_widgetDelegate, obj);
    v5 = obj;
  }
}

- (void)setContext:(id)context
{
  contextCopy = context;
  context = self->_context;
  p_context = &self->_context;
  if (context != contextCopy)
  {
    v8 = contextCopy;
    objc_storeStrong(p_context, context);
    contextCopy = v8;
  }
}

@end