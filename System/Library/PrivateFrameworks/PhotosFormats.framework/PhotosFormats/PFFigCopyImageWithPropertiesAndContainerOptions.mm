@interface PFFigCopyImageWithPropertiesAndContainerOptions
@end

@implementation PFFigCopyImageWithPropertiesAndContainerOptions

uint64_t ___PFFigCopyImageWithPropertiesAndContainerOptions_block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [a2 objectForKeyedSubscript:*MEMORY[0x1E6991828]];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (!v5)
    {
      goto LABEL_19;
    }

    v7 = v5;
    v8 = *v21;
    v9 = *MEMORY[0x1E6991830];
    *&v6 = 67109120;
    v17 = v6;
    v18 = *MEMORY[0x1E6991830];
    v19 = *v21;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([v4 count] < 2)
        {
          v12 = 0;
        }

        else
        {
          v12 = [v11 objectForKeyedSubscript:v9];
          if (!v12)
          {
            continue;
          }
        }

        v13 = v3[2](v3, v12);
        if (v13)
        {
          DataFromMetadata = CGImageCreateDataFromMetadata();
          if (DataFromMetadata)
          {
            v15 = DataFromMetadata;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = v17;
              v25 = v15;
              _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Non-success status %d from CGImageCreateDataFromMetadata()", buf, 8u);
            }
          }

          else
          {

            v9 = v18;
            v8 = v19;
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (!v7)
      {
LABEL_19:

        return 0;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v26 = 0;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unexpected nil container description", v26, 2u);
  }

  return 0xFFFFFFFFLL;
}

@end