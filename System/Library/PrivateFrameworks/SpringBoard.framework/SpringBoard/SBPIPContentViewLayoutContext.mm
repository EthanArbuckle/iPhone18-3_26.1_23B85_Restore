@interface SBPIPContentViewLayoutContext
- (SBPIPContentViewLayoutContext)initWithPlatformMetrics:(id)a3 contentSize:(CGSize)a4 defaults:(id)a5;
- (void)setCurrentSize:(double)a3 forAspectRatio:(double)a4;
- (void)updatePlatformMetrics:(id)a3;
@end

@implementation SBPIPContentViewLayoutContext

- (SBPIPContentViewLayoutContext)initWithPlatformMetrics:(id)a3 contentSize:(CGSize)a4 defaults:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = SBPIPContentViewLayoutContext;
  v11 = [(SBPIPContentViewLayoutContext *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_sizeChanged = 0;
    v11->_minimumSizeSpanBetweenPreferredSizes = 0.0;
    v11->_maximumSizeSpanForPreferredSizeTuning = 0.0;
    objc_storeStrong(&v11->_defaults, a5);
    v13 = [v9 contentTypeIdentifier];
    v14 = [v13 copy];
    contentTypeIdentifier = v12->_contentTypeIdentifier;
    v12->_contentTypeIdentifier = v14;

    v16 = 1.0;
    if (width != 0.0)
    {
      v16 = width;
    }

    v12->_currentAspectRatio = height / v16;
    [(SBPIPContentViewLayoutContext *)v12 updatePlatformMetrics:v9];
  }

  return v12;
}

- (void)setCurrentSize:(double)a3 forAspectRatio:(double)a4
{
  if (self->_currentSize != a3)
  {
    self->_currentAspectRatio = a4;
    self->_currentSize = a3;
    self->_sizeChanged = 1;
    [(SBPIPDefaults *)self->_defaults setLastKnownSize:self->_contentTypeIdentifier contentType:?];
  }
}

- (void)updatePlatformMetrics:(id)a3
{
  v15 = a3;
  v4 = [v15 contentTypeIdentifier];
  v5 = [v4 isEqualToString:self->_contentTypeIdentifier];

  if ((v5 & 1) == 0)
  {
    v6 = [v15 contentTypeIdentifier];
    v7 = [v6 copy];
    contentTypeIdentifier = self->_contentTypeIdentifier;
    self->_contentTypeIdentifier = v7;
  }

  v9 = [v15 sizePolicy];
  v10 = [v9 sizePreferencesForAspectRatio:self->_currentAspectRatio];

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