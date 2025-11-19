@interface TelephonyBasebandControllerInsertInEventQueue
@end

@implementation TelephonyBasebandControllerInsertInEventQueue

uint64_t ___TelephonyBasebandControllerInsertInEventQueue_block_invoke(uint64_t result)
{
  **(result + 32) = *(result + 40);
  *(*(result + 32) + 8) = 0;
  *(*(result + 32) + 16) = *(*(*(result + 48) + 96) + 8);
  v1 = *(result + 32);
  **(*(*(result + 48) + 96) + 8) = v1;
  *(*(*(result + 48) + 96) + 8) = v1 + 8;
  return result;
}

@end