@interface UniLibrary
- (UniLibrary)initWithDevice:(id)device metalOnly:(BOOL)only;
@end

@implementation UniLibrary

- (UniLibrary)initWithDevice:(id)device metalOnly:(BOOL)only
{
  deviceCopy = device;
  v25.receiver = self;
  v25.super_class = UniLibrary;
  v7 = [(UniLibrary *)&v25 init];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = MEMORY[0x29EDB9F48];
  v9 = objc_opt_class();
  v11 = objc_msgSend_bundleForClass_(v8, v10, v9);
  if (!only)
  {
    v12 = objc_opt_new();
    objc_msgSend_setCoreImageLibrary_(v7, v13, v12);

    v16 = objc_msgSend_coreImageLibrary(v7, v14, v15);
    if (!v16)
    {
      sub_2956CEFA4();
    }
  }

  v17 = objc_alloc(MEMORY[0x29EDC0A40]);
  inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v17, v18, v11, 0);
  metalContext = v7->metalContext;
  v7->metalContext = inited;

  if (v7->metalContext)
  {

LABEL_7:
    v21 = v7;
    goto LABEL_11;
  }

  v22 = uni_logger_compile();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_2956CEFD0(v11, v22, v23);
  }

  v21 = 0;
LABEL_11:

  return v21;
}

@end