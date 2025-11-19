@interface VMUOSTransactionsAnalyzer
- (id)analysisSummaryWithError:(id *)a3;
@end

@implementation VMUOSTransactionsAnalyzer

- (id)analysisSummaryWithError:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__5;
  v54 = __Block_byref_object_dispose__5;
  v55 = 0;
  v4 = [(VMUProcessObjectGraph *)self->super._graph realizedClasses];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __54__VMUOSTransactionsAnalyzer_analysisSummaryWithError___block_invoke;
  v49[3] = &unk_1E8278898;
  v49[4] = &v50;
  [v4 enumerateInfosWithBlock:v49];
  if (!v51[5])
  {
    v13 = 0;
    goto LABEL_28;
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v7 = [v6 invertedSet];

  graph = self->super._graph;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __54__VMUOSTransactionsAnalyzer_analysisSummaryWithError___block_invoke_2;
  v30[3] = &unk_1E82788C0;
  v33 = &v50;
  v34 = &v41;
  v30[4] = self;
  v35 = &v45;
  v9 = v5;
  v31 = v9;
  v10 = v7;
  v32 = v10;
  v36 = &v37;
  [(VMUObjectGraph *)graph enumerateObjectsWithBlock:v30];
  v11 = objc_opt_new();
  if ([v9 count])
  {
    if (*(v38 + 6) && [(VMUProcessObjectGraph *)self->super._graph objectContentLevelForNodeLabels]!= 3)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Memory graph was not recorded with -fullContent so no transaction descriptions are available"];
      v20 = [VMUAnalyzerSummaryField alloc];
      v12 = [(VMUAnalyzerSummaryField *)v20 initWithKey:kVMUAnalysisDataKey[0] numericalValue:0 objectValue:v19 fieldType:0];
      [v11 addObject:v12];
    }

    else
    {
      v12 = 0;
    }

    [v9 sortUsingComparator:&__block_literal_global_7];
    v28 = v12;
    v29 = v10;
    v16 = objc_opt_new();
    v21 = 0;
    v22 = 0;
    while ([v9 count] > v21)
    {
      if (v21 >= 5 && [v9 count] - 5 >= v21)
      {
        if (v21 == 6)
        {
          [v16 appendFormat:@"%.*s...\n", v22, "                "];
        }
      }

      else
      {
        v23 = [v9 objectAtIndexedSubscript:v21];
        v24 = [v23 rangeOfString:@"]"];
        if ((v46[3] - v24) >= 7)
        {
          v22 = 7;
        }

        else
        {
          v22 = v46[3] - v24;
        }

        [v16 appendFormat:@"%.*s%@\n", v22, "                ", v23, v28];
      }

      ++v21;
    }

    v10 = v29;
    v25 = -[VMUAnalyzerSummaryField initWithKey:numericalValue:objectValue:fieldType:]([VMUAnalyzerSummaryField alloc], "initWithKey:numericalValue:objectValue:fieldType:", @"Count", [v9 count], 0, 1);

    [v11 addObject:v25];
    v26 = [VMUAnalyzerSummaryField alloc];
    v18 = [(VMUAnalyzerSummaryField *)v26 initWithKey:kVMUAnalysisDataKey[0] numericalValue:0 objectValue:v16 fieldType:0];

    [v11 addObject:v18];
  }

  else
  {
    v14 = *(v42 + 6);
    if (!v14)
    {
      v13 = 0;
      goto LABEL_27;
    }

    v15 = "transactions exist";
    if (v14 == 1)
    {
      v15 = "transaction exists";
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u %s but no object content labels are available to determine the duration or description.", *(v42 + 6), v15];
    v17 = [VMUAnalyzerSummaryField alloc];
    v18 = [(VMUAnalyzerSummaryField *)v17 initWithKey:kVMUAnalysisDataKey[0] numericalValue:0 objectValue:v16 fieldType:0];
    [v11 addObject:v18];
  }

  v13 = v11;

LABEL_27:
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
LABEL_28:

  _Block_object_dispose(&v50, 8);

  return v13;
}

void __54__VMUOSTransactionsAnalyzer_analysisSummaryWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v11 = a3;
  if ([v11 infoType] == 1)
  {
    v8 = [v11 className];
    if ([v8 isEqualToString:@"OS_os_transaction"])
    {
      v9 = [v11 binaryName];
      v10 = [v9 isEqualToString:@"libxpc.dylib"];

      if (v10)
      {
        objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
        *a5 = 1;
      }
    }

    else
    {
    }
  }
}

void __54__VMUOSTransactionsAnalyzer_analysisSummaryWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[1] >> 60 != 1 || a3[2] != *(*(*(a1 + 56) + 8) + 40))
  {
    return;
  }

  v5 = a1 + 64;
  ++*(*(*(a1 + 64) + 8) + 24);
  v6 = MEMORY[0x1E696AEC0];
  v7 = [*(*(a1 + 32) + 8) labelForNode:a2];
  v18 = [v6 stringWithFormat:@"%@  %#llx", v7, *a3];

  v8 = [v18 rangeOfString:@"]"];
  v9 = v18;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v18 substringFromIndex:1];
    [v10 floatValue];
    v12 = v11;

    if (v12 < 10.0)
    {
      v17 = -1;
      v9 = v18;
    }

    else
    {
      v13 = *(*(a1 + 72) + 8);
      v14 = *(v13 + 24);
      if (v8 > v14)
      {
        v14 = v8;
      }

      *(v13 + 24) = v14;
      [*(a1 + 40) addObject:v18];
      v15 = [v18 substringFromIndex:v8 + 1];
      v16 = [v15 rangeOfCharacterFromSet:*(a1 + 48)];

      v9 = v18;
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_12;
      }

      v5 = a1 + 80;
      v17 = 1;
    }

    *(*(*v5 + 8) + 24) += v17;
  }

LABEL_12:
}

uint64_t __54__VMUOSTransactionsAnalyzer_analysisSummaryWithError___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 substringFromIndex:1];
  [v5 floatValue];
  v7 = v6;

  v8 = [v4 substringFromIndex:1];

  [v8 floatValue];
  v10 = v9;

  if (v7 > v10)
  {
    return -1;
  }

  else
  {
    return v7 < v10;
  }
}

@end