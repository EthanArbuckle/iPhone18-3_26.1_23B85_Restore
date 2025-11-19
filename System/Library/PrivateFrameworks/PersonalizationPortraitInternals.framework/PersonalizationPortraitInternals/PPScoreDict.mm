@interface PPScoreDict
- (NSSet)featureNames;
- (PPScoreDict)initWithScoreInputSet:(id)a3;
- (float)scalarValueForIndex:(unint64_t)a3;
- (id).cxx_construct;
- (id)arrayValueDictionary;
- (id)arrayValueForIndex:(unint64_t)a3;
- (id)description;
- (id)featureValueForName:(id)a3;
- (id)initWithScalarValueCount:(uint64_t)a3 arrayValueCount:(uint64_t)a4 objectCount:(void *)a5 scoreInputSet:;
- (id)objectDictionary;
- (id)objectForIndex:(unint64_t)a3;
- (id)scalarValueDictionary;
- (shared_ptr<std::vector<float>>)arraySharedPtrForIndex:(unint64_t)a3;
- (unint64_t)arrayValueCount;
- (unint64_t)objectCount;
- (unint64_t)scalarValueCount;
- (void)setArraySharedPtr:(shared_ptr<std:(unint64_t)a4 :vector<float>>)a3 forIndex:;
- (void)setObject:(id)a3 forIndex:(unint64_t)a4;
- (void)setScalarValue:(float)a3 forIndex:(unint64_t)a4;
@end

@implementation PPScoreDict

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (id)description
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_scoreInputSet)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = [(PPScoreDict *)self scalarValueDictionary];
    v5 = [(PPScoreDict *)self arrayValueDictionary];
    v6 = [(PPScoreDict *)self objectDictionary];
    v7 = [v3 initWithFormat:@"PPScoreDict: %@\n%@\n%@\n", v4, v5, v6];
  }

  else
  {
    v8 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [(PPScoreDict *)self featureNames];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [(PPScoreDict *)self featureValueForName:v13];
          [v8 setObject:v14 forKeyedSubscript:v13];
        }

        v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"PPScoreDict: %@\n", v8];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)objectDictionary
{
  v3 = objc_opt_new();
  if ([(PPBaseScoreInputSet *)self->_scoreInputSet objectScoreIndexUpperBound])
  {
    for (i = [(PPBaseScoreInputSet *)self->_scoreInputSet minObjectScoreIndex]; i < [(PPBaseScoreInputSet *)self->_scoreInputSet objectScoreIndexUpperBound]; ++i)
    {
      v5 = [(PPScoreDict *)self objectForIndex:i];
      v6 = [(PPBaseScoreInputSet *)self->_scoreInputSet nameForObjectScoreIndex:i];
      [v3 setObject:v5 forKeyedSubscript:v6];
    }
  }

  v7 = [v3 copy];

  return v7;
}

- (id)arrayValueDictionary
{
  v3 = objc_opt_new();
  if ([(PPBaseScoreInputSet *)self->_scoreInputSet arrayScoreIndexUpperBound])
  {
    for (i = [(PPBaseScoreInputSet *)self->_scoreInputSet minArrayScoreIndex]; i < [(PPBaseScoreInputSet *)self->_scoreInputSet arrayScoreIndexUpperBound]; ++i)
    {
      v5 = [(PPScoreDict *)self arrayValueForIndex:i];
      v6 = [(PPBaseScoreInputSet *)self->_scoreInputSet nameForArrayScoreIndex:i];
      [v3 setObject:v5 forKeyedSubscript:v6];
    }
  }

  v7 = [v3 copy];

  return v7;
}

- (id)scalarValueDictionary
{
  v3 = objc_opt_new();
  if ([(PPBaseScoreInputSet *)self->_scoreInputSet scalarScoreIndexUpperBound])
  {
    for (i = [(PPBaseScoreInputSet *)self->_scoreInputSet minScalarScoreIndex]; i < [(PPBaseScoreInputSet *)self->_scoreInputSet scalarScoreIndexUpperBound]; ++i)
    {
      v5 = MEMORY[0x277CCABB0];
      [(PPScoreDict *)self scalarValueForIndex:i];
      v6 = [v5 numberWithFloat:?];
      v7 = [(PPBaseScoreInputSet *)self->_scoreInputSet nameForScalarScoreIndex:i];
      [v3 setObject:v6 forKeyedSubscript:v7];
    }
  }

  v8 = [v3 copy];

  return v8;
}

- (id)featureValueForName:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = [v4 componentsSeparatedByString:@"_"];
  if ([v5 count] <= 1)
  {
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPScoreDict: invalid feature name passed.", buf, 2u);
    }

    goto LABEL_5;
  }

  v8 = [v5 objectAtIndexedSubscript:1];
  v9 = [v8 integerValue];

  if ([v4 hasPrefix:@"scalar_"])
  {
    v10 = MEMORY[0x277CCABB0];
    [(PPScoreDict *)self scalarValueForIndex:v9];
    v11 = [v10 numberWithFloat:?];
    v12 = [PPCoreMLUtils multiArrayFeatureValueForNumber:v11];
LABEL_11:
    v7 = v12;

    goto LABEL_12;
  }

  if ([v4 hasPrefix:@"array_"])
  {
    v13 = [(PPScoreDict *)self arrayValueForIndex:v9];
    v11 = [PPCoreMLUtils multiArrayForArray:v13];

    if (v11)
    {
      v12 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v11];
      goto LABEL_11;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_12;
  }

  if (![v4 hasPrefix:@"object_"])
  {
    goto LABEL_5;
  }

  v49 = [(PPScoreDict *)self objectForIndex:v9];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = v49;
      v18 = objc_opt_new();
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v16 = v48;
      v19 = [v16 countByEnumeratingWithState:&v55 objects:v60 count:16, v48];
      if (v19)
      {
        v20 = *v56;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v56 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v55 + 1) + 8 * i);
            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject countForObject:](v16, "countForObject:", v22)}];
            [v18 setObject:v23 forKeyedSubscript:v22];
          }

          v19 = [v16 countByEnumeratingWithState:&v55 objects:v60 count:16];
        }

        while (v19);
      }

      v54 = 0;
      v7 = [MEMORY[0x277CBFEF8] featureValueWithDictionary:v18 error:&v54];
      v24 = v54;
      if (!v7)
      {
        v25 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          v40 = v39;
          v41 = &stru_284759D38;
          *buf = 138412802;
          if (v24)
          {
            v41 = v24;
          }

          v62 = v39;
          v63 = 2112;
          v64 = v4;
          v65 = 2112;
          v66 = v41;
          _os_log_error_impl(&dword_23224A000, v25, OS_LOG_TYPE_ERROR, "Failed to log %@ value for %@: %@", buf, 0x20u);
        }
      }

      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v49;
      v26 = objc_opt_new();
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __35__PPScoreDict_featureValueForName___block_invoke;
      v52[3] = &unk_278973CD8;
      v27 = v26;
      v53 = v27;
      [v16 enumerateValuesAndCountsUsingBlock:v52];
      v51 = 0;
      v7 = [MEMORY[0x277CBFEF8] featureValueWithDictionary:v27 error:&v51];
      v28 = v51;
      if (!v7)
      {
        v29 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v42 = objc_opt_class();
          v43 = NSStringFromClass(v42);
          v44 = v43;
          v45 = &stru_284759D38;
          *buf = 138412802;
          if (v28)
          {
            v45 = v28;
          }

          v62 = v43;
          v63 = 2112;
          v64 = v4;
          v65 = 2112;
          v66 = v45;
          _os_log_error_impl(&dword_23224A000, v29, OS_LOG_TYPE_ERROR, "Failed to log %@ value for %@: %@", buf, 0x20u);
        }
      }

      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v49;
      if (![v16 length])
      {
        v30 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v62 = v4;
          _os_log_error_impl(&dword_23224A000, v30, OS_LOG_TYPE_ERROR, "Encountered nil or empty NSString for %@", buf, 0xCu);
        }

        goto LABEL_49;
      }

      v7 = [MEMORY[0x277CBFEF8] featureValueWithString:v16];
      if (v7)
      {
        goto LABEL_38;
      }

      v30 = pp_score_interpreter_log_handle();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = 0;
          goto LABEL_39;
        }

        v16 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          *buf = 138412546;
          v62 = v33;
          v63 = 2112;
          v64 = v4;
          _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "Unrecognized object type of %@ in feature %@", buf, 0x16u);
        }

        goto LABEL_20;
      }

      v16 = v49;
      v31 = MEMORY[0x277CBFEF8];
      [v16 timeIntervalSince1970];
      v7 = [v31 featureValueWithDouble:?];
      if (v7)
      {
        goto LABEL_38;
      }

      v30 = pp_score_interpreter_log_handle();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }
    }

    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    *buf = 138412802;
    v62 = v47;
    v63 = 2112;
    v64 = v4;
    v65 = 2112;
    v66 = &stru_284759D38;
    _os_log_error_impl(&dword_23224A000, v30, OS_LOG_TYPE_ERROR, "Failed to log %@ value for %@: %@", buf, 0x20u);

LABEL_49:
LABEL_20:
    v7 = 0;
    goto LABEL_38;
  }

  v59 = 0;
  v7 = [MEMORY[0x277CBFEF8] featureValueWithDictionary:v49 error:&v59];
  v16 = v59;
  if (!v7)
  {
    v17 = pp_score_interpreter_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = v35;
      v37 = &stru_284759D38;
      *buf = 138412802;
      if (v16)
      {
        v37 = v16;
      }

      v62 = v35;
      v63 = 2112;
      v64 = v4;
      v65 = 2112;
      v66 = v37;
      _os_log_error_impl(&dword_23224A000, v17, OS_LOG_TYPE_ERROR, "Failed to log %@ value for %@: %@", buf, 0x20u);
    }

    goto LABEL_20;
  }

LABEL_38:

LABEL_39:
LABEL_12:

  objc_autoreleasePoolPop(context);
  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

void __35__PPScoreDict_featureValueForName___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:?];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a2];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (NSSet)featureNames
{
  v3 = objc_opt_new();
  for (i = 0; i < [(PPScoreDict *)self scalarValueCount]; ++i)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"scalar_%tu", i];
    [v3 addObject:v5];
  }

  for (j = 0; j < [(PPScoreDict *)self arrayValueCount]; ++j)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"array_%tu", j];
    [v3 addObject:v7];
  }

  for (k = 0; k < [(PPScoreDict *)self objectCount]; ++k)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"object_%tu", k];
    [v3 addObject:v9];
  }

  v10 = [v3 copy];

  return v10;
}

- (unint64_t)objectCount
{
  result = self->_objectStorage;
  if (result)
  {
    return [result count];
  }

  return result;
}

- (unint64_t)arrayValueCount
{
  ptr = self->_arrayValueStorage.__ptr_;
  if (ptr)
  {
    return (ptr[1] - *ptr) >> 4;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)scalarValueCount
{
  ptr = self->_scalarValueStorage.__ptr_;
  if (ptr)
  {
    return (ptr[1] - *ptr) >> 2;
  }

  else
  {
    return 0;
  }
}

- (void)setObject:(id)a3 forIndex:(unint64_t)a4
{
  v6 = a3;
  v8 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  [(NSMutableArray *)self->_objectStorage setObject:v6 atIndexedSubscript:a4];
  v7 = v8;
  if (!v8)
  {

    v7 = 0;
  }
}

- (id)objectForIndex:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_objectStorage objectAtIndexedSubscript:a3];
  v4 = [MEMORY[0x277CBEB68] null];

  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (void)setArraySharedPtr:(shared_ptr<std:(unint64_t)a4 :vector<float>>)a3 forIndex:
{
  v5 = *self->_arrayValueStorage.__ptr_;
  if (a3.var1 >= ((*(self->_arrayValueStorage.__ptr_ + 1) - v5) >> 4))
  {
    std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = (v5 + 16 * a3.var1);
  v8 = *a3.var0;
  v7 = *(a3.var0 + 1);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = v6[1];
  *v6 = v8;
  v6[1] = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

- (shared_ptr<std::vector<float>>)arraySharedPtrForIndex:(unint64_t)a3
{
  v4 = *self->_arrayValueStorage.__ptr_;
  if (a3 >= (*(self->_arrayValueStorage.__ptr_ + 1) - v4) >> 4)
  {
    std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = *(v4 + 16 * a3);
  *v3 = v5;
  if (*(&v5 + 1))
  {
    atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (id)arrayValueForIndex:(unint64_t)a3
{
  v3 = *self->_arrayValueStorage.__ptr_;
  if (a3 >= (*(self->_arrayValueStorage.__ptr_ + 1) - v3) >> 4)
  {
    std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
  }

  v4 = v3 + 16 * a3;
  v6 = *v4;
  v5 = *(v4 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:(v6[1] - *v6) >> 2];
  v9 = *v6;
  v10 = v6[1];
  if (*v6 != v10)
  {
    do
    {
      LODWORD(v8) = *v9;
      v11 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
      [v7 addObject:v11];

      ++v9;
    }

    while (v9 != v10);
  }

  v12 = [v7 copy];

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v12;
}

- (void)setScalarValue:(float)a3 forIndex:(unint64_t)a4
{
  v4 = *self->_scalarValueStorage.__ptr_;
  if (a4 >= (*(self->_scalarValueStorage.__ptr_ + 1) - v4) >> 2)
  {
    std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
  }

  *(v4 + 4 * a4) = a3;
}

- (float)scalarValueForIndex:(unint64_t)a3
{
  v3 = *self->_scalarValueStorage.__ptr_;
  if (a3 >= (*(self->_scalarValueStorage.__ptr_ + 1) - v3) >> 2)
  {
    std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v3 + 4 * a3);
}

- (PPScoreDict)initWithScoreInputSet:(id)a3
{
  v4 = a3;
  v5 = -[PPScoreDict initWithScalarValueCount:arrayValueCount:objectCount:scoreInputSet:](self, [v4 scalarScoreIndexUpperBound] - objc_msgSend(v4, "minScalarScoreIndex"), objc_msgSend(v4, "arrayScoreIndexUpperBound") - objc_msgSend(v4, "minArrayScoreIndex"), objc_msgSend(v4, "objectScoreIndexUpperBound") - objc_msgSend(v4, "minObjectScoreIndex"), v4);

  return v5;
}

- (id)initWithScalarValueCount:(uint64_t)a3 arrayValueCount:(uint64_t)a4 objectCount:(void *)a5 scoreInputSet:
{
  v10 = a5;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = PPScoreDict;
    v11 = objc_msgSendSuper2(&v19, sel_init);
    a1 = v11;
    if (v11)
    {
      if (a2)
      {
        operator new();
      }

      v16 = v11[2];
      *(a1 + 2) = 0;
      if (v16)
      {
        std::default_delete<std::vector<float>>::operator()[abi:ne200100](v16);
      }

      if (a3)
      {
        operator new();
      }

      std::unique_ptr<std::vector<std::shared_ptr<std::vector<float>>>>::reset[abi:ne200100](a1 + 3, 0);
      if (a4)
      {
        v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a4];
        v13 = *(a1 + 4);
        *(a1 + 4) = v12;

        do
        {
          v14 = *(a1 + 4);
          v15 = [MEMORY[0x277CBEB68] null];
          [v14 addObject:v15];

          --a4;
        }

        while (a4);
      }

      else
      {
        v17 = *(a1 + 4);
        *(a1 + 4) = 0;
      }

      objc_storeStrong(a1 + 1, a5);
    }
  }

  return a1;
}

@end