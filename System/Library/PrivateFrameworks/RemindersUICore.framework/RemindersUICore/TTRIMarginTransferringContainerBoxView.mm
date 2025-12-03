@interface TTRIMarginTransferringContainerBoxView
- (CGSize)calculateArrangedSizeFittingSize:(CGSize)size;
@end

@implementation TTRIMarginTransferringContainerBoxView

- (CGSize)calculateArrangedSizeFittingSize:(CGSize)size
{
  v3 = sub_21D507EA8(self, size.width, size.height, a2, sub_21D507728, type metadata accessor for TTRIMarginTransferringContainerBoxView);
  result.height = v4;
  result.width = v3;
  return result;
}

@end