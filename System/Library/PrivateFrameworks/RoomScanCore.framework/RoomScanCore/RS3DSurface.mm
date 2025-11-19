@interface RS3DSurface
- ($B105B208EB85D2C79E2C4B589F71A8CA)edgeConfidence;
- (BOOL)fillWithDictionaryRepresentation:(id)a3;
- (RS3DSurface)init;
- (RS3DSurface)initWithCoder:(id)a3;
- (RS3DSurface)initWithDictionaryRepresentation:(id)a3 WithGroupId:(unsigned int)a4;
- (__n128)initWithQuad:(__n128)a3 withConfidence:(__n128)a4 withColor:(__n128)a5 withGroupId:(float)a6 withType:(__n128)a7;
- (double)dimensions;
- (double)transform;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)rotateAlongZAxisRightHand:(float)a3;
- (void)translateBy:(RS3DSurface *)self;
@end

@implementation RS3DSurface

- (id).cxx_construct
{
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- ($B105B208EB85D2C79E2C4B589F71A8CA)edgeConfidence
{
  v2 = self->edgeConfidence.confidence[0];
  v3 = self->edgeConfidence.confidence[1];
  v4 = self->edgeConfidence.confidence[2];
  v5 = self->edgeConfidence.confidence[3];
  result.var0[3] = v5;
  result.var0[2] = v4;
  result.var0[1] = v3;
  result.var0[0] = v2;
  return result;
}

- (void)translateBy:(RS3DSurface *)self
{
  for (i = 0; i != 64; i += 16)
  {
    *(&self[1].super.isa + i) = vaddq_f32(*(&self[1].super.isa + i), v2);
  }

  v4 = *self->_anon_8;
  if (*&self->_anon_8[8] != v4)
  {
    v5 = 0;
    do
    {
      *(v4 + 16 * v5) = vaddq_f32(*(v4 + 16 * v5), v2);
      ++v5;
      v4 = *self->_anon_8;
    }

    while (v5 < (*&self->_anon_8[8] - v4) >> 4);
  }
}

- (void)rotateAlongZAxisRightHand:(float)a3
{
  v4 = __sincosf_stret(a3);
  v5 = 0;
  v6.i64[1] = 0;
  v6.f32[0] = -v4.__sinval;
  v6.i32[1] = LODWORD(v4.__cosval);
  do
  {
    *(&self[1].super.isa + v5) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(__PAIR64__(LODWORD(v4.__sinval), LODWORD(v4.__cosval)), COERCE_FLOAT(*(&self[1].super.isa + v5))), v6, *(&self[1].super.isa + v5), 1), xmmword_2623A7700, *(&self[1].super.isa + v5), 2);
    v5 += 16;
  }

  while (v5 != 64);
  v7 = *self->_anon_8;
  if (*&self->_anon_8[8] != v7)
  {
    v8 = 0;
    do
    {
      *(v7 + 16 * v8) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(__PAIR64__(LODWORD(v4.__sinval), LODWORD(v4.__cosval)), COERCE_FLOAT(*(v7 + 16 * v8))), v6, *(v7 + 16 * v8), 1), xmmword_2623A7700, *(v7 + 16 * v8), 2);
      ++v8;
      v7 = *self->_anon_8;
    }

    while (v8 < (*&self->_anon_8[8] - v7) >> 4);
  }
}

- (__n128)initWithQuad:(__n128)a3 withConfidence:(__n128)a4 withColor:(__n128)a5 withGroupId:(float)a6 withType:(__n128)a7
{
  v20.receiver = a1;
  v20.super_class = RS3DSurface;
  v13 = [(RS3DSurface *)&v20 init];
  *&v13[1].super.isa = a2;
  *&v13[1]._anon_8[8] = a3;
  *&v13[1]._polygonEdgeStates.__begin_ = a4;
  *&v13[1]._polygonEdgeStates.__cap_ = a5;
  v13->confidence = a6;
  result = a7;
  *v13->color = a7;
  v13->groupId = a9;
  v13->type = a10;
  return result;
}

- (RS3DSurface)initWithCoder:(id)a3
{
  v4 = a3;
  v65.receiver = self;
  v65.super_class = RS3DSurface;
  v6 = [(RS3DSurface *)&v65 init];
  if (v6)
  {
    v6->type = objc_msgSend_decodeIntForKey_(v4, v5, @"type");
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v64 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v63 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v11, v64, @"quad");
    sub_2622C2794(v63, &v6[1]);
    objc_msgSend_decodeFloatForKey_(v4, v12, @"conf");
    v6->confidence = v13;
    v62 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v14, v64, @"color");
    sub_2622C2884(v62, v6->color);
    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"identifier");
    identifier = v6->identifier;
    v6->identifier = v17;

    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"parentIdentifier");
    parentIdentifier = v6->parentIdentifier;
    v6->parentIdentifier = v21;

    objc_msgSend_decodeFloatForKey_(v4, v23, @"offset");
    v6->offset = v24;
    objc_msgSend_decodeFloatForKey_(v4, v25, @"depth");
    v6->depth = v26;
    v61 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v27, v64, @"polygon");
    sub_2622C29BC(v61, v6->_anon_8);
    v60 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v28, v64, @"polygon_edge_states");
    sub_2622C2B70(v60, &v6->_polygonEdgeStates);
    v32 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v29, v64, @"polygon_edge_score");
    for (i = 0; objc_msgSend_count(v32, v30, v31) > i; ++i)
    {
      v35 = objc_msgSend_objectAtIndexedSubscript_(v32, v34, i);
      objc_msgSend_floatValue(v35, v36, v37);
      end = v6->_polygonEdgeConfidence.__end_;
      cap = v6->_polygonEdgeConfidence.__cap_;
      if (end >= cap)
      {
        begin = v6->_polygonEdgeConfidence.__begin_;
        v43 = end - begin;
        v44 = (end - begin) >> 2;
        v45 = v44 + 1;
        if ((v44 + 1) >> 62)
        {
          sub_2621CBEB0();
        }

        v46 = cap - begin;
        if (v46 >> 1 > v45)
        {
          v45 = v46 >> 1;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v47 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v47 = v45;
        }

        if (v47)
        {
          sub_2621C7F54(v47);
        }

        v48 = (end - begin) >> 2;
        v49 = (4 * v44);
        v50 = (4 * v44 - 4 * v48);
        *v49 = v38;
        v41 = (v49 + 1);
        memcpy(v50, begin, v43);
        v51 = v6->_polygonEdgeConfidence.__begin_;
        v6->_polygonEdgeConfidence.__begin_ = v50;
        v6->_polygonEdgeConfidence.__end_ = v41;
        v6->_polygonEdgeConfidence.__cap_ = 0;
        if (v51)
        {
          operator delete(v51);
        }
      }

      else
      {
        *end = v38;
        v41 = (end + 4);
      }

      v6->_polygonEdgeConfidence.__end_ = v41;
    }

    v53 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v52, v64, @"polygon_edge_sides");
    sub_2622C2D10(v53, &v6->_polygonEdgeSides);
    v55 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v54, v64, @"appear_pose_pts");
    sub_2622C2EB0(v55, v6->appearPosePts);

    v57 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v56, v64, @"appear_major_views");
    sub_2622C2EB0(v57, v6->appearMajorViews);

    v6->storyLevel = objc_msgSend_decodeIntegerForKey_(v4, v58, @"story");
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v61 = a3;
  objc_msgSend_encodeInt_forKey_(v61, v4, self->type, @"type");
  v7 = sub_2622C3298(&self[1], v5, v6);
  objc_msgSend_encodeObject_forKey_(v61, v8, v7, @"quad");

  *&v9 = self->confidence;
  v11 = objc_msgSend_encodeFloat_forKey_(v61, v10, @"conf", v9);
  v14 = sub_2622C33C8(*self->color, v11, v12, v13);
  objc_msgSend_encodeObject_forKey_(v61, v15, v14, @"color");

  objc_msgSend_encodeObject_forKey_(v61, v16, self->identifier, @"identifier");
  objc_msgSend_encodeObject_forKey_(v61, v17, self->parentIdentifier, @"parentIdentifier");
  *&v18 = self->depth;
  objc_msgSend_encodeFloat_forKey_(v61, v19, @"depth", v18);
  *&v20 = self->offset;
  objc_msgSend_encodeFloat_forKey_(v61, v21, @"offset", v20);
  v24 = objc_msgSend_array(MEMORY[0x277CBEB18], v22, v23);
  v27 = v24;
  v28 = *self->_anon_8;
  v29 = *&self->_anon_8[8];
  while (v28 != v29)
  {
    v30 = sub_2622C3514(*v28, v24, v25, v26);
    objc_msgSend_addObject_(v27, v31, v30);

    ++v28;
  }

  objc_msgSend_encodeObject_forKey_(v61, v25, v27, @"polygon");

  v34 = sub_2622C362C(&self->_polygonEdgeStates.__begin_, v32, v33);
  objc_msgSend_encodeObject_forKey_(v61, v35, v34, @"polygon_edge_states");

  v40 = objc_msgSend_array(MEMORY[0x277CBEB18], v36, v37);
  begin = self->_polygonEdgeConfidence.__begin_;
  for (i = self->_polygonEdgeConfidence.__end_; begin != i; ++begin)
  {
    *&v41 = *begin;
    v44 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v38, v39, v41);
    objc_msgSend_addObject_(v40, v45, v44);
  }

  objc_msgSend_encodeObject_forKey_(v61, v38, v40, @"polygon_edge_score");

  v48 = sub_2622C3758(&self->_polygonEdgeSides.__begin_, v46, v47);
  objc_msgSend_encodeObject_forKey_(v61, v49, v48, @"polygon_edge_sides");

  v53 = sub_2622C3514(*self->appearPosePts, v50, v51, v52);
  objc_msgSend_encodeObject_forKey_(v61, v54, v53, @"appear_pose_pts");

  v58 = sub_2622C3514(*self->appearMajorViews, v55, v56, v57);
  objc_msgSend_encodeObject_forKey_(v61, v59, v58, @"appear_major_views");

  objc_msgSend_encodeInteger_forKey_(v61, v60, self->storyLevel, @"story");
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = *&self[1]._polygonEdgeStates.__cap_;
  v7 = *&self[1].super.isa;
  v6 = *&self[1]._anon_8[8];
  *&v4[1]._polygonEdgeStates.__begin_ = *&self[1]._polygonEdgeStates.__begin_;
  *&v4[1]._polygonEdgeStates.__cap_ = v5;
  *&v4[1].super.isa = v7;
  *&v4[1]._anon_8[8] = v6;
  v4->confidence = self->confidence;
  *v4->color = *self->color;
  v4->type = self->type;
  v4->groupId = self->groupId;
  objc_storeStrong(&v4->identifier, self->identifier);
  objc_storeStrong(&v4->parentIdentifier, self->parentIdentifier);
  v4->wallStatus = self->wallStatus;
  v4->parentWallStatus = self->parentWallStatus;
  *v4->normal = *self->normal;
  v4->edgeStates = self->edgeStates;
  v4->edgeConfidence = self->edgeConfidence;
  *v4->appearPosePts = *self->appearPosePts;
  *v4->appearMajorViews = *self->appearMajorViews;
  v4->individualUpdate = self->individualUpdate;
  v4->offset = self->offset;
  v4->depth = self->depth;
  if (v4 != self)
  {
    sub_26229CA04(v4->_anon_8, *self->_anon_8, *&self->_anon_8[8], (*&self->_anon_8[8] - *self->_anon_8) >> 4);
    begin = v4->_polygonEdgeStates.__begin_;
    v9 = self->_polygonEdgeStates.__begin_;
    end = self->_polygonEdgeStates.__end_;
    v11 = end - v9;
    cap = v4->_polygonEdgeStates.__cap_;
    if (cap - begin < end - v9)
    {
      if (begin)
      {
        v4->_polygonEdgeStates.__end_ = begin;
        operator delete(begin);
        cap = 0;
        v4->_polygonEdgeStates.__begin_ = 0;
        v4->_polygonEdgeStates.__end_ = 0;
        v4->_polygonEdgeStates.__cap_ = 0;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        v13 = 2 * cap;
        if (2 * cap <= v11)
        {
          v13 = end - v9;
        }

        if (cap >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        sub_262236A0C(&v4->_polygonEdgeStates, v14);
      }

      sub_2621CBEB0();
    }

    v15 = v4->_polygonEdgeStates.__end_;
    v16 = v15 - begin;
    if (v15 - begin >= v11)
    {
      if (end != v9)
      {
        memmove(v4->_polygonEdgeStates.__begin_, self->_polygonEdgeStates.__begin_, end - v9);
      }

      v19 = &begin[v11];
    }

    else
    {
      if (v15 != begin)
      {
        memmove(v4->_polygonEdgeStates.__begin_, self->_polygonEdgeStates.__begin_, v15 - begin);
        v15 = v4->_polygonEdgeStates.__end_;
      }

      v17 = &v9[v16];
      v18 = end - &v9[v16];
      if (v18)
      {
        memmove(v15, v17, v18);
      }

      v19 = &v15[v18];
    }

    v4->_polygonEdgeStates.__end_ = v19;
    sub_2621CA9DC(&v4->_polygonEdgeConfidence.__begin_, self->_polygonEdgeConfidence.__begin_, self->_polygonEdgeConfidence.__end_, self->_polygonEdgeConfidence.__end_ - self->_polygonEdgeConfidence.__begin_);
    v20 = v4->_polygonEdgeSides.__begin_;
    v21 = self->_polygonEdgeSides.__begin_;
    v22 = self->_polygonEdgeSides.__end_;
    v23 = v22 - v21;
    v24 = v4->_polygonEdgeSides.__cap_;
    if (v24 - v20 < v22 - v21)
    {
      if (v20)
      {
        v4->_polygonEdgeSides.__end_ = v20;
        operator delete(v20);
        v24 = 0;
        v4->_polygonEdgeSides.__begin_ = 0;
        v4->_polygonEdgeSides.__end_ = 0;
        v4->_polygonEdgeSides.__cap_ = 0;
      }

      if ((v23 & 0x8000000000000000) == 0)
      {
        v25 = 2 * v24;
        if (2 * v24 <= v23)
        {
          v25 = v22 - v21;
        }

        if (v24 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v26 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v25;
        }

        sub_262236A0C(&v4->_polygonEdgeSides, v26);
      }

      sub_2621CBEB0();
    }

    v27 = v4->_polygonEdgeSides.__end_;
    v28 = v27 - v20;
    if (v27 - v20 >= v23)
    {
      if (v22 != v21)
      {
        memmove(v4->_polygonEdgeSides.__begin_, v21, v22 - v21);
      }

      v30 = &v20[v23];
    }

    else
    {
      if (v27 != v20)
      {
        memmove(v4->_polygonEdgeSides.__begin_, v21, v27 - v20);
        v27 = v4->_polygonEdgeSides.__end_;
      }

      v29 = v22 - &v21[v28];
      if (v22 != &v21[v28])
      {
        memmove(v27, &v21[v28], v29);
      }

      v30 = &v27[v29];
    }

    v4->_polygonEdgeSides.__end_ = v30;
  }

  return v4;
}

- (id)dictionaryRepresentation
{
  v124 = *MEMORY[0x277D85DE8];
  v109[0] = @"type";
  v107 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], a2, self->type);
  v110[0] = v107;
  v109[1] = @"quad";
  v97 = sub_2622C3298(&self[1], v3, v4);
  v110[1] = v97;
  v109[2] = @"conf";
  *&v5 = self->confidence;
  v96 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v5);
  v110[2] = v96;
  v109[3] = @"color";
  v98 = sub_2622C33C8(*self->color, v96, v8, v9);
  v110[3] = v98;
  v109[4] = @"groupId";
  v99 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v10, self->groupId);
  v110[4] = v99;
  v109[5] = @"wall_status";
  v100 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v11, self->wallStatus);
  v110[5] = v100;
  v109[6] = @"parent_wall_status";
  v101 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v12, self->parentWallStatus);
  v110[6] = v101;
  v109[7] = @"individualUpdate";
  v102 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v13, self->individualUpdate);
  v110[7] = v102;
  v109[8] = @"identifier";
  v111 = objc_msgSend_UUIDString(self->identifier, v14, v15);
  v109[9] = @"parentIdentifier";
  parentIdentifier = self->parentIdentifier;
  v104 = v111;
  if (parentIdentifier)
  {
    v19 = objc_msgSend_UUIDString(parentIdentifier, v16, v17);
  }

  else
  {
    v19 = &stru_2874F1610;
  }

  v112 = v19;
  v109[10] = @"edgeStates";
  v105 = parentIdentifier;
  v108 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17, v19);
  v21 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v20, self->edgeStates.states[0]);
  objc_msgSend_addObject_(v108, v22, v21);

  v24 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v23, self->edgeStates.states[1]);
  objc_msgSend_addObject_(v108, v25, v24);

  v27 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v26, self->edgeStates.states[2]);
  objc_msgSend_addObject_(v108, v28, v27);

  v30 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v29, self->edgeStates.states[3]);
  objc_msgSend_addObject_(v108, v31, v30);

  v113 = v108;
  v109[11] = @"edgeConfidence";
  v34 = objc_msgSend_array(MEMORY[0x277CBEB18], v32, v33);
  *&v35 = self->edgeConfidence.confidence[0];
  v38 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v36, v37, v35);
  objc_msgSend_addObject_(v34, v39, v38);

  *&v40 = self->edgeConfidence.confidence[1];
  v43 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v41, v42, v40);
  objc_msgSend_addObject_(v34, v44, v43);

  *&v45 = self->edgeConfidence.confidence[2];
  v48 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v46, v47, v45);
  objc_msgSend_addObject_(v34, v49, v48);

  *&v50 = self->edgeConfidence.confidence[3];
  v53 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v51, v52, v50);
  objc_msgSend_addObject_(v34, v54, v53);

  v114 = v34;
  v109[12] = @"offset";
  *&v55 = self->offset;
  v103 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v56, v57, v55);
  v115 = v103;
  v109[13] = @"depth";
  *&v58 = self->depth;
  v106 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v59, v60, v58);
  v116 = v106;
  v109[14] = @"polygon";
  v63 = objc_msgSend_array(MEMORY[0x277CBEB18], v61, v62);
  v66 = v63;
  v67 = *self->_anon_8;
  v68 = *&self->_anon_8[8];
  while (v67 != v68)
  {
    v69 = sub_2622C3514(*v67, v63, v64, v65);
    objc_msgSend_addObject_(v66, v70, v69);

    ++v67;
  }

  v117 = v66;
  v109[15] = @"polygon_edge_states";
  v71 = sub_2622C362C(&self->_polygonEdgeStates.__begin_, v64, v65);
  v118 = v71;
  v109[16] = @"polygon_edge_score";
  v76 = objc_msgSend_array(MEMORY[0x277CBEB18], v72, v73);
  begin = self->_polygonEdgeConfidence.__begin_;
  end = self->_polygonEdgeConfidence.__end_;
  while (begin != end)
  {
    *&v77 = *begin;
    v80 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v74, v75, v77);
    objc_msgSend_addObject_(v76, v81, v80);

    ++begin;
  }

  v119 = v76;
  v109[17] = @"polygon_edge_sides";
  v82 = sub_2622C3758(&self->_polygonEdgeSides.__begin_, v74, v75);
  v120 = v82;
  v109[18] = @"appear_pose_pts";
  v85 = sub_2622C3514(*self->appearPosePts, v82, v83, v84);
  v121 = v85;
  v109[19] = @"appear_major_views";
  v88 = sub_2622C3514(*self->appearMajorViews, v85, v86, v87);
  v122 = v88;
  v109[20] = @"story";
  v90 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v89, self->storyLevel);
  v123 = v90;
  v92 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v91, v110, v109, 21);

  if (v105)
  {
  }

  v93 = *MEMORY[0x277D85DE8];

  return v92;
}

- (RS3DSurface)initWithDictionaryRepresentation:(id)a3 WithGroupId:(unsigned int)a4
{
  v6 = a3;
  v9 = objc_msgSend_init(self, v7, v8);
  if (objc_msgSend_fillWithDictionaryRepresentation_(v9, v10, v6))
  {
    v9[28] = a4;
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)fillWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v141 = v4;
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"type");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    self->type = objc_msgSend_intValue(v7, v8, v9);
  }

  v11 = objc_msgSend_objectForKeyedSubscript_(v4, v10, @"quad");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 && (v13 = sub_2622C2794(v12, &self[1]), v12, v13))
  {
    v15 = objc_msgSend_objectForKeyedSubscript_(v4, v14, @"conf");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      objc_msgSend_floatValue(v16, v18, v19);
    }

    else
    {
      v20 = 0.0;
    }

    self->confidence = v20;

    v22 = objc_msgSend_objectForKeyedSubscript_(v4, v21, @"wall_status");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      self->wallStatus = objc_msgSend_intValue(v23, v24, v25);
    }

    v27 = objc_msgSend_objectForKeyedSubscript_(v4, v26, @"parent_wall_status");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28)
    {
      self->parentWallStatus = objc_msgSend_intValue(v28, v29, v30);
    }

    v32 = objc_msgSend_objectForKeyedSubscript_(v4, v31, @"color");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    if (v33)
    {
      sub_2622C2884(v33, self->color);
    }

    v35 = objc_msgSend_objectForKeyedSubscript_(v4, v34, @"identifier");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    v37 = objc_alloc(MEMORY[0x277CCAD78]);
    v39 = objc_msgSend_initWithUUIDString_(v37, v38, v36);
    identifier = self->identifier;
    self->identifier = v39;

    if (!self->identifier)
    {
      v41 = objc_opt_new();
      v42 = self->identifier;
      self->identifier = v41;
    }

    v44 = objc_msgSend_objectForKeyedSubscript_(v4, v43, @"parentIdentifier");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    if (objc_msgSend_length(v45, v46, v47))
    {
      v48 = objc_alloc(MEMORY[0x277CCAD78]);
      v50 = objc_msgSend_initWithUUIDString_(v48, v49, v45);
      parentIdentifier = self->parentIdentifier;
      self->parentIdentifier = v50;
    }

    v53 = objc_msgSend_objectForKeyedSubscript_(v4, v52, @"individualUpdate");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = v53;
    }

    else
    {
      v54 = 0;
    }

    if (v54)
    {
      self->individualUpdate = objc_msgSend_intValue(v54, v55, v56);
    }

    v58 = objc_msgSend_objectForKeyedSubscript_(v4, v57, @"edgeStates");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    if (v59)
    {
      v60 = v59;
      if (objc_msgSend_count(v60, v61, v62) == 4)
      {
        for (i = 0; objc_msgSend_count(v60, v63, v64) > i; ++i)
        {
          v67 = objc_msgSend_objectAtIndexedSubscript_(v60, v66, i);
          self->edgeStates.states[i] = objc_msgSend_intValue(v67, v68, v69);
        }
      }
    }

    v71 = objc_msgSend_objectForKeyedSubscript_(v4, v70, @"edgeConfidence");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v72 = v71;
    }

    else
    {
      v72 = 0;
    }

    if (v72)
    {
      v73 = v72;
      if (objc_msgSend_count(v73, v74, v75) == 4)
      {
        for (j = 0; objc_msgSend_count(v73, v76, v77) > j; ++j)
        {
          v80 = objc_msgSend_objectAtIndexedSubscript_(v73, v79, j);
          objc_msgSend_floatValue(v80, v81, v82);
          self->edgeConfidence.confidence[j] = v83;
        }
      }
    }

    v85 = objc_msgSend_objectForKeyedSubscript_(v4, v84, @"offset");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v86 = v85;
    }

    else
    {
      v86 = 0;
    }

    if (v86)
    {
      objc_msgSend_floatValue(v86, v87, v88);
      self->offset = v89;
    }

    v91 = objc_msgSend_objectForKeyedSubscript_(v4, v90, @"depth");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v92 = v91;
    }

    else
    {
      v92 = 0;
    }

    if (v92)
    {
      objc_msgSend_floatValue(v92, v93, v94);
      self->depth = v95;
    }

    v97 = objc_msgSend_objectForKeyedSubscript_(v4, v96, @"polygon");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v98 = v97;
    }

    else
    {
      v98 = 0;
    }

    if (v98)
    {
      sub_2622C29BC(v98, self->_anon_8);
    }

    v100 = objc_msgSend_objectForKeyedSubscript_(v4, v99, @"polygon_edge_states");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v101 = v100;
    }

    else
    {
      v101 = 0;
    }

    if (v101)
    {
      sub_2622C2B70(v101, &self->_polygonEdgeStates);
    }

    v103 = objc_msgSend_objectForKeyedSubscript_(v4, v102, @"polygon_edge_score");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v104 = v103;
    }

    else
    {
      v104 = 0;
    }

    if (v104)
    {
      v107 = v104;
      for (k = 0; objc_msgSend_count(v107, v105, v106) > k; ++k)
      {
        v110 = objc_msgSend_objectAtIndexedSubscript_(v107, v109, k);
        objc_msgSend_floatValue(v110, v111, v112);
        end = self->_polygonEdgeConfidence.__end_;
        cap = self->_polygonEdgeConfidence.__cap_;
        if (end >= cap)
        {
          begin = self->_polygonEdgeConfidence.__begin_;
          v118 = end - begin;
          v119 = end - begin;
          v120 = v119 + 1;
          if ((v119 + 1) >> 62)
          {
            sub_2621CBEB0();
          }

          v121 = cap - begin;
          if (v121 >> 1 > v120)
          {
            v120 = v121 >> 1;
          }

          if (v121 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v122 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v122 = v120;
          }

          if (v122)
          {
            sub_2621C7F54(v122);
          }

          v123 = end - begin;
          v124 = (4 * v119);
          v125 = (4 * v119 - 4 * v123);
          *v124 = v113;
          v116 = (v124 + 1);
          memcpy(v125, begin, v118);
          v126 = self->_polygonEdgeConfidence.__begin_;
          self->_polygonEdgeConfidence.__begin_ = v125;
          self->_polygonEdgeConfidence.__end_ = v116;
          self->_polygonEdgeConfidence.__cap_ = 0;
          if (v126)
          {
            operator delete(v126);
          }

          v4 = v141;
        }

        else
        {
          *end = v113;
          v116 = end + 1;
        }

        self->_polygonEdgeConfidence.__end_ = v116;
      }
    }

    v128 = objc_msgSend_objectForKeyedSubscript_(v4, v127, @"polygon_edge_sides");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v129 = v128;
    }

    else
    {
      v129 = 0;
    }

    if (v129)
    {
      sub_2622C2D10(v129, &self->_polygonEdgeSides);
    }

    v131 = objc_msgSend_objectForKeyedSubscript_(v4, v130, @"appear_pose_pts");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v132 = v131;
    }

    else
    {
      v132 = 0;
    }

    if (v132)
    {
      sub_2622C2EB0(v132, self->appearPosePts);
    }

    v134 = objc_msgSend_objectForKeyedSubscript_(v4, v133, @"appear_major_views");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v135 = v134;
    }

    else
    {
      v135 = 0;
    }

    if (v135)
    {
      sub_2622C2EB0(v135, self->appearMajorViews);
    }

    v137 = objc_msgSend_objectForKeyedSubscript_(v4, v136, @"story");
    self->storyLevel = objc_msgSend_integerValue(v137, v138, v139);

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (double)transform
{
  v2 = 0;
  v3 = 0uLL;
  do
  {
    v3 = vaddq_f32(v3, a1[v2 + 17]);
    ++v2;
  }

  while (v2 != 4);
  v5 = a1[17];
  v4 = a1[18];
  v6 = vceqq_f32(v4, v5);
  v6.i32[3] = v6.i32[2];
  v7 = xmmword_2623A78C0;
  v8 = xmmword_2623A78D0;
  v9 = xmmword_2623A7700;
  if ((vminvq_u32(v6) & 0x80000000) == 0)
  {
    v10 = a1[19];
    v11 = vceqq_f32(v4, v10);
    v11.i32[3] = v11.i32[2];
    v12 = vminvq_u32(v11);
    v7 = xmmword_2623A78C0;
    v8 = xmmword_2623A78D0;
    v9 = xmmword_2623A7700;
    if ((v12 & 0x80000000) == 0)
    {
      v13 = vsubq_f32(v4, v5);
      v14 = vmulq_f32(v13, v13);
      *v8.i32 = v14.f32[2] + vaddv_f32(*v14.f32);
      v15 = vrsqrte_f32(v8.u32[0]);
      v16 = vmul_f32(v15, vrsqrts_f32(v8.u32[0], vmul_f32(v15, v15)));
      *v1.i8 = vmul_f32(v16, v16);
      *v8.i8 = vrsqrts_f32(v8.u32[0], *v1.i8);
      v16.i32[0] = vmul_f32(v16, *v8.i8).u32[0];
      v8.i8[0] = a1[6].i8[8];
      v1.i32[0] = 5;
      v17 = vdupq_lane_s8(*&vceqq_s8(v8, v1), 0);
      v18 = vsubq_f32(v4, v10);
      v19 = vmulq_f32(v18, v18);
      *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      v7 = vmulq_n_f32(v13, v16.f32[0]);
      *v19.f32 = vrsqrte_f32(v20);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
      v21 = vmulq_n_f32(v18, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
      v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(v7)), v21, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
      v23 = vmulq_f32(v22, v22);
      v14.f32[0] = v23.f32[1] + (v23.f32[2] + v23.f32[0]);
      v24 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
      *v22.f32 = vrsqrte_f32(v14.u32[0]);
      *v22.f32 = vmul_f32(*v22.f32, vrsqrts_f32(v14.u32[0], vmul_f32(*v22.f32, *v22.f32)));
      v25 = vmulq_n_f32(v24, vmul_f32(*v22.f32, vrsqrts_f32(v14.u32[0], vmul_f32(*v22.f32, *v22.f32))).f32[0]);
      v9 = vbslq_s8(v17, v25, v21);
      v8 = vbslq_s8(v17, v21, vnegq_f32(v25));
      v7.i32[3] = 0;
      v8.i32[3] = 0;
      v9.i32[3] = 0;
    }
  }

  v26 = 0;
  __asm { FMOV            V6.4S, #0.25 }

  v32 = vmulq_f32(v3, _Q6);
  v32.i32[3] = 1.0;
  v34[0] = v7;
  v34[1] = v8;
  v34[2] = v9;
  v34[3] = xmmword_2623A7810;
  do
  {
    *(&v35 + v26 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2623A78C0, COERCE_FLOAT(v34[v26])), xmmword_2623A78D0, *&v34[v26], 1), xmmword_2623A7700, v34[v26], 2), v32, v34[v26], 3);
    ++v26;
  }

  while (v26 != 4);
  return *&v35;
}

- (double)dimensions
{
  v1 = a1[18];
  v2 = vsubq_f32(a1[17], v1);
  v3 = vmulq_f32(v2, v2);
  v3.f32[0] = sqrtf(v3.f32[2] + vaddv_f32(*v3.f32));
  v4 = a1[8].i32[1];
  v5 = vsubq_f32(v1, a1[19]);
  v6 = vmulq_f32(v5, v5);
  v7 = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  v8 = a1[6].u8[8];
  if (v8 == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = a1[8].f32[1];
  }

  if (v8 == 5)
  {
    v10 = a1[8].i32[1];
  }

  v3.f32[1] = v9;
  return *v3.i64;
}

- (RS3DSurface)init
{
  v7.receiver = self;
  v7.super_class = RS3DSurface;
  v2 = [(RS3DSurface *)&v7 init];
  *(v2 + 116) = -1;
  v3 = *(v2 + 19);
  *(v2 + 19) = 0;

  v4 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v5 = *(v2 + 18);
  *(v2 + 18) = v4;

  v2[105] = -1;
  *(v2 + 28) = 0;
  *(v2 + 29) = 0;
  *(v2 + 31) = -1;
  *(v2 + 16) = 0;
  *(v2 + 15) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 34) = 1065353216;
  *(v2 + 53) = 0;
  *(v2 + 23) = 0;
  return v2;
}

@end