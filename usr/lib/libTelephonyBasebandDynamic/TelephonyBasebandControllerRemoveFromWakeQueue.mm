@interface TelephonyBasebandControllerRemoveFromWakeQueue
@end

@implementation TelephonyBasebandControllerRemoveFromWakeQueue

void ___TelephonyBasebandControllerRemoveFromWakeQueue_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*v1)
  {
    v3 = v1[1];
    v2 = v1[2];
    if (v3)
    {
      v4 = (v3 + 16);
    }

    else
    {
      v4 = (*(*(a1 + 40) + 88) + 8);
    }

    *v4 = v2;
    **(*(a1 + 32) + 16) = *(*(a1 + 32) + 8);
    v5 = *(a1 + 32);
    v6 = *v5;
    *v5 = 0;
    dispatch_group_leave(v6);
  }
}

@end