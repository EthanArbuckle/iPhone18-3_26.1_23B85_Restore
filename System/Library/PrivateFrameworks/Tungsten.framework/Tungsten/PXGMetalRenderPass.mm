@interface PXGMetalRenderPass
- ($01BB1521EC52D44A8E7628F5261DCEC8)clearColor;
- (CGRect)renderRect;
- (PXGMetalRenderPass)init;
- (id)description;
- (void)setRenderSize:(id *)size;
@end

@implementation PXGMetalRenderPass

- (PXGMetalRenderPass)init
{
  v3.receiver = self;
  v3.super_class = PXGMetalRenderPass;
  result = [(PXGMetalRenderPass *)&v3 init];
  if (result)
  {
    result->_drawingScale = 1.0;
    *&result->_minZ = vneg_f32(0x3F0000003FLL);
  }

  return result;
}

- (CGRect)renderRect
{
  x = self->_renderRect.origin.x;
  y = self->_renderRect.origin.y;
  width = self->_renderRect.size.width;
  height = self->_renderRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)clearColor
{
  red = self->_clearColor.red;
  green = self->_clearColor.green;
  blue = self->_clearColor.blue;
  alpha = self->_clearColor.alpha;
  result.var3 = alpha;
  result.var2 = blue;
  result.var1 = green;
  result.var0 = red;
  return result;
}

- (void)setRenderSize:(id *)size
{
  v3 = *&size->var0;
  self->_renderSize.depth = size->var2;
  *&self->_renderSize.width = v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  captureSpriteTexture = [(PXGMetalRenderPass *)self captureSpriteTexture];
  offscreenKernelEffect = [(PXGMetalRenderPass *)self offscreenKernelEffect];
  v8 = [v3 stringWithFormat:@"<%@:%p captureTexture:%@ effect:%@ drawingScale:%.2f sprites:(%.6f < z <= %.6f) drawCalls:%ld>", v5, self, captureSpriteTexture, offscreenKernelEffect, *&self->_drawingScale, self->_minZ, self->_maxZ, self->_drawCalls];

  return v8;
}

@end