@interface _PASSecureCodingHelper
+ (id)robustDecodeObjectOfClasses:(id)a3 forKey:(id)a4 withCoder:(id)a5 expectNonNull:(BOOL)a6 errorDomain:(id)a7 errorCode:(int64_t)a8 logHandle:(id)a9;
@end

@implementation _PASSecureCodingHelper

+ (id)robustDecodeObjectOfClasses:(id)a3 forKey:(id)a4 withCoder:(id)a5 expectNonNull:(BOOL)a6 errorDomain:(id)a7 errorCode:(int64_t)a8 logHandle:(id)a9
{
  v11 = a6;
  v68 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a9;
  v19 = objc_autoreleasePoolPush();
  if (!v18)
  {
    v18 = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  v21 = [v16 decodeObjectOfClasses:v14 forKey:v15];
  if (v21)
  {
    v50 = a8;
    v51 = v19;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v22 = v14;
    v23 = [v22 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v54;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v54 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v53 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v32 = v21;

            goto LABEL_16;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v53 objects:v59 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v28 = objc_alloc(MEMORY[0x1E696ABC0]);
    v57 = *MEMORY[0x1E696A578];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"key %@ maps to unexpected class", v15];
    v58 = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v31 = [v28 initWithDomain:v17 code:v50 userInfo:v30];
    [v16 failWithError:v31];

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v46 = v18;
      v47 = [v16 error];
      *buf = 138412546;
      v65 = v15;
      v66 = 2112;
      v67 = v47;
      _os_log_error_impl(&dword_1A7F47000, v46, OS_LOG_TYPE_ERROR, "error decoding for key %@ - %@", buf, 0x16u);
    }

    v32 = 0;
LABEL_16:
    v19 = v51;
  }

  else
  {
    v33 = [v16 error];

    if (v33)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v34 = v18;
        v35 = [v16 error];
        *buf = 138412546;
        v65 = v15;
        v66 = 2112;
        v67 = v35;
        _os_log_error_impl(&dword_1A7F47000, v34, OS_LOG_TYPE_ERROR, "error decoding for key %@ - %@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v36 = [v16 containsValueForKey:v15];
      v52 = objc_alloc(MEMORY[0x1E696ABC0]);
      v37 = *MEMORY[0x1E696A578];
      if (v36)
      {
        v62 = *MEMORY[0x1E696A578];
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"archive contains illegal nil value for key %@", v15];
        v63 = v38;
        v39 = MEMORY[0x1E695DF20];
        v40 = &v63;
        v41 = &v62;
      }

      else
      {
        v60 = *MEMORY[0x1E696A578];
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"key %@ not present", v15];
        v61 = v38;
        v39 = MEMORY[0x1E695DF20];
        v40 = &v61;
        v41 = &v60;
      }

      v42 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:1];
      v43 = [v52 initWithDomain:v17 code:a8 userInfo:v42];

      [v16 failWithError:v43];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v48 = v18;
        v49 = [v16 error];
        *buf = 138412546;
        v65 = v15;
        v66 = 2112;
        v67 = v49;
        _os_log_error_impl(&dword_1A7F47000, v48, OS_LOG_TYPE_ERROR, "error decoding for key %@ - %@", buf, 0x16u);
      }
    }

    v32 = 0;
  }

  objc_autoreleasePoolPop(v19);
  v44 = *MEMORY[0x1E69E9840];

  return v32;
}

@end