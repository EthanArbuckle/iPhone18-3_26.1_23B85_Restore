@interface CoreImageLibrary
- (CoreImageLibrary)init;
- (id)kernelWithFunctionName:(id)a3 constants:(id)a4;
- (id)url;
@end

@implementation CoreImageLibrary

- (id)url
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = sub_2956B1E54;
  v5[3] = &unk_29EDD4928;
  v5[4] = self;
  v6 = @"CoreImageKernels.ci";
  if (qword_2A18BA308 != -1)
  {
    dispatch_once(&qword_2A18BA308, v5);
  }

  v2 = qword_2A18BA2F8;
  v3 = qword_2A18BA2F8;

  return v2;
}

- (CoreImageLibrary)init
{
  v21.receiver = self;
  v21.super_class = CoreImageLibrary;
  v2 = [(CoreImageLibrary *)&v21 init];
  v5 = v2;
  if (v2)
  {
    v6 = MEMORY[0x29EDB9180];
    v7 = objc_msgSend_url(v2, v3, v4);
    v9 = objc_msgSend_kernelNamesFromMetalLibrary_(v6, v8, v7);

    if (v9)
    {
      if (objc_msgSend_count(v9, v10, v11))
      {
        v13 = objc_msgSend_setWithArray_(MEMORY[0x29EDB8E50], v12, v9);
        objc_msgSend_setAvailableNames_(v5, v14, v13);
      }

      else
      {
        v15 = uni_logger_compile();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_2956CD6A8(v15);
        }

        objc_msgSend_setAvailableNames_(v5, v16, 0);
      }
    }
  }

  v17 = objc_msgSend_availableNames(v5, v3, v4);
  if (v17)
  {
    v18 = v5;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  return v19;
}

- (id)kernelWithFunctionName:(id)a3 constants:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_availableNames(self, v8, v9);
  v12 = objc_msgSend_containsObject_(v10, v11, v6);

  if (v12)
  {
    v15 = MEMORY[0x29EDB9180];
    v16 = objc_msgSend_url(self, v13, v14);
    v23 = 0;
    v18 = objc_msgSend_cachedKernelWithFunctionName_fromMetalLibrary_constants_error_(v15, v17, v6, v16, v7, &v23);
    v19 = v23;

    if (!v18 || v19)
    {
      v21 = uni_logger_compile();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_2956CD75C(v6, v19, v21);
      }

      v20 = 0;
    }

    else
    {
      v20 = v18;
    }
  }

  else
  {
    v19 = uni_logger_compile();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_2956CD700(v6);
    }

    v20 = 0;
  }

  return v20;
}

@end