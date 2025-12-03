@interface PXParallaxSpatialPhotoScene
- (id)dataRepresentation;
- (id)spatialPhotoScene;
@end

@implementation PXParallaxSpatialPhotoScene

- (id)dataRepresentation
{
  selfCopy = self;
  v3 = sub_1C6FF4730();
  v5 = v4;

  v6 = sub_1C754DDCC();
  sub_1C6FC1640(v3, v5);

  return v6;
}

- (id)spatialPhotoScene
{
  sub_1C6FF4A9C(v10);
  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = *(v2 - 8);
    v5 = MEMORY[0x1EEE9AC00](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = sub_1C7551DAC();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end