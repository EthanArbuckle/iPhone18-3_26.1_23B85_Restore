@interface PXFeatureSpec
- (CGSize)layoutReferenceSize;
- (PXExtendedTraitCollection)rootExtendedTraitCollection;
- (PXFeatureSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options;
- (UIEdgeInsets)_fullscreenContentInsetsForWidth:(double)width;
- (UIEdgeInsets)contentGuideInsetsForScrollAxis:(int64_t)axis;
- (UIEdgeInsets)curatedLibraryEdgeToEdgeContentDefaultPadding;
- (UIEdgeInsets)layoutMargins;
- (UIEdgeInsets)safeAreaInsets;
- (double)defaultCornerRadius;
- (id)_textAttributesForFontName:(id)name fontSize:(double)size lineHeight:(double)height tracking:(double)tracking stroke:(double)stroke;
- (id)collectionTileImageOverlayColorHighlighted;
- (id)createViewSpecWithDescriptor:(PXViewSpecDescriptor *)descriptor;
- (id)viewSpecWithDescriptor:(PXViewSpecDescriptor *)descriptor;
- (int64_t)localizedLeadingTextAlignment;
- (void)configureViewSpec:(id)spec;
@end

@implementation PXFeatureSpec

- (UIEdgeInsets)safeAreaInsets
{
  top = self->_safeAreaInsets.top;
  left = self->_safeAreaInsets.left;
  bottom = self->_safeAreaInsets.bottom;
  right = self->_safeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)layoutReferenceSize
{
  width = self->_layoutReferenceSize.width;
  height = self->_layoutReferenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)layoutMargins
{
  top = self->_layoutMargins.top;
  left = self->_layoutMargins.left;
  bottom = self->_layoutMargins.bottom;
  right = self->_layoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)curatedLibraryEdgeToEdgeContentDefaultPadding
{
  sizeClass = [(PXFeatureSpec *)self sizeClass];
  v4 = 20.0;
  v5 = 20.0;
  if (sizeClass != 2)
  {
    [(PXFeatureSpec *)self contentGuideInsetsForScrollAxis:1];
  }

  v6 = 20.0;
  v7 = 20.0;
  result.right = v4;
  result.bottom = v7;
  result.left = v5;
  result.top = v6;
  return result;
}

- (int64_t)localizedLeadingTextAlignment
{
  if (localizedLeadingTextAlignment_onceToken != -1)
  {
    dispatch_once(&localizedLeadingTextAlignment_onceToken, &__block_literal_global_23_5591);
  }

  return localizedLeadingTextAlignment_textAlignment;
}

uint64_t __46__PXFeatureSpec_localizedLeadingTextAlignment__block_invoke()
{
  result = [MEMORY[0x1E695DF58] px_currentCharacterDirection];
  localizedLeadingTextAlignment_textAlignment = 2 * (result == 2);
  return result;
}

- (id)_textAttributesForFontName:(id)name fontSize:(double)size lineHeight:(double)height tracking:(double)tracking stroke:(double)stroke
{
  v24 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
  if (nameCopy)
  {
    v13 = PXFontCreate(nameCopy, size);
    if (v13)
    {
      goto LABEL_10;
    }

    v14 = _textAttributesForFontName_fontSize_lineHeight_tracking_stroke__reportedFontNames;
    if (!_textAttributesForFontName_fontSize_lineHeight_tracking_stroke__reportedFontNames)
    {
      v15 = [MEMORY[0x1E695DFA8] set];
      v16 = _textAttributesForFontName_fontSize_lineHeight_tracking_stroke__reportedFontNames;
      _textAttributesForFontName_fontSize_lineHeight_tracking_stroke__reportedFontNames = v15;

      v14 = _textAttributesForFontName_fontSize_lineHeight_tracking_stroke__reportedFontNames;
    }

    if (([v14 containsObject:nameCopy] & 1) == 0)
    {
      [_textAttributesForFontName_fontSize_lineHeight_tracking_stroke__reportedFontNames addObject:nameCopy];
      v17 = PFUIGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v22 = 138412290;
        v23 = nameCopy;
        _os_log_impl(&dword_1B3F73000, v17, OS_LOG_TYPE_ERROR, "Couldn't find font with name %@", &v22, 0xCu);
      }
    }
  }

  v13 = [MEMORY[0x1E69DB878] systemFontOfSize:size];
LABEL_10:
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69DB648]];
  if (height != 0.0)
  {
    v18 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v18 setMinimumLineHeight:height];
    [v18 setMaximumLineHeight:height];
    [v12 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69DB688]];
  }

  if (tracking != 0.0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:size * tracking / 1000.0];
    [v12 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69DB660]];
  }

  if (stroke > 0.0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:-stroke];
    [v12 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69DB6C8]];
  }

  return v12;
}

- (id)collectionTileImageOverlayColorHighlighted
{
  if (self->_userInterfaceIdiom == 3)
  {
    [(PXFeatureSpec *)self collectionTileImageOverlayColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
  }
  v2 = ;

  return v2;
}

- (double)defaultCornerRadius
{
  result = 4.0;
  if (self->_userInterfaceIdiom == 3)
  {
    return 8.0;
  }

  return result;
}

- (PXExtendedTraitCollection)rootExtendedTraitCollection
{
  extendedTraitCollection = [(PXFeatureSpec *)self extendedTraitCollection];
  rootExtendedTraitCollection = [extendedTraitCollection rootExtendedTraitCollection];

  return rootExtendedTraitCollection;
}

- (UIEdgeInsets)_fullscreenContentInsetsForWidth:(double)width
{
  v3 = width / 667.0;
  v4 = width / 667.0 * 0.0;
  v5 = v3 * 62.0;
  v6 = v3 * 32.0;
  v7 = v5;
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (id)createViewSpecWithDescriptor:(PXViewSpecDescriptor *)descriptor
{
  if ((descriptor->var0 - 1900) > 0x63)
  {
    if (descriptor->var0 != 1000)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeatureSpec.m" lineNumber:196 description:{@"unknown context %li", descriptor->var0}];

      abort();
    }

    v7 = objc_alloc_init(PXViewSpec);
    [(PXFeatureSpec *)self configureViewSpec:v7];
    defaultPlaceholderColor = [(PXFeatureSpec *)self defaultPlaceholderColor];
    [(PXViewSpec *)v7 setBackgroundColor:defaultPlaceholderColor];

    [(PXFeatureSpec *)self defaultCornerRadius];
    [(PXViewSpec *)v7 setCornerRadius:?];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXFeatureSpec.m" lineNumber:181 description:@"Missing support for memories in PXFeatureSpec"];
    }

    var2 = descriptor->var2;
    v12[0] = *&descriptor->var0;
    v12[1] = var2;
    v7 = [(PXFeatureSpec *)self createViewSpecForMemoryDescriptor:v12];
  }

  return v7;
}

- (void)configureViewSpec:(id)spec
{
  specCopy = spec;
  [(PXFeatureSpec *)self displayScale];
  [specCopy setDisplayScale:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [specCopy setShouldEnableFocus:self->_userInterfaceIdiom == 3];
  }
}

- (id)viewSpecWithDescriptor:(PXViewSpecDescriptor *)descriptor
{
  var2 = descriptor->var2;
  v12 = *&descriptor->var0;
  v13 = var2;
  v6 = [MEMORY[0x1E696B098] px_valueWithViewSpecDescriptor:&v12];
  _viewSpecCache = [(PXFeatureSpec *)self _viewSpecCache];
  v8 = [_viewSpecCache objectForKey:v6];

  if (!v8)
  {
    v9 = descriptor->var2;
    v12 = *&descriptor->var0;
    v13 = v9;
    v8 = [(PXFeatureSpec *)self createViewSpecWithDescriptor:&v12];
    _viewSpecCache2 = [(PXFeatureSpec *)self _viewSpecCache];
    [_viewSpecCache2 setObject:v8 forKey:v6];
  }

  return v8;
}

- (UIEdgeInsets)contentGuideInsetsForScrollAxis:(int64_t)axis
{
  [(PXFeatureSpec *)self safeAreaInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(PXFeatureSpec *)self layoutReferenceSize];
  v16 = 0.0;
  if (axis == 1)
  {
    v21 = v14 - (v9 + v13);
    if (self->_userInterfaceIdiom == 4)
    {
      v16 = 20.0;
      if (v21 <= 640.0)
      {
        v17 = 20.0;
        v18 = 20.0;
      }

      else
      {
        if (v21 <= 1280.0)
        {
          v17 = (v21 + -640.0) / 640.0 * 193.33334 + 20.0;
        }

        else
        {
          v17 = v21 * 0.166666672;
        }

        v18 = v17;
      }
    }

    else
    {
      _shouldUseMiniMargins = [(PXFeatureSpec *)self _shouldUseMiniMargins];
      v17 = 16.0;
      if (_shouldUseMiniMargins)
      {
        v18 = 16.0;
      }

      else
      {
        _horizontalContentGuideInsetsInterpolator = [(PXFeatureSpec *)self _horizontalContentGuideInsetsInterpolator];
        [_horizontalContentGuideInsetsInterpolator valueForMetric:v21];
        v18 = v27;

        [(PXFeatureSpec *)self layoutMargins];
        if (self->_userInterfaceFeature == 5)
        {
          extendedTraitCollection = [(PXFeatureSpec *)self extendedTraitCollection];
          userInterfaceIdiom = [extendedTraitCollection userInterfaceIdiom];

          if (userInterfaceIdiom == 1 && self->_layoutOrientation == 2 && ([MEMORY[0x1E69DC938] currentDevice], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "orientation"), v31, v32 == 4))
          {
            rootExtendedTraitCollection = [(PXFeatureSpec *)self rootExtendedTraitCollection];
            [rootExtendedTraitCollection layoutMargins];
            v35 = v34;

            if (v18 >= v35)
            {
              v17 = v18;
            }

            else
            {
              v17 = v35;
            }
          }

          else
          {
            v17 = v18;
          }
        }

        else
        {
          v36 = v13 + v18;
          if (v9 + v18 >= v28)
          {
            v18 = v9 + v18;
          }

          else
          {
            v18 = v28;
          }

          if (v36 >= v17)
          {
            v17 = v36;
          }
        }
      }
    }
  }

  else if (axis == 2)
  {
    v20 = v15 - (v7 + v11);
    v16 = 12.0;
    if (v20 > 360.0)
    {
      if (v20 <= 720.0)
      {
        v16 = (v20 + -360.0) / 360.0 * 201.333335 + 12.0;
      }

      else
      {
        v16 = v20 * 0.296296299;
      }
    }

    v17 = 0.0;
    v18 = 0.0;
  }

  else
  {
    v17 = 0.0;
    v18 = 0.0;
    if (!axis)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeatureSpec.m" lineNumber:118 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  v23 = v16;
  v24 = v18;
  v25 = v16;
  result.right = v17;
  result.bottom = v25;
  result.left = v24;
  result.top = v23;
  return result;
}

- (PXFeatureSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options
{
  v56[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v52.receiver = self;
  v52.super_class = PXFeatureSpec;
  v8 = [(PXFeatureSpec *)&v52 init];
  if (!v8)
  {
    goto LABEL_36;
  }

  [collectionCopy displayScale];
  v10 = v9;
  v11 = 1.0;
  if (v10 > 0.0)
  {
    [collectionCopy displayScale];
  }

  *(v8 + 12) = v11;
  *(v8 + 2) = options;
  *(v8 + 3) = [collectionCopy layoutSizeClass];
  *(v8 + 4) = [collectionCopy layoutSizeSubclass];
  *(v8 + 5) = [collectionCopy layoutOrientation];
  *(v8 + 6) = [collectionCopy layoutDirection];
  if (collectionCopy)
  {
    [collectionCopy layoutReferenceSize];
    *(v8 + 19) = v12;
    *(v8 + 20) = v13;
    [collectionCopy safeAreaInsets];
    *(v8 + 21) = v14;
    *(v8 + 22) = v15;
    *(v8 + 23) = v16;
    *(v8 + 24) = v17;
    [collectionCopy layoutMargins];
    *(v8 + 25) = v18;
    *(v8 + 26) = v19;
    *(v8 + 27) = v20;
    *(v8 + 28) = v21;
  }

  else
  {
    *(v8 + 152) = *MEMORY[0x1E695F060];
    *(v8 + 168) = 0u;
    *(v8 + 184) = 0u;
    *(v8 + 200) = 0u;
    *(v8 + 216) = 0u;
  }

  *(v8 + 7) = [collectionCopy userInterfaceIdiom];
  *(v8 + 9) = [collectionCopy userInterfaceStyle];
  *(v8 + 10) = [collectionCopy userInterfaceLevel];
  *(v8 + 11) = [collectionCopy contentSizeCategory];
  v22 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v23 = *(v8 + 16);
  *(v8 + 16) = v22;

  *(v8 + 8) = [collectionCopy userInterfaceFeature];
  objc_storeStrong(v8 + 18, collection);
  v24 = [collectionCopy layoutSizeClass] == 2 || objc_msgSend(collectionCopy, "layoutOrientation") == 2;
  v8[8] = v24;
  *(v8 + 13) = [collectionCopy windowOrientation];
  v25 = *(v8 + 8);
  if ((v25 - 3) >= 2)
  {
    if (v25 == 5)
    {
      v26 = +[PXLayoutMetricInterpolator photosDetailsEdgeInsetsInterpolator];
      goto LABEL_16;
    }

    if (v25 != 1)
    {
      v26 = +[PXLayoutMetricInterpolator memoriesDetailsEdgeInsetsInterpolator];
      goto LABEL_16;
    }
  }

  v26 = +[PXLayoutMetricInterpolator layoutMarginWidthInterpolator];
LABEL_16:
  v27 = *(v8 + 17);
  *(v8 + 17) = v26;

  v28 = objc_alloc_init(PXViewSpec);
  v29 = MEMORY[0x1E69DC888];
  if (options)
  {
    v40 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.200000003];
    [(PXViewSpec *)v28 setBackgroundColor:v40];

    v32 = objc_alloc_init(PXViewSpec);
    v41 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.400000006];
    [(PXViewSpec *)v32 setBackgroundColor:v41];

    v56[0] = v28;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    v43 = *(v8 + 14);
    *(v8 + 14) = v42;

    v55 = v32;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    v34 = *(v8 + 15);
    *(v8 + 15) = v44;
  }

  else
  {
    [v8 defaultDarkenSourceOverAmount];
    v31 = [v29 colorWithWhite:0.0 alpha:v30];
    [(PXViewSpec *)v28 setBackgroundColor:v31];

    [(PXViewSpec *)v28 setCompositingFilterType:1];
    v32 = objc_alloc_init(PXViewSpec);
    v33 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.100000001];
    [(PXViewSpec *)v32 setBackgroundColor:v33];

    v34 = objc_alloc_init(PXViewSpec);
    v35 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.300000012];
    [(PXViewSpec *)v34 setBackgroundColor:v35];

    v54[0] = v28;
    v54[1] = v32;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    v37 = *(v8 + 14);
    *(v8 + 14) = v36;

    v53[0] = v28;
    v53[1] = v34;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
    v39 = *(v8 + 15);
    *(v8 + 15) = v38;
  }

  if ((options & 0x10) != 0)
  {
    v45 = *(v8 + 6);
    v46 = *(v8 + 22);
    if (v45 == 2)
    {
      v47 = *(v8 + 22);
    }

    else
    {
      v47 = *(v8 + 24);
    }

    if (v45 == 2)
    {
      v46 = *(v8 + 24);
    }

    *(v8 + 22) = v46;
    *(v8 + 24) = v47;
    v48 = *(v8 + 26);
    if (v45 == 2)
    {
      v49 = *(v8 + 26);
    }

    else
    {
      v49 = *(v8 + 28);
    }

    if (v45 == 2)
    {
      v48 = *(v8 + 28);
    }

    *(v8 + 26) = v48;
    *(v8 + 28) = v49;
  }

  v50 = [collectionCopy layoutSizeClass] == 1 && objc_msgSend(collectionCopy, "layoutSizeSubclass") == 1 && objc_msgSend(collectionCopy, "layoutOrientation") == 1;
  v8[9] = v50;
LABEL_36:

  return v8;
}

@end