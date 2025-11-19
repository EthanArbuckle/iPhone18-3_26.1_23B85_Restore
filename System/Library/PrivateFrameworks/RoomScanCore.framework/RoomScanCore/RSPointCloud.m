@interface RSPointCloud
- (BOOL)isEqual:(id)a3;
- (RSPointCloud)init;
- (RSPointCloud)initWithCount:(unint64_t)a3 points:semanticLabels:semanticVotes:colors:;
- (RSPointCloud)initWithDictionary:(id)a3;
- (RSPointCloud)initWithKeyframes:(id)a3 enableCameraPosition:(BOOL)a4;
- (__n128)mappingIntervalOfKeyframe:(void *)a3;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (void)accumulateWithKeyframesInWorld:(id)a3 voxelize:(BOOL)a4;
- (void)append:(unint64_t)a3 points:semanticLabels:semanticVotes:colors:;
- (void)processWithVoxelize:(BOOL)a3 asPythonApproach:(BOOL)a4 resample:(BOOL)a5;
- (void)reset;
- (void)select:(unint64_t)a3 indices:(const unint64_t *)a4;
@end

@implementation RSPointCloud

- (id).cxx_construct
{
  *(self + 19) = 0;
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 40) = 1065353216;
  *(self + 168) = 0u;
  *(self + 184) = 0u;
  *(self + 50) = 1065353216;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 60) = 1065353216;
  *(self + 37) = 0;
  *(self + 76) = 1065353216;
  *(self + 248) = 0u;
  *(self + 264) = 0u;
  *(self + 280) = 0u;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 == self)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v6;
        if (self)
        {
          v10 = objc_msgSend_count(self, v7, v8);
          if (v10 != objc_msgSend_count(v9, v11, v12))
          {
LABEL_16:
            LOBYTE(self) = 0;
            goto LABEL_17;
          }

          v15 = *self->_anon_8;
          if (*&self->_anon_8[8] != v15)
          {
            v16 = 0;
            do
            {
              v19 = vabdq_f32(*(v15 + 16 * v16), *(objc_msgSend_points(v9, v13, v14) + 16 * v16));
              if (fmaxf(fmaxf(v19.f32[0], v19.f32[2]), v19.f32[1]) > 0.000001)
              {
                goto LABEL_16;
              }

              v3.i32[0] = *(*self->_anon_20 + 4 * v16);
              v22.i32[0] = *(objc_msgSend_semanticLabels(v9, v17, v18) + 4 * v16);
              v23 = vceq_s16(*&vmovl_u8(v3), *&vmovl_u8(v22));
              if ((vminv_u8(vuzp1_s8(v23, v23)) & 0x80) == 0)
              {
                goto LABEL_16;
              }

              v3 = *(*self->_anon_38 + 8 * v16);
              if ((vminv_u16(vceq_s16(v3, *(objc_msgSend_semanticVotes(v9, v20, v21) + 8 * v16))) & 0x8000) == 0)
              {
                goto LABEL_16;
              }

              v26 = vabdq_f32(*(*self->_anon_50 + 16 * v16), *(objc_msgSend_colors(v9, v24, v25) + 16 * v16));
              if (fmaxf(fmaxf(v26.f32[0], v26.f32[2]), v26.f32[1]) > 0.000001)
              {
                goto LABEL_16;
              }

              ++v16;
              v15 = *self->_anon_8;
            }

            while (v16 < (*&self->_anon_8[8] - v15) >> 4);
          }

          LOBYTE(self) = 1;
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    LOBYTE(self) = 0;
  }

LABEL_18:

  return self;
}

- (void)reset
{
  *&self->_anon_8[8] = *self->_anon_8;
  *&self->_anon_20[8] = *self->_anon_20;
  *&self->_anon_38[8] = *self->_anon_38;
  *&self->_anon_50[8] = *self->_anon_50;
  *&self->_anon_68[8] = *self->_anon_68;
  sub_2621CD7C8(&self->_mappingInterval);
  sub_2622F7918(&self->_voxelSet.__table_.__bucket_list_.__ptr_);
  if (self->_keyframeVoxelSet.__table_.__size_)
  {
    sub_262302930(self->_keyframeVoxelSet.__table_.__first_node_.__next_);
    self->_keyframeVoxelSet.__table_.__first_node_.__next_ = 0;
    size = self->_keyframeVoxelSet.__table_.__bucket_list_.__deleter_.__size_;
    if (size)
    {
      for (i = 0; i != size; ++i)
      {
        self->_keyframeVoxelSet.__table_.__bucket_list_.__ptr_[i] = 0;
      }
    }

    self->_keyframeVoxelSet.__table_.__size_ = 0;
  }

  *&self->_anon_f8[8] = *self->_anon_f8;
  sub_2621CD7C8(&self->_rawMappingInterval);
  self->_rawUpdateCursor = 0;
  self->_isCameraPositionEnabled = 0;
}

- (__n128)mappingIntervalOfKeyframe:(void *)a3
{
  v4 = a3;
  v5 = v4;
  v8 = objc_msgSend_UTF8String(v5, v6, v7);
  sub_2621D0F64(__p, v8);
  if (sub_2621E26D8((a1 + 128), __p))
  {
    v9 = sub_2621D101C((a1 + 128), __p);
    if (!v9)
    {
      sub_2621C84A8("unordered_map::at: key not found");
    }

    *&v10 = v9[5];
  }

  else
  {
    v10 = 0uLL;
  }

  v12 = v10;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

- (void)select:(unint64_t)a3 indices:(const unint64_t *)a4
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  sub_2622AB9E8(&v36, a4, &a4[a3], a3);
  sub_262303130(__p, self->_anon_8, &v36);
  v5 = *self->_anon_8;
  if (v5)
  {
    *&self->_anon_8[8] = v5;
    operator delete(v5);
    *self->_anon_8 = 0;
    *&self->_anon_8[8] = 0;
    *&self->_anon_8[16] = 0;
  }

  *self->_anon_8 = *__p;
  *&self->_anon_8[16] = v40;
  v35 = 0;
  v34 = 0uLL;
  v7 = v36;
  v6 = v37;
  sub_2622ABC20(&v34, (v37 - v36) >> 3);
  __p[0] = 0;
  __p[1] = 0;
  v40 = 0;
  sub_2622ABCC4(__p, *self->_anon_20, *&self->_anon_20[8], (*&self->_anon_20[8] - *self->_anon_20) >> 2);
  if (v7 != v6)
  {
    v9 = *(&v34 + 1);
    do
    {
      v8.i32[0] = *(__p[0] + *v7);
      v10 = vmovl_u8(v8).u64[0];
      if (v9 >= v35)
      {
        v11 = v34;
        v12 = v9 - v34;
        v13 = (v9 - v34) >> 2;
        v14 = v13 + 1;
        if ((v13 + 1) >> 62)
        {
          sub_2621CBEB0();
        }

        v15 = v35 - v34;
        if ((v35 - v34) >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          sub_2621C7F54(v16);
        }

        v17 = (4 * v13);
        *v17 = vuzp1_s8(v10, v10).u32[0];
        v9 = v17 + 1;
        memcpy(0, v11, v12);
        *&v34 = 0;
        v35 = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      else
      {
        v8 = vuzp1_s8(v10, v10);
        *v9++ = v8.i32[0];
      }

      *(&v34 + 1) = v9;
      ++v7;
    }

    while (v7 != v6);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v18 = *self->_anon_20;
  if (v18)
  {
    *&self->_anon_20[8] = v18;
    operator delete(v18);
    *self->_anon_20 = 0;
    *&self->_anon_20[8] = 0;
    *&self->_anon_20[16] = 0;
  }

  *self->_anon_20 = v34;
  v19 = v36;
  *&self->_anon_20[16] = v35;
  v35 = 0;
  v34 = 0uLL;
  v20 = v37;
  sub_26220F5A0(&v34, v37 - v19);
  __p[0] = 0;
  __p[1] = 0;
  v40 = 0;
  sub_2622ABD40(__p, *self->_anon_38, *&self->_anon_38[8], (*&self->_anon_38[8] - *self->_anon_38) >> 3);
  if (v19 != v20)
  {
    v21 = *(&v34 + 1);
    do
    {
      v22 = *(__p[0] + *v19);
      if (v21 >= v35)
      {
        v23 = v34;
        v24 = v21 - v34;
        v25 = (v21 - v34) >> 3;
        v26 = v25 + 1;
        if ((v25 + 1) >> 61)
        {
          sub_2621CBEB0();
        }

        v27 = v35 - v34;
        if ((v35 - v34) >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          sub_2621CBEC8(v28);
        }

        v29 = (8 * v25);
        *v29 = v22;
        v21 = v29 + 1;
        memcpy(0, v23, v24);
        *&v34 = 0;
        v35 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v21++ = v22;
      }

      *(&v34 + 1) = v21;
      ++v19;
    }

    while (v19 != v20);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v30 = *self->_anon_38;
  if (v30)
  {
    *&self->_anon_38[8] = v30;
    operator delete(v30);
    *self->_anon_38 = 0;
    *&self->_anon_38[8] = 0;
    *&self->_anon_38[16] = 0;
  }

  *self->_anon_38 = v34;
  *&self->_anon_38[16] = v35;
  sub_262303130(__p, self->_anon_50, &v36);
  v31 = *self->_anon_50;
  if (v31)
  {
    *&self->_anon_50[8] = v31;
    operator delete(v31);
    *self->_anon_50 = 0;
    *&self->_anon_50[8] = 0;
    *&self->_anon_50[16] = 0;
  }

  *self->_anon_50 = *__p;
  *&self->_anon_50[16] = v40;
  if (self->_isCameraPositionEnabled)
  {
    sub_262303130(__p, self->_anon_68, &v36);
    v32 = *self->_anon_68;
    if (v32)
    {
      *&self->_anon_68[8] = v32;
      operator delete(v32);
      *self->_anon_68 = 0;
      *&self->_anon_68[8] = 0;
      *&self->_anon_68[16] = 0;
    }

    *self->_anon_68 = *__p;
    *&self->_anon_68[16] = v40;
  }

  v33 = v36;
  if (v36)
  {

    operator delete(v33);
  }
}

- (void)processWithVoxelize:(BOOL)a3 asPythonApproach:(BOOL)a4 resample:(BOOL)a5
{
  v5 = *self->_anon_8;
  v6 = *&self->_anon_8[8];
  if (v5 != v6)
  {
    v7 = a5;
    v8 = a4;
    v9 = a3;
    sub_2621CD160(__p, (v6 - v5) >> 4);
    v12 = __p[0];
    if (__p[0] != __p[1])
    {
      v13 = 0;
      v14 = (__p[1] - __p[0] - 8) >> 3;
      v15 = vdupq_n_s64(v14);
      v16 = (v14 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v17 = xmmword_2623A7620;
      v18 = vdupq_n_s64(2uLL);
      do
      {
        v19 = vmovn_s64(vcgeq_u64(v15, v17));
        if (v19.i8[0])
        {
          v12[v13] = v13;
        }

        if (v19.i8[4])
        {
          v12[v13 + 1] = v13 + 1;
        }

        v13 += 2;
        v17 = vaddq_s64(v17, v18);
      }

      while (v16 != v13);
    }

    if (v9)
    {
      v20 = *self->_anon_8;
      if (v8)
      {
        sub_2622C606C(v20, __p);
      }

      else
      {
        sub_2622C5D14(v20, __p);
      }
    }

    if (v7)
    {
      sub_2622C5C44(__p);
    }

    objc_msgSend_select_indices_(self, v11, (__p[1] - __p[0]) >> 3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

- (void)accumulateWithKeyframesInWorld:(id)a3 voxelize:(BOOL)a4
{
  v189 = a4;
  v213 = *MEMORY[0x277D85DE8];
  v209 = self;
  v181 = a3;
  if (objc_msgSend_count(v181, v4, v5))
  {
    v206 = 0;
    v207 = 0;
    v208 = 0;
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    k = v181;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(k, v7, &v202, v212, 16);
    __src = k;
    if (v10)
    {
      v11 = *v203;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v203 != v11)
          {
            objc_enumerationMutation(k);
          }

          v13 = *(*(&v202 + 1) + 8 * i);
          if (objc_msgSend_count(v13, v8, v9))
          {
            v14 = objc_msgSend_identifier(v13, v8, v9);
            v17 = objc_msgSend_UUIDString(v14, v15, v16);
            v18 = v17;
            v21 = objc_msgSend_UTF8String(v17, v19, v20);
            sub_2621D0F64(&__p, v21);

            v22 = v209;
            v23 = sub_2621D1580(&__p);
            size = v22->_keyframeVoxelSet.__table_.__bucket_list_.__deleter_.__size_;
            if (size)
            {
              v25 = v23;
              v26 = vcnt_s8(size);
              v26.i16[0] = vaddlv_u8(v26);
              v27 = v26.u32[0];
              if (v26.u32[0] > 1uLL)
              {
                v28 = v23;
                if (v23 >= *&size)
                {
                  v28 = v23 % *&size;
                }
              }

              else
              {
                v28 = (*&size - 1) & v23;
              }

              v29 = v22->_keyframeVoxelSet.__table_.__bucket_list_.__ptr_[v28];
              if (v29)
              {
                v30 = *v29;
                if (*v29)
                {
                  while (1)
                  {
                    v31 = v30[1];
                    if (v25 == v31)
                    {
                      if (sub_2621D19D0(v30 + 2, &__p))
                      {
                        p_p = &__p;
                        v32 = sub_262304510(&v22->_keyframeVoxelSet.__table_.__bucket_list_.__ptr_, &__p) + 7;
                        k = __src;
                        while (1)
                        {
                          v32 = *v32;
                          if (!v32)
                          {
                            break;
                          }

                          v33 = v209;
                          v34 = sub_262295160(&v209->_voxelSet.__table_.__bucket_list_.__ptr_, v32[2]);
                          if (v34)
                          {
                            v35 = v33->_voxelSet.__table_.__bucket_list_.__deleter_.__size_;
                            next = v34[1].__next_;
                            v37 = vcnt_s8(v35);
                            v37.i16[0] = vaddlv_u8(v37);
                            if (v37.u32[0] > 1uLL)
                            {
                              if (next >= *&v35)
                              {
                                next %= *&v35;
                              }
                            }

                            else
                            {
                              next &= *&v35 - 1;
                            }

                            ptr = v33->_voxelSet.__table_.__bucket_list_.__ptr_;
                            v39 = ptr[next];
                            do
                            {
                              v40 = v39;
                              v39 = v39->__next_;
                            }

                            while (v39 != v34);
                            if (v40 == &v33->_voxelSet.__table_.__first_node_)
                            {
                              goto LABEL_44;
                            }

                            v41 = v40[1].__next_;
                            if (v37.u32[0] > 1uLL)
                            {
                              if (v41 >= *&v35)
                              {
                                v41 %= *&v35;
                              }
                            }

                            else
                            {
                              v41 &= *&v35 - 1;
                            }

                            if (v41 != next)
                            {
LABEL_44:
                              if (!v34->__next_)
                              {
                                goto LABEL_45;
                              }

                              v42 = *(v34->__next_ + 1);
                              if (v37.u32[0] > 1uLL)
                              {
                                if (v42 >= *&v35)
                                {
                                  v42 %= *&v35;
                                }
                              }

                              else
                              {
                                v42 &= *&v35 - 1;
                              }

                              if (v42 != next)
                              {
LABEL_45:
                                ptr[next] = 0;
                              }
                            }

                            v43 = v34->__next_;
                            if (v34->__next_)
                            {
                              v44 = v43[1];
                              if (v37.u32[0] > 1uLL)
                              {
                                if (v44 >= *&v35)
                                {
                                  v44 %= *&v35;
                                }
                              }

                              else
                              {
                                v44 &= *&v35 - 1;
                              }

                              if (v44 != next)
                              {
                                v33->_voxelSet.__table_.__bucket_list_.__ptr_[v44] = v40;
                                v43 = v34->__next_;
                              }
                            }

                            v40->__next_ = v43;
                            v34->__next_ = 0;
                            --v33->_voxelSet.__table_.__size_;
                            operator delete(v34);
                          }
                        }

                        p_p = &__p;
                        v45 = sub_262304510(&v209->_keyframeVoxelSet.__table_.__bucket_list_.__ptr_, &__p);
                        sub_2622F7918(v45 + 5);
                        v22 = v209;
                        break;
                      }
                    }

                    else
                    {
                      if (v27 > 1)
                      {
                        if (v31 >= *&size)
                        {
                          v31 %= *&size;
                        }
                      }

                      else
                      {
                        v31 &= *&size - 1;
                      }

                      if (v31 != v28)
                      {
LABEL_24:
                        k = __src;
                        break;
                      }
                    }

                    v30 = *v30;
                    if (!v30)
                    {
                      goto LABEL_24;
                    }
                  }
                }
              }
            }

            if (sub_2621E26D8(&v22->_mappingInterval.__table_.__bucket_list_.__ptr_, &__p))
            {
              sub_26226C61C(&v206, &__p);
            }

            if (SHIBYTE(v201) < 0)
            {
              operator delete(__p);
            }
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(k, v8, &v202, v212, 16);
      }

      while (v10);
    }

    v46 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v207 - v206) >> 3));
    p_p = &v209;
    if (v207 == v206)
    {
      v47 = 0;
    }

    else
    {
      v47 = v46;
    }

    sub_2623049A4(v206, v207, &p_p, v47, 1);
    v49 = v206;
    v48 = v207;
    v50 = v209;
    if (v206 != v207)
    {
      do
      {
        p_p = v49;
        v186 = sub_262305CA8(&v50->_mappingInterval.__table_.__bucket_list_.__ptr_, v49)[5];
        p_p = v49;
        v51 = *(sub_262305CA8(&v209->_mappingInterval.__table_.__bucket_list_.__ptr_, v49) + 11);
        v52 = v209;
        if (v51)
        {
          v53 = 16 * v51;
          v54 = *v209->_anon_8;
          v55 = *&v209->_anon_8[8];
          v56 = v54 + 16 * v186;
          v57 = (v56 + 16 * v51);
          v58 = v209;
          v59 = v55 - v57;
          if (v55 != v57)
          {
            memmove((v54 + 16 * v186), v57, v55 - v57);
            v58 = v209;
          }

          *&v52->_anon_8[8] = v56 + v59;
          v60 = *v58->_anon_20;
          v61 = *&v58->_anon_20[8];
          v62 = v60 + 4 * v186;
          v63 = (v62 + 4 * v51);
          v64 = v58;
          v65 = v61 - v63;
          if (v61 != v63)
          {
            memmove((v60 + 4 * v186), v63, v61 - v63);
            v64 = v209;
          }

          *&v58->_anon_20[8] = v62 + v65;
          v66 = *v64->_anon_38;
          v67 = *&v64->_anon_38[8];
          v68 = v66 + 8 * v186;
          v69 = (v68 + 8 * v51);
          v70 = v64;
          v71 = v67 - v69;
          if (v67 != v69)
          {
            memmove((v66 + 8 * v186), v69, v67 - v69);
            v70 = v209;
          }

          v72 = 16 * v186;
          *&v64->_anon_38[8] = v68 + v71;
          v73 = *&v70->_anon_50[8];
          v74 = *v70->_anon_50 + v72;
          v52 = v70;
          v75 = v73 - (v74 + v53);
          if (v73 != v74 + v53)
          {
            memmove((*v70->_anon_50 + v72), (v74 + v53), v73 - (v74 + v53));
            v52 = v209;
          }

          *&v70->_anon_50[8] = v74 + v75;
          k = __src;
        }

        sub_262306104(&v52->_mappingInterval.__table_.__bucket_list_.__ptr_, v49);
        v50 = v209;
        for (j = v209->_mappingInterval.__table_.__first_node_.__next_; j; j = *j)
        {
          v77 = j[5];
          if (v77 > v186)
          {
            LODWORD(v77) = v77 - v51;
            j[5] = v77;
          }
        }

        v49 += 24;
      }

      while (v49 != v48);
      v49 = v206;
      v48 = v207;
    }

    while (v49 != v48)
    {
      p_p = v49;
      v187 = sub_262305CA8(&v50->_rawMappingInterval.__table_.__bucket_list_.__ptr_, v49)[5];
      p_p = v49;
      v78 = *(sub_262305CA8(&v209->_rawMappingInterval.__table_.__bucket_list_.__ptr_, v49) + 11);
      v79 = v209;
      if (v78)
      {
        v80 = *&v209->_anon_f8[8];
        v81 = *v209->_anon_f8 + 16 * v187;
        v82 = (v81 + 16 * v78);
        v83 = v209;
        v84 = v80 - v82;
        if (v80 != v82)
        {
          memmove((*v209->_anon_f8 + 16 * v187), v82, v80 - v82);
          v83 = v209;
        }

        *&v79->_anon_f8[8] = v81 + v84;
        v79 = v83;
      }

      sub_262306104(&v79->_rawMappingInterval.__table_.__bucket_list_.__ptr_, v49);
      v50 = v209;
      v85 = v209->_rawMappingInterval.__table_.__first_node_.__next_;
      for (k = __src; v85; v85 = *v85)
      {
        v86 = v85[5];
        if (v86 > v187)
        {
          LODWORD(v86) = v86 - v78;
          v85[5] = v86;
        }
      }

      v49 += 24;
    }

    v50->_rawUpdateCursor = (*&v50->_anon_f8[8] - *v50->_anon_f8) >> 4;
    v87 = k;
    v89 = objc_msgSend_sortedArrayUsingComparator_(v87, v88, &unk_2874EE818);

    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    obj = v89;
    v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v90, &v196, v211, 16);
    if (v93)
    {
      v183 = *v197;
      v188 = vdupq_n_s32(0x42C80000u);
      do
      {
        v94 = 0;
        v184 = v93;
        do
        {
          if (*v197 != v183)
          {
            objc_enumerationMutation(obj);
          }

          v95 = *(*(&v196 + 1) + 8 * v94);
          __p = 0uLL;
          v201 = 0;
          p_p = 0;
          v194 = 0;
          v195 = 0;
          v96 = objc_msgSend_identifier(v95, v91, v92);
          v99 = objc_msgSend_UUIDString(v96, v97, v98);
          v100 = v99;
          v103 = objc_msgSend_UTF8String(v99, v101, v102);
          sub_2621D0F64(v191, v103);

          v185 = v94;
          v106 = 0;
LABEL_97:
          if (objc_msgSend_count(v95, v104, v105) > v106)
          {
            v109 = objc_msgSend_pointsToWorld(v95, v107, v108);
            if (v189)
            {
              v112 = vmulq_f32(*(v109 + 16 * v106), v188);
              v112.i32[3] = 0;
              v113 = _simd_round_f4(v112);
              v114 = vcvt_s32_f32(*v113.f32);
              v113.i16[0] = 0;
              v113.i16[1] = v114.i16[0];
              v113.i16[2] = v114.i16[2];
              v113.i16[3] = v113.f32[2];
              v115 = v113.i64[0];
              v116 = v209->_voxelSet.__table_.__bucket_list_.__deleter_.__size_;
              if (v116)
              {
                v117 = vcnt_s8(v116);
                v117.i16[0] = vaddlv_u8(v117);
                if (v117.u32[0] > 1uLL)
                {
                  v118 = v115;
                  if (*&v116 <= v115)
                  {
                    v118 = v115 % *&v116;
                  }
                }

                else
                {
                  v118 = (*&v116 - 1) & v115;
                }

                v119 = v209->_voxelSet.__table_.__bucket_list_.__ptr_[v118];
                if (v119)
                {
                  for (m = *v119; m; m = *m)
                  {
                    v121 = m[1];
                    if (v121 == v115)
                    {
                      if (m[2] == v115)
                      {
                        ++v106;
                        goto LABEL_97;
                      }
                    }

                    else
                    {
                      if (v117.u32[0] > 1uLL)
                      {
                        if (v121 >= *&v116)
                        {
                          v121 %= *&v116;
                        }
                      }

                      else
                      {
                        v121 &= *&v116 - 1;
                      }

                      if (v121 != v118)
                      {
                        break;
                      }
                    }
                  }
                }
              }

              sub_2622C5E50(&v209->_voxelSet.__table_.__bucket_list_.__ptr_, v115);
              v210 = v191;
              v122 = sub_262304510(&v209->_keyframeVoxelSet.__table_.__bucket_list_.__ptr_, v191);
              sub_2622C5E50(v122 + 5, v115);
            }

            v123 = objc_msgSend_pointsToWorld(v95, v110, v111);
            sub_2621D9F60(&__p, (v123 + 16 * v106));
            objc_msgSend_semanticLabels(v95, v124, v125);
            sub_2621C7F54(1uLL);
          }

          v127 = *v209->_anon_8;
          v126 = *&v209->_anon_8[8];
          v128 = __p;
          v210 = v191;
          v129 = sub_262305CA8(&v209->_mappingInterval.__table_.__bucket_list_.__ptr_, v191);
          LODWORD(v130) = (v126 - v127) >> 4;
          HIDWORD(v130) = (*(&v128 + 1) - v128) >> 4;
          v129[5] = v130;
          sub_262306274(v209->_anon_8, *&v209->_anon_8[8], v128, *(&v128 + 1), (*(&v128 + 1) - v128) >> 4);
          v131 = sub_262306274(v209->_anon_50, *&v209->_anon_50[8], p_p, v194, (v194 - p_p) >> 4);
          v133 = *v209->_anon_f8;
          v132 = *&v209->_anon_f8[8];
          v136 = objc_msgSend_count(v95, v134, v135, v131);
          v210 = v191;
          v137 = sub_262305CA8(&v209->_rawMappingInterval.__table_.__bucket_list_.__ptr_, v191);
          LODWORD(v138) = (v132 - v133) >> 4;
          HIDWORD(v138) = v136;
          v137[5] = v138;
          v139 = v209;
          v140 = *&v209->_anon_f8[8];
          v143 = objc_msgSend_pointsToWorld(v95, v141, v142);
          v146 = objc_msgSend_pointsToWorld(v95, v144, v145);
          v149 = (v146 + 16 * objc_msgSend_count(v95, v147, v148));
          v150 = v149 - v143;
          v151 = (v149 - v143) >> 4;
          if (v151 >= 1)
          {
            v153 = *&v139->_anon_f8[8];
            v152 = *&v139->_anon_f8[16];
            if (v152 - v153 >= v150)
            {
              v159 = v153 - v140;
              v160 = (v153 - v140) >> 4;
              if (v160 >= v151)
              {
                v169 = &v153[-v150];
                v170 = *&v139->_anon_f8[8];
                while (v169 < v153)
                {
                  v171 = *v169;
                  v169 += 16;
                  *v170++ = v171;
                }

                *&v139->_anon_f8[8] = v170;
                if (v153 != &v140[v150])
                {
                  memmove(&v140[v150], v140, v153 - &v140[v150]);
                }

                v166 = v140;
                v167 = v143;
                v168 = v150;
                goto LABEL_145;
              }

              v91 = &v143[v159];
              v161 = v149 - &v143[v159];
              if (v149 != &v143[v159])
              {
                memmove(*&v139->_anon_f8[8], v91, v149 - &v143[v159]);
              }

              v162 = &v153[v161];
              *&v139->_anon_f8[8] = &v153[v161];
              if (v160 >= 1)
              {
                v163 = &v153[v161];
                if (&v162[-v150] < v153)
                {
                  v164 = 0;
                  v165 = v150;
                  do
                  {
                    *&v140[v165] = *&v140[v164];
                    v164 += 16;
                    v165 += 16;
                  }

                  while (&v140[v164] < v153);
                  v163 = &v140[v165];
                }

                *&v139->_anon_f8[8] = v163;
                if (v162 != &v140[v150])
                {
                  memmove(&v140[v150], v140, v162 - &v140[v150]);
                }

                if (v153 != v140)
                {
                  v166 = v140;
                  v167 = v143;
                  v168 = v153 - v140;
LABEL_145:
                  memmove(v166, v167, v168);
                }
              }
            }

            else
            {
              v154 = *v139->_anon_f8;
              v155 = v151 + (&v153[-v154] >> 4);
              if (v155 >> 60)
              {
                sub_2621CBEB0();
              }

              v156 = v152 - v154;
              v157 = (v152 - v154) >> 3;
              if (v157 > v155)
              {
                v155 = v157;
              }

              if (v156 >= 0x7FFFFFFFFFFFFFF0)
              {
                v158 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v158 = v155;
              }

              if (v158)
              {
                sub_2621CBF10(v158);
              }

              v172 = 16 * (&v140[-v154] >> 4);
              v173 = (v172 + v150);
              v174 = v172;
              do
              {
                v175 = *v143;
                v143 += 16;
                *v174++ = v175;
                v150 -= 16;
              }

              while (v150);
              memcpy(v173, v140, *&v139->_anon_f8[8] - v140);
              v176 = *v139->_anon_f8;
              v177 = &v173[*&v139->_anon_f8[8] - v140];
              *&v139->_anon_f8[8] = v140;
              v178 = (v172 - (v140 - v176));
              memcpy(v178, v176, v140 - v176);
              v179 = *v139->_anon_f8;
              *v139->_anon_f8 = v178;
              *&v139->_anon_f8[8] = v177;
              *&v139->_anon_f8[16] = 0;
              if (v179)
              {
                operator delete(v179);
              }
            }
          }

          if (v192 < 0)
          {
            operator delete(v191[0]);
          }

          if (p_p)
          {
            operator delete(p_p);
          }

          if (__p)
          {
            operator delete(__p);
          }

          v94 = v185 + 1;
        }

        while (v185 + 1 != v184);
        v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v91, &v196, v211, 16);
      }

      while (v93);
    }

    *&__p = &v206;
    sub_2621DED18(&__p);
  }

  v180 = *MEMORY[0x277D85DE8];
}

- (void)append:(unint64_t)a3 points:semanticLabels:semanticVotes:colors:
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v13 = objc_msgSend_count(self, a2, a3);
  sub_262232448(self->_anon_8, v13 + a3);
  memcpy((*self->_anon_8 + 16 * v13), v10, 16 * a3);
  sub_262307118(self->_anon_20, v13 + a3);
  memcpy((*self->_anon_20 + 4 * v13), v9, 4 * a3);
  sub_2622DFB20(self->_anon_38, v13 + a3);
  memcpy((*self->_anon_38 + 8 * v13), v8, 8 * a3);
  sub_262232448(self->_anon_50, v13 + a3);
  v14 = (*self->_anon_50 + 16 * v13);

  memcpy(v14, v7, 16 * a3);
}

- (RSPointCloud)initWithCount:(unint64_t)a3 points:semanticLabels:semanticVotes:colors:
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v14.receiver = self;
  v14.super_class = RSPointCloud;
  v12 = [(RSPointCloud *)&v14 init];
  sub_262232448(v12 + 1, a3);
  memcpy(*(v12 + 1), v10, 16 * a3);
  sub_262307118(v12 + 4, a3);
  memcpy(*(v12 + 4), v9, 4 * a3);
  sub_2622DFB20(v12 + 7, a3);
  memcpy(*(v12 + 7), v8, 8 * a3);
  sub_262232448(v12 + 10, a3);
  memcpy(*(v12 + 10), v7, 16 * a3);
  return v12;
}

- (RSPointCloud)initWithKeyframes:(id)a3 enableCameraPosition:(BOOL)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v78.receiver = self;
  v78.super_class = RSPointCloud;
  v7 = [(RSPointCloud *)&v78 init];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v8 = v6;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v74, v81, 16);
  v67 = a4;
  v13 = 0;
  if (v12)
  {
    v14 = *v75;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v75 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v74 + 1) + 8 * i);
        v17 = objc_msgSend_identifier(v16, v10, v11);
        v20 = objc_msgSend_UUIDString(v17, v18, v19);
        v21 = v20;
        v24 = objc_msgSend_UTF8String(v20, v22, v23);
        sub_2621D0F64(__p, v24);

        LODWORD(v17) = objc_msgSend_count(v16, v25, v26);
        v79 = __p;
        sub_262305CA8(v7 + 16, __p)[5] = __PAIR64__(v17, v13);
        v29 = objc_msgSend_count(v16, v27, v28);
        if (v73 < 0)
        {
          operator delete(__p[0]);
        }

        v13 += v29;
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v74, v81, 16);
    }

    while (v12);
  }

  *(v7 + 320) = v67;
  sub_262232448(v7 + 1, v13);
  sub_262307118(v7 + 4, v13);
  sub_2622DFB20(v7 + 7, v13);
  sub_262232448(v7 + 10, v13);
  if (*(v7 + 320) == 1)
  {
    sub_262232448(v7 + 13, v13);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v30 = v8;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v68, v80, 16);
  if (v34)
  {
    v35 = 0;
    v36 = *v69;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v69 != v36)
        {
          objc_enumerationMutation(v30);
        }

        v38 = 0;
        v39 = *(*(&v68 + 1) + 8 * j);
        v40 = 16 * v35;
        while (v38 < objc_msgSend_count(v39, v32, v33))
        {
          *(*(v7 + 1) + v40 + 16 * v38) = *(objc_msgSend_pointsToWorld(v39, v41, v42) + 16 * v38);
          if (*(v7 + 320) == 1)
          {
            objc_msgSend_cameraPose(v39, v32, v33);
            *(*(v7 + 13) + v40 + 16 * v38) = v43;
          }

          ++v38;
        }

        v44 = *(v7 + 4);
        v45 = objc_msgSend_semanticLabels(v39, v41, v42);
        v48 = objc_msgSend_count(v39, v46, v47);
        memcpy((v44 + 4 * v35), v45, 4 * v48);
        v49 = *(v7 + 7);
        v52 = objc_msgSend_semanticVotes(v39, v50, v51);
        v55 = objc_msgSend_count(v39, v53, v54);
        memcpy((v49 + 8 * v35), v52, 8 * v55);
        v56 = *(v7 + 10);
        v59 = objc_msgSend_colors(v39, v57, v58);
        v62 = objc_msgSend_count(v39, v60, v61);
        memcpy((v56 + 16 * v35), v59, 16 * v62);
        v35 += objc_msgSend_count(v39, v63, v64);
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v68, v80, 16);
    }

    while (v34);
  }

  v65 = *MEMORY[0x277D85DE8];
  return v7;
}

- (RSPointCloud)initWithDictionary:(id)a3
{
  v4 = a3;
  v115.receiver = self;
  v115.super_class = RSPointCloud;
  v5 = [(RSPointCloud *)&v115 init];
  v7 = objc_msgSend_objectForKeyedSubscript_(v4, v6, @"count");
  v10 = objc_msgSend_unsignedIntegerValue(v7, v8, v9);

  v12 = objc_msgSend_objectForKeyedSubscript_(v4, v11, @"points");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = v14;
  v18 = objc_msgSend_bytes(v15, v16, v17);
  v21 = objc_msgSend_length(v14, v19, v20);
  v109 = 0;
  v110 = 0;
  v111 = 0;
  sub_26225E46C(&v109, v18, &v18[v21 & 0xFFFFFFFFFFFFFFFCLL], v21 >> 2);

  v22 = v109;
  sub_26229CBDC(&v112, ((v110 - v109) >> 2) / 3uLL);
  v24 = v112;
  v25 = v113;
  if (v113 != v112)
  {
    v26 = 0;
    v27 = 0;
    v28 = v22;
    do
    {
      v29 = v24 + v26;
      v30 = *v28;
      *(v29 + 8) = v28[2];
      *v29 = v30;
      ++v27;
      v24 = v112;
      v25 = v113;
      v28 += 3;
      v26 += 16;
    }

    while (v27 < (v113 - v112) >> 4);
  }

  v31 = *(v5 + 1);
  if (v31)
  {
    *(v5 + 2) = v31;
    operator delete(v31);
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    v24 = v112;
    v25 = v113;
  }

  *(v5 + 1) = v24;
  *(v5 + 2) = v25;
  *(v5 + 3) = v114;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  if (v22)
  {
    operator delete(v22);
  }

  v32 = objc_msgSend_objectForKeyedSubscript_(v4, v23, @"semanticLabels");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;
  v35 = v34;
  v38 = objc_msgSend_bytes(v35, v36, v37);
  v41 = objc_msgSend_length(v34, v39, v40);
  v109 = 0;
  v110 = 0;
  v111 = 0;
  sub_2622ACF80(&v109, v38, &v38[v41], v41);

  v42 = v109;
  sub_2622AD0AC(&v112, (v110 - v109) >> 2);
  v44 = v112;
  v45 = v113;
  if (v113 != v112)
  {
    v46 = 0;
    do
    {
      *(v44 + 4 * v46) = v42[v46];
      ++v46;
      v44 = v112;
      v45 = v113;
    }

    while (v46 < (v113 - v112) >> 2);
  }

  v47 = *(v5 + 4);
  if (v47)
  {
    *(v5 + 5) = v47;
    operator delete(v47);
    *(v5 + 4) = 0;
    *(v5 + 5) = 0;
    *(v5 + 6) = 0;
    v44 = v112;
    v45 = v113;
  }

  *(v5 + 4) = v44;
  *(v5 + 5) = v45;
  *(v5 + 6) = v114;
  v113 = 0;
  v114 = 0;
  v112 = 0;
  if (v42)
  {
    operator delete(v42);
  }

  v48 = objc_msgSend_objectForKeyedSubscript_(v4, v43, @"semanticVotes");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  v50 = v49;
  v51 = v50;
  v54 = objc_msgSend_bytes(v51, v52, v53);
  v57 = objc_msgSend_length(v50, v55, v56);
  v109 = 0;
  v110 = 0;
  v111 = 0;
  sub_2622AD124(&v109, v54, &v54[v57 & 0xFFFFFFFFFFFFFFFELL], v57 >> 1);

  v58 = v109;
  sub_2622AD24C(&v112, ((v110 - v109) >> 1) >> 2);
  v60 = v112;
  v61 = v113;
  if (v113 != v112)
  {
    v62 = 0;
    do
    {
      *(v60 + 8 * v62) = v58[v62];
      ++v62;
      v60 = v112;
      v61 = v113;
    }

    while (v62 < (v113 - v112) >> 3);
  }

  v63 = *(v5 + 7);
  if (v63)
  {
    *(v5 + 8) = v63;
    operator delete(v63);
    *(v5 + 7) = 0;
    *(v5 + 8) = 0;
    *(v5 + 9) = 0;
    v60 = v112;
    v61 = v113;
  }

  *(v5 + 7) = v60;
  *(v5 + 8) = v61;
  *(v5 + 9) = v114;
  v113 = 0;
  v114 = 0;
  v112 = 0;
  if (v58)
  {
    operator delete(v58);
  }

  v64 = objc_msgSend_objectForKeyedSubscript_(v4, v59, @"colors");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v65 = v64;
  }

  else
  {
    v65 = 0;
  }

  v66 = v65;
  v67 = v66;
  v70 = objc_msgSend_bytes(v67, v68, v69);
  v73 = objc_msgSend_length(v66, v71, v72);
  v109 = 0;
  v110 = 0;
  v111 = 0;
  sub_26225E46C(&v109, v70, &v70[v73 & 0xFFFFFFFFFFFFFFFCLL], v73 >> 2);

  v74 = v109;
  sub_26229CBDC(&v112, ((v110 - v109) >> 2) / 3uLL);
  v76 = v112;
  v77 = v113;
  if (v113 != v112)
  {
    v78 = 0;
    v79 = 0;
    v80 = v74;
    do
    {
      v81 = v76 + v78;
      v82 = *v80;
      *(v81 + 8) = v80[2];
      *v81 = v82;
      ++v79;
      v76 = v112;
      v77 = v113;
      v80 += 3;
      v78 += 16;
    }

    while (v79 < (v113 - v112) >> 4);
  }

  v83 = *(v5 + 10);
  if (v83)
  {
    *(v5 + 11) = v83;
    operator delete(v83);
    *(v5 + 10) = 0;
    *(v5 + 11) = 0;
    *(v5 + 12) = 0;
    v76 = v112;
    v77 = v113;
  }

  *(v5 + 10) = v76;
  *(v5 + 11) = v77;
  *(v5 + 12) = v114;
  v113 = 0;
  v114 = 0;
  v112 = 0;
  if (v74)
  {
    operator delete(v74);
  }

  v84 = objc_msgSend_objectForKey_(v4, v75, @"cameraPositions");

  if (v84)
  {
    v86 = objc_msgSend_objectForKeyedSubscript_(v4, v85, @"cameraPositions");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v87 = v86;
    }

    else
    {
      v87 = 0;
    }

    v88 = v87;
    v89 = v88;
    v92 = objc_msgSend_bytes(v89, v90, v91);
    v95 = objc_msgSend_length(v88, v93, v94);
    v109 = 0;
    v110 = 0;
    v111 = 0;
    sub_26225E46C(&v109, v92, &v92[v95 & 0xFFFFFFFFFFFFFFFCLL], v95 >> 2);

    v96 = v109;
    sub_26229CBDC(&v112, ((v110 - v109) >> 2) / 3uLL);
    v97 = v112;
    v98 = v113;
    if (v113 != v112)
    {
      v99 = 0;
      v100 = 0;
      v101 = v96;
      do
      {
        v102 = v97 + v99;
        v103 = *v101;
        *(v102 + 8) = v101[2];
        *v102 = v103;
        ++v100;
        v97 = v112;
        v98 = v113;
        v101 += 3;
        v99 += 16;
      }

      while (v100 < (v113 - v112) >> 4);
    }

    v104 = *(v5 + 13);
    if (v104)
    {
      *(v5 + 14) = v104;
      operator delete(v104);
      *(v5 + 13) = 0;
      *(v5 + 14) = 0;
      *(v5 + 15) = 0;
      v97 = v112;
      v98 = v113;
    }

    *(v5 + 13) = v97;
    *(v5 + 14) = v98;
    *(v5 + 15) = v114;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    if (v96)
    {
      operator delete(v96);
    }
  }

  v105 = *(v5 + 1);
  v106 = *(v5 + 2);
  if (v10 == (v106 - v105) >> 4 && v10 == (*(v5 + 8) - *(v5 + 7)) >> 3 && v10 == (*(v5 + 5) - *(v5 + 4)) >> 2 && v10 == (*(v5 + 11) - *(v5 + 10)) >> 4)
  {
    sub_26229CA04(v5 + 31, v105, v106, v10);
    v107 = v5;
  }

  else
  {
    v107 = 0;
  }

  return v107;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(RSPointCloud);
  v5 = v4;
  if (v4 != self)
  {
    sub_26229CA04(v4->_anon_8, *self->_anon_8, *&self->_anon_8[8], (*&self->_anon_8[8] - *self->_anon_8) >> 4);
    sub_2621CA9DC(v5->_anon_20, *self->_anon_20, *&self->_anon_20[8], (*&self->_anon_20[8] - *self->_anon_20) >> 2);
    sub_26223200C(v5->_anon_38, *self->_anon_38, *&self->_anon_38[8], (*&self->_anon_38[8] - *self->_anon_38) >> 3);
    sub_26229CA04(v5->_anon_50, *self->_anon_50, *&self->_anon_50[8], (*&self->_anon_50[8] - *self->_anon_50) >> 4);
    sub_26229CA04(v5->_anon_68, *self->_anon_68, *&self->_anon_68[8], (*&self->_anon_68[8] - *self->_anon_68) >> 4);
    v5->_mappingInterval.__table_.__max_load_factor_ = self->_mappingInterval.__table_.__max_load_factor_;
    sub_2623082B8(&v5->_mappingInterval.__table_.__bucket_list_.__ptr_, self->_mappingInterval.__table_.__first_node_.__next_);
    v5->_voxelSet.__table_.__max_load_factor_ = self->_voxelSet.__table_.__max_load_factor_;
    sub_262308424(&v5->_voxelSet.__table_.__bucket_list_.__ptr_, self->_voxelSet.__table_.__first_node_.__next_);
    v5->_keyframeVoxelSet.__table_.__max_load_factor_ = self->_keyframeVoxelSet.__table_.__max_load_factor_;
    next = self->_keyframeVoxelSet.__table_.__first_node_.__next_;
    size = v5->_keyframeVoxelSet.__table_.__bucket_list_.__deleter_.__size_;
    if (size)
    {
      for (i = 0; i != size; ++i)
      {
        v5->_keyframeVoxelSet.__table_.__bucket_list_.__ptr_[i] = 0;
      }

      v9 = v5->_keyframeVoxelSet.__table_.__first_node_.__next_;
      v5->_keyframeVoxelSet.__table_.__first_node_.__next_ = 0;
      v5->_keyframeVoxelSet.__table_.__size_ = 0;
      if (v9)
      {
        v10 = next == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = v9;
      }

      else
      {
        do
        {
          std::string::operator=((v9 + 16), (next + 16));
          if (v9 != next)
          {
            *(v9 + 18) = *(next + 18);
            sub_262308424(v9 + 5, *(next + 7));
          }

          v11 = *v9;
          sub_26230856C(&v5->_keyframeVoxelSet, v9);
          next = *next;
          if (!v11)
          {
            break;
          }

          v9 = v11;
        }

        while (next);
      }

      sub_262302930(v11);
    }

    if (next)
    {
      operator new();
    }

    sub_26229CA04(v5->_anon_f8, *self->_anon_f8, *&self->_anon_f8[8], (*&self->_anon_f8[8] - *self->_anon_f8) >> 4);
    v5->_rawMappingInterval.__table_.__max_load_factor_ = self->_rawMappingInterval.__table_.__max_load_factor_;
    sub_2623082B8(&v5->_rawMappingInterval.__table_.__bucket_list_.__ptr_, self->_rawMappingInterval.__table_.__first_node_.__next_);
  }

  v5->_rawUpdateCursor = self->_rawUpdateCursor;
  v5->_isCameraPositionEnabled = self->_isCameraPositionEnabled;
  return v5;
}

- (RSPointCloud)init
{
  v3.receiver = self;
  v3.super_class = RSPointCloud;
  result = [(RSPointCloud *)&v3 init];
  if (result)
  {
    result->_rawUpdateCursor = 0;
    result->_isCameraPositionEnabled = 0;
  }

  return result;
}

@end