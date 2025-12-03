@interface TSDMediaStyle
+ (BOOL)validateFloatValue:(float *)value forProperty:(int)property;
+ (float)defaultFloatValueForProperty:(int)property;
+ (id)defaultValueForProperty:(int)property;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (void)initialize;
+ (void)loadMediaStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (void)saveMediaStylePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver;
+ (void)validatePastedPropertyMap:(id)map;
- (NSString)presetKind;
- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSDMediaStyle

+ (void)initialize
{
  if (!qword_280A4C208)
  {
    v3 = objc_msgSend_emptyStroke(TSDStroke, a2, v2);
    v4 = qword_280A4C208;
    qword_280A4C208 = v3;
  }
}

+ (void)validatePastedPropertyMap:(id)map
{
  mapCopy = map;
  objc_msgSend_removeValueForProperty_(mapCopy, v3, 516);
  objc_msgSend_removeValueForProperty_(mapCopy, v4, 522);
  objc_msgSend_removeValueForProperty_(mapCopy, v5, 523);
  objc_msgSend_removeValueForProperty_(mapCopy, v6, 146);
  objc_msgSend_removeValueForProperty_(mapCopy, v7, 148);
  objc_msgSend_removeValueForProperty_(mapCopy, v8, 149);
  objc_msgSend_removeValueForProperty_(mapCopy, v9, 189);
  objc_msgSend_removeValueForProperty_(mapCopy, v10, 145);
  objc_msgSend_removeValueForProperty_(mapCopy, v11, 153);
  objc_msgSend_removeValueForProperty_(mapCopy, v12, 152);
  objc_msgSend_removeValueForProperty_(mapCopy, v13, 188);
}

+ (id)properties
{
  if (qword_280A4C218 != -1)
  {
    sub_2768085B4();
  }

  v3 = qword_280A4C210;

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
  if (property == 520 || property == 519)
  {
    v3 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, *&property);
  }

  else if (property == 517)
  {
    v3 = qword_280A4C208;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)propertiesAllowingNSNull
{
  if (qword_280A4C228 != -1)
  {
    sub_2768085C8();
  }

  v3 = qword_280A4C220;

  return v3;
}

+ (BOOL)validateFloatValue:(float *)value forProperty:(int)property
{
  v24.receiver = self;
  v24.super_class = &OBJC_METACLASS___TSDMediaStyle;
  v6 = objc_msgSendSuper2(&v24, sel_validateFloatValue_forProperty_);
  v9 = v6;
  if (property == 518 && v6)
  {
    *&v8 = *value;
    if (*value < 0.0)
    {
      v10 = 0.0;
      v11 = 167;
LABEL_7:
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "+[TSDMediaStyle validateFloatValue:forProperty:]", v8);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMediaStyle.m");
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
      v11 = 170;
      goto LABEL_7;
    }
  }

  return v9;
}

- (NSString)presetKind
{
  v3 = *MEMORY[0x277D80B38];
  selfCopy = self;
  v7 = objc_msgSend_styleIdentifier(selfCopy, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_firstIdentifiedAncestor(selfCopy, v8, v9);

    selfCopy = v10;
  }

  v11 = objc_msgSend_styleIdentifier(selfCopy, v8, v9);
  v12 = String();

  if ((objc_msgSend_isEqualToString_(v12, v13, @"image") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(v12, v14, @"movie"))
    {
      v16 = MEMORY[0x277D80B68];
LABEL_8:
      v18 = *v16;

      v3 = v18;
      goto LABEL_10;
    }

    if (objc_msgSend_isEqualToString_(v12, v15, @"equation"))
    {
      v16 = MEMORY[0x277D80BC0];
      goto LABEL_8;
    }

    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSDMediaStyle presetKind]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMediaStyle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 198, 0, "Could not compute presetKind because of a bad packageString: %@", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

LABEL_10:

  return v3;
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
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDMediaStyle mixingTypeWithObject:context:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMediaStyle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 208, 0, "nil object after cast");

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
  v37[2] = sub_27669A194;
  v37[3] = &unk_27A6CCA50;
  v37[4] = self;
  v37[5] = v10;
  v39 = &v40;
  v33 = contextCopy;
  v38 = v33;
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
  v33[2] = sub_27669A3D0;
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
  v20.super_class = TSDMediaStyle;
  v17 = *&transform->c;
  v21 = *&transform->a;
  v22 = v17;
  v23 = *&transform->tx;
  v14 = [(TSDMediaStyle *)&v20 boxedValueForProperty:v6 oldBoxedValue:valueCopy transformedByTransform:&v21];
LABEL_11:
  v18 = v14;

  return v18;
}

+ (void)loadMediaStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  mapCopy = map;
  unarchiverCopy = unarchiver;
  v11 = *(archive + 4);
  if (v11)
  {
    v12 = objc_msgSend_instanceWithArchive_unarchiver_(TSDStroke, v9, *(archive + 3), unarchiverCopy);
    v34 = v12;
    v13 = objc_opt_class();
    v15 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v14, &v34, v13, 517);
    v16 = v34;

    if (v15)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v17, v16, 517);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 8) != 0)
  {
    v33 = *(archive + 12);
    if (objc_msgSend_validateFloatValue_forProperty_(self, v9, &v33, 518))
    {
      LODWORD(v18) = v33;
      objc_msgSend_setFloatValue_forProperty_(mapCopy, v9, 518, v18);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 4) != 0)
  {
    v19 = objc_msgSend_instanceWithArchive_unarchiver_(TSDReflection, v9, *(archive + 5), unarchiverCopy);
    v32 = v19;
    v20 = objc_opt_class();
    v22 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v21, &v32, v20, 519);
    v23 = v32;

    if (v22)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v24, v23, 519);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 2) != 0)
  {
    v25 = objc_msgSend_instanceWithArchive_unarchiver_(TSDShadow, v9, *(archive + 4), unarchiverCopy);
    v31 = v25;
    v26 = objc_opt_class();
    v28 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v27, &v31, v26, 520);
    v29 = v31;

    if (v28)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v30, v29, 520);
    }
  }
}

+ (void)saveMediaStylePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver
{
  mapCopy = map;
  archiverCopy = archiver;
  if (objc_msgSend_containsProperty_(mapCopy, v10, 517))
  {
    v12 = objc_msgSend_objectForProperty_(mapCopy, v11, 517);
    v45 = v12;
    v13 = objc_opt_class();
    v15 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v14, &v45, v13, 517);
    v16 = v45;

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

        v18 = google::protobuf::Arena::CreateMaybeMessage<TSD::StrokeArchive>(v19);
        *(archive + 3) = v18;
      }

      objc_msgSend_saveToArchive_archiver_(v16, v17, v18, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v11, 518))
  {
    objc_msgSend_floatValueForProperty_(mapCopy, v20, 518);
    v44 = v21;
    if (objc_msgSend_validateFloatValue_forProperty_(self, v22, &v44, 518))
    {
      v23 = v44;
      *(archive + 4) |= 8u;
      *(archive + 12) = v23;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v20, 519))
  {
    v25 = objc_msgSend_objectForProperty_(mapCopy, v24, 519);
    v43 = v25;
    v26 = objc_opt_class();
    v28 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v27, &v43, v26, 519);
    v29 = v43;

    if (v28)
    {
      *(archive + 4) |= 4u;
      v31 = *(archive + 5);
      if (!v31)
      {
        v32 = *(archive + 1);
        if (v32)
        {
          v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        v31 = google::protobuf::Arena::CreateMaybeMessage<TSD::ReflectionArchive>(v32);
        *(archive + 5) = v31;
      }

      objc_msgSend_saveToArchive_archiver_(v29, v30, v31, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v24, 520))
  {
    v34 = objc_msgSend_objectForProperty_(mapCopy, v33, 520);
    v42 = v34;
    v35 = objc_opt_class();
    v37 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v36, &v42, v35, 520);
    v38 = v42;

    if (v37)
    {
      *(archive + 4) |= 2u;
      v40 = *(archive + 4);
      if (!v40)
      {
        v41 = *(archive + 1);
        if (v41)
        {
          v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
        }

        v40 = google::protobuf::Arena::CreateMaybeMessage<TSD::ShadowArchive>(v41);
        *(archive + 4) = v40;
      }

      objc_msgSend_saveToArchive_archiver_(v38, v39, v40, archiverCopy, v42);
    }
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812F5188[64]);

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
  v17.super_class = TSDMediaStyle;
  [(TSDMediaStyle *)&v17 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(archive + 10);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D80AB8]);
    v11 = objc_msgSend_initWithCapacity_(v9, v10, v8);
    v12 = *(archive + 4);
    v13 = objc_opt_class();
    if (v12)
    {
      objc_msgSend_loadMediaStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(v13, v14, v11, v12, unarchiverCopy);
    }

    else
    {
      objc_msgSend_loadMediaStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(v13, v14, v11, &TSD::_MediaStylePropertiesArchive_default_instance_, unarchiverCopy);
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
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2766DB0D0, off_2812F5188[64]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
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

    v7 = MEMORY[0x277C9BB30](v8);
    *(archive + 3) = v7;
  }

  v25.receiver = self;
  v25.super_class = TSDMediaStyle;
  [(TSDMediaStyle *)&v25 saveToArchive:v7 archiver:archiverCopy];
  v11 = objc_msgSend_overrideCount(self, v9, v10);
  if (v11)
  {
    if (HIDWORD(v11))
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSDMediaStyle(PersistenceAdditions) saveToArchive:archiver:]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMediaStylePersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 89, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
      LODWORD(v11) = -1;
    }

    v13 = *(archive + 4);
    *(archive + 10) = v11;
    *(archive + 4) = v13 | 6;
    v14 = *(archive + 4);
    if (!v14)
    {
      v15 = *(archive + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = google::protobuf::Arena::CreateMaybeMessage<TSD::MediaStylePropertiesArchive>(v15);
      *(archive + 4) = v14;
    }

    v16 = objc_opt_class();
    objc_msgSend_saveMediaStylePropertyMap_toArchive_archiver_(v16, v17, *(&self->super.super.super.isa + *MEMORY[0x277D80AF0]), v14, archiverCopy);
  }
}

@end