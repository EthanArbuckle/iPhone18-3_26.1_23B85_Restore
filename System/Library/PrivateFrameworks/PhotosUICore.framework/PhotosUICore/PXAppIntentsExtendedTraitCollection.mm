@interface PXAppIntentsExtendedTraitCollection
- (PXAppIntentsExtendedTraitCollection)initWithUserInterfaceStyle:(int64_t)style displayScale:(double)scale;
- (void)setDisplayScale:(double)scale;
- (void)setUserInterfaceStyle:(int64_t)style;
@end

@implementation PXAppIntentsExtendedTraitCollection

- (void)setDisplayScale:(double)scale
{
  if (self->_displayScale != scale)
  {
    self->_displayScale = scale;
    [(PXAppIntentsExtendedTraitCollection *)self signalChange:32];
  }
}

- (void)setUserInterfaceStyle:(int64_t)style
{
  if (self->_userInterfaceStyle != style)
  {
    self->_userInterfaceStyle = style;
    [(PXAppIntentsExtendedTraitCollection *)self signalChange:1024];
  }
}

- (PXAppIntentsExtendedTraitCollection)initWithUserInterfaceStyle:(int64_t)style displayScale:(double)scale
{
  v7.receiver = self;
  v7.super_class = PXAppIntentsExtendedTraitCollection;
  result = [(PXAppIntentsExtendedTraitCollection *)&v7 _initForSubclassWithUserInterfaceFeature:0];
  if (result)
  {
    result->_userInterfaceStyle = style;
    result->_displayScale = scale;
  }

  return result;
}

@end