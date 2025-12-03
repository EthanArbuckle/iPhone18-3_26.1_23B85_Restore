@interface TSTFontInfoCacheEntry
- (TSTFontInfoCacheEntry)initWithTextMeasurerBundle:(id)bundle;
- (double)heightForString:(id)string width:(double)width outFitWidth:(double *)fitWidth;
- (id).cxx_construct;
@end

@implementation TSTFontInfoCacheEntry

- (TSTFontInfoCacheEntry)initWithTextMeasurerBundle:(id)bundle
{
  bundleCopy = bundle;
  v17.receiver = self;
  v17.super_class = TSTFontInfoCacheEntry;
  v6 = [(TSTFontInfoCacheEntry *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textMeasurerBundle, bundle);
    for (i = 0; i != 8; ++i)
    {
      v7->_lock[i]._os_unfair_lock_opaque = 0;
      v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10, v11);
      v14 = &v7->super.isa + i;
      v15 = v14[85];
      v14[85] = v13;
    }

    __dmb(0xBu);
  }

  return v7;
}

- (double)heightForString:(id)string width:(double)width outFitWidth:(double *)fitWidth
{
  if (!objc_msgSend_length(string, a2, string, fitWidth, v5))
  {
    return 0.0;
  }

  v13 = objc_msgSend_characterAtIndex_(string, v10, 0, v11, v12) & 7;
  stringCopy = string;
  widthCopy = width;
  v14 = (self + 4 * v13);
  os_unfair_lock_lock(v14 + 2);
  v15 = self + 40 * v13;
  v29 = &stringCopy;
  v16 = sub_221406B40(v15 + 5, &stringCopy, &unk_2217E1BCC, &v29, &v28)[4];
  if (fitWidth)
  {
    v29 = &stringCopy;
    *fitWidth = sub_221406B40(&self->_dupContentEntryToWidthCache[v13].__table_.__bucket_list_.__ptr_, &stringCopy, &unk_2217E1BCC, &v29, &v28)[4];
    os_unfair_lock_unlock(v14 + 2);
    v18 = *fitWidth <= 0.0;
  }

  else
  {
    os_unfair_lock_unlock(v14 + 2);
    v18 = 0;
  }

  if (v16 <= 0.0 || v18)
  {
    objc_msgSend_heightForString_textMeasurerBundle_width_outFitWidth_(MEMORY[0x277D80F78], v17, string, self->_textMeasurerBundle, fitWidth, width);
    v16 = v20;
    os_unfair_lock_lock(v14 + 2);
    v29 = &stringCopy;
    sub_221406B40(v15 + 5, &stringCopy, &unk_2217E1BCC, &v29, &v28)[4] = v16;
    if (fitWidth)
    {
      v24 = *fitWidth;
      v29 = &stringCopy;
      *(sub_221406B40(&self->_dupContentEntryToWidthCache[v13].__table_.__bucket_list_.__ptr_, &stringCopy, &unk_2217E1BCC, &v29, &v28) + 4) = v24;
    }

    objc_msgSend_addObject_(self->_strongReferences[v13], v21, stringCopy, v22, v23, stringCopy, *&widthCopy);
    os_unfair_lock_unlock(v14 + 2);
  }

  return v16;
}

- (id).cxx_construct
{
  for (i = 0; i != 320; i += 40)
  {
    v3 = self + i;
    *(v3 + 56) = 0uLL;
    *(v3 + 40) = 0uLL;
    *(v3 + 18) = 1065353216;
  }

  for (j = 0; j != 320; j += 40)
  {
    v5 = self + j + 360;
    *v5 = 0uLL;
    v5[1] = 0uLL;
    *(self + j + 392) = 1065353216;
  }

  return self;
}

@end