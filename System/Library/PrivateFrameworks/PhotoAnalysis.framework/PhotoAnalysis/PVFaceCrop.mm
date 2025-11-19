@interface PVFaceCrop
- (CGSize)imageDimensions;
- (PVFaceCrop)initWithFaceCropData:(id)a3 originatingFace:(id)a4;
- (PVFaceCrop)initWithLocalIdentifier:(id)a3 faceCropData:(id)a4;
- (id)description;
@end

@implementation PVFaceCrop

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v9.receiver = self;
  v9.super_class = PVFaceCrop;
  v4 = [(PVObject *)&v9 description];
  v5 = [v3 stringWithString:v4];

  [v5 appendFormat:@"  state                  : %ld\n", -[PVFaceCrop state](self, "state")];
  originatingFace = self->_originatingFace;
  if (originatingFace)
  {
    v7 = [(PVObject *)originatingFace localIdentifier];
    [v5 appendFormat:@"  originating face       : %@\n", v7];
  }

  return v5;
}

- (CGSize)imageDimensions
{
  p_cachedImageDimensions = &self->_cachedImageDimensions;
  width = self->_cachedImageDimensions.width;
  height = self->_cachedImageDimensions.height;
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v6 = [(PVFaceCrop *)self faceCropData];
    [PVFaceCropUtils faceCropDimensionsFromFaceCrop:v6 error:0];
    p_cachedImageDimensions->width = v7;
    p_cachedImageDimensions->height = v8;

    width = p_cachedImageDimensions->width;
    height = p_cachedImageDimensions->height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (PVFaceCrop)initWithFaceCropData:(id)a3 originatingFace:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PVFaceCrop;
  v8 = [(PVObject *)&v13 initWithLocalIdentifier:0];
  if (v8)
  {
    v9 = [v6 copy];
    faceCropData = v8->_faceCropData;
    v8->_faceCropData = v9;

    objc_storeStrong(&v8->_originatingFace, a4);
    v11 = v8;
  }

  return v8;
}

- (PVFaceCrop)initWithLocalIdentifier:(id)a3 faceCropData:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = PVFaceCrop;
  v7 = [(PVObject *)&v12 initWithLocalIdentifier:a3];
  if (v7)
  {
    v8 = [v6 copy];
    faceCropData = v7->_faceCropData;
    v7->_faceCropData = v8;

    v10 = v7;
  }

  return v7;
}

@end