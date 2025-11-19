@interface RSGeometryMeta
- (BOOL)isEqual:(id)a3;
- (RSGeometryMeta)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RSGeometryMeta

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(self) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (self)
    {
      LOBYTE(self) = self->_isCenterScaleUpdated == v6->_isCenterScaleUpdated && vabds_f32(self->_pixelSize, v6->_pixelSize) <= 0.000001 && vabds_f32(self->_floorHeight, v6->_floorHeight) <= 0.000001 && vabds_f32(self->_ceilingHeight, v6->_ceilingHeight) <= 0.000001 && vabds_f32(self->_supportHeight, v6->_supportHeight) <= 0.000001 && self->_imageSize == v6->_imageSize && (v7 = vabdq_f32(*&self->_center[4], *&v6->_center[4]), fmaxf(fmaxf(v7.f32[0], v7.f32[2]), v7.f32[1]) <= 0.00001) && (v8 = vabdq_f64(*&self->_shift[4], *&v6->_shift[4]), fmax(fmax(v8.f64[0], vabdq_f64(*&self->_shift[20], *&v6->_shift[20]).f64[0]), v8.f64[1]) <= 0.00000999999975) && (v9 = vabdq_f64(*&self->_scale[4], *&v6->_scale[4]), fmax(fmax(v9.f64[0], vabdq_f64(*&self->_scale[20], *&v6->_scale[20]).f64[0]), v9.f64[1]) <= 0.00000999999975) && (v10 = vabd_f32(*&self->_floorCeilingCount[4], *&v6->_floorCeilingCount[4]), fmaxf(v10.f32[0], v10.f32[1]) <= 0.000001) && vabds_f32(self->_zSlice, v6->_zSlice) <= 0.000001;
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_opt_new();
  *(result + 8) = self->_isCenterScaleUpdated;
  *(result + 3) = LODWORD(self->_pixelSize);
  v5 = *&self->_scale[20];
  *(result + 5) = *&self->_scale[4];
  *(result + 6) = v5;
  *(result + 4) = *&self->_center[4];
  v6 = *&self->_shift[20];
  *(result + 7) = *&self->_shift[4];
  *(result + 8) = v6;
  *(result + 4) = LODWORD(self->_floorHeight);
  *(result + 5) = LODWORD(self->_ceilingHeight);
  *(result + 6) = LODWORD(self->_supportHeight);
  *(result + 7) = self->_imageSize;
  *(result + 6) = *&self->_floorCeilingCount[4];
  *(result + 8) = self->_zSlice;
  return result;
}

- (RSGeometryMeta)init
{
  v3.receiver = self;
  v3.super_class = RSGeometryMeta;
  return [(RSGeometryMeta *)&v3 init];
}

@end