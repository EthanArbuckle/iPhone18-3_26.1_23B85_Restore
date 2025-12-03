@interface NSObject(PosterFoundation)
+ (id)pf_secureDecodedFromData:()PosterFoundation classReplacementMap:;
+ (id)pf_secureDecodedFromData:()PosterFoundation ofClasses:classReplacementMap:;
@end

@implementation NSObject(PosterFoundation)

+ (id)pf_secureDecodedFromData:()PosterFoundation classReplacementMap:
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v12 = 0;
    goto LABEL_21;
  }

  v9 = v7;
  v10 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 length];
    v12 = 0;
    if (!self || !v11)
    {
      goto LABEL_20;
    }

    v13 = objc_autoreleasePoolPush();
    v19 = 0;
    v14 = [MEMORY[0x1E696ACD0] pf_unarchivedObjectOfClass:self fromData:v10 classReplacementMap:v9 error:&v19];
    v15 = v19;
    if (v15)
    {
      v16 = PFLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [NSObject(PosterFoundation) pf_secureDecodedFromData:self classReplacementMap:?];
      }
    }

    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v14;
LABEL_19:

        objc_autoreleasePoolPop(v13);
        goto LABEL_20;
      }

      if (!v15)
      {
        v17 = PFLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [NSObject(PosterFoundation) pf_secureDecodedFromData:self classReplacementMap:?];
        }
      }
    }

    v12 = 0;
    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

LABEL_21:

  return v12;
}

+ (id)pf_secureDecodedFromData:()PosterFoundation ofClasses:classReplacementMap:
{
  v40 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v25 = 0;
    goto LABEL_32;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:&selfCopy count:1];
  v11 = v10;
  if (v8)
  {
    [v10 unionSet:v8];
  }

  v12 = v11;
  v13 = v9;
  v14 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 length] && objc_msgSend(v12, "count"))
  {
    v15 = objc_autoreleasePoolPush();
    v38 = 0;
    v16 = [MEMORY[0x1E696ACD0] pf_unarchivedObjectOfClasses:v12 fromData:v14 classReplacementMap:v13 error:&v38];
    v32 = v38;
    if (v32)
    {
      v17 = PFLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [NSObject(PosterFoundation) pf_secureDecodedFromData:v32 ofClasses:v17 classReplacementMap:?];
      }
    }

    if (v16)
    {
      v30 = v15;
      v31 = v13;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v18 = v12;
      v19 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v35;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v34 + 1) + 8 * i);
            if (objc_opt_isKindOfClass())
            {

              v24 = v16;
              goto LABEL_36;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      if (v32)
      {
        v24 = 0;
LABEL_36:
        v15 = v30;
        v13 = v31;
        goto LABEL_41;
      }

      v29 = PFLogCommon();
      v15 = v30;
      v13 = v31;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        +[NSObject(PosterFoundation) pf_secureDecodedFromData:ofClasses:classReplacementMap:];
      }
    }

    v24 = 0;
LABEL_41:

    objc_autoreleasePoolPop(v15);
    goto LABEL_23;
  }

  v24 = 0;
LABEL_23:

  if (objc_opt_isKindOfClass())
  {
    v25 = v24;
  }

  else
  {
    if (v24)
    {
      v26 = PFLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [NSObject(PosterFoundation) pf_secureDecodedFromData:? ofClasses:? classReplacementMap:?];
      }
    }

    v25 = 0;
  }

LABEL_32:
  v27 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (void)pf_secureDecodedFromData:()PosterFoundation classReplacementMap:.cold.1(objc_class *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)pf_secureDecodedFromData:()PosterFoundation classReplacementMap:.cold.2(objc_class *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass(a1);
  v2 = objc_opt_class();
  v9 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)pf_secureDecodedFromData:()PosterFoundation ofClasses:classReplacementMap:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C269D000, a2, OS_LOG_TYPE_ERROR, "Error during decoding of data: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)pf_secureDecodedFromData:()PosterFoundation ofClasses:classReplacementMap:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v7 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)pf_secureDecodedFromData:()PosterFoundation ofClasses:classReplacementMap:.cold.3(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v1 = objc_opt_class();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

@end