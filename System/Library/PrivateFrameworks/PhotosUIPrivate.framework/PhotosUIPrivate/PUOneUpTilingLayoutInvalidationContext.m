@interface PUOneUpTilingLayoutInvalidationContext
- (void)_setInvalidatedContentInsets:(BOOL)a3;
@end

@implementation PUOneUpTilingLayoutInvalidationContext

- (void)_setInvalidatedContentInsets:(BOOL)a3
{
  if (self->_invalidatedContentInsets != a3)
  {
    self->_invalidatedContentInsets = a3;
    if (a3)
    {
      [(PUTilingLayoutInvalidationContext *)self setInvalidatedAnyTile:1];
    }
  }
}

@end