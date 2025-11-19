@interface TSWPInteriorCookie
- (TSWPColumn)column;
- (TSWPLayoutTarget)layout;
@end

@implementation TSWPInteriorCookie

- (TSWPColumn)column
{
  WeakRetained = objc_loadWeakRetained(&self->_column);

  return WeakRetained;
}

- (TSWPLayoutTarget)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

@end