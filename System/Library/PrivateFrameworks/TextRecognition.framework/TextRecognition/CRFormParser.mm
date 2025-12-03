@interface CRFormParser
+ (BOOL)_isRegion:(id)region segmentedBoxLeftOfRegion:(id)ofRegion withTolerance:(double)tolerance modalWidth:(double)width modelGap:(double)gap;
+ (_NSRange)_rangeOfFirstSegmentedFieldGroupInFields:(id)fields startIndex:(int64_t)index modalWidth:(double)width modelGap:(double)gap;
+ (double)globalLineHeightInDocument:(id)document;
+ (id)_dominantLocaleInRegions:(id)regions;
+ (id)_groupSegmentedFieldsInAlignedFields:(id)fields;
+ (id)_groupSegmentedFieldsInFields:(id)fields;
+ (id)_mergedFieldsWithUnifiedQuadsFromFields:(id)fields needsFieldReplacement:(BOOL *)replacement originalField:(id)field replacementField:(id)replacementField;
+ (id)_orderedGroupsWithFields:(id)fields lines:(id)lines;
+ (id)_restoredFieldsWithFields:(id)fields originalField:(id)field replacementField:(id)replacementField;
+ (id)_textFieldsAndRegionsFrom:(id)from;
+ (id)convertDetectedFields:(id)fields;
+ (id)horizontalClustersFromFields:(id)fields;
+ (id)predictLineHeightForFields:(id)fields inDocument:(id)document shouldUpdateExternalFields:(BOOL)externalFields;
+ (uint64_t)horizontalClustersFromFields:(uint64_t)fields;
+ (void)_setPrecedingExternalFieldsForFields:(id)fields;
+ (void)horizontalClustersFromFields:(void *)fields;
- (BOOL)_localeIsEnabled:(id)enabled;
- (CRFormParser)init;
- (id)_orderAndGroupLinesInDocument:(id)document allFields:(id)fields regions:(id)regions;
- (id)parseFieldsInDocument:(id)document allFields:(id)fields shouldUpdateExternalFields:(BOOL)externalFields;
- (void)_parseFieldsWithLabelFinderAndKeywords:(id)keywords fieldsAndRegions:(id)regions updateExternal:(BOOL)external locale:(id)locale;
- (void)_parseFieldsWithTransformer:(id)transformer fieldsAndRegions:(id)regions updateExternal:(BOOL)external locale:(id)locale;
@end

@implementation CRFormParser

- (BOOL)_localeIsEnabled:(id)enabled
{
  if (enabled)
  {
    v4 = sub_1B429FB98();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_1B4139E48(v4, v6);

  return v8;
}

- (CRFormParser)init
{
  v6.receiver = self;
  v6.super_class = CRFormParser;
  v2 = [(CRFormParser *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CRFormContentTypePredictor);
    predictor = v2->_predictor;
    v2->_predictor = v3;
  }

  return v2;
}

+ (id)_orderedGroupsWithFields:(id)fields lines:(id)lines
{
  fieldsCopy = fields;
  linesCopy = lines;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(fieldsCopy, "count") + objc_msgSend(linesCopy, "count")}];
  [v7 addObjectsFromArray:linesCopy];
  [v7 addObjectsFromArray:fieldsCopy];
  if (_MergedGlobals_9 != -1)
  {
    dispatch_once(&_MergedGlobals_9, &__block_literal_global);
  }

  v8 = [qword_1ED95FD48 orderAndGroupRegions:v7];

  return v8;
}

void __47__CRFormParser__orderedGroupsWithFields_lines___block_invoke()
{
  v0 = [CRTextFeatureOrderingUtilities textFeatureOrderWithRevision:3 angleThresholdForRotatedCrops:1 optimizeGroupsForStability:0.0];
  v1 = qword_1ED95FD48;
  qword_1ED95FD48 = v0;
}

+ (id)convertDetectedFields:(id)fields
{
  v26 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(fieldsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = fieldsCopy;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        fieldType = [v7 fieldType];
        if (fieldType == 1)
        {
          v12 = [CRFormTextFieldOutputRegion alloc];
          boundingQuad = [v7 boundingQuad];
          textContentType = [v7 textContentType];
          fieldSource = [v7 fieldSource];
          hasBoundedWidth = [v7 hasBoundedWidth];
          LOBYTE(v18) = [v7 hasBoundedHeight];
          v11 = [(CRFormTextFieldOutputRegion *)v12 initWithQuad:boundingQuad labelRegion:0 subFields:0 contentType:textContentType source:fieldSource hasBoundedWidth:hasBoundedWidth hasBoundedHeight:v18];
        }

        else
        {
          if (fieldType != 2)
          {
            v16 = 0;
            goto LABEL_13;
          }

          v9 = [CRFormSelectableFieldOutputRegion alloc];
          boundingQuad = [v7 boundingQuad];
          v11 = -[CRFormSelectableFieldOutputRegion initWithQuad:type:labelRegion:source:](v9, "initWithQuad:type:labelRegion:source:", boundingQuad, 0, 0, [v7 fieldSource]);
        }

        v16 = v11;

        if (v16)
        {
          [v20 addObject:v16];
        }

LABEL_13:
      }

      v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  return v20;
}

+ (BOOL)_isRegion:(id)region segmentedBoxLeftOfRegion:(id)ofRegion withTolerance:(double)tolerance modalWidth:(double)width modelGap:(double)gap
{
  ofRegionCopy = ofRegion;
  boundingQuad = [region boundingQuad];
  boundingQuad2 = [ofRegionCopy boundingQuad];
  [boundingQuad size];
  v47 = v11;
  [boundingQuad2 size];
  v46 = v12;
  [boundingQuad size];
  v45 = v13;
  [boundingQuad2 size];
  v44 = v14;
  [boundingQuad2 topLeft];
  v43 = v15;
  [boundingQuad topRight];
  v17 = v16;
  [boundingQuad size];
  v19 = v18;
  [boundingQuad2 size];
  v21 = v20;
  [boundingQuad size];
  v23 = v22;
  [boundingQuad2 size];
  v25 = v24;
  [boundingQuad midPoint];
  v27 = v26;
  [boundingQuad2 midPoint];
  v29 = v28;
  [boundingQuad midPoint];
  v31 = v30;
  [boundingQuad2 midPoint];
  v33 = (v45 + v44) * 0.5;
  v34 = fabs(-(width - v33 * 100.0));
  v35 = v27 < v29;
  if (fabs(-(gap - vabdd_f64(v43, v17) * 100.0)) >= 1.0)
  {
    v35 = 0;
  }

  v36 = v34 < 2.0;
  v37 = vabdd_f64(v23, v25) / v33;
  v38 = (v47 + v46) * 0.5;
  v39 = vabdd_f64(v19, v21) / v38;
  v40 = vabdd_f64(v31, v32);
  if (!v36)
  {
    v35 = 0;
  }

  if (v40 >= v38 * 0.5)
  {
    v35 = 0;
  }

  if (v39 >= 0.4)
  {
    v35 = 0;
  }

  v41 = v37 < 0.2 && v35;

  return v41;
}

+ (double)globalLineHeightInDocument:(id)document
{
  documentCopy = document;
  v22 = 0;
  v23 = &v22;
  v24 = 0x4812000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = &unk_1B4305E9E;
  v29 = 0;
  v30 = 0;
  __p = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __43__CRFormParser_globalLineHeightInDocument___block_invoke;
  v21[3] = &unk_1E7BC1E50;
  v21[4] = &v22;
  [documentCopy enumerateContentsWithTypes:8 usingBlock:v21];
  v4 = v23;
  v5 = v23[7];
  v6 = v23[6];
  if (v6 == v5)
  {
    v10 = 0.0;
  }

  else
  {
    v7 = *(v6 + (((v5 - v6) >> 1) & 0xFFFFFFFFFFFFFFF8));
    v8 = v7 * 3.0;
    while (v8 >= *v6 && *v6 * 3.0 >= v7)
    {
      if (++v6 == v5)
      {
        goto LABEL_26;
      }
    }

    if (v6 == v5 || (v11 = v6 + 1, v6 + 1 == v5))
    {
      v14 = v23[7];
      v13 = v23;
    }

    else
    {
      do
      {
        if (v8 >= *v11 && *v11 * 3.0 >= v7)
        {
          *v6++ = *v11;
        }

        ++v11;
      }

      while (v11 != v5);
      v13 = v23;
      v14 = v23[7];
    }

    if (v6 == v14)
    {
      v5 = v14;
    }

    else
    {
      v15 = v5 - v14;
      if (v5 != v14)
      {
        memmove(v6, v14, v5 - v14);
        v13 = v23;
      }

      v4[7] = v6 + v15;
      v5 = v13[7];
    }

    v4 = v13;
LABEL_26:
    v16 = v4[6];
    v17 = 0.0;
    if (v16 != v5)
    {
      v18 = v4[6];
      do
      {
        v19 = *v18++;
        v17 = v17 + v19;
      }

      while (v18 != v5);
    }

    v10 = v17 / (v5 - v16);
  }

  _Block_object_dispose(&v22, 8);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  return v10;
}

void __43__CRFormParser_globalLineHeightInDocument___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v21 = v3;
  v5 = [v3 boundingQuad];
  [v5 size];
  v8 = v4[7];
  v7 = v4[8];
  if (v8 >= v7)
  {
    v10 = v4[6];
    v11 = v8 - v10;
    v12 = (v8 - v10) >> 3;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v14 = v7 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    v15 = v14 >= 0x7FFFFFFFFFFFFFF8;
    v16 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v15)
    {
      v16 = v13;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>((v4 + 6), v16);
    }

    v17 = (v8 - v10) >> 3;
    v18 = (8 * v12);
    v19 = (8 * v12 - 8 * v17);
    *v18 = v6;
    v9 = v18 + 1;
    memcpy(v19, v10, v11);
    v20 = v4[6];
    v4[6] = v19;
    v4[7] = v9;
    v4[8] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v8 = v6;
    v9 = v8 + 8;
  }

  v4[7] = v9;
}

+ (id)predictLineHeightForFields:(id)fields inDocument:(id)document shouldUpdateExternalFields:(BOOL)externalFields
{
  externalFieldsCopy = externalFields;
  v38 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  documentCopy = document;
  v25 = fieldsCopy;
  _flattenedFields = [fieldsCopy _flattenedFields];
  v10 = CROSLogForCategory(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v33 = "+[CRFormParser predictLineHeightForFields:inDocument:shouldUpdateExternalFields:]";
    v34 = 2048;
    v35 = [_flattenedFields count];
    v36 = 1024;
    v37 = externalFieldsCopy;
    _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_DEBUG, "%s: Parsing %lu form fields (updateExcludedFields: %d)", buf, 0x1Cu);
  }

  [self globalLineHeightInDocument:documentCopy];
  v12 = v11;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = _flattenedFields;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = *v28;
    if (v12 <= 0.025)
    {
      v16 = v12;
    }

    else
    {
      v16 = 0.025;
    }

    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        if ([v18 fieldType] == 1)
        {
          if ([v18 fieldSource] == 1 || objc_msgSend(v18, "fieldSource") == 2 || (objc_msgSend(v18, "fieldSource") != 3 ? (v19 = !externalFieldsCopy) : (v19 = 0), !v19))
          {
            if (objc_opt_respondsToSelector())
            {
              boundingQuad = [v18 boundingQuad];
              [boundingQuad size];
              v22 = v21;

              v23 = v22 * 0.95;
              if (v22 * 0.95 >= v16)
              {
                v23 = v16;
              }

              [v18 setSuggestedLineHeight:v23];
            }
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  return v25;
}

+ (_NSRange)_rangeOfFirstSegmentedFieldGroupInFields:(id)fields startIndex:(int64_t)index modalWidth:(double)width modelGap:(double)gap
{
  fieldsCopy = fields;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  while (index + 1 < [fieldsCopy count])
  {
    v11 = [fieldsCopy objectAtIndexedSubscript:index];
    v12 = [fieldsCopy objectAtIndexedSubscript:index + 1];
    v13 = [objc_opt_class() _isRegion:v11 segmentedBoxLeftOfRegion:v12 withTolerance:0.2 modalWidth:width modelGap:gap];
    if ([v11 fieldSource] == 1 && objc_msgSend(v11, "fieldType") == 1)
    {
      if (!((v10 == 0x7FFFFFFFFFFFFFFFLL) | v13 & 1))
      {
        ++index;
        goto LABEL_16;
      }

      if (v10 != 0x7FFFFFFFFFFFFFFFLL && ((v13 ^ 1) & 1) == 0 && index == [fieldsCopy count] - 2)
      {
        index += 2;
LABEL_16:
        v15 = index - v10;

        if (v15)
        {
          goto LABEL_18;
        }

        break;
      }

      if ((v13 & (v10 == 0x7FFFFFFFFFFFFFFFLL)) != 0)
      {
        indexCopy = index;
      }

      else
      {
        indexCopy = v10;
      }
    }

    else
    {
      indexCopy = 0x7FFFFFFFFFFFFFFFLL;
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_16;
      }
    }

    ++index;
    v10 = indexCopy;
  }

  v15 = 0;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:

  v16 = v10;
  v17 = v15;
  result.length = v17;
  result.location = v16;
  return result;
}

+ (id)horizontalClustersFromFields:(id)fields
{
  fieldsCopy = fields;
  v18 = 0;
  v19 = &v18;
  v20 = 0x4812000000;
  v21 = __Block_byref_object_copy__15;
  v22 = __Block_byref_object_dispose__16;
  v23 = &unk_1B4305E9E;
  memset(v24, 0, 24);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __45__CRFormParser_horizontalClustersFromFields___block_invoke;
  v17[3] = &unk_1E7BC1E78;
  v17[4] = &v18;
  v13 = fieldsCopy;
  [fieldsCopy enumerateObjectsUsingBlock:v17];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:0x6DB6DB6DB6DB6DB7 * ((v19[7] - v19[6]) >> 3)];
  v5 = v19[6];
  for (i = v19[7]; v5 != i; v5 += 56)
  {
    v15 = 0;
    v16 = 0;
    v14 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v14, *(v5 + 32), *(v5 + 40), (*(v5 + 40) - *(v5 + 32)) >> 3);
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    [v4 addObject:indexSet];

    v9 = v14;
    v8 = v15;
    if (v14 != v15)
    {
      do
      {
        v10 = *v9;
        lastObject = [v4 lastObject];
        [lastObject addIndex:v10];

        ++v9;
      }

      while (v9 != v8);
      v9 = v14;
    }

    if (v9)
    {
      v15 = v9;
      operator delete(v9);
    }
  }

  _Block_object_dispose(&v18, 8);
  std::vector<+[CRFormParser horizontalClustersFromFields:]::ClusteredLine>::~vector[abi:ne200100](v24);

  return v4;
}

+ (void)horizontalClustersFromFields:(void *)fields
{
  v2 = *fields;
  if (*fields)
  {
    v3 = fields[1];
    v4 = *fields;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v3 -= 56;
      }

      while (v3 != v2);
      v4 = *fields;
    }

    fields[1] = v2;
    operator delete(v4);
  }

  return fields;
}

void __45__CRFormParser_horizontalClustersFromFields___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 boundingQuad];
  [v6 boundingBox];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if ([v5 fieldSource] == 1 && (v70.origin.x = v8, v70.origin.y = v10, v70.size.width = v12, v70.size.height = v14, CGRectGetWidth(v70) < 0.2))
  {
    v71.origin.x = v8;
    v71.origin.y = v10;
    v71.size.width = v12;
    v71.size.height = v14;
    v15 = CGRectGetHeight(v71) < 0.2;
  }

  else
  {
    v15 = 0;
  }

  v72.origin.x = v8;
  v72.origin.y = v10;
  v72.size.width = v12;
  v72.size.height = v14;
  Width = CGRectGetWidth(v72);
  v73.origin.x = v8;
  v73.origin.y = v10;
  v73.size.width = v12;
  v73.size.height = v14;
  v17 = Width / CGRectGetHeight(v73);
  v18 = v17 > 0.5;
  if (v17 >= 2.5)
  {
    v18 = 0;
  }

  if (v15 && v18)
  {
    v19 = *(*(a1 + 32) + 8);
    v20 = *(v19 + 48);
    v21 = *(v19 + 56);
    while (v20 != v21)
    {
      v74.origin.x = v8;
      v74.origin.y = v10;
      v74.size.width = v12;
      v74.size.height = v14;
      MidY = CGRectGetMidY(v74);
      if (MidY >= CGRectGetMinY(*v20) && (v75.origin.x = v8, v75.origin.y = v10, v75.size.width = v12, v75.size.height = v14, v23 = CGRectGetMidY(v75), v23 <= CGRectGetMaxY(*v20)) || (v24 = CGRectGetMidY(*v20), v76.origin.x = v8, v76.origin.y = v10, v76.size.width = v12, v76.size.height = v14, v24 >= CGRectGetMinY(v76)) && (v25 = CGRectGetMidY(*v20), v77.origin.x = v8, v77.origin.y = v10, v77.size.width = v12, v77.size.height = v14, v25 <= CGRectGetMaxY(v77)))
      {
        v78.origin.x = v8;
        v78.origin.y = v10;
        v78.size.width = v12;
        v78.size.height = v14;
        *v20 = CGRectUnion(*v20, v78);
        v36 = *(v20 + 40);
        v35 = *(v20 + 48);
        if (v36 >= v35)
        {
          v38 = *(v20 + 32);
          v39 = v36 - v38;
          v40 = (v36 - v38) >> 3;
          v41 = v40 + 1;
          if ((v40 + 1) >> 61)
          {
            std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
          }

          v42 = v35 - v38;
          if (v42 >> 2 > v41)
          {
            v41 = v42 >> 2;
          }

          v43 = v42 >= 0x7FFFFFFFFFFFFFF8;
          v44 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v43)
          {
            v44 = v41;
          }

          if (v44)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v20 + 32, v44);
          }

          v55 = (v36 - v38) >> 3;
          v56 = (8 * v40);
          v57 = (8 * v40 - 8 * v55);
          *v56 = a3;
          v37 = v56 + 1;
          memcpy(v57, v38, v39);
          v58 = *(v20 + 32);
          *(v20 + 32) = v57;
          *(v20 + 40) = v37;
          *(v20 + 48) = 0;
          if (v58)
          {
            operator delete(v58);
          }
        }

        else
        {
          *v36 = a3;
          v37 = v36 + 8;
        }

        *(v20 + 40) = v37;
        goto LABEL_48;
      }

      v20 += 56;
    }

    *&v59 = v8;
    *(&v59 + 1) = v10;
    *&v60 = v12;
    *(&v60 + 1) = v14;
    v63 = 0;
    v64 = a3;
    __p = 0;
    v62 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, &v64, &v65, 1uLL);
    v26 = *(*(a1 + 32) + 8);
    v28 = v26[7];
    v27 = v26[8];
    if (v28 >= v27)
    {
      v30 = v26[6];
      v31 = 0x6DB6DB6DB6DB6DB7 * ((v28 - v30) >> 3);
      if ((v31 + 1) > 0x492492492492492)
      {
        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      v32 = 0x6DB6DB6DB6DB6DB7 * ((v27 - v30) >> 3);
      v33 = 2 * v32;
      if (2 * v32 <= v31 + 1)
      {
        v33 = v31 + 1;
      }

      if (v32 >= 0x249249249249249)
      {
        v34 = 0x492492492492492;
      }

      else
      {
        v34 = v33;
      }

      v68 = v26 + 6;
      if (v34)
      {
        if (v34 <= 0x492492492492492)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v45 = 56 * v31;
      v64 = 0;
      v65 = v45;
      v66 = 56 * v31;
      v67 = 0;
      *v45 = v59;
      *(v45 + 16) = v60;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 32) = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(56 * v31 + 32, __p, v62, (v62 - __p) >> 3);
      v46 = v66;
      v47 = v26[6];
      v48 = v26[7];
      v49 = v65 + v47 - v48;
      if (v48 != v47)
      {
        v50 = v26[6];
        v51 = v65 + v47 - v48;
        do
        {
          v52 = *(v50 + 16);
          *v51 = *v50;
          *(v51 + 16) = v52;
          *(v51 + 40) = 0;
          *(v51 + 48) = 0;
          *(v51 + 32) = 0;
          *(v51 + 32) = *(v50 + 32);
          *(v51 + 48) = *(v50 + 48);
          *(v50 + 32) = 0;
          *(v50 + 40) = 0;
          *(v50 + 48) = 0;
          v50 += 56;
          v51 += 56;
        }

        while (v50 != v48);
        do
        {
          v53 = *(v47 + 32);
          if (v53)
          {
            *(v47 + 40) = v53;
            operator delete(v53);
          }

          v47 += 56;
        }

        while (v47 != v48);
        v47 = v26[6];
      }

      v29 = v46 + 56;
      v26[6] = v49;
      v26[7] = v46 + 56;
      v54 = v26[8];
      v26[8] = v67;
      v66 = v47;
      v67 = v54;
      v64 = v47;
      v65 = v47;
      std::__split_buffer<+[CRFormParser horizontalClustersFromFields:]::ClusteredLine>::~__split_buffer(&v64);
    }

    else
    {
      *v28 = v59;
      *(v28 + 16) = v60;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 32) = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v28 + 32, __p, v62, (v62 - __p) >> 3);
      v29 = v28 + 56;
      v26[7] = v28 + 56;
    }

    v26[7] = v29;
    if (__p)
    {
      v62 = __p;
      operator delete(__p);
    }
  }

LABEL_48:
}

+ (id)_groupSegmentedFieldsInFields:(id)fields
{
  fieldsCopy = fields;
  v4 = [CRFormParser horizontalClustersFromFields:fieldsCopy];
  array = [MEMORY[0x1E695DF70] array];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __46__CRFormParser__groupSegmentedFieldsInFields___block_invoke;
  v13 = &unk_1E7BC1EC0;
  v6 = fieldsCopy;
  v14 = v6;
  v7 = array;
  v15 = v7;
  [v4 enumerateObjectsUsingBlock:&v10];
  v8 = [v6 mutableCopy];
  [v8 removeObjectsInArray:v7];

  return v8;
}

void __46__CRFormParser__groupSegmentedFieldsInFields___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v20 = a2;
  if ([v20 count] >= 4)
  {
    v3 = [*(a1 + 32) objectsAtIndexes:v20];
    v23 = [v3 sortedArrayUsingComparator:&__block_literal_global_23];

    v4 = CROSLogForCategory(6);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v23 count];
      _os_log_impl(&dword_1B40D2000, v4, OS_LOG_TYPE_DEBUG, "Force-grouping %ld fields from a line", &buf, 0xCu);
    }

    [CRFormParser _groupSegmentedFieldsInAlignedFields:v23];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    obj = v27 = 0u;
    v5 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
    if (v5)
    {
      v22 = *v27;
      *&v6 = 134218240;
      v19 = v6;
      do
      {
        v24 = v5;
        for (i = 0; i != v24; ++i)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v8 = [v23 objectsAtIndexes:{*(*(&v26 + 1) + 8 * i), v19}];
          *&buf = 0;
          *(&buf + 1) = &buf;
          v35 = 0x2020000000;
          v36 = 0x7FFFFFFFFFFFFFFFLL;
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __46__CRFormParser__groupSegmentedFieldsInFields___block_invoke_24;
          v25[3] = &unk_1E7BC1E78;
          v25[4] = &buf;
          [v8 enumerateObjectsUsingBlock:v25];
          if (*(*(&buf + 1) + 24) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v9 = 0;
          }

          else
          {
            v9 = [v8 objectAtIndexedSubscript:?];
            v10 = [v9 boundingQuad];
            for (j = *(*(&buf + 1) + 24) + 1; j < [v8 count]; ++j)
            {
              v12 = [v8 objectAtIndexedSubscript:j];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v13 = [v12 boundingQuad];
                v14 = [v10 unionWithNormalizedQuad:v13 baselineAngle:0.0];

                v10 = v14;
                [*(a1 + 40) addObject:v12];
              }
            }

            [v9 setBoundingQuad:v10];
            [v9 setMaxCharacterCount:{objc_msgSend(v8, "count")}];
          }

          v15 = CROSLogForCategory(6);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = [v20 count];
            v17 = [*(a1 + 32) count];
            v18 = [*(a1 + 40) count];
            *v30 = v19;
            v31 = v16;
            v32 = 2048;
            v33 = v17 - v18;
            _os_log_impl(&dword_1B40D2000, v15, OS_LOG_TYPE_DEBUG, "Removing %ld fields from global list, remaining field count = %ld", v30, 0x16u);
          }

          _Block_object_dispose(&buf, 8);
        }

        v5 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
      }

      while (v5);
    }
  }
}

uint64_t __46__CRFormParser__groupSegmentedFieldsInFields___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 boundingQuad];
  [v5 boundingBox];
  MidX = CGRectGetMidX(v11);
  v7 = [v4 boundingQuad];
  [v7 boundingBox];
  v8 = CGRectGetMidX(v12);

  if (MidX >= v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void __46__CRFormParser__groupSegmentedFieldsInFields___block_invoke_24(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

+ (id)_groupSegmentedFieldsInAlignedFields:(id)fields
{
  v65 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  v4 = 0;
  v5 = 0;
  v59[0] = 0;
  v59[1] = 0;
  v57[1] = 0;
  v58 = v59;
  v56 = v57;
  v57[0] = 0;
  while (v4 < [fieldsCopy count] - 1)
  {
    v6 = [fieldsCopy objectAtIndexedSubscript:v4];
    boundingQuad = [v6 boundingQuad];
    [boundingQuad size];
    v9 = v8;

    v10 = v4 + 1;
    v11 = [fieldsCopy objectAtIndexedSubscript:v4 + 1];
    boundingQuad2 = [v11 boundingQuad];
    [boundingQuad2 boundingBox];
    MinX = CGRectGetMinX(v67);
    v14 = [fieldsCopy objectAtIndexedSubscript:v4];
    boundingQuad3 = [v14 boundingQuad];
    [boundingQuad3 boundingBox];
    MaxX = CGRectGetMaxX(v68);

    v17 = (v9 * 100.0);
    v54 = ((MinX - MaxX) * 100.0);
    v55 = v17;
    if (v17 <= 9 && MinX - MaxX >= 0.0 && ((MinX - MaxX) * 100.0) <= 5)
    {
      v18 = v57[0];
      if (!v57[0])
      {
        goto LABEL_13;
      }

      v19 = v57;
      do
      {
        if (*(v18 + 8) >= v17)
        {
          v19 = v18;
        }

        v18 = v18[*(v18 + 8) < v17];
      }

      while (v18);
      if (v19 == v57 || *(v19 + 8) > v17)
      {
LABEL_13:
        *buf = &v55;
        std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v56, v17)[5] = 0;
        v17 = v55;
      }

      *buf = &v55;
      v20 = std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v56, v17);
      ++v20[5];
      v21 = v59[0];
      v22 = v54;
      if (!v59[0])
      {
        goto LABEL_21;
      }

      v23 = v59;
      do
      {
        if (*(v21 + 8) >= v54)
        {
          v23 = v21;
        }

        v21 = v21[*(v21 + 8) < v54];
      }

      while (v21);
      if (v23 == v59 || v54 < *(v23 + 8))
      {
LABEL_21:
        *buf = &v54;
        std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v58, v54)[5] = 0;
        v22 = v54;
      }

      *buf = &v54;
      v24 = std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v58, v22);
      ++v5;
      ++v24[5];
    }

    v4 = v10;
  }

  v25 = v58;
  if (v58 == v59)
  {
    v27 = -1;
    v26 = -1;
  }

  else
  {
    v26 = -1;
    v27 = -1;
    do
    {
      if (v27 == -1 || v25[5] > v26)
      {
        v26 = v25[5];
        v27 = *(v25 + 8);
      }

      v30 = v25[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v25[2];
          v32 = *v31 == v25;
          v25 = v31;
        }

        while (!v32);
      }

      v25 = v31;
    }

    while (v31 != v59);
  }

  v33 = v56;
  if (v56 == v57)
  {
    v35 = -1;
    v34 = -1;
  }

  else
  {
    v34 = -1;
    v35 = -1;
    do
    {
      if (v35 == -1 || v33[5] > v26)
      {
        v34 = v33[5];
        v35 = *(v33 + 8);
      }

      v38 = v33[1];
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = v33[2];
          v32 = *v39 == v33;
          v33 = v39;
        }

        while (!v32);
      }

      v33 = v39;
    }

    while (v39 != v57);
  }

  v40 = CROSLogForCategory(6);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219008;
    *&buf[4] = v5;
    v61 = 1024;
    *v62 = v35;
    *&v62[4] = 2048;
    *&v62[6] = v34;
    *&v62[14] = 1024;
    *&v62[16] = v27;
    v63 = 2048;
    v64 = v26;
    _os_log_impl(&dword_1B40D2000, v40, OS_LOG_TYPE_DEBUG, "Line analysis with %ld fields: modal width = %d (%ld fields) gap width = %d (%ld fields)", buf, 0x2Cu);
  }

  v41 = v27;
  v42 = [self _rangeOfFirstSegmentedFieldGroupInFields:fieldsCopy startIndex:0 modalWidth:v35 modelGap:v27];
  v44 = v43;
  array = [MEMORY[0x1E695DF70] array];
  *&v46 = 136315650;
  v52 = v46;
  while (v42 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v47 = CROSLogForCategory(6);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      *buf = v52;
      *&buf[4] = "+[CRFormParser _groupSegmentedFieldsInAlignedFields:]";
      v61 = 2048;
      *v62 = v42;
      *&v62[8] = 2048;
      *&v62[10] = v44;
      _os_log_impl(&dword_1B40D2000, v47, OS_LOG_TYPE_DEBUG, "%s: Found a range of small fields to be merged together (%ld, %ld)", buf, 0x20u);
    }

    if (v44 >= 2)
    {
      v48 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v42, v44}];
      [array addObject:v48];
    }

    v42 = [self _rangeOfFirstSegmentedFieldGroupInFields:fieldsCopy startIndex:v42 + v44 modalWidth:v35 modelGap:{v41, v52}];
    v44 = v49;
  }

  if (v44 >= 2)
  {
    v50 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0x7FFFFFFFFFFFFFFFLL, v44}];
    [array addObject:v50];
  }

  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(v57[0]);
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(v59[0]);

  return array;
}

+ (id)_textFieldsAndRegionsFrom:(id)from
{
  fromCopy = from;
  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_30];
  v5 = [fromCopy filteredArrayUsingPredicate:v4];

  return v5;
}

BOOL __42__CRFormParser__textFieldsAndRegionsFrom___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CRCastAsClass<CROutputRegion>(v2);
  v4 = v3;
  if (v3 && [v3 type] != 0x2000)
  {
    v7 = 1;
    goto LABEL_10;
  }

  v5 = v2;
  if (([v5 conformsToProtocol:&unk_1F2C0BF90] & 1) == 0)
  {

    v6 = 0;
    goto LABEL_7;
  }

  v6 = v5;

  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = [v6 fieldType] == 1;
LABEL_8:

LABEL_10:
  return v7;
}

- (void)_parseFieldsWithLabelFinderAndKeywords:(id)keywords fieldsAndRegions:(id)regions updateExternal:(BOOL)external locale:(id)locale
{
  v34 = *MEMORY[0x1E69E9840];
  keywordsCopy = keywords;
  _nonFieldRegions = [regions _nonFieldRegions];
  v7 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = keywordsCopy;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        memset(v27, 0, sizeof(v27));
        v12 = [CRFormLabelFinder parseAndAssignLabelForField:v11 regions:_nonFieldRegions associatedLabels:v7 labelRegions:v27];
        if ([v11 fieldType] == 1 && objc_msgSend(v11, "fieldSource") == 1 && objc_msgSend(v11, "textContentType"))
        {
          [v11 setTextContentType:0];
        }

        if ([v11 fieldType] == 1 && objc_msgSend(v11, "fieldSource") == 7)
        {
          fieldValue = [v11 fieldValue];
          v14 = [fieldValue length] == 0;

          if (!v14)
          {
            [v11 setTextContentType:50];
          }
        }

        else
        {
          text = [v12 text];
          v16 = text == 0;

          if (!v16)
          {
            text2 = [v12 text];
            v18 = [CRFormContentTypeKeywordBasedPredictor predictContentTypeWithKeywordMatching:text2 locale:0 keyword:0 withPriorityKeywords:1];

            if (v18 || (([v12 text], v19 = objc_claimAutoreleasedReturnValue(), v18 = +[CRFormContentTypeKeywordBasedPredictor predictContentTypeWithKeywordMatching:locale:keyword:withPriorityKeywords:](CRFormContentTypeKeywordBasedPredictor, "predictContentTypeWithKeywordMatching:locale:keyword:withPriorityKeywords:", v19, 0, 0, 0), v19, +[CRFormContentTypeKeywordBasedPredictor useKeywordTypes](CRFormContentTypeKeywordBasedPredictor, "useKeywordTypes"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v18), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "containsObject:", v21), v21, v20, v18) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
            {
              if ([v11 fieldType] == 1)
              {
                [v11 setTextContentType:v18];
              }
            }
          }
        }

        v32 = v27;
        std::vector<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v32);
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }
}

- (void)_parseFieldsWithTransformer:(id)transformer fieldsAndRegions:(id)regions updateExternal:(BOOL)external locale:(id)locale
{
  externalCopy = external;
  transformerCopy = transformer;
  regionsCopy = regions;
  localeCopy = locale;
  [(CRFormParser *)self _parseFieldsWithLabelFinderAndKeywords:transformerCopy fieldsAndRegions:regionsCopy updateExternal:externalCopy locale:localeCopy];
  predictor = self->_predictor;
  v13 = [transformerCopy _fieldsOfType:1];
  v14 = [objc_opt_class() _textFieldsAndRegionsFrom:regionsCopy];
  [(CRFormContentTypePredictor *)predictor predictAndAssignContentTypesForFields:v13 fieldsAndRegions:v14 locale:localeCopy updateExternal:externalCopy];
}

+ (id)_mergedFieldsWithUnifiedQuadsFromFields:(id)fields needsFieldReplacement:(BOOL *)replacement originalField:(id)field replacementField:(id)replacementField
{
  fieldsCopy = fields;
  fieldCopy = field;
  replacementFieldCopy = replacementField;
  v12 = [fieldsCopy indexOfObjectPassingTest:&__block_literal_global_116];
  v13 = [fieldsCopy indexOfObjectPassingTest:&__block_literal_global_118];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL || v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = fieldsCopy;
  }

  else
  {
    v14 = [fieldsCopy mutableCopy];
    v15 = [fieldsCopy objectAtIndexedSubscript:v13];
    boundingQuad = [v15 boundingQuad];
    [boundingQuad normalizationSize];
    v18 = v17;
    v20 = v19;

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __109__CRFormParser__mergedFieldsWithUnifiedQuadsFromFields_needsFieldReplacement_originalField_replacementField___block_invoke_3;
    v34[3] = &__block_descriptor_48_e39_B32__0___CRFormFieldProviding__8Q16_B24l;
    v34[4] = v18;
    v34[5] = v20;
    v21 = [fieldsCopy indexesOfObjectsPassingTest:v34];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __109__CRFormParser__mergedFieldsWithUnifiedQuadsFromFields_needsFieldReplacement_originalField_replacementField___block_invoke_4;
    v26[3] = &unk_1E7BC1F48;
    v27 = fieldsCopy;
    v31 = v18;
    v32 = v20;
    v28 = fieldCopy;
    v29 = replacementFieldCopy;
    v22 = v14;
    v30 = v22;
    replacementCopy = replacement;
    [v21 enumerateIndexesUsingBlock:v26];
    v23 = v30;
    v24 = v22;
  }

  return v24;
}

BOOL __109__CRFormParser__mergedFieldsWithUnifiedQuadsFromFields_needsFieldReplacement_originalField_replacementField___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 fieldSource] == 4 || objc_msgSend(v2, "fieldSource") == 5 || objc_msgSend(v2, "fieldSource") == 6;

  return v3;
}

BOOL __109__CRFormParser__mergedFieldsWithUnifiedQuadsFromFields_needsFieldReplacement_originalField_replacementField___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 fieldSource] == 1 || objc_msgSend(v2, "fieldSource") == 2 || objc_msgSend(v2, "fieldSource") == 3;

  return v3;
}

BOOL __109__CRFormParser__mergedFieldsWithUnifiedQuadsFromFields_needsFieldReplacement_originalField_replacementField___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 boundingQuad];
  [v3 normalizationSize];
  v6 = v5 != *(a1 + 40) || v4 != *(a1 + 32);

  return v6;
}

void __109__CRFormParser__mergedFieldsWithUnifiedQuadsFromFields_needsFieldReplacement_originalField_replacementField___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v8 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = [CRNormalizedQuad alloc];
  v5 = [v8 boundingQuad];
  [v5 boundingBox];
  v6 = [CRNormalizedQuad initWithNormalizedBoundingBox:v4 size:"initWithNormalizedBoundingBox:size:"];

  v7 = -[CRFormField initWithQuad:type:source:value:contentType:maxCharacterCount:]([CRFormField alloc], "initWithQuad:type:source:value:contentType:maxCharacterCount:", v6, [v8 fieldType], objc_msgSend(v8, "fieldSource"), 0, objc_msgSend(v8, "textContentType"), objc_msgSend(v8, "maxCharacterCount"));
  [(CRFormField *)v7 setOriginalField:v8];
  [*(a1 + 40) addObject:v8];
  [*(a1 + 48) addObject:v7];
  [*(a1 + 56) setObject:v7 atIndexedSubscript:a2];
  **(a1 + 80) = 1;
}

+ (id)_restoredFieldsWithFields:(id)fields originalField:(id)field replacementField:(id)replacementField
{
  v29 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  fieldCopy = field;
  replacementFieldCopy = replacementField;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(fieldsCopy, "count")}];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = fieldsCopy;
  v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        if ([v14 fieldSource] == 4 || objc_msgSend(v14, "fieldSource") == 5 || objc_msgSend(v14, "fieldSource") == 6)
        {
          v15 = [fieldCopy objectAtIndexedSubscript:{objc_msgSend(replacementFieldCopy, "indexOfObject:", v14)}];
          [v10 addObject:v15];
        }

        else
        {
          v16 = CRCastAsClass<CRFormFieldOutputRegion>(v14);
          v15 = v16;
          if (v16)
          {
            precedingExternalField = [v16 precedingExternalField];
            v18 = precedingExternalField == 0;

            if (!v18)
            {
              precedingExternalField2 = [v15 precedingExternalField];
              v20 = [fieldCopy objectAtIndexedSubscript:{objc_msgSend(replacementFieldCopy, "indexOfObject:", precedingExternalField2)}];
              [v15 setPrecedingExternalField:v20];
            }
          }

          [v10 addObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v21 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      v11 = v21;
    }

    while (v21);
  }

  return v10;
}

- (id)_orderAndGroupLinesInDocument:(id)document allFields:(id)fields regions:(id)regions
{
  v56 = *MEMORY[0x1E69E9840];
  documentCopy = document;
  fieldsCopy = fields;
  regionsCopy = regions;
  v28 = documentCopy;
  v29 = fieldsCopy;
  v33 = [documentCopy contentsWithTypes:8];
  [objc_opt_class() _groupSegmentedFieldsInFields:fieldsCopy];
  v34 = v45 = 0;
  v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v34, "count")}];
  v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v34, "count")}];
  v30 = [objc_opt_class() _mergedFieldsWithUnifiedQuadsFromFields:v34 needsFieldReplacement:&v45 originalField:v31 replacementField:v32];
  [CRFormParser _orderedGroupsWithFields:v30 lines:v33];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v9 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v9)
  {
    v10 = *v42;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        v13 = CROSLogForCategory(6);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          boundingQuad = [v12 boundingQuad];
          v15 = [boundingQuad description];
          *buf = 136315394;
          v48 = "[CRFormParser _orderAndGroupLinesInDocument:allFields:regions:]";
          v49 = 2112;
          v50 = v15;
          _os_log_impl(&dword_1B40D2000, v13, OS_LOG_TYPE_DEBUG, "%s: Sorting groups: %@", buf, 0x16u);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v9);
  }

  v16 = CROSLogForCategory(6);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v34 count];
    v18 = [v33 count];
    v19 = [obj count];
    *buf = 136315906;
    v48 = "[CRFormParser _orderAndGroupLinesInDocument:allFields:regions:]";
    v49 = 2048;
    v50 = v17;
    v51 = 2048;
    v52 = v18;
    v53 = 2048;
    v54 = v19;
    _os_log_impl(&dword_1B40D2000, v16, OS_LOG_TYPE_DEBUG, "%s: Parsing %lu form fields with %lu text lines (%lu groups)", buf, 0x2Au);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = obj;
  v21 = [v20 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v21)
  {
    v22 = *v38;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v20);
        }

        subregions = [*(*(&v37 + 1) + 8 * j) subregions];
        [regionsCopy addObjectsFromArray:subregions];
      }

      v21 = [v20 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v21);
  }

  _flattenedFields = [regionsCopy _flattenedFields];
  if (v45 == 1)
  {
    v26 = [objc_opt_class() _restoredFieldsWithFields:_flattenedFields originalField:v31 replacementField:v32];

    _flattenedFields = v26;
  }

  return _flattenedFields;
}

+ (id)_dominantLocaleInRegions:(id)regions
{
  v38 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  v3 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = regionsCopy;
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v5)
  {
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = CRCastAsClass<CROutputRegion>(*(*(&v33 + 1) + 8 * i));
        v9 = v8;
        if (v8)
        {
          if ([v8 type] != 0x2000 || (objc_msgSend(v9, "labelRegion"), v10 = objc_claimAutoreleasedReturnValue(), v9, (v9 = v10) != 0))
          {
            text = [v9 text];
            v12 = [text length] == 0;

            if (!v12)
            {
              text2 = [v9 text];
              if ([text2 length] == 1)
              {
                punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
                text3 = [v9 text];
                v16 = [punctuationCharacterSet characterIsMember:{objc_msgSend(text3, "characterAtIndex:", 0)}];

                if (v16)
                {
                  goto LABEL_19;
                }
              }

              else
              {
              }

              recognizedLocale = [v9 recognizedLocale];
              if (recognizedLocale)
              {
                v18 = MEMORY[0x1E696AD98];
                v19 = [v3 objectForKeyedSubscript:recognizedLocale];
                v20 = v19;
                if (!v19)
                {
                  v19 = &unk_1F2BF80E0;
                }

                v21 = [v18 numberWithInteger:{objc_msgSend(v19, "integerValue") + 1}];
                [v3 setObject:v21 forKeyedSubscript:recognizedLocale];
              }
            }
          }
        }

LABEL_19:
      }

      v5 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v5);
  }

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__125;
  v30 = __Block_byref_object_dispose__126;
  v31 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __41__CRFormParser__dominantLocaleInRegions___block_invoke;
  v25[3] = &unk_1E7BC1F70;
  v25[4] = v32;
  v25[5] = &v26;
  [v3 enumerateKeysAndObjectsUsingBlock:v25];
  v22 = v27[5];
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(v32, 8);

  return v22;
}

void __41__CRFormParser__dominantLocaleInRegions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if ([v6 integerValue] > *(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = [v6 integerValue];
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

+ (void)_setPrecedingExternalFieldsForFields:(id)fields
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  fieldsCopy = fields;
  v4 = 0;
  v5 = [fieldsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(fieldsCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 fieldSource] != 4 || objc_msgSend(v8, "fieldType") == -1)
        {
          v11 = CRCastAsClass<CRFormFieldOutputRegion>(v8);
          v10 = v11;
          if (v11)
          {
            [v11 setPrecedingExternalField:v4];
          }
        }

        else
        {
          v9 = v8;
          v10 = v4;
          v4 = v9;
        }
      }

      v5 = [fieldsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (id)parseFieldsInDocument:(id)document allFields:(id)fields shouldUpdateExternalFields:(BOOL)externalFields
{
  externalFieldsCopy = externalFields;
  v23 = *MEMORY[0x1E69E9840];
  documentCopy = document;
  fieldsCopy = fields;
  v10 = objc_opt_new();
  v11 = [(CRFormParser *)self _orderAndGroupLinesInDocument:documentCopy allFields:fieldsCopy regions:v10];
  [objc_opt_class() _setPrecedingExternalFieldsForFields:v11];
  v12 = [objc_opt_class() _dominantLocaleInRegions:v10];
  v13 = [(CRFormParser *)self _localeIsEnabled:v12];
  v14 = CROSLogForCategory(6);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v19 = 136315394;
      v20 = "[CRFormParser parseFieldsInDocument:allFields:shouldUpdateExternalFields:]";
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_DEFAULT, "%s: Content type prediction for locale %@ is enabled.", &v19, 0x16u);
    }

    [(CRFormParser *)self _parseFieldsWithTransformer:v11 fieldsAndRegions:v10 updateExternal:externalFieldsCopy locale:v12];
    v14 = [CRFormContentTypeRefiner groupAndAssignStructuralContentTypesForFields:v11 locale:v12 updateExternalFields:externalFieldsCopy];
    v16 = [v14 mutableCopy];

    v11 = v16;
  }

  else if (v15)
  {
    v19 = 136315394;
    v20 = "[CRFormParser parseFieldsInDocument:allFields:shouldUpdateExternalFields:]";
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_DEFAULT, "%s: Content type prediction for locale %@ is disabled.", &v19, 0x16u);
  }

  v17 = v11;
  return v11;
}

+ (uint64_t)horizontalClustersFromFields:(uint64_t)fields
{
  v3 = *(fields + 8);
  v2 = *(fields + 16);
  while (v2 != v3)
  {
    *(fields + 16) = v2 - 56;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(fields + 16);
    }

    else
    {
      v2 -= 56;
    }
  }

  if (*fields)
  {
    operator delete(*fields);
  }

  return fields;
}

@end