@interface TSCHReferenceLineNonStyle
+ (float)defaultFloatValueForProperty:(int)a3;
+ (id)defaultStyleWithContext:(id)a3;
+ (id)defaultValueForProperty:(int)a3;
+ (id)imageFillProperties;
+ (id)properties;
+ (int)defaultIntValueForProperty:(int)a3;
+ (int)muxDefaultPropertyForSpecificProperty:(int)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSCHReferenceLineNonStyle

+ (id)defaultStyleWithContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v5, v6, v7, v8, v3, 0, 0, 0);

  return isVariation;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(v4, v5, v6, v7, v8, off_2812ED2B8[30]);

  if ((*(v9 + 40) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHReferenceLineNonStyle loadFromUnarchiver:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHReferenceLineNonStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 43, 0, "Missing superclass message");

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

  v73.receiver = self;
  v73.super_class = TSCHReferenceLineNonStyle;
  [(TSCHReferenceLineNonStyle *)&v73 loadFromArchive:v29 unarchiver:v4];
  if ((google::protobuf::internal::ExtensionSet::Has((v9 + 16)) & 1) == 0)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "[TSCHReferenceLineNonStyle loadFromUnarchiver:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHReferenceLineNonStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 47, 0, "Protobuf missing expected extension");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
  }

  Message = google::protobuf::internal::ExtensionSet::GetMessage();
  v51 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v55 = *(Message + 16);
  if ((v55 & 2) != 0)
  {
    v57 = objc_msgSend_tsch_instanceWithArchive_unarchiver_(MEMORY[0x277CCABB0], v50, v52, v53, v54, *(Message + 32), v4);
    if (v57)
    {
      objc_msgSend_setObject_forProperty_(v51, v56, v58, v59, v60, v57, 1584);
    }

    v55 = *(Message + 16);
  }

  if (v55)
  {
    v61 = objc_alloc(MEMORY[0x277CCACA8]);
    v67 = objc_msgSend_tsp_initWithProtobufString_(v61, v62, v63, v64, v65, *(Message + 24) & 0xFFFFFFFFFFFFFFFELL);
    if (v67)
    {
      objc_msgSend_setObject_forProperty_(v51, v66, v68, v69, v70, v67, 1585);
    }

    v55 = *(Message + 16);
  }

  if ((v55 & 8) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v51, v50, v52, v53, v54, *(Message + 44), 1588);
    v55 = *(Message + 16);
  }

  if ((v55 & 0x10) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v51, v50, v52, v53, v54, *(Message + 45), 1589);
    v55 = *(Message + 16);
  }

  if ((v55 & 0x20) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v51, v50, v52, v53, v54, *(Message + 46), 1590);
    v55 = *(Message + 16);
  }

  if ((v55 & 4) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v51, v50, v52, v53, v54, *(Message + 40), 1592);
  }

  v71 = *MEMORY[0x277D80AF0];
  v72 = *(&self->super.super.super.super.isa + v71);
  *(&self->super.super.super.super.isa + v71) = v51;
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, v6, v7, v8, sub_2761EAB70, off_2812ED2B8[30]);

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

  v59.receiver = self;
  v59.super_class = TSCHReferenceLineNonStyle;
  [(TSCHReferenceLineNonStyle *)&v59 saveToArchive:v10 archiver:v4];
  sub_276426288();
  v12 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v13 = *(&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]);
  if (objc_msgSend_containsProperty_(v13, v14, v15, v16, v17, 1584))
  {
    v23 = objc_msgSend_objectForProperty_(v13, v18, v19, v20, v21, 1584);
    *(v12 + 16) |= 2u;
    v27 = *(v12 + 32);
    if (!v27)
    {
      v28 = *(v12 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = sub_276406A24(v28);
      *(v12 + 32) = v27;
    }

    objc_msgSend_tsch_saveToArchive_archiver_(v23, v22, v24, v25, v26, v27, v4);
  }

  if (objc_msgSend_containsProperty_(v13, v18, v19, v20, v21, 1585))
  {
    v33 = objc_msgSend_objectForProperty_(v13, v29, v30, v31, v32, 1585);
    *(v12 + 16) |= 1u;
    v34 = google::protobuf::internal::ArenaStringPtr::Mutable();
    objc_msgSend_tsch_saveToProtobufString_(v33, v35, v36, v37, v38, v34);
  }

  if (objc_msgSend_containsProperty_(v13, v29, v30, v31, v32, 1588))
  {
    v43 = objc_msgSend_intValueForProperty_(v13, v39, v40, v41, v42, 1588) != 0;
    *(v12 + 16) |= 8u;
    *(v12 + 44) = v43;
  }

  if (objc_msgSend_containsProperty_(v13, v39, v40, v41, v42, 1589))
  {
    v48 = objc_msgSend_intValueForProperty_(v13, v44, v45, v46, v47, 1589) != 0;
    *(v12 + 16) |= 0x10u;
    *(v12 + 45) = v48;
  }

  if (objc_msgSend_containsProperty_(v13, v44, v45, v46, v47, 1590))
  {
    v53 = objc_msgSend_intValueForProperty_(v13, v49, v50, v51, v52, 1590) != 0;
    *(v12 + 16) |= 0x20u;
    *(v12 + 46) = v53;
  }

  if (objc_msgSend_containsProperty_(v13, v49, v50, v51, v52, 1592))
  {
    v58 = objc_msgSend_intValueForProperty_(v13, v54, v55, v56, v57, 1592);
    *(v12 + 16) |= 4u;
    *(v12 + 40) = v58;
  }
}

+ (id)properties
{
  if (qword_280A47960 != -1)
  {
    sub_2764A80D4();
  }

  v3 = qword_280A47958;

  return v3;
}

+ (id)imageFillProperties
{
  if (qword_280A47970 != -1)
  {
    sub_2764A80E8();
  }

  v3 = qword_280A47968;

  return v3;
}

+ (int)defaultIntValueForProperty:(int)a3
{
  v6 = *&a3;
  if (qword_280A47980 != -1)
  {
    sub_2764A80FC();
  }

  if (qword_280A47978 && objc_msgSend_containsProperty_(qword_280A47978, a2, v3, v4, v5, v6))
  {
    v12 = qword_280A47978;

    return objc_msgSend_intValueForProperty_(v12, v8, v9, v10, v11, v6);
  }

  else
  {
    v14 = v6 - 1588;
    if (v6 - 1588) < 5 && ((0x17u >> v14))
    {
      return dword_2764D6CC8[v14];
    }

    else
    {
      v15.receiver = a1;
      v15.super_class = &OBJC_METACLASS___TSCHReferenceLineNonStyle;
      return objc_msgSendSuper2(&v15, sel_defaultIntValueForProperty_, v6);
    }
  }
}

+ (float)defaultFloatValueForProperty:(int)a3
{
  v6 = *&a3;
  if (qword_280A47990 != -1)
  {
    sub_2764A8110();
  }

  if (qword_280A47988 && objc_msgSend_containsProperty_(qword_280A47988, a2, v3, v4, v5, v6))
  {
    v12 = qword_280A47988;

    objc_msgSend_floatValueForProperty_(v12, v8, v9, v10, v11, v6);
  }

  else
  {
    v14.receiver = a1;
    v14.super_class = &OBJC_METACLASS___TSCHReferenceLineNonStyle;
    objc_msgSendSuper2(&v14, sel_defaultFloatValueForProperty_, v6);
  }

  return result;
}

+ (id)defaultValueForProperty:(int)a3
{
  v6 = *&a3;
  if (qword_280A479A0 != -1)
  {
    sub_2764A8124();
  }

  if (qword_280A47998 && objc_msgSend_containsProperty_(qword_280A47998, a2, v3, v4, v5, v6))
  {
    v9 = objc_msgSend_objectForProperty_(qword_280A47998, v8, v3, v4, v5, v6);
  }

  else
  {
    if (v6 == 1584)
    {
      v15 = 0;
      goto LABEL_12;
    }

    if (v6 == 1585)
    {
      v10 = sub_276360774(v3, v4, v5);
      v15 = objc_msgSend_localizedStringForKey_value_table_(v10, v11, v12, v13, v14, @"Reference Line Label", &stru_288528678, @"TSCharts");

      goto LABEL_12;
    }

    v17.receiver = a1;
    v17.super_class = &OBJC_METACLASS___TSCHReferenceLineNonStyle;
    v9 = objc_msgSendSuper2(&v17, sel_defaultValueForProperty_, v6);
  }

  v15 = v9;
LABEL_12:

  return v15;
}

+ (int)muxDefaultPropertyForSpecificProperty:(int)a3
{
  if (qword_280A479B0 != -1)
  {
    sub_2764A8138();
  }

  result = objc_msgSend_containsKey_(qword_280A479A8, a2, v3, v4, v5, a3);
  if (result)
  {
    return objc_msgSend_intForKey_(qword_280A479A8, v8, v9, v10, v11, a3);
  }

  return result;
}

@end