@interface CLKTextProvider(ContentRanking)
- (id)contentEncodedString;
@end

@implementation CLKTextProvider(ContentRanking)

- (id)contentEncodedString
{
  attributedString = [self attributedString];
  contentEncodedString = [attributedString contentEncodedString];

  return contentEncodedString;
}

@end