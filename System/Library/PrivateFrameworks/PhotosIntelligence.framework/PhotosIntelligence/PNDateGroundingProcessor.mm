@interface PNDateGroundingProcessor
+ (id)groundDatesFromDateString:(id)a3;
+ (id)queryParserManagerClass;
+ (void)prewarm;
@end

@implementation PNDateGroundingProcessor

+ (id)groundDatesFromDateString:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E69E9C10];
  v6 = MEMORY[0x1E69E9C10];
  v7 = os_signpost_id_generate(v5);
  info = 0;
  mach_timebase_info(&info);
  v8 = MEMORY[0x1E69E9C10];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v7, "DateGroundingForMemoryCreation", "", &buf, 2u);
  }

  v9 = mach_absolute_time();
  v10 = [a1 queryParserManagerClass];
  if (!v10)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_21:
      v20 = MEMORY[0x1E695E0F0];
      goto LABEL_26;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    v21 = MEMORY[0x1E69E9C10];
    v22 = "[PNDateGroundingProcessor] Memory Creation Manager (Query Parser) is not available for grounding date string %@";
LABEL_30:
    _os_log_error_impl(&dword_1C6F5C000, v21, OS_LOG_TYPE_ERROR, v22, &buf, 0xCu);
    goto LABEL_21;
  }

  v11 = NSSelectorFromString(&cfstr_Enumeratespotl.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    v21 = MEMORY[0x1E69E9C10];
    v22 = "[PNDateGroundingProcessor] No enumerateSpotlightResultsForString:options:withBlock: is found to ground the date string %@";
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PNDateGroundingProcessor] Started grounding the date string using Spotlight QP", &buf, 2u);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  v45 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v12 = objc_alloc_init(MEMORY[0x1E696AC80]);
  [v12 setFormatOptions:819];
  v13 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v12 setTimeZone:v13];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __54__PNDateGroundingProcessor_groundDatesFromDateString___block_invoke;
  v24[3] = &unk_1E82A1A58;
  v25 = v4;
  p_buf = &buf;
  v14 = v12;
  v26 = v14;
  v28 = &v29;
  [v10 v11];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v37 = 0;
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PNDateGroundingProcessor] Finished grounding the date string using Spotlight QP", v37, 2u);
  }

  v15 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v18 = MEMORY[0x1E69E9C10];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *v37 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v7, "DateGroundingForMemoryCreation", "", v37, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v37 = 136315394;
    v38 = "DateGroundingForMemoryCreation";
    v39 = 2048;
    v40 = ((((v15 - v9) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v37, 0x16u);
  }

  if (*(*(&buf + 1) + 40) && (v19 = v30[5]) != 0)
  {
    v36[0] = *(*(&buf + 1) + 40);
    v36[1] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v37 = 0;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PNDateGroundingProcessor] Unable to ground the date string to start date and end date", v37, 2u);
    }

    v20 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&buf, 8);

LABEL_26:

  return v20;
}

void __54__PNDateGroundingProcessor_groundDatesFromDateString___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"attributedParseKey"];
  if (v3)
  {
    v4 = [*(a1 + 32) length];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__PNDateGroundingProcessor_groundDatesFromDateString___block_invoke_2;
    v7[3] = &unk_1E82A1A30;
    v6 = *(a1 + 40);
    v5 = v6;
    v8 = v6;
    v9 = *(a1 + 56);
    [v3 enumerateAttributesInRange:0 options:v4 usingBlock:{0, v7}];
  }
}

void __54__PNDateGroundingProcessor_groundDatesFromDateString___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kQPDateStart"];
  v5 = [v3 objectForKeyedSubscript:@"kQPDateEnd"];

  if (v4 | v5)
  {
    v6 = objc_msgSend(v4, "stringByReplacingOccurrencesOfString:withString:", @"$time.iso("), &stru_1F46CD000;
    v7 = [v6 stringByReplacingOccurrencesOfString:@"" withString:?], &stru_1F46CD000);

    if ([v7 isEqual:@"0"])
    {
      [MEMORY[0x1E695DF00] distantPast];
    }

    else
    {
      [*(a1 + 32) dateFromString:v7];
    }
    v8 = ;
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = objc_msgSend(v5, "stringByReplacingOccurrencesOfString:withString:", @"$time.iso("), &stru_1F46CD000;
    v12 = [v11 stringByReplacingOccurrencesOfString:@"" withString:?], &stru_1F46CD000);

    if ([v12 isEqual:@"2147483647"])
    {
      [MEMORY[0x1E695DF00] distantFuture];
    }

    else
    {
      [*(a1 + 32) dateFromString:v12];
    }
    v13 = ;
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PNDateGroundingProcessor] No start date string and end date string are returned", v16, 2u);
  }
}

+ (void)prewarm
{
  v2 = [a1 queryParserManagerClass];
  if (!v2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v9 = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "[PNDateGroundingProcessor] Memory Creation Manager (Query Parser) is not available for prewarming";
    v6 = &v9;
LABEL_10:
    _os_log_error_impl(&dword_1C6F5C000, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    goto LABEL_8;
  }

  v3 = NSSelectorFromString(&cfstr_Preheat.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "[PNDateGroundingProcessor] No preheat is found for prewarming";
    v6 = buf;
    goto LABEL_10;
  }

  [v2 v3];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PNDateGroundingProcessor] Successfully prewarmed Spotlight Query Parser for Memory Creation", v7, 2u);
  }

LABEL_8:
}

+ (id)queryParserManagerClass
{
  v2 = NSClassFromString(&cfstr_Qpqueryparserm.isa);
  v3 = NSSelectorFromString(&cfstr_Memorycreation_8.isa);
  if (v2 && (v4 = v3, (objc_opt_respondsToSelector() & 1) != 0))
  {
    v5 = [v2 v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end