@interface PXLogsViewController
- (BOOL)isCollectionRepresentation:(id)representation;
- (PXLogsViewController)initWithSubsystem:(id)subsystem category:(id)category startDate:(id)date;
- (PXLogsViewController)initWithSubsystemsAndCategories:(id)categories startDate:(id)date;
- (id)initLiveWithSubsystem:(id)subsystem category:(id)category;
- (id)initLiveWithSubsystemsAndCategories:(id)categories;
- (id)substitutionForCollectionRepresentation:(id)representation attributes:(id)attributes;
- (id)substitutionForObjectRepresentation:(id)representation;
- (id)subsystemsAndCategoriesPredicateWithSubsystemsAndCategories:(id)categories;
- (void)logAttributedString:(id)string;
- (void)prepareDiskStore;
- (void)prepareLiveStore;
- (void)removeSpinner;
- (void)setupEventStream:(id)stream;
- (void)tapped:(id)tapped;
- (void)toggleModeForStringIndex:(unint64_t)index;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PXLogsViewController

- (id)substitutionForCollectionRepresentation:(id)representation attributes:(id)attributes
{
  representationCopy = representation;
  attributesCopy = attributes;
  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:representationCopy attributes:attributesCopy];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__199116;
  v25 = __Block_byref_object_dispose__199117;
  v26 = 0;
  v9 = [attributesCopy mutableCopy];
  lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
  [v9 setObject:lightGrayColor forKeyedSubscript:*MEMORY[0x1E69DB600]];

  substitutionByObjectRepresentation = self->_substitutionByObjectRepresentation;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__PXLogsViewController_substitutionForCollectionRepresentation_attributes___block_invoke;
  v17[3] = &unk_1E7743380;
  v20 = &v21;
  v12 = v8;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  [(NSMutableDictionary *)substitutionByObjectRepresentation enumerateKeysAndObjectsUsingBlock:v17];
  v14 = v22[5];
  if (!v14)
  {
    v14 = v12;
  }

  v15 = v14;

  _Block_object_dispose(&v21, 8);

  return v15;
}

void __75__PXLogsViewController_substitutionForCollectionRepresentation_attributes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  for (i = 0; ; [v12 replaceCharactersInRange:v9 - 1 withAttributedString:{v11 + 2, i}])
  {
    v7 = *(*(*(a1 + 48) + 8) + 40);
    if (!v7)
    {
      v7 = *(a1 + 32);
    }

    v8 = [v7 string];
    v9 = [v8 rangeOfString:v16];
    v11 = v10;

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (!i)
    {
      i = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:*(a1 + 40)];
    }

    v12 = *(*(*(a1 + 48) + 8) + 40);
    if (!v12)
    {
      v13 = [*(a1 + 32) mutableCopy];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v12 = *(*(*(a1 + 48) + 8) + 40);
    }
  }
}

- (BOOL)isCollectionRepresentation:(id)representation
{
  representationCopy = representation;
  if (([representationCopy hasPrefix:@"("] != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = [representationCopy hasPrefix:@"{"];
  }

  return v4;
}

- (id)substitutionForObjectRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [(NSMutableDictionary *)self->_substitutionByObjectRepresentation objectForKeyedSubscript:representationCopy];
  if (!v5)
  {
    if ([representationCopy hasPrefix:@"<"])
    {
      v6 = [representationCopy rangeOfString:@">"];
      v7 = [representationCopy rangeOfString:@": 0x"];
      v5 = 0;
      if (v6 != 0x7FFFFFFFFFFFFFFFLL && v7 < v6)
      {
        v8 = [representationCopy substringWithRange:{1, v7 - 1}];
        v9 = [(NSMutableDictionary *)self->_nextAvailableIndexByClassName objectForKeyedSubscript:v8];
        unsignedIntegerValue = [v9 unsignedIntegerValue];

        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %lu", v8, unsignedIntegerValue];
        if (!self->_substitutionByObjectRepresentation)
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
          substitutionByObjectRepresentation = self->_substitutionByObjectRepresentation;
          self->_substitutionByObjectRepresentation = v11;

          v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
          nextAvailableIndexByClassName = self->_nextAvailableIndexByClassName;
          self->_nextAvailableIndexByClassName = v13;
        }

        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
        [(NSMutableDictionary *)self->_nextAvailableIndexByClassName setObject:v15 forKeyedSubscript:v8];

        [(NSMutableDictionary *)self->_substitutionByObjectRepresentation setObject:v5 forKeyedSubscript:representationCopy];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)toggleModeForStringIndex:(unint64_t)index
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v5 += v6;
    if ([(NSMutableIndexSet *)self->_isExpanded containsIndex:v7])
    {
      v8 = &OBJC_IVAR___PXLogsViewController__expandedLogs;
    }

    else
    {
      v8 = &OBJC_IVAR___PXLogsViewController__compactLogs;
    }

    v9 = [*(&self->super.super.super.isa + *v8) objectAtIndexedSubscript:v7];
    v6 = [v9 length];

    ++v7;
  }

  while (v7 <= index);
  if (([(NSMutableIndexSet *)self->_isExpanded containsIndex:index]& 1) != 0)
  {
    v10 = [(NSMutableArray *)self->_compactLogs objectAtIndexedSubscript:index];
    [(NSMutableIndexSet *)self->_isExpanded removeIndex:index];
  }

  else
  {
    v10 = [(NSMutableArray *)self->_expandedLogs objectAtIndexedSubscript:index];
    [(NSMutableIndexSet *)self->_isExpanded addIndex:index];
  }

  [(NSMutableAttributedString *)self->_fullAttributedString replaceCharactersInRange:v5 withAttributedString:v6, v10];
  [(UITextView *)self->_textView setAttributedText:self->_fullAttributedString];
}

- (void)logAttributedString:(id)string
{
  stringCopy = string;
  fullAttributedString = self->_fullAttributedString;
  if (!fullAttributedString)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v7 = self->_fullAttributedString;
    self->_fullAttributedString = v6;

    fullAttributedString = self->_fullAttributedString;
  }

  [(NSMutableAttributedString *)fullAttributedString appendAttributedString:stringCopy];
  if (!self->_hasScheduledTextViewUpdate)
  {
    self->_hasScheduledTextViewUpdate = 1;
    v8 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__PXLogsViewController_logAttributedString___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_after(v8, MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __44__PXLogsViewController_logAttributedString___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1008) setAttributedText:*(*(a1 + 32) + 1032)];
  *(*(a1 + 32) + 1040) = 0;
  return result;
}

- (void)removeSpinner
{
  [(UIActivityIndicatorView *)self->_spinnerView removeFromSuperview];
  spinnerView = self->_spinnerView;
  self->_spinnerView = 0;
}

- (void)setupEventStream:(id)stream
{
  v38[2] = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  [streamCopy setFlags:389];
  1024 = [MEMORY[0x1E696AE18] predicateWithFormat:@"type = %d", 1024];
  v5 = [(PXLogsViewController *)self subsystemsAndCategoriesPredicateWithSubsystemsAndCategories:self->_subsystemsAndCategories];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x1E696AB28];
    v38[0] = 1024;
    v38[1] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v9 = [v7 andPredicateWithSubpredicates:v8];
  }

  else
  {
    v9 = 1024;
  }

  [streamCopy setFilterPredicate:v9];
  dateFormatter = [(PXLogsViewController *)self dateFormatter];
  if (!dateFormatter)
  {
    dateFormatter = objc_alloc_init(MEMORY[0x1E696AB78]);
    [dateFormatter setDateStyle:1];
    [dateFormatter setTimeStyle:1];
  }

  v11 = [MEMORY[0x1E69DC888] colorWithRed:0.9 green:0.9 blue:0.9 alpha:1.0];
  v12 = [MEMORY[0x1E69DC888] colorWithRed:0.9 green:0.9 blue:0.7 alpha:1.0];
  v13 = [MEMORY[0x1E69DC888] colorWithRed:0.7 green:0.9 blue:0.7 alpha:1.0];
  v36 = *MEMORY[0x1E69DB600];
  v37 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  compactLogs = self->_compactLogs;
  self->_compactLogs = v15;

  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  expandedLogs = self->_expandedLogs;
  self->_expandedLogs = v17;

  v19 = objc_alloc_init(MEMORY[0x1E696AD50]);
  isExpanded = self->_isExpanded;
  self->_isExpanded = v19;

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __41__PXLogsViewController_setupEventStream___block_invoke;
  v27[3] = &unk_1E7743330;
  v33 = v34;
  v21 = v11;
  v28 = v21;
  v22 = v12;
  v29 = v22;
  selfCopy = self;
  v23 = dateFormatter;
  v31 = v23;
  v24 = v14;
  v32 = v24;
  [streamCopy setEventHandler:v27];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __41__PXLogsViewController_setupEventStream___block_invoke_3;
  v26[3] = &unk_1E7743358;
  v26[4] = self;
  [streamCopy setInvalidationHandler:v26];

  _Block_object_dispose(v34, 8);
}

void __41__PXLogsViewController_setupEventStream___block_invoke(uint64_t a1, void *a2)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *MEMORY[0x1E69DB600];
  v51 = *MEMORY[0x1E69DB600];
  v5 = 40;
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    v5 = 32;
  }

  v45 = a1;
  v52[0] = *(a1 + v5);
  v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v6 = [v3 decomposedMessage];
  if ([v6 state])
  {
    v7 = 0;
    goto LABEL_24;
  }

  v46 = objc_alloc_init(MEMORY[0x1E696AD40]);
  if (![v6 placeholderCount])
  {
    v7 = 0;
    goto LABEL_23;
  }

  v43 = v3;
  v44 = v4;
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = [v6 literalPrefixAtIndex:v9];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10 attributes:v47];
      [v46 appendAttributedString:v11];
    }

    v12 = [v6 placeholderAtIndex:v9];
    v13 = [v6 argumentAtIndex:v9];
    v14 = [v12 rawString];
    v15 = [v14 hasSuffix:@"@"];

    if (v15)
    {
      v16 = [v6 argumentAtIndex:v9];
      v17 = [v16 objectRepresentation];
      v18 = [*(v45 + 48) isCollectionRepresentation:v17];
      v19 = *(v45 + 48);
      if (v18)
      {
        v20 = [v19 substitutionForCollectionRepresentation:v17 attributes:v47];
        [v46 appendAttributedString:v20];
LABEL_14:
        v8 = 1;
        goto LABEL_17;
      }

      v21 = [v19 substitutionForObjectRepresentation:v17];
      if (v21)
      {
        v20 = v21;
        v22 = [v47 mutableCopy];
        v23 = [MEMORY[0x1E69DC888] lightGrayColor];
        [v22 setObject:v23 forKeyedSubscript:v44];

        v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v20 attributes:v22];
        [v46 appendAttributedString:v24];

        goto LABEL_14;
      }
    }

    v25 = objc_alloc(MEMORY[0x1E696AAB0]);
    v26 = MEMORY[0x1E696AEC0];
    v16 = [v13 objectRepresentation];
    v17 = [v26 stringWithFormat:@"%@", v16];
    v20 = [v25 initWithString:v17 attributes:v47];
    [v46 appendAttributedString:v20];
LABEL_17:

    ++v9;
  }

  while (v9 < [v6 placeholderCount]);
  if (v8)
  {
    v7 = v46;
  }

  else
  {
    v7 = 0;
  }

  v3 = v43;
LABEL_23:

LABEL_24:
  v27 = objc_alloc(MEMORY[0x1E696AAB0]);
  v28 = MEMORY[0x1E696AEC0];
  v29 = *(v45 + 56);
  v30 = [v3 date];
  v31 = [v29 stringFromDate:v30];
  v32 = [v28 stringWithFormat:@"%@ ", v31];
  v33 = [v27 initWithString:v32 attributes:*(v45 + 64)];

  v34 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n" attributes:v47];
  v35 = [v33 mutableCopy];
  v36 = objc_alloc(MEMORY[0x1E696AAB0]);
  v37 = [v3 composedMessage];
  v38 = [v36 initWithString:v37 attributes:v47];
  [v35 appendAttributedString:v38];

  [v35 appendAttributedString:v34];
  v39 = v35;
  v40 = v39;
  if (v7)
  {
    v40 = [v33 mutableCopy];
    [v40 appendAttributedString:v7];
    [v40 appendAttributedString:v34];
  }

  *(*(*(v45 + 72) + 8) + 24) ^= 1u;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PXLogsViewController_setupEventStream___block_invoke_2;
  block[3] = &unk_1E774A1B8;
  block[4] = *(v45 + 48);
  v49 = v40;
  v50 = v39;
  v41 = v39;
  v42 = v40;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __41__PXLogsViewController_setupEventStream___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PXLogsViewController_setupEventStream___block_invoke_4;
  block[3] = &unk_1E774C648;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __41__PXLogsViewController_setupEventStream___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 1008) setAttributedText:*(*(a1 + 32) + 1032)];
  v2 = *(a1 + 32);

  return [v2 removeSpinner];
}

uint64_t __41__PXLogsViewController_setupEventStream___block_invoke_2(void *a1)
{
  [*(a1[4] + 1048) addObject:a1[5]];
  [*(a1[4] + 1056) addObject:a1[6]];
  v2 = a1[4];
  v3 = a1[5];

  return [v2 logAttributedString:v3];
}

- (id)subsystemsAndCategoriesPredicateWithSubsystemsAndCategories:(id)categories
{
  v29 = *MEMORY[0x1E69E9840];
  categoriesCopy = categories;
  if ([categoriesCopy count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = categoriesCopy;
    v5 = categoriesCopy;
    v22 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (!v22)
    {
      goto LABEL_27;
    }

    v21 = *v24;
    v6 = &stru_1F1741150;
    while (1)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v5);
        }

        v8 = [*(*(&v23 + 1) + 8 * i) componentsSeparatedByString:@":"];
        if ([v8 count])
        {
          firstObject = [v8 firstObject];
        }

        else
        {
          firstObject = &stru_1F1741150;
        }

        if ([v8 count] >= 2)
        {
          v6 = [v8 objectAtIndexedSubscript:1];
        }

        if ([(__CFString *)firstObject length])
        {
          v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"subsystem = %@", firstObject];
          if (![(__CFString *)v6 length])
          {
            if (v10)
            {
              goto LABEL_23;
            }

            v11 = 0;
LABEL_20:
            v11 = v11;
            v10 = 0;
            v17 = v11;
            goto LABEL_21;
          }
        }

        else
        {
          v10 = 0;
          v11 = 0;
          if (![(__CFString *)v6 length])
          {
            goto LABEL_20;
          }
        }

        v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"category = %@", v6];
        v11 = v12;
        if (!v10)
        {
          goto LABEL_20;
        }

        if (!v12)
        {
LABEL_23:
          v10 = v10;
          v11 = 0;
          v17 = v10;
LABEL_24:
          [v4 addObject:v17];

          goto LABEL_25;
        }

        v13 = MEMORY[0x1E696AB28];
        v27[0] = v10;
        v27[1] = v12;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
        v14 = v5;
        v16 = v15 = v4;
        v17 = [v13 andPredicateWithSubpredicates:v16];

        v4 = v15;
        v5 = v14;
LABEL_21:
        if (v17)
        {
          goto LABEL_24;
        }

LABEL_25:

        v6 = &stru_1F1741150;
      }

      v22 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (!v22)
      {
LABEL_27:

        if ([v4 count] < 2)
        {
          [v4 firstObject];
        }

        else
        {
          [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v4];
        }
        v18 = ;
        categoriesCopy = v20;

        goto LABEL_32;
      }
    }
  }

  v18 = 0;
LABEL_32:

  return v18;
}

- (void)prepareLiveStore
{
  liveLocalStore = [MEMORY[0x1E69AD3A8] liveLocalStore];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__PXLogsViewController_prepareLiveStore__block_invoke;
  v4[3] = &unk_1E7743308;
  v4[4] = self;
  [liveLocalStore prepareWithCompletionHandler:v4];
}

void __40__PXLogsViewController_prepareLiveStore__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69AD3B0];
  v4 = a2;
  v5 = [[v3 alloc] initWithLiveSource:v4];

  [*(a1 + 32) setupEventStream:v5];
  v6 = *(a1 + 32);
  v7 = *(v6 + 1024);
  *(v6 + 1024) = v5;
  v8 = v5;

  [v8 activate];
}

- (void)prepareDiskStore
{
  localStore = [MEMORY[0x1E69AD3C8] localStore];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__PXLogsViewController_prepareDiskStore__block_invoke;
  v4[3] = &unk_1E77432E0;
  v4[4] = self;
  [localStore prepareWithCompletionHandler:v4];
}

void __40__PXLogsViewController_prepareDiskStore__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69AD3D0];
  v4 = a2;
  v5 = [[v3 alloc] initWithSource:v4];

  [*(a1 + 32) setupEventStream:v5];
  v6 = *(a1 + 32);
  v7 = *(v6 + 1024);
  *(v6 + 1024) = v5;
  v8 = v5;

  [v8 activateStreamFromDate:*(*(a1 + 32) + 1000)];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(OSLogEventStreamBase *)self->_eventStream invalidate];
  v5.receiver = self;
  v5.super_class = PXLogsViewController;
  [(PXLogsViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = PXLogsViewController;
  [(PXLogsViewController *)&v29 viewDidLoad];
  view = [(PXLogsViewController *)self view];
  v4 = objc_alloc(MEMORY[0x1E69DD168]);
  [view bounds];
  v5 = [v4 initWithFrame:?];
  textView = self->_textView;
  self->_textView = v5;

  [(UITextView *)self->_textView setAutoresizingMask:18];
  [(UITextView *)self->_textView setEditable:0];
  textContainer = [(UITextView *)self->_textView textContainer];
  [textContainer setLineBreakMode:1];

  [(UITextView *)self->_textView setTextAlignment:0];
  [view addSubview:self->_textView];
  v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapped_];
  [(UITextView *)self->_textView addGestureRecognizer:v8];
  if (self->_startDate)
  {
    [(PXLogsViewController *)self prepareDiskStore];
  }

  else
  {
    [(PXLogsViewController *)self prepareLiveStore];
  }

  if (self->_startDate)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
    spinnerView = self->_spinnerView;
    self->_spinnerView = v9;

    grayColor = [MEMORY[0x1E69DC888] grayColor];
    [(UIActivityIndicatorView *)self->_spinnerView setColor:grayColor];

    [(UIActivityIndicatorView *)self->_spinnerView bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [view bounds];
    v21 = v20;
    [(UIActivityIndicatorView *)self->_spinnerView bounds];
    v23 = (v21 - v22) * 0.5;
    [view bounds];
    v25 = v24;
    [(UIActivityIndicatorView *)self->_spinnerView bounds];
    v27 = (v25 - v26) * 0.5;
    v30.origin.x = v13;
    v30.origin.y = v15;
    v30.size.width = v17;
    v30.size.height = v19;
    v31 = CGRectOffset(v30, v23, v27);
    [(UIActivityIndicatorView *)self->_spinnerView setFrame:v31.origin.x, v31.origin.y, v31.size.width, v31.size.height];
    [(UIActivityIndicatorView *)self->_spinnerView setAutoresizingMask:45];
    [(UIActivityIndicatorView *)self->_spinnerView setHidesWhenStopped:1];
    [view addSubview:self->_spinnerView];
    [(UIActivityIndicatorView *)self->_spinnerView startAnimating];
  }

  navigationController = [(PXLogsViewController *)self navigationController];
  [navigationController setToolbarHidden:1 animated:0];
}

- (void)tapped:(id)tapped
{
  [tapped locationInView:self->_textView];
  v5 = v4;
  v7 = v6;
  layoutManager = [(UITextView *)self->_textView layoutManager];
  textContainer = [(UITextView *)self->_textView textContainer];
  v10 = [layoutManager characterIndexForPoint:textContainer inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v5, v7}];

  if ([(NSMutableArray *)self->_compactLogs count])
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = [(NSMutableIndexSet *)self->_isExpanded containsIndex:v11];
      p_compactLogs = &self->_compactLogs;
      if (v13)
      {
        p_compactLogs = &self->_expandedLogs;
      }

      v15 = [(NSMutableArray *)*p_compactLogs objectAtIndexedSubscript:v11];
      v12 += [v15 length];
      if (v10 < v12)
      {
        break;
      }

      if (++v11 >= [(NSMutableArray *)self->_compactLogs count])
      {
        return;
      }
    }

    [(PXLogsViewController *)self toggleModeForStringIndex:v11];
  }
}

- (id)initLiveWithSubsystem:(id)subsystem category:(id)category
{
  v11[1] = *MEMORY[0x1E69E9840];
  categoryCopy = &stru_1F1741150;
  if (subsystem)
  {
    subsystemCopy = subsystem;
  }

  else
  {
    subsystemCopy = &stru_1F1741150;
  }

  if (category)
  {
    categoryCopy = category;
  }

  categoryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", subsystemCopy, categoryCopy];
  v11[0] = categoryCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(PXLogsViewController *)self initLiveWithSubsystemsAndCategories:v8];

  return v9;
}

- (id)initLiveWithSubsystemsAndCategories:(id)categories
{
  categoriesCopy = categories;
  v9.receiver = self;
  v9.super_class = PXLogsViewController;
  v6 = [(PXLogsViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subsystemsAndCategories, categories);
  }

  return v7;
}

- (PXLogsViewController)initWithSubsystem:(id)subsystem category:(id)category startDate:(id)date
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  if (subsystem)
  {
    subsystemCopy = subsystem;
  }

  else
  {
    subsystemCopy = &stru_1F1741150;
  }

  if (category)
  {
    categoryCopy = category;
  }

  else
  {
    categoryCopy = &stru_1F1741150;
  }

  dateCopy = date;
  categoryCopy = [v6 stringWithFormat:@"%@:%@", subsystemCopy, categoryCopy];
  v14[0] = categoryCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [(PXLogsViewController *)self initWithSubsystemsAndCategories:v11 startDate:dateCopy];

  return v12;
}

- (PXLogsViewController)initWithSubsystemsAndCategories:(id)categories startDate:(id)date
{
  categoriesCopy = categories;
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = PXLogsViewController;
  v9 = [(PXLogsViewController *)&v13 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subsystemsAndCategories, categories);
    distantPast = dateCopy;
    if (!dateCopy)
    {
      distantPast = [MEMORY[0x1E695DF00] distantPast];
    }

    objc_storeStrong(&v10->_startDate, distantPast);
    if (!dateCopy)
    {
    }
  }

  return v10;
}

@end