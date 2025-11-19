@interface SemanticOutputCollection
- (BOOL)add:(id)a3 with:(id)a4;
- (BOOL)isCompatibleWith:(id)a3;
- (SemanticOutputCollection)init;
- (id)description;
- (int)allocateResources:(id)a3;
@end

@implementation SemanticOutputCollection

- (SemanticOutputCollection)init
{
  v6.receiver = self;
  v6.super_class = SemanticOutputCollection;
  v2 = [(SemanticOutputCollection *)&v6 init];
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  objc_msgSend_setSemanticOutputs_(v2, v4, v3);

  return v2;
}

- (id)description
{
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = objc_msgSend_semanticOutputs(self, a2, v2);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v42, v41, 16);
  if (v6)
  {
    v9 = v6;
    LODWORD(v10) = 0;
    v11 = *v43;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v10 = objc_msgSend_unsignedIntValue(*(*(&v42 + 1) + 8 * i), v7, v8) | v10;
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v42, v41, 16);
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v13 = MEMORY[0x29EDBA0F8];
  v15 = objc_msgSend_FigMattingOutputToShortString_(FigMatting, v14, v10);
  v18 = objc_msgSend_width(self->_spatioTemporalFilterDescriptor, v16, v17);
  v21 = objc_msgSend_height(self->_spatioTemporalFilterDescriptor, v19, v20);
  v24 = objc_msgSend_kernelSpatialDiameter(self->_spatioTemporalFilterDescriptor, v22, v23);
  objc_msgSend_epsilon(self->_spatioTemporalFilterDescriptor, v25, v26);
  v28 = v27;
  v31 = objc_msgSend_sourceChannels(self->_spatioTemporalFilterDescriptor, v29, v30);
  v34 = objc_msgSend_guideChannels(self->_spatioTemporalFilterDescriptor, v32, v33);
  v37 = objc_msgSend_iterations(self, v35, v36);
  v39 = objc_msgSend_stringWithFormat_(v13, v38, @"<[%@], %lux%lu, d: %lu, eps: %f, sc: %lu, gc: %lu, i: %@>", v15, v18, v21, v24, *&v28, v31, v34, v37);

  return v39;
}

- (BOOL)add:(id)a3 with:(id)a4
{
  v6 = a3;
  v7 = a4;
  isCompatibleWith = objc_msgSend_isCompatibleWith_(self, v8, v7);
  if (isCompatibleWith)
  {
    objc_msgSend_addObject_(self->_semanticOutputs, v9, v6);
    if (self->_spatioTemporalFilterDescriptor)
    {
      v13 = objc_msgSend_count(self->_semanticOutputs, v11, v12);
      objc_msgSend_setSourceChannels_(self->_spatioTemporalFilterDescriptor, v14, v13);
    }

    else
    {
      v15 = MEMORY[0x29EDBB800];
      v16 = objc_msgSend_width(v7, v11, v12);
      v19 = objc_msgSend_height(v7, v17, v18);
      v22 = objc_msgSend_kernelSpatialDiameter(v7, v20, v21);
      objc_msgSend_epsilon(v7, v23, v24);
      v26 = v25;
      v29 = objc_msgSend_useDepthFilter(v7, v27, v28);
      v32 = 3;
      if (v29)
      {
        v32 = 4;
      }

      LODWORD(v31) = v26;
      v33 = objc_msgSend_filterDescriptorWithWidth_height_arrayLength_kernelSpatialDiameter_kernelTemporalDiameter_epsilon_sourceChannels_guideChannels_preallocateIntermediates_(v15, v30, v16, v19, 1, v22, 1, 1, v31, v32, 1);
      spatioTemporalFilterDescriptor = self->_spatioTemporalFilterDescriptor;
      self->_spatioTemporalFilterDescriptor = v33;

      v35 = MEMORY[0x29EDBA070];
      v38 = objc_msgSend_iterations(v7, v36, v37);
      v40 = objc_msgSend_numberWithUnsignedInt_(v35, v39, v38);
      objc_msgSend_setIterations_(self, v41, v40);

      v44 = objc_msgSend_useDepthFilter(v7, v42, v43);
      objc_msgSend_setUseDepthFilter_(self, v45, v44);
    }
  }

  return isCompatibleWith;
}

- (BOOL)isCompatibleWith:(id)a3
{
  v6 = a3;
  spatioTemporalFilterDescriptor = self->_spatioTemporalFilterDescriptor;
  if (spatioTemporalFilterDescriptor)
  {
    v8 = objc_msgSend_width(spatioTemporalFilterDescriptor, v4, v5);
    if (v8 != objc_msgSend_width(v6, v9, v10))
    {
      goto LABEL_10;
    }

    v13 = objc_msgSend_height(self->_spatioTemporalFilterDescriptor, v11, v12);
    if (v13 != objc_msgSend_height(v6, v14, v15))
    {
      goto LABEL_10;
    }

    v18 = objc_msgSend_kernelSpatialDiameter(self->_spatioTemporalFilterDescriptor, v16, v17);
    if (v18 != objc_msgSend_kernelSpatialDiameter(v6, v19, v20))
    {
      goto LABEL_10;
    }

    objc_msgSend_epsilon(self->_spatioTemporalFilterDescriptor, v21, v22);
    v24 = v23;
    objc_msgSend_epsilon(v6, v25, v26);
    if (vabds_f32(v24, v29) >= 1.0e-10)
    {
      goto LABEL_10;
    }

    v30 = objc_msgSend_guideChannels(self->_spatioTemporalFilterDescriptor, v27, v28);
    v33 = objc_msgSend_useDepthFilter(v6, v31, v32);
    v36 = 3;
    if (v33)
    {
      v36 = 4;
    }

    if (v30 == v36)
    {
      v37 = objc_msgSend_iterations(self, v34, v35);
      v38 = MEMORY[0x29EDBA070];
      v41 = objc_msgSend_iterations(v6, v39, v40);
      v43 = objc_msgSend_numberWithUnsignedInt_(v38, v42, v41);
      isEqualToNumber = objc_msgSend_isEqualToNumber_(v37, v44, v43);
    }

    else
    {
LABEL_10:
      isEqualToNumber = 0;
    }
  }

  else
  {
    isEqualToNumber = 1;
  }

  return isEqualToNumber;
}

- (int)allocateResources:(id)a3
{
  v4 = MEMORY[0x29EDBB7F8];
  v5 = a3;
  v6 = [v4 alloc];
  v9 = objc_msgSend_device(v5, v7, v8);

  v11 = objc_msgSend_initWithDevice_filterDescriptor_(v6, v10, v9, self->_spatioTemporalFilterDescriptor);
  objc_msgSend_setSpatioTemporalFilter_(self, v12, v11);

  if (self->_spatioTemporalFilter)
  {
    v15 = objc_msgSend_spatioTemporalFilter(self, v13, v14);
    v18 = objc_msgSend_options(v15, v16, v17);
    objc_msgSend_setOptions_(v15, v19, v18 | 1);

    return 0;
  }

  else
  {
    sub_2957E19A0();
    return -12786;
  }
}

@end