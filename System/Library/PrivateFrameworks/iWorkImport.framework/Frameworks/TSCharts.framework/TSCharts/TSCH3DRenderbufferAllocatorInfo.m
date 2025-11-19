@interface TSCH3DRenderbufferAllocatorInfo
+ (id)infoWithFramebufferAttributes:(FramebufferAttributes *)a3 size:(tvec2<int>)a4 session:(id)a5;
- (FramebufferAttributes)framebufferAttributes;
- (TSCH3DRenderbufferAllocatorInfo)initWithFramebufferAttributes:(FramebufferAttributes *)a3 size:(tvec2<int>)a4 session:(id)a5;
- (id).cxx_construct;
@end

@implementation TSCH3DRenderbufferAllocatorInfo

+ (id)infoWithFramebufferAttributes:(FramebufferAttributes *)a3 size:(tvec2<int>)a4 session:(id)a5
{
  v8 = a5;
  v9 = [a1 alloc];
  v10 = *&a3->colorDataType;
  v16[0] = *&a3->type;
  v16[1] = v10;
  v15 = **&a4;
  v13 = objc_msgSend_initWithFramebufferAttributes_size_session_(v9, v11, v15, *&v10, v12, v16, &v15, v8);

  return v13;
}

- (TSCH3DRenderbufferAllocatorInfo)initWithFramebufferAttributes:(FramebufferAttributes *)a3 size:(tvec2<int>)a4 session:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = TSCH3DRenderbufferAllocatorInfo;
  v10 = [(TSCH3DRenderbufferAllocatorInfo *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&a3->type;
    *(v10 + 39) = *(&a3->samples + 7);
    *(v10 + 24) = v12;
    *(v10 + 2) = *a4.var0.var0;
    *(v10 + 3) = *(*&a4 + 4);
    objc_storeStrong(v10 + 2, a5);
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