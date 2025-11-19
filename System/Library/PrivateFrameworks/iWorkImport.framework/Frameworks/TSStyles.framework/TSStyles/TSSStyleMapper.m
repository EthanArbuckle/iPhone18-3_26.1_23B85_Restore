@interface TSSStyleMapper
- (TSSStyleMapper)initWithTargetStylesheet:(id)a3;
- (id)_mappedStyleForStyle:(id)a3 depth:(unint64_t)a4;
- (id)createRootStyleForStyle:(id)a3 withPropertyMap:(id)a4;
- (id)targetParentByContentTagMatchForStyle:(id)a3;
- (id)targetParentByIdentifierExactMatchForStyle:(id)a3;
- (id)targetParentByIdentifierPackageDescriptorFallbackMatchForStyle:(id)a3;
- (id)targetParentByNameMatchForStyle:(id)a3;
- (id)targetParentByPropertyMapMatchForUnidentifiedStyle:(id)a3;
- (id)targetParentForStyle:(id)a3;
- (void)dealloc;
- (void)popMappingContext:(id)a3;
- (void)pushMappingContext:(id)a3;
@end

@implementation TSSStyleMapper

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSSStyleMapper;
  [(TSSStyleMapper *)&v2 dealloc];
}

- (TSSStyleMapper)initWithTargetStylesheet:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSStyleMapper initWithTargetStylesheet:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyleMapper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 89, 0, "Invalid parameter not satisfying: %{public}s", "inTargetStylesheet != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v17.receiver = self;
  v17.super_class = TSSStyleMapper;
  v14 = [(TSSStyleMapper *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_targetStylesheet, a3);
    v15->_forceMatchStyle = 0;
  }

  return v15;
}

- (void)pushMappingContext:(id)a3
{
  v4 = a3;
  mappingContext = self->_mappingContext;
  v8 = v4;
  if (!mappingContext)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_mappingContext;
    self->_mappingContext = v6;

    v4 = v8;
    mappingContext = self->_mappingContext;
  }

  objc_msgSend_addObject_(mappingContext, v4, v4);
}

- (void)popMappingContext:(id)a3
{
  v9 = a3;
  mappingContext = self->_mappingContext;
  if (mappingContext && objc_msgSend_count(mappingContext, v4, v5))
  {
    objc_msgSend_removeLastObject(self->_mappingContext, v7, v8);
  }
}

- (id)createRootStyleForStyle:(id)a3 withPropertyMap:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = objc_msgSend_stylesheetForNewRootStyleFromStyle_(self, v8, v7);
  v10 = objc_alloc(objc_opt_class());
  v13 = objc_msgSend_context(v9, v11, v12);
  v16 = objc_msgSend_name(v7, v14, v15);

  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v10, v17, v13, v16, v6, 0);
  objc_msgSend_addStyle_(v9, v19, isVariation);

  return isVariation;
}

- (id)targetParentByIdentifierExactMatchForStyle:(id)a3
{
  v4 = objc_msgSend_rootIdentifiedAncestor(a3, a2, a3);
  v7 = objc_msgSend_styleIdentifier(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_targetStylesheet(self, v8, v9);
    v12 = objc_msgSend_cascadedStyleWithIdentifier_(v10, v11, v7);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)targetParentByIdentifierPackageDescriptorFallbackMatchForStyle:(id)a3
{
  v4 = objc_msgSend_rootIdentifiedAncestor(a3, a2, a3);
  v7 = objc_msgSend_styleIdentifier(v4, v5, v6);

  if (v7 && sub_276CB4B00(v7, v8))
  {
    v11 = String(v7, v9);
    if (v11)
    {
      v14 = String(v7, v10);
      if (v14)
      {
        v15 = objc_msgSend_targetStylesheet(self, v12, v13);
        v16 = String(v11, 0, v14);
        v18 = objc_msgSend_cascadedStyleWithIdentifier_componentMask_(v15, v17, v16, 7);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)targetParentByContentTagMatchForStyle:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_rootIdentifiedAncestor(v4, v5, v6);
  v10 = objc_msgSend_contentTag(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_targetStylesheet(self, v11, v12);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_276CB4E3C;
    v17[3] = &unk_27A6EF0D8;
    v18 = v4;
    v19 = v10;
    v15 = objc_msgSend_firstCascadedStylePassingTest_(v13, v14, v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)targetParentByNameMatchForStyle:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_rootAncestor(v4, v5, v6);
  v10 = objc_msgSend_name(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_targetStylesheet(self, v11, v12);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_276CB509C;
    v32[3] = &unk_27A6EF100;
    v14 = v4;
    v33 = v14;
    v34 = v10;
    v16 = objc_msgSend_cascadedStylesPassingTest_(v13, v15, v32);

    if (objc_msgSend_count(v16, v17, v18) < 2)
    {
      goto LABEL_15;
    }

    v21 = objc_msgSend_firstIdentifiedAncestor(v14, v19, v20);
    v24 = objc_msgSend_styleIdentifier(v21, v22, v23);

    if (!v24)
    {
      goto LABEL_15;
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_276CB5114;
    v30[3] = &unk_27A6EF128;
    v31 = v24;
    v25 = v24;
    v27 = objc_msgSend_tsu_firstObjectPassingTest_(v16, v26, v30);

    if (!v27)
    {
LABEL_15:
      if (objc_msgSend_count(v16, v19, v20))
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(v16, v28, 0);
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)targetParentByPropertyMapMatchForUnidentifiedStyle:(id)a3
{
  v4 = objc_msgSend_rootAncestor(a3, a2, a3);
  v7 = objc_msgSend_styleIdentifier(v4, v5, v6);

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_msgSend_targetStylesheet(self, v8, v9);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_276CB5248;
    v14[3] = &unk_27A6EF128;
    v15 = v4;
    v10 = objc_msgSend_firstCascadedStylePassingTest_(v11, v12, v14);
  }

  return v10;
}

- (id)targetParentForStyle:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_targetStylesheet(self, v5, v6);
  v9 = objc_msgSend_targetParentForStyleMappingByStyleMapper_intoStylesheet_(v4, v8, self, v7);

  if (!v9)
  {
    v11 = objc_msgSend_targetParentByIdentifierExactMatchForStyle_(self, v10, v4);
    if (!v11)
    {
      v11 = objc_msgSend_targetParentByIdentifierPackageDescriptorFallbackMatchForStyle_(self, v12, v4);
      if (!v11)
      {
        v11 = objc_msgSend_targetParentByPropertyMapMatchForUnidentifiedStyle_(self, v13, v4);
      }
    }

    v9 = v11;
  }

  return v9;
}

- (id)_mappedStyleForStyle:(id)a3 depth:(unint64_t)a4
{
  v156 = *MEMORY[0x277D85DE8];
  v125 = a3;
  if (!v125)
  {
    v8 = 0;
    goto LABEL_54;
  }

  styleMap = self->_styleMap;
  if (styleMap)
  {
    v7 = styleMap;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D81308]);
  }

  v9 = self->_styleMap;
  self->_styleMap = v7;

  v123 = objc_msgSend_stylesheet(v125, v10, v11);
  if ((objc_msgSend_clientsMustRemap(self, v12, v13) & 1) == 0 && v123 == self->_targetStylesheet)
  {
    v8 = v125;
  }

  else
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(self->_styleMap, v14, v125);
    if (!v8)
    {
      v15 = objc_opt_new();
      v151[0] = MEMORY[0x277D85DD0];
      v151[1] = 3221225472;
      v151[2] = sub_276CB5C08;
      v151[3] = &unk_27A6EF150;
      v151[4] = self;
      v153 = a4;
      v120 = v15;
      v152 = v120;
      v16 = MEMORY[0x277CA0D60](v151);
      v124 = objc_msgSend_promiseForStyle_(TSSStylePromise, v17, v125);
      objc_msgSend_setObject_forKeyedSubscript_(self->_styleMap, v18, v124, v125);
      v22 = objc_msgSend_targetParentForStyle_(self, v19, v125);
      if (v22)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v23 = MEMORY[0x277D81150];
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSSStyleMapper _mappedStyleForStyle:depth:]");
          v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyleMapper.m");
          v27 = TSUObjectReferenceDescription();
          v28 = TSUObjectReferenceDescription();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v26, 313, 0, "Invalid target mapping style %@. Target style is: %@", v27, v28);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
        }
      }

      v32 = objc_msgSend_propertyMap(v125, v20, v21);
      v148[0] = MEMORY[0x277D85DD0];
      v148[1] = 3221225472;
      v148[2] = sub_276CB5C80;
      v148[3] = &unk_27A6EE780;
      v119 = v16;
      v150 = v119;
      v149 = v32;
      v122 = v149;
      objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v149, v33, v148);
      if (!v22)
      {
        v41 = objc_msgSend_parent(v125, v34, v35);
        if (!v41 || (shouldMapParentOfStyle = objc_msgSend_shouldMapParentOfStyle_(self, v40, v125), v41, !shouldMapParentOfStyle) || (objc_msgSend_parent(v125, v40, v43), v44 = objc_claimAutoreleasedReturnValue(), (*(v119 + 2))(v119, v44), v22 = objc_claimAutoreleasedReturnValue(), v44, !v22))
        {
          v8 = objc_msgSend_createRootStyleForStyle_withPropertyMap_(self, v40, v125, v122);
          createdStyles = self->_createdStyles;
          if (!createdStyles)
          {
            v76 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v77 = self->_createdStyles;
            self->_createdStyles = v76;

            createdStyles = self->_createdStyles;
          }

          objc_msgSend_addObject_(createdStyles, v74, v8);
          v121 = 0;
          if (!v8)
          {
            goto LABEL_52;
          }

          goto LABEL_26;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v46 = MEMORY[0x277D81150];
          v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSSStyleMapper _mappedStyleForStyle:depth:]");
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyleMapper.m");
          v50 = TSUObjectReferenceDescription();
          v51 = TSUObjectReferenceDescription();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v52, v47, v49, 342, 0, "Invalid target mapping style %@. Target style is: %@", v50, v51);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
        }
      }

      if (self->_forceMatchStyle)
      {
        v8 = v22;
        v121 = v8;
        isVariation = objc_msgSend_isVariation(v8, v36, v37);
LABEL_27:
        if (!isVariation)
        {
          goto LABEL_44;
        }

        v140 = 0;
        v141 = &v140;
        v142 = 0x2020000000;
        v143 = 0;
        v80 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v39, v8);
        for (i = 0; ; ++i)
        {
          v82 = objc_msgSend_count(v80, v78, v79);
          v85 = *(v141 + 24);
          if (i >= v82)
          {
            break;
          }

          if (v141[3])
          {
            goto LABEL_43;
          }

          v86 = objc_msgSend_objectAtIndexedSubscript_(v80, v83, i);
          v89 = objc_msgSend_overridePropertyMap(v86, v87, v88);
          v134[0] = MEMORY[0x277D85DD0];
          v134[1] = 3221225472;
          v134[2] = sub_276CB5E80;
          v134[3] = &unk_27A6EF1C8;
          v135 = v124;
          v90 = v86;
          v136 = v90;
          v137 = v8;
          v138 = v80;
          v139 = &v140;
          objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v89, v91, v134);
        }

        if ((v141[3] & 1) == 0)
        {
          v118 = objc_msgSend_parent(v8, v83, v84);

          v92 = v80;
          v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          v133 = 0u;
          v95 = objc_msgSend_allKeys(self->_styleMap, v93, v94);
          v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v96, &v130, v155, 16);
          if (v98)
          {
            v99 = *v131;
            do
            {
              for (j = 0; j != v98; ++j)
              {
                if (*v131 != v99)
                {
                  objc_enumerationMutation(v95);
                }

                v101 = *(*(&v130 + 1) + 8 * j);
                v102 = objc_msgSend_objectForKeyedSubscript_(self->_styleMap, v97, v101);
                if (objc_msgSend_containsObject_(v92, v103, v102))
                {
                  v106 = objc_msgSend_parent(v102, v104, v105);
                  objc_msgSend_setObject_forKeyedSubscript_(self->_styleMap, v107, v106, v101);
                }
              }

              v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v97, &v130, v155, 16);
            }

            while (v98);
          }

          v8 = v118;
        }

LABEL_43:

        _Block_object_dispose(&v140, 8);
        if (v8)
        {
LABEL_44:
          objc_msgSend_setObject_forKeyedSubscript_(self->_styleMap, v39, v8, v125);
          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          v108 = v120;
          v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v109, &v126, v154, 16);
          if (v111)
          {
            v112 = *v127;
            do
            {
              for (k = 0; k != v111; ++k)
              {
                if (*v127 != v112)
                {
                  objc_enumerationMutation(v108);
                }

                objc_msgSend_addPromisee_(*(*(&v126 + 1) + 8 * k), v110, v8);
              }

              v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v110, &v126, v154, 16);
            }

            while (v111);
          }

          objc_msgSend_fulfillWithStyle_(v124, v114, v8);
          objc_msgSend_copyAuxiliaryInformationToMigratedStyle_(v125, v115, v8);
        }

        goto LABEL_52;
      }

      v55 = objc_opt_class();
      v58 = objc_msgSend_properties(v55, v56, v57);
      objc_msgSend_filterWithProperties_(v122, v59, v58);
      v60 = objc_opt_class();
      v63 = objc_msgSend_propertiesAllowingNSNull(v60, v61, v62);
      v144[0] = MEMORY[0x277D85DD0];
      v144[1] = 3221225472;
      v144[2] = sub_276CB5DA0;
      v144[3] = &unk_27A6EF1A0;
      v121 = v22;
      v145 = v121;
      v64 = v125;
      v146 = v64;
      v65 = v122;
      v147 = v65;
      objc_msgSend_enumeratePropertiesUsingBlock_(v63, v66, v144);

      objc_msgSend_mapNonDefaultPropertyOverridesForParentStyle_propertyMap_(v64, v67, v121, v65);
      v70 = objc_msgSend_targetStylesheet(self, v68, v69);
      v8 = objc_msgSend_variationOfStyle_propertyMap_(v70, v71, v121, v65);

      if (!v8)
      {
LABEL_52:

        goto LABEL_53;
      }

LABEL_26:
      isVariation = objc_msgSend_isVariation(v8, v72, v73);
      goto LABEL_27;
    }
  }

LABEL_53:

LABEL_54:
  v116 = *MEMORY[0x277D85DE8];

  return v8;
}

@end