@interface VKCustomTileOverlayProviderData
- (VKCustomTileOverlayProviderData)initWithProviderID:(unsigned int)a3 tileSize:(unsigned int)a4 minimumZ:(unsigned int)a5 maximumZ:(unsigned int)a6 textureDimension:(unsigned __int16)a7;
- (VKCustomTileOverlayProviderDelegate)delegate;
- (void)setAlpha:(double)a3;
- (void)setDesiredDisplayRate:(unint64_t)a3;
- (void)setForceContinuousLayout:(BOOL)a3;
- (void)setForceNativeDisplayRate:(BOOL)a3;
@end

@implementation VKCustomTileOverlayProviderData

- (VKCustomTileOverlayProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setForceContinuousLayout:(BOOL)a3
{
  self->_forceContinuousLayout = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained customTileOverlayDidChangeDisplayRate:self];
}

- (void)setForceNativeDisplayRate:(BOOL)a3
{
  self->_forceNativeDisplayRate = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained customTileOverlayDidChangeDisplayRate:self];
}

- (void)setDesiredDisplayRate:(unint64_t)a3
{
  self->_desiredDisplayRate = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained customTileOverlayDidChangeDisplayRate:self];
}

- (void)setAlpha:(double)a3
{
  self->_alpha = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained customTileOverlayDidChangeAlpha:self];
}

- (VKCustomTileOverlayProviderData)initWithProviderID:(unsigned int)a3 tileSize:(unsigned int)a4 minimumZ:(unsigned int)a5 maximumZ:(unsigned int)a6 textureDimension:(unsigned __int16)a7
{
  v7 = a7;
  v17.receiver = self;
  v17.super_class = VKCustomTileOverlayProviderData;
  v12 = [(VKCustomTileOverlayProviderData *)&v17 init];
  v13 = v12;
  if (v12)
  {
    *&v12->_forceNativeDisplayRate = 0;
    v12->_usesTileScale = 0;
    v12->_providerID = a3;
    v12->_tileSize = a4;
    v12->_minimumZ = a5;
    v12->_maximumZ = a6;
    v12->_desiredDisplayRate = 0;
    v12->_alpha = 1.0;
    if (v7 < 0x200)
    {
      if (v7 < 0x100)
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