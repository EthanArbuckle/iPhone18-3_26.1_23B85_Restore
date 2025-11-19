@interface Bootstrapper
- (void)afterBootstrapOnQueue:(id)a3 runBootstrapCallbackBlock:(id)a4;
- (void)startBootstrappingWithWindow:(id)a3 shouldOnboard:(BOOL)a4;
- (void)startBootstrappingWithWindow:(id)a3 shouldOnboard:(BOOL)a4 shouldCollapseSidebar:(BOOL)a5;
@end

@implementation Bootstrapper

- (void)startBootstrappingWithWindow:(id)a3 shouldOnboard:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  Bootstrapper.startBootstrapping(window:shouldOnboard:)(v6, a4);
}

- (void)startBootstrappingWithWindow:(id)a3 shouldOnboard:(BOOL)a4 shouldCollapseSidebar:(BOOL)a5
{
  v8 = a3;
  v9 = self;
  Bootstrapper.startBootstrapping(window:shouldOnboard:shouldCollapseSidebar:)(v8, a4, a5);
}

- (void)afterBootstrapOnQueue:(id)a3 runBootstrapCallbackBlock:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  Bootstrapper.afterBootstrap(on:run:)(v8, sub_1D7F52DBC, v7);
}

@end