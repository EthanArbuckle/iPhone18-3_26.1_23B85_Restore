@interface WBSOpenSearchURLTemplateParameter
- (_NSRange)range;
@end

@implementation WBSOpenSearchURLTemplateParameter

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end