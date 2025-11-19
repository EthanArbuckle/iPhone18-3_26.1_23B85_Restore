@interface PASPosixPipeContext
@end

@implementation PASPosixPipeContext

void __45___PASPosixPipeContext_startReadWithHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  data = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  if (data && (*(*(a1 + 32) + 32) & 1) == 0)
  {
    if (!dispatch_data_get_size(data))
    {
LABEL_6:
      if (!a2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    (*(*(a1 + 40) + 16))();
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  dispatch_io_close(*(v6 + 16), 0);
LABEL_8:
  objc_autoreleasePoolPop(v5);
}

void __80___PASPosixPipeContext_setupWithSubprocessFd_fileActions_queue_group_readErrno___block_invoke(uint64_t a1, int a2)
{
  close(*(a1 + 48));
  v4 = *(a1 + 40);
  if (!*v4)
  {
    *v4 = a2;
  }

  v5 = *(a1 + 32);

  dispatch_group_leave(v5);
}

@end