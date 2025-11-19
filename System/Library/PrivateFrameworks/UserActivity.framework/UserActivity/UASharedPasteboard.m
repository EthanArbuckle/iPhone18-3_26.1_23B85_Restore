@interface UASharedPasteboard
+ (id)remotePasteboard;
+ (void)clearLocalPasteboardInformation;
+ (void)localPasteboardDidAddData:(id)a3 toItemAtIndex:(unint64_t)a4 generation:(unint64_t)a5;
+ (void)localPasteboardDidAddItems:(id)a3 forGeneration:(unint64_t)a4;
+ (void)localPasteboardDidPasteGeneration:(unint64_t)a3;
+ (void)startPreventingPasteboardSharing;
+ (void)stopPreventingPasteboardSharing;
- (BOOL)returnPasteboardDataBeforeArchives;
- (id)currentRemoteDeviceName;
- (void)prefetchRemotePasteboardTypes:(id)a3;
@end

@implementation UASharedPasteboard

+ (void)localPasteboardDidAddData:(id)a3 toItemAtIndex:(unint64_t)a4 generation:(unint64_t)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 type];
    v12 = 134218243;
    v13 = a4;
    v14 = 2113;
    v15 = v9;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_INFO, "PBOARD CLIENT: add type for index: %lu/%{private}@", &v12, 0x16u);
  }

  v10 = +[UASharedPasteboardManager sharedManager];
  [v10 addData:v7 toItemAtIndex:a4 generation:a5];

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)localPasteboardDidAddItems:(id)a3 forGeneration:(unint64_t)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218243;
    v23 = [v5 count];
    v24 = 2113;
    v25 = v5;
    _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_INFO, "PBOARD CLIENT: addItems, %lud items added, items=%{private}@", buf, 0x16u);
  }

  if ([v5 count])
  {
    v7 = 0;
    do
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = [v5 objectAtIndexedSubscript:{v7, 0}];
      v9 = [v8 types];

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          v13 = 0;
          do
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v17 + 1) + 8 * v13);
            v15 = +[UASharedPasteboardManager sharedManager];
            [v15 addData:v14 toItemAtIndex:v7 generation:a4];

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v11);
      }

      ++v7;
    }

    while ([v5 count] > v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)clearLocalPasteboardInformation
{
  v2 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_INFO, "PBOARD CLIENT: Clear Local Pasteboard Info", v4, 2u);
  }

  v3 = +[UASharedPasteboardManager sharedManager];
  [v3 clearLocalPasteboardInformation];
}

+ (void)localPasteboardDidPasteGeneration:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_INFO, "PBOARD CLIENT: localPasteboardDidPasteGeneration = %ld", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)remotePasteboard
{
  if (remotePasteboard_onceToken != -1)
  {
    +[UASharedPasteboard remotePasteboard];
  }

  v3 = remotePasteboard_remotePasteboard;

  return v3;
}

void __38__UASharedPasteboard_remotePasteboard__block_invoke()
{
  v0 = objc_alloc_init(UASharedPasteboard);
  v1 = remotePasteboard_remotePasteboard;
  remotePasteboard_remotePasteboard = v0;

  v2 = +[UASharedPasteboardManager sharedManager];
  [remotePasteboard_remotePasteboard setManager:v2];
}

- (BOOL)returnPasteboardDataBeforeArchives
{
  v2 = +[UASharedPasteboardManager sharedManager];
  v3 = [v2 requestPasteboardFetchReturnEarly];

  return v3;
}

- (void)prefetchRemotePasteboardTypes:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136446210;
    v6 = "[UASharedPasteboard prefetchRemotePasteboardTypes:]";
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_INFO, "[PBOARD CLIENT] %{public}s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)currentRemoteDeviceName
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7 = 136446210;
    v8 = "[UASharedPasteboard currentRemoteDeviceName]";
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_INFO, "[PBOARD CLIENT] %{public}s", &v7, 0xCu);
  }

  v3 = +[UASharedPasteboardManager sharedManager];
  v4 = [v3 currentRemoteDeviceName];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)startPreventingPasteboardSharing
{
  v2 = +[UASharedPasteboardManager sharedManager];
  [v2 startPreventingPasteboardSharing];
}

+ (void)stopPreventingPasteboardSharing
{
  v2 = +[UASharedPasteboardManager sharedManager];
  [v2 stopPreventingPasteboardSharing];
}

@end