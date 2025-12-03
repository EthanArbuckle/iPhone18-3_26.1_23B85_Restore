@interface TUIKeyboardTrackingInfo
+ (CGSize)estimatedSizeForTrackingType:(int64_t)type;
- (CGSize)sizeForTrackingType:(int64_t)type;
- (UIOffset)offsetForTrackingType:(int64_t)type;
@end

@implementation TUIKeyboardTrackingInfo

+ (CGSize)estimatedSizeForTrackingType:(int64_t)type
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIOffset)offsetForTrackingType:(int64_t)type
{
  v3 = *MEMORY[0x1E69DE258];
  v4 = *(MEMORY[0x1E69DE258] + 8);
  result.vertical = v4;
  result.horizontal = v3;
  return result;
}

- (CGSize)sizeForTrackingType:(int64_t)type
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

@end