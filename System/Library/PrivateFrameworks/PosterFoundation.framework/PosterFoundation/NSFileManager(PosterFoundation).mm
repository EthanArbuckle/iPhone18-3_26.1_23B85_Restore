@interface NSFileManager(PosterFoundation)
- (uint64_t)pf_replaceURL:()PosterFoundation withURL:error:;
@end

@implementation NSFileManager(PosterFoundation)

- (uint64_t)pf_replaceURL:()PosterFoundation withURL:error:
{
  v106[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    [NSFileManager(PosterFoundation) pf_replaceURL:a2 withURL:? error:?];
  }

  v12 = v11;
  if (!v11)
  {
    [NSFileManager(PosterFoundation) pf_replaceURL:a2 withURL:? error:?];
  }

  v101 = 0;
  v13 = *MEMORY[0x1E695DAD0];
  [v10 getResourceValue:&v101 forKey:*MEMORY[0x1E695DAD0] error:0];
  v14 = v101;
  v100 = 0;
  v15 = *MEMORY[0x1E695DE78];
  [v10 getResourceValue:&v100 forKey:*MEMORY[0x1E695DE78] error:0];
  v72 = v100;
  v98 = 0;
  v99 = 0;
  [v12 getResourceValue:&v99 forKey:v13 error:&v98];
  v16 = v99;
  v17 = v98;
  v18 = v17;
  if (!v16)
  {
    if (!v17)
    {
      v22 = PFFunctionNameForAddress(v5);
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = @"(Unknown Location)";
      }

      path = [v12 path];
      v18 = PFGeneralErrorFromObjectWithLocalizedFailureReason(self, v24, 0, 0, 1, @"unable to lookup inode for path '%@'", v26, v27, path);
    }

    if (a5)
    {
      v28 = v18;
      *a5 = v18;
    }

    v29 = PFLogCommon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [NSFileManager(PosterFoundation) pf_replaceURL:a2 withURL:? error:?];
    }

    v73 = 0;
    goto LABEL_20;
  }

  v97 = 0;
  [v12 getResourceValue:&v97 forKey:v15 error:0];
  v73 = v97;

  if (!v14)
  {
    v21 = [self moveItemAtURL:v12 toURL:v10 error:a5];
    goto LABEL_41;
  }

  if (![v14 isEqualToNumber:v16])
  {
    if ([v73 BOOLValue] && objc_msgSend(v72, "BOOLValue"))
    {
      v30 = PFLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = NSStringFromSelector(a2);
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v31;
        _os_log_impl(&dword_1C269D000, v30, OS_LOG_TYPE_INFO, "%{public}@> swapping supported", &buf, 0xCu);
      }

      v32 = v10;
      fileSystemRepresentation = [v10 fileSystemRepresentation];
      v34 = v12;
      if (renamex_np(fileSystemRepresentation, [v12 fileSystemRepresentation], 2u) != -1)
      {
        if ([v12 checkResourceIsReachableAndReturnError:0])
        {
          v96 = 0;
          [self removeItemAtURL:v12 error:&v96];
          v35 = v96;
          if (v35)
          {
            v36 = PFLogCommon();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              [NSFileManager(PosterFoundation) pf_replaceURL:withURL:error:];
            }
          }
        }

        goto LABEL_9;
      }

      if (a5)
      {
        v56 = *__error();
        v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:strerror(v56)];
        v58 = v57;
        v59 = @"(unknown)";
        if (v57)
        {
          v59 = v57;
        }

        v60 = v59;

        v61 = PFLogCommon();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          [NSFileManager(PosterFoundation) pf_replaceURL:a2 withURL:? error:?];
        }

        v62 = MEMORY[0x1E696ABC0];
        v63 = *MEMORY[0x1E696A588];
        v106[0] = v60;
        v64 = *MEMORY[0x1E696A368];
        v105[0] = v63;
        v105[1] = v64;
        path2 = [v10 path];
        v106[1] = path2;
        v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:2];
        *a5 = [v62 errorWithDomain:*MEMORY[0x1E696A798] code:v56 userInfo:v66];
      }

LABEL_20:
      v21 = 0;
      goto LABEL_41;
    }

    v37 = PFLogCommon();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = NSStringFromSelector(a2);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v38;
      _os_log_impl(&dword_1C269D000, v37, OS_LOG_TYPE_INFO, "%{public}@> swapping NOT supported", &buf, 0xCu);
    }

    v39 = [v10 URLByAppendingPathExtension:@"-movedaside"];
    v40 = [v10 URLByAppendingPathExtension:@"-new"];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v103 = 0x2020000000;
    v104 = 0;
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v95 = 0;
    v88 = 0;
    v89 = &v88;
    v90 = 0x2020000000;
    v91 = 0;
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __63__NSFileManager_PosterFoundation__pf_replaceURL_withURL_error___block_invoke;
    v85[3] = &unk_1E8189EA0;
    v85[4] = self;
    v41 = v39;
    v86 = v41;
    v42 = v40;
    v87 = v42;
    v69 = MEMORY[0x1C691C400](v85);
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __63__NSFileManager_PosterFoundation__pf_replaceURL_withURL_error___block_invoke_2;
    v78[3] = &unk_1E8189EC8;
    v82 = &v88;
    v78[4] = self;
    v43 = v10;
    v79 = v43;
    v71 = v42;
    v80 = v71;
    v83 = &v92;
    v70 = v41;
    v81 = v70;
    p_buf = &buf;
    v44 = MEMORY[0x1C691C400](v78);
    v77 = 0;
    LOBYTE(v42) = [self copyItemAtURL:v12 toURL:v71 error:&v77];
    v45 = v77;
    *(*(&buf + 1) + 24) = v42;
    if (v45)
    {
      v46 = v45;
      if (a5)
      {
        v47 = v45;
        *a5 = v46;
      }

      v44[2](v44);
    }

    else
    {
      v76 = 0;
      v50 = [self moveItemAtURL:v43 toURL:v70 error:&v76];
      v51 = v76;
      *(v93 + 24) = v50;
      if (v51)
      {
        v46 = v51;
        if (a5)
        {
          v52 = v51;
          v21 = 0;
          *a5 = v46;
          goto LABEL_40;
        }
      }

      else
      {
        v75 = 0;
        v53 = [self moveItemAtURL:v71 toURL:v43 error:&v75];
        v54 = v75;
        *(v89 + 24) = v53;
        if (!v54)
        {
          v69[2]();
          if ([v12 checkResourceIsReachableAndReturnError:0])
          {
            v74 = 0;
            [self removeItemAtURL:v12 error:&v74];
            v67 = v74;
            if (v67)
            {
              v68 = PFLogCommon();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                [NSFileManager(PosterFoundation) pf_replaceURL:withURL:error:];
              }
            }
          }

          v46 = 0;
          v21 = 1;
          goto LABEL_40;
        }

        v46 = v54;
        if (a5)
        {
          v55 = v54;
          *a5 = v46;
        }

        v44[2](v44);
      }
    }

    v21 = 0;
LABEL_40:

    _Block_object_dispose(&v88, 8);
    _Block_object_dispose(&v92, 8);
    _Block_object_dispose(&buf, 8);

    goto LABEL_41;
  }

  v19 = PFLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromSelector(a2);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v20;
    _os_log_impl(&dword_1C269D000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@> URLToReplace is the same as replacementURL; bailing", &buf, 0xCu);
  }

LABEL_9:
  v21 = 1;
LABEL_41:

  v48 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)pf_replaceURL:()PosterFoundation withURL:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_1C269D000, v0, v1, "unable to cleanup replacement url '%@' with error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)pf_replaceURL:()PosterFoundation withURL:error:.cold.3(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_4(&dword_1C269D000, v2, v3, "%{public}@> swapping failed with explanation: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)pf_replaceURL:()PosterFoundation withURL:error:.cold.4(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_4(&dword_1C269D000, v2, v3, "%{public}@> replacementURLInode is not validL; bailing with error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)pf_replaceURL:()PosterFoundation withURL:error:.cold.5(const char *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"replacementURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v9 = @"NSFileManager+PosterFoundation.m";
    v10 = 1024;
    v11 = 36;
    v12 = v6;
    v13 = v2;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v7 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pf_replaceURL:()PosterFoundation withURL:error:.cold.6(const char *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"URLToReplace"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v9 = @"NSFileManager+PosterFoundation.m";
    v10 = 1024;
    v11 = 35;
    v12 = v6;
    v13 = v2;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v7 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end