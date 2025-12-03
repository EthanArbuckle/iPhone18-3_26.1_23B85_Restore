@interface _PASSecureCodingHelper
+ (id)robustDecodeObjectOfClasses:(id)classes forKey:(id)key withCoder:(id)coder expectNonNull:(BOOL)null errorDomain:(id)domain errorCode:(int64_t)code logHandle:(id)handle;
@end

@implementation _PASSecureCodingHelper

+ (id)robustDecodeObjectOfClasses:(id)classes forKey:(id)key withCoder:(id)coder expectNonNull:(BOOL)null errorDomain:(id)domain errorCode:(int64_t)code logHandle:(id)handle
{
  nullCopy = null;
  v68 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  handleCopy = handle;
  v19 = objc_autoreleasePoolPush();
  if (!handleCopy)
  {
    handleCopy = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  v21 = [coderCopy decodeObjectOfClasses:classesCopy forKey:keyCopy];
  if (v21)
  {
    codeCopy = code;
    v51 = v19;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v22 = classesCopy;
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
    keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"key %@ maps to unexpected class", keyCopy];
    v58 = keyCopy;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v31 = [v28 initWithDomain:domainCopy code:codeCopy userInfo:v30];
    [coderCopy failWithError:v31];

    if (os_log_type_enabled(handleCopy, OS_LOG_TYPE_ERROR))
    {
      v46 = handleCopy;
      error = [coderCopy error];
      *buf = 138412546;
      v65 = keyCopy;
      v66 = 2112;
      v67 = error;
      _os_log_error_impl(&dword_1A7F47000, v46, OS_LOG_TYPE_ERROR, "error decoding for key %@ - %@", buf, 0x16u);
    }

    v32 = 0;
LABEL_16:
    v19 = v51;
  }

  else
  {
    error2 = [coderCopy error];

    if (error2)
    {
      if (os_log_type_enabled(handleCopy, OS_LOG_TYPE_ERROR))
      {
        v34 = handleCopy;
        error3 = [coderCopy error];
        *buf = 138412546;
        v65 = keyCopy;
        v66 = 2112;
        v67 = error3;
        _os_log_error_impl(&dword_1A7F47000, v34, OS_LOG_TYPE_ERROR, "error decoding for key %@ - %@", buf, 0x16u);
      }
    }

    else if (nullCopy)
    {
      v36 = [coderCopy containsValueForKey:keyCopy];
      v52 = objc_alloc(MEMORY[0x1E696ABC0]);
      v37 = *MEMORY[0x1E696A578];
      if (v36)
      {
        v62 = *MEMORY[0x1E696A578];
        keyCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"archive contains illegal nil value for key %@", keyCopy];
        v63 = keyCopy2;
        v39 = MEMORY[0x1E695DF20];
        v40 = &v63;
        v41 = &v62;
      }

      else
      {
        v60 = *MEMORY[0x1E696A578];
        keyCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"key %@ not present", keyCopy];
        v61 = keyCopy2;
        v39 = MEMORY[0x1E695DF20];
        v40 = &v61;
        v41 = &v60;
      }

      v42 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:1];
      v43 = [v52 initWithDomain:domainCopy code:code userInfo:v42];

      [coderCopy failWithError:v43];
      if (os_log_type_enabled(handleCopy, OS_LOG_TYPE_ERROR))
      {
        v48 = handleCopy;
        error4 = [coderCopy error];
        *buf = 138412546;
        v65 = keyCopy;
        v66 = 2112;
        v67 = error4;
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