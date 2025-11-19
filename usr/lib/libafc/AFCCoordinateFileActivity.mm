@interface AFCCoordinateFileActivity
@end

@implementation AFCCoordinateFileActivity

void ____AFCCoordinateFileActivity_block_invoke(uint64_t a1, int a2, const void *a3, void *aBlock)
{
  *(*(*(a1 + 32) + 8) + 40) = _Block_copy(aBlock);
  if (a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = CFRetain(a3);
  }

  if (!dispatch_semaphore_signal(*(a1 + 48)))
  {
    _Block_release(*(*(*(a1 + 32) + 8) + 40));
    *(*(*(a1 + 32) + 8) + 40) = 0;
    (*(aBlock + 2))(aBlock);
    if (a3)
    {
      CFRelease(a3);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v7 = *(a1 + 48);

  dispatch_release(v7);
}

@end