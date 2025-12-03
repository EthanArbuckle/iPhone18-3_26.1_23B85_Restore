@interface TSSStyle
+ (BOOL)validateIntValue:(int *)value forProperty:(int)property min:(int)min max:(int)max;
+ (BOOL)validateIntValueAsBool:(int *)bool forProperty:(int)property;
+ (TSSPropertyMap)defaultPropertyMap;
+ (TSSPropertySet)properties;
+ (TSSPropertySet)propertiesAllowingNSNull;
+ (double)fontSizeForFontSize:(double)size scalingFactor:(double)factor;
+ (id)defaultStyleWithContext:(id)context;
+ (id)description;
- (BOOL)hasEqualPropertyValues:(id)values;
- (BOOL)hasEqualValues:(id)values forProperties:(id)properties;
- (BOOL)hasEqualValuesToPropertyMap:(id)map forProperties:(id)properties;
- (BOOL)isAncestorOf:(id)of;
- (BOOL)isDescendentOf:(id)of;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStyle:(id)style ignoreObjectContext:(BOOL)context;
- (BOOL)isParentOf:(id)of;
- (BOOL)isRelatedTo:(id)to;
- (BOOL)overridePropertyMapIsEqualTo:(id)to;
- (BOOL)overridesAnyProperty;
- (NSSet)referencedStyles;
- (NSString)contentTag;
- (TSSPropertyMap)overridePropertyMap;
- (TSSPropertyMap)propertyMap;
- (TSSStyle)baseStyleForVariation;
- (TSSStyle)firstIdentifiedAncestor;
- (TSSStyle)firstNamedAncestor;
- (TSSStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation;
- (TSSStyle)rootAncestor;
- (TSSStyle)rootIdentifiedAncestor;
- (TSSStylesheet)stylesheet;
- (TSURetainedPointerSet)children;
- (TSURetainedPointerSet)descendants;
- (id)archivableRepresentationOfChangeSet:(id)set;
- (id)copyFlattenedWithContext:(id)context;
- (id)copyPropertyMap;
- (id)copyWithContext:(id)context includeParentProperties:(BOOL)properties;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyWithZone:(_NSZone *)zone context:(id)context;
- (id)newOverridePropertyMapWithPropertyMap:(id)map;
- (id)overridePropertyMapWithPropertyMap:(id)map overridePropertyMap:(id)propertyMap collapseSourceOverrides:(BOOL)overrides;
- (id)propertyMapIgnoringStyle:(id)style;
- (id)propertyMapThatNeedsToBeTransformedWithTransformedObjects:(id)objects;
- (id)valuesForProperties:(id)properties;
- (unint64_t)hash;
- (unint64_t)overrideCount;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)removeAllValues;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setName:(id)name;
- (void)setObjectUUID:(id)d;
- (void)setOverridePropertyMap:(id)map;
- (void)setParent:(id)parent;
- (void)setStyleIdentifier:(id)identifier;
- (void)setStylesheet:(id)stylesheet;
- (void)setValuesForProperties:(id)properties;
@end

@implementation TSSStyle

- (void)setStyleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->mStyleIdentifier != identifierCopy)
  {
    v10 = identifierCopy;
    objc_msgSend_willModify(self, v5, v6);
    v9 = objc_msgSend_copy(v10, v7, v8);

    objc_storeStrong(&self->mStyleIdentifier, v9);
    identifierCopy = v9;
  }
}

- (void)setStylesheet:(id)stylesheet
{
  obj = stylesheet;
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
  v4 = NSStringFromClass(self);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@", v4);

  for (i = objc_msgSend_superclass(self, v7, v8); i != objc_opt_class(); i = objc_msgSend_superclass(i, v14, v15))
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
  v19 = objc_msgSend_properties(self, v17, v18);
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

+ (id)defaultStyleWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v5, contextCopy, 0, 0, 0);

  return isVariation;
}

+ (TSSPropertyMap)defaultPropertyMap
{
  v3 = objc_alloc_init(TSSPropertyMap);
  v6 = objc_msgSend_properties(self, v4, v5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276C9CB2C;
  v10[3] = &unk_27A6EE7D0;
  selfCopy = self;
  v7 = v3;
  v11 = v7;
  objc_msgSend_enumeratePropertiesUsingBlock_(v6, v8, v10);

  return v7;
}

- (TSSStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation
{
  nameCopy = name;
  mapCopy = map;
  v61.receiver = self;
  v61.super_class = TSSStyle;
  v13 = [(TSSStyle *)&v61 initWithContext:context];
  if (v13)
  {
    if (!mapCopy)
    {
      goto LABEL_13;
    }

    v14 = objc_opt_class();
    v17 = objc_msgSend_properties(v14, v15, v16);
    v20 = objc_msgSend_allProperties(mapCopy, v18, v19);
    v22 = objc_msgSend_containsProperties_(v17, v21, v20);

    if ((v22 & 1) == 0)
    {
      v41 = objc_msgSend_allProperties(mapCopy, v12, v23);
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
      if (objc_msgSend_isEqual_(nameCopy, v12, &stru_2885E7A20))
      {
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSSStyle initWithContext:name:overridePropertyMap:isVariation:]");
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 444, 0, "Style name may not be the empty string.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
        nameCopy = 0;
      }

      v33 = objc_msgSend_copy(nameCopy, v24, v25);
      mName = v13->mName;
      v13->mName = v33;

      if (mapCopy)
      {
        v35 = [TSSPropertyMap alloc];
        v37 = objc_msgSend_initWithPropertyMap_(v35, v36, mapCopy);
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

      v13->mIsVariation = variation;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    isEqualToStyle_ignoreObjectContext = 1;
  }

  else if (equalCopy && (v6 = objc_opt_class(), v6 == objc_opt_class()))
  {
    isEqualToStyle_ignoreObjectContext = objc_msgSend_isEqualToStyle_ignoreObjectContext_(self, v7, v5, 0);
  }

  else
  {
    isEqualToStyle_ignoreObjectContext = 0;
  }

  return isEqualToStyle_ignoreObjectContext;
}

- (BOOL)isEqualToStyle:(id)style ignoreObjectContext:(BOOL)context
{
  contextCopy = context;
  styleCopy = style;
  v11 = objc_msgSend_context(self, v7, v8);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = objc_msgSend_context(styleCopy, v9, v10);
    v12 = v13 == 0;
  }

  isEqualToStyle_ignoreObjectContext_ignoreObjectUUID = objc_msgSend_isEqualToStyle_ignoreObjectContext_ignoreObjectUUID_(self, v14, styleCopy, v12 | contextCopy, v12 | contextCopy);
  return isEqualToStyle_ignoreObjectContext_ignoreObjectUUID;
}

- (id)copyFlattenedWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_allocWithZone(objc_opt_class());
  mName = self->mName;
  v9 = objc_msgSend_propertyMap(self, v7, v8);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v5, v10, contextCopy, mName, v9, 0);

  return isVariation;
}

- (id)copyWithZone:(_NSZone *)zone context:(id)context
{
  contextCopy = context;
  v7 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v7, v8, zone);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v9, v10, contextCopy, self->mName, self->mOverridePropertyMap, self->mIsVariation);

  return isVariation;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_msgSend_context(self, a2, zone);
  v7 = objc_msgSend_copyWithZone_context_(self, v6, zone, v5);

  return v7;
}

- (id)copyWithContext:(id)context includeParentProperties:(BOOL)properties
{
  propertiesCopy = properties;
  v8 = objc_msgSend_copyWithZone_context_(self, a2, 0, context);
  if (propertiesCopy)
  {
    v9 = objc_msgSend_propertyMap(self, v6, v7);
    objc_msgSend_setOverridePropertyMap_(v8, v10, v9);
  }

  v8[104] = 0;
  return v8;
}

- (id)valuesForProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_copyPropertyMap(self, v5, v6);
  objc_msgSend_filterWithProperties_(v7, v8, propertiesCopy);

  return v7;
}

- (void)setValuesForProperties:(id)properties
{
  propertiesCopy = properties;
  objc_msgSend_willModify(self, v5, v6);
  if (propertiesCopy)
  {
    if (self->mOverridePropertyMap)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_276C9E57C;
      v16[3] = &unk_27A6EE848;
      v16[4] = self;
      objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(propertiesCopy, v7, v16);
      objc_msgSend_addValuesFromPropertyMap_(self->mOverridePropertyMap, v9, propertiesCopy);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_276C9E604;
      v15[3] = &unk_27A6EE848;
      v15[4] = self;
      objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(propertiesCopy, v10, v15);
    }

    else
    {
      v11 = objc_msgSend_copy(propertiesCopy, v7, v8);
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

- (id)propertyMapIgnoringStyle:(id)style
{
  styleCopy = style;
  mParent = self->mParent;
  if (mParent)
  {
    v8 = objc_msgSend_propertyMapIgnoringStyle_(mParent, v4, styleCopy);
  }

  else
  {
    v8 = 0;
  }

  if (self != styleCopy && objc_msgSend_count(self->mOverridePropertyMap, v4, v5))
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

- (id)overridePropertyMapWithPropertyMap:(id)map overridePropertyMap:(id)propertyMap collapseSourceOverrides:(BOOL)overrides
{
  overridesCopy = overrides;
  mapCopy = map;
  propertyMapCopy = propertyMap;
  if (self->mIsVariation)
  {
    selfCopy = self->mParent;
    if (!selfCopy)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSSStyle overridePropertyMapWithPropertyMap:overridePropertyMap:collapseSourceOverrides:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 1152, 0, "Can't create variation of a nil base style.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
      selfCopy = 0;
      isVariation = objc_msgSend_isVariation(0, v20, v21);
      goto LABEL_6;
    }
  }

  else
  {
    selfCopy = self;
  }

  isVariation = objc_msgSend_isVariation(selfCopy, v10, v11);
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
    if (overridesCopy)
    {
      objc_msgSend_addValuesFromPropertyMap_(v31, v33, mOverridePropertyMap);
    }

    else
    {
      objc_msgSend_addValuesFromPropertyMap_(v32, v33, mOverridePropertyMap);
    }
  }

  objc_msgSend_addValuesFromPropertyMap_(v34, v33, propertyMapCopy);
  objc_msgSend_addValuesFromPropertyMap_(v31, v36, mapCopy);
  v39 = objc_msgSend_allProperties(v34, v37, v38);
  objc_msgSend_removeValuesForProperties_(v31, v40, v39);

  v43 = objc_msgSend_propertyMap(selfCopy, v41, v42);
  objc_msgSend_removeValuesFromPropertyMap_(v31, v44, v43);

  objc_msgSend_addValuesFromPropertyMap_(v34, v45, v31);

  return v34;
}

- (id)newOverridePropertyMapWithPropertyMap:(id)map
{
  mapCopy = map;
  if (self->mIsVariation)
  {
    selfCopy = self->mParent;
    if (!selfCopy)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSStyle newOverridePropertyMapWithPropertyMap:]");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1180, 0, "Can't create variation of a nil base style.");

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v13, v14);
      selfCopy = 0;
      isVariation = objc_msgSend_isVariation(0, v15, v16);
      goto LABEL_6;
    }
  }

  else
  {
    selfCopy = self;
  }

  isVariation = objc_msgSend_isVariation(selfCopy, v5, v6);
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
    objc_msgSend_addValuesFromPropertyMap_(v28, v29, mapCopy);
  }

  else
  {
    v28 = objc_msgSend_copy(mapCopy, v18, v19);
  }

  v32 = objc_msgSend_copyPropertyMap(selfCopy, v30, v31);
  objc_msgSend_removeValuesFromPropertyMap_(v28, v33, v32);

  return v28;
}

- (BOOL)hasEqualPropertyValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_class();
  v8 = objc_msgSend_properties(v5, v6, v7);
  LOBYTE(self) = objc_msgSend_hasEqualValues_forProperties_(self, v9, valuesCopy, v8);

  return self;
}

- (BOOL)hasEqualValuesToPropertyMap:(id)map forProperties:(id)properties
{
  mapCopy = map;
  propertiesCopy = properties;
  v8 = objc_opt_class();
  v11 = objc_msgSend_properties(v8, v9, v10);
  if ((objc_msgSend_containsProperties_(v11, v12, propertiesCopy) & 1) == 0)
  {

    goto LABEL_5;
  }

  v15 = objc_msgSend_allProperties(mapCopy, v13, v14);
  v17 = objc_msgSend_containsProperties_(v15, v16, propertiesCopy);

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
  v22 = mapCopy;
  v23 = &v24;
  objc_msgSend_enumeratePropertiesUsingBlock_(propertiesCopy, v18, v21);
  v19 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
LABEL_6:

  return v19 & 1;
}

- (BOOL)hasEqualValues:(id)values forProperties:(id)properties
{
  valuesCopy = values;
  propertiesCopy = properties;
  v8 = objc_opt_class();
  v11 = objc_msgSend_properties(v8, v9, v10);
  if ((objc_msgSend_containsProperties_(v11, v12, propertiesCopy) & 1) == 0)
  {

    goto LABEL_5;
  }

  v13 = objc_opt_class();
  v16 = objc_msgSend_properties(v13, v14, v15);
  v18 = objc_msgSend_containsProperties_(v16, v17, propertiesCopy);

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
  v23 = valuesCopy;
  v24 = &v25;
  objc_msgSend_enumeratePropertiesUsingBlock_(propertiesCopy, v19, v22);
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

- (void)setOverridePropertyMap:(id)map
{
  mapCopy = map;
  objc_msgSend_willModify(self, v5, v6);
  v9 = objc_msgSend_copy(mapCopy, v7, v8);

  mOverridePropertyMap = self->mOverridePropertyMap;
  self->mOverridePropertyMap = v9;
}

- (BOOL)overridePropertyMapIsEqualTo:(id)to
{
  toCopy = to;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (mOverridePropertyMap == toCopy)
  {
    v18 = 1;
    v8 = &v15;
  }

  else
  {
    isEqual = objc_msgSend_isEqual_(self->mOverridePropertyMap, v4, toCopy);
    v8 = v16;
    *(v16 + 24) = isEqual;
    if (!isEqual)
    {
      goto LABEL_7;
    }

    mOverridePropertyMap = self->mOverridePropertyMap;
  }

  if (mOverridePropertyMap != toCopy)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_276C9FAE8;
    v12[3] = &unk_27A6EE898;
    v13 = toCopy;
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
  selfCopy = self;
  v5 = objc_msgSend_parent(selfCopy, v3, v4);

  if (v5)
  {
    do
    {
      v8 = objc_msgSend_parent(selfCopy, v6, v7);

      v11 = objc_msgSend_parent(v8, v9, v10);

      selfCopy = v8;
    }

    while (v11);
  }

  else
  {
    v8 = selfCopy;
  }

  return v8;
}

- (TSSStyle)baseStyleForVariation
{
  selfCopy = self;
  if (objc_msgSend_isVariation(selfCopy, v3, v4))
  {
    while (1)
    {
      v7 = objc_msgSend_parent(selfCopy, v5, v6);

      if (!v7)
      {
        break;
      }

      v10 = objc_msgSend_parent(selfCopy, v8, v9);

      selfCopy = v10;
      if ((objc_msgSend_isVariation(v10, v11, v12) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v10 = selfCopy;
LABEL_6:

  return v10;
}

- (TSSStyle)firstIdentifiedAncestor
{
  selfCopy = self;
  if (selfCopy)
  {
    do
    {
      v5 = objc_msgSend_styleIdentifier(selfCopy, v2, v3);

      if (v5)
      {
        break;
      }

      v8 = objc_msgSend_parent(selfCopy, v6, v7);

      selfCopy = v8;
    }

    while (v8);
  }

  return selfCopy;
}

- (TSSStyle)firstNamedAncestor
{
  selfCopy = self;
  if (selfCopy)
  {
    do
    {
      if (objc_msgSend_isNamed(selfCopy, v2, v3))
      {
        break;
      }

      v7 = objc_msgSend_parent(selfCopy, v5, v6);

      selfCopy = v7;
    }

    while (v7);
  }

  return selfCopy;
}

- (TSSStyle)rootIdentifiedAncestor
{
  selfCopy = self;
  if (selfCopy)
  {
    v5 = selfCopy;
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

- (void)setName:(id)name
{
  nameCopy = name;
  if (objc_msgSend_isEqualToString_(&stru_2885E7A20, v5, nameCopy))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSSStyle setName:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyle.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1377, 0, "Style name may not be the empty string.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  objc_msgSend_willModify(self, v6, v7);
  v17 = objc_msgSend_copy(nameCopy, v15, v16);

  mName = self->mName;
  self->mName = v17;
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  if (self->mParent != parentCopy)
  {
    v27 = parentCopy;
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

    objc_storeStrong(&self->mParent, parent);
    parentCopy = v27;
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

- (BOOL)isParentOf:(id)of
{
  v4 = objc_msgSend_parent(of, a2, of);
  LOBYTE(self) = v4 == self;

  return self;
}

- (BOOL)isDescendentOf:(id)of
{
  ofCopy = of;
  mParent = self->mParent;
  if (mParent)
  {
    if (mParent == ofCopy)
    {
      isDescendentOf = 1;
    }

    else
    {
      isDescendentOf = objc_msgSend_isDescendentOf_(mParent, v4, ofCopy);
    }
  }

  else
  {
    isDescendentOf = 0;
  }

  return isDescendentOf;
}

- (BOOL)isAncestorOf:(id)of
{
  ofCopy = of;
  v7 = objc_msgSend_parent(ofCopy, v5, v6);

  if (v7)
  {
    v12 = objc_msgSend_parent(ofCopy, v8, v9);
    if (v12 == self)
    {
      isAncestorOf = 1;
    }

    else
    {
      v13 = objc_msgSend_parent(ofCopy, v10, v11);
      isAncestorOf = objc_msgSend_isAncestorOf_(self, v14, v13);
    }
  }

  else
  {
    isAncestorOf = 0;
  }

  return isAncestorOf;
}

- (BOOL)isRelatedTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self == toCopy)
  {
    v21 = 1;
  }

  else
  {
    v10 = objc_msgSend_parent(toCopy, v5, v6);
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

+ (BOOL)validateIntValue:(int *)value forProperty:(int)property min:(int)min max:(int)max
{
  if (!value)
  {
    return 0;
  }

  v6 = *value;
  if (*value == 0x80000000)
  {
    return 0;
  }

  if (v6 < min || (min = max, v6 > max))
  {
    *value = min;
  }

  return 1;
}

+ (BOOL)validateIntValueAsBool:(int *)bool forProperty:(int)property
{
  if (!bool || *bool == 0x80000000)
  {
    return 0;
  }

  result = 1;
  if (*bool > 1)
  {
    *bool = 1;
  }

  return result;
}

- (id)archivableRepresentationOfChangeSet:(id)set
{
  setCopy = set;
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

+ (double)fontSizeForFontSize:(double)size scalingFactor:(double)factor
{
  v4 = size * factor;
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

- (id)propertyMapThatNeedsToBeTransformedWithTransformedObjects:(id)objects
{
  objectsCopy = objects;
  selfCopy = self;
  v7 = selfCopy;
  if (selfCopy)
  {
    v8 = selfCopy;
    do
    {
      v9 = objc_msgSend_objectForKey_(objectsCopy, v6, v8);

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

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend_propertyMap(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276CA0FD0;
  v10[3] = &unk_27A6EE780;
  v10[4] = self;
  v11 = blockCopy;
  v8 = blockCopy;
  objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v7, v9, v10);
}

- (void)setObjectUUID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_objectUUID(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);

  v15.receiver = self;
  v15.super_class = TSSStyle;
  [(TSSStyle *)&v15 setObjectUUID:dCopy];
  v13 = objc_msgSend_stylesheet(self, v11, v12);
  objc_msgSend_style_didChangeUUIDToValue_fromValue_(v13, v14, self, dCopy, v10);
}

- (TSSStylesheet)stylesheet
{
  WeakRetained = objc_loadWeakRetained(&self->mStylesheet);

  return WeakRetained;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = *(archive + 4);
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_tsp_initWithProtobufString_(v8, v9, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
    mName = self->mName;
    self->mName = v10;

    v7 = *(archive + 4);
  }

  if ((v7 & 2) != 0)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = objc_msgSend_tsp_initWithProtobufString_(v12, v13, *(archive + 4) & 0xFFFFFFFFFFFFFFFELL);
    mStyleIdentifier = self->mStyleIdentifier;
    self->mStyleIdentifier = v14;

    v7 = *(archive + 4);
  }

  if ((v7 & 4) != 0)
  {
    v16 = *(archive + 5);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_276CA3864;
    v26[3] = &unk_27A6EEA28;
    v26[4] = self;
    v17 = unarchiverCopy;
    v18 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v17, v19, v16, v18, 0, v26);

    v7 = *(archive + 4);
  }

  if ((v7 & 8) != 0)
  {
    v20 = *(archive + 6);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_276CA387C;
    v25[3] = &unk_27A6EEA50;
    v25[4] = self;
    v21 = unarchiverCopy;
    v22 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v21, v23, v20, v22, 0, v25);
  }

  v24 = *(archive + 56);
  self->mIsVariation = v24;
  if (v24 == 1 && (*(archive + 16) & 4) == 0)
  {
    NSLog(&cfstr_UnarchivingAVa.isa, self);
    self->mWasUnarchivedAsOrphanVariation = 1;
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
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
    *(archive + 4) |= 1u;
    sub_276CA3CD4(__p, v17);
    v18 = *(archive + 1);
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
    *(archive + 4) |= 2u;
    sub_276CA3CD4(__p, v20);
    v21 = *(archive + 1);
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
    *(archive + 4) |= 4u;
    v23 = *(archive + 5);
    if (!v23)
    {
      v24 = *(archive + 1);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x277CA0650](v24);
      *(archive + 5) = v23;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v6, mParent, v23);
  }

  if (self->mIsVariation)
  {
    *(archive + 4) |= 0x10u;
    *(archive + 56) = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->mStylesheet);

  if (WeakRetained && (objc_msgSend_isForCopy(archiverCopy, v26, v27) & 1) == 0)
  {
    v29 = objc_loadWeakRetained(&self->mStylesheet);
    *(archive + 4) |= 8u;
    v30 = *(archive + 6);
    if (!v30)
    {
      v31 = *(archive + 1);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277CA0650](v31);
      *(archive + 6) = v30;
    }

    objc_msgSend_setWeakReference_message_(archiverCopy, v28, v29, v30);
  }
}

@end