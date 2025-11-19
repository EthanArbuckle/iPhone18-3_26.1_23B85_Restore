@interface TSCH3DPyramidBlurFBOResource
+ (id)pyramidResourceWithFBOSize:(tvec2<int>)a3;
- (TSCH3DPyramidBlurFBOResource)initWithFBOSize:(tvec2<int>)a3;
@end

@implementation TSCH3DPyramidBlurFBOResource

+ (id)pyramidResourceWithFBOSize:(tvec2<int>)a3
{
  v4 = [a1 alloc];
  v10 = **&a3;
  v8 = objc_msgSend_initWithFBOSize_(v4, v5, v10, v6, v7, &v10);

  return v8;
}

- (TSCH3DPyramidBlurFBOResource)initWithFBOSize:(tvec2<int>)a3
{
  v5.receiver = self;
  v5.super_class = TSCH3DPyramidBlurFBOResource;
  result = [(TSCH3DResource *)&v5 init];
  if (result)
  {
    result->_size.var0.var0 = *a3.var0.var0;
    result->_size.var1.var0 = *(*&a3 + 4);
  }

  return result;
}

@end