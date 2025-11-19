@interface PCHDBSCANClustering
- (PCHDBSCANClustering)initWithConfig:(id)a3;
- (id)getClusterLabels;
- (id)getDistanceArrayFrom:(id)a3 toEmbeddings:(id)a4;
- (id)getMembershipProbability;
- (id)getNormalizedClusterLabels;
- (id)getOutlierScoreDict;
- (vector<std::vector<double>,)_getDistanceMatrixFrom:(PCHDBSCANClustering *)self;
- (void)loadDistanceMatrix:()vector<std:(std::allocator<std::vector<double>>> *)a3 :vector<double>;
- (void)runHDBSCANClusteringOn:(id)a3;
@end

@implementation PCHDBSCANClustering

- (PCHDBSCANClustering)initWithConfig:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = PCHDBSCANClustering;
  v6 = [(PCHDBSCANClustering *)&v8 init];
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
    operator new();
  }

  return 0;
}

- (void)runHDBSCANClusteringOn:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1CEE74000, v5, OS_LOG_TYPE_DEBUG, "Start running HDBSCAN clustering", &buf, 2u);
  }

  v6 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v9 = *v25;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v11 bundleIdentifier];
        v13 = v12 == 0;

        if (v13)
        {
          v19 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v11;
            _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_DEBUG, "Embedding has nil bundleID:%@. Early exit from clustering", &buf, 0xCu);
          }

          goto LABEL_19;
        }

        v14 = [v11 bundleIdentifier];
        v15 = [v14 UUIDString];
        [v6 addObject:v15];
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  objc_storeStrong(&self->_bundleIDs, v6);
  [(PCHDBSCANClustering *)self _getDistanceMatrixFrom:v7];
  if (self->_HDBSCAN.__ptr_)
  {
    memset(v23, 0, sizeof(v23));
    std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v23, buf, *(&buf + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&buf + 1) - buf) >> 3));
    [(PCHDBSCANClustering *)self loadDistanceMatrix:v23];
    *v28 = v23;
    std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](v28);
    v16 = [(PCDistanceWeightingConfig *)self->_config minPoints];
    v17 = [(PCDistanceWeightingConfig *)self->_config minClusterSize];
    ptr = self->_HDBSCAN.__ptr_;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    Hdbscan::execute(ptr, v16, v17, &__p);
  }

  v20 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *v28 = 0;
    _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_ERROR, "HDBSCAN was not instantiated", v28, 2u);
  }

  *v28 = &buf;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](v28);
LABEL_19:

  v21 = *MEMORY[0x1E69E9840];
}

- (id)getClusterLabels
{
  v3 = objc_opt_new();
  v4 = *(self->_HDBSCAN.__ptr_ + 16);
  if (*(self->_HDBSCAN.__ptr_ + 17) == v4)
  {
    v7 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1CEE74000, v7, OS_LOG_TYPE_INFO, "Cluster label is empty", v9, 2u);
    }
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:*(v4 + 4 * v5)];
      [v3 addObject:v6];

      ++v5;
      v4 = *(self->_HDBSCAN.__ptr_ + 16);
    }

    while (v5 < (*(self->_HDBSCAN.__ptr_ + 17) - v4) >> 2);
  }

  return v3;
}

- (id)getNormalizedClusterLabels
{
  v3 = objc_opt_new();
  v4 = *(self->_HDBSCAN.__ptr_ + 19);
  if (*(self->_HDBSCAN.__ptr_ + 20) == v4)
  {
    v8 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_INFO, "Normalized cluster label is empty", v10, 2u);
    }

    v7 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:*(v4 + 4 * v5)];
      [v3 addObject:v6];

      ++v5;
      v4 = *(self->_HDBSCAN.__ptr_ + 19);
    }

    while (v5 < (*(self->_HDBSCAN.__ptr_ + 20) - v4) >> 2);
    v7 = v3;
  }

  return v7;
}

- (id)getOutlierScoreDict
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (*(self->_HDBSCAN.__ptr_ + 23) == *(self->_HDBSCAN.__ptr_ + 22) || (v4 = [(NSArray *)self->_bundleIDs count], ptr = self->_HDBSCAN.__ptr_, v7 = *(ptr + 22), v6 = *(ptr + 23), v4 != 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3)))
  {
    v14 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v14, OS_LOG_TYPE_INFO, "OutlierScores is empty or bundle id count and score count do not match. Returning empty dict", buf, 2u);
    }
  }

  else
  {
    for (; v7 != v6; v7 += 24)
    {
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v10 = objc_autoreleasePoolPush();
      v11 = [(NSArray *)self->_bundleIDs objectAtIndex:v9];
      if (v11)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
        [v3 setObject:v12 forKeyedSubscript:v11];
      }

      v13 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 67109634;
        v18 = v9;
        v19 = 2112;
        v20 = v11;
        v21 = 2048;
        v22 = v8;
        _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_INFO, "Current outlierScore: idx %d,bundleID %@,score %.3f", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)getMembershipProbability
{
  v3 = objc_opt_new();
  v4 = *(self->_HDBSCAN.__ptr_ + 25);
  if (*(self->_HDBSCAN.__ptr_ + 26) == v4)
  {
    v7 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1CEE74000, v7, OS_LOG_TYPE_INFO, "MembershipProbability is empty", v9, 2u);
    }
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:*(v4 + 8 * v5)];
      [v3 addObject:v6];

      ++v5;
      v4 = *(self->_HDBSCAN.__ptr_ + 25);
    }

    while (v5 < (*(self->_HDBSCAN.__ptr_ + 26) - v4) >> 3);
  }

  return v3;
}

- (vector<std::vector<double>,)_getDistanceMatrixFrom:(PCHDBSCANClustering *)self
{
  v17 = a4;
  v6 = [v17 count];
  std::vector<std::vector<double>>::vector[abi:ne200100](retstr, v6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      std::vector<double>::resize(retstr->var0 + 3 * i, v6);
      if (i)
      {
        v8 = 0;
        for (j = 0; j != i; ++j)
        {
          v10 = [v17 objectAtIndexedSubscript:i];
          v11 = [v17 objectAtIndexedSubscript:j];
          v12 = [(PCDistanceWeightingConfig *)self->_config weights];
          [v10 getDistanceFrom:v11 withWeights:v12];
          v14 = v13;

          var0 = retstr->var0;
          *(*(retstr->var0 + 3 * i) + 8 * j) = v14;
          *(*&var0[v8] + 8 * i) = v14;
          v8 += 24;
        }
      }
    }
  }

  return result;
}

- (id)getDistanceArrayFrom:(id)a3 toEmbeddings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 count];
  std::vector<double>::vector[abi:ne200100](&v20, v8);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = [v7 objectAtIndexedSubscript:i];
      v11 = [(PCDistanceWeightingConfig *)self->_config weights];
      [v6 getDistanceFrom:v10 withWeights:v11];
      v13 = v12;

      v14 = v20;
      v20[i] = v13;
    }
  }

  else
  {
    v14 = v20;
  }

  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:v21 - v14];
  v16 = v20;
  if (v21 != v20)
  {
    v17 = 0;
    do
    {
      v18 = [MEMORY[0x1E696AD98] numberWithDouble:v16[v17]];
      [v15 addObject:v18];

      ++v17;
      v16 = v20;
    }

    while (v17 < v21 - v20);
  }

  if (v16)
  {
    v21 = v16;
    operator delete(v16);
  }

  return v15;
}

- (void)loadDistanceMatrix:()vector<std:(std::allocator<std::vector<double>>> *)a3 :vector<double>
{
  ptr = self->_HDBSCAN.__ptr_;
  if (ptr)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(&v5, a3->var0, a3->var1, 0xAAAAAAAAAAAAAAABLL * ((a3->var1 - a3->var0) >> 3));
    if ((ptr + 104) != &v5)
    {
      std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(ptr + 13, v5, v6, 0xAAAAAAAAAAAAAAABLL * (v6 - v5));
    }

    *buf = &v5;
    std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    v4 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v4, OS_LOG_TYPE_ERROR, "Failed to load distance matrix since HDBSCAN was not instantiated", buf, 2u);
    }
  }
}

@end