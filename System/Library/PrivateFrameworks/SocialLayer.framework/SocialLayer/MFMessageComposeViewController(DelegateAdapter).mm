@interface MFMessageComposeViewController(DelegateAdapter)
- (id)sl_messageComposeResultHandler;
- (void)setSl_messageComposeResultHandler:()DelegateAdapter;
@end

@implementation MFMessageComposeViewController(DelegateAdapter)

- (id)sl_messageComposeResultHandler
{
  v1 = objc_getAssociatedObject(self, sel_sl_messageComposeResultHandler);
  resultHandler = [v1 resultHandler];

  return resultHandler;
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

  [self setMessageComposeDelegate:value];
  objc_setAssociatedObject(self, sel_sl_messageComposeResultHandler, value, 1);
}

@end