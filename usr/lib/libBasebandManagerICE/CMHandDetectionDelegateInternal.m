@interface CMHandDetectionDelegateInternal
- (void)callHandednessManager:(id)a3 didUpdateState:(int64_t)a4;
- (void)registerHandler:(void *)a3;
@end

@implementation CMHandDetectionDelegateInternal

- (void)callHandednessManager:(id)a3 didUpdateState:(int64_t)a4
{
  if (a3)
  {
    v4 = *(self + 1);
    if (v4)
    {
      (*(v4 + 16))(v4, a4);
    }
  }
}

- (void)registerHandler:(void *)a3
{
  v4 = *a3;
  if (*a3)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    _Block_release(v5);
  }
}

@end