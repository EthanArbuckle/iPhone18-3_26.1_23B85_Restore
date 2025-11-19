@interface DKPredictionQueryClass
@end

@implementation DKPredictionQueryClass

Class __get_DKPredictionQueryClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKPredictionQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKPredictionQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_DKPredictionQueryClass_block_invoke_cold_1();
    return __get_DKSystemEventStreamsClass_block_invoke_0(v3);
  }

  return result;
}

@end