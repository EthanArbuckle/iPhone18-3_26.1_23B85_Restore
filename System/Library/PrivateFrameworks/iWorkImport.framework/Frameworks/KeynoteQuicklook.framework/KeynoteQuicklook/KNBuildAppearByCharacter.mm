@interface KNBuildAppearByCharacter
+ (BOOL)shouldWarnOnUpgradeWithOldAnimationName:(id)name version:(unint64_t)version;
+ (NSArray)obsoleteAnimationNames;
+ (id)customAttributes;
+ (id)defaultAttributes;
+ (id)localizedAnimationStringForUpgradeWarning:(int64_t)warning;
+ (unint64_t)p_legacyDirectionWithDirection:(unint64_t)direction type:(int64_t)type;
+ (unint64_t)p_textDeliveryOptionWithDirection:(unint64_t)direction type:(int64_t)type isClassic:(BOOL)classic;
+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int64_t)type isToClassic:(BOOL)classic version:(unint64_t)version;
+ (void)upgradeAttributes:(id *)attributes animationName:(id)name oldAnimationName:(id)animationName warning:(id *)warning type:(int64_t)type isFromClassic:(BOOL)classic version:(unint64_t)version;
@end

@implementation KNBuildAppearByCharacter

+ (id)defaultAttributes
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"KNBuildAttributesDefaultDuration";
  v4[1] = @"KNBuildCustomAttributesTextDelivery";
  v5[0] = &unk_2884F3BD0;
  v5[1] = &unk_2884F3BA0;
  v4[2] = @"KNBuildCustomAttributesDeliveryOption";
  v5[2] = &unk_2884F3BE8;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 3);

  return v2;
}

+ (id)customAttributes
{
  v2 = objc_msgSend_customAttributesArrayWithTextDeliveryOptions_(KNAnimationUtils, a2, &unk_2884F3EB0);
  v4 = objc_msgSend_customAttributesArrayWithDeliveryOptions_(KNAnimationUtils, v3, &unk_2884F3EC8);
  v6 = objc_msgSend_arrayByAddingObjectsFromArray_(v2, v5, v4);

  return v6;
}

+ (NSArray)obsoleteAnimationNames
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277D80168];
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);

  return v2;
}

+ (unint64_t)p_legacyDirectionWithDirection:(unint64_t)direction type:(int64_t)type
{
  v4 = 99;
  directionCopy = 19;
  if (direction != 99)
  {
    directionCopy = direction;
  }

  if (direction != 19)
  {
    v4 = directionCopy;
  }

  if (type == 2)
  {
    return v4;
  }

  else
  {
    return direction;
  }
}

+ (unint64_t)p_textDeliveryOptionWithDirection:(unint64_t)direction type:(int64_t)type isClassic:(BOOL)classic
{
  if (classic)
  {
    direction = objc_msgSend_p_legacyDirectionWithDirection_type_(self, a2, direction, type);
  }

  if (direction > 113)
  {
    if (direction <= 143)
    {
      if (direction != 114)
      {
        if (direction != 115)
        {
          return 1;
        }

        return 4;
      }
    }

    else
    {
      if (direction == 144)
      {
        return 5;
      }

      if (direction != 172)
      {
        if (direction != 188)
        {
          return 1;
        }

        return 4;
      }
    }

    return 3;
  }

  result = 2;
  if (direction <= 110)
  {
    if (direction == 99)
    {
      return result;
    }

    return 1;
  }

  if (direction == 111)
  {
    return 1;
  }

  if (direction != 112)
  {
    return 5;
  }

  return result;
}

+ (void)upgradeAttributes:(id *)attributes animationName:(id)name oldAnimationName:(id)animationName warning:(id *)warning type:(int64_t)type isFromClassic:(BOOL)classic version:(unint64_t)version
{
  classicCopy = classic;
  animationNameCopy = animationName;
  v14 = animationNameCopy;
  if (version < 0xE94D0C4B44)
  {
    v41 = animationNameCopy;
    isEqualToString = objc_msgSend_isEqualToString_(animationNameCopy, animationNameCopy, *MEMORY[0x277D80138]);
    v14 = v41;
    if ((isEqualToString & 1) == 0)
    {
      v16 = objc_msgSend_isEqualToString_(v41, v41, *MEMORY[0x277D80168]);
      v18 = objc_msgSend_objectForKeyedSubscript_(*attributes, v17, @"KNBuildAttributesDirection");

      if (v18)
      {
        v20 = objc_msgSend_objectForKeyedSubscript_(*attributes, v19, @"KNBuildAttributesDirection");
        v23 = objc_msgSend_unsignedIntegerValue(v20, v21, v22);
      }

      else
      {
        v23 = 111;
      }

      isClassic = objc_msgSend_p_textDeliveryOptionWithDirection_type_isClassic_(self, v19, v23, type, classicCopy);
      if (v16)
      {
        v27 = 3;
      }

      else
      {
        v28 = objc_msgSend_objectForKeyedSubscript_(*attributes, v24, @"KNBuildCustomAttributesTextDelivery");

        if (v28)
        {
          v29 = objc_msgSend_objectForKeyedSubscript_(*attributes, v24, @"KNBuildCustomAttributesTextDelivery");
          v27 = objc_msgSend_unsignedIntegerValue(v29, v30, v31);
        }

        else
        {
          v27 = 1;
        }
      }

      v32 = objc_msgSend_mutableCopy(*attributes, v24, v25);
      v34 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v33, v23);
      objc_msgSend_setObject_forKey_(v32, v35, v34, @"KNBuildAttributesDirection");

      v37 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v36, v27);
      objc_msgSend_setObject_forKey_(v32, v38, v37, @"KNBuildCustomAttributesTextDelivery");

      v39 = v32;
      *attributes = v32;
      *attributes = objc_msgSend_updateDirectionAttributeValue_andCustomTextDirectionValue_turnOffBounce_turnOffMotionBlur_forAttributes_(self, v40, v23, isClassic, 1, 1, v32);

      v14 = v41;
    }
  }
}

+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int64_t)type isToClassic:(BOOL)classic version:(unint64_t)version
{
  if ((type - 1) <= 1 && version <= 0x174876E7FFLL && classic)
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(*attributes, a2, @"KNBuildCustomAttributesDeliveryOption", name, warning);

    if (v13)
    {
      v15 = objc_msgSend_objectForKeyedSubscript_(*attributes, v14, @"KNBuildCustomAttributesDeliveryOption");
      v18 = objc_msgSend_unsignedIntegerValue(v15, v16, v17);

      if ((v18 - 2) > 3)
      {
        v20 = objc_msgSend_p_legacyDirectionWithDirection_type_(self, v19, 19, type);
      }

      else
      {
        v20 = objc_msgSend_p_legacyDirectionWithDirection_type_(self, v19, qword_275E79210[v18 - 2], type);
      }

      v23 = v20;
      v28 = objc_msgSend_mutableCopy(*attributes, v21, v22);
      v25 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v24, v23);
      objc_msgSend_setObject_forKeyedSubscript_(v28, v26, v25, @"direction");

      v27 = v28;
      *attributes = v28;
    }
  }
}

+ (BOOL)shouldWarnOnUpgradeWithOldAnimationName:(id)name version:(unint64_t)version
{
  nameCopy = name;
  v7 = nameCopy;
  v8 = version < 0xE94D0C4B44 && (objc_msgSend_isEqualToString_(nameCopy, v6, *MEMORY[0x277D80168]) & 1) != 0;

  return v8;
}

+ (id)localizedAnimationStringForUpgradeWarning:(int64_t)warning
{
  v4 = sub_275DC204C();
  v6 = v4;
  if (warning == 1)
  {
    objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Appear by Character *AppearByCharacterBuild*", @"Appear by Character", @"Keynote");
  }

  else
  {
    objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Disappear by Character *AppearByCharacterBuild*", @"Disappear by Character", @"Keynote");
  }
  v7 = ;

  return v7;
}

@end