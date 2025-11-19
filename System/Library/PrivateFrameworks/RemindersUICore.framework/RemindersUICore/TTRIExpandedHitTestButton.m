@interface TTRIExpandedHitTestButton
- (CGRect)accessibilityFrame;
@end

@implementation TTRIExpandedHitTestButton

- (CGRect)accessibilityFrame
{
  v2 = sub_21D5DF1B4(self, a2, type metadata accessor for TTRIExpandedHitTestButton);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end