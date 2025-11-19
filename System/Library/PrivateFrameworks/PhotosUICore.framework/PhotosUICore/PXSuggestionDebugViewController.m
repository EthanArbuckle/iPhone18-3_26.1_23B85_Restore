@interface PXSuggestionDebugViewController
- (PXSuggestionDebugViewController)initWithSuggestion:(id)a3 suggestionInfo:(id)a4;
- (id)existingSectionsWithSuggestion:(id)a3 suggestionInfo:(id)a4;
- (id)infoSectionsWithSuggestion:(id)a3 suggestionInfo:(id)a4 compact:(BOOL)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_sendByEmailAction:(id)a3;
- (void)_switchLogsAction:(id)a3;
- (void)viewDidLoad;
@end

@implementation PXSuggestionDebugViewController

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 dequeueReusableCellWithIdentifier:@"KeywordsCell"];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"KeywordsCell"];
  }

  v9 = -[PXSuggestionDebugViewController tableView:titleForHeaderInSection:](self, "tableView:titleForHeaderInSection:", v7, [v6 section]);

  v10 = [(NSDictionary *)self->_tableContent objectForKeyedSubscript:v9];
  v11 = [v6 row];

  v12 = [v10 objectAtIndexedSubscript:v11];

  v13 = [v9 lowercaseString];
  LODWORD(v11) = [v13 isEqualToString:@"location"];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v12;
      if ([v14 count] < 2)
      {
        v18 = @"Invalid location";
      }

      else
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = [v14 objectAtIndexedSubscript:0];
        v17 = [v14 objectAtIndexedSubscript:1];
        v18 = [v15 stringWithFormat:@"(%@, %@)", v16, v17];

        v14 = v16;
      }
    }

    else
    {
      v18 = @"Invalid location";
    }

    v12 = v18;
  }

  v19 = [v8 textLabel];
  [v19 setText:v12];

  v20 = [v8 textLabel];
  v21 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
  [v20 setFont:v21];

  v22 = [v8 textLabel];
  [v22 setNumberOfLines:0];

  v23 = [v8 textLabel];
  [v23 sizeToFit];

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PXSuggestionDebugViewController *)self tableView:a3 titleForHeaderInSection:a4];
  v6 = [(NSDictionary *)self->_tableContent objectForKeyedSubscript:v5];
  v7 = [v6 count];

  return v7;
}

- (void)_sendByEmailAction:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if ([getMFMailComposeViewControllerClass_35356() canSendMail])
  {
    v4 = [(PXSuggestionDebugViewController *)self title];
    v5 = [@"PhotosGraph " stringByAppendingString:v4];

    v6 = [MEMORY[0x1E695DEC8] arrayWithObject:@"photos-memories-feedback@group.apple.com"];
    v7 = objc_alloc_init(getMFMailComposeViewControllerClass_35356());
    [v7 setMailComposeDelegate:self];
    [v7 setSubject:v5];
    [v7 setToRecipients:v6];
    v8 = [PXMemoriesRelatedDiagnosticsHelper getSummaryFromProviderItem:self->_suggestion];
    if (v8)
    {
      v16 = 0;
      v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:200 options:0 error:&v16];
      v10 = v16;
      if (v9)
      {
        [v7 addAttachmentData:v9 mimeType:@"application/x-plist" fileName:@"results.plist"];
      }

      if (v10)
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = [v10 localizedDescription];
        v13 = [v11 stringWithFormat:@"Cannot attach results.plist: %@.", v12];

        v14 = v13;
        v15 = PLUIGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v18 = v14;
          _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "ERROR: %@", buf, 0xCu);
        }

        goto LABEL_13;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v14 = &stru_1F1741150;
LABEL_13:
    [v7 setMessageBody:v14 isHTML:0];
    [(PXSuggestionDebugViewController *)self presentViewController:v7 animated:1 completion:0];

    goto LABEL_14;
  }

  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "ERROR: Looks like email is not setup on this system.", buf, 2u);
  }

LABEL_14:
}

- (id)existingSectionsWithSuggestion:(id)a3 suggestionInfo:(id)a4
{
  v59[1] = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setDateStyle:1];
  [v5 setTimeStyle:2];
  v6 = [v4 objectForKeyedSubscript:@"identicalExistingSuggestionInfo"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"uuid"];
    if (v8)
    {
      v9 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
      v10 = [v9 librarySpecificFetchOptions];

      v11 = [MEMORY[0x1E6978AE8] localIdentifierWithUUID:v8];
      v12 = v8;
      v13 = MEMORY[0x1E6978650];
      v59[0] = v11;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
      v15 = [v13 fetchAssetCollectionsWithLocalIdentifiers:v14 options:v10];
      v16 = [v15 firstObject];

      v8 = v12;
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v47 = [(PXSuggestionDebugViewController *)self infoSectionsWithSuggestion:v17 suggestionInfo:v7 compact:0];
  }

  else
  {
    v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = [v4 objectForKeyedSubscript:@"suggestionsByCollisionReason"];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v18 = [v8 allKeys];
    v19 = [v18 sortedArrayUsingSelector:sel_compare_];

    obj = v19;
    v43 = [v19 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v43)
    {
      v38 = v5;
      v39 = v4;
      v41 = *v53;
      v42 = v8;
      do
      {
        v20 = 0;
        do
        {
          if (*v53 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v44 = v20;
          v21 = *(*(&v52 + 1) + 8 * v20);
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v45 = [v8 objectForKeyedSubscript:v21];
          v22 = [v45 countByEnumeratingWithState:&v48 objects:v57 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v49;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v49 != v24)
                {
                  objc_enumerationMutation(v45);
                }

                v26 = [*(*(&v48 + 1) + 8 * i) objectForKeyedSubscript:@"uuid"];
                if (v26)
                {
                  v27 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
                  v28 = [v27 librarySpecificFetchOptions];

                  v29 = [MEMORY[0x1E6978AE8] localIdentifierWithUUID:v26];
                  v30 = MEMORY[0x1E6978650];
                  v56 = v29;
                  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
                  v32 = [v30 fetchAssetCollectionsWithLocalIdentifiers:v31 options:v28];
                  v33 = [v32 firstObject];
                }

                else
                {
                  v33 = 0;
                }

                v34 = [(PXSuggestionDebugViewController *)self infoSectionsWithSuggestion:v33 suggestionInfo:0 compact:1];
                v35 = [v34 objectForKeyedSubscript:@"1. Info"];
                v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %d", v21, 0];
                [v47 setObject:v35 forKey:v36];
              }

              v23 = [v45 countByEnumeratingWithState:&v48 objects:v57 count:16];
            }

            while (v23);
          }

          v20 = v44 + 1;
          v8 = v42;
        }

        while (v44 + 1 != v43);
        v43 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v43);
      v5 = v38;
      v4 = v39;
      v7 = 0;
    }

    v17 = obj;
  }

  return v47;
}

- (id)infoSectionsWithSuggestion:(id)a3 suggestionInfo:(id)a4 compact:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v78 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v9 setDateStyle:1];
  [v9 setTimeStyle:2];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = MEMORY[0x1E696AEC0];
  [v7 type];
  v12 = PHSuggestionStringWithType();
  v13 = [v11 stringWithFormat:@"[Type] %@", v12];
  [v10 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  [v7 subtype];
  v15 = PHSuggestionStringWithSubtype();
  v16 = [v14 stringWithFormat:@"[Subtype] %@", v15];
  [v10 addObject:v16];

  v17 = [v7 uuid];
  if (v17 || ([v8 objectForKeyedSubscript:@"uuid"], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[UUID] %@", v17];
    [v10 addObject:v19];
  }

  v20 = [v7 creationDate];
  if (v20 || ([v8 objectForKeyedSubscript:@"creationDate"], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v21 = v20;
    v22 = MEMORY[0x1E696AEC0];
    v23 = [v9 stringFromDate:v20];
    v24 = [v22 stringWithFormat:@"[Creation Date] %@", v23];
    [v10 addObject:v24];
  }

  v25 = MEMORY[0x1E696AEC0];
  [v7 state];
  v26 = PHSuggestionStateStringWithState();
  v27 = [v25 stringWithFormat:@"[State] %@", v26];
  [v10 addObject:v27];

  v28 = MEMORY[0x1E696AEC0];
  [v7 notificationState];
  v29 = PHSuggestionNotificationStateStringWithNotificationState();
  v30 = [v28 stringWithFormat:@"[Notification state] %@", v29];
  [v10 addObject:v30];

  v31 = [v7 localizedTitle];
  if (v31 || ([v8 objectForKeyedSubscript:@"title"], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v32 = v31;
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Title] %@", v31];
    [v10 addObject:v33];
  }

  v34 = [v7 localizedSubtitle];
  if (v34 || ([v8 objectForKeyedSubscript:@"subtitle"], (v34 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v35 = v34;
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Subtitle] %@", v34];
    [v10 addObject:v36];
  }

  v37 = [v7 startDate];
  if (v37 || ([v8 objectForKeyedSubscript:@"universalStartDate"], (v37 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v38 = v37;
    v39 = MEMORY[0x1E696AEC0];
    v40 = [v9 stringFromDate:v37];
    v41 = [v39 stringWithFormat:@"[Start Date] %@", v40];
    [v10 addObject:v41];
  }

  v42 = [v7 endDate];
  if (v42 || ([v8 objectForKeyedSubscript:@"universalEndDate"], (v42 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v43 = v42;
    v44 = MEMORY[0x1E696AEC0];
    v45 = [v9 stringFromDate:v42];
    v46 = [v44 stringWithFormat:@"[End Date] %@", v45];
    [v10 addObject:v46];
  }

  v47 = [v7 context];
  if (v47)
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Context] %@", v47];
    [v10 addObject:v48];
  }

  v49 = [v7 relevantUntilDate];
  v75 = v49;
  if (v49)
  {
    v50 = MEMORY[0x1E696AEC0];
    v51 = [v9 stringFromDate:v49];
    v52 = [v50 stringWithFormat:@"[Relevant Until Date] %@", v51];
    [v10 addObject:v52];
  }

  v76 = v9;
  [v78 setObject:v10 forKeyedSubscript:@"1. Info"];
  v53 = v10;
  v54 = v53;
  if (!a5)
  {
    v54 = objc_alloc_init(MEMORY[0x1E695DF70]);

    [v78 setObject:v54 forKeyedSubscript:@"2. Assets"];
  }

  v55 = [v8 objectForKeyedSubscript:@"keyAssetUUID"];
  v56 = v8;
  v57 = v55;
  v77 = v56;
  v58 = [v56 objectForKeyedSubscript:@"keyAssetCreationDate"];
  if (!v57)
  {
    v59 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:v7 options:0];
    v60 = [v59 firstObject];

    v57 = [v60 uuid];
    v61 = [v60 creationDate];

    v58 = v61;
  }

  v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Key Asset UUID] %@", v57];
  [v54 addObject:v62];

  v63 = MEMORY[0x1E696AEC0];
  v64 = [v76 stringFromDate:v58];
  v65 = [v63 stringWithFormat:@"[Key Asset Creation Date] %@", v64];
  [v54 addObject:v65];

  v66 = [v77 objectForKeyedSubscript:@"reasons"];
  if (v66)
  {
    [v78 setObject:v66 forKeyedSubscript:@"3. Reasons"];
  }

  v67 = [v7 featuresProperties];
  v68 = v67;
  if (v67)
  {
    v74 = v53;
    v69 = v47;
    v70 = [v67 objectForKeyedSubscript:@"widgetIdentifier"];
    v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v70)
    {
      v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[WidgetIdentifier] %@", v70];
      [v71 addObject:v72];
    }

    if ([v71 count])
    {
      [v78 setObject:v71 forKeyedSubscript:@"4. Featured Properties"];
    }

    v47 = v69;
    v53 = v74;
  }

  return v78;
}

- (void)_switchLogsAction:(id)a3
{
  v4 = [(UISegmentedControl *)self->_segmentedControl selectedSegmentIndex];
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = [(PXSuggestionDebugViewController *)self existingSectionsWithSuggestion:self->_suggestion suggestionInfo:self->_suggestionInfo];
  }

  else
  {
    v5 = [(PXSuggestionDebugViewController *)self infoSectionsWithSuggestion:self->_suggestion suggestionInfo:self->_suggestionInfo compact:0];
  }

  tableContent = self->_tableContent;
  self->_tableContent = v5;

LABEL_6:
  v7 = [(NSDictionary *)self->_tableContent allKeys];
  v8 = [v7 sortedArrayUsingSelector:sel_compare_];
  sectionTitles = self->_sectionTitles;
  self->_sectionTitles = v8;

  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (void)viewDidLoad
{
  v37[2] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = PXSuggestionDebugViewController;
  [(PXSuggestionDebugViewController *)&v36 viewDidLoad];
  v3 = [(PXSuggestionDebugViewController *)self view];
  [v3 setAutoresizingMask:18];

  v4 = [(PXSuggestionDebugViewController *)self view];
  v5 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [v4 setBackgroundColor:v5];

  v6 = [(NSDictionary *)self->_suggestionInfo objectForKeyedSubscript:@"identicalExistingSuggestionInfo"];
  if (v6)
  {

    v7 = @"Nightly";
  }

  else
  {
    v8 = [(NSDictionary *)self->_suggestionInfo objectForKeyedSubscript:@"suggestionsByCollisionReason"];
    v7 = @"Colliding";
    if (v8)
    {
      v9 = @"Colliding";
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (!v8)
    {
      v11 = &unk_1F190FC10;
      goto LABEL_8;
    }
  }

  v37[0] = @"Info";
  v37[1] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
LABEL_8:
  v12 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:v11];
  segmentedControl = self->_segmentedControl;
  self->_segmentedControl = v12;

  [(UISegmentedControl *)self->_segmentedControl addTarget:self action:sel__switchLogsAction_ forControlEvents:4096];
  [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:0];
  v14 = [(PXSuggestionDebugViewController *)self view];
  [v14 addSubview:self->_segmentedControl];

  v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v16 = [(PXSuggestionDebugViewController *)self view];
  [v16 addSubview:v15];

  [(UISegmentedControl *)self->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [(UISegmentedControl *)self->_segmentedControl topAnchor];
  v18 = [(PXSuggestionDebugViewController *)self view];
  v19 = [v18 safeAreaLayoutGuide];
  v20 = [v19 topAnchor];
  v21 = [v17 constraintEqualToAnchor:v20 constant:10.0];
  [v21 setActive:1];

  v22 = _NSDictionaryOfVariableBindings(&cfstr_Segmentedcontr.isa, self->_segmentedControl, v15, 0);
  v23 = [(PXSuggestionDebugViewController *)self view];
  v24 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[_segmentedControl(<=44)]-10-[contentView]-0-|" options:0 metrics:0 views:v22];
  [v23 addConstraints:v24];

  v25 = [(PXSuggestionDebugViewController *)self view];
  v26 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[_segmentedControl]-|" options:0 metrics:0 views:v22];
  [v25 addConstraints:v26];

  v27 = [(PXSuggestionDebugViewController *)self view];
  v28 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[contentView]|" options:0 metrics:0 views:v22];
  [v27 addConstraints:v28];

  v29 = objc_alloc(MEMORY[0x1E69DD020]);
  [v15 frame];
  v30 = [v29 initWithFrame:1 style:?];
  tableView = self->_tableView;
  self->_tableView = v30;

  [(UITableView *)self->_tableView setAutoresizingMask:18];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setAllowsSelection:0];
  [v15 addSubview:self->_tableView];
  v32 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"Close" style:2 target:self action:sel__closeAction_];
  v33 = [(PXSuggestionDebugViewController *)self navigationItem];
  [v33 setLeftBarButtonItem:v32];

  v34 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:7 target:self action:sel__sendByEmailAction_];
  v35 = [(PXSuggestionDebugViewController *)self navigationItem];
  [v35 setRightBarButtonItem:v34];

  [(PXSuggestionDebugViewController *)self _switchLogsAction:0];
}

- (PXSuggestionDebugViewController)initWithSuggestion:(id)a3 suggestionInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXSuggestionDebugViewController;
  v9 = [(PXSuggestionDebugViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(PXSuggestionDebugViewController *)v9 setTitle:@"Suggestion Debug"];
    objc_storeStrong(&v10->_suggestion, a3);
    objc_storeStrong(&v10->_suggestionInfo, a4);
  }

  return v10;
}

@end