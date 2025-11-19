@interface UIFinishingsOption
- (BOOL)shouldShow;
- (NSArray)printerFinishingOptions;
- (UIFinishingsOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (UITableView)finishingOptionsTableView;
- (id)summaryString;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)title;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)clearFinishingOptions;
- (void)currentPrinterChanged;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateFromPrintInfo;
@end

@implementation UIFinishingsOption

- (UIFinishingsOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v17.receiver = self;
  v17.super_class = UIFinishingsOption;
  v4 = [(UIPrintOption *)&v17 initWithPrintInfo:a3 printPanelViewController:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(UIPrintOption *)v4 printInfo];
    [v6 addObserver:v5 forKeyPath:0x2871AF150 options:0 context:0];

    v7 = [(UIPrintOption *)v5 printInfo];
    [v7 addObserver:v5 forKeyPath:0x2871AF370 options:0 context:0];

    v8 = [(UIPrintOption *)v5 printInfo];
    [v8 addObserver:v5 forKeyPath:0x2871AF390 options:0 context:0];

    v9 = [(UIPrintOption *)v5 printInfo];
    [v9 addObserver:v5 forKeyPath:0x2871AF3B0 options:0 context:0];

    v10 = [(UIPrintOption *)v5 printInfo];
    [v10 addObserver:v5 forKeyPath:0x2871AF3D0 options:0 context:0];

    v11 = [(UIPrintOption *)v5 printInfo];
    [v11 addObserver:v5 forKeyPath:0x2871AF3F0 options:0 context:0];

    v12 = [(UIPrintOption *)v5 printInfo];
    [v12 addObserver:v5 forKeyPath:0x2871AF410 options:0 context:0];

    v13 = [(UIPrintOption *)v5 printInfo];
    [v13 addObserver:v5 forKeyPath:0x2871AF430 options:0 context:0];

    v14 = [(UIPrintOption *)v5 printInfo];
    [v14 addObserver:v5 forKeyPath:0x2871AF450 options:0 context:0];

    v15 = [(UIPrintOption *)v5 printInfo];
    [v15 addObserver:v5 forKeyPath:0x2871AF470 options:0 context:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF150];

  v4 = [(UIPrintOption *)self printInfo];
  [v4 removeObserver:self forKeyPath:0x2871AF370];

  v5 = [(UIPrintOption *)self printInfo];
  [v5 removeObserver:self forKeyPath:0x2871AF390];

  v6 = [(UIPrintOption *)self printInfo];
  [v6 removeObserver:self forKeyPath:0x2871AF3B0];

  v7 = [(UIPrintOption *)self printInfo];
  [v7 removeObserver:self forKeyPath:0x2871AF3D0];

  v8 = [(UIPrintOption *)self printInfo];
  [v8 removeObserver:self forKeyPath:0x2871AF3F0];

  v9 = [(UIPrintOption *)self printInfo];
  [v9 removeObserver:self forKeyPath:0x2871AF410];

  v10 = [(UIPrintOption *)self printInfo];
  [v10 removeObserver:self forKeyPath:0x2871AF430];

  v11 = [(UIPrintOption *)self printInfo];
  [v11 removeObserver:self forKeyPath:0x2871AF450];

  v12 = [(UIPrintOption *)self printInfo];
  [v12 removeObserver:self forKeyPath:0x2871AF470];

  v13.receiver = self;
  v13.super_class = UIFinishingsOption;
  [(UIFinishingsOption *)&v13 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__UIFinishingsOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = v7;
  v11 = self;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __69__UIFinishingsOption_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:0x2871AF150])
  {
    [*(a1 + 40) currentPrinterChanged];
  }

  [*(a1 + 40) updateFromPrintInfo];
  v2 = [*(a1 + 40) summaryString];
  [*(a1 + 40) setSummary:v2];
}

- (BOOL)shouldShow
{
  v3 = [(UIPrintOption *)self printInfo];
  v4 = [v3 currentPrinter];
  v5 = [v4 printerInfoDict];
  if (v5)
  {
    v6 = [(UIFinishingsOption *)self finishingTemplatesOption];
    if ([v6 shouldShow])
    {
      v7 = 1;
    }

    else
    {
      v8 = [(UIFinishingsOption *)self printerFinishingOptions];
      v7 = [v8 count] != 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)currentPrinterChanged
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 setFinishingOption:0];

  [(UIFinishingsOption *)self setPrinterFinishingOptions:0];
  v4 = [UIPrintFinishingTemplatesOption alloc];
  v8 = [(UIPrintOption *)self printInfo];
  v5 = [(UIPrintOption *)self printPanelViewController];
  v6 = [(UIFinishingsOption *)self finishingOptionsTableView];
  v7 = [(UIPrintFinishingTemplatesOption *)v4 initWithPrintInfo:v8 printPanelViewController:v5 finishingOptionsTableView:v6];
  [(UIFinishingsOption *)self setFinishingTemplatesOption:v7];
}

- (void)updateFromPrintInfo
{
  v3 = [(UIFinishingsOption *)self summaryString];
  [(UIPrintOption *)self setSummary:v3];

  v4 = [(UIFinishingsOption *)self finishingOptionsTableView];
  [v4 reloadData];
}

- (NSArray)printerFinishingOptions
{
  v2 = self;
  v374 = *MEMORY[0x277D85DE8];
  if (self->_printerFinishingOptions)
  {
    goto LABEL_136;
  }

  v3 = [(UIPrintOption *)self printInfo];
  v4 = [v3 currentPrinter];
  v5 = [v4 printerInfoDict];

  if (!v5)
  {
    goto LABEL_136;
  }

  v367 = [MEMORY[0x277CBEB18] array];
  v6 = [(UIPrintOption *)v2 printInfo];
  v7 = [v6 currentPrinter];
  v8 = [v7 printerFinishingOptions];

  v365 = v2;
  v366 = v8;
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
    v10 = 0x277CCA000uLL;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:4];
    v12 = v8;
    if ([v8 containsObject:v11])
    {
    }

    else
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:20];
      v14 = [v8 containsObject:v13];

      if (!v14)
      {
        goto LABEL_11;
      }
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInteger:20];
    v16 = [v366 containsObject:v15];

    v17 = [UIPrinterFinishingChoice alloc];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = v18;
    if (v16)
    {
      v20 = [v18 localizedStringForKey:@"Single (Top-Left)" value:@"Single (Top-Left)" table:@"Localizable"];
      v21 = v17;
      v22 = v20;
      v23 = 20;
    }

    else
    {
      v20 = [v18 localizedStringForKey:@"Automatic" value:@"Automatic" table:@"Localizable"];
      v21 = v17;
      v22 = v20;
      v23 = 4;
    }

    v24 = [(UIPrinterFinishingChoice *)v21 initWithTitle:v22 finishingChoiceID:v23 finishingChoiceInfo:0];
    [v9 addObject:v24];

LABEL_11:
    v25 = [MEMORY[0x277CCABB0] numberWithInteger:22];
    v26 = [v366 containsObject:v25];

    if (v26)
    {
      v27 = [UIPrinterFinishingChoice alloc];
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"Single (Top-Right)" value:@"Single (Top-Right)" table:@"Localizable"];
      v30 = [(UIPrinterFinishingChoice *)v27 initWithTitle:v29 finishingChoiceID:22 finishingChoiceInfo:0];
      [v9 addObject:v30];
    }

    v31 = [MEMORY[0x277CCABB0] numberWithInteger:21];
    v32 = [v366 containsObject:v31];

    if (v32)
    {
      v33 = [UIPrinterFinishingChoice alloc];
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v34 localizedStringForKey:@"Single (Bottom-Left)" value:@"Single (Bottom-Left)" table:@"Localizable"];
      v36 = [(UIPrinterFinishingChoice *)v33 initWithTitle:v35 finishingChoiceID:21 finishingChoiceInfo:0];
      [v9 addObject:v36];
    }

    v37 = [MEMORY[0x277CCABB0] numberWithInteger:23];
    v38 = [v366 containsObject:v37];

    if (v38)
    {
      v39 = [UIPrinterFinishingChoice alloc];
      v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:@"Single (Bottom-Right)" value:@"Single (Bottom-Right)" table:@"Localizable"];
      v42 = [(UIPrinterFinishingChoice *)v39 initWithTitle:v41 finishingChoiceID:23 finishingChoiceInfo:0];
      [v9 addObject:v42];
    }

    v43 = [MEMORY[0x277CCABB0] numberWithInteger:28];
    v44 = [v366 containsObject:v43];

    if (v44)
    {
      v45 = [UIPrinterFinishingChoice alloc];
      v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v47 = [v46 localizedStringForKey:@"Double (Left)" value:@"Double (Left)" table:@"Localizable"];
      v48 = [(UIPrinterFinishingChoice *)v45 initWithTitle:v47 finishingChoiceID:28 finishingChoiceInfo:0];
      [v9 addObject:v48];
    }

    v49 = [MEMORY[0x277CCABB0] numberWithInteger:29];
    v50 = [v366 containsObject:v49];

    if (v50)
    {
      v51 = [UIPrinterFinishingChoice alloc];
      v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v53 = [v52 localizedStringForKey:@"Double (Top)" value:@"Double (Top)" table:@"Localizable"];
      v54 = [(UIPrinterFinishingChoice *)v51 initWithTitle:v53 finishingChoiceID:29 finishingChoiceInfo:0];
      [v9 addObject:v54];
    }

    v55 = [MEMORY[0x277CCABB0] numberWithInteger:31];
    v56 = [v366 containsObject:v55];

    if (v56)
    {
      v57 = [UIPrinterFinishingChoice alloc];
      v58 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v59 = [v58 localizedStringForKey:@"Double (Bottom)" value:@"Double (Bottom)" table:@"Localizable"];
      v60 = [(UIPrinterFinishingChoice *)v57 initWithTitle:v59 finishingChoiceID:31 finishingChoiceInfo:0];
      [v9 addObject:v60];
    }

    v61 = [MEMORY[0x277CCABB0] numberWithInteger:30];
    v62 = [v366 containsObject:v61];

    if (v62)
    {
      v63 = [UIPrinterFinishingChoice alloc];
      v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v65 = [v64 localizedStringForKey:@"Double (Right)" value:@"Double (Right)" table:@"Localizable"];
      v66 = [(UIPrinterFinishingChoice *)v63 initWithTitle:v65 finishingChoiceID:30 finishingChoiceInfo:0];
      [v9 addObject:v66];
    }

    v67 = [MEMORY[0x277CCABB0] numberWithInteger:32];
    v68 = [v366 containsObject:v67];

    if (v68)
    {
      v69 = [UIPrinterFinishingChoice alloc];
      v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v71 = [v70 localizedStringForKey:@"Triple (Left)" value:@"Triple (Left)" table:@"Localizable"];
      v72 = [(UIPrinterFinishingChoice *)v69 initWithTitle:v71 finishingChoiceID:32 finishingChoiceInfo:0];
      [v9 addObject:v72];
    }

    v73 = [MEMORY[0x277CCABB0] numberWithInteger:33];
    v74 = [v366 containsObject:v73];

    if (v74)
    {
      v75 = [UIPrinterFinishingChoice alloc];
      v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v77 = [v76 localizedStringForKey:@"Triple (Top)" value:@"Triple (Top)" table:@"Localizable"];
      v78 = [(UIPrinterFinishingChoice *)v75 initWithTitle:v77 finishingChoiceID:33 finishingChoiceInfo:0];
      [v9 addObject:v78];
    }

    v79 = [MEMORY[0x277CCABB0] numberWithInteger:35];
    v80 = [v366 containsObject:v79];

    if (v80)
    {
      v81 = [UIPrinterFinishingChoice alloc];
      v82 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v83 = [v82 localizedStringForKey:@"Triple (Bottom)" value:@"Triple (Bottom)" table:@"Localizable"];
      v84 = [(UIPrinterFinishingChoice *)v81 initWithTitle:v83 finishingChoiceID:35 finishingChoiceInfo:0];
      [v9 addObject:v84];
    }

    v85 = [MEMORY[0x277CCABB0] numberWithInteger:34];
    v86 = [v366 containsObject:v85];

    if (v86)
    {
      v87 = [UIPrinterFinishingChoice alloc];
      v88 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v89 = [v88 localizedStringForKey:@"Triple (Right)" value:@"Triple (Right)" table:@"Localizable"];
      v90 = [(UIPrinterFinishingChoice *)v87 initWithTitle:v89 finishingChoiceID:34 finishingChoiceInfo:0];
      [v9 addObject:v90];
    }

    v91 = [MEMORY[0x277CCABB0] numberWithInteger:7];
    if ([v366 containsObject:v91])
    {
    }

    else
    {
      v92 = [MEMORY[0x277CCABB0] numberWithInteger:50];
      v93 = [v366 containsObject:v92];

      if (!v93)
      {
        goto LABEL_37;
      }
    }

    v94 = [UIPrinterFinishingChoice alloc];
    v95 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v96 = [v95 localizedStringForKey:@"Bind (Left)" value:@"Bind (Left)" table:@"Localizable"];
    v97 = [(UIPrinterFinishingChoice *)v94 initWithTitle:v96 finishingChoiceID:50 finishingChoiceInfo:0];
    [v9 addObject:v97];

LABEL_37:
    v98 = [MEMORY[0x277CCABB0] numberWithInteger:51];
    v99 = [v366 containsObject:v98];

    if (v99)
    {
      v100 = [UIPrinterFinishingChoice alloc];
      v101 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v102 = [v101 localizedStringForKey:@"Bind (Top)" value:@"Bind (Top)" table:@"Localizable"];
      v103 = [(UIPrinterFinishingChoice *)v100 initWithTitle:v102 finishingChoiceID:51 finishingChoiceInfo:0];
      [v9 addObject:v103];
    }

    v104 = [MEMORY[0x277CCABB0] numberWithInteger:8];
    v105 = [v366 containsObject:v104];

    if (v105)
    {
      v106 = [UIPrinterFinishingChoice alloc];
      v107 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v108 = [v107 localizedStringForKey:@"Saddle Stitch" value:@"Saddle Stitch" table:@"Localizable"];
      v109 = [(UIPrinterFinishingChoice *)v106 initWithTitle:v108 finishingChoiceID:8 finishingChoiceInfo:0];
      [v9 addObject:v109];
    }

    if ([v9 count] >= 2)
    {
      v110 = [UIPrinterFinishingChoice alloc];
      v111 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v112 = [v111 localizedStringForKey:@"No staple" value:@"No staple" table:@"Localizable"];
      v113 = [(UIPrinterFinishingChoice *)v110 initWithTitle:v112 finishingChoiceID:0 finishingChoiceInfo:0];
      [v9 insertObject:v113 atIndex:0];
    }

    if ([v9 count])
    {
      v114 = [v9 count] > 1;
      v115 = [UIPrinterFinishingOption alloc];
      v116 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v117 = [v116 localizedStringForKey:@"Staple" value:@"Staple" table:@"Localizable"];
      v118 = [(UIPrintOption *)v365 printPanelViewController];
      v119 = [(UIFinishingsOption *)v365 finishingOptionsTableView];
      v120 = [(UIPrinterFinishingOption *)v115 initWithTitle:v117 finishingType:0 viewType:v114 optionChoices:v9 printPanelViewController:v118 finishingOptionsTableView:v119];
      [v367 addObject:v120];

      v12 = v366;
    }

    v121 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];

    v122 = [MEMORY[0x277CCABB0] numberWithInteger:5];
    if ([v12 containsObject:v122])
    {
    }

    else
    {
      v123 = [MEMORY[0x277CCABB0] numberWithInteger:70];
      v124 = [v12 containsObject:v123];

      if (!v124)
      {
LABEL_52:
        v135 = [MEMORY[0x277CCABB0] numberWithInteger:72];
        v136 = [v12 containsObject:v135];

        if (v136)
        {
          v137 = [UIPrinterFinishingChoice alloc];
          v138 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v139 = [v138 localizedStringForKey:@"Single (Top-Right)" value:@"Single (Top-Right)" table:@"Localizable"];
          v140 = [(UIPrinterFinishingChoice *)v137 initWithTitle:v139 finishingChoiceID:72 finishingChoiceInfo:0];
          [v121 addObject:v140];
        }

        v141 = [MEMORY[0x277CCABB0] numberWithInteger:71];
        v142 = [v12 containsObject:v141];

        if (v142)
        {
          v143 = [UIPrinterFinishingChoice alloc];
          v144 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v145 = [v144 localizedStringForKey:@"Single (Bottom-Left)" value:@"Single (Bottom-Left)" table:@"Localizable"];
          v146 = [(UIPrinterFinishingChoice *)v143 initWithTitle:v145 finishingChoiceID:71 finishingChoiceInfo:0];
          [v121 addObject:v146];
        }

        v147 = [MEMORY[0x277CCABB0] numberWithInteger:73];
        v148 = [v12 containsObject:v147];

        if (v148)
        {
          v149 = [UIPrinterFinishingChoice alloc];
          v150 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v151 = [v150 localizedStringForKey:@"Single (Bottom-Right)" value:@"Single (Bottom-Right)" table:@"Localizable"];
          v152 = [(UIPrinterFinishingChoice *)v149 initWithTitle:v151 finishingChoiceID:73 finishingChoiceInfo:0];
          [v121 addObject:v152];
        }

        v153 = [MEMORY[0x277CCABB0] numberWithInteger:74];
        v154 = [v12 containsObject:v153];

        if (v154)
        {
          v155 = [UIPrinterFinishingChoice alloc];
          v156 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v157 = [v156 localizedStringForKey:@"Double (Left)" value:@"Double (Left)" table:@"Localizable"];
          v158 = [(UIPrinterFinishingChoice *)v155 initWithTitle:v157 finishingChoiceID:74 finishingChoiceInfo:0];
          [v121 addObject:v158];
        }

        v159 = [MEMORY[0x277CCABB0] numberWithInteger:75];
        v160 = [v12 containsObject:v159];

        if (v160)
        {
          v161 = [UIPrinterFinishingChoice alloc];
          v162 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v163 = [v162 localizedStringForKey:@"Double (Top)" value:@"Double (Top)" table:@"Localizable"];
          v164 = [(UIPrinterFinishingChoice *)v161 initWithTitle:v163 finishingChoiceID:75 finishingChoiceInfo:0];
          [v121 addObject:v164];
        }

        v165 = [MEMORY[0x277CCABB0] numberWithInteger:76];
        v166 = [v12 containsObject:v165];

        if (v166)
        {
          v167 = [UIPrinterFinishingChoice alloc];
          v168 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v169 = [v168 localizedStringForKey:@"Double (Right)" value:@"Double (Right)" table:@"Localizable"];
          v170 = [(UIPrinterFinishingChoice *)v167 initWithTitle:v169 finishingChoiceID:76 finishingChoiceInfo:0];
          [v121 addObject:v170];
        }

        v171 = [MEMORY[0x277CCABB0] numberWithInteger:77];
        v172 = [v12 containsObject:v171];

        if (v172)
        {
          v173 = [UIPrinterFinishingChoice alloc];
          v174 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v175 = [v174 localizedStringForKey:@"Double (Bottom)" value:@"Double (Bottom)" table:@"Localizable"];
          v176 = [(UIPrinterFinishingChoice *)v173 initWithTitle:v175 finishingChoiceID:77 finishingChoiceInfo:0];
          [v121 addObject:v176];
        }

        v177 = [MEMORY[0x277CCABB0] numberWithInteger:78];
        v178 = [v12 containsObject:v177];

        if (v178)
        {
          v179 = [UIPrinterFinishingChoice alloc];
          v180 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v181 = [v180 localizedStringForKey:@"Triple (Left)" value:@"Triple (Left)" table:@"Localizable"];
          v182 = [(UIPrinterFinishingChoice *)v179 initWithTitle:v181 finishingChoiceID:78 finishingChoiceInfo:0];
          [v121 addObject:v182];
        }

        v183 = [MEMORY[0x277CCABB0] numberWithInteger:79];
        v184 = [v12 containsObject:v183];

        if (v184)
        {
          v185 = [UIPrinterFinishingChoice alloc];
          v186 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v187 = [v186 localizedStringForKey:@"Triple (Top)" value:@"Triple (Top)" table:@"Localizable"];
          v188 = [(UIPrinterFinishingChoice *)v185 initWithTitle:v187 finishingChoiceID:79 finishingChoiceInfo:0];
          [v121 addObject:v188];
        }

        v189 = [MEMORY[0x277CCABB0] numberWithInteger:80];
        v190 = [v12 containsObject:v189];

        if (v190)
        {
          v191 = [UIPrinterFinishingChoice alloc];
          v192 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v193 = [v192 localizedStringForKey:@"Triple (Right)" value:@"Triple (Right)" table:@"Localizable"];
          v194 = [(UIPrinterFinishingChoice *)v191 initWithTitle:v193 finishingChoiceID:80 finishingChoiceInfo:0];
          [v121 addObject:v194];
        }

        v195 = [MEMORY[0x277CCABB0] numberWithInteger:81];
        v196 = [v12 containsObject:v195];

        if (v196)
        {
          v197 = [UIPrinterFinishingChoice alloc];
          v198 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v199 = [v198 localizedStringForKey:@"Triple (Bottom)" value:@"Triple (Bottom)" table:@"Localizable"];
          v200 = [(UIPrinterFinishingChoice *)v197 initWithTitle:v199 finishingChoiceID:81 finishingChoiceInfo:0];
          [v121 addObject:v200];
        }

        v201 = [MEMORY[0x277CCABB0] numberWithInteger:82];
        v202 = [v12 containsObject:v201];

        if (v202)
        {
          v203 = [UIPrinterFinishingChoice alloc];
          v204 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v205 = [v204 localizedStringForKey:@"Quad (Left)" value:@"Quad (Left)" table:@"Localizable"];
          v206 = [(UIPrinterFinishingChoice *)v203 initWithTitle:v205 finishingChoiceID:82 finishingChoiceInfo:0];
          [v121 addObject:v206];
        }

        v207 = [MEMORY[0x277CCABB0] numberWithInteger:83];
        v208 = [v12 containsObject:v207];

        if (v208)
        {
          v209 = [UIPrinterFinishingChoice alloc];
          v210 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v211 = [v210 localizedStringForKey:@"Quad (Top)" value:@"Quad (Top)" table:@"Localizable"];
          v212 = [(UIPrinterFinishingChoice *)v209 initWithTitle:v211 finishingChoiceID:83 finishingChoiceInfo:0];
          [v121 addObject:v212];
        }

        v213 = [MEMORY[0x277CCABB0] numberWithInteger:84];
        v214 = [v12 containsObject:v213];

        if (v214)
        {
          v215 = [UIPrinterFinishingChoice alloc];
          v216 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v217 = [v216 localizedStringForKey:@"Quad (Right)" value:@"Quad (Right)" table:@"Localizable"];
          v218 = [(UIPrinterFinishingChoice *)v215 initWithTitle:v217 finishingChoiceID:84 finishingChoiceInfo:0];
          [v121 addObject:v218];
        }

        v219 = [MEMORY[0x277CCABB0] numberWithInteger:85];
        v220 = [v12 containsObject:v219];

        if (v220)
        {
          v221 = [UIPrinterFinishingChoice alloc];
          v222 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v223 = [v222 localizedStringForKey:@"Quad (Bottom)" value:@"Quad (Bottom)" table:@"Localizable"];
          v224 = [(UIPrinterFinishingChoice *)v221 initWithTitle:v223 finishingChoiceID:85 finishingChoiceInfo:0];
          [v121 addObject:v224];
        }

        if ([v121 count] >= 2)
        {
          v225 = [UIPrinterFinishingChoice alloc];
          v226 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v227 = [v226 localizedStringForKey:@"No punch" value:@"No punch" table:@"Localizable"];
          v228 = [(UIPrinterFinishingChoice *)v225 initWithTitle:v227 finishingChoiceID:0 finishingChoiceInfo:0];
          [v121 insertObject:v228 atIndex:0];
        }

        if ([v121 count])
        {
          v229 = [v121 count] > 1;
          v230 = [UIPrinterFinishingOption alloc];
          v231 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v232 = [v231 localizedStringForKey:@"Punch" value:@"Punch" table:@"Localizable"];
          v233 = [(UIPrintOption *)v365 printPanelViewController];
          v234 = [(UIFinishingsOption *)v365 finishingOptionsTableView];
          v235 = [(UIPrinterFinishingOption *)v230 initWithTitle:v232 finishingType:1 viewType:v229 optionChoices:v121 printPanelViewController:v233 finishingOptionsTableView:v234];
          [v367 addObject:v235];

          v12 = v366;
        }

        v236 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];

        v237 = [MEMORY[0x277CCABB0] numberWithInteger:90];
        v238 = [v12 containsObject:v237];

        if (v238)
        {
          v239 = [UIPrinterFinishingChoice alloc];
          v240 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v241 = [v240 localizedStringForKey:@"Accordion" value:@"Accordion" table:@"Localizable"];
          v242 = [(UIPrinterFinishingChoice *)v239 initWithTitle:v241 finishingChoiceID:90 finishingChoiceInfo:0];
          [v236 addObject:v242];
        }

        v243 = [MEMORY[0x277CCABB0] numberWithInteger:91];
        v244 = [v12 containsObject:v243];

        if (v244)
        {
          v245 = [UIPrinterFinishingChoice alloc];
          v246 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v247 = [v246 localizedStringForKey:@"Double Gate" value:@"Double Gate" table:@"Localizable"];
          v248 = [(UIPrinterFinishingChoice *)v245 initWithTitle:v247 finishingChoiceID:91 finishingChoiceInfo:0];
          [v236 addObject:v248];
        }

        v249 = [MEMORY[0x277CCABB0] numberWithInteger:92];
        v250 = [v12 containsObject:v249];

        if (v250)
        {
          v251 = [UIPrinterFinishingChoice alloc];
          v252 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v253 = [v252 localizedStringForKey:@"Gate" value:@"Gate" table:@"Localizable"];
          v254 = [(UIPrinterFinishingChoice *)v251 initWithTitle:v253 finishingChoiceID:92 finishingChoiceInfo:0];
          [v236 addObject:v254];
        }

        v255 = [MEMORY[0x277CCABB0] numberWithInteger:93];
        v256 = [v12 containsObject:v255];

        if (v256)
        {
          v257 = [UIPrinterFinishingChoice alloc];
          v258 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v259 = [v258 localizedStringForKey:@"Half" value:@"Half" table:@"Localizable"];
          v260 = [(UIPrinterFinishingChoice *)v257 initWithTitle:v259 finishingChoiceID:93 finishingChoiceInfo:0];
          [v236 addObject:v260];
        }

        v261 = [MEMORY[0x277CCABB0] numberWithInteger:94];
        v262 = [v12 containsObject:v261];

        if (v262)
        {
          v263 = [UIPrinterFinishingChoice alloc];
          v264 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v265 = [v264 localizedStringForKey:@"Half Z" value:@"Half Z" table:@"Localizable"];
          v266 = [(UIPrinterFinishingChoice *)v263 initWithTitle:v265 finishingChoiceID:94 finishingChoiceInfo:0];
          [v236 addObject:v266];
        }

        v267 = [MEMORY[0x277CCABB0] numberWithInteger:95];
        v268 = [v12 containsObject:v267];

        if (v268)
        {
          v269 = [UIPrinterFinishingChoice alloc];
          v270 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v271 = [v270 localizedStringForKey:@"Left Gate" value:@"Left Gate" table:@"Localizable"];
          v272 = [(UIPrinterFinishingChoice *)v269 initWithTitle:v271 finishingChoiceID:95 finishingChoiceInfo:0];
          [v236 addObject:v272];
        }

        v273 = [MEMORY[0x277CCABB0] numberWithInteger:96];
        v274 = [v12 containsObject:v273];

        if (v274)
        {
          v275 = [UIPrinterFinishingChoice alloc];
          v276 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v277 = [v276 localizedStringForKey:@"Letter" value:@"Letter" table:@"Localizable"];
          v278 = [(UIPrinterFinishingChoice *)v275 initWithTitle:v277 finishingChoiceID:96 finishingChoiceInfo:0];
          [v236 addObject:v278];
        }

        v279 = [MEMORY[0x277CCABB0] numberWithInteger:97];
        v280 = [v12 containsObject:v279];

        if (v280)
        {
          v281 = [UIPrinterFinishingChoice alloc];
          v282 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v283 = [v282 localizedStringForKey:@"Parallel" value:@"Parallel" table:@"Localizable"];
          v284 = [(UIPrinterFinishingChoice *)v281 initWithTitle:v283 finishingChoiceID:97 finishingChoiceInfo:0];
          [v236 addObject:v284];
        }

        v285 = [MEMORY[0x277CCABB0] numberWithInteger:98];
        v286 = [v12 containsObject:v285];

        if (v286)
        {
          v287 = [UIPrinterFinishingChoice alloc];
          v288 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v289 = [v288 localizedStringForKey:@"Poster" value:@"Poster" table:@"Localizable"];
          v290 = [(UIPrinterFinishingChoice *)v287 initWithTitle:v289 finishingChoiceID:98 finishingChoiceInfo:0];
          [v236 addObject:v290];
        }

        v291 = [MEMORY[0x277CCABB0] numberWithInteger:99];
        v292 = [v12 containsObject:v291];

        if (v292)
        {
          v293 = [UIPrinterFinishingChoice alloc];
          v294 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v295 = [v294 localizedStringForKey:@"Right Gate" value:@"Right Gate" table:@"Localizable"];
          v296 = [(UIPrinterFinishingChoice *)v293 initWithTitle:v295 finishingChoiceID:99 finishingChoiceInfo:0];
          [v236 addObject:v296];
        }

        v297 = [MEMORY[0x277CCABB0] numberWithInteger:100];
        v298 = [v12 containsObject:v297];

        if (v298)
        {
          v299 = [UIPrinterFinishingChoice alloc];
          v300 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v301 = [v300 localizedStringForKey:@"Z-Fold" value:@"Z-Fold" table:@"Localizable"];
          v302 = [(UIPrinterFinishingChoice *)v299 initWithTitle:v301 finishingChoiceID:100 finishingChoiceInfo:0];
          [v236 addObject:v302];
        }

        if ([v236 count] >= 2)
        {
          v303 = [UIPrinterFinishingChoice alloc];
          v304 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v305 = [v304 localizedStringForKey:@"No fold" value:@"No fold" table:@"Localizable"];
          v306 = [(UIPrinterFinishingChoice *)v303 initWithTitle:v305 finishingChoiceID:0 finishingChoiceInfo:0];
          [v236 insertObject:v306 atIndex:0];
        }

        if ([v236 count])
        {
          v307 = [v236 count] > 1;
          v308 = [UIPrinterFinishingOption alloc];
          v309 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v310 = [v309 localizedStringForKey:@"Fold" value:@"Fold" table:@"Localizable"];
          v311 = [(UIPrintOption *)v365 printPanelViewController];
          v312 = [(UIFinishingsOption *)v365 finishingOptionsTableView];
          v313 = [(UIPrinterFinishingOption *)v308 initWithTitle:v310 finishingType:2 viewType:v307 optionChoices:v236 printPanelViewController:v311 finishingOptionsTableView:v312];
          [v367 addObject:v313];

          v12 = v366;
        }

        v314 = [MEMORY[0x277CCABB0] numberWithInteger:16];
        v315 = [v12 containsObject:v314];

        if (v315)
        {
          v316 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];

          v317 = [UIPrinterFinishingChoice alloc];
          v318 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v319 = [v318 localizedStringForKey:@"Laminate" value:@"Laminate" table:@"Localizable"];
          v320 = [(UIPrinterFinishingChoice *)v317 initWithTitle:v319 finishingChoiceID:16 finishingChoiceInfo:0];
          [v316 addObject:v320];

          v321 = [UIPrinterFinishingOption alloc];
          v10 = 0x277CCA000;
          v322 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v323 = [v322 localizedStringForKey:@"Laminate" value:@"Laminate" table:@"Localizable"];
          v324 = [(UIPrintOption *)v365 printPanelViewController];
          v325 = [(UIFinishingsOption *)v365 finishingOptionsTableView];
          v326 = [(UIPrinterFinishingOption *)v321 initWithTitle:v323 finishingType:3 viewType:0 optionChoices:v316 printPanelViewController:v324 finishingOptionsTableView:v325];
          [v367 addObject:v326];

          v236 = v316;
        }

        v327 = [*(v10 + 2992) numberWithInteger:15];
        v328 = [v12 containsObject:v327];

        if (v328)
        {
          v329 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];

          v330 = [UIPrinterFinishingChoice alloc];
          v331 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v332 = [v331 localizedStringForKey:@"Coat" value:@"Coat" table:@"Localizable"];
          v333 = [(UIPrinterFinishingChoice *)v330 initWithTitle:v332 finishingChoiceID:15 finishingChoiceInfo:0];
          [v329 addObject:v333];

          v334 = [UIPrinterFinishingOption alloc];
          v335 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v336 = [v335 localizedStringForKey:@"Coat" value:@"Coat" table:@"Localizable"];
          v2 = v365;
          v337 = [(UIPrintOption *)v365 printPanelViewController];
          v338 = [(UIFinishingsOption *)v365 finishingOptionsTableView];
          v339 = [(UIPrinterFinishingOption *)v334 initWithTitle:v336 finishingType:4 viewType:0 optionChoices:v329 printPanelViewController:v337 finishingOptionsTableView:v338];
          [v367 addObject:v339];

          v236 = v329;
        }

        else
        {
          v2 = v365;
        }

        goto LABEL_118;
      }
    }

    v125 = [MEMORY[0x277CCABB0] numberWithInteger:70];
    v126 = [v12 containsObject:v125];

    v127 = [UIPrinterFinishingChoice alloc];
    v128 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v129 = v128;
    if (v126)
    {
      v130 = [v128 localizedStringForKey:@"Single (Top-Left)" value:@"Single (Top-Left)" table:@"Localizable"];
      v131 = v127;
      v132 = v130;
      v133 = 70;
    }

    else
    {
      v130 = [v128 localizedStringForKey:@"Automatic" value:@"Automatic" table:@"Localizable"];
      v131 = v127;
      v132 = v130;
      v133 = 5;
    }

    v134 = [(UIPrinterFinishingChoice *)v131 initWithTitle:v132 finishingChoiceID:v133 finishingChoiceInfo:0];
    [v121 addObject:v134];

    goto LABEL_52;
  }

LABEL_118:
  v340 = [(UIPrintOption *)v2 printInfo];
  v341 = [v340 currentPrinter];
  v342 = [v341 outputBins];

  if (v342)
  {
    v343 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
    v369 = 0u;
    v370 = 0u;
    v371 = 0u;
    v372 = 0u;
    v364 = v342;
    obj = v342;
    v344 = [obj countByEnumeratingWithState:&v369 objects:v373 count:16];
    if (v344)
    {
      v345 = v344;
      v346 = *v370;
      do
      {
        for (i = 0; i != v345; ++i)
        {
          if (*v370 != v346)
          {
            objc_enumerationMutation(obj);
          }

          v348 = *(*(&v369 + 1) + 8 * i);
          v349 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v350 = [v348 objectForKeyedSubscript:@"OutputBinChoice"];
          v351 = [v348 objectForKeyedSubscript:@"OutputBinText"];
          v352 = [v349 localizedStringForKey:v350 value:v351 table:@"Localizable"];

          v353 = [[UIPrinterFinishingChoice alloc] initWithTitle:v352 finishingChoiceID:3 finishingChoiceInfo:v348];
          v354 = [v348 objectForKey:@"DefaultOutputBin"];

          if (v354)
          {
            [v343 insertObject:v353 atIndex:0];
          }

          else
          {
            [v343 addObject:v353];
          }
        }

        v345 = [obj countByEnumeratingWithState:&v369 objects:v373 count:16];
      }

      while (v345);
    }

    v2 = v365;
    if ([v343 count] >= 2)
    {
      v355 = [UIPrinterFinishingOption alloc];
      v356 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v357 = [v356 localizedStringForKey:@"Output Bins" value:@"Output Bins" table:@"Localizable"];
      v358 = [(UIPrintOption *)v365 printPanelViewController];
      v359 = [(UIFinishingsOption *)v365 finishingOptionsTableView];
      v360 = [(UIPrinterFinishingOption *)v355 initWithTitle:v357 finishingType:6 viewType:1 optionChoices:v343 printPanelViewController:v358 finishingOptionsTableView:v359];
      [v367 addObject:v360];
    }

    v342 = v364;
  }

  if ([v367 count])
  {
    v361 = v367;
  }

  else
  {
    v361 = 0;
  }

  objc_storeStrong(&v2->_printerFinishingOptions, v361);

LABEL_136:
  printerFinishingOptions = v2->_printerFinishingOptions;

  return printerFinishingOptions;
}

- (void)clearFinishingOptions
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 setFinishingTemplate:0];

  v4 = [(UIPrintOption *)self printInfo];
  [v4 setStaple:0];

  v5 = [(UIPrintOption *)self printInfo];
  [v5 setPunch:0];

  v6 = [(UIPrintOption *)self printInfo];
  [v6 setFold:0];

  v7 = [(UIPrintOption *)self printInfo];
  [v7 setLaminate:0];

  v8 = [(UIPrintOption *)self printInfo];
  [v8 setCoat:0];

  v9 = [(UIPrintOption *)self printInfo];
  [v9 setOutputBin:0];

  v10 = [(UIPrintOption *)self printInfo];
  [v10 setPageStackOrder:0];
}

- (UITableView)finishingOptionsTableView
{
  finishingOptionsTableView = self->_finishingOptionsTableView;
  if (!finishingOptionsTableView)
  {
    v4 = objc_alloc(MEMORY[0x277D75B40]);
    v5 = [v4 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_finishingOptionsTableView;
    self->_finishingOptionsTableView = v5;

    [(UITableView *)self->_finishingOptionsTableView setDataSource:self];
    [(UITableView *)self->_finishingOptionsTableView setDelegate:self];
    finishingOptionsTableView = self->_finishingOptionsTableView;
  }

  return finishingOptionsTableView;
}

- (id)title
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Finishing Options" value:@"Finishing Options" table:@"Localizable"];

  return v3;
}

- (id)summaryString
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintOption *)self printInfo];
  v4 = [v3 finishingOption];

  if (v4 == 1)
  {
    v5 = [(UIFinishingsOption *)self finishingTemplatesOption];
    v14 = [v5 summary];
    goto LABEL_18;
  }

  if (v4 != 2)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v5 localizedStringForKey:@"No finishing chosen" value:@"No finishing chosen" table:@"Localizable"];
    goto LABEL_18;
  }

  v5 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(UIFinishingsOption *)self printerFinishingOptions];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) summary];
        if (v11)
        {
          if ([v5 length])
          {
            v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v13 = [v12 localizedStringForKey:@" • " value:@" • " table:@"Localizable"];
            [v5 appendString:v13];
          }

          [v5 appendString:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  if ([v5 length])
  {
    v14 = v5;
LABEL_18:
    v15 = v14;
    goto LABEL_19;
  }

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v17 localizedStringForKey:@"No finishing option summary" value:@"No finishing option summary" table:@"Localizable"];

LABEL_19:

  return v15;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(UIPrintOption *)self printInfo];
  if ([v3 finishingOption])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    v5 = [(UIPrintOption *)self printInfo];
    if ([v5 finishingOption] == 1)
    {
      v6 = 1;
    }

    else
    {
      v12 = [(UIFinishingsOption *)self printerFinishingOptions];
      v6 = [v12 count];
    }
  }

  else
  {
    v7 = [(UIFinishingsOption *)self finishingTemplatesOption];
    v8 = [v7 shouldShow];

    if (v8)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = [(UIFinishingsOption *)self printerFinishingOptions];
    v11 = [v10 count];

    if (v11)
    {
      return v9 + 1;
    }

    else
    {
      return v9;
    }
  }

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section])
  {
    v8 = [(UIPrintOption *)self printInfo];
    v9 = [v8 finishingOption];

    if (v9 == 1)
    {
      v10 = [(UIFinishingsOption *)self finishingTemplatesOption];
      [v10 finishingTempletesTableViewCell];
    }

    else
    {
      v20 = [(UIFinishingsOption *)self printerFinishingOptions];
      v10 = [v20 objectAtIndex:{objc_msgSend(v7, "row")}];

      [v10 printerFinishingOptionTableViewCell];
    }
    v11 = ;
  }

  else
  {
    v11 = [v6 dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];
    if (!v11)
    {
      v11 = [[UIPrintOptionCell alloc] initWithStyle:0 reuseIdentifier:@"UIPrintOptionCell"];
    }

    v10 = [MEMORY[0x277D756E0] cellConfiguration];
    if ([v7 row])
    {
      if ([v7 row] == 1)
      {
        v12 = [(UIFinishingsOption *)self finishingTemplatesOption];
        v13 = [v12 shouldShow];

        v14 = [(UIPrintOption *)self printInfo];
        v15 = [v14 finishingOption];

        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = v16;
        if (v13)
        {
          v18 = v15 == 1;
          v19 = @"Finishing Templates";
        }

        else
        {
          v18 = v15 == 2;
          v19 = @"Printer Options";
        }
      }

      else
      {
        v22 = [(UIPrintOption *)self printInfo];
        v18 = [v22 finishingOption] == 2;

        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = v16;
        v19 = @"Printer Options";
      }
    }

    else
    {
      v21 = [(UIPrintOption *)self printInfo];
      v18 = [v21 finishingOption] == 0;

      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = v16;
      v19 = @"No finishing option";
    }

    v23 = [v16 localizedStringForKey:v19 value:v19 table:@"Localizable"];
    [v10 setText:v23];

    [(UIPrintOptionCell *)v11 setSelectionStyle:3];
    [(UIPrintOptionCell *)v11 setContentConfiguration:v10];
    if (v18)
    {
      v24 = 3;
    }

    else
    {
      v24 = 0;
    }

    [(UIPrintOptionCell *)v11 setAccessoryType:v24];
  }

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  if ([v6 section])
  {
    v7 = [v13 cellForRowAtIndexPath:v6];
    [v7 printOptionCellTapped];
    [v7 setSelected:0];
  }

  else
  {
    [(UIFinishingsOption *)self clearFinishingOptions];
    if ([v6 row])
    {
      if ([v6 row] == 1)
      {
        v7 = [(UIFinishingsOption *)self finishingTemplatesOption];
        if ([v7 shouldShow])
        {
          v8 = 1;
        }

        else
        {
          v8 = 2;
        }

        v9 = [(UIPrintOption *)self printInfo];
        [v9 setFinishingOption:v8];

        goto LABEL_12;
      }

      v10 = [(UIPrintOption *)self printInfo];
      v7 = v10;
      v11 = 2;
    }

    else
    {
      v10 = [(UIPrintOption *)self printInfo];
      v7 = v10;
      v11 = 0;
    }

    [v10 setFinishingOption:v11];
  }

LABEL_12:

  v12 = [(UIFinishingsOption *)self summaryString];
  [(UIPrintOption *)self setSummary:v12];
}

@end