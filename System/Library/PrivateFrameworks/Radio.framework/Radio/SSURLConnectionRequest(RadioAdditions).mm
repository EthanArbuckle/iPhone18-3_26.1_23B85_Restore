@interface SSURLConnectionRequest(RadioAdditions)
+ (RadioURLConnectionRequest)newRadioRequestWithRequestContext:()RadioAdditions requestProperties:storeBag:;
@end

@implementation SSURLConnectionRequest(RadioAdditions)

+ (RadioURLConnectionRequest)newRadioRequestWithRequestContext:()RadioAdditions requestProperties:storeBag:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
  }

  else
  {
    v10 = [v8 mutableCopy];
  }

  v11 = v10;
  v12 = MGCopyAnswer();
  v13 = [@"2/" stringByAppendingString:v12];

  [v11 setValue:v13 forHTTPHeaderField:@"X-Apple-Radio-Client-Version"];
  if (newRadioRequestWithRequestContext_requestProperties_storeBag__sDateFormatterOnceToken != -1)
  {
    dispatch_once(&newRadioRequestWithRequestContext_requestProperties_storeBag__sDateFormatterOnceToken, &__block_literal_global_1286);
  }

  v14 = newRadioRequestWithRequestContext_requestProperties_storeBag__sDateFormatter;
  date = [MEMORY[0x277CBEAA8] date];
  v16 = [v14 stringFromDate:date];

  if ([v16 length])
  {
    [v11 setValue:v16 forHTTPHeaderField:@"X-Apple-I-Client-Time"];
  }

  v17 = MEMORY[0x277CCACA8];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  v19 = [v17 stringWithFormat:@"%li", objc_msgSend(systemTimeZone, "secondsFromGMT")];

  if ([v19 length])
  {
    [v11 setValue:v19 forHTTPHeaderField:@"X-Apple-Tz"];
  }

  [v11 setShouldDecodeResponse:0];
  [v11 setMachineDataStyle:2];
  hTTPBody = [v11 HTTPBody];
  if ([hTTPBody length])
  {
    v21 = MSVGzipCompressData();
    if ([v21 length])
    {
      [v11 setHTTPBody:v21];
      [v11 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
    }
  }

  v22 = [(SSURLConnectionRequest *)[RadioURLConnectionRequest alloc] initWithRequestProperties:v11];
  uRLBagDictionary = [v9 URLBagDictionary];

  [(SSURLConnectionRequest *)v22 configureWithURLBagDictionary:uRLBagDictionary];
  [(SSURLConnectionRequest *)v22 setShouldMescalSign:1];
  if ([v7 usesLocalNetworking])
  {
    [(SSURLConnectionRequest *)v22 setRunsInProcess:1];
    sAPSession = [v7 SAPSession];
    [(SSURLConnectionRequest *)v22 setSAPSession:sAPSession];

    v25 = [objc_alloc(MEMORY[0x277D69D00]) initWithPolicyType:1];
    [(SSURLConnectionRequest *)v22 setSAPSignaturePolicy:v25];
  }

  return v22;
}

@end