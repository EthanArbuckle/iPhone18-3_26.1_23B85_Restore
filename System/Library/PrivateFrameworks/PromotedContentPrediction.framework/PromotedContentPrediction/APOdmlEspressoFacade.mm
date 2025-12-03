@interface APOdmlEspressoFacade
- (APOdmlEspressoFacade)initWithEspressoNetURL:(id)l recipe:(id)recipe error:(id *)error;
- (BOOL)_loadEspressoNet:(const char *)net recipe:(id)recipe error:(id *)error;
- (BOOL)_prepareForTraining:(id *)training;
- (BOOL)_setErrorPtr:(id *)ptr toError:(id)error;
- (BOOL)changeEspressoBatchSize:(unint64_t)size error:(id *)error;
- (BOOL)finalizeEspressoPipeline:(id *)pipeline;
- (BOOL)setError:(id *)error errorCode:(int64_t)code;
- (BOOL)trainWithTrainingSet:(id)set error:(id *)error;
- (float)_retrieveLossValue;
- (float)accuracyInBatchWithError:(id *)error;
- (id)_extractRequiredFeatures;
- (id)computeAccuracyAndLoss:(id)loss error:(id *)error;
- (id)computeClientPttr:(id)pttr error:(id *)error;
- (id)retrieveWeights2D:(id *)d;
- (id)retrieveWeights:(id *)weights;
- (id)setEspressoNetworkFunction;
- (int)_executeEspressoPlan;
- (unint64_t)numWeightsInBuffer:(id *)buffer;
- (vector<unsigned)_getEspressoBlobShape:(APOdmlEspressoFacade *)self;
- (void)_checkModelOutput:(id)output;
- (void)_preTrainingSetup;
- (void)dealloc;
@end

@implementation APOdmlEspressoFacade

- (APOdmlEspressoFacade)initWithEspressoNetURL:(id)l recipe:(id)recipe error:(id *)error
{
  lCopy = l;
  recipeCopy = recipe;
  v26.receiver = self;
  v26.super_class = APOdmlEspressoFacade;
  v10 = [(APOdmlEspressoFacade *)&v26 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_recipe, recipe);
    v14 = objc_msgSend_relativePath(lCopy, v12, v13);
    v15 = v14;
    v18 = objc_msgSend_UTF8String(v15, v16, v17);

    if ((objc_msgSend__loadEspressoNet_recipe_error_(v11, v19, v18, recipeCopy, error) & 1) == 0)
    {
      v24 = 0;
      goto LABEL_6;
    }

    v22 = objc_msgSend__extractRequiredFeatures(v11, v20, v21);
    requiredFeatures = v11->_requiredFeatures;
    v11->_requiredFeatures = v22;
  }

  v24 = v11;
LABEL_6:

  return v24;
}

- (BOOL)_loadEspressoNet:(const char *)net recipe:(id)recipe error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  espresso_create_context();
  plan = espresso_create_plan();
  v9 = malloc_type_malloc(0x10uLL, 0x10800409227ACB4uLL);
  v10 = espresso_plan_add_network();
  if (v10)
  {
    v11 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v32 = 67109120;
      LODWORD(v33) = v10;
      _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "Failed to add network to plan with status: %d", &v32, 8u);
    }

    v12 = &kAPODMLDESPluginFailedToAddNetworkToPlan;
LABEL_9:

    objc_msgSend_setError_errorCode_(self, v18, error, *v12);
    goto LABEL_10;
  }

  var0 = v9->var0;
  v14 = *&v9->var1;
  v17 = espresso_network_declare_output();
  if (v17)
  {
    v11 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v32 = 136315394;
      v33 = "pTTR";
      v34 = 1024;
      v35 = v17;
      _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "Failed to declare output %s with status: %d", &v32, 0x12u);
    }

    v12 = &kAPODMLDESPluginFailedToDeclarePTTROutput;
    goto LABEL_9;
  }

  v22 = objc_msgSend_lossName(recipeCopy, v15, v16);
  v23 = v22;
  v26 = objc_msgSend_UTF8String(v23, v24, v25);

  v27 = v9->var0;
  v28 = *&v9->var1;
  v29 = espresso_network_declare_output();
  if (!v29)
  {
    self->_espressoNet = v9;
    self->_espressoPlan = plan;
    v19 = 1;
    goto LABEL_11;
  }

  v30 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v32 = 136315394;
    v33 = v26;
    v34 = 1024;
    v35 = v29;
    _os_log_impl(&dword_260ECB000, v30, OS_LOG_TYPE_ERROR, "Failed to declare output %s with status: %d", &v32, 0x12u);
  }

  objc_msgSend_setError_errorCode_(self, v31, error, 8015);
LABEL_10:
  v19 = 0;
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)_extractRequiredFeatures
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  for (i = 0; ; ++i)
  {
    v8 = objc_msgSend_espressoNet(self, v4, v5);
    v10 = *v8;
    v9 = v8[1];
    input_blob_name = espresso_get_input_blob_name();
    if (!input_blob_name)
    {
      break;
    }

    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, input_blob_name);
    objc_msgSend_addObject_(v6, v14, v13);
  }

  v15 = objc_msgSend_copy(v6, v11, 0);

  return v15;
}

- (BOOL)changeEspressoBatchSize:(unint64_t)size error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  objc_msgSend_setFinalBatchSize_(self, a2, size);
  v9 = objc_msgSend_requiredFeatures(self, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);
  sub_260EDCE2C(v44, v12);
  sub_260EDCE2C(v43, v12);
  sub_260EDCE2C(v42, v12);
  sub_260EDCE2C(v41, v12);
  sub_260EDCE2C(v40, v12);
  sub_260EDCE2C(v39, v12);
  v15 = malloc_type_malloc(8 * v12, 0x10040436913F5uLL);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v17 = objc_msgSend_objectAtIndexedSubscript_(v9, v13, i);
      v18 = v17;
      v15[i] = objc_msgSend_UTF8String(v17, v19, v20);
      objc_msgSend__getEspressoBlobShape_(self, v21, v17);
      v22 = *buf;
      **buf = size;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v34 = 0;
      v35 = 0;
      __p = 0;
      sub_260EDCF28(&__p, v22, v46, (v46 - v22) >> 3);
      nd_shape_to_5d_shape(&__p, &v36);
      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }

      *(v44[0] + i) = v36;
      *(v43[0] + i) = HIDWORD(v36);
      *(v42[0] + i) = v37;
      *(v41[0] + i) = HIDWORD(v37);
      *(v40[0] + i) = v38;
      *(v39[0] + i) = HIDWORD(v38);
      if (*buf)
      {
        v46 = *buf;
        operator delete(*buf);
      }
    }
  }

  v23 = objc_msgSend_espressoNet(self, v13, v14);
  v25 = *v23;
  v24 = v23[1];
  v31 = v40[0];
  v32 = v39[0];
  v26 = espresso_network_change_input_blob_shapes_seq_rank();
  free(v15);
  if (v26)
  {
    v27 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v26;
      _os_log_impl(&dword_260ECB000, v27, OS_LOG_TYPE_ERROR, "Failed to change input shape with status: %d", buf, 8u);
    }

    objc_msgSend_setError_errorCode_(self, v28, error, 8016, v31, v32);
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }

  if (v43[0])
  {
    v43[1] = v43[0];
    operator delete(v43[0]);
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v26 == 0;
}

- (vector<unsigned)_getEspressoBlobShape:(APOdmlEspressoFacade *)self
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v9 = objc_msgSend_espressoNet(self, v7, v8);
  v10 = *v9;
  v11 = v9[1];
  v12 = v6;
  objc_msgSend_UTF8String(v12, v13, v14);
  espresso_network_query_blob_shape();
  sub_260ECFE10(retstr, 0);

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)finalizeEspressoPipeline:(id *)pipeline
{
  v13 = *MEMORY[0x277D85DE8];
  objc_msgSend_espressoPlan(self, a2, pipeline);
  v5 = espresso_plan_build();
  if (v5)
  {
    v6 = v5;
    v7 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = v6;
      _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_ERROR, "Build plan failed with status: %d", v12, 8u);
    }

    objc_msgSend_setError_errorCode_(self, v8, pipeline, 8016);
    v9 = *MEMORY[0x277D85DE8];
    return 0;
  }

  else
  {
    v11 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2821F9670](self, sel__prepareForTraining_, pipeline);
  }
}

- (BOOL)_prepareForTraining:(id *)training
{
  v5 = [APOdmlEspressoIOBufferController alloc];
  v7 = objc_msgSend_initWithRequiredFeatures_recipe_(v5, v6, self->_requiredFeatures, self->_recipe);
  bufferController = self->_bufferController;
  self->_bufferController = v7;

  v10 = objc_msgSend_bindBuffersTo_error_(self->_bufferController, v9, self->_espressoNet, training);
  v13 = objc_msgSend_setEspressoNetworkFunction(self, v11, v12);
  objc_msgSend__setErrorPtr_toError_(self, v14, training, v13);
  if (v13)
  {
    v10 = 0;
  }

  return v10;
}

- (id)setEspressoNetworkFunction
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_espressoNet(self, a2, v2);
  v5 = *v4;
  v6 = v4[1];
  v9 = objc_msgSend_recipe(self, v7, v8);
  v12 = objc_msgSend_functionInitName(v9, v10, v11);
  v13 = v12;
  objc_msgSend_UTF8String(v13, v14, v15);
  v16 = espresso_network_set_function_name();

  if (v16)
  {
    v19 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v34 = 67109120;
      v35 = v16;
      _os_log_impl(&dword_260ECB000, v19, OS_LOG_TYPE_ERROR, "Failed to set subnetwork function name with status: %d", &v34, 8u);
    }

    v20 = &kAPODMLDESPluginSubnetworkNameFail;
LABEL_13:

    v31 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v30, @"APODMLDESPluginErrorDomain", *v20, 0);
    goto LABEL_14;
  }

  objc_msgSend_espressoPlan(self, v17, v18);
  v21 = espresso_plan_execute_sync();
  if (v21)
  {
    v24 = v21;
    v19 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v34 = 67109120;
      v35 = v24;
      _os_log_impl(&dword_260ECB000, v19, OS_LOG_TYPE_ERROR, "Failed to execute sync with status: %d", &v34, 8u);
    }

    v20 = &kAPODMLDESPluginExecuteSyncFail;
    goto LABEL_13;
  }

  v25 = objc_msgSend_espressoNet(self, v22, v23);
  v26 = *v25;
  v27 = v25[1];
  get_main_function_name();
  v28 = espresso_network_set_function_name();
  if (v28)
  {
    v29 = v28;
    v19 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v34 = 67109120;
      v35 = v29;
      _os_log_impl(&dword_260ECB000, v19, OS_LOG_TYPE_ERROR, "Failed to set main function name with status: %d", &v34, 8u);
    }

    v20 = &kAPODMLDESPluginMainFunctionNameFail;
    goto LABEL_13;
  }

  v31 = 0;
LABEL_14:
  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)retrieveWeights:(id *)weights
{
  v4 = 0;
  v5 = 0;
  v102 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v6 = objc_msgSend_recipe(self, a2, weights);
    v9 = objc_msgSend_weightNames(v6, v7, v8);
    v12 = v4 < objc_msgSend_count(v9, v10, v11);

    if (!v12)
    {
      break;
    }

    v15 = objc_msgSend_recipe(self, v13, v14);
    v18 = objc_msgSend_weightNames(v15, v16, v17);
    v20 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, v4);
    v21 = v20;
    v24 = objc_msgSend_UTF8String(v20, v22, v23);
    v25 = strlen(v24);
    if (v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_260EDCE14();
    }

    v26 = v25;
    if (v25 >= 0x17)
    {
      operator new();
    }

    v99 = v25;
    if (v25)
    {
      memmove(__dst, v24, v25);
    }

    *(__dst + v26) = 0;

    v27 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_msgSend_bufferController(self, v28, v29);
      v33 = objc_msgSend_weightBuffers(v30, v31, v32);
      v35 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, v4);
      v38 = objc_msgSend_bufferPointer(v35, v36, v37);
      print_espresso_buffer(__dst, v38, &__p);
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v101 = p_p;
      _os_log_impl(&dword_260ECB000, v27, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v42 = objc_msgSend_bufferController(self, v40, v41);
    v45 = objc_msgSend_weightBuffers(v42, v43, v44);
    v47 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, v4);
    v50 = objc_msgSend_bufferPointer(v47, v48, v49);
    v52 = objc_msgSend_numWeightsInBuffer_(self, v51, v50);

    if (v99 < 0)
    {
      operator delete(__dst[0]);
    }

    v5 += v52;
    ++v4;
  }

  if (v5)
  {
    v53 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14);
    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
    sub_260EDCFA4(__dst, v5);
    for (i = 0; ; ++i)
    {
      v57 = objc_msgSend_recipe(self, v54, v55);
      v60 = objc_msgSend_weightNames(v57, v58, v59);
      v63 = i < objc_msgSend_count(v60, v61, v62);

      if (!v63)
      {
        break;
      }

      v66 = objc_msgSend_bufferController(self, v64, v65);
      v69 = objc_msgSend_weightBuffers(v66, v67, v68);
      v71 = objc_msgSend_objectAtIndexedSubscript_(v69, v70, i);
      v74 = objc_msgSend_bufferPointer(v71, v72, v73);
      v76 = objc_msgSend_numWeightsInBuffer_(self, v75, v74);

      if (v76)
      {
        for (j = 0; j != v76; ++j)
        {
          v78 = MEMORY[0x277CCABB0];
          v79 = objc_msgSend_bufferController(self, v54, v55);
          v82 = objc_msgSend_weightBuffers(v79, v80, v81);
          v84 = objc_msgSend_objectAtIndexedSubscript_(v82, v83, i);
          LODWORD(v87) = *(*objc_msgSend_bufferPointer(v84, v85, v86) + 4 * j);
          v90 = objc_msgSend_numberWithFloat_(v78, v88, v89, v87);
          objc_msgSend_addObject_(v53, v91, v90);
        }
      }
    }

    if (__dst[0])
    {
      __dst[1] = __dst[0];
      operator delete(__dst[0]);
    }
  }

  else
  {
    v92 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__dst[0]) = 0;
      _os_log_impl(&dword_260ECB000, v92, OS_LOG_TYPE_ERROR, "Failed to find any weight.", __dst, 2u);
    }

    objc_msgSend_setError_errorCode_(self, v93, weights, 8029);
    v53 = 0;
  }

  v94 = *MEMORY[0x277D85DE8];

  return v53;
}

- (id)retrieveWeights2D:(id *)d
{
  v48 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, d);
  for (i = 0; ; ++i)
  {
    v7 = objc_msgSend_recipe(self, v4, v5);
    v10 = objc_msgSend_weightNames(v7, v8, v9);
    v13 = objc_msgSend_count(v10, v11, v12);

    if (i >= v13)
    {
      break;
    }

    v16 = objc_msgSend_bufferController(self, v14, v15);
    v19 = objc_msgSend_weightBuffers(v16, v17, v18);
    v21 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, i);
    v24 = objc_msgSend_bufferPointer(v21, v22, v23);
    v26 = objc_msgSend_numWeightsInBuffer_(self, v25, v24);

    v31 = objc_msgSend_array(MEMORY[0x277CBEB18], v27, v28);
    if (v26)
    {
      for (j = 0; j != v26; ++j)
      {
        v33 = MEMORY[0x277CCABB0];
        v34 = objc_msgSend_bufferController(self, v29, v30);
        v37 = objc_msgSend_weightBuffers(v34, v35, v36);
        v39 = objc_msgSend_objectAtIndexedSubscript_(v37, v38, i);
        LODWORD(v42) = *(*objc_msgSend_bufferPointer(v39, v40, v41) + 4 * j);
        v45 = objc_msgSend_numberWithFloat_(v33, v43, v44, v42);
        objc_msgSend_addObject_(v31, v46, v45);
      }
    }

    objc_msgSend_addObject_(v48, v29, v31);
  }

  return v48;
}

- (unint64_t)numWeightsInBuffer:(id *)buffer
{
  v4 = objc_msgSend_bufferController(self, a2, buffer);
  v6 = v4;
  if (v4)
  {
    objc_msgSend_getEspressoBufferShape_(v4, v5, buffer);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v7 = v15 - v14;
  if (v15 != v14)
  {
    v8 = *v14;
    if ((v7 >> 3) >= 2 && *(v15 - 1) >= 2)
    {
      v9 = (v7 >> 3) - 1;
      v10 = v14 + 1;
      do
      {
        v12 = *v10++;
        v11 = v12;
        if (v12 <= 1)
        {
          v11 = 1;
        }

        v8 *= v11;
        --v9;
      }

      while (v9);
    }

    goto LABEL_13;
  }

  v8 = 0;
  if (v15)
  {
LABEL_13:
    operator delete(v14);
  }

  return v8;
}

- (id)computeClientPttr:(id)pttr error:(id *)error
{
  pttrCopy = pttr;
  v9 = objc_msgSend_bufferController(self, v7, v8);
  **objc_msgSend_isTraining(v9, v10, v11) = 0;

  v14 = objc_msgSend_bufferController(self, v12, v13);
  v17 = objc_msgSend_copy(pttrCopy, v15, v16);
  v20 = objc_msgSend_espressoNet(self, v18, v19);
  LOBYTE(error) = objc_msgSend_setInputData_batchSize_network_reportMissingFeature_error_(v14, v21, v17, 1, v20, 0, error);

  if (error)
  {
    objc_msgSend_espressoPlan(self, v22, v23);
    espresso_plan_execute_sync();
    v26 = objc_msgSend_bufferController(self, v24, v25);
    v29 = *objc_msgSend_pTTR(v26, v27, v28);

    LODWORD(v30) = *v29;
    v33 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v31, v32, v30);
    objc_msgSend__checkModelOutput_(self, v34, v33);
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (void)_checkModelOutput:(id)output
{
  v79 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  v72 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v4, v5);
  objc_msgSend_setValue_forKey_(v72, v6, @"modelOutput", @"featureName");
  if (outputCopy)
  {
    v9 = objc_msgSend_stringValue(outputCopy, v7, v8);
    objc_msgSend_setValue_forKey_(v72, v10, v9, @"featureValue");

    v13 = objc_msgSend_recipe(self, v11, v12);
    v69 = objc_msgSend_rangeBoundaryForOutput_(v13, v14, 0);

    v17 = objc_msgSend_recipe(self, v15, v16);
    v71 = objc_msgSend_rangeBoundaryForOutput_(v17, v18, 1);

    if (v69)
    {
      objc_msgSend_floatValue(outputCopy, v19, v20);
      v22 = v21;
      objc_msgSend_floatValue(v69, v23, v24);
      if (v22 < v25)
      {
        v26 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v19, @"APODMLDESPluginErrorDomain", 8040, 0);
        v29 = objc_msgSend_copy(v72, v27, v28);
        objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsModelTraining, v30, v26, v29);
      }
    }

    if (v71)
    {
      objc_msgSend_floatValue(outputCopy, v19, v20);
      v32 = v31;
      objc_msgSend_floatValue(v71, v33, v34);
      if (v32 > v35)
      {
        v36 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v19, @"APODMLDESPluginErrorDomain", 8039, 0);
        v39 = objc_msgSend_copy(v72, v37, v38);
        objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsModelTraining, v40, v36, v39);
      }
    }

    v41 = objc_msgSend_recipe(self, v19, v20, v69);
    v44 = objc_msgSend_sentinelValuesForOutput(v41, v42, v43);

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v45 = v44;
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v74, v78, 16);
    if (v49)
    {
      v50 = *v75;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v75 != v50)
          {
            objc_enumerationMutation(v45);
          }

          v52 = *(*(&v74 + 1) + 8 * i);
          objc_msgSend_floatValue(outputCopy, v47, v48);
          v54 = v53;
          objc_msgSend_floatValue(v52, v55, v56);
          if (v54 == v57)
          {
            v58 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v47, @"APODMLDESPluginErrorDomain", 8041, 0);
            v61 = objc_msgSend_copy(v72, v59, v60);
            objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsModelTraining, v62, v58, v61);
          }
        }

        v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v47, &v74, v78, 16);
      }

      while (v49);
    }
  }

  else
  {
    v63 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v7, @"APODMLDESPluginErrorDomain", 8041, 0);
    v66 = objc_msgSend_copy(v72, v64, v65);
    objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsModelTraining, v67, v63, v66);
  }

  v68 = *MEMORY[0x277D85DE8];
}

- (id)computeAccuracyAndLoss:(id)loss error:(id *)error
{
  v63[2] = *MEMORY[0x277D85DE8];
  lossCopy = loss;
  v9 = objc_msgSend_bufferController(self, v7, v8);
  **objc_msgSend_isTraining(v9, v10, v11) = 0;

  v14 = objc_msgSend_finalBatchSize(self, v12, v13);
  v17 = objc_msgSend_count(lossCopy, v15, v16);
  v21 = 0.0;
  v22 = 0.0;
  v62 = v17 / v14;
  if (v14 > v17)
  {
LABEL_12:
    *&v20 = v22 / v62;
    v52 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v18, v19, v20);
    v63[0] = v52;
    *&v53 = v21 / v62;
    v56 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v54, v55, v53);
    v63[1] = v56;
    v58 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v57, v63, 2);
  }

  else
  {
    v23 = 0;
    v24 = 0;
    if (v14 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v14;
    }

    v61 = v25;
    while (1)
    {
      v27 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19);
      v28 = v23;
      v29 = v61;
      do
      {
        v30 = objc_msgSend_objectAtIndexedSubscript_(lossCopy, v26, v28);
        objc_msgSend_addObject_(v27, v31, v30);

        ++v28;
        --v29;
      }

      while (v29);
      v33 = objc_msgSend_bufferController(self, v26, v32);
      v36 = objc_msgSend_copy(v27, v34, v35);
      v39 = objc_msgSend_espressoNet(self, v37, v38);
      v41 = objc_msgSend_setInputData_batchSize_network_reportMissingFeature_error_(v33, v40, v36, v14, v39, 0, error);

      if ((v41 & 1) == 0)
      {
        break;
      }

      objc_msgSend_espressoPlan(self, v42, v43);
      espresso_plan_execute_sync();
      objc_msgSend_accuracyInBatchWithError_(self, v44, error);
      v48 = v47;
      if (error)
      {
        if (*error)
        {
          break;
        }
      }

      v49 = objc_msgSend_bufferController(self, v45, v46);
      v22 = v22 + v48;
      v21 = v21 + **objc_msgSend_loss(v49, v50, v51);

      ++v24;
      v23 += v14;
      if (v24 >= v62)
      {
        goto LABEL_12;
      }
    }

    v58 = 0;
  }

  v59 = *MEMORY[0x277D85DE8];

  return v58;
}

- (float)accuracyInBatchWithError:(id *)error
{
  v5 = objc_msgSend_bufferController(self, a2, error);
  v8 = objc_msgSend_bufferController(self, v6, v7);
  v11 = objc_msgSend_pTTR(v8, v9, v10);
  if (v5)
  {
    objc_msgSend_getEspressoBufferShape_(v5, v12, v11);
  }

  else
  {
    __p = 0;
    v52 = 0;
  }

  v15 = objc_msgSend_bufferController(self, v13, v14);
  v18 = objc_msgSend_inputBuffers(v15, v16, v17);
  v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"Tapped");

  if (!v20)
  {
    v23 = objc_msgSend_bufferController(self, v21, v22);
    v26 = objc_msgSend_inputBuffers(v23, v24, v25);
    v20 = objc_msgSend_objectForKeyedSubscript_(v26, v27, @"Tap");
  }

  v30 = objc_msgSend_bufferPointer(v20, v21, v22);
  if (v30)
  {
    v31 = 0.0;
    if ((v52 - __p) >= 9)
    {
      v32 = *__p;
      if (*__p)
      {
        v33 = 0;
        v34 = 0;
        v35 = __p[1];
        do
        {
          v36 = objc_msgSend_bufferController(self, v28, v29);
          v39 = (*objc_msgSend_pTTR(v36, v37, v38) + 4 * v33 * v35);

          if (v35 >= 2)
          {
            v41 = v39 + 1;
            v42 = *v39;
            v43 = 4 * v35 - 4;
            v40 = v39;
            v44 = v39 + 1;
            do
            {
              v45 = *v44++;
              v46 = v45;
              if (v42 < v45)
              {
                v42 = v46;
                v40 = v41;
              }

              v41 = v44;
              v43 -= 4;
            }

            while (v43);
          }

          else
          {
            v40 = v39;
          }

          if (((v40 - v39) >> 2) == llroundf(*(*v30 + 4 * v33)))
          {
            ++v34;
          }

          ++v33;
        }

        while (v33 != v32);
        v47 = v34;
      }

      else
      {
        v47 = 0.0;
      }

      v31 = v47 / v32;
    }
  }

  else
  {
    v48 = objc_msgSend_errorForFeatureNotBinded_(MEMORY[0x277CCA9B8], v28, @"Tapped");
    objc_msgSend__setErrorPtr_toError_(self, v49, error, v48);

    v31 = 0.0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v31;
}

- (BOOL)trainWithTrainingSet:(id)set error:(id *)error
{
  v96 = *MEMORY[0x277D85DE8];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  setCopy = set;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(setCopy, v5, &v85, v95, 16);
  if (v7)
  {
    v8 = *v86;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v86 != v8)
        {
          objc_enumerationMutation(setCopy);
        }

        objc_msgSend_logTrainingRowFeatures_(APOdmlLogUtility, v6, *(*(&v85 + 1) + 8 * i));
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(setCopy, v6, &v85, v95, 16);
    }

    while (v7);
  }

  objc_msgSend__preTrainingSetup(self, v10, v11);
  v83 = objc_msgSend_finalBatchSize(self, v12, v13);
  v78 = objc_msgSend_count(setCopy, v14, v15);
  v18 = objc_msgSend_recipe(self, v16, v17);
  v21 = objc_msgSend_localIterationsCount(v18, v19, v20);
  v76 = objc_msgSend_unsignedIntegerValue(v21, v22, v23);

  v26 = objc_msgSend_mutableCopy(setCopy, v24, v25);
  objc_msgSend_printDESRecordRowOrder_iterationNumber_(APOdmlLogUtility, v27, v26, &unk_28736F200);
  if (v76)
  {
    v77 = 0;
    v79 = 0;
    v75 = 8027;
    if (v83 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v83;
    }

    v81 = v30;
    v31 = 1;
    while (1)
    {
      v32 = objc_msgSend_recipe(self, v28, v29, v75);
      v35 = objc_msgSend_shouldShuffle(v32, v33, v34);
      v38 = objc_msgSend_BOOLValue(v35, v36, v37);

      if (v38)
      {
        objc_msgSend_shuffle(v26, v28, v29);
        v40 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v39, v79);
        objc_msgSend_printDESRecordRowOrder_iterationNumber_(APOdmlLogUtility, v41, v26, v40);
      }

      if (v83 <= v78)
      {
        break;
      }

      v42 = v31;
LABEL_33:
      v31 = v42;
      v77 = ++v79 >= v76;
      if (v79 == v76)
      {
        goto LABEL_34;
      }
    }

    v43 = 0;
    v44 = 0;
    v46 = __ROR8__(0xCCCCCCCCCCCCCCCDLL * v79, 1) < 0x199999999999999AuLL || v79 == v76 - 1;
    v80 = v46;
    while (1)
    {
      v48 = objc_msgSend_array(MEMORY[0x277CBEB18], v28, v29);
      v49 = v43;
      v50 = v81;
      do
      {
        v51 = objc_msgSend_objectAtIndexedSubscript_(v26, v47, v49);
        objc_msgSend_addObject_(v48, v52, v51);

        ++v49;
        --v50;
      }

      while (v50);
      v54 = objc_msgSend_bufferController(self, v47, v53);
      v57 = objc_msgSend_copy(v48, v55, v56);
      v60 = objc_msgSend_espressoNet(self, v58, v59);
      v62 = objc_msgSend_setInputData_batchSize_network_reportMissingFeature_error_(v54, v61, v57, v83, v60, v31 & 1, error);

      if ((v62 & 1) == 0)
      {
        break;
      }

      v67 = objc_msgSend__executeEspressoPlan(self, v63, v64);
      if (v67)
      {
        v71 = OdmlLogForCategory(0xBuLL);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v90 = v79;
          v91 = 1024;
          LODWORD(v92) = v67;
          _os_log_impl(&dword_260ECB000, v71, OS_LOG_TYPE_ERROR, "Failed to execute espresso plan for iter %zu due to %d.", buf, 0x12u);
        }

        objc_msgSend_setError_errorCode_(self, v72, error, v75);
        break;
      }

      objc_msgSend__retrieveLossValue(self, v65, v66);
      if (v80)
      {
        v69 = v68;
        v70 = OdmlLogForCategory(0xBuLL);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v90 = v79;
          v91 = 2048;
          v92 = v44;
          v93 = 2048;
          v94 = v69;
          _os_log_impl(&dword_260ECB000, v70, OS_LOG_TYPE_DEFAULT, "iter %04lu batch_num %04lu:\t loss = %f\n", buf, 0x20u);
        }
      }

      LOBYTE(v31) = 0;
      v42 = 0;
      ++v44;
      v43 += v83;
      if (v44 >= v78 / v83)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
LABEL_34:
    v77 = 1;
  }

  v73 = *MEMORY[0x277D85DE8];
  return v77;
}

- (float)_retrieveLossValue
{
  v3 = objc_msgSend_bufferController(self, a2, v2);
  v6 = **objc_msgSend_loss(v3, v4, v5);

  return v6;
}

- (void)_preTrainingSetup
{
  v20 = objc_msgSend_recipe(self, a2, v2);
  v6 = objc_msgSend_learningRate(v20, v4, v5);
  objc_msgSend_floatValue(v6, v7, v8);
  v10 = v9;
  v13 = objc_msgSend_bufferController(self, v11, v12);
  **objc_msgSend_learningRate(v13, v14, v15) = v10;

  v21 = objc_msgSend_bufferController(self, v16, v17);
  **objc_msgSend_isTraining(v21, v18, v19) = 1065353216;
}

- (int)_executeEspressoPlan
{
  objc_msgSend_espressoPlan(self, a2, v2);

  return espresso_plan_execute_sync();
}

- (BOOL)setError:(id *)error errorCode:(int64_t)code
{
  if (error)
  {
    *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], a2, @"APODMLDESPluginErrorDomain", code, 0);
  }

  return error != 0;
}

- (BOOL)_setErrorPtr:(id *)ptr toError:(id)error
{
  if (ptr)
  {
    *ptr = error;
  }

  return ptr != 0;
}

- (void)dealloc
{
  objc_msgSend_espressoPlan(self, a2, v2);
  espresso_plan_destroy();
  v6 = objc_msgSend_espressoNet(self, v4, v5);
  free(v6);
  v7.receiver = self;
  v7.super_class = APOdmlEspressoFacade;
  [(APOdmlEspressoFacade *)&v7 dealloc];
}

@end