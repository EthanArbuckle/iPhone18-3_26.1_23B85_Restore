@interface TVRUIUpNextHorizontalCell
@end

@implementation TVRUIUpNextHorizontalCell

void __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke(uint64_t a1, void *a2)
{
  v99[2] = *MEMORY[0x277D85DE8];
  v65 = a2;
  v3 = MEMORY[0x277D750C8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"TVRUIGotoEpisode" value:&stru_287E6AEF8 table:@"Localizable"];
  v6 = *(a1 + 40);
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_2;
  v97[3] = &unk_279D87C68;
  objc_copyWeak(&v98, (a1 + 64));
  v64 = [v3 actionWithTitle:v5 image:v6 identifier:0 handler:v97];

  v7 = MEMORY[0x277D750C8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"TVRUIGotoShow" value:&stru_287E6AEF8 table:@"Localizable"];
  v10 = *(a1 + 40);
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_3;
  v95[3] = &unk_279D87C68;
  objc_copyWeak(&v96, (a1 + 64));
  v63 = [v7 actionWithTitle:v9 image:v10 identifier:0 handler:v95];

  v11 = MEMORY[0x277D750C8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"TVRUIGotoMovie" value:&stru_287E6AEF8 table:@"Localizable"];
  v14 = *(a1 + 40);
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_4;
  v93[3] = &unk_279D87C68;
  objc_copyWeak(&v94, (a1 + 64));
  v62 = [v11 actionWithTitle:v13 image:v14 identifier:0 handler:v93];

  v15 = MEMORY[0x277D750C8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"TVRUIGotoSportingEvent" value:&stru_287E6AEF8 table:@"Localizable"];
  v18 = *(a1 + 40);
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_5;
  v91[3] = &unk_279D87C68;
  objc_copyWeak(&v92, (a1 + 64));
  v61 = [v15 actionWithTitle:v17 image:v18 identifier:0 handler:v91];

  v19 = MEMORY[0x277D750C8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"TVRUIShareEpisode" value:&stru_287E6AEF8 table:@"Localizable"];
  v22 = *(a1 + 48);
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_6;
  v88[3] = &unk_279D87E38;
  objc_copyWeak(&v90, (a1 + 64));
  v89 = *(a1 + 56);
  v60 = [v19 actionWithTitle:v21 image:v22 identifier:0 handler:v88];

  v23 = MEMORY[0x277D750C8];
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"TVRUIShareShow" value:&stru_287E6AEF8 table:@"Localizable"];
  v26 = *(a1 + 48);
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_7;
  v85[3] = &unk_279D87E38;
  objc_copyWeak(&v87, (a1 + 64));
  v86 = *(a1 + 56);
  v59 = [v23 actionWithTitle:v25 image:v26 identifier:0 handler:v85];

  v27 = MEMORY[0x277D750C8];
  v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = [v28 localizedStringForKey:@"TVRUIShareMovie" value:&stru_287E6AEF8 table:@"Localizable"];
  v30 = *(a1 + 48);
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_8;
  v82[3] = &unk_279D87E38;
  objc_copyWeak(&v84, (a1 + 64));
  v83 = *(a1 + 56);
  v58 = [v27 actionWithTitle:v29 image:v30 identifier:0 handler:v82];

  v31 = MEMORY[0x277D750C8];
  v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v33 = [v32 localizedStringForKey:@"TVRUIShareSportingEvent" value:&stru_287E6AEF8 table:@"Localizable"];
  v34 = *(a1 + 48);
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_9;
  v79[3] = &unk_279D87E38;
  objc_copyWeak(&v81, (a1 + 64));
  v80 = *(a1 + 56);
  v57 = [v31 actionWithTitle:v33 image:v34 identifier:0 handler:v79];

  v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v36 = [v35 localizedStringForKey:@"RemoveFromUpNext" value:&stru_287E6AEF8 table:@"Localizable"];

  v37 = MEMORY[0x277D750C8];
  v38 = [MEMORY[0x277D755B8] systemImageNamed:@"minus.circle"];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_10;
  v77[3] = &unk_279D87C68;
  objc_copyWeak(&v78, (a1 + 64));
  v39 = [v37 actionWithTitle:v36 image:v38 identifier:0 handler:v77];

  v40 = MEMORY[0x277D750C8];
  v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v42 = [v41 localizedStringForKey:@"MarkAsWatched" value:&stru_287E6AEF8 table:@"Localizable"];
  v43 = [MEMORY[0x277D755B8] systemImageNamed:@"rectangle.badge.checkmark"];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_11;
  v75[3] = &unk_279D87C68;
  objc_copyWeak(&v76, (a1 + 64));
  v44 = [v40 actionWithTitle:v42 image:v43 identifier:0 handler:v75];

  v45 = MEMORY[0x277D75710];
  v99[0] = v39;
  v99[1] = v44;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:2];
  v47 = [v45 menuWithTitle:&stru_287E6AEF8 image:0 identifier:0 options:1 children:v46];

  v48 = [*(a1 + 32) upNextInfo];
  v49 = [v48 mediaInfo];
  v50 = [v49 kind];

  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy_;
  v73 = __Block_byref_object_dispose_;
  v74 = MEMORY[0x277CBEBF8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_12;
  aBlock[3] = &unk_279D884F0;
  aBlock[4] = &v69;
  v51 = _Block_copy(aBlock);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_13;
  v66[3] = &unk_279D88518;
  v66[4] = *(a1 + 32);
  v52 = v51;
  v67 = v52;
  v53 = _Block_copy(v66);
  v54 = v53;
  switch(v50)
  {
    case 1:
      (*(v53 + 2))(v53, 3, v64);
      (v54)[2](v54, 2, v63);
      (v54)[2](v54, 3, v60);
      (v54)[2](v54, 2, v59);
      break;
    case 5:
      (*(v53 + 2))(v53, 1, v61);
      (v54)[2](v54, 1, v57);
      break;
    case 2:
      (*(v53 + 2))(v53, 1, v62);
      (v54)[2](v54, 1, v58);
      break;
    default:
      (*(v52 + 2))(v52, v39);
      v55 = v44;
      goto LABEL_9;
  }

  v55 = v47;
LABEL_9:
  (*(v52 + 2))(v52, v55);
  v56 = v70[5];

  _Block_object_dispose(&v69, 8);
  v65[2](v65, v56);

  objc_destroyWeak(&v76);
  objc_destroyWeak(&v78);

  objc_destroyWeak(&v81);
  objc_destroyWeak(&v84);

  objc_destroyWeak(&v87);
  objc_destroyWeak(&v90);

  objc_destroyWeak(&v92);
  objc_destroyWeak(&v94);

  objc_destroyWeak(&v96);
  objc_destroyWeak(&v98);
}

void __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained openProductPageForKind:3];
}

void __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained openProductPageForKind:2];
}

void __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained openProductPageForKind:1];
}

void __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained openProductPageForKind:1];
}

void __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = [WeakRetained upNextInfo];
  [v2 shareEpisodeForInfo:v3 sourceView:*(a1 + 32)];
}

void __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = [WeakRetained upNextInfo];
  [v2 shareShowForInfo:v3 sourceView:*(a1 + 32)];
}

void __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = [WeakRetained upNextInfo];
  [v2 sharePrimaryForInfo:v3 sourceView:*(a1 + 32)];
}

void __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = [WeakRetained upNextInfo];
  [v2 sharePrimaryForInfo:v3 sourceView:*(a1 + 32)];
}

void __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_10(uint64_t a1)
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

void __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_11(uint64_t a1)
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

uint64_t __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_12(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [*(*(*(a1 + 32) + 8) + 40) arrayByAddingObject:a2];

  return MEMORY[0x2821F96F8]();
}

void __41___TVRUIUpNextHorizontalCell__actionMenu__block_invoke_13(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) hasURLForProductPageKind:a2])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __43___TVRUIUpNextHorizontalCell__actionButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == 1)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained delegate];
    v4 = [v5 upNextInfo];
    [v3 playItem:v4 animated:1];

    WeakRetained = v5;
  }
}

void __51___TVRUIUpNextHorizontalCell__updateForUpNextInfo___block_invoke(uint64_t a1, void *a2, void *a3)
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

@end