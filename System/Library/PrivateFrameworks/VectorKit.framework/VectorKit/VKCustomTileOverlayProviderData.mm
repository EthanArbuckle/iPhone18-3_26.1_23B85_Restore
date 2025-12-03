@interface VKCustomTileOverlayProviderData
- (VKCustomTileOverlayProviderData)initWithProviderID:(unsigned int)d tileSize:(unsigned int)size minimumZ:(unsigned int)z maximumZ:(unsigned int)maximumZ textureDimension:(unsigned __int16)dimension;
- (VKCustomTileOverlayProviderDelegate)delegate;
- (void)setAlpha:(double)alpha;
- (void)setDesiredDisplayRate:(unint64_t)rate;
- (void)setForceContinuousLayout:(BOOL)layout;
- (void)setForceNativeDisplayRate:(BOOL)rate;
@end

@implementation VKCustomTileOverlayProviderData

- (VKCustomTileOverlayProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setForceContinuousLayout:(BOOL)layout
{
  self->_forceContinuousLayout = layout;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained customTileOverlayDidChangeDisplayRate:self];
}

- (void)setForceNativeDisplayRate:(BOOL)rate
{
  self->_forceNativeDisplayRate = rate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained customTileOverlayDidChangeDisplayRate:self];
}

- (void)setDesiredDisplayRate:(unint64_t)rate
{
  self->_desiredDisplayRate = rate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained customTileOverlayDidChangeDisplayRate:self];
}

- (void)setAlpha:(double)alpha
{
  self->_alpha = alpha;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained customTileOverlayDidChangeAlpha:self];
}

- (VKCustomTileOverlayProviderData)initWithProviderID:(unsigned int)d tileSize:(unsigned int)size minimumZ:(unsigned int)z maximumZ:(unsigned int)maximumZ textureDimension:(unsigned __int16)dimension
{
  dimensionCopy = dimension;
  v17.receiver = self;
  v17.super_class = VKCustomTileOverlayProviderData;
  v12 = [(VKCustomTileOverlayProviderData *)&v17 init];
  v13 = v12;
  if (v12)
  {
    *&v12->_forceNativeDisplayRate = 0;
    v12->_usesTileScale = 0;
    v12->_providerID = d;
    v12->_tileSize = size;
    v12->_minimumZ = z;
    v12->_maximumZ = maximumZ;
    v12->_desiredDisplayRate = 0;
    v12->_alpha = 1.0;
    if (dimensionCopy < 0x200)
    {
      if (dimensionCopy < 0x100)
      {
        v14 = 128;
      }

      else
      {
        v14 = 256;
      }
    }

    else
    {
      v14 = 512;
    }

    v12->_textureDimension = v14;
    v15 = v12;
  }

  return v13;
}

@end