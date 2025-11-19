@interface PCSCopyStingrayInfo
@end

@implementation PCSCopyStingrayInfo

intptr_t ____PCSCopyStingrayInfo_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = 40;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_6;
    }

    v4 = 48;
    a3 = a2;
  }

  *(*(*(a1 + v4) + 8) + 24) = a3;
  CFRetain(*(*(*(a1 + v4) + 8) + 24));
LABEL_6:
  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

@end