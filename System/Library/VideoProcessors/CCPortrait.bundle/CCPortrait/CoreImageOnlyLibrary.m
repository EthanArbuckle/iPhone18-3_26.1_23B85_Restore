@interface CoreImageOnlyLibrary
+ (id)colorKernelWithName:(id)a3;
+ (id)colorKernelWithName:(id)a3 andOutputFormat:(int)a4;
+ (id)kernelWithName:(id)a3;
+ (id)kernelWithName:(id)a3 andOutputFormat:(int)a4;
+ (id)url;
+ (id)warpKernelWithName:(id)a3;
+ (id)warpKernelWithName:(id)a3 andOutputFormat:(int)a4;
@end

@implementation CoreImageOnlyLibrary

+ (id)url
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = sub_2956B2248;
  v5[3] = &unk_29EDD4950;
  v6 = @"CoreImageKernels_only.ci";
  v7 = a1;
  if (qword_2A18BA300 != -1)
  {
    dispatch_once(&qword_2A18BA300, v5);
  }

  v2 = qword_2A18BA2F0;
  v3 = qword_2A18BA2F0;

  return v2;
}

+ (id)kernelWithName:(id)a3
{
  v4 = MEMORY[0x29EDB9180];
  v5 = a3;
  v8 = objc_msgSend_url(a1, v6, v7);
  v10 = objc_msgSend_cachedKernelWithFunctionName_fromMetalLibrary_error_(v4, v9, v5, v8, 0);

  return v10;
}

+ (id)kernelWithName:(id)a3 andOutputFormat:(int)a4
{
  v4 = *&a4;
  v6 = MEMORY[0x29EDB9180];
  v7 = a3;
  v10 = objc_msgSend_url(a1, v8, v9);
  v12 = objc_msgSend_cachedKernelWithFunctionName_fromMetalLibrary_outputPixelFormat_error_(v6, v11, v7, v10, v4, 0);

  return v12;
}

+ (id)colorKernelWithName:(id)a3
{
  v4 = MEMORY[0x29EDB9160];
  v5 = a3;
  v8 = objc_msgSend_url(a1, v6, v7);
  v10 = objc_msgSend_cachedKernelWithFunctionName_fromMetalLibrary_error_(v4, v9, v5, v8, 0);

  return v10;
}

+ (id)colorKernelWithName:(id)a3 andOutputFormat:(int)a4
{
  v4 = *&a4;
  v6 = MEMORY[0x29EDB9160];
  v7 = a3;
  v10 = objc_msgSend_url(a1, v8, v9);
  v12 = objc_msgSend_cachedKernelWithFunctionName_fromMetalLibrary_outputPixelFormat_error_(v6, v11, v7, v10, v4, 0);

  return v12;
}

+ (id)warpKernelWithName:(id)a3
{
  v4 = MEMORY[0x29EDB91A0];
  v5 = a3;
  v8 = objc_msgSend_url(a1, v6, v7);
  v10 = objc_msgSend_cachedKernelWithFunctionName_fromMetalLibrary_error_(v4, v9, v5, v8, 0);

  return v10;
}

+ (id)warpKernelWithName:(id)a3 andOutputFormat:(int)a4
{
  v4 = *&a4;
  v6 = MEMORY[0x29EDB91A0];
  v7 = a3;
  v10 = objc_msgSend_url(a1, v8, v9);
  v12 = objc_msgSend_cachedKernelWithFunctionName_fromMetalLibrary_outputPixelFormat_error_(v6, v11, v7, v10, v4, 0);

  return v12;
}

@end