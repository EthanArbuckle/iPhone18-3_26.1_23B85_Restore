@interface TSCHChartAxisStyle
+ (float)defaultFloatValueForProperty:(int)a3;
+ (id)defaultStyleWithContext:(id)a3;
+ (id)defaultValueForProperty:(int)a3;
+ (id)identifierForCategoryStyleWithRoleIndex:(unint64_t)a3 ordinal:(unint64_t)a4;
+ (id)identifierForValueStyleWithRoleIndex:(unint64_t)a3 ordinal:(unint64_t)a4;
+ (id)imageFillProperties;
+ (id)properties;
+ (int)defaultIntValueForProperty:(int)a3;
+ (int)muxDefaultPropertyForSpecificProperty:(int)a3;
- (TSCHChartAxisStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (void)loadFromPreUFFArchiveWithUnarchiver:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_upgrade3DChartPropertiesFrom2DProperties:(id)a3;
- (void)p_upgradeRemoveShadowEnabledPropertyUsage:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSCHChartAxisStyle

+ (id)defaultStyleWithContext:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v5, v6, v7, "+[TSCHChartAxisStyle defaultStyleWithContext:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 54, 0, "context is nil, the application will raise sometime in the future.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_alloc(objc_opt_class());
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v23, v24, v25, v26, v27, v4, 0, 0, 0);

  return isVariation;
}

+ (id)identifierForValueStyleWithRoleIndex:(unint64_t)a3 ordinal:(unint64_t)a4
{
  v7 = objc_msgSend_presetStyleDescriptorForValueStyleOrdinal_(a1, a2, v4, v5, v6, a4);
  v8 = String();

  return v8;
}

+ (id)identifierForCategoryStyleWithRoleIndex:(unint64_t)a3 ordinal:(unint64_t)a4
{
  v7 = objc_msgSend_presetStyleDescriptorForCategoryStyleOrdinal_(a1, a2, v4, v5, v6, a4);
  v8 = String();

  return v8;
}

- (TSCHChartAxisStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6
{
  v7.receiver = self;
  v7.super_class = TSCHChartAxisStyle;
  return [(TSCHChartAxisStyle *)&v7 initWithContext:a3 name:a4 overridePropertyMap:a5 isVariation:a6];
}

- (void)p_upgrade3DChartPropertiesFrom2DProperties:(id)a3
{
  v3 = a3;
  sub_2762C3928(1251, 1247, 1233, 1231, v3);
  sub_2762C3928(1250, 1246, 1232, 1230, v3);
}

- (void)p_upgradeRemoveShadowEnabledPropertyUsage:(id)a3
{
  v12 = a3;
  v7 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], v3, v4, v5, v6, 1249, 1255, 1248, 1254, 0);
  objc_msgSend_upgradeShadowProperties_inMap_(TSCHStyleUtilities, v8, v9, v10, v11, v7, v12);
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  if (objc_msgSend_messageType(v4, v5, v6, v7, v8) == 5012)
  {
    objc_msgSend_loadFromPreUFFArchiveWithUnarchiver_(self, v9, v10, v11, v12, v4);
  }

  else
  {
    v13 = v4;
    google::protobuf::internal::AssignDescriptors();
    v18 = objc_msgSend_messageWithDescriptor_(v13, v14, v15, v16, v17, off_2812ED2B8[16]);

    if (*(v18 + 48))
    {
      v19 = *(v18 + 48);
    }

    else
    {
      v19 = MEMORY[0x277D80BD0];
    }

    v119.receiver = self;
    v119.super_class = TSCHChartAxisStyle;
    [(TSCHChartAxisStyle *)&v119 loadFromArchive:v19 unarchiver:v13];
    if ((google::protobuf::internal::ExtensionSet::Has((v18 + 16)) & 1) == 0)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "[TSCHChartAxisStyle loadFromUnarchiver:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 142, 0, "Protobuf missing expected extension");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
    }

    if (google::protobuf::internal::ExtensionSet::Has((v18 + 16)))
    {
      Bool = google::protobuf::internal::ExtensionSet::GetBool((v18 + 16));
    }

    else
    {
      Bool = 0;
    }

    Message = google::protobuf::internal::ExtensionSet::GetMessage();
    v41 = objc_alloc_init(MEMORY[0x277D80AB8]);
    v46 = v41;
    v47 = *(Message + 16);
    if ((v47 & 0x400) != 0)
    {
      LODWORD(v43) = *(Message + 112);
      objc_msgSend_setFloatValue_forProperty_(v41, v42, v43, v44, v45, 1230);
      v47 = *(Message + 16);
    }

    if ((v47 & 0x800) != 0)
    {
      LODWORD(v43) = *(Message + 116);
      objc_msgSend_setFloatValue_forProperty_(v46, v42, v43, v44, v45, 1231);
      v47 = *(Message + 16);
    }

    if (v47)
    {
      v49 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v42, v43, v44, v45, *(Message + 32), v13);
      if (v49)
      {
        objc_msgSend_setObject_forProperty_(v46, v48, v50, v51, v52, v49, 1232);
      }

      v47 = *(Message + 16);
    }

    if ((v47 & 2) != 0)
    {
      v54 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v42, v43, v44, v45, *(Message + 40), v13);
      if (v54)
      {
        objc_msgSend_setObject_forProperty_(v46, v53, v55, v56, v57, v54, 1233);
      }

      v47 = *(Message + 16);
    }

    if ((v47 & 0x1000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 120), 1237);
    }

    if ((*(Message + 21) & 0x20) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 204), 1238);
    }

    v58 = *(Message + 16);
    if ((v58 & 0x2000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 124), 1240);
      v58 = *(Message + 16);
    }

    if ((v58 & 0x4000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 128), 1241);
      v58 = *(Message + 16);
    }

    if ((v58 & 0x8000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 132), 1242);
      v58 = *(Message + 16);
    }

    if ((v58 & 0x10000) != 0)
    {
      LODWORD(v43) = *(Message + 136);
      objc_msgSend_setFloatValue_forProperty_(v46, v42, v43, v44, v45, 1243);
      v58 = *(Message + 16);
    }

    if ((v58 & 0x20000) != 0)
    {
      LODWORD(v43) = *(Message + 140);
      objc_msgSend_setFloatValue_forProperty_(v46, v42, v43, v44, v45, 1244);
      v58 = *(Message + 16);
    }

    if ((v58 & 0x40000) != 0)
    {
      LODWORD(v43) = *(Message + 144);
      objc_msgSend_setFloatValue_forProperty_(v46, v42, v43, v44, v45, 1245);
      v58 = *(Message + 16);
    }

    if ((v58 & 0x80000) != 0)
    {
      LODWORD(v43) = *(Message + 148);
      objc_msgSend_setFloatValue_forProperty_(v46, v42, v43, v44, v45, 1246);
      v58 = *(Message + 16);
    }

    if ((v58 & 0x100000) != 0)
    {
      LODWORD(v43) = *(Message + 152);
      objc_msgSend_setFloatValue_forProperty_(v46, v42, v43, v44, v45, 1247);
      v58 = *(Message + 16);
    }

    if ((v58 & 4) != 0)
    {
      v60 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v42, v43, v44, v45, *(Message + 48), v13);
      if (v60)
      {
        objc_msgSend_setObject_forProperty_(v46, v59, v61, v62, v63, v60, 1248);
      }

      v58 = *(Message + 16);
    }

    if ((v58 & 8) != 0)
    {
      v65 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v42, v43, v44, v45, *(Message + 56), v13);
      if (v65)
      {
        objc_msgSend_setObject_forProperty_(v46, v64, v66, v67, v68, v65, 1249);
      }

      v58 = *(Message + 16);
    }

    if ((v58 & 0x10) != 0)
    {
      v70 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v42, v43, v44, v45, *(Message + 64), v13);
      if (v70)
      {
        objc_msgSend_setObject_forProperty_(v46, v69, v71, v72, v73, v70, 1250);
      }

      v58 = *(Message + 16);
    }

    if ((v58 & 0x20) != 0)
    {
      v75 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v42, v43, v44, v45, *(Message + 72), v13);
      if (v75)
      {
        objc_msgSend_setObject_forProperty_(v46, v74, v76, v77, v78, v75, 1251);
      }

      v58 = *(Message + 16);
    }

    if ((v58 & 0x200000) != 0)
    {
      LODWORD(v43) = *(Message + 156);
      objc_msgSend_setFloatValue_forProperty_(v46, v42, v43, v44, v45, 1252);
      v58 = *(Message + 16);
    }

    if ((v58 & 0x400000) != 0)
    {
      LODWORD(v43) = *(Message + 160);
      objc_msgSend_setFloatValue_forProperty_(v46, v42, v43, v44, v45, 1253);
      v58 = *(Message + 16);
    }

    if ((v58 & 0x40) != 0)
    {
      v80 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v42, v43, v44, v45, *(Message + 80), v13);
      if (v80)
      {
        objc_msgSend_setObject_forProperty_(v46, v79, v81, v82, v83, v80, 1254);
      }

      v58 = *(Message + 16);
    }

    if ((v58 & 0x80) != 0)
    {
      v85 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v42, v43, v44, v45, *(Message + 88), v13);
      if (v85)
      {
        objc_msgSend_setObject_forProperty_(v46, v84, v86, v87, v88, v85, 1255);
      }

      v58 = *(Message + 16);
    }

    if ((v58 & 0x100) != 0)
    {
      v90 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v42, v43, v44, v45, *(Message + 96), v13);
      if (v90)
      {
        objc_msgSend_setObject_forProperty_(v46, v89, v91, v92, v93, v90, 1256);
      }

      v58 = *(Message + 16);
    }

    if ((v58 & 0x200) != 0)
    {
      v95 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v42, v43, v44, v45, *(Message + 104), v13);
      if (v95)
      {
        objc_msgSend_setObject_forProperty_(v46, v94, v96, v97, v98, v95, 1257);
      }

      v58 = *(Message + 16);
    }

    if (v58 < 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 172), 1265);
    }

    v99 = *(Message + 20);
    if (v99)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 173), 1266);
      v99 = *(Message + 20);
    }

    if ((v99 & 2) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 174), 1267);
      v99 = *(Message + 20);
    }

    if ((v99 & 4) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 175), 1268);
      v99 = *(Message + 20);
    }

    if ((v99 & 8) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 176), 1269);
      v99 = *(Message + 20);
    }

    if ((v99 & 0x10) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 177), 1273);
      v99 = *(Message + 20);
    }

    if ((v99 & 0x20) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 178), 1274);
      v99 = *(Message + 20);
    }

    if ((v99 & 0x40) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 179), 1275);
    }

    v100 = *(Message + 16);
    if ((v100 & 0x800000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 164), 1276);
      v100 = *(Message + 16);
    }

    if ((v100 & 0x1000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 165), 1277);
      v100 = *(Message + 16);
    }

    if ((v100 & 0x2000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 166), 1278);
      v100 = *(Message + 16);
    }

    if ((v100 & 0x4000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 167), 1279);
      v100 = *(Message + 16);
    }

    if ((v100 & 0x8000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 168), 1280);
      v100 = *(Message + 16);
    }

    if ((v100 & 0x10000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 169), 1281);
      v100 = *(Message + 16);
    }

    if ((v100 & 0x20000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 170), 1282);
      v100 = *(Message + 16);
    }

    if ((v100 & 0x40000000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 171), 1283);
    }

    v101 = *(Message + 20);
    if ((v101 & 0x80) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 180), 1288);
      v101 = *(Message + 20);
    }

    if ((v101 & 0x100) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 184), 1289);
      v101 = *(Message + 20);
    }

    if ((v101 & 0x200) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 188), 1291);
      v101 = *(Message + 20);
    }

    if ((v101 & 0x400) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 192), 1292);
      v101 = *(Message + 20);
    }

    if ((v101 & 0x800) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 196), 1293);
      v101 = *(Message + 20);
    }

    if ((v101 & 0x1000) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v46, v42, v43, v44, v45, *(Message + 200), 1297);
    }

    objc_storeStrong((&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]), v46);
    if (objc_msgSend_hasPreUFFVersion(v13, v102, v103, v104, v105))
    {
      v110 = objc_msgSend_preUFFVersion(v13, v106, v107, v108, v109);
      v118[0] = MEMORY[0x277D85DD0];
      v118[1] = 3221225472;
      v118[2] = sub_2762C437C;
      v118[3] = &unk_27A6B7688;
      v118[4] = self;
      v118[5] = v110;
      objc_msgSend_addFinalizeHandler_(v13, v111, COERCE_DOUBLE(3221225472), v112, v113, v118);
    }

    if ((Bool & 1) == 0)
    {
      objc_msgSend_willModify(self, v106, v107, v108, v109);
      objc_msgSend_p_upgradeRadarChartAxisProperties_(self, v114, v115, v116, v117, v46);
    }
  }
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, v6, v7, v8, sub_2762C5F9C, off_2812ED2B8[16]);

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

  v299.receiver = self;
  v299.super_class = TSCHChartAxisStyle;
  [(TSCHChartAxisStyle *)&v299 saveToArchive:v10 archiver:v4];
  sub_27640EFA8();
  v12 = google::protobuf::internal::ExtensionSet::MutableMessage();
  google::protobuf::internal::ExtensionSet::SetBool((v9 + 16), TSCH::axis_supports_radar, 8, 1, 0);
  v13 = *(&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]);
  if (objc_msgSend_containsProperty_(v13, v14, v15, v16, v17, 1230))
  {
    objc_msgSend_floatValueForProperty_(v13, v18, v19, v20, v21, 1230);
    *(v12 + 16) |= 0x400u;
    *(v12 + 112) = LODWORD(v19);
  }

  if (objc_msgSend_containsProperty_(v13, v18, v19, v20, v21, 1231))
  {
    objc_msgSend_floatValueForProperty_(v13, v22, v23, v24, v25, 1231);
    *(v12 + 16) |= 0x800u;
    *(v12 + 116) = LODWORD(v23);
  }

  if (objc_msgSend_containsProperty_(v13, v22, v23, v24, v25, 1232))
  {
    v31 = objc_msgSend_objectForProperty_(v13, v26, v27, v28, v29, 1232);
    *(v12 + 16) |= 1u;
    v35 = *(v12 + 32);
    if (!v35)
    {
      v36 = *(v12 + 8);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = MEMORY[0x277C97AA0](v36);
      *(v12 + 32) = v35;
    }

    objc_msgSend_saveToArchive_archiver_(v31, v30, v32, v33, v34, v35, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v26, v27, v28, v29, 1233))
  {
    v42 = objc_msgSend_objectForProperty_(v13, v37, v38, v39, v40, 1233);
    *(v12 + 16) |= 2u;
    v46 = *(v12 + 40);
    if (!v46)
    {
      v47 = *(v12 + 8);
      if (v47)
      {
        v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
      }

      v46 = MEMORY[0x277C97AA0](v47);
      *(v12 + 40) = v46;
    }

    objc_msgSend_saveToArchive_archiver_(v42, v41, v43, v44, v45, v46, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v37, v38, v39, v40, 1237))
  {
    v52 = objc_msgSend_intValueForProperty_(v13, v48, v49, v50, v51, 1237);
    *(v12 + 16) |= 0x1000u;
    *(v12 + 120) = v52;
  }

  if (objc_msgSend_containsProperty_(v13, v48, v49, v50, v51, 1238))
  {
    v57 = objc_msgSend_intValueForProperty_(v13, v53, v54, v55, v56, 1238);
    *(v12 + 20) |= 0x2000u;
    *(v12 + 204) = v57;
  }

  if (objc_msgSend_containsProperty_(v13, v53, v54, v55, v56, 1240))
  {
    v62 = objc_msgSend_intValueForProperty_(v13, v58, v59, v60, v61, 1240);
    *(v12 + 16) |= 0x2000u;
    *(v12 + 124) = v62;
  }

  if (objc_msgSend_containsProperty_(v13, v58, v59, v60, v61, 1241))
  {
    v67 = objc_msgSend_intValueForProperty_(v13, v63, v64, v65, v66, 1241);
    *(v12 + 16) |= 0x4000u;
    *(v12 + 128) = v67;
  }

  if (objc_msgSend_containsProperty_(v13, v63, v64, v65, v66, 1242))
  {
    v72 = objc_msgSend_intValueForProperty_(v13, v68, v69, v70, v71, 1242);
    *(v12 + 16) |= 0x8000u;
    *(v12 + 132) = v72;
  }

  if (objc_msgSend_containsProperty_(v13, v68, v69, v70, v71, 1243))
  {
    objc_msgSend_floatValueForProperty_(v13, v73, v74, v75, v76, 1243);
    *(v12 + 16) |= 0x10000u;
    *(v12 + 136) = LODWORD(v74);
  }

  if (objc_msgSend_containsProperty_(v13, v73, v74, v75, v76, 1244))
  {
    objc_msgSend_floatValueForProperty_(v13, v77, v78, v79, v80, 1244);
    *(v12 + 16) |= 0x20000u;
    *(v12 + 140) = LODWORD(v78);
  }

  if (objc_msgSend_containsProperty_(v13, v77, v78, v79, v80, 1245))
  {
    objc_msgSend_floatValueForProperty_(v13, v81, v82, v83, v84, 1245);
    *(v12 + 16) |= 0x40000u;
    *(v12 + 144) = LODWORD(v82);
  }

  if (objc_msgSend_containsProperty_(v13, v81, v82, v83, v84, 1246))
  {
    objc_msgSend_floatValueForProperty_(v13, v85, v86, v87, v88, 1246);
    *(v12 + 16) |= 0x80000u;
    *(v12 + 148) = LODWORD(v86);
  }

  if (objc_msgSend_containsProperty_(v13, v85, v86, v87, v88, 1247))
  {
    objc_msgSend_floatValueForProperty_(v13, v89, v90, v91, v92, 1247);
    *(v12 + 16) |= 0x100000u;
    *(v12 + 152) = LODWORD(v90);
  }

  if (objc_msgSend_containsProperty_(v13, v89, v90, v91, v92, 1248))
  {
    v98 = objc_msgSend_objectForProperty_(v13, v93, v94, v95, v96, 1248);
    *(v12 + 16) |= 4u;
    v102 = *(v12 + 48);
    if (!v102)
    {
      v103 = *(v12 + 8);
      if (v103)
      {
        v103 = *(v103 & 0xFFFFFFFFFFFFFFFELL);
      }

      v102 = MEMORY[0x277C97A90](v103);
      *(v12 + 48) = v102;
    }

    objc_msgSend_saveToArchive_archiver_(v98, v97, v99, v100, v101, v102, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v93, v94, v95, v96, 1249))
  {
    v109 = objc_msgSend_objectForProperty_(v13, v104, v105, v106, v107, 1249);
    *(v12 + 16) |= 8u;
    v113 = *(v12 + 56);
    if (!v113)
    {
      v114 = *(v12 + 8);
      if (v114)
      {
        v114 = *(v114 & 0xFFFFFFFFFFFFFFFELL);
      }

      v113 = MEMORY[0x277C97A90](v114);
      *(v12 + 56) = v113;
    }

    objc_msgSend_saveToArchive_archiver_(v109, v108, v110, v111, v112, v113, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v104, v105, v106, v107, 1250))
  {
    v120 = objc_msgSend_objectForProperty_(v13, v115, v116, v117, v118, 1250);
    *(v12 + 16) |= 0x10u;
    v124 = *(v12 + 64);
    if (!v124)
    {
      v125 = *(v12 + 8);
      if (v125)
      {
        v125 = *(v125 & 0xFFFFFFFFFFFFFFFELL);
      }

      v124 = MEMORY[0x277C97AA0](v125);
      *(v12 + 64) = v124;
    }

    objc_msgSend_saveToArchive_archiver_(v120, v119, v121, v122, v123, v124, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v115, v116, v117, v118, 1251))
  {
    v131 = objc_msgSend_objectForProperty_(v13, v126, v127, v128, v129, 1251);
    *(v12 + 16) |= 0x20u;
    v135 = *(v12 + 72);
    if (!v135)
    {
      v136 = *(v12 + 8);
      if (v136)
      {
        v136 = *(v136 & 0xFFFFFFFFFFFFFFFELL);
      }

      v135 = MEMORY[0x277C97AA0](v136);
      *(v12 + 72) = v135;
    }

    objc_msgSend_saveToArchive_archiver_(v131, v130, v132, v133, v134, v135, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v126, v127, v128, v129, 1252))
  {
    objc_msgSend_floatValueForProperty_(v13, v137, v138, v139, v140, 1252);
    *(v12 + 16) |= 0x200000u;
    *(v12 + 156) = LODWORD(v138);
  }

  if (objc_msgSend_containsProperty_(v13, v137, v138, v139, v140, 1253))
  {
    objc_msgSend_floatValueForProperty_(v13, v141, v142, v143, v144, 1253);
    *(v12 + 16) |= 0x400000u;
    *(v12 + 160) = LODWORD(v142);
  }

  if (objc_msgSend_containsProperty_(v13, v141, v142, v143, v144, 1254))
  {
    v150 = objc_msgSend_objectForProperty_(v13, v145, v146, v147, v148, 1254);
    *(v12 + 16) |= 0x40u;
    v154 = *(v12 + 80);
    if (!v154)
    {
      v155 = *(v12 + 8);
      if (v155)
      {
        v155 = *(v155 & 0xFFFFFFFFFFFFFFFELL);
      }

      v154 = MEMORY[0x277C97A90](v155);
      *(v12 + 80) = v154;
    }

    objc_msgSend_saveToArchive_archiver_(v150, v149, v151, v152, v153, v154, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v145, v146, v147, v148, 1255))
  {
    v161 = objc_msgSend_objectForProperty_(v13, v156, v157, v158, v159, 1255);
    *(v12 + 16) |= 0x80u;
    v165 = *(v12 + 88);
    if (!v165)
    {
      v166 = *(v12 + 8);
      if (v166)
      {
        v166 = *(v166 & 0xFFFFFFFFFFFFFFFELL);
      }

      v165 = MEMORY[0x277C97A90](v166);
      *(v12 + 88) = v165;
    }

    objc_msgSend_saveToArchive_archiver_(v161, v160, v162, v163, v164, v165, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v156, v157, v158, v159, 1256))
  {
    v172 = objc_msgSend_objectForProperty_(v13, v167, v168, v169, v170, 1256);
    *(v12 + 16) |= 0x100u;
    v176 = *(v12 + 96);
    if (!v176)
    {
      v177 = *(v12 + 8);
      if (v177)
      {
        v177 = *(v177 & 0xFFFFFFFFFFFFFFFELL);
      }

      v176 = MEMORY[0x277C97AA0](v177);
      *(v12 + 96) = v176;
    }

    objc_msgSend_saveToArchive_archiver_(v172, v171, v173, v174, v175, v176, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v167, v168, v169, v170, 1257))
  {
    v183 = objc_msgSend_objectForProperty_(v13, v178, v179, v180, v181, 1257);
    *(v12 + 16) |= 0x200u;
    v187 = *(v12 + 104);
    if (!v187)
    {
      v188 = *(v12 + 8);
      if (v188)
      {
        v188 = *(v188 & 0xFFFFFFFFFFFFFFFELL);
      }

      v187 = MEMORY[0x277C97AA0](v188);
      *(v12 + 104) = v187;
    }

    objc_msgSend_saveToArchive_archiver_(v183, v182, v184, v185, v186, v187, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v178, v179, v180, v181, 1265))
  {
    v193 = objc_msgSend_intValueForProperty_(v13, v189, v190, v191, v192, 1265) != 0;
    *(v12 + 16) |= 0x80000000;
    *(v12 + 172) = v193;
  }

  if (objc_msgSend_containsProperty_(v13, v189, v190, v191, v192, 1266))
  {
    v198 = objc_msgSend_intValueForProperty_(v13, v194, v195, v196, v197, 1266) != 0;
    *(v12 + 20) |= 1u;
    *(v12 + 173) = v198;
  }

  if (objc_msgSend_containsProperty_(v13, v194, v195, v196, v197, 1267))
  {
    v203 = objc_msgSend_intValueForProperty_(v13, v199, v200, v201, v202, 1267) != 0;
    *(v12 + 20) |= 2u;
    *(v12 + 174) = v203;
  }

  if (objc_msgSend_containsProperty_(v13, v199, v200, v201, v202, 1268))
  {
    v208 = objc_msgSend_intValueForProperty_(v13, v204, v205, v206, v207, 1268) != 0;
    *(v12 + 20) |= 4u;
    *(v12 + 175) = v208;
  }

  if (objc_msgSend_containsProperty_(v13, v204, v205, v206, v207, 1269))
  {
    v213 = objc_msgSend_intValueForProperty_(v13, v209, v210, v211, v212, 1269) != 0;
    *(v12 + 20) |= 8u;
    *(v12 + 176) = v213;
  }

  if (objc_msgSend_containsProperty_(v13, v209, v210, v211, v212, 1273))
  {
    v218 = objc_msgSend_intValueForProperty_(v13, v214, v215, v216, v217, 1273) != 0;
    *(v12 + 20) |= 0x10u;
    *(v12 + 177) = v218;
  }

  if (objc_msgSend_containsProperty_(v13, v214, v215, v216, v217, 1274))
  {
    v223 = objc_msgSend_intValueForProperty_(v13, v219, v220, v221, v222, 1274) != 0;
    *(v12 + 20) |= 0x20u;
    *(v12 + 178) = v223;
  }

  if (objc_msgSend_containsProperty_(v13, v219, v220, v221, v222, 1275))
  {
    v228 = objc_msgSend_intValueForProperty_(v13, v224, v225, v226, v227, 1275) != 0;
    *(v12 + 20) |= 0x40u;
    *(v12 + 179) = v228;
  }

  if (objc_msgSend_containsProperty_(v13, v224, v225, v226, v227, 1276))
  {
    v233 = objc_msgSend_intValueForProperty_(v13, v229, v230, v231, v232, 1276) != 0;
    *(v12 + 16) |= 0x800000u;
    *(v12 + 164) = v233;
  }

  if (objc_msgSend_containsProperty_(v13, v229, v230, v231, v232, 1277))
  {
    v238 = objc_msgSend_intValueForProperty_(v13, v234, v235, v236, v237, 1277) != 0;
    *(v12 + 16) |= 0x1000000u;
    *(v12 + 165) = v238;
  }

  if (objc_msgSend_containsProperty_(v13, v234, v235, v236, v237, 1278))
  {
    v243 = objc_msgSend_intValueForProperty_(v13, v239, v240, v241, v242, 1278) != 0;
    *(v12 + 16) |= 0x2000000u;
    *(v12 + 166) = v243;
  }

  if (objc_msgSend_containsProperty_(v13, v239, v240, v241, v242, 1279))
  {
    v248 = objc_msgSend_intValueForProperty_(v13, v244, v245, v246, v247, 1279) != 0;
    *(v12 + 16) |= 0x4000000u;
    *(v12 + 167) = v248;
  }

  if (objc_msgSend_containsProperty_(v13, v244, v245, v246, v247, 1280))
  {
    v253 = objc_msgSend_intValueForProperty_(v13, v249, v250, v251, v252, 1280) != 0;
    *(v12 + 16) |= 0x8000000u;
    *(v12 + 168) = v253;
  }

  if (objc_msgSend_containsProperty_(v13, v249, v250, v251, v252, 1281))
  {
    v258 = objc_msgSend_intValueForProperty_(v13, v254, v255, v256, v257, 1281) != 0;
    *(v12 + 16) |= 0x10000000u;
    *(v12 + 169) = v258;
  }

  if (objc_msgSend_containsProperty_(v13, v254, v255, v256, v257, 1282))
  {
    v263 = objc_msgSend_intValueForProperty_(v13, v259, v260, v261, v262, 1282) != 0;
    *(v12 + 16) |= 0x20000000u;
    *(v12 + 170) = v263;
  }

  if (objc_msgSend_containsProperty_(v13, v259, v260, v261, v262, 1283))
  {
    v268 = objc_msgSend_intValueForProperty_(v13, v264, v265, v266, v267, 1283) != 0;
    *(v12 + 16) |= 0x40000000u;
    *(v12 + 171) = v268;
  }

  if (objc_msgSend_containsProperty_(v13, v264, v265, v266, v267, 1288))
  {
    v273 = objc_msgSend_intValueForProperty_(v13, v269, v270, v271, v272, 1288);
    *(v12 + 20) |= 0x80u;
    *(v12 + 180) = v273;
  }

  if (objc_msgSend_containsProperty_(v13, v269, v270, v271, v272, 1289))
  {
    v278 = objc_msgSend_intValueForProperty_(v13, v274, v275, v276, v277, 1289);
    *(v12 + 20) |= 0x100u;
    *(v12 + 184) = v278;
  }

  if (objc_msgSend_containsProperty_(v13, v274, v275, v276, v277, 1291))
  {
    v283 = objc_msgSend_intValueForProperty_(v13, v279, v280, v281, v282, 1291);
    *(v12 + 20) |= 0x200u;
    *(v12 + 188) = v283;
  }

  if (objc_msgSend_containsProperty_(v13, v279, v280, v281, v282, 1292))
  {
    v288 = objc_msgSend_intValueForProperty_(v13, v284, v285, v286, v287, 1292);
    *(v12 + 20) |= 0x400u;
    *(v12 + 192) = v288;
  }

  if (objc_msgSend_containsProperty_(v13, v284, v285, v286, v287, 1293))
  {
    v293 = objc_msgSend_intValueForProperty_(v13, v289, v290, v291, v292, 1293);
    *(v12 + 20) |= 0x800u;
    *(v12 + 196) = v293;
  }

  if (objc_msgSend_containsProperty_(v13, v289, v290, v291, v292, 1297))
  {
    v298 = objc_msgSend_intValueForProperty_(v13, v294, v295, v296, v297, 1297);
    *(v12 + 20) |= 0x1000u;
    *(v12 + 200) = v298;
  }
}

- (void)loadFromPreUFFArchiveWithUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(v4, v5, v6, v7, v8, off_2812EE5D0[20]);

  if (*(v9 + 32))
  {
    v10 = *(v9 + 32);
  }

  else
  {
    v10 = MEMORY[0x277D80BD0];
  }

  v84.receiver = self;
  v84.super_class = TSCHChartAxisStyle;
  [(TSCHChartAxisStyle *)&v84 loadFromArchive:v10 unarchiver:v4];
  v11 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v16 = v11;
  v17 = *(v9 + 16);
  if ((v17 & 0x800) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v11, v12, v13, v14, v15, *(v9 + 120), 1276);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x1000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 121), 1281);
    v17 = *(v9 + 16);
  }

  if ((v17 & 2) != 0)
  {
    v19 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 40), v4);
    if (v19)
    {
      objc_msgSend_setObject_forProperty_(v16, v18, v20, v21, v22, v19, 1251);
    }

    v17 = *(v9 + 16);
  }

  if ((v17 & 4) != 0)
  {
    v24 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 48), v4);
    if (v24)
    {
      objc_msgSend_setObject_forProperty_(v16, v23, v25, v26, v27, v24, 1257);
    }

    v17 = *(v9 + 16);
  }

  if ((v17 & 0x8000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 124), 1289);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x2000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 122), 1278);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x4000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 123), 1283);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x10000) != 0)
  {
    LODWORD(v13) = *(v9 + 128);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1245);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x80000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 140), 1279);
    v17 = *(v9 + 16);
  }

  if ((v17 & 8) != 0)
  {
    v29 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 56), v4);
    if (v29)
    {
      objc_msgSend_setObject_forProperty_(v16, v28, v30, v31, v32, v29, 1249);
    }

    v17 = *(v9 + 16);
  }

  if ((v17 & 0x10) != 0)
  {
    v34 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 64), v4);
    if (v34)
    {
      objc_msgSend_setObject_forProperty_(v16, v33, v35, v36, v37, v34, 1255);
    }

    v17 = *(v9 + 16);
  }

  if ((v17 & 0x20000) != 0)
  {
    LODWORD(v13) = *(v9 + 132);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1247);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x40000) != 0)
  {
    LODWORD(v13) = *(v9 + 136);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1253);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x100000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 141), 1266);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x200000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 142), 1274);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x400000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 143), 1280);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x20) != 0)
  {
    v39 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 72), v4);
    if (v39)
    {
      objc_msgSend_setObject_forProperty_(v16, v38, v40, v41, v42, v39, 1250);
    }

    v17 = *(v9 + 16);
  }

  if ((v17 & 0x40) != 0)
  {
    v44 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 80), v4);
    if (v44)
    {
      objc_msgSend_setObject_forProperty_(v16, v43, v45, v46, v47, v44, 1256);
    }

    v17 = *(v9 + 16);
  }

  if ((v17 & 0x800000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 144), 1288);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x8000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 160), 1277);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x10000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 161), 1282);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x1000000) != 0)
  {
    LODWORD(v13) = *(v9 + 148);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1243);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x2000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 152), 1237);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x4000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 156), 1297);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x20000000) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 162), 1273);
    v17 = *(v9 + 16);
  }

  if ((v17 & 0x80) != 0)
  {
    v49 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 88), v4);
    if (v49)
    {
      objc_msgSend_setObject_forProperty_(v16, v48, v50, v51, v52, v49, 1248);
    }

    v17 = *(v9 + 16);
  }

  if ((v17 & 0x100) != 0)
  {
    v54 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v12, v13, v14, v15, *(v9 + 96), v4);
    if (v54)
    {
      objc_msgSend_setObject_forProperty_(v16, v53, v55, v56, v57, v54, 1254);
    }

    v17 = *(v9 + 16);
  }

  if (v17 < 0)
  {
    LODWORD(v13) = *(v9 + 164);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1246);
  }

  if (*(v9 + 20))
  {
    LODWORD(v13) = *(v9 + 168);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1252);
  }

  if ((*(v9 + 19) & 0x40) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 163), 1265);
  }

  v58 = *(v9 + 20);
  if ((v58 & 2) != 0)
  {
    LODWORD(v13) = *(v9 + 172);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1244);
    v58 = *(v9 + 20);
  }

  if ((v58 & 4) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 176), 1292);
    v58 = *(v9 + 20);
  }

  if ((v58 & 8) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 180), 1241);
    v58 = *(v9 + 20);
  }

  if ((v58 & 0x10) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 184), 1293);
    v58 = *(v9 + 20);
  }

  if ((v58 & 0x20) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 188), 1242);
    v58 = *(v9 + 20);
  }

  if ((v58 & 0x40) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 192), 1291);
    v58 = *(v9 + 20);
  }

  if ((v58 & 0x80) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v16, v12, v13, v14, v15, *(v9 + 196), 1240);
  }

  v59 = *(v9 + 16);
  if ((v59 & 0x200) != 0)
  {
    v61 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 104), v4);
    if (v61)
    {
      objc_msgSend_setObject_forProperty_(v16, v60, v62, v63, v64, v61, 1233);
    }

    v59 = *(v9 + 16);
  }

  if ((v59 & 0x400) != 0)
  {
    v66 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v12, v13, v14, v15, *(v9 + 112), v4);
    if (v66)
    {
      objc_msgSend_setObject_forProperty_(v16, v65, v67, v68, v69, v66, 1232);
    }
  }

  v70 = *(v9 + 20);
  if ((v70 & 0x100) != 0)
  {
    LODWORD(v13) = *(v9 + 200);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1231);
    v70 = *(v9 + 20);
  }

  if ((v70 & 0x200) != 0)
  {
    LODWORD(v13) = *(v9 + 204);
    objc_msgSend_setFloatValue_forProperty_(v16, v12, v13, v14, v15, 1230);
  }

  objc_storeStrong((&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]), v16);
  if (objc_msgSend_hasPreUFFVersion(v4, v71, v72, v73, v74))
  {
    v79 = objc_msgSend_preUFFVersion(v4, v75, v76, v77, v78);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = sub_2762C5818;
    v83[3] = &unk_27A6B7688;
    v83[4] = self;
    v83[5] = v79;
    objc_msgSend_addFinalizeHandler_(v4, v80, COERCE_DOUBLE(3221225472), v81, v82, v83);
  }
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
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartAxisStyle mixingTypeWithObject:context:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 336, 0, "nil object after cast");

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
  v72 = 5;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = sub_2762C5BF8;
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
  v55[2] = sub_2762C5ED0;
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
  if (qword_280A47640 != -1)
  {
    sub_2764A7CEC();
  }

  v3 = qword_280A47638;

  return v3;
}

+ (id)imageFillProperties
{
  if (qword_280A47650 != -1)
  {
    sub_2764A7D00();
  }

  v3 = qword_280A47648;

  return v3;
}

+ (int)defaultIntValueForProperty:(int)a3
{
  v6 = *&a3;
  if (qword_280A47660 != -1)
  {
    sub_2764A7D14();
  }

  if (qword_280A47658 && objc_msgSend_containsProperty_(qword_280A47658, a2, v3, v4, v5, v6))
  {
    v12 = qword_280A47658;

    return objc_msgSend_intValueForProperty_(v12, v8, v9, v10, v11, v6);
  }

  else
  {
    result = 0;
    if (v6 > 1287)
    {
      if (v6 > 1291)
      {
        if (v6 == 1292 || v6 == 1297)
        {
          return result;
        }
      }

      else if (v6 == 1288 || v6 == 1289)
      {
        return 2;
      }

LABEL_18:
      v14.receiver = a1;
      v14.super_class = &OBJC_METACLASS___TSCHChartAxisStyle;
      return objc_msgSendSuper2(&v14, sel_defaultIntValueForProperty_, v6);
    }

    switch(v6)
    {
      case 1237:
      case 1238:
      case 1241:
      case 1266:
      case 1267:
      case 1274:
      case 1280:
      case 1281:
        return result;
      case 1265:
      case 1268:
      case 1269:
      case 1273:
      case 1275:
      case 1276:
      case 1277:
      case 1278:
      case 1279:
      case 1282:
      case 1283:
        result = 1;
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

+ (float)defaultFloatValueForProperty:(int)a3
{
  v6 = *&a3;
  if (qword_280A47670 != -1)
  {
    sub_2764A7D28();
  }

  if (qword_280A47668 && objc_msgSend_containsProperty_(qword_280A47668, a2, v3, v4, v5, v6))
  {
    v12 = qword_280A47668;

    objc_msgSend_floatValueForProperty_(v12, v8, v9, v10, v11, v6);
  }

  else
  {
    if ((v6 - 1230) > 0x17)
    {
      goto LABEL_12;
    }

    result = 1.0;
    if (((1 << (v6 + 50)) & 0xC30003) != 0)
    {
      return result;
    }

    if (v6 == 1244)
    {
      return 0.0;
    }

    else
    {
LABEL_12:
      v14.receiver = a1;
      v14.super_class = &OBJC_METACLASS___TSCHChartAxisStyle;
      objc_msgSendSuper2(&v14, sel_defaultFloatValueForProperty_, v6);
    }
  }

  return result;
}

+ (id)defaultValueForProperty:(int)a3
{
  v6 = *&a3;
  if (qword_280A47680 != -1)
  {
    sub_2764A7D3C();
  }

  if (qword_280A47678 && objc_msgSend_containsProperty_(qword_280A47678, a2, v3, v4, v5, v6))
  {
    v8 = objc_msgSend_objectForProperty_(qword_280A47678, a2, v3, v4, v5, v6);
LABEL_20:
    v9 = v8;
    goto LABEL_23;
  }

  if (v6 <= 1250)
  {
    if (v6 <= 1248)
    {
      if ((v6 - 1232) < 2)
      {
        v9 = 0;
        goto LABEL_23;
      }

      if (v6 != 1248)
      {
        goto LABEL_27;
      }

LABEL_19:
      v8 = objc_msgSend_nullShadow(TSCHStyleUtilities, a2, v3, v4, v5);
      goto LABEL_20;
    }

    if (v6 == 1249)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (v6 <= 1254)
  {
    if (v6 == 1251)
    {
LABEL_21:
      v10 = MEMORY[0x277D803C0];
      v11 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, v3, v4, v5);
      goto LABEL_22;
    }

    if (v6 == 1254)
    {
      goto LABEL_19;
    }

LABEL_27:
    v17.receiver = a1;
    v17.super_class = &OBJC_METACLASS___TSCHChartAxisStyle;
    v8 = objc_msgSendSuper2(&v17, sel_defaultValueForProperty_, v6);
    goto LABEL_20;
  }

  if (v6 == 1255)
  {
    goto LABEL_19;
  }

  if (v6 != 1256 && v6 != 1257)
  {
    goto LABEL_27;
  }

  v10 = MEMORY[0x277D803C0];
  v11 = objc_msgSend_grayColor(MEMORY[0x277D81180], a2, v3, v4, v5);
LABEL_22:
  v15 = v11;
  v9 = objc_msgSend_strokeWithColor_width_(v10, v12, 1.0, v13, v14, v11);

LABEL_23:

  return v9;
}

+ (int)muxDefaultPropertyForSpecificProperty:(int)a3
{
  if (qword_280A47690 != -1)
  {
    sub_2764A7D50();
  }

  result = objc_msgSend_containsKey_(qword_280A47688, a2, v3, v4, v5, a3);
  if (result)
  {
    return objc_msgSend_intForKey_(qword_280A47688, v8, v9, v10, v11, a3);
  }

  return result;
}

@end