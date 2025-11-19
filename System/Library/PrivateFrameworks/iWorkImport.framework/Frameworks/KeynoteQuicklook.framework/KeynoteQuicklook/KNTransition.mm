@interface KNTransition
+ (id)attributeKeyForBindingKeyPath:(id)a3;
+ (id)bindingKeyPathForAttributeKey:(id)a3;
+ (id)bindingMap;
+ (unint64_t)directionTypeForEffect:(id)a3;
- (BOOL)customBounce;
- (BOOL)customMagicMoveFadeUnmatchedObjects;
- (BOOL)customMotionBlur;
- (BOOL)documentIsRTL;
- (BOOL)hasAutomaticTrigger;
- (BOOL)isAutomaticTransition;
- (BOOL)isMagicMove;
- (BOOL)isMagicMoveBased;
- (BOOL)p_supportsCustomEffectTimingCurveForLayoutStyles:(id)a3;
- (BOOL)supportsBounce;
- (BOOL)supportsColor;
- (BOOL)supportsCustomEffectTimingCurve1;
- (BOOL)supportsCustomEffectTimingCurve2;
- (BOOL)supportsCustomEffectTimingCurve3;
- (BOOL)supportsDuration;
- (BOOL)supportsRandomNumberSeedInspection;
- (BOOL)supportsTimingCurves;
- (BOOL)supportsTravelDistance;
- (BOOL)supportsTwist;
- (KNAnimationInfo)animationInfo;
- (KNAnimationPluginMenu)directionMenu;
- (KNTransition)initWithArchive:(const void *)a3 unarchiver:(id)a4 owner:(id)a5;
- (KNTransition)initWithOwner:(id)a3 attributes:(id)a4;
- (NSArray)localizedEventTriggerNames;
- (NSSet)inspectableAttributes;
- (NSString)customEffectTimingCurveThemeName1;
- (NSString)customEffectTimingCurveThemeName2;
- (NSString)customEffectTimingCurveThemeName3;
- (NSString)description;
- (TSDBezierPathSource)customEffectTimingCurve1;
- (TSDBezierPathSource)customEffectTimingCurve2;
- (TSDBezierPathSource)customEffectTimingCurve3;
- (TSUColor)color;
- (double)delay;
- (double)duration;
- (float)customTravelDistance;
- (float)customTwist;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)customMosaicSize;
- (int64_t)customMosaicType;
- (int64_t)customTextDelivery;
- (int64_t)customTimingCurve;
- (int64_t)randomNumberSeed;
- (unint64_t)direction;
- (unint64_t)directionType;
- (unint64_t)p_keynoteVersionFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setAttributes:(id)a3;
@end

@implementation KNTransition

+ (unint64_t)directionTypeForEffect:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_instance(KNAnimationRegistry, v4, v5);
  v8 = objc_msgSend_animationInfoForEffectIdentifier_animationType_(v6, v7, v3, 3);

  v11 = objc_msgSend_directionType(v8, v9, v10);
  return v11;
}

+ (id)bindingMap
{
  if (qword_280A3C590 != -1)
  {
    sub_275E60778();
  }

  v3 = qword_280A3C598;

  return v3;
}

+ (id)bindingKeyPathForAttributeKey:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_bindingMap(a1, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, v4);

  if (!v9)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[KNTransition bindingKeyPathForAttributeKey:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTransition.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 106, 0, "cannot find binding key path for attribute key %@", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  return v9;
}

+ (id)attributeKeyForBindingKeyPath:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_bindingMap(a1, v5, v6);
  v9 = objc_msgSend_allKeysForObject_(v7, v8, v4);
  v12 = objc_msgSend_lastObject(v9, v10, v11);

  if (!v12)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[KNTransition attributeKeyForBindingKeyPath:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTransition.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 112, 0, "cannot find attribute key for binding key path %@", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  return v12;
}

- (KNTransition)initWithOwner:(id)a3 attributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = KNTransition;
  v10 = [(KNTransition *)&v19 initWithOwner:v6];
  if (v10)
  {
    if (!v7)
    {
      v7 = objc_msgSend_defaultAttributesForEffect_(KNTransitionAttributes, v8, *MEMORY[0x277D80160]);
    }

    v11 = MEMORY[0x277CCABB0];
    IsRTL = objc_msgSend_documentIsRTL(v6, v8, v9);
    v14 = objc_msgSend_numberWithBool_(v11, v13, IsRTL);
    v16 = objc_msgSend_attributesBySettingValue_forAttributeKey_(v7, v15, v14, @"WritingDirectionIsRTL");
    attributes = v10->_attributes;
    v10->_attributes = v16;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_owner(self, v5, v6);
  v10 = objc_msgSend_attributes(self, v8, v9);
  v12 = objc_msgSend_initWithOwner_attributes_(v4, v11, v7, v10);

  return v12;
}

- (void)setAttributes:(id)a3
{
  v4 = a3;
  if (self->_attributes != v4)
  {
    v10 = v4;
    objc_msgSend_willModify(self, v5, v6);
    v9 = objc_msgSend_copy(v10, v7, v8);

    objc_storeStrong(&self->_attributes, v9);
    v4 = v9;
  }
}

- (KNAnimationInfo)animationInfo
{
  v4 = objc_msgSend_instance(KNAnimationRegistry, a2, v2);
  v7 = objc_msgSend_effect(self, v5, v6);
  v9 = objc_msgSend_animationInfoForEffectIdentifier_animationType_(v4, v8, v7, 3);

  return v9;
}

- (NSArray)localizedEventTriggerNames
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = sub_275DC204C();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, @"On Tap", &stru_2884D8E20, @"Keynote");
  v11[0] = v4;
  v5 = sub_275DC204C();
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Automatically", &stru_2884D8E20, @"Keynote");
  v11[1] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v11, 2);

  return v9;
}

- (KNAnimationPluginMenu)directionMenu
{
  v4 = objc_msgSend_animationInfo(self, a2, v2);
  v7 = objc_msgSend_animationClass(v4, v5, v6);

  v10 = objc_msgSend_animationPluginMenu(KNAnimationPluginMenu, v8, v9);
  objc_msgSend_fillLocalizedDirectionMenu_forType_(v7, v11, v10, 3);
  if (objc_msgSend_documentIsRTL(self, v12, v13))
  {
    v17 = objc_msgSend_defaultDirection(v10, v14, v15);
    v18 = v17 - 11;
    if (v17 - 11) <= 0xD && ((0x3C03u >> v18))
    {
      v17 = qword_275E79128[v18];
    }

    objc_msgSend_setDefaultDirection_(v10, v16, v17);
  }

  return v10;
}

- (unint64_t)directionType
{
  v3 = objc_msgSend_animationInfo(self, a2, v2);
  v6 = objc_msgSend_directionType(v3, v4, v5);

  return v6;
}

- (unint64_t)direction
{
  if (!objc_msgSend_supportsDirection(self, a2, v2))
  {
    return 0;
  }

  v6 = objc_msgSend_animationPluginMenu(KNAnimationPluginMenu, v4, v5);
  v9 = objc_msgSend_animationInfo(self, v7, v8);
  v12 = objc_msgSend_animationClass(v9, v10, v11);

  objc_msgSend_fillLocalizedDirectionMenu_forType_(v12, v13, v6, 3);
  v15 = objc_msgSend_valueForAttributeKey_(self->_attributes, v14, @"KNTransitionAttributesDirection");
  v18 = v15;
  if (!v15 || (v19 = objc_msgSend_intValue(v15, v16, v17), (objc_msgSend_containsDirection_(v6, v20, v19) & 1) == 0))
  {
    IsRTL = objc_msgSend_documentIsRTL(self, v16, v17);
    v24 = objc_msgSend_defaultDirection(v6, v22, v23);
    v19 = v24;
    if (IsRTL)
    {
      v25 = v24 - 11;
      if (v24 - 11) <= 0xD && ((0x3C03u >> v25))
      {
        v19 = qword_275E79128[v25];
      }
    }
  }

  return v19;
}

- (BOOL)documentIsRTL
{
  v5 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"WritingDirectionIsRTL");
  if (!v5)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = objc_msgSend_owner(self, v3, v4);
    IsRTL = objc_msgSend_documentIsRTL(v7, v8, v9);
    v5 = objc_msgSend_numberWithBool_(v6, v11, IsRTL);
  }

  v12 = objc_msgSend_BOOLValue(v5, v3, v4);

  return v12;
}

- (BOOL)supportsDuration
{
  v4 = objc_msgSend_effect(self, a2, v2);
  if (objc_msgSend_isEqualToString_(v4, v5, *MEMORY[0x277D80138]))
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = objc_msgSend_effect(self, v6, v7);
    v8 = objc_msgSend_isEqualToString_(v9, v10, *MEMORY[0x277D80160]) ^ 1;
  }

  return v8;
}

- (BOOL)supportsBounce
{
  v3 = objc_msgSend_effect(self, a2, v2);
  v5 = objc_msgSend_defaultAttributesForEffect_(KNTransitionAttributes, v4, v3);

  LOBYTE(v3) = objc_msgSend_containsAttributeForKey_(v5, v6, @"KNTransitionCustomAttributesBounce");
  return v3;
}

- (BOOL)supportsColor
{
  v3 = objc_msgSend_effect(self, a2, v2);
  v5 = objc_msgSend_defaultAttributesForEffect_(KNTransitionAttributes, v4, v3);

  LOBYTE(v3) = objc_msgSend_containsAttributeForKey_(v5, v6, @"KNTransitionAttributesColor");
  return v3;
}

- (BOOL)supportsTwist
{
  v3 = objc_msgSend_effect(self, a2, v2);
  v5 = objc_msgSend_defaultAttributesForEffect_(KNTransitionAttributes, v4, v3);

  LOBYTE(v3) = objc_msgSend_containsAttributeForKey_(v5, v6, @"com.apple.iWork.Keynote.BUKTwist.twist");
  return v3;
}

- (BOOL)supportsTravelDistance
{
  v3 = objc_msgSend_effect(self, a2, v2);
  v5 = objc_msgSend_defaultAttributesForEffect_(KNTransitionAttributes, v4, v3);

  LOBYTE(v3) = objc_msgSend_containsAttributeForKey_(v5, v6, @"KNTransitionCustomAttributesTravelDistance");
  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_attributes(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"<%@ %p %@>", v4, self, v7);

  return v9;
}

- (BOOL)hasAutomaticTrigger
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNTransitionAttributesIsAutomatic");
  v5 = objc_msgSend_BOOLValue(v2, v3, v4);

  return v5;
}

- (double)duration
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNTransitionAttributesDuration");
  objc_msgSend_doubleValue(v2, v3, v4);
  v6 = v5;

  return v6;
}

- (double)delay
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNTransitionAttributesDelay");
  objc_msgSend_doubleValue(v2, v3, v4);
  v6 = v5;

  return v6;
}

- (TSUColor)color
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNTransitionAttributesColor");
  v5 = objc_msgSend_copy(v2, v3, v4);

  return v5;
}

- (float)customTwist
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"com.apple.iWork.Keynote.BUKTwist.twist");
  objc_msgSend_floatValue(v2, v3, v4);
  v6 = v5;

  return v6;
}

- (float)customTravelDistance
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNTransitionCustomAttributesTravelDistance");
  objc_msgSend_floatValue(v2, v3, v4);
  v6 = v5;

  return v6;
}

- (int64_t)customMosaicSize
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"com.apple.iWork.Keynote.BLTMosaicFlip.numberOfParticles");
  v5 = objc_msgSend_integerValue(v2, v3, v4);

  return v5;
}

- (int64_t)customMosaicType
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"com.apple.iWork.Keynote.BLTMosaicFlip.type");
  v5 = objc_msgSend_integerValue(v2, v3, v4);

  return v5;
}

- (BOOL)customBounce
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNTransitionCustomAttributesBounce");
  v5 = objc_msgSend_BOOLValue(v2, v3, v4);

  return v5;
}

- (BOOL)customMotionBlur
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNTransitionCustomAttributesMotionBlur");
  v5 = objc_msgSend_BOOLValue(v2, v3, v4);

  return v5;
}

- (int64_t)customTimingCurve
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNTransitionCustomAttributesTimingCurve");
  v5 = objc_msgSend_integerValue(v2, v3, v4);

  return v5;
}

- (int64_t)randomNumberSeed
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNTransitionCustomAttributesRandomNumberSeed");
  v5 = objc_msgSend_unsignedIntValue(v2, v3, v4);

  return v5;
}

- (TSDBezierPathSource)customEffectTimingCurve1
{
  objc_opt_class();
  v4 = objc_msgSend_valueForAttributeKey_(self->_attributes, v3, @"KNAnimationAttributesCustomEffectTimingCurve1");
  v5 = TSUCheckedDynamicCast();

  return v5;
}

- (TSDBezierPathSource)customEffectTimingCurve2
{
  objc_opt_class();
  v4 = objc_msgSend_valueForAttributeKey_(self->_attributes, v3, @"KNAnimationAttributesCustomEffectTimingCurve2");
  v5 = TSUCheckedDynamicCast();

  return v5;
}

- (TSDBezierPathSource)customEffectTimingCurve3
{
  objc_opt_class();
  v4 = objc_msgSend_valueForAttributeKey_(self->_attributes, v3, @"KNAnimationAttributesCustomEffectTimingCurve3");
  v5 = TSUCheckedDynamicCast();

  return v5;
}

- (NSString)customEffectTimingCurveThemeName1
{
  objc_opt_class();
  v4 = objc_msgSend_valueForAttributeKey_(self->_attributes, v3, @"KNAnimationAttributesCustomEffectTimingCurveThemeName1");
  v5 = TSUCheckedDynamicCast();

  return v5;
}

- (NSString)customEffectTimingCurveThemeName2
{
  objc_opt_class();
  v4 = objc_msgSend_valueForAttributeKey_(self->_attributes, v3, @"KNAnimationAttributesCustomEffectTimingCurveThemeName2");
  v5 = TSUCheckedDynamicCast();

  return v5;
}

- (NSString)customEffectTimingCurveThemeName3
{
  objc_opt_class();
  v4 = objc_msgSend_valueForAttributeKey_(self->_attributes, v3, @"KNAnimationAttributesCustomEffectTimingCurveThemeName3");
  v5 = TSUCheckedDynamicCast();

  return v5;
}

- (BOOL)customMagicMoveFadeUnmatchedObjects
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNTransitionCustomAttributesMagicMoveFadeUnmatchedObjects");
  v5 = objc_msgSend_BOOLValue(v2, v3, v4);

  return v5;
}

- (int64_t)customTextDelivery
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNTransitionCustomAttributesTextDelivery");
  v5 = objc_msgSend_integerValue(v2, v3, v4);

  return v5;
}

- (NSSet)inspectableAttributes
{
  v4 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2);
  objc_msgSend_addObject_(v4, v5, @"KNTransitionAttributesIsAutomatic");
  v8 = objc_msgSend_effect(self, v6, v7);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"none");

  if ((isEqualToString & 1) == 0)
  {
    v13 = objc_msgSend_animationInfo(self, v11, v12);
    v16 = objc_msgSend_defaultAttributes(v13, v14, v15);

    v19 = objc_msgSend_allKeys(v16, v17, v18);
    objc_msgSend_addObjectsFromArray_(v4, v20, v19);

    v23 = objc_msgSend_supportsDirection(self, v21, v22);
    objc_msgSend_kn_addOrRemoveObject_withCondition_(v4, v24, @"KNTransitionAttributesDirection", v23);
    hasAutomaticTrigger = objc_msgSend_hasAutomaticTrigger(self, v25, v26);
    objc_msgSend_kn_addOrRemoveObject_withCondition_(v4, v28, @"KNTransitionAttributesDelay", hasAutomaticTrigger);
    v31 = objc_msgSend_supportsDuration(self, v29, v30);
    objc_msgSend_kn_addOrRemoveObject_withCondition_(v4, v32, @"KNTransitionAttributesDuration", v31);
    v35 = objc_msgSend_supportsBounce(self, v33, v34);
    objc_msgSend_kn_addOrRemoveObject_withCondition_(v4, v36, @"KNTransitionCustomAttributesBounce", v35);
    v39 = objc_msgSend_supportsTwist(self, v37, v38);
    objc_msgSend_kn_addOrRemoveObject_withCondition_(v4, v40, @"com.apple.iWork.Keynote.BUKTwist.twist", v39);
    v43 = objc_msgSend_supportsTimingCurves(self, v41, v42);
    objc_msgSend_kn_addOrRemoveObject_withCondition_(v4, v44, @"KNTransitionCustomAttributesTimingCurve", v43);
    v47 = objc_msgSend_supportsRandomNumberSeedInspection(self, v45, v46);
    objc_msgSend_kn_addOrRemoveObject_withCondition_(v4, v48, @"KNTransitionCustomAttributesRandomNumberSeed", v47);
    v51 = objc_msgSend_supportsCustomEffectTimingCurve3(self, v49, v50);
    objc_msgSend_kn_addOrRemoveObject_withCondition_(v4, v52, @"KNAnimationAttributesCustomEffectTimingCurve3", v51);
    if (v51)
    {
      objc_msgSend_kn_addOrRemoveObject_withCondition_(v4, v53, @"KNAnimationAttributesCustomEffectTimingCurve2", 0);
    }

    else
    {
      v56 = objc_msgSend_supportsCustomEffectTimingCurve2(self, v53, v54);
      objc_msgSend_kn_addOrRemoveObject_withCondition_(v4, v57, @"KNAnimationAttributesCustomEffectTimingCurve2", v56);
      if ((v56 & 1) == 0)
      {
        v59 = objc_msgSend_supportsCustomEffectTimingCurve1(self, v55, v58);
        objc_msgSend_kn_addOrRemoveObject_withCondition_(v4, v60, @"KNAnimationAttributesCustomEffectTimingCurve1", v59);
        goto LABEL_7;
      }
    }

    objc_msgSend_kn_addOrRemoveObject_withCondition_(v4, v55, @"KNAnimationAttributesCustomEffectTimingCurve1", 0);
LABEL_7:
  }

  return v4;
}

- (BOOL)isAutomaticTransition
{
  v4 = objc_msgSend_effect(self, a2, v2);
  if (objc_msgSend_isEqualToString_(v4, v5, *MEMORY[0x277D80160]))
  {
    hasAutomaticTrigger = objc_msgSend_hasAutomaticTrigger(self, v6, v7);
  }

  else
  {
    hasAutomaticTrigger = 0;
  }

  return hasAutomaticTrigger;
}

- (BOOL)supportsTimingCurves
{
  v3 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNTransitionCustomAttributesTimingCurve");
  v6 = objc_msgSend_integerValue(v3, v4, v5);

  isCustomEffectTimingCurveEditingEnabled = objc_msgSend_isCustomEffectTimingCurveEditingEnabled(KNAnimationUtils, v7, v8);
  v12 = objc_msgSend_supportsCustomEffectTimingCurve1(self, v10, v11);
  v15 = objc_msgSend_effect(self, v13, v14);
  v17 = objc_msgSend_defaultAttributesForEffect_(KNTransitionAttributes, v16, v15);

  if (v12 && (v6 == 5) | isCustomEffectTimingCurveEditingEnabled & 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = objc_msgSend_containsAttributeForKey_(v17, v18, @"KNTransitionCustomAttributesTimingCurve");
  }

  return v19;
}

- (BOOL)supportsRandomNumberSeedInspection
{
  isRandomNumberSeedInspectionEnabled = objc_msgSend_isRandomNumberSeedInspectionEnabled(KNAnimationUtils, a2, v2);
  if (isRandomNumberSeedInspectionEnabled)
  {
    v7 = objc_msgSend_effect(self, v5, v6);
    v9 = objc_msgSend_defaultAttributesForEffect_(KNTransitionAttributes, v8, v7);

    LOBYTE(v7) = objc_msgSend_containsAttributeForKey_(v9, v10, @"KNTransitionCustomAttributesRandomNumberSeed");
    LOBYTE(isRandomNumberSeedInspectionEnabled) = v7;
  }

  return isRandomNumberSeedInspectionEnabled;
}

- (BOOL)supportsCustomEffectTimingCurve1
{
  v3 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], a2, &unk_2884F3A68, 0);
  LOBYTE(self) = objc_msgSend_p_supportsCustomEffectTimingCurveForLayoutStyles_(self, v4, v3);

  return self;
}

- (BOOL)supportsCustomEffectTimingCurve2
{
  v3 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], a2, &unk_2884F3A80, &unk_2884F3A98, 0);
  LOBYTE(self) = objc_msgSend_p_supportsCustomEffectTimingCurveForLayoutStyles_(self, v4, v3);

  return self;
}

- (BOOL)supportsCustomEffectTimingCurve3
{
  v3 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], a2, &unk_2884F3AB0, 0);
  LOBYTE(self) = objc_msgSend_p_supportsCustomEffectTimingCurveForLayoutStyles_(self, v4, v3);

  return self;
}

- (BOOL)p_supportsCustomEffectTimingCurveForLayoutStyles:(id)a3
{
  v4 = a3;
  isCustomEffectTimingCurveEditingEnabled = objc_msgSend_isCustomEffectTimingCurveEditingEnabled(KNAnimationUtils, v5, v6);
  v10 = objc_msgSend_animationInfo(self, v8, v9);
  v13 = objc_msgSend_attributes(self, v11, v12);
  v16 = objc_msgSend_attributes(v13, v14, v15);
  v18 = objc_msgSend_customEffectTimingCurveDisplayParametersForAttributes_layoutStyleOnly_(v10, v17, v16, 1);

  v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, &unk_2884F3AC8);
  LOBYTE(v10) = objc_msgSend_containsObject_(v4, v21, v20);

  return isCustomEffectTimingCurveEditingEnabled & v10;
}

- (BOOL)isMagicMove
{
  v3 = objc_msgSend_effect(self, a2, v2);
  v5 = objc_msgSend_containsObject_(0, v4, v3);

  return v5;
}

- (BOOL)isMagicMoveBased
{
  v3 = objc_msgSend_effect(self, a2, v2);
  v5 = objc_msgSend_containsObject_(0, v4, v3);

  return v5;
}

- (unint64_t)p_keynoteVersionFromUnarchiver:(id)a3
{
  v3 = a3;
  if (objc_msgSend_hasPreUFFVersion(v3, v4, v5))
  {
    v8 = objc_msgSend_preUFFVersion(v3, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_fileFormatVersion(v3, v6, v7);
    if (v9 >= *MEMORY[0x277D80958])
    {
      if (v9 >= *MEMORY[0x277D80988])
      {
        if (v9 >= *MEMORY[0x277D808C8])
        {
          v10 = &qword_275E79258;
        }

        else
        {
          v10 = &unk_275E79248;
        }
      }

      else
      {
        v10 = &qword_275E79240;
      }
    }

    else
    {
      v10 = &qword_275E79238;
    }

    v8 = *v10;
  }

  return v8;
}

- (KNTransition)initWithArchive:(const void *)a3 unarchiver:(id)a4 owner:(id)a5
{
  v8 = a4;
  v9 = a5;
  v68.receiver = self;
  v68.super_class = KNTransition;
  v10 = [(KNTransition *)&v68 initWithOwner:v9];
  if (v10)
  {
    v11 = [KNTransitionAttributes alloc];
    if (*(a3 + 3))
    {
      v13 = objc_msgSend_initFromTransitionAttributesArchive_(v11, v12, *(a3 + 3));
    }

    else
    {
      v13 = objc_msgSend_initFromTransitionAttributesArchive_(v11, v12, &unk_2812EAAD8);
    }

    v15 = v13;
    v16 = objc_msgSend_valueForAttributeKey_(v13, v14, @"WritingDirectionIsRTL");

    if (!v16)
    {
      v19 = MEMORY[0x277CCABB0];
      IsRTL = objc_msgSend_documentIsRTL(v9, v17, v18);
      v22 = objc_msgSend_numberWithBool_(v19, v21, IsRTL);
      v24 = objc_msgSend_attributesBySettingValue_forAttributeKey_(v15, v23, v22, @"WritingDirectionIsRTL");

      v15 = v24;
    }

    v25 = objc_msgSend_animationInfo(v10, v17, v18);
    v28 = objc_msgSend_instance(KNAnimationRegistry, v26, v27);
    v31 = objc_msgSend_effect(v15, v29, v30);
    v33 = objc_msgSend_animationInfoForEffectIdentifier_animationType_includeObsoleteNames_(v28, v32, v31, 3, 1);

    v36 = objc_msgSend_effectIdentifier(v25, v34, v35);
    v39 = objc_msgSend_animationClass(v25, v37, v38);
    v40 = v36;
    v43 = objc_msgSend_effectIdentifier(v33, v41, v42);
    LOBYTE(v36) = objc_msgSend_isEqualToString_(v43, v44, *MEMORY[0x277D80160]);

    if (v36)
    {
      v47 = v40;
    }

    else
    {
      v48 = objc_msgSend_effectIdentifier(v33, v45, v46);

      v39 = objc_msgSend_animationClass(v33, v49, v50);
      v47 = v48;
    }

    if (objc_msgSend_conformsToProtocol_(v39, v45, &unk_28852EB30))
    {
      v66 = v8;
      v53 = objc_msgSend_p_keynoteVersionFromUnarchiver_(v10, v51, v8);
      v56 = objc_msgSend_attributes(v15, v54, v55);
      v67 = v56;
      objc_msgSend_upgradeAttributes_animationName_oldAnimationName_warning_type_isFromClassic_version_(v39, v57, &v67, v47, v40, 0, 3, 0, v53);
      v58 = v67;

      if (v56 != v58)
      {
        objc_msgSend_willModifyForUpgrade(v10, v59, v60);
        v62 = objc_msgSend_attributesWithEffect_attributes_(KNTransitionAttributes, v61, v47, v58);

        v15 = v62;
      }

      v8 = v66;
    }

    v63 = objc_msgSend_copy(v15, v51, v52);
    attributes = v10->_attributes;
    v10->_attributes = v63;
  }

  return v10;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v12 = a4;
  v9 = objc_msgSend_attributes(self, v6, v7);
  *(a3 + 4) |= 1u;
  v10 = *(a3 + 3);
  if (!v10)
  {
    v11 = *(a3 + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = sub_275E1F66C(v11);
    *(a3 + 3) = v10;
  }

  objc_msgSend_encodeToArchive_(v9, v8, v10);
}

@end