@interface TSCH3DPyramidBlurFBOResource
+ (id)pyramidResourceWithFBOSize:(tvec2<int>)size;
- (TSCH3DPyramidBlurFBOResource)initWithFBOSize:(tvec2<int>)size;
@end

@implementation TSCH3DPyramidBlurFBOResource

+ (id)pyramidResourceWithFBOSize:(tvec2<int>)size
{
  v4 = [self alloc];
  v10 = **&size;
  v8 = objc_msgSend_initWithFBOSize_(v4, v5, v10, v6, v7, &v10);

  return v8;
}

- (TSCH3DPyramidBlurFBOResource)initWithFBOSize:(tvec2<int>)size
{
  v5.receiver = self;
  v5.super_class = TSCH3DPyramidBlurFBOResource;
  result = [(TSCH3DResource *)&v5 init];
  if (result)
  {
    result->_size.var0.var0 = *size.var0.var0;
    result->_size.var1.var0 = *(*&size + 4);
  }

  return result;
}

@end