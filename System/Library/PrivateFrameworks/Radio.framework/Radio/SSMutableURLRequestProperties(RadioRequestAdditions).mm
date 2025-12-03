@interface SSMutableURLRequestProperties(RadioRequestAdditions)
+ (id)newForRadioRequestURL:()RadioRequestAdditions accountUniqueIdentifier:;
+ (uint64_t)newForRadioRequestURL:()RadioRequestAdditions;
@end

@implementation SSMutableURLRequestProperties(RadioRequestAdditions)

+ (id)newForRadioRequestURL:()RadioRequestAdditions accountUniqueIdentifier:
{
  v5 = a4;
  v6 = MEMORY[0x277D69BD0];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setHTTPMethod:@"POST"];
  [v8 setURL:v7];

  [v8 setITunesStoreRequest:1];
  [v8 setShouldDisableCellularFallback:{CFPreferencesGetAppBooleanValue(@"RadioUseCellularData", @"com.apple.mobileipod", 0) == 0}];
  if (v5)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(v5, "longLongValue")];
    [v8 setValue:v9 forHTTPHeaderField:*MEMORY[0x277D6A160]];
  }

  v10 = SSVDefaultUserAgent();
  if (v10)
  {
    [v8 setValue:v10 forHTTPHeaderField:*MEMORY[0x277D6A130]];
  }

  currentDevice = [MEMORY[0x277D69A80] currentDevice];
  storeFrontIdentifier = [currentDevice storeFrontIdentifier];

  if (storeFrontIdentifier)
  {
    [v8 setValue:storeFrontIdentifier forHTTPHeaderField:*MEMORY[0x277D6A190]];
  }

  if (newForRadioRequestURL_accountUniqueIdentifier____once != -1)
  {
    dispatch_once(&newForRadioRequestURL_accountUniqueIdentifier____once, &__block_literal_global_89);
  }

  if (newForRadioRequestURL_accountUniqueIdentifier____deviceGUID)
  {
    [v8 setValue:newForRadioRequestURL_accountUniqueIdentifier____deviceGUID forHTTPHeaderField:@"X-Guid"];
  }

  return v8;
}

+ (uint64_t)newForRadioRequestURL:()RadioRequestAdditions
{
  v4 = MEMORY[0x277D69A20];
  v5 = a3;
  defaultStore = [v4 defaultStore];
  activeAccount = [defaultStore activeAccount];

  uniqueIdentifier = [activeAccount uniqueIdentifier];
  v9 = [self newForRadioRequestURL:v5 accountUniqueIdentifier:uniqueIdentifier];

  return v9;
}

@end