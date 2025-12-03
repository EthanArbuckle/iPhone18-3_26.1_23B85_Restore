@interface TSCH3DRenderbufferAllocatorInfo
+ (id)infoWithFramebufferAttributes:(FramebufferAttributes *)attributes size:(tvec2<int>)size session:(id)session;
- (FramebufferAttributes)framebufferAttributes;
- (TSCH3DRenderbufferAllocatorInfo)initWithFramebufferAttributes:(FramebufferAttributes *)attributes size:(tvec2<int>)size session:(id)session;
- (id).cxx_construct;
@end

@implementation TSCH3DRenderbufferAllocatorInfo

+ (id)infoWithFramebufferAttributes:(FramebufferAttributes *)attributes size:(tvec2<int>)size session:(id)session
{
  sessionCopy = session;
  v9 = [self alloc];
  v10 = *&attributes->colorDataType;
  v16[0] = *&attributes->type;
  v16[1] = v10;
  v15 = **&size;
  v13 = objc_msgSend_initWithFramebufferAttributes_size_session_(v9, v11, v15, *&v10, v12, v16, &v15, sessionCopy);

  return v13;
}

- (TSCH3DRenderbufferAllocatorInfo)initWithFramebufferAttributes:(FramebufferAttributes *)attributes size:(tvec2<int>)size session:(id)session
{
  sessionCopy = session;
  v14.receiver = self;
  v14.super_class = TSCH3DRenderbufferAllocatorInfo;
  v10 = [(TSCH3DRenderbufferAllocatorInfo *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&attributes->type;
    *(v10 + 39) = *(&attributes->samples + 7);
    *(v10 + 24) = v12;
    *(v10 + 2) = *size.var0.var0;
    *(v10 + 3) = *(*&size + 4);
    objc_storeStrong(v10 + 2, session);
  }

  return v11;
}

- (FramebufferAttributes)framebufferAttributes
{
  v3 = *&self[1].samples;
  *&retstr->type = *&self->depthDataType;
  *&retstr->colorDataType = v3;
  return self;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 6) = 3;
  *(self + 4) = 1;
  *(self + 5) = 0;
  *(self + 45) = 0;
  *(self + 53) = 1;
  return self;
}

@end