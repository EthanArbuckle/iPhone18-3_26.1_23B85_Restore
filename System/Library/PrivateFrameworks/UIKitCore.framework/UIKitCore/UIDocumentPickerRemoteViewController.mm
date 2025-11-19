@interface UIDocumentPickerRemoteViewController
@end

@implementation UIDocumentPickerRemoteViewController

void __63___UIDocumentPickerRemoteViewController__didSelectURLBookmark___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = _UIDocumentLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 40);
      *v11 = 138412802;
      *&v11[4] = v8;
      *&v11[12] = 2112;
      *&v11[14] = v9;
      *&v11[22] = 2112;
      v12 = a3;
      v10 = v8;
      _os_log_error_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%@: Error while resolving selected bookmark %@: %@", v11, 0x20u);
    }
  }

  v7 = [*(a1 + 32) publicController];
  [v7 _didSelectURL:a2];
}

@end