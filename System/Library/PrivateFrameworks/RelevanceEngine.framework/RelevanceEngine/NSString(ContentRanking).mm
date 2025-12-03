@interface NSString(ContentRanking)
- (id)contentEncodedString;
@end

@implementation NSString(ContentRanking)

- (id)contentEncodedString
{
  v1 = [self copy];

  return v1;
}

@end