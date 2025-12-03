@interface IDC_RegionOfInterestTracker
- ($A3B2E143E1A03423F9FC703C010436DC)getCropData;
- ($A3B2E143E1A03423F9FC703C010436DC)getRoiData;
- (id)init:(id)init metalBufferOffset:(unint64_t)offset initialIdcRoi:(id *)roi;
- (void)setIdcCrop:(id *)crop;
- (void)setIdcRoi:(id *)roi;
- (void)setRoiData:(id)data;
- (void)synchronizeData;
@end

@implementation IDC_RegionOfInterestTracker

- (id)init:(id)init metalBufferOffset:(unint64_t)offset initialIdcRoi:(id *)roi
{
  initCopy = init;
  v14.receiver = self;
  v14.super_class = IDC_RegionOfInterestTracker;
  v10 = [(IDC_RegionOfInterestTracker *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&roi->var0;
    *&v10->_idcRoi.width = *&roi->var4;
    *&v10->_idcRoi.x0 = v12;
    objc_storeStrong(&v10->_metalBuffer, init);
    v11->_metalBufferOffset = offset;
    v11->_isCpuMaster = 1;
  }

  return v11;
}

- (void)synchronizeData
{
  if (!self->_isCpuMaster)
  {
    contents = [(MTLBuffer *)self->_metalBuffer contents];
    if (contents)
    {
      v4 = contents + self->_metalBufferOffset;
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

- (void)setRoiData:(id)data
{
  self->_idcRoi.x0 = data.var0;
  self->_idcRoi.y0 = data.var1;
  self->_idcRoi.x1 = data.var2;
  self->_idcRoi.y1 = data.var3;
  self->_idcRoi.width = data.var2 - data.var0 + 1;
  self->_idcRoi.height = data.var3 - data.var1 + 1;
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

- (void)setIdcRoi:(id *)roi
{
  v3 = *&roi->var0;
  *&self->_idcRoi.width = *&roi->var4;
  *&self->_idcRoi.x0 = v3;
}

- (void)setIdcCrop:(id *)crop
{
  v3 = *&crop->var0;
  *&self->_idcCrop.width = *&crop->var4;
  *&self->_idcCrop.x0 = v3;
}

@end