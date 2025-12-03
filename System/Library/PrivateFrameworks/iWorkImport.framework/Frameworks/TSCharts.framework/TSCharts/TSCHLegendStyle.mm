@interface TSCHLegendStyle
+ (float)defaultFloatValueForProperty:(int)property;
+ (id)defaultStyleWithContext:(id)context;
+ (id)defaultValueForProperty:(int)property;
+ (id)imageFillProperties;
+ (id)properties;
+ (int)defaultIntValueForProperty:(int)property;
+ (int)muxDefaultPropertyForSpecificProperty:(int)property;
- (TSCHLegendStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)loadFromPreUFFArchiveWithUnarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_upgradeRemoveShadowEnabledPropertyUsage:(id)usage;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSCHLegendStyle

+ (id)defaultStyleWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v5, v6, v7, v8, contextCopy, 0, 0, 0);

  return isVariation;
}

- (TSCHLegendStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation
{
  v7.receiver = self;
  v7.super_class = TSCHLegendStyle;
  return [(TSCHLegendStyle *)&v7 initWithContext:context name:name overridePropertyMap:map isVariation:variation];
}

- (void)p_upgradeRemoveShadowEnabledPropertyUsage:(id)usage
{
  usageCopy = usage;
  v7 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], v3, v4, v5, v6, 1582, 0);
  objc_msgSend_upgradeShadowProperties_inMap_(TSCHStyleUtilities, v8, v9, v10, v11, v7, usageCopy);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_messageType(unarchiverCopy, v5, v6, v7, v8) == 5013)
  {
    objc_msgSend_loadFromPreUFFArchiveWithUnarchiver_(self, v9, v10, v11, v12, unarchiverCopy);
  }

  else
  {
    v13 = unarchiverCopy;
    google::protobuf::internal::AssignDescriptors();
    v18 = objc_msgSend_messageWithDescriptor_(v13, v14, v15, v16, v17, off_2812ED2B8[12]);

    if ((*(v18 + 40) & 1) == 0)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCHLegendStyle loadFromUnarchiver:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 93, 0, "Missing superclass message");

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

    v88.receiver = self;
    v88.super_class = TSCHLegendStyle;
    [(TSCHLegendStyle *)&v88 loadFromArchive:v38 unarchiver:v13];
    if ((google::protobuf::internal::ExtensionSet::Has((v18 + 16)) & 1) == 0)
    {
      v43 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "[TSCHLegendStyle loadFromUnarchiver:]");
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v50, v51, v52, v53, v44, v49, 97, 0, "Protobuf missing expected extension");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
    }

    Message = google::protobuf::internal::ExtensionSet::GetMessage();
    v60 = objc_alloc_init(MEMORY[0x277D80AB8]);
    v64 = *(Message + 16);
    if (v64)
    {
      v66 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v59, v61, v62, v63, *(Message + 24), v13);
      if (v66)
      {
        objc_msgSend_setObject_forProperty_(v60, v65, v67, v68, v69, v66, 1579);
      }

      v64 = *(Message + 16);
    }

    if ((v64 & 8) != 0)
    {
      objc_msgSend_setIntValue_forProperty_(v60, v59, v61, v62, v63, *(Message + 48), 1580);
      v64 = *(Message + 16);
    }

    if ((v64 & 0x10) != 0)
    {
      LODWORD(v61) = *(Message + 52);
      objc_msgSend_setFloatValue_forProperty_(v60, v59, v61, v62, v63, 1581);
      v64 = *(Message + 16);
    }

    if ((v64 & 2) != 0)
    {
      v71 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v59, v61, v62, v63, *(Message + 32), v13);
      if (v71)
      {
        objc_msgSend_setObject_forProperty_(v60, v70, v72, v73, v74, v71, 1582);
      }

      v64 = *(Message + 16);
    }

    if ((v64 & 4) != 0)
    {
      v76 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v59, v61, v62, v63, *(Message + 40), v13);
      if (v76)
      {
        objc_msgSend_setObject_forProperty_(v60, v75, v77, v78, v79, v76, 1583);
      }
    }

    objc_storeStrong((&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]), v60);
    if (objc_msgSend_preUFFVersion(v13, v80, v81, v82, v83) <= 0x77411E587)
    {
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = sub_2762C6558;
      v87[3] = &unk_27A6B6888;
      v87[4] = self;
      objc_msgSend_addFinalizeHandler_(v13, v84, COERCE_DOUBLE(3221225472), v85, v86, v87);
    }
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, v6, v7, v8, sub_2762C723C, off_2812ED2B8[12]);

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

  v60.receiver = self;
  v60.super_class = TSCHLegendStyle;
  [(TSCHLegendStyle *)&v60 saveToArchive:v10 archiver:archiverCopy];
  sub_27640E0BC();
  v12 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v13 = *(&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]);
  if (objc_msgSend_containsProperty_(v13, v14, v15, v16, v17, 1579))
  {
    v23 = objc_msgSend_objectForProperty_(v13, v18, v19, v20, v21, 1579);
    *(v12 + 16) |= 1u;
    v27 = *(v12 + 24);
    if (!v27)
    {
      v28 = *(v12 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x277C97A80](v28);
      *(v12 + 24) = v27;
    }

    objc_msgSend_saveToArchive_archiver_(v23, v22, v24, v25, v26, v27, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v18, v19, v20, v21, 1580))
  {
    v33 = objc_msgSend_intValueForProperty_(v13, v29, v30, v31, v32, 1580);
    *(v12 + 16) |= 8u;
    *(v12 + 48) = v33;
  }

  if (objc_msgSend_containsProperty_(v13, v29, v30, v31, v32, 1581))
  {
    objc_msgSend_floatValueForProperty_(v13, v34, v35, v36, v37, 1581);
    *(v12 + 16) |= 0x10u;
    *(v12 + 52) = LODWORD(v35);
  }

  if (objc_msgSend_containsProperty_(v13, v34, v35, v36, v37, 1582))
  {
    v43 = objc_msgSend_objectForProperty_(v13, v38, v39, v40, v41, 1582);
    *(v12 + 16) |= 2u;
    v47 = *(v12 + 32);
    if (!v47)
    {
      v48 = *(v12 + 8);
      if (v48)
      {
        v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
      }

      v47 = MEMORY[0x277C97A90](v48);
      *(v12 + 32) = v47;
    }

    objc_msgSend_saveToArchive_archiver_(v43, v42, v44, v45, v46, v47, archiverCopy);
  }

  if (objc_msgSend_containsProperty_(v13, v38, v39, v40, v41, 1583))
  {
    v54 = objc_msgSend_objectForProperty_(v13, v49, v50, v51, v52, 1583);
    *(v12 + 16) |= 4u;
    v58 = *(v12 + 40);
    if (!v58)
    {
      v59 = *(v12 + 8);
      if (v59)
      {
        v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
      }

      v58 = MEMORY[0x277C97AA0](v59);
      *(v12 + 40) = v58;
    }

    objc_msgSend_saveToArchive_archiver_(v54, v53, v55, v56, v57, v58, archiverCopy);
  }
}

- (void)loadFromPreUFFArchiveWithUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, v6, v7, v8, off_2812EE5D0[16]);

  if (*(v9 + 24))
  {
    v10 = *(v9 + 24);
  }

  else
  {
    v10 = MEMORY[0x277D80BD0];
  }

  v40.receiver = self;
  v40.super_class = TSCHLegendStyle;
  [(TSCHLegendStyle *)&v40 loadFromArchive:v10 unarchiver:unarchiverCopy];
  v12 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v16 = *(v9 + 16);
  if ((v16 & 2) != 0)
  {
    v18 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v11, v13, v14, v15, *(v9 + 32), unarchiverCopy);
    if (v18)
    {
      objc_msgSend_setObject_forProperty_(v12, v17, v19, v20, v21, v18, 1579);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 4) != 0)
  {
    v23 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v13, v14, v15, *(v9 + 40), unarchiverCopy);
    if (v23)
    {
      objc_msgSend_setObject_forProperty_(v12, v22, v24, v25, v26, v23, 1583);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 8) != 0)
  {
    v28 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v11, v13, v14, v15, *(v9 + 48), unarchiverCopy);
    if (v28)
    {
      objc_msgSend_setObject_forProperty_(v12, v27, v29, v30, v31, v28, 1582);
    }

    v16 = *(v9 + 16);
  }

  if ((v16 & 0x10) != 0)
  {
    LODWORD(v13) = *(v9 + 56);
    objc_msgSend_setFloatValue_forProperty_(v12, v11, v13, v14, v15, 1581);
    v16 = *(v9 + 16);
  }

  if ((v16 & 0x20) != 0)
  {
    objc_msgSend_setIntValue_forProperty_(v12, v11, v13, v14, v15, *(v9 + 60), 1580);
  }

  objc_storeStrong((&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]), v12);
  if (objc_msgSend_preUFFVersion(unarchiverCopy, v32, v33, v34, v35) <= 0x77411E587)
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_2762C6B58;
    v39[3] = &unk_27A6B6888;
    v39[4] = self;
    objc_msgSend_addFinalizeHandler_(unarchiverCopy, v36, COERCE_DOUBLE(3221225472), v37, v38, v39);
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
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHLegendStyle mixingTypeWithObject:context:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 201, 0, "nil object after cast");

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
  v65[2] = sub_2762C6E98;
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
  v55[2] = sub_2762C7170;
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
  if (qword_280A478E0 != -1)
  {
    sub_2764A8034();
  }

  v3 = qword_280A478D8;

  return v3;
}

+ (id)imageFillProperties
{
  if (qword_280A478F0 != -1)
  {
    sub_2764A8048();
  }

  v3 = qword_280A478E8;

  return v3;
}

+ (int)defaultIntValueForProperty:(int)property
{
  v6 = *&property;
  if (qword_280A47900 != -1)
  {
    sub_2764A805C();
  }

  if (qword_280A478F8 && objc_msgSend_containsProperty_(qword_280A478F8, a2, v3, v4, v5, v6))
  {
    v12 = qword_280A478F8;

    return objc_msgSend_intValueForProperty_(v12, v8, v9, v10, v11, v6);
  }

  else if (v6 == 1580)
  {
    return 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = &OBJC_METACLASS___TSCHLegendStyle;
    return objc_msgSendSuper2(&v14, sel_defaultIntValueForProperty_, v6);
  }
}

+ (float)defaultFloatValueForProperty:(int)property
{
  v6 = *&property;
  if (qword_280A47910 != -1)
  {
    sub_2764A8070();
  }

  if (qword_280A47908 && objc_msgSend_containsProperty_(qword_280A47908, a2, v3, v4, v5, v6))
  {
    v11 = qword_280A47908;

    objc_msgSend_floatValueForProperty_(v11, v8, v3, v9, v10, v6);
  }

  else
  {
    LODWORD(v3) = 1.0;
    if (v6 != 1581)
    {
      v13.receiver = self;
      v13.super_class = &OBJC_METACLASS___TSCHLegendStyle;
      objc_msgSendSuper2(&v13, sel_defaultFloatValueForProperty_, v6, v3);
    }
  }

  return *&v3;
}

+ (id)defaultValueForProperty:(int)property
{
  v6 = *&property;
  if (qword_280A47920 != -1)
  {
    sub_2764A8084();
  }

  if (qword_280A47918 && objc_msgSend_containsProperty_(qword_280A47918, a2, v3, v4, v5, v6))
  {
    v8 = objc_msgSend_objectForProperty_(qword_280A47918, a2, v3, v4, v5, v6);
  }

  else
  {
    switch(v6)
    {
      case 0x62B:
        v8 = 0;
        break;
      case 0x62F:
        v8 = objc_msgSend_emptyStroke(MEMORY[0x277D803C0], a2, v3, v4, v5);
        break;
      case 0x62E:
        v8 = objc_msgSend_nullShadow(TSCHStyleUtilities, a2, v3, v4, v5);
        break;
      default:
        v10.receiver = self;
        v10.super_class = &OBJC_METACLASS___TSCHLegendStyle;
        v8 = objc_msgSendSuper2(&v10, sel_defaultValueForProperty_, v6);
        break;
    }
  }

  return v8;
}

+ (int)muxDefaultPropertyForSpecificProperty:(int)property
{
  if (qword_280A47930 != -1)
  {
    sub_2764A8098();
  }

  result = objc_msgSend_containsKey_(qword_280A47928, a2, v3, v4, v5, property);
  if (result)
  {
    return objc_msgSend_intForKey_(qword_280A47928, v8, v9, v10, v11, property);
  }

  return result;
}

@end