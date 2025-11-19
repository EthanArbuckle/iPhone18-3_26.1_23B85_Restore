@interface SBPIPContentViewLayoutSettings
+ (id)pipDefaults;
- (CGSize)_contentViewSizeForAspectRatio:(CGSize)a3 currentSize:(double)a4;
- (CGSize)_maximumContentViewSizeForAspectRatio:(CGSize)a3 maximumReferenceSize:(double)a4;
- (CGSize)_minimumContentViewSizeForAspectRatio:(CGSize)a3 minimumReferenceSize:(double)a4;
- (CGSize)currentContentViewSizeForAspectRatio:(CGSize)a3;
- (CGSize)defaultContentViewSizeForAspectRatio:(CGSize)a3;
- (CGSize)maximumPossibleContentViewSizeForAspectRatio:(CGSize)a3;
- (CGSize)maximumPreferredContentViewSizeForAspectRatio:(CGSize)a3;
- (CGSize)minimumPossibleContentViewSizeForAspectRatio:(CGSize)a3;
- (CGSize)minimumPreferredContentViewSizeForAspectRatio:(CGSize)a3;
- (CGSize)minimumStashedTabSize;
- (SBPIPContentViewLayoutSettings)initWithPlatformMetrics:(id)a3 contentSize:(CGSize)a4;
- (unint64_t)currentContentViewPosition;
- (void)setContentViewPosition:(unint64_t)a3;
- (void)setContentViewSize:(CGSize)a3;
- (void)updatePlatformMetrics:(id)a3;
@end

@implementation SBPIPContentViewLayoutSettings

+ (id)pipDefaults
{
  if (pipDefaults_sOnceToken != -1)
  {
    +[SBPIPContentViewLayoutSettings pipDefaults];
  }

  v3 = pipDefaults_sPIPDefaults;

  return v3;
}

void __45__SBPIPContentViewLayoutSettings_pipDefaults__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D66008]);
  v1 = pipDefaults_sPIPDefaults;
  pipDefaults_sPIPDefaults = v0;
}

- (SBPIPContentViewLayoutSettings)initWithPlatformMetrics:(id)a3 contentSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v16.receiver = self;
  v16.super_class = SBPIPContentViewLayoutSettings;
  v9 = [(SBPIPContentViewLayoutSettings *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_platformMetrics, a3);
    v11 = +[SBPIPContentViewLayoutSettings pipDefaults];
    pipDefaults = v10->_pipDefaults;
    v10->_pipDefaults = v11;

    v13 = [[SBPIPContentViewLayoutContext alloc] initWithPlatformMetrics:v8 contentSize:v10->_pipDefaults defaults:width, height];
    context = v10->_context;
    v10->_context = v13;
  }

  return v10;
}

- (void)updatePlatformMetrics:(id)a3
{
  objc_storeStrong(&self->_platformMetrics, a3);
  v5 = a3;
  [(SBPIPContentViewLayoutContext *)self->_context updatePlatformMetrics:v5];
}

- (void)setContentViewSize:(CGSize)a3
{
  height = a3.height;
  if (a3.width >= a3.height)
  {
    width = a3.width;
  }

  else
  {
    width = a3.height;
  }

  if (a3.width == 0.0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = a3.width;
  }

  [(SBPIPContentViewLayoutContext *)self->_context currentSize];
  if (v7 != width)
  {
    v8 = height / v6;
    v9 = [(SBPIPContentViewLayoutMetrics *)self->_platformMetrics sizePolicy];
    v40 = [v9 sizePreferencesForAspectRatio:v8];

    [v40 longSideDefaultSize];
    v39 = v10;
    [v40 longSideMinimumSize];
    v12 = v11;
    [v40 longSideMaximumSize];
    v14 = v13;
    v15 = v13 - v12;
    [(SBPIPContentViewLayoutContext *)self->_context minimumSizeSpanBetweenPreferredSizes];
    v17 = v16;
    [(SBPIPContentViewLayoutContext *)self->_context maximumSizeSpanForPreferredSizeTuning];
    v19 = v18;
    [(SBPIPContentViewLayoutContext *)self->_context currentSize];
    v21 = v20;
    [(SBPIPContentViewLayoutContext *)self->_context maximumSizePreference];
    v23 = v22;
    [(SBPIPContentViewLayoutContext *)self->_context minimumSizePreference];
    v25 = (width - v24) / v15;
    v26 = v25 < v19;
    if (v25 >= v19)
    {
      v27 = width;
    }

    else
    {
      v27 = v23;
    }

    if (v26)
    {
      v28 = width;
    }

    else
    {
      v28 = v24;
    }

    v29 = (v23 - width) / v15;
    v30 = v29 < v19;
    if (v29 >= v19)
    {
      v31 = v23;
    }

    else
    {
      v31 = width;
    }

    if (v30)
    {
      v32 = v24;
    }

    else
    {
      v32 = width;
    }

    if (width < v21)
    {
      v27 = v31;
      v28 = v32;
    }

    if (v27 > v28 && vabdd_f64(v27, v28) / v15 >= v17)
    {
      v23 = v27;
      v27 = v28;
    }

    if (v27 >= v23 || vabdd_f64(v23, v27) / v15 < v17)
    {
      v23 = v27;
      v27 = v24;
    }

    [(SBPIPContentViewLayoutContext *)self->_context setMinimumSizePreference:v27];
    [(SBPIPContentViewLayoutContext *)self->_context setMaximumSizePreference:v23];
    [(SBPIPContentViewLayoutContext *)self->_context maximumSizePreference];
    v34 = v33;
    [(SBPIPContentViewLayoutContext *)self->_context minimumSizePreference];
    if (vabdd_f64(v34, v35) / v15 < v17)
    {
      [(SBPIPContentViewLayoutContext *)self->_context setMaximumSizePreference:v14];
    }

    [(SBPIPContentViewLayoutContext *)self->_context maximumSizePreference];
    v37 = v36;
    [(SBPIPContentViewLayoutContext *)self->_context minimumSizePreference];
    if (vabdd_f64(v37, v38) / v15 < v17)
    {
      [(SBPIPContentViewLayoutContext *)self->_context setMinimumSizePreference:v39];
    }

    [(SBPIPContentViewLayoutContext *)self->_context setCurrentSize:width forAspectRatio:v8];
  }
}

- (CGSize)defaultContentViewSizeForAspectRatio:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = +[SBPIPSettingsDomain rootSettings];
  v7 = [v6 interactionSettings];
  v8 = [v7 alwaysStartAtSmallestSize];

  if (v8)
  {

    [(SBPIPContentViewLayoutSettings *)self minimumPossibleContentViewSizeForAspectRatio:width, height];
  }

  else
  {
    v11 = [(SBPIPDefaults *)self->_pipDefaults initiallyUsesMinimumPreferredContentSize];
    context = self->_context;
    if (v11)
    {
      [(SBPIPContentViewLayoutContext *)context minimumSizePreference];
    }

    else
    {
      [(SBPIPContentViewLayoutContext *)context currentSize];
    }

    [(SBPIPContentViewLayoutSettings *)self _contentViewSizeForAspectRatio:width currentSize:height, v13];
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)_contentViewSizeForAspectRatio:(CGSize)a3 currentSize:(double)a4
{
  height = a3.height;
  width = a3.width;
  [(SBPIPContentViewLayoutSettings *)self minimumPossibleContentViewSizeForAspectRatio:?];
  v9 = v8;
  v11 = v10;
  [(SBPIPContentViewLayoutSettings *)self maximumPossibleContentViewSizeForAspectRatio:width, height];
  if (width == 0.0 || height == 0.0)
  {
    v22 = a4;
  }

  else
  {
    v14 = v12;
    v15 = v13;
    UIRoundToScale();
    v17 = v16;
    UIRoundToScale();
    v19 = v18 < v11;
    if (v17 < v9)
    {
      v19 = 1;
    }

    if (v19)
    {
      v18 = v11;
      v20 = v9;
    }

    else
    {
      v20 = v17;
    }

    v21 = v18 > v15;
    if (v20 > v14)
    {
      v21 = 1;
    }

    if (v21)
    {
      v22 = v15;
    }

    else
    {
      v22 = v18;
    }

    if (v21)
    {
      a4 = v14;
    }

    else
    {
      a4 = v20;
    }
  }

  v23 = a4;
  result.height = v22;
  result.width = v23;
  return result;
}

- (CGSize)currentContentViewSizeForAspectRatio:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SBPIPContentViewLayoutContext *)self->_context currentSize];

  [(SBPIPContentViewLayoutSettings *)self _contentViewSizeForAspectRatio:width currentSize:height, v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)minimumPossibleContentViewSizeForAspectRatio:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SBPIPContentViewLayoutMetrics *)self->_platformMetrics sizePolicy];
  v7 = v6;
  v8 = 1.0;
  if (width != 0.0)
  {
    v8 = width;
  }

  v9 = [v6 sizePreferencesForAspectRatio:height / v8];

  [v9 longSideMinimumSize];
  [(SBPIPContentViewLayoutSettings *)self _minimumContentViewSizeForAspectRatio:width minimumReferenceSize:height, v10];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)maximumPossibleContentViewSizeForAspectRatio:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SBPIPContentViewLayoutMetrics *)self->_platformMetrics sizePolicy];
  v7 = v6;
  v8 = 1.0;
  if (width != 0.0)
  {
    v8 = width;
  }

  v9 = [v6 sizePreferencesForAspectRatio:height / v8];

  [v9 longSideMaximumSize];
  [(SBPIPContentViewLayoutSettings *)self _maximumContentViewSizeForAspectRatio:width maximumReferenceSize:height, v10];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)minimumPreferredContentViewSizeForAspectRatio:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SBPIPContentViewLayoutContext *)self->_context minimumSizePreference];

  [(SBPIPContentViewLayoutSettings *)self _minimumContentViewSizeForAspectRatio:width minimumReferenceSize:height, v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)maximumPreferredContentViewSizeForAspectRatio:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SBPIPContentViewLayoutContext *)self->_context maximumSizePreference];

  [(SBPIPContentViewLayoutSettings *)self _maximumContentViewSizeForAspectRatio:width maximumReferenceSize:height, v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)_minimumContentViewSizeForAspectRatio:(CGSize)a3 minimumReferenceSize:(double)a4
{
  v4 = a4;
  if (a3.width == 0.0 || (height = a3.height, a3.height == 0.0))
  {
    v10 = a4;
  }

  else
  {
    width = a3.width;
    UIRoundToScale();
    v4 = v8;
    UIRoundToScale();
    v10 = v9;
    v11 = [(SBPIPContentViewLayoutMetrics *)self->_platformMetrics sizePolicy];
    v12 = [v11 sizePreferencesForAspectRatio:height / width];

    [v12 shortSideMinimumSize];
    v14 = v13;
    if (v4 >= v10)
    {
      if (v10 < v13)
      {
        UIRoundToScale();
        v4 = v16;
        v10 = v14;
      }
    }

    else if (v4 < v13)
    {
      UIRoundToScale();
      v10 = v15;
      v4 = v14;
    }
  }

  v17 = v4;
  v18 = v10;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)_maximumContentViewSizeForAspectRatio:(CGSize)a3 maximumReferenceSize:(double)a4
{
  v4 = a4;
  if (a3.width == 0.0 || a3.height == 0.0)
  {
    v7 = a4;
  }

  else
  {
    UIRoundToScale();
    v4 = v5;
    UIRoundToScale();
    v7 = v6;
  }

  v8 = v4;
  result.height = v7;
  result.width = v8;
  return result;
}

- (CGSize)minimumStashedTabSize
{
  [(SBPIPContentViewLayoutMetrics *)self->_platformMetrics minimumStashedTabSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentViewPosition:(unint64_t)a3
{
  pipDefaults = self->_pipDefaults;
  v5 = [(SBPIPContentViewLayoutMetrics *)self->_platformMetrics contentTypeIdentifier];
  [(SBPIPDefaults *)pipDefaults setLastKnownCornerPosition:a3 contentType:v5];
}

- (unint64_t)currentContentViewPosition
{
  pipDefaults = self->_pipDefaults;
  v4 = [(SBPIPContentViewLayoutMetrics *)self->_platformMetrics contentTypeIdentifier];
  v5 = [(SBPIPDefaults *)pipDefaults lastKnownCornerPositionForContentType:v4];

  if (![(SBPIPContentViewLayoutMetrics *)self->_platformMetrics prefersDefaultPosition])
  {
    return v5;
  }

  platformMetrics = self->_platformMetrics;

  return [(SBPIPContentViewLayoutMetrics *)platformMetrics defaultPosition];
}

@end