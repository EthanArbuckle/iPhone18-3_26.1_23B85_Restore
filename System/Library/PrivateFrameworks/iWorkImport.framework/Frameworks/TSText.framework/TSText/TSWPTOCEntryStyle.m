@interface TSWPTOCEntryStyle
+ (id)defaultValueForProperty:(int)a3;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (int)defaultIntValueForProperty:(int)a3;
- (TSWPTOCEntryStyle)initWithContext:(id)a3 name:(id)a4 basedOnParagraphStyle:(id)a5;
- (TSWPTOCEntryStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6;
- (id)parentStyleForFixingOrphanVariation;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_loadTOCEntryParagraphStylePropertiesIntoPropertyMap:(id)a3 fromArchive:(const void *)a4 unarchiver:(id)a5;
- (void)p_saveTOCEntryStylePropertiesToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSWPTOCEntryStyle

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276E26924;
  block[3] = &unk_27A6F3D70;
  block[4] = a1;
  if (qword_280A584E8 != -1)
  {
    dispatch_once(&qword_280A584E8, block);
  }

  v2 = qword_280A584F0;

  return v2;
}

+ (id)propertiesAllowingNSNull
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276E26A48;
  block[3] = &unk_27A6F3D70;
  block[4] = a1;
  if (qword_280A584F8 != -1)
  {
    dispatch_once(&qword_280A584F8, block);
  }

  v2 = qword_280A58500;

  return v2;
}

+ (int)defaultIntValueForProperty:(int)a3
{
  if (a3 == 136)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___TSWPTOCEntryStyle;
  return objc_msgSendSuper2(&v6, sel_defaultIntValueForProperty_);
}

+ (id)defaultValueForProperty:(int)a3
{
  if (a3 == 137)
  {
    v3 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, *&a3);
  }

  else
  {
    v5.receiver = a1;
    v5.super_class = &OBJC_METACLASS___TSWPTOCEntryStyle;
    v3 = objc_msgSendSuper2(&v5, sel_defaultValueForProperty_);
  }

  return v3;
}

- (TSWPTOCEntryStyle)initWithContext:(id)a3 name:(id)a4 basedOnParagraphStyle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_propertyMap(a5, v10, v11);
  v13 = objc_opt_class();
  v16 = objc_msgSend_properties(v13, v14, v15);
  objc_msgSend_filterWithProperties_(v12, v17, v16);

  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(self, v18, v8, v9, v12, 0);
  return isVariation;
}

- (TSWPTOCEntryStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v14 = a5;
  if (!v14)
  {
    v14 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v12, v13);
  }

  if ((objc_msgSend_containsProperty_(v14, v12, 136) & 1) == 0)
  {
    objc_msgSend_setIntValue_forProperty_(v14, v15, 1, 136);
  }

  if ((objc_msgSend_containsProperty_(v14, v15, 137) & 1) == 0)
  {
    v18 = objc_msgSend_null(MEMORY[0x277CBEB68], v16, v17);
    objc_msgSend_setObject_forProperty_(v14, v19, v18, 137);
  }

  v22.receiver = self;
  v22.super_class = TSWPTOCEntryStyle;
  v20 = [(TSWPParagraphStyle *)&v22 initWithContext:v10 name:v11 overridePropertyMap:v14 isVariation:v6];

  return v20;
}

- (void)p_loadTOCEntryParagraphStylePropertiesIntoPropertyMap:(id)a3 fromArchive:(const void *)a4 unarchiver:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_opt_class();
  v12 = v9;
  v13 = *(a4 + 4);
  if ((v13 & 1) != 0 && v8)
  {
    v14 = *(a4 + 3);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_276E26F50;
    v22[3] = &unk_27A6F5810;
    v24 = v9;
    v23 = v7;
    v15 = v8;
    v16 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v15, v17, v14, v16, 0, v22);
  }

  else if ((v13 & 2) != 0 && *(a4 + 32) == 1)
  {
    v18 = objc_msgSend_null(MEMORY[0x277CBEB68], v10, v11);
    objc_msgSend_setObject_forProperty_(v7, v19, v18, 137);
  }

  if ((*(a4 + 16) & 4) != 0)
  {
    v21 = *(a4 + 33);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v12, v10, &v21, 136))
    {
      objc_msgSend_setIntValue_forProperty_(v7, v20, v21 != 0, 136);
    }
  }
}

- (void)p_saveTOCEntryStylePropertiesToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v7 = objc_opt_class();
  v8 = *(&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]);
  if (objc_msgSend_containsProperty_(v8, v9, 137))
  {
    v11 = objc_msgSend_objectForProperty_(v8, v10, 137);
    v25 = v11;
    v12 = objc_opt_class();
    v14 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v13, &v25, v12, 137);
    v15 = v25;

    if (v14)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v18 = *(a3 + 4);
      if (isKindOfClass)
      {
        *(a3 + 4) = v18 | 2;
        *(a3 + 32) = 1;
      }

      else
      {
        *(a3 + 4) = v18 | 1;
        v19 = *(a3 + 3);
        if (!v19)
        {
          v20 = *(a3 + 1);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = MEMORY[0x277CA3250](v20);
          *(a3 + 3) = v19;
        }

        objc_msgSend_setStrongReference_message_(v6, v17, v15, v19);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v8, v10, 136))
  {
    v24 = objc_msgSend_intValueForProperty_(v8, v21, 136);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v22, &v24, 136))
    {
      v23 = v24 != 0;
      *(a3 + 4) |= 4u;
      *(a3 + 33) = v23;
    }
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812DC408[72]);

  if (*(v6 + 24))
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = &TSWP::_ParagraphStyleArchive_default_instance_;
  }

  v12.receiver = self;
  v12.super_class = TSWPTOCEntryStyle;
  [(TSWPParagraphStyle *)&v12 loadFromArchive:v7 unarchiver:v4];
  v9 = *(&self->super.super.super.super.isa + *MEMORY[0x277D80AF0]);
  if (*(v6 + 32))
  {
    objc_msgSend_p_loadTOCEntryParagraphStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v8, v9, *(v6 + 32), v4);
  }

  else
  {
    objc_msgSend_p_loadTOCEntryParagraphStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v8, v9, &TSWP::_TOCEntryStylePropertiesArchive_default_instance_, v4);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276E2732C;
  v11[3] = &unk_27A6F46E8;
  v11[4] = self;
  objc_msgSend_addFinalizeHandler_(v4, v10, v11);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276E2756C;
  v12[3] = &unk_27A6F3E30;
  v15 = a3;
  v7 = v6;
  v13 = v7;
  v14 = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, a3, v12);
  *(a3 + 4) |= 2u;
  v10 = *(a3 + 4);
  if (!v10)
  {
    v11 = *(a3 + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TOCEntryStylePropertiesArchive>(v11);
    *(a3 + 4) = v10;
  }

  objc_msgSend_p_saveTOCEntryStylePropertiesToArchive_archiver_(self, v9, v10, v7);
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276E27790, off_2812DC408[72]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

- (id)parentStyleForFixingOrphanVariation
{
  objc_opt_class();
  v5 = objc_msgSend_context(self, v3, v4);
  v8 = objc_msgSend_documentObject(v5, v6, v7);
  v9 = TSUDynamicCast();

  v12 = objc_msgSend_theme(v9, v10, v11);
  v15 = objc_msgSend_defaultTOCEntryStyle(v12, v13, v14);

  return v15;
}

@end