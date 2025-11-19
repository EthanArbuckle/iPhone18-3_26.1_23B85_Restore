@interface CRFormFieldDedupingStep
- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6;
@end

@implementation CRFormFieldDedupingStep

- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = CROSLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_DEBUG, "CRFormPostProcessor: CRFormFieldDedupingStep is running.", buf, 2u);
  }

  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __67__CRFormFieldDedupingStep_process_externalFields_document_options___block_invoke_2;
  v34[3] = &unk_1E7BC2048;
  v9 = v24;
  v35 = v9;
  [CRFormPostProcessingManager enumerateFieldsInFields:v6 filter:&__block_literal_global_287 block:v34];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __67__CRFormFieldDedupingStep_process_externalFields_document_options___block_invoke_4;
  v29[3] = &unk_1E7BC2130;
  v10 = v9;
  v30 = v10;
  v11 = v8;
  v31 = v11;
  v33 = 1;
  v12 = v6;
  v32 = v12;
  [CRFormPostProcessingManager enumerateFieldsInFields:v12 filter:&__block_literal_global_289 block:v29];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v42 count:16];
  if (v15)
  {
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        if (([v11 containsObject:v18] & 1) == 0)
        {
          [v13 addObject:v18];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v25 objects:v42 count:16];
    }

    while (v15);
  }

  v19 = CROSLogForCategory(6);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = [v11 count];
    v21 = [v14 count];
    v22 = [v13 count];
    *buf = 134218496;
    v37 = v20;
    v38 = 2048;
    v39 = v21;
    v40 = 2048;
    v41 = v22;
    _os_log_impl(&dword_1B40D2000, v19, OS_LOG_TYPE_DEBUG, "CRFormFieldDedupingStep removed %ld contour fields from %ld fields, preserving %ld fields.", buf, 0x20u);
  }

  return v13;
}

void __67__CRFormFieldDedupingStep_process_externalFields_document_options___block_invoke_4(uint64_t a1, void *a2)
{
  v96 = *MEMORY[0x1E69E9840];
  v73 = a2;
  v3 = [v73 boundingQuad];
  [v3 boundingBox];
  v76 = v5;
  v77 = v4;
  v7 = v6;
  v9 = v8;

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v10 = *(a1 + 32);
  v11 = 0;
  v12 = 0;
  v13 = [v10 countByEnumeratingWithState:&v82 objects:v95 count:16];
  if (v13)
  {
    v14 = *v83;
    v74 = 0.0;
    v75 = 0.0;
    do
    {
      v15 = 0;
      do
      {
        if (*v83 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v82 + 1) + 8 * v15);
        if (([*(a1 + 40) containsObject:v16] & 1) == 0)
        {
          v17 = [v16 boundingQuad];
          [v17 boundingBox];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;

          v97.origin.x = v19;
          v97.origin.y = v21;
          v97.size.width = v23;
          v97.size.height = v25;
          v103.origin.y = v76;
          v103.origin.x = v77;
          v103.size.width = v7;
          v103.size.height = v9;
          if (CGRectContainsRect(v97, v103))
          {
            v26 = 1;
          }

          else
          {
            v98.origin.y = v76;
            v98.origin.x = v77;
            v98.size.width = v7;
            v98.size.height = v9;
            v104.origin.x = v19;
            v104.origin.y = v21;
            v104.size.width = v23;
            v104.size.height = v25;
            v26 = CGRectContainsRect(v98, v104);
          }

          v99.origin.y = v76;
          v99.origin.x = v77;
          v99.size.width = v7;
          v99.size.height = v9;
          v105.origin.x = v19;
          v105.origin.y = v21;
          v105.size.width = v23;
          v105.size.height = v25;
          v100 = CGRectIntersection(v99, v105);
          width = v100.size.width;
          height = v100.size.height;
          if (!CGRectIsNull(v100))
          {
            v101.origin.y = v76;
            v101.origin.x = v77;
            v101.size.width = v7;
            v101.size.height = v9;
            v106.origin.x = v19;
            v106.origin.y = v21;
            v106.size.width = v23;
            v106.size.height = v25;
            v102 = CGRectUnion(v101, v106);
            v29 = v102.size.width;
            if (v102.size.width != 0.0 && v102.size.height != 0.0)
            {
              v30 = width * height / (v102.size.width * v102.size.height);
              if (v30 > v75)
              {
                v31 = v16;

                v11 = v26;
                v12 = v31;
                v74 = width / v29;
                v75 = v30;
              }
            }
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v32 = [v10 countByEnumeratingWithState:&v82 objects:v95 count:16];
      v13 = v32;
    }

    while (v32);
  }

  else
  {
    v74 = 0.0;
    v75 = 0.0;
  }

  if (![v12 hasBoundedWidth] || (objc_msgSend(v12, "hasBoundedHeight") & 1) != 0)
  {
    if ([v12 hasBoundedWidth])
    {
      v33 = [v12 hasBoundedHeight];
      v34 = v75 > 0.6 ? v33 : 0;
      if (v34 == 1 && *(a1 + 56) == 1)
      {
        v35 = CROSLogForCategory(6);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v36 = [v12 boundingQuad];
          v37 = [v73 boundingQuad];
          *buf = 138412802;
          v88 = v36;
          v89 = 2112;
          v90 = v37;
          v91 = 2048;
          v92 = v75 * 100.0;
          _os_log_impl(&dword_1B40D2000, v35, OS_LOG_TYPE_DEBUG, "CRFormFieldDedupingStep copying quad geometry from boxed contour based field (quad %@) to detected field (quad %@) - iou = %.2f%%", buf, 0x20u);
        }

        v38 = [v12 boundingQuad];
        goto LABEL_36;
      }
    }

LABEL_51:
    v38 = 0;
    goto LABEL_52;
  }

  if (v74 <= 0.8 || *(a1 + 56) != 1)
  {
    goto LABEL_51;
  }

  v39 = CROSLogForCategory(6);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    v40 = [v12 boundingQuad];
    v41 = [v73 boundingQuad];
    *buf = 138413058;
    v88 = v40;
    v89 = 2112;
    v90 = v41;
    v91 = 2048;
    v92 = v75 * 100.0;
    v93 = 2048;
    v94 = v74 * 100.0;
    _os_log_impl(&dword_1B40D2000, v39, OS_LOG_TYPE_DEBUG, "CRFormFieldDedupingStep copying quad geometry from underlined contour based field (quad %@) to detected field (quad %@) - iou = %.2f%%, horizontal iou = %.2f%%", buf, 0x2Au);
  }

  v42 = [v73 boundingQuad];
  v43 = [v42 denormalizedQuad];

  v44 = [v12 boundingQuad];
  v45 = [v44 denormalizedQuad];
  [v45 bottomLeft];
  v47 = v46;
  v49 = v48;

  v50 = [v12 boundingQuad];
  v51 = [v50 denormalizedQuad];
  [v51 bottomRight];
  v53 = v52;
  v55 = v54;

  [v43 bottomLeft];
  v57 = v56;
  [v43 topLeft];
  v59 = [[CRImageSpaceQuad alloc] initWithTopLeft:v47 topRight:v49 + 2.0 - (v57 - v58) bottomRight:v53 bottomLeft:v55 + 2.0 - (v57 - v58), v53, v55 + 2.0, v47];
  v60 = [CRNormalizedQuad alloc];
  v61 = [v73 boundingQuad];
  [v61 normalizationSize];
  v38 = [(CRNormalizedQuad *)v60 initWithDenormalizedQuad:v59 size:?];

LABEL_36:
  if (v38)
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v62 = *(a1 + 48);
    v63 = [v62 countByEnumeratingWithState:&v78 objects:v86 count:16];
    if (v63)
    {
      v64 = *v79;
      while (2)
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v79 != v64)
          {
            objc_enumerationMutation(v62);
          }

          v66 = *(*(&v78 + 1) + 8 * i);
          if ([v66 fieldSource] != 2)
          {
            v67 = [v66 fieldSource];
            if (v66 != v73 && v67 != 3)
            {
              v69 = [v66 boundingQuad];
              [v69 boundingBoxIOUWithQuad:v38];
              v71 = v70 <= 0.05;

              if (!v71)
              {

                v72 = CROSLogForCategory(6);
                if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1B40D2000, v72, OS_LOG_TYPE_DEBUG, "CRFormFieldDedupingStep reverting contour based geometry update to a field because of overlap with another detected field.", buf, 2u);
                }

                goto LABEL_52;
              }
            }
          }
        }

        v63 = [v62 countByEnumeratingWithState:&v78 objects:v86 count:16];
        if (v63)
        {
          continue;
        }

        break;
      }
    }

    [v73 setBoundingQuad:v38];
    [*(a1 + 40) addObject:v12];
  }

LABEL_52:
  if (v11)
  {
    [*(a1 + 40) addObject:v12];
  }
}

@end