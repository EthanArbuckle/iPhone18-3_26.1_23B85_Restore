@interface NSThread(SCRCThread)
- (uint64_t)shouldStop;
- (void)registerForStopNotification;
- (void)unregisterForStopNotification;
@end

@implementation NSThread(SCRCThread)

- (void)registerForStopNotification
{
  threadDictionary = [self threadDictionary];
  if (threadDictionary)
  {
    v3 = threadDictionary;
    v2 = [threadDictionary objectForKeyedSubscript:@"SCRCThreadKey"];
    if (v2)
    {
      [_RegistryLock lock];
      [_StoppableThreads addObject:v2];
      [_RegistryLock unlock];
    }

    threadDictionary = v3;
  }
}

- (void)unregisterForStopNotification
{
  threadDictionary = [self threadDictionary];
  if (threadDictionary)
  {
    v3 = threadDictionary;
    v2 = [threadDictionary objectForKeyedSubscript:@"SCRCThreadKey"];
    if (v2)
    {
      [_RegistryLock lock];
      [_StoppableThreads removeObject:v2];
      [_RegistryLock unlock];
    }

    threadDictionary = v3;
  }
}

- (uint64_t)shouldStop
{
  threadDictionary = [self threadDictionary];
  v2 = threadDictionary;
  if (threadDictionary)
  {
    v3 = [threadDictionary objectForKeyedSubscript:@"SCRCThreadKey"];
    _shouldStop = [v3 _shouldStop];
  }

  else
  {
    _shouldStop = 0;
  }

  return _shouldStop;
}

@end