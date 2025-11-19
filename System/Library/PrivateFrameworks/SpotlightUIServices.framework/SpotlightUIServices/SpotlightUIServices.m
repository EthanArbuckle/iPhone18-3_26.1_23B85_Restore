uint64_t sub_26B8843AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B8843E4()
{
  MEMORY[0x26D6846C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B88441C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B884454()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B884498()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B8844D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B884510()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B884548()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void *__Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SPUISInitLogging()
{
  if (SPUISInitLogging_once != -1)
  {
    SPUISInitLogging_cold_1();
  }
}

uint64_t __SPUISInitLogging_block_invoke()
{
  v0 = os_log_create("com.apple.SpotlightUIServices", "General");
  v1 = SPUISLogHandles;
  SPUISLogHandles = v0;

  qword_280425AB8 = os_log_create("com.apple.SpotlightUIServices", "Recents");

  return MEMORY[0x2821F96F8]();
}

id SPUISGeneralLog()
{
  v2 = SPUISLogHandles;
  if (SPUISLogHandles)
  {
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    SPUISGeneralLog_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

id SPUISRecentsLog()
{
  v2 = qword_280425AB8;
  if (qword_280425AB8)
  {
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    SPUISRecentsLog_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

id whiteSpaceCharacterSet()
{
  if (whiteSpaceCharacterSet_onceToken != -1)
  {
    whiteSpaceCharacterSet_cold_1();
  }

  v1 = whiteSpaceCharacterSet_sTrimSet;

  return v1;
}

uint64_t __whiteSpaceCharacterSet_block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
  v1 = whiteSpaceCharacterSet_sTrimSet;
  whiteSpaceCharacterSet_sTrimSet = v0;

  v2 = whiteSpaceCharacterSet_sTrimSet;

  return [v2 addCharactersInRange:{65532, 0xFFFFLL}];
}

id reorderRanges(void *a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = [a1 sortedArrayUsingComparator:&__block_literal_global_4];
  v3 = [v1 arrayWithArray:v2];

  return v3;
}

uint64_t __reorderRanges_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 rangeValue];
  if (v6 > [v5 rangeValue])
  {
    goto LABEL_2;
  }

  v8 = [v4 rangeValue];
  if (v8 < [v5 rangeValue])
  {
    v7 = -1;
    goto LABEL_9;
  }

  [v4 rangeValue];
  v10 = v9;
  [v5 rangeValue];
  if (v10 < v11)
  {
LABEL_2:
    v7 = 1;
  }

  else
  {
    [v4 rangeValue];
    v13 = v12;
    [v5 rangeValue];
    if (v13 <= v14)
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

LABEL_9:

  return v7;
}

void mergeRanges(void *a1)
{
  v7 = a1;
  v1 = [MEMORY[0x277CCAB58] indexSet];
  if ([v7 count] >= 2)
  {
    v2 = 1;
    do
    {
      v3 = [v7 objectAtIndexedSubscript:v2 - 1];
      v4 = [v3 rangeValue];

      v5 = [v7 objectAtIndexedSubscript:v2];
      v6 = [v5 rangeValue];

      if (v4 == v6)
      {
        [v1 addIndex:v2];
      }

      ++v2;
    }

    while (v2 < [v7 count]);
  }

  if ([v1 count])
  {
    [v7 removeObjectsAtIndexes:v1];
  }
}

id getMatchedRanges(void *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  if ([v3 length])
  {
    v5 = [v4 queryString];
    v6 = [v5 length] == 0;

    if (!v6)
    {
      v7 = SPUISGeneralLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v4 queryTerms];
        v9 = [v4 queryString];
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "queryID")}];
        *buf = 138478595;
        v30 = v3;
        v31 = 2113;
        v32 = v8;
        v33 = 2113;
        v34 = v9;
        v35 = 2113;
        v36 = v10;
        _os_log_impl(&dword_26B882000, v7, OS_LOG_TYPE_DEFAULT, "getting matched ranges for string: %{private}@ queryTerms: %{private}@ queryString: %{private}@ queryID: %{private}@", buf, 0x2Au);
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __getMatchedRanges_block_invoke;
      v22[3] = &unk_279D0C098;
      v22[4] = &v23;
      [v4 evaluateAttribute:v3 ignoreSubtokens:1 skipTranscriptions:1 withHandler:v22];
      if (![v24[5] count])
      {
        v11 = [v4 queryString];
        v12 = [v3 localizedStandardRangeOfString:v11];
        v14 = v13;

        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v24[5];
          v16 = [MEMORY[0x277CCAE60] valueWithRange:{v12, v14}];
          [v15 addObject:v16];
        }
      }

      v17 = reorderRanges(v24[5]);
      v18 = v24[5];
      v24[5] = v17;

      mergeRanges(v24[5]);
    }
  }

  v19 = v24[5];
  _Block_object_dispose(&v23, 8);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void sub_26B8B7744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getMatchedRanges_block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = [MEMORY[0x277CCAE60] valueWithRange:?];
  [v1 addObject:v2];
}

id getFormattedTextsWithHeadTruncation(void *a1, void *a2, int a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a1;
  v43 = objc_opt_new();
  v7 = [v6 stringByReplacingOccurrencesOfString:@"[\t\n]" withString:@" " options:1024 range:{0, objc_msgSend(v6, "length")}];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v8)
  {
    v41 = 0;
    v9 = 0;
    v42 = *v52;
    v39 = a3 ^ 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v52 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v51 + 1) + 8 * i) rangeValue];
        v13 = v12;
        v14 = [v7 length];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v11 - v9;
          v16 = v11 == v9 || v11 > v14;
          if (!v16 && v15 <= v14)
          {
            if (((v39 | v41) & 1) == 0 && v15 >= 0xB)
            {
              if ([v7 length] < 0x15)
              {
                v41 = 0;
              }

              else
              {
                v45 = 0;
                v46 = &v45;
                v47 = 0x3010000000;
                v48 = &unk_26B8D297B;
                v49 = 0;
                v50 = 0;
                v44[0] = MEMORY[0x277D85DD0];
                v44[1] = 3221225472;
                v44[2] = __getFormattedTextsWithHeadTruncation_block_invoke;
                v44[3] = &unk_279D0C0C0;
                v44[4] = &v45;
                [v7 enumerateSubstringsInRange:v9 options:v11 - v9 usingBlock:{1283, v44}];
                v9 = v46[4];
                v15 = v46[5];
                v18 = [MEMORY[0x277D4C3A0] textWithString:@"…"];
                [v43 addObject:v18];

                _Block_object_dispose(&v45, 8);
                v41 = 1;
              }
            }

            v19 = MEMORY[0x277D4C3A0];
            v20 = [v7 substringWithRange:{v9, v15}];
            v21 = [v19 textWithString:v20];

            [v43 addObject:v21];
          }
        }

        v22 = [v7 length];
        v9 = v11 + v13;
        if (v11 != 0x7FFFFFFFFFFFFFFFLL && v13 != 0 && v13 <= v22 && v9 <= v22)
        {
          v26 = MEMORY[0x277D4C3A0];
          v27 = [v7 substringWithRange:{v11, v13}];
          v28 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v29 = [v27 stringByTrimmingCharactersInSet:v28];
          v30 = [v26 textWithString:v29];

          [v30 setIsEmphasized:1];
          [v43 addObject:v30];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v31 = [v7 length];
  if (v9)
  {
    v32 = v31;
    v33 = [v7 length];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL && v32 != v9 && v32 - v9 <= v33 && v32 <= v33)
    {
      v34 = MEMORY[0x277D4C3A0];
      v35 = [v7 substringWithRange:v9];
      v36 = [v34 textWithString:v35];

      [v43 addObject:v36];
    }
  }

  v37 = *MEMORY[0x277D85DE8];

  return v43;
}

void sub_26B8B7C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void removeMatchedRangesFromStringInTitle(void *a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v31 = v10;
    if (removeMatchedRangesFromStringInTitle_onceToken != -1)
    {
      removeMatchedRangesFromStringInTitle_cold_1();
    }

    v32 = v7;
    v33 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v7;
    v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          v16 = [v15 rangeValue];
          v18 = v17;
          v19 = [v8 length];
          if (v16 != 0x7FFFFFFFFFFFFFFFLL && v18 != 0 && v18 <= v19 && v16 + v18 <= v19)
          {
            v23 = [v15 rangeValue];
            v25 = [v8 substringWithRange:{v23, v24}];
            if ([v25 rangeOfCharacterFromSet:removeMatchedRangesFromStringInTitle_symbolsAndPunctuations] != 0x7FFFFFFFFFFFFFFFLL)
            {

              v29 = v33;
              goto LABEL_27;
            }

            v26 = whiteSpaceCharacterSet();
            v27 = [v25 stringByTrimmingCharactersInSet:v26];
            v28 = [v9 localizedCaseInsensitiveContainsString:v27];

            if (v28)
            {
              [v33 addObject:v15];
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v29 = v33;
    [obj removeObjectsInArray:v33];
LABEL_27:

    v10 = v31;
    v7 = v32;
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __removeMatchedRangesFromStringInTitle_block_invoke()
{
  v0 = [MEMORY[0x277CCA900] symbolCharacterSet];
  v1 = [v0 mutableCopy];
  v2 = removeMatchedRangesFromStringInTitle_symbolsAndPunctuations;
  removeMatchedRangesFromStringInTitle_symbolsAndPunctuations = v1;

  v3 = removeMatchedRangesFromStringInTitle_symbolsAndPunctuations;
  v4 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  [v3 formUnionWithCharacterSet:v4];
}

id formattedTextsForStringWithMatchesFromEvaluatorWithHeadTruncaction(void *a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a1;
  v10 = [v8 containsString:v9];
  v11 = [v9 precomposedStringWithCanonicalMapping];

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = getMatchedRanges(v11, v7);
  }

  removeMatchedRangesFromStringInTitle(v12, v11, v8, v7);
  v13 = getFormattedTextsWithHeadTruncation(v11, v12, a4);

  return v13;
}

id getHighlightedRichText(void *a1, void *a2, void *a3, int a4)
{
  v4 = formattedTextsForStringWithMatchesFromEvaluatorWithHeadTruncaction(a1, a2, a3, a4);
  if ([v4 count])
  {
    v5 = objc_opt_new();
    [v5 setFormattedTextPieces:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __getFormattedTextsWithHeadTruncation_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  *(*(*(result + 32) + 8) + 40) += a6;
  *(*(*(result + 32) + 8) + 32) = a5;
  if (*(*(*(result + 32) + 8) + 40) >= 0xAuLL)
  {
    *a7 = 1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_0()
{
  result = *v1;
  v3 = *(v0 + 48);
  v4 = *(v0 + 72);
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t BiomeUtilities.SpotlightDiscoverabilitySignal.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26B8C80A4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26B8BB9E0()
{
  sub_26B8C80E4();
  sub_26B8C7EB4();
  return sub_26B8C8104();
}

uint64_t sub_26B8BBA3C()
{
  sub_26B8C80E4();
  sub_26B8C7EB4();
  return sub_26B8C8104();
}

uint64_t sub_26B8BBA84@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26B8C80A4();

  *a2 = v5 != 0;
  return result;
}

id BiomeUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiomeUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiomeUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BiomeUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiomeUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s19SpotlightUIServices14BiomeUtilitiesC06donateA10UsedSignalyyFZ_0()
{
  if (byte_280425100 == 1)
  {
    v0 = [BiomeLibrary() Discoverability];
    swift_unknownObjectRelease();
    v1 = [v0 Signals];
    swift_unknownObjectRelease();
    v2 = objc_allocWithZone(MEMORY[0x277CF1168]);
    v3 = sub_26B8C7E84();
    v5 = [v2 initWithContentIdentifier:v3 context:0 osBuild:0 userInfo:0];

    v4 = [v1 source];
    [v4 sendEvent_];

    byte_280425100 = 0;
  }
}

unint64_t sub_26B8BBD40()
{
  result = qword_280425108;
  if (!qword_280425108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425108);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BiomeUtilities.SpotlightDiscoverabilitySignal(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for BiomeUtilities.SpotlightDiscoverabilitySignal(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id DefaultsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DefaultsManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultsManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DefaultsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LogCategory.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26B8C80A4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26B8BC004()
{
  sub_26B8C80E4();
  sub_26B8C7EB4();
  return sub_26B8C8104();
}

uint64_t sub_26B8BC070()
{
  sub_26B8C80E4();
  sub_26B8C7EB4();
  return sub_26B8C8104();
}

uint64_t sub_26B8BC0C0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26B8C80A4();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_26B8BC130()
{
  v0 = sub_26B8C7C64();
  __swift_allocate_value_buffer(v0, qword_280425618);
  __swift_project_value_buffer(v0, qword_280425618);
  return sub_26B8C7C54();
}

uint64_t sub_26B8BC1A8()
{
  if (qword_280425610 != -1)
  {
    swift_once();
  }

  v0 = sub_26B8C7C64();

  return __swift_project_value_buffer(v0, qword_280425618);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Log.generalLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280425610 != -1)
  {
    swift_once();
  }

  v2 = sub_26B8C7C64();
  v3 = __swift_project_value_buffer(v2, qword_280425618);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_26B8BC2F0()
{
  result = qword_280425110;
  if (!qword_280425110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425110);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id sub_26B8BC3D8()
{
  result = [objc_allocWithZone(type metadata accessor for SPUISICloudDriveAppLibraryCollectionObserver()) init];
  qword_280425AC0 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_26B8BC4F4()
{
  v1 = v0;
  v28 = sub_26B8C7F54();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_26B8C7F34() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = *(*(sub_26B8C7DD4() - 8) + 64);
  MEMORY[0x28223BE20]();
  v27 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_collectionWorkingQueue;
  v8 = sub_26B8C0840(0, &qword_280425118, 0x277D85C78);
  v26[1] = ".Open-iCloudDrive";
  v26[2] = v8;
  sub_26B8C7DC4();
  v30 = MEMORY[0x277D84F90];
  sub_26B8C0798(&qword_280425120, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425128, &qword_26B8CD730);
  sub_26B8C03B4(&qword_280425130, &qword_280425128, &qword_26B8CD730);
  sub_26B8C7FC4();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v28);
  *&v0[v27] = sub_26B8C7F74();
  *&v0[OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_observationEndWorkItem] = 0;
  v9 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v10 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsForDomain;
  *&v1[v10] = sub_26B8C0278(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for SPUISICloudDriveAppLibraryCollectionObserver();
  v29.receiver = v1;
  v29.super_class = v11;
  v12 = objc_msgSendSuper2(&v29, sel_init);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 defaultCenter];
  v16 = sub_26B8C7E84();
  [v15 addObserver:v14 selector:sel_endObserving name:v16 object:0];

  v17 = [v13 defaultCenter];
  v18 = v14;
  v19 = sub_26B8C7E84();
  [v17 addObserver:v18 selector:sel_beginObserving name:v19 object:0];

  v20 = [objc_opt_self() allFileProviderDomains];
  if (v20)
  {
    v21 = v20;
    sub_26B8C0840(0, &qword_280425158, 0x277CC6420);
    v22 = sub_26B8C7EF4();
  }

  else
  {
    v22 = 0;
  }

  v23 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v18) + 0xC8))(v22);

  (*((*v23 & *v18) + 0xB8))(v24);

  return v18;
}

void sub_26B8BC9E4(uint64_t a1)
{
  v2 = sub_26B8C7DF4();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  v4 = (MEMORY[0x28223BE20])();
  v48 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = v44 - v6;
  v45 = sub_26B8C7DB4();
  v7 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v46 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock;
  [*(a1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock) lock];
  v9 = *(a1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsForDomain);
  if ((v9 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *(a1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsForDomain);
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = sub_26B8C8014() | 0x8000000000000000;
  }

  else
  {
    v15 = -1 << *(v9 + 32);
    v12 = ~v15;
    v11 = v9 + 64;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v13 = v17 & *(v9 + 64);
    v14 = *(a1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsForDomain);
  }

  v18 = 0;
  v44[1] = v12;
  v19 = (v12 + 64) >> 6;
  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v20 = v18;
    v21 = v13;
    v22 = v18;
    if (!v13)
    {
      break;
    }

LABEL_14:
    v23 = (v21 - 1) & v21;
    v24 = *(*(v14 + 56) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v24)
    {
LABEL_20:
      sub_26B8C0888();
      v27 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_observationEndWorkItem;
      if (*(a1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_observationEndWorkItem))
      {
        v28 = *(a1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_observationEndWorkItem);

        sub_26B8C7E24();
      }

      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      *(v31 + 16) = v29;
      *(v31 + 24) = v30;
      aBlock[4] = sub_26B8C0890;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26B8C08A0;
      aBlock[3] = &block_descriptor_33;
      _Block_copy(aBlock);
      v52 = MEMORY[0x277D84F90];
      sub_26B8C0798(&qword_280425160, MEMORY[0x277D85198]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425168, &qword_26B8CD738);
      sub_26B8C03B4(&qword_280425170, &qword_280425168, &qword_26B8CD738);
      sub_26B8C7FC4();
      v32 = sub_26B8C7E34();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      v35 = sub_26B8C7E14();

      v36 = *(a1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_collectionWorkingQueue);

      v37 = v48;
      sub_26B8C7DE4();
      v38 = v49;
      sub_26B8C7E44();
      v39 = *(v50 + 8);
      v40 = v37;
      v41 = v51;
      v39(v40, v51);
      sub_26B8C7F44();
      v39(v38, v41);
      v42 = *(a1 + v27);
      *(a1 + v27) = v35;

      v43 = *(a1 + v47);
      [v43 unlock];

      return;
    }

    while (1)
    {
      [v24 startObserving];

      v18 = v22;
      v13 = v23;
      if ((v14 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_26B8C8044())
      {
        v26 = v25;
        swift_unknownObjectRelease();
        v52 = v26;
        sub_26B8C0840(0, &qword_280425178, 0x277CC63F0);
        swift_dynamicCast();
        v24 = aBlock[0];
        v22 = v18;
        v23 = v13;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      goto LABEL_20;
    }

    v21 = *(v11 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_26B8BCF38()
{
  v0 = sub_26B8C7C64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v7 = sub_26B8C7E04();

      if ((v7 & 1) == 0)
      {
        v8 = sub_26B8BC1A8();
        (*(v1 + 16))(v4, v8, v0);
        v9 = sub_26B8C7C44();
        v10 = sub_26B8C7F14();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_26B882000, v9, v10, "End observing app libraries due to timeout", v11, 2u);
          MEMORY[0x26D684690](v11, -1, -1);
        }

        v12 = (*(v1 + 8))(v4, v0);
        (*((*MEMORY[0x277D85000] & *v6) + 0xC0))(v12);
      }
    }

    v13 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_observationEndWorkItem;
    v14 = *(v6 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_observationEndWorkItem);
    swift_beginAccess();
    v15 = swift_weakLoadStrong();
    if (v14)
    {
      if (!v15 || (v16 = v15, , v16 != v14))
      {

        return;
      }
    }

    else if (v15)
    {
LABEL_13:

      return;
    }

    v17 = *(v6 + v13);
    *(v6 + v13) = 0;
    goto LABEL_13;
  }
}

uint64_t sub_26B8BD19C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_26B8BD258(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v38 = a3;
  v36 = a1;
  v6 = v4;
  v7 = sub_26B8C7DB4();
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26B8C7DD4();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26B8C7C64();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20]();
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26B8BC1A8();
  (*(v16 + 16))(v19, v20, v15);
  v21 = sub_26B8C7C44();
  v22 = sub_26B8C7F14();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = v14;
    v24 = v10;
    v25 = v6;
    v26 = v7;
    v27 = a4;
    v28 = v23;
    *v23 = 0;
    _os_log_impl(&dword_26B882000, v21, v22, v36, v23, 2u);
    v29 = v28;
    a4 = v27;
    v7 = v26;
    v6 = v25;
    v10 = v24;
    v14 = v35;
    MEMORY[0x26D684690](v29, -1, -1);
  }

  (*(v16 + 8))(v19, v15);
  v30 = *&v6[OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_collectionWorkingQueue];
  v31 = swift_allocObject();
  *(v31 + 16) = v6;
  aBlock[4] = v38;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B8C08A0;
  aBlock[3] = a4;
  v32 = _Block_copy(aBlock);
  v33 = v6;
  sub_26B8C7DC4();
  v42 = MEMORY[0x277D84F90];
  sub_26B8C0798(&qword_280425160, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425168, &qword_26B8CD738);
  sub_26B8C03B4(&qword_280425170, &qword_280425168, &qword_26B8CD738);
  sub_26B8C7FC4();
  MEMORY[0x26D683B20](0, v14, v10, v32);
  _Block_release(v32);
  (*(v41 + 8))(v10, v7);
  (*(v39 + 8))(v14, v40);
}

uint64_t sub_26B8BD694(id a1)
{
  v2 = v1;
  v4 = sub_26B8C7C64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26B8BC1A8();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_26B8C7C44();
  v11 = sub_26B8C7F14();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26B882000, v10, v11, "Updating app libraries domains", v12, 2u);
    MEMORY[0x26D684690](v12, -1, -1);
  }

  v13 = (*(v5 + 8))(v8, v4);
  v14 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0xC0))(v13);
  v15 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock;
  [*(v2 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock) lock];
  v16 = sub_26B8C0278(MEMORY[0x277D84F90]);
  v60 = v16;
  v17 = &OBJC_IVAR___SPUISToolResultBuilder__toolIconData;
  if (!a1)
  {
    goto LABEL_50;
  }

  v18 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_56:
    v49 = v17;
    v50 = v16;
    v19 = sub_26B8C8024();
    v16 = v50;
    v17 = v49;
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_50:
    v46 = *(v17 + 336);
    v47 = *(v2 + v46);
    *(v2 + v46) = v16;

    return (*((*v14 & *v2) + 0xB8))([*(v15 + v2) unlock]);
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_50;
  }

LABEL_6:
  v20 = 0;
  v21 = *(v17 + 336);
  v55 = a1;
  v56 = v21;
  v52 = v15;
  v53 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_collectionWorkingQueue;
  v22 = a1 & 0xC000000000000001;
  v15 = &unk_279D0C000;
  v54 = v2;
  v57 = v18;
  while (1)
  {
    if (v22)
    {
      v16 = MEMORY[0x26D683BB0](v20, a1);
    }

    else
    {
      if (v20 >= *(v18 + 16))
      {
        goto LABEL_52;
      }

      v16 = *(a1 + v20 + 4);
    }

    v23 = v16;
    v14 = (v20 + 1);
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ([v16 v15[180]] && (objc_msgSend(v23, sel_needsAuthentication) & 1) == 0)
    {
      break;
    }

LABEL_8:
    ++v20;
    if (v14 == v19)
    {
      v16 = v60;
      v14 = MEMORY[0x277D85000];
      v15 = v52;
      v17 = &OBJC_IVAR___SPUISToolResultBuilder__toolIconData;
      goto LABEL_50;
    }
  }

  v24 = *(v2 + v56);
  if ((v24 & 0xC000000000000001) != 0)
  {
    if (v24 < 0)
    {
      v25 = *(v2 + v56);
    }

    v26 = *(v2 + v56);

    v27 = v23;
    v28 = sub_26B8C8034();

    if (v28)
    {
      v58 = v28;
      sub_26B8C0840(0, &qword_280425178, 0x277CC63F0);
      swift_dynamicCast();
      a1 = v59;

      v18 = v57;
      if (a1)
      {
        goto LABEL_30;
      }
    }

    else
    {

      v18 = v57;
    }
  }

  else if (*(v24 + 16))
  {
    v29 = *(v2 + v56);

    v30 = sub_26B8BF874(v23);
    if (v31)
    {
      a1 = *(*(v24 + 56) + 8 * v30);

      if (a1)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }
  }

  v32 = [objc_opt_self() defaultManager];
  a1 = [v32 appLibraryCollectionForProviderDomain_];

  if (!a1)
  {
    v42 = sub_26B8BF98C(v23);

    a1 = v55;
    v15 = &unk_279D0C000;
    goto LABEL_8;
  }

  [a1 setWorkingQueue_];
LABEL_30:
  v15 = v60;
  if ((v60 & 0xC000000000000001) != 0)
  {
    if (v60 >= 0)
    {
      v15 = (v60 & 0xFFFFFFFFFFFFFF8);
    }

    v33 = a1;
    v16 = sub_26B8C8024();
    if (__OFADD__(v16, 1))
    {
      goto LABEL_54;
    }

    v15 = sub_26B8BFAD8(v15, (v16 + 1));
    v60 = v15;
  }

  else
  {
    v34 = a1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = v15;
  v18 = sub_26B8BF874(v23);
  v37 = v15[2];
  v17 = (v36 & 1) == 0;
  v16 = &v37[v17];
  if (__OFADD__(v37, v17))
  {
    goto LABEL_53;
  }

  v2 = v36;
  if (v15[3] >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v15 = v59;
      if ((v36 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      sub_26B8C0118();
      v15 = v59;
      if ((v2 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_43;
  }

  sub_26B8BFD24(v16, isUniquelyReferenced_nonNull_native);
  v38 = sub_26B8BF874(v23);
  if ((v2 & 1) == (v39 & 1))
  {
    v18 = v38;
    v15 = v59;
    if ((v2 & 1) == 0)
    {
LABEL_46:
      v15[(v18 >> 6) + 8] = (v15[(v18 >> 6) + 8] | (1 << v18));
      *&v15[6][8 * v18] = v23;
      *&v15[7][8 * v18] = a1;

      v43 = v15[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_55;
      }

      v15[2] = v45;
      goto LABEL_48;
    }

LABEL_43:
    v40 = v15[7];
    v41 = *&v40[8 * v18];
    *&v40[8 * v18] = a1;

LABEL_48:
    v60 = v15;
    v2 = v54;
    a1 = v55;
    v18 = v57;
    v15 = &unk_279D0C000;
    goto LABEL_8;
  }

  sub_26B8C0840(0, &qword_280425158, 0x277CC6420);
  result = sub_26B8C80D4();
  __break(1u);
  return result;
}

void *sub_26B8BDC90(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_26B8C8034();

    if (v4)
    {
      sub_26B8C0840(0, &qword_280425178, 0x277CC63F0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_26B8BF874(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void *sub_26B8BDDDC(void *a1)
{
  v3 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock;
  [*(v1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock) lock];
  v4 = *(v1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsForDomain);

  v5 = sub_26B8BDC90(a1, v4);

  [*(v1 + v3) unlock];
  return v5;
}

uint64_t sub_26B8BDF3C()
{
  v0 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v1 = [objc_opt_self() allFileProviderDomains];
  if (!v1)
  {
    return v0;
  }

  v2 = v1;
  sub_26B8C0840(0, &qword_280425158, 0x277CC6420);
  v3 = sub_26B8C7EF4();

  if (qword_2804257B0 != -1)
  {
    swift_once();
  }

  result = (*((*MEMORY[0x277D85000] & *qword_280425AC0) + 0xB8))();
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  result = sub_26B8C8024();
  v5 = result;
  if (!result)
  {
LABEL_14:

    return MEMORY[0x277D84F90];
  }

LABEL_6:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D683BB0](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = sub_26B8BE220(v7);
      sub_26B8BE0F4(v9);
    }

    while (v5 != v6);

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B8BE0F4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_26B8BF0F4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_26B8C7BE4();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_26B8BE220(void *a1)
{
  v113[1] = *MEMORY[0x277D85DE8];
  v2 = sub_26B8C7C64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v97 - v8;
  v10 = sub_26B8C7BE4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v112 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v111 = &v97 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v107 = &v97 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v97 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v97 - v23;
  MEMORY[0x28223BE20](v22);
  v108 = &v97 - v25;
  v26 = [a1 isiCloudDriveProvider];
  v110 = v11;
  v106 = v2;
  if (v26 && ([a1 needsAuthentication] & 1) == 0)
  {
    v109 = v7;
    v105 = v9;
    v45 = objc_opt_self();
    v46 = [a1 identifier];
    v113[0] = 0;
    v47 = [v45 rootURLForProviderDomainID:v46 cachePolicy:2 error:v113];

    v48 = v113[0];
    if (v47)
    {
      v49 = v108;
      sub_26B8C7BC4();
      v50 = v48;

      sub_26B8BECB0(v49, v24);
      v27 = sub_26B8BF0F4(0, 1, 1, MEMORY[0x277D84F90]);
      v31 = *(v27 + 2);
      v32 = *(v27 + 3);
      v33 = v31 + 1;
      v99 = v3;
      if (v31 < v32 >> 1)
      {
        goto LABEL_24;
      }

      goto LABEL_45;
    }

    v70 = v113[0];
    v71 = sub_26B8C7B94();

    swift_willThrow();
    v72 = sub_26B8BC1A8();
    (*(v3 + 16))(v109, v72, v2);
    v21 = a1;
    v73 = sub_26B8C7C44();
    v24 = sub_26B8C7F24();

    if (os_log_type_enabled(v73, v24))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      *(v74 + 4) = v21;
      *v75 = v21;
      v76 = v21;
      _os_log_impl(&dword_26B882000, v73, v24, "Failed to retrieve root URL for %@", v74, 0xCu);
      sub_26B8C06E4(v75);
      v77 = v75;
      v2 = v106;
      MEMORY[0x26D684690](v77, -1, -1);
      MEMORY[0x26D684690](v74, -1, -1);
    }

    (*(v3 + 8))(v109, v2);
    v27 = MEMORY[0x277D84F90];
    v9 = v105;
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  while (1)
  {
    if (qword_2804257B0 != -1)
    {
      swift_once();
    }

    v28 = (*((*MEMORY[0x277D85000] & *qword_280425AC0) + 0xD0))(a1);
    if (!v28)
    {
      break;
    }

    v105 = v9;
    v29 = v28;
    v30 = [v28 items];

    sub_26B8C0840(0, &qword_280425190, 0x277CC63E8);
    v31 = sub_26B8C7EF4();

    if (v31 >> 62)
    {
      v33 = sub_26B8C8024();
      v98 = a1;
      v99 = v3;
      if (!v33)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v32 = v31 & 0xFFFFFFFFFFFFFF8;
      v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v98 = a1;
      v99 = v3;
      if (!v33)
      {
        goto LABEL_39;
      }
    }

    if (v33 >= 1)
    {
      v34 = 0;
      v35 = v11;
      v36 = (v11 + 16);
      v108 = (v35 + 32);
      v109 = (v35 + 8);
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x26D683BB0](v34, v31);
        }

        else
        {
          v37 = *(v31 + 8 * v34 + 32);
        }

        v38 = v37;
        v39 = [v37 fileURL];
        if (v39)
        {
          v40 = v111;
          v41 = v39;
          sub_26B8C7BC4();

          (*v36)(v112, v40, v10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_26B8BF0F4(0, *(v27 + 2) + 1, 1, v27);
          }

          v43 = *(v27 + 2);
          v42 = *(v27 + 3);
          if (v43 >= v42 >> 1)
          {
            v27 = sub_26B8BF0F4(v42 > 1, v43 + 1, 1, v27);
          }

          v44 = v110;
          (*(v110 + 8))(v111, v10);
          *(v27 + 2) = v43 + 1;
          (*(v44 + 32))(&v27[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v43], v112, v10);
        }

        else
        {
        }

        ++v34;
      }

      while (v33 != v34);
LABEL_39:

      v9 = v105;
      v2 = v106;
      a1 = v98;
      v3 = v99;
      break;
    }

    __break(1u);
LABEL_45:
    v27 = sub_26B8BF0F4(v32 > 1, v33, 1, v27);
LABEL_24:
    *(v27 + 2) = v33;
    v51 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v52 = *(v11 + 72);
    v103 = *(v11 + 32);
    v104 = v11 + 32;
    v103(&v27[v51 + v52 * v31], v24, v10);
    v98 = a1;
    v53 = [a1 storageURLs];
    v109 = v10;
    v54 = sub_26B8C7EF4();

    v55 = *(v54 + 16);
    if (v55)
    {
      v102 = v51;
      v97 = v54;
      v24 = (v54 + v51);
      v56 = v11 + 16;
      v57 = *(v11 + 16);
      v58 = (v56 - 8);
      v100 = v57;
      v101 = v56;
      do
      {
        v60 = v109;
        v57(v21, v24, v109);
        sub_26B8C0798(&qword_280425198, MEMORY[0x277CC9260]);
        if (sub_26B8C7E54())
        {
          v59 = *v58;
          (*v58)(v21, v60);
        }

        else
        {
          v61 = v57;
          v62 = v58;
          v63 = v52;
          v64 = v21;
          v61(v107, v21, v60);
          v66 = *(v27 + 2);
          v65 = *(v27 + 3);
          if (v66 >= v65 >> 1)
          {
            v27 = sub_26B8BF0F4(v65 > 1, v66 + 1, 1, v27);
          }

          v59 = *v62;
          v67 = v21;
          v68 = v109;
          (*v62)(v67, v109);
          *(v27 + 2) = v66 + 1;
          v69 = &v27[v102 + v66 * v63];
          v52 = v63;
          v103(v69, v107, v68);
          v21 = v64;
          v58 = v62;
          v57 = v100;
        }

        v24 += v52;
        --v55;
      }

      while (v55);
    }

    else
    {

      v59 = *(v11 + 8);
    }

    v78 = v109;
    v59(v108, v109);
    v10 = v78;
    v9 = v105;
    v2 = v106;
    a1 = v98;
    v3 = v99;
    v11 = v110;
  }

  v79 = sub_26B8BC1A8();
  (*(v3 + 16))(v9, v79, v2);
  v80 = v2;
  v81 = v3;
  v82 = a1;
  v83 = v9;
  v84 = sub_26B8C7C44();
  v85 = sub_26B8C7F14();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v113[0] = v88;
    *v86 = 138412546;
    *(v86 + 4) = v82;
    *v87 = v82;
    *(v86 + 12) = 2080;
    v89 = v82;

    v91 = MEMORY[0x26D683AC0](v90, v10);
    v93 = v92;

    v94 = sub_26B8BF2CC(v91, v93, v113);

    *(v86 + 14) = v94;
    _os_log_impl(&dword_26B882000, v84, v85, "rootURLs for domain %@: %s", v86, 0x16u);
    sub_26B8C06E4(v87);
    MEMORY[0x26D684690](v87, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x26D684690](v88, -1, -1);
    MEMORY[0x26D684690](v86, -1, -1);

    (*(v81 + 8))(v83, v106);
  }

  else
  {

    (*(v81 + 8))(v83, v80);
  }

  v95 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t sub_26B8BECB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26B8C7BA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26B8C7BE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(a2, a1, v9);
  if (sub_26B8C7BB4() == 0xD000000000000010 && 0x800000026B8CF3F0 == v14)
  {
  }

  else
  {
    v15 = sub_26B8C80B4();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  v17[0] = 0xD000000000000013;
  v17[1] = 0x800000026B8CF410;
  (*(v5 + 104))(v8, *MEMORY[0x277CC91D8], v4);
  sub_26B8C0690();
  sub_26B8C7BD4();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(a2, v9);
  return (*(v10 + 32))(a2, v13, v9);
}

BOOL sub_26B8BEF20()
{
  v0 = *(sub_26B8BDF3C() + 16);

  return v0 != 0;
}

id SPUISICloudDriveUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SPUISICloudDriveUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUISICloudDriveUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_26B8BF0B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

size_t sub_26B8BF0F4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251A0, &qword_26B8CD7B8);
  v10 = *(sub_26B8C7BE4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26B8C7BE4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_26B8BF2CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26B8BF398(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26B8C07E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26B8BF398(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26B8BF4A4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26B8C8004();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26B8BF4A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_26B8BF4F0(a1, a2);
  sub_26B8BF620(&unk_287C50890);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26B8BF4F0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26B8BF70C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26B8C8004();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26B8C7ED4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26B8BF70C(v10, 0);
        result = sub_26B8C7FE4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26B8BF620(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26B8BF780(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26B8BF70C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251A8, &qword_26B8CD7C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26B8BF780(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251A8, &qword_26B8CD7C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_26B8BF874(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_26B8C7F94();

  return sub_26B8BF8B8(a1, v5);
}

unint64_t sub_26B8BF8B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_26B8C0840(0, &qword_280425158, 0x277CC6420);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_26B8C7FA4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_26B8BF98C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_26B8BF874(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_26B8BFF8C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_26B8C0118();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_26B8C8034();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_26B8C8024();
  v8 = sub_26B8BFAD8(v4, v7);

  v9 = sub_26B8BF874(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_26B8BFF8C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_26B8BFAD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251B8, &qword_26B8CD7C8);
    v2 = sub_26B8C8084();
    v20 = v2;
    sub_26B8C8014();
    v3 = sub_26B8C8044();
    if (v3)
    {
      v4 = v3;
      sub_26B8C0840(0, &qword_280425158, 0x277CC6420);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_26B8C0840(0, &qword_280425178, 0x277CC63F0);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_26B8BFD24(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_26B8C7F94();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_26B8C8044();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_26B8BFD24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251B8, &qword_26B8CD7C8);
  result = sub_26B8C8074();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_26B8C7F94();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void sub_26B8BFF8C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26B8C7FD4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_26B8C7F94();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

id sub_26B8C0118()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251B8, &qword_26B8CD7C8);
  v2 = *v0;
  v3 = sub_26B8C8064();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_26B8C0278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251B8, &qword_26B8CD7C8);
    v3 = sub_26B8C8094();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_26B8BF874(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B8C03B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26B8C0408()
{
  v1 = *(v0 + 16);
  v20 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock;
  [*(v1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock) lock];
  v2 = *(v1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsForDomain);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsForDomain);
    }

    v4 = sub_26B8C8014();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v6 = ~v9;
    v5 = v2 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v2 + 64);
    v8 = *(v1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsForDomain);
  }

  v19 = v6;
  v12 = (v6 + 64) >> 6;

  v13 = 0;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v13;
    v15 = v7;
    v16 = v13;
    if (!v7)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v8 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_20:
      sub_26B8C0888();
      [*(v1 + v20) unlock];
      return;
    }

    while (1)
    {
      [v18 stopObserving];

      v13 = v16;
      v7 = v17;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_26B8C8044())
      {
        swift_unknownObjectRelease();
        sub_26B8C0840(0, &qword_280425178, 0x277CC63F0);
        swift_dynamicCast();
        v18 = v21;
        v16 = v13;
        v17 = v7;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
      goto LABEL_20;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_26B8C0690()
{
  result = qword_280425180;
  if (!qword_280425180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425180);
  }

  return result;
}

uint64_t sub_26B8C06E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425188, &qword_26B8CD7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26B8C0798(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B8C07E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26B8C0840(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_26B8C0890()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_26B8BCF38();
}

id SPUISMarketplaceKitUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SPUISMarketplaceKitUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUISMarketplaceKitUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SPUISMarketplaceKitUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUISMarketplaceKitUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SPUISPasteboardHistoryOption.title.getter(uint64_t a1)
{
  v2 = sub_26B8C7C14();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_26B8C7E74();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  switch(a1)
  {
    case 604800:
      sub_26B8C7E64();
      sub_26B8C0840(0, &qword_2804251C0, 0x277CCA8D8);
      if (!sub_26B8C7F84())
      {
        [objc_opt_self() mainBundle];
      }

      goto LABEL_12;
    case 28800:
      sub_26B8C7E64();
      sub_26B8C0840(0, &qword_2804251C0, 0x277CCA8D8);
      if (!sub_26B8C7F84())
      {
        [objc_opt_self() mainBundle];
      }

LABEL_12:
      sub_26B8C7C04();
      return sub_26B8C7EA4();
    case 1800:
      sub_26B8C7E64();
      sub_26B8C0840(0, &qword_2804251C0, 0x277CCA8D8);
      if (!sub_26B8C7F84())
      {
        [objc_opt_self() mainBundle];
      }

      goto LABEL_12;
  }

  result = sub_26B8C80C4();
  __break(1u);
  return result;
}

uint64_t SPUISPasteboardHistoryOption.init(rawValue:)(uint64_t result)
{
  if (result == 604800)
  {
    v1 = 604800;
  }

  else
  {
    v1 = 0;
  }

  if (result == 28800)
  {
    v2 = 28800;
  }

  else
  {
    v2 = v1;
  }

  if (result != 1800)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26B8C0E14()
{
  v1 = *v0;
  sub_26B8C80E4();
  MEMORY[0x26D683CB0](v1);
  return sub_26B8C8104();
}

uint64_t sub_26B8C0E88()
{
  v1 = *v0;
  sub_26B8C80E4();
  MEMORY[0x26D683CB0](v1);
  return sub_26B8C8104();
}

uint64_t *sub_26B8C0ECC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result == 1800 || v2 == 604800 || v2 == 28800)
  {
    v5 = 0;
  }

  else
  {
    v2 = 0;
    v5 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_26B8C0F1C@<X0>(uint64_t *a1@<X8>)
{
  result = SPUISPasteboardHistoryOption.title.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26B8C0FD4()
{
  result = sub_26B8C7E84();
  qword_2804257C8 = result;
  return result;
}

uint64_t sub_26B8C1030()
{
  result = sub_26B8C7E84();
  qword_2804257D8 = result;
  return result;
}

uint64_t sub_26B8C108C()
{
  result = sub_26B8C7E84();
  qword_2804257E8 = result;
  return result;
}

uint64_t sub_26B8C10E8()
{
  result = sub_26B8C7E84();
  qword_2804257F8 = result;
  return result;
}

uint64_t sub_26B8C1144()
{
  result = sub_26B8C7E84();
  qword_280425808 = result;
  return result;
}

id sub_26B8C11A0(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_26B8C1200()
{
  result = [objc_allocWithZone(type metadata accessor for SPUISPasteboardHistoryDefaultsManager()) init];
  qword_280425818 = result;
  return result;
}

id SPUISPasteboardHistoryDefaultsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static SPUISPasteboardHistoryDefaultsManager.shared.getter()
{
  if (qword_280425810 != -1)
  {
    swift_once();
  }

  v1 = qword_280425818;

  return v1;
}

id sub_26B8C131C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_26B8C7E84();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    return v2;
  }

  v4 = [objc_opt_self() standardUserDefaults];

  return v4;
}

uint64_t sub_26B8C1400()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  v2 = sub_26B8C7E84();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_26B8C7FB4();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_26B8C3700(v9);
    return 28800;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 28800;
  }

  v4 = 28800;
  if (v6 == 28800)
  {
    v4 = 28800;
  }

  if (v6 == 604800)
  {
    v4 = 604800;
  }

  if (v6 == 1800)
  {
    return 1800;
  }

  else
  {
    return v4;
  }
}

void sub_26B8C1650(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x60))() != a1)
  {
    v4 = (*((*v3 & *v1) + 0x58))();
    v5 = sub_26B8C7E84();
    [v4 setInteger:a1 forKey:v5];
  }
}

uint64_t sub_26B8C1750@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

void (*sub_26B8C1804(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_26B8C1400();
  return sub_26B8C184C;
}

void sub_26B8C184C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x60))() != v1)
  {
    v5 = (*((*v3 & *v2) + 0x58))();
    v4 = sub_26B8C7E84();
    [v5 setInteger:v1 forKey:v4];
  }
}

id sub_26B8C1980()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  v2 = sub_26B8C7E84();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_26B8C7FB4();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_26B8C0840(0, &qword_2804251D0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v4 = [v6 BOOLValue];

      return v4;
    }
  }

  else
  {
    sub_26B8C3700(v9);
  }

  return 0;
}

void sub_26B8C1BE0(char a1)
{
  v2 = a1 & 1;
  v3 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x78))() & 1) != v2)
  {
    v4 = (*((*v3 & *v1) + 0x58))();
    v5 = sub_26B8C7E84();
    [v4 setBool:v2 forKey:v5];
  }
}

uint64_t sub_26B8C1CE4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result & 1;
  return result;
}

void (*sub_26B8C1D9C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_26B8C1980() & 1;
  return sub_26B8C1DE8;
}

void sub_26B8C1DE8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = MEMORY[0x277D85000];
  if (v2 != ((*((*MEMORY[0x277D85000] & **a1) + 0x78))() & 1))
  {
    v5 = (*((*v3 & *v1) + 0x58))();
    v4 = sub_26B8C7E84();
    [v5 setBool:v2 forKey:v4];
  }
}

id sub_26B8C1F9C()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  v2 = sub_26B8C7E84();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_26B8C2150(char a1)
{
  v2 = a1 & 1;
  v3 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x90))() & 1) != v2)
  {
    v4 = (*((*v3 & *v1) + 0x58))();
    v5 = sub_26B8C7E84();
    [v4 setBool:v2 forKey:v5];
  }
}

uint64_t sub_26B8C2254@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result & 1;
  return result;
}

void (*sub_26B8C230C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v4 = ((*MEMORY[0x277D85000] & *v1) + 88) & 0xFFFFFFFFFFFFLL | 0x8A61000000000000;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = v3();
  v6 = sub_26B8C7E84();
  v7 = [v5 BOOLForKey_];

  *(a1 + 24) = v7;
  return sub_26B8C23DC;
}

void sub_26B8C23DC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != ((*((*MEMORY[0x277D85000] & **a1) + 0x90))() & 1))
  {
    v3 = *(a1 + 16);
    v5 = (*(a1 + 8))();
    v4 = sub_26B8C7E84();
    [v5 setBool:v2 forKey:v4];
  }
}

id sub_26B8C2570()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  v2 = sub_26B8C7E84();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_26B8C2664(char a1)
{
  v3 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0xA8))() & 1) != (a1 & 1))
  {
    v4 = *((*v3 & *v1) + 0x58);
    v5 = v4();
    v6 = sub_26B8C7E84();
    v7 = [v5 objectForKey_];

    if (v7)
    {
      sub_26B8C7FB4();
      swift_unknownObjectRelease();
      v8 = sub_26B8C3700(v11);
    }

    else
    {
      memset(v11, 0, sizeof(v11));
      sub_26B8C3700(v11);
      v8 = (*((*v3 & *v1) + 0x68))(28800);
    }

    v9 = (v4)(v8);
    v10 = sub_26B8C7E84();
    [v9 setBool:a1 & 1 forKey:v10];
  }
}

uint64_t sub_26B8C2814@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result & 1;
  return result;
}

void (*sub_26B8C28CC(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x58))();
  v4 = sub_26B8C7E84();
  v5 = [v3 BOOLForKey_];

  *(a1 + 8) = v5;
  return sub_26B8C2990;
}

id sub_26B8C2A64()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  v2 = sub_26B8C7E84();
  v3 = [v1 integerForKey_];

  return v3;
}

void sub_26B8C2C14(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xC0))() != a1)
  {
    v4 = (*((*v3 & *v1) + 0x58))();
    v5 = sub_26B8C7E84();
    [v4 setInteger:a1 forKey:v5];
  }
}

uint64_t sub_26B8C2D14@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

void (*sub_26B8C2DC8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v4 = ((*MEMORY[0x277D85000] & *v1) + 88) & 0xFFFFFFFFFFFFLL | 0x8A61000000000000;
  a1[2] = v3;
  a1[3] = v4;
  v5 = v3();
  v6 = sub_26B8C7E84();
  v7 = [v5 integerForKey_];

  *a1 = v7;
  return sub_26B8C2E98;
}

void sub_26B8C2E98(uint64_t *a1)
{
  v2 = *a1;
  if ((*((*MEMORY[0x277D85000] & *a1[1]) + 0xC0))() != v2)
  {
    v3 = a1[3];
    v5 = (a1[2])();
    v4 = sub_26B8C7E84();
    [v5 setInteger:v2 forKey:v4];
  }
}

uint64_t sub_26B8C3028()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0xA8))() & 1) == 0)
  {
    return 0;
  }

  v2 = *((*v1 & *v0) + 0x90);

  return v2();
}

uint64_t sub_26B8C30C4()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x90))() & 1) == 0)
  {
    return 1;
  }

  v2 = *((*v1 & *v0) + 0xD8);

  return v2();
}

uint64_t sub_26B8C3160()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v3 = v2();
  v4 = sub_26B8C7E84();
  v5 = [v3 objectForKey_];

  if (!v5)
  {
    v32 = 0u;
    v33 = 0u;
    result = sub_26B8C3700(&v32);
LABEL_5:
    v8 = (v2)(result);
    v9 = sub_26B8C7E84();
    v10 = [v8 objectForKey_];

    if (v10)
    {
      sub_26B8C7FB4();
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    v32 = v30;
    v33 = v31;
    if (*(&v31 + 1))
    {
      v11 = swift_dynamicCast();
      if (v11)
      {
        if (v28)
        {
          if (v28 >= 1)
          {
            (*((*v1 & *v0) + 0xB0))(1);
          }

          if (v28 == 1800 || v28 == 28800 || v28 == 604800)
          {
            return (*((*v1 & *v0) + 0xC8))(2);
          }

          goto LABEL_36;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v11 = sub_26B8C3700(&v32);
    }

    if (((*((*v1 & *v0) + 0x90))(v11) & 1) == 0)
    {
      return (*((*v1 & *v0) + 0xC8))(2);
    }

    v12 = v2();
    v13 = sub_26B8C7E84();
    v14 = [v12 arrayForKey_];

    if (!v14)
    {
      goto LABEL_34;
    }

    v15 = sub_26B8C7EF4();

    v16 = *(v15 + 16);
    if (v16)
    {
      v27[4] = v15;
      v17 = v15 + 32;
      v18 = MEMORY[0x277D84F90];
      do
      {
        sub_26B8C07E4(v17, &v32);
        sub_26B8C3768(&v32, &v30);
        if (swift_dynamicCast())
        {
          v20 = v29;
          if (v29)
          {
            v21 = v28;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_26B8C38AC(0, *(v18 + 2) + 1, 1, v18);
            }

            v23 = *(v18 + 2);
            v22 = *(v18 + 3);
            if (v23 >= v22 >> 1)
            {
              v18 = sub_26B8C38AC((v22 > 1), v23 + 1, 1, v18);
            }

            *(v18 + 2) = v23 + 1;
            v19 = &v18[16 * v23];
            *(v19 + 4) = v21;
            *(v19 + 5) = v20;
          }
        }

        v17 += 32;
        --v16;
      }

      while (v16);
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
    }

    *&v32 = 0xD000000000000017;
    *(&v32 + 1) = 0x800000026B8CF610;
    MEMORY[0x28223BE20](v24);
    v27[2] = &v32;
    v25 = sub_26B8C3800(sub_26B8C39B8, v27, v18);

    v1 = MEMORY[0x277D85000];
    if ((v25 & 1) == 0)
    {
LABEL_34:
      v26 = 1;
      goto LABEL_35;
    }

LABEL_33:
    v26 = 0;
LABEL_35:
    (*((*v1 & *v0) + 0xB0))(v26);
LABEL_36:
    (*((*v1 & *v0) + 0x68))(28800);
    return (*((*v1 & *v0) + 0xC8))(2);
  }

  sub_26B8C7FB4();
  swift_unknownObjectRelease();
  v6 = sub_26B8C3700(&v32);
  result = (*((*v1 & *v0) + 0xC0))(v6);
  if (result == 2)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_26B8C3670()
{
  swift_unknownObjectRetain();
  sub_26B8C7FB4();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v1);
}

id SPUISPasteboardHistoryDefaultsManager.init()()
{
  *&v0[OBJC_IVAR___SPUISPasteboardHistoryDefaultsManager_currentVersion] = 2;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUISPasteboardHistoryDefaultsManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_26B8C3700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251C8, &qword_26B8CD810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_26B8C3768(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id SPUISPasteboardHistoryDefaultsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUISPasteboardHistoryDefaultsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26B8C3800(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

char *sub_26B8C38AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251F8, &qword_26B8CD9B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26B8C39B8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26B8C80B4() & 1;
  }
}

unint64_t sub_26B8C3A38()
{
  result = qword_2804251E0;
  if (!qword_2804251E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804251E0);
  }

  return result;
}

unint64_t sub_26B8C3A90()
{
  result = qword_2804251E8;
  if (!qword_2804251E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804251F0, &qword_26B8CD8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804251E8);
  }

  return result;
}

uint64_t sub_26B8C4078(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425218, &qword_26B8CDA10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1);
  return sub_26B8C7CD4();
}

unint64_t sub_26B8C4148(uint64_t a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425248, &qword_26B8CDA60);
  v2 = *(*(v48 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v48);
  v47 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v46 = &v43 - v5;
  v49 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425250, &qword_26B8CDA68);
    v6 = sub_26B8C8094();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v7 = v49 + 64;
  v8 = 1 << *(v49 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v49 + 64);
  v11 = (v8 + 63) >> 6;
  v43 = v6 + 8;

  v13 = 0;
  v45 = v6;
  v44 = v7;
  while (v10)
  {
    v18 = v13;
LABEL_14:
    v19 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v20 = v19 | (v18 << 6);
    v21 = *(v49 + 56);
    v22 = (*(v49 + 48) + 16 * v20);
    v24 = *v22;
    v50 = v22[1];
    v23 = v50;
    v25 = sub_26B8C7D84();
    v26 = *(v25 - 8);
    v27 = v21 + *(v26 + 72) * v20;
    v28 = v48;
    v29 = v46;
    (*(v26 + 16))(&v46[*(v48 + 48)], v27, v25);
    *v29 = v24;
    v29[1] = v23;
    v30 = v29;
    v31 = v47;
    sub_26B8C5A10(v30, v47);
    v32 = *(v28 + 48);
    v33 = *v31;
    v34 = v31[1];
    v52 = v25;
    v53 = MEMORY[0x277D72A68];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v51);
    (*(v26 + 32))(boxed_opaque_existential_1, v31 + v32, v25);
    sub_26B8C5AE4(&v51, v55);
    v36 = v33;
    sub_26B8C5AE4(v55, v56);
    sub_26B8C5AE4(v56, &v54);

    v37 = v33;
    v6 = v45;
    result = sub_26B8C4690(v37, v34);
    if (v38)
    {
      v14 = (v6[6] + 16 * result);
      v15 = v14[1];
      *v14 = v36;
      v14[1] = v34;
      v16 = result;

      v17 = (v6[7] + 40 * v16);
      __swift_destroy_boxed_opaque_existential_0(v17);
      result = sub_26B8C5AE4(&v54, v17);
    }

    else
    {
      if (v6[2] >= v6[3])
      {
        goto LABEL_20;
      }

      *(v43 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v39 = (v6[6] + 16 * result);
      *v39 = v36;
      v39[1] = v34;
      result = sub_26B8C5AE4(&v54, v6[7] + 40 * result);
      v40 = v6[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_21;
      }

      v6[2] = v42;
    }

    v13 = v18;
    v7 = v44;
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v11)
    {

      return v6;
    }

    v10 = *(v7 + 8 * v18);
    ++v13;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id SPUISWindowTabUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SPUISWindowTabUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUISWindowTabUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SPUISWindowTabUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUISWindowTabUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26B8C4690(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26B8C80E4();
  sub_26B8C7EB4();
  v6 = sub_26B8C8104();

  return sub_26B8C4708(a1, a2, v6);
}

unint64_t sub_26B8C4708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26B8C80B4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26B8C47C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425240, &qword_26B8CDA58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425258, &unk_26B8CDA70);
    v8 = sub_26B8C8094();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26B8C5AFC(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_26B8C4690(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_26B8C7D84();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_26B8C499C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v129 = a6;
  v128 = a5;
  v133 = a4;
  v132 = a3;
  v131 = a2;
  v130 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425200, &qword_26B8CD9F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v134 = &v121 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425208, &qword_26B8CDA00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v135 = &v121 - v11;
  v12 = sub_26B8C7CA4();
  v136 = *(v12 - 8);
  v137 = v12;
  v13 = *(v136 + 64);
  MEMORY[0x28223BE20](v12);
  v125 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26B8C7D84();
  v144 = *(v15 - 8);
  v145 = v15;
  v16 = *(v144 + 64);
  MEMORY[0x28223BE20](v15);
  v143 = (&v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425210, &qword_26B8CDA08);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v127 = &v121 - v20;
  v21 = sub_26B8C7D54();
  v141 = *(v21 - 8);
  v142 = v21;
  v22 = *(v141 + 64);
  MEMORY[0x28223BE20](v21);
  v138 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_26B8C7D94();
  v139 = *(v24 - 8);
  v140 = v24;
  v25 = *(v139 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v126 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v121 - v28;
  v30 = sub_26B8C7C14();
  v152 = *(v30 - 8);
  v31 = *(v152 + 64);
  MEMORY[0x28223BE20](v30);
  v151 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425218, &qword_26B8CDA10);
  v147 = *(v33 - 8);
  v148 = v33;
  v34 = *(v147 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = (&v121 - v35);
  v37 = sub_26B8C7CE4();
  v149 = *(v37 - 8);
  v150 = v37;
  v38 = *(v149 + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = &v121 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425220, &qword_26B8CDA18);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v47 = &v121 - v46;
  v48 = sub_26B8C7C74();
  v153 = *(v48 - 8);
  v154 = v48;
  v49 = *(v153 + 64);
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v121 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v54 = &v121 - v53;
  sub_26B8C7D24();
  v146 = sub_26B8C7D14();
  v122 = v52;
  v124 = v54;
  v123 = v29;
  sub_26B8C7CB4();
  swift_getKeyPath();
  v55 = swift_allocObject();
  *(v55 + 16) = 0xD000000000000028;
  *(v55 + 24) = 0x800000026B8CF810;
  *v36 = v55;
  v57 = v147;
  v56 = v148;
  (*(v147 + 104))(v36, *MEMORY[0x277D721C8], v148);
  sub_26B8C58F4();
  sub_26B8C594C();
  sub_26B8C7D34();

  (*(v57 + 8))(v36, v56);
  v58 = *(v149 + 8);
  v59 = v41;
  v60 = v150;
  v58(v59, v150);
  v61 = v151;
  sub_26B8C7BF4();
  sub_26B8C7D04();

  (*(v152 + 8))(v61, v30);
  v58(v43, v60);
  v67 = v153;
  v66 = v154;
  if ((*(v153 + 48))(v47, 1, v154) == 1)
  {
    v62 = &qword_280425220;
    v63 = &qword_26B8CDA18;
    v64 = v47;
  }

  else
  {
    (*(v67 + 32))(v124, v47, v66);
    v68 = swift_allocObject();
    v68[2] = 0xD000000000000010;
    v68[3] = 0x800000026B8CF840;
    v68[4] = 0x6154776F646E6957;
    v68[5] = 0xEF797469746E4562;
    v69 = v123;
    *v123 = v68;
    v70 = *MEMORY[0x277D72D28];
    v71 = v139;
    v72 = *(v139 + 104);
    v152 = 0;
    v73 = v140;
    v72(v69, v70, v140);
    (*(v71 + 16))(v126, v69, v73);
    v149 = sub_26B8C7DA4();
    v74 = *(v149 - 8);
    v148 = *(v74 + 56);
    v150 = (v74 + 56);
    v75 = v127;
    v148(v127, 1, 1, v149);

    v76 = v138;
    sub_26B8C7D44();
    v77 = v142;
    v78 = swift_allocBox();
    (*(v141 + 16))(v79, v76, v77);
    v80 = v144;
    *v143 = v78;
    v81 = *MEMORY[0x277D729F8];
    v82 = *(v80 + 104);
    v129 = v80 + 104;
    v146 = v82;
    v83 = v145;
    v82();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425238, &qword_26B8CDA50);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425240, &qword_26B8CDA58);
    v85 = *(*(v84 - 8) + 72);
    v86 = (*(*(v84 - 8) + 80) + 32) & ~*(*(v84 - 8) + 80);
    v147 = 2 * v85;
    v87 = swift_allocObject();
    v151 = v87;
    *(v87 + 16) = xmmword_26B8CD9C0;
    v88 = (v87 + v86);
    v89 = *(v84 + 48);
    v128 = v84;
    *v88 = 7368801;
    *(v88 + 1) = 0xE300000000000000;
    v90 = sub_26B8C7D74();
    v91 = swift_allocBox();
    v93 = v92;
    v148(v75, 1, 1, v149);

    sub_26B8C7D64();
    v94 = *MEMORY[0x277D72970];
    v150 = *(*(v90 - 8) + 104);
    v150(v93, v94, v90);
    *&v88[v89] = v91;
    v95 = *MEMORY[0x277D72A58];
    v96 = v83;
    v97 = v146;
    v146(&v88[v89], v95, v96);
    v98 = &v88[v85];
    v99 = *(v84 + 48);
    *v98 = 0xD000000000000019;
    *(v98 + 1) = 0x800000026B8CF8C0;
    v100 = swift_allocBox();
    v101 = v133;
    *v102 = v132;
    v102[1] = v101;
    v103 = v90;
    v104 = v145;
    v150(v102, *MEMORY[0x277D729B8], v103);
    *&v98[v99] = v100;
    v105 = &v98[v99];
    v107 = v153;
    v106 = v154;
    v109 = v143;
    v108 = v144;
    v97(v105, v95, v104);
    v110 = &v88[v147];
    v111 = *(v128 + 48);
    *v110 = 0x6154776F646E6977;
    *(v110 + 1) = 0xE900000000000062;
    (*(v108 + 16))(&v110[v111], v109, v104);

    v112 = sub_26B8C47C0(v151);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v107 + 16))(v122, v124, v106);
    sub_26B8C4148(v112);

    v113 = sub_26B8C7CF4();
    (*(*(v113 - 8) + 56))(v134, 1, 1, v113);
    v114 = v135;
    v115 = v152;
    sub_26B8C7C84();
    if (!v115)
    {
      v117 = v136;
      v116 = v137;
      (*(v136 + 56))(v114, 0, 1, v137);
      v118 = v125;
      (*(v117 + 32))(v125, v114, v116);
      v119 = [objc_allocWithZone(MEMORY[0x277D4C358]) init];
      v120 = sub_26B8C7C94();
      [v119 setToolInvocationData_];

      (*(v117 + 8))(v118, v116);
      (*(v108 + 8))(v109, v104);
      (*(v141 + 8))(v138, v142);
      (*(v139 + 8))(v123, v140);
      (*(v107 + 8))(v124, v106);
      return v119;
    }

    (*(v108 + 8))(v109, v104);
    (*(v141 + 8))(v138, v142);
    (*(v139 + 8))(v123, v140);
    (*(v107 + 8))(v124, v106);
    (*(v136 + 56))(v114, 1, 1, v137);
    v62 = &qword_280425208;
    v63 = &qword_26B8CDA00;
    v64 = v114;
  }

  sub_26B8C59B0(v64, v62, v63);
  return 0;
}

unint64_t sub_26B8C58F4()
{
  result = qword_280425228;
  if (!qword_280425228)
  {
    sub_26B8C7CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425228);
  }

  return result;
}

unint64_t sub_26B8C594C()
{
  result = qword_280425230;
  if (!qword_280425230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280425218, &qword_26B8CDA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425230);
  }

  return result;
}

uint64_t sub_26B8C59B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26B8C5A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425248, &qword_26B8CDA60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26B8C5AE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26B8C5AFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425240, &qword_26B8CDA58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id SPUISQuickWebsiteSearchUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SPUISQuickWebsiteSearchUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUISQuickWebsiteSearchUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SPUISQuickWebsiteSearchUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUISQuickWebsiteSearchUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26B8C5D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v122 = a6;
  v121 = a5;
  v120 = a4;
  v119 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425200, &qword_26B8CD9F8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v123 = &v112 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425208, &qword_26B8CDA00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v124 = &v112 - v13;
  v126 = sub_26B8C7CA4();
  v125 = *(v126 - 8);
  v14 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v116 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26B8C7D84();
  v134 = *(v16 - 8);
  v135 = v16;
  v17 = *(v134 + 64);
  MEMORY[0x28223BE20](v16);
  v133 = (&v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425210, &qword_26B8CDA08);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v118 = &v112 - v21;
  v22 = sub_26B8C7D54();
  v131 = *(v22 - 8);
  v132 = v22;
  v23 = *(v131 + 64);
  MEMORY[0x28223BE20](v22);
  v128 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_26B8C7D94();
  v129 = *(v130 - 8);
  v25 = *(v129 + 64);
  v26 = MEMORY[0x28223BE20](v130);
  v117 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v127 = (&v112 - v28);
  v29 = sub_26B8C7C14();
  v144 = *(v29 - 8);
  v145 = v29;
  v30 = *(v144 + 64);
  MEMORY[0x28223BE20](v29);
  v143 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425218, &qword_26B8CDA10);
  v138 = *(v32 - 8);
  v139 = v32;
  v33 = *(v138 + 64);
  MEMORY[0x28223BE20](v32);
  v137 = (&v112 - v34);
  v35 = sub_26B8C7CE4();
  v141 = *(v35 - 8);
  v142 = v35;
  v36 = *(v141 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v112 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v140 = &v112 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425220, &qword_26B8CDA18);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v112 - v43;
  v45 = sub_26B8C7C74();
  v146 = *(v45 - 8);
  v147 = v45;
  v46 = *(v146 + 64);
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v112 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v51 = &v112 - v50;
  v148 = a1;
  v149 = a2;

  MEMORY[0x26D683A80](0xD000000000000019, 0x800000026B8CF920);
  v52 = v148;
  v53 = v149;
  sub_26B8C7D24();
  v136 = sub_26B8C7D14();
  v112 = v49;
  v113 = a1;
  v114 = a2;
  v115 = v51;
  sub_26B8C7CB4();
  swift_getKeyPath();
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  *(v54 + 24) = v53;
  v56 = v137;
  v55 = v138;
  *v137 = v54;
  v57 = v139;
  (*(v55 + 104))(v56, *MEMORY[0x277D721C8], v139);
  sub_26B8C58F4();
  sub_26B8C594C();
  v58 = v140;
  sub_26B8C7D34();

  (*(v55 + 8))(v56, v57);
  v59 = v142;
  v60 = *(v141 + 8);
  v60(v39, v142);
  v61 = v143;
  sub_26B8C7BF4();
  sub_26B8C7D04();

  (*(v144 + 8))(v61, v145);
  v60(v58, v59);
  v67 = v146;
  v66 = v147;
  if ((*(v146 + 48))(v44, 1, v147) == 1)
  {
    v62 = &qword_280425220;
    v63 = &qword_26B8CDA18;
    v64 = v44;
  }

  else
  {
    (*(v67 + 32))(v115, v44, v66);
    v68 = swift_allocObject();
    v69 = v114;
    v68[2] = v113;
    v68[3] = v69;
    v68[4] = 0xD000000000000020;
    v68[5] = 0x800000026B8CF940;
    v70 = v127;
    *v127 = v68;
    v71 = v129;
    v72 = v130;
    (*(v129 + 104))(v70, *MEMORY[0x277D72D28], v130);
    (*(v71 + 16))(v117, v70, v72);
    v73 = sub_26B8C7DA4();
    (*(*(v73 - 8) + 56))(v118, 1, 1, v73);

    v74 = v128;
    sub_26B8C7D44();
    v75 = v132;
    v76 = swift_allocBox();
    (*(v131 + 16))(v77, v74, v75);
    v78 = v133;
    *v133 = v76;
    v79 = *MEMORY[0x277D729F8];
    v80 = v134;
    v81 = v135;
    v82 = *(v134 + 104);
    v144 = v134 + 104;
    v145 = v82;
    v82(v78, v79, v135);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425238, &qword_26B8CDA50);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425240, &qword_26B8CDA58);
    v84 = *(*(v83 - 8) + 72);
    v85 = (*(*(v83 - 8) + 80) + 32) & ~*(*(v83 - 8) + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_26B8CDA80;
    v87 = (v86 + v85);
    v88 = *(v83 + 48);
    *v87 = 0x65746973626577;
    *(v87 + 1) = 0xE700000000000000;
    (*(v80 + 16))(&v87[v88], v78, v81);
    v89 = &v87[v84];
    *v89 = 1836213620;
    *(v89 + 1) = 0xE400000000000000;
    if (v122)
    {
      v90 = v121;
    }

    else
    {
      v90 = 0;
    }

    if (v122)
    {
      v91 = v122;
    }

    else
    {
      v91 = 0xE000000000000000;
    }

    v92 = *(v83 + 48);
    v93 = sub_26B8C7D74();
    v94 = swift_allocBox();
    v143 = 0;
    v95 = v94;
    *v96 = v90;
    v96[1] = v91;
    v97 = v135;
    (*(*(v93 - 8) + 104))(v96, *MEMORY[0x277D729B8], v93);
    *&v89[v92] = v95;
    v98 = &v89[v92];
    v99 = v115;
    v101 = v146;
    v100 = v147;
    v145(v98, *MEMORY[0x277D72A58], v97);

    v102 = sub_26B8C47C0(v86);
    swift_setDeallocating();
    v103 = v100;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v101 + 16))(v112, v99, v100);
    sub_26B8C4148(v102);

    v104 = sub_26B8C7CF4();
    (*(*(v104 - 8) + 56))(v123, 1, 1, v104);
    v105 = v124;
    v106 = v143;
    sub_26B8C7C84();
    if (!v106)
    {
      v107 = v125;
      v108 = v126;
      (*(v125 + 56))(v105, 0, 1, v126);
      v109 = v116;
      (*(v107 + 32))(v116, v105, v108);
      v110 = [objc_allocWithZone(MEMORY[0x277D4C358]) init];
      v111 = sub_26B8C7C94();
      [v110 setToolInvocationData_];

      (*(v107 + 8))(v109, v108);
      (*(v134 + 8))(v133, v97);
      (*(v131 + 8))(v128, v132);
      (*(v129 + 8))(v127, v130);
      (*(v101 + 8))(v99, v103);
      return v110;
    }

    (*(v134 + 8))(v133, v97);
    (*(v131 + 8))(v128, v132);
    (*(v129 + 8))(v127, v130);
    (*(v101 + 8))(v99, v103);
    (*(v125 + 56))(v105, 1, 1, v126);
    v62 = &qword_280425208;
    v63 = &qword_26B8CDA00;
    v64 = v105;
  }

  sub_26B8C59B0(v64, v62, v63);
  return 0;
}

void SPUISGeneralLog_cold_1(void *a1)
{
  if (SPUISInitLogging_once != -1)
  {
    dispatch_once(&SPUISInitLogging_once, &__block_literal_global_16);
  }

  *a1 = SPUISLogHandles;
}

void SPUISRecentsLog_cold_1(void *a1)
{
  if (SPUISInitLogging_once != -1)
  {
    dispatch_once(&SPUISInitLogging_once, &__block_literal_global_16);
  }

  *a1 = qword_280425AB8;
}