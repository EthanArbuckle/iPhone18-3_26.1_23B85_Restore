@interface VUIDebugMetricsEventListViewController
- (VUIDebugMetricsEventListViewController)initWithEvents:(id)events;
- (id)_formatKeyAndValue:(id)value fromEvent:(id)event;
- (id)_imageFromPageContext:(id)context;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_buttonClicked:(id)clicked;
- (void)finishValidation;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)toggleValidationMode;
- (void)viewDidLoad;
@end

@implementation VUIDebugMetricsEventListViewController

- (VUIDebugMetricsEventListViewController)initWithEvents:(id)events
{
  eventsCopy = events;
  v10.receiver = self;
  v10.super_class = VUIDebugMetricsEventListViewController;
  v6 = [(VUIDebugMetricsEventListViewController *)&v10 initWithStyle:0];
  if (v6)
  {
    v7 = [eventsCopy copy];
    allEvents = v6->_allEvents;
    v6->_allEvents = v7;

    objc_storeStrong(&v6->_visibleEvents, events);
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
  navigationItem = [(VUIDebugMetricsEventListViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:1];

  navigationItem2 = [(VUIDebugMetricsEventListViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v3];

  tableView = [(VUIDebugMetricsEventListViewController *)self tableView];
  [tableView setAllowsSelectionDuringEditing:0];

  tableView2 = [(VUIDebugMetricsEventListViewController *)self tableView];
  [tableView2 setAllowsMultipleSelectionDuringEditing:1];

  tableView3 = [(VUIDebugMetricsEventListViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"EventCell"];
}

- (void)toggleValidationMode
{
  isEditing = [(VUIDebugMetricsEventListViewController *)self isEditing];
  if (isEditing)
  {
    [(VUIDebugMetricsEventListViewController *)self finishValidation];
    v4 = @"Select";
  }

  else
  {
    v4 = @"Validate";
  }

  [(VUIDebugMetricsEventListViewController *)self setEditing:isEditing ^ 1u animated:1];
  navigationItem = [(VUIDebugMetricsEventListViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setTitle:v4];

  navigationItem2 = [(VUIDebugMetricsEventListViewController *)self navigationItem];
  rightBarButtonItem2 = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem2 setStyle:2];
}

- (void)finishValidation
{
  v25 = *MEMORY[0x1E69E9840];
  tableView = [(VUIDebugMetricsEventListViewController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  if ([indexPathsForSelectedRows count])
  {
    v5 = [indexPathsForSelectedRows mutableCopy];
    [v5 sortUsingComparator:&__block_literal_global_156];
    array = [MEMORY[0x1E695DF70] array];
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
          rawEvent = [v12 rawEvent];
          [array addObject:rawEvent];

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
    v18 = array;
    selfCopy = self;
    v14 = array;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"EventCell"];
  visibleEvents = self->_visibleEvents;
  v9 = [pathCopy row];

  v10 = [(NSArray *)visibleEvents objectAtIndexedSubscript:v9];
  eventType = [v10 eventType];
  [v7 setEventTypeLabelStr:eventType];

  eventType2 = [v10 eventType];
  if ([eventType2 isEqualToString:@"page"])
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
  eventDate = [v10 eventDate];
  v20 = [v18 stringFromDate:eventDate];

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

  pageContext = [v10 pageContext];
  v23 = [(VUIDebugMetricsEventListViewController *)self _imageFromPageContext:pageContext];

  [v7 setTabImage:v23];
  if (v23)
  {
    [v7 setTabName:0];
  }

  else
  {
    pageContext2 = [v10 pageContext];
    [v7 setTabName:pageContext2];
  }

  return v7;
}

- (id)_formatKeyAndValue:(id)value fromEvent:(id)event
{
  eventCopy = event;
  valueCopy = value;
  if ([valueCopy isEqualToString:@"impressions"])
  {
    rawData = [eventCopy rawData];

    rawData2 = [rawData valueForKey:valueCopy];

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %lu impressions", valueCopy, objc_msgSend(rawData2, "count")];
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    rawData2 = [eventCopy rawData];

    v11 = [rawData2 objectForKeyedSubscript:valueCopy];
    v9 = [v10 stringWithFormat:@"%@: %@", valueCopy, v11];

    valueCopy = v11;
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (([(VUIDebugMetricsEventListViewController *)self isEditing]& 1) == 0)
  {
    v5 = -[NSArray objectAtIndexedSubscript:](self->_visibleEvents, "objectAtIndexedSubscript:", [pathCopy row]);
    v6 = [[VUIDebugMetricsEventViewController alloc] initWithEvent:v5];
    navigationController = [(VUIDebugMetricsEventListViewController *)self navigationController];
    [navigationController pushViewController:v6 animated:1];
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v63 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  [array addObject:@"all"];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  selfCopy = self;
  allEvents = [(VUIDebugMetricsEventListViewController *)self allEvents];
  v8 = [allEvents countByEnumeratingWithState:&v56 objects:v62 count:16];
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
          objc_enumerationMutation(allEvents);
        }

        v12 = *(*(&v56 + 1) + 8 * i);
        eventType = [v12 eventType];
        v14 = [array containsObject:eventType];

        if ((v14 & 1) == 0)
        {
          eventType2 = [v12 eventType];
          [array addObject:eventType2];
        }
      }

      v9 = [allEvents countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v9);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  visibleEvents = [(VUIDebugMetricsEventListViewController *)selfCopy visibleEvents];
  v17 = [visibleEvents countByEnumeratingWithState:&v52 objects:v61 count:16];
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
          objc_enumerationMutation(visibleEvents);
        }

        v21 = *(*(&v52 + 1) + 8 * j);
        eventType3 = [v21 eventType];
        v23 = [array2 containsObject:eventType3];

        if ((v23 & 1) == 0)
        {
          eventType4 = [v21 eventType];
          [array2 addObject:eventType4];
        }
      }

      v18 = [visibleEvents countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v18);
  }

  v25 = [array copy];
  [(VUIDebugMetricsEventListViewController *)selfCopy setButtonsInHeader:v25];

  v26 = [array2 copy];
  [(VUIDebugMetricsEventListViewController *)selfCopy setButtonsInHeaderSelected:v26];

  array3 = [MEMORY[0x1E695DF70] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v27 = array;
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
        v37 = [MEMORY[0x1E69DC738] buttonWithType:{1, array3}];
        [v37 addTarget:selfCopy action:sel__buttonClicked_ forControlEvents:64];
        [v37 setTitle:v35 forState:0];
        if (([array2 containsObject:v35] & 1) == 0)
        {
          v38 = [v27 count] - 1;
          v36 = v38 == [array2 count];
        }

        [v37 setSelected:v36];
        [v37 sizeThatFits:{v32, v33}];
        [v37 setExclusiveTouch:1];
        [v37 setTag:v30++];
        [array3 addObject:v37];
      }

      v29 = [v27 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v29);
  }

  v39 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:array3];
  [v39 setAlignment:3];
  [v39 setDistribution:3];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v42 = v41;

  [v39 setFrame:{48.0, 0.0, v42 + -96.0, 35.0}];
  v43 = objc_alloc(MEMORY[0x1E69DD250]);
  v44 = [v43 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v44 addSubview:v39];

  return v44;
}

- (void)_buttonClicked:(id)clicked
{
  clickedCopy = clicked;
  buttonsInHeader = [(VUIDebugMetricsEventListViewController *)self buttonsInHeader];
  v6 = [buttonsInHeader objectAtIndex:{objc_msgSend(clickedCopy, "tag")}];

  [clickedCopy setSelected:{objc_msgSend(clickedCopy, "isSelected") ^ 1}];
  buttonsInHeaderSelected = [(VUIDebugMetricsEventListViewController *)self buttonsInHeaderSelected];
  v8 = [buttonsInHeaderSelected mutableCopy];

  if ([clickedCopy isSelected])
  {
    [v8 addObject:v6];
  }

  else
  {
    [v8 removeObject:v6];
  }

  v9 = [v8 copy];
  [(VUIDebugMetricsEventListViewController *)self setButtonsInHeaderSelected:v9];

  tableView = [(VUIDebugMetricsEventListViewController *)self tableView];
  [tableView beginUpdates];

  v11 = [clickedCopy tag];
  allEvents = [(VUIDebugMetricsEventListViewController *)self allEvents];
  if (v11)
  {
    allEvents2 = [(VUIDebugMetricsEventListViewController *)self allEvents];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__VUIDebugMetricsEventListViewController__buttonClicked___block_invoke;
    v19[3] = &unk_1E87371B0;
    v19[4] = self;
    v14 = [allEvents2 indexesOfObjectsPassingTest:v19];
    v15 = [allEvents objectsAtIndexes:v14];

    allEvents = v15;
  }

  [(VUIDebugMetricsEventListViewController *)self setVisibleEvents:allEvents];
  tableView2 = [(VUIDebugMetricsEventListViewController *)self tableView];
  v17 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [tableView2 reloadSections:v17 withRowAnimation:5];

  tableView3 = [(VUIDebugMetricsEventListViewController *)self tableView];
  [tableView3 endUpdates];
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

- (id)_imageFromPageContext:(id)context
{
  contextCopy = context;
  if ([contextCopy isEqualToString:@"watchnow"])
  {
    v4 = @"play.circle.fill";
  }

  else if ([contextCopy isEqualToString:@"movies"])
  {
    v4 = @"film.fill";
  }

  else if ([contextCopy isEqualToString:@"tv"])
  {
    v4 = @"tv.inset.filled";
  }

  else if ([contextCopy isEqualToString:@"library"])
  {
    v4 = @"rectangle.stack.fill";
  }

  else if ([contextCopy isEqualToString:@"search"])
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