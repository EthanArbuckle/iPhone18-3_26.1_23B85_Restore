@interface TSCH3DNullContext
- (box<glm::detail::tvec2<int>>)viewport;
- (id)framebufferWithSize:(void *)size attributes:(const FramebufferAttributes *)attributes textureAttributes:(const FramebufferAttributes *)textureAttributes resource:(id)resource;
- (id)renderProcessorWithSession:(id)session;
@end

@implementation TSCH3DNullContext

- (id)framebufferWithSize:(void *)size attributes:(const FramebufferAttributes *)attributes textureAttributes:(const FramebufferAttributes *)textureAttributes resource:(id)resource
{
  v6 = objc_alloc_init(TSCH3DNullFramebuffer);

  return v6;
}

- (id)renderProcessorWithSession:(id)session
{
  v3 = objc_alloc_init(TSCH3DCombinationRenderProcessor);

  return v3;
}

- (box<glm::detail::tvec2<int>>)viewport
{
  *v2 = self->_viewport;
  result._max = a2;
  result._min = self;
  return result;
}

@end