@interface TSCH3DFramebuffer
+ (TSCH3DFramebuffer)framebufferWithFramebufferAttributes:(const FramebufferAttributes *)attributes;
- (TSCH3DFramebuffer)initWithFramebufferAttributes:(const FramebufferAttributes *)attributes;
- (id).cxx_construct;
- (id)pixelBufferFromViewport:(void *)viewport components:(unint64_t)components flipped:(BOOL)flipped forProcessor:(id)processor session:(id)session;
- (void)dealloc;
@end

@implementation TSCH3DFramebuffer

+ (TSCH3DFramebuffer)framebufferWithFramebufferAttributes:(const FramebufferAttributes *)attributes
{
  v4 = [self alloc];
  v9 = objc_msgSend_initWithFramebufferAttributes_(v4, v5, v6, v7, v8, attributes);

  return v9;
}

- (TSCH3DFramebuffer)initWithFramebufferAttributes:(const FramebufferAttributes *)attributes
{
  v11.receiver = self;
  v11.super_class = TSCH3DFramebuffer;
  v5 = [(TSCH3DFramebuffer *)&v11 init];
  if (v5)
  {
    *(v5 + 5) = objc_msgSend_allocateResourceUniqueIdentifier(TSCH3DResourceUniqueIdentifierAllocator, v4, v6, v7, v8);
    v9 = *&attributes->type;
    *(v5 + 23) = *(&attributes->samples + 7);
    *(v5 + 8) = v9;
  }

  return v5;
}

- (void)dealloc
{
  objc_msgSend_deallocateResourceUniqueIdentifier_(TSCH3DResourceUniqueIdentifierAllocator, a2, v2, v3, v4, self->_uniqueIdentifier);
  v6.receiver = self;
  v6.super_class = TSCH3DFramebuffer;
  [(TSCH3DFramebuffer *)&v6 dealloc];
}

- (id)pixelBufferFromViewport:(void *)viewport components:(unint64_t)components flipped:(BOOL)flipped forProcessor:(id)processor session:(id)session
{
  flippedCopy = flipped;
  processorCopy = processor;
  sessionCopy = session;
  v14 = *viewport;
  v42 = COERCE_DOUBLE(vsub_s32(*(viewport + 8), *viewport));
  v17 = objc_msgSend_pixelBufferWithSize_components_(TSCH3DPixelBuffer, v15, v42, *&v14, v16, &v42, components);
  if (objc_msgSend_buffer(v17, v18, v19, v20, v21) && (v26 = objc_msgSend_buffer(v17, v22, v23, v24, v25), v31 = objc_msgSend_components(v17, v27, v28, v29, v30), (objc_msgSend_getBytes_viewport_components_forProcessor_session_(self, v32, v33, v34, v35, v26, viewport, v31, processorCopy, sessionCopy) & 1) != 0))
  {
    if (flippedCopy)
    {
      objc_msgSend_flip(v17, v36, v37, v38, v39);
    }

    v40 = v17;
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (id).cxx_construct
{
  *(self + 2) = 3;
  *(self + 2) = 1;
  *(self + 3) = 0;
  *(self + 29) = 0;
  *(self + 37) = 1;
  return self;
}

@end