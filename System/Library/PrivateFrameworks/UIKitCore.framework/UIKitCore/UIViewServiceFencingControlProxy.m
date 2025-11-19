@interface UIViewServiceFencingControlProxy
@end

@implementation UIViewServiceFencingControlProxy

uint64_t __93___UIViewServiceFencingControlProxy_proxyWithTarget_exportedProtocol_fencingBatchController___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v5 = 1;
  if (!protocol_getMethodDescription(v2, [a2 selector], 1, 1).name && !protocol_getMethodDescription(*(a1 + 32), objc_msgSend(a2, "selector"), 0, 1).name)
  {
    return 0;
  }

  return v5;
}

@end