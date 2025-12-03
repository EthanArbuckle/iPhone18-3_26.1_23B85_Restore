@interface CRFormFieldTextOverlapCleanupStep
+ (CGRect)_clipRectangle:(CGRect)rectangle intersectionRectangle:(CGRect)intersectionRectangle type:(unint64_t)type;
+ (id)cleanupTextOverlapForFields:(id)fields document:(id)document underlinedFieldsOnly:(BOOL)only;
- (id)process:(id)process externalFields:(id)fields document:(id)document options:(id)options;
@end

@implementation CRFormFieldTextOverlapCleanupStep

+ (CGRect)_clipRectangle:(CGRect)rectangle intersectionRectangle:(CGRect)intersectionRectangle type:(unint64_t)type
{
  height = intersectionRectangle.size.height;
  width = intersectionRectangle.size.width;
  y = intersectionRectangle.origin.y;
  x = intersectionRectangle.origin.x;
  v10 = rectangle.size.height;
  v11 = rectangle.size.width;
  v12 = rectangle.origin.y;
  v13 = rectangle.origin.x;
  MinX = CGRectGetMinX(rectangle);
  v36.origin.x = v13;
  v36.origin.y = v12;
  v36.size.width = v11;
  v36.size.height = v10;
  MaxX = CGRectGetMaxX(v36);
  v37.origin.x = v13;
  v37.origin.y = v12;
  v37.size.width = v11;
  v37.size.height = v10;
  MinY = CGRectGetMinY(v37);
  v38.origin.x = v13;
  v38.origin.y = v12;
  v38.size.width = v11;
  v38.size.height = v10;
  MaxY = CGRectGetMaxY(v38);
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  if (type)
  {
    v29 = width;
    v18 = height;
    v19 = CGRectGetMinY(*&v14);
    v39.origin.x = v13;
    v39.origin.y = v12;
    v39.size.width = v11;
    v39.size.height = v10;
    v20 = v19 - CGRectGetMinY(v39);
    v40.origin.x = v13;
    v40.origin.y = v12;
    v40.size.width = v11;
    v40.size.height = v10;
    v21 = CGRectGetMaxY(v40);
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = v29;
    v41.size.height = v18;
    if (v21 - CGRectGetMaxY(v41) >= v20)
    {
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = v29;
      v47.size.height = v18;
      v26 = CGRectGetMaxY(v47);
      v24 = MaxX;
      v23 = MinX;
      v22 = MaxY;
    }

    else
    {
      if (type == 1)
      {
        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = v29;
        v42.size.height = v18;
        v22 = CGRectGetMinY(v42);
        v24 = MaxX;
        v23 = MinX;
      }

      else
      {
        v24 = MaxX;
        v23 = MinX;
        v22 = MaxY;
      }

      v26 = MinY;
    }

    if (v22 > v26 + 4.0)
    {
      v22 = v22 + -2.0;
      v26 = v26 + 2.0;
    }
  }

  else
  {
    v30 = CGRectGetMinX(*&v14);
    v43.origin.x = v13;
    v43.origin.y = v12;
    v43.size.width = v11;
    v43.size.height = v10;
    v31 = v30 - CGRectGetMinX(v43);
    v44.origin.x = v13;
    v44.origin.y = v12;
    v44.size.width = v11;
    v44.size.height = v10;
    v25 = CGRectGetMaxX(v44);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    if (v25 - CGRectGetMaxX(v45) >= v31)
    {
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v23 = CGRectGetMaxX(v48);
      v24 = MaxX;
    }

    else
    {
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      v24 = CGRectGetMinX(v46);
      v23 = MinX;
    }

    if (v24 > v23 + 4.0)
    {
      v24 = v24 + -2.0;
      v23 = v23 + 2.0;
    }

    v22 = MaxY;
    v26 = MinY;
  }

  v27 = v24 - v23;
  v28 = v22 - v26;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v23;
  return result;
}

+ (id)cleanupTextOverlapForFields:(id)fields document:(id)document underlinedFieldsOnly:(BOOL)only
{
  onlyCopy = only;
  v47 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  documentCopy = document;
  if (+[CRFormFieldTextOverlapCleanupStep cleanupTextOverlapForFields:document:underlinedFieldsOnly:]::onceToken != -1)
  {
    dispatch_once(&+[CRFormFieldTextOverlapCleanupStep cleanupTextOverlapForFields:document:underlinedFieldsOnly:]::onceToken, &__block_literal_global_165);
  }

  v27 = [documentCopy contentsWithTypes:8];
  v26 = objc_opt_new();
  v25 = objc_opt_new();
  v9 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__CRFormFieldTextOverlapCleanupStep_cleanupTextOverlapForFields_document_underlinedFieldsOnly___block_invoke_2;
  aBlock[3] = &unk_1E7BC20C0;
  v10 = v9;
  v33 = v10;
  v38 = onlyCopy;
  v11 = v27;
  v34 = v11;
  v12 = v26;
  v35 = v12;
  selfCopy = self;
  v13 = v25;
  v36 = v13;
  v14 = _Block_copy(aBlock);
  if (onlyCopy)
  {
    [CRFormPostProcessingManager enumerateAllFieldsInFields:fieldsCopy block:v14, v25, v26, v27];
    v15 = CROSLogForCategory(6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = [fieldsCopy count];
      v17 = [v10 count];
      *buf = 136315650;
      v40 = "+[CRFormFieldTextOverlapCleanupStep cleanupTextOverlapForFields:document:underlinedFieldsOnly:]";
      v41 = 2048;
      v42 = v16;
      v43 = 2048;
      v44 = v17;
      _os_log_impl(&dword_1B40D2000, v15, OS_LOG_TYPE_DEBUG, "%s: Processed %lu fields; Returning %lu fields.", buf, 0x20u);
    }

    array = v10;
  }

  else
  {
    [CRFormPostProcessingManager enumerateContourBasedDetectedFields:fieldsCopy block:v14, v25, v26, v27];
    [CRFormPostProcessingManager enumerateTextBasedDetectedFields:fieldsCopy block:v14];
    v19 = [v13 count];
    v20 = [v12 count];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __95__CRFormFieldTextOverlapCleanupStep_cleanupTextOverlapForFields_document_underlinedFieldsOnly___block_invoke_175;
    v29[3] = &unk_1E7BC20E8;
    v30 = v12;
    v21 = v13;
    v31 = v21;
    [CRFormPostProcessingManager enumerateAllFieldsInFields:fieldsCopy block:v29];
    v22 = CROSLogForCategory(6);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = [v21 count];
      *buf = 136315906;
      v40 = "+[CRFormFieldTextOverlapCleanupStep cleanupTextOverlapForFields:document:underlinedFieldsOnly:]";
      v41 = 2048;
      v42 = v20 - v19;
      v43 = 2048;
      v44 = v19;
      v45 = 2048;
      v46 = v23;
      _os_log_impl(&dword_1B40D2000, v22, OS_LOG_TYPE_DEBUG, "%s: Fields removed %lu, Updated: %lu, Total number of fields preserved: %lu.", buf, 0x2Au);
    }

    array = [v21 array];
  }

  return array;
}

void __95__CRFormFieldTextOverlapCleanupStep_cleanupTextOverlapForFields_document_underlinedFieldsOnly___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"ー一－-_.…, "}];
  v1 = +[CRFormFieldTextOverlapCleanupStep cleanupTextOverlapForFields:document:underlinedFieldsOnly:]::_trimmableCharSet;
  +[CRFormFieldTextOverlapCleanupStep cleanupTextOverlapForFields:document:underlinedFieldsOnly:]::_trimmableCharSet = v0;
}

void __95__CRFormFieldTextOverlapCleanupStep_cleanupTextOverlapForFields_document_underlinedFieldsOnly___block_invoke_2(uint64_t a1, void *a2)
{
  v119 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 boundingQuad];
  [v4 boundingBox];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v120.origin.x = v6;
  v120.origin.y = v8;
  v120.size.width = v10;
  v120.size.height = v12;
  if (CGRectGetWidth(v120) < 0.1)
  {
    v121.origin.x = v6;
    v121.origin.y = v8;
    v121.size.width = v10;
    v121.size.height = v12;
    if (CGRectGetHeight(v121) < 0.1)
    {
      v122.origin.x = v6;
      v122.origin.y = v8;
      v122.size.width = v10;
      v122.size.height = v12;
      Height = CGRectGetHeight(v122);
      v123.origin.x = v6;
      v123.origin.y = v8;
      v123.size.width = v10;
      v123.size.height = v12;
      if (Height > CGRectGetWidth(v123) * 0.5 && [v3 fieldSource] != 3)
      {
        [*(a1 + 32) addObject:v3];
        goto LABEL_85;
      }
    }
  }

  if (*(a1 + 72) == 1)
  {
    v14 = CRCastAsClass<CRFormTextFieldOutputRegion>(v3);
    v15 = v14;
    if (!v14 || ![v14 hasBoundedWidth] || objc_msgSend(v15, "hasBoundedHeight"))
    {
      [*(a1 + 32) addObject:v3];

      goto LABEL_85;
    }
  }

  v16 = [v3 boundingQuad];
  v17 = [v16 denormalizedQuad];

  v87 = v17;
  [v17 boundingBox];
  v103 = v19;
  v105 = v18;
  v99 = v21;
  v101 = v20;
  __src = 0;
  v112 = 0;
  v113 = 0;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v22 = *(a1 + 40);
  v23 = [v22 countByEnumeratingWithState:&v107 objects:v118 count:16];
  if (v23)
  {
    v24 = *v108;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v108 != v24)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v107 + 1) + 8 * i) boundingBoxEstimateAfterTrimmingCharacters:+[CRFormFieldTextOverlapCleanupStep cleanupTextOverlapForFields:document:underlinedFieldsOnly:]::_trimmableCharSet];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v148.size.height = v32;
        v124.origin.y = v103;
        v124.origin.x = v105;
        v124.size.height = v99;
        v124.size.width = v101;
        v148.origin.x = v27;
        v148.origin.y = v29;
        v148.size.width = v31;
        rect = v148.size.height;
        v125 = CGRectIntersection(v124, v148);
        x = v125.origin.x;
        y = v125.origin.y;
        width = v125.size.width;
        v36 = v125.size.height;
        if (CGRectIsEmpty(v125))
        {
          v37 = v112;
        }

        else
        {
          v126.origin.x = x;
          v126.origin.y = y;
          v126.size.width = width;
          v126.size.height = v36;
          v38 = CGRectGetWidth(v126);
          v127.origin.y = v103;
          v127.origin.x = v105;
          v127.size.height = v99;
          v127.size.width = v101;
          if (v38 > CGRectGetWidth(v127) * 0.5)
          {
            v128.origin.x = x;
            v128.origin.y = y;
            v128.size.width = width;
            v128.size.height = v36;
            v39 = CGRectGetHeight(v128);
            v129.origin.y = v103;
            v129.origin.x = v105;
            v129.size.height = v99;
            v129.size.width = v101;
            if (v39 > CGRectGetHeight(v129) * 0.5)
            {
LABEL_67:
              [*(a1 + 48) addObject:v3];
              [*(a1 + 32) addObject:v3];
              goto LABEL_81;
            }
          }

          v40 = v112;
          if (v112 >= v113)
          {
            v41 = __src;
            v42 = v112 - __src;
            v43 = (v112 - __src) >> 5;
            v44 = v43 + 1;
            if ((v43 + 1) >> 59)
            {
              std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
            }

            v45 = v113 - __src;
            if ((v113 - __src) >> 4 > v44)
            {
              v44 = v45 >> 4;
            }

            if (v45 >= 0x7FFFFFFFFFFFFFE0)
            {
              v44 = 0x7FFFFFFFFFFFFFFLL;
            }

            if (v44)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(&__src, v44);
            }

            v46 = (32 * v43);
            *v46 = v27;
            v46[1] = v29;
            v46[2] = v31;
            v46[3] = rect;
            v37 = 32 * v43 + 32;
            memcpy(0, v41, v42);
            v47 = __src;
            __src = 0;
            v112 = v37;
            v113 = 0;
            if (v47)
            {
              operator delete(v47);
            }
          }

          else
          {
            *v112 = v27;
            v40[1] = v29;
            v37 = (v40 + 4);
            v40[2] = v31;
            v40[3] = rect;
          }

          v112 = v37;
        }

        if ((v37 - __src) > 0x40)
        {
          goto LABEL_67;
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v107 objects:v118 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v48 = __src;
  if (v112 != __src)
  {
    v49 = 0;
    v50 = 0;
    v51 = MEMORY[0x1E695F050];
    v53 = v103;
    v52 = v105;
    v55 = v99;
    v54 = v101;
    while (1)
    {
      v56 = &v48[v49];
      v57 = *v56;
      v58 = v56[1];
      v59 = v56[2];
      v149.size.height = v56[3];
      v104 = v53;
      v106 = v52;
      v100 = v55;
      v102 = v54;
      v149.origin.x = *v56;
      v149.origin.y = v58;
      v149.size.width = v59;
      rect2 = v149.size.height;
      v130 = CGRectIntersection(*&v52, v149);
      v60 = v130.origin.x;
      v61 = v130.origin.y;
      v62 = v130.size.width;
      v63 = v130.size.height;
      if ([v3 fieldSource] == 3)
      {
        v64 = 0.8;
      }

      else
      {
        v64 = 1.0;
      }

      v131.origin.x = v60;
      v131.origin.y = v61;
      v131.size.width = v62;
      v131.size.height = v63;
      if (CGRectIsEmpty(v131))
      {
        v66 = v100;
        v65 = v102;
        v68 = v104;
        v67 = v106;
      }

      else
      {
        v96 = fmax(rect2 * v64, 8.0);
        v89 = v58;
        v90 = v57;
        v88 = v59;
        if ((*(a1 + 72) & 1) != 0 || ([objc_opt_class() _clipRectangle:0 intersectionRectangle:v106 type:{v104, v102, v100, v60, v61, v62, v63}], v93 = v132.origin.y, v94 = v132.origin.x, v91 = v132.size.height, v92 = v132.size.width, CGRectGetHeight(v132) <= v96) || (v133.origin.y = v93, v133.origin.x = v94, v133.size.height = v91, v133.size.width = v92, CGRectGetWidth(v133) <= v96))
        {
          v93 = v51[1];
          v94 = *v51;
          v91 = v51[3];
          v92 = v51[2];
        }

        v69 = *(a1 + 72);
        v70 = objc_opt_class();
        if (v69)
        {
          v71 = 2;
        }

        else
        {
          v71 = 1;
        }

        [v70 _clipRectangle:v71 intersectionRectangle:v106 type:{v104, v102, v100, v60, v61, v62, v63}];
        recta = v134.origin.y;
        v67 = v134.origin.x;
        v65 = v134.size.width;
        v66 = v134.size.height;
        if (CGRectGetHeight(v134) <= v96 || (v135.origin.x = v67, v135.origin.y = recta, v135.size.width = v65, v135.size.height = v66, CGRectGetWidth(v135) <= v96))
        {
          v67 = *v51;
          recta = v51[1];
          v65 = v51[2];
          v66 = v51[3];
        }

        if ((*(a1 + 72) & 1) != 0 || (v136.origin.x = v60, v136.origin.y = v61, v136.size.width = v62, v136.size.height = v63, v72 = CGRectGetHeight(v136), v137.origin.y = v104, v137.origin.x = v106, v137.size.height = v100, v137.size.width = v102, v72 <= CGRectGetHeight(v137) * 0.5) || (v138.origin.y = v93, v138.origin.x = v94, v138.size.height = v91, v138.size.width = v92, CGRectIsNull(v138)))
        {
          v139.origin.x = v60;
          v139.origin.y = v61;
          v139.size.width = v62;
          v139.size.height = v63;
          v73 = CGRectGetWidth(v139);
          v140.origin.y = v104;
          v140.origin.x = v106;
          v140.size.height = v100;
          v140.size.width = v102;
          if ((v73 > CGRectGetWidth(v140) * 0.5 || (v141.origin.y = v104, v141.origin.x = v106, v141.size.height = v100, v141.size.width = v102, v150.origin.y = v89, v150.origin.x = v90, v150.size.width = v88, v150.size.height = rect2, CGRectContainsRect(v141, v150))) && (v142.origin.x = v67, v142.origin.y = recta, v142.size.width = v65, v142.size.height = v66, !CGRectIsNull(v142)))
          {
            v68 = recta;
          }

          else
          {
            v143.size.height = v66;
            v143.size.width = v65;
            v143.origin.y = recta;
            v143.origin.x = v67;
            v68 = recta;
            if (CGRectGetHeight(v143) <= v96 || (v144.size.height = v66, v144.size.width = v65, v144.origin.y = recta, v144.origin.x = v67, CGRectIsNull(v144)))
            {
              v145.origin.y = v93;
              v145.origin.x = v94;
              v145.size.height = v91;
              v145.size.width = v92;
              if (CGRectGetHeight(v145) <= v96 || (v146.origin.y = v93, v146.origin.x = v94, v146.size.height = v91, v146.size.width = v92, v66 = v91, v65 = v92, v68 = v93, v67 = v94, CGRectIsNull(v146)))
              {
                [*(a1 + 48) addObject:v3];
                [*(a1 + 32) addObject:v3];
                goto LABEL_82;
              }
            }
          }
        }

        else
        {
          v66 = v91;
          v65 = v92;
          v68 = v93;
          v67 = v94;
        }
      }

      ++v50;
      v48 = __src;
      v49 += 32;
      v52 = v67;
      v53 = v68;
      v54 = v65;
      v55 = v66;
      if (v50 >= (v112 - __src) >> 5)
      {
        goto LABEL_69;
      }
    }
  }

  v66 = v99;
  v65 = v101;
  v68 = v103;
  v67 = v105;
LABEL_69:
  v74 = v3;
  [v87 boundingBox];
  v151.origin.x = v67;
  v151.origin.y = v68;
  v151.size.width = v65;
  v151.size.height = v66;
  if (CGRectEqualToRect(v147, v151))
  {
    [*(a1 + 32) addObject:v74];
    v22 = v74;
  }

  else
  {
    v75 = [[CRImageSpaceQuad alloc] initWithBoundingBox:v67, v68, v65, v66];
    v76 = [CRNormalizedQuad alloc];
    v77 = [v74 boundingQuad];
    [v77 normalizationSize];
    v78 = [(CRNormalizedQuad *)v76 initWithDenormalizedQuad:v75 size:?];

    v79 = CROSLogForCategory(6);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      v80 = [v87 description];
      v81 = v80;
      v82 = [v80 UTF8String];
      v83 = [(CRImageSpaceQuad *)v75 description];
      v84 = v83;
      v85 = [v83 UTF8String];
      *buf = 136315394;
      v115 = v82;
      v116 = 2080;
      v117 = v85;
      _os_log_impl(&dword_1B40D2000, v79, OS_LOG_TYPE_DEBUG, "CRFormFieldTextOverlapCleanupStep: updating rectangle from %s to %s", buf, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v86 = v74;
      v22 = [v86 copy];

      [v22 setBoundingQuad:v78];
      [*(a1 + 56) addObject:v22];
      [*(a1 + 48) addObject:v74];
      [*(a1 + 32) addObject:v22];
    }

    else
    {
      v22 = v74;
      [*(a1 + 32) addObject:v74];
    }
  }

LABEL_81:

LABEL_82:
  if (__src)
  {
    v112 = __src;
    operator delete(__src);
  }

LABEL_85:
}

void __95__CRFormFieldTextOverlapCleanupStep_cleanupTextOverlapForFields_document_underlinedFieldsOnly___block_invoke_175(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (id)process:(id)process externalFields:(id)fields document:(id)document options:(id)options
{
  v16 = *MEMORY[0x1E69E9840];
  processCopy = process;
  documentCopy = document;
  v9 = CROSLogForCategory(6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v14 = 136315138;
    uTF8String = [v11 UTF8String];
    _os_log_impl(&dword_1B40D2000, v9, OS_LOG_TYPE_DEBUG, "CRFormPostProcessor: %s is running.", &v14, 0xCu);
  }

  v12 = [objc_opt_class() cleanupTextOverlapForFields:processCopy document:documentCopy underlinedFieldsOnly:0];

  return v12;
}

@end