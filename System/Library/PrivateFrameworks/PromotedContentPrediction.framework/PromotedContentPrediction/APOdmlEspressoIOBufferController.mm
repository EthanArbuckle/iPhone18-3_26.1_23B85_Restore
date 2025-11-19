@interface APOdmlEspressoIOBufferController
- (APOdmlEspressoIOBufferController)initWithRequiredFeatures:(id)a3 recipe:(id)a4;
- (BOOL)_bindBuffer:(id *)a3 espressoNet:(id *)a4 bufferName:(id)a5 bufferType:(int)a6;
- (BOOL)_setError:(id *)a3 errorCode:(int64_t)a4;
- (BOOL)_setErrorPtr:(id *)a3 toError:(id)a4;
- (BOOL)bindBuffersTo:(id *)a3 error:(id *)a4;
- (BOOL)imputeFeature:(id)a3 network:(id *)a4 offsetIndex:(unint64_t)a5 error:(id *)a6;
- (BOOL)setFeatureDataForRow:(id)a3 offsetIndex:(unint64_t)a4 featureName:(id)a5 error:(id *)a6;
- (BOOL)setInputData:(id)a3 batchSize:(unint64_t)a4 network:(id *)a5 reportMissingFeature:(BOOL)a6 error:(id *)a7;
- (vector<unsigned)getEspressoBufferShape:(APOdmlEspressoIOBufferController *)self;
- (void)dealloc;
- (void)reportMissingFeatureError:(id)a3;
@end

@implementation APOdmlEspressoIOBufferController

- (APOdmlEspressoIOBufferController)initWithRequiredFeatures:(id)a3 recipe:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v42 = a4;
  v48.receiver = self;
  v48.super_class = APOdmlEspressoIOBufferController;
  v6 = [(APOdmlEspressoIOBufferController *)&v48 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recipe, a4);
    v7->_pTTR = malloc_type_malloc(0xA8uLL, 0x10800403DA0D3ADuLL);
    v7->_loss = malloc_type_malloc(0xA8uLL, 0x10800403DA0D3ADuLL);
    v7->_isTraining = malloc_type_malloc(0xA8uLL, 0x10800403DA0D3ADuLL);
    v7->_learningRate = malloc_type_malloc(0xA8uLL, 0x10800403DA0D3ADuLL);
    v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v11 = v43;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v44, v49, 16);
    if (v13)
    {
      v14 = *v45;
      do
      {
        v15 = 0;
        do
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v44 + 1) + 8 * v15);
          v17 = malloc_type_malloc(0xA8uLL, 0x10800403DA0D3ADuLL);
          v19 = objc_msgSend_valueWithPointer_(MEMORY[0x277CCAE60], v18, v17);
          objc_msgSend_setObject_forKeyedSubscript_(v10, v20, v19, v16);

          ++v15;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v21, &v44, v49, 16);
      }

      while (v13);
    }

    objc_storeStrong(&v7->_inputBuffers, v10);
    v26 = objc_msgSend_array(MEMORY[0x277CBEB18], v22, v23);
    for (i = 0; ; ++i)
    {
      v28 = objc_msgSend_recipe(v7, v24, v25);
      v31 = objc_msgSend_weightNames(v28, v29, v30);
      v34 = i < objc_msgSend_count(v31, v32, v33);

      if (!v34)
      {
        break;
      }

      v35 = malloc_type_malloc(0xA8uLL, 0x10800403DA0D3ADuLL);
      v37 = objc_msgSend_valueWithPointer_(MEMORY[0x277CCAE60], v36, v35);
      objc_msgSend_addObject_(v26, v38, v37);
    }

    weightBuffers = v7->_weightBuffers;
    v7->_weightBuffers = v26;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)bindBuffersTo:(id *)a3 error:(id *)a4
{
  v92 = a4;
  v5 = 0;
  v101 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v6 = objc_msgSend_recipe(self, a2, a3, v92);
    v9 = objc_msgSend_weightNames(v6, v7, v8);
    v12 = objc_msgSend_count(v9, v10, v11);

    if (v5 >= v12)
    {
      break;
    }

    var0 = a3->var0;
    v16 = *&a3->var1;
    v17 = objc_msgSend_recipe(self, v13, v14);
    v20 = objc_msgSend_weightNames(v17, v18, v19);
    v22 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, v5);
    v23 = v22;
    objc_msgSend_UTF8String(v23, v24, v25);
    v28 = objc_msgSend_weightBuffers(self, v26, v27);
    v30 = objc_msgSend_objectAtIndexedSubscript_(v28, v29, v5);
    objc_msgSend_bufferPointer(v30, v31, v32);
    v33 = espresso_network_bind_buffer_to_global();

    ++v5;
    if (v33)
    {
      v34 = OdmlLogForCategory(0xBuLL);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v100 = v33;
        _os_log_impl(&dword_260ECB000, v34, OS_LOG_TYPE_ERROR, "Failed initialize weights with status: %d", buf, 8u);
      }

      if (v92)
      {
        v36 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v35, @"APODMLDESPluginErrorDomain", 8025, 0);
        v37 = v36;
        result = 0;
        *v92 = v36;
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v39 = objc_msgSend_inputBuffers(self, v13, v14);
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v94, v98, 16);
  if (v43)
  {
    v44 = *v95;
    while (2)
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v95 != v44)
        {
          objc_enumerationMutation(v39);
        }

        v46 = *(*(&v94 + 1) + 8 * i);
        v47 = objc_msgSend_inputBuffers(self, v41, v42);
        v49 = objc_msgSend_objectForKeyedSubscript_(v47, v48, v46);
        v52 = objc_msgSend_bufferPointer(v49, v50, v51);

        if ((objc_msgSend__bindBuffer_espressoNet_bufferName_bufferType_(self, v53, v52, a3, v46, 0) & 1) == 0)
        {
          v89 = objc_msgSend_errorForFeatureNotBinded_(MEMORY[0x277CCA9B8], v41, v46);
          objc_msgSend__setErrorPtr_toError_(self, v90, v92, v89);

          goto LABEL_26;
        }
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v41, &v94, v98, 16);
      if (v43)
      {
        continue;
      }

      break;
    }
  }

  v56 = objc_msgSend_pTTR(self, v54, v55);
  if (objc_msgSend__bindBuffer_espressoNet_bufferName_bufferType_(self, v57, v56, a3, @"pTTR", 1))
  {
    v60 = objc_msgSend_loss(self, v58, v59);
    v63 = objc_msgSend_recipe(self, v61, v62);
    v66 = objc_msgSend_lossName(v63, v64, v65);
    LOBYTE(v60) = objc_msgSend__bindBuffer_espressoNet_bufferName_bufferType_(self, v67, v60, a3, v66, 1);

    if (v60)
    {
      isTraining = objc_msgSend_isTraining(self, v68, v69);
      v73 = objc_msgSend_recipe(self, v71, v72);
      v76 = objc_msgSend_isTrainingName(v73, v74, v75);
      LOBYTE(isTraining) = objc_msgSend__bindBuffer_espressoNet_bufferName_bufferType_(self, v77, isTraining, a3, v76, 2);

      if (isTraining)
      {
        v80 = objc_msgSend_learningRate(self, v78, v79);
        v83 = objc_msgSend_recipe(self, v81, v82);
        v86 = objc_msgSend_learningRateName(v83, v84, v85);
        LOBYTE(v80) = objc_msgSend__bindBuffer_espressoNet_bufferName_bufferType_(self, v87, v80, a3, v86, 2);

        if (v80)
        {
          result = 1;
          goto LABEL_27;
        }

        objc_msgSend__setError_errorCode_(self, v88, v92, 8024);
      }

      else
      {
        objc_msgSend__setError_errorCode_(self, v78, v92, 8023);
      }
    }

    else
    {
      objc_msgSend__setError_errorCode_(self, v68, v92, 8022);
    }
  }

  else
  {
    objc_msgSend__setError_errorCode_(self, v58, v92, 8021);
  }

LABEL_26:
  result = 0;
LABEL_27:
  v91 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_bindBuffer:(id *)a3 espressoNet:(id *)a4 bufferName:(id)a5 bufferType:(int)a6
{
  v8 = a5;
  v9 = v8;
  objc_msgSend_UTF8String(v9, v10, v11);
  if (a6 < 2)
  {
    var0 = a4->var0;
    v16 = *&a4->var1;
    v14 = espresso_network_bind_buffer();
  }

  else if (a6 == 2)
  {
    v12 = a4->var0;
    v13 = *&a4->var1;
    v14 = espresso_network_bind_buffer_to_global();
  }

  else
  {
    v14 = -1;
  }

  v17 = v14 == 0;

  return v17;
}

- (BOOL)setInputData:(id)a3 batchSize:(unint64_t)a4 network:(id *)a5 reportMissingFeature:(BOOL)a6 error:(id *)a7
{
  v37 = a6;
  v45 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v34 = a4;
  if (a4)
  {
    v35 = 0;
    v12 = 0;
    v13 = 0uLL;
    do
    {
      v42 = v13;
      v43 = v13;
      v40 = v13;
      v41 = v13;
      v14 = objc_msgSend_inputBuffers(self, v9, v10, v34);
      obj = v14;
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v40, v44, 16);
      if (v17)
      {
        v18 = *v41;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v41 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v40 + 1) + 8 * i);
            v21 = objc_msgSend_objectAtIndexedSubscript_(v11, v16, v12);
            v24 = objc_msgSend_features(v21, v22, v23);
            v26 = objc_msgSend_objectForKey_(v24, v25, v20);
            v27 = v26 == 0;

            if (v27)
            {
              if (v37)
              {
                objc_msgSend_reportMissingFeatureError_(self, v28, v20);
              }

              if (!objc_msgSend_imputeFeature_network_offsetIndex_error_(self, v28, v20, a5, v12, a7))
              {
LABEL_18:

                goto LABEL_19;
              }
            }

            else
            {
              v29 = objc_msgSend_objectAtIndexedSubscript_(v11, v28, v12);
              v31 = objc_msgSend_setFeatureDataForRow_offsetIndex_featureName_error_(self, v30, v29, v12, v20, a7);

              if ((v31 & 1) == 0)
              {
                goto LABEL_18;
              }
            }
          }

          v14 = obj;
          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v40, v44, 16);
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v35 = ++v12 >= v34;
      v13 = 0uLL;
    }

    while (v12 != v34);
  }

  v35 = 1;
LABEL_19:

  v32 = *MEMORY[0x277D85DE8];
  return v35;
}

- (BOOL)imputeFeature:(id)a3 network:(id *)a4 offsetIndex:(unint64_t)a5 error:(id *)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v12 = objc_msgSend_inputBuffers(self, v10, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v9);
  v17 = objc_msgSend_bufferPointer(v14, v15, v16);

  objc_msgSend_getEspressoBufferShape_(self, v18, v17);
  v19 = *(v29 - 8);
  if (v19)
  {
    v20 = __p;
    v21 = *v17;
    if (v19 == 1)
    {
      *(v21 + 4 * a5) = 2143289344;
    }

    else
    {
      memset_pattern16((v21 + 4 * v19 * a5), &unk_260EFB5F0, 4 * v19);
    }

LABEL_9:
    operator delete(v20);
    goto LABEL_10;
  }

  v22 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v31 = v9;
    _os_log_impl(&dword_260ECB000, v22, OS_LOG_TYPE_ERROR, "Unable to resolve feature name %@", buf, 0xCu);
  }

  v24 = objc_msgSend_errorForFeatureNotFound_(MEMORY[0x277CCA9B8], v23, v9);
  objc_msgSend__setErrorPtr_toError_(self, v25, a6, v24);

  v20 = __p;
  if (__p)
  {
    goto LABEL_9;
  }

LABEL_10:

  v26 = *MEMORY[0x277D85DE8];
  return v19 != 0;
}

- (BOOL)setFeatureDataForRow:(id)a3 offsetIndex:(unint64_t)a4 featureName:(id)a5 error:(id *)a6
{
  v70 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v14 = objc_msgSend_features(v10, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v11);
  v19 = objc_msgSend_count(v16, v17, v18);

  if (v19)
  {
    v22 = objc_msgSend_inputBuffers(self, v20, v21);
    v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, v11);
    v27 = objc_msgSend_bufferPointer(v24, v25, v26);

    objc_msgSend_getEspressoBufferShape_(self, v28, v27);
    v31 = *(v63 - 8);
    v32 = v19 == v31;
    if (v19 == v31)
    {
      if (v19 != 1)
      {
        v50 = 0;
        v51 = 4 * v19 * a4;
        do
        {
          v52 = objc_msgSend_features(v10, v29, v30);
          v54 = objc_msgSend_objectForKeyedSubscript_(v52, v53, v11);
          v56 = objc_msgSend_objectAtIndexedSubscript_(v54, v55, v50);

          objc_msgSend_floatValue(v56, v57, v58);
          *(*v27 + v51 + 4 * v50) = v59;

          ++v50;
        }

        while (v19 != v50);
LABEL_15:
        if (__p)
        {
          operator delete(__p);
        }

        goto LABEL_17;
      }

      v33 = objc_msgSend_features(v10, v29, v30);
      v35 = objc_msgSend_objectForKeyedSubscript_(v33, v34, v11);
      v38 = objc_msgSend_firstObject(v35, v36, v37);

      objc_msgSend_floatValue(v38, v39, v40);
      *(*v27 + 4 * a4) = v41;
    }

    else
    {
      v46 = OdmlLogForCategory(0xBuLL);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v65 = v11;
        v66 = 2048;
        v67 = v19;
        v68 = 2048;
        v69 = v31;
        _os_log_impl(&dword_260ECB000, v46, OS_LOG_TYPE_ERROR, "Device has feature %@ with size %lu but model expects size %lu", buf, 0x20u);
      }

      v38 = objc_msgSend_errorForFeatureShapeMismatch_(MEMORY[0x277CCA9B8], v48, v11);
      objc_msgSend__setErrorPtr_toError_(self, v49, a6, v38);
    }

    goto LABEL_15;
  }

  v42 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v65 = v11;
    _os_log_impl(&dword_260ECB000, v42, OS_LOG_TYPE_ERROR, "Unable to resolve feature name %@", buf, 0xCu);
  }

  v44 = objc_msgSend_errorForFeatureNotFound_(MEMORY[0x277CCA9B8], v43, v11);
  objc_msgSend__setErrorPtr_toError_(self, v45, a6, v44);

  v32 = 0;
LABEL_17:

  v60 = *MEMORY[0x277D85DE8];
  return v32;
}

- (BOOL)_setError:(id *)a3 errorCode:(int64_t)a4
{
  if (a3)
  {
    *a3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], a2, @"APODMLDESPluginErrorDomain", a4, 0);
  }

  return a3 != 0;
}

- (BOOL)_setErrorPtr:(id *)a3 toError:(id)a4
{
  if (a3)
  {
    *a3 = a4;
  }

  return a3 != 0;
}

- (void)reportMissingFeatureError:(id)a3
{
  v13 = a3;
  v4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v3, @"APODMLDESPluginErrorDomain", 8038, 0);
  v7 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6);
  objc_msgSend_setValue_forKey_(v7, v8, v13, @"featureName");
  v11 = objc_msgSend_copy(v7, v9, v10);
  objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsModelTraining, v12, v4, v11);
}

- (void)dealloc
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_pTTR(self, a2, v2);
  free(v4);
  v7 = objc_msgSend_loss(self, v5, v6);
  free(v7);
  isTraining = objc_msgSend_isTraining(self, v8, v9);
  free(isTraining);
  v13 = objc_msgSend_learningRate(self, v11, v12);
  free(v13);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = objc_msgSend_weightBuffers(self, v14, v15);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v32, v36, 16);
  if (v20)
  {
    v21 = *v33;
    do
    {
      v22 = 0;
      do
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = objc_msgSend_bufferPointer(*(*(&v32 + 1) + 8 * v22), v18, v19);
        if (v23)
        {
          free(v23);
        }

        else
        {
          v24 = OdmlLogForCategory(0xBuLL);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_260ECB000, v24, OS_LOG_TYPE_ERROR, "Weight buffer is released too early.", buf, 2u);
          }
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v32, v36, 16);
    }

    while (v20);
  }

  v27 = objc_msgSend_inputBuffers(self, v25, v26);
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v27, v28, &unk_287367660);

  v30.receiver = self;
  v30.super_class = APOdmlEspressoIOBufferController;
  [(APOdmlEspressoIOBufferController *)&v30 dealloc];
  v29 = *MEMORY[0x277D85DE8];
}

- (vector<unsigned)getEspressoBufferShape:(APOdmlEspressoIOBufferController *)self
{
  v7 = *MEMORY[0x277D85DE8];
  espresso_buffer_unpack_tensor_shape();
  result = sub_260ECFE10(retstr, 0);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

@end