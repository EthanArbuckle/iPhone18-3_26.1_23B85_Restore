@interface VFXMTLRenderContextSceneRendererMainPassCustomPostProcessHelper
- (MTLTexture)destinationTexture;
- (id)mainPassColorTextureAtIndex:(unint64_t)index;
- (void)drawSceneBackgroundUsingEncoder:(id)encoder commandBuffer:(id)buffer renderPassDescriptor:(id)descriptor;
@end

@implementation VFXMTLRenderContextSceneRendererMainPassCustomPostProcessHelper

- (MTLTexture)destinationTexture
{
  v2 = **(self->_currentPass + 30);
  v3 = sub_1AF12E8A4(self->_engineContext);

  return sub_1AF270B44(v3, v2);
}

- (id)mainPassColorTextureAtIndex:(unint64_t)index
{
  v3 = *(*(self->_currentPass + 10) + 16 * index);
  v4 = sub_1AF12E8A4(self->_engineContext);

  return sub_1AF270B44(v4, v3);
}

- (void)drawSceneBackgroundUsingEncoder:(id)encoder commandBuffer:(id)buffer renderPassDescriptor:(id)descriptor
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v8 = sub_1AF218EA4(descriptor, a2, encoder, buffer, v10);
  objc_msgSend__VFXWorldRendererMainPassCustomPostProcessSupportDrawSceneBackgroundUsingEncoder_commandBuffer_renderPassDesc_(self->_renderContext, v9, encoder, buffer, v10, v8);
}

@end