@interface TelephonyBasebandControllerRemoveAllFromCoredumpReadyQueue
@end

@implementation TelephonyBasebandControllerRemoveAllFromCoredumpReadyQueue

void ___TelephonyBasebandControllerRemoveAllFromCoredumpReadyQueue_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  if (v1)
  {
    for (i = *v1; *v1; i = *v1)
    {
      v4 = *(i + 8);
      v5 = *(i + 16);
      v6 = v1 + 1;
      if (v4)
      {
        v6 = (v4 + 16);
      }

      *v6 = v5;
      *v5 = v4;
      v7 = *i;
      *i = 0;
      dispatch_group_leave(v7);
      v1 = *(*(a1 + 32) + 104);
    }
  }
}

@end