@interface TSCH3DNullContext
- (box<glm::detail::tvec2<int>>)viewport;
- (id)framebufferWithSize:(void *)a3 attributes:(const FramebufferAttributes *)a4 textureAttributes:(const FramebufferAttributes *)a5 resource:(id)a6;
- (id)renderProcessorWithSession:(id)a3;
@end

@implementation TSCH3DNullContext

- (id)framebufferWithSize:(void *)a3 attributes:(const FramebufferAttributes *)a4 textureAttributes:(const FramebufferAttributes *)a5 resource:(id)a6
{
  v6 = objc_alloc_init(TSCH3DNullFramebuffer);

  return v6;
}

- (id)renderProcessorWithSession:(id)a3
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