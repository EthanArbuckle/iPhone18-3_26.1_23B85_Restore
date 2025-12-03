@interface SiriUIDisambiguationItem
+ (id)disambiguationItem;
- (_NSRange)titleBoldedRange;
@end

@implementation SiriUIDisambiguationItem

+ (id)disambiguationItem
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (_NSRange)titleBoldedRange
{
  length = self->_titleBoldedRange.length;
  location = self->_titleBoldedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end