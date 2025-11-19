@interface KNAnimationInfo
+ (id)localizedEffectNamesForAnimationInfos:(id)a3 animationType:(int64_t)a4;
- (BOOL)isDrift;
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsAnimationType:(int64_t)a3;
- (BOOL)supportsCustomAttributeKey:(id)a3;
- (KNAnimationInfo)initWithAnimationClass:(Class)a3;
- (NSArray)customAttributes;
- (NSSet)supportedCustomAttributeKeys;
- (id)customAttributesForAttributeKey:(id)a3;
- (id)customEffectTimingCurveDisplayParametersForAttributes:(id)a3 layoutStyleOnly:(BOOL)a4;
- (id)description;
- (id)localizedNameForType:(int64_t)a3;
- (unint64_t)hash;
@end

@implementation KNAnimationInfo

- (KNAnimationInfo)initWithAnimationClass:(Class)a3
{
  if (a3 && (objc_msgSend_conformsToProtocol_(a3, a2, &unk_2884F5FE0) & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNAnimationInfo initWithAnimationClass:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 30, 0, "The animationClass argument must conform to the KNAnimationPlugin protocol.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v23.receiver = self;
  v23.super_class = KNAnimationInfo;
  v13 = [(KNAnimationInfo *)&v23 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_animationClass, a3);
    v15 = MEMORY[0x277CBEB98];
    v18 = objc_msgSend_supportedTypes(v14->_animationClass, v16, v17);
    v20 = objc_msgSend_setWithArray_(v15, v19, v18);
    validAnimationTypes = v14->_validAnimationTypes;
    v14->_validAnimationTypes = v20;
  }

  return v14;
}

+ (id)localizedEffectNamesForAnimationInfos:(id)a3 animationType:(int64_t)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_275D43768;
  v6[3] = &unk_27A697830;
  v6[4] = a4;
  v4 = objc_msgSend_tsu_setByMappingObjectsUsingBlock_(a3, a2, v6);

  return v4;
}

- (BOOL)isDrift
{
  v3 = objc_msgSend_animationClass(self, a2, v2);
  v5 = objc_msgSend_conformsToProtocol_(v3, v4, &unk_2885461F0);
  if (v5)
  {

    LOBYTE(v5) = MEMORY[0x2821F9670](v3, sel_isDriftAnimation, v6);
  }

  return v5;
}

- (id)customAttributesForAttributeKey:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_customAttributes(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = objc_msgSend_objectForKeyedSubscript_(v14, v10, &unk_2884F35E8);
        isEqual = objc_msgSend_isEqual_(v15, v16, v4);

        if (isEqual)
        {
          v18 = v14;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v20, v24, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_11:

  return v18;
}

- (NSArray)customAttributes
{
  if (objc_opt_respondsToSelector())
  {
    v5 = objc_msgSend_customAttributes(self->_animationClass, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSSet)supportedCustomAttributeKeys
{
  if (!self->_supportedCustomAttributeKeys)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_msgSend_customAttributes(self->_animationClass, v3, v4);
      v7 = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(v5, v6, &unk_2884D4AC0);
      v10 = objc_msgSend_tsu_uniqueObjects(v7, v8, v9);
      supportedCustomAttributeKeys = self->_supportedCustomAttributeKeys;
      self->_supportedCustomAttributeKeys = v10;
    }

    else
    {
      v12 = objc_msgSend_set(MEMORY[0x277CBEB98], v3, v4);
      v5 = self->_supportedCustomAttributeKeys;
      self->_supportedCustomAttributeKeys = v12;
    }
  }

  v13 = self->_supportedCustomAttributeKeys;

  return v13;
}

- (BOOL)supportsCustomAttributeKey:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_supportedCustomAttributeKeys(self, v5, v6);
  v9 = objc_msgSend_containsObject_(v7, v8, v4);

  return v9;
}

- (id)customEffectTimingCurveDisplayParametersForAttributes:(id)a3 layoutStyleOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_msgSend_customEffectTimingCurveDisplayParametersForAttributes_layoutStyleOnly_(self->_animationClass, v7, v6, v4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)localizedNameForType:(int64_t)a3
{
  if ((objc_msgSend_supportsAnimationType_(self, a2, a3) & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNAnimationInfo localizedNameForType:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationInfo.m");
    v10 = KNAnimationTypeAsString();
    v13 = objc_msgSend_animationClass(self, v11, v12);
    v14 = NSStringFromClass(v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v15, v7, v9, 194, 0, "Requesting %{public}@, but that is not a valid type for %{public}@.", v10, v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  animationClass = self->_animationClass;

  return objc_msgSend_localizedMenuString_(animationClass, v5, a3);
}

- (BOOL)supportsAnimationType:(int64_t)a3
{
  validAnimationTypes = self->_validAnimationTypes;
  v4 = KNAnimationTypeAsNumber();
  LOBYTE(validAnimationTypes) = objc_msgSend_containsObject_(validAnimationTypes, v5, v4);

  return validAnimationTypes;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_animationClass(v4, v5, v6);
    v10 = v7 == objc_msgSend_animationClass(self, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x277CCACA8];
  if (self->_animationClass)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v6 = objc_msgSend_stringWithFormat_(v2, v5, @"%@Info", v4);
  }

  else
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@Info", @"KNAnimation");
  }

  v9 = objc_msgSend_hash(v6, v7, v8);

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = KNAnimationInfo;
  v4 = [(KNAnimationInfo *)&v14 description];
  v7 = objc_msgSend_effectIdentifier(self, v5, v6);
  v10 = objc_msgSend_animationFilter(self, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v3, v11, @"%@ %@ %@", v4, v7, v10);

  return v12;
}

@end