@interface CoreImageOnlyLibrary
+ (id)colorKernelWithName:(id)name;
+ (id)colorKernelWithName:(id)name andOutputFormat:(int)format;
+ (id)kernelWithName:(id)name;
+ (id)kernelWithName:(id)name andOutputFormat:(int)format;
+ (id)url;
+ (id)warpKernelWithName:(id)name;
+ (id)warpKernelWithName:(id)name andOutputFormat:(int)format;
@end

@implementation CoreImageOnlyLibrary

+ (id)url
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = sub_2956B2248;
  v5[3] = &unk_29EDD4950;
  v6 = @"CoreImageKernels_only.ci";
  selfCopy = self;
  if (qword_2A18BA300 != -1)
  {
    dispatch_once(&qword_2A18BA300, v5);
  }

  v2 = qword_2A18BA2F0;
  v3 = qword_2A18BA2F0;

  return v2;
}

+ (id)kernelWithName:(id)name
{
  v4 = MEMORY[0x29EDB9180];
  nameCopy = name;
  v8 = objc_msgSend_url(self, v6, v7);
  v10 = objc_msgSend_cachedKernelWithFunctionName_fromMetalLibrary_error_(v4, v9, nameCopy, v8, 0);

  return v10;
}

+ (id)kernelWithName:(id)name andOutputFormat:(int)format
{
  v4 = *&format;
  v6 = MEMORY[0x29EDB9180];
  nameCopy = name;
  v10 = objc_msgSend_url(self, v8, v9);
  v12 = objc_msgSend_cachedKernelWithFunctionName_fromMetalLibrary_outputPixelFormat_error_(v6, v11, nameCopy, v10, v4, 0);

  return v12;
}

+ (id)colorKernelWithName:(id)name
{
  v4 = MEMORY[0x29EDB9160];
  nameCopy = name;
  v8 = objc_msgSend_url(self, v6, v7);
  v10 = objc_msgSend_cachedKernelWithFunctionName_fromMetalLibrary_error_(v4, v9, nameCopy, v8, 0);

  return v10;
}

+ (id)colorKernelWithName:(id)name andOutputFormat:(int)format
{
  v4 = *&format;
  v6 = MEMORY[0x29EDB9160];
  nameCopy = name;
  v10 = objc_msgSend_url(self, v8, v9);
  v12 = objc_msgSend_cachedKernelWithFunctionName_fromMetalLibrary_outputPixelFormat_error_(v6, v11, nameCopy, v10, v4, 0);

  return v12;
}

+ (id)warpKernelWithName:(id)name
{
  v4 = MEMORY[0x29EDB91A0];
  nameCopy = name;
  v8 = objc_msgSend_url(self, v6, v7);
  v10 = objc_msgSend_cachedKernelWithFunctionName_fromMetalLibrary_error_(v4, v9, nameCopy, v8, 0);

  return v10;
}

+ (id)warpKernelWithName:(id)name andOutputFormat:(int)format
{
  v4 = *&format;
  v6 = MEMORY[0x29EDB91A0];
  nameCopy = name;
  v10 = objc_msgSend_url(self, v8, v9);
  v12 = objc_msgSend_cachedKernelWithFunctionName_fromMetalLibrary_outputPixelFormat_error_(v6, v11, nameCopy, v10, v4, 0);

  return v12;
}

@end