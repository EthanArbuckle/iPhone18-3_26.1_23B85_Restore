@interface TSWPPresetSource
+ (NSSet)presetKinds;
+ (id)p_bootstrapStrokeInTheme:(id)theme alternate:(unint64_t)alternate index:(unint64_t)index;
+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(unint64_t)alternate;
+ (void)i_bootstrapShapePresetsInTheme:(id)theme alternate:(unint64_t)alternate;
+ (void)p_bootstrapLinePresetsInTheme:(id)theme alternate:(unint64_t)alternate;
+ (void)p_bootstrapListPresetsInTheme:(id)theme alternate:(unint64_t)alternate;
+ (void)p_bootstrapTextStylePresetsInTheme:(id)theme alternate:(unint64_t)alternate;
+ (void)p_bootstrapTextboxPresetsInTheme:(id)theme alternate:(unint64_t)alternate;
@end

@implementation TSWPPresetSource

+ (id)p_bootstrapStrokeInTheme:(id)theme alternate:(unint64_t)alternate index:(unint64_t)index
{
  if (alternate - 2 > 4)
  {
    v6 = &unk_276F9A200;
  }

  else
  {
    v6 = *(&off_27A6F56C8 + alternate - 2);
  }

  v7 = objc_msgSend_colors(theme, a2, theme);
  v8 = &v6[96 * index];
  v27 = *v8;
  v28[0] = *(v8 + 1);
  v9 = *(v8 + 2);
  v10 = *(v8 + 3);
  v11 = *(v8 + 5);
  v29 = *(v8 + 4);
  v30 = v11;
  v28[1] = v9;
  v28[2] = v10;
  if (*&v28[0])
  {
    v12 = objc_alloc(MEMORY[0x277D803C0]);
    v14 = objc_msgSend_objectAtIndexedSubscript_(v7, v13, v27);
    v17 = objc_msgSend_solidPattern(MEMORY[0x277D803C8], v15, v16);
    v19 = objc_msgSend_initWithColor_width_cap_join_pattern_(v12, v18, v14, DWORD2(v30), 0, v17, *(&v27 + 1));
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x277D803C8]);
    v14 = objc_msgSend_initWithPattern_count_phase_(v20, v21, v28 + 8, *(&v29 + 1), *&v30);
    v22 = objc_alloc(MEMORY[0x277D803C0]);
    v24 = objc_msgSend_objectAtIndexedSubscript_(v7, v23, v27);
    v19 = objc_msgSend_initWithColor_width_cap_join_pattern_(v22, v25, v24, DWORD2(v30), 0, v14, *(&v27 + 1));
  }

  return v19;
}

+ (void)p_bootstrapLinePresetsInTheme:(id)theme alternate:(unint64_t)alternate
{
  themeCopy = theme;
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_initWithCapacity_(v6, v7, 6);
  v9 = 0;
  v10 = *MEMORY[0x277D80B50];
  do
  {
    v11 = TSWPShapeStyleIdentifierString(v10);
    v12 = [TSWPShapeStyle alloc];
    v15 = objc_msgSend_context(themeCopy, v13, v14);
    v17 = objc_msgSend_initWithContext_(v12, v16, v15);

    v19 = objc_msgSend_p_bootstrapStrokeInTheme_alternate_index_(self, v18, themeCopy, alternate, v9);
    objc_msgSend_setValue_forProperty_(v17, v20, v19, 517);
    v23 = objc_msgSend_null(MEMORY[0x277CBEB68], v21, v22);
    objc_msgSend_setValue_forProperty_(v17, v24, v23, 516);

    v27 = objc_msgSend_documentStylesheet(themeCopy, v25, v26);
    objc_msgSend_addStyle_withIdentifier_(v27, v28, v17, v11);

    objc_msgSend_addObject_(v8, v29, v17);
    ++v9;
  }

  while (v9 != 6);
  v30 = objc_alloc(MEMORY[0x277CBEA60]);
  v32 = objc_msgSend_initWithArray_(v30, v31, v8);
  objc_msgSend_setPresets_ofKind_(themeCopy, v33, v32, v10);
}

+ (void)p_bootstrapTextboxPresetsInTheme:(id)theme alternate:(unint64_t)alternate
{
  v6 = MEMORY[0x277CBEB18];
  themeCopy = theme;
  v8 = [v6 alloc];
  v36 = objc_msgSend_initWithCapacity_(v8, v9, 1);
  v10 = *MEMORY[0x277D80BB8];
  v11 = TSWPShapeStyleIdentifierString(*MEMORY[0x277D80BB8]);
  v12 = [TSWPShapeStyle alloc];
  v15 = objc_msgSend_context(themeCopy, v13, v14);
  v17 = objc_msgSend_initWithContext_(v12, v16, v15);

  v19 = objc_msgSend_p_bootstrapStrokeInTheme_alternate_index_(self, v18, themeCopy, alternate, 0);
  v22 = objc_msgSend_emptyStroke(MEMORY[0x277D803C0], v20, v21);

  objc_msgSend_setValue_forProperty_(v17, v23, v22, 517);
  v25 = objc_msgSend_paragraphStyleWithContentTag_(themeCopy, v24, @"Body 1");
  objc_msgSend_setDefaultParagraphStyle_(v17, v26, v25);

  v29 = objc_msgSend_documentStylesheet(themeCopy, v27, v28);
  objc_msgSend_addStyle_withIdentifier_(v29, v30, v17, v11);

  objc_msgSend_addObject_(v36, v31, v17);
  v32 = objc_alloc(MEMORY[0x277CBEA60]);
  v34 = objc_msgSend_initWithArray_(v32, v33, v36);
  objc_msgSend_setPresets_ofKind_(themeCopy, v35, v34, v10);
}

+ (void)i_bootstrapShapePresetsInTheme:(id)theme alternate:(unint64_t)alternate
{
  themeCopy = theme;
  v56 = objc_msgSend_colors(themeCopy, v5, v6);
  v54 = objc_msgSend_presetsOfKind_(themeCopy, v7, *MEMORY[0x277D80B28]);
  v55 = objc_msgSend_presetsOfKind_(themeCopy, v8, *MEMORY[0x277D80B80]);
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v57 = objc_msgSend_initWithCapacity_(v9, v10, 6);
  if (alternate - 2 > 4)
  {
    v11 = &qword_27A6F5188;
  }

  else
  {
    v11 = *(&off_27A6F56F0 + alternate - 2);
  }

  v12 = 0;
  v13 = v11 + 2;
  v58 = *MEMORY[0x277D80B88];
  do
  {
    v14 = TSWPShapeStyleIdentifierString(v58);
    v15 = [TSWPShapeStyle alloc];
    v18 = objc_msgSend_context(themeCopy, v16, v17);
    v20 = objc_msgSend_initWithContext_(v15, v19, v18);

    v22 = *(v13 - 2);
    v21 = *(v13 - 1);
    v23 = *v13;
    v24 = *(v13 + 1);
    v26 = v13[2];
    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = 0;
        goto LABEL_12;
      }

      v27 = objc_msgSend_objectAtIndexedSubscript_(v54, v25, v21);
      if (v27)
      {
LABEL_11:
        objc_msgSend_setValue_forProperty_(v20, v25, v27, 516);
      }
    }

    else
    {
      v28 = objc_alloc(MEMORY[0x277D801F8]);
      v30 = objc_msgSend_objectAtIndexedSubscript_(v56, v29, v22);
      v27 = objc_msgSend_initWithColor_(v28, v31, v30);

      if (v27)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = objc_msgSend_objectAtIndexedSubscript_(v55, v25, v23);
      objc_msgSend_setValue_forProperty_(v20, v33, v32, 520);
    }

    if (v24 > 0.0)
    {
      v34 = objc_alloc(MEMORY[0x277D80390]);
      v37 = objc_msgSend_initWithOpacity_(v34, v35, v36, v24);
      objc_msgSend_setValue_forProperty_(v20, v38, v37, 519);
    }

    v39 = objc_msgSend_paragraphStyleWithContentTag_(themeCopy, v25, v26);
    objc_msgSend_setDefaultParagraphStyle_(v20, v40, v39);

    v43 = objc_msgSend_emptyStroke(MEMORY[0x277D803C0], v41, v42);
    objc_msgSend_setValue_forProperty_(v20, v44, v43, 517);

    v47 = objc_msgSend_documentStylesheet(themeCopy, v45, v46);
    objc_msgSend_addStyle_withIdentifier_(v47, v48, v20, v14);

    objc_msgSend_addObject_(v57, v49, v20);
    ++v12;
    v13 += 5;
  }

  while (v12 != 6);
  v50 = objc_alloc(MEMORY[0x277CBEA60]);
  v52 = objc_msgSend_initWithArray_(v50, v51, v57);
  objc_msgSend_setPresets_ofKind_(themeCopy, v53, v52, v58);
}

+ (NSSet)presetKinds
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277D80BB8];
  v10[0] = *MEMORY[0x277D80B88];
  v10[1] = v3;
  v4 = *MEMORY[0x277D80B58];
  v10[2] = *MEMORY[0x277D80B50];
  v10[3] = v4;
  v5 = *MEMORY[0x277D80B20];
  v10[4] = *MEMORY[0x277D80B70];
  v10[5] = v5;
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v10, 6);
  v8 = objc_msgSend_setWithArray_(v2, v7, v6);

  return v8;
}

+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(unint64_t)alternate
{
  kindCopy = kind;
  themeCopy = theme;
  if (objc_msgSend_isEqual_(kindCopy, v9, *MEMORY[0x277D80BB8]))
  {
    objc_msgSend_p_bootstrapTextboxPresetsInTheme_alternate_(self, v10, themeCopy, alternate);
  }

  else if (objc_msgSend_isEqual_(kindCopy, v10, *MEMORY[0x277D80B88]))
  {
    objc_msgSend_i_bootstrapShapePresetsInTheme_alternate_(self, v11, themeCopy, alternate);
  }

  else if (objc_msgSend_isEqual_(kindCopy, v11, *MEMORY[0x277D80B50]))
  {
    objc_msgSend_p_bootstrapLinePresetsInTheme_alternate_(self, v12, themeCopy, alternate);
  }

  else if (objc_msgSend_isEqual_(kindCopy, v12, *MEMORY[0x277D80B58]))
  {
    objc_msgSend_p_bootstrapListPresetsInTheme_alternate_(self, v13, themeCopy, alternate);
  }

  else if (objc_msgSend_isEqual_(kindCopy, v13, *MEMORY[0x277D80B70]))
  {
    objc_msgSend_p_bootstrapTextStylePresetsInTheme_alternate_(self, v14, themeCopy, alternate);
  }

  else if (objc_msgSend_isEqual_(kindCopy, v14, *MEMORY[0x277D80B20]))
  {
    objc_msgSend_p_bootstrapDropCapStylePresetsInTheme_alternate_(self, v15, themeCopy, alternate);
  }
}

+ (void)p_bootstrapListPresetsInTheme:(id)theme alternate:(unint64_t)alternate
{
  v54 = *MEMORY[0x277D85DE8];
  themeCopy = theme;
  v7 = objc_msgSend_context(themeCopy, v5, v6);
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9);
  v12 = objc_msgSend_defaultStyleWithContext_type_(TSWPListStyle, v11, v7, 0);
  objc_msgSend_setName_(v12, v13, @"None");
  objc_msgSend_addObject_(v10, v14, v12);
  v16 = objc_msgSend_defaultStyleWithContext_type_(TSWPListStyle, v15, v7, 2);

  objc_msgSend_setName_(v16, v17, @"Bullet");
  objc_msgSend_addObject_(v10, v18, v16);
  v20 = objc_msgSend_defaultStyleWithContext_type_(TSWPListStyle, v19, v7, 3);

  objc_msgSend_setName_(v20, v21, @"Number");
  objc_msgSend_addObject_(v10, v22, v20);
  v48 = v7;
  v24 = objc_msgSend_harvardStyleWithContext_(TSWPListStyle, v23, v7);

  objc_msgSend_setName_(v24, v25, @"Harvard");
  v47 = v24;
  objc_msgSend_addObject_(v10, v26, v24);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v27 = v10;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v49, v53, 16);
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    v32 = *v50;
    do
    {
      v33 = 0;
      v34 = v31;
      do
      {
        if (*v50 != v32)
        {
          objc_enumerationMutation(v27);
        }

        v35 = *(*(&v49 + 1) + 8 * v33);
        v36 = TSWPTextPackageStringForPreset();
        v31 = v34 + 1;
        v39 = objc_msgSend_presetStyleDescriptor(TSWPListStyle, v37, v38);
        v40 = String();

        v43 = objc_msgSend_documentStylesheet(themeCopy, v41, v42);
        objc_msgSend_addStyle_withIdentifier_(v43, v44, v35, v40);

        ++v33;
        v34 = v31;
      }

      while (v30 != v33);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v45, &v49, v53, 16);
    }

    while (v30);
  }

  objc_msgSend_setPresets_ofKind_(themeCopy, v46, v27, *MEMORY[0x277D80B58]);
}

+ (void)p_bootstrapTextStylePresetsInTheme:(id)theme alternate:(unint64_t)alternate
{
  themeCopy = theme;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v54 = objc_msgSend_initWithCapacity_(v5, v6, 6);
  v55 = objc_msgSend_context(themeCopy, v7, v8);
  if (alternate - 2 > 4)
  {
    v9 = off_27A6F5368;
  }

  else
  {
    v9 = *(&off_27A6F5718 + alternate - 2);
  }

  v10 = 0;
  v53 = *MEMORY[0x277D80B58];
  v11 = v9 + 4;
  do
  {
    v12 = [TSWPParagraphStyle alloc];
    v15 = objc_msgSend_defaultPropertyMap(TSWPParagraphStyle, v13, v14);
    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v12, v16, v55, 0, v15, 0);

    v18 = *(v11 - 4);
    v19 = *(v11 - 3);
    v21 = *(v11 - 2);
    v20 = *(v11 - 1);
    v22 = *v11;
    v23 = *(v11 + 1);
    v24 = *(v11 + 2);
    v25 = *(v11 + 6);
    v26 = v11[4];
    v56 = v19;
    objc_msgSend_setValue_forProperty_(isVariation, v27, v19, 16);
    objc_msgSend_setCGFloatValue_forProperty_(isVariation, v28, 17, v21);
    v31 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D801F8], v29, v30, v20, v22, v23, v24);
    objc_msgSend_setValue_forProperty_(isVariation, v32, v31, 48);

    objc_msgSend_setIntValue_forProperty_(isVariation, v33, v25, 86);
    v35 = objc_msgSend_presetOfKind_index_(themeCopy, v34, v53, v26);
    objc_msgSend_setInitialListStyle_(isVariation, v36, v35);
    objc_msgSend_setName_(isVariation, v37, v18);
    v40 = objc_msgSend_name(isVariation, v38, v39);
    v41 = String();

    v44 = objc_msgSend_documentStylesheet(themeCopy, v42, v43);
    v45 = TSWPTextPackageStringForPreset();
    v48 = objc_msgSend_presetStyleDescriptor(TSWPParagraphStyle, v46, v47);
    v49 = String();
    objc_msgSend_addStyle_withIdentifier_(v44, v50, isVariation, v49);

    objc_msgSend_addObject_(v54, v51, isVariation);
    v11 += 9;

    ++v10;
  }

  while (v10 != 6);
  objc_msgSend_setPresets_ofKind_(themeCopy, v52, v54, *MEMORY[0x277D80B70]);
}

@end