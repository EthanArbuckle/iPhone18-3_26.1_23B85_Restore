@interface TSWPListStyle
+ (BOOL)deprecated_isDefaultMissingBulletImage:(id)a3;
+ (NSArray)additionalBulletStrings;
+ (NSArray)defaultLabelGeometries;
+ (NSArray)textInspectorBulletStrings;
+ (NSString)defaultLabelString;
+ (TSSPropertySet)classicImportExportProperties;
+ (TSSPropertySet)deprecatedProperties;
+ (TSSPropertySet)stickyOverrideProperties;
+ (id)defaultArrayForProperty:(int)a3;
+ (id)defaultLabelImages;
+ (id)defaultLabelIndents;
+ (id)defaultLabelNumberTypes;
+ (id)defaultLabelStrings;
+ (id)defaultLabelTieredNumbers;
+ (id)defaultLabelTypes;
+ (id)defaultPropertyMap;
+ (id)defaultStyleWithContext:(id)a3;
+ (id)defaultStyleWithContext:(id)a3 type:(unint64_t)a4;
+ (id)extendedListNumberingTypesInStylesheet:(id)a3;
+ (id)harvardStyleWithContext:(id)a3;
+ (id)languageSpecificStylesForLanguages:(id)a3 theme:(id)a4 stylesheet:(id)a5;
+ (id)listStyleWithNumberType:(unint64_t)a3 inStyleSheet:(id)a4 withNumberedPresetStyle:(id)a5;
+ (id)listStyleWithTextBullet:(id)a3 inStyleSheet:(id)a4 withTextBulletPresetStyle:(id)a5;
+ (id)nameForLanguageSpecificListStyle:(unint64_t)a3 withLocal:(id)a4;
+ (id)numberedListStyleForPresets:(id)a3;
+ (id)pDefaultLabelValuesForLabelTypeProperty:(int)a3 context:(id)a4;
+ (id)pLabelTypeArrayForType:(unint64_t)a3;
+ (id)p_arrayValuedProperties;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (id)propertyMapForListNumberType:(unint64_t)a3;
+ (id)propertyMapForListTextBullet:(id)a3;
+ (id)textBulletListStyleForPresets:(id)a3;
+ (unint64_t)effectiveTypeForLevel:(unint64_t)a3 forPropertyMapping:(id)a4;
+ (unint64_t)firstLabelTypeForPropertyMapping:(id)a3;
+ (unint64_t)labelTypeForLevel:(unint64_t)a3 forPropertyMapping:(id)a4;
+ (unint64_t)pLabelTypeForLevel:(unint64_t)a3 forPropertyMapping:(id)a4 includeDegenerateLevels:(BOOL)a5;
+ (void)pGetDefaultTextIndentFloats:(float)a3[9];
- (TSWPListStyle)baseStyleForTopicNumbersOverride;
- (TSWPListStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6;
- (double)CGFloatValueForProperty:(int)a3 atIndex:(unint64_t)a4;
- (double)doubleValueForProperty:(int)a3 atIndex:(unint64_t)a4;
- (double)labelIndentForLevel:(unint64_t)a3;
- (double)textIndentForLevel:(unint64_t)a3 fontSize:(double)a4;
- (float)floatValueForProperty:(int)a3 atIndex:(unint64_t)a4;
- (id)additionalPropertiesNeededForVariationWithPropertyMap:(id)a3;
- (id)baseStyleForTopicNumbers;
- (id)numberTypeName;
- (id)objectForProperty:(int)a3 atIndex:(unint64_t)a4;
- (id)overridePropertyMapWithValue:(id)a3 forProperty:(int)a4 atParagraphLevels:(id)a5 withContext:(id)a6;
- (id)pOverrideArrayWithValue:(id)a3 forProperty:(int)a4 atParagraphLevels:(id)a5 withContext:(id)a6;
- (id)p_characterFillByResolvingWithParagraphStyle:(id)a3;
- (id)parentStyleForFixingOrphanVariation;
- (id)resolvedValueForProperty:(int)a3 inStyles:(id)a4;
- (int)intValueForProperty:(int)a3 atIndex:(unint64_t)a4;
- (unint64_t)effectiveTypeForLevel:(unint64_t)a3;
- (unint64_t)firstLabelType;
- (unint64_t)labelTypeForLevel:(unint64_t)a3;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setLocalizedArray:(id)a3 forProperty:(int)a4;
@end

@implementation TSWPListStyle

- (TSWPListStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6
{
  v7.receiver = self;
  v7.super_class = TSWPListStyle;
  return [(TSWPListStyle *)&v7 initWithContext:a3 name:a4 overridePropertyMap:a5 isVariation:a6];
}

+ (TSSPropertySet)stickyOverrideProperties
{
  if (qword_280A580B0 != -1)
  {
    sub_276F4F094();
  }

  v3 = qword_280A580A8;

  return v3;
}

+ (id)properties
{
  if (qword_280A580C0 != -1)
  {
    sub_276F4F0A8();
  }

  v3 = qword_280A580B8;

  return v3;
}

+ (id)propertiesAllowingNSNull
{
  if (qword_280A580D0 != -1)
  {
    sub_276F4F0BC();
  }

  v3 = qword_280A580C8;

  return v3;
}

+ (TSSPropertySet)deprecatedProperties
{
  if (qword_280A580E0 != -1)
  {
    sub_276F4F0D0();
  }

  v3 = qword_280A580D8;

  return v3;
}

+ (TSSPropertySet)classicImportExportProperties
{
  if (qword_280A580F0 != -1)
  {
    sub_276F4F0E4();
  }

  v3 = qword_280A580E8;

  return v3;
}

+ (NSArray)textInspectorBulletStrings
{
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = objc_msgSend_initWithCapacity_(v2, v3, 0);
  for (i = 0; i != 11; ++i)
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = objc_msgSend_initWithFormat_(v6, v7, @"%C", word_276F995C0[i]);
    objc_msgSend_addObject_(v4, v9, v8);
  }

  return v4;
}

+ (NSArray)additionalBulletStrings
{
  if (qword_280A58100 != -1)
  {
    sub_276F4F0F8();
  }

  v3 = qword_280A580F8;

  return v3;
}

- (double)labelIndentForLevel:(unint64_t)a3
{
  v3 = 0.0;
  if (a3 <= 8)
  {
    v5 = objc_msgSend_valueForProperty_(self, a2, 177);
    v7 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, a3);
    objc_msgSend_doubleValue(v7, v8, v9);
    v3 = v10;
  }

  return v3;
}

- (double)textIndentForLevel:(unint64_t)a3 fontSize:(double)a4
{
  v5 = 0.0;
  if (a3 <= 8)
  {
    v7 = objc_msgSend_valueForProperty_(self, a2, 176);
    v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, a3);
    objc_msgSend_doubleValue(v9, v10, v11);
    v5 = v12;
  }

  return v5 * a4;
}

- (id)numberTypeName
{
  if (objc_msgSend_effectiveTypeForLevel_(self, a2, 0) == 3)
  {
    v4 = objc_msgSend_valueForProperty_(self, v3, 184);
    v6 = objc_msgSend_objectAtIndexedSubscript_(v4, v5, 0);
    v9 = objc_msgSend_integerValue(v6, v7, v8);

    v10 = TSWPStringFromTSWPListNumberType(v9);
    if (objc_msgSend_length(v10, v11, v12) >= 6)
    {
      v15 = objc_msgSend_length(v10, v13, v14);
      v17 = objc_msgSend_substringWithRange_(v10, v16, 1, v15 - 5);

      v10 = v17;
    }
  }

  else
  {
    v10 = &stru_28860A0F0;
  }

  return v10;
}

+ (BOOL)deprecated_isDefaultMissingBulletImage:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_filename(v4, v5, v6);
    isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"TSWPMissingBulletImage.png");
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

+ (unint64_t)pLabelTypeForLevel:(unint64_t)a3 forPropertyMapping:(id)a4 includeDegenerateLevels:(BOOL)a5
{
  v8 = a4;
  v10 = objc_msgSend_objectForProperty_(v8, v9, 180);
  v12 = v10;
  if (a3 > 8)
  {
    v16 = 0;
    if (a5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = objc_msgSend_objectAtIndexedSubscript_(v10, v11, a3);
    v16 = objc_msgSend_intValue(v13, v14, v15);

    if (a5)
    {
      goto LABEL_18;
    }
  }

  if (v16 == 1)
  {
    v25 = objc_msgSend_objectForProperty_(v8, v11, 182);
    v20 = v25;
    if (v25 && objc_msgSend_count(v25, v26, v27) > a3)
    {
      v29 = objc_msgSend_objectAtIndexedSubscript_(v20, v28, a3);
      if (objc_msgSend_deprecated_isDefaultMissingBulletImage_(a1, v30, v29))
      {
      }

      else
      {
        v32 = objc_msgSend_objectAtIndexedSubscript_(v20, v31, a3);
        v35 = objc_msgSend_null(MEMORY[0x277CBEB68], v33, v34);

        if (v32 != v35)
        {
          v16 = 1;
          goto LABEL_17;
        }
      }
    }

    goto LABEL_16;
  }

  if (v16 == 2)
  {
    v17 = objc_msgSend_objectForProperty_(v8, v11, 183);
    v20 = v17;
    if (v17)
    {
      if (objc_msgSend_count(v17, v18, v19) > a3)
      {
        v22 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, a3);
        isEqualToString = objc_msgSend_isEqualToString_(v22, v23, &stru_28860A0F0);

        if (!isEqualToString)
        {
          v16 = 2;
LABEL_17:

          goto LABEL_18;
        }
      }
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

LABEL_18:

  return v16;
}

- (unint64_t)effectiveTypeForLevel:(unint64_t)a3
{
  v5 = objc_opt_class();

  return objc_msgSend_pLabelTypeForLevel_forPropertyMapping_includeDegenerateLevels_(v5, v6, a3, self, 0);
}

+ (unint64_t)effectiveTypeForLevel:(unint64_t)a3 forPropertyMapping:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  v8 = objc_msgSend_pLabelTypeForLevel_forPropertyMapping_includeDegenerateLevels_(v6, v7, a3, v5, 0);

  return v8;
}

- (unint64_t)labelTypeForLevel:(unint64_t)a3
{
  v5 = objc_opt_class();

  return objc_msgSend_pLabelTypeForLevel_forPropertyMapping_includeDegenerateLevels_(v5, v6, a3, self, 1);
}

+ (unint64_t)labelTypeForLevel:(unint64_t)a3 forPropertyMapping:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  v8 = objc_msgSend_pLabelTypeForLevel_forPropertyMapping_includeDegenerateLevels_(v6, v7, a3, v5, 1);

  return v8;
}

- (unint64_t)firstLabelType
{
  v3 = objc_opt_class();

  return MEMORY[0x2821F9670](v3, sel_firstLabelTypeForPropertyMapping_, self);
}

+ (unint64_t)firstLabelTypeForPropertyMapping:(id)a3
{
  v3 = a3;
  v4 = 0;
  do
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_pLabelTypeForLevel_forPropertyMapping_includeDegenerateLevels_(v5, v6, v4, v3, 1);
    if (v7)
    {
      break;
    }
  }

  while (v4++ != 8);

  return v7;
}

+ (NSString)defaultLabelString
{
  v2 = qword_280A58108;
  if (!qword_280A58108)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = objc_msgSend_initWithFormat_(v3, v4, @"%C", 8226);
    v6 = qword_280A58108;
    qword_280A58108 = v5;

    v2 = qword_280A58108;
  }

  return v2;
}

+ (void)pGetDefaultTextIndentFloats:(float)a3[9]
{
  v3 = 0;
  v4 = xmmword_276F995A0;
  v5 = a3 + 1;
  v6 = vdupq_n_s64(9uLL);
  v7 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v6, v4)).u8[0])
    {
      *(v5 - 1) = v3 * 36.0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v4)).i32[1])
    {
      *v5 = (v3 + 1) * 36.0;
    }

    v3 += 2;
    v4 = vaddq_s64(v4, v7);
    v5 += 2;
  }

  while (v3 != 10);
}

+ (id)defaultLabelIndents
{
  if (qword_280A58118 != -1)
  {
    sub_276F4F10C();
  }

  v3 = qword_280A58110;

  return v3;
}

+ (NSArray)defaultLabelGeometries
{
  if (qword_280A58128 != -1)
  {
    sub_276F4F120();
  }

  v3 = qword_280A58120;

  return v3;
}

+ (id)defaultLabelImages
{
  if (qword_280A58138 != -1)
  {
    sub_276F4F134();
  }

  v3 = qword_280A58130;

  return v3;
}

+ (id)defaultLabelNumberTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276D45B1C;
  block[3] = &unk_27A6F3D70;
  block[4] = a1;
  if (qword_280A58148 != -1)
  {
    dispatch_once(&qword_280A58148, block);
  }

  v2 = qword_280A58140;

  return v2;
}

+ (id)defaultLabelTieredNumbers
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276D45C44;
  block[3] = &unk_27A6F3D70;
  block[4] = a1;
  if (qword_280A58158 != -1)
  {
    dispatch_once(&qword_280A58158, block);
  }

  v2 = qword_280A58150;

  return v2;
}

+ (id)defaultLabelStrings
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276D45D6C;
  block[3] = &unk_27A6F3D70;
  block[4] = a1;
  if (qword_280A58168 != -1)
  {
    dispatch_once(&qword_280A58168, block);
  }

  v2 = qword_280A58160;

  return v2;
}

+ (id)defaultLabelTypes
{
  if (qword_280A58178 != -1)
  {
    sub_276F4F148();
  }

  v3 = qword_280A58170;

  return v3;
}

+ (id)defaultPropertyMap
{
  v4 = objc_msgSend_defaultLabelIndents(a1, a2, v2);
  v5 = objc_alloc(MEMORY[0x277D80AB8]);
  v7 = objc_msgSend_pLabelTypeArrayForType_(a1, v6, 0);
  v10 = objc_msgSend_defaultLabelGeometries(a1, v8, v9);
  v12 = objc_msgSend_initWithPropertiesAndValues_(v5, v11, 180, v7, 176, v4, 177, &unk_288627E90, 181, v10, 0);

  return v12;
}

+ (id)defaultStyleWithContext:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_defaultPropertyMap(a1, v5, v6);
  v8 = [a1 alloc];
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v8, v9, v4, 0, v7, 0);

  return isVariation;
}

+ (id)defaultStyleWithContext:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(TSWPListLabelGeometry);
  v10 = objc_msgSend_defaultLabelIndents(a1, v8, v9);
  v13 = objc_msgSend_defaultTextIndents(a1, v11, v12);
  v14 = objc_alloc(MEMORY[0x277D80AB8]);
  v16 = objc_msgSend_pLabelTypeArrayForType_(a1, v15, a4);
  v17 = sub_276D457C8(v7);
  v19 = objc_msgSend_initWithPropertiesAndValues_(v14, v18, 180, v16, 176, v13, 177, v10, 181, v17, 0);

  if (a4)
  {
    v21 = dword_276F995D8[a4];
    v22 = objc_msgSend_pDefaultLabelValuesForLabelTypeProperty_context_(a1, v20, v21, v6);
    objc_msgSend_setObject_forProperty_(v19, v23, v22, v21);
    if (a4 == 3)
    {
      v25 = objc_msgSend_pDefaultLabelValuesForLabelTypeProperty_context_(a1, v24, 185, v6);
      objc_msgSend_setObject_forProperty_(v19, v26, v25, 185);
    }
  }

  v27 = [a1 alloc];
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v27, v28, v6, 0, v19, 0);

  return isVariation;
}

+ (id)harvardStyleWithContext:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_tsu_arrayWithInts_count_(MEMORY[0x277CBEA60], v5, &unk_276F995E8, 9);
  v8 = objc_msgSend_tsu_arrayWithCGFloats_count_(MEMORY[0x277CBEA60], v7, &unk_276F99610, 9);
  v10 = objc_msgSend_tsu_arrayWithCGFloats_count_(MEMORY[0x277CBEA60], v9, &unk_276F99658, 9);
  v11 = objc_alloc(MEMORY[0x277D80AB8]);
  v13 = objc_msgSend_pLabelTypeArrayForType_(a1, v12, 3);
  v16 = objc_msgSend_defaultLabelGeometries(a1, v14, v15);
  v18 = objc_msgSend_pDefaultLabelValuesForLabelTypeProperty_context_(a1, v17, 185, v4);
  v20 = objc_msgSend_initWithPropertiesAndValues_(v11, v19, 180, v13, 176, v10, 177, v8, 181, v16, 184, v6, 185, v18, 0);

  v21 = [a1 alloc];
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v21, v22, v4, 0, v20, 0);

  return isVariation;
}

+ (id)numberedListStyleForPresets:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = a3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v24, v29, 16);
  if (v6)
  {
    v7 = *v25;
    while (1)
    {
      v8 = 0;
LABEL_4:
      if (*v25 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v24 + 1) + 8 * v8);
      v10 = objc_msgSend_objectForProperty_(v9, v5, 180);
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = v10;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v20, v28, 16);
      if (!v15)
      {
        break;
      }

      v16 = *v21;
LABEL_8:
      v17 = 0;
      while (1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v11);
        }

        if (objc_msgSend_intValue(*(*(&v20 + 1) + 8 * v17), v13, v14) != 3)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v20, v28, 16);
          if (v15)
          {
            goto LABEL_8;
          }

          goto LABEL_18;
        }
      }

      if (++v8 != v6)
      {
        goto LABEL_4;
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v24, v29, 16);
      v18 = 0;
      if (!v6)
      {
        goto LABEL_20;
      }
    }

LABEL_18:

    v18 = v9;
  }

  else
  {
    v18 = 0;
  }

LABEL_20:

  return v18;
}

+ (id)textBulletListStyleForPresets:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = a3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v24, v29, 16);
  if (v6)
  {
    v7 = *v25;
    while (1)
    {
      v8 = 0;
LABEL_4:
      if (*v25 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v24 + 1) + 8 * v8);
      v10 = objc_msgSend_objectForProperty_(v9, v5, 180);
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = v10;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v20, v28, 16);
      if (!v15)
      {
        break;
      }

      v16 = *v21;
LABEL_8:
      v17 = 0;
      while (1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v11);
        }

        if (objc_msgSend_intValue(*(*(&v20 + 1) + 8 * v17), v13, v14) != 2)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v20, v28, 16);
          if (v15)
          {
            goto LABEL_8;
          }

          goto LABEL_18;
        }
      }

      if (++v8 != v6)
      {
        goto LABEL_4;
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v24, v29, 16);
      v18 = 0;
      if (!v6)
      {
        goto LABEL_20;
      }
    }

LABEL_18:

    v18 = v9;
  }

  else
  {
    v18 = 0;
  }

LABEL_20:

  return v18;
}

- (id)pOverrideArrayWithValue:(id)a3 forProperty:(int)a4 atParagraphLevels:(id)a5 withContext:(id)a6
{
  v8 = *&a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  objc_opt_class();
  v14 = objc_msgSend_valueForProperty_(self, v13, v8);
  v15 = TSUDynamicCast();

  if (!v15)
  {
    v17 = objc_opt_class();
    v15 = objc_msgSend_pDefaultLabelValuesForLabelTypeProperty_context_(v17, v18, v8, v12);
  }

  v20 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v16, v15);
  if (v10)
  {
    if (!v11)
    {
      v11 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v19, 0, 9);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_276D46A18;
    v23[3] = &unk_27A6F3ED0;
    v24 = v20;
    v25 = v10;
    objc_msgSend_enumerateIndexesUsingBlock_(v11, v21, v23);
  }

  return v20;
}

- (id)overridePropertyMapWithValue:(id)a3 forProperty:(int)a4 atParagraphLevels:(id)a5 withContext:(id)a6
{
  v126 = *MEMORY[0x277D85DE8];
  v116 = a3;
  v119 = a5;
  v120 = a6;
  v118 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v9, v10);
  v117 = a4;
  if (a4 > 183)
  {
    if (a4 == 184)
    {
      v49 = objc_msgSend_pOverrideArrayWithValue_forProperty_atParagraphLevels_withContext_(self, v11, 0, 185, v119, v120);
      objc_msgSend_setObject_forProperty_(v118, v50, v49, 185);
    }

    else if (a4 != 185)
    {
LABEL_11:
      v42 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPListStyle overridePropertyMapWithValue:forProperty:atParagraphLevels:withContext:]");
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 837, 0, "Unhandled override property in list");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
      goto LABEL_14;
    }

    v51 = objc_msgSend_pOverrideArrayWithValue_forProperty_atParagraphLevels_withContext_(self, v11, 0, 184, v119, v120);
    objc_msgSend_setObject_forProperty_(v118, v52, v51, 184);

    goto LABEL_14;
  }

  if ((a4 - 182) < 2)
  {
    goto LABEL_14;
  }

  if (a4 != 180)
  {
    goto LABEL_11;
  }

  v14 = objc_msgSend_intValue(v116, v11, v12);
  if (!v14)
  {
    goto LABEL_14;
  }

  Index = objc_msgSend_firstIndex(v119, v11, v13);
  if (v14 == 1)
  {
    objc_opt_class();
    v67 = objc_msgSend_propertyMap(self, v65, v66);
    v68 = String();
    v70 = objc_msgSend_objectForProperty_(v67, v69, v68);
    v72 = objc_msgSend_objectAtIndexedSubscript_(v70, v71, Index);
    v73 = TSUDynamicCast();

    v114 = v73;
    if (v73)
    {
      v76 = objc_msgSend_filename(v73, v74, v75);
      v79 = objc_msgSend_sharedInstance(TSWPImageBulletProvider, v77, v78);
      v81 = objc_msgSend_predefinedImagesWithContext_(v79, v80, v120);

      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v82 = v81;
      v84 = 0;
      v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v83, &v121, v125, 16);
      if (v87)
      {
        v88 = *v122;
        do
        {
          for (i = 0; i != v87; ++i)
          {
            if (*v122 != v88)
            {
              objc_enumerationMutation(v82);
            }

            v90 = *(*(&v121 + 1) + 8 * i);
            v91 = objc_msgSend_sharedInstance(TSWPImageBulletProvider, v85, v86);
            v93 = objc_msgSend_dataForImageBullet_withContext_(v91, v92, v90, v120);

            v96 = objc_msgSend_filename(v93, v94, v95);
            isEqualToString = objc_msgSend_isEqualToString_(v76, v97, v96);

            if (isEqualToString)
            {
              v99 = v90;

              v84 = v99;
            }
          }

          v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v85, &v121, v125, 16);
        }

        while (v87);
      }
    }

    else
    {
      v84 = 0;
    }

    v108 = objc_msgSend_sharedInstance(TSWPImageBulletProvider, v74, v75);
    v110 = objc_msgSend_dataForImageBullet_withContext_(v108, v109, v84, v120);
    v112 = objc_msgSend_pOverrideArrayWithValue_forProperty_atParagraphLevels_withContext_(self, v111, v110, 182, v119, v120);
    objc_msgSend_setObject_forProperty_(v118, v113, v112, 182);
  }

  else
  {
    if (v14 == 2)
    {
      v56 = objc_msgSend_propertyMap(self, v15, v16);
      v57 = String();
      v59 = objc_msgSend_objectForProperty_(v56, v58, v57);
      v22 = objc_msgSend_objectAtIndexedSubscript_(v59, v60, Index);

      if (v22)
      {
        v63 = v22;
      }

      else
      {
        v63 = objc_msgSend_defaultLabelString(TSWPListStyle, v61, v62);
      }

      v38 = v63;
      v40 = objc_msgSend_pOverrideArrayWithValue_forProperty_atParagraphLevels_withContext_(self, v64, v63, 183, v119, v120);
      objc_msgSend_setObject_forProperty_(v118, v107, v40, 183);
    }

    else
    {
      if (v14 != 3)
      {
        v100 = MEMORY[0x277D81150];
        v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSWPListStyle overridePropertyMapWithValue:forProperty:atParagraphLevels:withContext:]");
        v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v104, v101, v103, 818, 0, "Not covering a list type in inspector setter");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v105, v106);
        goto LABEL_14;
      }

      v18 = objc_msgSend_propertyMap(self, v15, v16);
      v20 = objc_msgSend_objectForProperty_(v18, v19, 184);
      v22 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, Index);

      v24 = objc_msgSend_pOverrideArrayWithValue_forProperty_atParagraphLevels_withContext_(self, v23, v22, 184, v119, v120);
      objc_msgSend_setObject_forProperty_(v118, v25, v24, 184);

      v28 = objc_msgSend_propertyMap(self, v26, v27);
      v29 = String();
      v31 = objc_msgSend_objectForProperty_(v28, v30, v29);
      v33 = objc_msgSend_objectAtIndexedSubscript_(v31, v32, Index);
      v36 = objc_msgSend_integerValue(v33, v34, v35);

      v38 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v37, v36);
      v40 = objc_msgSend_pOverrideArrayWithValue_forProperty_atParagraphLevels_withContext_(self, v39, v38, 185, v119, v120);
      objc_msgSend_setObject_forProperty_(v118, v41, v40, 185);
    }
  }

LABEL_14:
  v53 = objc_msgSend_pOverrideArrayWithValue_forProperty_atParagraphLevels_withContext_(self, v11, v116, v117, v119, v120);
  objc_msgSend_setObject_forProperty_(v118, v54, v53, v117);

  return v118;
}

+ (id)listStyleWithNumberType:(unint64_t)a3 inStyleSheet:(id)a4 withNumberedPresetStyle:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v28 = a4;
  v29 = a5;
  v7 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v8 = a3;
  v11 = objc_msgSend_initWithFloat_(v7, v9, v10, v8);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = objc_msgSend_childrenOfStyle_(v28, v12, v29);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v30, v34, 16);
  if (v16)
  {
    v17 = *v31;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        if (objc_msgSend_effectiveTypeForLevel_(v19, v15, 0, v28, v29) == 3)
        {
          v21 = objc_msgSend_valueForProperty_(v19, v15, 184);
          v22 = 0;
          while (1)
          {
            v23 = objc_msgSend_objectAtIndexedSubscript_(v21, v20, v22);
            isEqual = objc_msgSend_isEqual_(v23, v24, v11);

            if ((isEqual & 1) == 0)
            {
              break;
            }

            if (++v22 == 9)
            {
              v26 = v19;

              goto LABEL_16;
            }
          }
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v30, v34, 16);
      v26 = 0;
    }

    while (v16);
  }

  else
  {
    v26 = 0;
  }

LABEL_16:

  return v26;
}

+ (id)listStyleWithTextBullet:(id)a3 inStyleSheet:(id)a4 withTextBulletPresetStyle:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = objc_msgSend_childrenOfStyle_(a4, v8, a5, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v24, v28, 16);
  if (v12)
  {
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if (objc_msgSend_effectiveTypeForLevel_(v15, v11, 0) == 2)
        {
          v17 = objc_msgSend_valueForProperty_(v15, v11, 183);
          v18 = 0;
          while (1)
          {
            v19 = objc_msgSend_objectAtIndexedSubscript_(v17, v16, v18);
            isEqual = objc_msgSend_isEqual_(v19, v20, v7);

            if ((isEqual & 1) == 0)
            {
              break;
            }

            if (++v18 == 9)
            {
              v22 = v15;

              goto LABEL_16;
            }
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v24, v28, 16);
      v22 = 0;
    }

    while (v12);
  }

  else
  {
    v22 = 0;
  }

LABEL_16:

  return v22;
}

+ (id)propertyMapForListNumberType:(unint64_t)a3
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = a3;
  v9 = objc_msgSend_initWithFloat_(v5, v7, v8, v6);
  v10 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v12 = objc_msgSend_pLabelTypeArrayForType_(a1, v11, 3);
  objc_msgSend_setObject_forProperty_(v10, v13, v12, 180);

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 9;
  v18 = MEMORY[0x277CBEC28];
  do
  {
    objc_msgSend_addObject_(v14, v15, v9);
    objc_msgSend_addObject_(v16, v19, v18);
    --v17;
  }

  while (v17);
  objc_msgSend_setObject_forProperty_(v10, v15, v14, 184);
  objc_msgSend_setObject_forProperty_(v10, v20, v16, 185);

  return v10;
}

+ (id)propertyMapForListTextBullet:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v7 = objc_msgSend_pLabelTypeArrayForType_(a1, v6, 2);
  objc_msgSend_setObject_forProperty_(v5, v8, v7, 180);

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 9;
  do
  {
    objc_msgSend_addObject_(v10, v9, v4);
    --v11;
  }

  while (v11);
  objc_msgSend_setObject_forProperty_(v5, v9, v10, 183);

  return v5;
}

+ (id)nameForLanguageSpecificListStyle:(unint64_t)a3 withLocal:(id)a4
{
  v5 = a4;
  v7 = v5;
  v8 = 0;
  if (a3 > 41)
  {
    if (a3 <= 48)
    {
      switch(a3)
      {
        case '*':
          objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Chinese Financial Numerals - Trad.", &stru_28860A0F0, @"TSText");
          break;
        case '-':
          objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Korean", &stru_28860A0F0, @"TSText");
          break;
        case '0':
          objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Circled Numbers", &stru_28860A0F0, @"TSText");
          break;
        default:
          goto LABEL_35;
      }
    }

    else if (a3 > 54)
    {
      if (a3 == 55)
      {
        objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Arabic Abjad", &stru_28860A0F0, @"TSText");
      }

      else
      {
        if (a3 != 62)
        {
          goto LABEL_35;
        }

        objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Hebrew", &stru_28860A0F0, @"TSText");
      }
    }

    else if (a3 == 49)
    {
      objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Arabic", &stru_28860A0F0, @"TSText");
    }

    else
    {
      if (a3 != 52)
      {
        goto LABEL_35;
      }

      objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Arabic Alpha", &stru_28860A0F0, @"TSText");
    }
  }

  else if (a3 <= 26)
  {
    switch(a3)
    {
      case 0xFuLL:
        objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Kanji", &stru_28860A0F0, @"TSText");
        break;
      case 0x12uLL:
        objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Hiragana", &stru_28860A0F0, @"TSText");
        break;
      case 0x15uLL:
        objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Katakana", &stru_28860A0F0, @"TSText");
        break;
      default:
        goto LABEL_35;
    }
  }

  else if (a3 > 32)
  {
    if (a3 == 33)
    {
      objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Chinese Numerals - Trad.", &stru_28860A0F0, @"TSText");
    }

    else
    {
      if (a3 != 39)
      {
        goto LABEL_35;
      }

      objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Chinese Financial Numerals - Simp.", &stru_28860A0F0, @"TSText");
    }
  }

  else if (a3 == 27)
  {
    objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Katakana Iroha", &stru_28860A0F0, @"TSText");
  }

  else
  {
    if (a3 != 30)
    {
      goto LABEL_35;
    }

    objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Chinese Numerals - Simp.", &stru_28860A0F0, @"TSText");
  }
  v8 = ;
LABEL_35:

  return v8;
}

+ (id)pLabelTypeArrayForType:(unint64_t)a3
{
  v3 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, a3);
  v4 = sub_276D457C8(v3);

  return v4;
}

+ (id)pDefaultLabelValuesForLabelTypeProperty:(int)a3 context:(id)a4
{
  v7 = a4;
  if (a3 > 183)
  {
    if (a3 == 184)
    {
      v21 = MEMORY[0x277CCABB0];
      v22 = objc_msgSend_defaultLabelNumberType(TSWPListStyle, v5, v6);
      v12 = objc_msgSend_numberWithUnsignedInteger_(v21, v23, v22);
      v13 = sub_276D457C8(v12);
    }

    else
    {
      if (a3 != 185)
      {
LABEL_8:
        v14 = MEMORY[0x277D81150];
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSWPListStyle pDefaultLabelValuesForLabelTypeProperty:context:]");
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 1033, 0, "Unhandled array property in list");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
        v8 = 0;
        goto LABEL_12;
      }

      v9 = MEMORY[0x277CCABB0];
      v10 = objc_msgSend_defaultTieredNumber(TSWPListStyle, v5, v6);
      v12 = objc_msgSend_numberWithBool_(v9, v11, v10);
      v13 = sub_276D457C8(v12);
    }
  }

  else
  {
    if (a3 != 182)
    {
      if (a3 == 183)
      {
        v8 = sub_276D457C8(&stru_28860A0F0);
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    v12 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);
    v13 = sub_276D457C8(v12);
  }

  v8 = v13;

LABEL_12:

  return v8;
}

+ (id)languageSpecificStylesForLanguages:(id)a3 theme:(id)a4 stylesheet:(id)a5
{
  v262[8] = *MEMORY[0x277D85DE8];
  v180 = a3;
  v7 = a4;
  v214 = a5;
  v8 = *MEMORY[0x277D80B58];
  v220 = v7;
  v178 = objc_msgSend_presetsOfKind_(v7, v9, *MEMORY[0x277D80B58]);
  v217 = objc_msgSend_valueForKey_(v178, v10, @"name");
  v179 = v8;
  v213 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v212 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v218 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v12, 48);
  v260 = v218;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, &v260, 1);
  v15 = *MEMORY[0x277D813D0];
  v215 = v14;
  v261[0] = v14;
  v261[1] = v15;
  v210 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v261, 2);
  v262[0] = v210;
  obja = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v17, 30);
  v258[0] = obja;
  v206 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v18, 39);
  v258[1] = v206;
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v258, 2);
  v21 = *MEMORY[0x277D813D8];
  v204 = v20;
  v259[0] = v20;
  v259[1] = v21;
  v202 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v259, 2);
  v262[1] = v202;
  v200 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v23, 33);
  v256[0] = v200;
  v198 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v24, 42);
  v256[1] = v198;
  v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, v256, 2);
  v27 = *MEMORY[0x277D813E8];
  v197 = v26;
  v257[0] = v26;
  v257[1] = v27;
  v196 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, v257, 2);
  v262[2] = v196;
  v195 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v29, 33);
  v254[0] = v195;
  v194 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v30, 42);
  v254[1] = v194;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v31, v254, 2);
  v33 = *MEMORY[0x277D813E0];
  v193 = v32;
  v255[0] = v32;
  v255[1] = v33;
  v192 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v34, v255, 2);
  v262[3] = v192;
  v191 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v35, 15);
  v252[0] = v191;
  v190 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v36, 21);
  v252[1] = v190;
  v189 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v37, 27);
  v252[2] = v189;
  v188 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v38, 18);
  v252[3] = v188;
  v187 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v39, 48);
  v252[4] = v187;
  v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v40, v252, 5);
  v42 = *MEMORY[0x277D81498];
  v186 = v41;
  v253[0] = v41;
  v253[1] = v42;
  v185 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v43, v253, 2);
  v262[4] = v185;
  v184 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v44, 45);
  v250 = v184;
  v46 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v45, &v250, 1);
  v47 = *MEMORY[0x277D814A0];
  v183 = v46;
  v251[0] = v46;
  v251[1] = v47;
  v182 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v251, 2);
  v262[5] = v182;
  v50 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v49, 49);
  v248[0] = v50;
  v52 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v51, 52);
  v248[1] = v52;
  v54 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v53, 55);
  v248[2] = v54;
  v56 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v55, v248, 3);
  v57 = *MEMORY[0x277D813C0];
  v249[0] = v56;
  v249[1] = v57;
  v59 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v58, v249, 2);
  v262[6] = v59;
  v61 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v60, 62);
  v246 = v61;
  v63 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v62, &v246, 1);
  v64 = *MEMORY[0x277D81458];
  v247[0] = v63;
  v247[1] = v64;
  v66 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v65, v247, 2);
  v262[7] = v66;
  v181 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v67, v262, 8);

  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  obj = v181;
  v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v68, &v237, v245, 16);
  if (v70)
  {
    v71 = *v238;
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v238 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v73 = *(*(&v237 + 1) + 8 * i);
        v233 = 0u;
        v234 = 0u;
        v235 = 0u;
        v236 = 0u;
        v74 = objc_msgSend_objectAtIndexedSubscript_(v73, v69, 0);
        v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v233, v244, 16);
        if (v77)
        {
          v78 = *v234;
          do
          {
            for (j = 0; j != v77; ++j)
            {
              if (*v234 != v78)
              {
                objc_enumerationMutation(v74);
              }

              v80 = *(*(&v233 + 1) + 8 * j);
              if ((objc_msgSend_containsObject_(v11, v76, v80) & 1) == 0)
              {
                objc_msgSend_addObject_(v11, v76, v80);
              }
            }

            v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v76, &v233, v244, 16);
          }

          while (v77);
        }

        v82 = objc_msgSend_objectAtIndexedSubscript_(v73, v81, 0);
        v84 = objc_msgSend_objectAtIndexedSubscript_(v73, v83, 1);
        objc_msgSend_setObject_forKeyedSubscript_(v212, v85, v82, v84);
      }

      v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v69, &v237, v245, 16);
    }

    while (v70);
  }

  v87 = objc_msgSend_presetsOfKind_(v220, v86, v179);
  v216 = objc_msgSend_numberedListStyleForPresets_(TSWPListStyle, v88, v87);

  if (!v216)
  {
    v90 = MEMORY[0x277D81150];
    v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, "+[TSWPListStyle languageSpecificStylesForLanguages:theme:stylesheet:]");
    v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v94, v91, v93, 1084, 0, "Numbered preset should not be nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v95, v96);
  }

  v231 = 0u;
  v232 = 0u;
  v229 = 0u;
  v230 = 0u;
  v199 = v180;
  v203 = objc_msgSend_countByEnumeratingWithState_objects_count_(v199, v97, &v229, v243, 16);
  if (v203)
  {
    v201 = *v230;
    do
    {
      for (k = 0; k != v203; ++k)
      {
        if (*v230 != v201)
        {
          objc_enumerationMutation(v199);
        }

        v100 = *(*(&v229 + 1) + 8 * k);
        v211 = objc_msgSend_array(MEMORY[0x277CBEB18], v98, v99);
        v205 = objc_msgSend_componentsSeparatedByString_(v100, v101, @"-");
        if (v205 && objc_msgSend_count(v205, v102, v103))
        {
          v104 = objc_msgSend_objectAtIndexedSubscript_(v205, v102, 0);
          v106 = objc_msgSend_valueForKey_(v212, v105, v104);
          objc_msgSend_tsu_addObjectsFromNonNilArray_(v211, v107, v106);
        }

        v108 = objc_msgSend_valueForKey_(v212, v102, v100);
        objc_msgSend_tsu_addObjectsFromNonNilArray_(v211, v109, v108);

        v227 = 0u;
        v228 = 0u;
        v225 = 0u;
        v226 = 0u;
        v219 = v211;
        v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v219, v110, &v225, v242, 16);
        if (v112)
        {
          v113 = *v226;
          do
          {
            for (m = 0; m != v112; ++m)
            {
              if (*v226 != v113)
              {
                objc_enumerationMutation(v219);
              }

              v115 = *(*(&v225 + 1) + 8 * m);
              if (objc_msgSend_containsObject_(v11, v111, v115))
              {
                v117 = objc_msgSend_intValue(v115, v111, v116);
                objc_opt_class();
                v120 = objc_msgSend_context(v220, v118, v119);
                v123 = objc_msgSend_documentObject(v120, v121, v122);
                v124 = TSUDynamicCast();

                v127 = objc_msgSend_documentLocale(v124, v125, v126);
                v128 = v127 == 0;

                if (v128)
                {
                  v131 = MEMORY[0x277D81150];
                  v132 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, "+[TSWPListStyle languageSpecificStylesForLanguages:theme:stylesheet:]");
                  v134 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v133, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v131, v135, v132, v134, 1104, 0, "invalid nil value for '%{public}s'", "documentRoot.documentLocale");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v136, v137);
                }

                v138 = objc_msgSend_documentLocale(v124, v129, v130);
                v139 = v117;
                v141 = objc_msgSend_nameForLanguageSpecificListStyle_withLocal_(TSWPListStyle, v140, v117, v138);

                if ((objc_msgSend_containsObject_(v217, v142, v141) & 1) == 0)
                {
                  isVariation = objc_msgSend_listStyleWithNumberType_inStyleSheet_withNumberedPresetStyle_(TSWPListStyle, v143, v139, v214, v216);
                  if (!isVariation)
                  {
                    v147 = objc_msgSend_propertyMap(v216, v144, v145);
                    v150 = objc_msgSend_mutableCopy(v147, v148, v149);

                    v152 = objc_msgSend_propertyMapForListNumberType_(TSWPListStyle, v151, v139);
                    objc_msgSend_addValuesFromPropertyMap_(v150, v153, v152);

                    v154 = [TSWPListStyle alloc];
                    v157 = objc_msgSend_context(v220, v155, v156);
                    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v154, v158, v157, v141, v150, 0);
                  }

                  objc_msgSend_addObject_(v213, v144, isVariation);
                  objc_msgSend_removeObject_(v11, v159, v115);
                }
              }
            }

            v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v219, v111, &v225, v242, 16);
          }

          while (v112);
        }
      }

      v203 = objc_msgSend_countByEnumeratingWithState_objects_count_(v199, v98, &v229, v243, 16);
    }

    while (v203);
  }

  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  v160 = v11;
  v164 = objc_msgSend_countByEnumeratingWithState_objects_count_(v160, v161, &v221, v241, 16);
  if (v164)
  {
    v165 = *v222;
    do
    {
      for (n = 0; n != v164; ++n)
      {
        if (*v222 != v165)
        {
          objc_enumerationMutation(v160);
        }

        v167 = objc_msgSend_intValue(*(*(&v221 + 1) + 8 * n), v162, v163);
        v169 = objc_msgSend_listStyleWithNumberType_inStyleSheet_withNumberedPresetStyle_(TSWPListStyle, v168, v167, v214, v216);
        v172 = v169;
        if (v169)
        {
          v173 = objc_msgSend_name(v169, v170, v171);
          v175 = objc_msgSend_containsObject_(v217, v174, v173);

          if ((v175 & 1) == 0)
          {
            objc_msgSend_addObject_(v213, v176, v172);
          }
        }
      }

      v164 = objc_msgSend_countByEnumeratingWithState_objects_count_(v160, v162, &v221, v241, 16);
    }

    while (v164);
  }

  return v213;
}

+ (id)extendedListNumberingTypesInStylesheet:(id)a3
{
  v3 = a3;
  v6 = sub_276D3A450(v3, v4, v5);
  v7 = sub_276D3A82C(v6);

  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_276D48FFC;
  v22[3] = &unk_27A6F3EF8;
  v9 = v8;
  v23 = v9;
  objc_msgSend_enumerateCascadedStylesUsingBlock_(v3, v10, v22);
  v12 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v11, v7);
  objc_msgSend_minusSet_(v9, v13, v12);

  if (objc_msgSend_count(v9, v14, v15))
  {
    v18 = objc_msgSend_allObjects(v9, v16, v17);
    v20 = objc_msgSend_sortedArrayUsingSelector_(v18, v19, sel_compare_);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812DC408[44]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, v7);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v123 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (*(a3 + 23))
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = MEMORY[0x277D80BD0];
  }

  v119.receiver = self;
  v119.super_class = TSWPListStyle;
  v110 = v6;
  [(TSWPListStyle *)&v119 loadFromArchive:v7 unarchiver:v6];
  v8 = *(a3 + 52);
  if (!v8)
  {
    goto LABEL_85;
  }

  v9 = objc_alloc(MEMORY[0x277D80AB8]);
  v11 = objc_msgSend_initWithCapacity_(v9, v10, v8);
  v12 = *MEMORY[0x277D80AF0];
  v13 = *(&self->super.super.super.isa + v12);
  v109 = v12;
  *(&self->super.super.super.isa + v12) = v11;

  v108 = *(&self->super.super.super.isa + v109);
  v16 = objc_opt_class();
  v17 = *(a3 + 6);
  if (v17)
  {
    if (v17 == 1)
    {
      objc_msgSend_willModifyForUpgrade(self, v14, v15);
    }

    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    objc_msgSend_pSetRepeatedArrayOfInts_forProperty_defaultValues_min_max_usePreviousValueOnDefault_(*(&self->super.super.super.isa + v109), v14, a3 + 24, 180, &v120, 0, 3, 1);
  }

  v18 = *(a3 + 4);
  if ((v18 & 4) != 0)
  {
    if (v6)
    {
      v19 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v14, *(a3 + 24), v6);
      LOBYTE(v6) = 1;
      goto LABEL_16;
    }
  }

  else
  {
    LOBYTE(v6) = v6 != 0;
  }

  if ((v18 & 0x20) == 0 || *(a3 + 212) != 1)
  {
    v21 = 0;
    goto LABEL_20;
  }

  v19 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15);
LABEL_16:
  v20 = v19;
  v21 = v20;
  if (!v20)
  {
LABEL_20:
    v25 = 0;
    goto LABEL_21;
  }

  v118 = v20;
  v22 = objc_opt_class();
  v24 = objc_msgSend_validateObjectValue_withClass_forProperty_(v16, v23, &v118, v22, 40);
  v25 = v118;

  if (v24)
  {
    objc_msgSend_setObject_forProperty_(v108, v26, v25, 40);
  }

LABEL_21:

  v29 = *(a3 + 4);
  v30 = v6 ^ 1;
  if ((v29 & 8) == 0)
  {
    v30 = 1;
  }

  if (v30)
  {
    if ((v29 & 0x40) == 0 || *(a3 + 213) != 1)
    {
      v33 = 0;
      goto LABEL_32;
    }

    v31 = objc_msgSend_null(MEMORY[0x277CBEB68], v27, v28);
  }

  else
  {
    v31 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D81180], v27, *(a3 + 25), v110);
  }

  v32 = v31;
  v33 = v32;
  if (!v32)
  {
LABEL_32:
    v37 = 0;
    goto LABEL_33;
  }

  v117 = v32;
  v34 = objc_opt_class();
  v36 = objc_msgSend_validateObjectValue_withClass_forProperty_(v16, v35, &v117, v34, 187);
  v37 = v117;

  if (v36)
  {
    objc_msgSend_setObject_forProperty_(v108, v38, v37, 187);
  }

LABEL_33:

  v41 = *(a3 + 4);
  if (v41)
  {
    v43 = objc_alloc(MEMORY[0x277CCACA8]);
    v42 = objc_msgSend_tsp_initWithProtobufString_(v43, v44, *(a3 + 22) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    if ((v41 & 0x80) == 0 || *(a3 + 214) != 1)
    {
      v46 = 0;
      goto LABEL_42;
    }

    v42 = objc_msgSend_null(MEMORY[0x277CBEB68], v39, v40);
  }

  v45 = v42;
  v46 = v45;
  if (v45)
  {
    v116 = v45;
    v47 = objc_opt_class();
    v49 = objc_msgSend_validateObjectValue_withClass_forProperty_(v16, v48, &v116, v47, 16);
    v50 = v116;

    if (v49)
    {
      objc_msgSend_setObject_forProperty_(v108, v51, v50, 16);
    }

    goto LABEL_43;
  }

LABEL_42:
  v50 = 0;
LABEL_43:

  if (*(a3 + 17))
  {
    LODWORD(v120) = *(a3 + 54);
    if (objc_msgSend_validateIntValue_forProperty_(v16, v52, &v120, 44))
    {
      objc_msgSend_setIntValue_forProperty_(v108, v53, v120, 44);
    }
  }

  v54 = objc_opt_class();
  objc_msgSend_pGetDefaultTextIndentFloats_(v54, v55, &v120);
  objc_msgSend_pSetRepeatedArrayOfFloats_forProperty_defaultValues_(*(&self->super.super.super.isa + v109), v56, a3 + 40, 176, &v120);
  v122 = 0;
  v120 = 0u;
  v121 = 0u;
  objc_msgSend_pSetRepeatedArrayOfFloats_forProperty_defaultValues_(*(&self->super.super.super.isa + v109), v57, a3 + 56, 177, &v120);
  if (*(a3 + 20))
  {
    v59 = objc_alloc(MEMORY[0x277CBEB18]);
    v63 = objc_msgSend_initWithCapacity_(v59, v60, 9);
    for (i = 0; i != 9; ++i)
    {
      if (i >= *(a3 + 20) || ((TSWP::ListStyleArchive_LabelGeometry::ListStyleArchive_LabelGeometry(&v120, *(*(a3 + 11) + 8 * i + 8)), v65 = [TSWPListLabelGeometry alloc], v67 = objc_msgSend_initWithScale_scaleWithText_baselineOffset_(v65, v66, v122, *(&v121 + 3), *(&v121 + 2)), v115 = v67, v68 = objc_opt_class(), v70 = objc_msgSend_validateObjectValue_withClass_forProperty_(v16, v69, &v115, v68, 181), v71 = v115, v67, !v70) ? (v72 = 0) : (v72 = v71), v71, TSWP::ListStyleArchive_LabelGeometry::~ListStyleArchive_LabelGeometry(&v120), !v72))
      {
        v72 = objc_msgSend_listLabelGeometry(TSWPListLabelGeometry, v61, v62);
      }

      objc_msgSend_addObject_(v63, v61, v72);
    }

    objc_msgSend_setObject_forProperty_(*(&self->super.super.super.isa + v109), v61, v63, 181);
  }

  if (*(a3 + 24))
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    objc_msgSend_pSetRepeatedArrayOfInts_forProperty_defaultValues_min_max_(*(&self->super.super.super.isa + v109), v58, a3 + 96, 184, &v120, 0, 64);
  }

  if (*(a3 + 40))
  {
    BYTE8(v120) = 0;
    *&v120 = 0;
    objc_msgSend_pSetRepeatedArrayOfBools_forProperty_defaultValues_(*(&self->super.super.super.isa + v109), v58, a3 + 160, 185, &v120);
  }

  if (*(a3 + 30))
  {
    v73 = objc_alloc(MEMORY[0x277CBEB18]);
    v75 = objc_msgSend_initWithCapacity_(v73, v74, 9);
    v76 = 0;
    while (1)
    {
      if (v76 >= *(a3 + 30))
      {
        goto LABEL_67;
      }

      v77 = objc_alloc(MEMORY[0x277CCACA8]);
      v79 = objc_msgSend_tsp_initWithProtobufString_(v77, v78, *(*(a3 + 16) + 8 * v76 + 8));
      v114 = v79;
      v80 = objc_opt_class();
      v82 = objc_msgSend_validateObjectValue_withClass_forProperty_(v16, v81, &v114, v80, 183);
      v83 = v114;

      if ((v82 & 1) == 0)
      {
        break;
      }

      if (!v83)
      {
        goto LABEL_67;
      }

LABEL_68:
      objc_msgSend_addObject_(v75, v84, v83);

      if (++v76 == 9)
      {
        objc_msgSend_setObject_forProperty_(*(&self->super.super.super.isa + v109), v88, v75, 183);

        goto LABEL_70;
      }
    }

LABEL_67:
    v85 = objc_opt_class();
    v83 = objc_msgSend_defaultLabelString(v85, v86, v87);
    goto LABEL_68;
  }

LABEL_70:
  if (*(a3 + 36))
  {
    v89 = objc_alloc(MEMORY[0x277CBEB18]);
    v93 = objc_msgSend_initWithCapacity_(v89, v90, 9);
    for (j = 0; j != 9; ++j)
    {
      v95 = objc_msgSend_null(MEMORY[0x277CBEB68], v91, v92);
      objc_msgSend_addObject_(v93, v96, v95);

      if (j < *(a3 + 36))
      {
        v97 = *(*(a3 + 19) + 8 * j + 8);
        v98 = *(v97 + 16);
        if (v98)
        {
          v101 = *(v97 + 24);
          v111[0] = MEMORY[0x277D85DD0];
          v111[1] = 3221225472;
          v111[2] = sub_276D49AF8;
          v111[3] = &unk_27A6F3F20;
          v111[4] = self;
          v112 = v93;
          v113 = j;
          v102 = v110;
          v103 = objc_opt_class();
          objc_msgSend_readReferenceMessage_class_protocol_completion_(v102, v104, v101, v103, 0, v111);
        }

        else if ((v98 & 2) != 0)
        {
          v107 = objc_msgSend_readDataReferenceMessage_(v110, v91, *(v97 + 32));
          if (!v107)
          {
            v107 = objc_msgSend_null(MEMORY[0x277CBEB68], v105, v106);
          }

          objc_msgSend_setObject_atIndexedSubscript_(v93, v105, v107, j);
        }

        else if ((v98 & 4) != 0 && *(v97 + 40) == 1)
        {
          v99 = objc_msgSend_null(MEMORY[0x277CBEB68], v91, v92);
          objc_msgSend_setObject_atIndexedSubscript_(v93, v100, v99, j);
        }
      }
    }

    objc_msgSend_setObject_forProperty_(*(&self->super.super.super.isa + v109), v91, v93, 182);
  }

  v6 = v110;
LABEL_85:
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276D4D468, off_2812DC408[44]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v320 = *MEMORY[0x277D85DE8];
  v6 = a4;
  *(a3 + 4) |= 2u;
  v7 = *(a3 + 23);
  v307 = v6;
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x277CA3260](v8);
    *(a3 + 23) = v7;
  }

  v318.receiver = self;
  v318.super_class = TSWPListStyle;
  [(TSWPListStyle *)&v318 saveToArchive:v7 archiver:v6];
  v11 = objc_msgSend_overrideCount(self, v9, v10);
  if (!v11)
  {
    goto LABEL_201;
  }

  if (HIDWORD(v11))
  {
    v295 = self;
    v296 = MEMORY[0x277D81150];
    v297 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSWPListStyle saveToArchive:archiver:]");
    v299 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v298, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v296, v300, v297, v299, 1338, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v301, v302);
    LODWORD(v11) = -1;
    self = v295;
  }

  *(a3 + 4) |= 0x10u;
  *(a3 + 52) = v11;
  v311 = *(&self->super.super.super.isa + *MEMORY[0x277D80AF0]);
  v13 = objc_opt_class();
  if (objc_msgSend_containsProperty_(v311, v14, 180))
  {
    v16 = objc_msgSend_objectForProperty_(v311, v15, 180);
    v20 = objc_msgSend_count(v16, v17, v18);
    for (i = 0; i != 9; ++i)
    {
      if (i >= v20)
      {
        v27 = 0.0;
      }

      else
      {
        v22 = objc_msgSend_objectAtIndexedSubscript_(v16, v19, i);
        LODWORD(v25) = objc_msgSend_intValue(v22, v23, v24);

        v319[0] = v25;
        if (objc_msgSend_validateIntValue_forProperty_min_max_(v13, v26, v319, 180, 0, 3))
        {
          v27 = v319[0];
        }

        else
        {
          v27 = 0.0;
        }
      }

      v28 = *(a3 + 6);
      if (v28 == *(a3 + 7))
      {
        v29 = v28 + 1;
        sub_276D4D210(a3 + 6, v28 + 1);
        *(*(a3 + 4) + 4 * v28) = v27;
      }

      else
      {
        *(*(a3 + 4) + 4 * v28) = v27;
        v29 = v28 + 1;
      }

      *(a3 + 6) = v29;
    }
  }

  if (objc_msgSend_containsProperty_(v311, v15, 40))
  {
    v31 = objc_msgSend_objectForProperty_(v311, v30, 40);
    v317 = v31;
    v32 = objc_opt_class();
    v34 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v33, &v317, v32, 40);
    v35 = v317;

    if (v34)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v38 = *(a3 + 4);
      if (isKindOfClass)
      {
        *(a3 + 4) = v38 | 0x20;
        *(a3 + 212) = 1;
      }

      else
      {
        *(a3 + 4) = v38 | 4;
        v39 = *(a3 + 24);
        if (!v39)
        {
          v40 = *(a3 + 1);
          if (v40)
          {
            v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
          }

          v39 = MEMORY[0x277CA3140](v40);
          *(a3 + 24) = v39;
        }

        objc_msgSend_saveToArchive_archiver_(v35, v37, v39, v307);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v311, v30, 187))
  {
    v42 = objc_msgSend_objectForProperty_(v311, v41, 187);
    v316 = v42;
    v43 = objc_opt_class();
    v45 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v44, &v316, v43, 187);
    v46 = v316;

    if (v45)
    {
      objc_opt_class();
      v47 = objc_opt_isKindOfClass();
      v49 = *(a3 + 4);
      if (v47)
      {
        *(a3 + 4) = v49 | 0x40;
        *(a3 + 213) = 1;
      }

      else
      {
        *(a3 + 4) = v49 | 8;
        v50 = *(a3 + 25);
        if (!v50)
        {
          v51 = *(a3 + 1);
          if (v51)
          {
            v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
          }

          v50 = MEMORY[0x277CA3210](v51);
          *(a3 + 25) = v50;
        }

        objc_msgSend_saveToArchive_archiver_(v46, v48, v50, v307);
      }
    }
  }

  v52 = objc_msgSend_objectForProperty_(v311, v41, 16);
  if (v52)
  {
    v54 = v52;
    v315 = v54;
    v55 = objc_opt_class();
    v57 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v56, &v315, v55, 16);
    v58 = v315;

    if (v57)
    {
      objc_opt_class();
      v59 = objc_opt_isKindOfClass();
      v60 = *(a3 + 4);
      if (v59)
      {
        *(a3 + 4) = v60 | 0x80;
        *(a3 + 214) = 1;
      }

      else
      {
        *(a3 + 4) = v60 | 1;
        v61 = google::protobuf::internal::ArenaStringPtr::Mutable();
        objc_msgSend_tsp_saveToProtobufString_(v58, v62, v61);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v311, v53, 44))
  {
    v64 = objc_msgSend_intValueForProperty_(v311, v63, 44);
    LODWORD(v319[0]) = v64;
    if (TSWP::WritingDirectionType_IsValid(v64))
    {
      if (objc_msgSend_validateIntValue_forProperty_(v13, v63, v319, 44))
      {
        v65 = v319[0];
        *(a3 + 4) |= 0x100u;
        *(a3 + 54) = v65;
      }
    }
  }

  if (objc_msgSend_containsProperty_(v311, v63, 176))
  {
    v67 = objc_opt_class();
    objc_msgSend_pGetDefaultTextIndentFloats_(v67, v68, v319);
    v70 = objc_msgSend_objectForProperty_(v311, v69, 176);
    v74 = objc_msgSend_count(v70, v71, v72);
    v75 = 0;
    while (1)
    {
      v76 = v319[v75];
      if (v75 < v74)
      {
        v77 = objc_msgSend_objectAtIndexedSubscript_(v70, v73, v75);
        objc_msgSend_floatValue(v77, v78, v79);
        v81 = v80;

        v314 = v81;
        if (objc_msgSend_validateFloatValue_forProperty_(v13, v82, &v314, 176))
        {
          v76 = v314;
        }
      }

      if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v76 > 0.0 && v76 > 3.40282347e38)
        {
          v308 = MEMORY[0x277D81150];
          v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "[TSWPListStyle saveToArchive:archiver:]");
          v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v308, v89, v86, v88, 1379, 0, "Out-of-bounds type assignment was clamped to max");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v90, v91);
          *&v92 = 3.4028e38;
LABEL_68:
          v83 = *&v92;
          goto LABEL_61;
        }

        if (v76 < 0.0 && v76 < -3.40282347e38)
        {
          v309 = MEMORY[0x277D81150];
          v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "[TSWPListStyle saveToArchive:archiver:]");
          v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v309, v96, v93, v95, 1379, 0, "Out-of-bounds type assignment was clamped to min");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v97, v98);
          *&v92 = -3.4028e38;
          goto LABEL_68;
        }
      }

      v83 = v76;
LABEL_61:
      v84 = *(a3 + 10);
      if (v84 == *(a3 + 11))
      {
        v85 = v84 + 1;
        sub_276D4D210(a3 + 10, v84 + 1);
        *(*(a3 + 6) + 4 * v84) = v83;
      }

      else
      {
        *(*(a3 + 6) + 4 * v84) = v83;
        v85 = v84 + 1;
      }

      *(a3 + 10) = v85;
      if (++v75 == 9)
      {

        break;
      }
    }
  }

  if (objc_msgSend_containsProperty_(v311, v66, 177))
  {
    v100 = objc_msgSend_objectForProperty_(v311, v99, 177);
    v104 = objc_msgSend_count(v100, v101, v102);
    for (j = 0; j != 9; ++j)
    {
      v106 = 0.0;
      if (j < v104)
      {
        v107 = objc_msgSend_objectAtIndexedSubscript_(v100, v103, j);
        objc_msgSend_floatValue(v107, v108, v109);
        v111 = v110;

        v319[0] = v111;
        if (objc_msgSend_validateFloatValue_forProperty_(v13, v112, v319, 177))
        {
          v106 = v319[0];
        }

        else
        {
          v106 = 0.0;
        }
      }

      v113 = *(a3 + 14);
      if (v113 == *(a3 + 15))
      {
        v114 = v113 + 1;
        sub_276D4D210(a3 + 14, v113 + 1);
        *(*(a3 + 8) + 4 * v113) = v106;
      }

      else
      {
        *(*(a3 + 8) + 4 * v113) = v106;
        v114 = v113 + 1;
      }

      *(a3 + 14) = v114;
    }
  }

  if (objc_msgSend_containsProperty_(v311, v99, 181))
  {
    v117 = objc_msgSend_listLabelGeometry(TSWPListLabelGeometry, v115, v116);
    v310 = objc_msgSend_objectForProperty_(v311, v118, 181);
    v123 = objc_msgSend_count(v310, v119, v120);
    v124 = 0;
    while (1)
    {
      v125 = *(a3 + 11);
      if (!v125)
      {
        goto LABEL_87;
      }

      v126 = *(a3 + 20);
      v127 = *v125;
      if (v126 < *v125)
      {
        *(a3 + 20) = v126 + 1;
        v128 = *&v125[2 * v126 + 2];
        goto LABEL_89;
      }

      if (v127 == *(a3 + 21))
      {
LABEL_87:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 72));
        v125 = *(a3 + 11);
        v127 = *v125;
      }

      *v125 = v127 + 1;
      v128 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ListStyleArchive_LabelGeometry>(*(a3 + 9));
      v129 = *(a3 + 20);
      v130 = *(a3 + 11) + 8 * v129;
      *(a3 + 20) = v129 + 1;
      *(v130 + 8) = v128;
LABEL_89:
      objc_msgSend_scale(v117, v121, v122);
      if ((*&v133 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_94;
      }

      if (v133 > 0.0 && v133 > 3.40282347e38)
      {
        v157 = MEMORY[0x277D81150];
        v158 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v131, "[TSWPListStyle saveToArchive:archiver:]");
        v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v159, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v157, v161, v158, v160, 1407, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v162, v163);
        *&v164 = 3.4028e38;
      }

      else
      {
        if (v133 >= 0.0 || v133 >= -3.40282347e38)
        {
LABEL_94:
          v134 = v133;
          goto LABEL_95;
        }

        v173 = MEMORY[0x277D81150];
        v174 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v131, "[TSWPListStyle saveToArchive:archiver:]");
        v176 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v175, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v173, v177, v174, v176, 1407, 0, "Out-of-bounds type assignment was clamped to min");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v178, v179);
        *&v164 = -3.4028e38;
      }

      v134 = *&v164;
LABEL_95:
      *(v128 + 16) |= 2u;
      *(v128 + 28) = v134;
      objc_msgSend_baselineOffset(v117, v131, v132);
      if ((*&v137 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_100;
      }

      if (v137 > 0.0 && v137 > 3.40282347e38)
      {
        v165 = MEMORY[0x277D81150];
        v166 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v135, "[TSWPListStyle saveToArchive:archiver:]");
        v168 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v167, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v165, v169, v166, v168, 1408, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v170, v171);
        *&v172 = 3.4028e38;
      }

      else
      {
        if (v137 >= 0.0 || v137 >= -3.40282347e38)
        {
LABEL_100:
          v138 = v137;
          goto LABEL_101;
        }

        v180 = MEMORY[0x277D81150];
        v181 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v135, "[TSWPListStyle saveToArchive:archiver:]");
        v183 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v182, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v180, v184, v181, v183, 1408, 0, "Out-of-bounds type assignment was clamped to min");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v185, v186);
        *&v172 = -3.4028e38;
      }

      v138 = *&v172;
LABEL_101:
      *(v128 + 16) |= 1u;
      *(v128 + 24) = v138;
      v139 = objc_msgSend_scaleWithText(v117, v135, v136);
      *(v128 + 16) |= 4u;
      *(v128 + 32) = v139;
      if (v124 < v123)
      {
        v140 = objc_msgSend_objectAtIndexedSubscript_(v310, v121, v124);
        v313 = v140;
        v141 = objc_opt_class();
        v143 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v142, &v313, v141, 181);
        v144 = v313;

        v147 = v144;
        if (v143)
        {
          objc_msgSend_scale(v144, v145, v146);
          if ((*&v150 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_108;
          }

          if (v150 > 0.0 && v150 > 3.40282347e38)
          {
            v303 = MEMORY[0x277D81150];
            v187 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v148, "[TSWPListStyle saveToArchive:archiver:]");
            v189 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v188, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v303, v190, v187, v189, 1414, 0, "Out-of-bounds type assignment was clamped to max");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v191, v192);
            *&v193 = 3.4028e38;
          }

          else
          {
            if (v150 >= 0.0 || v150 >= -3.40282347e38)
            {
LABEL_108:
              v151 = v150;
              goto LABEL_109;
            }

            v305 = MEMORY[0x277D81150];
            v201 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v148, "[TSWPListStyle saveToArchive:archiver:]");
            v203 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v202, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v305, v204, v201, v203, 1414, 0, "Out-of-bounds type assignment was clamped to min");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v205, v206);
            *&v193 = -3.4028e38;
          }

          v151 = *&v193;
LABEL_109:
          *(v128 + 16) |= 2u;
          *(v128 + 28) = v151;
          objc_msgSend_baselineOffset(v147, v148, v149);
          if ((*&v154 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_114:
            v155 = v154;
          }

          else
          {
            if (v154 > 0.0 && v154 > 3.40282347e38)
            {
              v304 = MEMORY[0x277D81150];
              v194 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, "[TSWPListStyle saveToArchive:archiver:]");
              v196 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v195, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v304, v197, v194, v196, 1415, 0, "Out-of-bounds type assignment was clamped to max");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v198, v199);
              *&v200 = 3.4028e38;
            }

            else
            {
              if (v154 >= 0.0 || v154 >= -3.40282347e38)
              {
                goto LABEL_114;
              }

              v306 = MEMORY[0x277D81150];
              v207 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, "[TSWPListStyle saveToArchive:archiver:]");
              v209 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v208, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v306, v210, v207, v209, 1415, 0, "Out-of-bounds type assignment was clamped to min");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v211, v212);
              *&v200 = -3.4028e38;
            }

            v155 = *&v200;
          }

          *(v128 + 16) |= 1u;
          *(v128 + 24) = v155;
          v156 = objc_msgSend_scaleWithText(v147, v152, v153);
          *(v128 + 16) |= 4u;
          *(v128 + 32) = v156;
        }
      }

      if (++v124 == 9)
      {

        break;
      }
    }
  }

  if (objc_msgSend_containsProperty_(v311, v115, 184))
  {
    v214 = objc_msgSend_objectForProperty_(v311, v213, 184);
    v218 = objc_msgSend_count(v214, v215, v216);
    for (k = 0; k != 9; ++k)
    {
      if (k >= v218)
      {
        v225 = 0.0;
      }

      else
      {
        v220 = objc_msgSend_objectAtIndexedSubscript_(v214, v217, k);
        LODWORD(v223) = objc_msgSend_intValue(v220, v221, v222);

        v319[0] = v223;
        if (objc_msgSend_validateIntValue_forProperty_min_max_(v13, v224, v319, 184, 0, 64))
        {
          v225 = v319[0];
        }

        else
        {
          v225 = 0.0;
        }
      }

      v226 = *(a3 + 24);
      if (v226 == *(a3 + 25))
      {
        v227 = v226 + 1;
        sub_276D4D210(a3 + 24, v226 + 1);
        *(*(a3 + 13) + 4 * v226) = v225;
      }

      else
      {
        *(*(a3 + 13) + 4 * v226) = v225;
        v227 = v226 + 1;
      }

      *(a3 + 24) = v227;
    }
  }

  if (objc_msgSend_containsProperty_(v311, v213, 185))
  {
    v229 = objc_msgSend_objectForProperty_(v311, v228, 185);
    v233 = objc_msgSend_count(v229, v230, v231);
    for (m = 0; m != 9; ++m)
    {
      if (m >= v233)
      {
        v241 = 0;
      }

      else
      {
        v235 = objc_msgSend_objectAtIndexedSubscript_(v229, v232, m);
        LODWORD(v238) = objc_msgSend_BOOLValue(v235, v236, v237);

        v319[0] = v238;
        v240 = objc_msgSend_validateIntValue_forProperty_min_max_(v13, v239, v319, 185, 0, 1);
        if (LODWORD(v319[0]))
        {
          v241 = v240;
        }

        else
        {
          v241 = 0;
        }
      }

      v242 = *(a3 + 40);
      if (v242 == *(a3 + 41))
      {
        v243 = v242 + 1;
        sub_276D4D368(a3 + 40, v242 + 1);
        *(*(a3 + 21) + v242) = v241;
      }

      else
      {
        *(*(a3 + 21) + v242) = v241;
        v243 = v242 + 1;
      }

      *(a3 + 40) = v243;
    }
  }

  if (objc_msgSend_containsProperty_(v311, v228, 183))
  {
    v245 = objc_msgSend_objectForProperty_(v311, v244, 183);
    v249 = objc_msgSend_count(v245, v246, v247);
    v250 = 0;
    while (1)
    {
      if (v250 >= v249)
      {
        goto LABEL_164;
      }

      v251 = objc_msgSend_objectAtIndexedSubscript_(v245, v248, v250);
      v312 = v251;
      v252 = objc_opt_class();
      v254 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v253, &v312, v252, 183);
      v255 = v312;

      if ((v254 & 1) == 0)
      {
        break;
      }

      v256 = v255;

      if (!v256)
      {
        goto LABEL_164;
      }

      v258 = *(a3 + 16);
      if (!v258)
      {
        goto LABEL_176;
      }

      v259 = *(a3 + 30);
      v260 = *v258;
      if (v259 >= *v258)
      {
        if (v260 == *(a3 + 31))
        {
LABEL_176:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 112));
          v258 = *(a3 + 16);
          v260 = *v258;
        }

        *v258 = v260 + 1;
        v267 = sub_276D34D8C(*(a3 + 14));
        v268 = *(a3 + 30);
        v269 = *(a3 + 16) + 8 * v268;
        *(a3 + 30) = v268 + 1;
        *(v269 + 8) = v267;
        objc_msgSend_tsp_saveToProtobufString_(v256, v270, v267);
        goto LABEL_172;
      }

      *(a3 + 30) = v259 + 1;
      objc_msgSend_tsp_saveToProtobufString_(v256, v257, *&v258[2 * v259 + 2]);
LABEL_172:

      if (++v250 == 9)
      {

        goto LABEL_178;
      }
    }

LABEL_164:
    BYTE2(v319[0]) = -94;
    LOWORD(v319[0]) = -32542;
    v261 = *(a3 + 16);
    if (!v261)
    {
      goto LABEL_169;
    }

    v262 = *(a3 + 30);
    v263 = *v261;
    if (v262 < *v261)
    {
      *(a3 + 30) = v262 + 1;
      v264 = *&v261[2 * v262 + 2];
LABEL_171:
      MEMORY[0x277CA3C70](v264, v319, 3);
      v256 = 0;
      goto LABEL_172;
    }

    if (v263 == *(a3 + 31))
    {
LABEL_169:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 112));
      v261 = *(a3 + 16);
      v263 = *v261;
    }

    *v261 = v263 + 1;
    v264 = sub_276D34D8C(*(a3 + 14));
    v265 = *(a3 + 30);
    v266 = *(a3 + 16) + 8 * v265;
    *(a3 + 30) = v265 + 1;
    *(v266 + 8) = v264;
    goto LABEL_171;
  }

LABEL_178:
  if (!objc_msgSend_containsProperty_(v311, v244, 182))
  {
    goto LABEL_200;
  }

  v272 = objc_msgSend_objectForProperty_(v311, v271, 182);
  v276 = objc_msgSend_count(v272, v273, v274);
  for (n = 0; n != 9; ++n)
  {
    v278 = *(a3 + 19);
    if (!v278)
    {
      goto LABEL_185;
    }

    v279 = *(a3 + 36);
    v280 = *v278;
    if (v279 < *v278)
    {
      *(a3 + 36) = v279 + 1;
      v281 = *&v278[2 * v279 + 2];
      goto LABEL_187;
    }

    if (v280 == *(a3 + 37))
    {
LABEL_185:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 136));
      v278 = *(a3 + 19);
      v280 = *v278;
    }

    *v278 = v280 + 1;
    v281 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ListStyleArchive_LabelImage>(*(a3 + 17));
    v282 = *(a3 + 36);
    v283 = *(a3 + 19) + 8 * v282;
    *(a3 + 36) = v282 + 1;
    *(v283 + 8) = v281;
LABEL_187:
    if (n >= v276)
    {
      v284 = 0;
    }

    else
    {
      v284 = objc_msgSend_objectAtIndexedSubscript_(v272, v275, n);

      if (v284)
      {
        v287 = objc_msgSend_null(MEMORY[0x277CBEB68], v285, v286);
        v288 = v284 == v287;

        if (v288)
        {
          *(v281 + 16) |= 4u;
          *(v281 + 40) = 1;
        }

        else
        {
          v289 = objc_opt_class();
          if ((objc_msgSend_deprecated_isDefaultMissingBulletImage_(v289, v290, v284) & 1) == 0)
          {
            *(v281 + 16) |= 2u;
            v292 = *(v281 + 32);
            v293 = v307;
            if (!v292)
            {
              v294 = *(v281 + 8);
              if (v294)
              {
                v294 = *(v294 & 0xFFFFFFFFFFFFFFFELL);
              }

              v292 = MEMORY[0x277CA31E0](v294);
              *(v281 + 32) = v292;
              v293 = v307;
            }

            objc_msgSend_setDataReference_message_(v293, v291, v284, v292);
          }
        }
      }
    }
  }

LABEL_200:
  v6 = v307;
LABEL_201:
}

- (id)parentStyleForFixingOrphanVariation
{
  objc_opt_class();
  v5 = objc_msgSend_context(self, v3, v4);
  v8 = objc_msgSend_documentObject(v5, v6, v7);
  v9 = TSUDynamicCast();

  v12 = objc_msgSend_theme(v9, v10, v11);
  v15 = objc_msgSend_defaultListStyle(v12, v13, v14);

  return v15;
}

+ (id)p_arrayValuedProperties
{
  if (qword_280A58188 != -1)
  {
    sub_276F4F15C();
  }

  v3 = qword_280A58180;

  return v3;
}

+ (id)defaultArrayForProperty:(int)a3
{
  v3 = *&a3;
  v5 = objc_msgSend_p_arrayValuedProperties(TSWPListStyle, a2, *&a3);
  v7 = objc_msgSend_containsProperty_(v5, v6, v3);

  if ((v7 & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSWPListStyle defaultArrayForProperty:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
    v14 = String();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v13, 1526, 0, "Calling array-value accessor with non-array property: %{public}@", v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = 0;
  if (v3 <= 181)
  {
    if (v3 <= 179)
    {
      if (v3 == 176)
      {
        v18 = objc_msgSend_defaultTextIndents(a1, v8, v9);
      }

      else if (v3 == 177)
      {
        v18 = objc_msgSend_defaultLabelIndents(a1, v8, v9);
      }

      goto LABEL_21;
    }

    if (v3 == 180)
    {
      objc_msgSend_defaultLabelTypes(a1, v8, v9);
    }

    else
    {
      objc_msgSend_defaultLabelGeometries(a1, v8, v9);
    }

    v18 = LABEL_11:;
    goto LABEL_21;
  }

  if (v3 <= 183)
  {
    if (v3 == 182)
    {
      objc_msgSend_defaultLabelImages(a1, v8, v9);
    }

    else
    {
      objc_msgSend_defaultLabelStrings(a1, v8, v9);
    }

    goto LABEL_11;
  }

  if (v3 == 184)
  {
    v18 = objc_msgSend_defaultLabelNumberTypes(a1, v8, v9);
  }

  else if (v3 == 185)
  {
    v18 = objc_msgSend_defaultLabelTieredNumbers(a1, v8, v9);
  }

LABEL_21:

  return v18;
}

- (id)objectForProperty:(int)a3 atIndex:(unint64_t)a4
{
  v5 = *&a3;
  v7 = objc_msgSend_p_arrayValuedProperties(TSWPListStyle, a2, *&a3);
  v9 = objc_msgSend_containsProperty_(v7, v8, v5);

  if ((v9 & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPListStyle objectForProperty:atIndex:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
    v15 = String();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v14, 1544, 0, "Calling array-value accessor with non-array property: %{public}@", v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = objc_msgSend_valueForProperty_(self, v10, v5);
  v21 = v19;
  if (v19)
  {
    v22 = objc_msgSend_objectAtIndex_(v19, v20, a4);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)setLocalizedArray:(id)a3 forProperty:(int)a4
{
  v4 = *&a4;
  v93 = *MEMORY[0x277D85DE8];
  v82 = a3;
  if (objc_msgSend_count(v82, v5, v6) != 9)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPListStyle setLocalizedArray:forProperty:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
    v15 = objc_msgSend_count(v82, v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v10, v12, 1562, 0, "Bad array size: %lu", v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  if (objc_msgSend_count(v82, v7, v8) != 9)
  {
    goto LABEL_44;
  }

  if ((v4 - 176) > 9)
  {
    goto LABEL_42;
  }

  if (((1 << (v4 + 80)) & 0x313) == 0)
  {
    if (((1 << (v4 + 80)) & 0x60) != 0)
    {
      v58 = MEMORY[0x277D81150];
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSWPListStyle setLocalizedArray:forProperty:]");
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v62, v59, v61, 1626, 0, "Unsupported array property: %d", v4);
LABEL_43:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79);
      goto LABEL_44;
    }

    if (v4 == 183)
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v64 = v82;
      v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v83, v91, 16);
      if (v66)
      {
        v67 = *v84;
        while (2)
        {
          for (i = 0; i != v66; ++i)
          {
            if (*v84 != v67)
            {
              objc_enumerationMutation(v64);
            }

            objc_opt_class();
            v69 = TSUCheckedDynamicCast();
            v70 = v69 == 0;

            if (v70)
            {
LABEL_41:

              goto LABEL_44;
            }
          }

          v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v71, &v83, v91, 16);
          if (v66)
          {
            continue;
          }

          break;
        }
      }

      objc_msgSend_willModify(self, v72, v73);
      objc_msgSend_setValue_forProperty_(self, v74, v64, 183);
      goto LABEL_44;
    }

LABEL_42:
    v75 = MEMORY[0x277D81150];
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSWPListStyle setLocalizedArray:forProperty:]");
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v77, v59, v61, 1566, 0, "Unexpected property %d", v4);
    goto LABEL_43;
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v82;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v87, v92, 16);
  if (v21)
  {
    v22 = 1;
    v23 = *v88;
LABEL_8:
    v24 = 0;
    while (1)
    {
      if (*v88 != v23)
      {
        objc_enumerationMutation(obj);
      }

      objc_opt_class();
      v25 = TSUCheckedDynamicCast();
      v28 = v25;
      if (!v25)
      {
        goto LABEL_41;
      }

      if ((v4 - 176) < 2)
      {
        objc_msgSend_doubleValue(v25, v26, v27);
        if (v39 < 0.0)
        {
          v40 = MEMORY[0x277D81150];
          v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSWPListStyle setLocalizedArray:forProperty:]");
          v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
          objc_msgSend_doubleValue(v28, v42, v43);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v44, v31, v33, 1587, 0, "Unexpected indent value: %g", v45);
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      if (v4 == 180)
      {
        break;
      }

      if (v4 == 184)
      {
        if (objc_msgSend_unsignedIntValue(v25, v26, v27) >= 0x41)
        {
          v30 = MEMORY[0x277D81150];
          v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSWPListStyle setLocalizedArray:forProperty:]");
          v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
          v36 = objc_msgSend_unsignedIntegerValue(v28, v34, v35);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v31, v33, 1595, 0, "Bad number type: %lu", v36);
LABEL_22:

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
          v22 = 0;
          goto LABEL_23;
        }

        goto LABEL_20;
      }

LABEL_23:

      if (v21 == ++v24)
      {
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v55, &v87, v92, 16);
        if (v21)
        {
          goto LABEL_8;
        }

        if (v22)
        {
          goto LABEL_30;
        }

        goto LABEL_44;
      }
    }

    if (objc_msgSend_unsignedIntValue(v25, v26, v27) >= 4)
    {
      v47 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSWPListStyle setLocalizedArray:forProperty:]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
      v51 = objc_msgSend_unsignedIntegerValue(v28, v49, v50);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v52, v31, v33, 1591, 0, "Bad label type value: %lu", v51);
      goto LABEL_22;
    }

LABEL_20:
    v22 = 1;
    goto LABEL_23;
  }

LABEL_30:
  objc_msgSend_willModify(self, v56, v57);
  objc_msgSend_setValue_forProperty_(self, v63, obj, v4);
LABEL_44:
}

- (int)intValueForProperty:(int)a3 atIndex:(unint64_t)a4
{
  v5 = *&a3;
  v7 = objc_msgSend_p_arrayValuedProperties(TSWPListStyle, a2, *&a3);
  v9 = objc_msgSend_containsProperty_(v7, v8, v5);

  if ((v9 & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPListStyle intValueForProperty:atIndex:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
    v15 = String();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v14, 1648, 0, "Calling array-value accessor with non-array property: %{public}@", v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = objc_msgSend_valueForProperty_(self, v10, v5);
  if (v19)
  {
    objc_opt_class();
    v21 = objc_msgSend_objectAtIndex_(v19, v20, a4);
    v22 = TSUDynamicCast();

    if (v22)
    {
      v25 = objc_msgSend_intValue(v22, v23, v24);
    }

    else
    {
      v25 = 0x80000000;
    }
  }

  else
  {
    v25 = 0x80000000;
  }

  return v25;
}

- (float)floatValueForProperty:(int)a3 atIndex:(unint64_t)a4
{
  v5 = *&a3;
  v7 = objc_msgSend_p_arrayValuedProperties(TSWPListStyle, a2, *&a3);
  v9 = objc_msgSend_containsProperty_(v7, v8, v5);

  if ((v9 & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPListStyle floatValueForProperty:atIndex:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
    v15 = String();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v14, 1649, 0, "Calling array-value accessor with non-array property: %{public}@", v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = objc_msgSend_valueForProperty_(self, v10, v5);
  if (v19)
  {
    objc_opt_class();
    v21 = objc_msgSend_objectAtIndex_(v19, v20, a4);
    v22 = TSUDynamicCast();

    if (v22)
    {
      objc_msgSend_floatValue(v22, v23, v24);
      v26 = v25;
    }

    else
    {
      v26 = INFINITY;
    }
  }

  else
  {
    v26 = INFINITY;
  }

  return v26;
}

- (double)doubleValueForProperty:(int)a3 atIndex:(unint64_t)a4
{
  v5 = *&a3;
  v7 = objc_msgSend_p_arrayValuedProperties(TSWPListStyle, a2, *&a3);
  v9 = objc_msgSend_containsProperty_(v7, v8, v5);

  if ((v9 & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPListStyle doubleValueForProperty:atIndex:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
    v15 = String();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v14, 1650, 0, "Calling array-value accessor with non-array property: %{public}@", v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = objc_msgSend_valueForProperty_(self, v10, v5);
  if (v19)
  {
    objc_opt_class();
    v21 = objc_msgSend_objectAtIndex_(v19, v20, a4);
    v22 = TSUDynamicCast();

    if (v22)
    {
      objc_msgSend_doubleValue(v22, v23, v24);
      v26 = v25;
    }

    else
    {
      v26 = INFINITY;
    }
  }

  else
  {
    v26 = INFINITY;
  }

  return v26;
}

- (double)CGFloatValueForProperty:(int)a3 atIndex:(unint64_t)a4
{
  v5 = *&a3;
  v7 = objc_msgSend_p_arrayValuedProperties(TSWPListStyle, a2, *&a3);
  v9 = objc_msgSend_containsProperty_(v7, v8, v5);

  if ((v9 & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPListStyle CGFloatValueForProperty:atIndex:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
    v15 = String();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v14, 1651, 0, "Calling array-value accessor with non-array property: %{public}@", v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = objc_msgSend_valueForProperty_(self, v10, v5);
  if (v19)
  {
    objc_opt_class();
    v21 = objc_msgSend_objectAtIndex_(v19, v20, a4);
    v22 = TSUDynamicCast();

    if (v22)
    {
      objc_msgSend_tsu_CGFloatValue(v22, v23, v24);
      v26 = v25;
    }

    else
    {
      v26 = INFINITY;
    }
  }

  else
  {
    v26 = INFINITY;
  }

  return v26;
}

- (id)baseStyleForTopicNumbers
{
  v6 = objc_msgSend_baseStyleForTopicNumbersOverride(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_baseStyleForTopicNumbersOverride(self, v4, v5);
    v10 = objc_msgSend_rootAncestor(v7, v8, v9);
  }

  else
  {
    v10 = objc_msgSend_rootAncestor(self, v4, v5);
  }

  return v10;
}

- (id)additionalPropertiesNeededForVariationWithPropertyMap:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D80AA8]);
  v7 = objc_msgSend_objectForProperty_(v4, v6, 180);
  if (v7)
  {
    v9 = objc_alloc_init(MEMORY[0x277D80AA8]);
    for (i = 0; i != 9; ++i)
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, i);
      v14 = objc_msgSend_intValue(v11, v12, v13);

      if ((v14 - 1) < 3)
      {
        objc_msgSend_addProperty_(v9, v8, (v14 + 181));
      }
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_276D4C8AC;
    v17[3] = &unk_27A6F3F48;
    v17[4] = self;
    v18 = v4;
    v19 = v5;
    objc_msgSend_enumeratePropertiesUsingBlock_(v9, v15, v17);
  }

  return v5;
}

- (id)resolvedValueForProperty:(int)a3 inStyles:(id)a4
{
  v6 = a4;
  if (objc_msgSend_count(v6, v7, v8) == 2)
  {
    objc_opt_class();
    v11 = objc_msgSend_objectAtIndexedSubscript_(v6, v10, 1);
    v12 = TSUDynamicCast();
  }

  else
  {
    v12 = 0;
  }

  if (a3 != 48)
  {
    if (a3 == 187)
    {
      if (!v12)
      {
        v13 = MEMORY[0x277D81150];
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPListStyle resolvedValueForProperty:inStyles:]");
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 1722, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
      }

      v22 = objc_msgSend_p_characterFillByResolvingWithParagraphStyle_(self, v9, v12);
      if (!v22)
      {
        v23 = MEMORY[0x277D81150];
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPListStyle resolvedValueForProperty:inStyles:]");
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 1724, 0, "invalid nil value for '%{public}s'", "fill");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
      }

      v32 = objc_msgSend_referenceColor(v22, v20, v21);
      if (v22)
      {
        v33 = objc_msgSend_referenceColor(v22, v30, v31);

        if (!v33)
        {
          v34 = MEMORY[0x277D81150];
          v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSWPListStyle resolvedValueForProperty:inStyles:]");
          v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 1726, 0, "Unable to calculate reference color for fill %{public}@", v22);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
        }
      }

      if (!v32)
      {
        v41 = MEMORY[0x277D81150];
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSWPListStyle resolvedValueForProperty:inStyles:]");
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v45, v42, v44, 1727, 0, "Failed to calculate TSWPListFontColorProperty reference color");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
      }

      goto LABEL_22;
    }

    v61 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPListStyle resolvedValueForProperty:inStyles:]");
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
    v63 = String();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v64, v57, v59, 1733, 0, "Unexpected property! %{public}@", v63);

LABEL_21:
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66);
    v32 = 0;
    goto LABEL_22;
  }

  if (!v12)
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPListStyle resolvedValueForProperty:inStyles:]");
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v52, v49, v51, 1729, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
  }

  v32 = objc_msgSend_p_characterFillByResolvingWithParagraphStyle_(self, v9, v12);
  if (!v32)
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "[TSWPListStyle resolvedValueForProperty:inStyles:]");
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v60, v57, v59, 1731, 0, "Failed to calculate TSWPCharacterFillProperty reference color");
    goto LABEL_21;
  }

LABEL_22:

  return v32;
}

- (id)p_characterFillByResolvingWithParagraphStyle:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_boxedValueForProperty_(self, v5, 187);
  if (!v8 || (objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7), v9 = objc_claimAutoreleasedReturnValue(), v9, v8 == v9))
  {
    v10 = objc_msgSend_boxedValueForProperty_(v4, v6, 48);
    if (v10)
    {
      v15 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v14);

      if (v10 == v15)
      {
        objc_opt_class();
        v27 = objc_msgSend_boxedValueForProperty_(v4, v26, 50);
        v18 = TSUDynamicCast();

        v30 = MEMORY[0x277D801F8];
        if (v18)
        {
          v31 = objc_msgSend_color(v18, v28, v29);
          v12 = objc_msgSend_colorWithColor_(v30, v32, v31);
        }

        else
        {
          v12 = objc_msgSend_clearColor(MEMORY[0x277D801F8], v28, v29);
        }
      }

      else
      {
        objc_opt_class();
        v16 = TSUCheckedDynamicCast();
        v18 = v16;
        if (v16)
        {
          v12 = v16;
        }

        else
        {
          v33 = MEMORY[0x277D81150];
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSWPListStyle p_characterFillByResolvingWithParagraphStyle:]");
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 1759, 0, "invalid nil value for '%{public}s'", "fillToReturn");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
          v12 = 0;
        }
      }
    }

    else
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPListStyle p_characterFillByResolvingWithParagraphStyle:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 1747, 0, "invalid nil value for '%{public}s'", "paragraphCharacterFillValue");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
      v12 = 0;
    }
  }

  else
  {
    objc_opt_class();
    v10 = TSUCheckedDynamicCast();
    v12 = objc_msgSend_colorWithColor_(MEMORY[0x277D801F8], v11, v10);
  }

  return v12;
}

- (TSWPListStyle)baseStyleForTopicNumbersOverride
{
  WeakRetained = objc_loadWeakRetained(&self->_baseStyleForTopicNumbersOverride);

  return WeakRetained;
}

@end