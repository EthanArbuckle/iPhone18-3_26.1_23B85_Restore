@interface SLComposeViewControllerDelegate
- (SLComposeViewControllerDelegate)initWithCallback:(id)callback;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
@end

@implementation SLComposeViewControllerDelegate

- (SLComposeViewControllerDelegate)initWithCallback:(id)callback
{
  callbackCopy = callback;
  v9.receiver = self;
  v9.super_class = SLComposeViewControllerDelegate;
  v5 = [(SLComposeViewControllerDelegate *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(callbackCopy);
    callback = v5->_callback;
    v5->_callback = v6;
  }

  return v5;
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  callback = [(SLComposeViewControllerDelegate *)self callback];

  if (callback)
  {
    callback2 = [(SLComposeViewControllerDelegate *)self callback];
    callback2[2](callback2, result);
  }
}

@end