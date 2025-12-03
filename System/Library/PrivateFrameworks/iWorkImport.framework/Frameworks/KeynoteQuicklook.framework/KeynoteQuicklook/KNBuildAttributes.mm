@interface KNBuildAttributes
+ (BOOL)customAttributeKeyIsValid:(id)valid;
+ (id)attributeValueForProperty:(id)property value:(id)value;
+ (id)defaultAttributesForEffect:(id)effect buildType:(int64_t)type;
+ (id)supportedCustomAttributes;
- (BOOL)p_usesAlignToPath;
- (id)attributeValueForProperty:(id)property;
- (id)initFromBuildAttributesArchive:(const void *)archive;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)p_readBuildAttributesForArchive:(const void *)archive intoDictionary:(id)dictionary;
- (void)p_readSharedAttributesForArchive:(void *)archive intoDictionary:(id)dictionary;
- (void)p_readTEFAttributesForArchive:(const void *)archive intoDictionary:(id)dictionary;
- (void)p_setUnsafeDirection:(unint64_t)direction onAttributes:(id)attributes;
- (void)p_writeBuildAttributesToArchive:(void *)archive archiver:(id)archiver;
- (void)p_writeSharedAttributesToArchive:(void *)archive;
@end

@implementation KNBuildAttributes

+ (id)attributeValueForProperty:(id)property value:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  objc_opt_class();
  v7 = TSUDynamicCast();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = valueCopy;
LABEL_9:
    v21 = v8;
    goto LABEL_10;
  }

  if (sub_275DDA62C(propertyCopy))
  {
    v11 = objc_msgSend_integerValue(v7, v9, v10);
    v8 = objc_msgSend_valueWithInteger_(KNBuildAttributeValue, v12, v11);
    goto LABEL_9;
  }

  if (sub_275DDA790(propertyCopy))
  {
    objc_msgSend_doubleValue(v7, v13, v14);
    v8 = objc_msgSend_valueWithDouble_(KNBuildAttributeValue, v15, v16);
    goto LABEL_9;
  }

  if (sub_275DDA910(propertyCopy))
  {
    v19 = objc_msgSend_BOOLValue(v7, v17, v18);
    v8 = objc_msgSend_valueWithBool_(KNBuildAttributeValue, v20, v19);
    goto LABEL_9;
  }

  if (sub_275DDAA3C(propertyCopy))
  {
    objc_opt_class();
    v23 = TSUDynamicCast();
    v25 = objc_msgSend_valueWithString_(KNBuildAttributeValue, v24, v23);
LABEL_19:
    v21 = v25;

    goto LABEL_10;
  }

  if (sub_275DDAB30(propertyCopy))
  {
    objc_opt_class();
    v23 = TSUDynamicCast();
    v27 = [KNBuildAttributeValue alloc];
    v25 = objc_msgSend_initWithPathSourceValue_(v27, v28, v23);
    goto LABEL_19;
  }

  if (objc_msgSend_isEqualToString_(propertyCopy, v26, @"KNAnimationColor"))
  {
    objc_opt_class();
    v23 = TSUDynamicCast();
    v30 = [KNBuildAttributeValue alloc];
    v25 = objc_msgSend_initWithColorValue_(v30, v31, v23);
    goto LABEL_19;
  }

  if (valueCopy)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "+[KNBuildAttributes attributeValueForProperty:value:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributes.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 181, 0, "Unknown value type.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
  }

  v21 = 0;
LABEL_10:

  return v21;
}

- (id)attributeValueForProperty:(id)property
{
  propertyCopy = property;
  v6 = objc_msgSend_valueForAttributeKey_(self, v5, propertyCopy);
  v8 = objc_msgSend_attributeValueForProperty_value_(KNBuildAttributes, v7, propertyCopy, v6);

  return v8;
}

+ (id)supportedCustomAttributes
{
  if (qword_280A3C108[0] != -1)
  {
    sub_275E5B610();
  }

  v3 = qword_280A3C100;

  return v3;
}

+ (BOOL)customAttributeKeyIsValid:(id)valid
{
  validCopy = valid;
  v7 = objc_msgSend_supportedCustomAttributes(self, v5, v6);
  v9 = objc_msgSend_containsObject_(v7, v8, validCopy);

  return v9;
}

+ (id)defaultAttributesForEffect:(id)effect buildType:(int64_t)type
{
  effectCopy = effect;
  v8 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7);
  v11 = objc_msgSend_instance(KNAnimationRegistry, v9, v10);
  v13 = objc_msgSend_animationInfoForEffectIdentifier_animationType_(v11, v12, effectCopy, type);

  v16 = objc_msgSend_animationClass(v13, v14, v15);
  v20 = objc_msgSend_defaultAttributes(v16, v17, v18);
  if (v20)
  {
    objc_msgSend_setDictionary_(v8, v19, v20);
  }

  v21 = objc_msgSend_objectForKeyedSubscript_(v8, v19, @"KNBuildAttributesDefaultDuration");

  if (!v21)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v8, v22, &unk_2884F3F00, @"KNBuildAttributesDefaultDuration");
  }

  v23 = *MEMORY[0x277D80178];
  v24 = objc_msgSend_objectForKeyedSubscript_(v8, v22, *MEMORY[0x277D80178]);

  if (!v24)
  {
    v26 = KNAnimationTypeAsString();
    objc_msgSend_setObject_forKeyedSubscript_(v8, v27, v26, v23);
  }

  v28 = objc_msgSend_objectForKeyedSubscript_(v8, v25, @"KNBuildAttributesInitialChunkCreationEventTrigger");

  if (!v28)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v8, v29, &unk_2884F3A50, @"KNBuildAttributesInitialChunkCreationEventTrigger");
  }

  v30 = objc_msgSend_objectForKeyedSubscript_(v8, v29, @"KNBuildAttributesInitialChunkCreationDelay");

  if (!v30)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v8, v31, &unk_2884F3D28, @"KNBuildAttributesInitialChunkCreationDelay");
  }

  v32 = objc_msgSend_objectForKeyedSubscript_(v8, v31, @"KNBuildCustomAttributesRandomNumberSeed");

  if (!v32)
  {
    v35 = MEMORY[0x277CCABB0];
    NewSeed = objc_msgSend_generateNewSeed(KNAnimationRandomGenerator, v33, v34);
    v38 = objc_msgSend_numberWithUnsignedInt_(v35, v37, NewSeed);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v39, v38, @"KNBuildCustomAttributesRandomNumberSeed");
  }

  v40 = objc_msgSend_objectForKeyedSubscript_(v8, v33, @"WritingDirectionIsRTL");

  if (!v40)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v8, v41, MEMORY[0x277CBEC28], @"WritingDirectionIsRTL");
  }

  v42 = objc_msgSend_attributesWithEffect_attributes_(KNBuildAttributes, v41, effectCopy, v8);

  return v42;
}

- (id)initFromBuildAttributesArchive:(const void *)archive
{
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ((*(archive + 16) & 0x10) != 0)
  {
    sub_275DE4790(v24, *(archive + 8));
    objc_msgSend_p_readSharedAttributesForArchive_intoDictionary_(self, v9, v24, v6);
    if ((v24[16] & 2) != 0)
    {
      v12 = objc_alloc(MEMORY[0x277CCACA8]);
      v8 = objc_msgSend_tsp_initWithProtobufString_(v12, v13, v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v8 = 0;
    }

    sub_275DE49FC(v24);
  }

  else
  {
    objc_msgSend_p_readTEFAttributesForArchive_intoDictionary_(self, v5, archive, v6);
    if ((*(archive + 16) & 2) != 0)
    {
      v10 = objc_alloc(MEMORY[0x277CCACA8]);
      v8 = objc_msgSend_tsp_initWithProtobufString_(v10, v11, *(archive + 5) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v8 = 0;
    }
  }

  objc_msgSend_p_readBuildAttributesForArchive_intoDictionary_(self, v7, archive, v6);
  if (!v8)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[KNBuildAttributes(PersistenceAdditions) initFromBuildAttributesArchive:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributesPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 108, 0, "Nil build effect on unarchive.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    v8 = *MEMORY[0x277D80138];
  }

  v22 = objc_msgSend_initWithEffect_attributes_(self, v14, v8, v6);

  return v22;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  objc_msgSend_p_writeSharedAttributesToArchive_(self, v6, archive);
  objc_msgSend_p_writeBuildAttributesToArchive_archiver_(self, v7, archive, archiverCopy);
  v10 = objc_msgSend_effect(self, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x277D80140]);

  if (isEqualToString)
  {
    objc_msgSend_p_writeAttributesForTypewriterToDiffArchive_archiver_(self, v13, archive, archiverCopy);
  }

  if (objc_msgSend_p_usesAlignToPath(self, v13, v14))
  {
    v15 = UnsafePointer();
    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(archiverCopy, v16, v15, *MEMORY[0x277D808D0], @"KNAlignToPath");
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v17, 37, archive);
  }
}

- (BOOL)p_usesAlignToPath
{
  v3 = objc_msgSend_attributes(self, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"KNBuildCustomAttributesAlignToPath");
  v6 = v5 != 0;

  return v6;
}

- (void)p_readSharedAttributesForArchive:(void *)archive intoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8 = *(archive + 4);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = objc_msgSend_tsp_initWithProtobufString_(v9, v10, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setObject_forKey_(dictionaryCopy, v12, v11, *MEMORY[0x277D80178]);

    v8 = *(archive + 4);
  }

  if ((v8 & 0x800) != 0)
  {
    objc_msgSend_p_setUnsafeDirection_onAttributes_(self, v6, *(archive + 28), dictionaryCopy);
    v8 = *(archive + 4);
  }

  if ((v8 & 0x200) != 0)
  {
    v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v6, v7, *(archive + 12));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v14, v13, @"KNBuildAttributesDefaultDuration");

    v8 = *(archive + 4);
  }

  if ((v8 & 0x400) != 0)
  {
    v15 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v6, v7, *(archive + 13));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v16, v15, @"KNBuildAttributesInitialChunkCreationDelay");

    v8 = *(archive + 4);
  }

  if ((v8 & 0x20) != 0)
  {
    v17 = TSPTSUColorCreateFromMessage();
    objc_msgSend_setObject_forKey_(dictionaryCopy, v18, v17, @"KNAnimationColor");

    v8 = *(archive + 4);
  }

  if ((v8 & 0x1000) != 0)
  {
    v19 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v6, *(archive + 29));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v20, v19, @"KNBuildCustomAttributesRandomNumberSeed");

    v8 = *(archive + 4);
  }

  if ((v8 & 0x40) != 0)
  {
    v21 = objc_alloc(MEMORY[0x277D801C8]);
    if (*(archive + 9))
    {
      v23 = objc_msgSend_initWithArchive_(v21, v22, *(archive + 9));
    }

    else
    {
      v23 = objc_msgSend_initWithArchive_(v21, v22, MEMORY[0x277D804C8]);
    }

    v25 = v23;
    objc_msgSend_setObject_forKeyedSubscript_(dictionaryCopy, v24, v23, @"KNAnimationAttributesCustomEffectTimingCurve1");

    v8 = *(archive + 4);
  }

  if ((v8 & 0x80) != 0)
  {
    v26 = objc_alloc(MEMORY[0x277D801C8]);
    if (*(archive + 10))
    {
      v28 = objc_msgSend_initWithArchive_(v26, v27, *(archive + 10));
    }

    else
    {
      v28 = objc_msgSend_initWithArchive_(v26, v27, MEMORY[0x277D804C8]);
    }

    v30 = v28;
    objc_msgSend_setObject_forKeyedSubscript_(dictionaryCopy, v29, v28, @"KNAnimationAttributesCustomEffectTimingCurve2");

    v8 = *(archive + 4);
  }

  if ((v8 & 0x100) != 0)
  {
    v31 = objc_alloc(MEMORY[0x277D801C8]);
    if (*(archive + 11))
    {
      v33 = objc_msgSend_initWithArchive_(v31, v32, *(archive + 11));
    }

    else
    {
      v33 = objc_msgSend_initWithArchive_(v31, v32, MEMORY[0x277D804C8]);
    }

    v35 = v33;
    objc_msgSend_setObject_forKeyedSubscript_(dictionaryCopy, v34, v33, @"KNAnimationAttributesCustomEffectTimingCurve3");

    v8 = *(archive + 4);
  }

  if ((v8 & 4) != 0)
  {
    v36 = objc_alloc(MEMORY[0x277CCACA8]);
    v38 = objc_msgSend_tsp_initWithProtobufString_(v36, v37, *(archive + 5) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setObject_forKeyedSubscript_(dictionaryCopy, v39, v38, @"KNAnimationAttributesCustomEffectTimingCurveThemeName1");

    v8 = *(archive + 4);
  }

  if ((v8 & 8) != 0)
  {
    v40 = objc_alloc(MEMORY[0x277CCACA8]);
    v42 = objc_msgSend_tsp_initWithProtobufString_(v40, v41, *(archive + 6) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setObject_forKeyedSubscript_(dictionaryCopy, v43, v42, @"KNAnimationAttributesCustomEffectTimingCurveThemeName2");

    v8 = *(archive + 4);
  }

  if ((v8 & 0x10) != 0)
  {
    v44 = objc_alloc(MEMORY[0x277CCACA8]);
    v46 = objc_msgSend_tsp_initWithProtobufString_(v44, v45, *(archive + 7) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setObject_forKeyedSubscript_(dictionaryCopy, v47, v46, @"KNAnimationAttributesCustomEffectTimingCurveThemeName3");

    v8 = *(archive + 4);
  }

  if ((v8 & 0x2000) != 0)
  {
    v48 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v6, v7, *(archive + 15));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v49, v48, @"KNBuildCustomAttributesDetail");

    v8 = *(archive + 4);
  }

  if ((v8 & 0x8000) != 0)
  {
    v50 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v6, *(archive + 129));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v51, v50, @"WritingDirectionIsRTL");
  }
}

- (void)p_readBuildAttributesForArchive:(const void *)archive intoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = *(archive + 4);
  if ((v7 & 0x80) != 0)
  {
    v8 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, *(archive + 21));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v9, v8, @"KNBuildAttributesInitialChunkCreationEventTrigger");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x200) != 0)
  {
    v10 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, *(archive + 12));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v11, v10, @"KNAnimationDelayAutomaticAfter");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x400) != 0)
  {
    v12 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, *(archive + 13));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v13, v12, @"KNAnimationDelayAutomaticWith");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x1000) != 0)
  {
    v14 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, *(archive + 15));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v15, v14, *MEMORY[0x277D80100]);

    v7 = *(archive + 4);
  }

  if ((v7 & 0x2000) != 0)
  {
    v16 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, *(archive + 16));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v17, v16, *MEMORY[0x277D80110]);

    v7 = *(archive + 4);
  }

  if ((v7 & 0x4000) != 0)
  {
    v18 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, *(archive + 17));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v19, v18, *MEMORY[0x277D800F0]);

    v7 = *(archive + 4);
  }

  if ((v7 & 0x8000000) != 0)
  {
    v20 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, *(archive + 47));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v21, v20, @"KNBuildAttributesStartOffset");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x10000000) != 0)
  {
    v22 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, *(archive + 48));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v23, v22, @"KNBuildAttributesEndOffset");
  }

  if ((*(archive + 20) & 4) != 0)
  {
    if (*(archive + 54) == 31)
    {
      objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v5, 31);
    }

    else
    {
      objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v5, 32);
    }
    v24 = ;
    objc_msgSend_setObject_forKey_(dictionaryCopy, v25, v24, *MEMORY[0x277D80108]);
  }

  v26 = *(archive + 4);
  if ((v26 & 0x8000) != 0)
  {
    v27 = *(archive + 36);
    if (v27 >= 5)
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_275E607A0();
        objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v76, 0);
        goto LABEL_27;
      }

      v27 = 0;
    }

    objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v5, v27);
    v28 = LABEL_27:;
    objc_msgSend_setObject_forKey_(dictionaryCopy, v29, v28, *MEMORY[0x277D800E8]);

    v26 = *(archive + 4);
  }

  if ((v26 & 0x20) != 0)
  {
    v37 = objc_alloc(MEMORY[0x277D80238]);
    if (*(archive + 9))
    {
      v39 = objc_msgSend_initWithArchive_(v37, v38, *(archive + 9));
    }

    else
    {
      v39 = objc_msgSend_initWithArchive_(v37, v38, MEMORY[0x277D804C8]);
    }

    v33 = v39;
    objc_msgSend_setObject_forKey_(dictionaryCopy, v40, v39, *MEMORY[0x277D800F8]);
  }

  else
  {
    if ((v26 & 4) == 0)
    {
      goto LABEL_38;
    }

    v30 = objc_alloc(MEMORY[0x277D81160]);
    v32 = *(archive + 6) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v32 + 23) < 0)
    {
      v32 = *v32;
    }

    v33 = objc_msgSend_initWithCString_(v30, v31, v32);
    v35 = objc_msgSend_editableBezierPathSourceWithBezierPath_(MEMORY[0x277D80238], v34, v33);
    objc_msgSend_setObject_forKey_(dictionaryCopy, v36, v35, *MEMORY[0x277D800F8]);
  }

LABEL_38:
  v41 = *(archive + 4);
  if ((v41 & 0x400000) != 0)
  {
    v42 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, *(archive + 180));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v43, v42, @"KNBuildCustomAttributesBounce");

    v41 = *(archive + 4);
  }

  if (v41 < 0)
  {
    v44 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, *(archive + 198));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v45, v44, @"KNBuildCustomAttributesAlignToPath");

    v41 = *(archive + 4);
    if ((v41 & 0x1000000) == 0)
    {
LABEL_42:
      if ((v41 & 0x2000000) == 0)
      {
        goto LABEL_43;
      }

LABEL_47:
      v48 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, *(archive + 183));
      objc_msgSend_setObject_forKey_(dictionaryCopy, v49, v48, @"KNBuildCustomAttributesIncludeEndpoints");

      if ((*(archive + 4) & 0x20000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }

  else if ((v41 & 0x1000000) == 0)
  {
    goto LABEL_42;
  }

  v46 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, *(archive + 182));
  objc_msgSend_setObject_forKey_(dictionaryCopy, v47, v46, @"KNBuildCustomAttributesMotionBlur");

  v41 = *(archive + 4);
  if ((v41 & 0x2000000) != 0)
  {
    goto LABEL_47;
  }

LABEL_43:
  if ((v41 & 0x20000000) != 0)
  {
LABEL_48:
    v50 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, *(archive + 196));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v51, v50, @"KNBuildCustomAttributesShine");
  }

LABEL_49:
  v52 = *(archive + 5);
  if (v52)
  {
    v53 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, *(archive + 25));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v54, v53, @"KNBuildCustomAttributesScaleAmount");

    v52 = *(archive + 5);
  }

  if ((v52 & 2) != 0)
  {
    v55 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, *(archive + 26));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v56, v55, @"KNBuildCustomAttributesTravelDistance");
  }

  v57 = *(archive + 4);
  if ((v57 & 0x40000000) != 0)
  {
    v58 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, *(archive + 197));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v59, v58, @"KNBuildCustomAttributesCursor");

    v57 = *(archive + 4);
  }

  if ((v57 & 0x800000) != 0)
  {
    v60 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, *(archive + 181));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v61, v60, @"KNActionBuildCustomAttributesDecay");

    v57 = *(archive + 4);
  }

  if ((v57 & 0x200000) != 0)
  {
    v62 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, *(archive + 44));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v63, v62, @"KNActionBuildCustomAttributesRepeatCount");

    v57 = *(archive + 4);
  }

  if ((v57 & 0x100000) != 0)
  {
    v64 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, *(archive + 21));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v65, v64, @"KNActionBuildCustomAttributesScale");

    v57 = *(archive + 4);
  }

  if ((v57 & 0x4000000) != 0)
  {
    v66 = *(archive + 46);
    v67 = 1;
    if (v66 == 2)
    {
      v67 = 2;
    }

    if (v66)
    {
      objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v5, v67);
    }

    else
    {
      objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v5, 0);
    }
    v68 = ;
    objc_msgSend_setObject_forKey_(dictionaryCopy, v69, v68, @"KNActionBuildCustomAttributesJiggleIntensity");

    v57 = *(archive + 4);
  }

  if ((v57 & 0x40000) != 0)
  {
    v70 = *(archive + 40);
    if ((v70 - 1) >= 4)
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_275E607B4();
        objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v77, 0);
        goto LABEL_73;
      }

      v70 = 0;
    }

    objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v5, v70);
    v71 = LABEL_73:;
    objc_msgSend_setObject_forKey_(dictionaryCopy, v72, v71, @"KNBuildCustomAttributesTextDelivery");

    v57 = *(archive + 4);
  }

  if ((v57 & 0x80000) == 0)
  {
    goto LABEL_80;
  }

  v73 = *(archive + 41);
  if (v73 >= 6)
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_275E607C8();
      objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v78, 0);
      goto LABEL_79;
    }

    v73 = 0;
  }

  objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v5, v73);
  v74 = LABEL_79:;
  objc_msgSend_setObject_forKey_(dictionaryCopy, v75, v74, @"KNBuildCustomAttributesDeliveryOption");

LABEL_80:
}

- (void)p_readTEFAttributesForArchive:(const void *)archive intoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8 = *(archive + 4);
  if ((v8 & 0x40) != 0)
  {
    objc_msgSend_p_setUnsafeDirection_onAttributes_(self, v6, *(archive + 20), dictionaryCopy);
    v8 = *(archive + 4);
  }

  if ((v8 & 0x800) != 0)
  {
    v9 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v6, v7, *(archive + 14));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v10, v9, @"KNBuildAttributesDefaultDuration");

    v8 = *(archive + 4);
  }

  if ((v8 & 0x100) != 0)
  {
    v11 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v6, v7, *(archive + 11));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v12, v11, @"KNBuildAttributesInitialChunkCreationDelay");

    v8 = *(archive + 4);
  }

  if ((v8 & 8) != 0)
  {
    v13 = TSPTSUColorCreateFromMessage();
    objc_msgSend_setObject_forKey_(dictionaryCopy, v14, v13, @"KNAnimationColor");

    v8 = *(archive + 4);
  }

  if (v8)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = objc_msgSend_tsp_initWithProtobufString_(v15, v16, *(archive + 4) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setObject_forKey_(dictionaryCopy, v18, v17, *MEMORY[0x277D80178]);
  }
}

- (void)p_setUnsafeDirection:(unint64_t)direction onAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (KNIsValidDirection())
  {
    objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v5, direction);
  }

  else
  {
    objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v5, 0);
  }
  v6 = ;
  objc_msgSend_setObject_forKey_(attributesCopy, v7, v6, @"KNBuildAttributesDirection");
}

- (void)p_writeSharedAttributesToArchive:(void *)archive
{
  *(archive + 4) |= 0x10u;
  v4 = *(archive + 8);
  if (!v4)
  {
    v6 = *(archive + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = sub_275E1F5E0(v6);
    *(archive + 8) = v4;
  }

  v7 = objc_msgSend_effect(self, a2, archive);
  v10 = objc_msgSend_tsp_protobufString(v7, v8, v9);
  *(v4 + 16) |= 2u;
  sub_275D55B98(__p, v10);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v79 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = objc_msgSend_attributes(self, v11, v12);
  v15 = objc_msgSend_objectForKey_(v13, v14, *MEMORY[0x277D80178]);
  v18 = objc_msgSend_tsp_protobufString(v15, v16, v17);
  *(v4 + 16) |= 1u;
  sub_275D55B98(__p, v18);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v79 < 0)
  {
    operator delete(__p[0]);
  }

  v20 = objc_msgSend_objectForKey_(v13, v19, @"KNBuildAttributesDirection");

  if (v20)
  {
    v23 = objc_msgSend_intValue(v20, v21, v22);
    *(v4 + 16) |= 0x800u;
    *(v4 + 112) = v23;
  }

  v24 = objc_msgSend_objectForKeyedSubscript_(v13, v21, @"KNBuildAttributesDefaultDuration");

  if (v24)
  {
    objc_msgSend_doubleValue(v24, v25, v26);
    *(v4 + 16) |= 0x200u;
    *(v4 + 96) = v27;
  }

  v28 = objc_msgSend_objectForKeyedSubscript_(v13, v25, @"KNBuildAttributesInitialChunkCreationDelay");

  if (v28)
  {
    objc_msgSend_doubleValue(v28, v29, v30);
    *(v4 + 16) |= 0x400u;
    *(v4 + 104) = v31;
  }

  v32 = objc_msgSend_objectForKey_(v13, v29, @"KNAnimationColor");

  if (v32)
  {
    v34 = v32;
    *(v4 + 16) |= 0x20u;
    if (!*(v4 + 64))
    {
      v35 = *(v4 + 8);
      if (v35)
      {
        v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v4 + 64) = MEMORY[0x277C8F010](v35);
    }

    TSPTSUColorCopyToMessage();
  }

  v36 = objc_msgSend_objectForKey_(v13, v33, @"KNBuildCustomAttributesRandomNumberSeed");

  if (v36)
  {
    v39 = objc_msgSend_intValue(v36, v37, v38);
    *(v4 + 16) |= 0x1000u;
    *(v4 + 116) = v39;
  }

  v40 = objc_msgSend_objectForKey_(v13, v37, @"KNBuildCustomAttributesDetail");

  if (v40)
  {
    objc_msgSend_doubleValue(v40, v41, v42);
    *(v4 + 16) |= 0x2000u;
    *(v4 + 120) = v43;
  }

  v44 = objc_msgSend_objectForKeyedSubscript_(v13, v41, @"KNAnimationAttributesCustomEffectTimingCurve1");

  if (v44)
  {
    v47 = v44;
    *(v4 + 16) |= 0x40u;
    v48 = *(v4 + 72);
    if (!v48)
    {
      v49 = *(v4 + 8);
      if (v49)
      {
        v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
      }

      v48 = MEMORY[0x277C8EFB0](v49);
      *(v4 + 72) = v48;
    }

    objc_msgSend_saveToArchive_(v47, v46, v48);
  }

  v50 = objc_msgSend_objectForKeyedSubscript_(v13, v45, @"KNAnimationAttributesCustomEffectTimingCurve2");

  if (v50)
  {
    v53 = v50;
    *(v4 + 16) |= 0x80u;
    v54 = *(v4 + 80);
    if (!v54)
    {
      v55 = *(v4 + 8);
      if (v55)
      {
        v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
      }

      v54 = MEMORY[0x277C8EFB0](v55);
      *(v4 + 80) = v54;
    }

    objc_msgSend_saveToArchive_(v53, v52, v54);
  }

  v56 = objc_msgSend_objectForKeyedSubscript_(v13, v51, @"KNAnimationAttributesCustomEffectTimingCurve3");

  if (v56)
  {
    v59 = v56;
    *(v4 + 16) |= 0x100u;
    v60 = *(v4 + 88);
    if (!v60)
    {
      v61 = *(v4 + 8);
      if (v61)
      {
        v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
      }

      v60 = MEMORY[0x277C8EFB0](v61);
      *(v4 + 88) = v60;
    }

    objc_msgSend_saveToArchive_(v59, v58, v60);
  }

  v62 = objc_msgSend_objectForKeyedSubscript_(v13, v57, @"KNAnimationAttributesCustomEffectTimingCurveThemeName1");

  if (v62)
  {
    v65 = objc_msgSend_tsp_protobufString(v62, v63, v64);
    *(v4 + 16) |= 4u;
    sub_275D55B98(__p, v65);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v79 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v66 = objc_msgSend_objectForKeyedSubscript_(v13, v63, @"KNAnimationAttributesCustomEffectTimingCurveThemeName2");

  if (v66)
  {
    v69 = objc_msgSend_tsp_protobufString(v66, v67, v68);
    *(v4 + 16) |= 8u;
    sub_275D55B98(__p, v69);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v79 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v70 = objc_msgSend_objectForKeyedSubscript_(v13, v67, @"KNAnimationAttributesCustomEffectTimingCurveThemeName3");

  if (v70)
  {
    v73 = objc_msgSend_tsp_protobufString(v70, v71, v72);
    *(v4 + 16) |= 0x10u;
    sub_275D55B98(__p, v73);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v79 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v74 = objc_msgSend_objectForKey_(v13, v71, @"WritingDirectionIsRTL");

  if (v74)
  {
    v77 = objc_msgSend_BOOLValue(v74, v75, v76);
    *(v4 + 16) |= 0x8000u;
    *(v4 + 129) = v77;
  }
}

- (void)p_writeBuildAttributesToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v8 = objc_msgSend_attributes(self, v6, v7);
  v10 = objc_msgSend_objectForKey_(v8, v9, @"KNBuildAttributesInitialChunkCreationEventTrigger");
  v13 = v10;
  if (v10)
  {
    v14 = objc_msgSend_intValue(v10, v11, v12);
    *(archive + 4) |= 0x80u;
    *(archive + 21) = v14;
  }

  v15 = objc_msgSend_objectForKey_(v8, v11, @"KNBuildAttributesStartOffset");

  if (v15)
  {
    v18 = objc_msgSend_intValue(v15, v16, v17);
    *(archive + 4) |= 0x8000000u;
    *(archive + 47) = v18;
  }

  v19 = objc_msgSend_objectForKey_(v8, v16, @"KNBuildAttributesEndOffset");

  if (v19)
  {
    v22 = objc_msgSend_intValue(v19, v20, v21);
    *(archive + 4) |= 0x10000000u;
    *(archive + 48) = v22;
  }

  v23 = objc_msgSend_objectForKey_(v8, v20, *MEMORY[0x277D80100]);

  if (v23)
  {
    objc_msgSend_doubleValue(v23, v24, v25);
    *(archive + 4) |= 0x1000u;
    *(archive + 15) = v26;
  }

  v27 = objc_msgSend_objectForKey_(v8, v24, *MEMORY[0x277D80108]);

  if (v27)
  {
    if (objc_msgSend_integerValue(v27, v28, v29) == 31)
    {
      v30 = 31;
    }

    else
    {
      v30 = 32;
    }

    *(archive + 5) |= 4u;
    *(archive + 54) = v30;
  }

  v31 = objc_msgSend_objectForKey_(v8, v28, *MEMORY[0x277D80110]);

  if (v31)
  {
    objc_msgSend_doubleValue(v31, v32, v33);
    *(archive + 4) |= 0x2000u;
    *(archive + 16) = v34;
  }

  v35 = objc_msgSend_objectForKey_(v8, v32, *MEMORY[0x277D800F0]);

  if (v35)
  {
    objc_msgSend_doubleValue(v35, v36, v37);
    *(archive + 4) |= 0x4000u;
    *(archive + 17) = v38;
  }

  v39 = objc_msgSend_objectForKey_(v8, v36, *MEMORY[0x277D800E8]);

  if (v39)
  {
    v42 = objc_msgSend_integerValue(v39, v40, v41);
    if (v42 <= 1)
    {
      if (!v42)
      {
        *(archive + 4) |= 0x8000u;
        *(archive + 36) = 0;
        goto LABEL_30;
      }

      if (v42 == 1)
      {
        *(archive + 4) |= 0x8000u;
        v43 = 1;
        goto LABEL_29;
      }
    }

    else
    {
      switch(v42)
      {
        case 2:
          *(archive + 4) |= 0x8000u;
          v43 = 2;
          goto LABEL_29;
        case 3:
          *(archive + 4) |= 0x8000u;
          v43 = 3;
          goto LABEL_29;
        case 4:
          *(archive + 4) |= 0x8000u;
          v43 = 4;
LABEL_29:
          *(archive + 36) = v43;
          goto LABEL_30;
      }
    }

    if (*MEMORY[0x277D81408] != -1)
    {
      sub_275E607DC();
    }
  }

LABEL_30:
  v44 = objc_msgSend_objectForKey_(v8, v40, *MEMORY[0x277D800F8]);

  if (v44)
  {
    v47 = v44;
    *(archive + 4) |= 0x20u;
    v48 = *(archive + 9);
    if (!v48)
    {
      v49 = *(archive + 1);
      if (v49)
      {
        v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
      }

      v48 = MEMORY[0x277C8EFB0](v49);
      *(archive + 9) = v48;
    }

    objc_msgSend_saveToArchive_(v47, v46, v48);
  }

  v50 = objc_msgSend_objectForKey_(v8, v45, @"KNBuildCustomAttributesBounce");

  if (v50)
  {
    v53 = objc_msgSend_BOOLValue(v50, v51, v52);
    *(archive + 4) |= 0x400000u;
    *(archive + 180) = v53;
  }

  v54 = objc_msgSend_objectForKey_(v8, v51, @"KNBuildCustomAttributesAlignToPath");

  if (v54)
  {
    v57 = objc_msgSend_BOOLValue(v54, v55, v56);
    *(archive + 4) |= 0x80000000;
    *(archive + 198) = v57;
  }

  v58 = objc_msgSend_objectForKey_(v8, v55, @"KNBuildCustomAttributesMotionBlur");

  if (v58)
  {
    v61 = objc_msgSend_BOOLValue(v58, v59, v60);
    *(archive + 4) |= 0x1000000u;
    *(archive + 182) = v61;
  }

  v62 = objc_msgSend_objectForKey_(v8, v59, @"KNBuildCustomAttributesIncludeEndpoints");

  if (v62)
  {
    v65 = objc_msgSend_BOOLValue(v62, v63, v64);
    *(archive + 4) |= 0x2000000u;
    *(archive + 183) = v65;
  }

  v66 = objc_msgSend_objectForKey_(v8, v63, @"KNBuildCustomAttributesTravelDistance");

  if (v66)
  {
    objc_msgSend_doubleValue(v66, v67, v68);
    *(archive + 5) |= 2u;
    *(archive + 26) = v69;
  }

  v70 = objc_msgSend_objectForKey_(v8, v67, @"KNBuildCustomAttributesCursor");

  if (v70)
  {
    v73 = objc_msgSend_BOOLValue(v70, v71, v72);
    *(archive + 4) |= 0x40000000u;
    *(archive + 197) = v73;
  }

  v74 = objc_msgSend_objectForKey_(v8, v71, @"KNActionBuildCustomAttributesDecay");

  if (v74)
  {
    v77 = objc_msgSend_BOOLValue(v74, v75, v76);
    *(archive + 4) |= 0x800000u;
    *(archive + 181) = v77;
  }

  v78 = objc_msgSend_objectForKey_(v8, v75, @"KNActionBuildCustomAttributesRepeatCount");

  if (v78)
  {
    v81 = objc_msgSend_intValue(v78, v79, v80);
    *(archive + 4) |= 0x200000u;
    *(archive + 44) = v81;
  }

  v82 = objc_msgSend_objectForKey_(v8, v79, @"KNActionBuildCustomAttributesScale");

  if (v82)
  {
    objc_msgSend_doubleValue(v82, v83, v84);
    *(archive + 4) |= 0x100000u;
    *(archive + 21) = v85;
  }

  v86 = objc_msgSend_objectForKey_(v8, v83, @"KNActionBuildCustomAttributesJiggleIntensity");

  if (v86)
  {
    v89 = objc_msgSend_unsignedIntegerValue(v86, v87, v88);
    if (v89)
    {
      if (v89 == 1)
      {
        *(archive + 4) |= 0x4000000u;
        v90 = 1;
        goto LABEL_60;
      }

      if (v89 == 2)
      {
        *(archive + 4) |= 0x4000000u;
        v90 = 2;
LABEL_60:
        *(archive + 46) = v90;
        goto LABEL_64;
      }

      if (*MEMORY[0x277D81408] != -1)
      {
        sub_275E607F0();
      }
    }

    else
    {
      *(archive + 4) |= 0x4000000u;
      *(archive + 46) = 0;
    }
  }

LABEL_64:
  v91 = objc_msgSend_objectForKey_(v8, v87, @"KNBuildCustomAttributesTextDelivery");

  if (!v91)
  {
    goto LABEL_82;
  }

  v94 = objc_msgSend_unsignedIntegerValue(v91, v92, v93);
  if (v94 <= 1)
  {
    if (v94)
    {
      if (v94 != 1)
      {
        goto LABEL_82;
      }

      v95 = 1;
    }

    else
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_275E60804();
      }

      v95 = 0;
    }
  }

  else
  {
    switch(v94)
    {
      case 2:
        v95 = 2;
        break;
      case 3:
        v95 = 3;
        break;
      case 4:
        v95 = 4;
        break;
      default:
        goto LABEL_82;
    }
  }

  *(archive + 4) |= 0x40000u;
  *(archive + 40) = v95;
LABEL_82:
  v96 = objc_msgSend_objectForKey_(v8, v92, @"KNBuildCustomAttributesDeliveryOption");

  if (!v96)
  {
    goto LABEL_99;
  }

  v99 = objc_msgSend_integerValue(v96, v97, v98);
  if (v99 > 2)
  {
    switch(v99)
    {
      case 3:
        *(archive + 4) |= 0x80000u;
        v100 = 3;
        goto LABEL_98;
      case 4:
        *(archive + 4) |= 0x80000u;
        v100 = 4;
        goto LABEL_98;
      case 5:
        *(archive + 4) |= 0x80000u;
        v100 = 5;
        goto LABEL_98;
    }
  }

  else
  {
    switch(v99)
    {
      case 0:
        *(archive + 4) |= 0x80000u;
        *(archive + 41) = 0;
        goto LABEL_99;
      case 1:
        *(archive + 4) |= 0x80000u;
        v100 = 1;
        goto LABEL_98;
      case 2:
        *(archive + 4) |= 0x80000u;
        v100 = 2;
LABEL_98:
        *(archive + 41) = v100;
        goto LABEL_99;
    }
  }

  if (*MEMORY[0x277D81408] != -1)
  {
    sub_275E60818();
  }

LABEL_99:
  v101 = objc_msgSend_objectForKey_(v8, v97, @"KNBuildCustomAttributesShine");

  if (v101)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v102, 33, archive);
    v105 = objc_msgSend_BOOLValue(v101, v103, v104);
    *(archive + 4) |= 0x20000000u;
    *(archive + 196) = v105;
  }

  v106 = objc_msgSend_objectForKey_(v8, v102, @"KNBuildCustomAttributesScaleAmount");

  if (v106)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v107, 34, archive);
    objc_msgSend_doubleValue(v106, v108, v109);
    *(archive + 5) |= 1u;
    *(archive + 25) = v110;
  }
}

@end