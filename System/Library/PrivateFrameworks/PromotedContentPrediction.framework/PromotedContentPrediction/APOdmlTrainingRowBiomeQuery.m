@interface APOdmlTrainingRowBiomeQuery
+ (void)combineRecords:(id)a3 andSaveTo:(id)a4;
+ (void)trainingRowsFromBiomeEvent:(id)a3 recordID:(id)a4 requiredFeatures:(id)a5 andSaveTo:(id)a6;
+ (void)validateRows:(id)a3 recipe:(id)a4;
- (APOdmlTrainingRowBiomeQuery)initWithRecipe:(id)a3;
- (id)makeQuery;
@end

@implementation APOdmlTrainingRowBiomeQuery

- (APOdmlTrainingRowBiomeQuery)initWithRecipe:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = APOdmlTrainingRowBiomeQuery;
  v5 = [(APOdmlTrainingRowBiomeQuery *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(APOdmlBiomeSQLQuery);
    objc_msgSend_setRawQuery_(v5, v7, v6);

    objc_msgSend_setRecipe_(v5, v8, v4);
  }

  return v5;
}

- (id)makeQuery
{
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_260EF0150;
  v60 = sub_260EF0160;
  v61 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_260EF0150;
  v54 = sub_260EF0160;
  v55 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
  v6 = BiomeLibrary();
  v9 = objc_msgSend_AdPlatforms(v6, v7, v8);
  v12 = objc_msgSend_ODML(v9, v10, v11);
  v15 = objc_msgSend_TrainingRows(v12, v13, v14);

  v18 = objc_msgSend_publisher(v15, v16, v17);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_260EF0240;
  v49[3] = &unk_279AC68F8;
  v49[4] = self;
  v49[5] = &v56;
  v20 = objc_msgSend_sinkWithCompletion_receiveInput_(v18, v19, &unk_287367720, v49);

  v21 = MEMORY[0x277CBEB98];
  v24 = objc_msgSend_recipe(self, v22, v23);
  v27 = objc_msgSend_coreMLRecipe(v24, v25, v26);
  v30 = objc_msgSend_inputNames(v27, v28, v29);
  v32 = objc_msgSend_setWithArray_(v21, v31, v30);

  v33 = v57[5];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_260EF02C8;
  v46[3] = &unk_279AC6920;
  v46[4] = self;
  v34 = v32;
  v47 = v34;
  v48 = &v50;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v33, v35, v46);
  v36 = objc_opt_class();
  v37 = v51[5];
  v40 = objc_msgSend_recipe(self, v38, v39);
  objc_msgSend_validateRows_recipe_(v36, v41, v37, v40);

  v44 = objc_msgSend_copy(v51[5], v42, v43);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);

  return v44;
}

+ (void)combineRecords:(id)a3 andSaveTo:(id)a4
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_adamID(v5, v7, v8);

  if (!v9)
  {
    v24 = OdmlLogForCategory(0xCuLL);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v82 = 138412290;
    v83 = objc_opt_class();
    v67 = v83;
    _os_log_impl(&dword_260ECB000, v24, OS_LOG_TYPE_ERROR, "[%@] Invalid training row. No Adam ID provided.", &v82, 0xCu);
LABEL_20:

    goto LABEL_21;
  }

  v12 = objc_msgSend_allKeys(v6, v10, v11);
  v15 = objc_msgSend_recordID(v5, v13, v14);
  v17 = objc_msgSend_containsObject_(v12, v16, v15);

  if (!v17)
  {
    v24 = objc_msgSend_dictionaryRepresentation(v5, v18, v19);
    v67 = objc_msgSend_recordID(v5, v74, v75);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v76, v24, v67);
    goto LABEL_20;
  }

  v20 = objc_msgSend_recordID(v5, v18, v19);
  v22 = objc_msgSend_objectForKeyedSubscript_(v6, v21, v20);
  v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, @"AdRecords");

  v27 = objc_msgSend_allKeys(v24, v25, v26);
  v30 = objc_msgSend_adamID(v5, v28, v29);
  v32 = objc_msgSend_containsObject_(v27, v31, v30);

  if (!v32)
  {
    v67 = objc_msgSend_dictionaryRepresentation(v5, v33, v34);
    v70 = objc_msgSend_objectForKeyedSubscript_(v67, v77, @"AdRecords");
    v72 = objc_msgSend_adamID(v5, v78, v79);
    objc_msgSend_setObject_forKeyedSubscript_(v24, v80, v70, v72);
    goto LABEL_19;
  }

  if (objc_msgSend_impressed(v5, v33, v34))
  {
    v37 = objc_msgSend_adamID(v5, v35, v36);
    v39 = objc_msgSend_objectForKeyedSubscript_(v24, v38, v37);
    objc_msgSend_setObject_forKeyedSubscript_(v39, v40, MEMORY[0x277CBEC38], @"Impressed");
  }

  if (objc_msgSend_tapped(v5, v35, v36))
  {
    v43 = objc_msgSend_adamID(v5, v41, v42);
    v45 = objc_msgSend_objectForKeyedSubscript_(v24, v44, v43);
    objc_msgSend_setObject_forKeyedSubscript_(v45, v46, MEMORY[0x277CBEC38], @"Tapped");
  }

  if (objc_msgSend_dupe(v5, v41, v42))
  {
    v49 = objc_msgSend_adamID(v5, v47, v48);
    v51 = objc_msgSend_objectForKeyedSubscript_(v24, v50, v49);
    objc_msgSend_setObject_forKeyedSubscript_(v51, v52, MEMORY[0x277CBEC38], @"Dupe");
  }

  if (objc_msgSend_installed(v5, v47, v48))
  {
    v55 = objc_msgSend_adamID(v5, v53, v54);
    v57 = objc_msgSend_objectForKeyedSubscript_(v24, v56, v55);
    objc_msgSend_setObject_forKeyedSubscript_(v57, v58, MEMORY[0x277CBEC38], @"AppInstalled");
  }

  if (objc_msgSend_hasErrorCode(v5, v53, v54))
  {
    objc_msgSend_errorCode(v5, v59, v60);
    if (v63 != 0)
    {
      v64 = MEMORY[0x277CCABB0];
      objc_msgSend_errorCode(v5, v61, v62);
      v67 = objc_msgSend_numberWithDouble_(v64, v65, v66);
      v70 = objc_msgSend_adamID(v5, v68, v69);
      v72 = objc_msgSend_objectForKeyedSubscript_(v24, v71, v70);
      objc_msgSend_setObject_forKeyedSubscript_(v72, v73, v67, @"rerankingErrorCode");
LABEL_19:

      goto LABEL_20;
    }
  }

LABEL_21:

  v81 = *MEMORY[0x277D85DE8];
}

+ (void)trainingRowsFromBiomeEvent:(id)a3 recordID:(id)a4 requiredFeatures:(id)a5 andSaveTo:(id)a6
{
  v9 = a4;
  v10 = a6;
  v12 = objc_msgSend_trainingRowsFromDESRecord_featuresRequired_(APOdmlTrainingSetBuilder, v11, a3, a5);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_260EF0830;
  v16[3] = &unk_279AC6948;
  v13 = v9;
  v17 = v13;
  objc_msgSend_enumerateObjectsUsingBlock_(v12, v14, v16);
  if (v12)
  {
    objc_msgSend_addObjectsFromArray_(v10, v15, v12);
  }
}

+ (void)validateRows:(id)a3 recipe:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CCAB58];
  v7 = a3;
  v10 = objc_msgSend_indexSet(v6, v8, v9);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_260EF09AC;
  v18 = &unk_279AC6970;
  v19 = v5;
  v20 = v10;
  v11 = v10;
  v12 = v5;
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v13, &v15);
  objc_msgSend_removeObjectsAtIndexes_(v7, v14, v11, v15, v16, v17, v18);
}

@end