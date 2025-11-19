@interface KNAnimationAttributes
+ (BOOL)customAttributeKeyIsValid:(id)a3;
+ (id)attributesWithEffect:(id)a3 attributes:(id)a4;
+ (id)supportedCustomAttributes;
- (BOOL)containsAttributeForKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (KNAnimationAttributes)initWithEffect:(id)a3 attributes:(id)a4;
- (id)attributesAdjustedForTheme:(id)a3;
- (id)attributesByAddingAttributes:(id)a3;
- (id)attributesByAddingAttributesFromDictionary:(id)a3;
- (id)attributesByChangingEffectToEffect:(id)a3;
- (id)attributesByRemovingAttributeForKey:(id)a3;
- (id)attributesBySettingValue:(id)a3 forAttributeKey:(id)a4;
- (id)attributesByUpdatingThemeCurveNamesWithOldToNewCurveNameMap:(id)a3;
- (id)description;
- (id)p_curveForNameKey:(id)a3 forTheme:(id)a4;
- (unint64_t)hash;
@end

@implementation KNAnimationAttributes

+ (id)attributesWithEffect:(id)a3 attributes:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithEffect_attributes_(v7, v8, v6, v5);

  return v9;
}

+ (id)supportedCustomAttributes
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[KNAnimationAttributes supportedCustomAttributes]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationAttributes.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 32, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "+[KNAnimationAttributes supportedCustomAttributes]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

+ (BOOL)customAttributeKeyIsValid:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[KNAnimationAttributes customAttributeKeyIsValid:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationAttributes.m");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 37, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v20 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v18, "+[KNAnimationAttributes customAttributeKeyIsValid:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, v15, v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (KNAnimationAttributes)initWithEffect:(id)a3 attributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = KNAnimationAttributes;
  v10 = [(KNAnimationAttributes *)&v18 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    effect = v10->_effect;
    v10->_effect = v11;

    v15 = objc_msgSend_copy(v7, v13, v14);
    attributes = v10->_attributes;
    v10->_attributes = v15;
  }

  return v10;
}

- (id)attributesByAddingAttributes:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNAnimationAttributes attributesByAddingAttributes:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationAttributes.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 57, 0, "Invalid parameter not satisfying: %{public}s", "otherAttributes != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_effect(v6, v4, v5);

  if (!v14)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[KNAnimationAttributes attributesByAddingAttributes:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationAttributes.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 58, 0, "Invalid parameter not satisfying: %{public}s", "otherAttributes.effect != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v24 = objc_msgSend_mutableCopy(self->_attributes, v15, v16);
  v27 = objc_msgSend_attributes(v6, v25, v26);
  objc_msgSend_addEntriesFromDictionary_(v24, v28, v27);

  v29 = objc_opt_class();
  v32 = objc_msgSend_effect(v6, v30, v31);
  v34 = objc_msgSend_attributesWithEffect_attributes_(v29, v33, v32, v24);

  return v34;
}

- (id)attributesBySettingValue:(id)a3 forAttributeKey:(id)a4
{
  v6 = a3;
  v9 = a4;
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNAnimationAttributes attributesBySettingValue:forAttributeKey:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationAttributes.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 69, 0, "invalid nil value for '%{public}s'", "attributeKey");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_mutableCopy(self->_attributes, v7, v8);
  v19 = v17;
  if (v6)
  {
    objc_msgSend_setObject_forKey_(v17, v18, v6, v9);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(v17, v18, v9);
  }

  v20 = objc_opt_class();
  v22 = objc_msgSend_attributesWithEffect_attributes_(v20, v21, self->_effect, v19);

  return v22;
}

- (id)attributesByChangingEffectToEffect:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_attributesWithEffect_attributes_(v5, v6, v4, self->_attributes);

  return v7;
}

- (id)attributesByAddingAttributesFromDictionary:(id)a3
{
  attributes = self->_attributes;
  v5 = a3;
  v8 = objc_msgSend_mutableCopy(attributes, v6, v7);
  objc_msgSend_addEntriesFromDictionary_(v8, v9, v5);

  v10 = objc_opt_class();
  v12 = objc_msgSend_attributesWithEffect_attributes_(v10, v11, self->_effect, v8);

  return v12;
}

- (id)attributesByRemovingAttributeForKey:(id)a3
{
  attributes = self->_attributes;
  v5 = a3;
  v8 = objc_msgSend_mutableCopy(attributes, v6, v7);
  objc_msgSend_removeObjectForKey_(v8, v9, v5);

  v10 = objc_opt_class();
  v12 = objc_msgSend_attributesWithEffect_attributes_(v10, v11, self->_effect, v8);

  return v12;
}

- (BOOL)containsAttributeForKey:(id)a3
{
  v3 = objc_msgSend_valueForAttributeKey_(self, a2, a3);
  v4 = v3 != 0;

  return v4;
}

- (id)attributesAdjustedForTheme:(id)a3
{
  v4 = a3;
  v6 = self;
  if (!v4)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNAnimationAttributes attributesAdjustedForTheme:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationAttributes.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 117, 0, "invalid nil value for '%{public}s'", "theme");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v5, 3);
  v16 = objc_msgSend_p_curveForNameKey_forTheme_(v6, v15, @"KNAnimationAttributesCustomEffectTimingCurveThemeName1", v4);
  objc_msgSend_tsu_setNonNilObject_forKey_(v14, v17, v16, @"KNAnimationAttributesCustomEffectTimingCurve1");
  v19 = objc_msgSend_p_curveForNameKey_forTheme_(v6, v18, @"KNAnimationAttributesCustomEffectTimingCurveThemeName2", v4);
  objc_msgSend_tsu_setNonNilObject_forKey_(v14, v20, v19, @"KNAnimationAttributesCustomEffectTimingCurve2");
  v22 = objc_msgSend_p_curveForNameKey_forTheme_(v6, v21, @"KNAnimationAttributesCustomEffectTimingCurveThemeName3", v4);
  objc_msgSend_tsu_setNonNilObject_forKey_(v14, v23, v22, @"KNAnimationAttributesCustomEffectTimingCurve3");
  if (objc_msgSend_count(v14, v24, v25))
  {
    v27 = objc_msgSend_attributesByAddingAttributesFromDictionary_(v6, v26, v14);

    v6 = v27;
  }

  return v6;
}

- (id)attributesByUpdatingThemeCurveNamesWithOldToNewCurveNameMap:(id)a3
{
  v4 = a3;
  v5 = self;
  if (objc_msgSend_count(v4, v6, v7))
  {
    v10 = objc_msgSend_attributes(v5, v8, v9);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"KNAnimationAttributesCustomEffectTimingCurveThemeName1");
    v14 = objc_msgSend_objectForKeyedSubscript_(v10, v13, @"KNAnimationAttributesCustomEffectTimingCurveThemeName2");
    v16 = objc_msgSend_objectForKeyedSubscript_(v10, v15, @"KNAnimationAttributesCustomEffectTimingCurveThemeName3");
    v35 = v12;
    v18 = objc_msgSend_objectForKeyedSubscript_(v4, v17, v12);
    v34 = v14;
    v20 = objc_msgSend_objectForKeyedSubscript_(v4, v19, v14);
    v33 = v16;
    v22 = objc_msgSend_objectForKeyedSubscript_(v4, v21, v16);
    v24 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v23, v10);
    objc_msgSend_tsu_setNonNilObject_forKey_(v24, v25, v18, @"KNAnimationAttributesCustomEffectTimingCurveThemeName1");
    objc_msgSend_tsu_setNonNilObject_forKey_(v24, v26, v20, @"KNAnimationAttributesCustomEffectTimingCurveThemeName2");
    objc_msgSend_tsu_setNonNilObject_forKey_(v24, v27, v22, @"KNAnimationAttributesCustomEffectTimingCurveThemeName3");
    if (objc_msgSend_count(v24, v28, v29))
    {
      v31 = objc_msgSend_attributesByAddingAttributesFromDictionary_(v5, v30, v24);

      v5 = v31;
    }
  }

  return v5;
}

- (id)p_curveForNameKey:(id)a3 forTheme:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_msgSend_attributes(self, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, v7);

  if (v12)
  {
    v14 = objc_msgSend_customTimingCurveWithName_(v6, v13, v12);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_effect(self, v5, v6);
  v10 = objc_msgSend_attributes(self, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v3, v11, @"<%@ %p %@ %@>", v4, self, v7, v10);

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  v8 = objc_msgSend_effect(v5, v6, v7);
  v11 = objc_msgSend_effect(self, v9, v10);
  if (objc_msgSend_isEqualToString_(v8, v12, v11))
  {
    v15 = objc_msgSend_attributes(v5, v13, v14);
    v18 = objc_msgSend_attributes(self, v16, v17);
    isEqual = objc_msgSend_isEqual_(v15, v19, v18);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_attributes(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_effect(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 + v7;
}

@end