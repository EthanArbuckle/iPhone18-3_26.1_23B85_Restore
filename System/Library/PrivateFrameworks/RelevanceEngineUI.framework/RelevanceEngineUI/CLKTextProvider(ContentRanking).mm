@interface CLKTextProvider(ContentRanking)
- (id)contentEncodedString;
@end

@implementation CLKTextProvider(ContentRanking)

- (id)contentEncodedString
{
  v1 = [a1 attributedString];
  v2 = [v1 contentEncodedString];

  return v2;
}

@end