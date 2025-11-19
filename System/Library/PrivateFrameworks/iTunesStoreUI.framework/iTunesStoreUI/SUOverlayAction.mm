@interface SUOverlayAction
- (void)dealloc;
@end

@implementation SUOverlayAction

- (void)dealloc
{
  self->_otherViewController = 0;

  self->_transition = 0;
  self->_viewController = 0;
  v3.receiver = self;
  v3.super_class = SUOverlayAction;
  [(SUOverlayAction *)&v3 dealloc];
}

@end