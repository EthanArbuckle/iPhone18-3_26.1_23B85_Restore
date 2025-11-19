@interface PLErrorUserInfoContainerIsSafeForXPC
@end

@implementation PLErrorUserInfoContainerIsSafeForXPC

uint64_t ___PLErrorUserInfoContainerIsSafeForXPC_block_invoke(void *a1)
{
  v1 = a1;
  if ([v1 conformsToProtocol:&unk_1F1FAE9F0])
  {
    IsSafeForXPC = _PLErrorUserInfoContainerIsSafeForXPC(v1);
  }

  else
  {
    IsSafeForXPC = 1;
  }

  return IsSafeForXPC;
}

@end