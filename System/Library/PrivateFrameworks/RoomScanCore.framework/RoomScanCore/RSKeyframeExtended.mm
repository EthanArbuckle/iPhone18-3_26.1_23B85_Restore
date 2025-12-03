@interface RSKeyframeExtended
- (RSKeyframeExtended)initWithDictionary:(id)dictionary withGroupId:(unsigned int)id;
- (RSKeyframeExtended)initWithKeyframe:(id)keyframe;
- (__n128)cameraPose;
- (__n128)setCameraPose:(__n128)pose;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (void)filterOutPointsBeyondDistance:(float)distance;
- (void)processWithVoxelize:(BOOL)voxelize asPythonApproach:(BOOL)approach resample:(BOOL)resample outlierRemove:(BOOL)remove;
- (void)rotateAlongZAxisRightHand:(float)hand;
- (void)setPoints:(RSKeyframeExtended *)self semanticLabels:(SEL)labels semanticVotes:colors:count:;
- (void)translateBy:(RSKeyframeExtended *)self;
@end

@implementation RSKeyframeExtended

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (__n128)setCameraPose:(__n128)pose
{
  result[10] = a2;
  result[11] = pose;
  result[12] = a4;
  result[13] = a5;
  return result;
}

- (__n128)cameraPose
{
  result = *(self + 160);
  v2 = *(self + 176);
  v3 = *(self + 192);
  v4 = *(self + 208);
  return result;
}

- (void)processWithVoxelize:(BOOL)voxelize asPythonApproach:(BOOL)approach resample:(BOOL)resample outlierRemove:(BOOL)remove
{
  removeCopy = remove;
  resampleCopy = resample;
  approachCopy = approach;
  voxelizeCopy = voxelize;
  sub_2621CD160(__p, (*&self->_anon_20[8] - *self->_anon_20) >> 4);
  v11 = __p[0];
  if (__p[0] != __p[1])
  {
    v12 = 0;
    v13 = (__p[1] - __p[0] - 8) >> 3;
    v14 = vdupq_n_s64(v13);
    v15 = (v13 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v16 = xmmword_2623A7620;
    v17 = vdupq_n_s64(2uLL);
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v14, v16));
      if (v18.i8[0])
      {
        v11[v12] = v12;
      }

      if (v18.i8[4])
      {
        v11[v12 + 1] = v12 + 1;
      }

      v12 += 2;
      v16 = vaddq_s64(v16, v17);
    }

    while (v15 != v12);
  }

  if (voxelizeCopy)
  {
    v19 = *self->_anon_20;
    if (approachCopy)
    {
      sub_2622C606C(v19, __p);
    }

    else
    {
      sub_2622C5D14(v19, __p);
    }
  }

  if (resampleCopy)
  {
    sub_2622C5C44(__p);
  }

  if (removeCopy)
  {
    sub_2622C6EA0(*self->_anon_20, __p);
  }

  sub_2622AB5CC(self, (__p[1] - __p[0]) >> 3, __p[0]);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (RSKeyframeExtended)initWithKeyframe:(id)keyframe
{
  keyframeCopy = keyframe;
  v79.receiver = self;
  v79.super_class = RSKeyframeExtended;
  v5 = [(RSKeyframeExtended *)&v79 init];
  if (objc_msgSend_count(keyframeCopy, v6, v7))
  {
    v10 = objc_msgSend_count(keyframeCopy, v8, v9);
    v13 = objc_msgSend_points(keyframeCopy, v11, v12);
    v16 = objc_msgSend_points(keyframeCopy, v14, v15);
    sub_26229CC54(v5 + 1, v13, (v16 + 16 * v10), (v16 + 16 * v10 - v13) >> 4);
    v19 = objc_msgSend_pointsToWorld(keyframeCopy, v17, v18);
    v22 = objc_msgSend_pointsToWorld(keyframeCopy, v20, v21);
    sub_26229CA04(v5 + 4, v19, (v22 + 16 * v10), (v22 + 16 * v10 - v19) >> 4);
    v25 = objc_msgSend_semanticLabels(keyframeCopy, v23, v24);
    v30 = objc_msgSend_semanticLabels(keyframeCopy, v26, v27) + 4 * v10;
    v31 = v30 - v25;
    v32 = *(v5 + 9);
    v33 = *(v5 + 7);
    if (v32 - v33 < (v30 - v25))
    {
      v34 = v31 >> 2;
      if (v33)
      {
        *(v5 + 8) = v33;
        operator delete(v33);
        v32 = 0;
        *(v5 + 7) = 0;
        *(v5 + 8) = 0;
        *(v5 + 9) = 0;
      }

      if (!(v34 >> 62))
      {
        v35 = v32 >> 1;
        if (v32 >> 1 <= v34)
        {
          v35 = v34;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v36 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        sub_2621C8EEC(v5 + 56, v36);
      }

      sub_2621CBEB0();
    }

    v37 = *(v5 + 8);
    v38 = v37 - v33;
    if (v37 - v33 >= v31)
    {
      if (v30 != v25)
      {
        memmove(*(v5 + 7), v25, v30 - v25);
      }

      v42 = &v33[v31];
    }

    else
    {
      if (v37 != v33)
      {
        memmove(*(v5 + 7), v25, v37 - v33);
        v37 = *(v5 + 8);
      }

      v39 = &v25[v38];
      v40 = v37;
      if (&v25[v38] != v30)
      {
        v40 = v37;
        do
        {
          v41 = *v39;
          v39 += 4;
          *v40 = v41;
          v40 += 4;
        }

        while (v39 != v30);
      }

      v42 = v40;
    }

    *(v5 + 8) = v42;
    v43 = objc_msgSend_semanticVotes(keyframeCopy, v28, v29);
    v48 = objc_msgSend_semanticVotes(keyframeCopy, v44, v45) + 8 * v10;
    v49 = v48 - v43;
    v50 = *(v5 + 12);
    v51 = *(v5 + 10);
    if (v50 - v51 < (v48 - v43))
    {
      v52 = v49 >> 3;
      if (v51)
      {
        *(v5 + 11) = v51;
        operator delete(v51);
        v50 = 0;
        *(v5 + 10) = 0;
        *(v5 + 11) = 0;
        *(v5 + 12) = 0;
      }

      if (!(v52 >> 61))
      {
        v53 = v50 >> 2;
        if (v50 >> 2 <= v52)
        {
          v53 = v52;
        }

        if (v50 >= 0x7FFFFFFFFFFFFFF8)
        {
          v54 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v54 = v53;
        }

        sub_2621CC71C(v5 + 80, v54);
      }

      sub_2621CBEB0();
    }

    v55 = *(v5 + 11);
    v56 = v55 - v51;
    if (v55 - v51 >= v49)
    {
      if (v48 != v43)
      {
        memmove(*(v5 + 10), v43, v48 - v43);
      }

      v60 = &v51[v49];
    }

    else
    {
      if (v55 != v51)
      {
        memmove(*(v5 + 10), v43, v55 - v51);
        v55 = *(v5 + 11);
      }

      v57 = &v43[v56];
      v58 = v55;
      if (&v43[v56] != v48)
      {
        v58 = v55;
        do
        {
          v59 = *v57;
          v57 += 8;
          *v58 = v59;
          v58 += 8;
        }

        while (v57 != v48);
      }

      v60 = v58;
    }

    *(v5 + 11) = v60;
    v61 = objc_msgSend_colors(keyframeCopy, v46, v47);
    v64 = objc_msgSend_colors(keyframeCopy, v62, v63);
    sub_26229CA04(v5 + 13, v61, (v64 + 16 * v10), (v64 + 16 * v10 - v61) >> 4);
    v67 = objc_msgSend_identifier(keyframeCopy, v65, v66);
    v68 = *(v5 + 17);
    *(v5 + 17) = v67;

    objc_msgSend_cameraPose(keyframeCopy, v69, v70);
    *(v5 + 10) = v71;
    *(v5 + 11) = v72;
    *(v5 + 12) = v73;
    *(v5 + 13) = v74;
    objc_msgSend_timestamp(keyframeCopy, v75, v76);
    *(v5 + 18) = v77;
    *(v5 + 32) = 0;
  }

  return v5;
}

- (void)filterOutPointsBeyondDistance:(float)distance
{
  v5 = *self->_anon_8;
  v4 = *&self->_anon_8[8];
  if (v4 == v5)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = distance * distance;
    do
    {
      v10 = vmulq_f32(*(v5 + 16 * v8), *(v5 + 16 * v8));
      if ((v10.f32[2] + vaddv_f32(*v10.f32)) < v9)
      {
        v11 = v7 - v6;
        v12 = (v7 - v6) >> 3;
        v13 = v12 + 1;
        if ((v12 + 1) >> 61)
        {
          sub_2621CBEB0();
        }

        if (-v6 >> 2 > v13)
        {
          v13 = -v6 >> 2;
        }

        if (-v6 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          sub_2621CBEC8(v14);
        }

        v15 = (v7 - v6) >> 3;
        v16 = (8 * v12);
        v17 = (8 * v12 - 8 * v15);
        *v16 = v8;
        v7 = v16 + 1;
        memcpy(v17, v6, v11);
        if (v6)
        {
          operator delete(v6);
        }

        v6 = v17;
        v5 = *self->_anon_8;
        v4 = *&self->_anon_8[8];
      }

      ++v8;
    }

    while (v8 < (v4 - v5) >> 4);
  }

  sub_2622AB5CC(self, (v7 - v6) >> 3, v6);
  if (v6)
  {

    operator delete(v6);
  }
}

- (void)translateBy:(RSKeyframeExtended *)self
{
  v3 = vaddq_f32(*&self[1]._anon_20[16], v2);
  v3.i32[3] = HIDWORD(*&self[1]._anon_20[16]);
  *&self[1]._anon_20[16] = v3;
}

- (void)rotateAlongZAxisRightHand:(float)hand
{
  v6 = __sincosf_stret(hand);
  *v5.i32 = v6.__cosval;
  *v4.i8 = v6;
  v7 = 0;
  *&v5.i32[1] = -v6.__sinval;
  v8 = vzip1q_s32(v5, 0);
  v9 = vzip1q_s32(v4, 0);
  v10 = vzip1q_s32(v8, v9);
  v11 = vzip2q_s32(v8, v9);
  v12 = *&self[1]._anon_8[8];
  v13 = *self[1]._anon_20;
  v14 = *&self[1]._anon_20[16];
  v18[0] = *&self[1].super.isa;
  v18[1] = v12;
  v18[2] = v13;
  v18[3] = v14;
  do
  {
    v19[v7] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v18[v7])), v11, *&v18[v7], 1), xmmword_2623A7700, v18[v7], 2), xmmword_2623A7810, v18[v7], 3);
    ++v7;
  }

  while (v7 != 4);
  v15 = v19[1];
  v16 = v19[2];
  v17 = v19[3];
  *&self[1].super.isa = v19[0];
  *&self[1]._anon_8[8] = v15;
  *self[1]._anon_20 = v16;
  *&self[1]._anon_20[16] = v17;
}

- (void)setPoints:(RSKeyframeExtended *)self semanticLabels:(SEL)labels semanticVotes:colors:count:
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v12 = v6;
  sub_26229CA04(self->_anon_8, v2, &v2[16 * v6], v6);
  sub_2621CA9DC(self->_anon_38, v10, &v10[4 * v7], v12);
  sub_26223200C(self->_anon_50, v9, &v9[8 * v7], v12);
  sub_26229CA04(self->_anon_68, v8, &v8[16 * v7], v12);
  sub_262232448(self->_anon_20, (*&self->_anon_8[8] - *self->_anon_8) >> 4);
  v13 = *self->_anon_8;
  v14 = *&self->_anon_8[8];
  if (v13 != v14)
  {
    v15 = *self->_anon_20;
    do
    {
      v16 = *v13++;
      *v15++ = vaddq_f32(*&self[1]._anon_20[16], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*&self[1].super.isa, v16.f32[0]), *&self[1]._anon_8[8], *v16.f32, 1), *self[1]._anon_20, v16, 2));
    }

    while (v13 != v14);
  }
}

- (RSKeyframeExtended)initWithDictionary:(id)dictionary withGroupId:(unsigned int)id
{
  dictionaryCopy = dictionary;
  v142.receiver = self;
  v142.super_class = RSKeyframeExtended;
  v7 = [(RSKeyframeExtended *)&v142 init];
  v135 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v8, @"identifier");
  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  v11 = objc_msgSend_initWithUUIDString_(v9, v10, v135);
  v12 = *(v7 + 17);
  *(v7 + 17) = v11;

  v14 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v13, @"cameraPose");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v134 = v15;
  v19 = objc_msgSend_bytes(v16, v17, v18);
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[3];
  *(v7 + 12) = v19[2];
  *(v7 + 13) = v22;
  *(v7 + 10) = v20;
  *(v7 + 11) = v21;
  v24 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v23, @"count");
  v27 = objc_msgSend_integerValue(v24, v25, v26);

  v29 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v28, @"points");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = v31;
  v35 = objc_msgSend_bytes(v32, v33, v34);
  v38 = objc_msgSend_length(v31, v36, v37);
  v136 = 0;
  v137 = 0;
  v138 = 0;
  sub_26225E46C(&v136, v35, &v35[v38 & 0xFFFFFFFFFFFFFFFCLL], v38 >> 2);

  v39 = v136;
  sub_26229CBDC(&v139, ((v137 - v136) >> 2) / 3uLL);
  v41 = v139;
  v42 = v140;
  if (v140 != v139)
  {
    v43 = 0;
    v44 = 0;
    v45 = v39;
    do
    {
      v46 = v41 + v43;
      v47 = *v45;
      *(v46 + 8) = v45[2];
      *v46 = v47;
      ++v44;
      v41 = v139;
      v42 = v140;
      v45 += 3;
      v43 += 16;
    }

    while (v44 < (v140 - v139) >> 4);
  }

  v48 = *(v7 + 1);
  if (v48)
  {
    *(v7 + 2) = v48;
    operator delete(v48);
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    v41 = v139;
    v42 = v140;
  }

  *(v7 + 1) = v41;
  *(v7 + 2) = v42;
  *(v7 + 3) = v141;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  if (v39)
  {
    operator delete(v39);
  }

  v49 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v40, @"pointsToWorld");
  objc_opt_class();
  idCopy = id;
  if (objc_opt_isKindOfClass())
  {
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  if (v50)
  {
    v51 = v50;
    v52 = v51;
    v55 = objc_msgSend_bytes(v52, v53, v54);
    v58 = objc_msgSend_length(v51, v56, v57);
    v136 = 0;
    v137 = 0;
    v138 = 0;
    sub_26225E46C(&v136, v55, &v55[v58 & 0xFFFFFFFFFFFFFFFCLL], v58 >> 2);

    v59 = v136;
    sub_26229CBDC(&v139, ((v137 - v136) >> 2) / 3uLL);
    v61 = v139;
    v62 = v140;
    if (v140 != v139)
    {
      v63 = 0;
      v64 = 0;
      v65 = v59;
      do
      {
        v66 = v61 + v63;
        v67 = *v65;
        *(v66 + 8) = v65[2];
        *v66 = v67;
        ++v64;
        v61 = v139;
        v62 = v140;
        v65 += 3;
        v63 += 16;
      }

      while (v64 < (v140 - v139) >> 4);
    }

    v68 = *(v7 + 4);
    if (v68)
    {
      *(v7 + 5) = v68;
      operator delete(v68);
      *(v7 + 4) = 0;
      *(v7 + 5) = 0;
      *(v7 + 6) = 0;
      v61 = v139;
      v62 = v140;
    }

    *(v7 + 4) = v61;
    *(v7 + 5) = v62;
    *(v7 + 6) = v141;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    if (v59)
    {
      operator delete(v59);
    }
  }

  else
  {
    sub_262232448(v7 + 4, (*(v7 + 2) - *(v7 + 1)) >> 4);
    v69 = *(v7 + 1);
    v70 = *(v7 + 2);
    if (v69 != v70)
    {
      v71 = *(v7 + 4);
      do
      {
        v72 = *v69++;
        *v71++ = vaddq_f32(*(v7 + 13), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(v7 + 10), v72.f32[0]), *(v7 + 11), *v72.f32, 1), *(v7 + 12), v72, 2));
      }

      while (v69 != v70);
    }
  }

  v73 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v60, @"semanticLabels");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v74 = v73;
  }

  else
  {
    v74 = 0;
  }

  v75 = v74;
  v76 = v75;
  v79 = objc_msgSend_bytes(v76, v77, v78);
  v82 = objc_msgSend_length(v75, v80, v81);
  v136 = 0;
  v137 = 0;
  v138 = 0;
  sub_2622ACF80(&v136, v79, &v79[v82], v82);

  v83 = v136;
  sub_2622AD0AC(&v139, (v137 - v136) >> 2);
  v85 = v139;
  v86 = v140;
  if (v140 != v139)
  {
    v87 = 0;
    do
    {
      *(v85 + 4 * v87) = v83[v87];
      ++v87;
      v85 = v139;
      v86 = v140;
    }

    while (v87 < (v140 - v139) >> 2);
  }

  v88 = *(v7 + 7);
  if (v88)
  {
    *(v7 + 8) = v88;
    operator delete(v88);
    *(v7 + 7) = 0;
    *(v7 + 8) = 0;
    *(v7 + 9) = 0;
    v85 = v139;
    v86 = v140;
  }

  *(v7 + 7) = v85;
  *(v7 + 8) = v86;
  *(v7 + 9) = v141;
  v140 = 0;
  v141 = 0;
  v139 = 0;
  if (v83)
  {
    operator delete(v83);
  }

  v89 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v84, @"semanticVotes");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v90 = v89;
  }

  else
  {
    v90 = 0;
  }

  v91 = v90;
  v92 = v91;
  v95 = objc_msgSend_bytes(v92, v93, v94);
  v98 = objc_msgSend_length(v91, v96, v97);
  v136 = 0;
  v137 = 0;
  v138 = 0;
  sub_2622AD124(&v136, v95, &v95[v98 & 0xFFFFFFFFFFFFFFFELL], v98 >> 1);

  v99 = v136;
  sub_2622AD24C(&v139, ((v137 - v136) >> 1) >> 2);
  v101 = v139;
  v102 = v140;
  if (v140 != v139)
  {
    v103 = 0;
    do
    {
      *(v101 + 8 * v103) = v99[v103];
      ++v103;
      v101 = v139;
      v102 = v140;
    }

    while (v103 < (v140 - v139) >> 3);
  }

  v104 = *(v7 + 10);
  if (v104)
  {
    *(v7 + 11) = v104;
    operator delete(v104);
    *(v7 + 10) = 0;
    *(v7 + 11) = 0;
    *(v7 + 12) = 0;
    v101 = v139;
    v102 = v140;
  }

  *(v7 + 10) = v101;
  *(v7 + 11) = v102;
  *(v7 + 12) = v141;
  v140 = 0;
  v141 = 0;
  v139 = 0;
  if (v99)
  {
    operator delete(v99);
  }

  v105 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v100, @"colors");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v106 = v105;
  }

  else
  {
    v106 = 0;
  }

  v107 = v106;
  v108 = v107;
  v111 = objc_msgSend_bytes(v108, v109, v110);
  v114 = objc_msgSend_length(v107, v112, v113);
  v136 = 0;
  v137 = 0;
  v138 = 0;
  sub_26225E46C(&v136, v111, &v111[v114 & 0xFFFFFFFFFFFFFFFCLL], v114 >> 2);

  v115 = v136;
  sub_26229CBDC(&v139, ((v137 - v136) >> 2) / 3uLL);
  v117 = v139;
  v118 = v140;
  if (v140 != v139)
  {
    v119 = 0;
    v120 = 0;
    v121 = v115;
    do
    {
      v122 = v117 + v119;
      v123 = *v121;
      *(v122 + 8) = v121[2];
      *v122 = v123;
      ++v120;
      v117 = v139;
      v118 = v140;
      v121 += 3;
      v119 += 16;
    }

    while (v120 < (v140 - v139) >> 4);
  }

  v124 = *(v7 + 13);
  if (v124)
  {
    *(v7 + 14) = v124;
    operator delete(v124);
    *(v7 + 13) = 0;
    *(v7 + 14) = 0;
    *(v7 + 15) = 0;
    v117 = v139;
    v118 = v140;
  }

  *(v7 + 13) = v117;
  *(v7 + 14) = v118;
  *(v7 + 15) = v141;
  v140 = 0;
  v141 = 0;
  v139 = 0;
  if (v115)
  {
    operator delete(v115);
  }

  v125 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v116, @"timestamp");

  if (v125)
  {
    v127 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v126, @"timestamp");
    objc_msgSend_doubleValue(v127, v128, v129);
    *(v7 + 18) = v130;
  }

  *(v7 + 32) = idCopy;
  if (v27 == (*(v7 + 2) - *(v7 + 1)) >> 4 && v27 == (*(v7 + 5) - *(v7 + 4)) >> 4 && v27 == (*(v7 + 11) - *(v7 + 10)) >> 3 && v27 == (*(v7 + 8) - *(v7 + 7)) >> 2 && v27 == (*(v7 + 14) - *(v7 + 13)) >> 4)
  {
    v131 = v7;
  }

  else
  {
    v131 = 0;
  }

  return v131;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(RSKeyframeExtended);
  objc_msgSend_setIdentifier_(v4, v5, self->identifier);
  objc_msgSend_setCameraPose_(v4, v6, v7, *&self[1].super.isa, *&self[1]._anon_8[8], *self[1]._anon_20, *&self[1]._anon_20[16]);
  objc_msgSend_setGroupId_(v4, v8, self->groupId);
  objc_msgSend_setTimestamp_(v4, v9, v10, self->timestamp);
  if (v4 != self)
  {
    sub_26229CA04(v4->_anon_8, *self->_anon_8, *&self->_anon_8[8], (*&self->_anon_8[8] - *self->_anon_8) >> 4);
    sub_26229CA04(v4->_anon_20, *self->_anon_20, *&self->_anon_20[8], (*&self->_anon_20[8] - *self->_anon_20) >> 4);
    sub_2621CA9DC(v4->_anon_38, *self->_anon_38, *&self->_anon_38[8], (*&self->_anon_38[8] - *self->_anon_38) >> 2);
    sub_26223200C(v4->_anon_50, *self->_anon_50, *&self->_anon_50[8], (*&self->_anon_50[8] - *self->_anon_50) >> 3);
    sub_26229CA04(v4->_anon_68, *self->_anon_68, *&self->_anon_68[8], (*&self->_anon_68[8] - *self->_anon_68) >> 4);
  }

  return v4;
}

@end