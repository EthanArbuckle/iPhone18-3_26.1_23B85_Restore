@interface TSCHAssetColorMap
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)sharedInstance;
- (TSCHAssetColorMap)init;
- (id)colorForFilename:(id)a3 fillSetIdentifier:(id)a4;
- (id)colorForFilename:(id)a3 imageSetIdentifier:(id)a4;
@end

@implementation TSCHAssetColorMap

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSCHAssetColorMap;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276323F18;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A47AD0 != -1)
  {
    dispatch_once(&qword_280A47AD0, block);
  }

  v2 = qword_280A47AC8;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCHAssetColorMap allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHAssetColorMap.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 25, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (TSCHAssetColorMap)init
{
  v24.receiver = self;
  v24.super_class = TSCHAssetColorMap;
  v3 = [(TSCHAssetColorMap *)&v24 init];
  if (v3)
  {
    v7 = objc_msgSend_assetColorMap(MEMORY[0x277D81158], v2, v4, v5, v6);
    objc_msgSend_addChartEntries(v7, v8, v9, v10, v11);
    v16 = objc_msgSend_assetPathToColorMap(v7, v12, v13, v14, v15);
    v21 = objc_msgSend_copy(v16, v17, v18, v19, v20);
    assetPathToColorMap = v3->_assetPathToColorMap;
    v3->_assetPathToColorMap = v21;
  }

  return v3;
}

- (id)colorForFilename:(id)a3 fillSetIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_length(v6, v8, v9, v10, v11))
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHAssetColorMap colorForFilename:fillSetIdentifier:]");
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHAssetColorMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v63, v64, v65, v66, v57, v62, 39, 0, "invalid nil value for '%{public}s'", "fillSetIdentifier");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
    objc_msgSend_length(v6, v71, v72, v73, v74);
    goto LABEL_9;
  }

  v41 = MEMORY[0x277D81150];
  v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHAssetColorMap colorForFilename:fillSetIdentifier:]");
  v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHAssetColorMap.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v49, v50, v51, v42, v47, 38, 0, "Empty chart asset filename %@", v6);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (objc_msgSend_length(v6, v12, v13, v14, v15))
  {
    v20 = objc_msgSend_textureSetFilename(v7, v16, v17, v18, v19);
    v25 = objc_msgSend_stringByAppendingPathComponent_(@"Charts/Fills/Textures", v21, v22, v23, v24, v20);
    v30 = objc_msgSend_stringByAppendingPathComponent_(v25, v26, v27, v28, v29, v6);

    objc_opt_class();
    v35 = objc_msgSend_objectForKeyedSubscript_(self->_assetPathToColorMap, v31, v32, v33, v34, v30);
    v36 = TSUCheckedDynamicCast();

    if (v36)
    {

      goto LABEL_10;
    }

    v75 = MEMORY[0x277D81150];
    v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "[TSCHAssetColorMap colorForFilename:fillSetIdentifier:]");
    v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, v78, v79, v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHAssetColorMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v82, v83, v84, v85, v76, v81, 46, 0, "Color missing for asset path %@", v30);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87, v88, v89);
  }

LABEL_9:
  v90 = MEMORY[0x277D81150];
  v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHAssetColorMap colorForFilename:fillSetIdentifier:]");
  v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, v93, v94, v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHAssetColorMap.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v97, v98, v99, v100, v91, v96, 48, 0, "invalid nil value for '%{public}s'", "color");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v101, v102, v103, v104);
  v36 = 0;
LABEL_10:

  return v36;
}

- (id)colorForFilename:(id)a3 imageSetIdentifier:(id)a4
{
  v189 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_length(v5, v7, v8, v9, v10))
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHAssetColorMap colorForFilename:imageSetIdentifier:]");
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHAssetColorMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v67, v68, v69, v70, v61, v66, 54, 0, "invalid nil value for '%{public}s'", "imageSetIdentifier");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
    objc_msgSend_length(v5, v75, v76, v77, v78);
    goto LABEL_32;
  }

  v45 = MEMORY[0x277D81150];
  v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHAssetColorMap colorForFilename:imageSetIdentifier:]");
  v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHAssetColorMap.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v52, v53, v54, v55, v46, v51, 53, 0, "Empty chart asset filename %@", v5);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!objc_msgSend_length(v5, v11, v12, v13, v14))
  {
LABEL_32:
    v158 = MEMORY[0x277D81150];
    v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCHAssetColorMap colorForFilename:imageSetIdentifier:]");
    v164 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v160, v161, v162, v163, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHAssetColorMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v158, v165, v166, v167, v168, v159, v164, 87, 0, "nil color for filename %@", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v169, v170, v171, v172);
    v111 = 0;
    goto LABEL_33;
  }

  v19 = MEMORY[0x277CBEB18];
  v20 = objc_msgSend_stringByAppendingPathComponent_(@"charts/fills/images", v15, v16, v17, v18, v6);
  v25 = objc_msgSend_stringByAppendingPathComponent_(v20, v21, v22, v23, v24, v5);
  v30 = objc_msgSend_arrayWithObject_(v19, v26, v27, v28, v29, v25);

  v35 = objc_msgSend_pathExtension(v5, v31, v32, v33, v34);
  LOBYTE(v25) = objc_msgSend_isEqualToString_(v35, v36, v37, v38, v39, @"tiff");

  if (v25)
  {
    v44 = @"tif";
  }

  else
  {
    v79 = objc_msgSend_pathExtension(v5, v40, v41, v42, v43);
    isEqualToString = objc_msgSend_isEqualToString_(v79, v80, v81, v82, v83, @"jpeg");

    if (!isEqualToString)
    {
      goto LABEL_11;
    }

    v44 = @"jpg";
  }

  v85 = objc_msgSend_stringByDeletingPathExtension(v5, v40, v41, v42, v43);
  v90 = objc_msgSend_stringByAppendingPathExtension_(v85, v86, v87, v88, v89, v44);

  v95 = objc_msgSend_stringByAppendingPathComponent_(@"charts/fills/images", v91, v92, v93, v94, v6);
  v100 = objc_msgSend_stringByAppendingPathComponent_(v95, v96, v97, v98, v99, v90);
  objc_msgSend_addObject_(v30, v101, v102, v103, v104, v100);

LABEL_11:
  v174 = v6;
  v175 = v5;
  v178 = objc_msgSend_allKeys(self->_assetPathToColorMap, v40, v41, v42, v43);
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  obj = v30;
  v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v105, v106, v107, v108, &v183, v188, 16);
  if (v109)
  {
    v110 = v109;
    v111 = 0;
    v112 = *v184;
    do
    {
      for (i = 0; i != v110; ++i)
      {
        if (*v184 != v112)
        {
          objc_enumerationMutation(obj);
        }

        v114 = *(*(&v183 + 1) + 8 * i);
        v179 = 0u;
        v180 = 0u;
        v181 = 0u;
        v182 = 0u;
        v115 = v178;
        v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v115, v116, v117, v118, v119, &v179, v187, 16);
        if (v120)
        {
          v125 = v120;
          v126 = *v180;
          while (2)
          {
            for (j = 0; j != v125; ++j)
            {
              if (*v180 != v126)
              {
                objc_enumerationMutation(v115);
              }

              v128 = *(*(&v179 + 1) + 8 * j);
              if (!objc_msgSend_caseInsensitiveCompare_(v128, v121, v122, v123, v124, v114))
              {
                objc_opt_class();
                v133 = objc_msgSend_objectForKeyedSubscript_(self->_assetPathToColorMap, v129, v130, v131, v132, v128);
                v134 = TSUCheckedDynamicCast();

                v111 = v134;
                if (!v134)
                {
                  v139 = MEMORY[0x277D81150];
                  v140 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v135, v136, v137, v138, "[TSCHAssetColorMap colorForFilename:imageSetIdentifier:]");
                  v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v141, v142, v143, v144, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHAssetColorMap.m");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v139, v146, v147, v148, v149, v140, v145, 80, 0, "Color missing for asset path %@", v114);

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v150, v151, v152, v153);
                  v111 = 0;
                }

                goto LABEL_27;
              }
            }

            v125 = objc_msgSend_countByEnumeratingWithState_objects_count_(v115, v121, v122, v123, v124, &v179, v187, 16);
            if (v125)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:
      }

      v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v154, v155, v156, v157, &v183, v188, 16);
    }

    while (v110);
  }

  else
  {
    v111 = 0;
  }

  v6 = v174;
  v5 = v175;
  if (!v111)
  {
    goto LABEL_32;
  }

LABEL_33:

  return v111;
}

@end