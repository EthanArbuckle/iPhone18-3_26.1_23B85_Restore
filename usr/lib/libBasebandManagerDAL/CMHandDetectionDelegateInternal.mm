@interface CMHandDetectionDelegateInternal
- (void)callHandednessManager:(id)manager didUpdateState:(int64_t)state;
- (void)registerHandler:(void *)handler;
@end

@implementation CMHandDetectionDelegateInternal

- (void)callHandednessManager:(id)manager didUpdateState:(int64_t)state
{
  if (manager)
  {
    v4 = *(self + 1);
    if (v4)
    {
      (*(v4 + 16))(v4, state);
    }
  }
}

- (void)registerHandler:(void *)handler
{
  v4 = *handler;
  if (*handler)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(self + 8);
  *(self + 8) = v4;
  if (v5)
  {
    _Block_release(v5);
  }
}

@end