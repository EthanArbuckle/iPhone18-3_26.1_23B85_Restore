@interface RS3DCurvedSurface
- (RS3DCurvedSurface)init;
- (RS3DCurvedSurface)initWithCoder:(id)coder;
- (RS3DCurvedSurface)initWithDictionaryRepresentation:(id)representation WithGroupId:(unsigned int)id;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)rotateAlongZAxisRightHand:(float)hand;
- (void)translateBy:(RS3DCurvedSurface *)self;
@end

@implementation RS3DCurvedSurface

- (void)translateBy:(RS3DCurvedSurface *)self
{
  v4 = v2;
  v5.receiver = self;
  v5.super_class = RS3DCurvedSurface;
  [(RS3DSurface *)&v5 translateBy:?];
  *&self->_circleCenter[4] = vadd_f32(v4, *&self->_circleCenter[4]);
}

- (void)rotateAlongZAxisRightHand:(float)hand
{
  v9.receiver = self;
  v9.super_class = RS3DCurvedSurface;
  [(RS3DSurface *)&v9 rotateAlongZAxisRightHand:?];
  v7 = __sincosf_stret(hand);
  *v6.i32 = v7.__cosval;
  *v5.i8 = v7;
  *&v6.i32[1] = -v7.__sinval;
  v8 = vzip1q_s32(v6, v5);
  *&self->_circleCenter[4] = vmla_lane_f32(vmul_n_f32(*v8.i8, COERCE_FLOAT(*&self->_circleCenter[4])), *&vextq_s8(v8, v8, 8uLL), *&self->_circleCenter[4], 1);
}

- (RS3DCurvedSurface)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = RS3DCurvedSurface;
  v5 = [(RS3DSurface *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v6, v9, v7, v8, 0);
    v12 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v11, v10, @"circle_center");
    sub_2622F7C64(v12, &v5->_circleCenter[4]);
    objc_msgSend_decodeFloatForKey_(coderCopy, v13, @"radius");
    v5->_radius = v14;
    objc_msgSend_decodeFloatForKey_(coderCopy, v15, @"starting_orientation");
    v5->_startOrientation = v16;
    objc_msgSend_decodeFloatForKey_(coderCopy, v17, @"ending_orientation");
    v5->_endOrientation = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = RS3DCurvedSurface;
  v5 = [(RS3DSurface *)&v16 encodeWithCoder:coderCopy];
  v8 = sub_2622F7E2C(*&self->_circleCenter[4], v5, v6, v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"circle_center");

  *&v10 = self->_radius;
  objc_msgSend_encodeFloat_forKey_(coderCopy, v11, @"radius", v10);
  *&v12 = self->_startOrientation;
  objc_msgSend_encodeFloat_forKey_(coderCopy, v13, @"starting_orientation", v12);
  *&v14 = self->_endOrientation;
  objc_msgSend_encodeFloat_forKey_(coderCopy, v15, @"ending_orientation", v14);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = RS3DCurvedSurface;
  result = [(RS3DSurface *)&v5 copyWithZone:zone];
  *(result + 45) = *&self->_circleCenter[4];
  *(result + 84) = LODWORD(self->_radius);
  *(result + 85) = LODWORD(self->_startOrientation);
  *(result + 86) = LODWORD(self->_endOrientation);
  *(result + 87) = LODWORD(self->_floorHeight);
  *(result + 88) = LODWORD(self->_ceilingHeight);
  return result;
}

- (id)dictionaryRepresentation
{
  v38.receiver = self;
  v38.super_class = RS3DCurvedSurface;
  dictionaryRepresentation = [(RS3DSurface *)&v38 dictionaryRepresentation];
  v6 = objc_msgSend_mutableCopy(dictionaryRepresentation, v4, v5);

  v10 = sub_2622F7E2C(*&self->_circleCenter[4], v7, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v11, v10, @"circle_center");

  *&v12 = self->_radius;
  v15 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v13, v14, v12);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v16, v15, @"radius");

  *&v17 = self->_startOrientation;
  v20 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v18, v19, v17);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v21, v20, @"starting_orientation");

  *&v22 = self->_endOrientation;
  v25 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v23, v24, v22);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v26, v25, @"ending_orientation");

  *&v27 = self->_floorHeight;
  v30 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v28, v29, v27);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v31, v30, @"floor_height");

  *&v32 = self->_ceilingHeight;
  v35 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v33, v34, v32);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v36, v35, @"ceiling_height");

  return v6;
}

- (RS3DCurvedSurface)initWithDictionaryRepresentation:(id)representation WithGroupId:(unsigned int)id
{
  representationCopy = representation;
  v8 = objc_msgSend_init(self, v6, v7);
  v9 = v8;
  objc_msgSend_fillWithDictionaryRepresentation_(v8, v10, representationCopy);
  v12 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v11, @"circle_center");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    sub_2622F7C64(v13, v8 + 45);
  }

  v15 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v14, @"radius");
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
    objc_msgSend_floatValue(v16, v17, v18);
    *(v9 + 84) = v19;
  }

  v21 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v20, @"starting_orientation");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    objc_msgSend_floatValue(v22, v23, v24);
    *(v9 + 85) = v25;
  }

  v27 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v26, @"ending_orientation");
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
    objc_msgSend_floatValue(v28, v29, v30);
    *(v9 + 86) = v31;
  }

  v33 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v32, @"floor_height");

  if (v33)
  {
    v35 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v34, @"floor_height");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    if (v36)
    {
      objc_msgSend_floatValue(v36, v37, v38);
      *(v9 + 87) = v39;
    }
  }

  v40 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v34, @"ceiling_height");

  if (v40)
  {
    v42 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v41, @"ceiling_height");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    if (v43)
    {
      objc_msgSend_floatValue(v43, v44, v45);
      *(v9 + 88) = v46;
    }
  }

  return v9;
}

- (RS3DCurvedSurface)init
{
  v3.receiver = self;
  v3.super_class = RS3DCurvedSurface;
  result = [(RS3DSurface *)&v3 init];
  if (result)
  {
    result->_radius = 0.0;
    *&result->_circleCenter[4] = 0;
    result->_startOrientation = 0.0;
    result->_endOrientation = 0.0;
    result->_floorHeight = 0.0;
    result->_ceilingHeight = 0.0;
  }

  return result;
}

@end