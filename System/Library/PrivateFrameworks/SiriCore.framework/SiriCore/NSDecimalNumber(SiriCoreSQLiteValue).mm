@interface NSDecimalNumber(SiriCoreSQLiteValue)
- (uint64_t)siriCoreSQLiteValue_textRepresentation;
@end

@implementation NSDecimalNumber(SiriCoreSQLiteValue)

- (uint64_t)siriCoreSQLiteValue_textRepresentation
{
  stringValue = [self stringValue];
  uTF8String = [stringValue UTF8String];

  return uTF8String;
}

@end