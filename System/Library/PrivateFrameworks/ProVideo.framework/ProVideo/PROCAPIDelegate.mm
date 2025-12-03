@interface PROCAPIDelegate
- (void)plugInManager:(id)manager didLoadPlugIn:(id)in;
@end

@implementation PROCAPIDelegate

- (void)plugInManager:(id)manager didLoadPlugIn:(id)in
{
  callback = self->callback;
  inCopy = in;
  userData = self->userData;

  callback(inCopy, userData);
}

@end