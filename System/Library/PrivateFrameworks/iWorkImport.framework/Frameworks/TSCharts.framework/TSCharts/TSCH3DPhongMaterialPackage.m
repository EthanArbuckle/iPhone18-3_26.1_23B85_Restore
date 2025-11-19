@interface TSCH3DPhongMaterialPackage
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
+ (id)package;
- (BOOL)hasCompleteData;
- (BOOL)isEqual:(id)a3;
- (TSCH3DPhongMaterialPackage)init;
- (TSCH3DPhongMaterialPackage)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)materialEnumerator;
- (unint64_t)hash;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSCH3DPhongMaterialPackage

+ (id)package
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TSCH3DPhongMaterialPackage)init
{
  v14.receiver = self;
  v14.super_class = TSCH3DPhongMaterialPackage;
  v2 = [(TSCH3DMaterialPackage *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(TSCH3DEmissiveMaterial);
    emissive = v2->_emissive;
    v2->_emissive = v3;

    v5 = objc_alloc_init(TSCH3DDiffuseMaterial);
    diffuse = v2->_diffuse;
    v2->_diffuse = v5;

    v7 = objc_alloc_init(TSCH3DModulateMaterial);
    modulate = v2->_modulate;
    v2->_modulate = v7;

    v9 = objc_alloc_init(TSCH3DSpecularMaterial);
    specular = v2->_specular;
    v2->_specular = v9;

    v11 = objc_alloc_init(TSCH3DShininessMaterial);
    shininess = v2->_shininess;
    v2->_shininess = v11;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v37.receiver = self;
  v37.super_class = TSCH3DPhongMaterialPackage;
  v6 = [(TSCH3DMaterialPackage *)&v37 copyWithZone:?];
  if (v6)
  {
    v10 = objc_msgSend_copyWithZone_(self->_emissive, v5, v7, v8, v9, a3);
    v11 = v6[1];
    v6[1] = v10;

    v16 = objc_msgSend_copyWithZone_(self->_diffuse, v12, v13, v14, v15, a3);
    v17 = v6[2];
    v6[2] = v16;

    v22 = objc_msgSend_copyWithZone_(self->_modulate, v18, v19, v20, v21, a3);
    v23 = v6[3];
    v6[3] = v22;

    v28 = objc_msgSend_copyWithZone_(self->_specular, v24, v25, v26, v27, a3);
    v29 = v6[4];
    v6[4] = v28;

    v34 = objc_msgSend_copyWithZone_(self->_shininess, v30, v31, v32, v33, a3);
    v35 = v6[5];
    v6[5] = v34;
  }

  return v6;
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
    v6 = TSUSpecificCast();
    if (!v6)
    {
      goto LABEL_29;
    }

    if (!self->_emissive)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPhongMaterialPackage isEqual:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongMaterialPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 66, 0, "invalid nil value for '%{public}s'", "_emissive");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    }

    if (!self->_diffuse)
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPhongMaterialPackage isEqual:]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongMaterialPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 67, 0, "invalid nil value for '%{public}s'", "_diffuse");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
    }

    if (!self->_modulate)
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPhongMaterialPackage isEqual:]");
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongMaterialPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 68, 0, "invalid nil value for '%{public}s'", "_modulate");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
    }

    if (!self->_specular)
    {
      v55 = MEMORY[0x277D81150];
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPhongMaterialPackage isEqual:]");
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongMaterialPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 69, 0, "invalid nil value for '%{public}s'", "_specular");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
    }

    if (!self->_shininess)
    {
      v70 = MEMORY[0x277D81150];
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPhongMaterialPackage isEqual:]");
      v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongMaterialPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v77, v78, v79, v80, v71, v76, 70, 0, "invalid nil value for '%{public}s'", "_shininess");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
    }

    if (!v6[1])
    {
      v85 = MEMORY[0x277D81150];
      v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPhongMaterialPackage isEqual:]");
      v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, v88, v89, v90, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongMaterialPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v85, v92, v93, v94, v95, v86, v91, 71, 0, "invalid nil value for '%{public}s'", "other->_emissive");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v96, v97, v98, v99);
    }

    if (!v6[2])
    {
      v100 = MEMORY[0x277D81150];
      v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPhongMaterialPackage isEqual:]");
      v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, v103, v104, v105, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongMaterialPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v107, v108, v109, v110, v101, v106, 72, 0, "invalid nil value for '%{public}s'", "other->_diffuse");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v111, v112, v113, v114);
    }

    if (!v6[3])
    {
      v115 = MEMORY[0x277D81150];
      v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPhongMaterialPackage isEqual:]");
      v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, v118, v119, v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongMaterialPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v122, v123, v124, v125, v116, v121, 73, 0, "invalid nil value for '%{public}s'", "other->_modulate");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v126, v127, v128, v129);
    }

    if (!v6[4])
    {
      v130 = MEMORY[0x277D81150];
      v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPhongMaterialPackage isEqual:]");
      v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, v133, v134, v135, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongMaterialPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v130, v137, v138, v139, v140, v131, v136, 74, 0, "invalid nil value for '%{public}s'", "other->_specular");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v141, v142, v143, v144);
    }

    if (!v6[5])
    {
      v145 = MEMORY[0x277D81150];
      v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPhongMaterialPackage isEqual:]");
      v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, v148, v149, v150, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongMaterialPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v145, v152, v153, v154, v155, v146, v151, 75, 0, "invalid nil value for '%{public}s'", "other->_shininess");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v156, v157, v158, v159);
    }

    v182.receiver = self;
    v182.super_class = TSCH3DPhongMaterialPackage;
    if ([(TSCH3DMaterialPackage *)&v182 isEqual:v4]&& objc_msgSend_isEqual_(self->_emissive, v160, v161, v162, v163, v6[1]) && objc_msgSend_isEqual_(self->_diffuse, v164, v165, v166, v167, v6[2]) && objc_msgSend_isEqual_(self->_modulate, v168, v169, v170, v171, v6[3]) && objc_msgSend_isEqual_(self->_specular, v172, v173, v174, v175, v6[4]))
    {
      isEqual = objc_msgSend_isEqual_(self->_shininess, v176, v177, v178, v179, v6[5]);
    }

    else
    {
LABEL_29:
      isEqual = 0;
    }
  }

  return isEqual;
}

- (unint64_t)hash
{
  v29.receiver = self;
  v29.super_class = TSCH3DPhongMaterialPackage;
  v3 = [(TSCH3DMaterialPackage *)&v29 hash];
  v8 = &v3[objc_msgSend_hash(self->_emissive, v4, v5, v6, v7)];
  v13 = objc_msgSend_hash(self->_diffuse, v9, v10, v11, v12);
  v18 = &v8[v13 + objc_msgSend_hash(self->_modulate, v14, v15, v16, v17)];
  v23 = objc_msgSend_hash(self->_specular, v19, v20, v21, v22);
  return &v18[v23 + objc_msgSend_hash(self->_shininess, v24, v25, v26, v27)];
}

- (BOOL)hasCompleteData
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = self->_emissive;
  v14 = self->_diffuse;
  v15 = self->_modulate;
  v16 = self->_specular;
  v3 = self->_shininess;
  v8 = 0;
  v9 = 0;
  v17 = v3;
  do
  {
    v10 = *(&v13 + v9);
    if (v10 && (objc_msgSend_hasCompleteData(v10, v4, v5, v6, v7, v13, v14, v15, v16, v17, v18) & 1) == 0)
    {
      break;
    }

    v8 = v9++ > 3;
  }

  while (v9 != 5);
  for (i = 32; i != -8; i -= 8)
  {
  }

  return v8;
}

- (id)materialEnumerator
{
  v5 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], a2, v2, v3, v4, self->_emissive, self->_diffuse, self->_modulate, self->_specular, self->_shininess, 0);
  v10 = objc_msgSend_objectEnumerator(v5, v6, v7, v8, v9);

  return v10;
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSCH3DPhongMaterialPackage alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, a3, v5);

  return v11;
}

- (TSCH3DPhongMaterialPackage)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v44.receiver = self;
  v44.super_class = TSCH3DPhongMaterialPackage;
  v7 = [(TSCH3DMaterialPackage *)&v44 init];
  if (v7)
  {
    if (*(a3 + 16))
    {
      v9 = [TSCH3DEmissiveMaterial alloc];
      if (*(a3 + 3))
      {
        v8 = objc_msgSend_initWithArchive_unarchiver_(v9, v10, v11, v12, v13, *(a3 + 3), v6);
      }

      else
      {
        v8 = objc_msgSend_initWithArchive_unarchiver_(v9, v10, v11, v12, v13, &unk_2812F1318, v6);
      }
    }

    else
    {
      v8 = objc_alloc_init(TSCH3DEmissiveMaterial);
    }

    emissive = v7->_emissive;
    v7->_emissive = v8;

    if ((*(a3 + 16) & 2) != 0)
    {
      v16 = [TSCH3DDiffuseMaterial alloc];
      if (*(a3 + 4))
      {
        v15 = objc_msgSend_initWithArchive_unarchiver_(v16, v17, v18, v19, v20, *(a3 + 4), v6);
      }

      else
      {
        v15 = objc_msgSend_initWithArchive_unarchiver_(v16, v17, v18, v19, v20, &unk_2812F1350, v6);
      }
    }

    else
    {
      v15 = objc_alloc_init(TSCH3DDiffuseMaterial);
    }

    diffuse = v7->_diffuse;
    v7->_diffuse = v15;

    if ((*(a3 + 16) & 4) != 0)
    {
      v23 = [TSCH3DModulateMaterial alloc];
      if (*(a3 + 5))
      {
        v22 = objc_msgSend_initWithArchive_unarchiver_(v23, v24, v25, v26, v27, *(a3 + 5), v6);
      }

      else
      {
        v22 = objc_msgSend_initWithArchive_unarchiver_(v23, v24, v25, v26, v27, &unk_2812F1388, v6);
      }
    }

    else
    {
      v22 = objc_alloc_init(TSCH3DModulateMaterial);
    }

    modulate = v7->_modulate;
    v7->_modulate = v22;

    if ((*(a3 + 16) & 8) != 0)
    {
      v30 = [TSCH3DSpecularMaterial alloc];
      if (*(a3 + 6))
      {
        v29 = objc_msgSend_initWithArchive_unarchiver_(v30, v31, v32, v33, v34, *(a3 + 6), v6);
      }

      else
      {
        v29 = objc_msgSend_initWithArchive_unarchiver_(v30, v31, v32, v33, v34, &unk_2812F13C0, v6);
      }
    }

    else
    {
      v29 = objc_alloc_init(TSCH3DSpecularMaterial);
    }

    specular = v7->_specular;
    v7->_specular = v29;

    if ((*(a3 + 16) & 0x10) != 0)
    {
      v37 = [TSCH3DShininessMaterial alloc];
      if (*(a3 + 7))
      {
        v36 = objc_msgSend_initWithArchive_unarchiver_(v37, v38, v39, v40, v41, *(a3 + 7), v6);
      }

      else
      {
        v36 = objc_msgSend_initWithArchive_unarchiver_(v37, v38, v39, v40, v41, &unk_2812F13F8, v6);
      }
    }

    else
    {
      v36 = objc_alloc_init(TSCH3DShininessMaterial);
    }

    shininess = v7->_shininess;
    v7->_shininess = v36;
  }

  return v7;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v7 = a4;
  emissive = self->_emissive;
  *(a3 + 4) |= 1u;
  v12 = *(a3 + 3);
  v42 = v7;
  if (!v12)
  {
    v13 = *(a3 + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = sub_2764477A0(v13);
    *(a3 + 3) = v12;
    v7 = v42;
  }

  objc_msgSend_saveToArchive_archiver_(emissive, v6, v8, v9, v10, v12, v7);
  diffuse = self->_diffuse;
  *(a3 + 4) |= 2u;
  v19 = *(a3 + 4);
  if (!v19)
  {
    v20 = *(a3 + 1);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = sub_27644782C(v20);
    *(a3 + 4) = v19;
  }

  objc_msgSend_saveToArchive_archiver_(diffuse, v14, v15, v16, v17, v19, v42);
  modulate = self->_modulate;
  *(a3 + 4) |= 4u;
  v26 = *(a3 + 5);
  if (!v26)
  {
    v27 = *(a3 + 1);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = sub_2764478B8(v27);
    *(a3 + 5) = v26;
  }

  objc_msgSend_saveToArchive_archiver_(modulate, v21, v22, v23, v24, v26, v42);
  specular = self->_specular;
  *(a3 + 4) |= 8u;
  v33 = *(a3 + 6);
  if (!v33)
  {
    v34 = *(a3 + 1);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = sub_276447944(v34);
    *(a3 + 6) = v33;
  }

  objc_msgSend_saveToArchive_archiver_(specular, v28, v29, v30, v31, v33, v42);
  shininess = self->_shininess;
  *(a3 + 4) |= 0x10u;
  v40 = *(a3 + 7);
  if (!v40)
  {
    v41 = *(a3 + 1);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = sub_2764479D0(v41);
    *(a3 + 7) = v40;
  }

  objc_msgSend_saveToArchive_archiver_(shininess, v35, v36, v37, v38, v40, v42);
}

@end