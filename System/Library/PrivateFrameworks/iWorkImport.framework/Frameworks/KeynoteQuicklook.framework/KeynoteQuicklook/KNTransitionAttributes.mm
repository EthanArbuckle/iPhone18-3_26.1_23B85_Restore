@interface KNTransitionAttributes
+ (BOOL)customAttributeKeyIsValid:(id)valid;
+ (id)defaultAttributesForEffect:(id)effect;
+ (id)p_readDeprecatedAttributesForArchive:(const void *)archive intoDictionary:(id)dictionary;
+ (id)supportedCustomAttributes;
+ (void)p_readSharedAttributesForArchive:(void *)archive intoDictionary:(id)dictionary;
+ (void)p_readTransitionAttributesForArchive:(const void *)archive intoDictionary:(id)dictionary;
- (id)initFromTransitionAttributesArchive:(const void *)archive;
- (void)encodeToArchive:(void *)archive;
- (void)p_writeSharedAttributesToArchive:(void *)archive;
- (void)p_writeTransitionAttributesToArchive:(void *)archive;
@end

@implementation KNTransitionAttributes

+ (id)defaultAttributesForEffect:(id)effect
{
  effectCopy = effect;
  v7 = objc_msgSend_instance(KNAnimationRegistry, v5, v6);
  v9 = objc_msgSend_animationInfoForEffectIdentifier_animationType_(v7, v8, effectCopy, 3);

  v12 = objc_msgSend_animationClass(v9, v10, v11);
  v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14);
  v19 = objc_msgSend_defaultAttributes(v12, v16, v17);
  if (v19)
  {
    objc_msgSend_setDictionary_(v15, v18, v19);
  }

  v20 = objc_msgSend_objectForKeyedSubscript_(v15, v18, @"KNTransitionAttributesDuration");

  if (!v20)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v15, v21, &unk_2884F3F30, @"KNTransitionAttributesDuration");
  }

  v22 = *MEMORY[0x277D80178];
  v23 = objc_msgSend_objectForKeyedSubscript_(v15, v21, *MEMORY[0x277D80178]);

  if (!v23)
  {
    v25 = KNAnimationTypeAsString();
    objc_msgSend_setObject_forKeyedSubscript_(v15, v26, v25, v22);
  }

  v27 = objc_msgSend_objectForKeyedSubscript_(v15, v24, @"KNTransitionAttributesDelay");

  if (!v27)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v15, v28, &unk_2884F3D38, @"KNTransitionAttributesDelay");
  }

  v29 = objc_msgSend_objectForKeyedSubscript_(v15, v28, @"KNTransitionAttributesIsAutomatic");

  if (!v29)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v15, v30, MEMORY[0x277CBEC28], @"KNTransitionAttributesIsAutomatic");
  }

  v31 = objc_msgSend_objectForKeyedSubscript_(v15, v30, @"KNTransitionCustomAttributesRandomNumberSeed");

  if (!v31)
  {
    v34 = MEMORY[0x277CCABB0];
    NewSeed = objc_msgSend_generateNewSeed(KNAnimationRandomGenerator, v32, v33);
    v37 = objc_msgSend_numberWithUnsignedInt_(v34, v36, NewSeed);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v38, v37, @"KNTransitionCustomAttributesRandomNumberSeed");
  }

  v39 = objc_msgSend_attributesWithEffect_attributes_(self, v32, effectCopy, v15);

  return v39;
}

+ (id)supportedCustomAttributes
{
  if (qword_280A3C5A8 != -1)
  {
    sub_275E6078C();
  }

  v3 = qword_280A3C5A0;

  return v3;
}

+ (BOOL)customAttributeKeyIsValid:(id)valid
{
  validCopy = valid;
  v7 = objc_msgSend_supportedCustomAttributes(self, v5, v6);
  v9 = objc_msgSend_containsObject_(v7, v8, validCopy);

  return v9;
}

- (id)initFromTransitionAttributesArchive:(const void *)archive
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, archive);
  v6 = objc_opt_class();
  v8 = v6;
  if ((*(archive + 16) & 8) != 0)
  {
    sub_275DE4790(v17, *(archive + 6));
    objc_msgSend_p_readSharedAttributesForArchive_intoDictionary_(v8, v11, v17, v5);
    if ((v17[16] & 2) != 0)
    {
      v12 = objc_alloc(MEMORY[0x277CCACA8]);
      v10 = objc_msgSend_tsp_initWithProtobufString_(v12, v13, v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v10 = 0;
    }

    sub_275DE49FC(v17);
  }

  else
  {
    v10 = objc_msgSend_p_readDeprecatedAttributesForArchive_intoDictionary_(v6, v7, archive, v5);
  }

  objc_msgSend_p_readTransitionAttributesForArchive_intoDictionary_(v8, v9, archive, v5);
  v15 = objc_msgSend_initWithEffect_attributes_(self, v14, v10, v5);

  return v15;
}

- (void)encodeToArchive:(void *)archive
{
  objc_msgSend_p_writeSharedAttributesToArchive_(self, a2, archive);

  MEMORY[0x2821F9670](self, sel_p_writeTransitionAttributesToArchive_, archive);
}

+ (void)p_readSharedAttributesForArchive:(void *)archive intoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = *(archive + 4);
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_tsp_initWithProtobufString_(v8, v9, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setObject_forKey_(dictionaryCopy, v11, v10, *MEMORY[0x277D80178]);

    v7 = *(archive + 4);
  }

  if ((v7 & 0x200) != 0)
  {
    v12 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, *(archive + 12));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v13, v12, @"KNTransitionAttributesDuration");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x800) != 0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, *(archive + 28));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v15, v14, @"KNTransitionAttributesDirection");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x400) != 0)
  {
    v16 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, *(archive + 13));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v17, v16, @"KNTransitionAttributesDelay");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x20) != 0)
  {
    v18 = TSPTSUColorCreateFromMessage();
    objc_msgSend_setObject_forKey_(dictionaryCopy, v19, v18, @"KNTransitionAttributesColor");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x4000) != 0)
  {
    v20 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, *(archive + 128));
    objc_msgSend_setObject_forKeyedSubscript_(dictionaryCopy, v21, v20, @"KNTransitionAttributesIsAutomatic");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x1000) != 0)
  {
    v22 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, *(archive + 29));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v23, v22, @"KNTransitionCustomAttributesRandomNumberSeed");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x40) != 0)
  {
    v24 = objc_alloc(MEMORY[0x277D801C8]);
    if (*(archive + 9))
    {
      v26 = objc_msgSend_initWithArchive_(v24, v25, *(archive + 9));
    }

    else
    {
      v26 = objc_msgSend_initWithArchive_(v24, v25, MEMORY[0x277D804C8]);
    }

    v28 = v26;
    objc_msgSend_setObject_forKey_(dictionaryCopy, v27, v26, @"KNAnimationAttributesCustomEffectTimingCurve1");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x80) != 0)
  {
    v29 = objc_alloc(MEMORY[0x277D801C8]);
    if (*(archive + 10))
    {
      v31 = objc_msgSend_initWithArchive_(v29, v30, *(archive + 10));
    }

    else
    {
      v31 = objc_msgSend_initWithArchive_(v29, v30, MEMORY[0x277D804C8]);
    }

    v33 = v31;
    objc_msgSend_setObject_forKey_(dictionaryCopy, v32, v31, @"KNAnimationAttributesCustomEffectTimingCurve2");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x100) != 0)
  {
    v34 = objc_alloc(MEMORY[0x277D801C8]);
    if (*(archive + 11))
    {
      v36 = objc_msgSend_initWithArchive_(v34, v35, *(archive + 11));
    }

    else
    {
      v36 = objc_msgSend_initWithArchive_(v34, v35, MEMORY[0x277D804C8]);
    }

    v38 = v36;
    objc_msgSend_setObject_forKey_(dictionaryCopy, v37, v36, @"KNAnimationAttributesCustomEffectTimingCurve3");

    v7 = *(archive + 4);
  }

  if ((v7 & 4) != 0)
  {
    v39 = objc_alloc(MEMORY[0x277CCACA8]);
    v41 = objc_msgSend_tsp_initWithProtobufString_(v39, v40, *(archive + 5) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setObject_forKeyedSubscript_(dictionaryCopy, v42, v41, @"KNAnimationAttributesCustomEffectTimingCurveThemeName1");

    v7 = *(archive + 4);
  }

  if ((v7 & 8) != 0)
  {
    v43 = objc_alloc(MEMORY[0x277CCACA8]);
    v45 = objc_msgSend_tsp_initWithProtobufString_(v43, v44, *(archive + 6) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setObject_forKeyedSubscript_(dictionaryCopy, v46, v45, @"KNAnimationAttributesCustomEffectTimingCurveThemeName2");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x10) != 0)
  {
    v47 = objc_alloc(MEMORY[0x277CCACA8]);
    v49 = objc_msgSend_tsp_initWithProtobufString_(v47, v48, *(archive + 7) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setObject_forKeyedSubscript_(dictionaryCopy, v50, v49, @"KNAnimationAttributesCustomEffectTimingCurveThemeName3");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x8000) != 0)
  {
    v51 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, *(archive + 129));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v52, v51, @"WritingDirectionIsRTL");
  }
}

+ (void)p_readTransitionAttributesForArchive:(const void *)archive intoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = *(archive + 4);
  if ((v7 & 0x2000) != 0)
  {
    v8 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, *(archive + 87));
    objc_msgSend_setObject_forKeyedSubscript_(dictionaryCopy, v9, v8, @"KNTransitionAttributesIsAutomatic");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x80) != 0)
  {
    v10 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, *(archive + 18));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v11, v10, @"com.apple.iWork.Keynote.BUKTwist.twist");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x100) != 0)
  {
    v12 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, *(archive + 19));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v13, v12, @"com.apple.iWork.Keynote.BLTMosaicFlip.numberOfParticles");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x200) != 0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, *(archive + 20));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v15, v14, @"com.apple.iWork.Keynote.BLTMosaicFlip.type");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x400) != 0)
  {
    v16 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, *(archive + 84));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v17, v16, @"KNTransitionCustomAttributesBounce");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x1000) != 0)
  {
    v18 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, *(archive + 86));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v19, v18, @"KNTransitionCustomAttributesMotionBlur");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x800) != 0)
  {
    v20 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, *(archive + 85));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v21, v20, @"KNTransitionCustomAttributesMagicMoveFadeUnmatchedObjects");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x4000) != 0)
  {
    v22 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, *(archive + 22));
    objc_msgSend_setObject_forKey_(dictionaryCopy, v23, v22, @"KNTransitionCustomAttributesTravelDistance");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x8000) != 0)
  {
    v24 = *(archive + 23);
    if ((v24 - 1) >= 5)
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_275E608E0();
        objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v30, 0);
        goto LABEL_22;
      }

      v24 = 0;
    }

    objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v5, v24);
    v25 = LABEL_22:;
    objc_msgSend_setObject_forKey_(dictionaryCopy, v26, v25, @"KNTransitionCustomAttributesTimingCurve");

    v7 = *(archive + 4);
  }

  if ((v7 & 0x10000) == 0)
  {
    goto LABEL_29;
  }

  v27 = *(archive + 24);
  if ((v27 - 1) >= 4)
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_275E608F4();
      objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v31, 0);
      goto LABEL_28;
    }

    v27 = 0;
  }

  objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v5, v27);
  v28 = LABEL_28:;
  objc_msgSend_setObject_forKey_(dictionaryCopy, v29, v28, @"KNTransitionCustomAttributesTextDelivery");

LABEL_29:
}

+ (id)p_readDeprecatedAttributesForArchive:(const void *)archive intoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8 = *(archive + 4);
  if ((v8 & 2) != 0)
  {
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = objc_msgSend_tsp_initWithProtobufString_(v10, v11, *(archive + 4) & 0xFFFFFFFFFFFFFFFELL);
    v8 = *(archive + 4);
    v9 = v12;
    if ((v8 & 0x20) == 0)
    {
LABEL_3:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_3;
    }
  }

  v13 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, *(archive + 16));
  objc_msgSend_setObject_forKey_(dictionaryCopy, v14, v13, @"KNTransitionAttributesDirection");

  v8 = *(archive + 4);
  if ((v8 & 0x10) == 0)
  {
LABEL_4:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v15 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, *(archive + 7));
  objc_msgSend_setObject_forKey_(dictionaryCopy, v16, v15, @"KNTransitionAttributesDuration");

  v8 = *(archive + 4);
  if ((v8 & 0x40) == 0)
  {
LABEL_5:
    if ((v8 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v19 = TSPTSUColorCreateFromMessage();
    objc_msgSend_setObject_forKey_(dictionaryCopy, v20, v19, @"KNTransitionAttributesColor");

    if ((*(archive + 4) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  v17 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, *(archive + 17));
  objc_msgSend_setObject_forKey_(dictionaryCopy, v18, v17, @"KNTransitionAttributesDelay");

  v8 = *(archive + 4);
  if ((v8 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if (v8)
  {
LABEL_13:
    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = objc_msgSend_tsp_initWithProtobufString_(v21, v22, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setObject_forKey_(dictionaryCopy, v24, v23, *MEMORY[0x277D80178]);
  }

LABEL_14:

  return v9;
}

- (void)p_writeSharedAttributesToArchive:(void *)archive
{
  *(archive + 4) |= 8u;
  v4 = *(archive + 6);
  if (!v4)
  {
    v6 = *(archive + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = sub_275E1F5E0(v6);
    *(archive + 6) = v4;
  }

  v7 = objc_msgSend_effect(self, a2, archive);
  v12 = objc_msgSend_attributes(self, v8, v9);
  if (v7)
  {
    v13 = objc_msgSend_tsp_protobufString(v7, v10, v11);
    *(v4 + 16) |= 2u;
    sub_275D55B98(__p, v13);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v87 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = objc_msgSend_objectForKey_(v12, v10, *MEMORY[0x277D80178]);
  if (!v14)
  {
    v14 = KNAnimationTypeAsString();
  }

  v15 = v14;
  v18 = objc_msgSend_UTF8String(v15, v16, v17);
  *(v4 + 16) |= 1u;
  sub_275D55B98(__p, v18);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  v20 = objc_msgSend_objectForKey_(v12, v19, @"KNTransitionAttributesDirection");

  if (v20)
  {
    v23 = objc_msgSend_intValue(v20, v21, v22);
    *(v4 + 16) |= 0x800u;
    *(v4 + 112) = v23;
  }

  v24 = objc_msgSend_objectForKey_(v12, v21, @"KNTransitionAttributesDuration");

  if (v24)
  {
    objc_msgSend_floatValue(v24, v25, v26);
    *(v4 + 16) |= 0x200u;
    *(v4 + 96) = v27;
  }

  v28 = objc_msgSend_objectForKey_(v12, v25, @"KNTransitionAttributesDelay");

  if (v28)
  {
    objc_msgSend_floatValue(v28, v29, v30);
    *(v4 + 16) |= 0x400u;
    *(v4 + 104) = v31;
  }

  v32 = objc_msgSend_objectForKey_(v12, v29, @"KNTransitionAttributesColor");

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

  v36 = objc_msgSend_objectForKeyedSubscript_(v12, v33, @"KNTransitionAttributesIsAutomatic");

  if (v36)
  {
    objc_opt_class();
    v38 = TSUDynamicCast();
    v41 = objc_msgSend_BOOLValue(v38, v39, v40);

    *(v4 + 16) |= 0x4000u;
    *(v4 + 128) = v41;
  }

  v42 = objc_msgSend_objectForKey_(v12, v37, @"KNTransitionCustomAttributesRandomNumberSeed");

  if (v42)
  {
    v45 = objc_msgSend_intValue(v42, v43, v44);
    *(v4 + 16) |= 0x1000u;
    *(v4 + 116) = v45;
  }

  v46 = objc_msgSend_objectForKey_(v12, v43, @"KNAnimationAttributesCustomEffectTimingCurve1");

  if (v46)
  {
    v49 = v46;
    *(v4 + 16) |= 0x40u;
    v50 = *(v4 + 72);
    if (!v50)
    {
      v51 = *(v4 + 8);
      if (v51)
      {
        v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
      }

      v50 = MEMORY[0x277C8EFB0](v51);
      *(v4 + 72) = v50;
    }

    objc_msgSend_saveToArchive_(v49, v48, v50);
  }

  v52 = objc_msgSend_objectForKey_(v12, v47, @"KNAnimationAttributesCustomEffectTimingCurve2");

  if (v52)
  {
    v55 = v52;
    *(v4 + 16) |= 0x80u;
    v56 = *(v4 + 80);
    if (!v56)
    {
      v57 = *(v4 + 8);
      if (v57)
      {
        v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
      }

      v56 = MEMORY[0x277C8EFB0](v57);
      *(v4 + 80) = v56;
    }

    objc_msgSend_saveToArchive_(v55, v54, v56);
  }

  v58 = objc_msgSend_objectForKey_(v12, v53, @"KNAnimationAttributesCustomEffectTimingCurve3");

  if (v58)
  {
    v61 = v58;
    *(v4 + 16) |= 0x100u;
    v62 = *(v4 + 88);
    if (!v62)
    {
      v63 = *(v4 + 8);
      if (v63)
      {
        v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
      }

      v62 = MEMORY[0x277C8EFB0](v63);
      *(v4 + 88) = v62;
    }

    objc_msgSend_saveToArchive_(v61, v60, v62);
  }

  v64 = objc_msgSend_objectForKeyedSubscript_(v12, v59, @"KNAnimationAttributesCustomEffectTimingCurveThemeName1");

  if (v64)
  {
    v66 = v64;
    v69 = objc_msgSend_UTF8String(v66, v67, v68);
    *(v4 + 16) |= 4u;
    sub_275D55B98(__p, v69);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v87 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v70 = objc_msgSend_objectForKeyedSubscript_(v12, v65, @"KNAnimationAttributesCustomEffectTimingCurveThemeName2");

  if (v70)
  {
    v72 = v70;
    v75 = objc_msgSend_UTF8String(v72, v73, v74);
    *(v4 + 16) |= 8u;
    sub_275D55B98(__p, v75);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v87 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v76 = objc_msgSend_objectForKeyedSubscript_(v12, v71, @"KNAnimationAttributesCustomEffectTimingCurveThemeName3");

  if (v76)
  {
    v78 = v76;
    v81 = objc_msgSend_UTF8String(v78, v79, v80);
    *(v4 + 16) |= 0x10u;
    sub_275D55B98(__p, v81);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v87 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v82 = objc_msgSend_objectForKey_(v12, v77, @"WritingDirectionIsRTL");

  if (v82)
  {
    v85 = objc_msgSend_BOOLValue(v82, v83, v84);
    *(v4 + 16) |= 0x8000u;
    *(v4 + 129) = v85;
  }
}

- (void)p_writeTransitionAttributesToArchive:(void *)archive
{
  v4 = objc_msgSend_attributes(self, a2, archive);
  v6 = objc_msgSend_objectForKey_(v4, v5, @"com.apple.iWork.Keynote.BUKTwist.twist");
  v9 = v6;
  if (v6)
  {
    objc_msgSend_floatValue(v6, v7, v8);
    *(archive + 4) |= 0x80u;
    *(archive + 18) = v10;
  }

  v11 = objc_msgSend_objectForKey_(v4, v7, @"com.apple.iWork.Keynote.BLTMosaicFlip.numberOfParticles");

  if (v11)
  {
    v14 = objc_msgSend_unsignedIntValue(v11, v12, v13);
    *(archive + 4) |= 0x100u;
    *(archive + 19) = v14;
  }

  v15 = objc_msgSend_objectForKey_(v4, v12, @"com.apple.iWork.Keynote.BLTMosaicFlip.type");

  if (v15)
  {
    v18 = objc_msgSend_unsignedIntValue(v15, v16, v17);
    *(archive + 4) |= 0x200u;
    *(archive + 20) = v18;
  }

  v19 = objc_msgSend_objectForKey_(v4, v16, @"KNTransitionCustomAttributesMotionBlur");

  if (v19)
  {
    v22 = objc_msgSend_BOOLValue(v19, v20, v21);
    *(archive + 4) |= 0x1000u;
    *(archive + 86) = v22;
  }

  v23 = objc_msgSend_objectForKey_(v4, v20, @"KNTransitionCustomAttributesBounce");

  if (v23)
  {
    v26 = objc_msgSend_BOOLValue(v23, v24, v25);
    *(archive + 4) |= 0x400u;
    *(archive + 84) = v26;
  }

  v27 = objc_msgSend_objectForKey_(v4, v24, @"KNTransitionCustomAttributesMagicMoveFadeUnmatchedObjects");

  if (v27)
  {
    v30 = objc_msgSend_BOOLValue(v27, v28, v29);
    *(archive + 4) |= 0x800u;
    *(archive + 85) = v30;
  }

  v31 = objc_msgSend_objectForKey_(v4, v28, @"KNTransitionCustomAttributesTravelDistance");

  if (v31)
  {
    objc_msgSend_floatValue(v31, v32, v33);
    *(archive + 4) |= 0x4000u;
    *(archive + 22) = v34;
  }

  v35 = objc_msgSend_objectForKey_(v4, v32, @"KNTransitionCustomAttributesTimingCurve");

  if (v35)
  {
    v38 = objc_msgSend_integerValue(v35, v36, v37);
    if (v38 > 2)
    {
      switch(v38)
      {
        case 3:
          *(archive + 4) |= 0x8000u;
          v39 = 3;
          break;
        case 4:
          *(archive + 4) |= 0x8000u;
          v39 = 4;
          break;
        case 5:
          *(archive + 4) |= 0x8000u;
          v39 = 5;
          break;
        default:
          goto LABEL_31;
      }

      goto LABEL_30;
    }

    if (v38)
    {
      if (v38 == 1)
      {
        *(archive + 4) |= 0x8000u;
        v39 = 1;
      }

      else
      {
        if (v38 != 2)
        {
          goto LABEL_31;
        }

        *(archive + 4) |= 0x8000u;
        v39 = 2;
      }

LABEL_30:
      *(archive + 23) = v39;
      goto LABEL_31;
    }

    if (*MEMORY[0x277D81408] != -1)
    {
      sub_275E60908();
    }
  }

LABEL_31:
  v44 = objc_msgSend_objectForKeyedSubscript_(v4, v36, @"KNTransitionCustomAttributesTextDelivery");

  if (!v44)
  {
    goto LABEL_43;
  }

  v42 = objc_msgSend_integerValue(v44, v40, v41);
  if (v42 > 1)
  {
    switch(v42)
    {
      case 2:
        *(archive + 4) |= 0x10000u;
        v43 = 2;
        break;
      case 3:
        *(archive + 4) |= 0x10000u;
        v43 = 3;
        break;
      case 4:
        *(archive + 4) |= 0x10000u;
        v43 = 4;
        break;
      default:
        goto LABEL_43;
    }

LABEL_42:
    *(archive + 24) = v43;
    goto LABEL_43;
  }

  if (v42)
  {
    if (v42 != 1)
    {
      goto LABEL_43;
    }

    *(archive + 4) |= 0x10000u;
    v43 = 1;
    goto LABEL_42;
  }

  if (*MEMORY[0x277D81408] != -1)
  {
    sub_275E6091C();
  }

LABEL_43:
}

@end