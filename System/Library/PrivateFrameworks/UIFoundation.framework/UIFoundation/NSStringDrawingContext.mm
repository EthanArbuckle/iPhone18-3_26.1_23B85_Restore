@interface NSStringDrawingContext
- (CGRect)multilineDeviceMetricsRect;
- (CGRect)totalBounds;
- (NSString)description;
- (NSStringDrawingContext)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)layoutManager:(id)manager linkAttributesForAttributes:(id)attributes forCharacterAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)setApplicationFrameworkContext:(int64_t)context;
- (void)setCachesLayout:(BOOL)layout;
- (void)setDrawsDebugBaselines:(BOOL)baselines;
- (void)setUsesSimpleTextEffects:(BOOL)effects;
- (void)setWantsBaselineOffset:(BOOL)offset;
- (void)setWantsMultilineDeviceMetrics:(BOOL)metrics;
- (void)setWantsScaledBaselineOffset:(BOOL)offset;
- (void)setWantsScaledLineHeight:(BOOL)height;
- (void)setWrapsForTruncationMode:(BOOL)mode;
@end

@implementation NSStringDrawingContext

- (NSStringDrawingContext)init
{
  v4.receiver = self;
  v4.super_class = NSStringDrawingContext;
  v2 = [(NSStringDrawingContext *)&v4 init];
  if (v2)
  {
    [(NSStringDrawingContext *)v2 setApplicationFrameworkContext:_NSTextScalingTypeForCurrentEnvironment()];
    v2->_fallbackBaseWritingDirection = -1;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSStringDrawingContext;
  [(NSStringDrawingContext *)&v3 dealloc];
}

- (CGRect)multilineDeviceMetricsRect
{
  x = self->_multilineDeviceMetricsRect.origin.x;
  y = self->_multilineDeviceMetricsRect.origin.y;
  width = self->_multilineDeviceMetricsRect.size.width;
  height = self->_multilineDeviceMetricsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v6.receiver = self;
  v6.super_class = NSStringDrawingContext;
  v4 = [(NSStringDrawingContext *)&v6 description];
  return [v3 stringWithFormat:@"%@\nminimumScaleFactor:%f minimumTrackingAdjustment:%f actualScaleFactor:%f actualTrackingAdjustment:%f totalBounds:%@", v4, *&self->_minimumScaleFactor, *&self->_minimumTrackingAdjustment, *&self->_actualScaleFactor, *&self->_actualTrackingAdjustment, NSStringFromRect(self->_totalBounds)];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NSStringDrawingContext allocWithZone:?]];
  [(NSStringDrawingContext *)self minimumScaleFactor];
  [(NSStringDrawingContext *)v4 setMinimumScaleFactor:?];
  [(NSStringDrawingContext *)self minimumTrackingAdjustment];
  [(NSStringDrawingContext *)v4 setMinimumTrackingAdjustment:?];
  [(NSStringDrawingContext *)v4 setWantsNumberOfLineFragments:[(NSStringDrawingContext *)self wantsNumberOfLineFragments]];
  [(NSStringDrawingContext *)v4 setWrapsForTruncationMode:[(NSStringDrawingContext *)self wrapsForTruncationMode]];
  [(NSStringDrawingContext *)v4 setMaximumNumberOfLines:[(NSStringDrawingContext *)self maximumNumberOfLines]];
  [(NSStringDrawingContext *)v4 setWantsBaselineOffset:[(NSStringDrawingContext *)self wantsBaselineOffset]];
  [(NSStringDrawingContext *)v4 setWantsScaledBaselineOffset:[(NSStringDrawingContext *)self wantsScaledBaselineOffset]];
  [(NSStringDrawingContext *)v4 setWantsScaledLineHeight:[(NSStringDrawingContext *)self wantsScaledLineHeight]];
  [(NSStringDrawingContext *)v4 setDrawsDebugBaselines:[(NSStringDrawingContext *)self drawsDebugBaselines]];
  [(NSStringDrawingContext *)v4 setCachesLayout:[(NSStringDrawingContext *)self cachesLayout]];
  [(NSStringDrawingContext *)v4 setLayout:[(NSStringDrawingContext *)self layout]];
  [(NSStringDrawingContext *)v4 setCuiCatalog:[(NSStringDrawingContext *)self cuiCatalog]];
  [(NSStringDrawingContext *)v4 setCuiStyleEffects:[(NSStringDrawingContext *)self cuiStyleEffects]];
  [(NSStringDrawingContext *)v4 setUsesSimpleTextEffects:[(NSStringDrawingContext *)self usesSimpleTextEffects]];
  [(NSStringDrawingContext *)v4 setApplicationFrameworkContext:[(NSStringDrawingContext *)self applicationFrameworkContext]];
  [(NSStringDrawingContext *)v4 setLinkTextAttributesProvider:[(NSStringDrawingContext *)self linkTextAttributesProvider]];
  [(NSStringDrawingContext *)v4 setWantsMultilineDeviceMetrics:[(NSStringDrawingContext *)self wantsMultilineDeviceMetrics]];
  [(NSStringDrawingContext *)self multilineDeviceMetricsRect];
  [(NSStringDrawingContext *)v4 setMultilineDeviceMetricsRect:?];
  return v4;
}

- (void)setWrapsForTruncationMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_sdcFlags = *&self->_sdcFlags & 0xFFFD | v3;
}

- (void)setWantsBaselineOffset:(BOOL)offset
{
  if (offset)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_sdcFlags = *&self->_sdcFlags & 0xFFFB | v3;
}

- (void)setWantsScaledBaselineOffset:(BOOL)offset
{
  if (offset)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_sdcFlags = *&self->_sdcFlags & 0xFFF7 | v3;
}

- (void)setWantsScaledLineHeight:(BOOL)height
{
  if (height)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_sdcFlags = *&self->_sdcFlags & 0xFFEF | v3;
}

- (void)setDrawsDebugBaselines:(BOOL)baselines
{
  if (baselines)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_sdcFlags = *&self->_sdcFlags & 0xFFDF | v3;
}

- (void)setWantsMultilineDeviceMetrics:(BOOL)metrics
{
  if (metrics)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_sdcFlags = *&self->_sdcFlags & 0xFFBF | v3;
}

- (void)setCachesLayout:(BOOL)layout
{
  sdcFlags = self->_sdcFlags;
  if (((((sdcFlags & 0x80) == 0) ^ layout) & 1) == 0)
  {
    if (layout)
    {
      v4 = 128;
    }

    else
    {
      v4 = 0;
    }

    *&self->_sdcFlags = sdcFlags & 0xFF7F | v4;
    [(NSStringDrawingContext *)self setLayout:0];
  }
}

- (void)setUsesSimpleTextEffects:(BOOL)effects
{
  if (effects)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_sdcFlags = *&self->_sdcFlags & 0xFEFF | v3;
}

- (void)setApplicationFrameworkContext:(int64_t)context
{
  if (!context)
  {
    LOWORD(context) = _NSTextScalingTypeForCurrentEnvironment();
  }

  *&self->_sdcFlags = *&self->_sdcFlags & 0x1FFF | (context << 13);
}

- (id)layoutManager:(id)manager linkAttributesForAttributes:(id)attributes forCharacterAtIndex:(unint64_t)index
{
  result = self->_linkTextAttributesProvider;
  if (result)
  {
    return (*(result + 2))(result, attributes, index);
  }

  return result;
}

- (CGRect)totalBounds
{
  x = self->_totalBounds.origin.x;
  y = self->_totalBounds.origin.y;
  width = self->_totalBounds.size.width;
  height = self->_totalBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end