@interface Bootstrapper
- (void)afterBootstrapOnQueue:(id)queue runBootstrapCallbackBlock:(id)block;
- (void)startBootstrappingWithWindow:(id)window shouldOnboard:(BOOL)onboard;
- (void)startBootstrappingWithWindow:(id)window shouldOnboard:(BOOL)onboard shouldCollapseSidebar:(BOOL)sidebar;
@end

@implementation Bootstrapper

- (void)startBootstrappingWithWindow:(id)window shouldOnboard:(BOOL)onboard
{
  windowCopy = window;
  selfCopy = self;
  Bootstrapper.startBootstrapping(window:shouldOnboard:)(windowCopy, onboard);
}

- (void)startBootstrappingWithWindow:(id)window shouldOnboard:(BOOL)onboard shouldCollapseSidebar:(BOOL)sidebar
{
  windowCopy = window;
  selfCopy = self;
  Bootstrapper.startBootstrapping(window:shouldOnboard:shouldCollapseSidebar:)(windowCopy, onboard, sidebar);
}

- (void)afterBootstrapOnQueue:(id)queue runBootstrapCallbackBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  queueCopy = queue;
  selfCopy = self;
  Bootstrapper.afterBootstrap(on:run:)(queueCopy, sub_1D7F52DBC, v7);
}

@end