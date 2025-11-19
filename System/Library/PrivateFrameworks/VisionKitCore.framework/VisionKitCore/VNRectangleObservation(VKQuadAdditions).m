@interface VNRectangleObservation(VKQuadAdditions)
- (uint64_t)summaryDescription;
@end

@implementation VNRectangleObservation(VKQuadAdditions)

- (uint64_t)summaryDescription
{
  v2 = MEMORY[0x1E696AEC0];
  [a1 topLeft];
  v4 = v3;
  [a1 topLeft];
  v6 = v5;
  [a1 topRight];
  v8 = v7;
  [a1 topRight];
  v10 = v9;
  [a1 bottomLeft];
  v12 = v11;
  [a1 bottomLeft];
  v14 = v13;
  [a1 bottomRight];
  v16 = v15;
  [a1 bottomRight];
  return [v2 stringWithFormat:@"TL:%.2f %.2f TR:%.2f %.2f BL:%.2f %.2f BR:%.2f %.2f", v4, v6, v8, v10, v12, v14, v16, v17];
}

@end