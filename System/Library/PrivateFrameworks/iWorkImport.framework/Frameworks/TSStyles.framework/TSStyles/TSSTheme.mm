@interface TSSTheme
+ (id)presetBootstrapOrder;
+ (id)presetSources;
+ (id)themeWithContext:(id)a3 alternate:(unint64_t)a4 withStylesheet:(id)a5;
+ (void)registerPresetSourceClass:(Class)a3;
+ (void)registerPresetSourceClasses;
- (BOOL)containsCGColor:(CGColor *)a3;
- (BOOL)hasPresetsOfKind:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)p_shouldDoDOLCForPreset:(id)a3;
- (TSSTheme)initWithContext:(id)a3;
- (TSSTheme)initWithContext:(id)a3 documentStylesheet:(id)a4;
- (id)childEnumerator;
- (id)migratedPresetUUIDForPresetUUID:(id)a3;
- (id)modelPathComponentForChild:(id)a3;
- (id)p_identifierForBootstrapTheme:(unint64_t)a3;
- (id)presetOfKind:(id)a3 index:(unint64_t)a4;
- (id)presetsOfKind:(id)a3;
- (id)referencedStyles;
- (unint64_t)indexOfPreset:(id)a3;
- (void)addPreset:(id)a3 ofKind:(id)a4;
- (void)bootstrapThemeAlternate:(unint64_t)a3;
- (void)checkThemeStylesheetConsistency;
- (void)clearAllReplacementsOfPresetUUIDs;
- (void)clearReplacementsOfPresetUUID:(id)a3;
- (void)disablePresetValidation;
- (void)enablePresetValidation;
- (void)insertPreset:(id)a3 ofKind:(id)a4 atIndex:(unint64_t)a5;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)movePresetOfKind:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5;
- (void)recordReplacementOfPresetUUID:(id)a3 withPresetUUID:(id)a4;
- (void)removePreset:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setDocumentStylesheet:(id)a3;
- (void)setLegacyStylesheet:(id)a3;
- (void)setPresets:(id)a3 ofKind:(id)a4;
- (void)setThemeIdentifier:(id)a3;
- (void)upgradeStylesWithBlock:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TSSTheme

+ (id)themeWithContext:(id)a3 alternate:(unint64_t)a4 withStylesheet:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a1 alloc];
  v12 = objc_msgSend_initWithContext_documentStylesheet_(v10, v11, v9, v8);

  objc_msgSend_bootstrapThemeAlternate_(v12, v13, a4);

  return v12;
}

- (TSSTheme)initWithContext:(id)a3
{
  v4 = MEMORY[0x277D81150];
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v8 = objc_msgSend_stringWithUTF8String_(v5, v7, "[TSSTheme initWithContext:]");
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSTheme.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v8, v10, 39, 0, "Designated initializer is -initWithContext:documentStylesheet:");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v15 = objc_msgSend_initWithContext_documentStylesheet_(self, v14, v6, 0);

  return v15;
}

- (TSSTheme)initWithContext:(id)a3 documentStylesheet:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSSTheme initWithContext:documentStylesheet:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSTheme.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 45, 0, "Invalid parameter not satisfying: %{public}s", "documentStylesheet != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v23.receiver = self;
  v23.super_class = TSSTheme;
  v16 = [(TSSTheme *)&v23 initWithContext:v6];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->mDocumentStylesheet, a4);
    v18 = objc_opt_new();
    mPresetsByKind = v17->mPresetsByKind;
    v17->mPresetsByKind = v18;

    objc_msgSend_disablePresetValidation(v17, v20, v21);
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    isEqual = objc_msgSend_isEqual_(self->mPresetsByKind, v6, v5[9]);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)setThemeIdentifier:(id)a3
{
  v11 = a3;
  objc_msgSend_willModify(self, v4, v5);
  v8 = v11;
  if (self->mThemeIdentifier != v11)
  {
    v9 = objc_msgSend_copy(v11, v6, v7);
    mThemeIdentifier = self->mThemeIdentifier;
    self->mThemeIdentifier = v9;

    v8 = v11;
  }
}

- (void)setLegacyStylesheet:(id)a3
{
  v5 = a3;
  if (self->mLegacyStylesheet != v5)
  {
    v8 = v5;
    objc_msgSend_willModify(self, v6, v7);
    objc_storeStrong(&self->mLegacyStylesheet, a3);
    v5 = v8;
  }
}

- (void)setDocumentStylesheet:(id)a3
{
  v5 = a3;
  if (self->mDocumentStylesheet != v5)
  {
    v8 = v5;
    objc_msgSend_willModify(self, v6, v7);
    objc_storeStrong(&self->mDocumentStylesheet, a3);
    v5 = v8;
  }
}

+ (id)presetSources
{
  if (qword_280A53950 != -1)
  {
    sub_276CE0AF8();
  }

  v3 = qword_280A53958;

  return v3;
}

+ (void)registerPresetSourceClasses
{
  v3 = objc_opt_class();

  MEMORY[0x2821F9670](a1, sel_registerPresetSourceClass_, v3);
}

+ (void)registerPresetSourceClass:(Class)a3
{
  v5 = objc_msgSend_presetKinds(a3, a2, a3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276CA1888;
  v7[3] = &unk_27A6EE928;
  v7[4] = a1;
  v7[5] = a3;
  objc_msgSend_enumerateObjectsUsingBlock_(v5, v6, v7);
}

- (id)presetsOfKind:(id)a3
{
  if (a3)
  {
    v4 = objc_msgSend_objectForKeyedSubscript_(self->mPresetsByKind, a2, a3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasPresetsOfKind:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = objc_msgSend_objectForKeyedSubscript_(self->mPresetsByKind, a2, a3);
  v4 = v3 != 0;

  return v4;
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v5 = a3;
  v8 = objc_msgSend_context(v5, v6, v7);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v9, v8);

  mPresetsByKind = self->mPresetsByKind;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_276CA1A74;
  v13[3] = &unk_27A6EE978;
  v13[4] = self;
  v14 = v5;
  v11 = v5;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(mPresetsByKind, v12, v13);
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v4 = a3;
  mPresetsByKind = self->mPresetsByKind;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = sub_276CA1C70;
  v15 = &unk_27A6EE978;
  v16 = self;
  v17 = v4;
  v6 = v4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(mPresetsByKind, v7, &v12);
  v10 = objc_msgSend_context(v6, v8, v9, v12, v13, v14, v15, v16);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v11, v10);
}

- (void)setPresets:(id)a3 ofKind:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = a4;
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSSTheme setPresets:ofKind:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSTheme.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 222, 0, "invalid nil value for '%{public}s'", "kind");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  objc_msgSend_willModify(self, v7, v8);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v53 = v9;
  v18 = objc_msgSend_objectForKeyedSubscript_(self->mPresetsByKind, v17, v9);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v58, v63, 16);
  if (v20)
  {
    v21 = v20;
    v22 = *v59;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v59 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v58 + 1) + 8 * i);
        objc_opt_class();
        v25 = TSUDynamicCast();
        if (objc_msgSend_p_shouldDoDOLCForPreset_(self, v26, v24))
        {
          v29 = objc_msgSend_context(self, v27, v28);
          objc_msgSend_willBeRemovedFromDocumentWithContext_(v25, v30, v29);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v31, &v58, v63, 16);
    }

    while (v21);
  }

  if (v6 && objc_msgSend_count(v6, v32, v33))
  {
    v35 = objc_msgSend_mutableCopy(v6, v32, v34);
    v36 = v53;
    objc_msgSend_setObject_forKeyedSubscript_(self->mPresetsByKind, v37, v35, v53);
  }

  else
  {
    v36 = v53;
    objc_msgSend_removeObjectForKey_(self->mPresetsByKind, v32, v53);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v38 = v6;
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v54, v62, 16);
  if (v40)
  {
    v41 = v40;
    v42 = *v55;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v55 != v42)
        {
          objc_enumerationMutation(v38);
        }

        v44 = *(*(&v54 + 1) + 8 * j);
        objc_opt_class();
        v45 = TSUDynamicCast();
        if (objc_msgSend_p_shouldDoDOLCForPreset_(self, v46, v44))
        {
          v49 = objc_msgSend_context(self, v47, v48);
          objc_msgSend_wasAddedToDocumentWithContext_(v45, v50, v49);
        }
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v51, &v54, v62, 16);
    }

    while (v41);
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (void)addPreset:(id)a3 ofKind:(id)a4
{
  v11 = a3;
  v6 = a4;
  v8 = objc_msgSend_objectForKeyedSubscript_(self->mPresetsByKind, v7, v6);
  v10 = v8;
  if (!v8 || (objc_msgSend_containsObject_(v8, v9, v11) & 1) == 0)
  {
    objc_msgSend_insertPreset_ofKind_atIndex_(self, v9, v11, v6, -1);
  }
}

- (BOOL)p_shouldDoDOLCForPreset:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)insertPreset:(id)a3 ofKind:(id)a4 atIndex:(unint64_t)a5
{
  v29 = a3;
  v8 = a4;
  objc_msgSend_willModify(self, v9, v10);
  objc_opt_class();
  v11 = TSUDynamicCast();
  if (objc_msgSend_p_shouldDoDOLCForPreset_(self, v12, v29))
  {
    v15 = objc_msgSend_context(self, v13, v14);
    objc_msgSend_wasAddedToDocumentWithContext_(v11, v16, v15);
  }

  v17 = objc_msgSend_objectForKeyedSubscript_(self->mPresetsByKind, v13, v8);
  v20 = objc_msgSend_mutableCopy(v17, v18, v19);

  if (!v20)
  {
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_setObject_forKeyedSubscript_(self->mPresetsByKind, v23, v20, v8);
  }

  if (a5 == -1 || objc_msgSend_count(v20, v21, v22) <= a5)
  {
    objc_msgSend_addObject_(v20, v21, v29);
  }

  else
  {
    objc_msgSend_insertObject_atIndex_(v20, v21, v29, a5);
  }

  objc_msgSend_setObject_forKeyedSubscript_(self->mPresetsByKind, v24, v20, v8);
  if (v11)
  {
    v28 = objc_msgSend_objectUUID(v11, v25, v26);
    if (v28)
    {
      objc_msgSend_removeObjectForKey_(self->mReplacedPresetUUIDs, v27, v28);
    }
  }
}

- (void)removePreset:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v22 = v4;
    v7 = objc_msgSend_presetKind(v4, v5, v6);
    v9 = objc_msgSend_objectForKeyedSubscript_(self->mPresetsByKind, v8, v7);
    v12 = objc_msgSend_mutableCopy(v9, v10, v11);

    if (v12)
    {
      objc_msgSend_willModify(self, v13, v14);
      objc_opt_class();
      v15 = TSUDynamicCast();
      if (objc_msgSend_p_shouldDoDOLCForPreset_(self, v16, v22))
      {
        v19 = objc_msgSend_context(self, v17, v18);
        objc_msgSend_willBeRemovedFromDocumentWithContext_(v15, v20, v19);
      }

      objc_msgSend_removeObject_(v12, v17, v22);
      objc_msgSend_setObject_forKeyedSubscript_(self->mPresetsByKind, v21, v12, v7);
    }

    v4 = v22;
  }
}

- (void)movePresetOfKind:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5
{
  v22 = a3;
  v9 = objc_msgSend_presetsOfKind_(self, v8, v22);
  v12 = objc_msgSend_mutableCopy(v9, v10, v11);

  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  if (objc_msgSend_count(v12, v13, v14) > a4 && objc_msgSend_count(v12, v15, v16) > a5)
  {
    v18 = objc_msgSend_presetOfKind_index_(self, v17, v22, a4);
    objc_msgSend_removeObject_(v12, v19, v18);
    objc_msgSend_insertObject_atIndex_(v12, v20, v18, a5);
    objc_msgSend_setPresets_ofKind_(self, v21, v12, v22);
  }
}

- (id)presetOfKind:(id)a3 index:(unint64_t)a4
{
  v6 = a3;
  v8 = objc_msgSend_presetsOfKind_(self, v7, v6);
  if (objc_msgSend_count(v8, v9, v10) <= a4)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSSTheme presetOfKind:index:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSTheme.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 351, 0, "Attempt to request %{public}@ preset for out of bounds index %tu.", v6, a4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    v12 = 0;
  }

  else
  {
    v12 = objc_msgSend_objectAtIndexedSubscript_(v8, v11, a4);
  }

  return v12;
}

- (unint64_t)indexOfPreset:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_presetKind(v4, v5, v6);
  if (v8)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(self->mPresetsByKind, v7, v8);
    v12 = v9;
    if (v9 && objc_msgSend_count(v9, v10, v11))
    {
      v14 = objc_msgSend_indexOfObjectIdenticalTo_(v12, v13, v4);
    }

    else
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v14;
}

- (BOOL)containsCGColor:(CGColor *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = objc_msgSend_colors(self, a2, a3, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = objc_msgSend_CGColor(*(*(&v16 + 1) + 8 * i), v7, v8);
        if (CGColorEqualToColor(a3, v12))
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v16, v20, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)childEnumerator
{
  v3 = objc_opt_new();
  mPresetsByKind = self->mPresetsByKind;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276CA2904;
  v8[3] = &unk_27A6EE9A0;
  v5 = v3;
  v9 = v5;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(mPresetsByKind, v6, v8);

  return v5;
}

- (id)modelPathComponentForChild:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUClassAndProtocolCast();
  v8 = v5;
  v9 = MEMORY[0x277CCACA8];
  if (v5)
  {
    v10 = objc_msgSend_presetKind(v5, v6, v7, &unk_288613A08);
    v12 = v11 = v10;
    v14 = objc_msgSend_indexOfPreset_(self, v13, v8);
    v16 = objc_msgSend_stringWithFormat_(v9, v15, @"%@-%tu", v12, v14);
  }

  else
  {
    ClassName = object_getClassName(v4);
    v16 = objc_msgSend_stringWithFormat_(v9, v18, @"?%s-%p?", ClassName, v4);
  }

  return v16;
}

- (void)recordReplacementOfPresetUUID:(id)a3 withPresetUUID:(id)a4
{
  v21 = a3;
  v6 = a4;
  objc_msgSend_willModify(self, v7, v8);
  v10 = objc_msgSend_migratedPresetUUIDForPresetUUID_(self, v9, v6);
  isEqual = objc_msgSend_isEqual_(v10, v11, v21);

  if (isEqual)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSSTheme recordReplacementOfPresetUUID:withPresetUUID:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSTheme.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 417, 0, "Recording replacement of preset UUIDs that would introduce a cycle of replacements. Skipping.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(self->mReplacedPresetUUIDs, v13, v6, v21);
  }
}

- (void)clearReplacementsOfPresetUUID:(id)a3
{
  v7 = a3;
  objc_msgSend_willModify(self, v4, v5);
  objc_msgSend_removeObjectForKey_(self->mReplacedPresetUUIDs, v6, v7);
}

- (void)clearAllReplacementsOfPresetUUIDs
{
  objc_msgSend_willModify(self, a2, v2);
  mReplacedPresetUUIDs = self->mReplacedPresetUUIDs;

  MEMORY[0x2821F9670](mReplacedPresetUUIDs, sel_removeAllObjects, v4);
}

- (id)migratedPresetUUIDForPresetUUID:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_objectForKeyedSubscript_(self->mReplacedPresetUUIDs, v5, v4);

  v8 = v4;
  if (v6)
  {
    v9 = v4;
    do
    {
      v8 = objc_msgSend_objectForKeyedSubscript_(self->mReplacedPresetUUIDs, v7, v9);

      v11 = objc_msgSend_objectForKeyedSubscript_(self->mReplacedPresetUUIDs, v10, v8);

      v9 = v8;
    }

    while (v11);
  }

  return v8;
}

- (id)p_identifierForBootstrapTheme:(unint64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = xmmword_27A6EE9C0;
  v7[1] = *&off_27A6EE9D0;
  v7[2] = xmmword_27A6EE9E0;
  v8 = @"bootstrap-pages-2";
  v3 = *(v7 + a3);
  for (i = 48; i != -8; i -= 8)
  {
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)presetBootstrapOrder
{
  v5[17] = *MEMORY[0x277D85DE8];
  v5[0] = @"TSSColorPresetKind";
  v5[1] = @"TSSGradientFillPresetKind";
  v5[2] = @"TSSImageFillPresetKind";
  v5[3] = @"TSSShadowPresetKind";
  v5[4] = @"TSSListStylePresetKind";
  v5[5] = @"TSSParagraphStylePresetKind";
  v5[6] = @"TSSLineStylePresetKind";
  v5[7] = @"TSSShapeStylePresetKind";
  v5[8] = @"TSSTextboxStylePresetKind";
  v5[9] = @"TSSImageStylePresetKind";
  v5[10] = @"TSSMovieStylePresetKind";
  v5[11] = @"TSSTableStylePresetKind";
  v5[12] = @"TSSChartStylePresetKind";
  v5[13] = @"TSSDropCapStylePresetKind";
  v5[14] = @"TSSCaptionTextStylePresetKind";
  v5[15] = @"TSSMotionBackgroundStylePresetKind";
  v5[16] = @"TSSDrawingLineStylePresetKind";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 17);
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)bootstrapThemeAlternate:(unint64_t)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  if ((objc_msgSend_isMemberOfClass_(self, v6, v5) & 1) == 0)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = objc_opt_class();
    v11 = objc_msgSend_presetBootstrapOrder(v8, v9, v10, 0);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v29, v33, 16);
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        v16 = 0;
        do
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v29 + 1) + 8 * v16);
          v18 = objc_opt_class();
          v21 = objc_msgSend_presetSources(v18, v19, v20);
          v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, v17);
          objc_msgSend_bootstrapPresetsOfKind_inTheme_alternate_(v23, v24, v17, self, a3);

          ++v16;
        }

        while (v14 != v16);
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v25, &v29, v33, 16);
      }

      while (v14);
    }
  }

  v26 = objc_msgSend_p_identifierForBootstrapTheme_(self, v7, a3);
  objc_msgSend_setThemeIdentifier_(self, v27, v26);

  v28 = *MEMORY[0x277D85DE8];
}

- (void)checkThemeStylesheetConsistency
{
  v3 = objc_alloc(MEMORY[0x277D80660]);
  v5 = objc_msgSend_initWithRootModelObject_filter_(v3, v4, self, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276CA3318;
  v7[3] = &unk_27A6EEA00;
  v7[4] = self;
  objc_msgSend_enumerateReferencedStylesUsingBlock_(v5, v6, v7);
}

- (id)referencedStyles
{
  v4 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2);
  mPresetsByKind = self->mPresetsByKind;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276CA3508;
  v9[3] = &unk_27A6EE9A0;
  v6 = v4;
  v10 = v6;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(mPresetsByKind, v7, v9);

  return v6;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  objc_msgSend_disablePresetValidation(self, v7, v8);
  mThemeIdentifier = self->mThemeIdentifier;
  self->mThemeIdentifier = 0;

  v11 = *(a3 + 10);
  if (v11)
  {
    v12 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v10, *(a3 + 15) & 0xFFFFFFFFFFFFFFFELL);
    v13 = self->mThemeIdentifier;
    self->mThemeIdentifier = v12;

    v11 = *(a3 + 10);
  }

  if ((v11 & 2) != 0)
  {
    v14 = *(a3 + 16);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_276CA9718;
    v47[3] = &unk_27A6EEA50;
    v47[4] = self;
    v15 = v6;
    v16 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v15, v17, v14, v16, 0, v47);

    v11 = *(a3 + 10);
  }

  if ((v11 & 4) != 0)
  {
    v18 = *(a3 + 17);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_276CA9730;
    v46[3] = &unk_27A6EEA50;
    v46[4] = self;
    v19 = v6;
    v20 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v19, v21, v18, v20, 0, v46);
  }

  v22 = objc_opt_new();
  mPresetsByKind = self->mPresetsByKind;
  self->mPresetsByKind = v22;

  if (self->mPresetsByKind)
  {
    v25 = objc_alloc(MEMORY[0x277CBEA60]);
    v27 = objc_msgSend_tsp_initWithColorArray_(v25, v26, a3 + 96);
    objc_msgSend_setObject_forKeyedSubscript_(self->mPresetsByKind, v28, v27, @"TSSColorPresetKind");
  }

  else
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSSTheme(Archiving) loadFromArchive:unarchiver:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSTheme_Archiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 49, 0, "Failed to allocate preset registry for theme <%p>.", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
  }

  v36 = objc_alloc(MEMORY[0x277CBEA60]);
  v38 = objc_msgSend_tsp_initWithProtobufUUIDArray_(v36, v37, a3 + 48);
  v39 = objc_alloc(MEMORY[0x277CBEA60]);
  v41 = objc_msgSend_tsp_initWithProtobufUUIDArray_(v39, v40, a3 + 72);
  v42 = objc_alloc(MEMORY[0x277CBEB38]);
  v44 = objc_msgSend_initWithObjects_forKeys_(v42, v43, v41, v38);
  mReplacedPresetUUIDs = self->mReplacedPresetUUIDs;
  self->mReplacedPresetUUIDs = v44;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v24 = a4;
  mThemeIdentifier = self->mThemeIdentifier;
  if (mThemeIdentifier)
  {
    v9 = objc_msgSend_tsp_protobufString(mThemeIdentifier, v6, v7);
    sub_276CA98B4(a3, v9);
  }

  mDocumentStylesheet = self->mDocumentStylesheet;
  *(a3 + 10) |= 4u;
  v11 = *(a3 + 17);
  if (!v11)
  {
    v12 = *(a3 + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = MEMORY[0x277CA0650](v12);
    *(a3 + 17) = v11;
  }

  objc_msgSend_setWeakReference_message_(v24, v6, mDocumentStylesheet, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(self->mPresetsByKind, v13, @"TSSColorPresetKind");
  objc_msgSend_tsp_saveToColorArray_(v14, v15, a3 + 96);

  v18 = objc_msgSend_allKeys(self->mReplacedPresetUUIDs, v16, v17);
  objc_msgSend_tsp_saveToProtobufUUIDArray_(v18, v19, a3 + 48);

  v22 = objc_msgSend_allValues(self->mReplacedPresetUUIDs, v20, v21);
  objc_msgSend_tsp_saveToProtobufUUIDArray_(v22, v23, a3 + 72);
}

- (void)upgradeStylesWithBlock:(id)a3
{
  v30 = a3;
  if (self->mLegacyStylesheet)
  {
    v6 = objc_msgSend_documentStylesheet(self, v4, v5);

    if (v6)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSSTheme(Archiving) upgradeStylesWithBlock:]");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSTheme_Archiving.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 82, 0, "expected nil value for '%{public}s'", "self.documentStylesheet");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    }

    isLocked = objc_msgSend_isLocked(self->mLegacyStylesheet, v7, v8);
    objc_msgSend_setIsLocked_(self->mLegacyStylesheet, v17, 0);
    v30[2](v30, self->mLegacyStylesheet);
    objc_msgSend_setIsLocked_(self->mLegacyStylesheet, v18, isLocked);
  }

  else
  {
    v19 = objc_msgSend_documentStylesheet(self, v4, v5);

    if (!v19)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSSTheme(Archiving) upgradeStylesWithBlock:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSTheme_Archiving.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 89, 0, "invalid nil value for '%{public}s'", "self.documentStylesheet");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    }

    v29 = objc_msgSend_documentStylesheet(self, v20, v21);
    v30[2](v30, v29);
  }
}

- (void)enablePresetValidation
{
  v0 = sub_276CBE660();
  dispatch_sync(v0, &unk_2885E63E0);
}

- (void)disablePresetValidation
{
  v0 = sub_276CBE660();
  dispatch_sync(v0, &unk_2885E6400);
}

@end