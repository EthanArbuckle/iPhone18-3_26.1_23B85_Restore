@interface NSDate(IMJSONSerializableValueProviding)
- (uint64_t)im_jsonSerializableValue;
@end

@implementation NSDate(IMJSONSerializableValueProviding)

- (uint64_t)im_jsonSerializableValue
{
  v1 = MEMORY[0x1E696AD98];
  [self timeIntervalSinceReferenceDate];

  return [v1 numberWithDouble:?];
}

@end