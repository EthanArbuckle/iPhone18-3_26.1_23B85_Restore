@interface IPAImageGeometry
+ (id)inputGeometryWithImageSize:(CGSize)a3;
- (CGRect)domain;
- (CGRect)extent;
- (IPAImageGeometry)init;
- (IPAImageGeometry)initWithIdentifier:(id)a3 extent:(CGRect)a4;
- (IPAImageGeometry)initWithIdentifier:(id)a3 extent:(CGRect)a4 domain:(CGRect)a5;
- (IPAImageGeometry)initWithIdentifier:(id)a3 extent:(CGRect)a4 imageQuad:(const Quad2d *)a5;
- (NSString)description;
- (Quad2d)imageQuad;
@end

@implementation IPAImageGeometry

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@.%p\n", v5, self];

  [v6 appendFormat:@" identifier:%@\n", self->_identifier];
  v7 = NSStringFromRect(self->_extent);
  [v6 appendFormat:@" extent:%@\n", v7];

  v8 = NSStringFromRect(self->_domain);
  [v6 appendFormat:@" domain: %@\n", v8];

  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%0.4f %0.4f>", *&self->_imageQuad.V0.X, *&self->_imageQuad.V0.Y];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%0.4f %0.4f>", *&self->_imageQuad.V1.X, *&self->_imageQuad.V1.Y];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%0.4f %0.4f>", *&self->_imageQuad.V2.X, *&self->_imageQuad.V2.Y];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%0.4f %0.4f>", *&self->_imageQuad.V3.X, *&self->_imageQuad.V3.Y];
  v14 = [v9 stringWithFormat:@"<Quad2 %@ %@ %@ %@>", v10, v11, v12, v13];

  [v6 appendFormat:@" quad:%@\n", v14];
  [v6 appendString:@">"];

  return v6;
}

- (Quad2d)imageQuad
{
  V2 = self[1].V2;
  retstr->V0 = self[1].V1;
  retstr->V1 = V2;
  V0 = self[2].V0;
  retstr->V2 = self[1].V3;
  retstr->V3 = V0;
  return self;
}

- (CGRect)extent
{
  x = self->_extent.origin.x;
  y = self->_extent.origin.y;
  width = self->_extent.size.width;
  height = self->_extent.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)domain
{
  x = self->_domain.origin.x;
  y = self->_domain.origin.y;
  width = self->_domain.size.width;
  height = self->_domain.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (IPAImageGeometry)init
{
  result = _PFAssertFailHandler();
  __break(1u);
  return result;
}

- (IPAImageGeometry)initWithIdentifier:(id)a3 extent:(CGRect)a4
{
  v5[0] = *&a4.origin.x;
  v5[1] = *&a4.origin.y;
  *&v5[2] = a4.origin.x + a4.size.width;
  v5[3] = *&a4.origin.y;
  v5[4] = *&a4.origin.x;
  *&v5[5] = a4.origin.y + a4.size.height;
  *&v5[6] = a4.origin.x + a4.size.width;
  *&v5[7] = a4.origin.y + a4.size.height;
  return [(IPAImageGeometry *)self initWithIdentifier:a3 extent:v5 imageQuad:?];
}

- (IPAImageGeometry)initWithIdentifier:(id)a3 extent:(CGRect)a4 domain:(CGRect)a5
{
  v6[0] = *&a5.origin.x;
  v6[1] = *&a5.origin.y;
  *&v6[2] = a5.origin.x + a5.size.width;
  v6[3] = *&a5.origin.y;
  v6[4] = *&a5.origin.x;
  *&v6[5] = a5.origin.y + a5.size.height;
  *&v6[6] = a5.origin.x + a5.size.width;
  *&v6[7] = a5.origin.y + a5.size.height;
  return [(IPAImageGeometry *)self initWithIdentifier:a3 extent:v6 imageQuad:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
}

- (IPAImageGeometry)initWithIdentifier:(id)a3 extent:(CGRect)a4 imageQuad:(const Quad2d *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  if (v11)
  {
    v22.receiver = self;
    v22.super_class = IPAImageGeometry;
    v12 = [(IPAImageGeometry *)&v22 init];
    if (v12)
    {
      v13 = [v11 copy];
      identifier = v12->_identifier;
      v12->_identifier = v13;

      v12->_extent.origin.x = x;
      v12->_extent.origin.y = y;
      v12->_extent.size.width = width;
      v12->_extent.size.height = height;
      V0 = a5->V0;
      V1 = a5->V1;
      V3 = a5->V3;
      v12->_imageQuad.V2 = a5->V2;
      v12->_imageQuad.V3 = V3;
      v12->_imageQuad.V0 = V0;
      v12->_imageQuad.V1 = V1;
      v12->_domain.origin.x = PA::Quad2d::boundingRect(a5);
      v12->_domain.origin.y = v18;
      v12->_domain.size.width = v19;
      v12->_domain.size.height = v20;
    }

    return v12;
  }

  else
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  return result;
}

+ (id)inputGeometryWithImageSize:(CGSize)a3
{
  if (a3.width == *MEMORY[0x277CBF3A8] && a3.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    _PFAssertFailHandler();
    JUMPOUT(0x25E5D33DCLL);
  }

  v4 = [[IPAImageGeometry alloc] initWithIdentifier:@"input" extent:0.0, 0.0, a3.width, a3.height];

  return v4;
}

@end