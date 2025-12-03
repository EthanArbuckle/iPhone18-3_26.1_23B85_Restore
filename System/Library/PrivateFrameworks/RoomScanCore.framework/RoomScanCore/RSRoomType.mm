@interface RSRoomType
- (RSRoomType)initWithCoder:(id)coder;
- (RSRoomType)initWithDictionaryRepresentation:(id)representation withGroupId:(unsigned int)id;
- (double)transform;
- (float32x2_t)dimensions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)rotateAlongZAxisRightHand:(float)hand;
- (void)translateBy:(RSRoomType *)self;
@end

@implementation RSRoomType

- (RSRoomType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = RSRoomType;
  v6 = [(RSRoomType *)&v42 init];
  if (v6)
  {
    objc_msgSend_decodeFloatForKey_(coderCopy, v5, @"confidenceScore");
    v6->_confidenceScore = v7;
    v6->_insideRoom = objc_msgSend_decodeIntForKey_(coderCopy, v8, @"insideRoom");
    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v10, v9, @"label");
    label = v6->_label;
    v6->_label = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v17 = objc_msgSend_setWithObjects_(v13, v16, v14, v15, 0);
    v38 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v18, v17, @"polygonCenter");
    sub_26230EF8C(v38, v6->_polygonCenter);
    v20 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v19, v17, @"quad");
    sub_26230F05C(v20, &v6[1].super.isa);
    v22 = objc_msgSend_decodeIntForKey_(coderCopy, v21, @"type");
    __p = 0;
    v40 = 0;
    v41 = 0;
    v26 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v23, v17, @"points");
    for (i = 0; objc_msgSend_count(v26, v24, v25) > i; ++i)
    {
      v29 = objc_msgSend_objectAtIndexedSubscript_(v26, v28, i);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v43 = 0;
      v32 = objc_msgSend_objectAtIndexedSubscript_(v26, v31, i);
      v33 = sub_26230EF8C(v32, &v43);

      if (!v33)
      {
        break;
      }

      sub_2621CBA84(&__p, &v43);
    }

    v34 = [RSRoomTypePolygon alloc];
    if (v34)
    {
      v34 = sub_26230E988(v34, (v40 - __p) >> 3, __p);
      if (v34)
      {
        v34->_type = v22;
      }
    }

    polygon = v6->_polygon;
    v6->_polygon = v34;

    v6->storyLevel = objc_msgSend_decodeIntegerForKey_(coderCopy, v36, @"story");
    if (__p)
    {
      operator delete(__p);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  *&v5 = self->_confidenceScore;
  v42 = coderCopy;
  objc_msgSend_encodeFloat_forKey_(coderCopy, v6, @"confidenceScore", v5);
  objc_msgSend_encodeInt_forKey_(v42, v7, self->_insideRoom, @"insideRoom");
  v9 = objc_msgSend_encodeObject_forKey_(v42, v8, self->_label, @"label");
  v12 = sub_26230F388(*self->_polygonCenter, v9, v10, v11);
  objc_msgSend_encodeObject_forKey_(v42, v13, v12, @"polygonCenter");

  v16 = sub_26230F478(&self[1], v14, v15);
  objc_msgSend_encodeObject_forKey_(v42, v17, v16, @"quad");

  v20 = objc_msgSend_type(self->_polygon, v18, v19);
  objc_msgSend_encodeInt_forKey_(v42, v21, v20, @"type");
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v24 = objc_msgSend_count(self->_polygon, v22, v23);
  sub_26220F5A0(&v43, v24);
  v27 = 0;
  for (i = 0; objc_msgSend_count(self->_polygon, v25, v26) > i; ++i)
  {
    v31 = objc_msgSend_points(self->_polygon, v29, v30);
    sub_2621CBA84(&v43, (v31 + v27));
    v27 += 8;
  }

  v32 = objc_msgSend_array(MEMORY[0x277CBEB18], v29, v30);
  v35 = v32;
  v36 = v43;
  v37 = v44;
  if (v43 != v44)
  {
    v38 = v43;
    do
    {
      v39 = sub_26230F388(*v38, v32, v33, v34);
      objc_msgSend_addObject_(v35, v40, v39);

      ++v38;
    }

    while (v38 != v37);
  }

  objc_msgSend_encodeObject_forKey_(v42, v33, v35, @"points");

  objc_msgSend_encodeInteger_forKey_(v42, v41, self->storyLevel, @"story");
  if (v36)
  {
    operator delete(v36);
  }
}

- (void)translateBy:(RSRoomType *)self
{
  v17 = v3;
  v5 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  while (objc_msgSend_count(self->_polygon, a2, v2, v17) > v5)
  {
    v18 = vadd_f32(*&v17, *(objc_msgSend_points(self->_polygon, v6, v7) + 8 * v5));
    sub_2621CBA84(&v19, &v18);
    ++v5;
  }

  v8 = [RSRoomTypePolygon alloc];
  v9 = v19;
  v10 = v20;
  v13 = objc_msgSend_type(self->_polygon, v11, v12);
  if (v8)
  {
    v14 = v13;
    v15 = sub_26230E988(v8, (v10 - v9) >> 3, v9);
    if (v15)
    {
      v15->_type = v14;
    }
  }

  else
  {
    v15 = 0;
  }

  polygon = self->_polygon;
  self->_polygon = v15;

  *self->_polygonCenter = vadd_f32(*&v17, *self->_polygonCenter);
  if (v9)
  {

    operator delete(v9);
  }
}

- (void)rotateAlongZAxisRightHand:(float)hand
{
  v8 = __sincosf_stret(hand);
  *v7.i32 = v8.__cosval;
  *v6.i8 = v8;
  v9 = 0;
  *&v7.i32[1] = -v8.__sinval;
  v23 = vzip1q_s32(v7, v6);
  v22 = vextq_s8(v23, v23, 8uLL);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  while (objc_msgSend_count(self->_polygon, v4, *&v5, *&v22, *&v23) > v9)
  {
    v12 = objc_msgSend_points(self->_polygon, v10, v11);
    v24 = vmla_lane_f32(vmul_n_f32(*v23.i8, COERCE_FLOAT(*(v12 + 8 * v9))), *v22.i8, *(v12 + 8 * v9), 1);
    sub_2621CBA84(&v25, &v24);
    ++v9;
  }

  v13 = [RSRoomTypePolygon alloc];
  v14 = v25;
  v15 = v26;
  v18 = objc_msgSend_type(self->_polygon, v16, v17);
  if (v13)
  {
    v19 = v18;
    v20 = sub_26230E988(v13, (v15 - v14) >> 3, v14);
    if (v20)
    {
      v20->_type = v19;
    }
  }

  else
  {
    v20 = 0;
  }

  polygon = self->_polygon;
  self->_polygon = v20;

  if (v14)
  {

    operator delete(v14);
  }
}

- (float32x2_t)dimensions
{
  v1 = self[9];
  v2 = vsub_f32(v1, self[8]);
  v3 = vmul_f32(v2, v2);
  v4 = vsub_f32(self[10], v1);
  v5 = vmul_f32(v4, v4);
  return vsqrt_f32(vadd_f32(vzip1_s32(v3, v5), vzip2_s32(v3, v5)));
}

- (double)transform
{
  v2 = self[8];
  v1 = self[9];
  v3 = vceq_f32(v1, v2);
  v4 = xmmword_2623A7700;
  if ((vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    v5 = self[10];
    v6 = vceq_f32(v1, v5);
    v4 = xmmword_2623A7700;
    if ((vpmin_u32(v6, v6).u32[0] & 0x80000000) == 0)
    {
      v7 = vsub_f32(v1, v2);
      v8 = vmul_f32(v7, v7);
      v8.i32[0] = vadd_f32(v8, vdup_lane_s32(v8, 1)).u32[0];
      v9 = vrsqrte_f32(v8.u32[0]);
      v10 = vmul_f32(v9, vrsqrts_f32(v8.u32[0], vmul_f32(v9, v9)));
      v11 = vmul_n_f32(v7, vmul_f32(v10, vrsqrts_f32(v8.u32[0], vmul_f32(v10, v10))).f32[0]);
      v12 = vsub_f32(v1, v5);
      v13 = vmul_f32(v12, v12);
      v13.i32[0] = vadd_f32(v13, vdup_lane_s32(v13, 1)).u32[0];
      v14 = vrsqrte_f32(v13.u32[0]);
      v15 = vmul_f32(v14, vrsqrts_f32(v13.u32[0], vmul_f32(v14, v14)));
      v16 = vmul_n_f32(v12, vmul_f32(v15, vrsqrts_f32(v13.u32[0], vmul_f32(v15, v15))).f32[0]);
      v17.i64[0] = 0;
      v17.i32[3] = 0;
      v17.f32[2] = (-v11.f32[1] * v16.f32[0]) + (v11.f32[0] * v16.f32[1]);
      v18 = vmulq_f32(v17, v17);
      *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
      *v18.f32 = vrsqrte_f32(v19);
      *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
      v4 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
      v4.i32[3] = 0;
    }
  }

  v20 = 0;
  *v21.f32 = self[7];
  v21.f32[2] = (self[1].f32[1] + self[1].f32[0]) * 0.5;
  v21.i32[3] = 1.0;
  v23[2] = v4;
  v23[3] = xmmword_2623A7810;
  do
  {
    *(&v24 + v20 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2623A78C0, COERCE_FLOAT(v23[v20])), xmmword_2623A78D0, *&v23[v20], 1), xmmword_2623A7700, v23[v20], 2), v21, v23[v20], 3);
    ++v20;
  }

  while (v20 != 4);
  return *&v24;
}

- (RSRoomType)initWithDictionaryRepresentation:(id)representation withGroupId:(unsigned int)id
{
  v78 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v76.receiver = self;
  v76.super_class = RSRoomType;
  v6 = [(RSRoomType *)&v76 init];
  v8 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v7, @"insideRoom");
  v6->_insideRoom = objc_msgSend_intValue(v8, v9, v10);

  v12 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v11, @"confidenceScore");
  objc_msgSend_floatValue(v12, v13, v14);
  v6->_confidenceScore = v15;

  v17 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v16, @"label");
  label = v6->_label;
  v6->_label = v17;

  v20 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v19, @"quad");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v68 = v20;
  }

  else
  {
    v68 = 0;
  }

  if (v68)
  {
    sub_26230F05C(v68, &v6[1].super.isa);
  }

  v6->_groupId = id;
  v66 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v21, @"polygon");
  v67 = objc_msgSend_objectForKeyedSubscript_(v66, v22, @"points");
  v24 = objc_msgSend_objectForKeyedSubscript_(v66, v23, @"type");
  v65 = objc_msgSend_intValue(v24, v25, v26);

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v67;
  if (objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v72, v77, 16))
  {
    *v73;
    *v73;
    v29 = **(&v72 + 1);
    v30 = objc_msgSend_objectForKeyedSubscript_(**(&v72 + 1), v28, @"x");
    objc_msgSend_floatValue(v30, v31, v32);

    v34 = objc_msgSend_objectForKeyedSubscript_(v29, v33, @"y");
    objc_msgSend_floatValue(v34, v35, v36);

    sub_2621CBEC8(1uLL);
  }

  v37 = [RSRoomTypePolygon alloc];
  if (v37)
  {
    v40 = sub_26230E988(v37, 0, 0);
    v43 = v40;
    if (v40)
    {
      *(v40 + 8) = v65;
    }

    v44 = objc_msgSend_copy(v40, v41, v42);
  }

  else
  {
    v43 = 0;
    v44 = objc_msgSend_copy(0, v38, v39);
  }

  polygon = v6->_polygon;
  v6->_polygon = v44;

  v47 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v46, @"polygonCenter");
  if (objc_msgSend_count(v47, v48, v49) == 2)
  {
    v51 = objc_msgSend_objectAtIndexedSubscript_(v47, v50, 0);
    objc_msgSend_floatValue(v51, v52, v53);
    v71 = v54;
    v56 = objc_msgSend_objectAtIndexedSubscript_(v47, v55, 1);
    objc_msgSend_floatValue(v56, v57, v58);
    *v6->_polygonCenter = __PAIR64__(v59, v71);
  }

  v60 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v50, @"story");
  v6->storyLevel = objc_msgSend_integerValue(v60, v61, v62);

  v63 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)dictionaryRepresentation
{
  v70[2] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  *&v5 = self->_confidenceScore;
  v8 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v9, v8, @"confidenceScore");

  v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v10, self->_insideRoom);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v12, v11, @"insideRoom");

  objc_msgSend_setObject_forKeyedSubscript_(v4, v13, self->_label, @"label");
  v16 = sub_26230F478(&self[1], v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v17, v16, @"quad");

  v20 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v18, v19);
  v21 = MEMORY[0x277CCABB0];
  v24 = objc_msgSend_type(self->_polygon, v22, v23);
  v26 = objc_msgSend_numberWithInt_(v21, v25, v24);
  objc_msgSend_setObject_forKeyedSubscript_(v20, v27, v26, @"type");
  v68 = v20;

  v32 = objc_msgSend_array(MEMORY[0x277CBEB18], v28, v29);
  for (i = 0; objc_msgSend_count(self->_polygon, v30, v31) > i; ++i)
  {
    v36 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v34, v35);
    v69 = HIDWORD(*(objc_msgSend_points(self->_polygon, v37, v38) + 8 * i));
    v41 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v39, v40);
    objc_msgSend_setObject_forKeyedSubscript_(v36, v42, v41, @"x");

    HIDWORD(v43) = v69;
    LODWORD(v43) = v69;
    v46 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v44, v45, v43);
    objc_msgSend_setObject_forKeyedSubscript_(v36, v47, v46, @"y");

    objc_msgSend_addObject_(v32, v48, v36);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v68, v34, v32, @"points");
  objc_msgSend_setObject_forKeyedSubscript_(v4, v49, v68, @"polygon");
  v52 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v50, v51, *self->_polygonCenter);
  v70[0] = v52;
  LODWORD(v53) = *&self->_polygonCenter[4];
  v56 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v54, v55, v53);
  v70[1] = v56;
  v58 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v57, v70, 2);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v59, v58, @"polygonCenter");

  v61 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v60, self->storyLevel);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v62, v61, @"story");

  v65 = objc_msgSend_copy(v4, v63, v64);
  v66 = *MEMORY[0x277D85DE8];

  return v65;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(RSRoomType);
  v4->_confidenceScore = self->_confidenceScore;
  objc_storeStrong(&v4->_label, self->_label);
  objc_storeStrong(&v4->_polygon, self->_polygon);
  *v4->_polygonCenter = *self->_polygonCenter;
  v4->_groupId = self->_groupId;
  v4->_insideRoom = self->_insideRoom;
  return v4;
}

@end