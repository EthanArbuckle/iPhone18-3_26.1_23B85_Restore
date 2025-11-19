@interface _SBStatusBarChanges
- (void)invalidate;
- (void)setStatusBarPartStyle:(int64_t)a3 forPartWithIdentifier:(id)a4;
@end

@implementation _SBStatusBarChanges

- (void)invalidate
{
  *&self->_statusBarStyleChanged = 0;
  self->_statusBarStyle = 0;
  self->_statusBarPartStyle = 0;
  statusBarPartIdentifier = self->_statusBarPartIdentifier;
  self->_statusBarPartIdentifier = 0;
}

- (void)setStatusBarPartStyle:(int64_t)a3 forPartWithIdentifier:(id)a4
{
  self->_statusBarPartStyleChanged = 1;
  self->_statusBarPartStyle = a3;
  objc_storeStrong(&self->_statusBarPartIdentifier, a4);
}

@end