@interface _WGCarouselCellResizeContext
- (void)setActive:(BOOL)a3;
@end

@implementation _WGCarouselCellResizeContext

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (!a3)
    {
      [(_WGCarouselCellResizeContext *)self setCompactHeight:-1.0];

      [(_WGCarouselCellResizeContext *)self setExpandedHeight:-1.0];
    }
  }
}

@end