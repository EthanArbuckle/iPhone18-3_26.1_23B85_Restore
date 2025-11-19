@interface SPCalculatorQuery
- (SPCalculatorQuery)initWithUserQuery:(id)a3 queryGroupId:(unint64_t)a4 options:(unint64_t)a5 queryContext:(id)a6;
- (void)start;
@end

@implementation SPCalculatorQuery

- (SPCalculatorQuery)initWithUserQuery:(id)a3 queryGroupId:(unint64_t)a4 options:(unint64_t)a5 queryContext:(id)a6
{
  v12.receiver = self;
  v12.super_class = SPCalculatorQuery;
  v6 = [(SPKQuery *)&v12 initWithUserQuery:a3 queryGroupId:a4 options:0 queryContext:a6];
  if (v6)
  {
    v7 = qos_class_self();
    v8 = dispatch_get_global_queue(v7, 2uLL);
    v9 = dispatch_queue_create_with_target_V2("Calculator", 0, v8);
    queue = v6->_queue;
    v6->_queue = v9;
  }

  return v6;
}

- (void)start
{
  v19.receiver = self;
  v19.super_class = SPCalculatorQuery;
  [(SPKQuery *)&v19 start];
  if (![(SPKQuery *)self sendEmptyResponseIfNecessaryForSourceKind:4])
  {
    v3 = [(SPKQuery *)self userQueryString];
    v4 = [(SPKQuery *)self queryContext];
    v5 = [(SPKQuery *)self delegate];
    v6 = [v5 queryIdent];
    v7 = [v5 clientBundleID];
    v8 = [objc_alloc(MEMORY[0x277D4C658]) initWithInput:v3 triggerEvent:objc_msgSend(v4 indexType:"whyQuery") queryId:{2, v6}];
    v9 = [MEMORY[0x277D4BEC0] sharedProxy];
    [v9 sendFeedbackType:5 feedback:v8 queryId:v6 clientID:v7];

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__SPCalculatorQuery_start__block_invoke;
    block[3] = &unk_279CFE038;
    block[4] = self;
    v15 = v3;
    v17 = v7;
    v18 = v6;
    v16 = v8;
    v11 = v7;
    v12 = v8;
    v13 = v3;
    dispatch_async(queue, block);
  }
}

void __26__SPCalculatorQuery_start__block_invoke(uint64_t a1)
{
  v27[7] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setUsesGroupingSeparator:1];
  [v2 setMaximumIntegerDigits:20];
  [v2 setMaximumFractionDigits:10];
  [v2 setNumberStyle:1];
  v3 = MEMORY[0x277CBEC38];
  v4 = *MEMORY[0x277CF70E8];
  v26[0] = *MEMORY[0x277CF70C0];
  v26[1] = v4;
  v27[0] = MEMORY[0x277CBEC38];
  v27[1] = v2;
  v26[2] = *MEMORY[0x277CF70B0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:enableConversion];
  v27[2] = v5;
  v6 = *MEMORY[0x277CF70D0];
  v26[3] = *MEMORY[0x277CF70C8];
  v26[4] = v6;
  v27[3] = v3;
  v27[4] = v3;
  v7 = *MEMORY[0x277CF70B8];
  v26[5] = *MEMORY[0x277CF70D8];
  v26[6] = v7;
  v27[5] = v3;
  v27[6] = v3;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:7];

  v9 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __26__SPCalculatorQuery_start__block_invoke_2;
  v21[3] = &unk_279CFE010;
  objc_copyWeak(v24, &location);
  v20 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v24[1] = *(a1 + 64);
  v13 = v12;
  *&v14 = v11;
  *(&v14 + 1) = v13;
  v22 = v20;
  v23 = v14;
  v15 = MEMORY[0x26D67F7A0](v21);
  v16 = MEMORY[0x277CF70F0];
  v17 = [*v9 userQueryString];
  v18 = [v16 evaluate:v17 options:v8 resultHandler:v15];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);

  v19 = *MEMORY[0x277D85DE8];
}

void __26__SPCalculatorQuery_start__block_invoke_2(uint64_t a1, void *a2)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = [v3 formattedResult];
    if ([v5 length])
    {
      v6 = [v3 isTrivial];

      if ((v6 & 1) == 0)
      {
        v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
        v8 = [MEMORY[0x277CBEAF8] systemLocale];
        [v7 setLocale:v8];

        [v7 setNumberStyle:1];
        [v7 setMaximumFractionDigits:10];
        v9 = [v3 formattedResult];
        v10 = [v7 numberFromString:v9];

        v11 = [v7 numberFromString:*(a1 + 40)];
        v12 = [v3 formattedResult];
        if ([v12 isEqualToString:*(a1 + 40)] & 1) != 0 || (objc_msgSend(v10, "isEqual:", v11))
        {

LABEL_7:
          v13 = [objc_alloc(MEMORY[0x277D65860]) initWithQueryID:objc_msgSend(*(a1 + 32) sourceKind:"queryGroupId") error:{4, 0}];
          v14 = [WeakRetained responseHandler];
          (v14)[2](v14, v13);

LABEL_8:
LABEL_11:

          goto LABEL_12;
        }

        v17 = [*(a1 + 40) length];

        if (v17 < 2)
        {
          goto LABEL_7;
        }

        v18 = [v3 unitType];
        v19 = [v3 conversions];
        v51 = v10;
        if ([v19 count])
        {
        }

        else
        {
          v20 = [v3 inputValueAndUnit];

          if (!v20)
          {
            v22 = 1;
            goto LABEL_18;
          }
        }

        v21 = objc_opt_new();
        [v21 setNumberStyle:1];
        [v21 setUsesGroupingSeparator:1];
        [v21 setMaximumFractionDigits:2];
        [v3 setNumberFormatter:v21];

        v22 = 0;
LABEL_18:
        v23 = objc_opt_new();
        [v23 beginDictionary];
        v24 = [v3 formattedExpression];
        [v23 encodeObject:v24 withKey:@"SSAttributeCalculatorInput"];

        v25 = [v3 formattedResult];
        v52 = v23;
        [v23 encodeObject:v25 withKey:@"SSAttributeCalculatorOutput"];

        if (v22)
        {
          v26 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [v23 encodeObject:v26 withKey:@"SSAttributeIsCalculation"];
        }

        LODWORD(v48) = v22;
        if (v18 == 16)
        {
          v27 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [v23 encodeObject:v27 withKey:@"SSAttributeIsCurrencyConversion"];
        }

        [v23 endDictionary];
        v28 = objc_alloc_init(MEMORY[0x277D4BE90]);
        v29 = [*(a1 + 32) queryContext];
        v30 = [v29 getTrimmedSearchString];
        v31 = [@"calculation-" stringByAppendingString:v30];
        [v28 setIdentifier:v31];

        v32 = [*(a1 + 32) queryContext];
        [v28 setQueryId:{objc_msgSend(v32, "queryIdent")}];

        [v28 setUserInput:*(a1 + 40)];
        [v28 setPlacement:3];
        [v28 setScore:{9, 0}];
        v33 = [v23 data];
        v34 = [v33 copy];
        [v28 setAttributeData:v34];

        [v28 setSectionBundleIdentifier:*MEMORY[0x277D65A10]];
        v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v36 = v35;
        if (v49)
        {
          v37 = [v35 localizedStringForKey:@"CALCULATION_SECTION_TITLE" value:&stru_287C35638 table:@"SpotlightServices"];
          [v28 setSectionHeader:v37];

          v38 = SSSetTopHitWithReasonString();
          v39 = @"com.apple.calculation";
        }

        else
        {
          v40 = [v35 localizedStringForKey:@"CONVERSION_SECTION_TITLE" value:&stru_287C35638 table:@"SpotlightServices"];
          [v28 setSectionHeader:v40];

          v38 = SSSetTopHitWithReasonString();
          v39 = @"com.apple.conversion";
        }

        [v28 setTopHit:v38];
        v41 = objc_alloc_init(MEMORY[0x277D65848]);
        [v41 setBundleIdentifier:v39];
        v42 = [v28 sectionHeader];
        [v41 setTitle:v42];

        v54[0] = v28;
        v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
        [v41 setResults:v43];

        v53 = v41;
        v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
        v44 = [objc_alloc(MEMORY[0x277D65860]) initWithQueryID:objc_msgSend(*(a1 + 32) sourceKind:"queryGroupId") sections:{4, v50}];
        [v44 setTopHitIsIn:1];
        v45 = [WeakRetained responseHandler];
        (v45)[2](v45, v44);

        v46 = [objc_alloc(MEMORY[0x277D4C348]) initWithStartSearch:*(a1 + 48)];
        v47 = [MEMORY[0x277D4BEC0] sharedProxy];
        [v47 sendFeedbackType:6 feedback:v46 queryId:*(a1 + 72) clientID:*(a1 + 56)];

        v10 = v51;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v7 = [objc_alloc(MEMORY[0x277D65860]) initWithQueryID:objc_msgSend(*(a1 + 32) sourceKind:"queryGroupId") error:{4, 0}];
    v15 = [WeakRetained responseHandler];
    (v15)[2](v15, v7);

    goto LABEL_11;
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

@end