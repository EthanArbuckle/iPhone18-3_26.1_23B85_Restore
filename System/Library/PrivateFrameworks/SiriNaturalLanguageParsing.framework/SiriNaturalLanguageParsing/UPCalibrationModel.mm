@interface UPCalibrationModel
+ (UPCalibrationModel)modelWithLoadedModelConfiguration:(id)configuration error:(id *)error;
- (UPCalibrationModel)initWithLoadedModelConfiguration:(id)configuration;
- (double)forwardWithSpanLabels:(UPGenericTensor *)labels embeddings:(UPGenericTensor *)embeddings utterance:(id)utterance;
- (id)scoreFromQuery:(id)query preprocessorOutput:(id)output error:(id *)error;
@end

@implementation UPCalibrationModel

- (double)forwardWithSpanLabels:(UPGenericTensor *)labels embeddings:(UPGenericTensor *)embeddings utterance:(id)utterance
{
  utteranceCopy = utterance;
  calibrationEspressoModule = [(UPLoadedModelConfiguration *)self->__loadedModelConfiguration calibrationEspressoModule];
  uaap::EspressoModule::reshape(calibrationEspressoModule, embeddings, labels);
  uaap::EspressoModule::buildPlan(calibrationEspressoModule);
  v13 = 12;
  strcpy(__p, "span_indices");
  uaap::EspressoModule::setInput(calibrationEspressoModule, __p, &labels->data, labels);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 16;
  strcpy(__p, "token_embeddings");
  uaap::EspressoModule::setInput(calibrationEspressoModule, __p, &embeddings->data, embeddings);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  uaap::EspressoModule::executePlan(calibrationEspressoModule);
  HIBYTE(v16[2]) = 17;
  strcpy(v16, "app_label_softmax");
  uaap::EspressoModule::getOutput(calibrationEspressoModule, v16, __p);
  if ((v15 - v14) <= 4)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v10 = *(v14 + 1);
  uaap::EspressoModule::cleanPlan(calibrationEspressoModule);
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

- (UPCalibrationModel)initWithLoadedModelConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = UPCalibrationModel;
  v6 = [(UPCalibrationModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__loadedModelConfiguration, configuration);
  }

  return v7;
}

- (id)scoreFromQuery:(id)query preprocessorOutput:(id)output error:(id *)error
{
  queryCopy = query;
  outputCopy = output;
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

  spanLabelsTensor = [outputCopy spanLabelsTensor];
  v30 = 0;
  v31 = 0;
  v32 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v30, *spanLabelsTensor, spanLabelsTensor[1], (spanLabelsTensor[1] - *spanLabelsTensor) >> 3);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v33, spanLabelsTensor[3], spanLabelsTensor[4], (spanLabelsTensor[4] - spanLabelsTensor[3]) >> 2);
  embeddingsTensor = [outputCopy embeddingsTensor];
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v24, *embeddingsTensor, embeddingsTensor[1], (embeddingsTensor[1] - *embeddingsTensor) >> 3);
  __p = 0;
  v28 = 0;
  v29 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, embeddingsTensor[3], embeddingsTensor[4], (embeddingsTensor[4] - embeddingsTensor[3]) >> 2);
  utterance = [queryCopy utterance];
  [(UPCalibrationModel *)self forwardWithSpanLabels:&v30 embeddings:&v24 utterance:utterance];
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

+ (UPCalibrationModel)modelWithLoadedModelConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  if ([configurationCopy calibrationEspressoModule])
  {
    v6 = [[UPCalibrationModel alloc] initWithLoadedModelConfiguration:configurationCopy];
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:9 userInfo:0];
    *error = v6 = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end