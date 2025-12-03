@interface TSCHSelectionPath
+ (TSCHSelectionPath)selectionPathWithPathType:(id)type arguments:(id)arguments;
+ (TSCHSelectionPath)selectionPathWithPathType:(id)type arguments:(id)arguments subSelection:(id)selection;
+ (TSCHSelectionPath)selectionPathWithType:(id)type name:(id)name arguments:(id)arguments;
+ (id)chartTitleSelectionPath;
+ (id)seriesEditModeSelectionPath;
+ (id)seriesSelectionPathWithSeriesIndex:(unint64_t)index;
+ (id)seriesSymbolsSelectionPathWithSeriesIndex:(unint64_t)index;
+ (id)seriesValueLabelSelectionPathWithSeriesIndex:(unint64_t)index;
+ (id)seriesValueSummaryLabelSelectionPath;
- (BOOL)isEqual:(id)equal;
- (TSCHSelectionPath)initWithArchive:(const void *)archive;
- (TSCHSelectionPath)initWithPathType:(id)type arguments:(id)arguments subSelection:(id)selection;
- (TSCHSelectionPath)initWithType:(id)type name:(id)name arguments:(id)arguments;
- (id)argumentAtIndex:(unint64_t)index;
- (id)debuggingName;
- (id)description;
- (id)name;
- (id)rangeOfPathsToPath:(id)path;
- (id)rangeOfReferenceLinePathsToPath:(id)path forModel:(id)model;
- (id)type;
- (void)saveToArchive:(void *)archive;
@end

@implementation TSCHSelectionPath

+ (TSCHSelectionPath)selectionPathWithPathType:(id)type arguments:(id)arguments
{
  typeCopy = type;
  argumentsCopy = arguments;
  v7 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_initWithPathType_arguments_subSelection_(v7, v8, v9, v10, v11, typeCopy, argumentsCopy, 0);

  return v12;
}

+ (TSCHSelectionPath)selectionPathWithPathType:(id)type arguments:(id)arguments subSelection:(id)selection
{
  typeCopy = type;
  argumentsCopy = arguments;
  selectionCopy = selection;
  v10 = objc_alloc(objc_opt_class());
  v15 = objc_msgSend_initWithPathType_arguments_subSelection_(v10, v11, v12, v13, v14, typeCopy, argumentsCopy, selectionCopy);

  return v15;
}

+ (id)chartTitleSelectionPath
{
  v6 = objc_msgSend_chartTitleType(TSCHSelectionPathType, a2, v2, v3, v4);
  v11 = objc_msgSend_selectionPathWithPathType_arguments_(self, v7, v8, v9, v10, v6, 0);

  return v11;
}

- (TSCHSelectionPath)initWithPathType:(id)type arguments:(id)arguments subSelection:(id)selection
{
  typeCopy = type;
  argumentsCopy = arguments;
  selectionCopy = selection;
  if (typeCopy)
  {
    v31.receiver = self;
    v31.super_class = TSCHSelectionPath;
    v12 = [(TSCHSelectionPath *)&v31 init];
    if (v12)
    {
      v16 = objc_msgSend_copy(typeCopy, v11, v13, v14, v15);
      pathType = v12->_pathType;
      v12->_pathType = v16;

      if (argumentsCopy)
      {
        v22 = objc_msgSend_copy(argumentsCopy, v18, v19, v20, v21);
      }

      else
      {
        v22 = objc_alloc_init(MEMORY[0x277CBEA60]);
      }

      arguments = v12->_arguments;
      v12->_arguments = v22;

      v28 = objc_msgSend_copy(selectionCopy, v24, v25, v26, v27);
      subSelection = v12->_subSelection;
      v12->_subSelection = v28;
    }
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

- (id)type
{
  v5 = objc_msgSend_pathType(self, a2, v2, v3, v4);
  v10 = objc_msgSend_type(v5, v6, v7, v8, v9);

  return v10;
}

- (id)name
{
  v5 = objc_msgSend_pathType(self, a2, v2, v3, v4);
  v10 = objc_msgSend_name(v5, v6, v7, v8, v9);

  return v10;
}

- (id)argumentAtIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_arguments, a2, v3, v4, v5) <= index)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHSelectionPath argumentAtIndex:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHSelectionPath.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 110, 0, "Argument index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (objc_msgSend_count(self->_arguments, v8, v9, v10, v11) <= index)
  {
    v31 = 0;
  }

  else
  {
    v31 = objc_msgSend_objectAtIndexedSubscript_(self->_arguments, v27, v28, v29, v30, index);
  }

  return v31;
}

- (id)rangeOfReferenceLinePathsToPath:(id)path forModel:(id)model
{
  v169[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  modelCopy = model;
  v12 = objc_msgSend_argumentsCount(self, v8, v9, v10, v11);
  if (!pathCopy || !v12 || v12 != objc_msgSend_argumentsCount(pathCopy, v13, v14, v15, v16) || (objc_msgSend_pathType(self, v13, v14, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend_pathType(pathCopy, v18, v19, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v17, v23, v24, v25, v26, v22), v22, v17, (isEqual & 1) == 0))
  {
    v169[0] = self;
    v53 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v14, v15, v16, v169, 1);
LABEL_9:
    v54 = v53;
    goto LABEL_10;
  }

  if (objc_msgSend_argumentsCount(self, v13, v14, v15, v16))
  {
    v164 = objc_msgSend_argumentAtIndex_(self, v28, v29, v30, v31, 0);
    v162 = objc_msgSend_argumentAtIndex_(pathCopy, v32, v33, v34, v35, 0);
    objc_opt_class();
    v36 = TSUDynamicCast();
    v161 = v36;
    if (v36)
    {
      v41 = objc_msgSend_unsignedIntegerValue(v36, v37, v38, v39, v40);
      v46 = objc_msgSend_referenceLineForStyleSwapIndex_(modelCopy, v42, v43, v44, v45, v41);
      objc_msgSend_referenceLineAxisValue(v46, v47, v48, v49, v50);
      v52 = v51;

      v163 = 0;
    }

    else
    {
      v41 = 0x7FFFFFFFFFFFFFFFLL;
      v52 = NAN;
      v163 = 0x7FFFFFFFFFFFFFFFLL;
    }

    objc_opt_class();
    v59 = TSUDynamicCast();
    if (v59 && v41 != 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend_isEqual_(v164, v58, v60, v61, v62, v162) & 1) != 0)
    {
      v54 = objc_msgSend_unsignedIntegerValue(v59, v58, v60, v61, v62);
      v67 = objc_msgSend_axisIDFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v63, v64, v65, v66, v41);
      v72 = objc_msgSend_axisIDFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v68, v69, v70, v71, v54);
      v78 = objc_msgSend_isEqual_(v67, v73, v74, v75, v76, v72);
      if (v78)
      {
        v82 = objc_msgSend_referenceLineForStyleSwapIndex_(modelCopy, v77, v79, v80, v81, v54);
        objc_msgSend_referenceLineAxisValue(v82, v83, v84, v85, v86);
        v88 = v87;

        if (v88 >= v52)
        {
          v89 = v52;
        }

        else
        {
          v89 = v88;
        }

        if (v88 >= v52)
        {
          v90 = v88;
        }

        else
        {
          v90 = v52;
        }

        if (v89 <= 1.79769313e308)
        {
          v57 = v89;
        }

        else
        {
          v57 = 1.79769313e308;
        }

        if (v57 >= v90)
        {
          v56 = v57;
        }

        else
        {
          v56 = v90;
        }
      }

      else
      {
        selfCopy = self;
        v54 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v77, v79, v80, v81, &selfCopy, 1);
        v57 = 1.79769313e308;
        v56 = 2.22507386e-308;
      }
    }

    else
    {
      selfCopy2 = self;
      v54 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v58, v60, v61, v62, &selfCopy2, 1);
      v78 = 0;
      v57 = 1.79769313e308;
      v56 = 2.22507386e-308;
    }

    if ((v78 & 1) == 0)
    {
      goto LABEL_10;
    }

    if (v57 == v56)
    {
      selfCopy3 = self;
      v53 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v91, v92, v93, v94, &selfCopy3, 1);
      goto LABEL_9;
    }

    objc_msgSend_axisIDFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v91, v92, v93, v94, v41);
  }

  else
  {
    v163 = 0x7FFFFFFFFFFFFFFFLL;
    v56 = 2.22507386e-308;
    v57 = 1.79769313e308;
    objc_msgSend_axisIDFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v28, v29, v30, v31, 0x7FFFFFFFFFFFFFFFLL);
  }
  v165 = ;
  v99 = objc_msgSend_referenceLinesMap(modelCopy, v95, v96, v97, v98);
  v104 = objc_msgSend_objectForKeyedSubscript_(v99, v100, v101, v102, v103, v165);

  v54 = objc_msgSend_array(MEMORY[0x277CBEB18], v105, v106, v107, v108);
  for (i = 0; i < objc_msgSend_count(v104, v109, v110, v111, v112); ++i)
  {
    v118 = objc_msgSend_objectAtIndexedSubscript_(v104, v114, v115, v116, v117, i);
    objc_msgSend_referenceLineAxisValue(v118, v119, v120, v121, v122);
    if (v124 >= v57)
    {
      objc_msgSend_referenceLineAxisValue(v118, v123, v124, v125, v126);
      if (v128 <= v56)
      {
        v131 = objc_msgSend_styleSwapOrStyleOwnerIndexFromAxisID_refLineIndex_(TSCHReferenceLine, v127, v128, v129, v130, v165, i);
        v136 = objc_msgSend_mutableCopy(self->_arguments, v132, v133, v134, v135);
        v141 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v137, v138, v139, v140, v131);
        objc_msgSend_replaceObjectAtIndex_withObject_(v136, v142, v143, v144, v145, v163, v141);

        v146 = [TSCHSelectionPath alloc];
        v151 = objc_msgSend_pathType(self, v147, v148, v149, v150);
        v156 = objc_msgSend_initWithPathType_arguments_subSelection_(v146, v152, v153, v154, v155, v151, v136, 0);

        if (v156)
        {
          objc_msgSend_addObject_(v54, v157, v158, v159, v160, v156);
        }
      }
    }
  }

LABEL_10:

  return v54;
}

- (id)rangeOfPathsToPath:(id)path
{
  v93[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v9 = objc_msgSend_argumentsCount(self, v5, v6, v7, v8);
  if (pathCopy && v9 && v9 == objc_msgSend_argumentsCount(pathCopy, v10, v11, v12, v13) && (objc_msgSend_pathType(self, v10, v11, v12, v13), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_pathType(pathCopy, v15, v16, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v14, v20, v21, v22, v23, v19), v19, v14, (isEqual & 1) != 0))
  {
    v26 = objc_msgSend_argumentsCount(self, v10, v11, v12, v13);
    if (v26)
    {
      v30 = 0;
      v31 = 0x7FFFFFFFFFFFFFFFLL;
      v90 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v32 = objc_msgSend_argumentAtIndex_(self, v25, v27, v28, v29, v30);
        v37 = objc_msgSend_argumentAtIndex_(pathCopy, v33, v34, v35, v36, v30);
        if (v31 == 0x7FFFFFFFFFFFFFFFLL)
        {
          objc_opt_class();
          v38 = TSUDynamicCast();
          v43 = v38;
          if (v38)
          {
            v31 = objc_msgSend_unsignedIntegerValue(v38, v39, v40, v41, v42);
            v90 = v30;
          }

          else
          {
            v31 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        objc_opt_class();
        v44 = TSUDynamicCast();
        v49 = v44;
        if (v44 && v31 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if ((objc_msgSend_isEqual_(v32, v45, v46, v47, v48, v37) & 1) == 0)
        {
          selfCopy = self;
          i = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v51, v52, v53, v54, &selfCopy, 1);

          goto LABEL_22;
        }

        if (v26 == ++v30)
        {
          v55 = 0;
          v56 = -1;
          goto LABEL_34;
        }
      }

      v60 = objc_msgSend_unsignedIntegerValue(v44, v45, v46, v47, v48);

      if (v60 >= v31)
      {
        v56 = v31;
      }

      else
      {
        v56 = v60;
      }

      if (v60 <= v31)
      {
        v55 = v31;
      }

      else
      {
        v55 = v60;
      }

      if (v60 == v31)
      {
        selfCopy2 = self;
        v57 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, v27, v28, v29, &selfCopy2, 1);
        goto LABEL_21;
      }
    }

    else
    {
      v55 = 0;
      v56 = -1;
      v90 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_34:
    for (i = objc_msgSend_array(MEMORY[0x277CBEB18], v25, v27, v28, v29);
    {
      v65 = objc_msgSend_mutableCopy(self->_arguments, v61, v62, v63, v64);
      v70 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v66, v67, v68, v69, v56);
      objc_msgSend_replaceObjectAtIndex_withObject_(v65, v71, v72, v73, v74, v90, v70);

      v75 = [TSCHSelectionPath alloc];
      v80 = objc_msgSend_pathType(self, v76, v77, v78, v79);
      v85 = objc_msgSend_initWithPathType_arguments_subSelection_(v75, v81, v82, v83, v84, v80, v65, 0);

      if (v85)
      {
        objc_msgSend_addObject_(i, v86, v87, v88, v89, v85);
      }
    }
  }

  else
  {
    v93[0] = self;
    v57 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v11, v12, v13, v93, 1);
LABEL_21:
    i = v57;
  }

LABEL_22:

  return i;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    isEqual = 1;
  }

  else
  {
    if (!equalCopy)
    {
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_opt_class();
      if ((objc_msgSend_isMemberOfClass_(v5, v11, v12, v13, v14, v10) & 1) == 0)
      {
        isEqual = objc_msgSend_isEqual_(v5, v6, v7, v8, v9, self);
        goto LABEL_14;
      }
    }

    if (objc_msgSend_isEqual_(self->_pathType, v6, v7, v8, v9, v5->_pathType) && objc_msgSend_isEqual_(self->_arguments, v15, v16, v17, v18, v5->_arguments))
    {
      subSelection = v5->_subSelection;
      v20 = self->_subSelection;
      v22 = subSelection;
      if (v20 | v22)
      {
        isEqual = objc_msgSend_isEqual_(v20, v21, v23, v24, v25, v22);
      }

      else
      {
        isEqual = 1;
      }
    }

    else
    {
LABEL_9:
      isEqual = 0;
    }
  }

LABEL_14:

  return isEqual;
}

- (id)debuggingName
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v11 = objc_msgSend_pathType(self, v7, v8, v9, v10);
  v16 = objc_msgSend_type(v11, v12, v13, v14, v15);
  objc_msgSend_addObject_(v6, v17, v18, v19, v20, v16);

  v25 = objc_msgSend_pathType(self, v21, v22, v23, v24);
  v30 = objc_msgSend_name(v25, v26, v27, v28, v29);
  objc_msgSend_addObject_(v6, v31, v32, v33, v34, v30);

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v35 = self->_arguments;
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, v37, v38, v39, &v63, v67, 16);
  if (v40)
  {
    v41 = *v64;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v64 != v41)
        {
          objc_enumerationMutation(v35);
        }

        v43 = *(*(&v63 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v48 = objc_msgSend_debuggingName(v43, v44, v45, v46, v47);
          objc_msgSend_addObject_(v6, v49, v50, v51, v52, v48);
        }

        else
        {
          objc_msgSend_addObject_(v6, v44, v45, v46, v47, v43, v63);
        }
      }

      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v53, v54, v55, v56, &v63, v67, 16);
    }

    while (v40);
  }

  v61 = objc_msgSend_componentsJoinedByString_(v6, v57, v58, v59, v60, @":");

  return v61;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_debuggingName(self, v6, v7, v8, v9);
  v15 = objc_msgSend_stringWithFormat_(v3, v11, v12, v13, v14, @"<%@: %p %@>", v5, self, v10);

  return v15;
}

- (TSCHSelectionPath)initWithArchive:(const void *)archive
{
  if (*(archive + 16))
  {
    v8 = [TSCHSelectionPathType alloc];
    if (*(archive + 6))
    {
      v13 = objc_msgSend_initWithArchive_(v8, v9, v10, v11, v12, *(archive + 6));
    }

    else
    {
      v13 = objc_msgSend_initWithArchive_(v8, v9, v10, v11, v12, &TSCH::_ChartSelectionPathTypeArchive_default_instance_);
    }

    v7 = v13;
  }

  else
  {
    v7 = 0;
  }

  if ((*(archive + 16) & 2) != 0)
  {
    v15 = [TSCHSelectionPath alloc];
    if (*(archive + 7))
    {
      v20 = objc_msgSend_initWithArchive_(v15, v16, v17, v18, v19, *(archive + 7));
    }

    else
    {
      v20 = objc_msgSend_initWithArchive_(v15, v16, v17, v18, v19, &TSCH::_ChartSelectionPathArchive_default_instance_);
    }

    v14 = v20;
  }

  else
  {
    v14 = 0;
  }

  v22 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v3, v4, v5);
  v26 = *(archive + 8);
  if (v26 >= 1)
  {
    v27 = 8;
    while (1)
    {
      v28 = *(*(archive + 5) + v27);
      v29 = *(v28 + 16);
      if ((v29 & 2) != 0)
      {
        break;
      }

      if (v29)
      {
        v36 = [TSCHChartAxisID alloc];
        if (*(v28 + 24))
        {
          v31 = objc_msgSend_initWithArchive_(v36, v37, v38, v39, v40, *(v28 + 24));
        }

        else
        {
          v31 = objc_msgSend_initWithArchive_(v36, v37, v38, v39, v40, &TSCH::_ChartAxisIDArchive_default_instance_);
        }

        goto LABEL_22;
      }

      v30 = 0;
      objc_msgSend_tsu_addNonNilObject_(v22, v21, v23, v24, v25, 0);
LABEL_23:

      v27 += 8;
      if (!--v26)
      {
        goto LABEL_24;
      }
    }

    v31 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v21, v23, v24, v25, *(v28 + 32));
LABEL_22:
    v30 = v31;
    objc_msgSend_tsu_addNonNilObject_(v22, v32, v33, v34, v35, v31);
    goto LABEL_23;
  }

LABEL_24:
  v41 = objc_msgSend_initWithPathType_arguments_subSelection_(self, v21, v23, v24, v25, v7, v22, v14);

  return v41;
}

- (void)saveToArchive:(void *)archive
{
  v81 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_pathType(self, a2, v3, v4, v5);
  *(archive + 4) |= 1u;
  v12 = *(archive + 6);
  if (!v12)
  {
    v13 = *(archive + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartSelectionPathTypeArchive>(v13);
    *(archive + 6) = v12;
  }

  objc_msgSend_saveToArchive_(v8, v7, v9, v10, v11, v12);

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v14 = self->_arguments;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, v16, v17, v18, &v76, v80, 16);
  if (v19)
  {
    v20 = *v77;
    do
    {
      v21 = 0;
      do
      {
        if (*v77 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v76 + 1) + 8 * v21);
        v23 = *(archive + 5);
        if (!v23)
        {
          goto LABEL_15;
        }

        v24 = *(archive + 8);
        v25 = *v23;
        if (v24 < *v23)
        {
          *(archive + 8) = v24 + 1;
          v26 = *&v23[2 * v24 + 2];
          goto LABEL_17;
        }

        if (v25 == *(archive + 9))
        {
LABEL_15:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
          v23 = *(archive + 5);
          v25 = *v23;
        }

        *v23 = v25 + 1;
        v26 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartSelectionPathArgumentArchive>(*(archive + 3));
        v27 = *(archive + 8);
        v28 = *(archive + 5) + 8 * v27;
        *(archive + 8) = v27 + 1;
        *(v28 + 8) = v26;
LABEL_17:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v29 = TSUCheckedDynamicCast();
          v34 = objc_msgSend_unsignedIntegerValue(v29, v30, v31, v32, v33);
          *(v26 + 16) |= 2u;
          *(v26 + 32) = v34;
LABEL_25:

          goto LABEL_27;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v22;
          *(v26 + 16) |= 1u;
          v43 = *(v26 + 24);
          if (!v43)
          {
            v44 = *(v26 + 8);
            if (v44)
            {
              v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
            }

            v43 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v44);
            *(v26 + 24) = v43;
          }

          objc_msgSend_saveToArchive_(v29, v39, v40, v41, v42, v43);
          goto LABEL_25;
        }

        v49 = MEMORY[0x277D81150];
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "[TSCHSelectionPath saveToArchive:]");
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHSelectionPath.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v56, v57, v58, v59, v50, v55, 314, 0, "Unknown arg type");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
LABEL_27:
        ++v21;
      }

      while (v19 != v21);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v45, v46, v47, v48, &v76, v80, 16);
    }

    while (v19);
  }

  v69 = objc_msgSend_subSelection(self, v64, v65, v66, v67);
  *(archive + 4) |= 2u;
  v73 = *(archive + 7);
  if (!v73)
  {
    v74 = *(archive + 1);
    if (v74)
    {
      v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
    }

    v73 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartSelectionPathArchive>(v74);
    *(archive + 7) = v73;
  }

  objc_msgSend_saveToArchive_(v69, v68, v70, v71, v72, v73);
}

+ (id)seriesSymbolsSelectionPathWithSeriesIndex:(unint64_t)index
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_seriesSymbolType(TSCHSelectionPathType, a2, v3, v4, v5);
  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, v9, v10, v11, index);
  v24[0] = v12;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v14, v15, v16, v24, 1);
  v22 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v18, v19, v20, v21, v7, v17);

  return v22;
}

+ (id)seriesEditModeSelectionPath
{
  v5 = objc_msgSend_seriesEditModeType(TSCHSelectionPathType, a2, v2, v3, v4);
  v10 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v6, v7, v8, v9, v5, MEMORY[0x277CBEBF8]);

  return v10;
}

+ (id)seriesSelectionPathWithSeriesIndex:(unint64_t)index
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_seriesType(TSCHSelectionPathType, a2, v3, v4, v5);
  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, v9, v10, v11, index);
  v24[0] = v12;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v14, v15, v16, v24, 1);
  v22 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v18, v19, v20, v21, v7, v17);

  return v22;
}

+ (id)seriesValueLabelSelectionPathWithSeriesIndex:(unint64_t)index
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_seriesValueLabelType(TSCHSelectionPathType, a2, v3, v4, v5);
  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, v9, v10, v11, index);
  v24[0] = v12;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v14, v15, v16, v24, 1);
  v22 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v18, v19, v20, v21, v7, v17);

  return v22;
}

+ (id)seriesValueSummaryLabelSelectionPath
{
  v5 = objc_msgSend_seriesValueSummaryLabelType(TSCHSelectionPathType, a2, v2, v3, v4);
  v10 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v6, v7, v8, v9, v5, 0);

  return v10;
}

+ (TSCHSelectionPath)selectionPathWithType:(id)type name:(id)name arguments:(id)arguments
{
  typeCopy = type;
  nameCopy = name;
  argumentsCopy = arguments;
  v11 = [self alloc];
  v16 = objc_msgSend_initWithType_name_arguments_(v11, v12, v13, v14, v15, typeCopy, nameCopy, argumentsCopy);

  return v16;
}

- (TSCHSelectionPath)initWithType:(id)type name:(id)name arguments:(id)arguments
{
  argumentsCopy = arguments;
  v13 = objc_msgSend_selectionPathTypeWithType_name_(TSCHSelectionPathType, v9, v10, v11, v12, type, name);
  v18 = objc_msgSend_initWithPathType_arguments_subSelection_(self, v14, v15, v16, v17, v13, argumentsCopy, 0);

  return v18;
}

@end