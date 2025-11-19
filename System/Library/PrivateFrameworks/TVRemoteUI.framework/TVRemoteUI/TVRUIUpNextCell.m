@interface TVRUIUpNextCell
@end

@implementation TVRUIUpNextCell

void __31___TVRUIUpNextCell__actionMenu__block_invoke(uint64_t a1, void *a2)
{
  v89[2] = *MEMORY[0x277D85DE8];
  v58 = a2;
  v59 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.right.square"];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
  v4 = MEMORY[0x277D750C8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TVRUIGotoEpisode" value:&stru_287E6AEF8 table:@"Localizable"];
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __31___TVRUIUpNextCell__actionMenu__block_invoke_2;
  v87[3] = &unk_279D87C68;
  objc_copyWeak(&v88, (a1 + 40));
  v57 = [v4 actionWithTitle:v6 image:v59 identifier:0 handler:v87];

  v7 = MEMORY[0x277D750C8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"TVRUIGotoShow" value:&stru_287E6AEF8 table:@"Localizable"];
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __31___TVRUIUpNextCell__actionMenu__block_invoke_3;
  v85[3] = &unk_279D87C68;
  objc_copyWeak(&v86, (a1 + 40));
  v56 = [v7 actionWithTitle:v9 image:v59 identifier:0 handler:v85];

  v10 = MEMORY[0x277D750C8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"TVRUIGotoMovie" value:&stru_287E6AEF8 table:@"Localizable"];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __31___TVRUIUpNextCell__actionMenu__block_invoke_4;
  v83[3] = &unk_279D87C68;
  objc_copyWeak(&v84, (a1 + 40));
  v55 = [v10 actionWithTitle:v12 image:v59 identifier:0 handler:v83];

  v13 = MEMORY[0x277D750C8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"TVRUIGotoSportingEvent" value:&stru_287E6AEF8 table:@"Localizable"];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __31___TVRUIUpNextCell__actionMenu__block_invoke_5;
  v81[3] = &unk_279D87C68;
  objc_copyWeak(&v82, (a1 + 40));
  v54 = [v13 actionWithTitle:v15 image:v59 identifier:0 handler:v81];

  v16 = MEMORY[0x277D750C8];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"TVRUIShareEpisode" value:&stru_287E6AEF8 table:@"Localizable"];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __31___TVRUIUpNextCell__actionMenu__block_invoke_6;
  v79[3] = &unk_279D87C68;
  objc_copyWeak(&v80, (a1 + 40));
  v53 = [v16 actionWithTitle:v18 image:v3 identifier:0 handler:v79];

  v19 = MEMORY[0x277D750C8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"TVRUIShareShow" value:&stru_287E6AEF8 table:@"Localizable"];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __31___TVRUIUpNextCell__actionMenu__block_invoke_7;
  v77[3] = &unk_279D87C68;
  objc_copyWeak(&v78, (a1 + 40));
  v52 = [v19 actionWithTitle:v21 image:v3 identifier:0 handler:v77];

  v22 = MEMORY[0x277D750C8];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"TVRUIShareMovie" value:&stru_287E6AEF8 table:@"Localizable"];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __31___TVRUIUpNextCell__actionMenu__block_invoke_8;
  v75[3] = &unk_279D87C68;
  objc_copyWeak(&v76, (a1 + 40));
  v51 = [v22 actionWithTitle:v24 image:v3 identifier:0 handler:v75];

  v25 = MEMORY[0x277D750C8];
  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:@"TVRUIShareSportingEvent" value:&stru_287E6AEF8 table:@"Localizable"];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __31___TVRUIUpNextCell__actionMenu__block_invoke_9;
  v73[3] = &unk_279D87C68;
  objc_copyWeak(&v74, (a1 + 40));
  v50 = [v25 actionWithTitle:v27 image:v3 identifier:0 handler:v73];

  v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = [v28 localizedStringForKey:@"RemoveFromUpNext" value:&stru_287E6AEF8 table:@"Localizable"];

  v30 = MEMORY[0x277D750C8];
  v31 = [MEMORY[0x277D755B8] systemImageNamed:@"minus.circle"];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __31___TVRUIUpNextCell__actionMenu__block_invoke_10;
  v71[3] = &unk_279D87C68;
  objc_copyWeak(&v72, (a1 + 40));
  v32 = [v30 actionWithTitle:v29 image:v31 identifier:0 handler:v71];

  v33 = MEMORY[0x277D750C8];
  v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v35 = [v34 localizedStringForKey:@"MarkAsWatched" value:&stru_287E6AEF8 table:@"Localizable"];
  v36 = [MEMORY[0x277D755B8] systemImageNamed:@"rectangle.badge.checkmark"];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __31___TVRUIUpNextCell__actionMenu__block_invoke_11;
  v69[3] = &unk_279D87C68;
  objc_copyWeak(&v70, (a1 + 40));
  v37 = [v33 actionWithTitle:v35 image:v36 identifier:0 handler:v69];

  v38 = MEMORY[0x277D75710];
  v89[0] = v32;
  v89[1] = v37;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
  v40 = [v38 menuWithTitle:&stru_287E6AEF8 image:0 identifier:0 options:1 children:v39];

  v41 = [*(a1 + 32) upNextInfo];
  v42 = [v41 mediaInfo];
  v43 = [v42 kind];

  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy_;
  v67 = __Block_byref_object_dispose_;
  v68 = MEMORY[0x277CBEBF8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __31___TVRUIUpNextCell__actionMenu__block_invoke_444;
  aBlock[3] = &unk_279D884F0;
  aBlock[4] = &v63;
  v44 = _Block_copy(aBlock);
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __31___TVRUIUpNextCell__actionMenu__block_invoke_2_446;
  v60[3] = &unk_279D88518;
  v60[4] = *(a1 + 32);
  v45 = v44;
  v61 = v45;
  v46 = _Block_copy(v60);
  v47 = v46;
  switch(v43)
  {
    case 1:
      (*(v46 + 2))(v46, 3, v57);
      (v47)[2](v47, 2, v56);
      (v47)[2](v47, 3, v53);
      (v47)[2](v47, 2, v52);
      break;
    case 5:
      (*(v46 + 2))(v46, 1, v54);
      (v47)[2](v47, 1, v50);
      break;
    case 2:
      (*(v46 + 2))(v46, 1, v55);
      (v47)[2](v47, 1, v51);
      break;
    default:
      (*(v45 + 2))(v45, v32);
      v48 = v37;
      goto LABEL_9;
  }

  v48 = v40;
LABEL_9:
  (*(v45 + 2))(v45, v48);
  v49 = v64[5];

  _Block_object_dispose(&v63, 8);
  v58[2](v58, v49);

  objc_destroyWeak(&v70);
  objc_destroyWeak(&v72);

  objc_destroyWeak(&v74);
  objc_destroyWeak(&v76);

  objc_destroyWeak(&v78);
  objc_destroyWeak(&v80);

  objc_destroyWeak(&v82);
  objc_destroyWeak(&v84);

  objc_destroyWeak(&v86);
  objc_destroyWeak(&v88);
}

void __31___TVRUIUpNextCell__actionMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained openProductPageForKind:3];
}

void __31___TVRUIUpNextCell__actionMenu__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained openProductPageForKind:2];
}

void __31___TVRUIUpNextCell__actionMenu__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained openProductPageForKind:1];
}

void __31___TVRUIUpNextCell__actionMenu__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained openProductPageForKind:1];
}

void __31___TVRUIUpNextCell__actionMenu__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  v2 = [WeakRetained upNextInfo];
  v3 = [WeakRetained actionButton];
  [v1 shareEpisodeForInfo:v2 sourceView:v3];
}

void __31___TVRUIUpNextCell__actionMenu__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  v2 = [WeakRetained upNextInfo];
  v3 = [WeakRetained actionButton];
  [v1 shareShowForInfo:v2 sourceView:v3];
}

void __31___TVRUIUpNextCell__actionMenu__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  v2 = [WeakRetained upNextInfo];
  v3 = [WeakRetained actionButton];
  [v1 sharePrimaryForInfo:v2 sourceView:v3];
}

void __31___TVRUIUpNextCell__actionMenu__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  v2 = [WeakRetained upNextInfo];
  v3 = [WeakRetained actionButton];
  [v1 sharePrimaryForInfo:v2 sourceView:v3];
}

void __31___TVRUIUpNextCell__actionMenu__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained delegate];
    v3 = [v4 upNextInfo];
    [v2 removeItemFromUpNext:v3];

    WeakRetained = v4;
  }
}

void __31___TVRUIUpNextCell__actionMenu__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained delegate];
    v3 = [v4 upNextInfo];
    [v2 markItemAsWatched:v3];

    WeakRetained = v4;
  }
}

uint64_t __31___TVRUIUpNextCell__actionMenu__block_invoke_444(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [*(*(*(a1 + 32) + 8) + 40) arrayByAddingObject:a2];

  return MEMORY[0x2821F96F8]();
}

void __31___TVRUIUpNextCell__actionMenu__block_invoke_2_446(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) hasURLForProductPageKind:a2])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __41___TVRUIUpNextCell__updateForUpNextInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained upNextInfo];
    v9 = [v8 mediaInfo];
    v10 = [v9 identifier];

    if ([v10 length] && objc_msgSend(v12, "isEqualToString:", v10))
    {
      v11 = [v7 imageView];
      [v11 setImage:v5];
    }
  }
}

void __41___TVRUIUpNextCell__updateForUpNextInfo___block_invoke_450(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if ([a2 isEqual:*(a1 + 32)])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained channelImageView];
    [v6 setImage:v7];
  }
}

__CFString *__48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = &stru_287E6AEF8;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;
  if ([v5 length])
  {
    if ([(__CFString *)v4 length])
    {
      v8 = @" • %@";
    }

    else
    {
      v8 = @"%@";
    }

    v9 = [(__CFString *)v7 stringByAppendingFormat:v8, v5];

    v7 = v9;
  }

  return v7;
}

@end