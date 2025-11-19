@interface SSURLConnectionRequest
@end

@implementation SSURLConnectionRequest

void __103__SSURLConnectionRequest_RadioAdditions__newRadioRequestWithRequestContext_requestProperties_storeBag___block_invoke()
{
  v4 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = newRadioRequestWithRequestContext_requestProperties_storeBag__sDateFormatter;
  newRadioRequestWithRequestContext_requestProperties_storeBag__sDateFormatter = v0;

  [newRadioRequestWithRequestContext_requestProperties_storeBag__sDateFormatter setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"];
  [newRadioRequestWithRequestContext_requestProperties_storeBag__sDateFormatter setLocale:v4];
  v2 = newRadioRequestWithRequestContext_requestProperties_storeBag__sDateFormatter;
  v3 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v3];
}

@end