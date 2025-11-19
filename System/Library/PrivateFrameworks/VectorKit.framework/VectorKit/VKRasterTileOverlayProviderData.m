@interface VKRasterTileOverlayProviderData
- (VKRasterTileOverlayProviderData)initWithProviderID:(unsigned int)a3 tileSize:(unsigned int)a4 minimumZ:(unsigned int)a5 maximumZ:(unsigned int)a6 keyframesCount:(unsigned __int16)a7 duration:(double)a8 crossfadeKeyframes:(BOOL)a9;
- (VKRasterTileOverlayProviderDelegate)delegate;
- (void)dealloc;
- (void)setAlpha:(double)a3;
- (void)setColorMap:(CGImage *)a3;
- (void)setKeyframeIndexOverride:(int)a3;
@end

@implementation VKRasterTileOverlayProviderData

- (VKRasterTileOverlayProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setKeyframeIndexOverride:(int)a3
{
  if (self->_keyframeIndexOverride != a3)
  {
    self->_keyframeIndexOverride = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained rasterTileOverlayNeedsDisplay:self];
  }
}

- (void)setColorMap:(CGImage *)a3
{
  colorMap = self->_colorMap;
  if (colorMap != a3)
  {
    CGImageRelease(colorMap);
    self->_colorMap = CGImageRetain(a3);
    v6 = [(VKRasterTileOverlayProviderData *)self delegate];
    [v6 rasterTileOverlayNeedsInvalidate:self];
  }
}

- (void)setAlpha:(double)a3
{
  self->_alpha = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained rasterTileOverlayDidChangeAlpha:self];
}

- (void)dealloc
{
  CGImageRelease(self->_colorMap);
  v3.receiver = self;
  v3.super_class = VKRasterTileOverlayProviderData;
  [(VKRasterTileOverlayProviderData *)&v3 dealloc];
}

- (VKRasterTileOverlayProviderData)initWithProviderID:(unsigned int)a3 tileSize:(unsigned int)a4 minimumZ:(unsigned int)a5 maximumZ:(unsigned int)a6 keyframesCount:(unsigned __int16)a7 duration:(double)a8 crossfadeKeyframes:(BOOL)a9
{
  v20.receiver = self;
  v20.super_class = VKRasterTileOverlayProviderData;
  v16 = [(VKRasterTileOverlayProviderData *)&v20 init];
  v17 = v16;
  if (v16)
  {
    *(v16 + 6) = a3;
    *(v16 + 7) = a4;
    *(v16 + 8) = a5;
    *(v16 + 9) = a6;
    *(v16 + 20) = a7;
    *(v16 + 6) = a8;
    v16[56] = a9;
    *(v16 + 60) = 0xFFFFFFFFLL;
    *(v16 + 2) = 0x3FF0000000000000;
    *(v16 + 12) = 0;
    *(v16 + 9) = 0;
    *(v16 + 10) = 0;
    *(v16 + 22) = 0;
    *(v16 + 26) = 1065353216;
    v16[108] = 0;
    objc_storeStrong(v16 + 14, *MEMORY[0x1E69797F0]);
    v18 = v17;
  }

  return v17;
}

@end