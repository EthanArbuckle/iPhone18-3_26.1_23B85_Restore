@interface TSCHReferenceLineStyle
+ (float)defaultFloatValueForProperty:(int)a3;
+ (id)defaultStyleForPresetFromChartStyle:(id)a3 seriesStyle:(id)a4 paragraphStyles:(id)a5 valueAxisStyle:(id)a6;
+ (id)defaultStyleWithContext:(id)a3;
+ (id)defaultValueForProperty:(int)a3;
+ (id)identifierForRoleIndex:(unint64_t)a3 ordinal:(unint64_t)a4;
+ (id)imageFillProperties;
+ (id)overrideMapFromChartStyle:(id)a3 seriesStyle:(id)a4 paragraphStyles:(id)a5 valueAxisStyle:(id)a6;
+ (id)p_outsideSeriesLabelColorOfSeriesStyle:(id)a3 paragraphStyles:(id)a4;
+ (id)properties;
+ (int)defaultIntValueForProperty:(int)a3;
+ (int)muxDefaultPropertyForSpecificProperty:(int)a3;
+ (unint64_t)p_valueAxisLabelParagraphStyleIndexWithValueAxisStyle:(id)a3 paragraphStyles:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSCHReferenceLineStyle

+ (id)properties
{
  if (qword_280A479C0 != -1)
  {
    sub_2764A814C();
  }

  v3 = qword_280A479B8;

  return v3;
}

+ (id)imageFillProperties
{
  if (qword_280A479D0 != -1)
  {
    sub_2764A8160();
  }

  v3 = qword_280A479C8;

  return v3;
}

+ (int)defaultIntValueForProperty:(int)a3
{
  v6 = *&a3;
  if (qword_280A479E0 != -1)
  {
    sub_2764A8174();
  }

  if (qword_280A479D8 && objc_msgSend_containsProperty_(qword_280A479D8, a2, v3, v4, v5, v6))
  {
    v12 = qword_280A479D8;

    return objc_msgSend_intValueForProperty_(v12, v8, v9, v10, v11, v6);
  }

  else
  {
    result = 0;
    if (v6 != 1586 && v6 != 1593)
    {
      v14.receiver = a1;
      v14.super_class = &OBJC_METACLASS___TSCHReferenceLineStyle;
      return objc_msgSendSuper2(&v14, sel_defaultIntValueForProperty_, v6);
    }
  }

  return result;
}

+ (float)defaultFloatValueForProperty:(int)a3
{
  v6 = *&a3;
  if (qword_280A479F0 != -1)
  {
    sub_2764A8188();
  }

  if (qword_280A479E8 && objc_msgSend_containsProperty_(qword_280A479E8, a2, v3, v4, v5, v6))
  {
    v12 = qword_280A479E8;

    objc_msgSend_floatValueForProperty_(v12, v8, v9, v10, v11, v6);
  }

  else
  {
    v14.receiver = a1;
    v14.super_class = &OBJC_METACLASS___TSCHReferenceLineStyle;
    objc_msgSendSuper2(&v14, sel_defaultFloatValueForProperty_, v6);
  }

  return result;
}

+ (id)defaultValueForProperty:(int)a3
{
  v6 = *&a3;
  if (qword_280A47A00 != -1)
  {
    sub_2764A819C();
  }

  if (!qword_280A479F8 || !objc_msgSend_containsProperty_(qword_280A479F8, a2, v3, v4, v5, v6))
  {
    if (v6 == 1591)
    {
      v13 = MEMORY[0x277D803C0];
      v10 = objc_msgSend_blueColor(MEMORY[0x277D81180], a2, v3, v4, v5);
      v12 = objc_msgSend_strokeWithColor_width_(v13, v14, 2.0, v15, v16, v10);
    }

    else
    {
      if (v6 != 1587)
      {
        v19.receiver = a1;
        v19.super_class = &OBJC_METACLASS___TSCHReferenceLineStyle;
        v8 = objc_msgSendSuper2(&v19, sel_defaultValueForProperty_, v6);
        goto LABEL_12;
      }

      v9 = MEMORY[0x277D803A8];
      v10 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, v3, v4, v5);
      v12 = objc_msgSend_shadowWithAngle_offset_radius_opacity_color_enabled_(v9, v11, 45.0, 6.0, 10.0, v10, 1, 0.75);
    }

    v17 = v12;

    goto LABEL_13;
  }

  v8 = objc_msgSend_objectForProperty_(qword_280A479F8, a2, v3, v4, v5, v6);
LABEL_12:
  v17 = v8;
LABEL_13:

  return v17;
}

+ (int)muxDefaultPropertyForSpecificProperty:(int)a3
{
  if (qword_280A47A10 != -1)
  {
    sub_2764A81B0();
  }

  result = objc_msgSend_containsKey_(qword_280A47A08, a2, v3, v4, v5, a3);
  if (result)
  {
    return objc_msgSend_intForKey_(qword_280A47A08, v8, v9, v10, v11, a3);
  }

  return result;
}

+ (id)defaultStyleWithContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v5, v6, v7, v8, v3, 0, 0, 0);

  return isVariation;
}

+ (id)identifierForRoleIndex:(unint64_t)a3 ordinal:(unint64_t)a4
{
  v7 = objc_msgSend_presetStyleDescriptorForOrdinal_(a1, a2, v4, v5, v6, a4);
  v8 = String();

  return v8;
}

+ (id)p_outsideSeriesLabelColorOfSeriesStyle:(id)a3 paragraphStyles:(id)a4
{
  v5 = a3;
  v7 = a4;
  if (v5)
  {
    v11 = objc_msgSend_intValueForProperty_(v5, v6, v8, v9, v10, 1439);
  }

  else
  {
    v11 = 0x80000000;
  }

  v13 = objc_msgSend_blackColor(MEMORY[0x277D81180], v6, v8, v9, v10);
  if (v11 != 0x80000000 && objc_msgSend_count(v7, v12, v14, v15, v16) > v11)
  {
    v21 = objc_msgSend_objectAtIndexedSubscript_(v7, v17, v18, v19, v20, v11);
    if (v21)
    {
      objc_opt_class();
      v26 = objc_msgSend_valueForProperty_(v21, v22, v23, v24, v25, 48);
      v27 = TSUDynamicCast();

      if (v27)
      {
        objc_msgSend_referenceColor(v27, v28, v29, v30, v31);
      }

      else
      {
        objc_msgSend_clearColor(MEMORY[0x277D81180], v28, v29, v30, v31);
      }
      v32 = ;

      v13 = v32;
    }
  }

  return v13;
}

+ (unint64_t)p_valueAxisLabelParagraphStyleIndexWithValueAxisStyle:(id)a3 paragraphStyles:(id)a4
{
  v5 = a3;
  v7 = a4;
  if (!v5 || (v11 = objc_msgSend_intValueForProperty_(v5, v6, v8, v9, v10, 1242), v11 == 0x80000000))
  {
    v11 = objc_msgSend_intValueForProperty_(v5, v6, v8, v9, v10, 1241);
  }

  if (v11 == 0x80000000)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  if (objc_msgSend_count(v7, v6, v8, v9, v10) <= v12)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCHReferenceLineStyle p_valueAxisLabelParagraphStyleIndexWithValueAxisStyle:paragraphStyles:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHReferenceLineStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 77, 0, "invalid value axis label paragraph style index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  return v12;
}

+ (id)overrideMapFromChartStyle:(id)a3 seriesStyle:(id)a4 paragraphStyles:(id)a5 valueAxisStyle:(id)a6
{
  v9 = a5;
  v10 = a6;
  v15 = objc_msgSend_p_outsideSeriesLabelColorOfSeriesStyle_paragraphStyles_(a1, v11, v12, v13, v14, a4, v9);
  v19 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v16, 1.75, v17, v18, v15);
  v24 = objc_msgSend_p_valueAxisLabelParagraphStyleIndexWithValueAxisStyle_paragraphStyles_(a1, v20, v21, v22, v23, v10, v9);
  v25 = MEMORY[0x277D80AB8];
  v30 = objc_msgSend_null(MEMORY[0x277CBEB68], v26, v27, v28, v29);
  v35 = objc_msgSend_propertyMapWithPropertiesAndValues_(v25, v31, v32, v33, v34, 1591, v19, 1587, v30, 1586, v24, 1593, v24, 0);

  return v35;
}

+ (id)defaultStyleForPresetFromChartStyle:(id)a3 seriesStyle:(id)a4 paragraphStyles:(id)a5 valueAxisStyle:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v71 = v11;
  objc_opt_class();
  v14 = TSUCheckedDynamicCast();
  v19 = objc_msgSend_overrideMapFromChartStyle_seriesStyle_paragraphStyles_valueAxisStyle_(a1, v15, v16, v17, v18, v10, v11, v12, v13);
  v20 = objc_alloc(objc_opt_class());
  v25 = objc_msgSend_context(v14, v21, v22, v23, v24);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v20, v26, v27, v28, v29, v25, 0, v19, 0);

  v36 = objc_msgSend_stylesheet(v14, v31, v32, v33, v34);
  if (v36)
  {
    if (v14)
    {
      do
      {
        v40 = objc_msgSend_styleIdentifier(v14, v35, v37, v38, v39);

        if (v40)
        {
          break;
        }

        v41 = objc_msgSend_parent(v14, v35, v37, v38, v39);

        v14 = v41;
      }

      while (v41);
    }

    v43 = objc_msgSend_styleIdentifier(v14, v35, v37, v38, v39);
    if (!v43 || (objc_msgSend_styleIdentifier(v14, v42, v44, v45, v46), v47 = objc_claimAutoreleasedReturnValue(), v48 = String(), v47, v43, v48 == 0x7FFFFFFFFFFFFFFFLL))
    {
      objc_msgSend_identifierForRoleIndex_ordinal_(TSCHReferenceLineStyle, v42, v44, v45, v46, 0, 0);
    }

    else
    {
      objc_msgSend_identifierForRoleIndex_ordinal_(TSCHReferenceLineStyle, v42, v44, v45, v46, v48, 0);
    }
    v49 = ;
    objc_opt_class();
    v54 = objc_msgSend_styleWithIdentifier_(v36, v50, v51, v52, v53, v49);
    v55 = TSUCheckedDynamicCast();

    if (v55)
    {
      v60 = v55;

      isVariation = v60;
    }

    else
    {
      isLocked = objc_msgSend_isLocked(v36, v56, v57, v58, v59);
      if (isLocked)
      {
        objc_msgSend_setIsLocked_(v36, v61, v63, v64, v65, 0);
      }

      objc_msgSend_addStyle_withIdentifier_(v36, v61, v63, v64, v65, isVariation, v49);
      if (isLocked)
      {
        objc_msgSend_setIsLocked_(v36, v66, v67, v68, v69, 1);
      }
    }
  }

  return isVariation;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(v4, v5, v6, v7, v8, off_2812ED2B8[28]);

  if ((*(v9 + 40) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHReferenceLineStyle loadFromUnarchiver:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHReferenceLineStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 145, 0, "Missing superclass message");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  if (*(v9 + 48))
  {
    v29 = *(v9 + 48);
  }

  else
  {
    v29 = MEMORY[0x277D80BD0];
  }

  v69.receiver = self;
  v69.super_class = TSCHReferenceLineStyle;
  [(TSCHReferenceLineStyle *)&v69 loadFromArchive:v29 unarchiver:v4];
  if ((google::protobuf::internal::ExtensionSet::Has((v9 + 16)) & 1) == 0)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "[TSCHReferenceLineStyle loadFromUnarchiver:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHReferenceLineStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 149, 0, "Protobuf missing expected extension");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
  }

  Message = google::protobuf::internal::ExtensionSet::GetMessage();
  v50 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v55 = v50;
  v56 = *(Message + 16);
  if ((v56 & 4) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v50, v51, v52, v53, v54, *(Message + 40), 1586);
    v56 = *(Message + 16);
  }

  if ((v56 & 2) != 0)
  {
    v58 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v51, v52, v53, v54, *(Message + 32), v4);
    if (v58)
    {
      objc_msgSend_setObject_forProperty_(v55, v57, v59, v60, v61, v58, 1587);
    }

    v56 = *(Message + 16);
  }

  if (v56)
  {
    v63 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v51, v52, v53, v54, *(Message + 24), v4);
    if (v63)
    {
      objc_msgSend_setObject_forProperty_(v55, v62, v64, v65, v66, v63, 1591);
    }

    v56 = *(Message + 16);
  }

  if ((v56 & 8) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v55, v51, v52, v53, v54, *(Message + 44), 1593);
  }

  v67 = *MEMORY[0x277D80AF0];
  v68 = *(&self->super.super.super.super.isa + v67);
  *(&self->super.super.super.super.isa + v67) = v55;
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, v6, v7, v8, sub_27635BA48, off_2812ED2B8[28]);

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

  v50.receiver = self;
  v50.super_class = TSCHReferenceLineStyle;
  [(TSCHReferenceLineStyle *)&v50 saveToArchive:v10 archiver:v4];
  sub_27642574C();
  v12 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v13 = *(&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]);
  if (objc_msgSend_containsProperty_(v13, v14, v15, v16, v17, 1586))
  {
    v22 = objc_msgSend_intValueForProperty_(v13, v18, v19, v20, v21, 1586);
    *(v12 + 16) |= 4u;
    *(v12 + 40) = v22;
  }

  if (objc_msgSend_containsProperty_(v13, v18, v19, v20, v21, 1587))
  {
    v28 = objc_msgSend_objectForProperty_(v13, v23, v24, v25, v26, 1587);
    *(v12 + 16) |= 2u;
    v32 = *(v12 + 32);
    if (!v32)
    {
      v33 = *(v12 + 8);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = MEMORY[0x277C97A90](v33);
      *(v12 + 32) = v32;
    }

    objc_msgSend_saveToArchive_archiver_(v28, v27, v29, v30, v31, v32, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v23, v24, v25, v26, 1591))
  {
    v39 = objc_msgSend_objectForProperty_(v13, v34, v35, v36, v37, 1591);
    *(v12 + 16) |= 1u;
    v43 = *(v12 + 24);
    if (!v43)
    {
      v44 = *(v12 + 8);
      if (v44)
      {
        v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
      }

      v43 = MEMORY[0x277C97AA0](v44);
      *(v12 + 24) = v43;
    }

    objc_msgSend_saveToArchive_archiver_(v39, v38, v40, v41, v42, v43, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v34, v35, v36, v37, 1593))
  {
    v49 = objc_msgSend_intValueForProperty_(v13, v45, v46, v47, v48, 1593);
    *(v12 + 16) |= 8u;
    *(v12 + 44) = v49;
  }
}

@end