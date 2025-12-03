@interface TSCH3DExtrusionDoubleBevelGenerator
+ (id)generator;
- (TSCH3DExtrusionDoubleBevelGenerator)init;
- (float)scaleUValueAtIndex:(int64_t)index;
- (id).cxx_construct;
- (int64_t)bottomSlices;
- (tvec3<float>)bottomDirection;
- (void)adjustBottomOffset;
- (void)adjustBottomScales;
- (void)adjustTopScales;
- (void)createSpinePointArray;
- (void)generate;
- (void)generateBottom;
- (void)generateTop;
- (void)resetAllScales;
@end

@implementation TSCH3DExtrusionDoubleBevelGenerator

+ (id)generator
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSCH3DExtrusionDoubleBevelGenerator)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DExtrusionDoubleBevelGenerator;
  result = [(TSCH3DExtrusionDoubleBevelGenerator *)&v3 init];
  if (result)
  {
    result->_bevelSlices = 7;
    result->_bevelHeight = 0.15;
    result->_enableBevelEdges = 0;
  }

  return result;
}

- (void)generate
{
  objc_msgSend_createSpinePointArray(self, a2, v2, v3, v4);
  objc_msgSend_generateTop(self, v6, v7, v8, v9);
  objc_msgSend_generateBottom(self, v10, v11, v12, v13);
  objc_msgSend_adjustBottomOffset(self, v14, v15, v16, v17);
  objc_msgSend_resetAllScales(self, v18, v19, v20, v21);
  objc_msgSend_adjustTopScales(self, v22, v23, v24, v25);

  MEMORY[0x2821F9670](self, sel_adjustBottomScales, v26, v27, v28);
}

- (void)createSpinePointArray
{
  v6 = objc_msgSend_bottomSlices(self, a2, v2, v3, v4);
  v11 = objc_msgSend_topSlices(self, v7, v8, v9, v10);
  sub_2761EDA00(&self->_spinePoints.__begin_, v11 + v6 - 0x5555555555555555 * ((self->_inputSpinePoints.__end_ - self->_inputSpinePoints.__begin_) >> 2));
  if (v6 < 1)
  {
    v6 = 0;
  }

  else
  {
    v16 = 0;
    v17 = v6;
    do
    {
      begin = self->_inputSpinePoints.__begin_;
      v19 = self->_spinePoints.__begin_ + v16;
      *v19 = *begin;
      v19[1] = begin[1];
      LODWORD(v13) = begin[2];
      v19[2] = LODWORD(v13);
      v16 += 12;
      --v17;
    }

    while (v17);
  }

  v20 = self->_inputSpinePoints.__begin_;
  if (self->_inputSpinePoints.__end_ - v20 >= 1)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = &v20[v21];
      v24 = self->_spinePoints.__begin_ + 12 * v6 + v21;
      *v24 = *v23;
      v24[1] = *(v23 + 1);
      LODWORD(v13) = *(v23 + 2);
      v24[2] = LODWORD(v13);
      ++v22;
      v20 = self->_inputSpinePoints.__begin_;
      v21 += 12;
    }

    while (v22 < (0xAAAAAAAAAAAAAAABLL * ((self->_inputSpinePoints.__end_ - v20) >> 2)));
    v6 += v22;
  }

  if (v11 >= 1)
  {
    v25 = 12 * v6;
    v6 += v11;
    do
    {
      end = self->_inputSpinePoints.__end_;
      v27 = self->_spinePoints.__begin_ + v25;
      *v27 = *(end - 3);
      v27[1] = *(end - 2);
      LODWORD(v13) = *(end - 1);
      v27[2] = LODWORD(v13);
      v25 += 12;
      --v11;
    }

    while (v11);
  }

  if (v6 != 0xAAAAAAAAAAAAAAABLL * ((self->_spinePoints.__end_ - self->_spinePoints.__begin_) >> 2))
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCH3DExtrusionDoubleBevelGenerator createSpinePointArray]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DExtrusionDoubleBevelGenerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 100, 0, "spine copy out of sync");

    v43 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v43, v39, v40, v41, v42);
  }
}

- (void)generateTop
{
  started = objc_msgSend_topBevelStartIndex(self, a2, v2, v3, v4);
  v8 = (self->_spinePoints.__begin_ + 12 * started);
  v9 = *(v8 - 1);
  v10 = *(v8 - 3);
  v11 = vsub_f32(v10, *(v8 - 6));
  *&v12 = v9 - *(v8 - 4);
  v13 = COERCE_DOUBLE(vmul_f32(v11, v11));
  *&v13 = 1.0 / sqrtf((*(&v13 + 1) + (v11.f32[0] * v11.f32[0])) + (*&v12 * *&v12));
  v14 = vmul_n_f32(v11, *&v13);
  v15 = *&v12 * *&v13;
  if (self->_bevelSlices >= 1)
  {
    v16 = 0;
    v17 = 12 * started;
    do
    {
      objc_msgSend_spineUValueAtIndex_(self, v7, *&v11, v12, v13, v16);
      v19 = v18 * self->_bevelHeight;
      *&v12 = v9 + (v15 * v19);
      v20 = self->_spinePoints.__begin_ + v17;
      v11 = vadd_f32(v10, vmul_n_f32(v14, v19));
      *v20 = v11;
      *(v20 + 2) = LODWORD(v12);
      ++v16;
      v17 += 12;
    }

    while (v16 < self->_bevelSlices);
  }

  if (objc_msgSend_topSlices(self, v7, *&v11, v12, v13) == self->_bevelSlices + 1)
  {
    bevelHeight = self->_bevelHeight;
    end = self->_spinePoints.__end_;
    *(end - 3) = vadd_f32(v10, vmul_n_f32(v14, bevelHeight));
    *(end - 1) = v9 + (v15 * bevelHeight);
  }
}

- (tvec3<float>)bottomDirection
{
  v7 = v2;
  v8 = self->_spinePoints.__begin_ + 12 * objc_msgSend_bottomBevelStartIndex(self, a2, v3, v4, v5);
  started = objc_msgSend_bottomBevelStartIndex(self, v9, v10, v11, v12);
  v15 = (self->_spinePoints.__begin_ + 12 * started);
  v16 = *(v8 + 5) - v15[4].f32[0];
  *v7 = vsub_f32(*(v8 + 12), v15[3]);
  v7[1].f32[0] = v16;
  result.var0 = started;
  result.var1 = *(&started + 4);
  result.var2 = v14;
  return result;
}

- (void)generateBottom
{
  if (self->_enableBevelEdges)
  {
    started = objc_msgSend_bottomBevelStartIndex(self, a2, v2, v3, v4);
    v7 = self->_spinePoints.__begin_ + 12 * started;
    v8 = *(v7 + 5);
    v9 = *(v7 + 12);
    objc_msgSend_bottomDirection(self, v10, v11, v12, v13);
    if (self->_bevelSlices >= 1)
    {
      v16 = 0;
      v17 = v25;
      v18 = COERCE_DOUBLE(vmul_f32(v17, v17));
      *&v15 = v26;
      *&v18 = 1.0 / sqrtf((*(&v18 + 1) + (v17.f32[0] * v17.f32[0])) + (*&v15 * *&v15));
      v19 = vmul_n_f32(v25, *&v18);
      v20 = v26 * *&v18;
      v21 = 12 * started;
      do
      {
        objc_msgSend_spineUValueAtIndex_(self, v14, *&v17, v18, v15, v16);
        v23 = v22 * self->_bevelHeight;
        *&v18 = v8 + (v20 * v23);
        v24 = self->_spinePoints.__begin_ + v21;
        v17 = vadd_f32(v9, vmul_n_f32(v19, v23));
        *v24 = v17;
        *(v24 + 2) = LODWORD(v18);
        ++v16;
        v21 -= 12;
      }

      while (v16 < self->_bevelSlices);
    }
  }
}

- (void)adjustBottomOffset
{
  if (self->_enableBevelEdges)
  {
    objc_msgSend_bottomDirection(self, a2, v2, v3, v4);
    v6 = v11 >= 0.0 ? -self->_bevelHeight : self->_bevelHeight;
    begin = self->_spinePoints.__begin_;
    v8 = self->_spinePoints.__end_ - begin;
    if (v8 >= 1)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
      if (v9 <= 1)
      {
        v9 = 1;
      }

      v10 = begin + 1;
      do
      {
        *v10 = v6 + *v10;
        v10 += 3;
        --v9;
      }

      while (v9);
    }
  }
}

- (float)scaleUValueAtIndex:(int64_t)index
{
  v3 = sin((1.0 - ((index + 1) / self->_bevelSlices)) * 1.57079633);
  v4 = sin(v3 * 1.57079633);
  v5 = sin(v4 * 1.57079633);
  return v5 + ((1.0 - v5) * 0.94);
}

- (void)resetAllScales
{
  sub_2761EDEC0(&self->_scaleValues.__begin_, 0xAAAAAAAAAAAAAAABLL * ((self->_spinePoints.__end_ - self->_spinePoints.__begin_) >> 2));
  begin = self->_scaleValues.__begin_;
  if (self->_scaleValues.__end_ - begin >= 1)
  {
    v4 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      begin[v4++] = _D0;
      begin = self->_scaleValues.__begin_;
    }

    while (v4 < (self->_scaleValues.__end_ - begin) >> 3);
  }
}

- (void)adjustTopScales
{
  v6 = objc_msgSend_topSlices(self, a2, v2, v3, v4);
  started = objc_msgSend_topBevelStartIndex(self, v7, v8, v9, v10);
  if (v6 >= 2)
  {
    v16 = 0;
    v17 = 8 * started;
    do
    {
      objc_msgSend_scaleUValueAtIndex_(self, v12, v13, v14, v15, v16);
      v13 = COERCE_DOUBLE(vdup_lane_s32(v18, 0));
      *(self->_scaleValues.__begin_ + 8 * v16++ + v17) = v13;
    }

    while (v6 - 1 != v16);
  }

  if (v6 == self->_bevelSlices + 1)
  {
    v19 = (self->_scaleValues.__begin_ + 0x5555555555555558 * ((self->_spinePoints.__end_ - self->_spinePoints.__begin_) >> 2));
    v19[-1] = vmul_f32(v19[-2], vdup_n_s32(0x3F7AE148u));
  }
}

- (void)adjustBottomScales
{
  if (self->_enableBevelEdges)
  {
    v6 = objc_msgSend_bottomSlices(self, a2, v2, v3, v4);
    started = objc_msgSend_bottomBevelStartIndex(self, v7, v8, v9, v10);
    if (v6 >= 1)
    {
      v16 = 0;
      v17 = 8 * started;
      do
      {
        objc_msgSend_scaleUValueAtIndex_(self, v12, v13, v14, v15, v16);
        v13 = COERCE_DOUBLE(vdup_lane_s32(v18, 0));
        *(self->_scaleValues.__begin_ + v17) = v13;
        ++v16;
        v17 -= 8;
      }

      while (v6 != v16);
    }

    *self->_scaleValues.__begin_ = vmul_f32(*(self->_scaleValues.__begin_ + 8), vdup_n_s32(0x3F7AE148u));
  }
}

- (int64_t)bottomSlices
{
  if (self->_enableBevelEdges)
  {
    return self->_bevelSlices;
  }

  else
  {
    return 0;
  }
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end