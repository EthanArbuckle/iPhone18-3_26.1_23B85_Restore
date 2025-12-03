@interface TSTCellStyle
+ (id)categoriesCellProperties;
+ (id)cellDiffProperties;
+ (id)nonEmphasisCellProperties;
+ (id)p_regionStringForTableStyleArea:(unint64_t)area;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (id)styleIDForPreset:(unint64_t)preset andTableStyleArea:(unint64_t)area;
+ (id)textStyleIDForPreset:(unint64_t)preset andTableStyleArea:(unint64_t)area;
+ (void)initDefaultPropertyMap:(id)map forTableStyleArea:(unint64_t)area presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate;
+ (void)p_initBodyRegionPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate;
+ (void)p_initFooterRowRegionPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate;
+ (void)p_initHeaderColumnRegionPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate;
+ (void)p_initHeaderRowRegionPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate;
- (BOOL)isObsolete;
- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap optionalConcurrentStylesheet:(id)stylesheet;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)loadCellStyleFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadCellStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveCellStylePropertiesToArchive:(void *)archive archiver:(id)archiver;
- (void)saveCellStyleToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)upgradeIfNecessary;
- (void)validate;
@end

@implementation TSTCellStyle

+ (id)properties
{
  if (qword_27CFB51E0 != -1)
  {
    sub_2216F6530();
  }

  v3 = qword_27CFB51D8;

  return v3;
}

+ (id)propertiesAllowingNSNull
{
  if (qword_27CFB51F0 != -1)
  {
    sub_2216F6544();
  }

  v3 = qword_27CFB51E8;

  return v3;
}

+ (id)nonEmphasisCellProperties
{
  if (qword_27CFB5200 != -1)
  {
    sub_2216F6558();
  }

  v3 = qword_27CFB51F8;

  return v3;
}

+ (id)categoriesCellProperties
{
  if (qword_27CFB5210 != -1)
  {
    sub_2216F656C();
  }

  v3 = qword_27CFB5208;

  return v3;
}

+ (id)p_regionStringForTableStyleArea:(unint64_t)area
{
  if (area - 1 < 0x11)
  {
    return off_27845F878[area - 1];
  }

  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTCellStyle p_regionStringForTableStyleArea:]", v3, v4);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 158, 0, "Unexpected value for region.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  return 0;
}

+ (id)styleIDForPreset:(unint64_t)preset andTableStyleArea:(unint64_t)area
{
  v5 = objc_msgSend_p_regionStringForTableStyleArea_(self, a2, area, area, v4);
  v6 = String();

  return v6;
}

+ (id)textStyleIDForPreset:(unint64_t)preset andTableStyleArea:(unint64_t)area
{
  v5 = objc_msgSend_p_regionStringForTableStyleArea_(self, a2, area, area, v4);
  v6 = String();

  return v6;
}

+ (void)p_initBodyRegionPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate
{
  mapCopy = map;
  colorsCopy = colors;
  if (alternate <= 6 && ((1 << alternate) & 0x54) != 0)
  {
    v13 = objc_msgSend_blackColor(MEMORY[0x277D801F8], v8, v9, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_whiteColor(MEMORY[0x277D801F8], v8, v9, v10, v11);
  }

  v16 = v13;
  objc_msgSend_setObject_forProperty_(mapCopy, v14, v13, 898, v15);
}

+ (void)p_initHeaderRowRegionPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate
{
  mapCopy = map;
  colorsCopy = colors;
  v13 = colorsCopy;
  v14 = MEMORY[0x277D801F8];
  if (colorsCopy)
  {
    v15 = objc_msgSend_objectAtIndex_(colorsCopy, v9, qword_2217E0378[4 * d + 1], v11, v12);
    v19 = objc_msgSend_colorWithColor_(v14, v16, v15, v17, v18);
  }

  else
  {
    v19 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D801F8], v9, v10, v11, v12, 0.921500027, 0.921500027, 0.921500027, 1.0);
  }

  objc_msgSend_setObject_forProperty_(mapCopy, v20, v19, 898, v21);
}

+ (void)p_initHeaderColumnRegionPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate
{
  mapCopy = map;
  colorsCopy = colors;
  v13 = colorsCopy;
  v14 = MEMORY[0x277D801F8];
  if (colorsCopy)
  {
    v15 = objc_msgSend_objectAtIndex_(colorsCopy, v9, qword_2217E0378[4 * d + 2], v11, v12);
    v19 = objc_msgSend_colorWithColor_(v14, v16, v15, v17, v18);
  }

  else
  {
    v19 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D801F8], v9, v10, v11, v12, 0.921500027, 0.921500027, 0.921500027, 1.0);
  }

  objc_msgSend_setObject_forProperty_(mapCopy, v20, v19, 898, v21);
}

+ (void)p_initFooterRowRegionPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate
{
  mapCopy = map;
  colorsCopy = colors;
  v13 = colorsCopy;
  if (colorsCopy)
  {
    v14 = MEMORY[0x277D801F8];
    v15 = objc_msgSend_objectAtIndex_(colorsCopy, v9, qword_2217E0378[4 * d + 3], v11, v12);
    v19 = objc_msgSend_colorWithColor_(v14, v16, v15, v17, v18);
  }

  else
  {
    v19 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D801F8], v9, v10, v11, v12, 235.0, 235.0, 235.0, 1.0);
  }

  objc_msgSend_setObject_forProperty_(mapCopy, v20, v19, 898, v21);
}

+ (void)initDefaultPropertyMap:(id)map forTableStyleArea:(unint64_t)area presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate
{
  mapCopy = map;
  colorsCopy = colors;
  if (area <= 4)
  {
    if (area > 2)
    {
      v15 = mapCopy;
      if (area != 3)
      {
        objc_msgSend_p_initFooterRowRegionPropertyMap_presetID_colors_alternate_(self, mapCopy, mapCopy, d, colorsCopy, alternate);
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v15 = mapCopy;
    if (area == 1)
    {
LABEL_9:
      objc_msgSend_p_initBodyRegionPropertyMap_presetID_colors_alternate_(self, v15, v15, d, colorsCopy, alternate);
      goto LABEL_15;
    }

    if (area == 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = mapCopy;
    if (area - 5 < 0xA)
    {
LABEL_3:
      objc_msgSend_p_initHeaderRowRegionPropertyMap_presetID_colors_alternate_(self, v15, v15, d, colorsCopy, alternate);
      goto LABEL_15;
    }

    if (area - 15 < 2)
    {
      goto LABEL_9;
    }

    if (area == 17)
    {
LABEL_13:
      objc_msgSend_p_initHeaderColumnRegionPropertyMap_presetID_colors_alternate_(self, v15, v15, d, colorsCopy, alternate);
      goto LABEL_15;
    }
  }

  v16 = MEMORY[0x277D81150];
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "+[TSTCellStyle initDefaultPropertyMap:forTableStyleArea:presetID:colors:alternate:]", v12, v13);
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v19, v20);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 291, 0, "Unexpected value for region.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
LABEL_15:
}

- (void)loadCellStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  mapCopy = map;
  unarchiverCopy = unarchiver;
  v9 = objc_opt_class();
  v12 = v9;
  v13 = *(archive + 4);
  if ((v13 & 0x400) != 0)
  {
    v94 = *(archive + 104);
    if (objc_msgSend_validateIntValue_forProperty_(v9, v10, &v94, 896, v11))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v10, v94, 896, v11);
    }

    v13 = *(archive + 4);
  }

  if (v13)
  {
    v14 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v10, *(archive + 3), unarchiverCopy, v11);
    v93 = v14;
    v15 = objc_opt_class();
    v17 = objc_msgSend_validateObjectValue_withClass_forProperty_(v12, v16, &v93, v15, 898);
    v18 = v93;

    if (v17)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v19, v18, 898, v20);
    }

    v13 = *(archive + 4);
  }

  if ((v13 & 2) != 0)
  {
    if (*(*(archive + 4) + 24))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(*(archive + 4) + 24), unarchiverCopy, v11);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, MEMORY[0x277D804A0], unarchiverCopy, v11);
    }
    v49 = ;
    v92 = v49;
    v50 = objc_opt_class();
    v52 = objc_msgSend_validateObjectValue_withClass_forProperty_(v12, v51, &v92, v50, 899);
    v53 = v92;

    if (v52)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v54, v53, 899, v55);
    }

    v13 = *(archive + 4);
    if ((v13 & 4) == 0)
    {
      goto LABEL_41;
    }

LABEL_35:
    if (*(*(archive + 5) + 24))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(*(archive + 5) + 24), unarchiverCopy, v11);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, MEMORY[0x277D804A0], unarchiverCopy, v11);
    }
    v56 = ;
    v91 = v56;
    v57 = objc_opt_class();
    v59 = objc_msgSend_validateObjectValue_withClass_forProperty_(v12, v58, &v91, v57, 902);
    v60 = v91;

    if (v59)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v61, v60, 902, v62);
    }

    v13 = *(archive + 4);
    goto LABEL_41;
  }

  if ((v13 & 4) != 0)
  {
    goto LABEL_35;
  }

  if ((v13 & 8) == 0 && (v13 & 0x10) == 0)
  {
    if ((v13 & 0x40) != 0)
    {
      v21 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(archive + 9), unarchiverCopy, v11);
      v88 = v21;
      v22 = objc_opt_class();
      v24 = objc_msgSend_validateObjectValue_withClass_forProperty_(v12, v23, &v88, v22, 899);
      v25 = v88;

      if (v24)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v26, v25, 899, v27);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x80) != 0)
    {
      v28 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(archive + 10), unarchiverCopy, v11);
      v87 = v28;
      v29 = objc_opt_class();
      v31 = objc_msgSend_validateObjectValue_withClass_forProperty_(v12, v30, &v87, v29, 902);
      v32 = v87;

      if (v31)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v33, v32, 902, v34);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x100) != 0)
    {
      v35 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(archive + 11), unarchiverCopy, v11);
      v86 = v35;
      v36 = objc_opt_class();
      v38 = objc_msgSend_validateObjectValue_withClass_forProperty_(v12, v37, &v86, v36, 900);
      v39 = v86;

      if (v38)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v40, v39, 900, v41);
      }

      v13 = *(archive + 4);
    }

    if ((v13 & 0x200) != 0)
    {
      v42 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(archive + 12), unarchiverCopy, v11);
      v85 = v42;
      v43 = objc_opt_class();
      v45 = objc_msgSend_validateObjectValue_withClass_forProperty_(v12, v44, &v85, v43, 901);
      v46 = v85;

      if (v45)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v47, v46, 901, v48);
      }

LABEL_54:
      goto LABEL_55;
    }

    goto LABEL_55;
  }

LABEL_41:
  if ((v13 & 8) != 0)
  {
    if (*(*(archive + 6) + 24))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(*(archive + 6) + 24), unarchiverCopy, v11);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, MEMORY[0x277D804A0], unarchiverCopy, v11);
    }
    v63 = ;
    v90 = v63;
    v64 = objc_opt_class();
    v66 = objc_msgSend_validateObjectValue_withClass_forProperty_(v12, v65, &v90, v64, 900);
    v67 = v90;

    if (v66)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v68, v67, 900, v69);
    }

    v13 = *(archive + 4);
  }

  if ((v13 & 0x10) != 0)
  {
    if (*(*(archive + 7) + 24))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(*(archive + 7) + 24), unarchiverCopy, v11);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, MEMORY[0x277D804A0], unarchiverCopy, v11);
    }
    v70 = ;
    v89 = v70;
    v71 = objc_opt_class();
    v73 = objc_msgSend_validateObjectValue_withClass_forProperty_(v12, v72, &v89, v71, 901);
    v46 = v89;

    if (v73)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v74, v46, 901, v75);
    }

    goto LABEL_54;
  }

LABEL_55:
  v76 = *(archive + 4);
  if ((v76 & 0x800) != 0)
  {
    v94 = *(archive + 27);
    if (objc_msgSend_validateIntValue_forProperty_(v12, v10, &v94, 903, v11))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v10, v94, 903, v11);
    }

    v76 = *(archive + 4);
  }

  if ((v76 & 0x20) != 0)
  {
    v77 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80EB0], v10, *(archive + 8), unarchiverCopy, v11);
    v84 = v77;
    v78 = objc_opt_class();
    v80 = objc_msgSend_validateObjectValue_withClass_forProperty_(v12, v79, &v84, v78, 904);
    v81 = v84;

    if (v80)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v82, v81, 904, v83);
    }
  }
}

- (void)saveCellStylePropertiesToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v7 = objc_opt_class();
  v8 = *(&self->super.super.super.isa + *MEMORY[0x277D80AF0]);
  if (objc_msgSend_containsProperty_(v8, v9, 896, v10, v11))
  {
    v50 = objc_msgSend_intValueForProperty_(v8, v12, 896, v13, v14);
    if (objc_msgSend_validateIntValue_forProperty_(v7, v15, &v50, 896, v16))
    {
      v17 = v50 != 0;
      *(archive + 4) |= 0x400u;
      *(archive + 104) = v17;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v12, 898, v13, v14))
  {
    v21 = objc_msgSend_objectForProperty_(v8, v18, 898, v19, v20);
    v49 = v21;
    v22 = objc_opt_class();
    v24 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v23, &v49, v22, 898);
    v25 = v49;

    if (v24)
    {
      *(archive + 4) |= 1u;
      v28 = *(archive + 3);
      if (!v28)
      {
        v29 = *(archive + 1);
        if (v29)
        {
          v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
        }

        v28 = MEMORY[0x223DA0280](v29);
        *(archive + 3) = v28;
      }

      objc_msgSend_saveToArchive_archiver_(v25, v26, v28, archiverCopy, v27);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v18, 903, v19, v20))
  {
    v50 = objc_msgSend_intValueForProperty_(v8, v30, 903, v31, v32);
    if (objc_msgSend_validateIntValue_forProperty_(v7, v33, &v50, 903, v34))
    {
      v35 = v50;
      *(archive + 4) |= 0x800u;
      *(archive + 27) = v35;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v30, 904, v31, v32))
  {
    v39 = objc_msgSend_objectForProperty_(v8, v36, 904, v37, v38);
    v48 = v39;
    v40 = objc_opt_class();
    v42 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v41, &v48, v40, 904);
    v43 = v48;

    if (v42)
    {
      *(archive + 4) |= 0x20u;
      v46 = *(archive + 8);
      if (!v46)
      {
        v47 = *(archive + 1);
        if (v47)
        {
          v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
        }

        v46 = MEMORY[0x223DA03C0](v47);
        *(archive + 8) = v46;
      }

      objc_msgSend_saveToArchive_archiver_(v43, v44, v46, archiverCopy, v45);
    }
  }
}

- (void)loadCellStyleFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 3))
  {
    v7 = *(archive + 3);
  }

  else
  {
    v7 = MEMORY[0x277D80BD0];
  }

  v17.receiver = self;
  v17.super_class = TSTCellStyle;
  [(TSTCellStyle *)&v17 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(archive + 10);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D80AB8]);
    v14 = objc_msgSend_initWithCapacity_(v9, v10, v8, v11, v12);
    if (*(archive + 4))
    {
      objc_msgSend_loadCellStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v13, v14, *(archive + 4), unarchiverCopy);
    }

    else
    {
      objc_msgSend_loadCellStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v13, v14, &qword_2812E9B30, unarchiverCopy);
    }

    v15 = *MEMORY[0x277D80AF0];
    v16 = *(&self->super.super.super.isa + v15);
    *(&self->super.super.super.isa + v15) = v14;
  }
}

- (void)saveCellStyleToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x223DA03A0](v8);
    *(archive + 3) = v7;
  }

  v19.receiver = self;
  v19.super_class = TSTCellStyle;
  [(TSTCellStyle *)&v19 saveToArchive:v7 archiver:archiverCopy];
  v13 = objc_msgSend_overrideCount(self, v9, v10, v11, v12);
  if (v13)
  {
    v16 = *(archive + 4);
    *(archive + 10) = v13;
    *(archive + 4) = v16 | 6;
    v17 = *(archive + 4);
    if (!v17)
    {
      v18 = *(archive + 1);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = sub_2216E2ED4(v18);
      *(archive + 4) = v17;
    }

    objc_msgSend_saveCellStylePropertiesToArchive_archiver_(self, v14, v17, archiverCopy, v15);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[162], v5, v6);

  objc_msgSend_loadCellStyleFromArchive_unarchiver_(self, v8, v7, unarchiverCopy, v9);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221130FF0, off_2812E4498[162], v5);

  objc_msgSend_saveCellStyleToArchive_archiver_(self, v7, v6, archiverCopy, v8);
}

- (void)validate
{
  v6 = objc_msgSend_stylesheet(self, a2, v2, v3, v4);

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCellStyle validate]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 391, 0, "orphaned cell style %@", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_stylesheet(self, v7, v8, v9, v10);
  selfCopy = self;
  v24 = v22;
  if (objc_msgSend_containsStyle_(v24, v25, selfCopy, v26, v27))
  {
    v32 = objc_msgSend_stylesheet(selfCopy, v28, v29, v30, v31);

    if (v32 == v24)
    {
      return;
    }
  }

  else
  {
  }

  v36 = MEMORY[0x277D81150];
  v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTCellStyle validate]", v34, v35);
  v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v39, v40);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v42, v37, v41, 393, 0, "Cell style not in its stylesheet");

  v47 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v47, v43, v44, v45, v46);
}

- (BOOL)isObsolete
{
  v5 = objc_msgSend_overridePropertyMap(self, a2, v2, v3, v4);
  v10 = objc_msgSend_allProperties(v5, v6, v7, v8, v9);
  v11 = objc_opt_class();
  v16 = objc_msgSend_properties(v11, v12, v13, v14, v15);
  v20 = objc_msgSend_propertySetByRemovingPropertiesFromSet_(v10, v17, v16, v18, v19);

  LOBYTE(v5) = objc_msgSend_count(v20, v21, v22, v23, v24) != 0;
  return v5;
}

- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint
{
  dataCopy = data;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  if ((objc_msgSend_isVariation(self, v6, v7, v8, v9) & 1) == 0)
  {
    if (objc_msgSend_isIdentified(self, v10, v11, v12, v13))
    {
      v18 = objc_msgSend_styleIdentifier(self, v14, v15, v16, v17);
      v19 = String();

      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = objc_msgSend_documentRoot(self, v20, v21, v22, v23);
        v29 = objc_msgSend_theme(v24, v25, v26, v27, v28);
        v33 = objc_msgSend_presetsOfKind_(v29, v30, *MEMORY[0x277D80BA8], v31, v32);

        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = sub_221130840;
        v68[3] = &unk_27845F808;
        v68[4] = &v69;
        v68[5] = v19;
        objc_msgSend_enumerateObjectsUsingBlock_(v33, v34, v68, v35, v36);
      }
    }
  }

  if (v70[3])
  {
    objc_opt_class();
    v40 = objc_msgSend_valueForProperty_(self, v37, 898, v38, v39);
    v41 = TSUCheckedDynamicCast();

    v46 = objc_msgSend_imageData(v41, v42, v43, v44, v45);

    if (v46 != dataCopy)
    {
      v51 = MEMORY[0x277D81150];
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[TSTCellStyle targetSizeForImageData:associatedHint:]", v49, v50);
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v54, v55);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v57, v52, v56, 437, 0, "Expected that the imageData would be from the style's fill");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
    }

    if (v41)
    {
      objc_msgSend_renderedImageSizeForObjectSize_(v41, v47, v48, v49, v50, 1.79769313e308, 1.79769313e308);
      v63 = v62;
      v65 = v64;
    }

    else
    {
      v65 = 0x7FEFFFFFFFFFFFFFLL;
      v63 = 0x7FEFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v63 = *MEMORY[0x277CBF3A8];
    v65 = *(MEMORY[0x277CBF3A8] + 8);
  }

  _Block_object_dispose(&v69, 8);

  v66 = *&v63;
  v67 = *&v65;
  result.height = v67;
  result.width = v66;
  return result;
}

- (void)upgradeIfNecessary
{
  if ((objc_msgSend_definesProperty_(self, a2, 898, v2, v3) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(self, v5, v6, v7, v8);
    v15 = objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10, v11, v12);
    objc_msgSend_setValue_forProperty_(self, v13, v15, 898, v14);
  }
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  objc_opt_class();
  v8 = TSUCheckedDynamicCast();
  v13 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v9, v10, v11, v12);
  v18 = objc_msgSend_propertyMap(self, v14, v15, v16, v17);
  v23 = objc_msgSend_allProperties(v18, v19, v20, v21, v22);
  objc_msgSend_addProperties_(v13, v24, v23, v25, v26);

  v31 = objc_msgSend_propertyMap(v8, v27, v28, v29, v30);
  v36 = objc_msgSend_allProperties(v31, v32, v33, v34, v35);
  objc_msgSend_addProperties_(v13, v37, v36, v38, v39);

  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 5;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_221130C4C;
  v47[3] = &unk_27845F830;
  v47[4] = self;
  v40 = v8;
  v48 = v40;
  v50 = &v51;
  v41 = contextCopy;
  v49 = v41;
  objc_msgSend_enumeratePropertiesUsingBlock_(v13, v42, v47, v43, v44);
  v45 = v52[3];

  _Block_object_dispose(&v51, 8);
  return v45;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  v12 = objc_msgSend_copy(self, v8, v9, v10, v11);
  v17 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v13, v14, v15, v16);
  v22 = objc_msgSend_propertyMap(self, v18, v19, v20, v21);
  v27 = objc_msgSend_allProperties(v22, v23, v24, v25, v26);
  objc_msgSend_addProperties_(v17, v28, v27, v29, v30);

  v35 = objc_msgSend_propertyMap(v7, v31, v32, v33, v34);
  v40 = objc_msgSend_allProperties(v35, v36, v37, v38, v39);
  objc_msgSend_addProperties_(v17, v41, v40, v42, v43);

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_221130F24;
  v52[3] = &unk_27845F858;
  v52[4] = self;
  v44 = v7;
  v53 = v44;
  fractionCopy = fraction;
  v45 = v12;
  v54 = v45;
  objc_msgSend_enumeratePropertiesUsingBlock_(v17, v46, v52, v47, v48);
  v49 = v54;
  v50 = v45;

  return v45;
}

+ (id)cellDiffProperties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2214CB394;
  block[3] = &unk_278462558;
  block[4] = self;
  if (qword_27CFB5688 != -1)
  {
    dispatch_once(&qword_27CFB5688, block);
  }

  v2 = qword_27CFB5680;

  return v2;
}

- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap optionalConcurrentStylesheet:(id)stylesheet
{
  mapCopy = map;
  inMapCopy = inMap;
  propertyMapCopy = propertyMap;
  setPropertyMapCopy = setPropertyMap;
  stylesheetCopy = stylesheet;
  if (objc_msgSend_containsProperty_(inMapCopy, v17, 905, v18, v19))
  {
    v24 = objc_opt_class();
    v29 = objc_msgSend_properties(v24, v25, v26, v27, v28);
    v33 = objc_msgSend_containsAnyPropertyInProperties_(inMapCopy, v30, v29, v31, v32);

    if (v33)
    {
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTCellStyle(CellDiffAdditions) objectByRemovingPropertiesInMap:addingPropertiesInMap:updateInverseResetPropertyMap:updateInverseSetPropertyMap:optionalConcurrentStylesheet:]", v35, v36);
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle+CellDiffAdditions.m", v40, v41);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v43, v38, v42, 49, 0, "Can't specify both a cell style and a cell style change at the same time.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
    }

    objc_msgSend_setObject_forProperty_(setPropertyMapCopy, v34, self, 905, v36);
    v51 = objc_msgSend_objectForProperty_(inMapCopy, v48, 905, v49, v50);
    goto LABEL_32;
  }

  v52 = objc_msgSend_stylesheet(self, v20, v21, v22, v23);
  selfCopy = self;
  v188 = propertyMapCopy;
  if (v52)
  {
    goto LABEL_16;
  }

  v58 = MEMORY[0x277D81150];
  v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "[TSTCellStyle(CellDiffAdditions) objectByRemovingPropertiesInMap:addingPropertiesInMap:updateInverseResetPropertyMap:updateInverseSetPropertyMap:optionalConcurrentStylesheet:]", v55, v56);
  v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle+CellDiffAdditions.m", v61, v62);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v64, v59, v63, 57, 0, "Stylesheet should not be nil. Attempting repair.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68);
  v73 = objc_msgSend_parent(selfCopy, v69, v70, v71, v72);
  v78 = objc_msgSend_stylesheet(v73, v74, v75, v76, v77);
  v83 = v78;
  if (v78)
  {
    v52 = v78;
  }

  else
  {
    v84 = objc_msgSend_documentRoot(selfCopy, v79, v80, v81, v82);
    v89 = objc_msgSend_stylesheet(v84, v85, v86, v87, v88);

    v52 = v89;
  }

  if (stylesheetCopy)
  {
    objc_msgSend_repairOrReplaceErrantStyle_(stylesheetCopy, v90, selfCopy, v91, v92);
  }

  else
  {
    objc_msgSend_repairOrReplaceErrantStyle_(v52, v90, selfCopy, v91, v92);
  }
  v93 = ;

  if (!v93 || !v52)
  {
    v103 = MEMORY[0x277D81150];
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "[TSTCellStyle(CellDiffAdditions) objectByRemovingPropertiesInMap:addingPropertiesInMap:updateInverseResetPropertyMap:updateInverseSetPropertyMap:optionalConcurrentStylesheet:]", v96, v97);
    v105 = v104 = v52;
    v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle+CellDiffAdditions.m", v107, v108);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v103, v110, v105, v109, 70, 0, "No usable style or stylesheet to vary against!");

    v52 = v104;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v111, v112, v113, v114);
    selfCopy = selfCopy;

LABEL_16:
    isVariation = objc_msgSend_isVariation(selfCopy, v53, v54, v55, v56);
    goto LABEL_17;
  }

  selfCopy = v93;
  isVariation = objc_msgSend_isVariation(v93, v94, v95, v96, v97);
LABEL_17:
  v186 = v52;
  if (isVariation)
  {
    v115 = objc_msgSend_overridePropertyMap(selfCopy, v99, v100, v101, v102);
    v120 = objc_msgSend_copy(v115, v116, v117, v118, v119);
  }

  else
  {
    v120 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v99, v100, v101, v102);
  }

  v121 = objc_opt_class();
  v126 = objc_msgSend_properties(v121, v122, v123, v124, v125);
  v187 = mapCopy;
  v130 = objc_msgSend_propertyMapWithProperties_(mapCopy, v127, v126, v128, v129);

  v194[0] = MEMORY[0x277D85DD0];
  v194[1] = 3221225472;
  v194[2] = sub_2214CBA10;
  v194[3] = &unk_278464128;
  v131 = v120;
  v195 = v131;
  v132 = setPropertyMapCopy;
  v196 = v132;
  v133 = selfCopy;
  v197 = v133;
  objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v130, v134, v194, v135, v136);
  v137 = objc_opt_class();
  v142 = objc_msgSend_properties(v137, v138, v139, v140, v141);
  v146 = objc_msgSend_propertyMapWithProperties_(inMapCopy, v143, v142, v144, v145);

  v189[0] = MEMORY[0x277D85DD0];
  v189[1] = 3221225472;
  v189[2] = sub_2214CBA88;
  v189[3] = &unk_278466578;
  v147 = v131;
  v190 = v147;
  v148 = v133;
  v191 = v148;
  v149 = v188;
  v192 = v149;
  v150 = v132;
  v193 = v150;
  objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v146, v151, v189, v152, v153);
  if (((objc_msgSend_containsProperty_(inMapCopy, v154, 898, v155, v156) & 1) != 0 || objc_msgSend_containsProperty_(v187, v157, 898, v159, v160)) && (!objc_msgSend_isVariation(v148, v157, v158, v159, v160) || (objc_msgSend_overridesProperty_(v148, v157, 898, v159, v160) & 1) == 0))
  {
    objc_msgSend_removeValueForProperty_(v150, v157, 898, v159, v160);
    v164 = objc_msgSend_boxedValueForProperty_(v148, v161, 898, v162, v163);
    v169 = v164;
    if (v164)
    {
      v170 = v164;
    }

    else
    {
      v170 = objc_msgSend_null(MEMORY[0x277CBEB68], v165, v166, v167, v168);
    }

    v173 = v170;
    objc_msgSend_setBoxedObject_forProperty_(v149, v171, v170, 898, v172);
  }

  if (stylesheetCopy)
  {
    objc_opt_class();
    v178 = objc_msgSend_rootAncestor(v148, v174, v175, v176, v177);
    v181 = objc_msgSend_variationOfStyle_propertyMap_(stylesheetCopy, v179, v178, v147, v180);
    v51 = TSUDynamicCast();

    v182 = v186;
  }

  else
  {
    v178 = objc_msgSend_rootAncestor(v148, v157, v158, v159, v160);
    v182 = v186;
    v51 = objc_msgSend_variationOfStyle_propertyMap_(v186, v183, v178, v147, v184);
  }

  mapCopy = v187;
  propertyMapCopy = v188;
LABEL_32:

  return v51;
}

@end