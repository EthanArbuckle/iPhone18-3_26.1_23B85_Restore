@interface TSCHFillSet
+ (CGSize)defaultMacSwatchSize;
- (BOOL)chartAlreadyMatches:(id)matches;
- (NSString)lookupString;
- (TSCHFillSet)initWithIdentifier:(id)identifier plistPath:(id)path;
- (id)colorFromProperties:(id)properties;
- (id)existingCachedImageForSize:(CGSize)size scaleFactor:(double)factor;
- (id)fillForSeriesIndex:(unint64_t)index seriesType:(id)type context:(id)context;
- (id)fillsForDefaultSeriesType;
- (id)fillsForSeriesType:(id)type context:(id)context;
- (id)p_propertyMapsToApplyToChart:(id)chart context:(id)context;
- (id)p_sagePropertiesForSeriesIndex:(unint64_t)index seriesType:(id)type;
- (id)p_sagePropertiesForSeriesType:(id)type;
- (id)p_tangierToSageProperties;
- (id)plistProperties;
- (id)propertyMutationTuplesForPreviewOnChart:(id)chart;
- (id)seriesStylesForSeriesTypes:(id)types context:(id)context;
- (id)seriesSwatchImageWithSize:(CGSize)size scaleFactor:(double)factor seriesIndex:(unint64_t)index;
- (id)styleSwapCommandToApplyToChart:(id)chart context:(id)context;
- (id)swatchImageWithSize:(CGSize)size scaleFactor:(double)factor;
- (unint64_t)countOfDefinedSeriesForSeriesType:(id)type;
- (void)dealloc;
- (void)p_createSeriesSwatchImagesWithSeriesCount:(unint64_t)count swatchSize:(CGSize)size scaleFactor:(double)factor;
@end

@implementation TSCHFillSet

+ (CGSize)defaultMacSwatchSize
{
  v2 = 92.0;
  v3 = 41.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (TSCHFillSet)initWithIdentifier:(id)identifier plistPath:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  v22.receiver = self;
  v22.super_class = TSCHFillSet;
  v9 = [(TSCHFillSet *)&v22 init];
  if (v9)
  {
    v13 = objc_msgSend_copy(identifierCopy, v8, v10, v11, v12);
    identifier = v9->_identifier;
    v9->_identifier = v13;

    v19 = objc_msgSend_copy(pathCopy, v15, v16, v17, v18);
    PListPath = v9->_PListPath;
    v9->_PListPath = v19;
  }

  return v9;
}

- (void)dealloc
{
  free(self->_seriesSwatchImageRects);
  v3.receiver = self;
  v3.super_class = TSCHFillSet;
  [(TSCHFillSet *)&v3 dealloc];
}

- (NSString)lookupString
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_identifier(self, a2, v2, v3, v4);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_288528678;
  }

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v15 = objc_msgSend_stringWithFormat_(v5, v11, v12, v13, v14, @"%@|%@", v8, v10);

  return v15;
}

- (id)plistProperties
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_PListProperties)
  {
    v7 = MEMORY[0x277CBEA90];
    v8 = objc_msgSend_plistPath(selfCopy, v3, v4, v5, v6);
    v13 = objc_msgSend_dataWithContentsOfFile_(v7, v9, v10, v11, v12, v8);

    v47 = 0;
    v18 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v14, v15, v16, v17, v13, 0, 0, &v47);
    v20 = v47;
    if (v20)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v21, v22, v23, "[TSCHFillSet plistProperties]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
      v35 = objc_msgSend_plistPath(selfCopy, v31, v32, v33, v34);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v36, v37, v38, v39, v25, v30, 110, 0, "error occured while loading plist %@", v35);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    }

    PListProperties = selfCopy->_PListProperties;
    selfCopy->_PListProperties = v18;
  }

  objc_sync_exit(selfCopy);

  v45 = selfCopy->_PListProperties;

  return v45;
}

- (id)existingCachedImageForSize:(CGSize)size scaleFactor:(double)factor
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  swatchImage = selfCopy->_swatchImage;
  if (swatchImage && (objc_msgSend_size(swatchImage, v5, v6, v7, v8), TSUMultiplySizeScalar(), TSUNearlyEqualSizes()))
  {
    v10 = selfCopy->_swatchImage;
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(selfCopy);

  return v10;
}

- (id)fillsForSeriesType:(id)type context:(id)context
{
  typeCopy = type;
  contextCopy = context;
  v12 = objc_msgSend_countOfDefinedSeriesForSeriesType_(self, v8, v9, v10, v11, typeCopy);
  v18 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v13, v14, v15, v16, v12);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v23 = objc_msgSend_fillForSeriesIndex_seriesType_context_(self, v17, v19, v20, v21, i, typeCopy, contextCopy);
      objc_msgSend_addObject_(v18, v24, v25, v26, v27, v23);
    }
  }

  return v18;
}

- (unint64_t)countOfDefinedSeriesForSeriesType:(id)type
{
  typeCopy = type;
  v36 = objc_msgSend_p_sagePropertiesForSeriesType_(self, v5, v6, v7, v8, typeCopy);
  v14 = objc_msgSend_count(v36, v9, v10, v11, v12);
  if (v14)
  {
    v18 = 0;
    do
    {
      v19 = objc_msgSend_p_sagePropertiesForSeriesIndex_seriesType_(self, v13, v15, v16, v17, v18, typeCopy);

      if (!v19)
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "[TSCHFillSet countOfDefinedSeriesForSeriesType:]");
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 146, 0, "invalid nil value for '%{public}s'", "[self p_sagePropertiesForSeriesIndex:i seriesType:seriesType]");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
      }

      ++v18;
    }

    while (v14 != v18);
  }

  return v14;
}

- (id)p_tangierToSageProperties
{
  if (qword_280A46990 != -1)
  {
    sub_2764A6BD4();
  }

  v3 = qword_280A46988;

  return v3;
}

- (id)p_sagePropertiesForSeriesType:(id)type
{
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_msgSend_fillPropertyTypeName(type, a2, v3, v4, v5);
  v13 = objc_msgSend_stringWithFormat_(v7, v9, v10, v11, v12, @"TSCHChartSeries%@FillProperty", v8);

  v18 = objc_msgSend_p_tangierToSageProperties(self, v14, v15, v16, v17);
  v23 = objc_msgSend_objectForKey_(v18, v19, v20, v21, v22, v13);

  if (!v23)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "[TSCHFillSet p_sagePropertiesForSeriesType:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 169, 0, "invalid nil value for '%{public}s'", "sageProperty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }

  v43 = objc_msgSend_plistProperties(self, v24, v25, v26, v27);
  objc_opt_class();
  v48 = objc_msgSend_objectForKey_(v43, v44, v45, v46, v47, @"fills");
  v49 = sub_2761C47AC();

  objc_opt_class();
  v54 = objc_msgSend_objectForKey_(v49, v50, v51, v52, v53, v23);
  v55 = sub_2761C47AC();

  return v55;
}

- (id)p_sagePropertiesForSeriesIndex:(unint64_t)index seriesType:(id)type
{
  v8 = objc_msgSend_p_sagePropertiesForSeriesType_(self, a2, v4, v5, v6, type);
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, v10, v11, v12, @"Series_%ld", index);
  objc_opt_class();
  v18 = objc_msgSend_objectForKey_(v8, v14, v15, v16, v17, v13);
  v19 = sub_2761C47AC();

  return v19;
}

- (id)fillForSeriesIndex:(unint64_t)index seriesType:(id)type context:(id)context
{
  typeCopy = type;
  contextCopy = context;
  v14 = objc_msgSend_countOfDefinedSeriesForSeriesType_(self, v10, v11, v12, v13, typeCopy);
  if (v14)
  {
    v19 = objc_msgSend_p_sagePropertiesForSeriesIndex_seriesType_(self, v15, v16, v17, v18, index % v14, typeCopy);
    v24 = objc_msgSend_fillFromSageProperties_context_(self, v20, v21, v22, v23, v19, contextCopy);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)colorFromProperties:(id)properties
{
  components[5] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  objc_opt_class();
  v8 = objc_msgSend_objectForKey_(propertiesCopy, v4, v5, v6, v7, @"color-type");
  v9 = sub_2761C47AC();

  if (objc_msgSend_isEqualToString_(v9, v10, v11, v12, v13, @"device-cmyk"))
  {
    objc_opt_class();
    v22 = objc_msgSend_objectForKey_(propertiesCopy, v18, v19, v20, v21, @"c");
    v23 = sub_2761C47AC();

    objc_opt_class();
    v28 = objc_msgSend_objectForKey_(propertiesCopy, v24, v25, v26, v27, @"m");
    v29 = sub_2761C47AC();

    objc_opt_class();
    v34 = objc_msgSend_objectForKey_(propertiesCopy, v30, v31, v32, v33, @"y");
    v35 = sub_2761C47AC();

    objc_opt_class();
    v40 = objc_msgSend_objectForKey_(propertiesCopy, v36, v37, v38, v39, @"k");
    v41 = sub_2761C47AC();

    objc_opt_class();
    v46 = objc_msgSend_objectForKey_(propertiesCopy, v42, v43, v44, v45, @"a");
    v47 = sub_2761C47AC();

    objc_msgSend_tsu_CGFloatValue(v23, v48, v49, v50, v51);
    components[0] = v52;
    objc_msgSend_tsu_CGFloatValue(v29, v53, v52, v54, v55);
    components[1] = v56;
    objc_msgSend_tsu_CGFloatValue(v35, v57, v56, v58, v59);
    components[2] = v60;
    objc_msgSend_tsu_CGFloatValue(v41, v61, v60, v62, v63);
    components[3] = v64;
    objc_msgSend_tsu_CGFloatValue(v47, v65, v64, v66, v67);
    components[4] = v68;
    v69 = TSUDeviceCMYKColorSpace();
    v70 = CGColorCreate(v69, components);
    v75 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D81180], v71, v72, v73, v74, v70);
    CGColorRelease(v70);

LABEL_5:
    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToString_(v9, v14, v15, v16, v17, @"calibrated-rgb"))
  {
    objc_opt_class();
    v84 = objc_msgSend_objectForKey_(propertiesCopy, v80, v81, v82, v83, @"r");
    v23 = sub_2761C47AC();

    objc_opt_class();
    v89 = objc_msgSend_objectForKey_(propertiesCopy, v85, v86, v87, v88, @"g");
    v29 = sub_2761C47AC();

    objc_opt_class();
    v94 = objc_msgSend_objectForKey_(propertiesCopy, v90, v91, v92, v93, @"b");
    v35 = sub_2761C47AC();

    objc_opt_class();
    v99 = objc_msgSend_objectForKey_(propertiesCopy, v95, v96, v97, v98, @"a");
    v41 = sub_2761C47AC();

    v100 = MEMORY[0x277D81180];
    objc_msgSend_tsu_CGFloatValue(v23, v101, v102, v103, v104);
    v106 = v105;
    objc_msgSend_tsu_CGFloatValue(v29, v107, v105, v108, v109);
    v111 = v110;
    objc_msgSend_tsu_CGFloatValue(v35, v112, v110, v113, v114);
    v116 = v115;
    objc_msgSend_tsu_CGFloatValue(v41, v117, v115, v118, v119);
    v75 = objc_msgSend_colorWithRed_green_blue_alpha_(v100, v120, v106, v111, v116, v121);
    goto LABEL_5;
  }

  v122 = MEMORY[0x277D81150];
  v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, "[TSCHFillSet colorFromProperties:]");
  v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, v125, v126, v127, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v122, v129, v130, v131, v132, v123, v128, 226, 0, "unsupported color type: %@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v133, v134, v135, v136);
  v75 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v137, 1.0, 1.0, 1.0, 1.0);
LABEL_7:

  return v75;
}

- (BOOL)chartAlreadyMatches:(id)matches
{
  v72 = *MEMORY[0x277D85DE8];
  matchesCopy = matches;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v8 = objc_msgSend_model(matchesCopy, v5, 0.0, v6, v7);
  v13 = objc_msgSend_seriesList(v8, v9, v10, v11, v12);

  obj = v13;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v15, v16, v17, &v67, v71, 16);
  if (v18)
  {
    v23 = v18;
    v24 = *v68;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v68 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v67 + 1) + 8 * i);
        v27 = objc_msgSend_seriesType(v26, v19, v20, v21, v22);
        v32 = objc_msgSend_seriesIndex(v26, v28, v29, v30, v31);
        v37 = objc_msgSend_drawableInfo(matchesCopy, v33, v34, v35, v36);
        v42 = objc_msgSend_context(v37, v38, v39, v40, v41);
        v47 = objc_msgSend_fillForSeriesIndex_seriesType_context_(self, v43, v44, v45, v46, v32, v27, v42);

        v52 = objc_msgSend_fillSetFillProperty(v27, v48, v49, v50, v51);
        v57 = objc_msgSend_objectValueForProperty_(v26, v53, v54, v55, v56, v52);
        if (v47 | v57)
        {
          v62 = v57;
          isEqual = objc_msgSend_isEqual_(v47, v58, v59, v60, v61, v57);

          if ((isEqual & 1) == 0)
          {

            v64 = 0;
            goto LABEL_12;
          }
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, v20, v21, v22, &v67, v71, 16);
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v64 = 1;
LABEL_12:

  return v64;
}

- (id)p_propertyMapsToApplyToChart:(id)chart context:(id)context
{
  v123 = *MEMORY[0x277D85DE8];
  chartCopy = chart;
  contextCopy = context;
  v12 = objc_msgSend_set(MEMORY[0x277CBEB58], v8, v9, v10, v11);
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v110 = chartCopy;
  v16 = objc_msgSend_model(chartCopy, v13, 0.0, v14, v15);
  v21 = objc_msgSend_seriesList(v16, v17, v18, v19, v20);

  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, v23, v24, v25, &v117, v122, 16);
  if (v26)
  {
    v31 = v26;
    v32 = *v118;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v118 != v32)
        {
          objc_enumerationMutation(v21);
        }

        v34 = *(*(&v117 + 1) + 8 * i);
        v35 = objc_msgSend_seriesType(v34, v27, v28, v29, v30);
        v40 = objc_msgSend_supportsFillSetFill(v35, v36, v37, v38, v39);

        if (v40)
        {
          v41 = objc_msgSend_seriesType(v34, v27, v28, v29, v30);
          objc_msgSend_addObject_(v12, v42, v43, v44, v45, v41);
        }
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v27, v28, v29, v30, &v117, v122, 16);
    }

    while (v31);
  }

  if (objc_msgSend_count(v12, v46, v47, v48, v49))
  {
    v54 = objc_msgSend_array(MEMORY[0x277CBEB18], v50, v51, v52, v53);
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v107 = v12;
    obj = v12;
    v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v55, v56, v57, v58, &v113, v121, 16);
    if (v111)
    {
      v109 = *v114;
      do
      {
        v63 = 0;
        do
        {
          if (*v114 != v109)
          {
            objc_enumerationMutation(obj);
          }

          v112 = v63;
          v64 = *(*(&v113 + 1) + 8 * v63);
          v65 = objc_msgSend_countOfDefinedSeriesForSeriesType_(self, v59, v60, v61, v62, v64, v107);
          v70 = objc_msgSend_numberOfThemeSeriesStyles(v110, v66, v67, v68, v69);
          if (v70 >= v65)
          {
            v71 = v65;
          }

          else
          {
            v71 = v70;
          }

          if (v71)
          {
            for (j = 0; j != v71; ++j)
            {
              v74 = objc_msgSend_fillForSeriesIndex_seriesType_context_(self, v59, v60, v61, v62, j, v64, contextCopy);
              while (j >= objc_msgSend_count(v54, v73, v75, v76, v77))
              {
                v82 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v78, v79, v80, v81);
                objc_msgSend_addObject_(v54, v83, v84, v85, v86, v82);
              }

              v87 = objc_msgSend_objectAtIndexedSubscript_(v54, v78, v79, v80, v81, j);
              v93 = objc_msgSend_specificFillSetFillProperty(v64, v88, v89, v90, v91);
              if (v74)
              {
                objc_msgSend_setObject_forProperty_(v87, v92, v94, v95, v96, v74, v93);
              }

              else
              {
                objc_msgSend_removeValueForProperty_(v87, v92, v94, v95, v96, v93);
              }

              v101 = objc_msgSend_additionalFillSetPropertyMap(v64, v97, v98, v99, v100);
              objc_msgSend_addValuesFromPropertyMap_(v87, v102, v103, v104, v105, v101);
            }
          }

          v63 = v112 + 1;
        }

        while (v112 + 1 != v111);
        v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v59, v60, v61, v62, &v113, v121, 16);
      }

      while (v111);
    }

    v12 = v107;
  }

  else
  {
    v54 = 0;
  }

  return v54;
}

- (id)styleSwapCommandToApplyToChart:(id)chart context:(id)context
{
  chartCopy = chart;
  v11 = objc_msgSend_p_propertyMapsToApplyToChart_context_(self, v7, v8, v9, v10, chartCopy, context);
  v16 = objc_msgSend_styleSwapCommandToApplyFillSetSeriesPropertyMaps_(chartCopy, v12, v13, v14, v15, v11);

  return v16;
}

- (id)swatchImageWithSize:(CGSize)size scaleFactor:(double)factor
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  TSUMultiplySizeScalar();
  swatchImage = selfCopy->_swatchImage;
  if (!swatchImage)
  {
    goto LABEL_12;
  }

  objc_msgSend_size(swatchImage, v8, v9, v10, v11);
  if (TSUNearlyEqualSizes())
  {
    goto LABEL_7;
  }

  if (!selfCopy->_swatchImage)
  {
LABEL_12:
    if (selfCopy->_seriesSwatchImageRects)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHFillSet swatchImageWithSize:scaleFactor:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 303, 0, "expected nil value for '%{public}s'", "_seriesSwatchImageRects");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    }
  }

  free(selfCopy->_seriesSwatchImageRects);
  v29 = objc_msgSend_swatchFillsWithSwatchSize_scaleFactor_(selfCopy, v28, width, height, factor);
  v31 = objc_msgSend_newImageFromFills_size_spaceBetween_scale_borderColor_outFillRects_(TSCHRenderUtilities, v30, width, height, 1.0, v29, 0, &selfCopy->_seriesSwatchImageRects, 1.0, factor);
  v36 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v32, v33, v34, v35, v31);
  v37 = selfCopy->_swatchImage;
  selfCopy->_swatchImage = v36;

  CGImageRelease(v31);
LABEL_7:
  v38 = selfCopy->_swatchImage;
  objc_sync_exit(selfCopy);

  return v38;
}

- (id)fillsForDefaultSeriesType
{
  v6 = objc_msgSend_columnSeries(TSCHChartSeriesType, a2, v2, v3, v4);
  v11 = objc_msgSend_fillsForSeriesType_context_(self, v7, v8, v9, v10, v6, 0);

  return v11;
}

- (id)seriesSwatchImageWithSize:(CGSize)size scaleFactor:(double)factor seriesIndex:(unint64_t)index
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  seriesSwatchImages = selfCopy->_seriesSwatchImages;
  if (seriesSwatchImages)
  {
    v15 = objc_msgSend_objectAtIndexedSubscript_(seriesSwatchImages, v10, v11, v12, v13, index);
    objc_msgSend_size(v15, v16, v17, v18, v19);
    v20 = TSUNearlyEqualSizes();

    if (v20)
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "[TSCHFillSet seriesSwatchImageWithSize:scaleFactor:seriesIndex:]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 333, 0, "Cached series swatch is not equal to requested swatch size");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
    }
  }

  else
  {
    v40 = objc_msgSend_columnSeries(TSCHChartSeriesType, v10, v11, v12, v13);
    v45 = objc_msgSend_countOfDefinedSeriesForSeriesType_(selfCopy, v41, v42, v43, v44, v40);
    objc_msgSend_p_createSeriesSwatchImagesWithSeriesCount_swatchSize_scaleFactor_(selfCopy, v46, width, height, factor, v45);
  }

  objc_sync_exit(selfCopy);

  v51 = selfCopy->_seriesSwatchImages;

  return objc_msgSend_objectAtIndexedSubscript_(v51, v47, v48, v49, v50, index);
}

- (void)p_createSeriesSwatchImagesWithSeriesCount:(unint64_t)count swatchSize:(CGSize)size scaleFactor:(double)factor
{
  height = size.height;
  width = size.width;
  if (self->_seriesSwatchImages)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, size.width, size.height, factor, "[TSCHFillSet p_createSeriesSwatchImagesWithSeriesCount:swatchSize:scaleFactor:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 347, 0, "expected nil value for '%{public}s'", "_seriesSwatchImages");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, size.width, size.height, factor, 6);
  seriesSwatchImages = self->_seriesSwatchImages;
  self->_seriesSwatchImages = v25;

  v68 = objc_msgSend_swatchImageWithSize_scaleFactor_(self, v27, width, height, factor);
  if (!self->_seriesSwatchImageRects)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "[TSCHFillSet p_createSeriesSwatchImagesWithSeriesCount:swatchSize:scaleFactor:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 354, 0, "invalid nil value for '%{public}s'", "_seriesSwatchImageRects");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }

  if (count)
  {
    v47 = 0;
    do
    {
      TSUMultiplyRectScalar();
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = objc_msgSend_CGImage(v68, v56, v48, v50, v52);
      v70.origin.x = v49;
      v70.origin.y = v51;
      v70.size.width = v53;
      v70.size.height = v55;
      v58 = CGImageCreateWithImageInRect(v57, v70);
      v63 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v59, v60, v61, v62, v58);
      CGImageRelease(v58);
      objc_msgSend_addObject_(self->_seriesSwatchImages, v64, v65, v66, v67, v63);

      v47 += 32;
      --count;
    }

    while (count);
  }
}

- (id)propertyMutationTuplesForPreviewOnChart:(id)chart
{
  v160 = *MEMORY[0x277D85DE8];
  chartCopy = chart;
  v9 = objc_msgSend_dictionary(MEMORY[0x277D81278], v5, v6, v7, v8);
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v148 = chartCopy;
  v13 = objc_msgSend_model(chartCopy, v10, 0.0, v11, v12);
  v18 = objc_msgSend_seriesList(v13, v14, v15, v16, v17);

  obj = v18;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, v20, v21, v22, &v154, v159, 16);
  if (v23)
  {
    v28 = v23;
    v29 = *v155;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v155 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v154 + 1) + 8 * i);
        v32 = objc_msgSend_seriesType(v31, v24, v25, v26, v27);
        v37 = objc_msgSend_supportsFillSetFill(v32, v33, v34, v35, v36);

        if (v37)
        {
          v38 = objc_msgSend_numberOfThemeSeriesStyles(v148, v24, v25, v26, v27);
          v43 = objc_msgSend_seriesType(v31, v39, v40, v41, v42);
          v48 = objc_msgSend_countOfDefinedSeriesForSeriesType_(self, v44, v45, v46, v47, v43);

          v49 = v48 >= v38 ? v38 : v48;
          if (v49)
          {
            v50 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v24, v25, v26, v27);
            v55 = objc_msgSend_seriesIndex(v31, v51, v52, v53, v54) % v49;
            v60 = objc_msgSend_seriesType(v31, v56, v57, v58, v59);
            v65 = objc_msgSend_fillForPreviewForSeriesIndex_seriesType_(self, v61, v62, v63, v64, v55, v60);

            v70 = objc_msgSend_seriesIndex(v31, v66, v67, v68, v69);
            v75 = objc_msgSend_computedFillOrStroke_forSeriesIndex_numberOfThemeSeries_(TSCHChartSeries, v71, v72, v73, v74, v65, v70, v48);

            v76 = MEMORY[0x277CCABB0];
            v81 = objc_msgSend_seriesType(v31, v77, v78, v79, v80);
            v86 = objc_msgSend_fillSetFillProperty(v81, v82, v83, v84, v85);
            v91 = objc_msgSend_tsch_numberWithStyleProperty_(v76, v87, v88, v89, v90, v86);
            objc_msgSend_setObject_forKey_(v50, v92, v93, v94, v95, v75, v91);

            v100 = objc_msgSend_seriesType(v31, v96, v97, v98, v99);
            v105 = objc_msgSend_additionalFillSetMutations(v100, v101, v102, v103, v104);
            objc_msgSend_addEntriesFromDictionary_(v50, v106, v107, v108, v109, v105);

            objc_msgSend_setObject_forUncopiedKey_(v9, v110, v111, v112, v113, v50, v31);
          }
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, v25, v26, v27, &v154, v159, 16);
    }

    while (v28);
  }

  v118 = objc_msgSend_array(MEMORY[0x277CBEB18], v114, v115, v116, v117);
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v122 = objc_msgSend_allKeys(v9, v119, 0.0, v120, v121);
  v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v123, v124, v125, v126, &v150, v158, 16);
  if (v127)
  {
    v132 = v127;
    v133 = *v151;
    do
    {
      for (j = 0; j != v132; ++j)
      {
        if (*v151 != v133)
        {
          objc_enumerationMutation(v122);
        }

        v135 = *(*(&v150 + 1) + 8 * j);
        v136 = objc_msgSend_objectForKey_(v9, v128, v129, v130, v131, v135);
        v137 = [TSCHPropertyMutationTuple alloc];
        v142 = objc_msgSend_initWithStyleOwner_mutations_(v137, v138, v139, v140, v141, v135, v136);
        objc_msgSend_addObject_(v118, v143, v144, v145, v146, v142);
      }

      v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v128, v129, v130, v131, &v150, v158, 16);
    }

    while (v132);
  }

  return v118;
}

- (id)seriesStylesForSeriesTypes:(id)types context:(id)context
{
  v115 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  contextCopy = context;
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9, v10);
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = typesCopy;
  v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, v13, v14, v15, &v109, v114, 16);
  if (v102)
  {
    v101 = *v110;
    do
    {
      v16 = 0;
      do
      {
        if (*v110 != v101)
        {
          objc_enumerationMutation(obj);
        }

        v103 = v16;
        objc_opt_class();
        v17 = TSUCheckedDynamicCast();
        v22 = objc_msgSend_countOfDefinedSeriesForSeriesType_(self, v18, v19, v20, v21, v17);
        if (v22)
        {
          v27 = v22;
          for (i = 0; i != v27; ++i)
          {
            while (i >= objc_msgSend_count(v11, v23, v24, v25, v26))
            {
              v33 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v29, v30, v31, v32);
              objc_msgSend_addObject_(v11, v34, v35, v36, v37, v33);
            }

            objc_opt_class();
            v42 = objc_msgSend_objectAtIndexedSubscript_(v11, v38, v39, v40, v41, i);
            v43 = TSUCheckedDynamicCast();

            v48 = objc_msgSend_fillForSeriesIndex_seriesType_context_(self, v44, v45, v46, v47, i, v17, contextCopy);
            objc_opt_class();
            v49 = TSUDynamicCast();
            v54 = v49;
            if (v49)
            {
              v55 = objc_msgSend_convertForChartSeriesType_context_(v49, v50, v51, v52, v53, v17, contextCopy);

              v48 = v55;
            }

            if (v48)
            {
              v56 = objc_msgSend_specificFillSetFillProperty(v17, v50, v51, v52, v53);
              objc_msgSend_setObject_forProperty_(v43, v57, v58, v59, v60, v48, v56);
            }
          }
        }

        v16 = v103 + 1;
      }

      while (v103 + 1 != v102);
      v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v61, v62, v63, v64, &v109, v114, 16);
    }

    while (v102);
  }

  v69 = objc_msgSend_array(MEMORY[0x277CBEB18], v65, v66, v67, v68);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v70 = v11;
  v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v71, v72, v73, v74, &v105, v113, 16);
  if (v75)
  {
    v76 = v75;
    v77 = *v106;
    do
    {
      for (j = 0; j != v76; ++j)
      {
        if (*v106 != v77)
        {
          objc_enumerationMutation(v70);
        }

        objc_opt_class();
        v79 = TSUCheckedDynamicCast();
        v80 = [TSCHChartSeriesStyle alloc];
        isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v80, v81, v82, v83, v84, contextCopy, 0, v79, 0);
        objc_msgSend_addObject_(v69, v86, v87, v88, v89, isVariation);
      }

      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v90, v91, v92, v93, &v105, v113, 16);
    }

    while (v76);
  }

  v98 = objc_msgSend_copy(v69, v94, v95, v96, v97);

  return v98;
}

@end