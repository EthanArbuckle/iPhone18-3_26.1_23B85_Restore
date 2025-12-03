@interface HGInputBitmapCacheItem
- (CGSize)fullSize;
- (HGInputBitmapCacheItem)initWithHGBitmap:(void *)bitmap fullSize:(CGSize)size colorSpace:(id)space gainMap:(HGRef<HGBitmap>)map;
- (HGRef<HGBitmap>)gainMap;
- (id).cxx_construct;
- (vector<HGRef<HGBitmap>,)bitmaps;
- (void)updateLastUsedTime;
@end

@implementation HGInputBitmapCacheItem

- (HGInputBitmapCacheItem)initWithHGBitmap:(void *)bitmap fullSize:(CGSize)size colorSpace:(id)space gainMap:(HGRef<HGBitmap>)map
{
  height = size.height;
  width = size.width;
  spaceCopy = space;
  v20.receiver = self;
  v20.super_class = HGInputBitmapCacheItem;
  v13 = [(HGInputBitmapCacheItem *)&v20 init];
  v14 = v13;
  v15 = v13;
  if (v13)
  {
    p_bitmaps = &v13->_bitmaps;
    if (&v14->_bitmaps != bitmap)
    {
      std::vector<HGRef<HGBitmap>>::__assign_with_size[abi:ne200100]<HGRef<HGBitmap>*,HGRef<HGBitmap>*>(p_bitmaps, *bitmap, *(bitmap + 1), (*(bitmap + 1) - *bitmap) >> 3);
    }

    v15->_fullSize.width = width;
    v15->_fullSize.height = height;
    objc_storeStrong(&v14->_colorSpace, space);
    m_Obj = v15->_gainMap.m_Obj;
    v18 = *map.m_Obj;
    if (m_Obj != *map.m_Obj)
    {
      if (m_Obj)
      {
        (*(*m_Obj + 24))(v15->_gainMap.m_Obj);
        v18 = *map.m_Obj;
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
  date = [MEMORY[0x277CBEAA8] date];
  lastUsedTime = self->_lastUsedTime;
  self->_lastUsedTime = date;
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