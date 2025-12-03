@interface PUPortraitVideoDebugController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PUPortraitVideoDebugController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  compositionController = [(PUPortraitVideoDebugController *)self compositionController];
  adjustmentConstants = [compositionController adjustmentConstants];

  compositionController2 = [(PUPortraitVideoDebugController *)self compositionController];
  pIPortraitVideoAdjustmentKey = [adjustmentConstants PIPortraitVideoAdjustmentKey];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PUPortraitVideoDebugController_tableView_didSelectRowAtIndexPath___block_invoke;
  v11[3] = &unk_1E7B7B450;
  v12 = pathCopy;
  v10 = pathCopy;
  [compositionController2 modifyAdjustmentWithKey:pIPortraitVideoAdjustmentKey modificationBlock:v11];
}

void __68__PUPortraitVideoDebugController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDebugMode:{objc_msgSend(v2, "row")}];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"cell"];
  }

  debugModes = [(PUPortraitVideoDebugController *)self debugModes];
  v9 = [pathCopy row];

  v10 = [debugModes objectAtIndexedSubscript:v9];
  textLabel = [v7 textLabel];
  [textLabel setText:v10];

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PUPortraitVideoDebugController *)self debugModes:view];
  v5 = [v4 count];

  return v5;
}

- (void)loadView
{
  v46[3] = *MEMORY[0x1E69E9840];
  compositionController = [(PUPortraitVideoDebugController *)self compositionController];
  portraitVideoAdjustmentController = [compositionController portraitVideoAdjustmentController];

  [(PUPortraitVideoDebugController *)self setDebugModes:&unk_1F2B7D340];
  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
  [v9 addSubview:v10];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v10 setFont:v11];

  [v10 setText:@"Debug:"];
  [v10 setTextAlignment:2];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v10 leadingAnchor];
  v42 = v9;
  layoutMarginsGuide = [v9 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v46[0] = v12;
  trailingAnchor = [v10 trailingAnchor];
  leadingAnchor3 = [v10 leadingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:80.0];
  v46[1] = v15;
  topAnchor = [v10 topAnchor];
  layoutMarginsGuide2 = [v9 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide2 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v46[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
  [v34 activateConstraints:v20];

  v21 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:0 style:{v5, v6, v7, v8}];
  [v42 addSubview:v21];
  [v21 setDataSource:self];
  [v21 setDelegate:self];
  v22 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(portraitVideoAdjustmentController inSection:{"debugMode"), 0}];
  [v21 selectRowAtIndexPath:v22 animated:0 scrollPosition:1];

  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = MEMORY[0x1E696ACD8];
  leadingAnchor4 = [v21 leadingAnchor];
  trailingAnchor2 = [v10 trailingAnchor];
  v37 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2 constant:8.0];
  v45[0] = v37;
  trailingAnchor3 = [v21 trailingAnchor];
  layoutMarginsGuide3 = [v42 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide3 trailingAnchor];
  v23 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v45[1] = v23;
  topAnchor3 = [v21 topAnchor];
  topAnchor4 = [v10 topAnchor];
  v26 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:-10.0];
  v45[2] = v26;
  heightAnchor = [v21 heightAnchor];
  debugModes = [(PUPortraitVideoDebugController *)self debugModes];
  v29 = [heightAnchor constraintEqualToConstant:{objc_msgSend(debugModes, "count") * 44.0}];
  v45[3] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
  [v32 activateConstraints:v30];

  [(PUPortraitVideoDebugController *)self setView:v42];
}

@end