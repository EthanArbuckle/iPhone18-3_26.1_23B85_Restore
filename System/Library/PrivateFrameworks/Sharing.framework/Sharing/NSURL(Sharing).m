@interface NSURL(Sharing)
- (id)fileName;
- (id)issueSandboxExtensionData;
- (id)valueForQueryKey:()Sharing;
- (uint64_t)isiWorkDocument;
- (void)coordinateReadingWithSaveToTempDir:()Sharing options:completionHandler:;
- (void)issueSandboxExtensionData;
@end

@implementation NSURL(Sharing)

- (id)issueSandboxExtensionData
{
  v11 = *MEMORY[0x1E69E9840];
  if (([a1 isFileURL] & 1) == 0)
  {
    v5 = utilities_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(Sharing) *)a1 issueSandboxExtensionData];
    }

    goto LABEL_10;
  }

  v2 = *MEMORY[0x1E69E9BA8];
  [a1 fileSystemRepresentation];
  v3 = sandbox_extension_issue_file();
  v4 = utilities_log();
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(Sharing) *)a1 issueSandboxExtensionData];
    }

LABEL_10:

    v6 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138477827;
    v10 = a1;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "sandbox extension issued successfully for URL:%{private}@", &v9, 0xCu);
  }

  v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v3 length:strlen(v3) + 1 freeWhenDone:1];
LABEL_11:
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)issueSandboxExtensionData
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = __error();
  v6 = strerror(*v5);
  v8 = 138412802;
  v9 = a1;
  v10 = 1024;
  v11 = v4;
  v12 = 2080;
  v13 = v6;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "Failed to create sandbox extension token for the file URL %@ with error %d (%s)", &v8, 0x1Cu);
  v7 = *MEMORY[0x1E69E9840];
}

- (uint64_t)isiWorkDocument
{
  v2 = 0;
  [a1 getResourceValue:&v2 forKey:*MEMORY[0x1E695DC68] error:0];
  return [v2 hasPrefix:@"com.apple.iwork"];
}

- (id)fileName
{
  v1 = [a1 URLByDeletingPathExtension];
  v2 = [v1 lastPathComponent];

  return v2;
}

- (void)coordinateReadingWithSaveToTempDir:()Sharing options:completionHandler:
{
  v8 = a5;
  v9 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:0];
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__NSURL_Sharing__coordinateReadingWithSaveToTempDir_options_completionHandler___block_invoke;
  v12[3] = &unk_1E788DA28;
  v15 = a3;
  v13 = 0;
  v14 = v8;
  v10 = v8;
  [v9 coordinateReadingItemAtURL:a1 options:a4 error:&v16 byAccessor:v12];
  v11 = v16;
}

- (id)valueForQueryKey:()Sharing
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  [v5 queryItems];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = [v10 value];
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

@end