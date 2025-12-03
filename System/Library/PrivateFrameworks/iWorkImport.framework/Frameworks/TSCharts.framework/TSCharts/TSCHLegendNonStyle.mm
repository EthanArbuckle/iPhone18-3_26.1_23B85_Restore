@interface TSCHLegendNonStyle
+ (float)defaultFloatValueForProperty:(int)property;
+ (id)defaultStyleWithContext:(id)context;
+ (id)defaultValueForProperty:(int)property;
+ (id)imageFillProperties;
+ (id)properties;
+ (int)defaultIntValueForProperty:(int)property;
+ (int)muxDefaultPropertyForSpecificProperty:(int)property;
- (TSCHLegendNonStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)loadFromPreUFFArchiveWithUnarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSCHLegendNonStyle

+ (id)defaultStyleWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v5, v6, v7, v8, contextCopy, 0, 0, 0);

  return isVariation;
}

- (TSCHLegendNonStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation
{
  v7.receiver = self;
  v7.super_class = TSCHLegendNonStyle;
  return [(TSCHLegendNonStyle *)&v7 initWithContext:context name:name overridePropertyMap:map isVariation:variation];
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_messageType(unarchiverCopy, v5, v6, v7, v8) == 5017)
  {
    objc_msgSend_loadFromPreUFFArchiveWithUnarchiver_(self, v9, v10, v11, v12, unarchiverCopy);
  }

  else
  {
    v13 = unarchiverCopy;
    google::protobuf::internal::AssignDescriptors();
    v18 = objc_msgSend_messageWithDescriptor_(v13, v14, v15, v16, v17, off_2812ED2B8[14]);

    if ((*(v18 + 40) & 1) == 0)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCHLegendNonStyle loadFromUnarchiver:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendNonStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 73, 0, "Missing superclass message");

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

    v61.receiver = self;
    v61.super_class = TSCHLegendNonStyle;
    [(TSCHLegendNonStyle *)&v61 loadFromArchive:v38 unarchiver:v13];
    if ((google::protobuf::internal::ExtensionSet::Has((v18 + 16)) & 1) == 0)
    {
      v43 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "[TSCHLegendNonStyle loadFromUnarchiver:]");
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendNonStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v50, v51, v52, v53, v44, v49, 77, 0, "Protobuf missing expected extension");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
    }

    v58 = objc_alloc_init(MEMORY[0x277D80AB8]);
    v59 = *MEMORY[0x277D80AF0];
    v60 = *(&self->super.super.super.super.isa + v59);
    *(&self->super.super.super.super.isa + v59) = v58;
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, v6, v7, v8, sub_2762B9280, off_2812ED2B8[14]);

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

  v12.receiver = self;
  v12.super_class = TSCHLegendNonStyle;
  [(TSCHLegendNonStyle *)&v12 saveToArchive:v10 archiver:archiverCopy];
  sub_27640EC14();
  google::protobuf::internal::ExtensionSet::MutableMessage();
}

- (void)loadFromPreUFFArchiveWithUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, v6, v7, v8, off_2812EE5D0[18]);

  if (*(v9 + 24))
  {
    v10 = *(v9 + 24);
  }

  else
  {
    v10 = MEMORY[0x277D80BD0];
  }

  v14.receiver = self;
  v14.super_class = TSCHLegendNonStyle;
  [(TSCHLegendNonStyle *)&v14 loadFromArchive:v10 unarchiver:unarchiverCopy];
  v11 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v12 = *MEMORY[0x277D80AF0];
  v13 = *(&self->super.super.super.super.isa + v12);
  *(&self->super.super.super.super.isa + v12) = v11;
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
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHLegendNonStyle mixingTypeWithObject:context:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendNonStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 152, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v8, v10, v11, v12);
  v33 = objc_msgSend_propertyMap(self, v29, v30, v31, v32);

  if (v33)
  {
    v38 = objc_msgSend_propertyMap(self, v34, v35, v36, v37);
    v43 = objc_msgSend_allProperties(v38, v39, v40, v41, v42);
    objc_msgSend_addProperties_(v28, v44, v45, v46, v47, v43);
  }

  v48 = objc_msgSend_propertyMap(v9, v34, v35, v36, v37);

  if (v48)
  {
    v53 = objc_msgSend_propertyMap(v9, v49, v50, v51, v52);
    v58 = objc_msgSend_allProperties(v53, v54, v55, v56, v57);
    objc_msgSend_addProperties_(v28, v59, v60, v61, v62, v58);
  }

  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 4;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_2762B8EDC;
  v71[3] = &unk_27A6B76B0;
  v71[4] = self;
  v63 = v9;
  v72 = v63;
  v74 = &v75;
  v64 = contextCopy;
  v73 = v64;
  objc_msgSend_enumeratePropertiesUsingBlock_(v28, v65, v66, v67, v68, v71);
  v69 = v76[3];

  _Block_object_dispose(&v75, 8);
  return v69;
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
  v55[2] = sub_2762B91B4;
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
  if (qword_280A47880 != -1)
  {
    sub_2764A7FBC();
  }

  v3 = qword_280A47878;

  return v3;
}

+ (id)imageFillProperties
{
  if (qword_280A47890 != -1)
  {
    sub_2764A7FD0();
  }

  v3 = qword_280A47888;

  return v3;
}

+ (int)defaultIntValueForProperty:(int)property
{
  v6 = *&property;
  if (qword_280A478A0 != -1)
  {
    sub_2764A7FE4();
  }

  if (qword_280A47898 && objc_msgSend_containsProperty_(qword_280A47898, a2, v3, v4, v5, v6))
  {
    v12 = qword_280A47898;

    return objc_msgSend_intValueForProperty_(v12, v8, v9, v10, v11, v6);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = &OBJC_METACLASS___TSCHLegendNonStyle;
    return objc_msgSendSuper2(&v14, sel_defaultIntValueForProperty_, v6);
  }
}

+ (float)defaultFloatValueForProperty:(int)property
{
  v6 = *&property;
  if (qword_280A478B0 != -1)
  {
    sub_2764A7FF8();
  }

  if (qword_280A478A8 && objc_msgSend_containsProperty_(qword_280A478A8, a2, v3, v4, v5, v6))
  {
    v12 = qword_280A478A8;

    objc_msgSend_floatValueForProperty_(v12, v8, v9, v10, v11, v6);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = &OBJC_METACLASS___TSCHLegendNonStyle;
    objc_msgSendSuper2(&v14, sel_defaultFloatValueForProperty_, v6);
  }

  return result;
}

+ (id)defaultValueForProperty:(int)property
{
  v6 = *&property;
  if (qword_280A478C0 != -1)
  {
    sub_2764A800C();
  }

  if (qword_280A478B8 && objc_msgSend_containsProperty_(qword_280A478B8, a2, v3, v4, v5, v6))
  {
    v12 = objc_msgSend_objectForProperty_(qword_280A478B8, v8, v9, v10, v11, v6);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = &OBJC_METACLASS___TSCHLegendNonStyle;
    v12 = objc_msgSendSuper2(&v14, sel_defaultValueForProperty_, v6);
  }

  return v12;
}

+ (int)muxDefaultPropertyForSpecificProperty:(int)property
{
  if (qword_280A478D0 != -1)
  {
    sub_2764A8020();
  }

  result = objc_msgSend_containsKey_(qword_280A478C8, a2, v3, v4, v5, property);
  if (result)
  {
    return objc_msgSend_intForKey_(qword_280A478C8, v8, v9, v10, v11, property);
  }

  return result;
}

@end