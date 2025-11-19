@interface PXDiagnosticsHighlightCurationSettingsViewController
- (NSDictionary)options;
- (PXDiagnosticsHighlightCurationSettingsViewController)initWithDelegate:(id)a3;
- (void)_applySettingsGlobally:(id)a3;
- (void)_cancel:(id)a3;
- (void)_done:(id)a3;
- (void)loadView;
- (void)setOptions:(id)a3;
- (void)viewDidLoad;
@end

@implementation PXDiagnosticsHighlightCurationSettingsViewController

- (void)_done:(id)a3
{
  delegate = self->_delegate;
  v5 = [(PXDiagnosticsHighlightCurationSettingsViewController *)self options];
  [(PXDiagnosticsHighlightCurationSettingsViewControllerDelegate *)delegate applySettings:v5 globally:0];

  v7 = [(PXDiagnosticsHighlightCurationSettingsViewController *)self navigationController];
  v6 = [v7 popViewControllerAnimated:1];
}

- (void)_cancel:(id)a3
{
  v4 = [(PXDiagnosticsHighlightCurationSettingsViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)_applySettingsGlobally:(id)a3
{
  delegate = self->_delegate;
  v4 = [(PXDiagnosticsHighlightCurationSettingsViewController *)self options];
  [(PXDiagnosticsHighlightCurationSettingsViewControllerDelegate *)delegate applySettings:v4 globally:1];
}

- (void)setOptions:(id)a3
{
  objc_storeStrong(&self->_options, a3);
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"doIdenticalDeduping"];
  -[UISwitch setOn:](self->_doIdenticalDedupingSwitch, "setOn:", [v6 BOOLValue]);

  v7 = [v5 objectForKeyedSubscript:@"identicalDedupingTimeInterval"];
  v8 = [v7 stringValue];
  [(UITextField *)self->_identicalDedupingTimeIntervalTextField setText:v8];

  v9 = [v5 objectForKeyedSubscript:@"identicalDedupingTimeIntervalForPeople"];
  v10 = [v9 stringValue];
  [(UITextField *)self->_identicalDedupingTimeIntervalForPeopleTextField setText:v10];

  v11 = [v5 objectForKeyedSubscript:@"identicalDedupingMaximumTimeGroupExtension"];
  v12 = [v11 stringValue];
  [(UITextField *)self->_identicalDedupingMaximumTimeGroupExtensionTextField setText:v12];

  v13 = [v5 objectForKeyedSubscript:@"maximumNumberOfItemsPerIdenticalCluster"];
  v14 = [v13 stringValue];
  [(UITextField *)self->_maximumNumberOfItemsPerIdenticalClusterTextField setText:v14];

  v15 = [v5 objectForKeyedSubscript:@"identicalDedupingThreshold"];
  v16 = [v15 stringValue];
  [(UITextField *)self->_identicalDedupingThresholdTextField setText:v16];

  v17 = [v5 objectForKeyedSubscript:@"identicalDedupingThresholdForPeople"];
  v18 = [v17 stringValue];
  [(UITextField *)self->_identicalDedupingThresholdForPeopleTextField setText:v18];

  v19 = [v5 objectForKeyedSubscript:@"identicalDedupingThresholdForBestItems"];
  v20 = [v19 stringValue];
  [(UITextField *)self->_identicalDedupingThresholdForBestItemsTextField setText:v20];

  v21 = [v5 objectForKeyedSubscript:@"useFaceprintsForIdenticalDeduping"];
  -[UISwitch setOn:](self->_useFaceprintsForIdenticalDedupingSwitch, "setOn:", [v21 BOOLValue]);

  v22 = [v5 objectForKeyedSubscript:@"identicalDedupingFaceprintDistance"];
  v23 = [v22 stringValue];
  [(UITextField *)self->_identicalDedupingFaceprintDistanceTextField setText:v23];

  v24 = [v5 objectForKeyedSubscript:@"doSemanticalDeduping"];
  -[UISwitch setOn:](self->_doSemanticalDedupingSwitch, "setOn:", [v24 BOOLValue]);

  v25 = [v5 objectForKeyedSubscript:@"semanticalDedupingTimeInterval"];
  v26 = [v25 stringValue];
  [(UITextField *)self->_semanticalDedupingTimeIntervalTextField setText:v26];

  v27 = [v5 objectForKeyedSubscript:@"semanticalDedupingTimeIntervalForPeople"];
  v28 = [v27 stringValue];
  [(UITextField *)self->_semanticalDedupingTimeIntervalForPeopleTextField setText:v28];

  v29 = [v5 objectForKeyedSubscript:@"semanticalDedupingTimeIntervalForPersons"];
  v30 = [v29 stringValue];
  [(UITextField *)self->_semanticalDedupingTimeIntervalForPersonsTextField setText:v30];

  v31 = [v5 objectForKeyedSubscript:@"semanticalDedupingMaximumTimeGroupExtension"];
  v32 = [v31 stringValue];
  [(UITextField *)self->_semanticalDedupingMaximumTimeGroupExtensionTextField setText:v32];

  v33 = [v5 objectForKeyedSubscript:@"maximumNumberOfItemsPerSemanticalCluster"];
  v34 = [v33 stringValue];
  [(UITextField *)self->_maximumNumberOfItemsPerSemanticalClusterTextField setText:v34];

  v35 = [v5 objectForKeyedSubscript:@"semanticalDedupingThreshold"];
  v36 = [v35 stringValue];
  [(UITextField *)self->_semanticalDedupingThresholdTextField setText:v36];

  v37 = [v5 objectForKeyedSubscript:@"semanticalDedupingThresholdForPeople"];
  v38 = [v37 stringValue];
  [(UITextField *)self->_semanticalDedupingThresholdForPeopleTextField setText:v38];

  v39 = [v5 objectForKeyedSubscript:@"semanticalDedupingThresholdForPersons"];
  v40 = [v39 stringValue];
  [(UITextField *)self->_semanticalDedupingThresholdForPersonsTextField setText:v40];

  v41 = [v5 objectForKeyedSubscript:@"dontSemanticallyDedupePeople"];
  -[UISwitch setOn:](self->_doNotSemanticallyDedupePeopleSwitch, "setOn:", [v41 BOOLValue]);

  v42 = [v5 objectForKeyedSubscript:@"dontSemanticallyDedupePersons"];
  -[UISwitch setOn:](self->_doNotSemanticallyDedupePersonsSwitch, "setOn:", [v42 BOOLValue]);

  v43 = [v5 objectForKeyedSubscript:@"allowAdaptiveForSemanticalDeduping"];
  -[UISwitch setOn:](self->_allowAdaptiveForSemanticalDedupingSwitch, "setOn:", [v43 BOOLValue]);

  v44 = [v5 objectForKeyedSubscript:@"useOnlyScenesForDeduping"];
  -[UISwitch setOn:](self->_useOnlyScenesForDedupingSwitch, "setOn:", [v44 BOOLValue]);

  v45 = [v5 objectForKeyedSubscript:@"useAllPersonsForDeduping"];
  -[UISwitch setOn:](self->_useAllPersonsForDedupingSwitch, "setOn:", [v45 BOOLValue]);

  v46 = [v5 objectForKeyedSubscript:@"useFaceQualityForElection"];
  -[UISwitch setOn:](self->_useFaceQualityForElectionSwitch, "setOn:", [v46 BOOLValue]);

  v47 = [v5 objectForKeyedSubscript:@"doNotDedupeVideos"];
  -[UISwitch setOn:](self->_doNotDedupeVideosSwitch, "setOn:", [v47 BOOLValue]);

  v48 = [v5 objectForKeyedSubscript:@"doNotDedupeInterestingPortraitsAndLivePictures"];
  -[UISwitch setOn:](self->_doNotDedupeInterestingPortraitsAndLivePicturesSwitch, "setOn:", [v48 BOOLValue]);

  v49 = [v5 objectForKeyedSubscript:@"onlyDedupeContiguousItems"];
  -[UISwitch setOn:](self->_onlyDedupeContiguousItemsSwitch, "setOn:", [v49 BOOLValue]);

  v50 = [v5 objectForKeyedSubscript:@"doDejunk"];
  -[UISwitch setOn:](self->_doDejunkSwitch, "setOn:", [v50 BOOLValue]);

  v51 = [v5 objectForKeyedSubscript:@"returnDedupedJunkIfOnlyJunk"];
  -[UISwitch setOn:](self->_returnDedupedJunkIfOnlyJunkSwitch, "setOn:", [v51 BOOLValue]);

  v52 = [v5 objectForKeyedSubscript:@"doFinalPass"];
  -[UISwitch setOn:](self->_doFinalPassSwitch, "setOn:", [v52 BOOLValue]);

  v53 = [v5 objectForKeyedSubscript:@"finalPassTimeInterval"];
  v54 = [v53 stringValue];
  [(UITextField *)self->_finalPassTimeIntervalTextField setText:v54];

  v55 = [v5 objectForKeyedSubscript:@"finalPassMaximumTimeGroupExtension"];
  v56 = [v55 stringValue];
  [(UITextField *)self->_finalPassMaximumTimeGroupExtensionTextField setText:v56];

  v58 = [v5 objectForKeyedSubscript:@"finalPassDedupingThreshold"];
  v57 = [v58 stringValue];
  [(UITextField *)self->_finalPassDedupingThresholdTextField setText:v57];
}

- (NSDictionary)options
{
  v78[34] = *MEMORY[0x1E69E9840];
  v77[0] = @"doIdenticalDeduping";
  v76 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISwitch isOn](self->_doIdenticalDedupingSwitch, "isOn")}];
  v78[0] = v76;
  v77[1] = @"identicalDedupingTimeInterval";
  v3 = MEMORY[0x1E696AD98];
  v75 = [(UITextField *)self->_identicalDedupingTimeIntervalTextField text];
  [v75 doubleValue];
  v74 = [v3 numberWithDouble:?];
  v78[1] = v74;
  v77[2] = @"identicalDedupingTimeIntervalForPeople";
  v4 = MEMORY[0x1E696AD98];
  v73 = [(UITextField *)self->_identicalDedupingTimeIntervalForPeopleTextField text];
  [v73 doubleValue];
  v72 = [v4 numberWithDouble:?];
  v78[2] = v72;
  v77[3] = @"identicalDedupingMaximumTimeGroupExtension";
  v5 = MEMORY[0x1E696AD98];
  v71 = [(UITextField *)self->_identicalDedupingMaximumTimeGroupExtensionTextField text];
  [v71 doubleValue];
  v70 = [v5 numberWithDouble:?];
  v78[3] = v70;
  v77[4] = @"maximumNumberOfItemsPerIdenticalCluster";
  v6 = MEMORY[0x1E696AD98];
  v69 = [(UITextField *)self->_maximumNumberOfItemsPerIdenticalClusterTextField text];
  v68 = [v6 numberWithInteger:{objc_msgSend(v69, "integerValue")}];
  v78[4] = v68;
  v77[5] = @"identicalDedupingThreshold";
  v7 = MEMORY[0x1E696AD98];
  v67 = [(UITextField *)self->_identicalDedupingThresholdTextField text];
  [v67 doubleValue];
  v66 = [v7 numberWithDouble:?];
  v78[5] = v66;
  v77[6] = @"identicalDedupingThresholdForPeople";
  v8 = MEMORY[0x1E696AD98];
  v65 = [(UITextField *)self->_identicalDedupingThresholdForPeopleTextField text];
  [v65 doubleValue];
  v64 = [v8 numberWithDouble:?];
  v78[6] = v64;
  v77[7] = @"identicalDedupingThresholdForBestItems";
  v9 = MEMORY[0x1E696AD98];
  v63 = [(UITextField *)self->_identicalDedupingThresholdForBestItemsTextField text];
  [v63 doubleValue];
  v62 = [v9 numberWithDouble:?];
  v78[7] = v62;
  v77[8] = @"useFaceprintsForIdenticalDeduping";
  v61 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISwitch isOn](self->_useFaceprintsForIdenticalDedupingSwitch, "isOn")}];
  v78[8] = v61;
  v77[9] = @"identicalDedupingFaceprintDistance";
  v10 = MEMORY[0x1E696AD98];
  v60 = [(UITextField *)self->_identicalDedupingFaceprintDistanceTextField text];
  [v60 doubleValue];
  v59 = [v10 numberWithDouble:?];
  v78[9] = v59;
  v77[10] = @"doSemanticalDeduping";
  v58 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISwitch isOn](self->_doSemanticalDedupingSwitch, "isOn")}];
  v78[10] = v58;
  v77[11] = @"semanticalDedupingTimeInterval";
  v11 = MEMORY[0x1E696AD98];
  v57 = [(UITextField *)self->_semanticalDedupingTimeIntervalTextField text];
  [v57 doubleValue];
  v56 = [v11 numberWithDouble:?];
  v78[11] = v56;
  v77[12] = @"semanticalDedupingTimeIntervalForPeople";
  v12 = MEMORY[0x1E696AD98];
  v55 = [(UITextField *)self->_semanticalDedupingTimeIntervalForPeopleTextField text];
  [v55 doubleValue];
  v54 = [v12 numberWithDouble:?];
  v78[12] = v54;
  v77[13] = @"semanticalDedupingTimeIntervalForPersons";
  v13 = MEMORY[0x1E696AD98];
  v53 = [(UITextField *)self->_semanticalDedupingTimeIntervalForPersonsTextField text];
  [v53 doubleValue];
  v52 = [v13 numberWithDouble:?];
  v78[13] = v52;
  v77[14] = @"semanticalDedupingMaximumTimeGroupExtension";
  v14 = MEMORY[0x1E696AD98];
  v51 = [(UITextField *)self->_semanticalDedupingMaximumTimeGroupExtensionTextField text];
  [v51 doubleValue];
  v50 = [v14 numberWithDouble:?];
  v78[14] = v50;
  v77[15] = @"maximumNumberOfItemsPerSemanticalCluster";
  v15 = MEMORY[0x1E696AD98];
  v49 = [(UITextField *)self->_maximumNumberOfItemsPerSemanticalClusterTextField text];
  v48 = [v15 numberWithInteger:{objc_msgSend(v49, "integerValue")}];
  v78[15] = v48;
  v77[16] = @"semanticalDedupingThreshold";
  v16 = MEMORY[0x1E696AD98];
  v47 = [(UITextField *)self->_semanticalDedupingThresholdTextField text];
  [v47 doubleValue];
  v46 = [v16 numberWithDouble:?];
  v78[16] = v46;
  v77[17] = @"semanticalDedupingThresholdForPeople";
  v17 = MEMORY[0x1E696AD98];
  v45 = [(UITextField *)self->_semanticalDedupingThresholdForPeopleTextField text];
  [v45 doubleValue];
  v44 = [v17 numberWithDouble:?];
  v78[17] = v44;
  v77[18] = @"semanticalDedupingThresholdForPersons";
  v18 = MEMORY[0x1E696AD98];
  v43 = [(UITextField *)self->_semanticalDedupingThresholdForPersonsTextField text];
  [v43 doubleValue];
  v42 = [v18 numberWithDouble:?];
  v78[18] = v42;
  v77[19] = @"dontSemanticallyDedupePeople";
  v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISwitch isOn](self->_doNotSemanticallyDedupePeopleSwitch, "isOn")}];
  v78[19] = v41;
  v77[20] = @"dontSemanticallyDedupePersons";
  v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISwitch isOn](self->_doNotSemanticallyDedupePersonsSwitch, "isOn")}];
  v78[20] = v40;
  v77[21] = @"allowAdaptiveForSemanticalDeduping";
  v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISwitch isOn](self->_allowAdaptiveForSemanticalDedupingSwitch, "isOn")}];
  v78[21] = v39;
  v77[22] = @"useOnlyScenesForDeduping";
  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISwitch isOn](self->_useOnlyScenesForDedupingSwitch, "isOn")}];
  v78[22] = v38;
  v77[23] = @"useAllPersonsForDeduping";
  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISwitch isOn](self->_useAllPersonsForDedupingSwitch, "isOn")}];
  v78[23] = v37;
  v77[24] = @"useFaceQualityForElection";
  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISwitch isOn](self->_useFaceQualityForElectionSwitch, "isOn")}];
  v78[24] = v36;
  v77[25] = @"doNotDedupeVideos";
  v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISwitch isOn](self->_doNotDedupeVideosSwitch, "isOn")}];
  v78[25] = v35;
  v77[26] = @"doNotDedupeInterestingPortraitsAndLivePictures";
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISwitch isOn](self->_doNotDedupeInterestingPortraitsAndLivePicturesSwitch, "isOn")}];
  v78[26] = v34;
  v77[27] = @"onlyDedupeContiguousItems";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISwitch isOn](self->_onlyDedupeContiguousItemsSwitch, "isOn")}];
  v78[27] = v19;
  v77[28] = @"doDejunk";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISwitch isOn](self->_doDejunkSwitch, "isOn")}];
  v78[28] = v20;
  v77[29] = @"returnDedupedJunkIfOnlyJunk";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISwitch isOn](self->_returnDedupedJunkIfOnlyJunkSwitch, "isOn")}];
  v78[29] = v21;
  v77[30] = @"doFinalPass";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISwitch isOn](self->_doFinalPassSwitch, "isOn")}];
  v78[30] = v22;
  v77[31] = @"finalPassTimeInterval";
  v23 = MEMORY[0x1E696AD98];
  v24 = [(UITextField *)self->_finalPassTimeIntervalTextField text];
  [v24 doubleValue];
  v25 = [v23 numberWithDouble:?];
  v78[31] = v25;
  v77[32] = @"finalPassMaximumTimeGroupExtension";
  v26 = MEMORY[0x1E696AD98];
  v27 = [(UITextField *)self->_finalPassMaximumTimeGroupExtensionTextField text];
  [v27 doubleValue];
  v28 = [v26 numberWithDouble:?];
  v78[32] = v28;
  v77[33] = @"finalPassDedupingThreshold";
  v29 = MEMORY[0x1E696AD98];
  v30 = [(UITextField *)self->_finalPassDedupingThresholdTextField text];
  [v30 doubleValue];
  v31 = [v29 numberWithDouble:?];
  v78[33] = v31;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:34];

  return v33;
}

- (void)viewDidLoad
{
  v13[5] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PXDiagnosticsHighlightCurationSettingsViewController;
  [(PXDiagnosticsHighlightCurationSettingsViewController *)&v12 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
  v4 = [(PXDiagnosticsHighlightCurationSettingsViewController *)self navigationItem];
  [v4 setLeftBarButtonItem:v3];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  v6 = [(PXDiagnosticsHighlightCurationSettingsViewController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"Apply Globally" style:0 target:self action:sel__applySettingsGlobally_];
  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"Restore Defaults" style:0 target:self action:sel__resetSettings_];
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v7;
  v13[3] = v9;
  v13[4] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:5];
  [(PXDiagnosticsHighlightCurationSettingsViewController *)self setToolbarItems:v10];

  v11 = [(PXDiagnosticsHighlightCurationSettingsViewController *)self navigationController];
  [v11 setToolbarHidden:0 animated:1];
}

- (void)loadView
{
  v3 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 320.0, 480.0}];
  [(PXDiagnosticsHighlightCurationSettingsViewController *)self setView:v3];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = v3;
  [v5 frame];
  v7 = v6;
  [v5 frame];
  v9 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{0.0, 10.0, v7, v8 + -10.0 + -20.0 + -26.0 + -10.0}];
  [v9 setAutoresizingMask:18];
  [v9 setKeyboardDismissMode:1];
  [v5 addSubview:v9];
  v132 = 0;
  v133 = &v132;
  v134 = 0x2020000000;
  v135 = 0x4000000000000000;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PXDiagnosticsHighlightCurationSettingsViewController_loadView__block_invoke;
  aBlock[3] = &unk_1E773E920;
  v131 = v7;
  v130 = &v132;
  v10 = v9;
  v129 = v10;
  v11 = _Block_copy(aBlock);
  v124[0] = MEMORY[0x1E69E9820];
  v124[1] = 3221225472;
  v124[2] = __64__PXDiagnosticsHighlightCurationSettingsViewController_loadView__block_invoke_2;
  v124[3] = &unk_1E773E948;
  v127 = v7;
  v126 = &v132;
  v12 = v10;
  v125 = v12;
  v13 = _Block_copy(v124);
  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __64__PXDiagnosticsHighlightCurationSettingsViewController_loadView__block_invoke_3;
  v120[3] = &unk_1E773E970;
  v122 = &v132;
  v123 = v7;
  v119 = v12;
  v121 = v119;
  v14 = _Block_copy(v120);
  v15 = self->_options;
  v14[2](v14, @"Identical Deduping");
  v16 = [(NSDictionary *)v15 objectForKeyedSubscript:@"doIdenticalDeduping"];
  v17 = v11[2](v11, @"Do Identical Deduping:", v16);
  doIdenticalDedupingSwitch = self->_doIdenticalDedupingSwitch;
  self->_doIdenticalDedupingSwitch = v17;

  v19 = [(NSDictionary *)v15 objectForKeyedSubscript:@"identicalDedupingTimeInterval"];
  v20 = v13[2](v13, @"Time Interval (s):", v19);
  identicalDedupingTimeIntervalTextField = self->_identicalDedupingTimeIntervalTextField;
  self->_identicalDedupingTimeIntervalTextField = v20;

  v22 = [(NSDictionary *)v15 objectForKeyedSubscript:@"identicalDedupingTimeIntervalForPeople"];
  v23 = v13[2](v13, @"People Time Interval (s):", v22);
  identicalDedupingTimeIntervalForPeopleTextField = self->_identicalDedupingTimeIntervalForPeopleTextField;
  self->_identicalDedupingTimeIntervalForPeopleTextField = v23;

  v25 = [(NSDictionary *)v15 objectForKeyedSubscript:@"identicalDedupingMaximumTimeGroupExtension"];
  v26 = v13[2](v13, @"Maximum Time Group Extension:", v25);
  identicalDedupingMaximumTimeGroupExtensionTextField = self->_identicalDedupingMaximumTimeGroupExtensionTextField;
  self->_identicalDedupingMaximumTimeGroupExtensionTextField = v26;

  v28 = [(NSDictionary *)v15 objectForKeyedSubscript:@"maximumNumberOfItemsPerIdenticalCluster"];
  v29 = v13[2](v13, @"Max Identical Cluster Size:", v28);
  maximumNumberOfItemsPerIdenticalClusterTextField = self->_maximumNumberOfItemsPerIdenticalClusterTextField;
  self->_maximumNumberOfItemsPerIdenticalClusterTextField = v29;

  v31 = [(NSDictionary *)v15 objectForKeyedSubscript:@"identicalDedupingThreshold"];
  v32 = v13[2](v13, @"Threshold:", v31);
  identicalDedupingThresholdTextField = self->_identicalDedupingThresholdTextField;
  self->_identicalDedupingThresholdTextField = v32;

  v34 = [(NSDictionary *)v15 objectForKeyedSubscript:@"identicalDedupingThresholdForPeople"];
  v35 = v13[2](v13, @"People Threshold:", v34);
  identicalDedupingThresholdForPeopleTextField = self->_identicalDedupingThresholdForPeopleTextField;
  self->_identicalDedupingThresholdForPeopleTextField = v35;

  v37 = [(NSDictionary *)v15 objectForKeyedSubscript:@"identicalDedupingThresholdForBestItems"];
  v38 = v13[2](v13, @"Best Items Threshold:", v37);
  identicalDedupingThresholdForBestItemsTextField = self->_identicalDedupingThresholdForBestItemsTextField;
  self->_identicalDedupingThresholdForBestItemsTextField = v38;

  v40 = [(NSDictionary *)v15 objectForKeyedSubscript:@"useFaceprintsForIdenticalDeduping"];
  v41 = v11[2](v11, @"Use Faceprints:", v40);
  useFaceprintsForIdenticalDedupingSwitch = self->_useFaceprintsForIdenticalDedupingSwitch;
  self->_useFaceprintsForIdenticalDedupingSwitch = v41;

  v43 = [(NSDictionary *)v15 objectForKeyedSubscript:@"identicalDedupingFaceprintDistance"];
  v44 = v13[2](v13, @"Faceprint Distance:", v43);
  identicalDedupingFaceprintDistanceTextField = self->_identicalDedupingFaceprintDistanceTextField;
  self->_identicalDedupingFaceprintDistanceTextField = v44;

  v14[2](v14, @"Semantical Deduping");
  v46 = [(NSDictionary *)v15 objectForKeyedSubscript:@"doSemanticalDeduping"];
  v47 = v11[2](v11, @"Do Semantical Deduping:", v46);
  doSemanticalDedupingSwitch = self->_doSemanticalDedupingSwitch;
  self->_doSemanticalDedupingSwitch = v47;

  v49 = [(NSDictionary *)v15 objectForKeyedSubscript:@"dontSemanticallyDedupePeople"];
  v50 = v11[2](v11, @"Disable People Deduping:", v49);
  doNotSemanticallyDedupePeopleSwitch = self->_doNotSemanticallyDedupePeopleSwitch;
  self->_doNotSemanticallyDedupePeopleSwitch = v50;

  v52 = [(NSDictionary *)v15 objectForKeyedSubscript:@"dontSemanticallyDedupePersons"];
  v53 = v11[2](v11, @"Disable Persons Deduping:", v52);
  doNotSemanticallyDedupePersonsSwitch = self->_doNotSemanticallyDedupePersonsSwitch;
  self->_doNotSemanticallyDedupePersonsSwitch = v53;

  v55 = [(NSDictionary *)v15 objectForKeyedSubscript:@"semanticalDedupingTimeInterval"];
  v56 = v13[2](v13, @"Time Interval (s):", v55);
  semanticalDedupingTimeIntervalTextField = self->_semanticalDedupingTimeIntervalTextField;
  self->_semanticalDedupingTimeIntervalTextField = v56;

  v58 = [(NSDictionary *)v15 objectForKeyedSubscript:@"semanticalDedupingTimeIntervalForPeople"];
  v59 = v13[2](v13, @"People Time Interval (s):", v58);
  semanticalDedupingTimeIntervalForPeopleTextField = self->_semanticalDedupingTimeIntervalForPeopleTextField;
  self->_semanticalDedupingTimeIntervalForPeopleTextField = v59;

  v61 = [(NSDictionary *)v15 objectForKeyedSubscript:@"semanticalDedupingTimeIntervalForPersons"];
  v62 = v13[2](v13, @"Persons Time Interval (s):", v61);
  semanticalDedupingTimeIntervalForPersonsTextField = self->_semanticalDedupingTimeIntervalForPersonsTextField;
  self->_semanticalDedupingTimeIntervalForPersonsTextField = v62;

  v64 = [(NSDictionary *)v15 objectForKeyedSubscript:@"semanticalDedupingMaximumTimeGroupExtension"];
  v65 = v13[2](v13, @"Maximum Time Group Extension:", v64);
  semanticalDedupingMaximumTimeGroupExtensionTextField = self->_semanticalDedupingMaximumTimeGroupExtensionTextField;
  self->_semanticalDedupingMaximumTimeGroupExtensionTextField = v65;

  v67 = [(NSDictionary *)v15 objectForKeyedSubscript:@"maximumNumberOfItemsPerSemanticalCluster"];
  v68 = v13[2](v13, @"Max Semantical Cluster Size:", v67);
  maximumNumberOfItemsPerSemanticalClusterTextField = self->_maximumNumberOfItemsPerSemanticalClusterTextField;
  self->_maximumNumberOfItemsPerSemanticalClusterTextField = v68;

  v70 = [(NSDictionary *)v15 objectForKeyedSubscript:@"semanticalDedupingThreshold"];
  v71 = v13[2](v13, @"Threshold:", v70);
  semanticalDedupingThresholdTextField = self->_semanticalDedupingThresholdTextField;
  self->_semanticalDedupingThresholdTextField = v71;

  v73 = [(NSDictionary *)v15 objectForKeyedSubscript:@"semanticalDedupingThresholdForPeople"];
  v74 = v13[2](v13, @"People Threshold:", v73);
  semanticalDedupingThresholdForPeopleTextField = self->_semanticalDedupingThresholdForPeopleTextField;
  self->_semanticalDedupingThresholdForPeopleTextField = v74;

  v76 = [(NSDictionary *)v15 objectForKeyedSubscript:@"semanticalDedupingThresholdForPersons"];
  v77 = v13[2](v13, @"Persons Threshold:", v76);
  semanticalDedupingThresholdForPersonsTextField = self->_semanticalDedupingThresholdForPersonsTextField;
  self->_semanticalDedupingThresholdForPersonsTextField = v77;

  v79 = [(NSDictionary *)v15 objectForKeyedSubscript:@"allowAdaptiveForSemanticalDeduping"];
  v80 = v11[2](v11, @"Allow Adaptive For Semantical:", v79);
  allowAdaptiveForSemanticalDedupingSwitch = self->_allowAdaptiveForSemanticalDedupingSwitch;
  self->_allowAdaptiveForSemanticalDedupingSwitch = v80;

  [(UISwitch *)self->_allowAdaptiveForSemanticalDedupingSwitch setEnabled:0];
  v14[2](v14, @"Misc. Deduping");
  v82 = [(NSDictionary *)v15 objectForKeyedSubscript:@"useOnlyScenesForDeduping"];
  v83 = v11[2](v11, @"Use Only Scenes:", v82);
  useOnlyScenesForDedupingSwitch = self->_useOnlyScenesForDedupingSwitch;
  self->_useOnlyScenesForDedupingSwitch = v83;

  v85 = [(NSDictionary *)v15 objectForKeyedSubscript:@"useAllPersonsForDeduping"];
  v86 = v11[2](v11, @"Use All Persons:", v85);
  useAllPersonsForDedupingSwitch = self->_useAllPersonsForDedupingSwitch;
  self->_useAllPersonsForDedupingSwitch = v86;

  v88 = [(NSDictionary *)v15 objectForKeyedSubscript:@"useFaceQualityForElection"];
  v89 = v11[2](v11, @"Use Face Quality for Election:", v88);
  useFaceQualityForElectionSwitch = self->_useFaceQualityForElectionSwitch;
  self->_useFaceQualityForElectionSwitch = v89;

  v91 = [(NSDictionary *)v15 objectForKeyedSubscript:@"doNotDedupeVideos"];
  v92 = v11[2](v11, @"Don't Dedupe Videos:", v91);
  doNotDedupeVideosSwitch = self->_doNotDedupeVideosSwitch;
  self->_doNotDedupeVideosSwitch = v92;

  [(UISwitch *)self->_doNotDedupeVideosSwitch setEnabled:0];
  v94 = [(NSDictionary *)v15 objectForKeyedSubscript:@"doNotDedupeInterestingPortraitsAndLivePictures"];
  v95 = v11[2](v11, @"Don't Dedupe Portraits with Live:", v94);
  doNotDedupeInterestingPortraitsAndLivePicturesSwitch = self->_doNotDedupeInterestingPortraitsAndLivePicturesSwitch;
  self->_doNotDedupeInterestingPortraitsAndLivePicturesSwitch = v95;

  [(UISwitch *)self->_doNotDedupeInterestingPortraitsAndLivePicturesSwitch setEnabled:0];
  v97 = [(NSDictionary *)v15 objectForKeyedSubscript:@"onlyDedupeContiguousItems"];
  v98 = v11[2](v11, @"Only Contiguous Items:", v97);
  onlyDedupeContiguousItemsSwitch = self->_onlyDedupeContiguousItemsSwitch;
  self->_onlyDedupeContiguousItemsSwitch = v98;

  [(UISwitch *)self->_onlyDedupeContiguousItemsSwitch setEnabled:0];
  v14[2](v14, @"Dejunking");
  v100 = [(NSDictionary *)v15 objectForKeyedSubscript:@"doDejunk"];
  v101 = v11[2](v11, @"Do Dejunking:", v100);
  doDejunkSwitch = self->_doDejunkSwitch;
  self->_doDejunkSwitch = v101;

  v103 = [(NSDictionary *)v15 objectForKeyedSubscript:@"returnDedupedJunkIfOnlyJunk"];
  v104 = v11[2](v11, @"Return Deduped Junk:", v103);
  returnDedupedJunkIfOnlyJunkSwitch = self->_returnDedupedJunkIfOnlyJunkSwitch;
  self->_returnDedupedJunkIfOnlyJunkSwitch = v104;

  v14[2](v14, @"Final Pass");
  v106 = [(NSDictionary *)v15 objectForKeyedSubscript:@"doFinalPass"];
  v107 = v11[2](v11, @"Do Final Pass:", v106);
  doFinalPassSwitch = self->_doFinalPassSwitch;
  self->_doFinalPassSwitch = v107;

  v109 = [(NSDictionary *)v15 objectForKeyedSubscript:@"finalPassTimeInterval"];
  v110 = v13[2](v13, @"Final Pass Time Interval:", v109);
  finalPassTimeIntervalTextField = self->_finalPassTimeIntervalTextField;
  self->_finalPassTimeIntervalTextField = v110;

  v112 = [(NSDictionary *)v15 objectForKeyedSubscript:@"finalPassMaximumTimeGroupExtension"];
  v113 = v13[2](v13, @"Maximum Time Group Extension:", v112);
  finalPassMaximumTimeGroupExtensionTextField = self->_finalPassMaximumTimeGroupExtensionTextField;
  self->_finalPassMaximumTimeGroupExtensionTextField = v113;

  v115 = [(NSDictionary *)v15 objectForKeyedSubscript:@"finalPassDedupingThreshold"];
  v116 = v13[2](v13, @"Final Pass Deduping Threshold:", v115);
  finalPassDedupingThresholdTextField = self->_finalPassDedupingThresholdTextField;
  self->_finalPassDedupingThresholdTextField = v116;

  [v119 frame];
  [v119 setContentSize:{v118, v133[3]}];

  _Block_object_dispose(&v132, 8);
}

void __64__PXDiagnosticsHighlightCurationSettingsViewController_loadView__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E69DCFD0];
  v5 = a3;
  v6 = a2;
  v7 = [v4 alloc];
  v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v8 setAutoresizingMask:33];
  v9 = [v5 BOOLValue];

  [v8 setOn:v9];
  [v8 frame];
  [v8 frame];
  PXRectWithOriginAndSize();
}

void __64__PXDiagnosticsHighlightCurationSettingsViewController_loadView__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E69DD0B0];
  v5 = a3;
  v6 = a2;
  v7 = [[v4 alloc] initWithFrame:{0.0, 0.0, 60.0, 26.0}];
  [v7 setAutoresizingMask:33];
  v8 = [v5 stringValue];

  [v7 setText:v8];
  [v7 setKeyboardType:8];
  [v7 frame];
  [v7 frame];
  PXRectWithOriginAndSize();
}

void __64__PXDiagnosticsHighlightCurationSettingsViewController_loadView__block_invoke_3(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 8.0;
  v3 = MEMORY[0x1E69DCC10];
  v4 = a2;
  v11 = [[v3 alloc] initWithFrame:{20.0, *(*(*(a1 + 40) + 8) + 24), *(a1 + 48) + -20.0 + -20.0, 26.0}];
  [v11 setAutoresizingMask:34];
  v5 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] systemFontSize];
  v7 = [v5 boldSystemFontOfSize:v6 + 2.0];
  [v11 setFont:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v4 uppercaseString];

  v10 = [v8 stringWithFormat:@"-- %@ --", v9];
  [v11 setText:v10];

  [v11 setTextAlignment:1];
  [*(a1 + 32) addSubview:v11];
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 34.0;
}

- (PXDiagnosticsHighlightCurationSettingsViewController)initWithDelegate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXDiagnosticsHighlightCurationSettingsViewController;
  v6 = [(PXDiagnosticsHighlightCurationSettingsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
  }

  return v7;
}

@end