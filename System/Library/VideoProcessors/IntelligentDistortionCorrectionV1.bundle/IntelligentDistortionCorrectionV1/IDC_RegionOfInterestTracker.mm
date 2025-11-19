@interface IDC_RegionOfInterestTracker
- ($A3B2E143E1A03423F9FC703C010436DC)getCropData;
- ($A3B2E143E1A03423F9FC703C010436DC)getRoiData;
- (id)init:(id)a3 metalBufferOffset:(unint64_t)a4 initialIdcRoi:(id *)a5;
- (void)setIdcCrop:(id *)a3;
- (void)setIdcRoi:(id *)a3;
- (void)setRoiData:(id)a3;
- (void)synchronizeData;
@end

@implementation IDC_RegionOfInterestTracker

- (id)init:(id)a3 metalBufferOffset:(unint64_t)a4 initialIdcRoi:(id *)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = IDC_RegionOfInterestTracker;
  v10 = [(IDC_RegionOfInterestTracker *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&a5->var0;
    *&v10->_idcRoi.width = *&a5->var4;
    *&v10->_idcRoi.x0 = v12;
    objc_storeStrong(&v10->_metalBuffer, a3);
    v11->_metalBufferOffset = a4;
    v11->_isCpuMaster = 1;
  }

  return v11;
}

- (void)synchronizeData
{
  if (!self->_isCpuMaster)
  {
    v3 = [(MTLBuffer *)self->_metalBuffer contents];
    if (v3)
    {
      v4 = v3 + self->_metalBufferOffset;
      *&self->_idcCrop.x0 = *(v4 + 16);
      v5 = *v4;
      *&self->_idcRoi.x0 = *v4;
      v6 = *(v4 + 8);
      *&self->_idcRoi.x1 = v6;
      *&self->_idcRoi.width = vadd_s32(vsub_s32(v6, v5), 0x100000001);
      self->_isCpuMaster = 1;
    }
  }
}

- (void)setRoiData:(id)a3
{
  self->_idcRoi.x0 = a3.var0;
  self->_idcRoi.y0 = a3.var1;
  self->_idcRoi.x1 = a3.var2;
  self->_idcRoi.y1 = a3.var3;
  self->_idcRoi.width = a3.var2 - a3.var0 + 1;
  self->_idcRoi.height = a3.var3 - a3.var1 + 1;
  self->_isCpuMaster = 1;
}

- ($A3B2E143E1A03423F9FC703C010436DC)getRoiData
{
  v2 = *&self->_idcRoi.x1;
  v3 = *&self->_idcRoi.x0;
  result.var2 = v2;
  result.var3 = HIDWORD(v2);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

- ($A3B2E143E1A03423F9FC703C010436DC)getCropData
{
  v2 = *&self->_idcCrop.x1;
  v3 = *&self->_idcCrop.x0;
  result.var2 = v2;
  result.var3 = HIDWORD(v2);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

- (void)setIdcRoi:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_idcRoi.width = *&a3->var4;
  *&self->_idcRoi.x0 = v3;
}

- (void)setIdcCrop:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_idcCrop.width = *&a3->var4;
  *&self->_idcCrop.x0 = v3;
}

@end