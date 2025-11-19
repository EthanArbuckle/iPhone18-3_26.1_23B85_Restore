@interface TSCH3DEnvironmentMaterial
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
- (BOOL)isEqual:(id)a3;
- (TSCH3DEnvironmentMaterial)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSCH3DEnvironmentMaterial

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = TSCH3DEnvironmentMaterial;
  result = [(TSCH3DTexturesMaterial *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 32) = self->_decalMode;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUSpecificCast();
    v6 = v5 && (v8.receiver = self, v8.super_class = TSCH3DEnvironmentMaterial, [(TSCH3DTexturesMaterial *)&v8 isEqual:v4]) && v5[32] == self->_decalMode;
  }

  return v6;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = TSCH3DEnvironmentMaterial;
  return [(TSCH3DTexturesMaterial *)&v3 hash]+ self->_decalMode;
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSCH3DEnvironmentMaterial alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, a3, v5);

  return v11;
}

- (TSCH3DEnvironmentMaterial)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 9))
  {
    v7 = *(a3 + 9);
  }

  else
  {
    v7 = &unk_2812F12E0;
  }

  v150.receiver = self;
  v150.super_class = TSCH3DEnvironmentMaterial;
  v8 = [(TSCH3DTexturesMaterial *)&v150 initWithArchive:v7 unarchiver:v6];
  v13 = v8;
  if (v8)
  {
    if (v8->super._tilings)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DEnvironmentMaterial(PersistenceAdditions) initWithArchive:unarchiver:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMaterial.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 431, 0, "expected nil value for '%{public}s'", "_tilings");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }

    v29 = v6;
    v30 = *(a3 + 14);
    v36 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v31, v32, v33, v34, v30);
    if (v30 >= 1)
    {
      v40 = 8;
      do
      {
        v41 = [TSCH3DImageTextureTiling alloc];
        v46 = objc_msgSend_initWithArchive_unarchiver_(v41, v42, v43, v44, v45, *(*(a3 + 8) + v40), v29);
        objc_msgSend_addObject_(v36, v47, v48, v49, v50, v46);

        v40 += 8;
        --v30;
      }

      while (v30);
    }

    v51 = objc_msgSend_copy(v36, v35, v37, v38, v39);

    v56 = objc_msgSend_copy(v51, v52, v53, v54, v55);
    tilings = v13->super._tilings;
    v13->super._tilings = v56;

    v62 = *(a3 + 14);
    if (!v62)
    {
      goto LABEL_28;
    }

    if ((v62 & 0x80000000) != 0)
    {
      v135 = MEMORY[0x277D81150];
      v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "[TSCH3DEnvironmentMaterial(PersistenceAdditions) initWithArchive:unarchiver:]");
      v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, v138, v139, v140, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMaterial.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v135, v142, v143, v144, v145, v136, v141, 434, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v146, v147, v148, v149);
      v62 = 0;
    }

    if (v62 != objc_msgSend_count(v13->super._textures, v58, v59, v60, v61))
    {
      v63 = MEMORY[0x277D81150];
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "[TSCH3DEnvironmentMaterial(PersistenceAdditions) initWithArchive:unarchiver:]");
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMaterial.mm");
      v74 = objc_msgSend_count(v13->super._textures, v70, v71, v72, v73);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v75, v76, v77, v78, v64, v69, 435, 0, "count mismatch textures %lu tilings %lu", v74, *(a3 + 14));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
    }

    if (!*(a3 + 14))
    {
LABEL_28:
      if (objc_msgSend_count(v13->super._textures, v58, v59, v60, v61))
      {
        v88 = objc_msgSend_array(MEMORY[0x277CBEB18], v83, v84, v85, v86);
        v92 = *(a3 + 8);
        if (v92 >= 1)
        {
          v93 = 8;
          do
          {
            v94 = [TSCH3DBaseImageTextureTiling alloc];
            v99 = objc_msgSend_initWithArchive_unarchiver_(v94, v95, v96, v97, v98, *(*(a3 + 5) + v93), v29);
            v104 = objc_msgSend_tiling(TSCH3DImageTextureTiling, v100, v101, v102, v103);
            objc_msgSend_copyFromBaseImageTextureTiling_(v104, v105, v106, v107, v108, v99);
            objc_msgSend_addObject_(v88, v109, v110, v111, v112, v104);

            v93 += 8;
            --v92;
          }

          while (v92);
        }

        if (objc_msgSend_count(v13->super._tilings, v87, v89, v90, v91))
        {
          v117 = MEMORY[0x277D81150];
          v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, v114, v115, v116, "[TSCH3DEnvironmentMaterial(PersistenceAdditions) initWithArchive:unarchiver:]");
          v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v119, v120, v121, v122, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMaterial.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v117, v124, v125, v126, v127, v118, v123, 446, 0, "cannot have tilings when archive does not contain any %@", v13->super._tilings);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v128, v129, v130, v131);
        }

        v132 = objc_msgSend_copy(v88, v113, v114, v115, v116);
        v133 = v13->super._tilings;
        v13->super._tilings = v132;
      }
    }

    if ((*(a3 + 16) & 2) != 0)
    {
      v13->_decalMode = *(a3 + 80);
    }
  }

  return v13;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a4;
  *(a3 + 4) |= 1u;
  v7 = *(a3 + 9);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = sub_276447714(v8);
    *(a3 + 9) = v7;
  }

  v37.receiver = self;
  v37.super_class = TSCH3DEnvironmentMaterial;
  [(TSCH3DTexturesMaterial *)&v37 saveToArchive:v7 archiver:v6];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = self->super._tilings;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, &v33, v38, 16);
  if (v15)
  {
    v19 = *v34;
    do
    {
      v20 = 0;
      do
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v9);
        }

        v21 = *(*(&v33 + 1) + 8 * v20);
        v22 = *(a3 + 8);
        if (!v22)
        {
          goto LABEL_15;
        }

        v23 = *(a3 + 14);
        v24 = *v22;
        if (v23 < *v22)
        {
          *(a3 + 14) = v23 + 1;
          objc_msgSend_saveToArchive_archiver_(v21, v14, v16, v17, v18, *&v22[2 * v23 + 2], v6, v33);
          goto LABEL_17;
        }

        if (v24 == *(a3 + 15))
        {
LABEL_15:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 48));
          v22 = *(a3 + 8);
          v24 = *v22;
        }

        *v22 = v24 + 1;
        v25 = sub_276447EFC(*(a3 + 6));
        v26 = *(a3 + 14);
        v27 = *(a3 + 8) + 8 * v26;
        *(a3 + 14) = v26 + 1;
        *(v27 + 8) = v25;
        objc_msgSend_saveToArchive_archiver_(v21, v28, v29, v30, v31, v25, v6, v33);
LABEL_17:
        ++v20;
      }

      while (v15 != v20);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v14, v16, v17, v18, &v33, v38, 16);
    }

    while (v15);
  }

  decalMode = self->_decalMode;
  *(a3 + 4) |= 2u;
  *(a3 + 80) = decalMode;
}

@end