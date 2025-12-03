@interface CRNormalizedQuad(VKQuadAdditions)
- (VKQuad)vkQuad;
- (uint64_t)summaryDescription;
@end

@implementation CRNormalizedQuad(VKQuadAdditions)

- (VKQuad)vkQuad
{
  v1 = [[VKQuad alloc] initWithCRNormalizedQuad:self];

  return v1;
}

- (uint64_t)summaryDescription
{
  v2 = MEMORY[0x1E696AEC0];
  [self topLeft];
  v4 = v3;
  [self topLeft];
  v6 = v5;
  [self topRight];
  v8 = v7;
  [self topRight];
  v10 = v9;
  [self bottomLeft];
  v12 = v11;
  [self bottomLeft];
  v14 = v13;
  [self bottomRight];
  v16 = v15;
  [self bottomRight];
  return [v2 stringWithFormat:@"TL:%.2f %.2f TR:%.2f %.2f BL:%.2f %.2f BR:%.2f %.2f", v4, v6, v8, v10, v12, v14, v16, v17];
}

@end