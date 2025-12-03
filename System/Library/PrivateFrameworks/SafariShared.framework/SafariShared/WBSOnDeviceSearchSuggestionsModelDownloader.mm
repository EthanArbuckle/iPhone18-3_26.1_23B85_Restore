@interface WBSOnDeviceSearchSuggestionsModelDownloader
- (WBSOnDeviceSearchSuggestionsModelDownloader)init;
- (void)_callCompletionHandlerWithError:(id)error;
- (void)_cancelPendingDownload;
- (void)_downloadModelAtEndpoint:(id)endpoint forLocale:(id)locale;
- (void)downloadOnDeviceSearchSuggestionsModelForLocale:(id)locale withCompletionHandler:(id)handler;
@end

@implementation WBSOnDeviceSearchSuggestionsModelDownloader

- (WBSOnDeviceSearchSuggestionsModelDownloader)init
{
  v10.receiver = self;
  v10.super_class = WBSOnDeviceSearchSuggestionsModelDownloader;
  v2 = [(WBSOnDeviceSearchSuggestionsModelDownloader *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(WBSOnDeviceSearchSuggestionsModelEndpointFetcher);
    endpointFetcher = v2->_endpointFetcher;
    v2->_endpointFetcher = v3;

    safari_ephemeralSessionConfiguration = [MEMORY[0x1E695AC80] safari_ephemeralSessionConfiguration];
    [safari_ephemeralSessionConfiguration setURLCache:0];
    v6 = [MEMORY[0x1E695AC78] sessionWithConfiguration:safari_ephemeralSessionConfiguration];
    urlSession = v2->_urlSession;
    v2->_urlSession = v6;

    v8 = v2;
  }

  return v2;
}

- (void)_cancelPendingDownload
{
  [(NSURLSessionDownloadTask *)self->_downloadTask cancel];
  downloadTask = self->_downloadTask;
  self->_downloadTask = 0;

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSOnDeviceSearchSuggestionsModelDownloaderErrorDomain" code:0 userInfo:0];
  [(WBSOnDeviceSearchSuggestionsModelDownloader *)self _callCompletionHandlerWithError:v4];
}

- (void)_callCompletionHandlerWithError:(id)error
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, error);
    v5 = self->_completionHandler;
    self->_completionHandler = 0;

    downloadTask = self->_downloadTask;
    self->_downloadTask = 0;
  }
}

- (void)downloadOnDeviceSearchSuggestionsModelForLocale:(id)locale withCompletionHandler:(id)handler
{
  localeCopy = locale;
  handlerCopy = handler;
  [(WBSOnDeviceSearchSuggestionsModelDownloader *)self _cancelPendingDownload];
  v8 = [handlerCopy copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v8;

  v10 = +[WBSOnDeviceSearchSuggestionsModelManager sharedManager];
  objc_initWeak(&location, self);
  endpointFetcher = self->_endpointFetcher;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __117__WBSOnDeviceSearchSuggestionsModelDownloader_downloadOnDeviceSearchSuggestionsModelForLocale_withCompletionHandler___block_invoke;
  v14[3] = &unk_1E7FC88E8;
  objc_copyWeak(&v17, &location);
  v12 = localeCopy;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  [(WBSOnDeviceSearchSuggestionsModelEndpointFetcher *)endpointFetcher fetchModelEndpointURLsWithCompletionHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __117__WBSOnDeviceSearchSuggestionsModelDownloader_downloadOnDeviceSearchSuggestionsModelForLocale_withCompletionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [WeakRetained _callCompletionHandlerWithError:v6];
      goto LABEL_19;
    }

    v9 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_DEFAULT, "Model endpoint successfully fetched", buf, 2u);
    }

    v10 = a1 + 4;
    v11 = [a1[4] safari_localeStringInOfflineSearchModelFormat];
    v12 = [v5 objectForKeyedSubscript:v11];

    v13 = a1[5];
    v14 = [v5 allKeys];
    [v13 updateSupportedModelLocales:v14];

    if (v12)
    {
      if ([v12 sizeInBytes] > 0xA00000)
      {
        v15 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          __117__WBSOnDeviceSearchSuggestionsModelDownloader_downloadOnDeviceSearchSuggestionsModelForLocale_withCompletionHandler___block_invoke_cold_1(v10, v15, v12);
        }

        goto LABEL_18;
      }

      v16 = [a1[5] currentChecksumForModelWithLocale:a1[4]];
      v19 = [v12 checksumString];
      v20 = [v19 isEqualToString:v16];

      if (!v20)
      {
        [v8 _downloadModelAtEndpoint:v12 forLocale:*v10];
        goto LABEL_17;
      }

      v21 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_1BB6F3000, v21, OS_LOG_TYPE_DEFAULT, "No new model for the given checksum", v22, 2u);
      }

      v17 = v8;
      v18 = 0;
    }

    else
    {
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSOnDeviceSearchSuggestionsModelDownloaderErrorDomain" code:1 userInfo:0];
      v17 = v8;
      v18 = v16;
    }

    [v17 _callCompletionHandlerWithError:v18];
LABEL_17:

LABEL_18:
  }

LABEL_19:
}

- (void)_downloadModelAtEndpoint:(id)endpoint forLocale:(id)locale
{
  endpointCopy = endpoint;
  localeCopy = locale;
  v8 = MEMORY[0x1E695AC18];
  endpointURL = [endpointCopy endpointURL];
  v10 = [v8 requestWithURL:endpointURL cachePolicy:1 timeoutInterval:10.0];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3042000000;
  v25 = __Block_byref_object_copy__29;
  v26 = __Block_byref_object_dispose__29;
  v27 = 0;
  objc_initWeak(&location, self);
  urlSession = self->_urlSession;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__WBSOnDeviceSearchSuggestionsModelDownloader__downloadModelAtEndpoint_forLocale___block_invoke;
  v16[3] = &unk_1E7FC8910;
  objc_copyWeak(&v20, &location);
  v19 = &v22;
  v12 = localeCopy;
  v17 = v12;
  v13 = endpointCopy;
  v18 = v13;
  v14 = [(NSURLSession *)urlSession downloadTaskWithRequest:v10 completionHandler:v16];
  downloadTask = self->_downloadTask;
  self->_downloadTask = v14;

  objc_storeWeak(v23 + 5, v14);
  [(NSURLSessionDownloadTask *)self->_downloadTask resume];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v22, 8);
  objc_destroyWeak(&v27);
}

void __82__WBSOnDeviceSearchSuggestionsModelDownloader__downloadModelAtEndpoint_forLocale___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      [WeakRetained _callCompletionHandlerWithError:v7];
    }

    else
    {
      v10 = WeakRetained[1];
      if (v10)
      {
        v11 = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));

        if (v10 == v11)
        {
          v12 = [MEMORY[0x1E696AC08] defaultManager];
          v13 = [v6 absoluteString];
          v14 = [v12 attributesOfItemAtPath:v13 error:0];
          v15 = [v14 fileSize];

          if (v15 <= 0xA00000)
          {
            v17 = MEMORY[0x1E695DEF0];
            v18 = [v6 path];
            v44 = 0;
            v19 = [v17 dataWithContentsOfFile:v18 options:8 error:&v44];
            v20 = v44;

            v21 = MEMORY[0x1E696AEC0];
            v22 = [v19 safari_SHA1Hash];
            v23 = [v21 safari_stringAsHexWithData:v22];

            v24 = [*(a1 + 40) checksumString];
            v25 = [v23 caseInsensitiveCompare:v24];

            v26 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
            v27 = v26;
            if (v25)
            {
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                __82__WBSOnDeviceSearchSuggestionsModelDownloader__downloadModelAtEndpoint_forLocale___block_invoke_cold_1(v23, (a1 + 40), v27);
              }

              v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSOnDeviceSearchSuggestionsModelDownloaderErrorDomain" code:2 userInfo:0];
              [v9 _callCompletionHandlerWithError:v28];
            }

            else
            {
              v40 = v19;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1BB6F3000, v27, OS_LOG_TYPE_DEFAULT, "Succeeded in downloading new model data", buf, 2u);
              }

              v28 = +[WBSOnDeviceSearchSuggestionsModelManager sharedManager];
              v29 = *(a1 + 32);
              v30 = [*(a1 + 40) checksumString];
              [v28 addOrUpdateModelForLocale:v29 withChecksum:v30];

              v31 = [v28 fileURLForModelWithLocale:*(a1 + 32)];
              v32 = [MEMORY[0x1E696AC08] defaultManager];
              v39 = v31;
              v33 = [v31 path];
              LODWORD(v31) = [v32 fileExistsAtPath:v33];

              v34 = [MEMORY[0x1E696AC08] defaultManager];
              v35 = v34;
              if (v31)
              {
                v42 = v20;
                v36 = v39;
                [v34 replaceItemAtURL:v39 withItemAtURL:v6 backupItemName:0 options:1 resultingItemURL:0 error:&v42];
                v37 = v42;
                v19 = v40;
              }

              else
              {
                v38 = [v28 fileURLForModelWithLocale:*(a1 + 32)];
                v41 = v20;
                [v35 copyItemAtURL:v6 toURL:v38 error:&v41];
                v37 = v41;

                v20 = v38;
                v19 = v40;
                v36 = v39;
              }

              [v9 _callCompletionHandlerWithError:v37];
              v20 = v37;
            }
          }

          else
          {
            v16 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              __82__WBSOnDeviceSearchSuggestionsModelDownloader__downloadModelAtEndpoint_forLocale___block_invoke_cold_2(a1, v16);
            }
          }
        }
      }
    }
  }
}

void __117__WBSOnDeviceSearchSuggestionsModelDownloader_downloadOnDeviceSearchSuggestionsModelForLocale_withCompletionHandler___block_invoke_cold_1(void **a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [v4 safari_localeStringInOfflineSearchModelFormat];
  v7 = [a3 checksumString];
  [a3 sizeInBytes];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_9(&dword_1BB6F3000, v8, v9, "Model for locale: %{private}@ with checksum: %{public}@ reports size: %ld which exceeds maximum (10 MB)", v10, v11, v12, v13, v14);
}

void __82__WBSOnDeviceSearchSuggestionsModelDownloader__downloadModelAtEndpoint_forLocale___block_invoke_cold_1(uint64_t a1, void **a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a3;
  v6 = [v4 checksumString];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Computed SHA1 checksum: %{public}@ does not the expected checksum: %{public}@", &v7, 0x16u);
}

void __82__WBSOnDeviceSearchSuggestionsModelDownloader__downloadModelAtEndpoint_forLocale___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 safari_localeStringInOfflineSearchModelFormat];
  v6 = [*(a1 + 40) checksumString];
  [*(a1 + 40) sizeInBytes];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_9(&dword_1BB6F3000, v7, v8, "Downloaded model for locale: %{private}@ with checksum: %{public}@ has size: %ld which exceeds maximum (10 MB)", v9, v10, v11, v12, v13);
}

@end