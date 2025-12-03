@interface SBPIPContentViewLayoutSettings
+ (id)pipDefaults;
- (CGSize)_contentViewSizeForAspectRatio:(CGSize)ratio currentSize:(double)size;
- (CGSize)_maximumContentViewSizeForAspectRatio:(CGSize)ratio maximumReferenceSize:(double)size;
- (CGSize)_minimumContentViewSizeForAspectRatio:(CGSize)ratio minimumReferenceSize:(double)size;
- (CGSize)currentContentViewSizeForAspectRatio:(CGSize)ratio;
- (CGSize)defaultContentViewSizeForAspectRatio:(CGSize)ratio;
- (CGSize)maximumPossibleContentViewSizeForAspectRatio:(CGSize)ratio;
- (CGSize)maximumPreferredContentViewSizeForAspectRatio:(CGSize)ratio;
- (CGSize)minimumPossibleContentViewSizeForAspectRatio:(CGSize)ratio;
- (CGSize)minimumPreferredContentViewSizeForAspectRatio:(CGSize)ratio;
- (CGSize)minimumStashedTabSize;
- (SBPIPContentViewLayoutSettings)initWithPlatformMetrics:(id)metrics contentSize:(CGSize)size;
- (unint64_t)currentContentViewPosition;
- (void)setContentViewPosition:(unint64_t)position;
- (void)setContentViewSize:(CGSize)size;
- (void)updatePlatformMetrics:(id)metrics;
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

- (SBPIPContentViewLayoutSettings)initWithPlatformMetrics:(id)metrics contentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  metricsCopy = metrics;
  v16.receiver = self;
  v16.super_class = SBPIPContentViewLayoutSettings;
  v9 = [(SBPIPContentViewLayoutSettings *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_platformMetrics, metrics);
    v11 = +[SBPIPContentViewLayoutSettings pipDefaults];
    pipDefaults = v10->_pipDefaults;
    v10->_pipDefaults = v11;

    height = [[SBPIPContentViewLayoutContext alloc] initWithPlatformMetrics:metricsCopy contentSize:v10->_pipDefaults defaults:width, height];
    context = v10->_context;
    v10->_context = height;
  }

  return v10;
}

- (void)updatePlatformMetrics:(id)metrics
{
  objc_storeStrong(&self->_platformMetrics, metrics);
  metricsCopy = metrics;
  [(SBPIPContentViewLayoutContext *)self->_context updatePlatformMetrics:metricsCopy];
}

- (void)setContentViewSize:(CGSize)size
{
  height = size.height;
  if (size.width >= size.height)
  {
    width = size.width;
  }

  else
  {
    width = size.height;
  }

  if (size.width == 0.0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = size.width;
  }

  [(SBPIPContentViewLayoutContext *)self->_context currentSize];
  if (v7 != width)
  {
    v8 = height / v6;
    sizePolicy = [(SBPIPContentViewLayoutMetrics *)self->_platformMetrics sizePolicy];
    v40 = [sizePolicy sizePreferencesForAspectRatio:v8];

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

- (CGSize)defaultContentViewSizeForAspectRatio:(CGSize)ratio
{
  height = ratio.height;
  width = ratio.width;
  v6 = +[SBPIPSettingsDomain rootSettings];
  interactionSettings = [v6 interactionSettings];
  alwaysStartAtSmallestSize = [interactionSettings alwaysStartAtSmallestSize];

  if (alwaysStartAtSmallestSize)
  {

    [(SBPIPContentViewLayoutSettings *)self minimumPossibleContentViewSizeForAspectRatio:width, height];
  }

  else
  {
    initiallyUsesMinimumPreferredContentSize = [(SBPIPDefaults *)self->_pipDefaults initiallyUsesMinimumPreferredContentSize];
    context = self->_context;
    if (initiallyUsesMinimumPreferredContentSize)
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

- (CGSize)_contentViewSizeForAspectRatio:(CGSize)ratio currentSize:(double)size
{
  height = ratio.height;
  width = ratio.width;
  [(SBPIPContentViewLayoutSettings *)self minimumPossibleContentViewSizeForAspectRatio:?];
  v9 = v8;
  v11 = v10;
  [(SBPIPContentViewLayoutSettings *)self maximumPossibleContentViewSizeForAspectRatio:width, height];
  if (width == 0.0 || height == 0.0)
  {
    sizeCopy = size;
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
      sizeCopy = v15;
    }

    else
    {
      sizeCopy = v18;
    }

    if (v21)
    {
      size = v14;
    }

    else
    {
      size = v20;
    }
  }

  sizeCopy2 = size;
  result.height = sizeCopy;
  result.width = sizeCopy2;
  return result;
}

- (CGSize)currentContentViewSizeForAspectRatio:(CGSize)ratio
{
  height = ratio.height;
  width = ratio.width;
  [(SBPIPContentViewLayoutContext *)self->_context currentSize];

  [(SBPIPContentViewLayoutSettings *)self _contentViewSizeForAspectRatio:width currentSize:height, v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)minimumPossibleContentViewSizeForAspectRatio:(CGSize)ratio
{
  height = ratio.height;
  width = ratio.width;
  sizePolicy = [(SBPIPContentViewLayoutMetrics *)self->_platformMetrics sizePolicy];
  v7 = sizePolicy;
  v8 = 1.0;
  if (width != 0.0)
  {
    v8 = width;
  }

  v9 = [sizePolicy sizePreferencesForAspectRatio:height / v8];

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

- (CGSize)maximumPossibleContentViewSizeForAspectRatio:(CGSize)ratio
{
  height = ratio.height;
  width = ratio.width;
  sizePolicy = [(SBPIPContentViewLayoutMetrics *)self->_platformMetrics sizePolicy];
  v7 = sizePolicy;
  v8 = 1.0;
  if (width != 0.0)
  {
    v8 = width;
  }

  v9 = [sizePolicy sizePreferencesForAspectRatio:height / v8];

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

- (CGSize)minimumPreferredContentViewSizeForAspectRatio:(CGSize)ratio
{
  height = ratio.height;
  width = ratio.width;
  [(SBPIPContentViewLayoutContext *)self->_context minimumSizePreference];

  [(SBPIPContentViewLayoutSettings *)self _minimumContentViewSizeForAspectRatio:width minimumReferenceSize:height, v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)maximumPreferredContentViewSizeForAspectRatio:(CGSize)ratio
{
  height = ratio.height;
  width = ratio.width;
  [(SBPIPContentViewLayoutContext *)self->_context maximumSizePreference];

  [(SBPIPContentViewLayoutSettings *)self _maximumContentViewSizeForAspectRatio:width maximumReferenceSize:height, v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)_minimumContentViewSizeForAspectRatio:(CGSize)ratio minimumReferenceSize:(double)size
{
  sizeCopy = size;
  if (ratio.width == 0.0 || (height = ratio.height, ratio.height == 0.0))
  {
    sizeCopy2 = size;
  }

  else
  {
    width = ratio.width;
    UIRoundToScale();
    sizeCopy = v8;
    UIRoundToScale();
    sizeCopy2 = v9;
    sizePolicy = [(SBPIPContentViewLayoutMetrics *)self->_platformMetrics sizePolicy];
    width = [sizePolicy sizePreferencesForAspectRatio:height / width];

    [width shortSideMinimumSize];
    v14 = v13;
    if (sizeCopy >= sizeCopy2)
    {
      if (sizeCopy2 < v13)
      {
        UIRoundToScale();
        sizeCopy = v16;
        sizeCopy2 = v14;
      }
    }

    else if (sizeCopy < v13)
    {
      UIRoundToScale();
      sizeCopy2 = v15;
      sizeCopy = v14;
    }
  }

  v17 = sizeCopy;
  v18 = sizeCopy2;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)_maximumContentViewSizeForAspectRatio:(CGSize)ratio maximumReferenceSize:(double)size
{
  sizeCopy = size;
  if (ratio.width == 0.0 || ratio.height == 0.0)
  {
    sizeCopy2 = size;
  }

  else
  {
    UIRoundToScale();
    sizeCopy = v5;
    UIRoundToScale();
    sizeCopy2 = v6;
  }

  v8 = sizeCopy;
  result.height = sizeCopy2;
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

- (void)setContentViewPosition:(unint64_t)position
{
  pipDefaults = self->_pipDefaults;
  contentTypeIdentifier = [(SBPIPContentViewLayoutMetrics *)self->_platformMetrics contentTypeIdentifier];
  [(SBPIPDefaults *)pipDefaults setLastKnownCornerPosition:position contentType:contentTypeIdentifier];
}

- (unint64_t)currentContentViewPosition
{
  pipDefaults = self->_pipDefaults;
  contentTypeIdentifier = [(SBPIPContentViewLayoutMetrics *)self->_platformMetrics contentTypeIdentifier];
  v5 = [(SBPIPDefaults *)pipDefaults lastKnownCornerPositionForContentType:contentTypeIdentifier];

  if (![(SBPIPContentViewLayoutMetrics *)self->_platformMetrics prefersDefaultPosition])
  {
    return v5;
  }

  platformMetrics = self->_platformMetrics;

  return [(SBPIPContentViewLayoutMetrics *)platformMetrics defaultPosition];
}

@end