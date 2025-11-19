@interface TVMLViewFactory
+ (id)_organizerViewWithElement:(id)a3 elements:(id)a4 existingView:(id)a5;
+ (id)buttonForElement:(id)a3 existingView:(id)a4;
+ (id)buttonLockupForElement:(id)a3 existingView:(id)a4;
+ (id)imageStackViewWithElement:(id)a3 layout:(id)a4 existingView:(id)a5;
+ (id)imageViewWithElement:(id)a3 layout:(id)a4 existingView:(id)a5;
+ (id)organizerViewWithElements:(id)a3 existingView:(id)a4;
- (TVMLViewFactory)init;
- (id)_activityIndicatorViewForElement:(id)a3 existingView:(id)a4;
- (id)_buttonForElement:(id)a3 existingView:(id)a4;
- (id)_buttonLockupForElement:(id)a3 existingView:(id)a4;
- (id)_cardViewFromElement:(id)a3 existingView:(id)a4;
- (id)_headerColumnViewForElement:(id)a3 existingView:(id)a4;
- (id)_imageViewForBadgeElement:(id)a3 existingView:(id)a4;
- (id)_imageViewForElement:(id)a3 layout:(id)a4 existingView:(id)a5;
- (id)_labelViewForElement:(id)a3 existingView:(id)a4;
- (id)_listItemLockupWithElement:(id)a3 existingView:(id)a4;
- (id)_loadingImageViewForElement:(id)a3 existingView:(id)a4;
- (id)_monogramViewForElement:(id)a3 layout:(id)a4 existingView:(id)a5;
- (id)_organizerViewForElement:(id)a3 existingView:(id)a4;
- (id)_progressBarFromElement:(id)a3 existingView:(id)a4;
- (id)_ratingBadgeFromElement:(id)a3 existingView:(id)a4;
- (id)_rowViewForElement:(id)a3 existingView:(id)a4;
- (id)_seasonsBadgeWithElement:(id)a3 existingView:(id)a4;
- (id)_segmentedControlForElement:(id)a3 existingView:(id)a4;
- (id)_separatorViewForElement:(id)a3 existingView:(id)a4;
- (id)_textBoxViewForElement:(id)a3 existingView:(id)a4;
- (id)_textViewWithElement:(id)a3 existingView:(id)a4;
- (id)_zoomableTextViewFromElement:(id)a3 alwaysFocusable:(BOOL)a4 existingView:(id)a5;
- (void)_registerViewCreators;
@end

@implementation TVMLViewFactory

- (TVMLViewFactory)init
{
  v5.receiver = self;
  v5.super_class = TVMLViewFactory;
  v2 = [(TVMLViewFactory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TVMLViewFactory *)v2 _registerViewCreators];
  }

  return v3;
}

- (void)_registerViewCreators
{
  objc_initWeak(location, self);
  v2 = +[TVInterfaceFactory sharedInterfaceFactory];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke;
  v79[3] = &unk_279D70770;
  objc_copyWeak(&v80, location);
  [v2 _registerViewCreator:v79 withType:55];

  v3 = +[TVInterfaceFactory sharedInterfaceFactory];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_2;
  v77[3] = &unk_279D70770;
  objc_copyWeak(&v78, location);
  [v3 _registerViewCreator:v77 withType:33];

  v4 = +[TVInterfaceFactory sharedInterfaceFactory];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_3;
  v75[3] = &unk_279D70770;
  objc_copyWeak(&v76, location);
  [v4 _registerViewCreator:v75 withType:15];

  v5 = +[TVInterfaceFactory sharedInterfaceFactory];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_4;
  v73[3] = &unk_279D70770;
  objc_copyWeak(&v74, location);
  [v5 _registerViewCreator:v73 withType:23];

  v6 = +[TVInterfaceFactory sharedInterfaceFactory];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_5;
  v71[3] = &unk_279D70770;
  objc_copyWeak(&v72, location);
  [v6 _registerViewCreator:v71 withType:34];

  v7 = +[TVInterfaceFactory sharedInterfaceFactory];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_6;
  v69[3] = &unk_279D70770;
  objc_copyWeak(&v70, location);
  [v7 _registerViewCreator:v69 withType:35];

  v8 = +[TVInterfaceFactory sharedInterfaceFactory];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_7;
  v67[3] = &unk_279D70770;
  objc_copyWeak(&v68, location);
  [v8 _registerViewCreator:v67 withType:12];

  v9 = +[TVInterfaceFactory sharedInterfaceFactory];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_8;
  v65[3] = &unk_279D70770;
  objc_copyWeak(&v66, location);
  [v9 _registerViewCreator:v65 withType:59];

  v10 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v10 _registerViewCreator:&__block_literal_global_39 withType:19];

  v11 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v11 _registerViewCreator:&__block_literal_global_311 withType:20];

  v12 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v12 _registerViewCreator:&__block_literal_global_314 withType:18];

  v13 = +[TVInterfaceFactory sharedInterfaceFactory];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_12;
  v63[3] = &unk_279D70770;
  objc_copyWeak(&v64, location);
  [v13 _registerViewCreator:v63 withType:13];

  v14 = +[TVInterfaceFactory sharedInterfaceFactory];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_13;
  v61[3] = &unk_279D70770;
  objc_copyWeak(&v62, location);
  [v14 _registerViewCreator:v61 withType:1];

  v15 = +[TVInterfaceFactory sharedInterfaceFactory];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_14;
  v59[3] = &unk_279D707B8;
  objc_copyWeak(&v60, location);
  [v15 _registerViewCreatorEx:v59 withType:16];

  v16 = +[TVInterfaceFactory sharedInterfaceFactory];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_15;
  v57[3] = &unk_279D707B8;
  objc_copyWeak(&v58, location);
  [v16 _registerViewCreatorEx:v57 withType:30];

  v17 = +[TVInterfaceFactory sharedInterfaceFactory];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_16;
  v55[3] = &unk_279D70770;
  objc_copyWeak(&v56, location);
  [v17 _registerViewCreator:v55 withType:5];

  v18 = +[TVInterfaceFactory sharedInterfaceFactory];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_17;
  v53[3] = &unk_279D70770;
  objc_copyWeak(&v54, location);
  [v18 _registerViewCreator:v53 withType:44];

  v19 = +[TVInterfaceFactory sharedInterfaceFactory];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_18;
  v51[3] = &unk_279D70770;
  objc_copyWeak(&v52, location);
  [v19 _registerViewCreator:v51 withType:6];

  v20 = +[TVInterfaceFactory sharedInterfaceFactory];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_19;
  v49[3] = &unk_279D70770;
  objc_copyWeak(&v50, location);
  [v20 _registerViewCreator:v49 withType:7];

  v21 = +[TVInterfaceFactory sharedInterfaceFactory];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_20;
  v47[3] = &unk_279D70770;
  objc_copyWeak(&v48, location);
  [v21 _registerViewCreator:v47 withType:50];

  v22 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v22 _registerViewCreator:&__block_literal_global_318 withType:38];

  v23 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v23 _registerViewCreator:&__block_literal_global_321 withType:54];

  v24 = +[TVInterfaceFactory sharedInterfaceFactory];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_23;
  v45[3] = &unk_279D70770;
  objc_copyWeak(&v46, location);
  [v24 _registerViewCreator:v45 withType:8];

  v25 = +[TVInterfaceFactory sharedInterfaceFactory];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_24;
  v43[3] = &unk_279D70770;
  objc_copyWeak(&v44, location);
  [v25 _registerViewCreator:v43 withType:41];

  v26 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v26 _registerViewCreator:&__block_literal_global_324 withType:85];

  v27 = +[TVInterfaceFactory sharedInterfaceFactory];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_26;
  v41[3] = &unk_279D70770;
  objc_copyWeak(&v42, location);
  [v27 _registerViewCreator:v41 withType:39];

  v28 = +[TVInterfaceFactory sharedInterfaceFactory];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_27;
  v39[3] = &unk_279D70770;
  objc_copyWeak(&v40, location);
  [v28 _registerViewCreator:v39 withType:21];

  v29 = +[TVInterfaceFactory sharedInterfaceFactory];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_28;
  v37[3] = &unk_279D70770;
  objc_copyWeak(&v38, location);
  [v29 _registerViewCreator:v37 withType:52];

  v30 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v30 _registerViewCreator:&__block_literal_global_327 withType:56];

  v31 = +[TVInterfaceFactory sharedInterfaceFactory];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_30;
  v35[3] = &unk_279D70770;
  objc_copyWeak(&v36, location);
  [v31 _registerViewCreator:v35 withType:48];

  v32 = +[TVInterfaceFactory sharedInterfaceFactory];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __40__TVMLViewFactory__registerViewCreators__block_invoke_31;
  v33[3] = &unk_279D70770;
  objc_copyWeak(&v34, location);
  [v32 _registerViewCreator:v33 withType:80];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&v48);
  objc_destroyWeak(&v50);
  objc_destroyWeak(&v52);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&v56);
  objc_destroyWeak(&v58);
  objc_destroyWeak(&v60);
  objc_destroyWeak(&v62);
  objc_destroyWeak(&v64);
  objc_destroyWeak(&v66);
  objc_destroyWeak(&v68);
  objc_destroyWeak(&v70);
  objc_destroyWeak(&v72);
  objc_destroyWeak(&v74);
  objc_destroyWeak(&v76);
  objc_destroyWeak(&v78);
  objc_destroyWeak(&v80);
  objc_destroyWeak(location);
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _textViewWithElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _labelViewForElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 parent];
  if ([v7 tv_elementType] == 20)
  {

LABEL_4:
    v10 = [_TVInfoHeaderView infoHeaderViewWithElement:v5 existingView:v6];
    goto LABEL_6;
  }

  v8 = [v5 parent];
  v9 = [v8 tv_elementType];

  if (v9 == 19)
  {
    goto LABEL_4;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained _organizerViewForElement:v5 existingView:v6];

LABEL_6:

  return v10;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _listItemLockupWithElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _organizerViewForElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _organizerViewForElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _organizerViewForElement:v6 existingView:v5];

  v9 = [v8 containerGuide];
  [v9 setEnabled:1];

  v10 = [v6 style];

  v11 = [v10 tv_backgroundColor];
  v12 = [v11 color];

  if (v12)
  {
    [v8 setBackgroundColor:v12];
  }

  else
  {
    v13 = [MEMORY[0x277D75348] clearColor];
    [v8 setBackgroundColor:v13];
  }

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _organizerViewForElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 parent];
  if ([v7 tv_elementType] == 20)
  {

LABEL_4:
    v10 = [_TVInfoHeaderView infoHeaderViewWithElement:v5 existingView:v6];
    goto LABEL_6;
  }

  v8 = [v5 parent];
  v9 = [v8 tv_elementType];

  if (v9 == 19)
  {
    goto LABEL_4;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained _organizerViewForElement:v5 existingView:v6];

LABEL_6:

  return v10;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _activityIndicatorViewForElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_14(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained _imageViewForElement:v9 layout:v8 existingView:v7];

  return v11;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_15(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained _monogramViewForElement:v9 layout:v8 existingView:v7];

  return v11;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _imageViewForBadgeElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _rowViewForElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _buttonForElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _buttonLockupForElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _segmentedControlForElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _cardViewFromElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _ratingBadgeFromElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _progressBarFromElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _organizerViewForElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _separatorViewForElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _seasonsBadgeWithElement:v6 existingView:v5];

  return v8;
}

id __40__TVMLViewFactory__registerViewCreators__block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _loadingImageViewForElement:v6 existingView:v5];

  return v8;
}

+ (id)organizerViewWithElements:(id)a3 existingView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _organizerViewWithElement:0 elements:v6 existingView:v5];

  return v7;
}

+ (id)_organizerViewWithElement:(id)a3 elements:(id)a4 existingView:(id)a5
{
  v94 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v11 = [_TVOrganizerView alloc];
    v10 = [(_TVOrganizerView *)v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v12 = v10;
  v79 = [v7 tv_semanticContentAttribute];
  [(_TVOrganizerView *)v12 setSemanticContentAttribute:?];
  v75 = [MEMORY[0x277CBEB18] array];
  v71 = v8;
  if (v7)
  {
    v13 = [v7 children];
  }

  else
  {
    v13 = v8;
  }

  v14 = v13;
  v72 = v7;
  v70 = v9;
  v15 = [v9 components];
  v16 = [v15 mutableCopy];

  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __67__TVMLViewFactory__organizerViewWithElement_elements_existingView___block_invoke;
  v90[3] = &unk_279D70808;
  v69 = v16;
  v91 = v69;
  v17 = MEMORY[0x26D6AFBB0](v90);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v14;
  v18 = [obj countByEnumeratingWithState:&v86 objects:v93 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v87;
    v73 = *v87;
    v74 = v17;
    do
    {
      v22 = 0;
      v76 = v19;
      do
      {
        if (*v87 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v78 = v22;
        v23 = *(*(&v86 + 1) + 8 * v22);
        if ([v23 tv_elementType] == 4)
        {
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v24 = [v23 children];
          v25 = [v24 countByEnumeratingWithState:&v82 objects:v92 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v83;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v83 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v82 + 1) + 8 * i);
                if ([v29 tv_elementType] == 16 && !objc_msgSend(v29, "tv_imageType"))
                {
                  v30 = v12;
                  v31 = [(_TVOrganizerView *)v12 backgroundImageView];
                  v32 = +[TVInterfaceFactory sharedInterfaceFactory];
                  v33 = [v32 _viewFromElement:v29 existingView:v31];

                  v34 = [v29 attributes];
                  v35 = [v34 objectForKeyedSubscript:@"contentsMode"];

                  if ([v35 length])
                  {
                    v36 = [v29 tv_scaleMode];
                    v37 = 4;
                    if (v36 != 4)
                    {
                      v37 = 5;
                    }

                    if (v36 == 3)
                    {
                      v37 = 2;
                    }

                    if ((v36 - 1) >= 2)
                    {
                      v38 = v37;
                    }

                    else
                    {
                      v38 = 1;
                    }
                  }

                  else
                  {
                    v39 = [v29 style];
                    v40 = [v39 tv_position];

                    v38 = [TVMLUtilities contentModeForPosition:[TVMLUtilities semanticPositionForPosition:v40 semanticContentAttribute:v79] defaultMode:5];
                  }

                  [v33 setContentMode:v38];

                  v20 = v33;
                  v12 = v30;
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v82 objects:v92 count:16];
            }

            while (v26);
            v21 = v73;
            v17 = v74;
            v19 = v76;
          }
        }

        else
        {
          v41 = [v23 tv_elementType];
          v42 = [v23 elementName];
          v24 = (v17)[2](v17, v41, v42);

          v43 = +[TVInterfaceFactory sharedInterfaceFactory];
          v44 = [v43 _viewFromElement:v23 existingView:v24];

          if (v44)
          {
            if ([v23 isDisabled] && objc_msgSend(v72, "tv_elementType") == 23 && objc_msgSend(v23, "tv_elementType") == 55 && (objc_msgSend(v23, "tv_textStyle") == 1 || objc_msgSend(v23, "tv_textStyle") == 2))
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v45 = v44;
                v46 = [v45 textColor];
                v47 = [v46 colorWithAlphaComponent:0.4];

                [v45 setTextColor:v47];
              }
            }

            [v44 setSemanticContentAttribute:v79];
            [v75 addObject:v44];
          }
        }

        v22 = v78 + 1;
      }

      while (v78 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v86 objects:v93 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  [(_TVOrganizerView *)v12 setBackgroundImageView:v20];
  [(_TVOrganizerView *)v12 setComponents:v75];
  v80 = TVCornerRadiiZero;
  v81 = *&qword_26CE880D8;
  if ([TVMLUtilities _cornerRadiiFromElement:v72 cornerRadii:&v80 circle:0])
  {
    [TVCornerUtilities radiusFromCornerRadii:v80, v81];
    [(_TVOrganizerView *)v12 _setContinuousCornerRadius:?];
    [(_TVOrganizerView *)v12 setClipsToBounds:1];
  }

  v48 = [v72 style];
  v49 = [v48 tv_imageTreatment];
  v50 = [v49 isEqualToString:@"blur"];

  if (v50)
  {
    v51 = [v72 appDocument];
    v52 = [v51 templateElement];
    v53 = [TVMLUtilities interfaceStyleForTemplateElement:v52];

    if (v53 == 1)
    {
      v54 = 4005;
    }

    else
    {
      v54 = 4000;
    }

    v55 = [MEMORY[0x277D75210] effectWithStyle:v54];
    v56 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v55];
    [(_TVOrganizerView *)v12 setBackgroundImageView:v56];
  }

  v57 = [v72 style];
  v58 = [v57 tv_columnColor];

  if (v58)
  {
    [(_TVOrganizerView *)v12 setColumnDividersEnabled:1];
    v59 = [v72 style];
    v60 = [v59 tv_columnColor];
    v61 = [v60 color];
    [(_TVOrganizerView *)v12 setColumnDividerColor:v61];

    v62 = [v72 style];
    [v62 tv_columnPadding];
    [(_TVOrganizerView *)v12 setColumnDividerPadding:?];
  }

  else
  {
    [(_TVOrganizerView *)v12 setColumnDividersEnabled:0];
  }

  v63 = [v72 attributes];
  v64 = [v63 objectForKey:@"remembersFocus"];

  if (v64)
  {
    v65 = [v72 attributes];
    v66 = [v65 objectForKey:@"remembersFocus"];
    -[_TVOrganizerView setRemembersLastFocusedItem:](v12, "setRemembersLastFocusedItem:", [v66 BOOLValue]);
  }

  if (v72)
  {
    [(UIView *)v12 transferLayoutStylesFromElement:v72];
  }

  v67 = v12;

  return v12;
}

id __67__TVMLViewFactory__organizerViewWithElement_elements_existingView___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__TVMLViewFactory__organizerViewWithElement_elements_existingView___block_invoke_2;
  v10[3] = &unk_279D707E0;
  v13 = a2;
  v7 = v5;
  v11 = v7;
  v12 = &v14;
  [v6 enumerateObjectsUsingBlock:v10];
  if (v15[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) objectAtIndexedSubscript:?];
    [*(a1 + 32) removeObjectAtIndex:v15[3]];
  }

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __67__TVMLViewFactory__organizerViewWithElement_elements_existingView___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 tv_elementType];
  if (v7 == a1[6])
  {
    if (v7 != 55 || ([v10 tv_elementName], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", a1[4]), v8, v9))
    {
      *(*(a1[5] + 8) + 24) = a3;
      *a4 = 1;
    }
  }
}

+ (id)imageStackViewWithElement:(id)a3 layout:(id)a4 existingView:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 tv_elementType] != 16)
  {
    v14 = 0;
    goto LABEL_16;
  }

  v10 = v7;
  v11 = [v10 tv_imageType];
  if (v11 != 3 && v11)
  {
    v14 = 0;
  }

  else
  {
    v12 = [v9 tv_associatedIKViewElement];
    v13 = v12;
    if (v12 != v10)
    {

LABEL_10:
      if (!v8)
      {
        v8 = objc_alloc_init(TVImageLayout);
        [(TVViewLayout *)v8 setAcceptsFocus:1];
      }

      v16 = v8;
      v8 = [TVImageLayout layoutWithLayout:v8 element:v10];

      v17 = [v10 tv_imageProxyWithLayout:v8];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v10 appDocument];
        v19 = [v18 requestLoader];
        [v17 setRequestLoader:v19];
      }

      v20 = objc_alloc_init(TVImageDescription);
      [(TVImageDescription *)v20 setImageProxy:v17];
      v21 = [v10 objectForKeyedSubscript:@"TVConfigureForMetrics"];
      -[TVImageDescription setConfigureForMetrics:](v20, "setConfigureForMetrics:", [v21 BOOLValue]);

      [(TVImageDescription *)v20 configureForMetrics];
      v22 = [TVMLUtilities _placeholderImageForViewElement:v10 imageLayout:v8];
      [(TVImageDescription *)v20 setPlaceholderImage:v22];

      v14 = [TVViewFactory imageStackViewWithDescription:v20 layout:v8 existingView:v9];

      goto LABEL_15;
    }

    v15 = [v10 updateType];

    if (v15 != 2)
    {
      goto LABEL_10;
    }

    v14 = v9;
  }

LABEL_15:

LABEL_16:

  return v14;
}

+ (id)imageViewWithElement:(id)a3 layout:(id)a4 existingView:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v7;
  v10 = [TVImageLayout layoutWithLayout:a4 element:v9];
  v11 = [v9 tv_urlWithLayout:v10];
  if ([v11 tv_imageURLType] == 1)
  {
    v12 = [TVMLViewFactory imageStackViewWithElement:v9 layout:v10 existingView:v8];
    goto LABEL_40;
  }

  [v10 decoratorSize];
  if (v14 < 0.00000011920929 || v13 < 0.00000011920929)
  {
    v16 = [v9 url];
    if ([v16 tv_isResourceURL])
    {
    }

    else
    {
      v17 = [v9 url];
      v18 = [v17 tv_isSymbolURL];

      if ((v18 & 1) == 0)
      {
        v27 = TVMLKitLogObject;
        if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_ERROR))
        {
          [TVMLViewFactory imageViewWithElement:v27 layout:v9 existingView:?];
        }

        v12 = 0;
        goto LABEL_40;
      }
    }
  }

  v19 = [v9 appDocument];
  v20 = [v19 templateElement];

  v21 = objc_alloc_init(TVImageDescription);
  v22 = [v9 tv_imageProxyWithLayout:v10];
  [(TVImageDescription *)v21 setImageProxy:v22];
  v23 = [v9 style];
  v24 = [v23 valueForStyle:@"tv-placeholder"];

  v59 = v24;
  v60 = v20;
  if ([v9 tv_isResource] & 1) != 0 || (objc_msgSend(v9, "tv_isSymbol"))
  {
    goto LABEL_13;
  }

  if (![v24 length])
  {
    v26 = [v10 placeholderArtworkName];
    if (v26)
    {
    }

    else
    {
      v28 = [v9 parent];
      v29 = [v28 tv_elementType];

      if (v29 != 24)
      {
LABEL_13:
        v25 = 0;
        goto LABEL_22;
      }
    }
  }

  [v10 borderRadii];
  v25 = [TVMLUtilities _placeholderImageForViewElement:"_placeholderImageForViewElement:withImageLayout:cornerRadii:andScaledSize:" withImageLayout:v9 cornerRadii:v10 andScaledSize:?];
LABEL_22:
  v58 = v25;
  [(TVImageDescription *)v21 setPlaceholderImage:v25];
  -[TVImageDescription setSemanticContentAttribute:](v21, "setSemanticContentAttribute:", [v9 tv_semanticContentAttribute]);
  v30 = [v9 objectForKeyedSubscript:@"TVConfigureForMetrics"];
  -[TVImageDescription setConfigureForMetrics:](v21, "setConfigureForMetrics:", [v30 BOOLValue]);

  v31 = [v9 attributes];
  v32 = [v31 objectForKeyedSubscript:@"accessibilityText"];
  [(TVImageDescription *)v21 setAccessibilityText:v32];

  v33 = [v9 attributes];
  v34 = [v33 objectForKeyedSubscript:@"data-siri"];
  [(TVImageDescription *)v21 setSiriData:v34];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = [v9 appDocument];
    v36 = [v35 requestLoader];
    [v22 setRequestLoader:v36];

    v37 = [v9 parent];
    if ([v37 tv_elementType] == 4)
    {
      v38 = [v9 parent];
      v39 = [v38 parent];
      v40 = [v39 tv_elementType];

      if (v40 == 12)
      {
        [(TVImageDescription *)v21 setIsInBackgroundOrBanner:1];
        goto LABEL_29;
      }
    }

    else
    {
    }

    v41 = [v9 style];
    v42 = [v41 tv_tintColor];
    v43 = [v42 gradientType];

    if (v43)
    {
      [(TVImageDescription *)v21 setHasGradient:1];
    }
  }

LABEL_29:
  v12 = [TVViewFactory imageViewWithDescription:v21 layout:v10 existingView:v8];
  v44 = [v12 imageProxy];
  v45 = [v44 isEqual:v22];

  if (v12)
  {
    v57 = v11;
    v46 = v8;
    v47 = [v9 attributes];
    v48 = [v47 objectForKeyedSubscript:@"handlesInteraction"];
    v49 = [v48 BOOLValue];

    [v12 setUserInteractionEnabled:v49];
    [_TVControlTarget addTargetInControl:v12 withViewElement:v9];
    v50 = [v9 parent];
    if (v50)
    {
      v51 = v50;
      while ([v51 tv_elementType] != 35)
      {
        v52 = [v51 parent];

        v51 = v52;
        if (!v52)
        {
          goto LABEL_34;
        }
      }

      [v12 _loadImage];

      v8 = v46;
    }

    else
    {
LABEL_34:
      v8 = v46;
      if (((v46 != 0) & v45) == 1)
      {
        v53 = [v9 url];
        v54 = [v53 tv_isResourceURL];

        v8 = v46;
        if (v54)
        {
          [v12 _reloadImageForLayoutDirectionChange];
        }
      }
    }

    v55 = v12;

    v11 = v57;
  }

LABEL_40:

  return v12;
}

- (id)_textViewWithElement:(id)a3 existingView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 attributes];
  v8 = [v7 objectForKeyedSubscript:@"handlesOverflow"];
  if ([v8 BOOLValue])
  {
    v9 = 1;
  }

  else
  {
    v10 = [v7 objectForKeyedSubscript:@"allowsZooming"];
    v9 = [v10 BOOLValue];
  }

  v11 = [v7 objectForKeyedSubscript:@"handlesOverflow"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v7 objectForKeyedSubscript:@"handlesOverflow"];
    v13 = [v12 lowercaseString];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 isEqualToString:@"always"];
  v15 = [v5 parent];
  if ([v15 tv_elementType] == 15)
  {
    v16 = [v5 parent];
    v17 = [v16 parent];
    v18 = [v17 tv_elementType];

    if (v18 != 18)
    {
      v20 = 0;
      goto LABEL_13;
    }

    v15 = [v5 text];
    v19 = [v15 string];
    v20 = [v19 containsString:@"\r"];
  }

  else
  {
    v20 = 0;
  }

LABEL_13:
  v21 = v14 | v9;
  if ([v5 tv_textStyle] == 3 && (objc_msgSend(v5, "appDocument"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "templateElement"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "tv_elementType"), v23, v22, v24 == 62))
  {
    if ((v21 & 1) == 0)
    {
      v25 = [(TVMLViewFactory *)self _textBoxViewForElement:v5 existingView:v6];
      goto LABEL_23;
    }
  }

  else if ((v21 & 1) == 0)
  {
    if (v20)
    {
      [(TVMLViewFactory *)self _headerColumnViewForElement:v5 existingView:v6];
    }

    else
    {
      [(TVMLViewFactory *)self _labelViewForElement:v5 existingView:v6];
    }
    v25 = ;
    goto LABEL_23;
  }

  v25 = [(TVMLViewFactory *)self _zoomableTextViewFromElement:v5 alwaysFocusable:v14 existingView:v6];
LABEL_23:
  v26 = v25;

  return v26;
}

- (id)_listItemLockupWithElement:(id)a3 existingView:(id)a4
{
  v6 = a3;
  v7 = [(TVMLViewFactory *)self _organizerViewForElement:v6 existingView:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    [v8 setDisabled:{objc_msgSend(v6, "isDisabled")}];
    [v8 setClipsToBounds:0];
    v9 = [v6 style];
    v10 = [v9 tv_backgroundColor];
    v11 = [v10 color];
    [v8 setBackgroundColor:v11 forState:0];

    v12 = [v6 style];
    v13 = [v12 tv_highlightColor];
    v14 = [v13 color];
    [v8 setBackgroundColor:v14 forState:8];

    v15 = [v6 style];
    v16 = [v15 tv_highlightColor];
    v17 = [v16 color];
    [v8 setBackgroundColor:v17 forState:1];

    LODWORD(v16) = +[TVMLUtilities _isSolariumMetricsEnabled];
    v18 = [v8 floatingView];
    v19 = v18;
    if (v16)
    {
      [v18 setAsymmetricFocusedSizeIncrease:{8.0, 8.0}];
    }

    else
    {
      [v18 setFocusedSizeIncrease:30.0];
    }

    v20 = [v6 style];
    v21 = [v20 tv_visualEffect];
    [v8 setVisualEffectViewBackgroundEnabled:{objc_msgSend(v21, "isEqualToString:", @"background-blur"}];

    memset(&v36, 0, sizeof(v36));
    v22 = [v6 style];
    v23 = v22;
    if (v22)
    {
      [v22 tv_focusTransform];
    }

    else
    {
      memset(&v36, 0, sizeof(v36));
    }

    v35 = v36;
    if (!CGAffineTransformIsIdentity(&v35))
    {
      v33 = *MEMORY[0x277CBF348];
      v34 = v33;
      v35 = v36;
      [TVMLUtilities getValuesFromTransform:&v35 translation:&v34 rotation:&v33];
      v24 = [v8 floatingView];
      [v24 setContentMotionRotation:v33 translation:v34];
    }

    memset(&v35, 0, 32);
    if ([TVMLUtilities _cornerRadiiFromElement:v6 cornerRadii:&v35 circle:0])
    {
      [TVCornerUtilities radiusFromCornerRadii:v35.a, v35.b, v35.c, v35.d];
      v26 = v25;
      v27 = [v8 floatingView];
      [v27 setCornerRadius:v26];
    }

    v28 = [v6 style];
    v29 = [v28 tv_backgroundColor];
    v30 = [v29 color];

    if (v30)
    {
      v31 = [v8 floatingView];
      [v31 setRoundContentWhenDeselected:1];
    }
  }

  return v7;
}

- (id)_cardViewFromElement:(id)a3 existingView:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 contentView];
    v10 = [v9 subviews];
    v11 = [v10 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v8 contentView];
    v14 = [v13 subviews];
    [v14 makeObjectsPerformSelector:sel_removeFromSuperview];

    v15 = [objc_opt_class() _organizerViewWithElement:v6 elements:0 existingView:v12];

    [v8 bounds];
    v17 = v16;
    v19 = v18;
    v20 = [v6 style];
    [v20 tv_padding];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = v17 - v24 - v28;
    v30 = v19 - v22 - v26;
    [v15 setFrame:{v24, v22, v29, v30}];
    v56 = TVCornerRadiiZero;
    v57 = *&qword_26CE880D8;
    [TVMLUtilities _cornerRadiiFromElement:v6 cornerRadii:&v56 circle:0];
    [TVCornerUtilities radiusFromCornerRadii:v56, v57];
    v32 = v31;
    v33 = [v6 style];
    v34 = [v33 tv_backgroundColor];
    v35 = [v34 color];

    v36 = [v8 contentView];
    v37 = v36;
    if (v35)
    {
      [v36 setBackgroundColor:v35];
    }

    else
    {
      v38 = [MEMORY[0x277D75348] clearColor];
      [v37 setBackgroundColor:v38];
    }

    v39 = [v8 contentView];
    v40 = [v39 layer];
    [v40 setCornerRadius:v32];

    v41 = [v8 contentView];
    [v41 addSubview:v15];

    [v8 setAllowsFocus:{objc_msgSend(v6, "isDisabled") ^ 1}];
    v42 = [v6 style];
    v43 = [v42 tv_shadow];

    v44 = [v8 contentView];
    v45 = [v44 layer];
    v46 = v45;
    if (v43)
    {
      [v45 setShadowPath:{+[TVMLUtilities _shadowPathForViewElement:withCornerRadii:andScaledSize:](TVMLUtilities, "_shadowPathForViewElement:withCornerRadii:andScaledSize:", v6, v56, v57, v29, v30)}];

      v47 = [v8 contentView];
      v48 = [v47 layer];
      [v43 shadowOffset];
      [v48 setShadowOffset:?];

      v49 = [v8 contentView];
      v50 = [v49 layer];
      [v43 shadowBlurRadius];
      [v50 setShadowRadius:?];

      v51 = [v8 contentView];
      v52 = [v51 layer];
      v53 = [v43 shadowColor];
      [v52 setShadowColor:{objc_msgSend(v53, "CGColor")}];

      v44 = [v8 contentView];
      v45 = [v44 layer];
      v46 = v45;
      LODWORD(v54) = 1.0;
    }

    else
    {
      v54 = 0.0;
    }

    [v45 setShadowOpacity:v54];
  }

  else
  {
    v8 = [(TVMLViewFactory *)self _organizerViewForElement:v6 existingView:v7];
  }

  return v8;
}

- (id)_textBoxViewForElement:(id)a3 existingView:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277D75C40]);
    v7 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }

  v9 = v7;
  v10 = [v5 style];
  v11 = [v10 ikColor];
  v12 = [v11 color];
  v13 = [v9 _accessibilityHigherContrastTintColorForColor:v12];

  v14 = [v5 tv_attributedStringWithForegroundColor:v13 textAlignment:{objc_msgSend(v10, "tv_textAlignment")}];
  v15 = [v14 mutableCopy];
  v16 = [v5 attributes];
  v17 = [v16 objectForKeyedSubscript:@"showsScrollIndicator"];
  v38 = [v17 BOOLValue];

  if ([v15 length])
  {
    v36 = v13;
    v37 = v6;
    v35 = v14;
    v18 = [v14 length];
    v19 = [v15 attributesAtIndex:0 effectiveRange:0];
    v20 = *MEMORY[0x277D74118];
    v21 = [v19 objectForKeyedSubscript:*MEMORY[0x277D74118]];
    v22 = [v21 mutableCopy];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x277D74240]);
    }

    v25 = v24;

    [v25 setLineBreakMode:0];
    v26 = [v5 style];
    [v26 tv_textHyphenationFactor];
    *&v27 = v27;
    [v25 setHyphenationFactor:v27];

    [v15 removeAttribute:v20 range:{0, v18}];
    v28 = [v25 copy];
    [v15 addAttribute:v20 value:v28 range:{0, v18}];

    [v15 tv_addLanguageAwareness:0];
    v13 = v36;
    v6 = v37;
    v14 = v35;
  }

  v29 = [v15 copy];
  [v9 setAttributedText:v29];

  v30 = [v5 style];
  v31 = +[TVMLUtilities semanticAlignmentForAlignment:semanticContentAttribute:](TVMLUtilities, "semanticAlignmentForAlignment:semanticContentAttribute:", [v30 tv_alignment], objc_msgSend(v5, "tv_semanticContentAttribute"));

  if (!v31)
  {
    [v9 setTextAlignment:4];
  }

  [v10 tv_padding];
  [v9 setTextContainerInset:?];
  [v9 setBounces:1];
  [v9 setShowsVerticalScrollIndicator:v38];
  v32 = [v10 tv_backgroundColor];
  v33 = [v32 color];
  [v9 setBackgroundColor:v33];

  [v9 setEditable:0];
  [v9 _setGradientMaskInsets:{90.0, 0.0, 90.0, 0.0}];
  [v9 setAutoresizingMask:18];
  [v9 setAdjustsFontForContentSizeCategory:1];

  return v9;
}

- (id)_labelViewForElement:(id)a3 existingView:(id)a4
{
  v118 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  objc_opt_class();
  v108 = v6;
  v111 = v7;
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
  }

  else
  {
    v9 = [_TVLabel alloc];
    v8 = [(_TVLabel *)v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v10 = v8;
  v11 = [v5 style];
  v12 = [v11 tv_color];
  v109 = [v12 color];

  v13 = [v5 style];
  v14 = [v13 tv_highlightColor];
  v112 = [v14 color];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v5;
  }

  else
  {
    v15 = 0;
  }

  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v110 = v15;
  v16 = [v110 badges];
  v17 = [v16 countByEnumeratingWithState:&v113 objects:v117 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v114;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v114 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v113 + 1) + 8 * i);
        v22 = [v21 badge];
        v23 = [v22 style];
        v24 = [v23 tv_tintColor];
        [v21 setTintColor:v24];

        v25 = [v22 style];
        v26 = [v25 tv_highlightColor];
        [v21 tv_setHighlightColor:v26];
      }

      v18 = [v16 countByEnumeratingWithState:&v113 objects:v117 count:16];
    }

    while (v18);
  }

  v27 = [v5 style];
  v28 = [v27 tv_textHighlightStyle];
  if ([v28 isEqualToString:@"show-on-highlight"])
  {

    v29 = v110;
  }

  else
  {
    v30 = [v5 style];
    v31 = [v30 tv_textHighlightStyle];
    v32 = [v31 isEqualToString:@"marquee-and-show-on-highlight"];

    v29 = v110;
    if (!v32)
    {
      [(_TVLabel *)v10 setHighlightedTextColor:v112];
      v33 = [v110 cachedAttributedString];
      if (!v33)
      {
        v37 = [v5 tv_attributedString];
        goto LABEL_24;
      }

LABEL_23:
      v37 = v33;
      v33 = v37;
LABEL_24:
      v36 = v37;
      goto LABEL_25;
    }
  }

  [(_TVLabel *)v10 setHighlightedTextColor:0];
  v33 = [v29 cachedAttributedString];
  if (v33)
  {
    goto LABEL_23;
  }

  if (v112)
  {
    v34 = v112;
  }

  else
  {
    v34 = v109;
  }

  v35 = [v5 style];
  v36 = [v5 tv_attributedStringWithForegroundColor:v34 textAlignment:{objc_msgSend(v35, "tv_textAlignment")}];

LABEL_25:
  v38 = v111;

  [v29 setCachedAttributedString:v36];
  v39 = [v5 style];
  v40 = [v39 tv_textTransform];
  v41 = [v40 length];

  if (!v41)
  {
    goto LABEL_36;
  }

  v42 = [v5 style];
  v43 = [v42 tv_textTransform];
  v44 = [v43 isEqualToString:@"uppercase"];

  if (v44)
  {
    v45 = [v36 string];
    v46 = [v45 localizedUppercaseString];
  }

  else
  {
    v47 = [v5 style];
    v48 = [v47 tv_textTransform];
    v49 = [v48 isEqualToString:@"lowercase"];

    if (v49)
    {
      v45 = [v36 string];
      v46 = [v45 localizedLowercaseString];
    }

    else
    {
      v50 = [v5 style];
      v51 = [v50 tv_textTransform];
      v52 = [v51 isEqualToString:@"capitalize"];

      if (!v52)
      {
        v53 = 0;
        goto LABEL_33;
      }

      v45 = [v36 string];
      v46 = [v45 localizedCapitalizedString];
    }
  }

  v53 = v46;

LABEL_33:
  if ([v53 length])
  {
    v54 = [v36 mutableCopy];
    [v54 replaceCharactersInRange:0 withString:{objc_msgSend(v36, "length"), v53}];
    v55 = [v54 copy];

    v36 = v55;
  }

LABEL_36:
  v56 = [v36 tv_defaultAttributes];
  v57 = v56;
  if (v56)
  {
    v58 = [v56 mutableCopy];
    v59 = *MEMORY[0x277D740C0];
    v60 = [v57 objectForKeyedSubscript:*MEMORY[0x277D740C0]];

    if (!v60)
    {
      v61 = [MEMORY[0x277D75348] blackColor];
      [v58 setObject:v61 forKeyedSubscript:v59];
    }

    v62 = *MEMORY[0x277D74138];
    v63 = [v57 objectForKeyedSubscript:*MEMORY[0x277D74138]];

    if (!v63)
    {
      v64 = objc_alloc_init(MEMORY[0x277D74258]);
      [v58 setObject:v64 forKeyedSubscript:v62];
    }

    v65 = [v58 copy];
    [(_TVLabel *)v10 _setDefaultAttributes:v65];
  }

  [(_TVLabel *)v10 setAttributedText:v36];
  v66 = [v5 style];
  -[_TVLabel setNumberOfLines:](v10, "setNumberOfLines:", [v66 tv_maxTextLines]);

  v67 = [v5 style];
  -[_TVLabel setAdjustsFontSizeToFitWidth:](v10, "setAdjustsFontSizeToFitWidth:", [v67 tv_adjustsFontSizeToFitWidth]);

  v68 = [v5 style];
  [v68 tv_minimumScaleFactor];
  [(_TVLabel *)v10 setMinimumScaleFactor:?];

  v69 = [v5 style];
  [v69 tv_fontSize];
  [(_TVLabel *)v10 setAdjustsFontForContentSizeCategory:v70 == 0.0];

  v71 = [v5 style];
  [v71 tv_padding];
  [(_TVLabel *)v10 setPadding:?];

  v72 = [v111 tv_backgroundColor];
  v73 = [v72 color];

  if (v73)
  {
    v74 = [v111 tv_backgroundColor];
    v75 = [v74 color];
    [(_TVLabel *)v10 setBackgroundColor:v75];
  }

  else
  {
    [(_TVLabel *)v10 setBackgroundColor:0];
    [(_TVLabel *)v10 setOpaque:0];
  }

  v76 = [v5 style];
  v77 = [v76 valueForStyle:@"text-shadow"];

  if (v77)
  {
    [v77 shadowBlurRadius];
    [(_TVLabel *)v10 setShadowBlur:?];
    v78 = [v77 shadowColor];

    if (v78)
    {
      v79 = [v77 shadowColor];
      [(_TVLabel *)v10 setShadowColor:v79];
    }

    [v77 shadowOffset];
    [(_TVLabel *)v10 setShadowOffset:?];
  }

  if ([v5 tv_elementType] == 33)
  {
    v80 = [v5 attributes];
    v81 = [v80 objectForKeyedSubscript:@"minLength"];
    v82 = [v81 integerValue];

    v107 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%d", 0];
    v83 = [&stru_287E12870 stringByPaddingToLength:v82 withString:? startingAtIndex:?];
    v84 = [(_TVLabel *)v10 attributedText];
    v85 = [v84 mutableCopy];

    v86 = [v85 mutableString];
    v87 = [v85 mutableString];
    [v86 replaceCharactersInRange:0 withString:{objc_msgSend(v87, "length"), v83}];

    v88 = *MEMORY[0x277CBF3A8];
    v89 = *(MEMORY[0x277CBF3A8] + 8);
    [v85 boundingRectWithSize:3 options:0 context:{*MEMORY[0x277CBF3A8], v89}];
    v91 = v90;
    v92 = ceilf(v91);
    v93 = [(_TVLabel *)v10 attributedText];
    v94 = [v93 length];

    if (v94 == v82)
    {
      v95 = [(_TVLabel *)v10 attributedText];
      [v95 boundingRectWithSize:3 options:0 context:{v88, v89}];
      v97 = v96;

      v98 = v97;
      v92 = fmax(v92, ceilf(v98));
    }

    v99 = v10;
    [(UIView *)v99 transferLayoutStylesFromElement:v5];
    v100 = [MEMORY[0x277CCABB0] numberWithDouble:v92];
    [(UIView *)v99 setValue:v100 forTVViewStyle:@"width"];

    v101 = MEMORY[0x277CCABB0];
    [(_TVLabel *)v99 size];
    v103 = [v101 numberWithDouble:v102];
    [(UIView *)v99 setValue:v103 forTVViewStyle:@"height"];

    v29 = v110;
    v38 = v111;
  }

  [(UIView *)v10 transferLayoutStylesFromElement:v5];
  v104 = [v5 style];
  v105 = [v104 tv_textHighlightStyle];
  [(UIView *)v10 setValue:v105 forTVViewStyle:@"tv-text-highlight-style"];

  return v10;
}

- (id)_headerColumnViewForElement:(id)a3 existingView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 text];
  v10 = [v9 string];
  v11 = [v10 componentsSeparatedByString:@"\r"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v7;
  }

  else
  {
    v12 = objc_alloc_init(_TVHeaderColumnView);
  }

  v13 = v12;
  v14 = [(_TVHeaderColumnView *)v12 labelViews];
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __60__TVMLViewFactory__headerColumnViewForElement_existingView___block_invoke;
  v23[3] = &unk_279D70830;
  v24 = v14;
  v25 = self;
  v26 = v8;
  v27 = v15;
  v16 = v13;
  v28 = v16;
  v17 = v14;
  v18 = v8;
  v19 = v15;
  [v11 enumerateObjectsUsingBlock:v23];
  [(_TVHeaderColumnView *)v16 setLabelViews:v19];
  v20 = v28;
  v21 = v16;

  return v16;
}

void __60__TVMLViewFactory__headerColumnViewForElement_existingView___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v21 = a2;
  if (![(__CFString *)v21 length])
  {

    v21 = @" ";
  }

  if ([*(a1 + 32) count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  }

  v6 = [*(a1 + 40) _labelViewForElement:*(a1 + 48) existingView:v5];
  [*(a1 + 56) addObject:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 attributedText];
    v11 = [v10 mutableCopy];

    [v11 replaceCharactersInRange:0 withString:{objc_msgSend(v11, "length"), v21}];
    v12 = [v11 copy];
    [v9 setAttributedText:v12];

    [v9 setNumberOfLines:1];
    if (!a3)
    {
      v13 = [v9 _defaultAttributes];
      v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D740A8]];

      v15 = *(a1 + 64);
      [v14 leading];
      v17 = v16;
      [v14 lineHeight];
      v19 = ceil(v18);
      [v14 lineHeight];
      [v15 setLineSpacing:v17 - (v19 - v20)];
    }
  }
}

- (id)_zoomableTextViewFromElement:(id)a3 alwaysFocusable:(BOOL)a4 existingView:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
  }

  else
  {
    v10 = [_TVZoomableTextView alloc];
    v9 = [(_TVZoomableTextView *)v10 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v11 = v9;
  [(TVFocusableTextView *)v9 setAlwaysFocusable:v5];
  [(_TVZoomableTextView *)v11 updateWithViewElement:v8];

  return v11;
}

- (id)_organizerViewForElement:(id)a3 existingView:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = v6;
    objc_opt_class();
    objc_opt_isKindOfClass();
    v8 = [v7 contentView];
    v21 = [v7 isFocused];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v8;
    v9 = [v8 subviews];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if (v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            [v15 removeFromSuperview];
          }

          else
          {
            v12 = v15;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);

      v16 = v22;
      if (v12)
      {
        goto LABEL_18;
      }
    }

    else
    {

      v16 = v8;
    }

    v17 = [_TVOrganizerView alloc];
    [v16 bounds];
    v12 = [(_TVOrganizerView *)v17 initWithFrame:?];
    [(_TVOrganizerView *)v12 setAutoresizingMask:18];
    [v16 addSubview:v12];
LABEL_18:
    v18 = [objc_opt_class() _organizerViewWithElement:v5 elements:0 existingView:v12];
    [v18 transferLayoutStylesFromElement:v5];
    [v18 tv_setAssociatedIKViewElement:v5];
    [v18 setSelected:v21 animated:0];
    v19 = v7;

    goto LABEL_20;
  }

  v19 = [objc_opt_class() _organizerViewWithElement:v5 elements:0 existingView:v6];
  [v19 transferLayoutStylesFromElement:v5];
LABEL_20:

  return v19;
}

- (id)_activityIndicatorViewForElement:(id)a3 existingView:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_alloc_init(_TVActivityView);
  }

  v8 = v7;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [v5 children];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        if ([v14 tv_elementType] == 55)
        {
          v15 = +[TVInterfaceFactory sharedInterfaceFactory];
          v16 = [v15 _viewFromElement:v14 existingView:0];

          if (v16)
          {
            [(_TVActivityView *)v8 setTextView:v16];

            goto LABEL_15;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v17 = [_TVSpinnerView alloc];
  v18 = [v5 style];
  [v18 tv_width];
  v20 = v19;
  v21 = [v5 style];
  [v21 tv_height];
  v23 = v22;
  v24 = [v5 style];
  v25 = [v24 tv_color];
  v26 = [v25 color];
  v27 = [(_TVSpinnerView *)v17 initWithFrame:v26 color:0.0, 0.0, v20, v23];

  [(_TVSpinnerView *)v27 startAnimating];
  [(UIView *)v27 transferLayoutStylesFromElement:v5];
  [(_TVActivityView *)v8 setActivityView:v27];

  return v8;
}

- (id)_imageViewForBadgeElement:(id)a3 existingView:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_alloc_init(_TVImageView);
  }

  v8 = v7;
  v9 = v5;
  v10 = [v9 tv_imageProxy];
  [v9 tv_imageScaleToSize];
  v12 = v11;
  v14 = v13;
  v15 = [v9 style];
  v16 = [v15 tv_tintColor];
  v17 = [v16 color];

  v18 = [v9 style];
  v19 = [v18 tv_highlightColor];
  v20 = [v19 color];

  if (!v10)
  {
    v34 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_ERROR))
    {
      [TVMLViewFactory _imageViewForBadgeElement:v34 existingView:v9];
    }

    v35 = 0;
    goto LABEL_22;
  }

  v49 = v17;
  v21 = [v9 style];
  [v21 tv_borderWidths];
  v23.f64[1] = v22;
  v25.f64[1] = v24;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v23, *MEMORY[0x277D768C8]), vceqq_f64(v25, *(MEMORY[0x277D768C8] + 16))))))
  {

    goto LABEL_12;
  }

  v26 = [v9 style];
  v27 = [v26 tv_borderColor];
  v28 = [v27 color];

  if (!v28)
  {
LABEL_12:
    v33 = objc_alloc_init(TVImageScaleDecorator);
    goto LABEL_13;
  }

  v29 = [v9 style];
  v30 = [v29 tv_borderColor];
  v31 = [v30 color];
  v32 = [v9 style];
  [v32 tv_borderWidths];
  v33 = [TVImageOutlineDecorator decoratorWithOutlineColor:v31 outlineWidths:?];

LABEL_13:
  [(TVImageScaleDecorator *)v33 setScaleToSize:v12, v14];
  [v10 setDecorator:v33];
  v36 = [v9 appDocument];
  v37 = [v36 requestLoader];
  [v10 setRequestLoader:v37];

  [v10 setLoadSynchronouslyIfCached:1];
  v38 = [(_TVImageView *)v8 imageProxy];
  v39 = [v38 isEqual:v10];

  [(_TVImageView *)v8 setImageProxy:v10];
  [(_TVImageView *)v8 setContentMode:1];
  [(_TVImageView *)v8 setContentsPosition:2];
  v17 = v49;
  [(_TVImageView *)v8 _setTintColor:v49];
  [(_TVImageView *)v8 _setFocusedColor:v20];
  -[_TVImageView setSemanticContentAttribute:](v8, "setSemanticContentAttribute:", [v9 tv_semanticContentAttribute]);
  v40 = [v9 parent];
  if (v40)
  {
    v41 = v40;
    while ([v41 tv_elementType] != 35)
    {
      v42 = [v41 parent];

      v41 = v42;
      if (!v42)
      {
        goto LABEL_17;
      }
    }

    [(_TVImageView *)v8 _loadImage];
  }

  else
  {
LABEL_17:
    if (((v6 != 0) & v39) == 1)
    {
      v43 = [v9 url];
      v44 = [v43 tv_isResourceURL];

      if (v44)
      {
        [(_TVImageView *)v8 _reloadImageForLayoutDirectionChange];
      }
    }
  }

  v45 = [v9 attributes];
  v46 = [v45 objectForKeyedSubscript:@"handlesInteraction"];
  v47 = [v46 BOOLValue];

  [(_TVImageView *)v8 setUserInteractionEnabled:v47];
  [_TVControlTarget addTargetInControl:v8 withViewElement:v9];
  v35 = v8;

LABEL_22:

  return v35;
}

- (id)_imageViewForElement:(id)a3 layout:(id)a4 existingView:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() imageViewWithElement:v9 layout:v8 existingView:v7];

  return v10;
}

- (id)_loadingImageViewForElement:(id)a3 existingView:(id)a4
{
  v4 = a3;
  v5 = [v4 attributes];
  v6 = [v5 objectForKey:*MEMORY[0x277D1AF40]];

  v7 = [v4 attributes];
  v8 = [v7 objectForKey:*MEMORY[0x277D1AF38]];

  v9 = 0.0;
  v10 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    v10 = [v6 integerValue];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 integerValue];
  }

  v11 = [v4 style];
  [v11 tv_width];
  v13 = v12;

  v14 = [v4 style];
  [v14 tv_height];
  v16 = v15;

  if (v13 == 0.0 || v16 == 0.0)
  {
    v13 = v10;
    v16 = v9;
  }

  v17 = [[_TVLoadingImageView alloc] initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), v13, v16];

  return v17;
}

- (id)_monogramViewForElement:(id)a3 layout:(id)a4 existingView:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v7;
  v10 = a4;
  v11 = [(objc_class *)[TVViewLayout layoutClassForElement:?]element:"layoutWithLayout:element:", v10, v9];

  [v11 decoratorSize];
  v13 = v12;
  v15 = v14;
  [v11 padding];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [v9 attributes];
  v25 = [v24 objectForKey:@"contentsMode"];
  if (v25)
  {
    v26 = [v9 tv_scaleMode];
  }

  else
  {
    v26 = 0;
  }

  if (v13 < 0.00000011920929 || v15 < 0.00000011920929)
  {
    v28 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_ERROR))
    {
      [TVMLViewFactory _monogramViewForElement:v28 layout:v9 existingView:?];
    }

    v29 = 0;
  }

  else
  {
    v75 = v26;
    v80[0] = 0;
    v78 = TVCornerRadiiZero;
    v79 = *&qword_26CE880D8;
    [TVMLUtilities _cornerRadiiFromElement:v9 cornerRadii:&v78 circle:v80];
    [TVCornerUtilities radiusFromCornerRadii:v78, v79];
    v31 = v30;
    v32 = [TVMonogramViewConfiguration alloc];
    v33 = [(TVMonogramViewConfiguration *)v32 initWithShadowImages:v80[0]];
    v34 = [v11 highlightColor];
    v35 = [v11 tintColor];
    [v11 focusSizeIncrease];
    [(TVMonogramViewConfiguration *)v33 setFocusedSizeIncrease:?];
    [(TVMonogramViewConfiguration *)v33 setFocusedBgColor:v34];
    v77 = v35;
    [(TVMonogramViewConfiguration *)v33 setUnfocusedBgColor:v35];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v37 = v8;
    }

    else
    {
      v37 = [[_TVMonogramView alloc] initWithFrame:v33 configuration:0.0, 0.0, v13, v15];
    }

    v29 = v37;
    -[_TVMonogramView setFocusedStateEnabled:](v37, "setFocusedStateEnabled:", [v11 acceptsFocus]);
    [(_UIFloatingContentView *)v29 setControlState:0 animated:0];
    [(TVMonogramViewConfiguration *)v33 focusedSizeIncrease];
    [(_UIFloatingContentView *)v29 setFocusedSizeIncrease:?];
    [(UIView *)v29 transferLayoutStylesFromElement:v9];
    v38 = [v11 placeholderArtworkName];
    if (([v38 isEqualToString:@"none"] & 1) != 0 || (objc_msgSend(v9, "tv_isResource") & 1) != 0 || (objc_msgSend(v9, "tv_isSymbol") & 1) != 0 || !objc_msgSend(v38, "length"))
    {
      v39 = 0;
    }

    else
    {
      v39 = [TVMLUtilities _placeholderImageForViewElement:v9];
    }

    v76 = v39;
    [(_TVMonogramView *)v29 setPlaceholderImage:v39];
    v40 = [v9 objectForKeyedSubscript:@"TVConfigureForMetrics"];
    v41 = [v40 BOOLValue];

    if ((v41 & 1) == 0)
    {
      v71 = v38;
      v72 = v34;
      v73 = v33;
      v74 = v8;
      [(TVMonogramViewConfiguration *)v33 focusedSizeIncrease];
      v43 = [v9 tv_urlWithSize:v13 focusSizeIncrease:{v15, v42}];
      v69 = [_TVMonogramDescription alloc];
      v44 = [v9 attributes];
      v45 = [v44 objectForKeyedSubscript:@"firstName"];
      v46 = [v9 attributes];
      v47 = [v46 objectForKeyedSubscript:@"lastName"];
      v48 = [v9 style];
      v49 = [TVMLUtilities fontFromStyle:v48];
      v50 = v69;
      v70 = v43;
      v51 = [(_TVMonogramDescription *)v50 initWithFirstName:v45 lastName:v47 imageURL:v43 font:v49];

      v52 = [v9 appDocument];
      v53 = [v52 requestLoader];
      [(_TVMonogramDescription *)v51 setRequestLoader:v53];

      [(_TVMonogramDescription *)v51 setSize:v13, v15];
      [(_TVMonogramDescription *)v51 setPadding:v17, v19, v21, v23];
      if (v75)
      {
        [(_TVMonogramDescription *)v51 setScaleMode:v75];
        if (v75 == 2)
        {
          v54 = [v11 backgroundColor];
          [(_TVMonogramDescription *)v51 setBackgroundColor:v54];
        }
      }

      v33 = v73;
      [(TVMonogramViewConfiguration *)v73 focusedSizeIncrease];
      [(_TVMonogramDescription *)v51 setUpscaleAdjustment:?];
      [(_TVMonogramDescription *)v51 setCornerRadius:v31];
      v55 = [v9 style];
      [v55 tv_borderWidths];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;

      [(_TVMonogramDescription *)v51 setBorderWidth:fmax(fmax(v57, v61), fmax(v59, v63))];
      v64 = [v9 style];
      v65 = [v64 tv_borderColor];
      v66 = [v65 color];
      [(_TVMonogramDescription *)v51 setBorderColor:v66];

      [(_TVMonogramDescription *)v51 setFillColor:v77];
      [(_TVMonogramDescription *)v51 setShouldFallBackToSilhouette:v71 == 0];
      v67 = [v9 tv_imageProxy];
      [(_TVMonogramView *)v29 setImageProxy:v67];

      v38 = v71;
      [(_TVMonogramView *)v29 setMonogramDescription:v51];

      v8 = v74;
      v34 = v72;
    }
  }

  return v29;
}

- (id)_rowViewForElement:(id)a3 existingView:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v8 = [_TVRowView alloc];
    v7 = [(_TVRowView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v9 = v7;
  v10 = [v5 tv_semanticContentAttribute];
  [(_TVRowView *)v9 setSemanticContentAttribute:v10];
  v11 = [v6 tv_associatedIKViewElement];
  if (v11 == v5 && ([v5 updateType] == 1 || objc_msgSend(v5, "updateType") == 3))
  {
    v12 = [v6 components];
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x277CBEB18] array];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0x7FFFFFFFFFFFFFFFLL;
  v14 = [v5 attributes];
  v15 = [v14 objectForKeyedSubscript:@"firstItem"];

  if ([v15 length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v16 = [v15 integerValue];
    v38[3] = v16;
  }

  v17 = [v5 style];
  -[_TVRowView setContentVerticalAlignment:](v9, "setContentVerticalAlignment:", [v17 tv_contentAlignment]);

  v18 = [v5 children];
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __51__TVMLViewFactory__rowViewForElement_existingView___block_invoke;
  v32 = &unk_279D70858;
  v19 = v12;
  v33 = v19;
  v35 = &v37;
  v36 = v10;
  v20 = v13;
  v34 = v20;
  [v18 enumerateObjectsUsingBlock:&v29];

  [(_TVRowView *)v9 setComponents:v20, v29, v30, v31, v32];
  v21 = v38[3];
  if (v21 != 0x7FFFFFFFFFFFFFFFLL && v21 < [v20 count])
  {
    v22 = [v20 objectAtIndexedSubscript:v38[3]];
    v23 = [v22 canBecomeFocused];

    if (v23)
    {
      v24 = [v20 objectAtIndexedSubscript:v38[3]];
      [(_TVRowView *)v9 setPreferredFocusedComponent:v24];
    }
  }

  v25 = [MEMORY[0x277D759A0] mainScreen];
  v26 = [v25 focusedView];
  v27 = [v26 isDescendantOfView:v9];

  if (v27)
  {
    [(_TVRowView *)v9 setNeedsFocusUpdate];
  }

  _Block_object_dispose(&v37, 8);

  return v9;
}

void __51__TVMLViewFactory__rowViewForElement_existingView___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v11 = a2;
  if ([*(a1 + 32) count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  }

  v6 = +[TVInterfaceFactory sharedInterfaceFactory];
  v7 = [v6 _viewFromElement:v11 existingView:v5];

  if (v7)
  {
    v8 = [v11 autoHighlightIdentifier];
    v9 = [v8 length];

    if (v9)
    {
      v10 = *(*(a1 + 48) + 8);
      if (*(v10 + 24) == 0x7FFFFFFFFFFFFFFFLL)
      {
        *(v10 + 24) = a3;
      }

      [v11 resetProperty:2];
    }

    [v7 setSemanticContentAttribute:*(a1 + 56)];
    [*(a1 + 40) addObject:v7];
  }
}

- (id)_buttonForElement:(id)a3 existingView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() buttonForElement:v6 existingView:v5];

  return v7;
}

+ (id)buttonForElement:(id)a3 existingView:(id)a4
{
  v116 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 appDocument];
  v8 = [v7 templateElement];

  if ([TVMLUtilities interfaceStyleForTemplateElement:v8]== 1)
  {
    v9 = 4005;
  }

  else
  {
    v9 = 4000;
  }

  v101 = v8;
  if ([v8 tv_elementType] == 61 || objc_msgSend(v8, "elementType") == 62)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v8 appDocument];
    v12 = [v11 templateElement];
    v10 = [v12 elementType] != 64;
  }

  v13 = [v5 elementName];
  [v13 isEqualToString:@"roundButton"];

  v14 = objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 backdropStyle] == v9)
  {
    v15 = v6;
  }

  else
  {
    v16 = [v14 alloc];
    v15 = [v16 initWithFrame:v9 blurEffectStyle:v10 blurEnabled:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }

  v108 = v15;
  if (v10 && ([v5 parent], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "tv_elementType"), v17, v18 == 44))
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = [v5 parent];
    v21 = [v19 stringWithFormat:@"%p", v20];

    [v108 setGroupName:v21];
  }

  else
  {
    [v108 setGroupName:0];
  }

  v102 = v6;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = [v5 children];
  v22 = [obj countByEnumeratingWithState:&v111 objects:v115 count:16];
  v104 = v5;
  if (v22)
  {
    v23 = v22;
    v107 = 0;
    v105 = 0;
    v24 = 0;
    v103 = 0;
    v25 = *v112;
    v26 = v108;
    do
    {
      v27 = 0;
      do
      {
        if (*v112 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v111 + 1) + 8 * v27);
        if ([v28 tv_elementType] == 55 && v24 == 0)
        {
          v36 = +[TVInterfaceFactory sharedInterfaceFactory];
          v37 = [v26 textContentView];
          v24 = [v36 _viewFromElement:v28 existingView:v37];

          v38 = [v28 style];
          v39 = [v38 tv_color];

          if (!v39)
          {
            v40 = [MEMORY[0x277D75348] whiteColor];
            [v24 setTextColor:v40];
          }

          v41 = [v28 style];
          v42 = [v41 tv_highlightColor];

          if (!v42)
          {
            v43 = [MEMORY[0x277D75348] blackColor];
            [v24 setHighlightedTextColor:v43];
          }

          if ([v5 isDisabled])
          {
            v44 = [v24 textColor];
            v45 = [v44 colorWithAlphaComponent:0.4];

            [v24 setTextColor:v45];
          }

          v46 = [v28 attributes];
          v47 = [v46 tv_BOOLForKey:@"usesTintColor" defaultValue:0];

          [v24 _setTextColorFollowsTintColor:v47];
          [v24 _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
          v26 = v108;
        }

        else if ([v28 tv_elementType] == 16 && (!objc_msgSend(v28, "tv_imageType") ? (v30 = v105 == 0) : (v30 = 0), v30))
        {
          v48 = +[TVInterfaceFactory sharedInterfaceFactory];
          v49 = [v26 imageView];
          v50 = [v48 _viewFromElement:v28 existingView:v49];

          v26 = v108;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v51 = v50;
          }

          else
          {
            v51 = 0;
          }

          v105 = v51;

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v52 = [v28 style];
            v53 = [v52 tv_visualEffect];
            v54 = [v53 isEqualToString:@"punch-through"];

            [v108 setShouldPunchThroughImage:v54];
          }

          v103 = v24 != 0;
          v5 = v104;
        }

        else if ([v28 tv_elementType] == 5 && v107 == 0)
        {
          v32 = +[TVInterfaceFactory sharedInterfaceFactory];
          v33 = [v26 accessoryView];
          v34 = [v32 _viewFromElement:v28 existingView:v33];

          v5 = v104;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = v34;
          }

          else
          {
            v35 = 0;
          }

          v107 = v35;
        }

        ++v27;
      }

      while (v23 != v27);
      v55 = [obj countByEnumeratingWithState:&v111 objects:v115 count:16];
      v23 = v55;
    }

    while (v55);
  }

  else
  {
    v107 = 0;
    v105 = 0;
    v24 = 0;
    v103 = 0;
    v26 = v108;
  }

  [v5 style];
  v57 = v56 = v5;
  v58 = [v57 tv_backgroundColor];
  v59 = [v58 color];

  if (v59)
  {
    v60 = [v56 style];
    v61 = [v60 tv_highlightColor];
    v62 = [v61 color];
    v63 = v62;
    if (v62)
    {
      v64 = v62;
    }

    else
    {
      v64 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.8];
    }

    v65 = v64;

    v66 = [v56 style];
    v67 = [v66 tv_backgroundColor];
    v68 = [v67 color];
    [v108 setBackgroundColor:v68];

    v26 = v108;
    [v108 setHighlightColor:v65];
  }

  v69 = [v56 style];
  [v69 tv_borderWidths];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;

  v78 = [v26 layer];
  [v78 setBorderWidth:{fmax(fmax(v71, v75), fmax(v73, v77))}];

  v79 = [v26 layer];
  v80 = [v56 style];
  v81 = [v80 tv_borderColor];
  v82 = [v81 color];
  [v79 setBorderColor:{objc_msgSend(v82, "CGColor")}];

  v109 = TVCornerRadiiZero;
  v110 = *&qword_26CE880D8;
  if ([TVMLUtilities _cornerRadiiFromElement:v56 cornerRadii:&v109 circle:0])
  {
    [TVCornerUtilities radiusFromCornerRadii:v109, v110];
  }

  else
  {
    v83 = *&_kTVButtonDefaultCornerRadius;
  }

  v84 = v108;
  [v108 setCornerRadius:v83];
  v85 = [v56 parent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v86 = 8.0;
LABEL_75:
    [v108 setContentMotionRotation:0.0 translation:{0.0, v86, 8.0}];
    goto LABEL_78;
  }

  if ([v85 tv_elementType] != 44)
  {
    v86 = 0.0;
    goto LABEL_75;
  }

  v87 = [v85 parent];
  v88 = [v87 children];
  v89 = [v88 indexOfObjectIdenticalTo:v85];

  if (!v89 || ([v87 children], v90 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v90, "objectAtIndex:", v89 - 1), v91 = objc_claimAutoreleasedReturnValue(), v92 = objc_msgSend(v91, "tv_elementType"), v91, v84 = v108, v90, v93 = 8.0, v92 != 6))
  {
    v94 = [v87 children];
    if (v89 >= [v94 count] - 1)
    {

      v93 = 0.0;
    }

    else
    {
      v95 = [v87 children];
      v96 = [v95 objectAtIndex:v89 + 1];
      v97 = [v96 tv_elementType];

      v84 = v108;
      if (v97 == 6)
      {
        v93 = 8.0;
      }

      else
      {
        v93 = 0.0;
      }
    }
  }

  [v84 setContentMotionRotation:0.0 translation:{0.0, 8.0, v93}];

  v56 = v104;
LABEL_78:
  [v84 setTextContentView:v24];
  [v84 setImageView:v105];
  [v84 setImageTrailsTextContent:v103];
  [v84 setAccessoryView:v107];
  [v84 setViewElement:v56];
  [v84 setDisabled:{objc_msgSend(v56, "isDisabled")}];
  v98 = [v56 style];
  [v98 tv_focusSizeIncrease];
  [v84 setFocusSizeIncrease:?];

  [v84 setExclusiveTouch:1];
  v99 = v84;

  return v99;
}

- (id)_buttonLockupForElement:(id)a3 existingView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() buttonLockupForElement:v6 existingView:v5];

  return v7;
}

+ (id)buttonLockupForElement:(id)a3 existingView:(id)a4
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 appDocument];
  v8 = [v7 templateElement];

  v68 = v8;
  v9 = [TVMLUtilities interfaceStyleForTemplateElement:v8];
  if (v9 == 1)
  {
    v10 = 4005;
  }

  else
  {
    v10 = 4000;
  }

  v11 = [v5 attributes];
  v12 = [v11 objectForKeyedSubscript:@"theme"];

  if (v12)
  {
    v13 = [v5 attributes];
    v14 = [v13 objectForKeyedSubscript:@"theme"];
    v15 = [v14 lowercaseString];

    if ([v15 length])
    {
      if ([v15 isEqualToString:@"light"])
      {
        v9 = 1;
        v10 = 4005;
      }

      else
      {
        if ([v15 isEqualToString:@"dark"])
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }

        v10 = 4000;
      }
    }
  }

  v16 = [v5 parent];
  if ([v16 tv_elementType] == 44)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [v5 parent];
    v19 = [v17 stringWithFormat:@"%p", v18];
  }

  else
  {
    v19 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 backdropStyle] == v10)
  {
    v20 = v6;
  }

  else
  {
    v21 = [TVButtonLockup alloc];
    v20 = [(TVButtonLockup *)v21 initWithFrame:v10 blurEffectStyle:v19 groupName:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v71 = v20;
  v22 = [v5 attributes];
  v23 = [v22 objectForKeyedSubscript:@"theme"];

  if (v23)
  {
    v24 = [v5 attributes];
    v25 = [v24 objectForKeyedSubscript:@"theme"];
    v26 = [v25 lowercaseString];

    if ([v26 length])
    {
      [(TVButtonLockup *)v71 setVibrantLabelThemeOverride:v9];
    }
  }

  v73 = [v5 isDisabled];
  v27 = [v5 style];
  v28 = [v27 tv_backgroundColor];
  v29 = [v28 color];

  v67 = v19;
  if (v29)
  {
    v30 = [v5 style];
    v31 = [v30 tv_highlightColor];
    v32 = [v31 color];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.8];
    }

    v36 = v34;

    v37 = [v5 style];
    v38 = [v37 tv_backgroundColor];
    v39 = [v38 color];
    v35 = v71;
    [(TVButtonLockup *)v71 setBackgroundColor:v39];

    [(TVButtonLockup *)v71 setHighlightColor:v36];
  }

  else
  {
    v35 = v71;
    [(TVButtonLockup *)v71 setBackgroundColor:0];
    [(TVButtonLockup *)v71 setHighlightColor:0];
  }

  v69 = v6;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v40 = [v5 children];
  v41 = [v40 countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (!v41)
  {

    v63 = 0;
    v44 = 0;
    v43 = 0;
    v62 = v67;
    goto LABEL_61;
  }

  v42 = v41;
  v66 = v5;
  v43 = 0;
  v44 = 0;
  v70 = 0;
  v72 = 0;
  v45 = *v75;
  v46 = 1.0;
  do
  {
    for (i = 0; i != v42; ++i)
    {
      if (*v75 != v45)
      {
        objc_enumerationMutation(v40);
      }

      v48 = *(*(&v74 + 1) + 8 * i);
      if ([v48 tv_elementType] == 55)
      {
        v49 = v48;
        if ([v49 tv_textStyle] == 1)
        {
          if (!v72)
          {
            v50 = +[TVInterfaceFactory sharedInterfaceFactory];
            v51 = [(TVButtonLockup *)v35 titleView];
            v72 = [v50 _viewFromElement:v49 existingView:v51];
            goto LABEL_53;
          }
        }

        else if (!(v44 | v43))
        {
          v54 = [v49 style];
          v55 = [v54 tv_color];
          v56 = [v55 color];
          v57 = v56;
          if (v56)
          {
            v58 = v56;
          }

          else
          {
            v58 = [MEMORY[0x277D75348] whiteColor];
          }

          v50 = v58;

          if (v73)
          {
            v59 = [v50 colorWithAlphaComponent:0.4];

            v50 = v59;
          }

          v35 = v71;
          v44 = [v49 tv_attributedStringWithForegroundColor:v50 textAlignment:1];
          v60 = [v49 style];
          [v60 tv_minimumScaleFactor];
          v46 = v61;

          v51 = [v49 style];
          v70 = [v51 tv_maxTextLines];
LABEL_53:
        }

        continue;
      }

      if ([v48 tv_elementType] == 16 || objc_msgSend(v48, "tv_elementType") == 5 || objc_msgSend(v48, "tv_elementType") == 48)
      {
        if (!(v44 | v43))
        {
          v52 = +[TVInterfaceFactory sharedInterfaceFactory];
          v53 = [(TVButtonLockup *)v35 imageView];
          v43 = [v52 _viewFromElement:v48 existingView:v53];
        }

        if (v73)
        {
          [v43 setAlpha:0.4];
        }
      }
    }

    v42 = [v40 countByEnumeratingWithState:&v74 objects:v78 count:16];
  }

  while (v42);

  if (v44)
  {
    [(TVButtonLockup *)v35 setText:v44 minimumScale:v70 maxNumberOfLines:v46];
  }

  v5 = v66;
  v62 = v67;
  v63 = v72;
LABEL_61:
  [(TVButtonLockup *)v35 setImageView:v43];
  [(TVButtonLockup *)v35 setTitleView:v63];
  [(TVButtonLockup *)v35 setViewElement:v5];
  [(TVButtonLockup *)v35 setDisabled:v73];
  v64 = v35;

  return v35;
}

- (id)_segmentedControlForElement:(id)a3 existingView:(id)a4
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277D75A08]);
    v7 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }

  v9 = v7;
  v42 = (![v5 updateType] || objc_msgSend(v5, "updateType") == 2) && v9 == v6;
  v10 = [v5 attributes];
  v11 = [v10 objectForKey:@"segmentWidthsByContent"];
  [v9 setApportionsSegmentWidthsByContent:{objc_msgSend(v11, "BOOLValue")}];

  v46 = [v9 selectedSegmentIndex];
  if (!v42)
  {
    [v9 removeAllSegments];
  }

  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__4;
  v76 = __Block_byref_object_dispose__4;
  v77 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__4;
  v70 = __Block_byref_object_dispose__4;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__4;
  v64 = __Block_byref_object_dispose__4;
  v65 = 0;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __60__TVMLViewFactory__segmentedControlForElement_existingView___block_invoke;
  v59[3] = &unk_279D70880;
  v59[4] = &v72;
  v59[5] = &v66;
  v59[6] = &v60;
  v59[7] = &v78;
  v41 = MEMORY[0x26D6AFBB0](v59);
  (v41)[2](v41, v5);
  v43 = [MEMORY[0x277CBEB18] array];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v12 = [v5 children];
  v13 = [v12 countByEnumeratingWithState:&v55 objects:v83 count:16];
  if (v13)
  {
    v50 = 0;
    v48 = *v56;
    v47 = *MEMORY[0x277D1AF18];
    v44 = v9;
    obj = v12;
    do
    {
      v49 = v13;
      for (i = 0; i != v49; ++i)
      {
        if (*v56 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v55 + 1) + 8 * i);
        if ([v15 tv_elementType] == 51)
        {
          v16 = [v15 autoHighlightIdentifier];
          if ([v16 length])
          {
            v17 = v46 == -1;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          if (v18)
          {
            v19 = [v5 children];
            v46 = [v19 indexOfObject:v15];
          }

          [v15 resetProperty:2];
          v20 = [v15 attributes];
          v21 = [v20 objectForKey:v47];

          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v22 = [v15 children];
          v23 = [v22 countByEnumeratingWithState:&v51 objects:v82 count:16];
          if (v23)
          {
            v24 = v6;
            v25 = v5;
            v26 = *v52;
            while (2)
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v52 != v26)
                {
                  objc_enumerationMutation(v22);
                }

                v28 = *(*(&v51 + 1) + 8 * j);
                if ([v28 tv_elementType] == 55)
                {
                  v5 = v25;
                  v6 = v24;
                  v9 = v44;
                  if ((v79[3] & 1) == 0)
                  {
                    (v41)[2](v41, v28);
                  }

                  v29 = [v28 text];
                  v30 = [v29 string];
                  if (v42)
                  {
                    [v44 setTitle:v30 forSegmentAtIndex:v50];
                  }

                  else
                  {
                    [v44 insertSegmentWithTitle:v30 atIndex:v50 animated:0];
                  }

                  [v43 addObject:v15];
                  v31 = [v28 attributes];
                  v32 = [v31 objectForKey:v47];
                  v33 = v32;
                  if (v32)
                  {
                    v34 = v32;
                  }

                  else
                  {
                    v34 = v21;
                  }

                  v35 = v34;

                  ++v50;
                  v21 = v35;
                  goto LABEL_42;
                }
              }

              v23 = [v22 countByEnumeratingWithState:&v51 objects:v82 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }

            v5 = v25;
            v6 = v24;
            v9 = v44;
          }

LABEL_42:

          v36 = [v9 accessibilityElements];
          if (v50 - 1 >= [v36 count])
          {
            v37 = 0;
          }

          else
          {
            v37 = [v36 objectAtIndexedSubscript:?];
          }

          [v15 tv_setProxyView:v37];
          [v37 tv_setAssociatedIKViewElement:v15];
          if (v21)
          {
            [v37 setAccessibilityLabel:v21];
          }
        }
      }

      v12 = obj;
      v13 = [obj countByEnumeratingWithState:&v55 objects:v83 count:16];
    }

    while (v13);
  }

  else
  {
    v50 = 0;
  }

  [v9 setTitleTextAttributes:v73[5] forState:0];
  [v9 setTitleTextAttributes:v61[5] forState:4];
  [v9 setTitleTextAttributes:v67[5] forState:8];
  [v9 setTitleTextAttributes:v67[5] forState:1];
  if (v50)
  {
    v38 = v50 - 1;
    if (v46 < v50 - 1)
    {
      v38 = v46;
    }

    if (v46 == -1)
    {
      v39 = 0;
    }

    else
    {
      v39 = v38;
    }

    [v9 setSelectedSegmentIndex:v39];
  }

  [_TVSegmentedControlTarget addTargetInSegmentedControl:v9 withHighlightViewElements:v43];

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v66, 8);

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v78, 8);

  return v9;
}

void __60__TVMLViewFactory__segmentedControlForElement_existingView___block_invoke(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  obj = objc_alloc_init(v3);
  v5 = [v4 style];

  v6 = [v5 tv_textStyle];
  if (v6 || ([v5 tv_fontWeight], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v7 = [TVMLUtilities fontFromStyle:v5];
    [obj setObject:v7 forKeyedSubscript:*MEMORY[0x277D740A8]];

    goto LABEL_5;
  }

  [v5 tv_fontSize];
  if (v23 > 0.0)
  {
    goto LABEL_4;
  }

LABEL_5:
  v8 = [v5 textShadow];
  if (v8)
  {
    [obj setObject:v8 forKeyedSubscript:*MEMORY[0x277D74138]];
  }

  v9 = [v5 tv_color];
  v10 = [v9 color];

  v11 = MEMORY[0x277D740C0];
  if (v10)
  {
    [obj setObject:v10 forKeyedSubscript:*MEMORY[0x277D740C0]];
  }

  v12 = [v5 tv_highlightColor];
  v13 = [v12 color];

  if ([obj count] || v13)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), obj);
    v14 = [obj mutableCopy];
    v15 = *(a1[5] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = v13;
    if (!v13)
    {
      v17 = [MEMORY[0x277D75348] blackColor];
    }

    v18 = *v11;
    [*(*(a1[5] + 8) + 40) setObject:v17 forKeyedSubscript:*v11];
    if (!v13)
    {
    }

    v19 = [obj mutableCopy];
    v20 = *(a1[6] + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v22 = [MEMORY[0x277D75348] whiteColor];
    [*(*(a1[6] + 8) + 40) setObject:v22 forKeyedSubscript:v18];

    *(*(a1[7] + 8) + 24) = 1;
  }
}

- (id)_ratingBadgeFromElement:(id)a3 existingView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [TVRatingBadgeLayout layoutWithLayout:0 element:v6];
  v8 = [v6 attributes];

  v9 = [v8 objectForKeyedSubscript:@"value"];
  [v9 floatValue];
  v11 = v10;

  v12 = [TVRatingBadgeView ratingBadgeViewWithValue:v7 layout:v5 existingBadgeView:v11];

  return v12;
}

- (id)_progressBarFromElement:(id)a3 existingView:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v8 = [_TVProgressView alloc];
    v7 = [(_TVProgressView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v9 = v7;
  v10 = [v5 style];
  v11 = [v10 borderRadius];
  if (v11)
  {
    v12 = v11;
    v13 = [TVMLUtilities _cornerRadiiFromElement:v5 cornerRadii:v35 circle:0];

    if (v13)
    {
      [TVCornerUtilities radiusFromCornerRadii:v35[0], v35[1]];
      [(_TVProgressView *)v9 setCornerRadius:?];
    }
  }

  else
  {
  }

  v14 = [v5 style];
  v15 = [v14 tv_progressStyle];

  -[_TVProgressView setStyle:](v9, "setStyle:", [v15 isEqualToString:@"unshadowed"]);
  v16 = [v5 style];
  v17 = [v16 tv_tintColor];
  v18 = [v17 color];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [MEMORY[0x277D75348] whiteColor];
  }

  v21 = v20;

  [(_TVProgressView *)v9 setProgressTintColor:v21];
  v22 = [v5 style];
  v23 = [v22 tv_tintColor2];
  v24 = [v23 color];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:0.9];
  }

  v27 = v26;

  [(_TVProgressView *)v9 setCompleteTintColor:v27];
  v28 = [v5 attributes];
  v29 = [v28 objectForKeyedSubscript:@"value"];
  [v29 floatValue];
  [(_TVProgressView *)v9 setProgress:v30];

  v31 = [v5 style];
  v32 = [v31 tv_imageTreatment];
  v33 = [v32 isEqualToString:@"blur"];

  [(_TVProgressView *)v9 setUseMaterial:v33];

  return v9;
}

- (id)_seasonsBadgeWithElement:(id)a3 existingView:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v8 = [_TVImageView alloc];
    v7 = [(_TVImageView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v9 = v7;
  v10 = MEMORY[0x277D755B8];
  v11 = +[TVMLUtilities TVMLKitBundle];
  v12 = [v10 imageNamed:@"seasons_mask" inBundle:v11 compatibleWithTraitCollection:0];

  [v12 size];
  v14 = v13;
  v16 = v15;
  v17 = [v6 tv_attributedString];
  v18 = [MEMORY[0x277D759A0] mainScreen];
  [v18 scale];
  v20 = v19;
  v28.width = v14;
  v28.height = v16;
  UIGraphicsBeginImageContextWithOptions(v28, 0, v20);

  [v12 drawInRect:{0.0, 0.0, v14, v16}];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetBlendMode(CurrentContext, kCGBlendModeDestinationOut);
  [v17 drawInRect:{0.0, 0.0, 43.0, 30.0}];
  v22 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [(_TVImageView *)v9 setImage:v22];
  [(_TVImageView *)v9 setContentMode:1];
  [(_TVImageView *)v9 setContentsPosition:2];
  v23 = [v6 style];

  v24 = [v23 tv_tintColor];
  v25 = [v24 color];

  if (v25)
  {
    [(_TVImageView *)v9 _setTintColor:v25];
  }

  return v9;
}

- (id)_separatorViewForElement:(id)a3 existingView:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 contentView];
    v9 = [v8 subviews];
    v10 = [v9 firstObject];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = [v7 contentView];
    v12 = [v11 subviews];

    v13 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v36 + 1) + 8 * i);
          if (v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            [v17 removeFromSuperview];
          }

          else
          {
            v10 = v17;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v14);
    }

    v18 = [_TVSeparatorView separatorViewWithElement:v5 existingView:v10];
    [v18 transferLayoutStylesFromElement:v5];
    v19 = [v18 superview];

    if (!v19)
    {
      [v18 setAutoresizingMask:18];
      v20 = [v7 contentView];
      [v20 addSubview:v18];
    }

    v21 = [v7 contentView];
    [v21 bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [v7 tv_padding];
    [v18 setFrame:{v23 + v33, v25 + v30, v27 - (v33 + v31), v29 - (v30 + v32)}];

    v34 = v7;
  }

  else
  {
    v34 = [_TVSeparatorView separatorViewWithElement:v5 existingView:v6];
    [v34 transferLayoutStylesFromElement:v5];
  }

  return v34;
}

+ (void)imageViewWithElement:(void *)a1 layout:(void *)a2 existingView:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 url];
  OUTLINED_FUNCTION_0_2(&dword_26CD9A000, v5, v6, "width/height missing for element with URL [%@]", v7, v8, v9, v10, 2u);
}

- (void)_imageViewForBadgeElement:(void *)a1 existingView:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 url];
  OUTLINED_FUNCTION_0_2(&dword_26CD9A000, v5, v6, "Can't find badge named [%@]", v7, v8, v9, v10, 2u);
}

- (void)_monogramViewForElement:(void *)a1 layout:(void *)a2 existingView:.cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 attributes];
  v5 = [v4 objectForKeyedSubscript:@"firstName"];
  v6 = [a2 attributes];
  v7 = [v6 objectForKeyedSubscript:@"lastName"];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_26CD9A000, v3, OS_LOG_TYPE_ERROR, "width/height missing for monogram with first,last [%@,%@]", &v8, 0x16u);
}

@end