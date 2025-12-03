@interface TSWPShapeStyle
+ (TSSPropertySet)deprecatedProperties;
+ (TSSPropertySet)layoutProperties;
+ (id)defaultValueForProperty:(int)property;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (int)defaultIntValueForProperty:(int)property;
+ (void)loadShapeStyleLayoutPropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (void)saveShapeStyleLayoutPropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver;
- (NSString)presetKind;
- (TSWPParagraphStyle)defaultParagraphStyle;
- (id)archivableRepresentationOfChangeSet:(id)set;
- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setDefaultParagraphStyle:(id)style;
@end

@implementation TSWPShapeStyle

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276DEB9B8;
  block[3] = &unk_27A6F3D70;
  block[4] = self;
  if (qword_280A58408 != -1)
  {
    dispatch_once(&qword_280A58408, block);
  }

  v2 = qword_280A58400;

  return v2;
}

+ (TSSPropertySet)layoutProperties
{
  if (qword_280A58418 != -1)
  {
    sub_276F4F6AC();
  }

  v3 = qword_280A58410;

  return v3;
}

+ (id)propertiesAllowingNSNull
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276DEBBD4;
  block[3] = &unk_27A6F3D70;
  block[4] = self;
  if (qword_280A58428 != -1)
  {
    dispatch_once(&qword_280A58428, block);
  }

  v2 = qword_280A58420;

  return v2;
}

+ (TSSPropertySet)deprecatedProperties
{
  if (qword_280A58438 != -1)
  {
    sub_276F4F6C0();
  }

  v3 = qword_280A58430;

  return v3;
}

+ (int)defaultIntValueForProperty:(int)property
{
  if (property > 152)
  {
    v6 = 0;
    if (property == 153 || property == 188)
    {
      return v6;
    }

    goto LABEL_9;
  }

  if (property != 149 && property != 152)
  {
LABEL_9:
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___TSWPShapeStyle;
    return objc_msgSendSuper2(&v7, sel_defaultIntValueForProperty_);
  }

  return objc_msgSend_defaultIntValueForProperty_(TSWPColumnStyle, a2, *&property);
}

+ (id)defaultValueForProperty:(int)property
{
  switch(property)
  {
    case 146:
      goto LABEL_4;
    case 189:
      v3 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, *&property);
      break;
    case 148:
LABEL_4:
      v3 = objc_msgSend_defaultValueForProperty_(TSWPColumnStyle, a2, *&property);
      break;
    default:
      v5.receiver = self;
      v5.super_class = &OBJC_METACLASS___TSWPShapeStyle;
      v3 = objc_msgSendSuper2(&v5, sel_defaultValueForProperty_);
      break;
  }

  return v3;
}

- (NSString)presetKind
{
  v3 = *MEMORY[0x277D80B88];
  v6 = objc_msgSend_styleIdentifier(self, v4, v5);
  if (v6)
  {
    v7 = String();
    v8 = sub_276DAD798(v7);
  }

  else
  {
    objc_opt_class();
    v11 = objc_msgSend_parent(self, v9, v10);
    v7 = TSUDynamicCast();

    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = objc_msgSend_presetKind(v7, v12, v13);
  }

  v14 = v8;

  v3 = v14;
LABEL_6:

  return v3;
}

- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform
{
  v6 = *&property;
  valueCopy = value;
  v11 = valueCopy;
  if (v6 == 146)
  {
    v12 = objc_msgSend_copy(valueCopy, v9, v10);
    v13 = *&transform->c;
    v18 = *&transform->a;
    v19 = v13;
    v20 = *&transform->tx;
    objc_msgSend_transform_(v12, v14, &v18);
  }

  else
  {
    v15 = *&transform->c;
    v18 = *&transform->a;
    v19 = v15;
    v20 = *&transform->tx;
    v17.receiver = self;
    v17.super_class = TSWPShapeStyle;
    v12 = [(TSDShapeStyle *)&v17 boxedValueForProperty:v6 oldBoxedValue:valueCopy transformedByTransform:&v18];
  }

  return v12;
}

- (void)setDefaultParagraphStyle:(id)style
{
  styleCopy = style;
  if (!styleCopy)
  {
    styleCopy = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);
  }

  v7 = styleCopy;
  objc_msgSend_setValue_forProperty_(self, v7, v7, 189);
}

- (TSWPParagraphStyle)defaultParagraphStyle
{
  v3 = objc_msgSend_valueForProperty_(self, a2, 189);
  v6 = objc_msgSend_null(MEMORY[0x277CBEB68], v4, v5);
  isEqual = objc_msgSend_isEqual_(v3, v7, v6);
  if (v3)
  {
    v9 = isEqual;
  }

  else
  {
    v9 = 1;
  }

  if (v9 == 1)
  {
    v12 = objc_msgSend_stylesheet(self, v10, v11);

    if (!v12)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPShapeStyle defaultParagraphStyle]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 214, 0, "Cannot look up a default style without a stylesheet to look in");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }

    v22 = objc_msgSend_stylesheet(self, v13, v14);
    v25 = objc_msgSend_defaultParagraphStyle(v22, v23, v24);

    v3 = v25;
  }

  return v3;
}

+ (void)loadShapeStyleLayoutPropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  mapCopy = map;
  unarchiverCopy = unarchiver;
  v12 = *(archive + 4);
  if ((v12 & 2) != 0)
  {
    v13 = objc_msgSend_instanceWithArchive_unarchiver_(TSWPPadding, v9, *(archive + 4), unarchiverCopy);
    v29 = v13;
    v14 = objc_opt_class();
    v16 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v15, &v29, v14, 146);
    v17 = v29;

    if (v16)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v18, v17, 146);
    }

    v12 = *(archive + 4);
  }

  if ((v12 & 0x10) != 0)
  {
    v28 = *(archive + 52);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(self, v9, &v28, 152))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, v28 != 0, 152);
    }

    v12 = *(archive + 4);
  }

  if ((v12 & 8) != 0)
  {
    v28 = *(archive + 12);
    if (objc_msgSend_validateIntValue_forProperty_(self, v9, &v28, 149))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, v28, 149);
    }

    v12 = *(archive + 4);
  }

  if ((v12 & 0x100) != 0)
  {
    v28 = *(archive + 14);
    if (objc_msgSend_validateIntValue_forProperty_(self, v9, &v28, 188))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, v28, 188);
    }

    v12 = *(archive + 4);
  }

  if ((v12 & 0x400) != 0)
  {
    v28 = *(archive + 61);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(self, v9, &v28, 153))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v9, v28 != 0, 153);
    }

    v12 = *(archive + 4);
  }

  if ((v12 & 4) != 0 && unarchiverCopy)
  {
    v19 = *(archive + 5);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_276DEC630;
    v25[3] = &unk_27A6F4548;
    selfCopy = self;
    v26 = mapCopy;
    v20 = unarchiverCopy;
    v21 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v20, v22, v19, v21, 0, v25);

    v23 = v26;
LABEL_27:

    goto LABEL_28;
  }

  if ((v12 & 0x200) != 0 && *(archive + 60) == 1)
  {
    v23 = objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10);
    objc_msgSend_setObject_forProperty_(mapCopy, v24, v23, 189);
    goto LABEL_27;
  }

LABEL_28:
}

+ (void)saveShapeStyleLayoutPropertyMap:(id)map toArchive:(void *)archive archiver:(id)archiver
{
  mapCopy = map;
  archiverCopy = archiver;
  if (objc_msgSend_containsProperty_(mapCopy, v10, 146))
  {
    v12 = objc_msgSend_objectForProperty_(mapCopy, v11, 146);
    v45 = v12;
    v13 = objc_opt_class();
    v15 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v14, &v45, v13, 146);
    v16 = v45;

    if (v15)
    {
      *(archive + 4) |= 2u;
      v18 = *(archive + 4);
      if (!v18)
      {
        v19 = *(archive + 1);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PaddingArchive>(v19);
        *(archive + 4) = v18;
      }

      objc_msgSend_saveToArchive_archiver_(v16, v17, v18, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v11, 152))
  {
    v44 = objc_msgSend_intValueForProperty_(mapCopy, v20, 152);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(self, v21, &v44, 152))
    {
      v22 = v44 != 0;
      *(archive + 4) |= 0x10u;
      *(archive + 52) = v22;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v20, 149))
  {
    v24 = objc_msgSend_intValueForProperty_(mapCopy, v23, 149);
    v44 = v24;
    if (TSWP::ShapeStylePropertiesArchive_VerticalAlignmentType_IsValid(v24))
    {
      if (objc_msgSend_validateIntValue_forProperty_(self, v23, &v44, 149))
      {
        v25 = v44;
        *(archive + 4) |= 8u;
        *(archive + 12) = v25;
      }
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v23, 188))
  {
    v44 = objc_msgSend_intValueForProperty_(mapCopy, v26, 188);
    if (objc_msgSend_validateIntValue_forProperty_(self, v27, &v44, 188))
    {
      v28 = v44;
      *(archive + 4) |= 0x100u;
      *(archive + 14) = v28;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v26, 153))
  {
    v44 = objc_msgSend_intValueForProperty_(mapCopy, v29, 153);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(self, v30, &v44, 153))
    {
      v31 = v44 != 0;
      *(archive + 4) |= 0x400u;
      *(archive + 61) = v31;
    }
  }

  if (objc_msgSend_containsProperty_(mapCopy, v29, 189))
  {
    v33 = objc_msgSend_objectForProperty_(mapCopy, v32, 189);
    v43 = v33;
    v34 = objc_opt_class();
    v36 = objc_msgSend_validateObjectValue_withClass_forProperty_(self, v35, &v43, v34, 189);
    v37 = v43;

    if (v36)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v40 = *(archive + 4);
      if (isKindOfClass)
      {
        *(archive + 4) = v40 | 0x200;
        *(archive + 60) = 1;
      }

      else
      {
        *(archive + 4) = v40 | 4;
        v41 = *(archive + 5);
        if (!v41)
        {
          v42 = *(archive + 1);
          if (v42)
          {
            v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
          }

          v41 = MEMORY[0x277CA3250](v42);
          *(archive + 5) = v41;
        }

        objc_msgSend_setStrongReference_message_(archiverCopy, v39, v37, v41);
      }
    }
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812DC408[64]);

  if (*(v6 + 24))
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = MEMORY[0x277D804D0];
  }

  v45.receiver = self;
  v45.super_class = TSWPShapeStyle;
  [(TSDShapeStyle *)&v45 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(v6 + 40);
  if (!v8)
  {
    goto LABEL_43;
  }

  v9 = objc_alloc(MEMORY[0x277D80AB8]);
  v11 = objc_msgSend_initWithCapacity_(v9, v10, v8);
  if (*(v6 + 32))
  {
    v12 = *(v6 + 32);
  }

  else
  {
    v12 = &TSWP::_ShapeStylePropertiesArchive_default_instance_;
  }

  v15 = objc_opt_class();
  v16 = *(v12 + 4);
  if (v16)
  {
    v17 = objc_msgSend_instanceWithArchive_unarchiver_(TSWPColumns, v13, v12[3], unarchiverCopy);
    v44 = v17;
    v18 = objc_opt_class();
    v20 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v19, &v44, v18, 148);
    v21 = v44;

    if (v20)
    {
      objc_msgSend_setObject_forProperty_(v11, v22, v21, 148);
    }

    v16 = *(v12 + 4);
  }

  if ((v16 & 2) != 0)
  {
    v23 = objc_msgSend_instanceWithArchive_unarchiver_(TSWPPadding, v13, v12[4], unarchiverCopy);
    v43 = v23;
    v24 = objc_opt_class();
    v26 = objc_msgSend_validateObjectValue_withClass_forProperty_(v15, v25, &v43, v24, 146);
    v27 = v43;

    if (v26)
    {
      objc_msgSend_setObject_forProperty_(v11, v28, v27, 146);
    }

    v16 = *(v12 + 4);
  }

  if ((v16 & 0x10) != 0)
  {
    v42 = *(v12 + 52);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v15, v13, &v42, 152))
    {
      objc_msgSend_setIntValue_forProperty_(v11, v13, v42 != 0, 152);
    }

    v16 = *(v12 + 4);
  }

  if ((v16 & 8) != 0)
  {
    v42 = *(v12 + 12);
    if (objc_msgSend_validateIntValue_forProperty_(v15, v13, &v42, 149))
    {
      objc_msgSend_setIntValue_forProperty_(v11, v13, v42, 149);
    }

    v16 = *(v12 + 4);
  }

  if ((v16 & 0x100) != 0)
  {
    v42 = *(v12 + 14);
    if (objc_msgSend_validateIntValue_forProperty_(v15, v13, &v42, 188))
    {
      objc_msgSend_setIntValue_forProperty_(v11, v13, v42, 188);
    }

    v16 = *(v12 + 4);
  }

  if ((v16 & 0x400) != 0)
  {
    v42 = *(v12 + 61);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v15, v13, &v42, 153))
    {
      objc_msgSend_setIntValue_forProperty_(v11, v13, v42 != 0, 153);
    }

    v16 = *(v12 + 4);
  }

  if ((v16 & 4) != 0 && unarchiverCopy)
  {
    v29 = v12[5];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_276DECF0C;
    v39[3] = &unk_27A6F4548;
    v41 = v15;
    v40 = v11;
    v30 = unarchiverCopy;
    v31 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v30, v32, v29, v31, 0, v39);

    v33 = v40;
LABEL_38:

    goto LABEL_39;
  }

  if ((v16 & 0x200) != 0 && *(v12 + 60) == 1)
  {
    v33 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v14);
    objc_msgSend_setObject_forProperty_(v11, v34, v33, 189);
    goto LABEL_38;
  }

LABEL_39:
  v35 = *MEMORY[0x277D80AF0];
  if (*(&self->super.super.super.super.isa + v35))
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_276DECFC8;
    v37[3] = &unk_27A6F3708;
    v37[4] = self;
    v38 = v11;
    objc_msgSend_addFinalizeHandler_(unarchiverCopy, v36, v37);
  }

  else
  {
    objc_storeStrong((&self->super.super.super.super.isa + v35), v11);
  }

LABEL_43:
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_276DED118;
  v14[3] = &unk_27A6F3E30;
  archiveCopy = archive;
  v7 = archiverCopy;
  v15 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, archive, v14);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276DED1A0;
  v11[3] = &unk_27A6F3E30;
  v11[4] = self;
  archiveCopy2 = archive;
  v9 = v7;
  v12 = v9;
  objc_msgSend_pushScopeForField_message_usingBlock_(v9, v10, 11, archive, v11);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276DED818, off_2812DC408[64]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (id)archivableRepresentationOfChangeSet:(id)set
{
  setCopy = set;
  v5 = [TSWPStyleDiff alloc];
  v8 = objc_msgSend_context(self, v6, v7);
  v10 = objc_msgSend_initWithContext_changeSet_(v5, v9, v8, setCopy);

  return v10;
}

@end