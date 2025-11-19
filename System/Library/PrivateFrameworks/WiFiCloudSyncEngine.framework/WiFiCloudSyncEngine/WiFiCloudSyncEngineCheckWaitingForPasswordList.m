@interface WiFiCloudSyncEngineCheckWaitingForPasswordList
@end

@implementation WiFiCloudSyncEngineCheckWaitingForPasswordList

const void *____WiFiCloudSyncEngineCheckWaitingForPasswordList_block_invoke_51(uint64_t a1)
{
  result = *(*(a1 + 40) + 248);
  if (result)
  {
    CFRelease(result);
    *(*(a1 + 40) + 248) = 0;
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return __WiFiCloudSyncEngineCheckWaitingForPasswordList(v3, v4);
  }

  return result;
}

NSObject *____WiFiCloudSyncEngineCheckWaitingForPasswordList_block_invoke_2_53(uint64_t a1)
{
  result = *(*(a1 + 40) + 256);
  if (result)
  {
    dispatch_release(result);
    v3 = *(a1 + 40);
    *(v3 + 256) = 0;
    v4 = *(a1 + 32);

    return __WiFiCloudSyncEngineCheckWaitingForPasswordList(v3, v4);
  }

  return result;
}

@end