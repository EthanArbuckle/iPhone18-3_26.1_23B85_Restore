@interface TSCH3DShaderEffects
- (BOOL)isEqual:(id)equal;
- (BOOL)isSectionEnabled:(int)enabled;
- (BOOL)removeEffectOfClass:(Class)class fromSection:(int)section;
- (NSSet)identifier;
- (TSCH3DShaderEffects)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)effects;
- (void)addEffect:(id)effect toSection:(int)section;
- (void)addEffectOnce:(id)once toSection:(int)section;
- (void)addEffectsFromArray:(id)array toSection:(int)section;
- (void)addVariables:(id)variables;
- (void)enumerateEffectsUsingBlock:(id)block;
- (void)injectGLSLInto:(id)into context:(id)context;
- (void)injectMetalShaderInto:(id)into context:(id)context;
- (void)prependEffect:(id)effect toSection:(int)section;
- (void)removeEffect:(id)effect fromSection:(int)section;
- (void)reset;
- (void)resetCacheList;
- (void)resetSection:(int)section;
- (void)resetSection:(int)section toArray:(id)array;
- (void)resetToArray:(id)array;
- (void)setEnable:(BOOL)enable forSection:(int)section;
@end

@implementation TSCH3DShaderEffects

- (TSCH3DShaderEffects)init
{
  v27.receiver = self;
  v27.super_class = TSCH3DShaderEffects;
  v2 = [(TSCH3DShaderEffects *)&v27 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB38]);
    v8 = objc_msgSend_initWithCapacity_(v3, v4, v5, v6, v7, 4);
    sections = v2->_sections;
    v2->_sections = v8;

    for (i = 0; i != 4; ++i)
    {
      v15 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12, v13);
      v16 = v2->_sections;
      v21 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v17, v18, v19, v20, i);
      objc_msgSend_setObject_forKeyedSubscript_(v16, v22, v23, v24, v25, v15, v21);
    }
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v16.receiver = self;
  v16.super_class = TSCH3DShaderEffects;
  v4 = [(TSCH3DShaderEffects *)&v16 description];
  v9 = objc_msgSend_effects(self, v5, v6, v7, v8);
  v14 = objc_msgSend_stringWithFormat_(v3, v10, v11, v12, v13, @"%@(%@)", v4, v9);

  return v14;
}

- (void)resetCacheList
{
  cacheList = self->_cacheList;
  self->_cacheList = 0;
}

- (id)effects
{
  cacheList = self->_cacheList;
  if (!cacheList)
  {
    v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
    for (i = 0; i != 4; ++i)
    {
      objc_opt_class();
      sections = self->_sections;
      v14 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v10, v11, v12, v13, i);
      v19 = objc_msgSend_objectForKeyedSubscript_(sections, v15, v16, v17, v18, v14);
      v20 = TSUCheckedDynamicCast();

      objc_msgSend_addObjectsFromArray_(v7, v21, v22, v23, v24, v20);
    }

    v25 = self->_cacheList;
    self->_cacheList = v7;

    cacheList = self->_cacheList;
  }

  return cacheList;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {
    v10 = objc_msgSend_effects(self, v5, v7, v8, v9);
    v15 = objc_msgSend_effects(v6, v11, v12, v13, v14);
    isEqualToArray = objc_msgSend_isEqualToArray_(v10, v16, v17, v18, v19, v15);
  }

  else
  {
    isEqualToArray = 0;
  }

  return isEqualToArray;
}

- (NSSet)identifier
{
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_msgSend_effects(self, a2, v2, v3, v4);
  v11 = objc_msgSend_setWithArray_(v5, v7, v8, v9, v10, v6);

  return v11;
}

- (BOOL)removeEffectOfClass:(Class)class fromSection:(int)section
{
  v7 = *&section;
  v56 = *MEMORY[0x277D85DE8];
  if (section >= 4)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCH3DShaderEffects removeEffectOfClass:fromSection:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffects.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 81, 0, "invalid section %ld should be less than %ld", v7, 4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  objc_opt_class();
  sections = self->_sections;
  v29 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v25, v26, v27, v28, v7);
  v34 = objc_msgSend_objectForKeyedSubscript_(sections, v30, v31, v32, v33, v29);
  v35 = TSUCheckedDynamicCast();

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v36 = v35;
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, v38, v39, v40, &v51, v55, 16);
  if (v41)
  {
    v42 = *v52;
    while (2)
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v52 != v42)
        {
          objc_enumerationMutation(v36);
        }

        v44 = *(*(&v51 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_removeEffect_fromSection_(self, v45, v46, v47, v48, v44, v7);
          v49 = 1;
          goto LABEL_13;
        }
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v45, v46, v47, v48, &v51, v55, 16);
      if (v41)
      {
        continue;
      }

      break;
    }
  }

  v49 = 0;
LABEL_13:

  return v49;
}

- (void)removeEffect:(id)effect fromSection:(int)section
{
  v4 = *&section;
  effectCopy = effect;
  if (v4 >= 4)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DShaderEffects removeEffect:fromSection:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffects.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 96, 0, "invalid section %ld should be less than %ld", v4, 4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  objc_opt_class();
  sections = self->_sections;
  v30 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v26, v27, v28, v29, v4);
  v35 = objc_msgSend_objectForKeyedSubscript_(sections, v31, v32, v33, v34, v30);
  v36 = TSUCheckedDynamicCast();

  v41 = objc_msgSend_indexOfObject_(v36, v37, v38, v39, v40, effectCopy);
  v46 = v41;
  if (v36 && v41 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "[TSCH3DShaderEffects removeEffect:fromSection:]");
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffects.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v54, v55, v56, v57, v48, v53, 100, 0, "effect does not exist %@", effectCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
  }

  objc_msgSend_resetCacheList(self, v42, v43, v44, v45);
  objc_msgSend_removeObjectAtIndex_(v36, v62, v63, v64, v65, v46);
}

- (void)reset
{
  for (i = 0; i != 4; ++i)
  {
    objc_msgSend_resetSection_(self, a2, v2, v3, v4, i);
  }
}

- (void)resetToArray:(id)array
{
  arrayCopy = array;
  objc_msgSend_reset(self, v4, v5, v6, v7);
  objc_msgSend_addEffectsFromArray_(self, v8, v9, v10, v11, arrayCopy);
}

- (void)prependEffect:(id)effect toSection:(int)section
{
  v4 = *&section;
  effectCopy = effect;
  if (v4 >= 4)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DShaderEffects prependEffect:toSection:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffects.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 118, 0, "invalid section %ld should be less than %ld", v4, 4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  objc_opt_class();
  sections = self->_sections;
  v30 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v26, v27, v28, v29, v4);
  v35 = objc_msgSend_objectForKeyedSubscript_(sections, v31, v32, v33, v34, v30);
  v36 = TSUCheckedDynamicCast();

  if (v36 && objc_msgSend_indexOfObject_(v36, v37, v38, v39, v40, effectCopy) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "[TSCH3DShaderEffects prependEffect:toSection:]");
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffects.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v49, v50, v51, v42, v47, 122, 0, "effect already exists %@", effectCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
  }

  objc_msgSend_resetCacheList(self, v37, v38, v39, v40);
  objc_msgSend_insertObject_atIndex_(v36, v56, v57, v58, v59, effectCopy, 0);
}

- (void)addEffect:(id)effect toSection:(int)section
{
  v4 = *&section;
  effectCopy = effect;
  if (v4 >= 4)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DShaderEffects addEffect:toSection:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffects.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 130, 0, "invalid section %ld should be less than %ld", v4, 4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  objc_opt_class();
  sections = self->_sections;
  v30 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v26, v27, v28, v29, v4);
  v35 = objc_msgSend_objectForKeyedSubscript_(sections, v31, v32, v33, v34, v30);
  v36 = TSUCheckedDynamicCast();

  if (v36 && objc_msgSend_indexOfObject_(v36, v37, v38, v39, v40, effectCopy) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "[TSCH3DShaderEffects addEffect:toSection:]");
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffects.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v49, v50, v51, v42, v47, 134, 0, "effect already exists %@", effectCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
  }

  objc_msgSend_resetCacheList(self, v37, v38, v39, v40);
  objc_msgSend_addObject_(v36, v56, v57, v58, v59, effectCopy);
}

- (void)addEffectsFromArray:(id)array toSection:(int)section
{
  v4 = *&section;
  arrayCopy = array;
  if (v4 >= 4)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DShaderEffects addEffectsFromArray:toSection:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffects.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 141, 0, "invalid section %ld should be less than %ld", v4, 4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  objc_opt_class();
  sections = self->_sections;
  v30 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v26, v27, v28, v29, v4);
  v35 = objc_msgSend_objectForKeyedSubscript_(sections, v31, v32, v33, v34, v30);
  v36 = TSUCheckedDynamicCast();

  v41 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v37, v38, v39, v40, v36);
  v46 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v42, v43, v44, v45, arrayCopy);
  LODWORD(v35) = objc_msgSend_intersectsSet_(v41, v47, v48, v49, v50, v46);

  if (v35)
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "[TSCH3DShaderEffects addEffectsFromArray:toSection:]");
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffects.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 145, 0, "effect array intersects existing array %@ %@", arrayCopy, v36);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
  }

  objc_msgSend_resetCacheList(self, v51, v52, v53, v54);
  objc_msgSend_addObjectsFromArray_(v36, v70, v71, v72, v73, arrayCopy);
}

- (void)addEffectOnce:(id)once toSection:(int)section
{
  v4 = *&section;
  onceCopy = once;
  if (v4 >= 4)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DShaderEffects addEffectOnce:toSection:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffects.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 152, 0, "invalid section %ld should be less than %ld", v4, 4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  objc_opt_class();
  sections = self->_sections;
  v30 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v26, v27, v28, v29, v4);
  v35 = objc_msgSend_objectForKeyedSubscript_(sections, v31, v32, v33, v34, v30);
  v36 = TSUCheckedDynamicCast();

  if (objc_msgSend_indexOfObject_(v36, v37, v38, v39, v40, onceCopy) == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_addEffect_toSection_(self, v41, v42, v43, v44, onceCopy, v4);
  }
}

- (void)setEnable:(BOOL)enable forSection:(int)section
{
  v7 = *&section;
  if (section >= 4)
  {
    v10 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCH3DShaderEffects setEnable:forSection:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffects.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v17, v18, v19, v56, v15, 164, 0, "invalid section %ld should be less than %ld", v7, 4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  objc_opt_class();
  sections = self->_sections;
  v29 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v25, v26, v27, v28, v7);
  v34 = objc_msgSend_objectForKeyedSubscript_(sections, v30, v31, v32, v33, v29);
  v57 = TSUCheckedDynamicCast();

  if (enable)
  {
    v39 = v57;
    if (v57)
    {
      goto LABEL_8;
    }

    v40 = objc_msgSend_array(MEMORY[0x277CBEB18], v35, v36, v37, v38);
    v41 = self->_sections;
    v46 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v42, v43, v44, v45, v7);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v47, v48, v49, v50, v40, v46);
  }

  else
  {
    v51 = self->_sections;
    v40 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v35, v36, v37, v38, v7);
    objc_msgSend_removeObjectForKey_(v51, v52, v53, v54, v55, v40);
  }

  v39 = v57;
LABEL_8:
}

- (BOOL)isSectionEnabled:(int)enabled
{
  v6 = *&enabled;
  if (enabled >= 4)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DShaderEffects isSectionEnabled:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffects.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 176, 0, "invalid section %ld should be less than %ld", v6, 4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  objc_opt_class();
  sections = self->_sections;
  v28 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v24, v25, v26, v27, v6);
  v33 = objc_msgSend_objectForKeyedSubscript_(sections, v29, v30, v31, v32, v28);
  v34 = TSUCheckedDynamicCast();

  return v34 != 0;
}

- (void)resetSection:(int)section
{
  v6 = *&section;
  if (section >= 4)
  {
    v8 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DShaderEffects resetSection:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffects.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v15, v16, v17, v41, v13, 183, 0, "invalid section %ld should be less than %ld", v6, 4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  objc_opt_class();
  sections = self->_sections;
  v27 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v23, v24, v25, v26, v6);
  v32 = objc_msgSend_objectForKeyedSubscript_(sections, v28, v29, v30, v31, v27);
  v42 = TSUCheckedDynamicCast();

  objc_msgSend_resetCacheList(self, v33, v34, v35, v36);
  objc_msgSend_removeAllObjects(v42, v37, v38, v39, v40);
}

- (void)resetSection:(int)section toArray:(id)array
{
  v4 = *&section;
  arrayCopy = array;
  objc_msgSend_resetSection_(self, v6, v7, v8, v9, v4);
  objc_msgSend_addEffectsFromArray_toSection_(self, v10, v11, v12, v13, arrayCopy, v4);
}

- (void)enumerateEffectsUsingBlock:(id)block
{
  blockCopy = block;
  v8 = objc_msgSend_effects(self, v4, v5, v6, v7);
  objc_msgSend_enumerateObjectsUsingBlock_(v8, v9, v10, v11, v12, blockCopy);
}

- (void)addVariables:(id)variables
{
  v25 = *MEMORY[0x277D85DE8];
  variablesCopy = variables;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = objc_msgSend_effects(self, v5, 0.0, v6, v7, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, &v20, v24, 16);
  if (v14)
  {
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_addVariables_(*(*(&v20 + 1) + 8 * v19++), v13, v15, v16, v17, variablesCopy);
      }

      while (v14 != v19);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v13, v15, v16, v17, &v20, v24, 16);
    }

    while (v14);
  }
}

- (void)injectGLSLInto:(id)into context:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  intoCopy = into;
  contextCopy = context;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = objc_msgSend_effects(self, v8, 0.0, v9, v10, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v13, v14, v15, &v23, v27, 16);
  if (v17)
  {
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_injectGLSLInto_context_(*(*(&v23 + 1) + 8 * v22++), v16, v18, v19, v20, intoCopy, contextCopy);
      }

      while (v17 != v22);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v16, v18, v19, v20, &v23, v27, 16);
    }

    while (v17);
  }
}

- (void)injectMetalShaderInto:(id)into context:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  intoCopy = into;
  contextCopy = context;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = objc_msgSend_effects(self, v8, 0.0, v9, v10, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v13, v14, v15, &v23, v27, 16);
  if (v17)
  {
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_injectMetalShaderInto_context_(*(*(&v23 + 1) + 8 * v22++), v16, v18, v19, v20, intoCopy, contextCopy);
      }

      while (v17 != v22);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v16, v18, v19, v20, &v23, v27, 16);
    }

    while (v17);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, zone);
  v51 = objc_msgSend_init(v10, v11, v12, v13, v14);
  if (v51)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v16 = self->_sections;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, v18, v19, v20, &v52, v56, 16);
    if (v21)
    {
      v22 = *v53;
      do
      {
        v23 = 0;
        do
        {
          if (*v53 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v24 = *(*(&v52 + 1) + 8 * v23);
          objc_opt_class();
          v29 = objc_msgSend_objectForKeyedSubscript_(self->_sections, v25, v26, v27, v28, v24);
          v30 = TSUCheckedDynamicCast();

          v35 = objc_msgSend_mutableCopy(v30, v31, v32, v33, v34);
          objc_msgSend_setObject_forKeyedSubscript_(v15, v36, v37, v38, v39, v35, v24);

          ++v23;
        }

        while (v21 != v23);
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v40, v41, v42, v43, &v52, v56, 16);
      }

      while (v21);
    }

    objc_storeStrong((v51 + 8), v15);
    v48 = objc_msgSend_copy(self->_cacheList, v44, v45, v46, v47);
    v49 = *(v51 + 16);
    *(v51 + 16) = v48;
  }

  return v51;
}

@end