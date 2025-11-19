@interface KNSlideStyle
+ (id)defaultStyleWithContext:(id)a3;
+ (id)defaultValueForProperty:(int)a3;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
- (CGSize)targetSizeForImageData:(id)a3 associatedHint:(id)a4;
- (KNMotionBackgroundStyle)motionBackgroundStyle;
- (KNSlideStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)loadSlideStylePropertiesIntoPropertyMap:(id)a3 fromArchive:(const void *)a4 unarchiver:(id)a5;
- (void)referencedStyleWasUpdated:(id)a3;
- (void)saveSlideStylePropertyMap:(id)a3 toArchive:(void *)a4 archiver:(id)a5;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
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

+ (id)defaultStyleWithContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v5 = sub_275DC204C();
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"None", &stru_2884D8E20, @"Keynote");
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v8, v3, v7, 0, 0);

  return isVariation;
}

+ (id)defaultValueForProperty:(int)a3
{
  if (a3 == 4096)
  {
    v3 = objc_msgSend_defaultAttributesForEffect_(KNTransitionAttributes, a2, *MEMORY[0x277D80160]);
  }

  else if (a3 == 516)
  {
    v3 = objc_msgSend_blackColor(MEMORY[0x277D801F8], a2, *&a3);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (KNSlideStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6
{
  v7.receiver = self;
  v7.super_class = KNSlideStyle;
  return [(KNSlideStyle *)&v7 initWithContext:a3 name:a4 overridePropertyMap:a5 isVariation:a6];
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

- (void)referencedStyleWasUpdated:(id)a3
{
  v14 = a3;
  v6 = objc_msgSend_motionBackgroundStyle(self, v4, v5);

  if (v6 == v14)
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

- (CGSize)targetSizeForImageData:(id)a3 associatedHint:(id)a4
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

- (void)loadSlideStylePropertiesIntoPropertyMap:(id)a3 fromArchive:(const void *)a4 unarchiver:(id)a5
{
  v7 = a3;
  v8 = a5;
  v10 = objc_opt_class();
  v11 = *(a4 + 4);
  if (v11)
  {
    v12 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v9, *(a4 + 3), v8);
    v20 = v12;
    v13 = objc_opt_class();
    v15 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v14, &v20, v13, 516);
    v16 = v20;

    if (v15)
    {
      objc_msgSend_setObject_forProperty_(v7, v17, v16, 516);
    }

    v11 = *(a4 + 4);
  }

  if ((v11 & 8) != 0)
  {
    v19 = *(a4 + 41);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v9, &v19, 4097))
    {
      objc_msgSend_setIntValue_forProperty_(v7, v9, v19 != 0, 4097);
    }

    v11 = *(a4 + 4);
  }

  if ((v11 & 0x10) != 0)
  {
    v19 = *(a4 + 42);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v9, &v19, 4098))
    {
      objc_msgSend_setIntValue_forProperty_(v7, v9, v19 != 0, 4098);
    }

    v11 = *(a4 + 4);
  }

  if ((v11 & 0x40) != 0)
  {
    v19 = *(a4 + 44);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v9, &v19, 4100))
    {
      objc_msgSend_setIntValue_forProperty_(v7, v18, v19 != 0, 4100);
    }
  }
}

- (void)saveSlideStylePropertyMap:(id)a3 toArchive:(void *)a4 archiver:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_opt_class();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_275D7DE70;
  v24[3] = &unk_27A698540;
  v10 = v7;
  v25 = v10;
  v27 = v9;
  v28 = a4;
  v11 = v8;
  v26 = v11;
  objc_msgSend_pushScopeForField_message_usingBlock_(v11, v12, 1, a4, v24);
  if (objc_msgSend_containsProperty_(v10, v13, 4097))
  {
    v23 = objc_msgSend_intValueForProperty_(v10, v14, 4097);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v9, v15, &v23, 4097))
    {
      v16 = v23 != 0;
      *(a4 + 4) |= 8u;
      *(a4 + 41) = v16;
    }
  }

  if (objc_msgSend_containsProperty_(v10, v14, 4098))
  {
    v23 = objc_msgSend_intValueForProperty_(v10, v17, 4098);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v9, v18, &v23, 4098))
    {
      v19 = v23 != 0;
      *(a4 + 4) |= 0x10u;
      *(a4 + 42) = v19;
    }
  }

  if (objc_msgSend_containsProperty_(v10, v17, 4100))
  {
    v23 = objc_msgSend_intValueForProperty_(v10, v20, 4100);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v9, v21, &v23, 4100))
    {
      v22 = v23 != 0;
      *(a4 + 4) |= 0x40u;
      *(a4 + 44) = v22;
    }
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812EA908[62]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, v7);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 3))
  {
    v7 = *(a3 + 3);
  }

  else
  {
    v7 = MEMORY[0x277D80BD0];
  }

  v15.receiver = self;
  v15.super_class = KNSlideStyle;
  [(KNSlideStyle *)&v15 loadFromArchive:v7 unarchiver:v6];
  v8 = *(a3 + 10);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D80AB8]);
    v12 = objc_msgSend_initWithCapacity_(v9, v10, v8);
    if (*(a3 + 4))
    {
      objc_msgSend_loadSlideStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v11, v12, *(a3 + 4), v6);
    }

    else
    {
      objc_msgSend_loadSlideStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v11, v12, &qword_2812EB638, v6);
    }

    v13 = *MEMORY[0x277D80AF0];
    v14 = *(&self->super.super.super.isa + v13);
    *(&self->super.super.super.isa + v13) = v12;
  }
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_275D7E3F8, off_2812EA908[62]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  *(a3 + 4) |= 1u;
  v7 = *(a3 + 3);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x277C8F060](v8);
    *(a3 + 3) = v7;
  }

  v27.receiver = self;
  v27.super_class = KNSlideStyle;
  [(KNSlideStyle *)&v27 saveToArchive:v7 archiver:v6];
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

    v13 = *(a3 + 4);
    *(a3 + 10) = v11;
    *(a3 + 4) = v13 | 6;
    v14 = *(a3 + 4);
    if (!v14)
    {
      v15 = *(a3 + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = sub_275E207F4(v15);
      *(a3 + 4) = v14;
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_275D7E3D8;
    v24[3] = &unk_27A697C88;
    v24[4] = self;
    v26 = v14;
    v25 = v6;
    objc_msgSend_pushScopeForField_message_usingBlock_(v25, v16, 11, a3, v24);
  }
}

@end