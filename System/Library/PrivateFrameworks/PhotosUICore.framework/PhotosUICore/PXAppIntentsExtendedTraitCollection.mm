@interface PXAppIntentsExtendedTraitCollection
- (PXAppIntentsExtendedTraitCollection)initWithUserInterfaceStyle:(int64_t)a3 displayScale:(double)a4;
- (void)setDisplayScale:(double)a3;
- (void)setUserInterfaceStyle:(int64_t)a3;
@end

@implementation PXAppIntentsExtendedTraitCollection

- (void)setDisplayScale:(double)a3
{
  if (self->_displayScale != a3)
  {
    self->_displayScale = a3;
    [(PXAppIntentsExtendedTraitCollection *)self signalChange:32];
  }
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  if (self->_userInterfaceStyle != a3)
  {
    self->_userInterfaceStyle = a3;
    [(PXAppIntentsExtendedTraitCollection *)self signalChange:1024];
  }
}

- (PXAppIntentsExtendedTraitCollection)initWithUserInterfaceStyle:(int64_t)a3 displayScale:(double)a4
{
  v7.receiver = self;
  v7.super_class = PXAppIntentsExtendedTraitCollection;
  result = [(PXAppIntentsExtendedTraitCollection *)&v7 _initForSubclassWithUserInterfaceFeature:0];
  if (result)
  {
    result->_userInterfaceStyle = a3;
    result->_displayScale = a4;
  }

  return result;
}

@end