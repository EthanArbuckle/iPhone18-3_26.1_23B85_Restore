@interface _PXStoryConcreteFixedAspectOneUpClipComposition
- (_PXStoryConcreteFixedAspectOneUpClipComposition)initWithAspectRatioNumerator:(int64_t)numerator denominator:(int64_t)denominator;
- (id)description;
@end

@implementation _PXStoryConcreteFixedAspectOneUpClipComposition

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  label = [(_PXStoryConcreteFixedAspectOneUpClipComposition *)self label];
  v7 = [v3 initWithFormat:@"<%@: %p; %@>", v5, self, label];

  return v7;
}

- (_PXStoryConcreteFixedAspectOneUpClipComposition)initWithAspectRatioNumerator:(int64_t)numerator denominator:(int64_t)denominator
{
  v11.receiver = self;
  v11.super_class = _PXStoryConcreteFixedAspectOneUpClipComposition;
  v6 = [(_PXStoryConcreteFixedAspectOneUpClipComposition *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_aspectRatio = numerator / denominator;
    denominator = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"1-Up %li:%li", numerator, denominator];
    label = v7->_label;
    v7->_label = denominator;

    *&v7->_clipAssetIndex = xmmword_1A5301350;
  }

  return v7;
}

@end