@interface VKSnapshotElevationRaster
- (VKSnapshotElevationRaster)initWithCoder:(id)a3;
- (VKSnapshotElevationRaster)initWithQuadTile:(QuadTile *)a3 width:(int)a4 height:(int)a5 scale:(float)a6 tileSizeInMeters:(float)a7 minElevationInMeters:(signed __int16)a8;
- (float)_rasterElevationInMetersAtPoint:()Matrix<int;
- (float)getElevationAtPoint:(const void *)a3;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VKSnapshotElevationRaster

- (id).cxx_construct
{
  *(self + 4) = 255;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 3) = 0;
  *(self + 32) = 1;
  return self;
}

- (float)getElevationAtPoint:(const void *)a3
{
  v4 = *a3;
  v5 = 1.0 - *(a3 + 1);
  v6 = (self->_width - 1) * v4;
  v7 = (self->_height - 1) * v5;
  v8 = v7;
  v9 = (v6 + 1);
  [(VKSnapshotElevationRaster *)self _rasterElevationInMetersAtPoint:v6 | (v8 << 32)];
  v11 = v10;
  [(VKSnapshotElevationRaster *)self _rasterElevationInMetersAtPoint:v9 | (v8 << 32)];
  v13 = v12;
  v14 = (v8 + 1);
  [(VKSnapshotElevationRaster *)self _rasterElevationInMetersAtPoint:v6 | (v14 << 32)];
  v16 = v15;
  [(VKSnapshotElevationRaster *)self _rasterElevationInMetersAtPoint:v9 | (v14 << 32)];
  v17 = v6 - truncf(v6);
  return ((v11 * (1.0 - v17)) + (v13 * v17)) + ((v7 - truncf(v7)) * (((v16 * (1.0 - v17)) + (v18 * v17)) - ((v11 * (1.0 - v17)) + (v13 * v17))));
}

- (float)_rasterElevationInMetersAtPoint:()Matrix<int
{
  v4 = a3.var0[1];
  width = self->_width;
  v6 = width - 1;
  if (width - 1 >= a3.var0[0])
  {
    v6 = a3.var0[0];
  }

  if (a3.var0[0] < 0)
  {
    v6 = 0;
  }

  if (self->_height - 1 < a3.var0[1])
  {
    v4 = self->_height - 1;
  }

  if (*&a3 < 0)
  {
    v4 = 0;
  }

  v7 = v6 + v4 * width;
  v8 = [(NSData *)self->_rasterData bytes];
  v9 = [(NSData *)self->_rasterData length];
  v10 = 0.0;
  if (v9 >= v7)
  {
    LOWORD(v10) = v8[v7];
    v10 = LODWORD(v10);
  }

  return self->_minElevationInMeters + (self->_scale * v10);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_rasterData)
  {
    [v4 encodeInt32:self->_width forKey:@"width"];
    [v5 encodeInt32:self->_height forKey:@"height"];
    *&v6 = self->_scale;
    [v5 encodeFloat:@"scale" forKey:v6];
    *&v7 = self->_tileSizeInMeters;
    [v5 encodeFloat:@"tileSizeInMeters" forKey:v7];
    level = self->_tile._level;
    v10 = vrev64_s32(*&self->_tile._yIdx);
    v11 = level;
    v9 = [MEMORY[0x1E696B098] value:&v10 withObjCType:"{QuadTileCoding=iiC}"];
    [v5 encodeObject:v9 forKey:@"quadTile"];

    [v5 encodeInt:self->_minElevationInMeters forKey:@"minElevationInMeters"];
    [v5 encodeObject:self->_rasterData forKey:@"rasterData"];
  }
}

- (VKSnapshotElevationRaster)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = VKSnapshotElevationRaster;
  v5 = [(VKSnapshotElevationRaster *)&v16 init];
  if (v5)
  {
    *(v5 + 10) = [v4 decodeInt32ForKey:@"width"];
    *(v5 + 11) = [v4 decodeInt32ForKey:@"height"];
    [v4 decodeFloatForKey:@"scale"];
    *(v5 + 13) = v6;
    [v4 decodeFloatForKey:@"tileSizeInMeters"];
    *(v5 + 14) = v7;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quadTile"];
    if (!strcmp([v8 objCType], "{QuadTileCoding=iiC}"))
    {
      v15 = 0;
      v14 = 0;
      [v8 getValue:&v14];
      v9 = v15;
      v5[8] = -1;
      v5[9] = v9;
      *(v5 + 12) = vrev64_s32(v14);
      *(v5 + 3) = 0;
      v5[32] = 1;
    }

    *(v5 + 30) = [v4 decodeIntForKey:@"minElevationInMeters"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rasterData"];
    v11 = *(v5 + 8);
    *(v5 + 8) = v10;

    v12 = v5;
  }

  return v5;
}

- (VKSnapshotElevationRaster)initWithQuadTile:(QuadTile *)a3 width:(int)a4 height:(int)a5 scale:(float)a6 tileSizeInMeters:(float)a7 minElevationInMeters:(signed __int16)a8
{
  v16.receiver = self;
  v16.super_class = VKSnapshotElevationRaster;
  result = [(VKSnapshotElevationRaster *)&v16 init];
  if (result)
  {
    v15 = *&a3->_type;
    *(&result->_tile._xIdx + 1) = *(&a3->_xIdx + 1);
    *&result->_tile._type = v15;
    result->_width = a4;
    result->_height = a5;
    result->_scale = a6;
    result->_tileSizeInMeters = a7;
    result->_minElevationInMeters = a8;
  }

  return result;
}

@end