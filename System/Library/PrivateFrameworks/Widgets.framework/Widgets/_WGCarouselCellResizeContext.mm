@interface _WGCarouselCellResizeContext
- (void)setActive:(BOOL)active;
@end

@implementation _WGCarouselCellResizeContext

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (!active)
    {
      [(_WGCarouselCellResizeContext *)self setCompactHeight:-1.0];

      [(_WGCarouselCellResizeContext *)self setExpandedHeight:-1.0];
    }
  }
}

@end