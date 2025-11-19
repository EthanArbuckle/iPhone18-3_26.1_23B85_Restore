@interface HGInputBitmapCacheItem
- (CGSize)fullSize;
- (HGInputBitmapCacheItem)initWithHGBitmap:(void *)a3 fullSize:(CGSize)a4 colorSpace:(id)a5 gainMap:(HGRef<HGBitmap>)a6;
- (HGRef<HGBitmap>)gainMap;
- (id).cxx_construct;
- (vector<HGRef<HGBitmap>,)bitmaps;
- (void)updateLastUsedTime;
@end

@implementation HGInputBitmapCacheItem

- (HGInputBitmapCacheItem)initWithHGBitmap:(void *)a3 fullSize:(CGSize)a4 colorSpace:(id)a5 gainMap:(HGRef<HGBitmap>)a6
{
  height = a4.height;
  width = a4.width;
  v12 = a5;
  v20.receiver = self;
  v20.super_class = HGInputBitmapCacheItem;
  v13 = [(HGInputBitmapCacheItem *)&v20 init];
  v14 = v13;
  v15 = v13;
  if (v13)
  {
    p_bitmaps = &v13->_bitmaps;
    if (&v14->_bitmaps != a3)
    {
      std::vector<HGRef<HGBitmap>>::__assign_with_size[abi:ne200100]<HGRef<HGBitmap>*,HGRef<HGBitmap>*>(p_bitmaps, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 3);
    }

    v15->_fullSize.width = width;
    v15->_fullSize.height = height;
    objc_storeStrong(&v14->_colorSpace, a5);
    m_Obj = v15->_gainMap.m_Obj;
    v18 = *a6.m_Obj;
    if (m_Obj != *a6.m_Obj)
    {
      if (m_Obj)
      {
        (*(*m_Obj + 24))(v15->_gainMap.m_Obj);
        v18 = *a6.m_Obj;
      }

      v15->_gainMap.m_Obj = v18;
      if (v18)
      {
        (*(*v18 + 16))(v18);
      }
    }

    [(HGInputBitmapCacheItem *)v15 updateLastUsedTime];
  }

  return v15;
}

- (void)updateLastUsedTime
{
  v3 = [MEMORY[0x277CBEAA8] date];
  lastUsedTime = self->_lastUsedTime;
  self->_lastUsedTime = v3;
}

- (vector<HGRef<HGBitmap>,)bitmaps
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<HGRef<HGBitmap>>::__init_with_size[abi:ne200100]<HGRef<HGBitmap>*,HGRef<HGBitmap>*>(retstr, self->_bitmaps.__begin_, self->_bitmaps.__end_, (self->_bitmaps.__end_ - self->_bitmaps.__begin_) >> 3);
}

- (CGSize)fullSize
{
  width = self->_fullSize.width;
  height = self->_fullSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (HGRef<HGBitmap>)gainMap
{
  m_Obj = self->_gainMap.m_Obj;
  *v2 = m_Obj;
  if (m_Obj)
  {
    return (*(*m_Obj + 16))();
  }

  return m_Obj;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  return self;
}

@end