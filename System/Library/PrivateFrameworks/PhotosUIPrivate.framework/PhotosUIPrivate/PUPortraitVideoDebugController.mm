@interface PUPortraitVideoDebugController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation PUPortraitVideoDebugController

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PUPortraitVideoDebugController *)self compositionController];
  v7 = [v6 adjustmentConstants];

  v8 = [(PUPortraitVideoDebugController *)self compositionController];
  v9 = [v7 PIPortraitVideoAdjustmentKey];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PUPortraitVideoDebugController_tableView_didSelectRowAtIndexPath___block_invoke;
  v11[3] = &unk_1E7B7B450;
  v12 = v5;
  v10 = v5;
  [v8 modifyAdjustmentWithKey:v9 modificationBlock:v11];
}

void __68__PUPortraitVideoDebugController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDebugMode:{objc_msgSend(v2, "row")}];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"cell"];
  }

  v8 = [(PUPortraitVideoDebugController *)self debugModes];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];
  v11 = [v7 textLabel];
  [v11 setText:v10];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(PUPortraitVideoDebugController *)self debugModes:a3];
  v5 = [v4 count];

  return v5;
}

- (void)loadView
{
  v46[3] = *MEMORY[0x1E69E9840];
  v3 = [(PUPortraitVideoDebugController *)self compositionController];
  v44 = [v3 portraitVideoAdjustmentController];

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
  v38 = [v10 leadingAnchor];
  v42 = v9;
  v40 = [v9 layoutMarginsGuide];
  v36 = [v40 leadingAnchor];
  v12 = [v38 constraintEqualToAnchor:v36];
  v46[0] = v12;
  v13 = [v10 trailingAnchor];
  v14 = [v10 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:80.0];
  v46[1] = v15;
  v16 = [v10 topAnchor];
  v17 = [v9 layoutMarginsGuide];
  v18 = [v17 topAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:20.0];
  v46[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
  [v34 activateConstraints:v20];

  v21 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:0 style:{v5, v6, v7, v8}];
  [v42 addSubview:v21];
  [v21 setDataSource:self];
  [v21 setDelegate:self];
  v22 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v44 inSection:{"debugMode"), 0}];
  [v21 selectRowAtIndexPath:v22 animated:0 scrollPosition:1];

  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = MEMORY[0x1E696ACD8];
  v41 = [v21 leadingAnchor];
  v39 = [v10 trailingAnchor];
  v37 = [v41 constraintEqualToAnchor:v39 constant:8.0];
  v45[0] = v37;
  v33 = [v21 trailingAnchor];
  v35 = [v42 layoutMarginsGuide];
  v31 = [v35 trailingAnchor];
  v23 = [v33 constraintEqualToAnchor:v31];
  v45[1] = v23;
  v24 = [v21 topAnchor];
  v25 = [v10 topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-10.0];
  v45[2] = v26;
  v27 = [v21 heightAnchor];
  v28 = [(PUPortraitVideoDebugController *)self debugModes];
  v29 = [v27 constraintEqualToConstant:{objc_msgSend(v28, "count") * 44.0}];
  v45[3] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
  [v32 activateConstraints:v30];

  [(PUPortraitVideoDebugController *)self setView:v42];
}

@end