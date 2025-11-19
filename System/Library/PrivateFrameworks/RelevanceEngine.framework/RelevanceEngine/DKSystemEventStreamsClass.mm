@interface DKSystemEventStreamsClass
@end

@implementation DKSystemEventStreamsClass

Class __get_DKSystemEventStreamsClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  result = objc_getClass("_DKSystemEventStreams");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKSystemEventStreamsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_DKSystemEventStreamsClass_block_invoke_cold_1();
    return __get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_block_invoke(v3);
  }

  return result;
}

Class __get_DKSystemEventStreamsClass_block_invoke_0(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKSystemEventStreams");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKSystemEventStreamsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_DKSystemEventStreamsClass_block_invoke_cold_1();
    return __get_DKPredictionTimelineClass_block_invoke(v3);
  }

  return result;
}

void __get_DKSystemEventStreamsClass_block_invoke_1(uint64_t a1)
{
  CoreDuetLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_DKSystemEventStreams");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKSystemEventStreamsClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_DKSystemEventStreamsClass_block_invoke_cold_1();
    CoreDuetLibrary_1();
  }
}

@end