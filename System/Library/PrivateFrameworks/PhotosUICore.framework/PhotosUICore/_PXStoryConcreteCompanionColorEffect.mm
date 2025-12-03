@interface _PXStoryConcreteCompanionColorEffect
- (_PXStoryConcreteCompanionColorEffect)initWithColorLookupCube:(id)cube;
- (id)createMetalTextureWithDevice:(id)device;
@end

@implementation _PXStoryConcreteCompanionColorEffect

- (id)createMetalTextureWithDevice:(id)device
{
  v4 = [off_1E7721648 privateContextWithDevice:device];
  colorLookupCube = [(_PXStoryConcreteCompanionColorEffect *)self colorLookupCube];
  v6 = [colorLookupCube createTextureWithContext:v4];

  return v6;
}

- (_PXStoryConcreteCompanionColorEffect)initWithColorLookupCube:(id)cube
{
  cubeCopy = cube;
  v9.receiver = self;
  v9.super_class = _PXStoryConcreteCompanionColorEffect;
  v6 = [(_PXStoryConcreteCompanionColorEffect *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_colorLookupCube, cube);
  }

  return v7;
}

@end