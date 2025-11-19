@interface NSDecimalNumber(SiriCoreSQLiteValue)
- (uint64_t)siriCoreSQLiteValue_textRepresentation;
@end

@implementation NSDecimalNumber(SiriCoreSQLiteValue)

- (uint64_t)siriCoreSQLiteValue_textRepresentation
{
  v1 = [a1 stringValue];
  v2 = [v1 UTF8String];

  return v2;
}

@end