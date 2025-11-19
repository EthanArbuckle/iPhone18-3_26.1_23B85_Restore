@interface CRFormAddTextBasedDetectionFieldsStep
- (id)findMatchesForPattern:(id)a3 fields:(id)a4 lines:(id)a5;
- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6;
- (id)rectangleEstimatesForPatternFields:(id)a3 matching:(id)a4 recognizedTextLines:(id)a5;
- (void)resolveAssignmentForPatternFields:(id)a3 matching:(id)a4 estimates:(id)a5 recognizedTextLines:(id)a6 detectedFields:(id)a7 outNewFields:(id *)a8 outFieldsToDelete:(id *)a9 normalizationSize:(CGSize)a10;
@end

@implementation CRFormAddTextBasedDetectionFieldsStep

- (id)findMatchesForPattern:(id)a3 fields:(id)a4 lines:(id)a5
{
  v30[2] = *MEMORY[0x1E69E9840];
  v26 = a3;
  v7 = a4;
  v29 = a5;
  v27 = [MEMORY[0x1E695DF70] array];
  v8 = 0;
  v28 = [v7 count];
  v9 = v28 >> 1;
  while (v8 < [v29 count])
  {
    v10 = [v29 objectAtIndexedSubscript:v8];
    if (v28 >= 2)
    {
      v12 = 0;
      v11 = 0;
      do
      {
        v13 = [v10 children];
        v14 = v11 + v12 < [v13 count];

        if (!v14)
        {
          break;
        }

        v15 = [v10 children];
        v16 = [v15 objectAtIndexedSubscript:v11 + v12];

        v17 = [v16 text];
        v18 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v19 = [v17 stringByTrimmingCharactersInSet:v18];

        v20 = [v7 objectAtIndexedSubscript:(2 * v12) | 1];
        v21 = [v19 isEqualToString:v20];
        if (v21)
        {
          ++v12;
        }

        else
        {
          v12 = 0;
        }

        v11 += v21 ^ 1u;
      }

      while (v12 < v9);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    if (v12 == v9)
    {
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
      v30[0] = v22;
      v23 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
      v30[1] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
      [v27 addObject:v24];
    }

    ++v8;
  }

  return v27;
}

- (id)rectangleEstimatesForPatternFields:(id)a3 matching:(id)a4 recognizedTextLines:(id)a5
{
  v7 = a3;
  v8 = a4;
  v110 = a5;
  [MEMORY[0x1E695DF70] array];
  v111 = v7;
  v108 = v107 = v8;
  v9 = [v7 count];
  v10 = [v8 objectAtIndexedSubscript:0];
  v109 = [v10 integerValue];

  v11 = [v8 objectAtIndexedSubscript:1];
  v12 = [v11 integerValue];
  v13 = v9 >> 1;

  v101 = v9;
  if (v9 >= 2)
  {
    v17 = v12;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v103 = v13;
    v105 = v17;
    v21 = -v13;
    v16 = 0.0;
    v22 = 1;
    do
    {
      v23 = [v110 objectAtIndexedSubscript:{v109, v101}];
      v24 = [v23 children];
      v25 = [v24 objectAtIndexedSubscript:v17];
      v26 = [v25 boundingQuad];

      [v26 size];
      v28 = v27;
      if (v18)
      {
        v29 = [v111 objectAtIndexedSubscript:v22 - 1];
        v30 = [v29 intValue];

        v31 = [v111 objectAtIndexedSubscript:v22];
        v20 += v30 + [v31 length];
      }

      v16 = v16 + v28;
      v22 += 2;
      --v18;
      ++v17;
      v19 = v26;
    }

    while (v21 != v18);
    v15 = v20;
    v14 = v26;
    v13 = v103;
    v12 = v105;
  }

  else
  {
    v14 = 0;
    v15 = 0.0;
    v16 = 0.0;
  }

  v32 = [v110 objectAtIndexedSubscript:{v109, v101}];
  v33 = [v32 boundingQuad];
  [v33 normalizationSize];
  v35 = v34;
  v37 = v36;

  v38 = [v110 objectAtIndexedSubscript:v109];
  v39 = [v38 children];
  v104 = v12 + v13;
  v106 = [v39 objectAtIndexedSubscript:v12 + v13 - 1];
  v40 = [v106 boundingQuad];
  [v40 boundingBox];
  MaxX = CGRectGetMaxX(v120);
  v42 = [v110 objectAtIndexedSubscript:v109];
  v43 = [v42 children];
  v44 = [v43 objectAtIndexedSubscript:v12];
  v45 = [v44 boundingQuad];
  [v45 boundingBox];
  v46 = v16 / v13;
  v47 = MaxX - CGRectGetMinX(v121);

  v48 = v46 * v37 / v35 * 0.75;
  if (v47 < v15 * v48)
  {
    v49 = MEMORY[0x1E695E0F0];
    v50 = v108;
    goto LABEL_30;
  }

  if (v12 < 1)
  {
    v55 = 0.0;
  }

  else
  {
    v51 = [v110 objectAtIndexedSubscript:v109];
    v52 = [v51 children];
    v53 = [v52 objectAtIndexedSubscript:v12 - 1];
    v54 = [v53 boundingQuad];
    [v54 boundingBox];
    v55 = CGRectGetMaxX(v122);
  }

  if (v102 >= 2)
  {
    v56 = 0;
    v57 = v14;
    do
    {
      v58 = [v110 objectAtIndexedSubscript:v109];
      v59 = [v58 children];
      v60 = [v59 objectAtIndexedSubscript:v12];
      v14 = [v60 boundingQuad];

      v61 = [v111 objectAtIndexedSubscript:v56];
      LODWORD(v60) = [v61 intValue];

      if (v60 < 1)
      {
        v68 = *(MEMORY[0x1E695F058] + 16);
        v116[0] = *MEMORY[0x1E695F058];
        v116[1] = v68;
        v67 = [MEMORY[0x1E696B098] valueWithBytes:v116 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        [v108 addObject:v67];
      }

      else
      {
        v62 = [v111 objectAtIndexedSubscript:v56];
        v63 = [v62 intValue];

        [v14 topLeft];
        v64 = v48 * v63;
        if (v65 - v64 >= v55)
        {
          [v14 topLeft];
          v70 = v69;
          [v14 topLeft];
          v72 = v71;
          v73 = v70 - v64;
          *v118 = v73;
          *&v118[1] = v71;
          *&v118[2] = v48 * v63;
          *&v118[3] = v46;
          v74 = [MEMORY[0x1E696B098] valueWithBytes:v118 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          [v108 addObject:v74];

          v123.origin.x = v73;
          v123.origin.y = v72;
          v123.size.width = v48 * v63;
          v123.size.height = v46;
          v55 = CGRectGetMaxX(v123);
          goto LABEL_21;
        }

        v66 = *(MEMORY[0x1E695F058] + 16);
        v117[0] = *MEMORY[0x1E695F058];
        v117[1] = v66;
        v67 = [MEMORY[0x1E696B098] valueWithBytes:v117 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        [v108 addObject:v67];
      }

LABEL_21:
      v75 = MEMORY[0x1E696B098];
      [v14 boundingBox];
      v115[0] = v76;
      v115[1] = v77;
      v115[2] = v78;
      v115[3] = v79;
      v80 = [v75 valueWithBytes:v115 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      [v108 addObject:v80];

      v56 += 2;
      ++v12;
      v57 = v14;
      --v13;
    }

    while (v13);
  }

  v81 = [v110 objectAtIndexedSubscript:v109];
  v82 = [v81 children];
  v83 = [v82 count];

  MinX = 1.0;
  if (v104 < v83)
  {
    v85 = [v110 objectAtIndexedSubscript:v109];
    v86 = [v85 children];
    v87 = [v86 objectAtIndexedSubscript:v104];
    v88 = [v87 boundingQuad];
    [v88 boundingBox];
    MinX = CGRectGetMinX(v124);
  }

  v89 = [v111 lastObject];
  v90 = [v89 intValue];

  if (v90 < 1)
  {
    v96 = *(MEMORY[0x1E695F058] + 16);
    v112[0] = *MEMORY[0x1E695F058];
    v112[1] = v96;
    v95 = [MEMORY[0x1E696B098] valueWithBytes:v112 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v108 addObject:v95];
  }

  else
  {
    v91 = [v111 lastObject];
    v92 = [v91 intValue];

    [v14 topRight];
    if (v48 * v92 + v93 <= MinX)
    {
      [v14 topRight];
      v98 = v97;
      [v14 topRight];
      v114[0] = v98;
      v114[1] = v99;
      *&v114[2] = v48 * v92;
      *&v114[3] = v46;
      v95 = [MEMORY[0x1E696B098] valueWithBytes:v114 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      [v108 addObject:v95];
    }

    else
    {
      v94 = *(MEMORY[0x1E695F058] + 16);
      v113[0] = *MEMORY[0x1E695F058];
      v113[1] = v94;
      v95 = [MEMORY[0x1E696B098] valueWithBytes:v113 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      [v108 addObject:v95];
    }
  }

  v50 = v108;
  v49 = v108;
LABEL_30:

  return v49;
}

- (void)resolveAssignmentForPatternFields:(id)a3 matching:(id)a4 estimates:(id)a5 recognizedTextLines:(id)a6 detectedFields:(id)a7 outNewFields:(id *)a8 outFieldsToDelete:(id *)a9 normalizationSize:(CGSize)a10
{
  height = a10.height;
  width = a10.width;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v50 = a7;
  v48 = v16;
  v20 = [v16 count];
  v21 = v17;
  v22 = [v17 objectAtIndexedSubscript:0];
  v23 = [v22 integerValue];
  v24 = v20 >> 1;

  v25 = 0;
  do
  {
    v26 = [v18 objectAtIndexedSubscript:2 * v25];
    [v26 rectValue];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v52.origin.x = v28;
    v52.origin.y = v30;
    v52.size.width = v32;
    v52.size.height = v34;
    v35 = v21;
    if (!CGRectIsEmpty(v52))
    {
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __178__CRFormAddTextBasedDetectionFieldsStep_resolveAssignmentForPatternFields_matching_estimates_recognizedTextLines_detectedFields_outNewFields_outFieldsToDelete_normalizationSize___block_invoke;
      v51[3] = &__block_descriptor_72_e39_B32__0___CRFormFieldProviding__8Q16_B24l;
      *&v51[4] = v28;
      *&v51[5] = v30;
      *&v51[6] = v32;
      *&v51[7] = v34;
      v51[8] = a9;
      if ([v50 indexOfObjectPassingTest:v51] == 0x7FFFFFFFFFFFFFFFLL)
      {
        for (i = 0; i < [v19 count]; ++i)
        {
          if (v23 != i)
          {
            v37 = [v19 objectAtIndexedSubscript:i];
            v38 = [v37 boundingQuad];
            [v38 boundingBox];
            v54.origin.x = v39;
            v54.origin.y = v40;
            v54.size.width = v41;
            v54.size.height = v42;
            v53.origin.x = v28;
            v53.origin.y = v30;
            v53.size.width = v32;
            v53.size.height = v34;
            v43 = CGRectIntersectsRect(v53, v54);

            if (v43)
            {
              goto LABEL_10;
            }
          }
        }

        v44 = [[CRNormalizedQuad alloc] initWithNormalizedBoundingBox:v28 size:v30, v32, v34, width, height];
        LOBYTE(v47) = 0;
        v45 = [[CRFormTextFieldOutputRegion alloc] initWithQuad:v44 labelRegion:0 subFields:0 contentType:0 source:1 hasBoundedWidth:0 hasBoundedHeight:v47];
        [*a8 addObject:v45];
      }
    }

LABEL_10:
    v46 = v25++ == v24;
    v21 = v35;
  }

  while (!v46);
}

uint64_t __178__CRFormAddTextBasedDetectionFieldsStep_resolveAssignmentForPatternFields_matching_estimates_recognizedTextLines_detectedFields_outNewFields_outFieldsToDelete_normalizationSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 boundingQuad];
  [v4 boundingBox];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v17.origin.x = v6;
  v17.origin.y = v8;
  v17.size.width = v10;
  v17.size.height = v12;
  v16 = CGRectIntersection(*(a1 + 32), v17);
  IsEmpty = CGRectIsEmpty(v16);
  if ([v3 fieldSource] == 1)
  {
    v14 = ([**(a1 + 64) containsObject:v3] | IsEmpty) ^ 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v35 = a3;
  v32 = a4;
  v36 = a5;
  v33 = a6;
  v10 = CROSLogForCategory(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 136315138;
    *&buf[4] = [v12 UTF8String];
    _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_DEBUG, "CRFormPostProcessor: %s is running.", buf, 0xCu);
  }

  v13 = [v36 contentsWithTypes:8];
  *buf = [MEMORY[0x1E695DF70] array];
  v37 = [MEMORY[0x1E695DF70] array];
  v14 = [v36 text];
  v15 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v16 = [v14 componentsSeparatedByCharactersInSet:v15];
  v34 = [v16 componentsJoinedByString:&stru_1F2BB4348];

  for (i = 0; ; i = v19 + 1)
  {
    v18 = [&unk_1F2BFB218 allKeys];
    v19 = i;
    v20 = i < [v18 count];

    if (!v20)
    {
      break;
    }

    v21 = [&unk_1F2BFB218 allKeys];
    v22 = [v21 objectAtIndexedSubscript:v19];

    v23 = [&unk_1F2BFB218 objectForKeyedSubscript:v22];
    if ([v34 containsString:v22])
    {
      v24 = [(CRFormAddTextBasedDetectionFieldsStep *)self findMatchesForPattern:v22 fields:v23 lines:v13];
      for (j = 0; j < [v24 count]; ++j)
      {
        v26 = [v24 objectAtIndexedSubscript:j];
        v27 = [(CRFormAddTextBasedDetectionFieldsStep *)self rectangleEstimatesForPatternFields:v23 matching:v26 recognizedTextLines:v13];

        if ([v27 count])
        {
          v28 = [v24 objectAtIndexedSubscript:j];
          v29 = [v36 boundingQuad];
          [v29 normalizationSize];
          [(CRFormAddTextBasedDetectionFieldsStep *)self resolveAssignmentForPatternFields:v23 matching:v28 estimates:v27 recognizedTextLines:v13 detectedFields:v35 outNewFields:&v37 outFieldsToDelete:buf normalizationSize:?];
        }
      }
    }
  }

  if ([*buf count] || objc_msgSend(v37, "count"))
  {
    v30 = [v35 mutableCopy];
    [v30 removeObjectsInArray:*buf];
    [v30 addObjectsFromArray:v37];
  }

  else
  {
    v30 = v35;
  }

  return v30;
}

@end