@interface PXGMetalTextureCacheEntry
- (PXGMetalTextureCacheEntry)initWithTexture:(id)a3;
- (id)description;
@end

@implementation PXGMetalTextureCacheEntry

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  texture = self->_texture;
  v5 = [(MTLTexture *)texture width];
  v6 = [(MTLTexture *)self->_texture height];
  v7 = [(MTLTexture *)self->_texture pixelFormat];
  v8 = vcvtd_n_f64_u64([(MTLTexture *)self->_texture allocatedSize], 0xAuLL) * 0.0009765625;
  [(NSDate *)self->_time timeIntervalSinceNow];
  return [v3 stringWithFormat:@"<texture:%p dim:%lux%lu fmt:%lu size:%0.1fMB age:%0.3fs>", texture, v5, v6, v7, *&v8, v9];
}

- (PXGMetalTextureCacheEntry)initWithTexture:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXGMetalTextureCacheEntry;
  v6 = [(PXGMetalTextureCacheEntry *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_texture, a3);
    v8 = [MEMORY[0x277CBEAA8] now];
    time = v7->_time;
    v7->_time = v8;
  }

  return v7;
}

@end