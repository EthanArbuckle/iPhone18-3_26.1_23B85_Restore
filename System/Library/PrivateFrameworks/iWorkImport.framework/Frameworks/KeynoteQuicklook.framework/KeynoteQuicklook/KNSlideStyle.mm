@interface KNSlideStyle
+ (id)defaultStyleWithContext:(id)context;
+ (id)defaultValueForProperty:(int)property;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint;
- (KNMotionBackgroundStyle)motionBackgroundStyle;
- (KNSlideStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)loadSlideStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)referencedStyleWasUpdated:(id)updated;
- (void)saveSlideStylePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation KNSlideStyle

+ (id)properties
{
  if (qword_280A3BFB0 != -1)
  {
    sub_275E5A404();
  }

  v3 = qword_280A3BFA8;

  return v3;
}

+ (id)propertiesAllowingNSNull
{
  if (qword_280A3BFC0 != -1)
  {
    sub_275E5A418();
  }

  v3 = qword_280A3BFB8;

  return v3;
}

+ (id)defaultStyleWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  v5 = sub_275DC204C();
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"None", &stru_2884D8E20, @"Keynote");
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v8, contextCopy, v7, 0, 0);

  return isVariation;
}

+ (id)defaultValueForProperty:(int)property
{
  if (property == 4096)
  {
    v3 = objc_msgSend_defaultAttributesForEffect_(KNTransitionAttributes, a2, *MEMORY[0x277D80160]);
  }

  else if (property == 516)
  {
    v3 = objc_msgSend_blackColor(MEMORY[0x277D801F8], a2, *&property);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (KNSlideStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation
{
  v7.receiver = self;
  v7.super_class = KNSlideStyle;
  return [(KNSlideStyle *)&v7 initWithContext:context name:name overridePropertyMap:map isVariation:variation];
}

- (KNMotionBackgroundStyle)motionBackgroundStyle
{
  objc_opt_class();
  v4 = objc_msgSend_objectForProperty_(self, v3, 516);
  v5 = TSUDynamicCast();

  if (v5)
  {
    v8 = objc_msgSend_motionBackgroundStyle(v5, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)referencedStyleWasUpdated:(id)updated
{
  updatedCopy = updated;
  v6 = objc_msgSend_motionBackgroundStyle(self, v4, v5);

  if (v6 == updatedCopy)
  {
    objc_msgSend_willModify(self, v7, v8);
    objc_opt_class();
    v10 = objc_msgSend_objectForProperty_(self, v9, 516);
    v11 = TSUDynamicCast();

    if (v11)
    {
      objc_msgSend_updateAlternateFillForDowngrading(v11, v12, v13);
    }
  }
}

- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint
{
  objc_opt_class();
  v6 = objc_msgSend_valueForProperty_(self, v5, 516);
  v7 = TSUCheckedDynamicCast();

  v10 = objc_msgSend_owningDocument(self, v8, v9);
  v13 = objc_msgSend_show(v10, v11, v12);
  objc_msgSend_size(v13, v14, v15);
  objc_msgSend_renderedImageSizeForObjectSize_(v7, v16, v17);
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)loadSlideStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  mapCopy = map;
  unarchiverCopy = unarchiver;
  v10 = objc_opt_class();
  v11 = *(archive + 4);
  if (v11)
  {
    v12 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v9, *(archive + 3), unarchiverCopy);
    v20 = v12;
    v13 = objc_opt_class();
    v15 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v14, &v20, v13, 516);
    v16 = v20;

    if (v15)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v17, v16, 516);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 8) != 0)
  {
    v19 = *(archive + 41);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v9, &v19, 4097))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, v19 != 0, 4097);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 0x10) != 0)
  {
    v19 = *(archive + 42);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v9, &v19, 4098))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, v19 != 0, 4098);
    }

    v11 = *(archive + 4);
  }

  if ((v11 & 0x40) != 0)
  {
    v19 = *(archive + 44);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v9, &v19, 4100))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v18, v19 != 0, 4100);
    }
  }
}

- (void)saveSlideStylePropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver
{
  mapCopy = map;
  archiverCopy = archiver;
  v9 = objc_opt_class();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_275D7DE70;
  v24[3] = &unk_27A698540;
  v10 = mapCopy;
  v25 = v10;
  v27 = v9;
  archiveCopy = archive;
  v11 = archiverCopy;
  v26 = v11;
  objc_msgSend_pushScopeForField_message_usingBlock_(v11, v12, 1, archive, v24);
  if (objc_msgSend_containsProperty_(v10, v13, 4097))
  {
    v23 = objc_msgSend_intValueForProperty_(v10, v14, 4097);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v9, v15, &v23, 4097))
    {
      v16 = v23 != 0;
      *(archive + 4) |= 8u;
      *(archive + 41) = v16;
    }
  }

  if (objc_msgSend_containsProperty_(v10, v14, 4098))
  {
    v23 = objc_msgSend_intValueForProperty_(v10, v17, 4098);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v9, v18, &v23, 4098))
    {
      v19 = v23 != 0;
      *(archive + 4) |= 0x10u;
      *(archive + 42) = v19;
    }
  }

  if (objc_msgSend_containsProperty_(v10, v17, 4100))
  {
    v23 = objc_msgSend_intValueForProperty_(v10, v20, 4100);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v9, v21, &v23, 4100))
    {
      v22 = v23 != 0;
      *(archive + 4) |= 0x40u;
      *(archive + 44) = v22;
    }
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812EA908[62]);

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

  v15.receiver = self;
  v15.super_class = KNSlideStyle;
  [(KNSlideStyle *)&v15 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(archive + 10);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D80AB8]);
    v12 = objc_msgSend_initWithCapacity_(v9, v10, v8);
    if (*(archive + 4))
    {
      objc_msgSend_loadSlideStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v11, v12, *(archive + 4), unarchiverCopy);
    }

    else
    {
      objc_msgSend_loadSlideStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v11, v12, &qword_2812EB638, unarchiverCopy);
    }

    v13 = *MEMORY[0x277D80AF0];
    v14 = *(&self->super.super.super.isa + v13);
    *(&self->super.super.super.isa + v13) = v12;
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275D7E3F8, off_2812EA908[62]);

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

    v7 = MEMORY[0x277C8F060](v8);
    *(archive + 3) = v7;
  }

  v27.receiver = self;
  v27.super_class = KNSlideStyle;
  [(KNSlideStyle *)&v27 saveToArchive:v7 archiver:archiverCopy];
  v11 = objc_msgSend_overrideCount(self, v9, v10);
  if (v11)
  {
    if (v11 >> 31)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[KNSlideStyle(PersistenceAdditions) saveToArchive:archiver:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 192, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
      LODWORD(v11) = 0x7FFFFFFF;
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

      v14 = sub_275E207F4(v15);
      *(archive + 4) = v14;
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_275D7E3D8;
    v24[3] = &unk_27A697C88;
    v24[4] = self;
    v26 = v14;
    v25 = archiverCopy;
    objc_msgSend_pushScopeForField_message_usingBlock_(v25, v16, 11, archive, v24);
  }
}

@end