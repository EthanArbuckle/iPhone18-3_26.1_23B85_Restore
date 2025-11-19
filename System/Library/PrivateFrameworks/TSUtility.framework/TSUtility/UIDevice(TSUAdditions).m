@interface UIDevice(TSUAdditions)
+ (uint64_t)platformString;
@end

@implementation UIDevice(TSUAdditions)

+ (uint64_t)platformString
{
  result = platformString_s_platformString;
  if (!platformString_s_platformString)
  {
    objc_sync_enter(obj);
    if (!platformString_s_platformString)
    {
      size = 0;
      sysctlbyname("hw.machine", 0, &size, 0, 0);
      v3 = malloc_type_malloc(size, 0x374061DuLL);
      sysctlbyname("hw.machine", v3, &size, 0, 0);
      v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v3];
      free(v3);
      __dmb(0xBu);
      platformString_s_platformString = v4;
      if (!v4)
      {
        v5 = +[TSUAssertionHandler currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[UIDevice(TSUAdditions) platformString]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/UIDevice_TSUAdditions.m"), 34, @"Couldn't initialize lazy variable %s", "s_platformString"}];
      }
    }

    objc_sync_exit(obj);
    return platformString_s_platformString;
  }

  return result;
}

@end