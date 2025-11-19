@interface SUTableCellContentOverlayView
- (void)dealloc;
@end

@implementation SUTableCellContentOverlayView

- (void)dealloc
{
  self->_configuration = 0;
  v3.receiver = self;
  v3.super_class = SUTableCellContentOverlayView;
  [(SUTableCellContentOverlayView *)&v3 dealloc];
}

@end