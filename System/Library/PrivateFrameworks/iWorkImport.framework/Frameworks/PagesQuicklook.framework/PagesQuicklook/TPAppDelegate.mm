@interface TPAppDelegate
+ (TPAppPropertiesProvider)tp_sharedPropertiesProvider;
+ (id)sharedDelegate;
- (TPAppDelegate)init;
- (id)createCompatibilityDelegate;
- (id)universalPreviewImageNameForDocumentType:(id)a3;
- (void)dealloc;
- (void)p_localeChanged:(id)a3;
- (void)registerSOSClassTypeMappings;
@end

@implementation TPAppDelegate

- (TPAppDelegate)init
{
  v139.receiver = self;
  v139.super_class = TPAppDelegate;
  v3 = [(TSABaseApplicationDelegate *)&v139 init];
  if (v3)
  {
    v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v2, v4, v5, v6, v7);
    objc_msgSend_addObserver_selector_name_object_(v8, v9, v10, v11, v12, v13, v3, sel_p_localeChanged_, *MEMORY[0x277CBE620], 0);

    sub_275FBAC4C(v16, v17, v18, v19, v14, v15);
    objc_msgSend_registerSOSClassTypeMappings(v3, v20, v21, v22, v23, v24);
    v25 = objc_opt_class();
    objc_msgSend_resetSharedConfigurations(v25, v26, v27, v28, v29, v30);
    v36 = objc_msgSend_sharedTableConfiguration(MEMORY[0x277D80D00], v31, v32, v33, v34, v35);
    objc_msgSend_setSupportsContainedTextEditing_(v36, v37, v38, v39, v40, v41, 1);
    objc_msgSend_setSupportsControlCells_(v36, v42, v43, v44, v45, v46, 0);
    objc_msgSend_setShowsCellWarningIndicator_(v36, v47, v48, v49, v50, v51, 0);
    objc_msgSend_setMaxNumberOfRows_(v36, v52, v53, v54, v55, v56, 999);
    objc_msgSend_setMaxNumberOfColumns_(v36, v57, v58, v59, v60, v61, 65);
    objc_msgSend_setAllowHorizontalAutoresize_(v36, v62, v63, v64, v65, v66, 0);
    objc_msgSend_setShowsHideUnhideUI_(v36, v67, v68, v69, v70, v71, 0);
    objc_msgSend_setExportPermanentHidingState_(v36, v72, v73, v74, v75, v76, 1);
    objc_msgSend_setPasteFilterHidingAsUserHiding_(v36, v77, v78, v79, v80, v81, 1);
    objc_msgSend_setAllowsFullyFilteredTables_(v36, v82, v83, v84, v85, v86, 0);
    objc_msgSend_setExportsCellAnnotations_(v36, v87, v88, v89, v90, v91, 1);
    objc_msgSend_setSupportsCellCommentsActivityLines_(v36, v92, v93, v94, v95, v96, 1);
    objc_msgSend_setSupportsRepeatHeaderRowsOnEachPage_(v36, v97, v98, v99, v100, v101, 1);
    objc_msgSend_setSupportsInlineAttachments_(v36, v102, v103, v104, v105, v106, 1);
    objc_msgSend_setSupportsTableColumnAutocomplete_(v36, v107, v108, v109, v110, v111, 0);
    v117 = objc_msgSend_sharedChartConfiguration(MEMORY[0x277D80040], v112, v113, v114, v115, v116);
    objc_msgSend_setSupportsTextBackground_(v117, v118, v119, v120, v121, v122, 1);
    objc_msgSend_setSupportsTextWrapping_(v117, v123, v124, v125, v126, v127, 1);
    objc_msgSend_setModifyChartDataHelpKey_(v117, v128, v129, v130, v131, v132, @"tana5ac9c5ea");
    objc_msgSend_setAnalyticsAppType_(v117, v133, v134, v135, v136, v137, 3);
  }

  return v3;
}

+ (TPAppPropertiesProvider)tp_sharedPropertiesProvider
{
  objc_opt_class();
  v8 = objc_msgSend_sharedPropertiesProvider(a1, v3, v4, v5, v6, v7);
  v9 = TSUCheckedDynamicCast();

  return v9;
}

- (void)dealloc
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4, v5);
  objc_msgSend_removeObserver_(v7, v8, v9, v10, v11, v12, self);

  v13.receiver = self;
  v13.super_class = TPAppDelegate;
  [(TPAppDelegate *)&v13 dealloc];
}

+ (id)sharedDelegate
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___TPAppDelegate;
  v2 = objc_msgSendSuper2(&v4, sel_sharedDelegate);

  return v2;
}

- (id)createCompatibilityDelegate
{
  v2 = objc_alloc_init(TPQuicklookCompatibilityDelegate);

  return v2;
}

- (id)universalPreviewImageNameForDocumentType:(id)a3
{
  v60[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_class();
  v10 = objc_msgSend_tp_sharedPropertiesProvider(v4, v5, v6, v7, v8, v9);
  v60[0] = @"com.apple.iwork.pages.template";
  v60[1] = @"com.apple.iwork.pages.sfftemplate";
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v15, v60, 2);
  v22 = objc_msgSend_tsu_conformsToAnyUTI_(v3, v17, v18, v19, v20, v21, v16);

  if (v22)
  {
    v28 = @"doc_manager_template";
  }

  else
  {
    v29 = objc_msgSend_wordDocumentTypes(v10, v23, v24, v25, v26, v27);
    v35 = objc_msgSend_tsu_conformsToAnyUTI_(v3, v30, v31, v32, v33, v34, v29);

    if (v35)
    {
      v28 = @"doc_manager_pages_doc";
    }

    else
    {
      v41 = objc_msgSend_textDocumentTypes(v10, v36, v37, v38, v39, v40);
      if (objc_msgSend_tsu_conformsToAnyUTI_(v3, v42, v43, v44, v45, v46, v41))
      {

        v28 = @"doc_manager_pages_txt";
      }

      else
      {
        v52 = objc_msgSend_rtfDocumentTypes(v10, v47, v48, v49, v50, v51);
        v58 = objc_msgSend_tsu_conformsToAnyUTI_(v3, v53, v54, v55, v56, v57, v52);

        if (v58)
        {
          v28 = @"doc_manager_pages_txt";
        }

        else
        {
          v28 = @"doc_manager_pages_classic";
        }
      }
    }
  }

  return v28;
}

- (void)registerSOSClassTypeMappings
{
  v2.receiver = self;
  v2.super_class = TPAppDelegate;
  [(TSABaseApplicationDelegate *)&v2 registerSOSClassTypeMappings];
}

- (void)p_localeChanged:(id)a3
{
  v7 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], a2, v3, v4, v5, v6, a3);
  if (v7)
  {
    v27 = v7;
    v13 = objc_msgSend_objectForKey_(v7, v8, v9, v10, v11, v12, *MEMORY[0x277CBE718]);
    v19 = v13;
    if (v13)
    {
      v20 = objc_msgSend_BOOLValue(v13, v14, v15, v16, v17, v18);
    }

    else
    {
      v20 = 0;
    }

    v21 = objc_msgSend_instance(MEMORY[0x277D806C0], v14, v15, v16, v17, v18);
    objc_msgSend_setRulerUnits_(v21, v22, v23, v24, v25, v26, v20);

    v7 = v27;
  }
}

@end