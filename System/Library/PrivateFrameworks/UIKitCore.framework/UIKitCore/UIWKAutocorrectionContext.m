@interface UIWKAutocorrectionContext
- (_NSRange)rangeInMarkedText;
@end

@implementation UIWKAutocorrectionContext

- (_NSRange)rangeInMarkedText
{
  length = self->_rangeInMarkedText.length;
  location = self->_rangeInMarkedText.location;
  result.length = length;
  result.location = location;
  return result;
}

@end