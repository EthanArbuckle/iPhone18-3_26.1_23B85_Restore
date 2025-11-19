@interface TelephonyBasebandControllerInsertInWakeQueue
@end

@implementation TelephonyBasebandControllerInsertInWakeQueue

void ___TelephonyBasebandControllerInsertInWakeQueue_block_invoke(uint64_t a1)
{
  dispatch_group_enter(**(a1 + 32));
  *(*(a1 + 32) + 8) = 0;
  *(*(a1 + 32) + 16) = *(*(*(a1 + 40) + 88) + 8);
  v2 = *(a1 + 32);
  **(*(*(a1 + 40) + 88) + 8) = v2;
  *(*(*(a1 + 40) + 88) + 8) = v2 + 8;
}

@end