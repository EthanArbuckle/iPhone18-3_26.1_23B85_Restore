@interface PVFaceCropSourceDescriptor
+ (id)descriptorForFace:(id)face image:(id)image;
- (PVFaceCropSourceDescriptor)initWithFace:(id)face image:(id)image;
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

- (PVFaceCropSourceDescriptor)initWithFace:(id)face image:(id)image
{
  faceCopy = face;
  imageCopy = image;
  v13.receiver = self;
  v13.super_class = PVFaceCropSourceDescriptor;
  v9 = [(PVFaceCropSourceDescriptor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_face, face);
    objc_storeStrong(&v10->_image, image);
    v11 = v10;
  }

  return v10;
}

+ (id)descriptorForFace:(id)face image:(id)image
{
  imageCopy = image;
  faceCopy = face;
  v8 = [[self alloc] initWithFace:faceCopy image:imageCopy];

  return v8;
}

@end