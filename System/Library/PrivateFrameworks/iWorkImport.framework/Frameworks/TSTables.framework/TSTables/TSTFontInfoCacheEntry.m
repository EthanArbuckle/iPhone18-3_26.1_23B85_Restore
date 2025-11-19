@interface TSTFontInfoCacheEntry
- (TSTFontInfoCacheEntry)initWithTextMeasurerBundle:(id)a3;
- (double)heightForString:(id)a3 width:(double)a4 outFitWidth:(double *)a5;
- (id).cxx_construct;
@end

@implementation TSTFontInfoCacheEntry

- (TSTFontInfoCacheEntry)initWithTextMeasurerBundle:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = TSTFontInfoCacheEntry;
  v6 = [(TSTFontInfoCacheEntry *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textMeasurerBundle, a3);
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

- (double)heightForString:(id)a3 width:(double)a4 outFitWidth:(double *)a5
{
  if (!objc_msgSend_length(a3, a2, a3, a5, v5))
  {
    return 0.0;
  }

  v13 = objc_msgSend_characterAtIndex_(a3, v10, 0, v11, v12) & 7;
  v26 = a3;
  v27 = a4;
  v14 = (self + 4 * v13);
  os_unfair_lock_lock(v14 + 2);
  v15 = self + 40 * v13;
  v29 = &v26;
  v16 = sub_221406B40(v15 + 5, &v26, &unk_2217E1BCC, &v29, &v28)[4];
  if (a5)
  {
    v29 = &v26;
    *a5 = sub_221406B40(&self->_dupContentEntryToWidthCache[v13].__table_.__bucket_list_.__ptr_, &v26, &unk_2217E1BCC, &v29, &v28)[4];
    os_unfair_lock_unlock(v14 + 2);
    v18 = *a5 <= 0.0;
  }

  else
  {
    os_unfair_lock_unlock(v14 + 2);
    v18 = 0;
  }

  if (v16 <= 0.0 || v18)
  {
    objc_msgSend_heightForString_textMeasurerBundle_width_outFitWidth_(MEMORY[0x277D80F78], v17, a3, self->_textMeasurerBundle, a5, a4);
    v16 = v20;
    os_unfair_lock_lock(v14 + 2);
    v29 = &v26;
    sub_221406B40(v15 + 5, &v26, &unk_2217E1BCC, &v29, &v28)[4] = v16;
    if (a5)
    {
      v24 = *a5;
      v29 = &v26;
      *(sub_221406B40(&self->_dupContentEntryToWidthCache[v13].__table_.__bucket_list_.__ptr_, &v26, &unk_2217E1BCC, &v29, &v28) + 4) = v24;
    }

    objc_msgSend_addObject_(self->_strongReferences[v13], v21, v26, v22, v23, v26, *&v27);
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