@interface APOdmlTrainingSetBuilder
+ (BOOL)_extractFeaturesFromDataBlob:(id)blob featuresRequired:(id)required andSaveTo:(id)to;
+ (id)_gatherFeaturesFromAdRecord:(id)record requiredFeatures:(id)features;
+ (id)classesForDataDict;
+ (id)trainingRowsFromDESRecord:(id)record featuresRequired:(id)required;
+ (id)translateFeatureKeyToDESKey:(id)key;
- (APOdmlTrainingSetBuilder)initWithLocalRecords:(id)records recipe:(id)recipe;
- (BOOL)setError:(id *)error errorCode:(int64_t)code;
- (BOOL)setErrorPtr:(id *)ptr toError:(id)error;
- (id)_combineRows:(id)rows augmentedRows:(id)augmentedRows;
- (id)generateTrainingSet:(id *)set;
- (id)metricsForTrainingRow:(id)row withClientPttr:(id)pttr;
- (id)parseRowsFromRecords:(id)records recordIDs:(id)ds;
- (void)_preprocessAugmentedDESRecords:(id)records andAddMetadataTo:(id)to addRecordIDsTo:(id)dsTo;
- (void)addRequiredFeatures:(id)features;
@end

@implementation APOdmlTrainingSetBuilder

- (APOdmlTrainingSetBuilder)initWithLocalRecords:(id)records recipe:(id)recipe
{
  recordsCopy = records;
  recipeCopy = recipe;
  v19.receiver = self;
  v19.super_class = APOdmlTrainingSetBuilder;
  v11 = [(APOdmlTrainingSetBuilder *)&v19 init];
  if (v11)
  {
    v12 = objc_msgSend_set(MEMORY[0x277CBEB98], v9, v10);
    requiredFeatures = v11->_requiredFeatures;
    v11->_requiredFeatures = v12;

    objc_storeStrong(&v11->_recipe, recipe);
    objc_storeStrong(&v11->_localRecords, records);
    v16 = objc_msgSend_augmentedDESRecords(recipeCopy, v14, v15);
    augmentedRecords = v11->_augmentedRecords;
    v11->_augmentedRecords = v16;
  }

  return v11;
}

+ (id)classesForDataDict
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  return objc_msgSend_setWithObjects_(v2, v9, v3, v4, v5, v6, v7, v8, 0);
}

- (id)generateTrainingSet:(id *)set
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_requiredFeatures(self, a2, set);
  v8 = objc_msgSend_count(v5, v6, v7);

  if (v8)
  {
    v11 = objc_msgSend_recipe(self, v9, v10);
    v14 = objc_msgSend_augmentedDESRecordsRatio(v11, v12, v13);

    v15 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v57) = 0;
      _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_DEFAULT, "Generating Training Set", &v57, 2u);
    }

    v16 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_msgSend_localRecords(self, v17, v18);
      v57 = 138412290;
      v58 = v19;
      _os_log_impl(&dword_260ECB000, v16, OS_LOG_TYPE_DEFAULT, "Local records: %@", &v57, 0xCu);
    }

    v20 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_msgSend_augmentedRecords(self, v21, v22);
      v57 = 138412290;
      v58 = v23;
      _os_log_impl(&dword_260ECB000, v20, OS_LOG_TYPE_DEFAULT, "Augmented records: %@", &v57, 0xCu);
    }

    v24 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v57 = 138412290;
      v58 = v14;
      _os_log_impl(&dword_260ECB000, v24, OS_LOG_TYPE_DEFAULT, "Sampling ratio: %@", &v57, 0xCu);
    }

    v27 = objc_msgSend_localRecords(self, v25, v26);
    if (v27 && (v30 = v27, v31 = objc_msgSend_intValue(v14, v28, v29), v30, v31 == 1))
    {
      v32 = objc_msgSend_localRecords(self, v28, v29);
    }

    else
    {
      v33 = objc_msgSend_array(MEMORY[0x277CBEB18], v28, v29);
      v36 = objc_msgSend_augmentedRecords(self, v34, v35);
      v39 = objc_msgSend_array(MEMORY[0x277CBEB18], v37, v38);
      objc_msgSend__preprocessAugmentedDESRecords_andAddMetadataTo_addRecordIDsTo_(self, v40, v36, v33, v39);
      v43 = objc_msgSend_localRecords(self, v41, v42);
      if (v43 && (v46 = v43, v47 = objc_msgSend_intValue(v14, v44, v45), v46, v47))
      {
        v48 = objc_msgSend_parseRowsFromRecords_recordIDs_(self, v44, v36, v39);
        v51 = objc_msgSend_localRecords(self, v49, v50);
        v32 = objc_msgSend__combineRows_augmentedRows_(self, v52, v51, v48);
      }

      else
      {
        v32 = objc_msgSend_parseRowsFromRecords_recordIDs_(self, v44, v36, v39);
      }
    }
  }

  else
  {
    v53 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v57) = 0;
      _os_log_impl(&dword_260ECB000, v53, OS_LOG_TYPE_DEFAULT, "No features are required by the model.", &v57, 2u);
    }

    objc_msgSend_setError_errorCode_(self, v54, set, 8000);
    v32 = 0;
  }

  v55 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)parseRowsFromRecords:(id)records recordIDs:(id)ds
{
  v62 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  dsCopy = ds;
  v59 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
  if (objc_msgSend_count(recordsCopy, v9, v10))
  {
    v12 = 0;
    v56 = recordsCopy;
    do
    {
      v13 = objc_msgSend_objectAtIndexedSubscript_(recordsCopy, v11, v12);
      v15 = objc_msgSend_objectAtIndexedSubscript_(dsCopy, v14, v12);
      v18 = objc_msgSend_UUIDString(v15, v16, v17);

      objc_msgSend_printDESRecordInSegments_isPlugin_rowID_(APOdmlLogUtility, v19, v13, 1, v18);
      v20 = objc_opt_class();
      v23 = objc_msgSend_requiredFeatures(self, v21, v22);
      v58 = v13;
      v25 = objc_msgSend_trainingRowsFromDESRecord_featuresRequired_(v20, v24, v13, v23);

      if (objc_msgSend_count(v25, v26, v27) && objc_msgSend_count(v25, v28, v29))
      {
        v31 = 0;
        do
        {
          v32 = objc_msgSend_objectAtIndexedSubscript_(v25, v30, v31);
          v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"_%ld", v31);
          v36 = objc_msgSend_stringByAppendingString_(v18, v35, v34);

          objc_msgSend_setRowID_(v32, v37, v36);
          v40 = objc_msgSend_recipe(self, v38, v39);
          isValidRow = objc_msgSend_isValidRow_(v32, v41, v40);

          if (isValidRow)
          {
            objc_msgSend_addObject_(v59, v43, v32);
          }

          ++v31;
        }

        while (v31 < objc_msgSend_count(v25, v44, v45));
      }

      ++v12;
      recordsCopy = v56;
    }

    while (v12 < objc_msgSend_count(v56, v46, v47));
  }

  v48 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v61 = objc_msgSend_count(v59, v49, v50);
    _os_log_impl(&dword_260ECB000, v48, OS_LOG_TYPE_DEFAULT, "Extracted %lu valid training rows from DES record.", buf, 0xCu);
  }

  v53 = objc_msgSend_copy(v59, v51, v52);
  v54 = *MEMORY[0x277D85DE8];

  return v53;
}

+ (id)trainingRowsFromDESRecord:(id)record featuresRequired:(id)required
{
  v50 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  requiredCopy = required;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
  v12 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v10, v11);
  v13 = objc_opt_class();
  v15 = objc_msgSend_objectForKey_(recordCopy, v14, @"OnDeviceFeatures");
  v44 = v12;
  LODWORD(v13) = objc_msgSend__extractFeaturesFromDataBlob_featuresRequired_andSaveTo_(v13, v16, v15, requiredCopy, v12);

  if (v13)
  {
    v43 = v9;
    v42 = recordCopy;
    v18 = objc_msgSend_objectForKey_(recordCopy, v17, @"AdRecords");
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v45, v49, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v46;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v46 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v26 = objc_msgSend_objectForKey_(v18, v21, *(*(&v45 + 1) + 8 * i));
          v27 = objc_opt_class();
          v31 = objc_msgSend__gatherFeaturesFromAdRecord_requiredFeatures_(v27, v28, v26, requiredCopy);
          if (v31)
          {
            v32 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v29, v30);
            objc_msgSend_addEntriesFromDictionary_(v32, v33, v31);
            objc_msgSend_addEntriesFromDictionary_(v32, v34, v44);
            v35 = [APOdmlTrainingRow alloc];
            v37 = objc_msgSend_initWithFeatures_(v35, v36, v32);
            objc_msgSend_addObject_(v43, v38, v37);
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v45, v49, 16);
      }

      while (v23);
    }

    v9 = v43;
    v39 = objc_msgSend_copy(v43, v21, v22);

    recordCopy = v42;
  }

  else
  {
    v39 = 0;
  }

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

- (id)_combineRows:(id)rows augmentedRows:(id)augmentedRows
{
  v129 = *MEMORY[0x277D85DE8];
  rowsCopy = rows;
  augmentedRowsCopy = augmentedRows;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(rowsCopy, v7, &v123, v128, 16);
  v11 = 0.0;
  v12 = 0.0;
  if (v8)
  {
    v13 = v8;
    v14 = *v124;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v124 != v14)
        {
          objc_enumerationMutation(rowsCopy);
        }

        v16 = objc_msgSend_features(*(*(&v123 + 1) + 8 * i), v9, v10);
        v19 = objc_msgSend_recipe(self, v17, v18);
        v22 = objc_msgSend_augmentedDESRecordsTargetKey(v19, v20, v21);
        v24 = objc_msgSend_objectForKey_(v16, v23, v22);
        v27 = objc_msgSend_firstObject(v24, v25, v26);

        if (objc_msgSend_BOOLValue(v27, v28, v29))
        {
          v12 = v12 + 1.0;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(rowsCopy, v9, &v123, v128, 16);
    }

    while (v13);
  }

  v115 = rowsCopy;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v30 = augmentedRowsCopy;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v119, v127, 16);
  if (v32)
  {
    v35 = v32;
    v36 = *v120;
    v11 = 0.0;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v120 != v36)
        {
          objc_enumerationMutation(v30);
        }

        v38 = objc_msgSend_features(*(*(&v119 + 1) + 8 * j), v33, v34);
        v41 = objc_msgSend_recipe(self, v39, v40);
        v44 = objc_msgSend_augmentedDESRecordsTargetKey(v41, v42, v43);
        v46 = objc_msgSend_objectForKey_(v38, v45, v44);
        v49 = objc_msgSend_firstObject(v46, v47, v48);

        if (objc_msgSend_BOOLValue(v49, v50, v51))
        {
          v11 = v11 + 1.0;
        }
      }

      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v119, v127, 16);
    }

    while (v35);
  }

  v53 = objc_msgSend_arrayByAddingObjectsFromArray_(v115, v52, v30);
  v56 = objc_msgSend_recipe(self, v54, v55);
  v59 = objc_msgSend_augmentedDESRecordsTruePercentage(v56, v57, v58);
  objc_msgSend_floatValue(v59, v60, v61);
  v63 = v62;

  v66 = objc_msgSend_count(v115, v64, v65);
  v69 = objc_msgSend_count(v30, v67, v68);
  v116 = objc_msgSend_array(MEMORY[0x277CBEB18], v70, v71);
  v118 = v53;
  v74 = objc_msgSend_count(v53, v72, v73);
  v77 = objc_msgSend_recipe(self, v75, v76);
  v80 = objc_msgSend_augmentedDESRecordsLimit(v77, v78, v79);
  v83 = objc_msgSend_unsignedLongValue(v80, v81, v82);

  if (v74 >= v83)
  {
    v86 = v83;
  }

  else
  {
    v86 = v74;
  }

  if (v86)
  {
    v87 = v86;
    v88 = 0;
    v89 = (v12 + v11) / v63;
    v90 = (v69 + v66) - (v12 + v11);
    if (v89 >= (v90 / (1.0 - v63)))
    {
      v89 = v90 / (1.0 - v63);
    }

    v91 = (v63 * v89) / (v12 + v11);
    v92 = (((1.0 - v63) * v89) / v90);
    v93 = v91;
    while (1)
    {
      v94 = objc_msgSend_objectAtIndexedSubscript_(v118, v84, v88);
      v95 = drand48();
      v98 = objc_msgSend_features(v94, v96, v97);
      v101 = objc_msgSend_recipe(self, v99, v100);
      v104 = objc_msgSend_augmentedDESRecordsTargetKey(v101, v102, v103);
      v106 = objc_msgSend_objectForKey_(v98, v105, v104);
      v109 = objc_msgSend_firstObject(v106, v107, v108);

      if (!v109)
      {
        goto LABEL_31;
      }

      if (objc_msgSend_BOOLValue(v109, v110, v111))
      {
        break;
      }

      if (v95 <= v92)
      {
        goto LABEL_31;
      }

LABEL_32:

      if (v87 == ++v88)
      {
        goto LABEL_33;
      }
    }

    if (v95 > v93)
    {
      goto LABEL_32;
    }

LABEL_31:
    objc_msgSend_addObject_(v116, v110, v94);
    goto LABEL_32;
  }

LABEL_33:
  v112 = objc_msgSend_copy(v116, v84, v85);

  v113 = *MEMORY[0x277D85DE8];

  return v112;
}

- (void)_preprocessAugmentedDESRecords:(id)records andAddMetadataTo:(id)to addRecordIDsTo:(id)dsTo
{
  v28 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  toCopy = to;
  dsToCopy = dsTo;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(recordsCopy, v10, &v23, v27, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v24;
    while (1)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(recordsCopy);
      }

      v16 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v12, v13);
      objc_msgSend_addObject_(dsToCopy, v17, v16);
      v20 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v18, v19);
      objc_msgSend_addObject_(toCopy, v21, v20);

      if (!--v14)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(recordsCopy, v12, &v23, v27, 16);
        if (!v14)
        {
          break;
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)addRequiredFeatures:(id)features
{
  v5 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], a2, features);
  objc_msgSend_setRequiredFeatures_(self, v4, v5);
}

+ (id)_gatherFeaturesFromAdRecord:(id)record requiredFeatures:(id)features
{
  recordCopy = record;
  featuresCopy = features;
  v8 = objc_msgSend_objectForKey_(recordCopy, v7, @"Tapped");
  v10 = objc_msgSend_objectForKey_(recordCopy, v9, @"Impressed");
  if ((objc_msgSend_BOOLValue(v8, v11, v12) & 1) != 0 || objc_msgSend_BOOLValue(v10, v13, v14))
  {
    v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14);
    v16 = objc_opt_class();
    if (objc_msgSend__extractFeaturesFromDataBlob_featuresRequired_andSaveTo_(v16, v17, recordCopy, featuresCopy, v15) && (v18 = objc_opt_class(), objc_msgSend_objectForKey_(recordCopy, v19, @"ServerResponse"), v20 = objc_claimAutoreleasedReturnValue(), LODWORD(v18) = objc_msgSend__extractFeaturesFromDataBlob_featuresRequired_andSaveTo_(v18, v21, v20, featuresCopy, v15), v20, v18))
    {
      v24 = objc_msgSend_copy(v15, v22, v23);
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (BOOL)_extractFeaturesFromDataBlob:(id)blob featuresRequired:(id)required andSaveTo:(id)to
{
  v81 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  requiredCopy = required;
  toCopy = to;
  v13 = objc_msgSend_allKeys(blobCopy, v11, v12);
  v16 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v14, v15);
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_260ED6BC4;
  v71[3] = &unk_279AC6278;
  selfCopy = self;
  v17 = v13;
  v72 = v17;
  v18 = v16;
  v73 = v18;
  objc_msgSend_enumerateObjectsUsingBlock_(requiredCopy, v19, v71);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v22 = objc_msgSend_allKeys(v18, v20, v21);
  v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v67, v80, 16);
  if (!v66)
  {
    v51 = 1;
    goto LABEL_27;
  }

  selfCopy2 = self;
  v62 = v17;
  v63 = requiredCopy;
  v64 = v18;
  v25 = *v68;
  v65 = v22;
LABEL_3:
  v26 = 0;
  while (1)
  {
    if (*v68 != v25)
    {
      objc_enumerationMutation(v22);
    }

    v27 = *(*(&v67 + 1) + 8 * v26);
    v28 = objc_msgSend_objectForKeyedSubscript_(v18, v24, v27, selfCopy2);
    v30 = objc_msgSend_objectForKeyedSubscript_(blobCopy, v29, v28);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v33 = objc_msgSend_arrayOfNumbers(v30, v31, v32);
LABEL_10:
    v36 = v33;
    objc_msgSend_setObject_forKeyedSubscript_(toCopy, v34, v33, v27);
LABEL_11:

LABEL_12:
    if (v66 == ++v26)
    {
      v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v67, v80, 16);
      v66 = v50;
      if (!v50)
      {
        v51 = 1;
        goto LABEL_25;
      }

      goto LABEL_3;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v79 = v30;
    v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, &v79, 1);
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setObject_forKeyedSubscript_(toCopy, v49, v30, v27);
    }

    else
    {
      objc_msgSend_setValue_forKey_(toCopy, v49, 0, v27);
    }

    goto LABEL_12;
  }

  v36 = v30;
  if (objc_msgSend_type(v36, v37, v38) == 5)
  {
    objc_msgSend_multiArrayValue(v36, v39, v40);
    v42 = v41 = blobCopy;
    objc_msgSend_arrayFromMultiarray(v42, v43, v44);
    v45 = v25;
    v47 = v46 = toCopy;
    objc_msgSend_setObject_forKeyedSubscript_(v46, v48, v47, v27);

    toCopy = v46;
    v25 = v45;

    blobCopy = v41;
    v18 = v64;
    v22 = v65;
    goto LABEL_11;
  }

  v52 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    v53 = v22;
    v54 = objc_opt_class();
    v55 = v54;
    v58 = objc_msgSend_type(v36, v56, v57);
    *buf = 138412546;
    v76 = v54;
    v22 = v53;
    v77 = 2048;
    v78 = v58;
    _os_log_impl(&dword_260ECB000, v52, OS_LOG_TYPE_ERROR, "[%@]: MLFeatureValue type %ld is not supported.", buf, 0x16u);
  }

  v51 = 0;
LABEL_25:
  v17 = v62;
  requiredCopy = v63;
LABEL_27:

  v59 = *MEMORY[0x277D85DE8];
  return v51;
}

+ (id)translateFeatureKeyToDESKey:(id)key
{
  keyCopy = key;
  if (objc_msgSend_isEqualToString_(keyCopy, v4, @"AppDownloadVector"))
  {
    objc_msgSend_keyForTypes_placementType_assetManagerType_(APOdmlPFLUtilities, v5, @"appDownloadVector", 0, 0);
    v8 = LABEL_8:;
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(keyCopy, v5, @"AppInstalledVector"))
  {
    objc_msgSend_keyForTypes_placementType_assetManagerType_(APOdmlPFLUtilities, v6, @"installedAppVector", 0, 0);
    goto LABEL_8;
  }

  if ((objc_msgSend_isEqualToString_(keyCopy, v6, @"AppUsageVector") & 1) != 0 || objc_msgSend_isEqualToString_(keyCopy, v7, @"appUsageVector"))
  {
    objc_msgSend_keyForTypes_placementType_assetManagerType_(APOdmlPFLUtilities, v7, @"appUsageVector", 0, 0);
    goto LABEL_8;
  }

  if (objc_msgSend_isEqualToString_(keyCopy, v7, @"DupeFirstOrganic"))
  {
    v12 = kAPOdmlIsDupeKey;
LABEL_22:
    v8 = *v12;
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(keyCopy, v11, @"Installed"))
  {
    v12 = kAPOdmlAppInstalledKey;
    goto LABEL_22;
  }

  if (objc_msgSend_isEqualToString_(keyCopy, v13, @"Impressed"))
  {
    v12 = kAPOdmlImpressedKey;
    goto LABEL_22;
  }

  if ((objc_msgSend_isEqualToString_(keyCopy, v14, @"Tapped") & 1) != 0 || (objc_msgSend_isEqualToString_(keyCopy, v15, @"Tap") & 1) != 0 || objc_msgSend_isEqualToString_(keyCopy, v16, @"label_input_0"))
  {
    v12 = kAPOdmlTappedKey;
    goto LABEL_22;
  }

  v8 = keyCopy;
LABEL_9:
  v9 = v8;

  return v9;
}

- (id)metricsForTrainingRow:(id)row withClientPttr:(id)pttr
{
  v5 = MEMORY[0x277CBEB38];
  pttrCopy = pttr;
  rowCopy = row;
  v10 = objc_msgSend_dictionary(v5, v8, v9);
  v13 = objc_msgSend_features(rowCopy, v11, v12);

  v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"Tap");
  v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v18, v17, @"tap");

  objc_msgSend_setObject_forKeyedSubscript_(v10, v19, MEMORY[0x277CBEC38], @"impression");
  objc_msgSend_setObject_forKeyedSubscript_(v10, v20, pttrCopy, @"on-device_pTTR");

  v23 = objc_msgSend_copy(v10, v21, v22);

  return v23;
}

- (BOOL)setError:(id *)error errorCode:(int64_t)code
{
  if (error)
  {
    *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], a2, @"APODMLDESPluginErrorDomain", code, 0);
  }

  return error != 0;
}

- (BOOL)setErrorPtr:(id *)ptr toError:(id)error
{
  if (ptr)
  {
    *ptr = error;
  }

  return ptr != 0;
}

@end