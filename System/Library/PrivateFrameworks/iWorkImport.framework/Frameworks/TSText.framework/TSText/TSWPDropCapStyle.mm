@interface TSWPDropCapStyle
+ (id)defaultPropertyMap;
+ (id)defaultStyleWithContext:(id)context;
+ (id)defaultValueForProperty:(int)property;
+ (id)dropCapProperties;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
- (BOOL)wantsCustomResolveLogicForProperty:(int)property forStyles:(id)styles;
- (TSWPDropCap)dropCap;
- (TSWPDropCapStyle)variationWithSingleCharacterDropCap;
- (double)resolvedFloatForProperty:(int)property inStyles:(id)styles;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)resolvedValueForProperty:(int)property inStyles:(id)styles;
- (int)resolvedIntForProperty:(int)property inStyles:(id)styles;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)mapNonDefaultPropertyOverridesForParentStyle:(id)style propertyMap:(id)map;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSWPDropCapStyle

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276DAC7FC;
  block[3] = &unk_27A6F3D70;
  block[4] = self;
  if (qword_280A582E8 != -1)
  {
    dispatch_once(&qword_280A582E8, block);
  }

  v2 = qword_280A582E0;

  return v2;
}

+ (id)dropCapProperties
{
  if (qword_280A582F8 != -1)
  {
    sub_276F4F508();
  }

  v3 = qword_280A582F0;

  return v3;
}

+ (id)propertiesAllowingNSNull
{
  if (qword_280A58308 != -1)
  {
    sub_276F4F51C();
  }

  v3 = qword_280A58300;

  return v3;
}

+ (id)defaultValueForProperty:(int)property
{
  switch(property)
  {
    case 258:
      v3 = objc_msgSend_emptyStroke(MEMORY[0x277D803C0], a2, *&property);
      break;
    case 257:
      v3 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D801F8], a2, *&property, 0.5, 1.0);
      break;
    case 256:
      v3 = objc_msgSend_dropCap(TSWPDropCap, a2, *&property);
      break;
    default:
      v5.receiver = self;
      v5.super_class = &OBJC_METACLASS___TSWPDropCapStyle;
      v3 = objc_msgSendSuper2(&v5, sel_defaultValueForProperty_);
      break;
  }

  return v3;
}

+ (id)defaultStyleWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v5, contextCopy, 0, 0, 0);

  return isVariation;
}

+ (id)defaultPropertyMap
{
  v3 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v5 = objc_msgSend_defaultValueForProperty_(self, v4, 256);
  objc_msgSend_setObject_forProperty_(v3, v6, v5, 256);

  v8 = objc_msgSend_defaultValueForProperty_(self, v7, 257);
  objc_msgSend_setObject_forProperty_(v3, v9, v8, 257);

  v11 = objc_msgSend_defaultValueForProperty_(self, v10, 258);
  objc_msgSend_setObject_forProperty_(v3, v12, v11, 258);

  return v3;
}

- (TSWPDropCap)dropCap
{
  objc_opt_class();
  v4 = objc_msgSend_valueForProperty_(self, v3, 256);
  v5 = TSUDynamicCast();

  return v5;
}

- (TSWPDropCapStyle)variationWithSingleCharacterDropCap
{
  selfCopy = self;
  v5 = objc_msgSend_dropCap(selfCopy, v3, v4);
  if (objc_msgSend_numberOfCharacters(v5, v6, v7) != 1)
  {
    v10 = objc_msgSend_mutableCopy(v5, v8, v9);
    objc_msgSend_setNumberOfCharacters_(v10, v11, 1);
    v14 = objc_msgSend_propertyMap(selfCopy, v12, v13);
    objc_msgSend_setObject_forProperty_(v14, v15, v10, 256);
    v16 = [TSWPDropCapStyle alloc];
    v19 = objc_msgSend_context(selfCopy, v17, v18);
    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v16, v20, v19, 0, v14, 1);

    selfCopy = isVariation;
  }

  return selfCopy;
}

- (void)mapNonDefaultPropertyOverridesForParentStyle:(id)style propertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  v10 = objc_msgSend_properties(TSWPCharacterStyle, v8, v9);
  v11 = objc_opt_class();
  v14 = objc_msgSend_propertiesAllowingNSNull(v11, v12, v13);
  v16 = objc_msgSend_propertySetByRemovingPropertiesFromSet_(v10, v15, v14);

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_276DACE04;
  v20[3] = &unk_27A6F44F8;
  v21 = styleCopy;
  selfCopy = self;
  v23 = mapCopy;
  v17 = mapCopy;
  v18 = styleCopy;
  objc_msgSend_enumeratePropertiesUsingBlock_(v16, v19, v20);
}

- (BOOL)wantsCustomResolveLogicForProperty:(int)property forStyles:(id)styles
{
  stylesCopy = styles;
  v8 = objc_msgSend_firstObject(stylesCopy, v6, v7);

  if (v8 != self)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPDropCapStyle wantsCustomResolveLogicForProperty:forStyles:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapStyle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 172, 0, "DropCapStyle expects to be first in the resolve style array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = objc_msgSend_firstObject(stylesCopy, v9, v10);
  v19 = v18 == self;

  return v19;
}

- (id)resolvedValueForProperty:(int)property inStyles:(id)styles
{
  v4 = *&property;
  stylesCopy = styles;
  v9 = objc_msgSend_firstObject(stylesCopy, v7, v8);

  if (v9 != self)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPDropCapStyle resolvedValueForProperty:inStyles:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapStyle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 177, 0, "DropCapStyle expects to be first in the resolve style array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  if (objc_msgSend_count(stylesCopy, v10, v11) <= 1)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSWPDropCapStyle resolvedValueForProperty:inStyles:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapStyle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 178, 0, "DropCapStyle expects to NOT be the only style in the resolve style array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  v29 = objc_msgSend_boxedValueForProperty_(self, v19, v4);
  if (!v29 || (objc_msgSend_null(MEMORY[0x277CBEB68], v27, v28), v30 = objc_claimAutoreleasedReturnValue(), v30, v29 == v30))
  {
    v31 = objc_msgSend_tsu_arrayByRemovingFirstObject(stylesCopy, v27, v28);
    v32 = TSWPResolvePropertyForStyles(v31, v4);

    v29 = v32;
  }

  return v29;
}

- (int)resolvedIntForProperty:(int)property inStyles:(id)styles
{
  v4 = *&property;
  stylesCopy = styles;
  if (objc_msgSend_definesProperty_(self, v7, v4))
  {
    v10 = objc_msgSend_intValueForProperty_(self, v8, v4);
  }

  else
  {
    v11 = objc_msgSend_tsu_arrayByRemovingFirstObject(stylesCopy, v8, v9);
    v10 = sub_276D38764(v11, v4, 0);
  }

  return v10;
}

- (double)resolvedFloatForProperty:(int)property inStyles:(id)styles
{
  v4 = *&property;
  stylesCopy = styles;
  if (objc_msgSend_definesProperty_(self, v7, v4))
  {
    objc_msgSend_floatValueForProperty_(self, v8, v4);
    v11 = v10;
  }

  else
  {
    v12 = objc_msgSend_tsu_arrayByRemovingFirstObject(stylesCopy, v8, v9);
    v11 = sub_276D389B0(v12, v4, 0.0);
  }

  return v11;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  objc_opt_class();
  v6 = TSUCheckedDynamicCast();

  v8 = objc_msgSend_objectForProperty_(self, v7, 256);
  v10 = objc_msgSend_objectForProperty_(v6, v9, 256);
  v13 = objc_msgSend_numberOfLines(v8, v11, v12);
  if (v13 != objc_msgSend_numberOfLines(v10, v14, v15) || (v18 = objc_msgSend_wrapType(v8, v16, v17), v18 != objc_msgSend_wrapType(v10, v19, v20)) || (v23 = objc_msgSend_numberOfRaisedLines(v8, v21, v22), v23 != objc_msgSend_numberOfRaisedLines(v10, v24, v25)) || (v28 = objc_msgSend_dropCapType(v8, v26, v27), v28 != objc_msgSend_dropCapType(v10, v29, v30)) || (v33 = objc_msgSend_wrapType(v8, v31, v32), v33 != objc_msgSend_wrapType(v10, v34, v35)) || (objc_msgSend_padding(v8, v36, v37), v39 = v38, objc_msgSend_padding(v10, v40, v41), v39 != v44) && vabdd_f64(v39, v44) >= 0.00999999978 || (objc_msgSend_characterScale(v8, v42, v43), v46 = v45, objc_msgSend_characterScale(v10, v47, v48), v46 != v51) && vabdd_f64(v46, v51) >= 0.00999999978 || (objc_msgSend_cornerRadius(v8, v49, v50), v53 = v52, objc_msgSend_cornerRadius(v10, v54, v55), v53 != v58) && vabdd_f64(v53, v58) >= 0.00999999978 || (objc_msgSend_outdent(v8, v56, v57), v60 = v59, objc_msgSend_outdent(v10, v61, v62), v64 = 4, v60 != v63) && vabdd_f64(v60, v63) >= 0.00999999978)
  {
    v64 = 1;
  }

  return v64;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  v7 = objectCopy;
  if (fraction >= 1.0)
  {
    self = objectCopy;
  }

  selfCopy = self;

  return self;
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

  v43.receiver = self;
  v43.super_class = TSWPDropCapStyle;
  [(TSWPDropCapStyle *)&v43 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(archive + 12);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D80AB8]);
    v12 = objc_msgSend_initWithCapacity_(v9, v10, v8);
    if (*(archive + 4))
    {
      objc_msgSend_loadCharacterStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v11, v12, *(archive + 4), unarchiverCopy);
    }

    else
    {
      objc_msgSend_loadCharacterStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v11, v12, &TSWP::_CharacterStylePropertiesArchive_default_instance_, unarchiverCopy);
    }

    if (*(archive + 5))
    {
      v13 = *(archive + 5);
    }

    else
    {
      v13 = &TSWP::_DropCapStylePropertiesArchive_default_instance_;
    }

    v16 = objc_opt_class();
    v17 = *(v13 + 4);
    if (v17)
    {
      v18 = objc_msgSend_instanceWithArchive_unarchiver_(TSWPDropCap, v14, v13[3], unarchiverCopy);
      v42 = v18;
      v19 = objc_opt_class();
      v21 = objc_msgSend_validateObjectValue_withClass_forProperty_(v16, v20, &v42, v19, 256);
      v22 = v42;

      if (v21)
      {
        objc_msgSend_setObject_forProperty_(v12, v23, v22, 256);
      }

      v17 = *(v13 + 4);
    }

    if ((v17 & 2) != 0)
    {
      v24 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v14, v13[4], unarchiverCopy);
      v41 = v24;
      v25 = objc_opt_class();
      v27 = objc_msgSend_validateObjectValue_withClass_forProperty_(v16, v26, &v41, v25, 258);
      v28 = v41;

      if (v27)
      {
        objc_msgSend_setObject_forProperty_(v12, v29, v28, 258);
      }

      v17 = *(v13 + 4);
    }

    if ((v17 & 4) != 0 && unarchiverCopy)
    {
      v30 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v14, v13[5], unarchiverCopy);
    }

    else
    {
      if ((v17 & 8) == 0 || *(v13 + 48) != 1)
      {
        v32 = 0;
        goto LABEL_29;
      }

      v30 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15);
    }

    v31 = v30;
    v32 = v31;
    if (v31)
    {
      v40 = v31;
      v33 = objc_opt_class();
      v35 = objc_msgSend_validateObjectValue_withClass_forProperty_(v16, v34, &v40, v33, 257);
      v36 = v40;

      if (v35)
      {
        objc_msgSend_setObject_forProperty_(v12, v37, v36, 257);
      }

      goto LABEL_30;
    }

LABEL_29:
    v36 = 0;
LABEL_30:

    v38 = *MEMORY[0x277D80AF0];
    v39 = *(&self->super.super.super.isa + v38);
    *(&self->super.super.super.isa + v38) = v12;
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[186]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
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

    v7 = MEMORY[0x277CA3260](v8);
    *(archive + 3) = v7;
  }

  v62.receiver = self;
  v62.super_class = TSWPDropCapStyle;
  [(TSWPDropCapStyle *)&v62 saveToArchive:v7 archiver:archiverCopy];
  v11 = objc_msgSend_overrideCount(self, v9, v10);
  if (v11)
  {
    if (HIDWORD(v11))
    {
      v49 = MEMORY[0x277D81150];
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSWPDropCapStyle(TSWPArchiving) saveToArchive:archiver:]");
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapStyle_Archiving.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 69, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
      LODWORD(v11) = -1;
    }

    *(archive + 4) |= 8u;
    *(archive + 12) = v11;
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = sub_276DEB41C;
    v59[3] = &unk_27A6F3E30;
    v59[4] = self;
    archiveCopy = archive;
    v13 = archiverCopy;
    v60 = v13;
    objc_msgSend_pushScopeForField_message_usingBlock_(v13, v14, 11, archive, v59);
    *(archive + 4) |= 4u;
    v15 = *(archive + 5);
    if (!v15)
    {
      v16 = *(archive + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSWP::DropCapStylePropertiesArchive>(v16);
      *(archive + 5) = v15;
    }

    v17 = objc_opt_class();
    v18 = *(&self->super.super.super.isa + *MEMORY[0x277D80AF0]);
    if (objc_msgSend_containsProperty_(v18, v19, 256))
    {
      v21 = objc_msgSend_objectForProperty_(v18, v20, 256);
      v58 = v21;
      v22 = objc_opt_class();
      v24 = objc_msgSend_validateObjectValue_withClass_forProperty_(v17, v23, &v58, v22, 256);
      v25 = v58;

      if (v24)
      {
        *(v15 + 16) |= 1u;
        v27 = *(v15 + 24);
        if (!v27)
        {
          v28 = *(v15 + 8);
          if (v28)
          {
            v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
          }

          v27 = google::protobuf::Arena::CreateMaybeMessage<TSWP::DropCapArchive>(v28);
          *(v15 + 24) = v27;
        }

        objc_msgSend_saveToArchive_archiver_(v25, v26, v27, v13);
      }
    }

    if (objc_msgSend_containsProperty_(v18, v20, 258))
    {
      v30 = objc_msgSend_objectForProperty_(v18, v29, 258);
      v57 = v30;
      v31 = objc_opt_class();
      v33 = objc_msgSend_validateObjectValue_withClass_forProperty_(v17, v32, &v57, v31, 258);
      v34 = v57;

      if (v33)
      {
        *(v15 + 16) |= 2u;
        v36 = *(v15 + 32);
        if (!v36)
        {
          v37 = *(v15 + 8);
          if (v37)
          {
            v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
          }

          v36 = MEMORY[0x277CA3150](v37);
          *(v15 + 32) = v36;
        }

        objc_msgSend_saveToArchive_archiver_(v34, v35, v36, v13);
      }
    }

    if (objc_msgSend_containsProperty_(v18, v29, 257))
    {
      v39 = objc_msgSend_objectForProperty_(v18, v38, 257);
      v56 = v39;
      v40 = objc_opt_class();
      v42 = objc_msgSend_validateObjectValue_withClass_forProperty_(v17, v41, &v56, v40, 257);
      v43 = v56;

      if (v42)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v46 = *(v15 + 16);
        if (isKindOfClass)
        {
          *(v15 + 16) = v46 | 8;
          *(v15 + 48) = 1;
        }

        else
        {
          *(v15 + 16) = v46 | 4;
          v47 = *(v15 + 40);
          if (!v47)
          {
            v48 = *(v15 + 8);
            if (v48)
            {
              v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
            }

            v47 = MEMORY[0x277CA3120](v48);
            *(v15 + 40) = v47;
          }

          objc_msgSend_saveToArchive_archiver_(v43, v45, v47, v13, v56);
        }
      }
    }
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276DEB558, off_2812DC408[186]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

@end