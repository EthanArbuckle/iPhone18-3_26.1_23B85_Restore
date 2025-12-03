@interface PXScoreLabViewController
- (PXScoreLabViewController)init;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (id)valueGetterForSceneIdentifier:(unint64_t)identifier;
- (id)valueGetterForScoreKeyPath:(id)path;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (unint64_t)identifierForSceneName:(id)name;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)redrawGraph;
- (void)sceneNameChanged:(id)changed;
- (void)scoreLabGraphView:(id)view reloadProgressed:(double)progressed;
- (void)scoreLabGraphViewDidFinishReloading:(id)reloading;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PXScoreLabViewController

- (void)scoreLabGraphViewDidFinishReloading:(id)reloading
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PXScoreLabViewController_scoreLabGraphViewDidFinishReloading___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)scoreLabGraphView:(id)view reloadProgressed:(double)progressed
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__PXScoreLabViewController_scoreLabGraphView_reloadProgressed___block_invoke;
  v4[3] = &unk_1E77498A0;
  v4[4] = self;
  *&v4[5] = progressed;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

uint64_t __63__PXScoreLabViewController_scoreLabGraphView_reloadProgressed___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *&v1 = v1;
  return [*(*(a1 + 32) + 1048) setProgress:v1];
}

- (void)sceneNameChanged:(id)changed
{
  changedCopy = changed;
  if (self->_xScoreSceneNameField == changedCopy || self->_yScoreSceneNameField == changedCopy)
  {
    v9 = changedCopy;
    text = [(UITextField *)changedCopy text];
    v6 = [(PXScoreLabViewController *)self identifierForSceneName:text];
    if (v6)
    {
      redColor = [(PXScoreLabViewController *)self valueGetterForSceneIdentifier:v6];
      graphView = self->_graphView;
      if (self->_xScoreSceneNameField == v9)
      {
        [(_PXScoreLabGraphView *)graphView setXScoreValueGetter:redColor];
      }

      else
      {
        [(_PXScoreLabGraphView *)graphView setYScoreValueGetter:redColor];
      }

      [(PXScoreLabViewController *)self redrawGraph];
    }

    else
    {
      redColor = [MEMORY[0x1E69DC888] redColor];
      [(UITextField *)v9 setTextColor:redColor];
    }

    changedCopy = v9;
  }
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v3 = MEMORY[0x1E69DC888];
  editingCopy = editing;
  blackColor = [v3 blackColor];
  [editingCopy setTextColor:blackColor];
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  if (self->_xScorePickerView != viewCopy)
  {
    if (self->_graphTypePickerView == viewCopy)
    {
      v14 = viewCopy;
      [(_PXScoreLabGraphView *)self->_graphView setGraphType:row];
      if (row == 1)
      {
        v11 = 0.25;
      }

      else
      {
        v11 = 1.0;
      }

      [(UIPickerView *)self->_xScorePickerView setUserInteractionEnabled:row != 1];
      [(UIPickerView *)self->_xScorePickerView setAlpha:v11];
      if (row)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.25;
      }

      [(UIPickerView *)self->_yScorePickerView setUserInteractionEnabled:row != 0];
      [(UIPickerView *)self->_yScorePickerView setAlpha:v12];
      [(PXScoreLabViewController *)self redrawGraph];
      goto LABEL_20;
    }

    if (self->_yScorePickerView != viewCopy)
    {
      if (self->_assetFilterPickerView != viewCopy)
      {
        goto LABEL_21;
      }

      v14 = viewCopy;
      v8 = [(NSArray *)self->_assetFilterNames objectAtIndexedSubscript:row];
      v9 = [(NSDictionary *)self->_assetPredicateByFilterName objectForKeyedSubscript:v8];
      [(_PXScoreLabGraphView *)self->_graphView setAssetPredicate:v9];
      goto LABEL_18;
    }

    v14 = viewCopy;
    v8 = [(NSArray *)self->_scoreNames objectAtIndexedSubscript:row];
    v9 = [(NSDictionary *)self->_keyPathByScoreName objectForKeyedSubscript:v8];
    if (v9)
    {
      [(UITextField *)self->_yScoreSceneNameField setHidden:1];
      v10 = [(PXScoreLabViewController *)self valueGetterForScoreKeyPath:v9];
      [(_PXScoreLabGraphView *)self->_graphView setYScoreValueGetter:v10];
      goto LABEL_17;
    }

    if (![v8 hasPrefix:@"Scene"])
    {
      goto LABEL_19;
    }

    v13 = 1024;
LABEL_28:
    [*(&self->super.super.super.isa + v13) setHidden:0];
    [(PXScoreLabViewController *)self sceneNameChanged:*(&self->super.super.super.isa + v13)];
    goto LABEL_19;
  }

  v14 = viewCopy;
  v8 = [(NSArray *)self->_scoreNames objectAtIndexedSubscript:row];
  v9 = [(NSDictionary *)self->_keyPathByScoreName objectForKeyedSubscript:v8];
  if (!v9)
  {
    if (![v8 hasPrefix:@"Scene"])
    {
      goto LABEL_19;
    }

    v13 = 1000;
    goto LABEL_28;
  }

  [(UITextField *)self->_xScoreSceneNameField setHidden:1];
  v10 = [(PXScoreLabViewController *)self valueGetterForScoreKeyPath:v9];
  [(_PXScoreLabGraphView *)self->_graphView setXScoreValueGetter:v10];
LABEL_17:

LABEL_18:
  [(PXScoreLabViewController *)self redrawGraph];
LABEL_19:

LABEL_20:
  viewCopy = v14;
LABEL_21:
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  viewCopy = view;
  v8 = viewCopy;
  if (self->_xScorePickerView == viewCopy || self->_yScorePickerView == viewCopy)
  {
    v10 = 1056;
  }

  else
  {
    if (self->_graphTypePickerView == viewCopy)
    {
      v11 = &unk_1F1910CD8;
      goto LABEL_8;
    }

    if (self->_assetFilterPickerView != viewCopy)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v10 = 1080;
  }

  v11 = *(&self->super.super.super.isa + v10);
LABEL_8:
  v9 = [v11 objectAtIndexedSubscript:row];
LABEL_9:

  return v9;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  viewCopy = view;
  v6 = viewCopy;
  if (self->_xScorePickerView == viewCopy || self->_yScorePickerView == viewCopy)
  {
    v8 = &OBJC_IVAR___PXScoreLabViewController__scoreNames;
LABEL_7:
    v7 = [*(&self->super.super.super.isa + *v8) count];
    goto LABEL_8;
  }

  if (self->_graphTypePickerView == viewCopy)
  {
    v7 = 3;
    goto LABEL_8;
  }

  if (self->_assetFilterPickerView == viewCopy)
  {
    v8 = &OBJC_IVAR___PXScoreLabViewController__assetFilterNames;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (unint64_t)identifierForSceneName:(id)name
{
  lowercaseString = [name lowercaseString];
  if ([lowercaseString hasPrefix:@"junk"])
  {
    if ([lowercaseString hasSuffix:@"screenshot"])
    {
      unsignedIntValue = 2147483632;
    }

    else
    {
      unsignedIntValue = 2147483633;
      if (([lowercaseString hasSuffix:@"framing"] & 1) == 0)
      {
        if ([lowercaseString hasSuffix:@"lighting"])
        {
          unsignedIntValue = 2147483634;
        }

        else if ([lowercaseString hasSuffix:@"blurry"])
        {
          unsignedIntValue = 2147483635;
        }

        else if ([lowercaseString hasSuffix:@"drink"])
        {
          unsignedIntValue = 2147483636;
        }

        else if ([lowercaseString hasSuffix:@"other"])
        {
          unsignedIntValue = 2147483637;
        }

        else if ([lowercaseString hasSuffix:@"medical reference"])
        {
          unsignedIntValue = 2147483638;
        }

        else if ([lowercaseString hasSuffix:@"negative-internal"])
        {
          unsignedIntValue = 2147483639;
        }

        else if ([lowercaseString hasSuffix:@"document"])
        {
          unsignedIntValue = 2147483640;
        }

        else if ([lowercaseString hasSuffix:@"repair reference"])
        {
          unsignedIntValue = 2147483641;
        }

        else if ([lowercaseString hasSuffix:@"shopping reference"])
        {
          unsignedIntValue = 2147483642;
        }

        else if ([lowercaseString hasSuffix:@"utility reference"])
        {
          unsignedIntValue = 2147483643;
        }

        else if ([lowercaseString hasSuffix:@"negative"])
        {
          unsignedIntValue = 2147483644;
        }

        else if ([lowercaseString hasSuffix:@"memorable"])
        {
          unsignedIntValue = 2147483645;
        }

        else if ([lowercaseString hasSuffix:@"quality"])
        {
          unsignedIntValue = 2147483646;
        }

        else if ([lowercaseString hasSuffix:@"legacy"])
        {
          unsignedIntValue = 0x7FFFFFFFLL;
        }

        else
        {
          unsignedIntValue = 0;
        }
      }
    }
  }

  else
  {
    v6 = [(NSDictionary *)self->_sceneIdentifierBySceneName objectForKeyedSubscript:lowercaseString];
    unsignedIntValue = [v6 unsignedIntValue];
  }

  return unsignedIntValue;
}

- (id)valueGetterForSceneIdentifier:(unint64_t)identifier
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PXScoreLabViewController_valueGetterForSceneIdentifier___block_invoke;
  aBlock[3] = &__block_descriptor_40_e27___NSNumber_16__0__PHAsset_8l;
  aBlock[4] = identifier;
  v3 = _Block_copy(aBlock);

  return v3;
}

id __58__PXScoreLabViewController_valueGetterForSceneIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 sceneClassifications];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([v10 extendedSceneIdentifier] == *(a1 + 32))
          {
            v12 = MEMORY[0x1E696AD98];
            [v10 confidence];
            v11 = [v12 numberWithDouble:?];
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)valueGetterForScoreKeyPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy componentsSeparatedByString:@"."];
  firstObject = [v5 firstObject];

  v7 = [(NSDictionary *)self->_timestampKeyPathByPrefix objectForKeyedSubscript:firstObject];
  v8 = v7;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__PXScoreLabViewController_valueGetterForScoreKeyPath___block_invoke;
    aBlock[3] = &unk_1E773B460;
    v9 = &v17;
    v17 = v7;
    v18 = pathCopy;
    v10 = pathCopy;
    v11 = _Block_copy(aBlock);
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__PXScoreLabViewController_valueGetterForScoreKeyPath___block_invoke_2;
    v14[3] = &unk_1E773B488;
    v9 = &v15;
    v15 = pathCopy;
    v12 = pathCopy;
    v11 = _Block_copy(v14);
  }

  return v11;
}

id __55__PXScoreLabViewController_valueGetterForScoreKeyPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKeyPath:*(a1 + 32)];

  if (v4)
  {
    v5 = [v3 valueForKeyPath:*(a1 + 40)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)redrawGraph
{
  if (!self->_redrawIsDisabled)
  {
    [(PXRoundProgressView *)self->_progressView prepareForReuse];
    [(PXRoundProgressView *)self->_progressView setHidden:0];
    graphView = self->_graphView;

    [(_PXScoreLabGraphView *)graphView reloadData];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PXScoreLabViewController;
  [(PXScoreLabViewController *)&v5 viewDidAppear:appear];
  navigationController = [(PXScoreLabViewController *)self navigationController];
  [navigationController setToolbarHidden:1];
}

- (void)viewDidLoad
{
  v49.receiver = self;
  v49.super_class = PXScoreLabViewController;
  [(PXScoreLabViewController *)&v49 viewDidLoad];
  view = [(PXScoreLabViewController *)self view];
  lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
  [view setBackgroundColor:lightGrayColor];

  [(PXScoreLabViewController *)self additionalSafeAreaInsets];
  v6 = v5 + 60.0;
  v7 = [MEMORY[0x1E69DB878] systemFontOfSize:24.0];
  v47 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, v6, 130.0, 70.0}];
  [v47 setFont:v7];
  [v47 setText:@"X Score:"];
  [v47 setTextAlignment:2];
  [v47 setAutoresizingMask:36];
  [view addSubview:v47];
  v8 = objc_alloc(MEMORY[0x1E69DCD78]);
  [view bounds];
  v10 = [v8 initWithFrame:{130.0, v6, v9 + -130.0, 70.0}];
  xScorePickerView = self->_xScorePickerView;
  self->_xScorePickerView = v10;

  [(UIPickerView *)self->_xScorePickerView setDataSource:self];
  [(UIPickerView *)self->_xScorePickerView setDelegate:self];
  [(UIPickerView *)self->_xScorePickerView setAutoresizingMask:34];
  [(UIPickerView *)self->_xScorePickerView selectRow:[(NSArray *)self->_scoreNames indexOfObject:@"Pleasant Lighting"] inComponent:0 animated:0];
  [view addSubview:self->_xScorePickerView];
  v12 = objc_alloc(MEMORY[0x1E69DD0B0]);
  [view bounds];
  v14 = [v12 initWithFrame:{v13 + -100.0, v6 + 2.0, 100.0, 68.0}];
  xScoreSceneNameField = self->_xScoreSceneNameField;
  self->_xScoreSceneNameField = v14;

  [(UITextField *)self->_xScoreSceneNameField setDelegate:self];
  [(UITextField *)self->_xScoreSceneNameField setAutoresizingMask:33];
  [(UITextField *)self->_xScoreSceneNameField setFont:v7];
  [(UITextField *)self->_xScoreSceneNameField setText:@"Dog"];
  [view addSubview:self->_xScoreSceneNameField];
  v16 = v6 + 50.0;
  v46 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, v16, 130.0, 70.0}];
  [v46 setFont:v7];
  [v46 setText:@"Graph Type:"];
  [v46 setTextAlignment:2];
  [v46 setAutoresizingMask:36];
  [view addSubview:v46];
  v17 = objc_alloc(MEMORY[0x1E69DCD78]);
  [view bounds];
  v19 = [v17 initWithFrame:{130.0, v16, v18 + -130.0, 70.0}];
  graphTypePickerView = self->_graphTypePickerView;
  self->_graphTypePickerView = v19;

  [(UIPickerView *)self->_graphTypePickerView setDataSource:self];
  [(UIPickerView *)self->_graphTypePickerView setDelegate:self];
  [(UIPickerView *)self->_graphTypePickerView setAutoresizingMask:34];
  [view addSubview:self->_graphTypePickerView];
  v21 = v16 + 50.0;
  v22 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, v21, 130.0, 70.0}];
  [v22 setFont:v7];
  [v22 setText:@"Y Score:"];
  [v22 setTextAlignment:2];
  [v22 setAutoresizingMask:36];
  [view addSubview:v22];
  v23 = objc_alloc(MEMORY[0x1E69DCD78]);
  [view bounds];
  v25 = [v23 initWithFrame:{130.0, v21, v24 + -130.0, 70.0}];
  yScorePickerView = self->_yScorePickerView;
  self->_yScorePickerView = v25;

  [(UIPickerView *)self->_yScorePickerView setDataSource:self];
  [(UIPickerView *)self->_yScorePickerView setDelegate:self];
  [(UIPickerView *)self->_yScorePickerView setAutoresizingMask:34];
  [(UIPickerView *)self->_yScorePickerView selectRow:[(NSArray *)self->_scoreNames indexOfObject:@"Pleasant Perspective"] inComponent:0 animated:0];
  [view addSubview:self->_yScorePickerView];
  v27 = objc_alloc(MEMORY[0x1E69DD0B0]);
  [view bounds];
  v29 = [v27 initWithFrame:{v28 + -100.0, v21 + 2.0, 100.0, 68.0}];
  yScoreSceneNameField = self->_yScoreSceneNameField;
  self->_yScoreSceneNameField = v29;

  [(UITextField *)self->_yScoreSceneNameField setDelegate:self];
  [(UITextField *)self->_yScoreSceneNameField setAutoresizingMask:33];
  [(UITextField *)self->_yScoreSceneNameField setFont:v7];
  [(UITextField *)self->_yScoreSceneNameField setText:@"Beach"];
  [view addSubview:self->_yScoreSceneNameField];
  v31 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, v21 + 50.0, 130.0, 70.0}];
  [v31 setFont:v7];
  [v31 setText:@"Asset Filter:"];
  [v31 setTextAlignment:2];
  [v31 setAutoresizingMask:36];
  [view addSubview:v31];
  v32 = objc_alloc(MEMORY[0x1E69DCD78]);
  [view bounds];
  v34 = [v32 initWithFrame:{130.0, v21 + 50.0, v33 + -130.0, 70.0}];
  assetFilterPickerView = self->_assetFilterPickerView;
  self->_assetFilterPickerView = v34;

  [(UIPickerView *)self->_assetFilterPickerView setDataSource:self];
  [(UIPickerView *)self->_assetFilterPickerView setDelegate:self];
  [(UIPickerView *)self->_assetFilterPickerView setAutoresizingMask:34];
  [(UIPickerView *)self->_assetFilterPickerView selectRow:[(NSArray *)self->_assetFilterNames indexOfObject:@"All"] inComponent:0 animated:0];
  [view addSubview:self->_assetFilterPickerView];
  v36 = v21 + 50.0 + 50.0;
  self->_redrawIsDisabled = 1;
  v37 = [_PXScoreLabGraphView alloc];
  [view bounds];
  v39 = v38;
  [view bounds];
  v41 = [(_PXScoreLabGraphView *)v37 initWithFrame:0.0, v36, v39, v40 - v36];
  graphView = self->_graphView;
  self->_graphView = v41;

  [(_PXScoreLabGraphView *)self->_graphView setDelegate:self];
  [(_PXScoreLabGraphView *)self->_graphView setAutoresizingMask:18];
  [(PXScoreLabViewController *)self pickerView:self->_xScorePickerView didSelectRow:[(NSArray *)self->_scoreNames indexOfObject:@"Pleasant Lighting"] inComponent:0];
  [(PXScoreLabViewController *)self pickerView:self->_yScorePickerView didSelectRow:[(NSArray *)self->_scoreNames indexOfObject:@"Pleasant Perspective"] inComponent:0];
  [view addSubview:self->_graphView];
  [view bounds];
  v44 = [[off_1E7721870 alloc] initWithFrame:1 style:{v43 + -10.0 + -36.0, v36 + 10.0, 36.0, 36.0}];
  progressView = self->_progressView;
  self->_progressView = v44;

  [(PXRoundProgressView *)self->_progressView setAutoresizingMask:45];
  [view addSubview:self->_progressView];
  self->_redrawIsDisabled = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PXScoreLabViewController_viewDidLoad__block_invoke;
  block[3] = &unk_1E77498A0;
  block[4] = self;
  block[5] = 0;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (PXScoreLabViewController)init
{
  v22[5] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = PXScoreLabViewController;
  v2 = [(PXScoreLabViewController *)&v20 init];
  v3 = v2;
  if (v2)
  {
    scoreNames = v2->_scoreNames;
    v2->_scoreNames = &unk_1F1910CA8;

    keyPathByScoreName = v3->_keyPathByScoreName;
    v3->_keyPathByScoreName = &unk_1F190F580;

    timestampKeyPathByPrefix = v3->_timestampKeyPathByPrefix;
    v3->_timestampKeyPathByPrefix = &unk_1F190F5A8;

    assetFilterNames = v3->_assetFilterNames;
    v3->_assetFilterNames = &unk_1F1910CC0;

    v21[0] = @"Portrait";
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mediaSubtypes & %d) != 0", 16];
    v22[0] = v8;
    v21[1] = @"Live";
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mediaSubtypes & %d) != 0", 8];
    v22[1] = v9;
    v21[2] = @"HDR";
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mediaSubtypes & %d) != 0", 2];
    v22[2] = v10;
    v21[3] = @"Panorama";
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mediaSubtypes & %d) != 0", 1];
    v22[3] = v11;
    v21[4] = @"Video";
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"mediaType == %d", 2];
    v22[4] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:5];
    assetPredicateByFilterName = v3->_assetPredicateByFilterName;
    v3->_assetPredicateByFilterName = v13;

    v15 = objc_alloc_init(MEMORY[0x1E69C0850]);
    v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "nodeCount")}];
    PFSceneTaxonomyEnumerateTopologicallyOrderedNodes();
    sceneIdentifierBySceneName = v3->_sceneIdentifierBySceneName;
    v3->_sceneIdentifierBySceneName = v19;
    v17 = v19;
  }

  return v3;
}

uint64_t __32__PXScoreLabViewController_init__block_invoke(uint64_t a1)
{
  v2 = PFSceneTaxonomyNodeName();
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:PFSceneTaxonomyNodeExtendedSceneClassId()];
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v2];
  }

  return 0;
}

@end