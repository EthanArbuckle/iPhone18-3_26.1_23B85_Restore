@interface SBPIPContentViewLayoutContext
- (SBPIPContentViewLayoutContext)initWithPlatformMetrics:(id)metrics contentSize:(CGSize)size defaults:(id)defaults;
- (void)setCurrentSize:(double)size forAspectRatio:(double)ratio;
- (void)updatePlatformMetrics:(id)metrics;
@end

@implementation SBPIPContentViewLayoutContext

- (SBPIPContentViewLayoutContext)initWithPlatformMetrics:(id)metrics contentSize:(CGSize)size defaults:(id)defaults
{
  height = size.height;
  width = size.width;
  metricsCopy = metrics;
  defaultsCopy = defaults;
  v18.receiver = self;
  v18.super_class = SBPIPContentViewLayoutContext;
  v11 = [(SBPIPContentViewLayoutContext *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_sizeChanged = 0;
    v11->_minimumSizeSpanBetweenPreferredSizes = 0.0;
    v11->_maximumSizeSpanForPreferredSizeTuning = 0.0;
    objc_storeStrong(&v11->_defaults, defaults);
    contentTypeIdentifier = [metricsCopy contentTypeIdentifier];
    v14 = [contentTypeIdentifier copy];
    contentTypeIdentifier = v12->_contentTypeIdentifier;
    v12->_contentTypeIdentifier = v14;

    v16 = 1.0;
    if (width != 0.0)
    {
      v16 = width;
    }

    v12->_currentAspectRatio = height / v16;
    [(SBPIPContentViewLayoutContext *)v12 updatePlatformMetrics:metricsCopy];
  }

  return v12;
}

- (void)setCurrentSize:(double)size forAspectRatio:(double)ratio
{
  if (self->_currentSize != size)
  {
    self->_currentAspectRatio = ratio;
    self->_currentSize = size;
    self->_sizeChanged = 1;
    [(SBPIPDefaults *)self->_defaults setLastKnownSize:self->_contentTypeIdentifier contentType:?];
  }
}

- (void)updatePlatformMetrics:(id)metrics
{
  metricsCopy = metrics;
  contentTypeIdentifier = [metricsCopy contentTypeIdentifier];
  v5 = [contentTypeIdentifier isEqualToString:self->_contentTypeIdentifier];

  if ((v5 & 1) == 0)
  {
    contentTypeIdentifier2 = [metricsCopy contentTypeIdentifier];
    v7 = [contentTypeIdentifier2 copy];
    contentTypeIdentifier = self->_contentTypeIdentifier;
    self->_contentTypeIdentifier = v7;
  }

  sizePolicy = [metricsCopy sizePolicy];
  v10 = [sizePolicy sizePreferencesForAspectRatio:self->_currentAspectRatio];

  [(SBPIPDefaults *)self->_defaults lastKnownSizeForContentType:self->_contentTypeIdentifier];
  v12 = v11;
  if (SBFloatEqualsFloat())
  {
    [v10 longSideDefaultSize];
    v12 = v13;
  }

  self->_currentSize = v12;
  self->_minimumSizePreference = v12;
  [v10 longSideMaximumSize];
  self->_maximumSizePreference = v14;
}

@end