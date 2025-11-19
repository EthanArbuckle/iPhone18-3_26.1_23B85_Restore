@interface VUIDebugMetricsEventValidatorTableViewController
- (VUIDebugMetricsEventValidatorTableViewController)initWithEvent:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_reloadResults:(id)a3;
@end

@implementation VUIDebugMetricsEventValidatorTableViewController

- (VUIDebugMetricsEventValidatorTableViewController)initWithEvent:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v14.receiver = self;
  v14.super_class = VUIDebugMetricsEventValidatorTableViewController;
  v6 = [(VUIDebugMetricsEventValidatorTableViewController *)&v14 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, a3);
    objc_initWeak(&location, v7);
    v8 = [(VUIDebugMetricsEventValidatorTableViewController *)v7 tableView];
    [v8 registerClass:objc_opt_class() forCellReuseIdentifier:@"validateCell"];

    v15[0] = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__VUIDebugMetricsEventValidatorTableViewController_initWithEvent___block_invoke;
    v11[3] = &unk_1E8732640;
    objc_copyWeak(&v12, &location);
    [VUIDebugMetricsEventValidator validateEvents:v9 forRuleset:@"com.apple.amp.ae.validator.manifest.Video.AllRulesets" withCompletion:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __66__VUIDebugMetricsEventValidatorTableViewController_initWithEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [VUIDebugMetricsEventValidator validationResults:v3 fromIndex:0];

  [WeakRetained _reloadResults:v4];
}

- (void)_reloadResults:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VUIDebugMetricsEventValidatorTableViewController__reloadResults___block_invoke;
  block[3] = &unk_1E872F038;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __67__VUIDebugMetricsEventValidatorTableViewController__reloadResults___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [MEMORY[0x1E695DF70] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v33 = a1;
  obj = [*(a1 + 32) valueForKey:@"failedRulesets"];
  v3 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v46;
    do
    {
      v6 = 0;
      do
      {
        if (*v46 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v45 + 1) + 8 * v6);
        v55[0] = @"title";
        v8 = [v7 valueForKey:@"ruleset"];
        v56[0] = v8;
        v55[1] = @"failedRules";
        v9 = [v7 valueForKey:?];
        v56[1] = v9;
        v55[2] = @"passedRules";
        v10 = [v7 valueForKey:?];
        v56[2] = v10;
        v55[3] = @"filteredRules";
        v11 = [v7 valueForKey:@"filteredRules"];
        v56[3] = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:4];
        [v2 addObject:v12];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v4);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obja = [*(v33 + 32) valueForKey:@"passedRulesets"];
  v13 = [obja countByEnumeratingWithState:&v41 objects:v54 count:16];
  v14 = MEMORY[0x1E695E0F0];
  if (v13)
  {
    v15 = v13;
    v16 = *v42;
    do
    {
      v17 = 0;
      do
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(obja);
        }

        v18 = *(*(&v41 + 1) + 8 * v17);
        v52[0] = @"title";
        v19 = [v18 valueForKey:@"ruleset"];
        v53[0] = v19;
        v53[1] = v14;
        v52[1] = @"failedRules";
        v52[2] = @"passedRules";
        v20 = [v18 valueForKey:?];
        v53[2] = v20;
        v52[3] = @"filteredRules";
        v21 = [v18 valueForKey:@"filteredRules"];
        v53[3] = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:4];
        [v2 addObject:v22];

        ++v17;
      }

      while (v15 != v17);
      v15 = [obja countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v15);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  objb = [*(v33 + 32) valueForKey:@"filteredRulesets"];
  v23 = [objb countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    do
    {
      v26 = 0;
      do
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(objb);
        }

        v27 = *(*(&v37 + 1) + 8 * v26);
        v49[0] = @"title";
        v28 = [v27 valueForKey:@"ruleset"];
        v50[0] = v28;
        v50[1] = v14;
        v49[1] = @"failedRules";
        v49[2] = @"passedRules";
        v50[2] = v14;
        v49[3] = @"filteredRules";
        v29 = [v27 valueForKey:@"filteredRules"];
        v50[3] = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:4];
        [v2 addObject:v30];

        ++v26;
      }

      while (v24 != v26);
      v24 = [objb countByEnumeratingWithState:&v37 objects:v51 count:16];
    }

    while (v24);
  }

  [WeakRetained setResults:v2];
  v31 = [WeakRetained tableView];
  [v31 reloadData];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(VUIDebugMetricsEventValidatorTableViewController *)self results];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  result = [(NSArray *)self->_results count];
  if (result)
  {
    v7 = [(NSArray *)self->_results objectAtIndexedSubscript:a4];
    v8 = [v7 valueForKey:@"failedRules"];
    v9 = [v8 count];

    return v9 + 2;
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"validateCell" forIndexPath:v6];
  v8 = [v6 section];
  v9 = [v6 row];
  v10 = [(VUIDebugMetricsEventValidatorTableViewController *)self results];
  v11 = [v10 objectAtIndexedSubscript:v8];
  v12 = [v11 valueForKey:@"failedRules"];
  v13 = [v12 count];

  if (v9 == v13)
  {
    v57 = v6;
    v14 = [v7 textLabel];
    [v14 setText:@"Passed Rules"];

    v58 = v7;
    v15 = [v7 detailTextLabel];
    [v15 setNumberOfLines:0];

    v16 = [(VUIDebugMetricsEventValidatorTableViewController *)self results];
    v17 = [v16 objectAtIndexedSubscript:v8];
    v18 = [v17 valueForKey:@"passedRules"];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = v18;
    v19 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = &stru_1F5DB25C0;
      v22 = *v66;
      do
      {
        v23 = 0;
        v24 = v21;
        do
        {
          if (*v66 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v25 = [*(*(&v65 + 1) + 8 * v23) valueForKey:@"ruleLabel"];
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, ", v25];
          v21 = [(__CFString *)v24 stringByAppendingString:v26];

          ++v23;
          v24 = v21;
        }

        while (v20 != v23);
        v20 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v20);
      goto LABEL_20;
    }

LABEL_19:
    v21 = &stru_1F5DB25C0;
LABEL_20:

    v6 = v57;
    v7 = v58;
    goto LABEL_25;
  }

  if (v9 == v13 + 1)
  {
    v57 = v6;
    v58 = v7;
    v27 = [v7 textLabel];
    [v27 setText:@"Filtered Rules"];

    v28 = [(VUIDebugMetricsEventValidatorTableViewController *)self results];
    v29 = [v28 objectAtIndexedSubscript:v8];
    v30 = [v29 valueForKey:@"filteredRules"];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v30;
    v31 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v31)
    {
      v32 = v31;
      v21 = &stru_1F5DB25C0;
      v33 = *v62;
      do
      {
        v34 = 0;
        v35 = v21;
        do
        {
          if (*v62 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v36 = [*(*(&v61 + 1) + 8 * v34) valueForKey:@"ruleLabel"];
          v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, ", v36];
          v21 = [(__CFString *)v35 stringByAppendingString:v37];

          ++v34;
          v35 = v21;
        }

        while (v32 != v34);
        v32 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v32);
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v38 = [(VUIDebugMetricsEventValidatorTableViewController *)self results];
  v39 = [v38 objectAtIndexedSubscript:v8];
  v40 = [v39 valueForKey:@"failedRules"];
  v41 = [v40 objectAtIndexedSubscript:v9];

  v42 = [v41 valueForKey:@"ruleLabel"];
  v43 = [v7 textLabel];
  [v43 setText:v42];

  v44 = [v41 valueForKey:@"onFailMapList"];
  if ([v44 count])
  {
    v45 = [v41 valueForKey:@"onFailMapList"];
    v46 = [v45 objectAtIndexedSubscript:0];
    v47 = [v46 description];
    v48 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    obja = [v47 componentsSeparatedByCharactersInSet:v48];

    v49 = [obja componentsJoinedByString:&stru_1F5DB25C0];
    v50 = [v41 valueForKey:@"ruleResult"];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v50, v49];
    v51 = [v7 detailTextLabel];
    [MEMORY[0x1E69DC888] redColor];
    v53 = v52 = v42;
    [v51 setTextColor:v53];

    v42 = v52;
  }

  else
  {
    v21 = &stru_1F5DB25C0;
  }

LABEL_25:
  v54 = [v7 detailTextLabel];
  [v54 setNumberOfLines:0];

  if (![(__CFString *)v21 length])
  {

    v21 = @"none";
  }

  v55 = [v7 detailTextLabel];
  [v55 setText:v21];

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(VUIDebugMetricsEventValidatorTableViewController *)self results];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 valueForKey:@"title"];
  v8 = [VUIDebugMetricsEventValidator removeGladiatorPrefix:v7];

  return v8;
}

@end