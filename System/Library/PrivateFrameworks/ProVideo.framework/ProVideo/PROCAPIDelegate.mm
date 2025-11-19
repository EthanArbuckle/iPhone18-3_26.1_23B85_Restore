@interface PROCAPIDelegate
- (void)plugInManager:(id)a3 didLoadPlugIn:(id)a4;
@end

@implementation PROCAPIDelegate

- (void)plugInManager:(id)a3 didLoadPlugIn:(id)a4
{
  callback = self->callback;
  v5 = a4;
  userData = self->userData;

  callback(v5, userData);
}

@end