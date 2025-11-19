@interface _LTDisambiguationLinkConfiguration(Daemon)
+ (id)_linkConfigurationWithSourceRange:()Daemon targetRange:unvalidatedAdjacencyList:expectedNumberOfEdges:;
+ (id)linkConfigurationWithEMTSelectionSpan:()Daemon sourceText:targetText:;
+ (id)linkConfigurationWithFTSelectionSpan:()Daemon descriptions:sourceText:targetText:;
@end

@implementation _LTDisambiguationLinkConfiguration(Daemon)

+ (id)_linkConfigurationWithSourceRange:()Daemon targetRange:unvalidatedAdjacencyList:expectedNumberOfEdges:
{
  v23 = *MEMORY[0x277D85DE8];
  v13 = a7;
  if ([v13 count] == a8)
  {
    v14 = [objc_alloc(MEMORY[0x277CE1AF0]) initWithSourceRange:a3 targetRange:a4 unvalidatedAdjacencyList:{a5, a6, v13}];
  }

  else
  {
    v15 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v19 = 134218240;
      v20 = [v13 count];
      v21 = 2048;
      v22 = a8;
      _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Only %zu out of %zu edges were valid, won't create a link for this selectionSpan", &v19, 0x16u);
    }

    v14 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)linkConfigurationWithEMTSelectionSpan:()Daemon sourceText:targetText:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_opt_respondsToSelector())
  {
    v11 = [v8 alternatives];
    v12 = v11;
    v13 = MEMORY[0x277CBEBF8];
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;

    v15 = [v14 _ltCompactMap:&__block_literal_global_9];
    v16 = [v8 source];
    v18 = [v9 lt_codeUnitsRangeFromCodePointsRange:{v16, v17}];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [_LTDisambiguationLinkConfiguration(Daemon) linkConfigurationWithEMTSelectionSpan:v20 sourceText:v8 targetText:?];
      }

      v21 = 0;
    }

    else
    {
      v22 = v18;
      v23 = v19;
      v34 = v15;
      v24 = [v8 projection];
      v26 = [v10 lt_codeUnitsRangeFromCodePointsRange:{v24, v25}];
      if (v26 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = _LTOSLogDisambiguation();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [_LTDisambiguationLinkConfiguration(Daemon) linkConfigurationWithEMTSelectionSpan:v28 sourceText:v8 targetText:?];
        }

        v21 = 0;
      }

      else
      {
        v29 = v26;
        v30 = v27;
        v31 = [v14 count];
        v32 = v29;
        v15 = v34;
        v21 = [a1 _linkConfigurationWithSourceRange:v22 targetRange:v23 unvalidatedAdjacencyList:v32 expectedNumberOfEdges:{v30, v34, v31}];
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)linkConfigurationWithFTSelectionSpan:()Daemon descriptions:sourceText:targetText:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 alternatives];
  v15 = v14;
  v16 = MEMORY[0x277CBEBF8];
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __118___LTDisambiguationLinkConfiguration_Daemon__linkConfigurationWithFTSelectionSpan_descriptions_sourceText_targetText___block_invoke;
  v48[3] = &unk_2789B6050;
  v49 = v11;
  v18 = v11;
  v19 = [v17 _ltCompactMap:v48];
  v20 = [v10 source_range];
  v21 = v20;
  if (v20)
  {
    v44 = a1;
    v46 = v13;
    v22 = [v20 start];
    v23 = [v21 length];
    v24 = [v12 lt_codeUnitsRangeFromCodePointsRange:{v22, v23}];
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v45 = v17;
      v26 = v19;
      v27 = v18;
      v28 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [_LTDisambiguationLinkConfiguration(Daemon) linkConfigurationWithFTSelectionSpan:v28 descriptions:v22 sourceText:v23 targetText:?];
      }

      v29 = 0;
      v18 = v27;
      v19 = v26;
      v17 = v45;
      goto LABEL_22;
    }

    v31 = v24;
    v32 = v25;
    v33 = [v10 projection_ranges];
    v34 = [v33 firstObject];

    if (!v34)
    {
      v40 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v40, OS_LOG_TYPE_INFO, "Can't get target range on selectionSpan; won't create link", buf, 2u);
      }

      v29 = 0;
      v13 = v46;
      goto LABEL_21;
    }

    v43 = v18;
    v35 = [v34 start];
    v36 = [v34 length];
    v42 = v35;
    v37 = [v46 lt_codeUnitsRangeFromCodePointsRange:{v35, v36}];
    if (v37 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v39 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v13 = v46;
        [_LTDisambiguationLinkConfiguration(Daemon) linkConfigurationWithFTSelectionSpan:v39 descriptions:v42 sourceText:v36 targetText:?];
        v29 = 0;
        goto LABEL_20;
      }

      v29 = 0;
    }

    else
    {
      v29 = [v44 _linkConfigurationWithSourceRange:v31 targetRange:v32 unvalidatedAdjacencyList:v37 expectedNumberOfEdges:{v38, v19, objc_msgSend(v17, "count")}];
    }

    v13 = v46;
LABEL_20:
    v18 = v43;
LABEL_21:

    goto LABEL_22;
  }

  v30 = _LTOSLogDisambiguation();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v30, OS_LOG_TYPE_INFO, "No source range set on selectionSpan; won't create link", buf, 2u);
  }

  v29 = 0;
LABEL_22:

  return v29;
}

+ (void)linkConfigurationWithEMTSelectionSpan:()Daemon sourceText:targetText:.cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v13.location = [a2 projection];
  NSStringFromRange(v13);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v4, v5, "Code points target range: %{public}@ cannot be converted to NSString code units target range, target text length: %zu", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)linkConfigurationWithEMTSelectionSpan:()Daemon sourceText:targetText:.cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v13.location = [a2 source];
  NSStringFromRange(v13);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v4, v5, "Code points source range: %{public}@ cannot be converted to NSString code units source range, source text length: %zu", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)linkConfigurationWithFTSelectionSpan:()Daemon descriptions:sourceText:targetText:.cold.1(void *a1, NSUInteger a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v15.location = a2;
  v15.length = a3;
  NSStringFromRange(v15);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_1(&dword_232E53000, v6, v7, "Code points target range: %{public}@ cannot be converted to NSString code units target range, target text length: %zu", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)linkConfigurationWithFTSelectionSpan:()Daemon descriptions:sourceText:targetText:.cold.2(void *a1, NSUInteger a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v15.location = a2;
  v15.length = a3;
  NSStringFromRange(v15);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_1(&dword_232E53000, v6, v7, "Code points source range: %{public}@ cannot be converted to NSString code units source range, source text length: %zu", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end