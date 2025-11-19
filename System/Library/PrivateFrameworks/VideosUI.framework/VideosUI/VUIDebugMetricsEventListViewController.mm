@interface VUIDebugMetricsEventListViewController
- (VUIDebugMetricsEventListViewController)initWithEvents:(id)a3;
- (id)_formatKeyAndValue:(id)a3 fromEvent:(id)a4;
- (id)_imageFromPageContext:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_buttonClicked:(id)a3;
- (void)finishValidation;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)toggleValidationMode;
- (void)viewDidLoad;
@end

@implementation VUIDebugMetricsEventListViewController

- (VUIDebugMetricsEventListViewController)initWithEvents:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = VUIDebugMetricsEventListViewController;
  v6 = [(VUIDebugMetricsEventListViewController *)&v10 initWithStyle:0];
  if (v6)
  {
    v7 = [v5 copy];
    allEvents = v6->_allEvents;
    v6->_allEvents = v7;

    objc_storeStrong(&v6->_visibleEvents, a3);
    [(VUIDebugMetricsEventListViewController *)v6 setTitle:@"Events"];
  }

  return v6;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = VUIDebugMetricsEventListViewController;
  [(VUIDebugMetricsEventListViewController *)&v9 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"Select" style:0 target:self action:sel_toggleValidationMode];
  v4 = [(VUIDebugMetricsEventListViewController *)self navigationItem];
  [v4 setLargeTitleDisplayMode:1];

  v5 = [(VUIDebugMetricsEventListViewController *)self navigationItem];
  [v5 setRightBarButtonItem:v3];

  v6 = [(VUIDebugMetricsEventListViewController *)self tableView];
  [v6 setAllowsSelectionDuringEditing:0];

  v7 = [(VUIDebugMetricsEventListViewController *)self tableView];
  [v7 setAllowsMultipleSelectionDuringEditing:1];

  v8 = [(VUIDebugMetricsEventListViewController *)self tableView];
  [v8 registerClass:objc_opt_class() forCellReuseIdentifier:@"EventCell"];
}

- (void)toggleValidationMode
{
  v3 = [(VUIDebugMetricsEventListViewController *)self isEditing];
  if (v3)
  {
    [(VUIDebugMetricsEventListViewController *)self finishValidation];
    v4 = @"Select";
  }

  else
  {
    v4 = @"Validate";
  }

  [(VUIDebugMetricsEventListViewController *)self setEditing:v3 ^ 1u animated:1];
  v5 = [(VUIDebugMetricsEventListViewController *)self navigationItem];
  v6 = [v5 rightBarButtonItem];
  [v6 setTitle:v4];

  v8 = [(VUIDebugMetricsEventListViewController *)self navigationItem];
  v7 = [v8 rightBarButtonItem];
  [v7 setStyle:2];
}

- (void)finishValidation
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(VUIDebugMetricsEventListViewController *)self tableView];
  v4 = [v3 indexPathsForSelectedRows];

  if ([v4 count])
  {
    v5 = [v4 mutableCopy];
    [v5 sortUsingComparator:&__block_literal_global_156];
    v6 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = -[NSArray objectAtIndex:](self->_visibleEvents, "objectAtIndex:", [*(*(&v20 + 1) + 8 * v11) row]);
          v13 = [v12 rawEvent];
          [v6 addObject:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__VUIDebugMetricsEventListViewController_finishValidation__block_invoke_2;
    v16[3] = &unk_1E8737188;
    v17 = v7;
    v18 = v6;
    v19 = self;
    v14 = v6;
    v15 = v7;
    [VUIDebugMetricsEventValidator validateEvents:v14 forRuleset:@"com.apple.amp.ae.validator.manifest.Video.AllRulesets" withCompletion:v16];
  }
}

uint64_t __58__VUIDebugMetricsEventListViewController_finishValidation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithLong:{objc_msgSend(a2, "row")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 row];

  v9 = [v7 numberWithLong:v8];
  v10 = [v9 compare:v6];

  return v10;
}

void __58__VUIDebugMetricsEventListViewController_finishValidation__block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 32);
  v20 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v20)
  {
    v3 = 0;
    v18 = *v25;
    do
    {
      v4 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v24 + 1) + 8 * v4);
        v6 = [*(a1 + 40) objectAtIndexedSubscript:v3];
        v7 = [v6 valueForKey:@"eventType"];

        v8 = [VUIDebugMetricsEventValidator validationResults:v19 fromIndex:v3];
        v9 = [v8 valueForKey:@"passedRulesets"];
        v10 = [v9 count];

        v11 = [v8 valueForKey:@"filteredRulesets"];
        v12 = [v11 count];

        v13 = [v8 valueForKey:@"failedRulesets"];
        v14 = [v13 count];

        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Validation Rulesets for %@: –  %lu Failed, %lu Passed, %lu N/A", v7, v14, v10, v12];
        ++v3;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __58__VUIDebugMetricsEventListViewController_finishValidation__block_invoke_3;
        block[3] = &unk_1E8737160;
        block[4] = *(a1 + 48);
        block[5] = v5;
        v22 = v15;
        v23 = v14;
        v16 = v15;
        dispatch_async(MEMORY[0x1E69E96A0], block);

        ++v4;
      }

      while (v20 != v4);
      v20 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v20);
  }
}

void __58__VUIDebugMetricsEventListViewController_finishValidation__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v4 = [v2 cellForRowAtIndexPath:*(a1 + 40)];

  [v4 setSubhead3LabelStr:*(a1 + 48)];
  if (*(a1 + 56))
  {
    [MEMORY[0x1E69DC888] redColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] greenColor];
  }
  v3 = ;
  [v4 setSubhead3LabelColor:v3];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"EventCell"];
  visibleEvents = self->_visibleEvents;
  v9 = [v6 row];

  v10 = [(NSArray *)visibleEvents objectAtIndexedSubscript:v9];
  v11 = [v10 eventType];
  [v7 setEventTypeLabelStr:v11];

  v12 = [v10 eventType];
  if ([v12 isEqualToString:@"page"])
  {
    [v10 sortedPageKeys];
  }

  else
  {
    [v10 sortedPrimaryKeys];
  }
  v13 = ;

  if ([v13 count])
  {
    v14 = [v13 objectAtIndex:0];
  }

  else
  {
    v14 = 0;
  }

  if ([v13 count] < 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = [v13 objectAtIndex:1];
  }

  [v14 isEqualToString:@"impresions"];
  if (v14)
  {
    v16 = [(VUIDebugMetricsEventListViewController *)self _formatKeyAndValue:v14 fromEvent:v10];
  }

  else
  {
    v16 = 0;
  }

  v26 = v15;
  if (v15)
  {
    v17 = [(VUIDebugMetricsEventListViewController *)self _formatKeyAndValue:v15 fromEvent:v10];
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v18 setDateFormat:@"h:mm:ss a"];
  v19 = [v10 eventDate];
  v20 = [v18 stringFromDate:v19];

  if (v20)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"eventTime: %@", v20];
    if (!v16)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v21 = 0;
  if (v16)
  {
LABEL_18:
    [v7 setSubhead1LabelStr:v16];
  }

LABEL_19:
  if (v17)
  {
    [v7 setSubhead2LabelStr:v17];
  }

  v27 = v13;
  if (v21)
  {
    [v7 setSubhead3LabelStr:v21];
  }

  v22 = [v10 pageContext];
  v23 = [(VUIDebugMetricsEventListViewController *)self _imageFromPageContext:v22];

  [v7 setTabImage:v23];
  if (v23)
  {
    [v7 setTabName:0];
  }

  else
  {
    v24 = [v10 pageContext];
    [v7 setTabName:v24];
  }

  return v7;
}

- (id)_formatKeyAndValue:(id)a3 fromEvent:(id)a4
{
  v5 = a4;
  v6 = a3;
  if ([v6 isEqualToString:@"impressions"])
  {
    v7 = [v5 rawData];

    v8 = [v7 valueForKey:v6];

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %lu impressions", v6, objc_msgSend(v8, "count")];
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    v8 = [v5 rawData];

    v11 = [v8 objectForKeyedSubscript:v6];
    v9 = [v10 stringWithFormat:@"%@: %@", v6, v11];

    v6 = v11;
  }

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a4;
  if (([(VUIDebugMetricsEventListViewController *)self isEditing]& 1) == 0)
  {
    v5 = -[NSArray objectAtIndexedSubscript:](self->_visibleEvents, "objectAtIndexedSubscript:", [v8 row]);
    v6 = [[VUIDebugMetricsEventViewController alloc] initWithEvent:v5];
    v7 = [(VUIDebugMetricsEventListViewController *)self navigationController];
    [v7 pushViewController:v6 animated:1];
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF70] array];
  [v5 addObject:@"all"];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v47 = self;
  v7 = [(VUIDebugMetricsEventListViewController *)self allEvents];
  v8 = [v7 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v57;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v57 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v56 + 1) + 8 * i);
        v13 = [v12 eventType];
        v14 = [v5 containsObject:v13];

        if ((v14 & 1) == 0)
        {
          v15 = [v12 eventType];
          [v5 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v9);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v16 = [(VUIDebugMetricsEventListViewController *)v47 visibleEvents];
  v17 = [v16 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v53;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v52 + 1) + 8 * j);
        v22 = [v21 eventType];
        v23 = [v6 containsObject:v22];

        if ((v23 & 1) == 0)
        {
          v24 = [v21 eventType];
          [v6 addObject:v24];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v18);
  }

  v25 = [v5 copy];
  [(VUIDebugMetricsEventListViewController *)v47 setButtonsInHeader:v25];

  v26 = [v6 copy];
  [(VUIDebugMetricsEventListViewController *)v47 setButtonsInHeaderSelected:v26];

  v46 = [MEMORY[0x1E695DF70] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v27 = v5;
  v28 = [v27 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = 0;
    v31 = *v49;
    v32 = *MEMORY[0x1E695F060];
    v33 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v49 != v31)
        {
          objc_enumerationMutation(v27);
        }

        v35 = *(*(&v48 + 1) + 8 * k);
        v36 = 1;
        v37 = [MEMORY[0x1E69DC738] buttonWithType:{1, v46}];
        [v37 addTarget:v47 action:sel__buttonClicked_ forControlEvents:64];
        [v37 setTitle:v35 forState:0];
        if (([v6 containsObject:v35] & 1) == 0)
        {
          v38 = [v27 count] - 1;
          v36 = v38 == [v6 count];
        }

        [v37 setSelected:v36];
        [v37 sizeThatFits:{v32, v33}];
        [v37 setExclusiveTouch:1];
        [v37 setTag:v30++];
        [v46 addObject:v37];
      }

      v29 = [v27 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v29);
  }

  v39 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v46];
  [v39 setAlignment:3];
  [v39 setDistribution:3];
  v40 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v40 bounds];
  v42 = v41;

  [v39 setFrame:{48.0, 0.0, v42 + -96.0, 35.0}];
  v43 = objc_alloc(MEMORY[0x1E69DD250]);
  v44 = [v43 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v44 addSubview:v39];

  return v44;
}

- (void)_buttonClicked:(id)a3
{
  v4 = a3;
  v5 = [(VUIDebugMetricsEventListViewController *)self buttonsInHeader];
  v6 = [v5 objectAtIndex:{objc_msgSend(v4, "tag")}];

  [v4 setSelected:{objc_msgSend(v4, "isSelected") ^ 1}];
  v7 = [(VUIDebugMetricsEventListViewController *)self buttonsInHeaderSelected];
  v8 = [v7 mutableCopy];

  if ([v4 isSelected])
  {
    [v8 addObject:v6];
  }

  else
  {
    [v8 removeObject:v6];
  }

  v9 = [v8 copy];
  [(VUIDebugMetricsEventListViewController *)self setButtonsInHeaderSelected:v9];

  v10 = [(VUIDebugMetricsEventListViewController *)self tableView];
  [v10 beginUpdates];

  v11 = [v4 tag];
  v12 = [(VUIDebugMetricsEventListViewController *)self allEvents];
  if (v11)
  {
    v13 = [(VUIDebugMetricsEventListViewController *)self allEvents];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__VUIDebugMetricsEventListViewController__buttonClicked___block_invoke;
    v19[3] = &unk_1E87371B0;
    v19[4] = self;
    v14 = [v13 indexesOfObjectsPassingTest:v19];
    v15 = [v12 objectsAtIndexes:v14];

    v12 = v15;
  }

  [(VUIDebugMetricsEventListViewController *)self setVisibleEvents:v12];
  v16 = [(VUIDebugMetricsEventListViewController *)self tableView];
  v17 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [v16 reloadSections:v17 withRowAnimation:5];

  v18 = [(VUIDebugMetricsEventListViewController *)self tableView];
  [v18 endUpdates];
}

uint64_t __57__VUIDebugMetricsEventListViewController__buttonClicked___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 buttonsInHeaderSelected];
  v5 = [v3 eventType];

  v6 = [v4 containsObject:v5];
  return v6;
}

- (id)_imageFromPageContext:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"watchnow"])
  {
    v4 = @"play.circle.fill";
  }

  else if ([v3 isEqualToString:@"movies"])
  {
    v4 = @"film.fill";
  }

  else if ([v3 isEqualToString:@"tv"])
  {
    v4 = @"tv.inset.filled";
  }

  else if ([v3 isEqualToString:@"library"])
  {
    v4 = @"rectangle.stack.fill";
  }

  else if ([v3 isEqualToString:@"search"])
  {
    v4 = @"magnifyingglass";
  }

  else
  {
    v4 = @"nil";
  }

  if ([(__CFString *)v4 length])
  {
    v5 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end