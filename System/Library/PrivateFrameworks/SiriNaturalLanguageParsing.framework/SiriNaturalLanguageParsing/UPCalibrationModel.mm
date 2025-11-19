@interface UPCalibrationModel
+ (UPCalibrationModel)modelWithLoadedModelConfiguration:(id)a3 error:(id *)a4;
- (UPCalibrationModel)initWithLoadedModelConfiguration:(id)a3;
- (double)forwardWithSpanLabels:(UPGenericTensor *)a3 embeddings:(UPGenericTensor *)a4 utterance:(id)a5;
- (id)scoreFromQuery:(id)a3 preprocessorOutput:(id)a4 error:(id *)a5;
@end

@implementation UPCalibrationModel

- (double)forwardWithSpanLabels:(UPGenericTensor *)a3 embeddings:(UPGenericTensor *)a4 utterance:(id)a5
{
  v8 = a5;
  v9 = [(UPLoadedModelConfiguration *)self->__loadedModelConfiguration calibrationEspressoModule];
  uaap::EspressoModule::reshape(v9, a4, a3);
  uaap::EspressoModule::buildPlan(v9);
  v13 = 12;
  strcpy(__p, "span_indices");
  uaap::EspressoModule::setInput(v9, __p, &a3->data, a3);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 16;
  strcpy(__p, "token_embeddings");
  uaap::EspressoModule::setInput(v9, __p, &a4->data, a4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  uaap::EspressoModule::executePlan(v9);
  HIBYTE(v16[2]) = 17;
  strcpy(v16, "app_label_softmax");
  uaap::EspressoModule::getOutput(v9, v16, __p);
  if ((v15 - v14) <= 4)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v10 = *(v14 + 1);
  uaap::EspressoModule::cleanPlan(v9);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  if (SHIBYTE(v16[2]) < 0)
  {
    operator delete(v16[0]);
  }

  return v10;
}

- (UPCalibrationModel)initWithLoadedModelConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UPCalibrationModel;
  v6 = [(UPCalibrationModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__loadedModelConfiguration, a3);
  }

  return v7;
}

- (id)scoreFromQuery:(id)a3 preprocessorOutput:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = SNLPOSLoggerForCategory(7);
  v10 = os_signpost_id_generate(v9);

  v11 = SNLPOSLoggerForCategory(7);
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CalibrationInference", "", buf, 2u);
  }

  v13 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_DEFAULT, "BEGIN CalibrationInference", buf, 2u);
  }

  v14 = [v8 spanLabelsTensor];
  v30 = 0;
  v31 = 0;
  v32 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v30, *v14, v14[1], (v14[1] - *v14) >> 3);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v33, v14[3], v14[4], (v14[4] - v14[3]) >> 2);
  v15 = [v8 embeddingsTensor];
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v24, *v15, v15[1], (v15[1] - *v15) >> 3);
  __p = 0;
  v28 = 0;
  v29 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v15[3], v15[4], (v15[4] - v15[3]) >> 2);
  v16 = [v7 utterance];
  [(UPCalibrationModel *)self forwardWithSpanLabels:&v30 embeddings:&v24 utterance:v16];
  v18 = v17;

  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  v19 = SNLPOSLoggerForCategory(7);
  v20 = v19;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v20, OS_SIGNPOST_INTERVAL_END, v10, "CalibrationInference", "", buf, 2u);
  }

  v21 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_DEFAULT, "END CalibrationInference", buf, 2u);
  }

  v22 = [MEMORY[0x277CCABB0] numberWithDouble:v18];

  return v22;
}

+ (UPCalibrationModel)modelWithLoadedModelConfiguration:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 calibrationEspressoModule])
  {
    v6 = [[UPCalibrationModel alloc] initWithLoadedModelConfiguration:v5];
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:9 userInfo:0];
    *a4 = v6 = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end