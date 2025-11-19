@interface PKMetalRenderLoop
- (BOOL)_isForcingPause;
- (BOOL)isDrawableAvailable;
- (CGSize)drawableSize;
- (PKMetalRenderLoop)initWithPixelFormat:(unint64_t)a3 forDevice:(id)a4;
- (id)currentDrawable;
- (void)_didDraw;
- (void)_didInvalidate;
- (void)_willDraw;
- (void)dealloc;
- (void)setColorSpace:(CGColorSpace *)a3;
- (void)setDrawableSize:(CGSize)a3;
@end

@implementation PKMetalRenderLoop

- (BOOL)_isForcingPause
{
  if (self->_drawableSize.width == *MEMORY[0x277CBF3A8] && self->_drawableSize.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    return 1;
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = PKMetalRenderLoop;
  return [(PKRenderLoop *)&v6 _isForcingPause];
}

- (CGSize)drawableSize
{
  width = self->_drawableSize.width;
  height = self->_drawableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_didDraw
{
  currentDrawable = self->_currentDrawable;
  self->_currentDrawable = 0;

  v4.receiver = self;
  v4.super_class = PKMetalRenderLoop;
  [(PKRenderLoop *)&v4 _didDraw];
}

- (void)_willDraw
{
  v3.receiver = self;
  v3.super_class = PKMetalRenderLoop;
  [(PKRenderLoop *)&v3 _willDraw];
  if (self->_drawableSizeDirty)
  {
    self->_drawableSizeDirty = 0;
    [(CAMetalLayer *)self->_layer setDrawableSize:self->_drawableSize.width, self->_drawableSize.height];
  }
}

- (BOOL)isDrawableAvailable
{
  if (self->super._invalidated)
  {
    return 0;
  }

  if (self->_currentDrawable)
  {
    return 1;
  }

  if (!self->super._drawing)
  {
    return 0;
  }

  return [(CAMetalLayer *)self->_layer isDrawableAvailable];
}

- (id)currentDrawable
{
  if (self->super._invalidated)
  {
    v3 = 0;
  }

  else
  {
    if (self->super._drawing && !self->_currentDrawable)
    {
      v6 = [(CAMetalLayer *)self->_layer nextDrawable];
      currentDrawable = self->_currentDrawable;
      self->_currentDrawable = v6;
    }

    v3 = self->_currentDrawable;
  }

  return v3;
}

- (PKMetalRenderLoop)initWithPixelFormat:(unint64_t)a3 forDevice:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = MEMORY[0x277CBF4A8];
  if (a3 != 80 && a3 != 115)
  {
    if (a3 != 81)
    {
LABEL_10:
      v17 = 0;
      goto LABEL_11;
    }

    v8 = MEMORY[0x277CBF4B8];
  }

  if (!*v8)
  {
    goto LABEL_10;
  }

  v9 = CGColorSpaceCreateWithName(*v8);
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v19.receiver = self;
  v19.super_class = PKMetalRenderLoop;
  v11 = [(PKRenderLoop *)&v19 init];
  v12 = v11;
  if (v11)
  {
    v11->_pixelFormat = a3;
    objc_storeStrong(&v11->_device, a4);
    *(v12 + 120) = v10;
    v13 = objc_alloc_init(MEMORY[0x277CD9F10]);
    v14 = *(v12 + 80);
    *(v12 + 80) = v13;

    [*(v12 + 80) setDevice:*(v12 + 112)];
    [*(v12 + 80) setPixelFormat:*(v12 + 104)];
    [*(v12 + 80) setColorspace:*(v12 + 120)];
    [*(v12 + 80) setLowLatency:0];
    [*(v12 + 80) drawableSize];
    *(v12 + 128) = v15;
    *(v12 + 136) = v16;
    [(PKRenderLoop *)v12 _setNeedsForcingPauseUpdate];
  }

  else
  {
    CFRelease(v10);
  }

  self = v12;
  v17 = self;
LABEL_11:

  return v17;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_colorSpace);
  v3.receiver = self;
  v3.super_class = PKMetalRenderLoop;
  [(PKRenderLoop *)&v3 dealloc];
}

- (void)setDrawableSize:(CGSize)a3
{
  p_drawableSize = &self->_drawableSize;
  if (self->_drawableSize.width != a3.width || self->_drawableSize.height != a3.height)
  {
    p_drawableSize->width = a3.width;
    self->_drawableSize.height = a3.height;
    if (a3.width == *MEMORY[0x277CBF3A8] && a3.height == *(MEMORY[0x277CBF3A8] + 8))
    {
      self->_drawableSizeDirty = 0;
      [(CAMetalLayer *)self->_layer setDrawableSize:self->_drawableSize.width, self->_drawableSize.height];
    }

    else
    {
      self->_drawableSizeDirty = 1;
    }

    [(PKRenderLoop *)self _setNeedsForcingPauseUpdate];
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    [WeakRetained renderLoop:self drawableSizeDidChange:{p_drawableSize->width, p_drawableSize->height}];
  }
}

- (void)setColorSpace:(CGColorSpace *)a3
{
  if (a3)
  {
    v4 = a3;
    CGColorSpaceRetain(a3);
    goto LABEL_10;
  }

  pixelFormat = self->_pixelFormat;
  v6 = MEMORY[0x277CBF4A8];
  if (pixelFormat != 80 && pixelFormat != 115)
  {
    if (pixelFormat != 81)
    {
      goto LABEL_9;
    }

    v6 = MEMORY[0x277CBF4B8];
  }

  if (*v6)
  {
    v4 = CGColorSpaceCreateWithName(*v6);
    goto LABEL_10;
  }

LABEL_9:
  v4 = 0;
LABEL_10:
  CGColorSpaceRelease(self->_colorSpace);
  self->_colorSpace = v4;
  layer = self->_layer;

  [(CAMetalLayer *)layer setColorspace:v4];
}

- (void)_didInvalidate
{
  device = self->_device;
  self->_device = 0;

  layer = self->_layer;
  self->_layer = 0;

  currentDrawable = self->_currentDrawable;
  self->_currentDrawable = 0;

  v6.receiver = self;
  v6.super_class = PKMetalRenderLoop;
  [(PKRenderLoop *)&v6 _didInvalidate];
}

@end