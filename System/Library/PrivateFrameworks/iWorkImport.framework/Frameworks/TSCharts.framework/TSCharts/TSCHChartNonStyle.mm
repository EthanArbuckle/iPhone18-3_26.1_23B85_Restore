@interface TSCHChartNonStyle
+ (float)defaultFloatValueForProperty:(int)a3;
+ (id)defaultStyleWithContext:(id)a3;
+ (id)defaultValueForProperty:(int)a3;
+ (id)imageFillProperties;
+ (id)properties;
+ (int)defaultIntValueForProperty:(int)a3;
+ (int)muxDefaultPropertyForSpecificProperty:(int)a3;
- (TSCHChartNonStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (void)loadFromPreUFFArchiveWithUnarchiver:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSCHChartNonStyle

+ (id)defaultStyleWithContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v5, v6, v7, v8, v3, 0, 0, 0);

  return isVariation;
}

- (TSCHChartNonStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6
{
  v7.receiver = self;
  v7.super_class = TSCHChartNonStyle;
  return [(TSCHChartNonStyle *)&v7 initWithContext:a3 name:a4 overridePropertyMap:a5 isVariation:a6];
}

- (void)loadFromUnarchiver:(id)a3
{
  v189 = *MEMORY[0x277D85DE8];
  v179 = a3;
  if (objc_msgSend_messageType(v179, v4, v5, v6, v7) == 5014)
  {
    objc_msgSend_loadFromPreUFFArchiveWithUnarchiver_(self, v8, v9, v10, v11, v179);
    goto LABEL_122;
  }

  v12 = v179;
  google::protobuf::internal::AssignDescriptors();
  v17 = objc_msgSend_messageWithDescriptor_(v12, v13, v14, v15, v16, off_2812ED2B8[10]);

  if ((*(v17 + 40) & 1) == 0)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCHChartNonStyle loadFromUnarchiver:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartNonStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 84, 0, "Missing superclass message");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  if (*(v17 + 48))
  {
    v37 = *(v17 + 48);
  }

  else
  {
    v37 = MEMORY[0x277D80BD0];
  }

  v187.receiver = self;
  v187.super_class = TSCHChartNonStyle;
  [(TSCHChartNonStyle *)&v187 loadFromArchive:v37 unarchiver:v12];
  if ((google::protobuf::internal::ExtensionSet::Has((v17 + 16)) & 1) == 0)
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "[TSCHChartNonStyle loadFromUnarchiver:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartNonStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 88, 0, "Protobuf missing expected extension");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
  }

  Message = google::protobuf::internal::ExtensionSet::GetMessage();
  v58 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v63 = v58;
  v64 = *(Message + 16);
  if ((v64 & 0x1000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v58, v59, v60, v61, v62, *(Message + 128), 1298);
    v64 = *(Message + 16);
  }

  if ((v64 & 0x800000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 164), 1299);
    v64 = *(Message + 16);
  }

  if ((v64 & 0x2000) != 0)
  {
    LODWORD(v60) = *(Message + 132);
    objc_msgSend_setFloatValue_forProperty_(v63, v59, v60, v61, v62, 1301);
    v64 = *(Message + 16);
  }

  if ((v64 & 2) != 0)
  {
    v66 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v59, v60, v61, v62, *(Message + 40), v12);
    if (v66)
    {
      objc_msgSend_setObject_forProperty_(v63, v65, v67, v68, v69, v66, 1308);
    }

    v64 = *(Message + 16);
  }

  if ((v64 & 4) != 0)
  {
    v71 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v59, v60, v61, v62, *(Message + 48), v12);
    if (v71)
    {
      objc_msgSend_setObject_forProperty_(v63, v70, v72, v73, v74, v71, 1309);
    }

    v64 = *(Message + 16);
  }

  if ((v64 & 8) != 0)
  {
    v76 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v59, v60, v61, v62, *(Message + 56), v12);
    if (v76)
    {
      objc_msgSend_setObject_forProperty_(v63, v75, v77, v78, v79, v76, 1310);
    }

    v64 = *(Message + 16);
  }

  if ((v64 & 0x10) != 0)
  {
    v81 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v59, v60, v61, v62, *(Message + 64), v12);
    if (v81)
    {
      objc_msgSend_setObject_forProperty_(v63, v80, v82, v83, v84, v81, 1311);
    }

    v64 = *(Message + 16);
  }

  if ((v64 & 0x20) != 0)
  {
    v86 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v59, v60, v61, v62, *(Message + 72), v12);
    if (v86)
    {
      objc_msgSend_setObject_forProperty_(v63, v85, v87, v88, v89, v86, 1312);
    }

    v64 = *(Message + 16);
  }

  if ((v64 & 0x40) != 0)
  {
    v91 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v59, v60, v61, v62, *(Message + 80), v12);
    if (v91)
    {
      objc_msgSend_setObject_forProperty_(v63, v90, v92, v93, v94, v91, 1313);
    }

    v64 = *(Message + 16);
  }

  if ((v64 & 0x80) != 0)
  {
    v96 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v59, v60, v61, v62, *(Message + 88), v12);
    if (v96)
    {
      objc_msgSend_setObject_forProperty_(v63, v95, v97, v98, v99, v96, 1314);
    }

    v64 = *(Message + 16);
  }

  if ((v64 & 0x100) != 0)
  {
    v101 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v59, v60, v61, v62, *(Message + 96), v12);
    if (v101)
    {
      objc_msgSend_setObject_forProperty_(v63, v100, v102, v103, v104, v101, 1315);
    }

    v64 = *(Message + 16);
  }

  if ((v64 & 0x10000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 172), 1322);
    v64 = *(Message + 16);
  }

  if ((v64 & 0x20000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 176), 1323);
    v64 = *(Message + 16);
  }

  if ((v64 & 0x40000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 180), 1324);
  }

  if ((*(Message + 20) & 8) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 200), 1325);
  }

  v105 = *(Message + 16);
  if ((v105 & 0x80000000) == 0)
  {
    if ((v105 & 0x8000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 184), 1326);
  if ((*(Message + 16) & 0x8000000) != 0)
  {
LABEL_60:
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 168), 1327);
  }

LABEL_61:
  v106 = *(Message + 20);
  if (v106)
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 188), 1328);
    v106 = *(Message + 20);
  }

  if ((v106 & 2) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 192), 1329);
    v106 = *(Message + 20);
  }

  if ((v106 & 4) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 196), 1330);
  }

  if (*(Message + 19))
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 165), 1332);
  }

  if ((*(Message + 20) & 0x10) != 0)
  {
    LODWORD(v60) = *(Message + 204);
    objc_msgSend_setFloatValue_forProperty_(v63, v59, v60, v61, v62, 1333);
  }

  v107 = *(Message + 16);
  if ((v107 & 0x8000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 140), 1334);
    v107 = *(Message + 16);
  }

  if ((v107 & 0x2000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 166), 1336);
    v107 = *(Message + 16);
  }

  if ((v107 & 0x100000) != 0)
  {
    LODWORD(v60) = *(Message + 152);
    objc_msgSend_setFloatValue_forProperty_(v63, v59, v60, v61, v62, 1339);
    v107 = *(Message + 16);
  }

  if ((v107 & 0x80000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 148), 1342);
    v107 = *(Message + 16);
  }

  if ((v107 & 0x4000) != 0)
  {
    LODWORD(v60) = *(Message + 136);
    objc_msgSend_setFloatValue_forProperty_(v63, v59, v60, v61, v62, 1343);
    v107 = *(Message + 16);
  }

  if ((v107 & 0x200000) != 0)
  {
    LODWORD(v60) = *(Message + 156);
    objc_msgSend_setFloatValue_forProperty_(v63, v59, v60, v61, v62, 1345);
    v107 = *(Message + 16);
  }

  if ((v107 & 0x4000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 167), 1349);
    v107 = *(Message + 16);
  }

  if ((v107 & 0x10000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 144), 1350);
    v107 = *(Message + 16);
  }

  if ((v107 & 0x20000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 145), 1351);
    v107 = *(Message + 16);
  }

  if ((v107 & 0x400) != 0)
  {
    v109 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHTimeBasedFormat, v59, v60, v61, v62, *(Message + 112), v12);
    if (v109)
    {
      objc_msgSend_setObject_forProperty_(v63, v108, v110, v111, v112, v109, 1352);
    }

    v107 = *(Message + 16);
  }

  if ((v107 & 0x800) != 0)
  {
    v114 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHTimeBasedFormat, v59, v60, v61, v62, *(Message + 120), v12);
    if (v114)
    {
      objc_msgSend_setObject_forProperty_(v63, v113, v115, v116, v117, v114, 1353);
    }

    v107 = *(Message + 16);
  }

  if ((v107 & 0x200) != 0)
  {
    v119 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHNumberFormat, v59, v60, v61, v62, *(Message + 104), v12);
    if (v119)
    {
      objc_msgSend_setObject_forProperty_(v63, v118, v120, v121, v122, v119, 1354);
    }

    v107 = *(Message + 16);
  }

  if ((v107 & 0x400000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 160), 1355);
    v107 = *(Message + 16);
  }

  if ((v107 & 0x40000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v63, v59, v60, v61, v62, *(Message + 146), 1358);
    v107 = *(Message + 16);
  }

  if (v107)
  {
    v123 = objc_alloc(MEMORY[0x277CCACA8]);
    v129 = objc_msgSend_tsp_initWithProtobufString_(v123, v124, v125, v126, v127, *(Message + 32) & 0xFFFFFFFFFFFFFFFELL);
    if (v129)
    {
      objc_msgSend_setObject_forProperty_(v63, v128, v130, v131, v132, v129, 1361);
    }
  }

  objc_storeStrong((&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]), v63);
  if (objc_msgSend_definesProperty_(self, v133, v134, v135, v136, 1067))
  {
    v141 = objc_msgSend_intValueForProperty_(self, v137, v138, v139, v140, 1067);
  }

  else
  {
    v141 = 0;
  }

  v186[0] = MEMORY[0x277D85DD0];
  v186[1] = 3221225472;
  v186[2] = sub_2762B9E34;
  v186[3] = &unk_27A6B7700;
  v186[4] = self;
  v142 = objc_msgSend_scale3DPropertyToConstantDepthInfoChartScaleMappingsWithBarShape_conversionBlock_(TSCHChartInfo, v137, v138, v139, v140, v141, v186);
  if (objc_msgSend_count(v142, v143, v144, v145, v146))
  {
    objc_msgSend_willModifyForUpgrade(self, v147, v148, v149, v150);
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v151 = v142;
    v157 = objc_msgSend_countByEnumeratingWithState_objects_count_(v151, v152, v153, v154, v155, &v182, v188, 16);
    if (v157)
    {
      v161 = *v183;
      do
      {
        for (i = 0; i != v157; ++i)
        {
          if (*v183 != v161)
          {
            objc_enumerationMutation(v151);
          }

          v163 = *(*(&v182 + 1) + 8 * i);
          v164 = objc_msgSend_objectForKeyedSubscript_(v151, v156, v158, v159, v160, v163);
          v169 = objc_msgSend_tsch_stylePropertyValue(v163, v165, v166, v167, v168);
          objc_msgSend_setValue_forProperty_(self, v170, v171, v172, v173, v164, v169);
        }

        v157 = objc_msgSend_countByEnumeratingWithState_objects_count_(v151, v156, v158, v159, v160, &v182, v188, 16);
      }

      while (v157);
    }
  }

  isCrossAppPaste = objc_msgSend_isCrossAppPaste(v12, v147, v148, v149, v150);
  v180[0] = MEMORY[0x277D85DD0];
  v180[1] = 3221225472;
  v180[2] = sub_2762B9EE8;
  v180[3] = &unk_27A6B7660;
  v181 = isCrossAppPaste;
  v180[4] = self;
  objc_msgSend_addFinalizeHandler_(v12, v175, v176, v177, v178, v180);

LABEL_122:
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, v6, v7, v8, sub_2762BB744, off_2812ED2B8[10]);

  *(v9 + 40) |= 1u;
  v10 = *(v9 + 48);
  if (!v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x277C97BA0](v11);
    *(v9 + 48) = v10;
  }

  v280.receiver = self;
  v280.super_class = TSCHChartNonStyle;
  [(TSCHChartNonStyle *)&v280 saveToArchive:v10 archiver:v4];
  sub_27640AFF0();
  v12 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v13 = *(&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]);
  if (objc_msgSend_isForCopy(v4, v14, v15, v16, v17))
  {
    v22 = objc_msgSend_overrideMapForSameAsSource(self, v18, v19, v20, v21);

    if (v22)
    {
      v23 = objc_msgSend_overrideMapForSameAsSource(self, v18, v19, v20, v21);
      v28 = objc_msgSend_propertyMapByAddingValuesFromPropertyMap_(v13, v24, v25, v26, v27, v23);

      v13 = v28;
    }
  }

  if (objc_msgSend_containsProperty_(v13, v18, v19, v20, v21, 1298))
  {
    v33 = objc_msgSend_intValueForProperty_(v13, v29, v30, v31, v32, 1298);
    *(v12 + 16) |= 0x1000u;
    *(v12 + 128) = v33;
  }

  if (objc_msgSend_containsProperty_(v13, v29, v30, v31, v32, 1299))
  {
    v38 = objc_msgSend_intValueForProperty_(v13, v34, v35, v36, v37, 1299) != 0;
    *(v12 + 16) |= 0x800000u;
    *(v12 + 164) = v38;
  }

  if (objc_msgSend_containsProperty_(v13, v34, v35, v36, v37, 1301))
  {
    objc_msgSend_floatValueForProperty_(v13, v39, v40, v41, v42, 1301);
    *(v12 + 16) |= 0x2000u;
    *(v12 + 132) = LODWORD(v40);
  }

  if (objc_msgSend_containsProperty_(v13, v39, v40, v41, v42, 1308))
  {
    v48 = objc_msgSend_objectForProperty_(v13, v43, v44, v45, v46, 1308);
    *(v12 + 16) |= 2u;
    v52 = *(v12 + 40);
    if (!v52)
    {
      v53 = *(v12 + 8);
      if (v53)
      {
        v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
      }

      v52 = sub_276447FD4(v53);
      *(v12 + 40) = v52;
    }

    objc_msgSend_saveToArchive_archiver_(v48, v47, v49, v50, v51, v52, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v43, v44, v45, v46, 1309))
  {
    v59 = objc_msgSend_objectForProperty_(v13, v54, v55, v56, v57, 1309);
    *(v12 + 16) |= 4u;
    v63 = *(v12 + 48);
    if (!v63)
    {
      v64 = *(v12 + 8);
      if (v64)
      {
        v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
      }

      v63 = sub_276447FD4(v64);
      *(v12 + 48) = v63;
    }

    objc_msgSend_saveToArchive_archiver_(v59, v58, v60, v61, v62, v63, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v54, v55, v56, v57, 1310))
  {
    v70 = objc_msgSend_objectForProperty_(v13, v65, v66, v67, v68, 1310);
    *(v12 + 16) |= 8u;
    v74 = *(v12 + 56);
    if (!v74)
    {
      v75 = *(v12 + 8);
      if (v75)
      {
        v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
      }

      v74 = sub_276447FD4(v75);
      *(v12 + 56) = v74;
    }

    objc_msgSend_saveToArchive_archiver_(v70, v69, v71, v72, v73, v74, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v65, v66, v67, v68, 1311))
  {
    v81 = objc_msgSend_objectForProperty_(v13, v76, v77, v78, v79, 1311);
    *(v12 + 16) |= 0x10u;
    v85 = *(v12 + 64);
    if (!v85)
    {
      v86 = *(v12 + 8);
      if (v86)
      {
        v86 = *(v86 & 0xFFFFFFFFFFFFFFFELL);
      }

      v85 = sub_276447FD4(v86);
      *(v12 + 64) = v85;
    }

    objc_msgSend_saveToArchive_archiver_(v81, v80, v82, v83, v84, v85, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v76, v77, v78, v79, 1312))
  {
    v92 = objc_msgSend_objectForProperty_(v13, v87, v88, v89, v90, 1312);
    *(v12 + 16) |= 0x20u;
    v96 = *(v12 + 72);
    if (!v96)
    {
      v97 = *(v12 + 8);
      if (v97)
      {
        v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
      }

      v96 = sub_276447FD4(v97);
      *(v12 + 72) = v96;
    }

    objc_msgSend_saveToArchive_archiver_(v92, v91, v93, v94, v95, v96, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v87, v88, v89, v90, 1313))
  {
    v103 = objc_msgSend_objectForProperty_(v13, v98, v99, v100, v101, 1313);
    *(v12 + 16) |= 0x40u;
    v107 = *(v12 + 80);
    if (!v107)
    {
      v108 = *(v12 + 8);
      if (v108)
      {
        v108 = *(v108 & 0xFFFFFFFFFFFFFFFELL);
      }

      v107 = sub_276447FD4(v108);
      *(v12 + 80) = v107;
    }

    objc_msgSend_saveToArchive_archiver_(v103, v102, v104, v105, v106, v107, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v98, v99, v100, v101, 1314))
  {
    v114 = objc_msgSend_objectForProperty_(v13, v109, v110, v111, v112, 1314);
    *(v12 + 16) |= 0x80u;
    v118 = *(v12 + 88);
    if (!v118)
    {
      v119 = *(v12 + 8);
      if (v119)
      {
        v119 = *(v119 & 0xFFFFFFFFFFFFFFFELL);
      }

      v118 = sub_276447FD4(v119);
      *(v12 + 88) = v118;
    }

    objc_msgSend_saveToArchive_archiver_(v114, v113, v115, v116, v117, v118, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v109, v110, v111, v112, 1315))
  {
    v125 = objc_msgSend_objectForProperty_(v13, v120, v121, v122, v123, 1315);
    *(v12 + 16) |= 0x100u;
    v129 = *(v12 + 96);
    if (!v129)
    {
      v130 = *(v12 + 8);
      if (v130)
      {
        v130 = *(v130 & 0xFFFFFFFFFFFFFFFELL);
      }

      v129 = sub_276447FD4(v130);
      *(v12 + 96) = v129;
    }

    objc_msgSend_saveToArchive_archiver_(v125, v124, v126, v127, v128, v129, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v120, v121, v122, v123, 1322))
  {
    v135 = objc_msgSend_intValueForProperty_(v13, v131, v132, v133, v134, 1322);
    *(v12 + 16) |= 0x10000000u;
    *(v12 + 172) = v135;
  }

  if (objc_msgSend_containsProperty_(v13, v131, v132, v133, v134, 1323))
  {
    v140 = objc_msgSend_intValueForProperty_(v13, v136, v137, v138, v139, 1323);
    *(v12 + 16) |= 0x20000000u;
    *(v12 + 176) = v140;
  }

  if (objc_msgSend_containsProperty_(v13, v136, v137, v138, v139, 1324))
  {
    v145 = objc_msgSend_intValueForProperty_(v13, v141, v142, v143, v144, 1324);
    *(v12 + 16) |= 0x40000000u;
    *(v12 + 180) = v145;
  }

  if (objc_msgSend_containsProperty_(v13, v141, v142, v143, v144, 1325))
  {
    v150 = objc_msgSend_intValueForProperty_(v13, v146, v147, v148, v149, 1325);
    *(v12 + 20) |= 8u;
    *(v12 + 200) = v150;
  }

  if (objc_msgSend_containsProperty_(v13, v146, v147, v148, v149, 1326))
  {
    v155 = objc_msgSend_intValueForProperty_(v13, v151, v152, v153, v154, 1326);
    *(v12 + 16) |= 0x80000000;
    *(v12 + 184) = v155;
  }

  if (objc_msgSend_containsProperty_(v13, v151, v152, v153, v154, 1327))
  {
    v160 = objc_msgSend_intValueForProperty_(v13, v156, v157, v158, v159, 1327);
    *(v12 + 16) |= 0x8000000u;
    *(v12 + 168) = v160;
  }

  if (objc_msgSend_containsProperty_(v13, v156, v157, v158, v159, 1328))
  {
    v165 = objc_msgSend_intValueForProperty_(v13, v161, v162, v163, v164, 1328);
    *(v12 + 20) |= 1u;
    *(v12 + 188) = v165;
  }

  if (objc_msgSend_containsProperty_(v13, v161, v162, v163, v164, 1329))
  {
    v170 = objc_msgSend_intValueForProperty_(v13, v166, v167, v168, v169, 1329);
    *(v12 + 20) |= 2u;
    *(v12 + 192) = v170;
  }

  if (objc_msgSend_containsProperty_(v13, v166, v167, v168, v169, 1330))
  {
    v175 = objc_msgSend_intValueForProperty_(v13, v171, v172, v173, v174, 1330);
    *(v12 + 20) |= 4u;
    *(v12 + 196) = v175;
  }

  if (objc_msgSend_containsProperty_(v13, v171, v172, v173, v174, 1332))
  {
    v180 = objc_msgSend_intValueForProperty_(v13, v176, v177, v178, v179, 1332) != 0;
    *(v12 + 16) |= 0x1000000u;
    *(v12 + 165) = v180;
  }

  if (objc_msgSend_containsProperty_(v13, v176, v177, v178, v179, 1333))
  {
    objc_msgSend_floatValueForProperty_(v13, v181, v182, v183, v184, 1333);
    *(v12 + 20) |= 0x10u;
    *(v12 + 204) = LODWORD(v182);
  }

  if (objc_msgSend_containsProperty_(v13, v181, v182, v183, v184, 1334))
  {
    v189 = objc_msgSend_intValueForProperty_(v13, v185, v186, v187, v188, 1334);
    *(v12 + 16) |= 0x8000u;
    *(v12 + 140) = v189;
  }

  if (objc_msgSend_containsProperty_(v13, v185, v186, v187, v188, 1336))
  {
    v194 = objc_msgSend_intValueForProperty_(v13, v190, v191, v192, v193, 1336) != 0;
    *(v12 + 16) |= 0x2000000u;
    *(v12 + 166) = v194;
  }

  if (objc_msgSend_containsProperty_(v13, v190, v191, v192, v193, 1339))
  {
    objc_msgSend_floatValueForProperty_(v13, v195, v196, v197, v198, 1339);
    *(v12 + 16) |= 0x100000u;
    *(v12 + 152) = LODWORD(v196);
  }

  if (objc_msgSend_containsProperty_(v13, v195, v196, v197, v198, 1342))
  {
    v203 = objc_msgSend_intValueForProperty_(v13, v199, v200, v201, v202, 1342);
    *(v12 + 16) |= 0x80000u;
    *(v12 + 148) = v203;
  }

  if (objc_msgSend_containsProperty_(v13, v199, v200, v201, v202, 1343))
  {
    objc_msgSend_floatValueForProperty_(v13, v204, v205, v206, v207, 1343);
    *(v12 + 16) |= 0x4000u;
    *(v12 + 136) = LODWORD(v205);
  }

  if (objc_msgSend_containsProperty_(v13, v204, v205, v206, v207, 1345))
  {
    objc_msgSend_floatValueForProperty_(v13, v208, v209, v210, v211, 1345);
    *(v12 + 16) |= 0x200000u;
    *(v12 + 156) = LODWORD(v209);
  }

  if (objc_msgSend_containsProperty_(v13, v208, v209, v210, v211, 1349))
  {
    v216 = objc_msgSend_intValueForProperty_(v13, v212, v213, v214, v215, 1349) != 0;
    *(v12 + 16) |= 0x4000000u;
    *(v12 + 167) = v216;
  }

  if (objc_msgSend_containsProperty_(v13, v212, v213, v214, v215, 1350))
  {
    v221 = objc_msgSend_intValueForProperty_(v13, v217, v218, v219, v220, 1350) != 0;
    *(v12 + 16) |= 0x10000u;
    *(v12 + 144) = v221;
  }

  if (objc_msgSend_containsProperty_(v13, v217, v218, v219, v220, 1351))
  {
    v226 = objc_msgSend_intValueForProperty_(v13, v222, v223, v224, v225, 1351) != 0;
    *(v12 + 16) |= 0x20000u;
    *(v12 + 145) = v226;
  }

  if (objc_msgSend_containsProperty_(v13, v222, v223, v224, v225, 1352))
  {
    v232 = objc_msgSend_objectForProperty_(v13, v227, v228, v229, v230, 1352);
    *(v12 + 16) |= 0x400u;
    v236 = *(v12 + 112);
    if (!v236)
    {
      v237 = *(v12 + 8);
      if (v237)
      {
        v237 = *(v237 & 0xFFFFFFFFFFFFFFFELL);
      }

      v236 = MEMORY[0x277C97B00](v237);
      *(v12 + 112) = v236;
    }

    objc_msgSend_saveToArchive_archiver_(v232, v231, v233, v234, v235, v236, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v227, v228, v229, v230, 1353))
  {
    v243 = objc_msgSend_objectForProperty_(v13, v238, v239, v240, v241, 1353);
    *(v12 + 16) |= 0x800u;
    v247 = *(v12 + 120);
    if (!v247)
    {
      v248 = *(v12 + 8);
      if (v248)
      {
        v248 = *(v248 & 0xFFFFFFFFFFFFFFFELL);
      }

      v247 = MEMORY[0x277C97B00](v248);
      *(v12 + 120) = v247;
    }

    objc_msgSend_saveToArchive_archiver_(v243, v242, v244, v245, v246, v247, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v238, v239, v240, v241, 1354))
  {
    v254 = objc_msgSend_objectForProperty_(v13, v249, v250, v251, v252, 1354);
    *(v12 + 16) |= 0x200u;
    v258 = *(v12 + 104);
    if (!v258)
    {
      v259 = *(v12 + 8);
      if (v259)
      {
        v259 = *(v259 & 0xFFFFFFFFFFFFFFFELL);
      }

      v258 = MEMORY[0x277C97B00](v259);
      *(v12 + 104) = v258;
    }

    objc_msgSend_saveToArchive_archiver_(v254, v253, v255, v256, v257, v258, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v249, v250, v251, v252, 1355))
  {
    v264 = objc_msgSend_intValueForProperty_(v13, v260, v261, v262, v263, 1355);
    *(v12 + 16) |= 0x400000u;
    *(v12 + 160) = v264;
  }

  if (objc_msgSend_containsProperty_(v13, v260, v261, v262, v263, 1358))
  {
    v269 = objc_msgSend_intValueForProperty_(v13, v265, v266, v267, v268, 1358) != 0;
    *(v12 + 16) |= 0x40000u;
    *(v12 + 146) = v269;
  }

  if (objc_msgSend_containsProperty_(v13, v265, v266, v267, v268, 1361))
  {
    v274 = objc_msgSend_objectForProperty_(v13, v270, v271, v272, v273, 1361);
    *(v12 + 16) |= 1u;
    v275 = google::protobuf::internal::ArenaStringPtr::Mutable();
    objc_msgSend_tsch_saveToProtobufString_(v274, v276, v277, v278, v279, v275);
  }
}

- (void)loadFromPreUFFArchiveWithUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(v4, v5, v6, v7, v8, off_2812EE5D0[14]);

  if (*(v9 + 32))
  {
    v10 = *(v9 + 32);
  }

  else
  {
    v10 = MEMORY[0x277D80BD0];
  }

  v99.receiver = self;
  v99.super_class = TSCHChartNonStyle;
  [(TSCHChartNonStyle *)&v99 loadFromArchive:v10 unarchiver:v4];
  v12 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v16 = *(v9 + 16);
  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = objc_msgSend_tsp_initWithProtobufString_(v17, v18, v19, v20, v21, *(v9 + 24) & 0xFFFFFFFFFFFFFFFELL);
    if (v23)
    {
      objc_msgSend_setObject_forProperty_(v12, v22, v24, v25, v26, v23, 1361);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x80000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 164), 1349);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x10000) != 0)
  {
    LODWORD(v13) = *(v9 + 152);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1343);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x100000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 165), 1350);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x20000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 156), 1610);
    v16 = *(v9 + 16);
  }

  if ((v16 & 4) != 0)
  {
    v28 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v11, v13, v14, v15, *(v9 + 40), v4);
    if (v28)
    {
      objc_msgSend_setObject_forProperty_(v12, v27, v29, v30, v31, v28, 1308);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 8) != 0)
  {
    v33 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v11, v13, v14, v15, *(v9 + 48), v4);
    if (v33)
    {
      objc_msgSend_setObject_forProperty_(v12, v32, v34, v35, v36, v33, 1312);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x10) != 0)
  {
    v38 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v11, v13, v14, v15, *(v9 + 56), v4);
    if (v38)
    {
      objc_msgSend_setObject_forProperty_(v12, v37, v39, v40, v41, v38, 1311);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x20) != 0)
  {
    v43 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v11, v13, v14, v15, *(v9 + 64), v4);
    if (v43)
    {
      objc_msgSend_setObject_forProperty_(v12, v42, v44, v45, v46, v43, 1310);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x40) != 0)
  {
    v48 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v11, v13, v14, v15, *(v9 + 72), v4);
    if (v48)
    {
      objc_msgSend_setObject_forProperty_(v12, v47, v49, v50, v51, v48, 1313);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x80) != 0)
  {
    v53 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v11, v13, v14, v15, *(v9 + 80), v4);
    if (v53)
    {
      objc_msgSend_setObject_forProperty_(v12, v52, v54, v55, v56, v53, 1309);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x100) != 0)
  {
    v58 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v11, v13, v14, v15, *(v9 + 88), v4);
    if (v58)
    {
      objc_msgSend_setObject_forProperty_(v12, v57, v59, v60, v61, v58, 1314);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x200) != 0)
  {
    v63 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DVector, v11, v13, v14, v15, *(v9 + 96), v4);
    if (v63)
    {
      objc_msgSend_setObject_forProperty_(v12, v62, v64, v65, v66, v63, 1315);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x400) != 0)
  {
    v68 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v11, v13, v14, v15, *(v9 + 104), v4);
    if (v68)
    {
      objc_msgSend_setObject_forProperty_(v12, v67, v69, v70, v71, v68, 1602);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x800) != 0)
  {
    v73 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v11, v13, v14, v15, *(v9 + 112), v4);
    if (v73)
    {
      objc_msgSend_setObject_forProperty_(v12, v72, v74, v75, v76, v73, 1601);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x1000) != 0)
  {
    v78 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v11, v13, v14, v15, *(v9 + 120), v4);
    if (v78)
    {
      objc_msgSend_setObject_forProperty_(v12, v77, v79, v80, v81, v78, 1600);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x2000) != 0)
  {
    v83 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v11, v13, v14, v15, *(v9 + 128), v4);
    if (v83)
    {
      objc_msgSend_setObject_forProperty_(v12, v82, v84, v85, v86, v83, 1603);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x4000) != 0)
  {
    v88 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v11, v13, v14, v15, *(v9 + 136), v4);
    if (v88)
    {
      objc_msgSend_setObject_forProperty_(v12, v87, v89, v90, v91, v88, 1599);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x8000) != 0)
  {
    v93 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v11, v13, v14, v15, *(v9 + 144), v4);
    if (v93)
    {
      objc_msgSend_setObject_forProperty_(v12, v92, v94, v95, v96, v93, 1604);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x200000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 166), 1351);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x400000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 167), 1299);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x40000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 160), 1298);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x800000) != 0)
  {
    LODWORD(v13) = *(v9 + 168);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1301);
  }

  v97 = *MEMORY[0x277D80AF0];
  v98 = *(&self->super.super.super.super.isa + v97);
  *(&self->super.super.super.super.isa + v97) = v12;
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartNonStyle mixingTypeWithObject:context:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartNonStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 233, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v8, v10, v11, v12);
  v33 = objc_msgSend_propertyMap(self, v29, v30, v31, v32);
  v38 = objc_msgSend_allProperties(v33, v34, v35, v36, v37);
  objc_msgSend_addProperties_(v28, v39, v40, v41, v42, v38);

  v47 = objc_msgSend_propertyMap(v9, v43, v44, v45, v46);
  v52 = objc_msgSend_allProperties(v47, v48, v49, v50, v51);
  objc_msgSend_addProperties_(v28, v53, v54, v55, v56, v52);

  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 4;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = sub_2762BB3A0;
  v65[3] = &unk_27A6B76B0;
  v65[4] = self;
  v57 = v9;
  v66 = v57;
  v68 = &v69;
  v58 = v7;
  v67 = v58;
  objc_msgSend_enumeratePropertiesUsingBlock_(v28, v59, v60, v61, v62, v65);
  v63 = v70[3];

  _Block_object_dispose(&v69, 8);
  return v63;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v6 = a4;
  objc_opt_class();
  v7 = TSUDynamicCast();
  v12 = objc_msgSend_copy(self, v8, v9, v10, v11);
  v17 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v13, v14, v15, v16);
  v22 = objc_msgSend_propertyMap(self, v18, v19, v20, v21);
  v27 = objc_msgSend_allProperties(v22, v23, v24, v25, v26);
  objc_msgSend_addProperties_(v17, v28, v29, v30, v31, v27);

  v36 = objc_msgSend_propertyMap(v7, v32, v33, v34, v35);
  v41 = objc_msgSend_allProperties(v36, v37, v38, v39, v40);
  objc_msgSend_addProperties_(v17, v42, v43, v44, v45, v41);

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = sub_2762BB678;
  v55[3] = &unk_27A6B76D8;
  v55[4] = self;
  v46 = v7;
  v56 = v46;
  v58 = a3;
  v47 = v12;
  v57 = v47;
  objc_msgSend_enumeratePropertiesUsingBlock_(v17, v48, v49, v50, v51, v55);
  v52 = v57;
  v53 = v47;

  return v47;
}

+ (id)properties
{
  if (qword_280A476C0 != -1)
  {
    sub_2764A7D8C();
  }

  v3 = qword_280A476B8;

  return v3;
}

+ (id)imageFillProperties
{
  if (qword_280A476D0 != -1)
  {
    sub_2764A7DA0();
  }

  v3 = qword_280A476C8;

  return v3;
}

+ (int)defaultIntValueForProperty:(int)a3
{
  v6 = *&a3;
  if (qword_280A476E0 != -1)
  {
    sub_2764A7DB4();
  }

  if (!qword_280A476D8 || !objc_msgSend_containsProperty_(qword_280A476D8, a2, v3, v4, v5, v6))
  {
    result = 0;
    if (v6 <= 1335)
    {
      if (v6 > 1326)
      {
        if (v6 == 1327 || v6 == 1332 || v6 == 1334)
        {
          return result;
        }
      }

      else if ((v6 - 1298) < 2 || v6 == 1325)
      {
        return result;
      }

LABEL_23:
      v14.receiver = a1;
      v14.super_class = &OBJC_METACLASS___TSCHChartNonStyle;
      return objc_msgSendSuper2(&v14, sel_defaultIntValueForProperty_, v6);
    }

    if ((v6 - 1342) > 0x10)
    {
      goto LABEL_17;
    }

    if (((1 << (v6 - 62)) & 0x10181) != 0)
    {
      return result;
    }

    if (v6 == 1351)
    {
      return 1;
    }

    if (v6 != 1355)
    {
LABEL_17:
      if (v6 != 1610)
      {
        if (v6 != 1336)
        {
          goto LABEL_23;
        }

        return 1;
      }
    }

    return 2;
  }

  v12 = qword_280A476D8;

  return objc_msgSend_intValueForProperty_(v12, v8, v9, v10, v11, v6);
}

+ (float)defaultFloatValueForProperty:(int)a3
{
  v6 = *&a3;
  if (qword_280A476F0 != -1)
  {
    sub_2764A7DC8();
  }

  if (qword_280A476E8 && objc_msgSend_containsProperty_(qword_280A476E8, a2, v3, v4, v5, v6))
  {
    v8 = qword_280A476E8;

    objc_msgSend_floatValueForProperty_(v8, a2, v3, v4, v5, v6);
    return result;
  }

  if (v6 <= 1338)
  {
    result = 1.0;
    if (v6 == 1301)
    {
      return result;
    }

    if (v6 == 1333)
    {
      return 0.0;
    }

LABEL_15:
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___TSCHChartNonStyle;
    objc_msgSendSuper2(&v10, sel_defaultFloatValueForProperty_, v6);
    return result;
  }

  if (v6 != 1339)
  {
    if (v6 == 1343 || v6 == 1345)
    {
      return 0.0;
    }

    goto LABEL_15;
  }

  objc_msgSend_defaultInnerRadiusPercentage(TSCHStyleUtilities, a2, v3, v4, v5);
  return result;
}

+ (id)defaultValueForProperty:(int)a3
{
  v7 = *&a3;
  if (qword_280A47700 != -1)
  {
    sub_2764A7DDC();
  }

  if (!qword_280A476F8 || !objc_msgSend_containsProperty_(qword_280A476F8, a2, v3, v4, v5, v7))
  {
    if (v7 > 1352)
    {
      if (v7 <= 1599)
      {
        if (v7 <= 1360)
        {
          if (v7 == 1353)
          {
            v10 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v3, v4, v5);
            v15 = objc_msgSend_defaultDurationFormat_(TSCHTimeBasedFormat, v16, v17, v18, v19, v10);
            goto LABEL_36;
          }

          if (v7 == 1354)
          {
            v9 = objc_msgSend_defaultNumberFormat(TSCHChartSeries, a2, v3, v4, v5);
            goto LABEL_42;
          }

LABEL_46:
          v26.receiver = a1;
          v26.super_class = &OBJC_METACLASS___TSCHChartNonStyle;
          v9 = objc_msgSendSuper2(&v26, sel_defaultValueForProperty_, v7);
          goto LABEL_42;
        }

        if (v7 == 1361)
        {
          v10 = sub_276360774(v3, v4, v5);
          v15 = objc_msgSend_localizedStringForKey_value_table_(v10, v20, v21, v22, v23, @"Title", &stru_288528678, @"TSCharts");
          goto LABEL_36;
        }

        if (v7 != 1599)
        {
          goto LABEL_46;
        }
      }

      else if (v7 > 1604)
      {
        goto LABEL_46;
      }

      v9 = objc_msgSend_packageFromName_(TSCH3DLightingPackage, a2, v3, v4, v5, @"Default");
      goto LABEL_42;
    }

    if (v7 <= 1311)
    {
      if (v7 > 1309)
      {
        if (v7 == 1310)
        {
          LODWORD(v3) = 1077868898;
          LODWORD(v4) = 1059165024;
          LODWORD(v5) = 1067896818;
        }

        else
        {
          LODWORD(v3) = 1069543435;
          LODWORD(v4) = 1071459854;
          LODWORD(v5) = 1059238089;
        }
      }

      else
      {
        if (v7 == 1308)
        {
          LODWORD(v3) = 1100218368;
          LODWORD(v4) = -1047461888;
          v9 = objc_msgSend_x_y_z_(TSCH3DVector, a2, v3, v4, 0.0);
          goto LABEL_42;
        }

        if (v7 != 1309)
        {
          goto LABEL_46;
        }

        LODWORD(v3) = 1069039766;
        LODWORD(v4) = 1070065307;
        LODWORD(v5) = 1063115521;
      }
    }

    else if (v7 <= 1313)
    {
      if (v7 == 1312)
      {
        LODWORD(v3) = 1069304250;
        LODWORD(v4) = 1068180177;
        LODWORD(v5) = 1067869798;
      }

      else
      {
        LODWORD(v3) = 1068313463;
        LODWORD(v4) = 1068824145;
        LODWORD(v5) = 1068188817;
      }
    }

    else
    {
      if (v7 != 1314)
      {
        if (v7 != 1315)
        {
          if (v7 == 1352)
          {
            v10 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v3, v4, v5);
            v15 = objc_msgSend_defaultDateFormat_(TSCHTimeBasedFormat, v11, v12, v13, v14, v10);
LABEL_36:
            v24 = v15;

            goto LABEL_43;
          }

          goto LABEL_46;
        }

        objc_msgSend_x_y_z_w_(TSCH3DVector, a2, 0.0, 0.0, 0.0, 0.0);
        v9 = LABEL_41:;
        goto LABEL_42;
      }

      LODWORD(v3) = 1075009406;
      LODWORD(v4) = 1074631276;
      LODWORD(v5) = 1066201799;
    }

    LODWORD(v6) = LODWORD(v5);
    objc_msgSend_x_y_z_w_(TSCH3DVector, a2, v3, v4, v5, v6);
    goto LABEL_41;
  }

  v9 = objc_msgSend_objectForProperty_(qword_280A476F8, a2, v3, v4, v5, v7);
LABEL_42:
  v24 = v9;
LABEL_43:

  return v24;
}

+ (int)muxDefaultPropertyForSpecificProperty:(int)a3
{
  if (qword_280A47710 != -1)
  {
    sub_2764A7DF0();
  }

  result = objc_msgSend_containsKey_(qword_280A47708, a2, v3, v4, v5, a3);
  if (result)
  {
    return objc_msgSend_intForKey_(qword_280A47708, v8, v9, v10, v11, a3);
  }

  return result;
}

@end