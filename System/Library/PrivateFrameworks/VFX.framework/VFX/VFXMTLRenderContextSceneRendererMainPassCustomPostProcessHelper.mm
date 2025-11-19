@interface VFXMTLRenderContextSceneRendererMainPassCustomPostProcessHelper
- (MTLTexture)destinationTexture;
- (id)mainPassColorTextureAtIndex:(unint64_t)a3;
- (void)drawSceneBackgroundUsingEncoder:(id)a3 commandBuffer:(id)a4 renderPassDescriptor:(id)a5;
@end

@implementation VFXMTLRenderContextSceneRendererMainPassCustomPostProcessHelper

- (MTLTexture)destinationTexture
{
  v2 = **(self->_currentPass + 30);
  v3 = sub_1AF12E8A4(self->_engineContext);

  return sub_1AF270B44(v3, v2);
}

- (id)mainPassColorTextureAtIndex:(unint64_t)a3
{
  v3 = *(*(self->_currentPass + 10) + 16 * a3);
  v4 = sub_1AF12E8A4(self->_engineContext);

  return sub_1AF270B44(v4, v3);
}

- (void)drawSceneBackgroundUsingEncoder:(id)a3 commandBuffer:(id)a4 renderPassDescriptor:(id)a5
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v8 = sub_1AF218EA4(a5, a2, a3, a4, v10);
  objc_msgSend__VFXWorldRendererMainPassCustomPostProcessSupportDrawSceneBackgroundUsingEncoder_commandBuffer_renderPassDesc_(self->_renderContext, v9, a3, a4, v10, v8);
}

@end