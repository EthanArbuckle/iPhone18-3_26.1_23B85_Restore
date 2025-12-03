@interface KNAnimationRegistry
+ (id)categoryNameForPluginClass:(Class)class;
+ (id)instance;
+ (id)localizedCategoryNameForCategory:(int64_t)category;
+ (id)localizedNameForUnsupportedAnimation:(id)animation;
+ (id)preferredCategoryOrder;
- (BOOL)canMapEffectIdentifier:(id)identifier animationType:(int64_t)type toEffectIdentifier:(id)effectIdentifier includeObsoleteNames:(BOOL)names forDrawable:(id)drawable;
- (KNAnimationRegistry)init;
- (id)animationInfoForEffectIdentifier:(id)identifier animationType:(int64_t)type includeObsoleteNames:(BOOL)names;
- (id)animationInfoForEffectIdentifier:(id)identifier animationType:(int64_t)type includeObsoleteNames:(BOOL)names drawable:(id)drawable;
- (id)animationInfosForAnimationType:(int64_t)type category:(id)category;
- (id)animationInfosForAnimationType:(int64_t)type filter:(id)filter;
- (id)distinctCategoriesForType:(int64_t)type;
- (id)p_buildAlternateFilterMap;
@end

@implementation KNAnimationRegistry

+ (id)instance
{
  if (qword_280A3BF20 != -1)
  {
    sub_275E59D44();
  }

  v3 = qword_280A3BF28;

  return v3;
}

+ (id)categoryNameForPluginClass:(Class)class
{
  v4 = objc_msgSend_animationCategory(class, a2, class);

  return objc_msgSend_localizedCategoryNameForCategory_(KNAnimationRegistry, v3, v4);
}

+ (id)localizedCategoryNameForCategory:(int64_t)category
{
  if (category > 202)
  {
    if (category > 300)
    {
      switch(category)
      {
        case 301:
          v3 = sub_275DC204C();
          objc_msgSend_localizedStringForKey_value_table_(v3, v10, @"Basic Action Effects *AnimationRegistry*", @"Basic", @"Keynote");
          goto LABEL_23;
        case 302:
          v3 = sub_275DC204C();
          objc_msgSend_localizedStringForKey_value_table_(v3, v13, @"Emphasis Action Effects *AnimationRegistry*", @"Emphasis", @"Keynote");
          goto LABEL_23;
        case 401:
          v3 = sub_275DC204C();
          objc_msgSend_localizedStringForKey_value_table_(v3, v7, @"Image Gallery Effects *AnimationRegistry*", @"Image Gallery", @"Keynote");
          goto LABEL_23;
      }
    }

    else
    {
      if (category == 203)
      {
        v3 = sub_275DC204C();
        objc_msgSend_localizedStringForKey_value_table_(v3, v8, @"Special Effects *AnimationRegistry*", @"Special Effects", @"Keynote");
        goto LABEL_23;
      }

      if (category == 204)
      {
        v3 = sub_275DC204C();
        objc_msgSend_localizedStringForKey_value_table_(v3, v11, @"3D Charts Effects *AnimationRegistry*", @"3D Chart Effects", @"Keynote");
        goto LABEL_23;
      }
    }

    goto LABEL_8;
  }

  if (category > 102)
  {
    switch(category)
    {
      case 103:
        v3 = sub_275DC204C();
        objc_msgSend_localizedStringForKey_value_table_(v3, v9, @"Text Effects *AnimationRegistry*", @"Text Effects", @"Keynote");
        goto LABEL_23;
      case 201:
        v3 = sub_275DC204C();
        objc_msgSend_localizedStringForKey_value_table_(v3, v12, @"Appear and Move Effects *AnimationRegistry*", @"Appear & Move", @"Keynote");
        goto LABEL_23;
      case 202:
        v3 = sub_275DC204C();
        objc_msgSend_localizedStringForKey_value_table_(v3, v6, @"Flip Spin and Scale Effects *AnimationRegistry*", @"Flip, Spin & Scale", @"Keynote");
        goto LABEL_23;
    }

LABEL_8:
    v5 = objc_msgSend_string(MEMORY[0x277CCACA8], a2, category);
    goto LABEL_24;
  }

  if (category != 102)
  {
    goto LABEL_8;
  }

  v3 = sub_275DC204C();
  objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Object Effects *AnimationRegistry*", @"Object Effects", @"Keynote");
  v5 = LABEL_23:;

LABEL_24:

  return v5;
}

+ (id)localizedNameForUnsupportedAnimation:(id)animation
{
  animationCopy = animation;
  if (qword_280A3BF30 != -1)
  {
    sub_275E59D58();
  }

  v5 = objc_msgSend_objectForKeyedSubscript_(qword_280A3BF38, v3, animationCopy);
  if (!v5)
  {
    v6 = sub_275DC204C();
    v5 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, @"Unsupported", &stru_2884D8E20, @"Keynote");
  }

  return v5;
}

+ (id)preferredCategoryOrder
{
  v3 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275D56E3C;
  block[3] = &unk_27A697B20;
  v4 = v3;
  v7 = v4;
  if (qword_280A3BF40 != -1)
  {
    dispatch_once(&qword_280A3BF40, block);
  }

  return v4;
}

- (id)p_buildAlternateFilterMap
{
  v3 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v5 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v4, v3);

  return v5;
}

- (KNAnimationRegistry)init
{
  v165 = *MEMORY[0x277D85DE8];
  v160.receiver = self;
  v160.super_class = KNAnimationRegistry;
  v2 = [(KNAnimationRegistry *)&v160 init];
  if (v2)
  {
    v128 = sub_275DC204C();
    v125 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v3, v4);
    v122 = v2;
    v5 = objc_opt_class();
    objc_msgSend_animationsInBundle(v5, v6, v7);
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    obj = v159 = 0u;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v156, v164, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v157;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v157 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v156 + 1) + 8 * i);
          v16 = objc_msgSend_classNamed_(v128, v10, v15);
          if (v16)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v125, v17, v16, v15);
          }

          else
          {
            v18 = MEMORY[0x277D81150];
            v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[KNAnimationRegistry init]");
            v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationRegistry.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 467, 0, "Cannot find class for animation %@.", v15);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v156, v164, 16);
      }

      while (v12);
    }

    v25 = objc_msgSend_allValues(v125, v10, v11);
    v26 = 0x277CBE000uLL;
    v29 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v27, v28);
    v134 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v30, v31);
    v34 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v32, v33);
    v139 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v35, v36);
    v127 = objc_msgSend_array(MEMORY[0x277CBEB18], v37, v38);
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v123 = v25;
    v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v123, v39, &v152, v163, 16);
    if (v129)
    {
      v126 = *v153;
      v131 = v34;
      v132 = v29;
      do
      {
        v40 = 0;
        do
        {
          if (*v153 != v126)
          {
            objc_enumerationMutation(v123);
          }

          v130 = v40;
          v41 = *(*(&v152 + 1) + 8 * v40);
          v42 = [KNAnimationInfo alloc];
          v44 = objc_msgSend_initWithAnimationClass_(v42, v43, v41);
          objc_msgSend_addObject_(v127, v45, v44);
          v150 = 0u;
          v151 = 0u;
          v148 = 0u;
          v149 = 0u;
          v135 = objc_msgSend_supportedTypes(v41, v46, v47);
          v138 = objc_msgSend_countByEnumeratingWithState_objects_count_(v135, v48, &v148, v162, 16);
          if (v138)
          {
            v137 = *v149;
            v133 = v41;
            do
            {
              for (j = 0; j != v138; ++j)
              {
                if (*v149 != v137)
                {
                  objc_enumerationMutation(v135);
                }

                v51 = *(*(&v148 + 1) + 8 * j);
                v54 = objc_msgSend_objectForKeyedSubscript_(v29, v49, v51);
                if (!v54)
                {
                  v54 = objc_msgSend_dictionary(*(v26 + 2872), v52, v53);
                  objc_msgSend_setObject_forKeyedSubscript_(v29, v55, v54, v51);
                }

                objc_msgSend_animationName(v41, v52, v53);
                v57 = v56 = v41;
                objc_msgSend_setObject_forKeyedSubscript_(v54, v58, v44, v57);

                v62 = objc_msgSend_objectForKeyedSubscript_(v34, v59, v51);
                if (!v62)
                {
                  v62 = objc_msgSend_dictionary(*(v26 + 2872), v60, v61);
                  objc_msgSend_setObject_forKeyedSubscript_(v34, v63, v62, v51);
                }

                v141 = v54;
                v64 = objc_msgSend_categoryNameForPluginClass_(KNAnimationRegistry, v60, v56);
                v143 = v62;
                v68 = objc_msgSend_objectForKeyedSubscript_(v62, v65, v64);
                v41 = v56;
                if (!v68)
                {
                  v68 = objc_msgSend_array(MEMORY[0x277CBEB18], v66, v67);
                  objc_msgSend_setObject_forKeyedSubscript_(v143, v69, v68, v64);
                }

                v140 = v64;
                objc_msgSend_addObject_(v68, v66, v44);
                v73 = objc_msgSend_objectForKeyedSubscript_(v139, v70, v51);
                if (!v73)
                {
                  v73 = objc_msgSend_dictionary(*(v26 + 2872), v71, v72);
                  objc_msgSend_setObject_forKeyedSubscript_(v139, v74, v73, v51);
                }

                v142 = objc_msgSend_animationFilter(v56, v71, v72);
                v78 = objc_msgSend_objectForKeyedSubscript_(v73, v75, v142);
                if (!v78)
                {
                  v78 = objc_msgSend_array(MEMORY[0x277CBEB18], v76, v77);
                  objc_msgSend_setObject_forKeyedSubscript_(v73, v79, v78, v142);
                }

                objc_msgSend_addObject_(v78, v76, v44);
                if (objc_msgSend_conformsToProtocol_(v41, v80, &unk_28852EB90))
                {
                  v83 = objc_msgSend_obsoleteAnimationNames(v41, v81, v82);
                  if (v83)
                  {
                    v136 = v83;
                    v87 = objc_msgSend_objectForKeyedSubscript_(v134, v84, v51);
                    if (!v87)
                    {
                      v87 = objc_msgSend_dictionary(*(v26 + 2872), v85, v86);
                      objc_msgSend_setObject_forKeyedSubscript_(v134, v88, v87, v51);
                    }

                    v146 = 0u;
                    v147 = 0u;
                    v144 = 0u;
                    v145 = 0u;
                    v89 = v136;
                    v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v90, &v144, v161, 16);
                    if (v91)
                    {
                      v93 = v91;
                      v94 = *v145;
                      do
                      {
                        for (k = 0; k != v93; ++k)
                        {
                          if (*v145 != v94)
                          {
                            objc_enumerationMutation(v89);
                          }

                          objc_msgSend_setObject_forKeyedSubscript_(v87, v92, v44, *(*(&v144 + 1) + 8 * k));
                        }

                        v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v92, &v144, v161, 16);
                      }

                      while (v93);
                    }

                    v26 = 0x277CBE000;
                    v34 = v131;
                    v29 = v132;
                    v41 = v133;
                    v83 = v136;
                  }
                }
              }

              v138 = objc_msgSend_countByEnumeratingWithState_objects_count_(v135, v49, &v148, v162, 16);
            }

            while (v138);
          }

          v40 = v130 + 1;
        }

        while (v130 + 1 != v129);
        v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v123, v96, &v152, v163, 16);
      }

      while (v129);
    }

    v97 = objc_alloc(MEMORY[0x277CBEAC0]);
    v99 = objc_msgSend_initWithDictionary_(v97, v98, v29);
    v2 = v122;
    classesForTypeAndName = v122->_classesForTypeAndName;
    v122->_classesForTypeAndName = v99;

    v101 = objc_alloc(MEMORY[0x277CBEAC0]);
    v103 = objc_msgSend_initWithDictionary_(v101, v102, v134);
    classesForTypeAndObsoleteName = v122->_classesForTypeAndObsoleteName;
    v122->_classesForTypeAndObsoleteName = v103;

    v105 = objc_alloc(MEMORY[0x277CBEAC0]);
    v107 = objc_msgSend_initWithDictionary_(v105, v106, v34);
    classesForTypeAndCategory = v122->_classesForTypeAndCategory;
    v122->_classesForTypeAndCategory = v107;

    v109 = objc_alloc(MEMORY[0x277CBEAC0]);
    v111 = objc_msgSend_initWithDictionary_(v109, v110, v139);
    classesForTypeAndFilter = v122->_classesForTypeAndFilter;
    v122->_classesForTypeAndFilter = v111;

    v113 = objc_alloc(MEMORY[0x277CBEA60]);
    v115 = objc_msgSend_initWithArray_(v113, v114, v127);
    animationInfos = v122->_animationInfos;
    v122->_animationInfos = v115;

    v119 = objc_msgSend_p_buildAlternateFilterMap(v122, v117, v118);
    alternateEffectIdentifiersForEffectIdentifierAndFilter = v122->_alternateEffectIdentifiersForEffectIdentifierAndFilter;
    v122->_alternateEffectIdentifiersForEffectIdentifierAndFilter = v119;
  }

  return v2;
}

- (id)distinctCategoriesForType:(int64_t)type
{
  v4 = KNAnimationTypeAsNumber();
  v6 = objc_msgSend_objectForKeyedSubscript_(self->_classesForTypeAndCategory, v5, v4);
  v9 = objc_msgSend_allKeys(v6, v7, v8);
  v11 = objc_msgSend_sortedArrayUsingFunction_context_(v9, v10, sub_275D55DF8, 0);

  return v11;
}

- (id)animationInfosForAnimationType:(int64_t)type category:(id)category
{
  classesForTypeAndCategory = self->_classesForTypeAndCategory;
  categoryCopy = category;
  v6 = KNAnimationTypeAsNumber();
  v8 = objc_msgSend_objectForKeyedSubscript_(classesForTypeAndCategory, v7, v6);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, categoryCopy);

  return v10;
}

- (id)animationInfoForEffectIdentifier:(id)identifier animationType:(int64_t)type includeObsoleteNames:(BOOL)names
{
  namesCopy = names;
  identifierCopy = identifier;
  v9 = KNAnimationTypeAsNumber();
  v11 = objc_msgSend_objectForKeyedSubscript_(self->_classesForTypeAndName, v10, v9);
  v14 = objc_msgSend_objectForKeyedSubscript_(v11, v12, identifierCopy);
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = !namesCopy;
  }

  if (!v15)
  {
    v16 = objc_msgSend_objectForKeyedSubscript_(self->_classesForTypeAndObsoleteName, v13, v9);
    v14 = objc_msgSend_objectForKeyedSubscript_(v16, v17, identifierCopy);
  }

  if (!v14)
  {
    v18 = MEMORY[0x277D801A8];
    v19 = MEMORY[0x277D800D0];
    if (type != 4)
    {
      v19 = MEMORY[0x277D80150];
    }

    if (type != 5)
    {
      v18 = v19;
    }

    v14 = objc_msgSend_objectForKeyedSubscript_(v11, v13, *v18);
  }

  return v14;
}

- (id)animationInfoForEffectIdentifier:(id)identifier animationType:(int64_t)type includeObsoleteNames:(BOOL)names drawable:(id)drawable
{
  namesCopy = names;
  v43 = *MEMORY[0x277D85DE8];
  drawableCopy = drawable;
  typeCopy = type;
  v12 = objc_msgSend_animationInfoForEffectIdentifier_animationType_includeObsoleteNames_(self, v11, identifier, type, namesCopy);
  alternateEffectIdentifiersForEffectIdentifierAndFilter = self->_alternateEffectIdentifiersForEffectIdentifierAndFilter;
  v16 = objc_msgSend_effectIdentifier(v12, v14, v15);
  v18 = objc_msgSend_objectForKeyedSubscript_(alternateEffectIdentifiersForEffectIdentifierAndFilter, v17, v16);

  if (v18)
  {
    objc_msgSend_allKeys(v18, v19, v20);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = v41 = 0u;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v38, v42, 16);
    if (v23)
    {
      v26 = v23;
      v36 = v12;
      v27 = *v39;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v39 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = *(*(&v38 + 1) + 8 * i);
          v30 = objc_msgSend_animationFilters(drawableCopy, v24, v25, v36);
          v32 = objc_msgSend_containsObject_(v30, v31, v29);

          if (v32)
          {
            v33 = objc_msgSend_objectForKeyedSubscript_(v18, v24, v29);
            v12 = objc_msgSend_animationInfoForEffectIdentifier_animationType_(self, v34, v33, typeCopy);

            if (v12)
            {

              goto LABEL_13;
            }
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v38, v42, 16);
        if (v26)
        {
          continue;
        }

        break;
      }

      v12 = v36;
    }

LABEL_13:
  }

  return v12;
}

- (BOOL)canMapEffectIdentifier:(id)identifier animationType:(int64_t)type toEffectIdentifier:(id)effectIdentifier includeObsoleteNames:(BOOL)names forDrawable:(id)drawable
{
  namesCopy = names;
  v46 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  effectIdentifierCopy = effectIdentifier;
  drawableCopy = drawable;
  if (objc_msgSend_isEqualToString_(identifierCopy, v14, effectIdentifierCopy))
  {
    v16 = 1;
  }

  else
  {
    v19 = objc_msgSend_objectForKeyedSubscript_(self->_alternateEffectIdentifiersForEffectIdentifierAndFilter, v15, identifierCopy);
    v16 = 0;
    if (!v19 && namesCopy)
    {
      v20 = KNAnimationTypeAsNumber();
      v22 = objc_msgSend_objectForKeyedSubscript_(self->_classesForTypeAndObsoleteName, v21, v20);
      v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, identifierCopy);

      v16 = v24 != 0;
      if (v24)
      {
        alternateEffectIdentifiersForEffectIdentifierAndFilter = self->_alternateEffectIdentifiersForEffectIdentifierAndFilter;
        v28 = objc_msgSend_effectIdentifier(v24, v25, v26);
        v19 = objc_msgSend_objectForKeyedSubscript_(alternateEffectIdentifiersForEffectIdentifierAndFilter, v29, v28);
      }

      else
      {
        v19 = 0;
      }
    }

    if (v19)
    {
      objc_msgSend_animationFilters(drawableCopy, v17, v18);
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v30 = v44 = 0u;
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v41, v45, 16);
      if (v32)
      {
        v34 = v32;
        v35 = *v42;
        while (2)
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v42 != v35)
            {
              objc_enumerationMutation(v30);
            }

            v37 = objc_msgSend_objectForKeyedSubscript_(v19, v33, *(*(&v41 + 1) + 8 * i), v41);
            v39 = v37;
            if (v37 && objc_msgSend_isEqualToString_(v37, v38, effectIdentifierCopy))
            {

              v16 = 1;
              goto LABEL_21;
            }
          }

          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v41, v45, 16);
          if (v34)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:
    }
  }

  return v16;
}

- (id)animationInfosForAnimationType:(int64_t)type filter:(id)filter
{
  v37 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
  v11 = KNAnimationTypeAsNumber();
  if (filterCopy && objc_msgSend_count(filterCopy, v9, v10))
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = filterCopy;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v32, v36, 16);
    if (v14)
    {
      v16 = v14;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v32 + 1) + 8 * i);
          v20 = objc_msgSend_objectForKeyedSubscript_(self->_classesForTypeAndFilter, v15, v11, v32);
          v22 = objc_msgSend_objectForKeyedSubscript_(v20, v21, v19);
          objc_msgSend_addObjectsFromArray_(v8, v23, v22);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v32, v36, 16);
      }

      while (v16);
    }

    v25 = objc_msgSend_sortedArrayUsingFunction_context_(v8, v24, sub_275D55D64, v11);
  }

  else
  {
    v26 = objc_msgSend_objectForKeyedSubscript_(self->_classesForTypeAndFilter, v9, v11);
    v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, *MEMORY[0x277D805A0]);
    objc_msgSend_addObjectsFromArray_(v8, v29, v28);

    v25 = v8;
  }

  v30 = v25;

  return v30;
}

@end