@interface TSCHChartAxisNonStyle
+ (float)defaultFloatValueForProperty:(int)a3;
+ (id)defaultStyleWithContext:(id)a3;
+ (id)defaultValueForProperty:(int)a3;
+ (id)imageFillProperties;
+ (id)properties;
+ (int)defaultIntValueForProperty:(int)a3;
+ (int)muxDefaultPropertyForSpecificProperty:(int)a3;
- (TSCHChartAxisNonStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6;
- (void)loadFromPreUFFArchiveWithUnarchiver:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)upgradePreU2_0CustomFormatsForDocumentRoot:(id)a3;
@end

@implementation TSCHChartAxisNonStyle

+ (id)defaultStyleWithContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v5, v6, v7, v8, v3, 0, 0, 0);

  return isVariation;
}

- (TSCHChartAxisNonStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6
{
  v7.receiver = self;
  v7.super_class = TSCHChartAxisNonStyle;
  return [(TSCHChartAxisNonStyle *)&v7 initWithContext:a3 name:a4 overridePropertyMap:a5 isVariation:a6];
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  if (objc_msgSend_messageType(v4, v5, v6, v7, v8) == 5016)
  {
    objc_msgSend_loadFromPreUFFArchiveWithUnarchiver_(self, v9, v10, v11, v12, v4);
  }

  else
  {
    v13 = v4;
    google::protobuf::internal::AssignDescriptors();
    v18 = objc_msgSend_messageWithDescriptor_(v13, v14, v15, v16, v17, off_2812ED2B8[18]);

    if ((*(v18 + 40) & 1) == 0)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCHChartAxisNonStyle loadFromUnarchiver:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisNonStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 79, 0, "Missing superclass message");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    }

    if (*(v18 + 48))
    {
      v38 = *(v18 + 48);
    }

    else
    {
      v38 = MEMORY[0x277D80BD0];
    }

    v134.receiver = self;
    v134.super_class = TSCHChartAxisNonStyle;
    [(TSCHChartAxisNonStyle *)&v134 loadFromArchive:v38 unarchiver:v13];
    if ((google::protobuf::internal::ExtensionSet::Has((v18 + 16)) & 1) == 0)
    {
      v43 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "[TSCHChartAxisNonStyle loadFromUnarchiver:]");
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisNonStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v50, v51, v52, v53, v44, v49, 83, 0, "Protobuf missing expected extension");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
    }

    Message = google::protobuf::internal::ExtensionSet::GetMessage();
    v60 = objc_alloc_init(MEMORY[0x277D80AB8]);
    v64 = *(Message + 16);
    if ((v64 & 0x20) != 0)
    {
      v66 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHTimeBasedFormat, v59, v61, v62, v63, *(Message + 64), v13);
      if (v66)
      {
        objc_msgSend_setObject_forProperty_(v60, v65, v67, v68, v69, v66, 1228);
      }

      v64 = *(Message + 16);
    }

    if ((v64 & 4) != 0)
    {
      v71 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHNumberFormat, v59, v61, v62, v63, *(Message + 40), v13);
      if (v71)
      {
        objc_msgSend_setObject_forProperty_(v60, v70, v72, v73, v74, v71, 1229);
      }

      v64 = *(Message + 16);
    }

    if ((v64 & 0x200) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 96), 1234);
      v64 = *(Message + 16);
    }

    if ((v64 & 0x80) != 0)
    {
      v76 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHTimeBasedFormat, v59, v61, v62, v63, *(Message + 80), v13);
      if (v76)
      {
        objc_msgSend_setObject_forProperty_(v60, v75, v77, v78, v79, v76, 1235);
      }

      v64 = *(Message + 16);
    }

    if ((v64 & 0x40) != 0)
    {
      v81 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHTimeBasedFormat, v59, v61, v62, v63, *(Message + 72), v13);
      if (v81)
      {
        objc_msgSend_setObject_forProperty_(v60, v80, v82, v83, v84, v81, 1236);
      }

      v64 = *(Message + 16);
    }

    if ((v64 & 0x800000) != 0)
    {
      LODWORD(v61) = *(Message + 128);
      objc_msgSend_setFloatValue_forProperty_(v60, v59, v61, v62, v63, 1239);
      v64 = *(Message + 16);
    }

    if ((v64 & 0x100) != 0)
    {
      v86 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHNumberFormat, v59, v61, v62, v63, *(Message + 88), v13);
      if (v86)
      {
        objc_msgSend_setObject_forProperty_(v60, v85, v87, v88, v89, v86, 1258);
      }

      v64 = *(Message + 16);
    }

    if ((v64 & 0x400) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 100), 1259);
      v64 = *(Message + 16);
    }

    if ((v64 & 0x800) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 104), 1260);
      v64 = *(Message + 16);
    }

    if ((v64 & 0x1000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 108), 1261);
      v64 = *(Message + 16);
    }

    if ((v64 & 0x2000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 112), 1262);
      v64 = *(Message + 16);
    }

    if ((v64 & 0x8000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 120), 1263);
      v64 = *(Message + 16);
    }

    if ((v64 & 0x4000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 116), 1264);
      v64 = *(Message + 16);
    }

    if ((v64 & 0x10000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 121), 1270);
      v64 = *(Message + 16);
    }

    if ((v64 & 0x20000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 122), 1271);
      v64 = *(Message + 16);
    }

    if ((v64 & 0x40000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 123), 1272);
      v64 = *(Message + 16);
    }

    if ((v64 & 0x80000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 124), 1284);
      v64 = *(Message + 16);
    }

    if ((v64 & 0x100000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 125), 1285);
      v64 = *(Message + 16);
    }

    if ((v64 & 0x200000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 126), 1286);
      v64 = *(Message + 16);
    }

    if ((v64 & 0x400000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 127), 1287);
      v64 = *(Message + 16);
    }

    if (v64)
    {
      v90 = objc_alloc(MEMORY[0x277CCACA8]);
      v96 = objc_msgSend_tsp_initWithProtobufString_(v90, v91, v92, v93, v94, *(Message + 24) & 0xFFFFFFFFFFFFFFFELL);
      if (v96)
      {
        objc_msgSend_setObject_forProperty_(v60, v95, v97, v98, v99, v96, 1290);
      }

      v64 = *(Message + 16);
    }

    if ((v64 & 2) != 0)
    {
      v100 = objc_alloc(MEMORY[0x277CCACA8]);
      v106 = objc_msgSend_tsp_initWithProtobufString_(v100, v101, v102, v103, v104, *(Message + 32) & 0xFFFFFFFFFFFFFFFELL);
      if (v106)
      {
        objc_msgSend_setObject_forProperty_(v60, v105, v107, v108, v109, v106, 1294);
      }

      v64 = *(Message + 16);
    }

    if ((v64 & 8) != 0)
    {
      v111 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CCABB0], v59, v61, v62, v63, *(Message + 48), v13);
      if (v111)
      {
        objc_msgSend_setObject_forProperty_(v60, v110, v112, v113, v114, v111, 1295);
      }

      v64 = *(Message + 16);
    }

    if ((v64 & 0x10) != 0)
    {
      v116 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CCABB0], v59, v61, v62, v63, *(Message + 56), v13);
      if (v116)
      {
        objc_msgSend_setObject_forProperty_(v60, v115, v117, v118, v119, v116, 1296);
      }
    }

    objc_storeStrong((&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]), v60);
    if (google::protobuf::internal::ExtensionSet::Has((v18 + 16)))
    {
      Bool = google::protobuf::internal::ExtensionSet::GetBool((v18 + 16));
    }

    else
    {
      Bool = 0;
    }

    if (google::protobuf::internal::ExtensionSet::Has((v18 + 16)))
    {
      v125 = google::protobuf::internal::ExtensionSet::GetBool((v18 + 16));
    }

    else
    {
      v125 = 0;
    }

    isCrossAppPaste = objc_msgSend_isCrossAppPaste(v13, v121, v122, v123, v124);
    v130[0] = MEMORY[0x277D85DD0];
    v130[1] = 3221225472;
    v130[2] = sub_2762B77A4;
    v130[3] = &unk_27A6B7638;
    v131 = Bool;
    v130[4] = self;
    v132 = v125;
    v133 = isCrossAppPaste;
    objc_msgSend_addFinalizeHandler_(v13, v127, COERCE_DOUBLE(3221225472), v128, v129, v130);
  }
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, v6, v7, v8, sub_2762B86BC, off_2812ED2B8[18]);

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

  v215.receiver = self;
  v215.super_class = TSCHChartAxisNonStyle;
  [(TSCHChartAxisNonStyle *)&v215 saveToArchive:v10 archiver:v4];
  sub_276412540();
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

  if (objc_msgSend_containsProperty_(v13, v18, v19, v20, v21, 1228))
  {
    v34 = objc_msgSend_objectForProperty_(v13, v29, v30, v31, v32, 1228);
    *(v12 + 16) |= 0x20u;
    v38 = *(v12 + 64);
    if (!v38)
    {
      v39 = *(v12 + 8);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = MEMORY[0x277C97B00](v39);
      *(v12 + 64) = v38;
    }

    objc_msgSend_saveToArchive_archiver_(v34, v33, v35, v36, v37, v38, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v29, v30, v31, v32, 1229))
  {
    v45 = objc_msgSend_objectForProperty_(v13, v40, v41, v42, v43, 1229);
    *(v12 + 16) |= 4u;
    v49 = *(v12 + 40);
    if (!v49)
    {
      v50 = *(v12 + 8);
      if (v50)
      {
        v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
      }

      v49 = MEMORY[0x277C97B00](v50);
      *(v12 + 40) = v49;
    }

    objc_msgSend_saveToArchive_archiver_(v45, v44, v46, v47, v48, v49, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v40, v41, v42, v43, 1234))
  {
    v55 = objc_msgSend_intValueForProperty_(v13, v51, v52, v53, v54, 1234);
    *(v12 + 16) |= 0x200u;
    *(v12 + 96) = v55;
  }

  if (objc_msgSend_containsProperty_(v13, v51, v52, v53, v54, 1235))
  {
    v61 = objc_msgSend_objectForProperty_(v13, v56, v57, v58, v59, 1235);
    *(v12 + 16) |= 0x80u;
    v65 = *(v12 + 80);
    if (!v65)
    {
      v66 = *(v12 + 8);
      if (v66)
      {
        v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
      }

      v65 = MEMORY[0x277C97B00](v66);
      *(v12 + 80) = v65;
    }

    objc_msgSend_saveToArchive_archiver_(v61, v60, v62, v63, v64, v65, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v56, v57, v58, v59, 1236))
  {
    v72 = objc_msgSend_objectForProperty_(v13, v67, v68, v69, v70, 1236);
    *(v12 + 16) |= 0x40u;
    v76 = *(v12 + 72);
    if (!v76)
    {
      v77 = *(v12 + 8);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      v76 = MEMORY[0x277C97B00](v77);
      *(v12 + 72) = v76;
    }

    objc_msgSend_saveToArchive_archiver_(v72, v71, v73, v74, v75, v76, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v67, v68, v69, v70, 1239))
  {
    objc_msgSend_floatValueForProperty_(v13, v78, v79, v80, v81, 1239);
    *(v12 + 16) |= 0x800000u;
    *(v12 + 128) = LODWORD(v79);
  }

  if (objc_msgSend_containsProperty_(v13, v78, v79, v80, v81, 1258))
  {
    v87 = objc_msgSend_objectForProperty_(v13, v82, v83, v84, v85, 1258);
    *(v12 + 16) |= 0x100u;
    v91 = *(v12 + 88);
    if (!v91)
    {
      v92 = *(v12 + 8);
      if (v92)
      {
        v92 = *(v92 & 0xFFFFFFFFFFFFFFFELL);
      }

      v91 = MEMORY[0x277C97B00](v92);
      *(v12 + 88) = v91;
    }

    objc_msgSend_saveToArchive_archiver_(v87, v86, v88, v89, v90, v91, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v82, v83, v84, v85, 1259))
  {
    v97 = objc_msgSend_intValueForProperty_(v13, v93, v94, v95, v96, 1259);
    *(v12 + 16) |= 0x400u;
    *(v12 + 100) = v97;
  }

  if (objc_msgSend_containsProperty_(v13, v93, v94, v95, v96, 1260))
  {
    v102 = objc_msgSend_intValueForProperty_(v13, v98, v99, v100, v101, 1260);
    *(v12 + 16) |= 0x800u;
    *(v12 + 104) = v102;
  }

  if (objc_msgSend_containsProperty_(v13, v98, v99, v100, v101, 1261))
  {
    v107 = objc_msgSend_intValueForProperty_(v13, v103, v104, v105, v106, 1261);
    *(v12 + 16) |= 0x1000u;
    *(v12 + 108) = v107;
  }

  if (objc_msgSend_containsProperty_(v13, v103, v104, v105, v106, 1262))
  {
    v112 = objc_msgSend_intValueForProperty_(v13, v108, v109, v110, v111, 1262);
    *(v12 + 16) |= 0x2000u;
    *(v12 + 112) = v112;
  }

  if (objc_msgSend_containsProperty_(v13, v108, v109, v110, v111, 1263))
  {
    v117 = objc_msgSend_intValueForProperty_(v13, v113, v114, v115, v116, 1263) != 0;
    *(v12 + 16) |= 0x8000u;
    *(v12 + 120) = v117;
  }

  if (objc_msgSend_containsProperty_(v13, v113, v114, v115, v116, 1264))
  {
    v122 = objc_msgSend_intValueForProperty_(v13, v118, v119, v120, v121, 1264);
    *(v12 + 16) |= 0x4000u;
    *(v12 + 116) = v122;
  }

  if (objc_msgSend_containsProperty_(v13, v118, v119, v120, v121, 1270))
  {
    v127 = objc_msgSend_intValueForProperty_(v13, v123, v124, v125, v126, 1270) != 0;
    *(v12 + 16) |= 0x10000u;
    *(v12 + 121) = v127;
  }

  if (objc_msgSend_containsProperty_(v13, v123, v124, v125, v126, 1271))
  {
    v132 = objc_msgSend_intValueForProperty_(v13, v128, v129, v130, v131, 1271) != 0;
    *(v12 + 16) |= 0x20000u;
    *(v12 + 122) = v132;
  }

  if (objc_msgSend_containsProperty_(v13, v128, v129, v130, v131, 1272))
  {
    v137 = objc_msgSend_intValueForProperty_(v13, v133, v134, v135, v136, 1272) != 0;
    *(v12 + 16) |= 0x40000u;
    *(v12 + 123) = v137;
  }

  if (objc_msgSend_containsProperty_(v13, v133, v134, v135, v136, 1284))
  {
    v142 = objc_msgSend_intValueForProperty_(v13, v138, v139, v140, v141, 1284) != 0;
    *(v12 + 16) |= 0x80000u;
    *(v12 + 124) = v142;
  }

  if (objc_msgSend_containsProperty_(v13, v138, v139, v140, v141, 1285))
  {
    v147 = objc_msgSend_intValueForProperty_(v13, v143, v144, v145, v146, 1285) != 0;
    *(v12 + 16) |= 0x100000u;
    *(v12 + 125) = v147;
  }

  if (objc_msgSend_containsProperty_(v13, v143, v144, v145, v146, 1286))
  {
    v152 = objc_msgSend_intValueForProperty_(v13, v148, v149, v150, v151, 1286) != 0;
    *(v12 + 16) |= 0x200000u;
    *(v12 + 126) = v152;
  }

  if (objc_msgSend_containsProperty_(v13, v148, v149, v150, v151, 1287))
  {
    v157 = objc_msgSend_intValueForProperty_(v13, v153, v154, v155, v156, 1287) != 0;
    *(v12 + 16) |= 0x400000u;
    *(v12 + 127) = v157;
  }

  if (objc_msgSend_containsProperty_(v13, v153, v154, v155, v156, 1290))
  {
    v162 = objc_msgSend_objectForProperty_(v13, v158, v159, v160, v161, 1290);
    *(v12 + 16) |= 1u;
    v163 = google::protobuf::internal::ArenaStringPtr::Mutable();
    objc_msgSend_tsch_saveToProtobufString_(v162, v164, v165, v166, v167, v163);
  }

  if (objc_msgSend_containsProperty_(v13, v158, v159, v160, v161, 1294))
  {
    v172 = objc_msgSend_objectForProperty_(v13, v168, v169, v170, v171, 1294);
    *(v12 + 16) |= 2u;
    v173 = google::protobuf::internal::ArenaStringPtr::Mutable();
    objc_msgSend_tsch_saveToProtobufString_(v172, v174, v175, v176, v177, v173);
  }

  if (objc_msgSend_containsProperty_(v13, v168, v169, v170, v171, 1295))
  {
    v183 = objc_msgSend_objectForProperty_(v13, v178, v179, v180, v181, 1295);
    *(v12 + 16) |= 8u;
    v187 = *(v12 + 48);
    if (!v187)
    {
      v188 = *(v12 + 8);
      if (v188)
      {
        v188 = *(v188 & 0xFFFFFFFFFFFFFFFELL);
      }

      v187 = sub_276406A24(v188);
      *(v12 + 48) = v187;
    }

    objc_msgSend_tsch_saveToArchive_archiver_(v183, v182, v184, v185, v186, v187, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v178, v179, v180, v181, 1296))
  {
    v194 = objc_msgSend_objectForProperty_(v13, v189, v190, v191, v192, 1296);
    *(v12 + 16) |= 0x10u;
    v198 = *(v12 + 56);
    if (!v198)
    {
      v199 = *(v12 + 8);
      if (v199)
      {
        v199 = *(v199 & 0xFFFFFFFFFFFFFFFELL);
      }

      v198 = sub_276406A24(v199);
      *(v12 + 56) = v198;
    }

    objc_msgSend_tsch_saveToArchive_archiver_(v194, v193, v195, v196, v197, v198, v4);
  }

  v201 = sub_2762A7C10(1258, v13);
  if (v201)
  {
    *(v12 + 16) |= 4u;
    v205 = *(v12 + 40);
    if (!v205)
    {
      v206 = *(v12 + 8);
      if (v206)
      {
        v206 = *(v206 & 0xFFFFFFFFFFFFFFFELL);
      }

      v205 = MEMORY[0x277C97B00](v206);
      *(v12 + 40) = v205;
    }

    objc_msgSend_saveToArchive_archiver_(v201, v200, v202, v203, v204, v205, v4);
  }

  v207 = objc_msgSend_objectLocale(self, v200, v202, v203, v204);
  v208 = sub_2762A7E78(1235, v13, v207);

  if (v208)
  {
    *(v12 + 16) |= 0x20u;
    v213 = *(v12 + 64);
    if (!v213)
    {
      v214 = *(v12 + 8);
      if (v214)
      {
        v214 = *(v214 & 0xFFFFFFFFFFFFFFFELL);
      }

      v213 = MEMORY[0x277C97B00](v214);
      *(v12 + 64) = v213;
    }

    objc_msgSend_saveToArchive_archiver_(v208, v209, v210, v211, v212, v213, v4);
  }

  google::protobuf::internal::ExtensionSet::SetBool((v9 + 16), TSCH::axis_supports_custom_number_format, 8, 1, 0);
  google::protobuf::internal::ExtensionSet::SetBool((v9 + 16), TSCH::axis_supports_custom_date_format, 8, 1, 0);
}

- (void)loadFromPreUFFArchiveWithUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(v4, v5, v6, v7, v8, off_2812EE5D0[22]);

  if (*(v9 + 40))
  {
    v10 = *(v9 + 40);
  }

  else
  {
    v10 = MEMORY[0x277D80BD0];
  }

  v54.receiver = self;
  v54.super_class = TSCHChartAxisNonStyle;
  [(TSCHChartAxisNonStyle *)&v54 loadFromArchive:v10 unarchiver:v4];
  v12 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v16 = *(v9 + 16);
  if ((v16 & 8) != 0)
  {
    v18 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CCABB0], v11, v13, v14, v15, *(v9 + 48), v4);
    if (v18)
    {
      objc_msgSend_setObject_forProperty_(v12, v17, v19, v20, v21, v18, 1296);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x10) != 0)
  {
    v23 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CCABB0], v11, v13, v14, v15, *(v9 + 56), v4);
    if (v23)
    {
      objc_msgSend_setObject_forProperty_(v12, v22, v24, v25, v26, v23, 1295);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x20) != 0)
  {
    v28 = objc_msgSend_instanceWithArchive_unarchiver_(TSCHDeprecatedNumberFormat, v11, v13, v14, v15, *(v9 + 64), v4);
    if (v28)
    {
      objc_msgSend_setObject_forProperty_(v12, v27, v29, v30, v31, v28, 1258);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x400) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 88), 1271);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x40) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 72), 1262);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x80) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 76), 1264);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x100) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 80), 1260);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x800) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 89), 1272);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x1000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 90), 1287);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x200) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 84), 1261);
    v16 = *(v9 + 16);
  }

  if (v16)
  {
    v32 = objc_alloc(MEMORY[0x277CCACA8]);
    v38 = objc_msgSend_tsp_initWithProtobufString_(v32, v33, v34, v35, v36, *(v9 + 24) & 0xFFFFFFFFFFFFFFFELL);
    if (v38)
    {
      objc_msgSend_setObject_forProperty_(v12, v37, v39, v40, v41, v38, 1294);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x2000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 91), 1270);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x4000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 92), 1284);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x8000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 93), 1286);
    v16 = *(v9 + 16);
  }

  if ((v16 & 2) != 0)
  {
    v42 = objc_alloc(MEMORY[0x277CCACA8]);
    v48 = objc_msgSend_tsp_initWithProtobufString_(v42, v43, v44, v45, v46, *(v9 + 32) & 0xFFFFFFFFFFFFFFFELL);
    if (v48)
    {
      objc_msgSend_setObject_forProperty_(v12, v47, v49, v50, v51, v48, 1290);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x20000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 96), 1259);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x40000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 100), 1234);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x10000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 94), 1263);
  }

  v52 = *MEMORY[0x277D80AF0];
  v53 = *(&self->super.super.super.super.isa + v52);
  *(&self->super.super.super.super.isa + v52) = v12;
}

- (void)upgradePreU2_0CustomFormatsForDocumentRoot:(id)a3
{
  v13 = a3;
  v8 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], v4, v5, v6, v7, 1258, 1235, 0);
  objc_msgSend_updateForCollaborationForProperties_documentRoot_(self, v9, v10, v11, v12, v8, v13);
}

+ (id)properties
{
  if (qword_280A475E0 != -1)
  {
    sub_2764A7C74();
  }

  v3 = qword_280A475D8;

  return v3;
}

+ (id)imageFillProperties
{
  if (qword_280A475F0 != -1)
  {
    sub_2764A7C88();
  }

  v3 = qword_280A475E8;

  return v3;
}

+ (int)defaultIntValueForProperty:(int)a3
{
  v6 = *&a3;
  if (qword_280A47600 != -1)
  {
    sub_2764A7C9C();
  }

  if (!qword_280A475F8 || !objc_msgSend_containsProperty_(qword_280A475F8, a2, v3, v4, v5, v6))
  {
    result = 1;
    if (v6 <= 1270)
    {
      if (v6 <= 1260)
      {
        if (v6 == 1234)
        {
          return result;
        }

        if (v6 == 1259 || v6 == 1260)
        {
          return 2;
        }
      }

      else
      {
        if ((v6 - 1262) < 3)
        {
          return result;
        }

        if (v6 == 1261)
        {
          return 4;
        }
      }

      goto LABEL_25;
    }

    if (v6 <= 1284)
    {
      if (v6 == 1271)
      {
        return result;
      }

      if (v6 != 1284)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v6 == 1285)
      {
        return result;
      }

      if (v6 != 1286 && v6 != 1287)
      {
LABEL_25:
        v14.receiver = a1;
        v14.super_class = &OBJC_METACLASS___TSCHChartAxisNonStyle;
        return objc_msgSendSuper2(&v14, sel_defaultIntValueForProperty_, v6);
      }
    }

    return 0;
  }

  v12 = qword_280A475F8;

  return objc_msgSend_intValueForProperty_(v12, v8, v9, v10, v11, v6);
}

+ (float)defaultFloatValueForProperty:(int)a3
{
  v6 = *&a3;
  if (qword_280A47610 != -1)
  {
    sub_2764A7CB0();
  }

  if (qword_280A47608 && objc_msgSend_containsProperty_(qword_280A47608, a2, v3, v4, v5, v6))
  {
    v12 = qword_280A47608;

    objc_msgSend_floatValueForProperty_(v12, v8, v9, v10, v11, v6);
  }

  else
  {
    result = 0.0;
    if (v6 != 1239)
    {
      v14.receiver = a1;
      v14.super_class = &OBJC_METACLASS___TSCHChartAxisNonStyle;
      objc_msgSendSuper2(&v14, sel_defaultFloatValueForProperty_, v6, 0.0);
    }
  }

  return result;
}

+ (id)defaultValueForProperty:(int)a3
{
  v6 = *&a3;
  if (qword_280A47620 != -1)
  {
    sub_2764A7CC4();
  }

  if (!qword_280A47618 || !objc_msgSend_containsProperty_(qword_280A47618, a2, v3, v4, v5, v6))
  {
    if (v6 <= 1289)
    {
      if (v6 > 1234)
      {
        if (v6 != 1235)
        {
          if (v6 != 1236)
          {
            if (v6 != 1258)
            {
              goto LABEL_25;
            }

LABEL_18:
            v8 = objc_msgSend_defaultNumberFormat(TSCHChartAxis, a2, v3, v4, v5);
            goto LABEL_26;
          }

          v9 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v3, v4, v5);
          v19 = objc_msgSend_defaultDurationFormat_(TSCHTimeBasedFormat, v24, v25, v26, v27, v9);
LABEL_24:
          v14 = v19;

          goto LABEL_27;
        }

LABEL_20:
        v9 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v3, v4, v5);
        v19 = objc_msgSend_defaultDateFormat_(TSCHTimeBasedFormat, v15, v16, v17, v18, v9);
        goto LABEL_24;
      }

      if (v6 == 1228)
      {
        goto LABEL_20;
      }

      if (v6 == 1229)
      {
        goto LABEL_18;
      }

LABEL_25:
      v29.receiver = a1;
      v29.super_class = &OBJC_METACLASS___TSCHChartAxisNonStyle;
      v8 = objc_msgSendSuper2(&v29, sel_defaultValueForProperty_, v6);
      goto LABEL_26;
    }

    if ((v6 - 1295) < 2)
    {
      v14 = 0;
      goto LABEL_27;
    }

    if (v6 == 1290)
    {
      v9 = sub_276360774(v3, v4, v5);
      objc_msgSend_localizedStringForKey_value_table_(v9, v20, v21, v22, v23, @"Category Axis", &stru_288528678, @"TSCharts");
    }

    else
    {
      if (v6 != 1294)
      {
        goto LABEL_25;
      }

      v9 = sub_276360774(v3, v4, v5);
      objc_msgSend_localizedStringForKey_value_table_(v9, v10, v11, v12, v13, @"Value Axis", &stru_288528678, @"TSCharts");
    }
    v19 = ;
    goto LABEL_24;
  }

  v8 = objc_msgSend_objectForProperty_(qword_280A47618, a2, v3, v4, v5, v6);
LABEL_26:
  v14 = v8;
LABEL_27:

  return v14;
}

+ (int)muxDefaultPropertyForSpecificProperty:(int)a3
{
  if (qword_280A47630 != -1)
  {
    sub_2764A7CD8();
  }

  result = objc_msgSend_containsKey_(qword_280A47628, a2, v3, v4, v5, a3);
  if (result)
  {
    return objc_msgSend_intForKey_(qword_280A47628, v8, v9, v10, v11, a3);
  }

  return result;
}

@end