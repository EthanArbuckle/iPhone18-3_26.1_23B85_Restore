@interface NSURL(SPAdditions)
+ (id)_sp_URLFromFileID:()SPAdditions filename:parentFileID:documentID:;
+ (id)sp_URLFromFileID:()SPAdditions filename:parentFileID:documentID:;
@end

@implementation NSURL(SPAdditions)

+ (id)sp_URLFromFileID:()SPAdditions filename:parentFileID:documentID:
{
  v1 = [a1 _sp_URLFromFileID:? filename:? parentFileID:? documentID:?];
  if (v1 && _CFURLIsItemPromiseAtURL())
  {
    v5 = 0;
    v2 = _CFURLCopyLogicalURLOfPromiseAtURL();

    if (!v2)
    {
      v3 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [NSURL(SPAdditions) sp_URLFromFileID:v1 filename:&v5 parentFileID:? documentID:?];
      }
    }

    v1 = v2;
  }

  return v1;
}

+ (id)_sp_URLFromFileID:()SPAdditions filename:parentFileID:documentID:
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (!v12)
  {
    v22 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [NSURL(SPAdditions) _sp_URLFromFileID:v22 filename:? parentFileID:? documentID:?];
    }

    goto LABEL_37;
  }

  v14 = [v12 unsignedIntValue];
  if (v9)
  {
    [v9 unsignedLongValue];
    v15 = openbyid();
    if ((v15 & 0x80000000) == 0)
    {
      v16 = v15;
      v39 = 0;
      v38 = xmmword_1DA0D5430;
      bzero(v40, 0x410uLL);
      if (fgetattrlist(v16, &v38, v40, 0x410uLL, 0x21u) < 0)
      {
        v19 = PRSLogCategoryDefault();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          +[NSURL(SPAdditions) _sp_URLFromFileID:filename:parentFileID:documentID:];
        }
      }

      else
      {
        if (v41 == v14)
        {
          v17 = v42;
          v18 = MEMORY[0x1E695DFF8];
          v19 = [MEMORY[0x1E696AC08] defaultManager];
          v20 = [v19 stringWithFileSystemRepresentation:&v42 + v17 length:v43];
          v21 = [v18 fileURLWithPath:v20];

          goto LABEL_14;
        }

        v19 = PRSLogCategoryDefault();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [NSURL(SPAdditions) _sp_URLFromFileID:? filename:? parentFileID:? documentID:?];
        }
      }

      v21 = 0;
LABEL_14:

      close(v16);
      if (v21)
      {
        goto LABEL_45;
      }
    }
  }

  if (!v10)
  {
    goto LABEL_28;
  }

  if (!v11)
  {
    goto LABEL_28;
  }

  [v11 unsignedLongValue];
  v23 = openbyid();
  if (v23 < 0)
  {
    goto LABEL_28;
  }

  v24 = v23;
  v25 = openat(v23, [v10 fileSystemRepresentation], 256);
  close(v24);
  if (v25 < 0)
  {
    goto LABEL_28;
  }

  v39 = 0;
  v38 = xmmword_1DA0D5430;
  bzero(v40, 0x410uLL);
  if (fgetattrlist(v25, &v38, v40, 0x410uLL, 0x21u) < 0)
  {
    v28 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      +[NSURL(SPAdditions) _sp_URLFromFileID:filename:parentFileID:documentID:];
    }
  }

  else
  {
    if (v41 == v14)
    {
      v26 = v42;
      v27 = MEMORY[0x1E695DFF8];
      v28 = [MEMORY[0x1E696AC08] defaultManager];
      v29 = [v28 stringWithFileSystemRepresentation:&v42 + v26 length:v43];
      v21 = [v27 fileURLWithPath:v29];

      goto LABEL_27;
    }

    v28 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [NSURL(SPAdditions) _sp_URLFromFileID:? filename:? parentFileID:? documentID:?];
    }
  }

  v21 = 0;
LABEL_27:

  close(v25);
  if (v21)
  {
    goto LABEL_45;
  }

LABEL_28:
  if (device_id_onceToken != -1)
  {
    +[NSURL(SPAdditions) _sp_URLFromFileID:filename:parentFileID:documentID:];
  }

  if (!GSLibraryResolveDocumentId2())
  {
    v22 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      +[NSURL(SPAdditions) _sp_URLFromFileID:filename:parentFileID:documentID:];
    }

LABEL_37:

    goto LABEL_38;
  }

  v30 = openbyid();
  if (v30 < 0)
  {
LABEL_38:
    v21 = 0;
    goto LABEL_45;
  }

  v31 = v30;
  v39 = 0;
  v38 = xmmword_1DA0D5430;
  bzero(v40, 0x410uLL);
  if (fgetattrlist(v31, &v38, v40, 0x410uLL, 0x21u) < 0)
  {
    v34 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      +[NSURL(SPAdditions) _sp_URLFromFileID:filename:parentFileID:documentID:];
    }

    goto LABEL_43;
  }

  if (v41 != v14)
  {
    v34 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [NSURL(SPAdditions) _sp_URLFromFileID:? filename:? parentFileID:? documentID:?];
    }

LABEL_43:
    v21 = 0;
    goto LABEL_44;
  }

  v32 = v42;
  v33 = MEMORY[0x1E695DFF8];
  v34 = [MEMORY[0x1E696AC08] defaultManager];
  v35 = [v34 stringWithFileSystemRepresentation:&v42 + v32 length:v43];
  v21 = [v33 fileURLWithPath:v35];

LABEL_44:
  close(v31);
LABEL_45:

  v36 = *MEMORY[0x1E69E9840];

  return v21;
}

@end