@interface RSAsset
- (RSAsset)init;
- (RSAsset)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RSAsset

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_mirrorPoints;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v27, v33, 16);
  if (v9)
  {
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = objc_msgSend_dictionaryRepresentation(*(*(&v27 + 1) + 8 * i), v7, v8, v27);
        objc_msgSend_addObject_(v4, v13, v12);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v27, v33, 16);
    }

    while (v9);
  }

  v31[0] = @"floorPlan";
  floorPlan = self->_floorPlan;
  if (floorPlan)
  {
    v17 = objc_msgSend_dictionaryRepresentation(self->_floorPlan, v14, v15);
  }

  else
  {
    v17 = MEMORY[0x277CBEC10];
  }

  v32[0] = v17;
  v31[1] = @"rawFloorPlan";
  rawFloorPlan = self->_rawFloorPlan;
  if (rawFloorPlan)
  {
    v19 = objc_msgSend_dictionaryRepresentation(self->_rawFloorPlan, v14, v15);
  }

  else
  {
    v19 = MEMORY[0x277CBEC10];
  }

  v32[1] = v19;
  v31[2] = @"version";
  v20 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v14, self->_version, v27);
  v32[2] = v20;
  v31[3] = @"isCaptured";
  v22 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v21, self->_isCaptured);
  v31[4] = @"mirrorPoints";
  v32[3] = v22;
  v32[4] = v4;
  v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v32, v31, 5);

  if (rawFloorPlan)
  {
  }

  if (floorPlan)
  {
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (RSAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = RSAsset;
  v5 = [(RSAsset *)&v25 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"floorPlan");
    floorPlan = v5->_floorPlan;
    v5->_floorPlan = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v14 = objc_msgSend_setWithObjects_(v10, v13, v11, v12, 0);
    v16 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v15, v14, @"mirrorPoints");
    mirrorPoints = v5->_mirrorPoints;
    v5->_mirrorPoints = v16;

    v5->_version = objc_msgSend_decodeIntegerForKey_(v4, v18, @"version");
    v5->_isCaptured = objc_msgSend_decodeBoolForKey_(v4, v19, @"isCaptured");
    v20 = objc_opt_class();
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v21, v20, @"rawFloorPlan");
    rawFloorPlan = v5->_rawFloorPlan;
    v5->_rawFloorPlan = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  objc_msgSend_encodeObject_forKey_(v9, v4, self->_floorPlan, @"floorPlan");
  objc_msgSend_encodeObject_forKey_(v9, v5, self->_mirrorPoints, @"mirrorPoints");
  objc_msgSend_encodeInteger_forKey_(v9, v6, self->_version, @"version");
  objc_msgSend_encodeBool_forKey_(v9, v7, self->_isCaptured, @"isCaptured");
  objc_msgSend_encodeObject_forKey_(v9, v8, self->_rawFloorPlan, @"rawFloorPlan");
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(RSAsset);
  v7 = objc_msgSend_copy(self->_floorPlan, v5, v6);
  floorPlan = v4->_floorPlan;
  v4->_floorPlan = v7;

  v11 = objc_msgSend_copy(self->_mirrorPoints, v9, v10);
  mirrorPoints = v4->_mirrorPoints;
  v4->_mirrorPoints = v11;

  v4->_isCaptured = self->_isCaptured;
  v4->_version = self->_version;
  v15 = objc_msgSend_copy(self->_rawFloorPlan, v13, v14);
  rawFloorPlan = v4->_rawFloorPlan;
  v4->_rawFloorPlan = v15;

  return v4;
}

- (RSAsset)init
{
  v12.receiver = self;
  v12.super_class = RSAsset;
  v2 = [(RSAsset *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(RSFloorPlan);
    floorPlan = v2->_floorPlan;
    v2->_floorPlan = v3;

    v7 = objc_msgSend_array(MEMORY[0x277CBEA60], v5, v6);
    mirrorPoints = v2->_mirrorPoints;
    v2->_mirrorPoints = v7;

    v2->_isCaptured = 0;
    v2->_version = 2;
    v9 = objc_alloc_init(RSFloorPlan);
    rawFloorPlan = v2->_rawFloorPlan;
    v2->_rawFloorPlan = v9;
  }

  return v2;
}

@end