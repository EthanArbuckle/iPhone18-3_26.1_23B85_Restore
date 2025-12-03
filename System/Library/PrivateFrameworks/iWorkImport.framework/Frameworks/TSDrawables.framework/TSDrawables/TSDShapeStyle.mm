@interface TSDShapeStyle
+ (BOOL)validateFloatValue:(float *)value forProperty:(int)property;
+ (float)defaultFloatValueForProperty:(int)property;
+ (id)defaultValueForProperty:(int)property;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (void)initialize;
+ (void)loadShapeStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (void)saveShapeStylePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver;
- (BOOL)hasLineEnds;
- (BOOL)wantsHighContrastBackgroundColor;
- (BOOL)wantsHighContrastBackgroundColorWithColor:(id)color;
- (BOOL)wantsHighContrastFillColorWithColor:(id)color;
- (BOOL)wantsHighContrastStrokeColorWithColor:(id)color;
- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint;
- (NSString)presetKind;
- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSDShapeStyle

+ (void)loadShapeStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  mapCopy = map;
  unarchiverCopy = unarchiver;
  v11 = *(archive + 4);
  if (v11)
  {
    v12 = objc_msgSend_instanceWithArchive_unarchiver_(TSDFill, v9, *(archive + 3), unarchiverCopy);
    v55 = v12;
    v13 = objc_opt_class();
    v15 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v14, &v55, v13, 516);
    v16 = v55;

    if (v15)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v17, v16, 516);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 2) != 0)
  {
    v18 = objc_msgSend_instanceWithArchive_unarchiver_(TSDStroke, v9, *(archive + 4), unarchiverCopy);
    v54 = v18;
    v19 = objc_opt_class();
    v21 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v20, &v54, v19, 517);
    v22 = v54;

    if (v21)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v23, v22, 517);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 0x40) != 0)
  {
    v53 = *(archive + 18);
    if (objc_msgSend_validateFloatValue_forProperty_(self, v9, &v53, 518))
    {
      LODWORD(v24) = v53;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 518, v24);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 8) != 0)
  {
    v25 = objc_msgSend_instanceWithArchive_unarchiver_(TSDReflection, v9, *(archive + 6), unarchiverCopy);
    v52 = v25;
    v26 = objc_opt_class();
    v28 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v27, &v52, v26, 519);
    v29 = v52;

    if (v28)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v30, v29, 519);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 4) != 0)
  {
    v31 = objc_msgSend_instanceWithArchive_unarchiver_(TSDShadow, v9, *(archive + 5), unarchiverCopy);
    v51 = v31;
    v32 = objc_opt_class();
    v34 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v33, &v51, v32, 520);
    v35 = v51;

    if (v34)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v36, v35, 520);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 0x10) != 0)
  {
    v37 = objc_msgSend_instanceWithArchive_unarchiver_(TSDLineEnd, v9, *(archive + 7), unarchiverCopy);
    v50 = v37;
    v38 = objc_opt_class();
    v40 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v39, &v50, v38, 522);
    v41 = v50;

    if (v40)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v42, v41, 522);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 0x20) != 0)
  {
    v43 = objc_msgSend_instanceWithArchive_unarchiver_(TSDLineEnd, v9, *(archive + 8), unarchiverCopy);
    v49 = v43;
    v44 = objc_opt_class();
    v46 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v45, &v49, v44, 523);
    v47 = v49;

    if (v46)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v48, v47, 523);
    }
  }
}

+ (void)saveShapeStylePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver
{
  mapCopy = map;
  archiverCopy = archiver;
  if (objc_msgSend_containsProperty_(mapCopy, v10, 516))
  {
    v12 = objc_msgSend_objectForProperty_(mapCopy, v11, 516);
    v75 = v12;
    v13 = objc_opt_class();
    v15 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v14, &v75, v13, 516);
    v16 = v75;

    if (v15)
    {
      *(archive + 4) |= 1u;
      v18 = *(archive + 3);
      if (!v18)
      {
        v19 = *(archive + 1);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = google::protobuf::Arena::CreateMaybeMessage<TSD::FillArchive>(v19);
        *(archive + 3) = v18;
      }

      objc_msgSend_saveToArchive_archiver_(v16, v17, v18, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v11, 517))
  {
    v21 = objc_msgSend_objectForProperty_(mapCopy, v20, 517);
    v74 = v21;
    v22 = objc_opt_class();
    v24 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v23, &v74, v22, 517);
    v25 = v74;

    if (v24)
    {
      *(archive + 4) |= 2u;
      v27 = *(archive + 4);
      if (!v27)
      {
        v28 = *(archive + 1);
        if (v28)
        {
          v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
        }

        v27 = google::protobuf::Arena::CreateMaybeMessage<TSD::StrokeArchive>(v28);
        *(archive + 4) = v27;
      }

      objc_msgSend_saveToArchive_archiver_(v25, v26, v27, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v20, 518))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v29, 518);
    v73 = v30;
    if (objc_msgSend_validateFloatValue_forProperty_(self, v31, &v73, 518))
    {
      v32 = v73;
      *(archive + 4) |= 0x40u;
      *(archive + 18) = v32;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v29, 519))
  {
    v34 = objc_msgSend_objectForProperty_(mapCopy, v33, 519);
    v72 = v34;
    v35 = objc_opt_class();
    v37 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v36, &v72, v35, 519);
    v38 = v72;

    if (v37)
    {
      *(archive + 4) |= 8u;
      v40 = *(archive + 6);
      if (!v40)
      {
        v41 = *(archive + 1);
        if (v41)
        {
          v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
        }

        v40 = google::protobuf::Arena::CreateMaybeMessage<TSD::ReflectionArchive>(v41);
        *(archive + 6) = v40;
      }

      objc_msgSend_saveToArchive_archiver_(v38, v39, v40, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v33, 520))
  {
    v43 = objc_msgSend_objectForProperty_(mapCopy, v42, 520);
    v71 = v43;
    v44 = objc_opt_class();
    v46 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v45, &v71, v44, 520);
    v47 = v71;

    if (v46)
    {
      *(archive + 4) |= 4u;
      v49 = *(archive + 5);
      if (!v49)
      {
        v50 = *(archive + 1);
        if (v50)
        {
          v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
        }

        v49 = google::protobuf::Arena::CreateMaybeMessage<TSD::ShadowArchive>(v50);
        *(archive + 5) = v49;
      }

      objc_msgSend_saveToArchive_archiver_(v47, v48, v49, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v42, 522))
  {
    v52 = objc_msgSend_objectForProperty_(mapCopy, v51, 522);
    v70 = v52;
    v53 = objc_opt_class();
    v55 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v54, &v70, v53, 522);
    v56 = v70;

    if (v55)
    {
      *(archive + 4) |= 0x10u;
      v58 = *(archive + 7);
      if (!v58)
      {
        v59 = *(archive + 1);
        if (v59)
        {
          v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
        }

        v58 = google::protobuf::Arena::CreateMaybeMessage<TSD::LineEndArchive>(v59);
        *(archive + 7) = v58;
      }

      objc_msgSend_saveToArchive_archiver_(v56, v57, v58, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v51, 523))
  {
    v61 = objc_msgSend_objectForProperty_(mapCopy, v60, 523);
    v69 = v61;
    v62 = objc_opt_class();
    v64 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v63, &v69, v62, 523);
    v65 = v69;

    if (v64)
    {
      *(archive + 4) |= 0x20u;
      v67 = *(archive + 8);
      if (!v67)
      {
        v68 = *(archive + 1);
        if (v68)
        {
          v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
        }

        v67 = google::protobuf::Arena::CreateMaybeMessage<TSD::LineEndArchive>(v68);
        *(archive + 8) = v67;
      }

      objc_msgSend_saveToArchive_archiver_(v65, v66, v67, archiverCopy);
    }
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812F5188[60]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
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
  v17.super_class = TSDShapeStyle;
  [(TSDShapeStyle *)&v17 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(archive + 10);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D80AB8]);
    v11 = objc_msgSend_initWithCapacity_(v9, v10, v8);
    v12 = *(archive + 4);
    v13 = objc_opt_class();
    if (v12)
    {
      objc_msgSend_loadShapeStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(v13, v14, v11, v12, unarchiverCopy);
    }

    else
    {
      objc_msgSend_loadShapeStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(v13, v14, v11, &TSD::_ShapeStylePropertiesArchive_default_instance_, unarchiverCopy);
    }

    v15 = *MEMORY[0x277D80AF0];
    v16 = *(&self->super.super.super.isa + v15);
    *(&self->super.super.super.isa + v15) = v11;
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_27668F8F8, off_2812F5188[60]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_27668F708;
  v14[3] = &unk_27A6CC520;
  archiveCopy = archive;
  v7 = archiverCopy;
  v15 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, archive, v14);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_27668F790;
  v11[3] = &unk_27A6CC520;
  v11[4] = self;
  archiveCopy2 = archive;
  v9 = v7;
  v12 = v9;
  objc_msgSend_pushScopeForField_message_usingBlock_(v9, v10, 11, archive, v11);
}

+ (void)initialize
{
  if (qword_280A4C1C8 != -1)
  {
    sub_276808550();
  }

  if (qword_280A4C1D0 != -1)
  {
    sub_276808564();
  }
}

+ (id)properties
{
  if (qword_280A4C1E0 != -1)
  {
    sub_276808578();
  }

  v3 = qword_280A4C1D8;

  return v3;
}

+ (float)defaultFloatValueForProperty:(int)property
{
  result = INFINITY;
  if (property == 518)
  {
    return 1.0;
  }

  return result;
}

+ (id)defaultValueForProperty:(int)property
{
  v3 = 0;
  if (property <= 519)
  {
    if (property == 516)
    {
      v3 = objc_msgSend_clearColor(TSDColorFill, a2, *&property);
      goto LABEL_11;
    }

    if (property == 517)
    {
      v4 = qword_280A4C1B8;
      goto LABEL_10;
    }

    if (property != 519)
    {
      goto LABEL_11;
    }

LABEL_9:
    v4 = qword_280A4C1C0;
LABEL_10:
    v3 = v4;
    goto LABEL_11;
  }

  if (property == 520 || property == 522 || property == 523)
  {
    goto LABEL_9;
  }

LABEL_11:

  return v3;
}

- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint
{
  dataCopy = data;
  v8 = objc_msgSend_documentRoot(self, v6, v7);
  v11 = objc_msgSend_theme(v8, v9, v10);
  v14 = objc_msgSend_presetKind(self, v12, v13);
  v16 = objc_msgSend_presetsOfKind_(v11, v15, v14);
  v18 = objc_msgSend_containsObject_(v16, v17, self);

  if (v18)
  {
    objc_opt_class();
    v20 = objc_msgSend_valueForProperty_(self, v19, 516);
    v21 = TSUCheckedDynamicCast();

    v24 = objc_msgSend_imageData(v21, v22, v23);

    if (v24 != dataCopy)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSDShapeStyle targetSizeForImageData:associatedHint:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeStyle.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 137, 0, "Expected that the imageData would be from the style's fill");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
    }

    if (v21)
    {
      objc_msgSend_renderedImageSizeForObjectSize_(v21, v25, v26, 1.79769313e308, 1.79769313e308);
      v35 = v34;
      v37 = v36;
    }

    else
    {
      v37 = 0x7FEFFFFFFFFFFFFFLL;
      v35 = 0x7FEFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v35 = *MEMORY[0x277CBF3A8];
    v37 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v38 = *&v35;
  v39 = *&v37;
  result.height = v39;
  result.width = v38;
  return result;
}

+ (id)propertiesAllowingNSNull
{
  if (qword_280A4C1F0 != -1)
  {
    sub_27680858C();
  }

  v3 = qword_280A4C1E8;

  return v3;
}

+ (BOOL)validateFloatValue:(float *)value forProperty:(int)property
{
  v24.receiver = self;
  v24.super_class = &OBJC_METACLASS___TSDShapeStyle;
  v6 = objc_msgSendSuper2(&v24, sel_validateFloatValue_forProperty_);
  v9 = v6;
  if (property == 518 && v6)
  {
    *&v8 = *value;
    if (*value < 0.0)
    {
      v10 = 0.0;
      v11 = 171;
LABEL_7:
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "+[TSDShapeStyle validateFloatValue:forProperty:]", v8);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeStyle.m");
      v16 = *value;
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = String();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v13, v15, v11, 0, "Unexpected float value %g for %@ property %d %{public}@ out of range [0.0, 1.0].", *&v16, v18, 518, v19);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
      *value = v10;
      return v9;
    }

    v10 = 1.0;
    if (*&v8 > 1.0)
    {
      v11 = 174;
      goto LABEL_7;
    }
  }

  return v9;
}

- (NSString)presetKind
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDShapeStyle presetKind]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeStyle.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 187, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSDShapeStyle presetKind]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  objc_opt_class();
  v10 = TSUDynamicCast();
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDShapeStyle mixingTypeWithObject:context:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeStyle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 196, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v8, v9);
  v21 = objc_msgSend_propertyMap(self, v19, v20);
  v24 = objc_msgSend_allProperties(v21, v22, v23);
  objc_msgSend_addProperties_(v18, v25, v24);

  v28 = objc_msgSend_propertyMap(v10, v26, v27);
  v31 = objc_msgSend_allProperties(v28, v29, v30);
  objc_msgSend_addProperties_(v18, v32, v31);

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 4;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_276690558;
  v37[3] = &unk_27A6CC9D8;
  v37[4] = self;
  v37[5] = v10;
  v33 = contextCopy;
  v38 = v33;
  v39 = &v40;
  objc_msgSend_enumeratePropertiesUsingBlock_(v18, v34, v37);
  v35 = v41[3];

  _Block_object_dispose(&v40, 8);
  return v35;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();

  v10 = objc_msgSend_context(self, v8, v9);
  v12 = objc_msgSend_copyWithContext_(self, v11, v10);

  v15 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v13, v14);
  v18 = objc_msgSend_propertyMap(self, v16, v17);
  v21 = objc_msgSend_allProperties(v18, v19, v20);
  objc_msgSend_addProperties_(v15, v22, v21);

  v25 = objc_msgSend_propertyMap(v7, v23, v24);
  v28 = objc_msgSend_allProperties(v25, v26, v27);
  objc_msgSend_addProperties_(v15, v29, v28);

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2766907A4;
  v33[3] = &unk_27A6CCA00;
  v33[4] = self;
  v33[5] = v7;
  *&v33[7] = fraction;
  v33[6] = v12;
  objc_msgSend_enumeratePropertiesUsingBlock_(v15, v30, v33);
  v31 = v12;

  return v12;
}

- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform
{
  v6 = *&property;
  valueCopy = value;
  v11 = valueCopy;
  if (v6 == 517)
  {
    if (valueCopy && objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10) != valueCopy)
    {
      v16 = *&transform->c;
      v21 = *&transform->a;
      v22 = v16;
      v23 = *&transform->tx;
      v14 = objc_msgSend_strokeByTransformingByTransform_(v11, v15, &v21);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v6 == 520)
  {
    if (valueCopy && objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10) != valueCopy)
    {
      v13 = *&transform->c;
      v21 = *&transform->a;
      v22 = v13;
      v23 = *&transform->tx;
      v14 = objc_msgSend_shadowByTransformingByTransform_(v11, v12, &v21);
      goto LABEL_11;
    }

LABEL_9:
    v14 = v11;
    goto LABEL_11;
  }

  v20.receiver = self;
  v20.super_class = TSDShapeStyle;
  v17 = *&transform->c;
  v21 = *&transform->a;
  v22 = v17;
  v23 = *&transform->tx;
  v14 = [(TSDShapeStyle *)&v20 boxedValueForProperty:v6 oldBoxedValue:valueCopy transformedByTransform:&v21];
LABEL_11:
  v18 = v14;

  return v18;
}

- (BOOL)wantsHighContrastBackgroundColor
{
  v3 = objc_msgSend_valueForProperty_(self, a2, 516);
  v5 = objc_msgSend_valueForProperty_(self, v4, 517);
  objc_msgSend_CGFloatValueForProperty_(self, v6, 518);
  v8 = v7;
  if (v3 == objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10) && (objc_msgSend_color(v5, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_whiteColor(MEMORY[0x277D81180], v14, v15), v16 = objc_claimAutoreleasedReturnValue(), isAlmostEqualToColor = objc_msgSend_isAlmostEqualToColor_(v13, v17, v16), v16, v13, (isAlmostEqualToColor & 1) != 0))
  {
    v19 = 1;
  }

  else
  {
    v20 = objc_msgSend_null(MEMORY[0x277CBEB68], v11, v12);
    v19 = v8 != 1.0 && v3 != v20;
  }

  return v19;
}

- (BOOL)wantsHighContrastBackgroundColorWithColor:(id)color
{
  colorCopy = color;
  v6 = objc_msgSend_valueForProperty_(self, v5, 516);
  v8 = objc_msgSend_valueForProperty_(self, v7, 517);
  if (v6 != objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10) || v8 == objc_msgSend_null(MEMORY[0x277CBEB68], v11, v12))
  {
    if (v6 == objc_msgSend_null(MEMORY[0x277CBEB68], v11, v12))
    {
      v15 = 0;
      goto LABEL_8;
    }

    v14 = objc_msgSend_wantsHighContrastFillColorWithColor_(self, v13, colorCopy);
  }

  else
  {
    v14 = objc_msgSend_wantsHighContrastStrokeColorWithColor_(self, v11, colorCopy);
  }

  v15 = v14;
LABEL_8:

  return v15;
}

- (BOOL)wantsHighContrastFillColorWithColor:(id)color
{
  colorCopy = color;
  v6 = objc_msgSend_valueForProperty_(self, v5, 516);
  objc_msgSend_redComponent(colorCopy, v7, v8);
  v10 = v9;
  objc_msgSend_greenComponent(colorCopy, v11, v12);
  v14 = v13;
  objc_msgSend_blueComponent(colorCopy, v15, v16);
  v18 = v17;
  objc_msgSend_alphaComponent(colorCopy, v19, v20);

  v23 = v10;
  v24 = v14;
  if (v23 <= 0.04045)
  {
    v25 = v23 / 12.92;
  }

  else
  {
    v25 = powf((v23 + 0.055) / 1.055, 2.4);
  }

  v26 = v18;
  if (v24 <= 0.04045)
  {
    v27 = v24 / 12.92;
  }

  else
  {
    v27 = powf((v24 + 0.055) / 1.055, 2.4);
  }

  if (v26 <= 0.04045)
  {
    v28 = v26 / 12.92;
  }

  else
  {
    v28 = powf((v26 + 0.055) / 1.055, 2.4);
  }

  v29 = ((((v27 * 100.0) * 0.7152) + ((v25 * 100.0) * 0.2126)) + ((v28 * 100.0) * 0.0722)) / 100.0;
  if (v29 <= 0.008856)
  {
    v30 = (v29 * 7.787) + 0.13793;
  }

  else
  {
    v30 = powf(v29, 0.33333);
  }

  if (v6 == objc_msgSend_null(MEMORY[0x277CBEB68], v21, v22))
  {
    v60 = 0;
  }

  else
  {
    v69 = v30;
    v33 = objc_msgSend_referenceColor(v6, v31, v32);
    objc_msgSend_redComponent(v33, v34, v35);
    v37 = v36;
    v40 = objc_msgSend_referenceColor(v6, v38, v39);
    objc_msgSend_greenComponent(v40, v41, v42);
    v44 = v43;
    v47 = objc_msgSend_referenceColor(v6, v45, v46);
    objc_msgSend_blueComponent(v47, v48, v49);
    v51 = v50;
    v54 = objc_msgSend_referenceColor(v6, v52, v53);
    objc_msgSend_alphaComponent(v54, v55, v56);
    v57 = v37;
    v58 = v44;

    if (v57 <= 0.04045)
    {
      v59 = v57 / 12.92;
    }

    else
    {
      v59 = powf((v57 + 0.055) / 1.055, 2.4);
    }

    v61 = v51;
    if (v58 <= 0.04045)
    {
      v62 = v58 / 12.92;
    }

    else
    {
      v62 = powf((v58 + 0.055) / 1.055, 2.4);
    }

    v63 = -16.0;
    if (v61 <= 0.04045)
    {
      v64 = v61 / 12.92;
    }

    else
    {
      v64 = powf((v61 + 0.055) / 1.055, 2.4);
      v63 = -16.0;
    }

    v65 = v63 + (v69 * 116.0);
    v66 = ((((v62 * 100.0) * 0.7152) + ((v59 * 100.0) * 0.2126)) + ((v64 * 100.0) * 0.0722)) / 100.0;
    if (v66 <= 0.008856)
    {
      v67 = (v66 * 7.787) + 0.13793;
    }

    else
    {
      v67 = powf(v66, 0.33333);
    }

    v60 = vabds_f32((v67 * 116.0) + -16.0, v65) < 1.0;
  }

  return v60;
}

- (BOOL)wantsHighContrastStrokeColorWithColor:(id)color
{
  colorCopy = color;
  v6 = objc_msgSend_valueForProperty_(self, v5, 517);
  objc_msgSend_redComponent(colorCopy, v7, v8);
  v10 = v9;
  objc_msgSend_greenComponent(colorCopy, v11, v12);
  v14 = v13;
  objc_msgSend_blueComponent(colorCopy, v15, v16);
  v18 = v17;
  objc_msgSend_alphaComponent(colorCopy, v19, v20);

  v23 = v10;
  v24 = v14;
  if (v23 <= 0.04045)
  {
    v25 = v23 / 12.92;
  }

  else
  {
    v25 = powf((v23 + 0.055) / 1.055, 2.4);
  }

  v26 = v18;
  if (v24 <= 0.04045)
  {
    v27 = v24 / 12.92;
  }

  else
  {
    v27 = powf((v24 + 0.055) / 1.055, 2.4);
  }

  if (v26 <= 0.04045)
  {
    v28 = v26 / 12.92;
  }

  else
  {
    v28 = powf((v26 + 0.055) / 1.055, 2.4);
  }

  v29 = ((((v27 * 100.0) * 0.7152) + ((v25 * 100.0) * 0.2126)) + ((v28 * 100.0) * 0.0722)) / 100.0;
  if (v29 <= 0.008856)
  {
    v30 = (v29 * 7.787) + 0.13793;
  }

  else
  {
    v30 = powf(v29, 0.33333);
  }

  if (v6 == objc_msgSend_null(MEMORY[0x277CBEB68], v21, v22))
  {
    v60 = 0;
  }

  else
  {
    v69 = v30;
    v33 = objc_msgSend_color(v6, v31, v32);
    objc_msgSend_redComponent(v33, v34, v35);
    v37 = v36;
    v40 = objc_msgSend_color(v6, v38, v39);
    objc_msgSend_greenComponent(v40, v41, v42);
    v44 = v43;
    v47 = objc_msgSend_color(v6, v45, v46);
    objc_msgSend_blueComponent(v47, v48, v49);
    v51 = v50;
    v54 = objc_msgSend_color(v6, v52, v53);
    objc_msgSend_alphaComponent(v54, v55, v56);
    v57 = v37;
    v58 = v44;

    if (v57 <= 0.04045)
    {
      v59 = v57 / 12.92;
    }

    else
    {
      v59 = powf((v57 + 0.055) / 1.055, 2.4);
    }

    v61 = v51;
    if (v58 <= 0.04045)
    {
      v62 = v58 / 12.92;
    }

    else
    {
      v62 = powf((v58 + 0.055) / 1.055, 2.4);
    }

    v63 = -16.0;
    if (v61 <= 0.04045)
    {
      v64 = v61 / 12.92;
    }

    else
    {
      v64 = powf((v61 + 0.055) / 1.055, 2.4);
      v63 = -16.0;
    }

    v65 = v63 + (v69 * 116.0);
    v66 = ((((v62 * 100.0) * 0.7152) + ((v59 * 100.0) * 0.2126)) + ((v64 * 100.0) * 0.0722)) / 100.0;
    if (v66 <= 0.008856)
    {
      v67 = (v66 * 7.787) + 0.13793;
    }

    else
    {
      v67 = powf(v66, 0.33333);
    }

    v60 = vabds_f32((v67 * 116.0) + -16.0, v65) < 1.0;
  }

  return v60;
}

- (BOOL)hasLineEnds
{
  v3 = objc_msgSend_boxedValueForProperty_(self, a2, 522);
  v5 = objc_msgSend_boxedValueForProperty_(self, v4, 523);
  v8 = v5;
  if (v3)
  {
    v9 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);
    if (objc_msgSend_isEqual_(v3, v10, v9))
    {
      isEqual = 1;
    }

    else
    {
      v15 = objc_msgSend_none(TSDLineEnd, v11, v12);
      isEqual = objc_msgSend_isEqual_(v3, v16, v15);
    }

    if (v8)
    {
      goto LABEL_8;
    }

LABEL_5:
    v14 = 1;
    goto LABEL_12;
  }

  isEqual = 1;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_8:
  v17 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);
  if (objc_msgSend_isEqual_(v8, v18, v17))
  {
    v14 = 1;
  }

  else
  {
    v21 = objc_msgSend_none(TSDLineEnd, v19, v20);
    v14 = objc_msgSend_isEqual_(v8, v22, v21);
  }

LABEL_12:
  return isEqual & v14 ^ 1;
}

@end