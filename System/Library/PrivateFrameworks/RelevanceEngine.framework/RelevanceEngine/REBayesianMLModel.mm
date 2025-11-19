@interface REBayesianMLModel
- (BOOL)_loadModelFromURL:(id)a3 error:(id *)a4;
- (BOOL)_saveModelToURL:(id)a3 includeDebugData:(BOOL)a4 error:(id *)a5;
- (REBayesianMLModel)initWithFeatureSet:(id)a3 priorMean:(float)a4 modelVarianceEpsilon:(float)a5;
- (REExportedTable)content;
- (id)_predictWithFeatures:(id)a3;
- (void)_clearModel;
- (void)_loadFeatureVector:(void *)a3 fromFeatureMap:(id)a4;
- (void)_trainWithFeatures:(id)a3 positiveEvent:(id)a4;
- (void)logCoreAnalyticsMetrics;
@end

@implementation REBayesianMLModel

- (REBayesianMLModel)initWithFeatureSet:(id)a3 priorMean:(float)a4 modelVarianceEpsilon:(float)a5
{
  v8 = a3;
  v19.receiver = self;
  v19.super_class = REBayesianMLModel;
  *&v9 = a4;
  *&v10 = a5;
  v11 = [(REMLModel *)&v19 initWithFeatureSet:v8 priorMean:v9 modelVarianceEpsilon:v10];
  if (v11)
  {
    v12 = [v8 count];
    v13 = v12;
    v11->_numberOfFeatures = v12;
    [(REMLModel *)v11 priorMean];
    v15 = v14;
    v16 = [(REBayesianMLModel *)v11 _maxFeatureCoordinates];
    [(REMLModel *)v11 varianceEpsilon];
    BayesianModel::InitializeFeatures(&v11->_model, 12585182, v13, v15, v16, v17);
  }

  return v11;
}

- (void)_trainWithFeatures:(id)a3 positiveEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, self->_numberOfFeatures);
  [(REBayesianMLModel *)self _loadFeatureVector:&__p fromFeatureMap:v6];
  if (!BayesianModel::Train(&self->_model, &__p, [v7 BOOLValue]))
  {
    v8 = RELogForDomain(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [REBayesianMLModel _trainWithFeatures:v8 positiveEvent:?];
    }

    v10 = __p;
    v9 = v16;
    [(REMLModel *)self priorMean];
    v12 = v11;
    v13 = [(REBayesianMLModel *)self _maxFeatureCoordinates];
    [(REMLModel *)self varianceEpsilon];
    BayesianModel::InitializeFeatures(&self->_model, 12585182, (v9 - v10) >> 3, v12, v13, v14);
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

- (id)_predictWithFeatures:(id)a3
{
  v4 = a3;
  std::vector<unsigned long long>::vector[abi:ne200100](&v48, self->_numberOfFeatures);
  [(REBayesianMLModel *)self _loadFeatureVector:&v48 fromFeatureMap:v4];
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  BayesianModel::Predict(&self->_model, &v48, &v45, 0.5);
  v5 = [(REMLModel *)self metricsRecorder];
  v6 = [(REMLModel *)self metricsInteraction];
  RESubmitBayesianModelPredicted(&v45, v5, v6);

  v7 = v45;
  if ([(REMLModel *)self allowsExploreExploit])
  {
    if (RETrainingSimulationIsCurrentlyActive())
    {
      [(REMLModel *)self simulationExploreExploitModulator];
    }

    else
    {
      [(REMLModel *)self exploreExploitModulator];
    }

    v9 = scaled_box_muller(*&v7, *(&v7 + 1), v8);
    normal_erf(v9 / sqrt(*(&v7 + 1) + self->_numberOfFeatures));
    v10 = v11;
  }

  else
  {
    v10 = *&v46;
  }

  v12 = RELogForDomain(4);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

  if (v13)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3321888768;
    v41[2] = __42__REBayesianMLModel__predictWithFeatures___block_invoke;
    v41[3] = &unk_283B96510;
    v41[4] = self;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v42, v48, v49, (v49 - v48) >> 3);
    v17 = MEMORY[0x22AABC5E0](v41);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __42__REBayesianMLModel__predictWithFeatures___block_invoke_2;
    v39[3] = &unk_2785FDEA8;
    v39[4] = self;
    v40 = v17;
    v18 = v17;
    [v4 enumerateInt64FeaturesUsingIndexedBlock:v18 emptyFeatureBlock:v39];

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }
  }

  *&v14 = v10;
  *&v15 = *&v7;
  *&v16 = *(&v7 + 1);
  v19 = [REMLPrediction predictionWithProbability:v14 mean:v15 variance:v16 pessimistic:0.0];
  if (REMLExplanationsEnabled())
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    BayesianModel::AccessGaussiansAndBias(&self->_model.m_rwlock, &v48, &v36, &v33);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3321888768;
    v25[2] = __42__REBayesianMLModel__predictWithFeatures___block_invoke_2;
    v25[3] = &unk_283B96548;
    v25[4] = self;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v27, v36, v37, (v37 - v36) >> 3);
    __p = 0;
    v31 = 0;
    v32 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v33, v34, (v34 - v33) >> 3);
    v26 = v19;
    v20 = MEMORY[0x22AABC5E0](v25);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __42__REBayesianMLModel__predictWithFeatures___block_invoke_7;
    v23[3] = &unk_2785FDED0;
    v24 = v20;
    v21 = v20;
    [v4 enumerateInt64FeaturesUsingIndexedBlock:v23 emptyFeatureBlock:v21];

    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  return v19;
}

void __42__REBayesianMLModel__predictWithFeatures___block_invoke(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (*(*(a1 + 32) + 552) > a3)
  {
    v8 = RELogForDomain(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(*(a1 + 40) + 8 * a3);
      v11 = [v7 name];
      v12 = 134218498;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      v16 = 2048;
      v17 = a4;
      _os_log_debug_impl(&dword_22859F000, v8, OS_LOG_TYPE_DEBUG, "\t0x%016llX\t%@ → %016llX", &v12, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __42__REBayesianMLModel__predictWithFeatures___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = a2;
  if (*(*(a1 + 32) + 552) > a3)
  {
    v5 = [REFeatureValue nullValueForFeature:v6];
    [v5 int64Value];

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __42__REBayesianMLModel__predictWithFeatures___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (*(*(a1 + 32) + 552) > a3)
  {
    v7 = *(*(a1 + 48) + 8 * a3);
    *&v7 = v7;
    v8 = *(*(a1 + 72) + 8 * a3);
    *&v8 = v8;
    v11 = v5;
    v9 = [REMLExplanation explanationForFeature:v5 mean:v7 variance:v8];
    [*(a1 + 40) addExplanation:v9];

    v6 = v11;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

- (void)_loadFeatureVector:(void *)a3 fromFeatureMap:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__REBayesianMLModel__loadFeatureVector_fromFeatureMap___block_invoke;
  v5[3] = &unk_2785FDEF8;
  v5[4] = self;
  v5[5] = a3;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__REBayesianMLModel__loadFeatureVector_fromFeatureMap___block_invoke_2;
  v4[3] = &unk_2785FDF20;
  v4[4] = self;
  v4[5] = a3;
  [a4 enumerateInt64FeaturesUsingIndexedBlock:v5 emptyFeatureBlock:v4];
}

void __55__REBayesianMLModel__loadFeatureVector_fromFeatureMap___block_invoke(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v15 = a2;
  if (*(*(a1 + 32) + 552) <= a3)
  {
    goto LABEL_9;
  }

  if (HIBYTE(a4))
  {
    v14 = @"Value %llu cannot be stored into feature for this model";
LABEL_8:
    RERaiseInternalException(*MEMORY[0x277CBE660], v14, v7, v8, v9, v10, v11, v12, a4);
    goto LABEL_9;
  }

  if (a3 >= 0x100)
  {
    v14 = @"Feature id %lu cannot be stored into feature for this model";
    a4 = a3;
    goto LABEL_8;
  }

  v13 = **(a1 + 40);
  if (a3 >= (*(*(a1 + 40) + 8) - v13) >> 3)
  {
    std::vector<std::string>::__throw_out_of_range[abi:ne200100]();
  }

  *(v13 + 8 * a3) = a4 | (a3 << 56);
LABEL_9:
}

void __55__REBayesianMLModel__loadFeatureVector_fromFeatureMap___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (*(*(a1 + 32) + 552) > a3)
  {
    v9 = v5;
    v6 = [REFeatureValue nullValueForFeature:?];
    v7 = [v6 int64Value];

    v8 = **(a1 + 40);
    if (a3 >= (*(*(a1 + 40) + 8) - v8) >> 3)
    {
      std::vector<std::string>::__throw_out_of_range[abi:ne200100]();
    }

    *(v8 + 8 * a3) = v7 & 0xFFFFFFFFFFFFFFLL | (a3 << 56);
    v5 = v9;
  }
}

- (BOOL)_saveModelToURL:(id)a3 includeDebugData:(BOOL)a4 error:(id *)a5
{
  v5 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  MEMORY[0x22AABBC00](__sb);
  v8 = [v7 path];
  v9 = v8;
  [v8 UTF8String];
  std::filebuf::open();

  v10 = v18;
  if (v18)
  {
    v14.__loc_ = 0;
    v13 = MEMORY[0x277D82850] + 24;
    v14.__vftable = (MEMORY[0x277D82850] + 64);
    std::ios_base::init(&v14, __sb);
    v15 = 0;
    v16 = -1;
    BayesianModel::SaveModel(&self->_model, &v13, v5);
    std::ostream::flush();
    std::ostream::~ostream();
  }

  std::filebuf::close();
  MEMORY[0x22AABBC10](__sb);

  v11 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (BOOL)_loadModelFromURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v6 encoding:4 error:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 UTF8String];
    v10 = strlen(v9);
    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v11 = v10;
    if (v10 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v10;
    if (v10)
    {
      memmove(&__dst, v9, v10);
    }

    __dst.__r_.__value_.__s.__data_[v11] = 0;
    v12 = BayesianModel::LoadModel(&self->_model, &__dst, 1);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_clearModel
{
  numberOfFeatures = self->_numberOfFeatures;
  [(REMLModel *)self priorMean];
  v5 = v4;
  v6 = [(REBayesianMLModel *)self _maxFeatureCoordinates];
  [(REMLModel *)self varianceEpsilon];

  BayesianModel::InitializeFeatures(&self->_model, 12585182, numberOfFeatures, v5, v6, v7);
}

- (void)logCoreAnalyticsMetrics
{
  v4 = [(REMLModel *)self metricsRecorder];
  v3 = [(REMLModel *)self metricsInteraction];
  RESubmitBayesianModelTrained(&self->_model, v4, v3);
}

- (REExportedTable)content
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  BayesianModel::CaptureDebugTable(&self->_model, &v9);
  v2 = objc_alloc_init(REExportedTable);
  if (v10 != v9)
  {
    v3 = REStringArrayFromVector(v9);
    [(REExportedTable *)v2 setHeader:v3];

    v4 = v9;
    if (0xAAAAAAAAAAAAAAABLL * (v10 - v9) >= 2)
    {
      v5 = 1;
      v6 = 3;
      do
      {
        v7 = REStringArrayFromVector(&v4[v6]);
        [(REExportedTable *)v2 addRow:v7];

        ++v5;
        v4 = v9;
        v6 += 3;
      }

      while (v5 < 0xAAAAAAAAAAAAAAABLL * (v10 - v9));
    }
  }

  v12 = &v9;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v12);

  return v2;
}

@end