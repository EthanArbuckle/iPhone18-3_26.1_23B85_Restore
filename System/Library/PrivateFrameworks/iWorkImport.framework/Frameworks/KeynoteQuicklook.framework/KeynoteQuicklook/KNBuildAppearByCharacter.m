@interface KNBuildAppearByCharacter
+ (BOOL)shouldWarnOnUpgradeWithOldAnimationName:(id)a3 version:(unint64_t)a4;
+ (NSArray)obsoleteAnimationNames;
+ (id)customAttributes;
+ (id)defaultAttributes;
+ (id)localizedAnimationStringForUpgradeWarning:(int64_t)a3;
+ (unint64_t)p_legacyDirectionWithDirection:(unint64_t)a3 type:(int64_t)a4;
+ (unint64_t)p_textDeliveryOptionWithDirection:(unint64_t)a3 type:(int64_t)a4 isClassic:(BOOL)a5;
+ (void)downgradeAttributes:(id *)a3 animationName:(id *)a4 warning:(id *)a5 type:(int64_t)a6 isToClassic:(BOOL)a7 version:(unint64_t)a8;
+ (void)upgradeAttributes:(id *)a3 animationName:(id)a4 oldAnimationName:(id)a5 warning:(id *)a6 type:(int64_t)a7 isFromClassic:(BOOL)a8 version:(unint64_t)a9;
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

+ (unint64_t)p_legacyDirectionWithDirection:(unint64_t)a3 type:(int64_t)a4
{
  v4 = 99;
  v5 = 19;
  if (a3 != 99)
  {
    v5 = a3;
  }

  if (a3 != 19)
  {
    v4 = v5;
  }

  if (a4 == 2)
  {
    return v4;
  }

  else
  {
    return a3;
  }
}

+ (unint64_t)p_textDeliveryOptionWithDirection:(unint64_t)a3 type:(int64_t)a4 isClassic:(BOOL)a5
{
  if (a5)
  {
    a3 = objc_msgSend_p_legacyDirectionWithDirection_type_(a1, a2, a3, a4);
  }

  if (a3 > 113)
  {
    if (a3 <= 143)
    {
      if (a3 != 114)
      {
        if (a3 != 115)
        {
          return 1;
        }

        return 4;
      }
    }

    else
    {
      if (a3 == 144)
      {
        return 5;
      }

      if (a3 != 172)
      {
        if (a3 != 188)
        {
          return 1;
        }

        return 4;
      }
    }

    return 3;
  }

  result = 2;
  if (a3 <= 110)
  {
    if (a3 == 99)
    {
      return result;
    }

    return 1;
  }

  if (a3 == 111)
  {
    return 1;
  }

  if (a3 != 112)
  {
    return 5;
  }

  return result;
}

+ (void)upgradeAttributes:(id *)a3 animationName:(id)a4 oldAnimationName:(id)a5 warning:(id *)a6 type:(int64_t)a7 isFromClassic:(BOOL)a8 version:(unint64_t)a9
{
  v9 = a8;
  v13 = a5;
  v14 = v13;
  if (a9 < 0xE94D0C4B44)
  {
    v41 = v13;
    isEqualToString = objc_msgSend_isEqualToString_(v13, v13, *MEMORY[0x277D80138]);
    v14 = v41;
    if ((isEqualToString & 1) == 0)
    {
      v16 = objc_msgSend_isEqualToString_(v41, v41, *MEMORY[0x277D80168]);
      v18 = objc_msgSend_objectForKeyedSubscript_(*a3, v17, @"KNBuildAttributesDirection");

      if (v18)
      {
        v20 = objc_msgSend_objectForKeyedSubscript_(*a3, v19, @"KNBuildAttributesDirection");
        v23 = objc_msgSend_unsignedIntegerValue(v20, v21, v22);
      }

      else
      {
        v23 = 111;
      }

      isClassic = objc_msgSend_p_textDeliveryOptionWithDirection_type_isClassic_(a1, v19, v23, a7, v9);
      if (v16)
      {
        v27 = 3;
      }

      else
      {
        v28 = objc_msgSend_objectForKeyedSubscript_(*a3, v24, @"KNBuildCustomAttributesTextDelivery");

        if (v28)
        {
          v29 = objc_msgSend_objectForKeyedSubscript_(*a3, v24, @"KNBuildCustomAttributesTextDelivery");
          v27 = objc_msgSend_unsignedIntegerValue(v29, v30, v31);
        }

        else
        {
          v27 = 1;
        }
      }

      v32 = objc_msgSend_mutableCopy(*a3, v24, v25);
      v34 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v33, v23);
      objc_msgSend_setObject_forKey_(v32, v35, v34, @"KNBuildAttributesDirection");

      v37 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v36, v27);
      objc_msgSend_setObject_forKey_(v32, v38, v37, @"KNBuildCustomAttributesTextDelivery");

      v39 = v32;
      *a3 = v32;
      *a3 = objc_msgSend_updateDirectionAttributeValue_andCustomTextDirectionValue_turnOffBounce_turnOffMotionBlur_forAttributes_(a1, v40, v23, isClassic, 1, 1, v32);

      v14 = v41;
    }
  }
}

+ (void)downgradeAttributes:(id *)a3 animationName:(id *)a4 warning:(id *)a5 type:(int64_t)a6 isToClassic:(BOOL)a7 version:(unint64_t)a8
{
  if ((a6 - 1) <= 1 && a8 <= 0x174876E7FFLL && a7)
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(*a3, a2, @"KNBuildCustomAttributesDeliveryOption", a4, a5);

    if (v13)
    {
      v15 = objc_msgSend_objectForKeyedSubscript_(*a3, v14, @"KNBuildCustomAttributesDeliveryOption");
      v18 = objc_msgSend_unsignedIntegerValue(v15, v16, v17);

      if ((v18 - 2) > 3)
      {
        v20 = objc_msgSend_p_legacyDirectionWithDirection_type_(a1, v19, 19, a6);
      }

      else
      {
        v20 = objc_msgSend_p_legacyDirectionWithDirection_type_(a1, v19, qword_275E79210[v18 - 2], a6);
      }

      v23 = v20;
      v28 = objc_msgSend_mutableCopy(*a3, v21, v22);
      v25 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v24, v23);
      objc_msgSend_setObject_forKeyedSubscript_(v28, v26, v25, @"direction");

      v27 = v28;
      *a3 = v28;
    }
  }
}

+ (BOOL)shouldWarnOnUpgradeWithOldAnimationName:(id)a3 version:(unint64_t)a4
{
  v5 = a3;
  v7 = v5;
  v8 = a4 < 0xE94D0C4B44 && (objc_msgSend_isEqualToString_(v5, v6, *MEMORY[0x277D80168]) & 1) != 0;

  return v8;
}

+ (id)localizedAnimationStringForUpgradeWarning:(int64_t)a3
{
  v4 = sub_275DC204C();
  v6 = v4;
  if (a3 == 1)
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