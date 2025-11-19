@interface CRFormFilterSurfacedFieldsStep
- (CRFormFilterSurfacedFieldsStep)initWithAssignGlobalOrder:(BOOL)a3;
- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6;
- (void)_setGlobalIndexesForFields:(id)a3 externalFields:(id)a4;
@end

@implementation CRFormFilterSurfacedFieldsStep

- (CRFormFilterSurfacedFieldsStep)initWithAssignGlobalOrder:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CRFormFilterSurfacedFieldsStep;
  result = [(CRFormFilterSurfacedFieldsStep *)&v5 init];
  if (result)
  {
    result->_assignGlobalOrder = a3;
  }

  return result;
}

- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v27 = a4;
  v10 = a6;
  v11 = CROSLogForCategory(6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v38 = [v9 count];
    _os_log_impl(&dword_1B40D2000, v11, OS_LOG_TYPE_DEBUG, "CRFormPostProcessor: CRFormFilterSurfacedFieldsStep is running (#input:%lu).", buf, 0xCu);
  }

  v12 = [v9 _fieldsOfSource:4];
  v26 = [v9 _fieldsOfSource:6];
  v13 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_304];
  v14 = [v9 filteredArrayUsingPredicate:v13];

  v15 = [v10 objectForKeyedSubscript:{@"ShouldSurfaceContourBasedFormFieldsOption", v12}];
  LOBYTE(v13) = [v15 BOOLValue];

  v16 = [v10 objectForKeyedSubscript:@"ShouldSurfaceTextBasedFormFieldsOption"];
  LOBYTE(v15) = [v16 BOOLValue];

  LOBYTE(v16) = [(CRFormFilterSurfacedFieldsStep *)self assignGlobalOrder];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __74__CRFormFilterSurfacedFieldsStep_process_externalFields_document_options___block_invoke_2;
  v30[3] = &unk_1E7BC21F0;
  v34 = v13;
  v35 = v15;
  v18 = v26;
  v31 = v18;
  v19 = v12;
  v32 = v19;
  v36 = v16;
  v20 = v14;
  v33 = v20;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __74__CRFormFilterSurfacedFieldsStep_process_externalFields_document_options___block_invoke_6;
  v28[3] = &unk_1E7BC2048;
  v21 = v17;
  v29 = v21;
  [CRFormPostProcessingManager enumerateFieldsInFields:v9 filter:v30 block:v28];
  v22 = [v21 sortedArrayUsingComparator:&__block_literal_global_309];
  if ([(CRFormFilterSurfacedFieldsStep *)self assignGlobalOrder])
  {
    [(CRFormFilterSurfacedFieldsStep *)self _setGlobalIndexesForFields:v22 externalFields:v27];
  }

  v23 = CROSLogForCategory(6);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = [v22 count];
    *buf = 134217984;
    v38 = v24;
    _os_log_impl(&dword_1B40D2000, v23, OS_LOG_TYPE_DEBUG, "CRFormPostProcessor: CRFormFilterSurfacedFieldsStep is completed (#output:%lu).", buf, 0xCu);
  }

  return v22;
}

BOOL __74__CRFormFilterSurfacedFieldsStep_process_externalFields_document_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v2 hasMoved] && objc_msgSend(v2, "fieldSource") != 6;

  return v3;
}

BOOL __74__CRFormFilterSurfacedFieldsStep_process_externalFields_document_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fieldSource];
  v5 = *(a1 + 56) == 1 && [v3 fieldSource] == 2;
  v6 = *(a1 + 57) == 1 && [v3 fieldSource] == 3;
  if (v4 == 1 || v5 || v6)
  {
    v8 = *(a1 + 32);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __74__CRFormFilterSurfacedFieldsStep_process_externalFields_document_options___block_invoke_3;
    v24[3] = &unk_1E7BC21A0;
    v9 = v3;
    v25 = v9;
    v10 = [v8 indexOfObjectPassingTest:v24];
    v11 = *(a1 + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __74__CRFormFilterSurfacedFieldsStep_process_externalFields_document_options___block_invoke_4;
    v21[3] = &unk_1E7BC21C8;
    v12 = v9;
    v22 = v12;
    v23 = *(a1 + 58);
    v13 = [v11 indexOfObjectPassingTest:v21];
    v14 = *(a1 + 48);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __74__CRFormFilterSurfacedFieldsStep_process_externalFields_document_options___block_invoke_5;
    v19[3] = &unk_1E7BC21A0;
    v20 = v12;
    v15 = [v14 indexOfObjectPassingTest:v19];
    v7 = v10 == 0x7FFFFFFFFFFFFFFFLL && v13 == 0x7FFFFFFFFFFFFFFFLL && v15 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL __74__CRFormFilterSurfacedFieldsStep_process_externalFields_document_options___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 originalQuad];
  v4 = [*(a1 + 32) boundingQuad];
  [v3 boundingBoxIOUWithQuad:v4];
  v6 = v5 > 0.9;

  return v6;
}

uint64_t __74__CRFormFilterSurfacedFieldsStep_process_externalFields_document_options___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 boundingQuad];
  [v4 boundingBox];
  v66 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [*(a1 + 32) boundingQuad];
  [v12 boundingBox];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v71.origin.x = v7;
  v71.origin.y = v9;
  v71.size.width = v11;
  v71.size.height = v66;
  v63 = v16;
  v64 = v14;
  v94.origin.x = v14;
  v94.origin.y = v16;
  v61 = v20;
  v62 = v18;
  v94.size.width = v18;
  v94.size.height = v20;
  v72 = CGRectIntersection(v71, v94);
  rect = v72.origin.x;
  y = v72.origin.y;
  width = v72.size.width;
  height = v72.size.height;
  v72.origin.x = v7;
  v72.origin.y = v9;
  v72.size.width = v11;
  v72.size.height = v66;
  v65 = CGRectGetWidth(v72);
  v24 = v9;
  v73.origin.x = v7;
  v73.origin.y = v9;
  v73.size.width = v11;
  v73.size.height = v66;
  v25 = CGRectGetHeight(v73);
  rect_8 = v7;
  rect_16 = v24;
  v74.origin.x = v7;
  v74.origin.y = v24;
  rect_24 = v11;
  v74.size.width = v11;
  v74.size.height = v66;
  v26 = CGRectGetWidth(v74);
  v75.origin.x = rect_8;
  v75.origin.y = v24;
  v75.size.width = v11;
  v75.size.height = v66;
  v27 = CGRectGetHeight(v75);
  v76.origin.x = rect;
  v76.origin.y = y;
  v76.size.width = width;
  v76.size.height = height;
  if (CGRectIsEmpty(v76) || (v28 = v65 * v25, v28 <= 0.0) || (v29 = v26 * v27, v29 <= 0.0))
  {
    v32 = CRCastAsClass<CRFormFieldOutputRegion>(*(a1 + 32));
    v33 = v32;
    v35 = rect_8;
    v34 = rect_16;
    if (v32 && [v32 fieldType] == 1 && *(a1 + 40) == 1 && objc_msgSend(*(a1 + 32), "textContentType") != 50)
    {
      v79.origin.x = rect_8;
      v79.origin.y = rect_16;
      v79.size.width = v11;
      v79.size.height = v66;
      MinY = CGRectGetMinY(v79);
      v80.origin.x = v64;
      v80.origin.y = v63;
      v80.size.width = v62;
      v80.size.height = v61;
      if (MinY >= CGRectGetMaxY(v80))
      {
        v39 = 0;
      }

      else
      {
        v81.origin.x = rect_8;
        v81.origin.y = rect_16;
        v81.size.width = rect_24;
        v81.size.height = v66;
        MaxY = CGRectGetMaxY(v81);
        v82.origin.x = v64;
        v82.origin.y = v63;
        v82.size.width = v62;
        v82.size.height = v61;
        v39 = MaxY > CGRectGetMinY(v82);
      }

      v83.size.width = rect_24;
      v83.size.height = v66;
      v83.origin.x = rect_8;
      v83.origin.y = rect_16;
      MinX = CGRectGetMinX(v83);
      v84.origin.x = v64;
      v84.origin.y = v63;
      v84.size.width = v62;
      v84.size.height = v61;
      if (MinX >= CGRectGetMaxX(v84) || (v85.origin.x = rect_8, v85.origin.y = rect_16, v85.size.width = rect_24, v85.size.height = v66, v41 = CGRectGetMaxX(v85), v86.origin.x = v64, v86.origin.y = v63, v86.size.width = v62, v86.size.height = v61, v41 <= CGRectGetMinX(v86)))
      {
        v87.origin.x = rect_8;
        v87.origin.y = rect_16;
        v87.size.width = rect_24;
        v87.size.height = v66;
        v44 = CGRectGetMinX(v87);
        v88.origin.x = v64;
        v88.origin.y = v63;
        v88.size.width = v62;
        v88.size.height = v61;
        v45 = CGRectGetMinX(v88);
        v89.origin.x = rect_8;
        v89.origin.y = rect_16;
        v89.size.width = rect_24;
        v89.size.height = v66;
        MaxX = CGRectGetMaxX(v89);
        v90.origin.x = v64;
        v90.origin.y = v63;
        v90.size.width = v62;
        v90.size.height = v61;
        v47 = CGRectGetMaxX(v90);
        v48 = [v3 boundingQuad];
        [v48 normalizationSize];
        v42 = (fmax(v44, v45) - fmin(MaxX, v47)) * v49 < 6.0;

        v43 = 0;
        v35 = rect_8;
        v34 = rect_16;
      }

      else
      {
        v42 = 1;
        v43 = 1;
      }

      v50 = rect_24;
      v51 = v66;
      if (v39)
      {
        v52 = 1;
      }

      else
      {
        v53 = v35;
        v54 = v34;
        v55 = CGRectGetMinY(*(&v50 - 2));
        v91.origin.x = v64;
        v91.origin.y = v63;
        v91.size.width = v62;
        v91.size.height = v61;
        v56 = CGRectGetMinY(v91);
        v92.origin.x = v35;
        v92.origin.y = rect_16;
        v92.size.width = rect_24;
        v92.size.height = v66;
        v57 = CGRectGetMaxY(v92);
        v93.origin.x = v64;
        v93.origin.y = v63;
        v93.size.width = v62;
        v93.size.height = v61;
        v58 = CGRectGetMaxY(v93);
        v59 = [v3 boundingQuad];
        [v59 normalizationSize];
        v52 = (fmax(v55, v56) - fmin(v57, v58)) * v60 < 6.0;
      }

      v31 = (v42 && v39) | v43 & v52;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v77.origin.x = rect;
    v77.origin.y = y;
    v77.size.width = width;
    v77.size.height = height;
    v30 = CGRectGetWidth(v77);
    v78.origin.x = rect;
    v78.origin.y = y;
    v78.size.width = width;
    v78.size.height = height;
    v31 = fmin(v28 * 0.02, v29 * 0.02) < v30 * CGRectGetHeight(v78);
  }

  return v31 & 1;
}

BOOL __74__CRFormFilterSurfacedFieldsStep_process_externalFields_document_options___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 originalQuad];
  v4 = [*(a1 + 32) boundingQuad];
  [v3 boundingBoxIOUWithQuad:v4];
  v6 = v5 > 0.9;

  return v6;
}

uint64_t __74__CRFormFilterSurfacedFieldsStep_process_externalFields_document_options___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 fieldSource];
  if (v6 > [v5 fieldSource])
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)_setGlobalIndexesForFields:(id)a3 externalFields:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v20;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = CRCastAsClass<CRFormFieldOutputRegion>(*(*(&v19 + 1) + 8 * v12));
        v14 = v13;
        if (v13)
        {
          v15 = [v13 precedingExternalField];
          if (v15)
          {
            if (v6)
            {
              v16 = [v6 indexOfObject:v15];
            }

            else
            {
              v16 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (v16 <= v11)
            {
              v17 = v11;
            }

            else
            {
              v17 = v16;
            }

            v18 = v17 - v11;
            if (v11 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v18 = v16 + 1;
              v11 = v16;
            }

            else
            {
              v11 = v17;
            }

            v9 += v18;
          }

          [v14 setIndexInGlobalOrder:v9];

          ++v9;
        }

        ++v12;
      }

      while (v8 != v12);
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }
}

@end