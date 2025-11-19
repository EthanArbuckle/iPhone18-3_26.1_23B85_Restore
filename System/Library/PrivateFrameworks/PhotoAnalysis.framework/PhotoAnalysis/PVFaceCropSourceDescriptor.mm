@interface PVFaceCropSourceDescriptor
+ (id)descriptorForFace:(id)a3 image:(id)a4;
- (PVFaceCropSourceDescriptor)initWithFace:(id)a3 image:(id)a4;
- (id)description;
@end

@implementation PVFaceCropSourceDescriptor

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PVFaceCropSourceDescriptor;
  v4 = [(PVFaceCropSourceDescriptor *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ (face=%@ image=%@)", v4, self->_face, self->_image];

  return v5;
}

- (PVFaceCropSourceDescriptor)initWithFace:(id)a3 image:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PVFaceCropSourceDescriptor;
  v9 = [(PVFaceCropSourceDescriptor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_face, a3);
    objc_storeStrong(&v10->_image, a4);
    v11 = v10;
  }

  return v10;
}

+ (id)descriptorForFace:(id)a3 image:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithFace:v7 image:v6];

  return v8;
}

@end