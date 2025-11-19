@interface _PXStoryConcreteFixedAspectOneUpClipComposition
- (_PXStoryConcreteFixedAspectOneUpClipComposition)initWithAspectRatioNumerator:(int64_t)a3 denominator:(int64_t)a4;
- (id)description;
@end

@implementation _PXStoryConcreteFixedAspectOneUpClipComposition

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_PXStoryConcreteFixedAspectOneUpClipComposition *)self label];
  v7 = [v3 initWithFormat:@"<%@: %p; %@>", v5, self, v6];

  return v7;
}

- (_PXStoryConcreteFixedAspectOneUpClipComposition)initWithAspectRatioNumerator:(int64_t)a3 denominator:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = _PXStoryConcreteFixedAspectOneUpClipComposition;
  v6 = [(_PXStoryConcreteFixedAspectOneUpClipComposition *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_aspectRatio = a3 / a4;
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"1-Up %li:%li", a3, a4];
    label = v7->_label;
    v7->_label = v8;

    *&v7->_clipAssetIndex = xmmword_1A5301350;
  }

  return v7;
}

@end