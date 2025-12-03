@interface PUOneUpTilingLayoutInvalidationContext
- (void)_setInvalidatedContentInsets:(BOOL)insets;
@end

@implementation PUOneUpTilingLayoutInvalidationContext

- (void)_setInvalidatedContentInsets:(BOOL)insets
{
  if (self->_invalidatedContentInsets != insets)
  {
    self->_invalidatedContentInsets = insets;
    if (insets)
    {
      [(PUTilingLayoutInvalidationContext *)self setInvalidatedAnyTile:1];
    }
  }
}

@end