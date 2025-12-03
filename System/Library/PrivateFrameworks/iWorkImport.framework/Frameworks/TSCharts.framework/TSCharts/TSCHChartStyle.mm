@interface TSCHChartStyle
+ (float)defaultFloatValueForProperty:(int)property;
+ (id)defaultParagraphStyleWithContext:(id)context;
+ (id)defaultStyleWithContext:(id)context;
+ (id)defaultValueForProperty:(int)property;
+ (id)imageFillProperties;
+ (id)properties;
+ (int)defaultIntValueForProperty:(int)property;
+ (int)muxDefaultPropertyForSpecificProperty:(int)property;
- (TSCHChartStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)loadFromPreUFFArchiveWithUnarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_upgradeRemoveShadowEnabledPropertyUsage:(id)usage;
- (void)p_upgradeSummaryLabelOffsetValueInMap:(id)map;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSCHChartStyle

+ (id)defaultStyleWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v5, v6, v7, v8, contextCopy, 0, 0, 0);

  return isVariation;
}

+ (id)defaultParagraphStyleWithContext:(id)context
{
  v6 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80EC8], a2, v3, v4, v5, context);
  hasSuffix = objc_msgSend_hasSuffix_(@"Helvetica", v7, v8, v9, v10, @"-Bold");
  v16 = objc_msgSend_hasSuffix_(@"Helvetica", v12, v13, v14, v15, @"-Oblique");
  v17 = @"Helvetica";
  v23 = objc_msgSend_rangeOfString_(@"Helvetica", v18, v19, v20, v21, @"-");
  if (v23 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = objc_msgSend_substringToIndex_(@"Helvetica", v22, v24, v25, v26, v23);
  }

  objc_msgSend_setIntValue_forProperty_(v6, v22, v24, v25, v26, hasSuffix, 19);
  objc_msgSend_setIntValue_forProperty_(v6, v27, v28, v29, v30, v16, 20);
  LODWORD(v31) = 13.0;
  objc_msgSend_setFloatValue_forProperty_(v6, v32, v31, v33, v34, 17);
  objc_msgSend_setValue_forProperty_(v6, v35, v36, v37, v38, v17, 16);
  v43 = objc_msgSend_blackColor(MEMORY[0x277D801F8], v39, v40, v41, v42);
  objc_msgSend_setValue_forProperty_(v6, v44, v45, v46, v47, v43, 48);

  objc_msgSend_setIntValue_forProperty_(v6, v48, v49, v50, v51, 2, 86);

  return v6;
}

- (TSCHChartStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation
{
  v7.receiver = self;
  v7.super_class = TSCHChartStyle;
  return [(TSCHChartStyle *)&v7 initWithContext:context name:name overridePropertyMap:map isVariation:variation];
}

- (void)p_upgradeRemoveShadowEnabledPropertyUsage:(id)usage
{
  usageCopy = usage;
  v7 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], v3, v4, v5, v6, 1320, 1615, 1618, 1606, 1607, 1608, 1605, 1609, 0);
  objc_msgSend_upgradeShadowProperties_inMap_(TSCHStyleUtilities, v8, v9, v10, v11, v7, usageCopy);
}

- (void)p_upgradeSummaryLabelOffsetValueInMap:(id)map
{
  mapCopy = map;
  if ((objc_msgSend_containsProperty_(mapCopy, v3, v4, v5, v6, 1356) & 1) == 0)
  {
    LODWORD(v8) = 6.0;
    objc_msgSend_setFloatValue_forProperty_(mapCopy, v7, v8, v9, v10, 1356);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_messageType(unarchiverCopy, v5, v6, v7, v8) == 5010)
  {
    objc_msgSend_loadFromPreUFFArchiveWithUnarchiver_(self, v9, v10, v11, v12, unarchiverCopy);
  }

  else
  {
    v13 = unarchiverCopy;
    google::protobuf::internal::AssignDescriptors();
    v18 = objc_msgSend_messageWithDescriptor_(v13, v14, v15, v16, v17, off_2812ED2B8[8]);

    if ((*(v18 + 40) & 1) == 0)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCHChartStyle loadFromUnarchiver:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 135, 0, "Missing superclass message");

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

    v135.receiver = self;
    v135.super_class = TSCHChartStyle;
    [(TSCHChartStyle *)&v135 loadFromArchive:v38 unarchiver:v13];
    if ((google::protobuf::internal::ExtensionSet::Has((v18 + 16)) & 1) == 0)
    {
      v43 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "[TSCHChartStyle loadFromUnarchiver:]");
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v50, v51, v52, v53, v44, v49, 139, 0, "Protobuf missing expected extension");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
    }

    Message = google::protobuf::internal::ExtensionSet::GetMessage();
    v59 = objc_alloc_init(MEMORY[0x277D80AB8]);
    v64 = v59;
    v65 = *(Message + 16);
    if ((v65 & 0x1000) != 0)
    {
      LODWORD(v61) = *(Message + 120);
      objc_msgSend_setFloatValue_forProperty_(v59, v60, v61, v62, v63, 1300);
      v65 = *(Message + 16);
    }

    if (v65)
    {
      v67 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v60, v61, v62, v63, *(Message + 24), v13);
      if (v67)
      {
        objc_msgSend_setObject_forProperty_(v64, v66, v68, v69, v70, v67, 1302);
      }

      v65 = *(Message + 16);
    }

    if ((v65 & 2) != 0)
    {
      v72 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v60, v61, v62, v63, *(Message + 32), v13);
      if (v72)
      {
        objc_msgSend_setObject_forProperty_(v64, v71, v73, v74, v75, v72, 1303);
      }

      v65 = *(Message + 16);
    }

    if ((v65 & 4) != 0)
    {
      v77 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v60, v61, v62, v63, *(Message + 40), v13);
      if (v77)
      {
        objc_msgSend_setObject_forProperty_(v64, v76, v78, v79, v80, v77, 1304);
      }

      v65 = *(Message + 16);
    }

    if ((v65 & 8) != 0)
    {
      v82 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v60, v61, v62, v63, *(Message + 48), v13);
      if (v82)
      {
        objc_msgSend_setObject_forProperty_(v64, v81, v83, v84, v85, v82, 1305);
      }

      v65 = *(Message + 16);
    }

    if ((v65 & 0x10) != 0)
    {
      v87 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v60, v61, v62, v63, *(Message + 56), v13);
      if (v87)
      {
        objc_msgSend_setObject_forProperty_(v64, v86, v88, v89, v90, v87, 1306);
      }

      v65 = *(Message + 16);
    }

    if ((v65 & 0x20) != 0)
    {
      v92 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v60, v61, v62, v63, *(Message + 64), v13);
      if (v92)
      {
        objc_msgSend_setObject_forProperty_(v64, v91, v93, v94, v95, v92, 1307);
      }

      v65 = *(Message + 16);
    }

    if ((v65 & 0x1000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v64, v60, v61, v62, v63, *(Message + 168), 1316);
      v65 = *(Message + 16);
    }

    if ((v65 & 0x40) != 0)
    {
      v97 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v60, v61, v62, v63, *(Message + 72), v13);
      if (v97)
      {
        objc_msgSend_setObject_forProperty_(v64, v96, v98, v99, v100, v97, 1317);
      }

      v65 = *(Message + 16);
    }

    if ((v65 & 0x80) != 0)
    {
      v102 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v60, v61, v62, v63, *(Message + 80), v13);
      if (v102)
      {
        objc_msgSend_setObject_forProperty_(v64, v101, v103, v104, v105, v102, 1318);
      }

      v65 = *(Message + 16);
    }

    if ((v65 & 0x2000) != 0)
    {
      LODWORD(v61) = *(Message + 124);
      objc_msgSend_setFloatValue_forProperty_(v64, v60, v61, v62, v63, 1319);
      v65 = *(Message + 16);
    }

    if ((v65 & 0x100) != 0)
    {
      v107 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v60, v61, v62, v63, *(Message + 88), v13);
      if (v107)
      {
        objc_msgSend_setObject_forProperty_(v64, v106, v108, v109, v110, v107, 1320);
      }

      v65 = *(Message + 16);
    }

    if ((v65 & 0x200) != 0)
    {
      v112 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v60, v61, v62, v63, *(Message + 96), v13);
      if (v112)
      {
        objc_msgSend_setObject_forProperty_(v64, v111, v113, v114, v115, v112, 1321);
      }

      v65 = *(Message + 16);
    }

    if ((v65 & 0x2000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v64, v60, v61, v62, v63, *(Message + 169), 1331);
      v65 = *(Message + 16);
    }

    if ((v65 & 0x80000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v64, v60, v61, v62, v63, *(Message + 148), 1335);
      v65 = *(Message + 16);
    }

    if ((v65 & 0x400) != 0)
    {
      v117 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v60, v61, v62, v63, *(Message + 104), v13);
      if (v117)
      {
        objc_msgSend_setObject_forProperty_(v64, v116, v118, v119, v120, v117, 1337);
      }

      v65 = *(Message + 16);
    }

    if ((v65 & 0x4000) != 0)
    {
      LODWORD(v61) = *(Message + 128);
      objc_msgSend_setFloatValue_forProperty_(v64, v60, v61, v62, v63, 1338);
      v65 = *(Message + 16);
    }

    if ((v65 & 0x8000) != 0)
    {
      LODWORD(v61) = *(Message + 132);
      objc_msgSend_setFloatValue_forProperty_(v64, v60, v61, v62, v63, 1340);
      v65 = *(Message + 16);
    }

    if ((v65 & 0x10000) != 0)
    {
      LODWORD(v61) = *(Message + 136);
      objc_msgSend_setFloatValue_forProperty_(v64, v60, v61, v62, v63, 1341);
      v65 = *(Message + 16);
    }

    if ((v65 & 0x4000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v64, v60, v61, v62, v63, *(Message + 170), 1344);
      v65 = *(Message + 16);
    }

    if ((v65 & 0x8000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v64, v60, v61, v62, v63, *(Message + 171), 1346);
      v65 = *(Message + 16);
    }

    if ((v65 & 0x100000) != 0)
    {
      LODWORD(v61) = *(Message + 152);
      objc_msgSend_setFloatValue_forProperty_(v64, v60, v61, v62, v63, 1347);
      v65 = *(Message + 16);
    }

    if ((v65 & 0x20000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v64, v60, v61, v62, v63, *(Message + 140), 1348);
      v65 = *(Message + 16);
    }

    if ((v65 & 0x800000) != 0)
    {
      LODWORD(v61) = *(Message + 164);
      objc_msgSend_setFloatValue_forProperty_(v64, v60, v61, v62, v63, 1356);
      v65 = *(Message + 16);
    }

    if ((v65 & 0x200000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v64, v60, v61, v62, v63, *(Message + 156), 1357);
      v65 = *(Message + 16);
    }

    if ((v65 & 0x400000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v64, v60, v61, v62, v63, *(Message + 160), 1359);
      v65 = *(Message + 16);
    }

    if ((v65 & 0x800) != 0)
    {
      v122 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D81180], v60, v61, v62, v63, *(Message + 112), v13);
      if (v122)
      {
        objc_msgSend_setObject_forProperty_(v64, v121, v123, v124, v125, v122, 1360);
      }

      v65 = *(Message + 16);
    }

    if ((v65 & 0x40000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v64, v60, v61, v62, v63, *(Message + 144), 1362);
    }

    objc_storeStrong((&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]), v64);
    if (google::protobuf::internal::ExtensionSet::Has((v18 + 16)))
    {
      Bool = google::protobuf::internal::ExtensionSet::GetBool((v18 + 16));
    }

    else
    {
      Bool = 0;
    }

    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = sub_2762C7DC8;
    v131[3] = &unk_27A6B7778;
    v132 = v13;
    selfCopy = self;
    v134 = Bool;
    objc_msgSend_addFinalizeHandler_(v132, v127, v128, v129, v130, v131);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, v6, v7, v8, sub_2762C97A4, off_2812ED2B8[8]);

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

  v223.receiver = self;
  v223.super_class = TSCHChartStyle;
  [(TSCHChartStyle *)&v223 saveToArchive:v10 archiver:archiverCopy];
  sub_276408A00();
  v12 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v13 = *(&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]);
  if (objc_msgSend_containsProperty_(v13, v14, v15, v16, v17, 1300))
  {
    objc_msgSend_floatValueForProperty_(v13, v18, v19, v20, v21, 1300);
    *(v12 + 16) |= 0x1000u;
    *(v12 + 120) = LODWORD(v19);
  }

  if (objc_msgSend_containsProperty_(v13, v18, v19, v20, v21, 1302))
  {
    v27 = objc_msgSend_objectForProperty_(v13, v22, v23, v24, v25, 1302);
    *(v12 + 16) |= 1u;
    v31 = *(v12 + 24);
    if (!v31)
    {
      v32 = *(v12 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = sub_276447688(v32);
      *(v12 + 24) = v31;
    }

    objc_msgSend_saveToArchive_archiver_(v27, v26, v28, v29, v30, v31, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v22, v23, v24, v25, 1303))
  {
    v38 = objc_msgSend_objectForProperty_(v13, v33, v34, v35, v36, 1303);
    *(v12 + 16) |= 2u;
    v42 = *(v12 + 32);
    if (!v42)
    {
      v43 = *(v12 + 8);
      if (v43)
      {
        v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
      }

      v42 = sub_276447688(v43);
      *(v12 + 32) = v42;
    }

    objc_msgSend_saveToArchive_archiver_(v38, v37, v39, v40, v41, v42, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v33, v34, v35, v36, 1304))
  {
    v49 = objc_msgSend_objectForProperty_(v13, v44, v45, v46, v47, 1304);
    *(v12 + 16) |= 4u;
    v53 = *(v12 + 40);
    if (!v53)
    {
      v54 = *(v12 + 8);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = sub_276447688(v54);
      *(v12 + 40) = v53;
    }

    objc_msgSend_saveToArchive_archiver_(v49, v48, v50, v51, v52, v53, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v44, v45, v46, v47, 1305))
  {
    v60 = objc_msgSend_objectForProperty_(v13, v55, v56, v57, v58, 1305);
    *(v12 + 16) |= 8u;
    v64 = *(v12 + 48);
    if (!v64)
    {
      v65 = *(v12 + 8);
      if (v65)
      {
        v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
      }

      v64 = sub_276447688(v65);
      *(v12 + 48) = v64;
    }

    objc_msgSend_saveToArchive_archiver_(v60, v59, v61, v62, v63, v64, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v55, v56, v57, v58, 1306))
  {
    v71 = objc_msgSend_objectForProperty_(v13, v66, v67, v68, v69, 1306);
    *(v12 + 16) |= 0x10u;
    v75 = *(v12 + 56);
    if (!v75)
    {
      v76 = *(v12 + 8);
      if (v76)
      {
        v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
      }

      v75 = sub_276447688(v76);
      *(v12 + 56) = v75;
    }

    objc_msgSend_saveToArchive_archiver_(v71, v70, v72, v73, v74, v75, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v66, v67, v68, v69, 1307))
  {
    v82 = objc_msgSend_objectForProperty_(v13, v77, v78, v79, v80, 1307);
    *(v12 + 16) |= 0x20u;
    v86 = *(v12 + 64);
    if (!v86)
    {
      v87 = *(v12 + 8);
      if (v87)
      {
        v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
      }

      v86 = sub_276447688(v87);
      *(v12 + 64) = v86;
    }

    objc_msgSend_saveToArchive_archiver_(v82, v81, v83, v84, v85, v86, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v77, v78, v79, v80, 1316))
  {
    v92 = objc_msgSend_intValueForProperty_(v13, v88, v89, v90, v91, 1316) != 0;
    *(v12 + 16) |= 0x1000000u;
    *(v12 + 168) = v92;
  }

  if (objc_msgSend_containsProperty_(v13, v88, v89, v90, v91, 1317))
  {
    v98 = objc_msgSend_objectForProperty_(v13, v93, v94, v95, v96, 1317);
    *(v12 + 16) |= 0x40u;
    v102 = *(v12 + 72);
    if (!v102)
    {
      v103 = *(v12 + 8);
      if (v103)
      {
        v103 = *(v103 & 0xFFFFFFFFFFFFFFFELL);
      }

      v102 = MEMORY[0x277C97A80](v103);
      *(v12 + 72) = v102;
    }

    objc_msgSend_saveToArchive_archiver_(v98, v97, v99, v100, v101, v102, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v93, v94, v95, v96, 1318))
  {
    v109 = objc_msgSend_objectForProperty_(v13, v104, v105, v106, v107, 1318);
    *(v12 + 16) |= 0x80u;
    v113 = *(v12 + 80);
    if (!v113)
    {
      v114 = *(v12 + 8);
      if (v114)
      {
        v114 = *(v114 & 0xFFFFFFFFFFFFFFFELL);
      }

      v113 = MEMORY[0x277C97AA0](v114);
      *(v12 + 80) = v113;
    }

    objc_msgSend_saveToArchive_archiver_(v109, v108, v110, v111, v112, v113, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v104, v105, v106, v107, 1319))
  {
    objc_msgSend_floatValueForProperty_(v13, v115, v116, v117, v118, 1319);
    *(v12 + 16) |= 0x2000u;
    *(v12 + 124) = LODWORD(v116);
  }

  if (objc_msgSend_containsProperty_(v13, v115, v116, v117, v118, 1320))
  {
    v124 = objc_msgSend_objectForProperty_(v13, v119, v120, v121, v122, 1320);
    *(v12 + 16) |= 0x100u;
    v128 = *(v12 + 88);
    if (!v128)
    {
      v129 = *(v12 + 8);
      if (v129)
      {
        v129 = *(v129 & 0xFFFFFFFFFFFFFFFELL);
      }

      v128 = MEMORY[0x277C97A90](v129);
      *(v12 + 88) = v128;
    }

    objc_msgSend_saveToArchive_archiver_(v124, v123, v125, v126, v127, v128, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v119, v120, v121, v122, 1321))
  {
    v135 = objc_msgSend_objectForProperty_(v13, v130, v131, v132, v133, 1321);
    *(v12 + 16) |= 0x200u;
    v139 = *(v12 + 96);
    if (!v139)
    {
      v140 = *(v12 + 8);
      if (v140)
      {
        v140 = *(v140 & 0xFFFFFFFFFFFFFFFELL);
      }

      v139 = MEMORY[0x277C97AA0](v140);
      *(v12 + 96) = v139;
    }

    objc_msgSend_saveToArchive_archiver_(v135, v134, v136, v137, v138, v139, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v130, v131, v132, v133, 1331))
  {
    v145 = objc_msgSend_intValueForProperty_(v13, v141, v142, v143, v144, 1331) != 0;
    *(v12 + 16) |= 0x2000000u;
    *(v12 + 169) = v145;
  }

  if (objc_msgSend_containsProperty_(v13, v141, v142, v143, v144, 1335))
  {
    v150 = objc_msgSend_intValueForProperty_(v13, v146, v147, v148, v149, 1335);
    *(v12 + 16) |= 0x80000u;
    *(v12 + 148) = v150;
  }

  if (objc_msgSend_containsProperty_(v13, v146, v147, v148, v149, 1337))
  {
    v156 = objc_msgSend_objectForProperty_(v13, v151, v152, v153, v154, 1337);
    *(v12 + 16) |= 0x400u;
    v160 = *(v12 + 104);
    if (!v160)
    {
      v161 = *(v12 + 8);
      if (v161)
      {
        v161 = *(v161 & 0xFFFFFFFFFFFFFFFELL);
      }

      v160 = MEMORY[0x277C97A80](v161);
      *(v12 + 104) = v160;
    }

    objc_msgSend_saveToArchive_archiver_(v156, v155, v157, v158, v159, v160, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v151, v152, v153, v154, 1338))
  {
    objc_msgSend_floatValueForProperty_(v13, v162, v163, v164, v165, 1338);
    *(v12 + 16) |= 0x4000u;
    *(v12 + 128) = LODWORD(v163);
  }

  if (objc_msgSend_containsProperty_(v13, v162, v163, v164, v165, 1340))
  {
    objc_msgSend_floatValueForProperty_(v13, v166, v167, v168, v169, 1340);
    *(v12 + 16) |= 0x8000u;
    *(v12 + 132) = LODWORD(v167);
  }

  if (objc_msgSend_containsProperty_(v13, v166, v167, v168, v169, 1341))
  {
    objc_msgSend_floatValueForProperty_(v13, v170, v171, v172, v173, 1341);
    *(v12 + 16) |= 0x10000u;
    *(v12 + 136) = LODWORD(v171);
  }

  if (objc_msgSend_containsProperty_(v13, v170, v171, v172, v173, 1344))
  {
    v178 = objc_msgSend_intValueForProperty_(v13, v174, v175, v176, v177, 1344) != 0;
    *(v12 + 16) |= 0x4000000u;
    *(v12 + 170) = v178;
  }

  if (objc_msgSend_containsProperty_(v13, v174, v175, v176, v177, 1346))
  {
    v183 = objc_msgSend_intValueForProperty_(v13, v179, v180, v181, v182, 1346) != 0;
    *(v12 + 16) |= 0x8000000u;
    *(v12 + 171) = v183;
  }

  if (objc_msgSend_containsProperty_(v13, v179, v180, v181, v182, 1347))
  {
    objc_msgSend_floatValueForProperty_(v13, v184, v185, v186, v187, 1347);
    *(v12 + 16) |= 0x100000u;
    *(v12 + 152) = LODWORD(v185);
  }

  if (objc_msgSend_containsProperty_(v13, v184, v185, v186, v187, 1348))
  {
    v192 = objc_msgSend_intValueForProperty_(v13, v188, v189, v190, v191, 1348) != 0;
    *(v12 + 16) |= 0x20000u;
    *(v12 + 140) = v192;
  }

  if (objc_msgSend_containsProperty_(v13, v188, v189, v190, v191, 1356))
  {
    objc_msgSend_floatValueForProperty_(v13, v193, v194, v195, v196, 1356);
    *(v12 + 16) |= 0x800000u;
    *(v12 + 164) = LODWORD(v194);
  }

  if (objc_msgSend_containsProperty_(v13, v193, v194, v195, v196, 1357))
  {
    v201 = objc_msgSend_intValueForProperty_(v13, v197, v198, v199, v200, 1357);
    *(v12 + 16) |= 0x200000u;
    *(v12 + 156) = v201;
  }

  if (objc_msgSend_containsProperty_(v13, v197, v198, v199, v200, 1359))
  {
    v206 = objc_msgSend_intValueForProperty_(v13, v202, v203, v204, v205, 1359);
    *(v12 + 16) |= 0x400000u;
    *(v12 + 160) = v206;
  }

  if (objc_msgSend_containsProperty_(v13, v202, v203, v204, v205, 1360))
  {
    v212 = objc_msgSend_objectForProperty_(v13, v207, v208, v209, v210, 1360);
    *(v12 + 16) |= 0x800u;
    v216 = *(v12 + 112);
    if (!v216)
    {
      v217 = *(v12 + 8);
      if (v217)
      {
        v217 = *(v217 & 0xFFFFFFFFFFFFFFFELL);
      }

      v216 = MEMORY[0x277C97B50](v217);
      *(v12 + 112) = v216;
    }

    objc_msgSend_saveToArchive_archiver_(v212, v211, v213, v214, v215, v216, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v207, v208, v209, v210, 1362))
  {
    v222 = objc_msgSend_intValueForProperty_(v13, v218, v219, v220, v221, 1362);
    *(v12 + 16) |= 0x40000u;
    *(v12 + 144) = v222;
  }

  google::protobuf::internal::ExtensionSet::SetBool((v9 + 16), TSCH::chart_supports_series_summary_labels, 8, 1, 0);
}

- (void)loadFromPreUFFArchiveWithUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, v6, v7, v8, off_2812EE5D0[12]);

  if (*(v9 + 40))
  {
    v10 = *(v9 + 40);
  }

  else
  {
    v10 = MEMORY[0x277D80BD0];
  }

  v132.receiver = self;
  v132.super_class = TSCHChartStyle;
  [(TSCHChartStyle *)&v132 loadFromArchive:v10 unarchiver:unarchiverCopy];
  v12 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v16 = *(v9 + 16);
  if ((v16 & 4) != 0)
  {
    v18 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v11, v13, v14, v15, *(v9 + 48), unarchiverCopy);
    if (v18)
    {
      objc_msgSend_setObject_forProperty_(v12, v17, v19, v20, v21, v18, 1317);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 8) != 0)
  {
    v23 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v13, v14, v15, *(v9 + 56), unarchiverCopy);
    if (v23)
    {
      objc_msgSend_setObject_forProperty_(v12, v22, v24, v25, v26, v23, 1318);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x10) != 0)
  {
    v28 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v11, v13, v14, v15, *(v9 + 64), unarchiverCopy);
    if (v28)
    {
      objc_msgSend_setObject_forProperty_(v12, v27, v29, v30, v31, v28, 1337);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x200000) != 0)
  {
    LODWORD(v13) = *(v9 + 200);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1341);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x400000) != 0)
  {
    LODWORD(v13) = *(v9 + 204);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1340);
    v16 = *(v9 + 16);
  }

  if (v16 < 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 240), 1348);
    v16 = *(v9 + 16);
    if ((v16 & 0x20) == 0)
    {
LABEL_22:
      if ((v16 & 0x40) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  else if ((v16 & 0x20) == 0)
  {
    goto LABEL_22;
  }

  v33 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v13, v14, v15, *(v9 + 72), unarchiverCopy);
  if (v33)
  {
    objc_msgSend_setObject_forProperty_(v12, v32, v34, v35, v36, v33, 1321);
  }

  v16 = *(v9 + 16);
  if ((v16 & 0x40) == 0)
  {
LABEL_23:
    if ((v16 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

LABEL_32:
    LODWORD(v13) = *(v9 + 208);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1338);
    goto LABEL_33;
  }

LABEL_29:
  v38 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D81180], v11, v13, v14, v15, *(v9 + 80), unarchiverCopy);
  if (v38)
  {
    objc_msgSend_setObject_forProperty_(v12, v37, v39, v40, v41, v38, 1360);
  }

  if ((*(v9 + 16) & 0x800000) != 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (*(v9 + 20))
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 241), 1331);
  }

  v42 = *(v9 + 16);
  if ((v42 & 0x80) != 0)
  {
    v44 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v11, v13, v14, v15, *(v9 + 88), unarchiverCopy);
    if (v44)
    {
      objc_msgSend_setObject_forProperty_(v12, v43, v45, v46, v47, v44, 1320);
    }

    v42 = *(v9 + 16);
  }

  if ((v42 & 0x1000000) != 0)
  {
    LODWORD(v13) = *(v9 + 212);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1319);
    v42 = *(v9 + 16);
  }

  if ((v42 & 0x2000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 216), 1362);
    v42 = *(v9 + 16);
  }

  if (v42)
  {
    v48 = objc_alloc(MEMORY[0x277CCACA8]);
    v54 = objc_msgSend_tsp_initWithProtobufString_(v48, v49, v50, v51, v52, *(v9 + 32) & 0xFFFFFFFFFFFFFFFELL);
    if (v54)
    {
      objc_msgSend_setObject_forProperty_(v12, v53, v55, v56, v57, v54, 1611);
    }

    v42 = *(v9 + 16);
  }

  if ((v42 & 0x4000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 220), 1612);
    v42 = *(v9 + 16);
  }

  if ((v42 & 0x8000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 224), 1614);
    v42 = *(v9 + 16);
  }

  if ((v42 & 0x10000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 228), 1617);
    v42 = *(v9 + 16);
  }

  if ((v42 & 0x100) != 0)
  {
    v59 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v11, v13, v14, v15, *(v9 + 96), unarchiverCopy);
    if (v59)
    {
      objc_msgSend_setObject_forProperty_(v12, v58, v60, v61, v62, v59, 1615);
    }

    v42 = *(v9 + 16);
  }

  if ((v42 & 0x200) != 0)
  {
    v64 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v11, v13, v14, v15, *(v9 + 104), unarchiverCopy);
    if (v64)
    {
      objc_msgSend_setObject_forProperty_(v12, v63, v65, v66, v67, v64, 1618);
    }

    v42 = *(v9 + 16);
  }

  if ((v42 & 0x20000000) != 0)
  {
    LODWORD(v13) = *(v9 + 232);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1613);
    v42 = *(v9 + 16);
  }

  if ((v42 & 0x40000000) != 0)
  {
    LODWORD(v13) = *(v9 + 236);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1616);
    v42 = *(v9 + 16);
  }

  if ((v42 & 0x400) != 0)
  {
    v69 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v11, v13, v14, v15, *(v9 + 112), unarchiverCopy);
    if (v69)
    {
      objc_msgSend_setObject_forProperty_(v12, v68, v70, v71, v72, v69, 1606);
    }

    v42 = *(v9 + 16);
  }

  if ((v42 & 0x800) != 0)
  {
    v74 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v11, v13, v14, v15, *(v9 + 120), unarchiverCopy);
    if (v74)
    {
      objc_msgSend_setObject_forProperty_(v12, v73, v75, v76, v77, v74, 1607);
    }

    v42 = *(v9 + 16);
  }

  if ((v42 & 0x1000) != 0)
  {
    v79 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v11, v13, v14, v15, *(v9 + 128), unarchiverCopy);
    if (v79)
    {
      objc_msgSend_setObject_forProperty_(v12, v78, v80, v81, v82, v79, 1608);
    }

    v42 = *(v9 + 16);
  }

  if ((v42 & 0x2000) != 0)
  {
    v84 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v11, v13, v14, v15, *(v9 + 136), unarchiverCopy);
    if (v84)
    {
      objc_msgSend_setObject_forProperty_(v12, v83, v85, v86, v87, v84, 1605);
    }

    v42 = *(v9 + 16);
  }

  if ((v42 & 0x4000) != 0)
  {
    v89 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v11, v13, v14, v15, *(v9 + 144), unarchiverCopy);
    if (v89)
    {
      objc_msgSend_setObject_forProperty_(v12, v88, v90, v91, v92, v89, 1609);
    }

    v42 = *(v9 + 16);
  }

  if ((v42 & 0x8000) != 0)
  {
    v94 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v11, v13, v14, v15, *(v9 + 152), unarchiverCopy);
    if (v94)
    {
      objc_msgSend_setObject_forProperty_(v12, v93, v95, v96, v97, v94, 1305);
    }

    v42 = *(v9 + 16);
  }

  if ((v42 & 0x10000) != 0)
  {
    v99 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v11, v13, v14, v15, *(v9 + 160), unarchiverCopy);
    if (v99)
    {
      objc_msgSend_setObject_forProperty_(v12, v98, v100, v101, v102, v99, 1304);
    }

    v42 = *(v9 + 16);
  }

  if ((v42 & 0x20000) != 0)
  {
    v104 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v11, v13, v14, v15, *(v9 + 168), unarchiverCopy);
    if (v104)
    {
      objc_msgSend_setObject_forProperty_(v12, v103, v105, v106, v107, v104, 1303);
    }

    v42 = *(v9 + 16);
  }

  if ((v42 & 0x40000) != 0)
  {
    v109 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v11, v13, v14, v15, *(v9 + 176), unarchiverCopy);
    if (v109)
    {
      objc_msgSend_setObject_forProperty_(v12, v108, v110, v111, v112, v109, 1306);
    }

    v42 = *(v9 + 16);
  }

  if ((v42 & 0x80000) != 0)
  {
    v114 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v11, v13, v14, v15, *(v9 + 184), unarchiverCopy);
    if (v114)
    {
      objc_msgSend_setObject_forProperty_(v12, v113, v115, v116, v117, v114, 1302);
    }

    v42 = *(v9 + 16);
  }

  if ((v42 & 0x100000) != 0)
  {
    v119 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLightingPackage, v11, v13, v14, v15, *(v9 + 192), unarchiverCopy);
    if (v119)
    {
      objc_msgSend_setObject_forProperty_(v12, v118, v120, v121, v122, v119, 1307);
    }
  }

  v123 = *(v9 + 20);
  if ((v123 & 2) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 242), 1597);
    v123 = *(v9 + 20);
  }

  if ((v123 & 4) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 243), 1598);
    v123 = *(v9 + 20);
  }

  if ((v123 & 8) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 244), 1595);
    v123 = *(v9 + 20);
  }

  if ((v123 & 0x10) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 245), 1596);
    v123 = *(v9 + 20);
  }

  if ((v123 & 0x20) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 248), 1594);
    v123 = *(v9 + 20);
  }

  if ((v123 & 0x40) != 0)
  {
    LODWORD(v13) = *(v9 + 252);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1300);
  }

  objc_storeStrong((&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]), v12);
  if (objc_msgSend_preUFFVersion(unarchiverCopy, v124, v125, v126, v127) <= 0x77411E587)
  {
    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = sub_2762C90C0;
    v131[3] = &unk_27A6B6888;
    v131[4] = self;
    objc_msgSend_addFinalizeHandler_(unarchiverCopy, v128, COERCE_DOUBLE(3221225472), v129, v130, v131);
  }
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartStyle mixingTypeWithObject:context:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 286, 0, "nil object after cast");

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
  v65[2] = sub_2762C9400;
  v65[3] = &unk_27A6B76B0;
  v65[4] = self;
  v57 = v9;
  v66 = v57;
  v68 = &v69;
  v58 = contextCopy;
  v67 = v58;
  objc_msgSend_enumeratePropertiesUsingBlock_(v28, v59, v60, v61, v62, v65);
  v63 = v70[3];

  _Block_object_dispose(&v69, 8);
  return v63;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
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
  v55[2] = sub_2762C96D8;
  v55[3] = &unk_27A6B76D8;
  v55[4] = self;
  v46 = v7;
  v56 = v46;
  fractionCopy = fraction;
  v47 = v12;
  v57 = v47;
  objc_msgSend_enumeratePropertiesUsingBlock_(v17, v48, v49, v50, v51, v55);
  v52 = v57;
  v53 = v47;

  return v47;
}

+ (id)properties
{
  if (qword_280A47720 != -1)
  {
    sub_2764A7E04();
  }

  v3 = qword_280A47718;

  return v3;
}

+ (id)imageFillProperties
{
  if (qword_280A47730 != -1)
  {
    sub_2764A7E18();
  }

  v3 = qword_280A47728;

  return v3;
}

+ (int)defaultIntValueForProperty:(int)property
{
  v6 = *&property;
  if (qword_280A47740 != -1)
  {
    sub_2764A7E2C();
  }

  if (!qword_280A47738 || !objc_msgSend_containsProperty_(qword_280A47738, a2, v3, v4, v5, v6))
  {
    result = 0;
    v14 = (v6 - 1316);
    if (v14 <= 0x2E)
    {
      if (((1 << (v6 - 36)) & 0x4A0050088001) != 0)
      {
        return result;
      }

      if (v14 == 32)
      {
        return 1;
      }
    }

    if ((v6 - 1594) <= 0x17)
    {
      if (((1 << (v6 - 58)) & 0x90001F) != 0)
      {
        return result;
      }

      if (v6 == 1612)
      {
        return 2;
      }
    }

    v15.receiver = self;
    v15.super_class = &OBJC_METACLASS___TSCHChartStyle;
    return objc_msgSendSuper2(&v15, sel_defaultIntValueForProperty_, v6);
  }

  v12 = qword_280A47738;

  return objc_msgSend_intValueForProperty_(v12, v8, v9, v10, v11, v6);
}

+ (float)defaultFloatValueForProperty:(int)property
{
  v6 = *&property;
  if (qword_280A47750 != -1)
  {
    sub_2764A7E40();
  }

  if (!qword_280A47748 || !objc_msgSend_containsProperty_(qword_280A47748, a2, v3, v4, v5, v6))
  {
    LODWORD(v3) = 1.0;
    if (v6 > 1340)
    {
      if (v6 <= 1355)
      {
        if (v6 == 1341)
        {
          LODWORD(v3) = 1120403456;
          return *&v3;
        }

        if (v6 != 1347)
        {
          goto LABEL_25;
        }
      }

      else if (v6 != 1356)
      {
        if (v6 == 1613 || v6 == 1616)
        {
          return *&v3;
        }

        goto LABEL_25;
      }

      LODWORD(v3) = 0;
      return *&v3;
    }

    if (v6 > 1337)
    {
      if (v6 == 1338)
      {
        return *&v3;
      }

      if (v6 == 1340)
      {
        LODWORD(v3) = 10.0;
        return *&v3;
      }
    }

    else if (v6 == 1300 || v6 == 1319)
    {
      return *&v3;
    }

LABEL_25:
    v13.receiver = self;
    v13.super_class = &OBJC_METACLASS___TSCHChartStyle;
    objc_msgSendSuper2(&v13, sel_defaultFloatValueForProperty_, v6, v3);
    return *&v3;
  }

  v11 = qword_280A47748;

  objc_msgSend_floatValueForProperty_(v11, v8, v3, v9, v10, v6);
  return *&v3;
}

+ (id)defaultValueForProperty:(int)property
{
  v6 = *&property;
  if (qword_280A47760 != -1)
  {
    sub_2764A7E54();
  }

  if (qword_280A47758 && objc_msgSend_containsProperty_(qword_280A47758, a2, v3, v4, v5, v6))
  {
    v8 = objc_msgSend_objectForProperty_(qword_280A47758, a2, v3, v4, v5, v6);
LABEL_32:
    v15 = v8;
    goto LABEL_40;
  }

  if (v6 > 1604)
  {
    if (v6 <= 1608)
    {
      if (v6 > 1606)
      {
        if (v6 != 1607)
        {
          v16 = MEMORY[0x277D803A8];
          v10 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, v3, v4, v5);
          objc_msgSend_shadowWithAngle_offset_radius_opacity_color_enabled_(v16, v17, 140.0, 0.0, 4.0, v10, 1, 0.5);
          v14 = LABEL_37:;
          goto LABEL_38;
        }
      }

      else if (v6 == 1605)
      {
        v27 = MEMORY[0x277D803A8];
        v10 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, v3, v4, v5);
        objc_msgSend_shadowWithAngle_offset_radius_opacity_color_enabled_(v27, v28, 219.0, 0.0, 10.0, v10, 1, 0.55);
        goto LABEL_37;
      }

      v18 = MEMORY[0x277D803A8];
      v10 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, v3, v4, v5);
      objc_msgSend_shadowWithAngle_offset_radius_opacity_color_enabled_(v18, v19, 238.0, 0.0, 20.0, v10, 1, 0.55);
      goto LABEL_37;
    }

    if (v6 <= 1614)
    {
      if (v6 != 1609)
      {
        if (v6 == 1611)
        {
          v15 = 0;
          goto LABEL_40;
        }

        goto LABEL_43;
      }

LABEL_31:
      v8 = objc_msgSend_nullShadow(TSCHStyleUtilities, a2, v3, v4, v5);
      goto LABEL_32;
    }

    if (v6 == 1615 || v6 == 1618)
    {
      goto LABEL_31;
    }

LABEL_43:
    v30.receiver = self;
    v30.super_class = &OBJC_METACLASS___TSCHChartStyle;
    v8 = objc_msgSendSuper2(&v30, sel_defaultValueForProperty_, v6);
    goto LABEL_32;
  }

  if (v6 <= 1319)
  {
    switch(v6)
    {
      case 0x519:
        v8 = objc_msgSend_packageFromName_(TSCH3DLightingPackage, a2, v3, v4, v5, @"Default");
        goto LABEL_32;
      case 0x525:
        v8 = objc_msgSend_clearColor(MEMORY[0x277D801F8], a2, v3, v4, v5);
        goto LABEL_32;
      case 0x526:
        v8 = objc_msgSend_emptyStroke(MEMORY[0x277D803C0], a2, v3, v4, v5);
        goto LABEL_32;
    }

    goto LABEL_43;
  }

  if (v6 <= 1336)
  {
    if (v6 == 1320)
    {
      goto LABEL_31;
    }

    if (v6 == 1321)
    {
      v9 = MEMORY[0x277D803C0];
      v10 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, v3, v4, v5);
      v14 = objc_msgSend_strokeWithColor_width_(v9, v11, 1.0, v12, v13, v10);
LABEL_38:
      v15 = v14;
      goto LABEL_39;
    }

    goto LABEL_43;
  }

  if (v6 != 1337)
  {
    if (v6 == 1360)
    {
      v8 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, v3, v4, v5);
      goto LABEL_32;
    }

    goto LABEL_43;
  }

  v20 = MEMORY[0x277D801B0];
  v10 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], a2, 0.667, 0.667, 0.667, 1.0);
  v22 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v21, 1.0, 1.0, 1.0, 1.0);
  v15 = objc_msgSend_linearGradientWithStartColor_endColor_(v20, v23, v24, v25, v26, v10, v22);

LABEL_39:
LABEL_40:

  return v15;
}

+ (int)muxDefaultPropertyForSpecificProperty:(int)property
{
  if (qword_280A47770 != -1)
  {
    sub_2764A7E68();
  }

  result = objc_msgSend_containsKey_(qword_280A47768, a2, v3, v4, v5, property);
  if (result)
  {
    return objc_msgSend_intForKey_(qword_280A47768, v8, v9, v10, v11, property);
  }

  return result;
}

@end