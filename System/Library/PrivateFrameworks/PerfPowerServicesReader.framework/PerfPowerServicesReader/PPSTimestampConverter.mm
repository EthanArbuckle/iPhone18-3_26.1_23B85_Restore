@interface PPSTimestampConverter
- (PPSTimestampConverter)initWithFilepath:(id)filepath;
- (PPSTimestampConverter)initWithSubsystem:(id)subsystem category:(id)category;
- (double)localTimeFromMonotonicTime:(double)time;
- (double)monotonicTimeFromEpochTime:(double)time;
- (double)systemOffsetFromMonotonicTime:(double)time;
- (double)timeZoneOffsetForMonotonicTime:(double)time;
- (id).cxx_construct;
- (id)_tableNameForSystemOffset;
- (id)_tableNameForTimeZoneOffset;
- (vector<std::pair<double,)_systemOffsetsForTableName:()std:(double>>> *__return_ptr)retstr :(PPSTimestampConverter *)self allocator<std:(SEL)std :(id)a4 pair<double;
- (vector<std::pair<double,)_timeZoneOffsetsForTableName:()std:(double>>> *__return_ptr)retstr :(PPSTimestampConverter *)self allocator<std:(SEL)std :(id)a4 pair<double;
- (vector<std::pair<double,)systemOffsets;
- (vector<std::pair<double,)timeZoneOffsets;
- (void)_addSystemOffset:(double)offset withMonotonicTime:(double)time;
@end

@implementation PPSTimestampConverter

- (vector<std::pair<double,)systemOffsets
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_begin = &selfCopy->_systemOffsets.__begin_;
  if (selfCopy->_systemOffsets.__begin_ == selfCopy->_systemOffsets.__end_)
  {
    _tableNameForSystemOffset = [(PPSTimestampConverter *)selfCopy _tableNameForSystemOffset];
    [(PPSTimestampConverter *)selfCopy _systemOffsetsForTableName:_tableNameForSystemOffset];
    v7 = *p_begin;
    if (*p_begin)
    {
      selfCopy->_systemOffsets.__end_ = v7;
      operator delete(v7);
      *p_begin = 0;
      selfCopy->_systemOffsets.__end_ = 0;
      selfCopy->_systemOffsets.__cap_ = 0;
    }

    *&selfCopy->_systemOffsets.__begin_ = v9;
    selfCopy->_systemOffsets.__cap_ = v10;
  }

  objc_sync_exit(selfCopy);

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<std::pair<double,double>>::__init_with_size[abi:ne200100]<std::pair<double,double>*,std::pair<double,double>*>(retstr, selfCopy->_systemOffsets.__begin_, selfCopy->_systemOffsets.__end_, (selfCopy->_systemOffsets.__end_ - selfCopy->_systemOffsets.__begin_) >> 4);
}

- (PPSTimestampConverter)initWithSubsystem:(id)subsystem category:(id)category
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  v12.receiver = self;
  v12.super_class = PPSTimestampConverter;
  v8 = [(PPSTimestampConverter *)&v12 init];
  if (v8)
  {
    v9 = [PPSOnDeviceIngesterUtilities filepathForSubsystem:subsystemCopy category:categoryCopy];
    filepath = v8->_filepath;
    v8->_filepath = v9;
  }

  return v8;
}

- (PPSTimestampConverter)initWithFilepath:(id)filepath
{
  filepathCopy = filepath;
  v9.receiver = self;
  v9.super_class = PPSTimestampConverter;
  v6 = [(PPSTimestampConverter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filepath, filepath);
  }

  return v7;
}

- (vector<std::pair<double,)timeZoneOffsets
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_begin = &selfCopy->_timeZoneOffsets.__begin_;
  if (selfCopy->_timeZoneOffsets.__begin_ == selfCopy->_timeZoneOffsets.__end_)
  {
    _tableNameForTimeZoneOffset = [(PPSTimestampConverter *)selfCopy _tableNameForTimeZoneOffset];
    [(PPSTimestampConverter *)selfCopy _timeZoneOffsetsForTableName:_tableNameForTimeZoneOffset];
    v7 = *p_begin;
    if (*p_begin)
    {
      selfCopy->_timeZoneOffsets.__end_ = v7;
      operator delete(v7);
      *p_begin = 0;
      selfCopy->_timeZoneOffsets.__end_ = 0;
      selfCopy->_timeZoneOffsets.__cap_ = 0;
    }

    *&selfCopy->_timeZoneOffsets.__begin_ = v9;
    selfCopy->_timeZoneOffsets.__cap_ = v10;
  }

  objc_sync_exit(selfCopy);

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<std::pair<double,double>>::__init_with_size[abi:ne200100]<std::pair<double,double>*,std::pair<double,double>*>(retstr, selfCopy->_timeZoneOffsets.__begin_, selfCopy->_timeZoneOffsets.__end_, (selfCopy->_timeZoneOffsets.__end_ - selfCopy->_timeZoneOffsets.__begin_) >> 4);
}

- (double)localTimeFromMonotonicTime:(double)time
{
  [(PPSTimestampConverter *)self epochTimeFromMonotonicTime:?];
  v6 = v5;
  [(PPSTimestampConverter *)self timeZoneOffsetForMonotonicTime:time];
  return v6 + v7;
}

- (double)monotonicTimeFromEpochTime:(double)time
{
  v3 = 0.0;
  if (time > 0.0)
  {
    [(PPSTimestampConverter *)self systemOffsets];
    if (v14 != v15)
    {
      v5 = (v15 - v14) >> 4;
      v6 = v14;
      do
      {
        v7 = v5 >> 1;
        v8 = &v6[2 * (v5 >> 1)];
        v10 = *v8;
        v11 = v8[1];
        v9 = v8 + 2;
        v5 += ~(v5 >> 1);
        if (v10 + v11 > time)
        {
          v5 = v7;
        }

        else
        {
          v6 = v9;
        }
      }

      while (v5);
      v12 = 0x1FFFFFFFFFFFFFFELL;
      if (v6 == v14)
      {
        v12 = 0;
      }

      v3 = time - v6[v12 + 1];
    }

    if (v14)
    {
      operator delete(v14);
    }
  }

  return v3;
}

- (double)systemOffsetFromMonotonicTime:(double)time
{
  [(PPSTimestampConverter *)self systemOffsets];
  if (v13 == v14)
  {
    v11 = 0.0;
    if (!v13)
    {
      return v11;
    }

    goto LABEL_10;
  }

  v4 = (v14 - v13) >> 4;
  v5 = v13;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[2 * (v4 >> 1)];
    v9 = *v7;
    v8 = v7 + 2;
    v4 += ~(v4 >> 1);
    if (v9 > time)
    {
      v4 = v6;
    }

    else
    {
      v5 = v8;
    }
  }

  while (v4);
  v10 = 0x1FFFFFFFFFFFFFFELL;
  if (v5 == v13)
  {
    v10 = 0;
  }

  v11 = v5[v10 + 1];
  if (v13)
  {
LABEL_10:
    operator delete(v13);
  }

  return v11;
}

- (double)timeZoneOffsetForMonotonicTime:(double)time
{
  [(PPSTimestampConverter *)self timeZoneOffsets];
  if (v13 == v14)
  {
    v11 = 0.0;
    if (!v13)
    {
      return v11;
    }

    goto LABEL_10;
  }

  v4 = (v14 - v13) >> 4;
  v5 = v13;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[2 * (v4 >> 1)];
    v9 = *v7;
    v8 = v7 + 2;
    v4 += ~(v4 >> 1);
    if (v9 > time)
    {
      v4 = v6;
    }

    else
    {
      v5 = v8;
    }
  }

  while (v4);
  v10 = 0x1FFFFFFFFFFFFFFELL;
  if (v5 == v13)
  {
    v10 = 0;
  }

  v11 = v5[v10 + 1];
  if (v13)
  {
LABEL_10:
    operator delete(v13);
  }

  return v11;
}

- (vector<std::pair<double,)_systemOffsetsForTableName:()std:(double>>> *__return_ptr)retstr :(PPSTimestampConverter *)self allocator<std:(SEL)std :(id)a4 pair<double
{
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [PPSSQLiteEntity alloc];
  v39[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  v9 = [(PPSSQLiteEntity *)v7 initWithTableNames:v8];

  v10 = [[PPSSQLiteQueryDescriptor alloc] initWithEntity:v9 predicate:0 limitCount:0 offsetCount:0];
  v38 = @"timestamp";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  [(PPSSQLiteQueryDescriptor *)v10 setOrderByProperties:v11];

  v37 = @"ASC";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  [(PPSSQLiteQueryDescriptor *)v10 setOrderByDirections:v12];

  v13 = [[PPSSQLiteDatabase alloc] initWithDatabaseURL:self->_filepath];
  v14 = [[PPSSQLiteQuery alloc] initWithDatabase:v13 descriptor:v10];
  v36[0] = @"timestamp";
  v36[1] = @"system";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0xFFEFFFFFFFFFFFFFLL;
  v25 = 0;
  v26 = &v25;
  v27 = 0x4812000000;
  v28 = __Block_byref_object_copy__5;
  v29 = __Block_byref_object_dispose__5;
  v30 = &unk_25E38FA03;
  v32 = 0;
  v33 = 0;
  __p = 0;
  v24 = 0;
  [(PPSSQLiteDatabase *)v13 openForReadingWithError:&v24];
  v16 = v24;
  v22[5] = &v25;
  v23 = v16;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __52__PPSTimestampConverter__systemOffsetsForTableName___block_invoke;
  v22[3] = &unk_279A11870;
  v22[4] = v34;
  [(PPSSQLiteQuery *)v14 enumerateProperties:v15 error:&v23 enumerationHandler:v22];
  v17 = v23;

  [(PPSSQLiteDatabase *)v13 close];
  std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<double,double> *>,std::__less<void,void>>(v26[6], v26[7], &v35, v18);
  v19 = v26;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  std::vector<std::pair<double,double>>::__init_with_size[abi:ne200100]<std::pair<double,double>*,std::pair<double,double>*>(retstr, v19[6], v19[7], (v19[7] - v19[6]) >> 4);

  _Block_object_dispose(&v25, 8);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v34, 8);

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __52__PPSTimestampConverter__systemOffsetsForTableName___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = PPSSQLiteColumnValueWithNameAsDouble(a3, @"timestamp");
  v8 = PPSSQLiteColumnValueWithNameAsDouble(a3, @"system");
  v9 = *(*(*(a1 + 32) + 8) + 24);
  v10 = fabs(v9);
  v11 = fmax(fabs(v8), 1.0);
  if (v11 < v10)
  {
    v11 = v10;
  }

  if (vabdd_f64(v8, v9) > v11 * 2.22044605e-16)
  {
    v12 = *(*(a1 + 40) + 8);
    v14 = v12[7];
    v13 = v12[8];
    if (v14 >= v13)
    {
      v16 = v12[6];
      v17 = v14 - v16;
      v18 = (v14 - v16) >> 4;
      v19 = v18 + 1;
      if ((v18 + 1) >> 60)
      {
        std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
      }

      v20 = v13 - v16;
      if (v20 >> 3 > v19)
      {
        v19 = v20 >> 3;
      }

      v21 = v20 >= 0x7FFFFFFFFFFFFFF0;
      v22 = 0xFFFFFFFFFFFFFFFLL;
      if (!v21)
      {
        v22 = v19;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,double>>>((v12 + 6), v22);
      }

      v23 = (16 * v18);
      *v23 = v7;
      v23[1] = v8;
      v15 = 16 * v18 + 16;
      memcpy(0, v16, v17);
      v24 = v12[6];
      v12[6] = 0;
      v12[7] = v15;
      v12[8] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v7;
      *(v14 + 1) = v8;
      v15 = (v14 + 16);
    }

    v12[7] = v15;
    *(*(*(a1 + 32) + 8) + 24) = v8;
  }

  objc_autoreleasePoolPop(v6);

  return 1;
}

- (id)_tableNameForSystemOffset
{
  v3 = [PPSDataIngesterCommonUtilities fileTypeForFilepath:self->_filepath]- 1;
  if (v3 > 4)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = off_279A11890[v3];
    v5 = off_279A118B8[v3];
  }

  v6 = [PPSOffDeviceIngesterUtilities dataSourceForFilepath:self->_filepath subsystem:v5 category:v4];

  return v6;
}

- (id)_tableNameForTimeZoneOffset
{
  v3 = [PPSOffDeviceIngesterUtilities metricDefinitionForFilepath:self->_filepath subsystem:@"TimeZone" category:@"LocaleMetrics" metricName:@"SecondsFromGMT"];
  v4 = [PPSDataIngesterCommonUtilities dataSourceForMetricDefinition:v3];
  if (!v3)
  {
    v5 = [PPSDataIngesterCommonUtilities fileTypeForFilepath:self->_filepath]- 1;
    if (v5 >= 5)
    {
      v7 = @"TimeZone";
      v6 = @"LocaleMetrics";
    }

    else
    {
      v6 = off_279A118E0[v5];
      v7 = off_279A11908[v5];
    }

    v8 = [PPSOffDeviceIngesterUtilities dataSourceForFilepath:self->_filepath subsystem:v7 category:v6];

    v4 = v8;
  }

  return v4;
}

- (vector<std::pair<double,)_timeZoneOffsetsForTableName:()std:(double>>> *__return_ptr)retstr :(PPSTimestampConverter *)self allocator<std:(SEL)std :(id)a4 pair<double
{
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [PPSSQLiteEntity alloc];
  v39[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  v9 = [(PPSSQLiteEntity *)v7 initWithTableNames:v8];

  v10 = [[PPSSQLiteQueryDescriptor alloc] initWithEntity:v9 predicate:0 limitCount:0 offsetCount:0];
  v38 = @"timestamp";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  [(PPSSQLiteQueryDescriptor *)v10 setOrderByProperties:v11];

  v37 = @"ASC";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  [(PPSSQLiteQueryDescriptor *)v10 setOrderByDirections:v12];

  v13 = [[PPSSQLiteDatabase alloc] initWithDatabaseURL:self->_filepath];
  v14 = [[PPSSQLiteQuery alloc] initWithDatabase:v13 descriptor:v10];
  v36[0] = @"timestamp";
  v36[1] = @"SecondsFromGMT";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0xFFEFFFFFFFFFFFFFLL;
  v25 = 0;
  v26 = &v25;
  v27 = 0x4812000000;
  v28 = __Block_byref_object_copy__5;
  v29 = __Block_byref_object_dispose__5;
  v30 = &unk_25E38FA03;
  v32 = 0;
  v33 = 0;
  __p = 0;
  v24 = 0;
  [(PPSSQLiteDatabase *)v13 openForReadingWithError:&v24];
  v16 = v24;
  v22[5] = &v25;
  v23 = v16;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54__PPSTimestampConverter__timeZoneOffsetsForTableName___block_invoke;
  v22[3] = &unk_279A11870;
  v22[4] = v34;
  [(PPSSQLiteQuery *)v14 enumerateProperties:v15 error:&v23 enumerationHandler:v22];
  v17 = v23;

  [(PPSSQLiteDatabase *)v13 close];
  std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<double,double> *>,std::__less<void,void>>(v26[6], v26[7], &v35, v18);
  v19 = v26;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  std::vector<std::pair<double,double>>::__init_with_size[abi:ne200100]<std::pair<double,double>*,std::pair<double,double>*>(retstr, v19[6], v19[7], (v19[7] - v19[6]) >> 4);

  _Block_object_dispose(&v25, 8);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v34, 8);

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __54__PPSTimestampConverter__timeZoneOffsetsForTableName___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = PPSSQLiteColumnValueWithNameAsDouble(a3, @"timestamp");
  v8 = PPSSQLiteColumnValueWithNameAsDouble(a3, @"SecondsFromGMT");
  v9 = *(*(*(a1 + 32) + 8) + 24);
  v10 = fabs(v9);
  v11 = fmax(fabs(v8), 1.0);
  if (v11 < v10)
  {
    v11 = v10;
  }

  if (vabdd_f64(v8, v9) > v11 * 2.22044605e-16)
  {
    v12 = *(*(a1 + 40) + 8);
    v14 = v12[7];
    v13 = v12[8];
    if (v14 >= v13)
    {
      v16 = v12[6];
      v17 = v14 - v16;
      v18 = (v14 - v16) >> 4;
      v19 = v18 + 1;
      if ((v18 + 1) >> 60)
      {
        std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
      }

      v20 = v13 - v16;
      if (v20 >> 3 > v19)
      {
        v19 = v20 >> 3;
      }

      v21 = v20 >= 0x7FFFFFFFFFFFFFF0;
      v22 = 0xFFFFFFFFFFFFFFFLL;
      if (!v21)
      {
        v22 = v19;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,double>>>((v12 + 6), v22);
      }

      v23 = (16 * v18);
      *v23 = v7;
      v23[1] = v8;
      v15 = 16 * v18 + 16;
      memcpy(0, v16, v17);
      v24 = v12[6];
      v12[6] = 0;
      v12[7] = v15;
      v12[8] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v7;
      *(v14 + 1) = v8;
      v15 = (v14 + 16);
    }

    v12[7] = v15;
    *(*(*(a1 + 32) + 8) + 24) = v8;
  }

  objc_autoreleasePoolPop(v6);

  return 1;
}

- (void)_addSystemOffset:(double)offset withMonotonicTime:(double)time
{
  end = self->_systemOffsets.__end_;
  cap = self->_systemOffsets.__cap_;
  if (end >= cap)
  {
    begin = self->_systemOffsets.__begin_;
    v9 = end - begin;
    v10 = (end - begin) >> 4;
    v11 = v10 + 1;
    if ((v10 + 1) >> 60)
    {
      std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
    }

    v12 = cap - begin;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF0;
    v14 = 0xFFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,double>>>(&self->_systemOffsets, v14);
    }

    v15 = (16 * v10);
    *v15 = time;
    v15[1] = offset;
    v7 = (16 * v10 + 16);
    memcpy(0, begin, v9);
    v16 = self->_systemOffsets.__begin_;
    self->_systemOffsets.__begin_ = 0;
    self->_systemOffsets.__end_ = v7;
    self->_systemOffsets.__cap_ = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *end = time;
    end[1] = offset;
    v7 = end + 2;
  }

  self->_systemOffsets.__end_ = v7;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  return self;
}

@end