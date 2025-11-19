@interface PSCoreMLScoringModel
@end

@implementation PSCoreMLScoringModel

id __49___PSCoreMLScoringModel_featureOrderFromMetadata__block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [a2 description];
  v3 = [v2 length];
  if (v3 && (v4 = v3, [v2 characterAtIndex:0] - 97 <= 0x19))
  {
    v5 = (2 * v4) | 1;
    v10 = 0;
    v11 = 0;
    if (v5 > 0x200)
    {
      __49___PSCoreMLScoringModel_featureOrderFromMetadata__block_invoke_cold_1(&v10, 2 * v4, v12);
      v6 = v12[0];
    }

    else
    {
      v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v6, (2 * v4) | 1);
    }

    [v2 getCharacters:{v6, v10, v11}];
    *v6 -= 32;
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:v6 length:v4];

    if (v5 >= 0x201)
    {
      free(v6);
    }
  }

  else
  {
    v7 = v2;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __90___PSCoreMLScoringModel_reformatCandidateDictionaryIntoFeatureTensor_candidateList_error___block_invoke(uint64_t a1, char *a2, size_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v27 = a2;
  bzero(a2, a3);
  v8 = [v7 objectAtIndexedSubscript:*(a1 + 80)];
  v9 = [v8 intValue];

  v23 = v7;
  v10 = [v7 objectAtIndexedSubscript:*(a1 + 80) + 1];
  v11 = [v10 intValue];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = *(a1 + 32);
  v12 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = a2;
    v25 = &a2[a3];
    v26 = v11;
    v15 = *v39;
    v16 = 4 * v9;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        v19 = [*(a1 + 40) objectForKeyedSubscript:v18];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __90___PSCoreMLScoringModel_reformatCandidateDictionaryIntoFeatureTensor_candidateList_error___block_invoke_2;
        v28[3] = &unk_1E7C270A8;
        v29 = v19;
        v20 = *(a1 + 48);
        v30 = *(a1 + 56);
        v34 = v14;
        v35 = v26;
        v36 = v25;
        v37 = v27;
        v31 = *(a1 + 64);
        v32 = *(a1 + 72);
        v33 = v18;
        v21 = v19;
        [v20 enumerateObjectsUsingBlock:v28];

        v14 += v16;
      }

      v13 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v13);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __90___PSCoreMLScoringModel_reformatCandidateDictionaryIntoFeatureTensor_candidateList_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v5];
    if (!v7)
    {
LABEL_5:
      [*(a1 + 48) addObject:v5];
      [*(a1 + 56) addObject:*(a1 + 64)];
      goto LABEL_8;
    }
  }

  [v7 doubleValue];
  if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_5;
  }

  v9 = (*(a1 + 72) + 4 * *(a1 + 80) * a3);
  if (v9 > *(a1 + 88) - 4)
  {
    v15 = *(a1 + 72) + 4 * *(a1 + 80) * a3;
    v11 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v13 = *(a1 + 88);
      v12 = *(a1 + 96);
      v14 = *(a1 + 80);
      *buf = 134219266;
      v17 = v15;
      v18 = 2048;
      v19 = v12;
      v20 = 2048;
      v21 = v13;
      v22 = 2114;
      v23 = v5;
      v24 = 2048;
      v25 = a3;
      v26 = 2048;
      v27 = v14;
      _os_log_fault_impl(&dword_1B5ED1000, v11, OS_LOG_TYPE_FAULT, "Pointer %p out of range %p - %p (featureName=%{public}@, featureIdx=%tu, colStride=%tu)", buf, 0x3Eu);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

  else
  {
    CFNumberGetValue(v7, kCFNumberFloat32Type, v9);
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

void *__56___PSCoreMLScoringModel_scoreCandidatesWithCoreMLModel___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSCandidate selfCandidate];
  if ([v2 isEqual:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v4;
}

void __56___PSCoreMLScoringModel_scoreCandidatesWithCoreMLModel___block_invoke_160(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void __58___PSCoreMLScoringModel_batchPredictWithFeatureDictArray___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [*(a1 + 32) objectForKey:?];

  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v9];
    v7 = MEMORY[0x1E696AD98];
    [v6 doubleValue];
    v8 = [v7 numberWithDouble:?];
    [*(a1 + 40) setObject:v8 atIndexedSubscript:a3];
  }

  else
  {
    [*(a1 + 40) setObject:&unk_1F2D8C838 atIndexedSubscript:a3];
  }
}

uint64_t __49___PSCoreMLScoringModel_featureOrderFromMetadata__block_invoke_cold_1(uint64_t a1, size_t size, void *a3)
{
  result = malloc_type_posix_memalign(a1, 8uLL, size, 0x1000040BDFB0063uLL);
  *(a1 + 8) = 0;
  if (result)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v6);
  }

  *a3 = *a1;
  return result;
}

@end