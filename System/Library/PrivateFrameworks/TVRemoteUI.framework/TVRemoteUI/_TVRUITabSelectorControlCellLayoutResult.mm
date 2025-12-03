@interface _TVRUITabSelectorControlCellLayoutResult
- (CGSize)resolvedLayoutSize;
- (_TVRUITabSelectorControlCellLayoutResult)initWithResolvedLayoutSize:(CGSize)size;
@end

@implementation _TVRUITabSelectorControlCellLayoutResult

- (_TVRUITabSelectorControlCellLayoutResult)initWithResolvedLayoutSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6.receiver = self;
  v6.super_class = _TVRUITabSelectorControlCellLayoutResult;
  result = [(_TVRUITabSelectorControlCellLayoutResult *)&v6 init];
  if (result)
  {
    result->_resolvedLayoutSize.width = width;
    result->_resolvedLayoutSize.height = height;
  }

  return result;
}

- (CGSize)resolvedLayoutSize
{
  width = self->_resolvedLayoutSize.width;
  height = self->_resolvedLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end