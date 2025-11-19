@interface _PXStoryConcreteCompanionColorEffect
- (_PXStoryConcreteCompanionColorEffect)initWithColorLookupCube:(id)a3;
- (id)createMetalTextureWithDevice:(id)a3;
@end

@implementation _PXStoryConcreteCompanionColorEffect

- (id)createMetalTextureWithDevice:(id)a3
{
  v4 = [off_1E7721648 privateContextWithDevice:a3];
  v5 = [(_PXStoryConcreteCompanionColorEffect *)self colorLookupCube];
  v6 = [v5 createTextureWithContext:v4];

  return v6;
}

- (_PXStoryConcreteCompanionColorEffect)initWithColorLookupCube:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PXStoryConcreteCompanionColorEffect;
  v6 = [(_PXStoryConcreteCompanionColorEffect *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_colorLookupCube, a3);
  }

  return v7;
}

@end