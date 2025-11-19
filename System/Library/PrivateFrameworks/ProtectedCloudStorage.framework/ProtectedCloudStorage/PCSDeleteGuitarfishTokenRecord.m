@interface PCSDeleteGuitarfishTokenRecord
@end

@implementation PCSDeleteGuitarfishTokenRecord

intptr_t ____PCSDeleteGuitarfishTokenRecord_block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a2;
    if ([v3 code] == 22)
    {
      v4 = [v3 domain];
      v5 = [v4 isEqualToString:*MEMORY[0x1E6994DA8]];

      if (v5)
      {
        v6 = [v3 userInfo];
        v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

        if ([v7 code] == -2003)
        {
          v8 = [v7 domain];
          v9 = [v8 isEqualToString:*MEMORY[0x1E6994DB0]];

          if (v9)
          {

            goto LABEL_11;
          }
        }
      }
    }

    v10 = PCSLogGetOSLog(*(a1 + 48));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&dword_1B229C000, v10, OS_LOG_TYPE_DEFAULT, "_PCSSecureBackupDisableWithInfo (Guitarfish recovery token): %@", &v13, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = CFRetain(v3);
  }

LABEL_11:
  result = dispatch_semaphore_signal(*(a1 + 32));
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void ____PCSDeleteGuitarfishTokenRecord_block_invoke_26(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PCSLogGetOSLog(*(a1 + 40));
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "Failed to delete recovery token from keychain: %@", &v6, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = v3;
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end