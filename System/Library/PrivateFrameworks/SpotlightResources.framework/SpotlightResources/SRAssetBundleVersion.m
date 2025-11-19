@interface SRAssetBundleVersion
- (SRAssetBundleVersion)initWithBundleVersion:(id)a3;
- (int64_t)compare:(id)a3;
@end

@implementation SRAssetBundleVersion

- (SRAssetBundleVersion)initWithBundleVersion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SRAssetBundleVersion;
  v6 = [(SRAssetBundleVersion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_version, a3);
  }

  return v7;
}

- (int64_t)compare:(id)a3
{
  v4 = [a3 version];
  version = self->_version;
  p_version = &self->_version;
  v7 = [(NSString *)version componentsSeparatedByString:@"."];
  v8 = [v4 componentsSeparatedByString:@"."];
  v9 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v9 setNumberStyle:1];
  v10 = [v7 count];
  v11 = [v8 count];
  if (v10 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    v13 = 0;
    while (1)
    {
      v14 = [v7 objectAtIndex:v13];
      v15 = [v9 numberFromString:v14];

      v16 = [v8 objectAtIndex:v13];
      v17 = [v9 numberFromString:v16];

      if (!v15)
      {
        break;
      }

      if (!v17)
      {
        v17 = SRLogCategoryAssets();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [SRAssetBundleVersion compare:];
        }

        v18 = 1;
        goto LABEL_21;
      }

      v18 = [v15 compare:v17];

      if (v18)
      {
        goto LABEL_22;
      }

      if (v12 == ++v13)
      {
        goto LABEL_10;
      }
    }

    v21 = SRLogCategoryAssets();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(SRAssetBundleVersion *)p_version compare:v21, v22, v23, v24, v25, v26, v27];
    }

    v18 = -1;
LABEL_21:
  }

  else
  {
LABEL_10:
    v19 = [v7 count];
    if (v19 == [v8 count])
    {
      v18 = 0;
    }

    else
    {
      v20 = [v7 count];
      if (v20 < [v8 count])
      {
        v18 = -1;
      }

      else
      {
        v18 = 1;
      }
    }
  }

LABEL_22:

  return v18;
}

- (void)compare:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "malformed bundle version %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)compare:(uint64_t)a3 .cold.2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_1(&dword_1AE58E000, a2, a3, "Malformed bundle version %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end