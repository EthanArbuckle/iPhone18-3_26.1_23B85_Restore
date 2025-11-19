@interface _UIUpdateLinkTrackingView
- (void)dealloc;
@end

@implementation _UIUpdateLinkTrackingView

- (void)dealloc
{
  interaction = self->_interaction;
  if (interaction)
  {
    interaction->_link = 0;
    if (!interaction->_view)
    {
      [0 removeInteraction:?];
    }
  }

  v4.receiver = self;
  v4.super_class = _UIUpdateLinkTrackingView;
  [(UIUpdateLink *)&v4 dealloc];
}

@end