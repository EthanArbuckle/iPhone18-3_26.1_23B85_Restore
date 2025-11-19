@interface TSCH3DTexturesMaterial
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
- (BOOL)hasCompleteData;
- (BOOL)isEqual:(id)a3;
- (TSCH3DTexturesMaterial)init;
- (TSCH3DTexturesMaterial)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)firstTexture;
- (id)firstTiling;
- (id)textures;
- (id)tilings;
- (id)variableTexture;
- (tvec4<float>)color;
- (unint64_t)hash;
- (void)addTexture:(id)a3 tiling:(id)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setColor:(tvec4<float>)a3;
@end

@implementation TSCH3DTexturesMaterial

- (TSCH3DTexturesMaterial)init
{
  v20.receiver = self;
  v20.super_class = TSCH3DTexturesMaterial;
  v2 = [(TSCH3DTexturesMaterial *)&v20 init];
  if (v2)
  {
    v3 = [TSCH3DVector alloc];
    __asm { FMOV            V0.4S, #1.0 }

    v19 = _Q0;
    v12 = objc_msgSend_initWithVec4_(v3, v9, *&_Q0, v10, v11, &v19);
    color = v2->_color;
    v2->_color = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEA60]);
    textures = v2->_textures;
    v2->_textures = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEA60]);
    tilings = v2->_tilings;
    v2->_tilings = v16;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v92.receiver = self;
  v92.super_class = TSCH3DTexturesMaterial;
  v91 = [(TSCH3DMaterial *)&v92 copyWithZone:?];
  if (v91)
  {
    if (!v91[1])
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DTexturesMaterial copyWithZone:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMaterial.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 78, 0, "invalid nil value for '%{public}s'", "result->_color");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    }

    v24 = objc_msgSend_copy(self->_color, v5, v6, v7, v8);
    v25 = v91[1];
    v91[1] = v24;

    v30 = objc_msgSend_count(self->_textures, v26, v27, v28, v29);
    if (v30 != objc_msgSend_count(self->_tilings, v31, v32, v33, v34))
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "[TSCH3DTexturesMaterial copyWithZone:]");
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMaterial.mm");
      v50 = objc_msgSend_count(self->_textures, v46, v47, v48, v49);
      v55 = objc_msgSend_count(self->_tilings, v51, v52, v53, v54);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v56, v57, v58, v59, v40, v45, 81, 0, "count mismatch textures %lu tilings %lu", v50, v55);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
    }

    v65 = objc_msgSend_count(self->_textures, v35, v36, v37, v38);
    if (v65)
    {
      v69 = 0;
      do
      {
        v70 = objc_msgSend_objectAtIndexedSubscript_(self->_textures, v64, v66, v67, v68, v69);
        v75 = objc_msgSend_copyWithZone_(v70, v71, v72, v73, v74, a3);
        v80 = objc_msgSend_objectAtIndexedSubscript_(self->_tilings, v76, v77, v78, v79, v69);
        v85 = objc_msgSend_copyWithZone_(v80, v81, v82, v83, v84, a3);
        objc_msgSend_addTexture_tiling_(v91, v86, v87, v88, v89, v75, v85);

        ++v69;
      }

      while (v65 != v69);
    }
  }

  return v91;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUSpecificCast();
    if (v5 && (v34.receiver = self, v34.super_class = TSCH3DTexturesMaterial, [(TSCH3DMaterial *)&v34 isEqual:v4]) && ((v6 = v5[1], v7 = self->_color, v8 = v6, !(v7 | v8)) || (v13 = v8, v14 = objc_msgSend_isEqual_(v7, v9, v10, v11, v12, v8), v13, v7, v14)) && ((v15 = v5[2], v16 = self->_textures, v17 = v15, !(v16 | v17)) || (v22 = v17, v23 = objc_msgSend_isEqual_(v16, v18, v19, v20, v21, v17), v22, v16, v23)))
    {
      tilings = self->_tilings;
      v25 = v5[3];
      v26 = tilings;
      v28 = v25;
      if (v26 | v28)
      {
        isEqual = objc_msgSend_isEqual_(v26, v27, v29, v30, v31, v28);
      }

      else
      {
        isEqual = 1;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (unint64_t)hash
{
  v19.receiver = self;
  v19.super_class = TSCH3DTexturesMaterial;
  v3 = [(TSCH3DMaterial *)&v19 hash];
  v8 = &v3[objc_msgSend_hash(self->_color, v4, v5, v6, v7)];
  v13 = objc_msgSend_hash(self->_textures, v9, v10, v11, v12);
  return &v8[v13 + objc_msgSend_hash(self->_tilings, v14, v15, v16, v17)];
}

- (tvec4<float>)color
{
  v7 = v2;
  color = self->_color;
  if (color || (v9 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DTexturesMaterial color]"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMaterial.mm"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 108, 0, "invalid nil value for '%{public}s'", "_color"), v15, v10, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23), (color = self->_color) != 0))
  {

    color = objc_msgSend_value(color, a2, v3, v4, v5);
  }

  else
  {
    *v7 = 0;
    v7[1] = 0;
  }

  result.var2 = a2;
  result.var3 = *(&a2 + 4);
  result.var0 = color;
  result.var1 = *(&color + 4);
  return result;
}

- (void)setColor:(tvec4<float>)a3
{
  v3 = *&a3.var0.var0;
  v5 = [TSCH3DVector alloc];
  v10 = objc_msgSend_initWithVec4_(v5, v6, v7, v8, v9, v3);
  color = self->_color;
  self->_color = v10;
}

- (BOOL)hasCompleteData
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = self->_textures;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, v4, v5, v6, &v17, v21, 16);
  if (v8)
  {
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v2);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (v14 && (objc_msgSend_hasCompleteData(v14, v7, v9, v10, v11, v17) & 1) == 0)
        {
          v15 = 0;
          goto LABEL_12;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v7, v9, v10, v11, &v17, v21, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_12:

  return v15;
}

- (id)textures
{
  textures = self->_textures;
  if (!textures)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DTexturesMaterial textures]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMaterial.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 126, 0, "invalid nil value for '%{public}s'", "_textures");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    textures = self->_textures;
  }

  return textures;
}

- (id)tilings
{
  tilings = self->_tilings;
  if (!tilings)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DTexturesMaterial tilings]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMaterial.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 131, 0, "invalid nil value for '%{public}s'", "_tilings");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    tilings = self->_tilings;
  }

  return tilings;
}

- (void)addTexture:(id)a3 tiling:(id)a4
{
  v71 = a3;
  v7 = a4;
  textures = self->_textures;
  if (!textures)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DTexturesMaterial addTexture:tiling:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMaterial.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 144, 0, "invalid nil value for '%{public}s'", "_textures");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    textures = self->_textures;
  }

  v27 = textures;
  v32 = objc_msgSend_arrayByAddingObject_(v27, v28, v29, v30, v31, v71);
  v37 = objc_msgSend_copy(v32, v33, v34, v35, v36);
  v38 = self->_textures;
  self->_textures = v37;

  tilings = self->_tilings;
  if (!tilings)
  {
    v44 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "[TSCH3DTexturesMaterial addTexture:tiling:]");
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMaterial.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v51, v52, v53, v54, v45, v50, 148, 0, "invalid nil value for '%{public}s'", "_tilings");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
    tilings = self->_tilings;
  }

  v59 = tilings;
  v64 = objc_msgSend_arrayByAddingObject_(v59, v60, v61, v62, v63, v7);
  v69 = objc_msgSend_copy(v64, v65, v66, v67, v68);
  v70 = self->_tilings;
  self->_tilings = v69;
}

- (id)variableTexture
{
  v5 = objc_msgSend_defaultShaderVariables(self, a2, v2, v3, v4);
  v10 = objc_msgSend_texture(v5, v6, v7, v8, v9);

  return v10;
}

- (id)firstTexture
{
  v6 = objc_msgSend_count(self->_textures, a2, v2, v3, v4);
  if (v6)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(self->_textures, v7, v8, v9, v10, 0);
  }

  return v6;
}

- (id)firstTiling
{
  v6 = objc_msgSend_count(self->_tilings, a2, v2, v3, v4);
  if (v6)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(self->_tilings, v7, v8, v9, v10, 0);
  }

  return v6;
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSCH3DTexturesMaterial alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, a3, v5);

  return v11;
}

- (TSCH3DTexturesMaterial)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v54.receiver = self;
  v54.super_class = TSCH3DTexturesMaterial;
  v7 = [(TSCH3DTexturesMaterial *)&v54 init];
  if (v7)
  {
    v8 = [TSCH3DVector alloc];
    if (*(a3 + 6))
    {
      v13 = objc_msgSend_initWithArchive_unarchiver_(v8, v9, v10, v11, v12, *(a3 + 6), v6);
    }

    else
    {
      v13 = objc_msgSend_initWithArchive_unarchiver_(v8, v9, v10, v11, v12, &qword_2812F15A8, v6);
    }

    color = v7->_color;
    v7->_color = v13;

    v15 = *(a3 + 8);
    v21 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v16, v17, v18, v19, v15);
    if (v15 >= 1)
    {
      v25 = 8;
      do
      {
        v26 = [TSCH3DTSPImageDataTexture alloc];
        v31 = objc_msgSend_initWithArchive_unarchiver_(v26, v27, v28, v29, v30, *(*(a3 + 5) + v25), v6);
        objc_msgSend_addObject_(v21, v32, v33, v34, v35, v31);

        v25 += 8;
        --v15;
      }

      while (v15);
    }

    if (v7->_textures)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v22, v23, v24, "[TSCH3DTexturesMaterial(PersistenceAdditions) initWithArchive:unarchiver:]");
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMaterial.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 187, 0, "expected nil value for '%{public}s'", "_textures");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
    }

    v51 = objc_msgSend_copy(v21, v20, v22, v23, v24);
    textures = v7->_textures;
    v7->_textures = v51;
  }

  return v7;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v71 = a4;
  color = self->_color;
  if (!color)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DTexturesMaterial(PersistenceAdditions) saveToArchive:archiver:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMaterial.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 194, 0, "invalid nil value for '%{public}s'", "_color");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    color = self->_color;
  }

  *(a3 + 4) |= 1u;
  v26 = *(a3 + 6);
  if (!v26)
  {
    v27 = *(a3 + 1);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = sub_276447FD4(v27);
    *(a3 + 6) = v26;
  }

  objc_msgSend_saveToArchive_archiver_(color, v6, v7, v8, v9, v26, v71);
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = self->_textures;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, v29, v30, v31, &v72, v76, 16);
  if (v32)
  {
    v33 = *v73;
    do
    {
      v34 = 0;
      do
      {
        if (*v73 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v72 + 1) + 8 * v34);
        v36 = objc_opt_class();
        if (v36 != objc_opt_class())
        {
          v41 = MEMORY[0x277D81150];
          v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "[TSCH3DTexturesMaterial(PersistenceAdditions) saveToArchive:archiver:]");
          v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMaterial.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v49, v50, v51, v42, v47, 199, 0, "texture must be a TSCH3DTSPImageDataTexture exactly");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
        }

        v56 = *(a3 + 5);
        if (!v56)
        {
          goto LABEL_19;
        }

        v57 = *(a3 + 8);
        v58 = *v56;
        if (v57 < *v56)
        {
          *(a3 + 8) = v57 + 1;
          objc_msgSend_saveToArchive_archiver_(v35, v37, v38, v39, v40, *&v56[2 * v57 + 2], v71);
          goto LABEL_21;
        }

        if (v58 == *(a3 + 9))
        {
LABEL_19:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
          v56 = *(a3 + 5);
          v58 = *v56;
        }

        *v56 = v58 + 1;
        v63 = sub_276447D58(*(a3 + 3));
        v64 = *(a3 + 8);
        v65 = *(a3 + 5) + 8 * v64;
        *(a3 + 8) = v64 + 1;
        *(v65 + 8) = v63;
        objc_msgSend_saveToArchive_archiver_(v35, v66, v67, v68, v69, v63, v71);
LABEL_21:
        ++v34;
      }

      while (v32 != v34);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v59, v60, v61, v62, &v72, v76, 16);
    }

    while (v32);
  }
}

@end