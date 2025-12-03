@interface RS3DObject
- (BOOL)getDimension:(id)dimension dim:;
- (BOOL)getTransform:(id)transform transform:(id *)a4;
- (BOOL)hasBoxesDict:(id)dict;
- (RS3DObject)init;
- (RS3DObject)initWithCoder:(id)coder;
- (RS3DObject)initWithDictionaryRepresentation:(id)representation;
- (double)transform;
- (float32x2_t)dimensions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)rotateAlongZAxisRightHand:(float)hand;
- (void)translateBy:(RS3DObject *)self;
@end

@implementation RS3DObject

- (void)translateBy:(RS3DObject *)self
{
  v22 = v2;
  v31 = *MEMORY[0x277D85DE8];
  v23 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = self->_boxesDict;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v25, v30, 16);
  if (v7)
  {
    v8 = *v26;
    v9 = MEMORY[0x277D82678];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = objc_msgSend_objectForKeyedSubscript_(self->_boxesDict, v6, v11, *&v22);
        v13 = sub_26223D51C(v12, v24);

        if (v13)
        {
          for (j = 0; j != 8; ++j)
          {
            v24[j] = vaddq_f32(v24[j], v22);
          }

          v17 = sub_2622113C0(v24, v14, v15);
          objc_msgSend_setObject_forKeyedSubscript_(v23, v18, v17, v11);
        }

        else
        {
          sub_2621D552C(v9, "[3DOD] Warning: The corner array is not valid to convert to box3d.", 66);
          std::ios_base::getloc((v9 + *(*v9 - 24)));
          v19 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
          (v19->__vftable[2].~facet_0)(v19, 10);
          std::locale::~locale(&v29);
          std::ostream::put();
          std::ostream::flush();
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v25, v30, 16);
    }

    while (v7);
  }

  boxesDict = self->_boxesDict;
  self->_boxesDict = v23;

  v21 = *MEMORY[0x277D85DE8];
}

- (void)rotateAlongZAxisRightHand:(float)hand
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = __sincosf_stret(hand);
  v24 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_boxesDict;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v26, v31, 16);
  if (v8)
  {
    v9 = *v27;
    v23 = xmmword_2623A7700;
    v10 = MEMORY[0x277D82678];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = objc_msgSend_objectForKeyedSubscript_(self->_boxesDict, v7, v12, *&v23);
        v14 = sub_26223D51C(v13, v25);

        if (v14)
        {
          for (j = 0; j != 8; ++j)
          {
            v25[j] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(__PAIR64__(LODWORD(v4.__sinval), LODWORD(v4.__cosval)), COERCE_FLOAT(*&v25[j])), __PAIR64__(LODWORD(v4.__cosval), -v4.__sinval), v25[j].n128_u64[0], 1), v23, v25[j], 2);
          }

          v18 = sub_2622113C0(v25, v15, v16);
          objc_msgSend_setObject_forKeyedSubscript_(v24, v19, v18, v12);
        }

        else
        {
          sub_2621D552C(v10, "[3DOD] Warning: The corner array is not valid to convert to box3d.", 66);
          std::ios_base::getloc((v10 + *(*v10 - 24)));
          v20 = std::locale::use_facet(&v30, MEMORY[0x277D82680]);
          (v20->__vftable[2].~facet_0)(v20, 10);
          std::locale::~locale(&v30);
          std::ostream::put();
          std::ostream::flush();
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v26, v31, 16);
    }

    while (v8);
  }

  boxesDict = self->_boxesDict;
  self->_boxesDict = v24;

  v22 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  objc_msgSend_getTransform_transform_(self, a2, @"rawdetection", &v9);
  v7 = vaddq_f32(v12, vmlaq_f32(vmlaq_f32(vmulq_f32(v9, 0), 0, v10), 0, v11));
  v8 = 0uLL;
  objc_msgSend_getDimension_dim_(self, v3, @"rawdetection", &v8);
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"<RS3DObject %p> [id=%@ conf=%0.2f] %@ { position = < %.2f , %.2f , %.2f > dimension = < %.2f x %.2f x %.2f > color = < r=%.2f , g=%.2f , b=%.2f , a=%.2f > }", self, self->identifier, self->confidence, self->type, v7.f32[0], v7.f32[1], v7.f32[2], *&v8, *(&v8 + 1), *(&v8 + 2), COERCE_FLOAT(*self->color), COERCE_FLOAT(HIDWORD(*self->color)), COERCE_FLOAT(*&self->color[8]), COERCE_FLOAT(HIDWORD(*self->color)));

  return v5;
}

- (RS3DObject)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v113.receiver = self;
  v113.super_class = RS3DObject;
  v5 = [(RS3DObject *)&v113 init];
  v6 = v5;
  v8 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v7, @"type");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_25;
  }

  type = v5->type;
  v5->type = v9;
  v11 = v9;

  v12 = sub_26223E290(v5->type);
  if ((v12 & 1) == 0)
  {
    goto LABEL_25;
  }

  v14 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v13, @"detectionsource");
  objc_opt_class();
  v15 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;

  if (!v15)
  {
    goto LABEL_25;
  }

  detection_source = v5->detection_source;
  v5->detection_source = v15;
  v17 = v15;

  v18 = sub_26223E428(v5->detection_source);
  if ((v18 & 1) == 0)
  {
    goto LABEL_25;
  }

  v20 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v19, @"identifier");
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = objc_alloc(MEMORY[0x277CCAD78]);
  v23 = objc_msgSend_initWithUUIDString_(v21, v22, v20);
  identifier = v5->identifier;
  v5->identifier = v23;

  v26 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v25, @"parent_id");
  if (v26)
  {
    v27 = objc_alloc(MEMORY[0x277CCAD78]);
    v29 = objc_msgSend_initWithUUIDString_(v27, v28, v26);
  }

  else
  {
    v29 = 0;
  }

  parent_id = v5->parent_id;
  v5->parent_id = v29;

  v32 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v31, @"status");
  objc_opt_class();
  v33 = (objc_opt_isKindOfClass() & 1) != 0 ? v32 : 0;

  if (!v33)
  {
    goto LABEL_25;
  }

  v5->status = objc_msgSend_BOOLValue(v33, v34, v35);

  v37 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v36, @"confidence");
  objc_opt_class();
  v38 = (objc_opt_isKindOfClass() & 1) != 0 ? v37 : 0;

  if (v38)
  {
    objc_msgSend_floatValue(v38, v39, v40);
    v5->confidence = v41;

    v43 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v42, @"logits");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    logits = v5->logits;
    v5->logits = v44;

    if (!v5->logits)
    {
      v49 = objc_opt_new();
      v50 = v5->logits;
      v5->logits = v49;
    }

    v51 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v48, @"embedding2d");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = v51;
    }

    else
    {
      v52 = 0;
    }

    embedding2d = v5->embedding2d;
    v5->embedding2d = v52;

    if (!v5->embedding2d)
    {
      v55 = objc_opt_new();
      v56 = v5->embedding2d;
      v5->embedding2d = v55;
    }

    v57 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v54, @"corners_status");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    corners_status = v5->corners_status;
    v5->corners_status = v58;

    if (!v5->corners_status)
    {
      v61 = objc_opt_new();
      v62 = v5->corners_status;
      v5->corners_status = v61;
    }

    v63 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v60, @"edges_status");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    edges_status = v5->edges_status;
    v5->edges_status = v64;

    if (!v5->edges_status)
    {
      v67 = objc_opt_new();
      v68 = v5->edges_status;
      v5->edges_status = v67;
    }

    v69 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v66, @"color");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v70 = v69;
    }

    else
    {
      v70 = 0;
    }

    if (v70)
    {
      sub_26223E4F8(v70, v5->color);
    }

    v72 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v71, @"groups");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v73 = v72;
    }

    else
    {
      v73 = 0;
    }

    v76 = objc_msgSend_mutableCopy(v73, v74, v75);
    groups = v5->_groups;
    v5->_groups = v76;

    if (!v5->_groups)
    {
      v79 = objc_opt_new();
      v80 = v5->_groups;
      v5->_groups = v79;
    }

    v81 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v78, @"parts");
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v84 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v83, @"parts");
      v87 = objc_msgSend_mutableCopy(v84, v85, v86);
      parts = v6->_parts;
      v6->_parts = v87;
    }

    else
    {
      v89 = objc_opt_new();
      v84 = v6->_parts;
      v6->_parts = v89;
    }

    v91 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v90, @"beautified_parts");
    objc_opt_class();
    v92 = objc_opt_isKindOfClass();

    if (v92)
    {
      v94 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v93, @"beautified_parts");
      v97 = objc_msgSend_mutableCopy(v94, v95, v96);
      beautified_parts = v6->_beautified_parts;
      v6->_beautified_parts = v97;
    }

    else
    {
      v99 = objc_opt_new();
      v94 = v6->_beautified_parts;
      v6->_beautified_parts = v99;
    }

    v101 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v100, @"boxes_dict");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v102 = v101;
    }

    else
    {
      v102 = 0;
    }

    v105 = objc_msgSend_mutableCopy(v102, v103, v104);
    boxesDict = v6->_boxesDict;
    v6->_boxesDict = v105;

    if (!v6->_boxesDict)
    {
      v108 = objc_opt_new();
      v109 = v6->_boxesDict;
      v6->_boxesDict = v108;
    }

    v110 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v107, @"story");
    v6->storyLevel = objc_msgSend_integerValue(v110, v111, v112);

    v45 = v6;
  }

  else
  {
LABEL_25:
    v45 = 0;
  }

  return v45;
}

- (RS3DObject)init
{
  v8.receiver = self;
  v8.super_class = RS3DObject;
  v2 = [(RS3DObject *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    groups = v2->_groups;
    v2->_groups = v3;

    v5 = objc_opt_new();
    boxesDict = v2->_boxesDict;
    v2->_boxesDict = v5;

    v2->storyLevel = 0;
  }

  return v2;
}

- (id)dictionaryRepresentation
{
  v57[4] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v5, self->type, @"type");
  objc_msgSend_setObject_forKeyedSubscript_(v4, v6, self->detection_source, @"detectionsource");
  v9 = objc_msgSend_UUIDString(self->identifier, v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v10, v9, @"identifier");

  v13 = objc_msgSend_UUIDString(self->parent_id, v11, v12);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v14, v13, @"parent_id");

  *&v15 = self->confidence;
  v18 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v16, v17, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v19, v18, @"confidence");

  objc_msgSend_setObject_forKeyedSubscript_(v4, v20, self->logits, @"logits");
  objc_msgSend_setObject_forKeyedSubscript_(v4, v21, self->embedding2d, @"embedding2d");
  objc_msgSend_setObject_forKeyedSubscript_(v4, v22, self->corners_status, @"corners_status");
  objc_msgSend_setObject_forKeyedSubscript_(v4, v23, self->edges_status, @"edges_status");
  v25 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v24, self->status);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v26, v25, @"status");

  v56 = *self->color;
  v29 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v27, v28);
  v57[0] = v29;
  HIDWORD(v30) = DWORD1(v56);
  LODWORD(v30) = DWORD1(v56);
  v33 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v31, v32, v30);
  v57[1] = v33;
  v36 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v34, v35, COERCE_DOUBLE(__PAIR64__(DWORD1(v56), DWORD2(v56))));
  v57[2] = v36;
  v39 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v37, v38, COERCE_DOUBLE(__PAIR64__(DWORD1(v56), HIDWORD(v56))));
  v57[3] = v39;
  v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v40, v57, 4);

  objc_msgSend_setObject_forKeyedSubscript_(v4, v42, v41, @"color");
  objc_msgSend_setObject_forKeyedSubscript_(v4, v43, self->_groups, @"groups");
  objc_msgSend_setObject_forKeyedSubscript_(v4, v44, self->_parts, @"parts");
  objc_msgSend_setObject_forKeyedSubscript_(v4, v45, self->_beautified_parts, @"beautified_parts");
  if (objc_msgSend_count(self->_boxesDict, v46, v47))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v48, self->_boxesDict, @"boxes_dict");
  }

  v49 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v48, self->storyLevel);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v50, v49, @"story");

  v53 = objc_msgSend_copy(v4, v51, v52);
  v54 = *MEMORY[0x277D85DE8];

  return v53;
}

- (BOOL)getTransform:(id)transform transform:(id *)a4
{
  transformCopy = transform;
  if (objc_msgSend_hasBoxesDict_(self, v7, transformCopy))
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(self->_boxesDict, v8, transformCopy);
    v10 = sub_26223D51C(v9, v31);

    if (v10)
    {
      v11 = 0;
      v12 = 0uLL;
      do
      {
        v12 = vaddq_f32(v12, v31[v11++]);
      }

      while (v11 != 8);
      v13 = 0;
      v14 = vsubq_f32(v31[1], v31[2]);
      v15 = vmulq_f32(v14, v14);
      *&v16 = v15.f32[2] + vaddv_f32(*v15.f32);
      *v15.f32 = vrsqrte_f32(v16);
      *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32)));
      v17 = vmulq_n_f32(v14, vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
      v18 = vsubq_f32(v31[4], v31[0]);
      v19 = vmulq_f32(v18, v18);
      *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(v20);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
      v21 = vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32));
      v22.i64[0] = 0x3E0000003E000000;
      v22.i64[1] = 0x3E0000003E000000;
      v23 = vmulq_n_f32(v18, vmul_f32(*v19.f32, v21).f32[0]);
      v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), vnegq_f32(v23)), v17, vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
      v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
      v17.i32[3] = 0;
      v25.i32[3] = 0;
      v23.i32[3] = 0;
      v26 = vmulq_f32(v12, v22);
      v26.i32[3] = 1.0;
      v32[0] = v17;
      v32[1] = v25;
      v32[2] = v23;
      v32[3] = xmmword_2623A7810;
      do
      {
        v33[v13] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2623A78C0, COERCE_FLOAT(v32[v13])), xmmword_2623A78D0, *&v32[v13], 1), xmmword_2623A7700, v32[v13], 2), v26, v32[v13], 3);
        ++v13;
      }

      while (v13 != 4);
      v27 = v33[1];
      v28 = v33[2];
      v29 = v33[3];
      *a4 = v33[0];
      *(a4 + 1) = v27;
      *(a4 + 2) = v28;
      *(a4 + 3) = v29;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)getDimension:(id)dimension dim:
{
  v4 = v3;
  dimensionCopy = dimension;
  if ((objc_msgSend_hasBoxesDict_(self, v7, dimensionCopy) & 1) == 0)
  {
    LOBYTE(v10) = 0;
    v18 = 0uLL;
    goto LABEL_5;
  }

  v9 = objc_msgSend_objectForKeyedSubscript_(self->_boxesDict, v8, dimensionCopy);
  v10 = sub_26223D51C(v9, &v20);

  if (v10)
  {
    v11 = vsubq_f32(v21, v22);
    v12 = vmulq_f32(v11, v11);
    v13 = vsubq_f32(v20, v21);
    v14 = vmulq_f32(v13, v13);
    v15 = vadd_f32(vzip1_s32(*v12.i8, *v14.i8), vzip2_s32(*v12.i8, *v14.i8));
    v18 = vextq_s8(v14, v14, 8uLL);
    *v18.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *v18.i8), v15));
    v16 = vsubq_f32(v20, v23);
    v17 = vmulq_f32(v16, v16);
    v18.i32[2] = sqrtf(v17.f32[2] + vaddv_f32(*v17.f32));
LABEL_5:
    *v4 = v18;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v39[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, self->type, @"type");
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->detection_source, @"detectionsource");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->identifier, @"identifier");
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->parent_id, @"parent_id");
  *&v9 = self->confidence;
  objc_msgSend_encodeFloat_forKey_(coderCopy, v10, @"confidence", v9);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, self->logits, @"logits");
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, self->embedding2d, @"embedding2d");
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, self->corners_status, @"corners_status");
  objc_msgSend_encodeObject_forKey_(coderCopy, v14, self->edges_status, @"edges_status");
  objc_msgSend_encodeBool_forKey_(coderCopy, v15, self->status, @"status");
  v38 = *self->color;
  v18 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v16, v17);
  v39[0] = v18;
  HIDWORD(v19) = DWORD1(v38);
  LODWORD(v19) = DWORD1(v38);
  v22 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v20, v21, v19);
  v39[1] = v22;
  v25 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v23, v24, COERCE_DOUBLE(__PAIR64__(DWORD1(v38), DWORD2(v38))));
  v39[2] = v25;
  v28 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v26, v27, COERCE_DOUBLE(__PAIR64__(DWORD1(v38), HIDWORD(v38))));
  v39[3] = v28;
  v30 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v29, v39, 4);

  objc_msgSend_encodeObject_forKey_(coderCopy, v31, v30, @"color");
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, self->_groups, @"groups");
  objc_msgSend_encodeObject_forKey_(coderCopy, v33, self->_parts, @"parts");
  objc_msgSend_encodeObject_forKey_(coderCopy, v34, self->_beautified_parts, @"beautified_parts");
  objc_msgSend_encodeObject_forKey_(coderCopy, v35, self->_boxesDict, @"boxes_dict");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v36, self->storyLevel, @"story");

  v37 = *MEMORY[0x277D85DE8];
}

- (RS3DObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v120.receiver = self;
  v120.super_class = RS3DObject;
  v5 = [(RS3DObject *)&v120 init];
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"type");
  type = v5->type;
  v5->type = v8;

  if ((sub_26223E290(v5->type) & 1) != 0 && (v10 = objc_opt_class(), objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"detectionsource"), v12 = objc_claimAutoreleasedReturnValue(), detection_source = v5->detection_source, v5->detection_source = v12, detection_source, sub_26223E428(v5->detection_source)))
  {
    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v15, v14, @"identifier");
    identifier = v5->identifier;
    v5->identifier = v16;

    v18 = objc_opt_class();
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v18, @"parent_id");
    parent_id = v5->parent_id;
    v5->parent_id = v20;

    objc_msgSend_decodeFloatForKey_(coderCopy, v22, @"confidence");
    v5->confidence = v23;
    v5->status = objc_msgSend_decodeBoolForKey_(coderCopy, v24, @"status");
    v25 = objc_opt_class();
    v27 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v26, v25, @"logits");
    logits = v5->logits;
    v5->logits = v27;

    v29 = objc_opt_class();
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v30, v29, @"embedding2d");
    embedding2d = v5->embedding2d;
    v5->embedding2d = v31;

    v33 = objc_opt_class();
    v35 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v34, v33, @"corners_status");
    corners_status = v5->corners_status;
    v5->corners_status = v35;

    v37 = objc_opt_class();
    v39 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v38, v37, @"edges_status");
    edges_status = v5->edges_status;
    v5->edges_status = v39;

    v41 = MEMORY[0x277CBEB98];
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v45 = objc_msgSend_setWithObjects_(v41, v44, v42, v43, 0);
    v47 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v46, v45, @"color");
    if (objc_msgSend_count(v47, v48, v49) == 4)
    {
      v51 = objc_msgSend_objectAtIndexedSubscript_(v47, v50, 0);
      objc_msgSend_floatValue(v51, v52, v53);
      v119 = v54;
      v56 = objc_msgSend_objectAtIndexedSubscript_(v47, v55, 1);
      objc_msgSend_floatValue(v56, v57, v58);
      v118 = v59;
      v61 = objc_msgSend_objectAtIndexedSubscript_(v47, v60, 2);
      objc_msgSend_floatValue(v61, v62, v63);
      v117 = v64;
      v66 = objc_msgSend_objectAtIndexedSubscript_(v47, v65, 3);
      objc_msgSend_floatValue(v66, v67, v68);
      *&v69 = __PAIR64__(v118, v119);
      *(&v69 + 1) = __PAIR64__(v70, v117);
      *v5->color = v69;
    }

    v71 = MEMORY[0x277CBEB98];
    v72 = objc_opt_class();
    v73 = objc_opt_class();
    v74 = objc_opt_class();
    v75 = objc_opt_class();
    v77 = objc_msgSend_setWithObjects_(v71, v76, v72, v73, v74, v75, 0);

    v79 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v78, v77, @"groups");
    v82 = objc_msgSend_mutableCopy(v79, v80, v81);

    v85 = objc_msgSend_mutableCopy(v82, v83, v84);
    groups = v5->_groups;
    v5->_groups = v85;

    v88 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v87, v77, @"parts");
    v91 = objc_msgSend_mutableCopy(v88, v89, v90);

    v94 = objc_msgSend_mutableCopy(v91, v92, v93);
    parts = v5->_parts;
    v5->_parts = v94;

    v97 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v96, v77, @"beautified_parts");
    v100 = objc_msgSend_mutableCopy(v97, v98, v99);

    v103 = objc_msgSend_mutableCopy(v100, v101, v102);
    beautified_parts = v5->_beautified_parts;
    v5->_beautified_parts = v103;

    v106 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v105, v77, @"boxes_dict");
    v109 = objc_msgSend_mutableCopy(v106, v107, v108);

    v112 = objc_msgSend_mutableCopy(v109, v110, v111);
    boxesDict = v5->_boxesDict;
    v5->_boxesDict = v112;

    v5->storyLevel = objc_msgSend_decodeIntegerForKey_(coderCopy, v114, @"story");
    v115 = v5;
  }

  else
  {
    v115 = 0;
  }

  return v115;
}

- (BOOL)hasBoxesDict:(id)dict
{
  dictCopy = dict;
  boxesDict = self->_boxesDict;
  if (boxesDict)
  {
    v8 = objc_msgSend_allKeys(boxesDict, v4, v5);
    v10 = objc_msgSend_containsObject_(v8, v9, dictCopy);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(RS3DObject);
  objc_storeStrong(&v4->type, self->type);
  objc_storeStrong(&v4->identifier, self->identifier);
  objc_storeStrong(&v4->parent_id, self->parent_id);
  v4->confidence = self->confidence;
  v7 = objc_msgSend_copy(self->logits, v5, v6);
  logits = v4->logits;
  v4->logits = v7;

  v11 = objc_msgSend_copy(self->embedding2d, v9, v10);
  embedding2d = v4->embedding2d;
  v4->embedding2d = v11;

  objc_storeStrong(&v4->corners_status, self->corners_status);
  objc_storeStrong(&v4->edges_status, self->edges_status);
  *v4->color = *self->color;
  v15 = objc_msgSend_mutableCopy(self->_groups, v13, v14);
  groups = v4->_groups;
  v4->_groups = v15;

  v19 = objc_msgSend_mutableCopy(self->_parts, v17, v18);
  parts = v4->_parts;
  v4->_parts = v19;

  v23 = objc_msgSend_mutableCopy(self->_beautified_parts, v21, v22);
  beautified_parts = v4->_beautified_parts;
  v4->_beautified_parts = v23;

  v27 = objc_msgSend_mutableCopy(self->_boxesDict, v25, v26);
  boxesDict = v4->_boxesDict;
  v4->_boxesDict = v27;

  v4->status = self->status;
  objc_storeStrong(&v4->detection_source, self->detection_source);
  return v4;
}

- (double)transform
{
  hasBoxesDict = objc_msgSend_hasBoxesDict_(self, a2, @"rawdetection");
  v5.i64[0] = 0;
  if (hasBoxesDict)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(self[2], v4, @"rawdetection", 0.0);
    v7 = sub_26223D51C(v6, &v30);

    v5 = 0uLL;
    if (v7)
    {
      for (i = 0; i != 128; i += 16)
      {
        v5 = vaddq_f32(v5, *(&v30 + i));
      }

      v9.i64[0] = 0x3E0000003E000000;
      v9.i64[1] = 0x3E0000003E000000;
      v10 = vceqq_f32(v31, v32);
      v10.i32[3] = v10.i32[2];
      v11 = vmulq_f32(v5, v9);
      v12 = xmmword_2623A78C0;
      v13 = xmmword_2623A78D0;
      v14 = xmmword_2623A7700;
      if ((vminvq_u32(v10) & 0x80000000) == 0)
      {
        v15 = vceqq_f32(v30, v31);
        v15.i32[3] = v15.i32[2];
        v16 = vminvq_u32(v15);
        v12 = xmmword_2623A78C0;
        v13 = xmmword_2623A78D0;
        v14 = xmmword_2623A7700;
        if ((v16 & 0x80000000) == 0)
        {
          v17 = vceqq_f32(v33, v30);
          v17.i32[3] = v17.i32[2];
          v18 = vminvq_u32(v17);
          v12 = xmmword_2623A78C0;
          v13 = xmmword_2623A78D0;
          v14 = xmmword_2623A7700;
          if ((v18 & 0x80000000) == 0)
          {
            v19 = vsubq_f32(v31, v32);
            v20 = vmulq_f32(v19, v19);
            v21 = vaddv_f32(*v20.f32);
            *v20.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v20.f32[2] + v21));
            *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v20.f32[2] + v21), vmul_f32(*v20.f32, *v20.f32)));
            v22 = vsubq_f32(v30, v31);
            v23 = vmulq_f32(v22, v22);
            *&v24 = v23.f32[2] + vaddv_f32(*v23.f32);
            v12 = vmulq_n_f32(v19, vmul_f32(*v20.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v20.f32[2] + v21), vmul_f32(*v20.f32, *v20.f32))).f32[0]);
            *v20.f32 = vrsqrte_f32(v24);
            *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v24, vmul_f32(*v20.f32, *v20.f32)));
            v13 = vmulq_n_f32(v22, vmul_f32(*v20.f32, vrsqrts_f32(v24, vmul_f32(*v20.f32, *v20.f32))).f32[0]);
            v25 = vsubq_f32(v33, v30);
            v26 = vmulq_f32(v25, v25);
            *&v27 = v26.f32[2] + vaddv_f32(*v26.f32);
            *v26.f32 = vrsqrte_f32(v27);
            *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)));
            v14 = vmulq_n_f32(v25, vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32))).f32[0]);
            v12.i32[3] = 0;
            v13.i32[3] = 0;
            v14.i32[3] = 0;
          }
        }
      }

      v28 = 0;
      v11.i32[3] = 1.0;
      v34[0] = v12;
      v34[1] = v13;
      v34[2] = v14;
      v34[3] = xmmword_2623A7810;
      do
      {
        *(&v35 + v28 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2623A78C0, COERCE_FLOAT(v34[v28])), xmmword_2623A78D0, *&v34[v28], 1), xmmword_2623A7700, v34[v28], 2), v11, v34[v28], 3);
        ++v28;
      }

      while (v28 != 4);
      v5.i64[0] = v35;
    }
  }

  return *v5.i64;
}

- (float32x2_t)dimensions
{
  hasBoxesDict = objc_msgSend_hasBoxesDict_(self, a2, @"rawdetection");
  result = 0;
  if (hasBoxesDict)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(self[2], v4, @"rawdetection", 0.0);
    v7 = sub_26223D51C(v6, &v12);

    result = 0;
    if (v7)
    {
      v8 = vsubq_f32(v13, v14);
      v9 = vmulq_f32(v8, v8);
      v10 = vsubq_f32(v12, v13);
      v11 = vmulq_f32(v10, v10);
      return vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v11, v11, 8uLL)), vadd_f32(vzip1_s32(*v9.i8, *v11.i8), vzip2_s32(*v9.i8, *v11.i8))));
    }
  }

  return result;
}

@end