@interface MFMessageComposeViewController(DelegateAdapter)
- (id)sl_messageComposeResultHandler;
- (void)setSl_messageComposeResultHandler:()DelegateAdapter;
@end

@implementation MFMessageComposeViewController(DelegateAdapter)

- (id)sl_messageComposeResultHandler
{
  v1 = objc_getAssociatedObject(a1, sel_sl_messageComposeResultHandler);
  v2 = [v1 resultHandler];

  return v2;
}

- (void)setSl_messageComposeResultHandler:()DelegateAdapter
{
  if (a3)
  {
    v4 = a3;
    value = objc_alloc_init(SLMessageComposeViewControllerDelegateAdapter);
    [(SLMessageComposeViewControllerDelegateAdapter *)value setResultHandler:v4];
  }

  else
  {
    value = 0;
  }

  [a1 setMessageComposeDelegate:value];
  objc_setAssociatedObject(a1, sel_sl_messageComposeResultHandler, value, 1);
}

@end