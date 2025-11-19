@interface NSDate
@end

@implementation NSDate

void __81__NSDate_WBSNSDateExtras__safari_dateFromNTPServerWithTimeout_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 48);
  objc_sync_enter(v3);
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    objc_sync_exit(v3);
  }

  else
  {
    *(v4 + 24) = 1;
    objc_sync_exit(v3);

    (*(*(a1 + 32) + 16))();
  }
}

void __81__NSDate_WBSNSDateExtras__safari_dateFromNTPServerWithTimeout_completionHandler___block_invoke_2(uint64_t a1)
{
  v14 = 0u;
  memset(__buf, 0, sizeof(__buf));
  LOBYTE(__buf[0]) = 35;
  v2 = socket(2, 2, 17);
  if (v2 < 0)
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v3 = v2;
    v4 = objc_alloc_init(WBSScopeExitHandler);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__NSDate_WBSNSDateExtras__safari_dateFromNTPServerWithTimeout_completionHandler___block_invoke_3;
    v11[3] = &__block_descriptor_36_e5_v8__0l;
    v12 = v3;
    [(WBSScopeExitHandler *)v4 setHandler:v11];
    memset(&v10, 0, sizeof(v10));
    v10.ai_socktype = 2;
    v9 = 0;
    if (getaddrinfo("time-ios.apple.com", "123", &v10, &v9))
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v6 = objc_alloc_init(WBSScopeExitHandler);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __81__NSDate_WBSNSDateExtras__safari_dateFromNTPServerWithTimeout_completionHandler___block_invoke_4;
      v8[3] = &__block_descriptor_40_e5_v8__0l;
      v8[4] = v9;
      [(WBSScopeExitHandler *)v6 setHandler:v8];
      if (connect(v3, v9->ai_addr, 0x10u) < 0 || write(v3, __buf, 0x30uLL) < 0 || read(v3, __buf, 0x30uLL) < 0 || (*(&v14 + 1) = vrev32_s8(*(&v14 + 8)), DWORD2(v14) <= 0xDC13357F))
      {
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:(DWORD2(v14) + 2085978496)];
        (*(*(a1 + 32) + 16))();
      }
    }
  }
}

uint64_t __57__NSDate_WBSNSDateExtras__safari_filenameFormattedString__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = safari_filenameFormattedString_dateFormatter;
  safari_filenameFormattedString_dateFormatter = v0;

  v2 = safari_filenameFormattedString_dateFormatter;

  return [v2 setDateFormat:@"yyyy.MM.dd_HH-mm-ssZZZ"];
}

@end