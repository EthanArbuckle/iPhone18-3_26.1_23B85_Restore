@interface SWCTrackingDomainInfoClass
@end

@implementation SWCTrackingDomainInfoClass

Class __get_SWCTrackingDomainInfoClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!SharedWebCredentialsLibraryCore())
  {
    __get_SWCTrackingDomainInfoClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("_SWCTrackingDomainInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_SWCTrackingDomainInfoClass_block_invoke_cold_1();
  }

  get_SWCTrackingDomainInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_SWCTrackingDomainInfoClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_SWCTrackingDomainInfoClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBSKnownTrackerFilter.m" lineNumber:18 description:{@"Unable to find class %s", "_SWCTrackingDomainInfo"}];

  __break(1u);
}

void __get_SWCTrackingDomainInfoClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SharedWebCredentialsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WBSKnownTrackerFilter.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

@end