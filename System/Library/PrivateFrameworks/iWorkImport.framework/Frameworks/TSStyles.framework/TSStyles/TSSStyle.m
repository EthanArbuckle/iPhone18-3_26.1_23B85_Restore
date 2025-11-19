@interface TSSStyle
+ (BOOL)validateIntValue:(int *)a3 forProperty:(int)a4 min:(int)a5 max:(int)a6;
+ (BOOL)validateIntValueAsBool:(int *)a3 forProperty:(int)a4;
+ (TSSPropertyMap)defaultPropertyMap;
+ (TSSPropertySet)properties;
+ (TSSPropertySet)propertiesAllowingNSNull;
+ (double)fontSizeForFontSize:(double)a3 scalingFactor:(double)a4;
+ (id)defaultStyleWithContext:(id)a3;
+ (id)description;
- (BOOL)hasEqualPropertyValues:(id)a3;
- (BOOL)hasEqualValues:(id)a3 forProperties:(id)a4;
- (BOOL)hasEqualValuesToPropertyMap:(id)a3 forProperties:(id)a4;
- (BOOL)isAncestorOf:(id)a3;
- (BOOL)isDescendentOf:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStyle:(id)a3 ignoreObjectContext:(BOOL)a4;
- (BOOL)isParentOf:(id)a3;
- (BOOL)isRelatedTo:(id)a3;
- (BOOL)overridePropertyMapIsEqualTo:(id)a3;
- (BOOL)overridesAnyProperty;
- (NSSet)referencedStyles;
- (NSString)contentTag;
- (TSSPropertyMap)overridePropertyMap;
- (TSSPropertyMap)propertyMap;
- (TSSStyle)baseStyleForVariation;
- (TSSStyle)firstIdentifiedAncestor;
- (TSSStyle)firstNamedAncestor;
- (TSSStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6;
- (TSSStyle)rootAncestor;
- (TSSStyle)rootIdentifiedAncestor;
- (TSSStylesheet)stylesheet;
- (TSURetainedPointerSet)children;
- (TSURetainedPointerSet)descendants;
- (id)archivableRepresentationOfChangeSet:(id)a3;
- (id)copyFlattenedWithContext:(id)a3;
- (id)copyPropertyMap;
- (id)copyWithContext:(id)a3 includeParentProperties:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyWithZone:(_NSZone *)a3 context:(id)a4;
- (id)newOverridePropertyMapWithPropertyMap:(id)a3;
- (id)overridePropertyMapWithPropertyMap:(id)a3 overridePropertyMap:(id)a4 collapseSourceOverrides:(BOOL)a5;
- (id)propertyMapIgnoringStyle:(id)a3;
- (id)propertyMapThatNeedsToBeTransformedWithTransformedObjects:(id)a3;
- (id)valuesForProperties:(id)a3;
- (unint64_t)hash;
- (unint64_t)overrideCount;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)removeAllValues;
- (void)replaceReferencedStylesUsingBlock:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setName:(id)a3;
- (void)setObjectUUID:(id)a3;
- (void)setOverridePropertyMap:(id)a3;
- (void)setParent:(id)a3;
- (void)setStyleIdentifier:(id)a3;
- (void)setStylesheet:(id)a3;
- (void)setValuesForProperties:(id)a3;
@end

@implementation TSSStyle

- (void)setStyleIdentifier:(id)a3
{
  v4 = a3;
  if (self->mStyleIdentifier != v4)
  {
    v10 = v4;
    objc_msgSend_willModify(self, v5, v6);
    v9 = objc_msgSend_copy(v10, v7, v8);

    objc_storeStrong(&self->mStyleIdentifier, v9);
    v4 = v9;
  }
}

- (void)setStylesheet:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->mStylesheet);

  if (WeakRetained != obj)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeWeak(&self->mStylesheet, obj);
  }
}

+ (TSSPropertySet)properties
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSSStyle properties]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 326, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "+[TSSStyle properties]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

+ (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = NSStringFromClass(a1);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@", v4);

  for (i = objc_msgSend_superclass(a1, v7, v8); i != objc_opt_class(); i = objc_msgSend_superclass(i, v14, v15))
  {
    v12 = NSStringFromClass(i);
    objc_msgSend_appendFormat_(v6, v13, @" : %@", v12);
  }

  v16 = objc_msgSend_string(MEMORY[0x277CCAB68], v10, v11);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_276C9C79C;
  v34[4] = sub_276C9C7AC;
  v35 = &stru_2885E7A20;
  v19 = objc_msgSend_properties(a1, v17, v18);
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = sub_276C9C7B4;
  v31 = &unk_27A6EE7A8;
  v20 = v16;
  v32 = v20;
  v33 = v34;
  objc_msgSend_enumeratePropertiesUsingBlock_(v19, v21, &v28);

  v22 = MEMORY[0x277CCACA8];
  v24 = objc_msgSend_tsu_stringByIndentingString_(MEMORY[0x277CCACA8], v23, v20);
  v26 = objc_msgSend_stringWithFormat_(v22, v25, @"<%@> = {\n%@\n}", v6, v24, v28, v29, v30, v31);

  _Block_object_dispose(v34, 8);

  return v26;
}

+ (id)defaultStyleWithContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v5, v3, 0, 0, 0);

  return isVariation;
}

+ (TSSPropertyMap)defaultPropertyMap
{
  v3 = objc_alloc_init(TSSPropertyMap);
  v6 = objc_msgSend_properties(a1, v4, v5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276C9CB2C;
  v10[3] = &unk_27A6EE7D0;
  v12 = a1;
  v7 = v3;
  v11 = v7;
  objc_msgSend_enumeratePropertiesUsingBlock_(v6, v8, v10);

  return v7;
}

- (TSSStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6
{
  v10 = a4;
  v11 = a5;
  v61.receiver = self;
  v61.super_class = TSSStyle;
  v13 = [(TSSStyle *)&v61 initWithContext:a3];
  if (v13)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    v14 = objc_opt_class();
    v17 = objc_msgSend_properties(v14, v15, v16);
    v20 = objc_msgSend_allProperties(v11, v18, v19);
    v22 = objc_msgSend_containsProperties_(v17, v21, v20);

    if ((v22 & 1) == 0)
    {
      v41 = objc_msgSend_allProperties(v11, v12, v23);
      v42 = objc_opt_class();
      v45 = objc_msgSend_properties(v42, v43, v44);
      v47 = objc_msgSend_propertySetByRemovingPropertiesFromSet_(v41, v46, v45);

      v48 = MEMORY[0x277D81150];
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "[TSSStyle initWithContext:name:overridePropertyMap:isVariation:]");
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v55, v50, v52, 440, 0, "Attempt to initialize a style of class %{public}@ with an override of one or more unsupported properties : %{public}@", v54, v47);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
      v13 = 0;
    }

    else
    {
LABEL_13:
      if (objc_msgSend_isEqual_(v10, v12, &stru_2885E7A20))
      {
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSSStyle initWithContext:name:overridePropertyMap:isVariation:]");
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 444, 0, "Style name may not be the empty string.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
        v10 = 0;
      }

      v33 = objc_msgSend_copy(v10, v24, v25);
      mName = v13->mName;
      v13->mName = v33;

      if (v11)
      {
        v35 = [TSSPropertyMap alloc];
        v37 = objc_msgSend_initWithPropertyMap_(v35, v36, v11);
        mOverridePropertyMap = v13->mOverridePropertyMap;
        v13->mOverridePropertyMap = v37;

        v39 = v13->mOverridePropertyMap;
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = sub_276C9CE98;
        v59[3] = &unk_27A6EE7F8;
        v60 = v13;
        objc_msgSend_enumerateDataPropertiesUsingBlock_(v39, v40, v59);
      }

      v13->mIsVariation = a6;
      v13->mWasUnarchivedAsOrphanVariation = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return objc_msgSend_hash(v2, v3, v4);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    isEqualToStyle_ignoreObjectContext = 1;
  }

  else if (v4 && (v6 = objc_opt_class(), v6 == objc_opt_class()))
  {
    isEqualToStyle_ignoreObjectContext = objc_msgSend_isEqualToStyle_ignoreObjectContext_(self, v7, v5, 0);
  }

  else
  {
    isEqualToStyle_ignoreObjectContext = 0;
  }

  return isEqualToStyle_ignoreObjectContext;
}

- (BOOL)isEqualToStyle:(id)a3 ignoreObjectContext:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = objc_msgSend_context(self, v7, v8);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = objc_msgSend_context(v6, v9, v10);
    v12 = v13 == 0;
  }

  isEqualToStyle_ignoreObjectContext_ignoreObjectUUID = objc_msgSend_isEqualToStyle_ignoreObjectContext_ignoreObjectUUID_(self, v14, v6, v12 | v4, v12 | v4);
  return isEqualToStyle_ignoreObjectContext_ignoreObjectUUID;
}

- (id)copyFlattenedWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_allocWithZone(objc_opt_class());
  mName = self->mName;
  v9 = objc_msgSend_propertyMap(self, v7, v8);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v5, v10, v4, mName, v9, 0);

  return isVariation;
}

- (id)copyWithZone:(_NSZone *)a3 context:(id)a4
{
  v6 = a4;
  v7 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v7, v8, a3);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v9, v10, v6, self->mName, self->mOverridePropertyMap, self->mIsVariation);

  return isVariation;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_msgSend_context(self, a2, a3);
  v7 = objc_msgSend_copyWithZone_context_(self, v6, a3, v5);

  return v7;
}

- (id)copyWithContext:(id)a3 includeParentProperties:(BOOL)a4
{
  v4 = a4;
  v8 = objc_msgSend_copyWithZone_context_(self, a2, 0, a3);
  if (v4)
  {
    v9 = objc_msgSend_propertyMap(self, v6, v7);
    objc_msgSend_setOverridePropertyMap_(v8, v10, v9);
  }

  v8[104] = 0;
  return v8;
}

- (id)valuesForProperties:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_copyPropertyMap(self, v5, v6);
  objc_msgSend_filterWithProperties_(v7, v8, v4);

  return v7;
}

- (void)setValuesForProperties:(id)a3
{
  v4 = a3;
  objc_msgSend_willModify(self, v5, v6);
  if (v4)
  {
    if (self->mOverridePropertyMap)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_276C9E57C;
      v16[3] = &unk_27A6EE848;
      v16[4] = self;
      objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v4, v7, v16);
      objc_msgSend_addValuesFromPropertyMap_(self->mOverridePropertyMap, v9, v4);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_276C9E604;
      v15[3] = &unk_27A6EE848;
      v15[4] = self;
      objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v4, v10, v15);
    }

    else
    {
      v11 = objc_msgSend_copy(v4, v7, v8);
      mOverridePropertyMap = self->mOverridePropertyMap;
      self->mOverridePropertyMap = v11;

      v13 = self->mOverridePropertyMap;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_276C9E574;
      v17[3] = &unk_27A6EE7F8;
      v17[4] = self;
      objc_msgSend_enumerateDataPropertiesUsingBlock_(v13, v14, v17);
    }
  }

  sub_276CBE6E4();
}

- (void)removeAllValues
{
  objc_msgSend_willModify(self, a2, v2);
  mOverridePropertyMap = self->mOverridePropertyMap;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276C9E89C;
  v7[3] = &unk_27A6EE7F8;
  v7[4] = self;
  objc_msgSend_enumerateDataPropertiesUsingBlock_(mOverridePropertyMap, v5, v7);
  v6 = self->mOverridePropertyMap;
  self->mOverridePropertyMap = 0;
}

- (NSString)contentTag
{
  v4 = objc_msgSend_styleIdentifier(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_styleIdentifier(self, v5, v6);
    v9 = String(v7, v8);
  }

  else
  {
    v9 = &stru_2885E7A20;
  }

  return v9;
}

- (BOOL)overridesAnyProperty
{
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (mOverridePropertyMap)
  {
    LOBYTE(mOverridePropertyMap) = objc_msgSend_count(mOverridePropertyMap, a2, v2) != 0;
  }

  return mOverridePropertyMap;
}

- (unint64_t)overrideCount
{
  result = self->mOverridePropertyMap;
  if (result)
  {
    return objc_msgSend_count(result, a2, v2);
  }

  return result;
}

- (TSSPropertyMap)propertyMap
{
  mParent = self->mParent;
  if (mParent)
  {
    v5 = objc_msgSend_propertyMap(mParent, a2, v2);
  }

  else
  {
    v5 = 0;
  }

  if (objc_msgSend_count(self->mOverridePropertyMap, a2, v2))
  {
    mOverridePropertyMap = self->mOverridePropertyMap;
    if (v5)
    {
      objc_msgSend_addValuesFromPropertyMap_(v5, v6, mOverridePropertyMap);
    }

    else
    {
      v5 = objc_msgSend_copy(self->mOverridePropertyMap, v6, mOverridePropertyMap);
    }
  }

  return v5;
}

- (id)propertyMapIgnoringStyle:(id)a3
{
  v6 = a3;
  mParent = self->mParent;
  if (mParent)
  {
    v8 = objc_msgSend_propertyMapIgnoringStyle_(mParent, v4, v6);
  }

  else
  {
    v8 = 0;
  }

  if (self != v6 && objc_msgSend_count(self->mOverridePropertyMap, v4, v5))
  {
    mOverridePropertyMap = self->mOverridePropertyMap;
    if (v8)
    {
      objc_msgSend_addValuesFromPropertyMap_(v8, v9, mOverridePropertyMap);
    }

    else
    {
      v8 = objc_msgSend_copy(self->mOverridePropertyMap, v9, mOverridePropertyMap);
    }
  }

  return v8;
}

- (id)copyPropertyMap
{
  mParent = self->mParent;
  if (mParent)
  {
    v5 = objc_msgSend_copyPropertyMap(mParent, a2, v2);
  }

  else
  {
    v5 = 0;
  }

  if (!objc_msgSend_count(self->mOverridePropertyMap, a2, v2))
  {
    return v5;
  }

  mOverridePropertyMap = self->mOverridePropertyMap;
  if (v5)
  {
    objc_msgSend_addValuesFromPropertyMap_(v5, v6, mOverridePropertyMap);
    return v5;
  }

  v9 = self->mOverridePropertyMap;

  return objc_msgSend_copy(v9, v6, mOverridePropertyMap);
}

- (id)overridePropertyMapWithPropertyMap:(id)a3 overridePropertyMap:(id)a4 collapseSourceOverrides:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (self->mIsVariation)
  {
    v12 = self->mParent;
    if (!v12)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSSStyle overridePropertyMapWithPropertyMap:overridePropertyMap:collapseSourceOverrides:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 1152, 0, "Can't create variation of a nil base style.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
      v12 = 0;
      isVariation = objc_msgSend_isVariation(0, v20, v21);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = self;
  }

  isVariation = objc_msgSend_isVariation(v12, v10, v11);
LABEL_6:
  if (isVariation)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSSStyle overridePropertyMapWithPropertyMap:overridePropertyMap:collapseSourceOverrides:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 1153, 0, "Can't create variation of a variation base style.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
  }

  v31 = objc_alloc_init(TSSPropertyMap);
  v32 = objc_alloc_init(TSSPropertyMap);
  v34 = v32;
  if (self->mIsVariation)
  {
    mOverridePropertyMap = self->mOverridePropertyMap;
    if (v5)
    {
      objc_msgSend_addValuesFromPropertyMap_(v31, v33, mOverridePropertyMap);
    }

    else
    {
      objc_msgSend_addValuesFromPropertyMap_(v32, v33, mOverridePropertyMap);
    }
  }

  objc_msgSend_addValuesFromPropertyMap_(v34, v33, v9);
  objc_msgSend_addValuesFromPropertyMap_(v31, v36, v8);
  v39 = objc_msgSend_allProperties(v34, v37, v38);
  objc_msgSend_removeValuesForProperties_(v31, v40, v39);

  v43 = objc_msgSend_propertyMap(v12, v41, v42);
  objc_msgSend_removeValuesFromPropertyMap_(v31, v44, v43);

  objc_msgSend_addValuesFromPropertyMap_(v34, v45, v31);

  return v34;
}

- (id)newOverridePropertyMapWithPropertyMap:(id)a3
{
  v4 = a3;
  if (self->mIsVariation)
  {
    v7 = self->mParent;
    if (!v7)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSStyle newOverridePropertyMapWithPropertyMap:]");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1180, 0, "Can't create variation of a nil base style.");

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v13, v14);
      v7 = 0;
      isVariation = objc_msgSend_isVariation(0, v15, v16);
      goto LABEL_6;
    }
  }

  else
  {
    v7 = self;
  }

  isVariation = objc_msgSend_isVariation(v7, v5, v6);
LABEL_6:
  if (isVariation)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSSStyle newOverridePropertyMapWithPropertyMap:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 1181, 0, "Can't create variation of a variation base style.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v25, v26);
  }

  if (self->mIsVariation && (mOverridePropertyMap = self->mOverridePropertyMap) != 0)
  {
    v28 = objc_msgSend_copy(mOverridePropertyMap, v18, v19);
    objc_msgSend_addValuesFromPropertyMap_(v28, v29, v4);
  }

  else
  {
    v28 = objc_msgSend_copy(v4, v18, v19);
  }

  v32 = objc_msgSend_copyPropertyMap(v7, v30, v31);
  objc_msgSend_removeValuesFromPropertyMap_(v28, v33, v32);

  return v28;
}

- (BOOL)hasEqualPropertyValues:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = objc_msgSend_properties(v5, v6, v7);
  LOBYTE(self) = objc_msgSend_hasEqualValues_forProperties_(self, v9, v4, v8);

  return self;
}

- (BOOL)hasEqualValuesToPropertyMap:(id)a3 forProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v11 = objc_msgSend_properties(v8, v9, v10);
  if ((objc_msgSend_containsProperties_(v11, v12, v7) & 1) == 0)
  {

    goto LABEL_5;
  }

  v15 = objc_msgSend_allProperties(v6, v13, v14);
  v17 = objc_msgSend_containsProperties_(v15, v16, v7);

  if (!v17)
  {
LABEL_5:
    v19 = 0;
    goto LABEL_6;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_276C9F728;
  v21[3] = &unk_27A6EE870;
  v21[4] = self;
  v22 = v6;
  v23 = &v24;
  objc_msgSend_enumeratePropertiesUsingBlock_(v7, v18, v21);
  v19 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
LABEL_6:

  return v19 & 1;
}

- (BOOL)hasEqualValues:(id)a3 forProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v11 = objc_msgSend_properties(v8, v9, v10);
  if ((objc_msgSend_containsProperties_(v11, v12, v7) & 1) == 0)
  {

    goto LABEL_5;
  }

  v13 = objc_opt_class();
  v16 = objc_msgSend_properties(v13, v14, v15);
  v18 = objc_msgSend_containsProperties_(v16, v17, v7);

  if (!v18)
  {
LABEL_5:
    v20 = 0;
    goto LABEL_6;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_276C9F8D0;
  v22[3] = &unk_27A6EE870;
  v22[4] = self;
  v23 = v6;
  v24 = &v25;
  objc_msgSend_enumeratePropertiesUsingBlock_(v7, v19, v22);
  v20 = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
LABEL_6:

  return v20 & 1;
}

- (TSSPropertyMap)overridePropertyMap
{
  v3 = objc_msgSend_copy(self->mOverridePropertyMap, a2, v2);

  return v3;
}

- (void)setOverridePropertyMap:(id)a3
{
  v4 = a3;
  objc_msgSend_willModify(self, v5, v6);
  v9 = objc_msgSend_copy(v4, v7, v8);

  mOverridePropertyMap = self->mOverridePropertyMap;
  self->mOverridePropertyMap = v9;
}

- (BOOL)overridePropertyMapIsEqualTo:(id)a3
{
  v5 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (mOverridePropertyMap == v5)
  {
    v18 = 1;
    v8 = &v15;
  }

  else
  {
    isEqual = objc_msgSend_isEqual_(self->mOverridePropertyMap, v4, v5);
    v8 = v16;
    *(v16 + 24) = isEqual;
    if (!isEqual)
    {
      goto LABEL_7;
    }

    mOverridePropertyMap = self->mOverridePropertyMap;
  }

  if (mOverridePropertyMap != v5)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_276C9FAE8;
    v12[3] = &unk_27A6EE898;
    v13 = v5;
    v14 = &v15;
    objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(mOverridePropertyMap, v9, v12);

    v8 = v16;
  }

LABEL_7:
  v10 = *(v8 + 24);
  _Block_object_dispose(&v15, 8);

  return v10;
}

- (TSSStyle)rootAncestor
{
  v2 = self;
  v5 = objc_msgSend_parent(v2, v3, v4);

  if (v5)
  {
    do
    {
      v8 = objc_msgSend_parent(v2, v6, v7);

      v11 = objc_msgSend_parent(v8, v9, v10);

      v2 = v8;
    }

    while (v11);
  }

  else
  {
    v8 = v2;
  }

  return v8;
}

- (TSSStyle)baseStyleForVariation
{
  v2 = self;
  if (objc_msgSend_isVariation(v2, v3, v4))
  {
    while (1)
    {
      v7 = objc_msgSend_parent(v2, v5, v6);

      if (!v7)
      {
        break;
      }

      v10 = objc_msgSend_parent(v2, v8, v9);

      v2 = v10;
      if ((objc_msgSend_isVariation(v10, v11, v12) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v10 = v2;
LABEL_6:

  return v10;
}

- (TSSStyle)firstIdentifiedAncestor
{
  v4 = self;
  if (v4)
  {
    do
    {
      v5 = objc_msgSend_styleIdentifier(v4, v2, v3);

      if (v5)
      {
        break;
      }

      v8 = objc_msgSend_parent(v4, v6, v7);

      v4 = v8;
    }

    while (v8);
  }

  return v4;
}

- (TSSStyle)firstNamedAncestor
{
  v4 = self;
  if (v4)
  {
    do
    {
      if (objc_msgSend_isNamed(v4, v2, v3))
      {
        break;
      }

      v7 = objc_msgSend_parent(v4, v5, v6);

      v4 = v7;
    }

    while (v7);
  }

  return v4;
}

- (TSSStyle)rootIdentifiedAncestor
{
  v2 = self;
  if (v2)
  {
    v5 = v2;
    v6 = 0;
    do
    {
      if (objc_msgSend_isIdentified(v5, v3, v4))
      {
        v9 = v5;

        v6 = v9;
      }

      v10 = objc_msgSend_parent(v5, v7, v8);

      v5 = v10;
    }

    while (v10);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setName:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isEqualToString_(&stru_2885E7A20, v5, v4))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSSStyle setName:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1377, 0, "Style name may not be the empty string.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  objc_msgSend_willModify(self, v6, v7);
  v17 = objc_msgSend_copy(v4, v15, v16);

  mName = self->mName;
  self->mName = v17;
}

- (void)setParent:(id)a3
{
  v5 = a3;
  if (self->mParent != v5)
  {
    v27 = v5;
    objc_msgSend_willModify(self, v6, v7);
    if (v27)
    {
      if (objc_msgSend_isVariation(v27, v8, v9))
      {
        v12 = MEMORY[0x277D81150];
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSSStyle setParent:]");
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 1391, 0, "A variation style should not be given any children");

        objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v17, v18);
      }

      if ((objc_msgSend_isVariation(self, v10, v11) & 1) == 0)
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSSStyle setParent:]");
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 1401, 0, "Setting the parent of a non-variation style. This is theoretically reasonable, but not something we intend to do currently.");

        objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v25, v26);
      }
    }

    objc_storeStrong(&self->mParent, a3);
    v5 = v27;
  }
}

- (TSURetainedPointerSet)children
{
  v4 = objc_msgSend_stylesheet(self, a2, v2);
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    do
    {
      v8 = objc_msgSend_childrenOfStyle_(v6, v5, self);
      v11 = v8;
      if (v8 && objc_msgSend_count(v8, v9, v10))
      {
        if (v7)
        {
          v12 = objc_msgSend_child(v6, v9, v10);

          if (v12)
          {
            v14 = MEMORY[0x277D81150];
            v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSSStyle children]");
            v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 1421, 0, "[TSSStyle children] is not as efficient as it could be when there are multiple levels of child stylesheets");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
          }

          v21 = objc_msgSend_setByAddingObjectsFromSet_(v7, v13, v11);

          v7 = v21;
        }

        else
        {
          v7 = v11;
        }
      }

      v22 = objc_msgSend_child(v6, v9, v10);

      v6 = v22;
    }

    while (v22);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (TSURetainedPointerSet)descendants
{
  v3 = objc_msgSend_children(self, a2, v2);
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D81268]);
    v7 = objc_msgSend_count(v3, v5, v6);
    v9 = objc_msgSend_initWithCapacity_(v4, v8, v7);
    v26 = 0;
    v27 = &v26;
    v28 = 0x3042000000;
    v29 = sub_276CA0524;
    v30 = sub_276CA0530;
    v31 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_276CA0538;
    v22[3] = &unk_27A6EE8C0;
    v10 = v3;
    v23 = v10;
    v11 = v9;
    v24 = v11;
    v25 = &v26;
    v12 = MEMORY[0x277CA0D60](v22);
    objc_storeWeak(v27 + 5, v12);
    (v12)[2](v12, v10);
    v15 = objc_msgSend_count(v10, v13, v14);
    if (v15 == objc_msgSend_count(v11, v16, v17))
    {
      v19 = v10;
    }

    else
    {
      v19 = objc_msgSend_setWithSet_(MEMORY[0x277D81310], v18, v11);
    }

    v20 = v19;

    _Block_object_dispose(&v26, 8);
    objc_destroyWeak(&v31);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)isParentOf:(id)a3
{
  v4 = objc_msgSend_parent(a3, a2, a3);
  LOBYTE(self) = v4 == self;

  return self;
}

- (BOOL)isDescendentOf:(id)a3
{
  v5 = a3;
  mParent = self->mParent;
  if (mParent)
  {
    if (mParent == v5)
    {
      isDescendentOf = 1;
    }

    else
    {
      isDescendentOf = objc_msgSend_isDescendentOf_(mParent, v4, v5);
    }
  }

  else
  {
    isDescendentOf = 0;
  }

  return isDescendentOf;
}

- (BOOL)isAncestorOf:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_parent(v4, v5, v6);

  if (v7)
  {
    v12 = objc_msgSend_parent(v4, v8, v9);
    if (v12 == self)
    {
      isAncestorOf = 1;
    }

    else
    {
      v13 = objc_msgSend_parent(v4, v10, v11);
      isAncestorOf = objc_msgSend_isAncestorOf_(self, v14, v13);
    }
  }

  else
  {
    isAncestorOf = 0;
  }

  return isAncestorOf;
}

- (BOOL)isRelatedTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self == v4)
  {
    v21 = 1;
  }

  else
  {
    v10 = objc_msgSend_parent(v4, v5, v6);
    if (v10 == self)
    {
      v21 = 1;
    }

    else
    {
      v13 = objc_msgSend_parent(self, v8, v9);
      if (v13)
      {
        v16 = objc_msgSend_parent(self, v11, v12);
        if (v16 == v7)
        {
          v21 = 1;
        }

        else
        {
          v17 = objc_msgSend_parent(self, v14, v15);
          v20 = objc_msgSend_parent(v7, v18, v19);
          v21 = v17 == v20;
        }
      }

      else
      {
        v21 = 0;
      }
    }
  }

  return v21;
}

+ (TSSPropertySet)propertiesAllowingNSNull
{
  v2 = objc_alloc_init(TSSPropertySet);

  return v2;
}

+ (BOOL)validateIntValue:(int *)a3 forProperty:(int)a4 min:(int)a5 max:(int)a6
{
  if (!a3)
  {
    return 0;
  }

  v6 = *a3;
  if (*a3 == 0x80000000)
  {
    return 0;
  }

  if (v6 < a5 || (a5 = a6, v6 > a6))
  {
    *a3 = a5;
  }

  return 1;
}

+ (BOOL)validateIntValueAsBool:(int *)a3 forProperty:(int)a4
{
  if (!a3 || *a3 == 0x80000000)
  {
    return 0;
  }

  result = 1;
  if (*a3 > 1)
  {
    *a3 = 1;
  }

  return result;
}

- (id)archivableRepresentationOfChangeSet:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSStyle archivableRepresentationOfChangeSet:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 1625, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v20 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v18, "[TSSStyle archivableRepresentationOfChangeSet:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, v15, v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

+ (double)fontSizeForFontSize:(double)a3 scalingFactor:(double)a4
{
  v4 = a3 * a4;
  v5 = floor(v4);
  v6 = floor(v4 * 0.5);
  v7 = v6 + v6;
  if (v4 >= 12.5)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

- (id)propertyMapThatNeedsToBeTransformedWithTransformedObjects:(id)a3
{
  v4 = a3;
  v5 = self;
  v7 = v5;
  if (v5)
  {
    v8 = v5;
    do
    {
      v9 = objc_msgSend_objectForKey_(v4, v6, v8);

      if (v9)
      {
        break;
      }

      v11 = objc_msgSend_parent(v8, v6, v10);

      v8 = v11;
    }

    while (v11);
  }

  else
  {
    v8 = 0;
  }

  if (v8 == v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_msgSend_propertyMapIgnoringStyle_(v7, v6, v8);
  }

  return v12;
}

- (NSSet)referencedStyles
{
  v4 = objc_msgSend_set(MEMORY[0x277D81258], a2, v2);
  v7 = objc_msgSend_propertyMap(self, v5, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276CA0EA0;
  v11[3] = &unk_27A6EE848;
  v8 = v4;
  v12 = v8;
  objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v7, v9, v11);

  return v8;
}

- (void)replaceReferencedStylesUsingBlock:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_propertyMap(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276CA0FD0;
  v10[3] = &unk_27A6EE780;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v7, v9, v10);
}

- (void)setObjectUUID:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_objectUUID(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);

  v15.receiver = self;
  v15.super_class = TSSStyle;
  [(TSSStyle *)&v15 setObjectUUID:v4];
  v13 = objc_msgSend_stylesheet(self, v11, v12);
  objc_msgSend_style_didChangeUUIDToValue_fromValue_(v13, v14, self, v4, v10);
}

- (TSSStylesheet)stylesheet
{
  WeakRetained = objc_loadWeakRetained(&self->mStylesheet);

  return WeakRetained;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v7 = *(a3 + 4);
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_tsp_initWithProtobufString_(v8, v9, *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL);
    mName = self->mName;
    self->mName = v10;

    v7 = *(a3 + 4);
  }

  if ((v7 & 2) != 0)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = objc_msgSend_tsp_initWithProtobufString_(v12, v13, *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL);
    mStyleIdentifier = self->mStyleIdentifier;
    self->mStyleIdentifier = v14;

    v7 = *(a3 + 4);
  }

  if ((v7 & 4) != 0)
  {
    v16 = *(a3 + 5);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_276CA3864;
    v26[3] = &unk_27A6EEA28;
    v26[4] = self;
    v17 = v6;
    v18 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v17, v19, v16, v18, 0, v26);

    v7 = *(a3 + 4);
  }

  if ((v7 & 8) != 0)
  {
    v20 = *(a3 + 6);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_276CA387C;
    v25[3] = &unk_27A6EEA50;
    v25[4] = self;
    v21 = v6;
    v22 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v21, v23, v20, v22, 0, v25);
  }

  v24 = *(a3 + 56);
  self->mIsVariation = v24;
  if (v24 == 1 && (*(a3 + 16) & 4) == 0)
  {
    NSLog(&cfstr_UnarchivingAVa.isa, self);
    self->mWasUnarchivedAsOrphanVariation = 1;
  }
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v8 = a4;
  if (self->mIsVariation && !self->mParent)
  {
    if (self->mWasUnarchivedAsOrphanVariation)
    {
      NSLog(&cfstr_ArchivingAVari.isa, self);
    }

    else
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSSStyle(Archiving) saveToArchive:archiver:]");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle_Archiving.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 71, 0, "Archiving a variation style %{public}@ with no parent. This style did not have this problem when it was unarchived. Filing a bug with steps for reproducing this would be keenly appreciated.", self);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    }
  }

  mName = self->mName;
  if (mName)
  {
    v17 = objc_msgSend_tsp_protobufString(mName, v6, v7);
    *(a3 + 4) |= 1u;
    sub_276CA3CD4(__p, v17);
    v18 = *(a3 + 1);
    if (v18)
    {
      v32 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }
  }

  mStyleIdentifier = self->mStyleIdentifier;
  if (mStyleIdentifier)
  {
    v20 = objc_msgSend_tsp_protobufString(mStyleIdentifier, v6, v7);
    *(a3 + 4) |= 2u;
    sub_276CA3CD4(__p, v20);
    v21 = *(a3 + 1);
    if (v21)
    {
      v33 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }
  }

  mParent = self->mParent;
  if (mParent)
  {
    *(a3 + 4) |= 4u;
    v23 = *(a3 + 5);
    if (!v23)
    {
      v24 = *(a3 + 1);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x277CA0650](v24);
      *(a3 + 5) = v23;
    }

    objc_msgSend_setStrongReference_message_(v8, v6, mParent, v23);
  }

  if (self->mIsVariation)
  {
    *(a3 + 4) |= 0x10u;
    *(a3 + 56) = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->mStylesheet);

  if (WeakRetained && (objc_msgSend_isForCopy(v8, v26, v27) & 1) == 0)
  {
    v29 = objc_loadWeakRetained(&self->mStylesheet);
    *(a3 + 4) |= 8u;
    v30 = *(a3 + 6);
    if (!v30)
    {
      v31 = *(a3 + 1);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277CA0650](v31);
      *(a3 + 6) = v30;
    }

    objc_msgSend_setWeakReference_message_(v8, v28, v29, v30);
  }
}

@end