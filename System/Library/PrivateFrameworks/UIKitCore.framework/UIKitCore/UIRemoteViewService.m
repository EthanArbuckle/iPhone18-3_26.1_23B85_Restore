@interface UIRemoteViewService
@end

@implementation UIRemoteViewService

void __38___UIRemoteViewService_allocWithZone___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4.receiver = *(a1 + 40);
  v4.super_class = &OBJC_METACLASS____UIRemoteViewService;
  v2 = objc_msgSendSuper2(&v4, sel_allocWithZone_, v1);
  v3 = _MergedGlobals_1_30;
  _MergedGlobals_1_30 = v2;
}

@end