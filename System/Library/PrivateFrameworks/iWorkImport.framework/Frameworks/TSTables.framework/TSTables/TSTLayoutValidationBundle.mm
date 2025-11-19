@interface TSTLayoutValidationBundle
- (TSTLayoutValidationBundle)initWithTableInfo:(id)a3;
- (double)widthOfColumn:(unsigned __int16)a3 handleCacheMissUsingBlock:(id)a4;
- (id).cxx_construct;
- (id)generateWidthHeightCollection;
- (void)cacheWidth:(double)a3 ofColumn:(unsigned __int16)a4;
@end

@implementation TSTLayoutValidationBundle

- (TSTLayoutValidationBundle)initWithTableInfo:(id)a3
{
  v11.receiver = self;
  v11.super_class = TSTLayoutValidationBundle;
  v7 = [(TSTLayoutValidationBundle *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v3, v4, v5, v6);
    widthHeightCollections = v7->_widthHeightCollections;
    v7->_widthHeightCollections = v8;

    v7->_lock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v7;
}

- (void)cacheWidth:(double)a3 ofColumn:(unsigned __int16)a4
{
  v4 = a4;
  v5 = &v4;
  *(sub_2210C30DC(&self->_columnToWidth.__table_.__bucket_list_.__ptr_, &v4) + 3) = a3;
}

- (double)widthOfColumn:(unsigned __int16)a3 handleCacheMissUsingBlock:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = sub_2210C3024(&self->_columnToWidth.__table_.__bucket_list_.__ptr_, &v9);
  if (v6)
  {
    v7 = *(v6 + 3);
  }

  else
  {
    v7 = v5[2](v5);
  }

  return v7;
}

- (id)generateWidthHeightCollection
{
  v3 = objc_alloc_init(TSTWidthHeightCollection);
  os_unfair_lock_lock(&self->_lock);
  objc_msgSend_addObject_(self->_widthHeightCollections, v4, v3, v5, v6);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end