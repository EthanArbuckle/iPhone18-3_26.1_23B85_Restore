@interface VKRasterTileOverlayProviderData
- (VKRasterTileOverlayProviderData)initWithProviderID:(unsigned int)d tileSize:(unsigned int)size minimumZ:(unsigned int)z maximumZ:(unsigned int)maximumZ keyframesCount:(unsigned __int16)count duration:(double)duration crossfadeKeyframes:(BOOL)keyframes;
- (VKRasterTileOverlayProviderDelegate)delegate;
- (void)dealloc;
- (void)setAlpha:(double)alpha;
- (void)setColorMap:(CGImage *)map;
- (void)setKeyframeIndexOverride:(int)override;
@end

@implementation VKRasterTileOverlayProviderData

- (VKRasterTileOverlayProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setKeyframeIndexOverride:(int)override
{
  if (self->_keyframeIndexOverride != override)
  {
    self->_keyframeIndexOverride = override;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained rasterTileOverlayNeedsDisplay:self];
  }
}

- (void)setColorMap:(CGImage *)map
{
  colorMap = self->_colorMap;
  if (colorMap != map)
  {
    CGImageRelease(colorMap);
    self->_colorMap = CGImageRetain(map);
    delegate = [(VKRasterTileOverlayProviderData *)self delegate];
    [delegate rasterTileOverlayNeedsInvalidate:self];
  }
}

- (void)setAlpha:(double)alpha
{
  self->_alpha = alpha;
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

- (VKRasterTileOverlayProviderData)initWithProviderID:(unsigned int)d tileSize:(unsigned int)size minimumZ:(unsigned int)z maximumZ:(unsigned int)maximumZ keyframesCount:(unsigned __int16)count duration:(double)duration crossfadeKeyframes:(BOOL)keyframes
{
  v20.receiver = self;
  v20.super_class = VKRasterTileOverlayProviderData;
  v16 = [(VKRasterTileOverlayProviderData *)&v20 init];
  v17 = v16;
  if (v16)
  {
    *(v16 + 6) = d;
    *(v16 + 7) = size;
    *(v16 + 8) = z;
    *(v16 + 9) = maximumZ;
    *(v16 + 20) = count;
    *(v16 + 6) = duration;
    v16[56] = keyframes;
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