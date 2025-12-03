@interface _PXStoryConcreteAspectFitOneUpClipComposition
- (_PXStoryConcreteAspectFitOneUpClipComposition)init;
- (id)description;
@end

@implementation _PXStoryConcreteAspectFitOneUpClipComposition

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  label = [(_PXStoryConcreteAspectFitOneUpClipComposition *)self label];
  v7 = [v3 initWithFormat:@"<%@: %p; %@>", v5, self, label];

  return v7;
}

- (_PXStoryConcreteAspectFitOneUpClipComposition)init
{
  v3.receiver = self;
  v3.super_class = _PXStoryConcreteAspectFitOneUpClipComposition;
  result = [(_PXStoryConcreteAspectFitOneUpClipComposition *)&v3 init];
  if (result)
  {
    *&result->_clipAssetIndex = xmmword_1A5301350;
  }

  return result;
}

@end