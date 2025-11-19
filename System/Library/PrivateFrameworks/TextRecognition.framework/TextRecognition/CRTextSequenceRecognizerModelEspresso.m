@interface CRTextSequenceRecognizerModelEspresso
+ (vImage_Buffer)_createBufferWithWidth:(SEL)a3 height:(unint64_t)a4 channels:(unint64_t)a5 batchSize:(unint64_t)a6 sequenceLength:(unint64_t)a7;
+ (void)_checkCRLogRecognizerInputBatch:(vImage_Buffer *)a3 width:(unint64_t)a4;
- ($C4732ECC957FA13B9B3DF4A51A95735B)network;
- (BOOL)_configurePlanForInput:(id)a3 error:(id *)a4;
- (BOOL)_setupContextAndPlanForConfiguration:(id)a3 error:(id *)a4;
- (BOOL)_shouldReconfigurePlanForInput:(id)a3;
- (BOOL)shouldSaturateInputBatches;
- (CRTextSequenceRecognizerModelEspresso)initWithConfiguration:(id)a3 owner:(id)a4 error:(id *)a5;
- (id)_configurationHashForInput:(id)a3;
- (id)_configurationHashForInput:(id)a3 batchSize:(unint64_t)a4;
- (id)_modelConfigurationNameForInput:(id)a3;
- (id)modelFilePath;
- (id)outputFromOutputBuffers:()vector<espresso_buffer_t featureInfo:(std:(id)a4 :allocator<espresso_buffer_t>> *)a3;
- (id)predictFromInputs:(id)a3 error:(id *)a4;
- (void)_createContextForEngine:(int)a3 configuration:(id)a4;
- (void)_resetEspressoState;
- (void)dealloc;
- (void)preheatWithCompletionHandler:(id)a3;
- (void)releaseIntermediateBuffers;
@end

@implementation CRTextSequenceRecognizerModelEspresso

- (void)preheatWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1B429FEE8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B42AD678;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B42AD688;
  v13[5] = v12;
  v14 = self;
  sub_1B4105608(0, 0, v8, &unk_1B42AD698, v13);
}

- (id)modelFilePath
{
  v2 = [(CRTextSequenceRecognizerModel *)self modelURL];
  v3 = [v2 path];
  v4 = [v3 stringByAppendingPathComponent:@"model.espresso.net"];

  return v4;
}

- (CRTextSequenceRecognizerModelEspresso)initWithConfiguration:(id)a3 owner:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v28.receiver = self;
  v28.super_class = CRTextSequenceRecognizerModelEspresso;
  v11 = [(CRTextSequenceRecognizerModelEspresso *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, a3);
    objc_storeStrong(&v12->_owner, a4);
    [CRLoadCounterFacade recordLoad:v12 owner:v12->_owner];
    v13 = CROSLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [objc_opt_class() defaultURLOfModelInThisBundle];
      v15 = [v14 lastPathComponent];
      *buf = 138412290;
      v30 = v15;
      _os_log_impl(&dword_1B40D2000, v13, OS_LOG_TYPE_DEFAULT, "Loading model: %@", buf, 0xCu);
    }

    v27 = 0;
    v16 = [(CRTextSequenceRecognizerModelEspresso *)v12 _setupContextAndPlanForConfiguration:v9 error:&v27];
    v17 = v27;
    v18 = v17;
    if (a5 && v17)
    {
      v19 = v17;
      *a5 = v18;
    }

    if (!v16)
    {

      v25 = 0;
      goto LABEL_11;
    }

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = qos_class_self();
    v22 = dispatch_queue_attr_make_with_qos_class(v20, v21, 0);

    v23 = dispatch_queue_create("com.apple.CoreRecognition.recognizerPredictionQueue", v22);
    predictionQueue = v12->_predictionQueue;
    v12->_predictionQueue = v23;

    objc_storeStrong(&v12->_recognizerConfiguration, a3);
    v12->_submissionLock._os_unfair_lock_opaque = 0;
  }

  v25 = v12;
LABEL_11:

  return v25;
}

- (id)predictFromInputs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = [(CRTextSequenceRecognizerModelEspresso *)self predictionQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__CRTextSequenceRecognizerModelEspresso_predictFromInputs_error___block_invoke;
  v14[3] = &unk_1E7BC22D8;
  v14[4] = self;
  v15 = v6;
  v17 = a4;
  v9 = v7;
  v16 = v9;
  v10 = v6;
  dispatch_sync(v8, v14);

  v11 = v16;
  v12 = v9;

  return v9;
}

void __65__CRTextSequenceRecognizerModelEspresso_predictFromInputs_error___block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) firstObject];
  LODWORD(v2) = [v2 _shouldReconfigurePlanForInput:v3];

  if (!v2)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) firstObject];
  v76 = 0;
  v6 = [v4 _configurePlanForInput:v5 error:&v76];
  v7 = v76;

  if (v7 && *(a1 + 56))
  {
    v8 = v7;
    **(a1 + 56) = v7;
  }

  if (v6)
  {
LABEL_6:
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = qos_class_self();
    attr = dispatch_queue_attr_make_with_qos_class(v9, v10, 0);

    v44 = dispatch_queue_create("com.apple.CoreRecognition.recognizerOutputQueue", attr);
    v11 = [*(a1 + 40) count];
    v74 = 0;
    v73 = 0;
    v75 = 0;
    v63 = &v73;
    v64 = 0;
    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    for (i = 0; i < [*(a1 + 40) count]; ++i)
    {
      v13 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_2);
      v14 = *(v73 + 8 * i);
      *(v73 + 8 * i) = v13;
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = *(a1 + 40);
    v15 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v46 = *v70;
      do
      {
        v18 = 0;
        v47 = v15;
        do
        {
          if (*v70 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v69 + 1) + 8 * v18);
          v65 = 0;
          v66 = &v65;
          v67 = 0x2020000000;
          v68 = 0;
          if (v16)
          {
            if (v17 >= (v74 - v73) >> 3)
            {
              std::vector<std::vector<BreakPoint>>::__throw_out_of_range[abi:ne200100]();
            }

            (*(*(v73 + 8 * v17) + 16))();
            v16 = 1;
            *(v66 + 24) = 1;
          }

          else
          {
            [*(a1 + 32) network];
            [@"img_input" UTF8String];
            v20 = espresso_network_bind_buffer();
            v21 = [*(a1 + 32) outputNames];
            v22 = [v21 count];
            v60 = 0;
            v61 = 0;
            v62 = 0;
            if (v22)
            {
              std::vector<espresso_buffer_t>::__vallocate[abi:ne200100](&v60, v22);
            }

            if (v20)
            {
              goto LABEL_64;
            }

            if (v19)
            {
              [v19 img_input];
              v23 = *(&v59 + 1);
              [v19 img_input];
              v24 = v57;
              v25 = v63;
              [v19 img_input];
              v26 = v24 * v23;
              v27 = v58;
            }

            else
            {
              v27 = 0;
              v26 = 0;
              v25 = v63;
              v58 = 0u;
              v59 = 0u;
            }

            memcpy(v25, v27, v26);
            v28 = 0;
            v29 = 0;
            for (j = 0; ; ++j)
            {
              v31 = [*(a1 + 32) outputNames];
              v32 = j < [v31 count];

              if (!v32)
              {
                break;
              }

              [*(a1 + 32) network];
              v33 = [*(a1 + 32) outputNames];
              v34 = [v33 objectAtIndexedSubscript:j];
              v35 = v34;
              [v34 UTF8String];
              v29 = espresso_network_bind_buffer();

              v28 += 168;
            }

            if (v29)
            {
              goto LABEL_64;
            }

            v36 = [*(a1 + 32) engine];
            v37 = *(a1 + 32);
            if (v36 == 10007)
            {
              os_unfair_lock_lock(v37 + 18);
              [*(a1 + 32) plan];
              v50 = 0;
              v51 = 0;
              __p = 0;
              std::vector<espresso_buffer_t>::__init_with_size[abi:ne200100]<espresso_buffer_t*,espresso_buffer_t*>(&__p, v60, v61, 0xCF3CF3CF3CF3CF3DLL * ((v61 - v60) >> 3));
              v48 = *(a1 + 48);
              memset(v52, 0, sizeof(v52));
              std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__init_with_size[abi:ne200100]<void({block_pointer} {__strong}*)(void),void({block_pointer} {__strong}*)(void)>(v52, v73, v74, (v74 - v73) >> 3);
              v53 = v17;
              v38 = espresso_plan_submit();
              os_unfair_lock_unlock((*(a1 + 32) + 72));
              *&v58 = v52;
              std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__destroy_vector::operator()[abi:ne200100](&v58);

              if (__p)
              {
                v50 = __p;
                operator delete(__p);
              }
            }

            else
            {
              [(os_unfair_lock_s *)v37 plan];
              v38 = espresso_plan_execute_sync();
              v39 = *(a1 + 32);
              v55 = 0;
              v56 = 0;
              v54 = 0;
              std::vector<espresso_buffer_t>::__init_with_size[abi:ne200100]<espresso_buffer_t*,espresso_buffer_t*>(&v54, v60, v61, 0xCF3CF3CF3CF3CF3DLL * ((v61 - v60) >> 3));
              v40 = [v19 textFeatureInfo];
              v41 = [v39 outputFromOutputBuffers:&v54 featureInfo:v40];

              if (v54)
              {
                v55 = v54;
                operator delete(v54);
              }

              [*(a1 + 48) addObject:v41];
              if (!v38 && (v66[3] & 1) == 0)
              {
                if (v17 >= (v74 - v73) >> 3)
                {
                  std::vector<std::vector<BreakPoint>>::__throw_out_of_range[abi:ne200100]();
                }

                (*(*(v73 + 8 * v17) + 16))();
                *(v66 + 24) = 1;
              }
            }

            if (v38)
            {
LABEL_64:
              if (*(a1 + 56))
              {
                **(a1 + 56) = [CRImageReader errorWithErrorCode:-8];
              }

              if (v66[3])
              {
                v16 = 1;
              }

              else
              {
                if (v17 >= (v74 - v73) >> 3)
                {
                  std::vector<std::vector<BreakPoint>>::__throw_out_of_range[abi:ne200100]();
                }

                (*(*(v73 + 8 * v17) + 16))();
                v16 = 1;
                *(v66 + 24) = 1;
              }
            }

            else
            {
              v16 = 0;
            }

            if (v60)
            {
              v61 = v60;
              operator delete(v60);
            }
          }

          ++v17;
          _Block_object_dispose(&v65, 8);
          ++v18;
        }

        while (v18 != v47);
        v15 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
      }

      while (v15);
    }

    for (k = 0; k < [*(a1 + 40) count]; ++k)
    {
      dispatch_block_wait(*(v73 + 8 * k), 0xFFFFFFFFFFFFFFFFLL);
    }

    v63 = &v73;
    std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__destroy_vector::operator()[abi:ne200100](&v63);
  }
}

void __65__CRTextSequenceRecognizerModelEspresso_predictFromInputs_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v12 = 0;
  v13 = 0;
  __p = 0;
  std::vector<espresso_buffer_t>::__init_with_size[abi:ne200100]<espresso_buffer_t*,espresso_buffer_t*>(&__p, *(a1 + 64), *(a1 + 72), 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 72) - *(a1 + 64)) >> 3));
  v5 = [*(a1 + 40) textFeatureInfo];
  v6 = [v4 outputFromOutputBuffers:&__p featureInfo:v5];

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  [*(a1 + 48) addObject:v6];
  if (a2 && *(a2 + 4))
  {
    v7 = CROSLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a2 + 8);
      *buf = 136315138;
      v15 = v8;
      _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_ERROR, "Encountered error during plan submission: %s", buf, 0xCu);
    }
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v9 = *(a1 + 112);
    v10 = *(a1 + 88);
    if (v9 >= (*(a1 + 96) - v10) >> 3)
    {
      std::vector<std::vector<BreakPoint>>::__throw_out_of_range[abi:ne200100]();
    }

    (*(*(v10 + 8 * v9) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (id)outputFromOutputBuffers:()vector<espresso_buffer_t featureInfo:(std:(id)a4 :allocator<espresso_buffer_t>> *)a3
{
  v6 = a4;
  var0 = a3->var0;
  v8 = *(a3->var0 + 120);
  v35 = *(a3->var0 + 104);
  v36 = v8;
  v9 = *(var0 + 152);
  v37 = *(var0 + 136);
  v38 = v9;
  v10 = *(var0 + 56);
  v31 = *(var0 + 40);
  v32 = v10;
  v11 = *(var0 + 88);
  v33 = *(var0 + 72);
  v34 = v11;
  v12 = *(var0 + 24);
  v29 = *(var0 + 8);
  v30 = v12;
  v13 = malloc_type_malloc(*(var0 + 9), 0xA13B58D9uLL);
  memcpy(v13, *a3->var0, *(a3->var0 + 9));
  v14 = [v6 count];
  if ([(CRTextSequenceRecognizerModelEspresso *)self shouldSaturateInputBatches])
  {
    v15 = [(CRTextSequenceRecognizerModelEspresso *)self configuration];
    v14 = [v15 batchSize];
  }

  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v19 = v29;
  v20 = v30;
  v18 = v13;
  v16 = [[CRTextRecognizerModelEspressoOutput alloc] initWithOutputLabelProbs:&v18 featureInfo:v6 batchSize:v14];

  return v16;
}

- (BOOL)shouldSaturateInputBatches
{
  v3 = [(CRTextSequenceRecognizerModel *)self outputFormatVersion];
  v4 = [v3 intValue];

  if (v4 == 1)
  {
    return self->_engine == 10007;
  }

  v6 = [(CRTextSequenceRecognizerModel *)self outputFormatVersion];
  [v6 intValue];

  return 1;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  [CRLoadCounterFacade recordUnload:self owner:self->_owner];
  v3 = CROSLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [objc_opt_class() defaultURLOfModelInThisBundle];
    v5 = [v4 lastPathComponent];
    *buf = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1B40D2000, v3, OS_LOG_TYPE_DEFAULT, "Unloading model: %@", buf, 0xCu);
  }

  [(CRTextSequenceRecognizerModelEspresso *)self _resetEspressoState];
  v6.receiver = self;
  v6.super_class = CRTextSequenceRecognizerModelEspresso;
  [(CRTextSequenceRecognizerModel *)&v6 dealloc];
}

- (id)_modelConfigurationNameForInput:(id)a3
{
  v4 = a3;
  v5 = [(CRTextSequenceRecognizerModelEspresso *)self recognizerConfiguration];
  v6 = -[CRTextSequenceRecognizerModelEspresso _configurationHashForInput:batchSize:](self, "_configurationHashForInput:batchSize:", v4, [v5 batchSize]);

  return v6;
}

- (id)_configurationHashForInput:(id)a3
{
  v4 = a3;
  v5 = -[CRTextSequenceRecognizerModelEspresso _configurationHashForInput:batchSize:](self, "_configurationHashForInput:batchSize:", v4, [v4 batchSize]);

  return v5;
}

- (id)_configurationHashForInput:(id)a3 batchSize:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 img_input];
    v8 = MEMORY[0x1E696AEC0];
    v9 = [(CRTextSequenceRecognizerModelEspresso *)self recognizerConfiguration];
    [v9 inputHeight];
    v11 = [v8 stringWithFormat:@"%@_%ld_%ld_%ld_%ld_%ld_", @"img_input", 1, a4, 1, v10, 0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_setupContextAndPlanForConfiguration:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(CRTextSequenceRecognizerModelEspresso *)self _resetEspressoState];
  self->_engine = 5;
  self->_precision = 65552;
  if ([v6 computeDeviceType] == 1)
  {
    engine = 0;
    self->_engine = 0;
    self->_precision = 65568;
  }

  else if ([v6 usesAppleNeuralEngine])
  {
    engine = 10007;
    self->_engine = 10007;
    self->_precision = 65552;
  }

  else
  {
    engine = self->_engine;
  }

  v8 = [(CRTextSequenceRecognizerModelEspresso *)self _createContextForEngine:engine configuration:v6];
  self->_context = v8;
  if (!v8)
  {
    if ([v6 computeDeviceType] || self->_engine == 5)
    {
      if (self->_context)
      {
        goto LABEL_15;
      }
    }

    else
    {
      self->_engine = 5;
      v11 = [(CRTextSequenceRecognizerModelEspresso *)self _createContextForEngine:5 configuration:v6];
      self->_context = v11;
      if (v11)
      {
        goto LABEL_15;
      }
    }

    if (!self->_engine || (self->_engine = 0, self->_precision = 65568, v9 = [(CRTextSequenceRecognizerModelEspresso *)self _createContextForEngine:0 configuration:v6], (self->_context = v9) == 0))
    {
      if (a4)
      {
        v10 = [CRImageReader errorWithErrorCode:-8];
LABEL_26:
        v16 = 0;
        *a4 = v10;
        goto LABEL_28;
      }

LABEL_27:
      v16 = 0;
      goto LABEL_28;
    }
  }

LABEL_15:
  espresso_context_set_low_precision_accumulation();
  plan = espresso_create_plan();
  self->_plan = plan;
  if (!plan)
  {
    v17 = CROSLogForCategory(3);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20[0]) = 0;
      _os_log_impl(&dword_1B40D2000, v17, OS_LOG_TYPE_ERROR, "Failed to initialize plan", v20, 2u);
    }

    [(CRTextSequenceRecognizerModelEspresso *)self _resetEspressoState];
    if (!a4)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v13 = [(CRTextSequenceRecognizerModelEspresso *)self modelFilePath];
  [v13 UTF8String];
  v14 = espresso_plan_add_network();

  v15 = espresso_plan_build();
  if (v14 | v15)
  {
    v18 = CROSLogForCategory(3);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20[0] = 67109376;
      v20[1] = v14;
      v21 = 1024;
      v22 = v15;
      _os_log_impl(&dword_1B40D2000, v18, OS_LOG_TYPE_ERROR, "Error loading network %d, %d", v20, 0xEu);
    }

    [(CRTextSequenceRecognizerModelEspresso *)self _resetEspressoState];
    if (!a4)
    {
      goto LABEL_27;
    }

LABEL_25:
    v10 = [CRImageReader errorWithErrorCode:-8];
    goto LABEL_26;
  }

  v16 = 1;
LABEL_28:

  return v16;
}

- (void)_createContextForEngine:(int)a3 configuration:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 5)
  {
    v7 = [v5 metalDevice];

    if (v7)
    {
      v8 = [v6 metalDevice];
      espresso_device_id_for_metal_device();
    }
  }

  context = espresso_create_context();

  return context;
}

+ (vImage_Buffer)_createBufferWithWidth:(SEL)a3 height:(unint64_t)a4 channels:(unint64_t)a5 batchSize:(unint64_t)a6 sequenceLength:(unint64_t)a7
{
  v10 = a7 * a5;
  result = malloc_type_calloc(a7 * a5 * a4, 4uLL, 0x100004052888210uLL);
  retstr->data = result;
  retstr->height = v10;
  retstr->width = a4;
  retstr->rowBytes = 4 * a4;
  return result;
}

- (BOOL)_shouldReconfigurePlanForInput:(id)a3
{
  v4 = a3;
  v5 = [(CRTextSequenceRecognizerModelEspresso *)self currentConfigurationHash];
  objc_sync_enter(v5);
  if (v4)
  {
    v6 = [(CRTextSequenceRecognizerModelEspresso *)self _configurationHashForInput:v4];
    v7 = [(CRTextSequenceRecognizerModelEspresso *)self currentConfigurationHash];
    v8 = [v6 isEqualToString:v7] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  objc_sync_exit(v5);

  return v8;
}

- (BOOL)_configurePlanForInput:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(CRTextSequenceRecognizerModelEspresso *)self currentConfigurationHash];
  objc_sync_enter(v6);
  if (v5)
  {
    [v5 batchSize];
    v7 = [(CRTextSequenceRecognizerModelEspresso *)self recognizerConfiguration];
    [v7 inputHeight];

    [v5 img_input];
    v17 = [(CRTextSequenceRecognizerModelEspresso *)self _modelConfigurationNameForInput:v5];
    v15 = [(CRTextSequenceRecognizerModelEspresso *)self _configurationHashForInput:v5];
    if (espresso_plan_get_phase() == 1)
    {
      espresso_plan_build_clean();
    }

    v8 = v17;
    [v17 UTF8String];
    if (espresso_network_select_configuration())
    {
      goto LABEL_14;
    }

    [@"img_input" UTF8String];
    if (espresso_network_change_blob_shape())
    {
      goto LABEL_14;
    }

    [@"img_input" UTF8String];
    espresso_network_declare_input();
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [(CRTextSequenceRecognizerModelEspresso *)self outputNames];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v18 + 1) + 8 * i) UTF8String];
          espresso_network_declare_output();
        }

        v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    if (espresso_plan_build())
    {
LABEL_14:
      if (a4)
      {
        [CRImageReader errorWithErrorCode:-8];
        *a4 = v13 = 0;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      [(CRTextSequenceRecognizerModelEspresso *)self setCurrentConfigurationHash:v15];
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  objc_sync_exit(v6);

  return v13;
}

- (void)_resetEspressoState
{
  if (self->_plan)
  {
    espresso_plan_destroy();
    self->_plan = 0;
  }

  if (self->_context)
  {
    espresso_context_destroy();
    self->_context = 0;
  }
}

- (void)releaseIntermediateBuffers
{
  [(CRTextSequenceRecognizerModelEspresso *)self setCurrentConfigurationHash:&stru_1F2BB4348];
  [(CRTextSequenceRecognizerModelEspresso *)self plan];

  espresso_plan_build_clean();
}

+ (void)_checkCRLogRecognizerInputBatch:(vImage_Buffer *)a3 width:(unint64_t)a4
{
  CRLogger = CRLogger::getCRLogger(a1);
  if (*CRLogger == 1 && (CRLogger[8] & 8) != 0)
  {
    v8 = [[CRImage alloc] initWithFloatBuffer:a3->data width:a3->width height:a3->height];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/batch_%d_%d.png", a4, rand()];
    [(CRImage *)v8 writeToFile:v7];
  }
}

- ($C4732ECC957FA13B9B3DF4A51A95735B)network
{
  objc_copyStruct(v4, &self->_network, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end