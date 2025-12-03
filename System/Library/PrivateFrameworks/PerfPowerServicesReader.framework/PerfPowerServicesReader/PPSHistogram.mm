@interface PPSHistogram
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHistogram:(id)histogram;
- (NSArray)metrics;
- (PPSHistogram)initWithBinCount:(unint64_t)count range:(id)range metricName:(id)name;
- (PPSHistogram)initWithBinCount:(unint64_t)count range:(id)range metricName:(id)name samples:(id)samples;
- (PPSHistogram)initWithCoder:(id)coder;
- (PPSHistogram)initWithDimensions:(id)dimensions;
- (PPSHistogram)initWithHistogram:(id)histogram;
- (__n128)counts:;
- (id)JSONRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)dictionary;
- (id)indicesFor:(id)for;
- (uint64_t)counts:;
- (void)JSONRepresentation;
- (void)counts:;
- (void)encodeWithCoder:(id)coder;
- (void)recordSample:(id)sample;
@end

@implementation PPSHistogram

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PPSHistogram allocWithZone:zone];

  return [(PPSHistogram *)v4 initWithHistogram:self];
}

- (PPSHistogram)initWithCoder:(id)coder
{
  v14[35] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PPSHistogram;
  if ([(PPSHistogram *)&v13 init])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_PPSHistogram"];
    v6 = v5;
    bytes = [v5 bytes];
    v8 = [v5 length];
    v9 = v8;
    if (v8 < 0x7FFFFFFFFFFFFFF8)
    {
      if (v8 < 0x17)
      {
        *(&__dst[0].__r_.__value_.__s + 23) = v8;
        if (v8)
        {
          memmove(__dst, bytes, v8);
        }

        __dst[0].__r_.__value_.__s.__data_[v9] = 0;
        std::istringstream::basic_istringstream[abi:ne200100](v14, __dst, 8);
        if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst[0].__r_.__value_.__l.__data_);
        }

        boost::archive::text_iarchive::text_iarchive();
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v4[33] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  std::ostringstream::basic_ostringstream[abi:ne200100](v4);
  boost::archive::text_oarchive::text_oarchive();
}

- (PPSHistogram)initWithBinCount:(unint64_t)count range:(id)range metricName:(id)name
{
  v10 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = PPSHistogram;
  if ([(PPSHistogram *)&v9 init])
  {
    operator new();
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

- (PPSHistogram)initWithBinCount:(unint64_t)count range:(id)range metricName:(id)name samples:(id)samples
{
  var1 = range.var1;
  var0 = range.var0;
  v28 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  var1 = [(PPSHistogram *)self initWithBinCount:count range:name metricName:var0, var1];
  v13 = var1;
  if (var1)
  {
    if (!var1->_histogramPtr.__ptr_)
    {
      v19 = 0;
      goto LABEL_13;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = samplesCopy;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v15)
    {
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v26 = *(*(&v22 + 1) + 8 * v17);
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:{1, v22}];
          [(PPSHistogram *)v13 recordSample:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v15);
    }
  }

  v19 = v13;
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (PPSHistogram)initWithDimensions:(id)dimensions
{
  v85 = *MEMORY[0x277D85DE8];
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = dimensions;
  v3 = [obj countByEnumeratingWithState:&v74 objects:v84 count:{16, dimensions}];
  if (v3)
  {
    v55 = *v75;
LABEL_3:
    v56 = 0;
    v53 = v3;
    while (1)
    {
      if (*v75 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v4 = *(*(&v74 + 1) + 8 * v56);
      v5 = [v4 size];
      [v4 range];
      v7 = v6;
      [v4 range];
      v9 = v8;
      if (v5)
      {
        if (v7 == 0.0 && v8 == 0.0)
        {
          edges = [v4 edges];
          v11 = [edges count] == 0;

          if (v11)
          {
            v48 = logHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              [PPSHistogram initWithDimensions:];
            }

            goto LABEL_70;
          }
        }
      }

      if (v9 < v7)
      {
        break;
      }

      if (!v5 || ([v4 edges], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count") == 0, v12, v13))
      {
        v48 = logHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [PPSHistogram initWithDimensions:];
        }

LABEL_70:

        v47 = 0;
        goto LABEL_71;
      }

      LODWORD(v68) = v5;
      *(&v68 + 1) = v7;
      v69 = v9;
      v70 = 0;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      edges2 = [v4 edges];
      v15 = [edges2 count] == 0;

      if (!v15)
      {
        if ([v4 isCategoryDimension])
        {
          v66 = 0uLL;
          v67 = 0uLL;
          v64 = 0uLL;
          v65 = 0uLL;
          edges3 = [v4 edges];
          v17 = [edges3 countByEnumeratingWithState:&v64 objects:v83 count:16];
          if (v17)
          {
            v18 = *v65;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v65 != v18)
                {
                  objc_enumerationMutation(edges3);
                }

                std::string::basic_string[abi:ne200100]<0>(__p, [*(*(&v64 + 1) + 8 * i) UTF8String]);
                v20 = *(&v71 + 1);
                if (*(&v71 + 1) >= v72)
                {
                  v22 = 0xAAAAAAAAAAAAAAABLL * ((*(&v71 + 1) - v71) >> 3);
                  v23 = v22 + 1;
                  if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
                  }

                  if (0x5555555555555556 * ((v72 - v71) >> 3) > v23)
                  {
                    v23 = 0x5555555555555556 * ((v72 - v71) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v72 - v71) >> 3) >= 0x555555555555555)
                  {
                    v24 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v24 = v23;
                  }

                  v81.__end_cap_.__value_ = &v71;
                  if (v24)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v71, v24);
                  }

                  v25 = 8 * ((*(&v71 + 1) - v71) >> 3);
                  v26 = *__p;
                  *(v25 + 16) = v63;
                  *v25 = v26;
                  __p[1] = 0;
                  v63 = 0;
                  __p[0] = 0;
                  v27 = 24 * v22 + 24;
                  v28 = 24 * v22 - (*(&v71 + 1) - v71);
                  memcpy((v25 - (*(&v71 + 1) - v71)), v71, *(&v71 + 1) - v71);
                  v29 = v71;
                  v30 = v72;
                  *&v71 = v28;
                  *(&v71 + 1) = v27;
                  *&v72 = 0;
                  v81.__end_ = v29;
                  v81.__end_cap_.__value_ = v30;
                  v81.__first_ = v29;
                  v81.__begin_ = v29;
                  std::__split_buffer<std::string>::~__split_buffer(&v81);
                  *(&v71 + 1) = v27;
                  if (SHIBYTE(v63) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                else
                {
                  v21 = *__p;
                  *(*(&v71 + 1) + 16) = v63;
                  *v20 = v21;
                  *(&v71 + 1) = v20 + 24;
                }
              }

              v17 = [edges3 countByEnumeratingWithState:&v64 objects:v83 count:16];
            }

            while (v17);
          }
        }

        else
        {
          v60 = 0uLL;
          v61 = 0uLL;
          v58 = 0uLL;
          v59 = 0uLL;
          edges3 = [v4 edges];
          v31 = [edges3 countByEnumeratingWithState:&v58 objects:v82 count:16];
          if (v31)
          {
            v32 = *v59;
            do
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v59 != v32)
                {
                  objc_enumerationMutation(edges3);
                }

                [*(*(&v58 + 1) + 8 * j) doubleValue];
                v35 = v73;
                if (v73 >= *(&v73 + 1))
                {
                  v37 = *(&v72 + 1);
                  v38 = v73 - *(&v72 + 1);
                  v39 = (v73 - *(&v72 + 1)) >> 3;
                  v40 = v39 + 1;
                  if ((v39 + 1) >> 61)
                  {
                    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
                  }

                  v41 = *(&v73 + 1) - *(&v72 + 1);
                  if ((*(&v73 + 1) - *(&v72 + 1)) >> 2 > v40)
                  {
                    v40 = v41 >> 2;
                  }

                  v42 = v41 >= 0x7FFFFFFFFFFFFFF8;
                  v43 = 0x1FFFFFFFFFFFFFFFLL;
                  if (!v42)
                  {
                    v43 = v40;
                  }

                  if (v43)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&v72 + 8, v43);
                  }

                  *(8 * v39) = v34;
                  v36 = 8 * v39 + 8;
                  memcpy(0, v37, v38);
                  v44 = *(&v72 + 1);
                  *(&v72 + 1) = 0;
                  v73 = v36;
                  if (v44)
                  {
                    operator delete(v44);
                  }
                }

                else
                {
                  *v73 = v34;
                  v36 = v35 + 8;
                }

                *&v73 = v36;
              }

              v31 = [edges3 countByEnumeratingWithState:&v58 objects:v82 count:16];
            }

            while (v31);
          }
        }
      }

      v45 = v79;
      if (v79 >= v80)
      {
        v46 = std::vector<pps::AxisConfig_Internal>::__emplace_back_slow_path<pps::AxisConfig_Internal&>(&v78, &v68);
      }

      else
      {
        std::vector<pps::AxisConfig_Internal>::__construct_one_at_end[abi:ne200100]<pps::AxisConfig_Internal&>(&v78, &v68);
        v46 = v45 + 80;
      }

      v79 = v46;
      if (*(&v72 + 1))
      {
        *&v73 = *(&v72 + 1);
        operator delete(*(&v72 + 1));
      }

      v81.__first_ = &v71;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v81);
      if (++v56 == v53)
      {
        v3 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_61;
      }
    }

    v48 = logHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [PPSHistogram initWithDimensions:];
    }

    goto LABEL_70;
  }

LABEL_61:

  v57.receiver = self;
  v57.super_class = PPSHistogram;
  if ([(PPSHistogram *)&v57 init])
  {
    operator new();
  }

  v47 = 0;
  self = v47;
LABEL_71:
  *&v68 = &v78;
  std::vector<pps::AxisConfig_Internal>::__destroy_vector::operator()[abi:ne200100](&v68);

  v49 = *MEMORY[0x277D85DE8];
  return v47;
}

- (BOOL)isEqualToHistogram:(id)histogram
{
  histogramCopy = histogram;
  rank = [(PPSHistogram *)self rank];
  if (rank != [histogramCopy rank])
  {
    goto LABEL_12;
  }

  v6 = 0;
  while (v6 < [(PPSHistogram *)self rank])
  {
    dimensions = [(PPSHistogram *)self dimensions];
    v8 = [dimensions objectAtIndexedSubscript:v6];
    [v8 range];
    v10 = v9;
    v12 = v11;
    dimensions2 = [histogramCopy dimensions];
    v14 = [dimensions2 objectAtIndexedSubscript:v6];
    [v14 range];
    v16 = v15;
    v18 = v17;

    v19 = 0;
    if (v10 == v16)
    {
      ++v6;
      if (v12 == v18)
      {
        continue;
      }
    }

    goto LABEL_13;
  }

  if (histogramCopy && (v20 = -[PPSHistogram size](self, "size"), v20 == [histogramCopy size]) && (v21 = -[PPSHistogram sum:](self, "sum:", 1), v21 == objc_msgSend(histogramCopy, "sum:", 1)))
  {
    ptr = self->_histogramPtr.__ptr_;
    v23 = histogramCopy[1];
    if (ptr == v23)
    {
      v19 = 1;
    }

    else
    {
      v19 = pps::Histogram_Internal::operator==(ptr, v23);
    }
  }

  else
  {
LABEL_12:
    v19 = 0;
  }

LABEL_13:

  return v19;
}

- (NSArray)metrics
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  dimensions = [(PPSHistogram *)self dimensions];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(dimensions, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  dimensions2 = [(PPSHistogram *)self dimensions];
  v7 = [dimensions2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(dimensions2);
        }

        metricName = [*(*(&v14 + 1) + 8 * i) metricName];
        [v5 addObject:metricName];
      }

      v7 = [dimensions2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v5 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)JSONRepresentation
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  dimensions = [(PPSHistogram *)self dimensions];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(dimensions, "count")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  dimensions2 = [(PPSHistogram *)self dimensions];
  v7 = [dimensions2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(dimensions2);
        }

        v10 = [*(*(&v20 + 1) + 8 * i) performSelector:sel_dictionary];
        if (v10)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [dimensions2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v11 = objc_opt_new();
  v12 = [(PPSHistogram *)self counts:0];
  [v11 setObject:v12 forKeyedSubscript:@"counts"];

  [v11 setObject:v5 forKeyedSubscript:@"dimensions"];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PPSHistogram sum:](self, "sum:", 0)}];
  [v11 setObject:v13 forKeyedSubscript:@"sum"];

  v19 = 0;
  v14 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v11 options:1 error:&v19];
  v15 = v19;
  if (v15)
  {
    v16 = PPSReaderLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PPSHistogram JSONRepresentation];
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)indicesFor:(id)for
{
  v72 = *MEMORY[0x277D85DE8];
  __src = 0;
  v69 = 0;
  v70 = 0;
  forCopy = for;
  std::vector<double>::reserve(&__src, [forCopy count]);
  selfCopy = self;
  pps::Histogram_Internal::categoriesPerAxis(self->_histogramPtr.__ptr_, &v66);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = forCopy;
  v4 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v63;
    do
    {
      v7 = 0;
      do
      {
        if (*v63 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v62 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 doubleValue];
          v10 = v69;
          if (v69 >= v70)
          {
            v14 = __src;
            v15 = v69 - __src;
            v16 = (v69 - __src) >> 3;
            v17 = v16 + 1;
            if ((v16 + 1) >> 61)
            {
              std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
            }

            v18 = v70 - __src;
            if ((v70 - __src) >> 2 > v17)
            {
              v17 = v18 >> 2;
            }

            v19 = v18 >= 0x7FFFFFFFFFFFFFF8;
            v20 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v19)
            {
              v20 = v17;
            }

            if (v20)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v20);
            }

            v21 = (8 * v16);
            v22 = &v21[-((v69 - __src) >> 3)];
            *v21 = v9;
            v11 = (v21 + 1);
            memcpy(v22, v14, v15);
            v23 = __src;
            __src = v22;
            v69 = v11;
            v70 = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v69 = v9;
            v11 = v10 + 8;
          }

          v69 = v11;
          goto LABEL_28;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_28;
        }

        v12 = v67[0];
        if (!v67[0])
        {
          goto LABEL_17;
        }

        v13 = v67;
        do
        {
          if (*(v12 + 8) >= v5)
          {
            v13 = v12;
          }

          v12 = *&v12[8 * (*(v12 + 8) < v5)];
        }

        while (v12);
        if (v13 == v67 || *(v13 + 8) > v5)
        {
LABEL_17:
          *&v59 = [obj count];
          std::vector<double>::push_back[abi:ne200100](&__src, &v59);
          goto LABEL_28;
        }

        *&v59 = 0.0;
        v60 = 0;
        v61 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v59, v13[5], v13[6], 0xAAAAAAAAAAAAAAABLL * ((v13[6] - v13[5]) >> 3));
        v24 = v59;
        v25 = v60;
        v26 = 0.0;
        while (v24 != v25)
        {
          v27 = v8;
          std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
          v28 = *(v24 + 23);
          if (v28 >= 0)
          {
            v29 = *(v24 + 23);
          }

          else
          {
            v29 = v24[1];
          }

          v30 = v58;
          v31 = v58;
          if ((v58 & 0x80u) != 0)
          {
            v30 = __p[1];
          }

          if (v29 != v30)
          {
            v34 = 0;
            if ((v58 & 0x80000000) == 0)
            {
              goto LABEL_48;
            }

LABEL_47:
            operator delete(__p[0]);
            goto LABEL_48;
          }

          if (v28 >= 0)
          {
            v32 = v24;
          }

          else
          {
            v32 = *v24;
          }

          if ((v58 & 0x80u) == 0)
          {
            v33 = __p;
          }

          else
          {
            v33 = __p[0];
          }

          v34 = memcmp(v32, v33, v29) == 0;
          if (v31 < 0)
          {
            goto LABEL_47;
          }

LABEL_48:
          if (v34)
          {
            break;
          }

          v26 = v26 + 1.0;
          v24 += 3;
        }

        v35 = v69;
        if (v69 >= v70)
        {
          v37 = __src;
          v38 = v69 - __src;
          v39 = (v69 - __src) >> 3;
          v40 = v39 + 1;
          if ((v39 + 1) >> 61)
          {
            std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
          }

          v41 = v70 - __src;
          if ((v70 - __src) >> 2 > v40)
          {
            v40 = v41 >> 2;
          }

          v19 = v41 >= 0x7FFFFFFFFFFFFFF8;
          v42 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v19)
          {
            v42 = v40;
          }

          if (v42)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v42);
          }

          v43 = (8 * v39);
          v44 = &v43[-((v69 - __src) >> 3)];
          *v43 = v26;
          v36 = v43 + 1;
          memcpy(v44, v37, v38);
          v45 = __src;
          __src = v44;
          v69 = v36;
          v70 = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          *v69 = v26;
          v36 = (v35 + 8);
        }

        v69 = v36;
        __p[0] = &v59;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_28:
        ++v5;
        ++v7;
      }

      while (v7 != v4);
      v46 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
      v4 = v46;
    }

    while (v46);
  }

  pps::Histogram_Internal::indicesOfSample(selfCopy->_histogramPtr.__ptr_, &__src, &v59);
  v47 = objc_opt_new();
  v48 = v59;
  v49 = v60;
  if (v59 != v60)
  {
    do
    {
      v50 = [MEMORY[0x277CCABB0] numberWithInteger:{*v48, selfCopy}];
      [v47 addObject:v50];

      ++v48;
    }

    while (v48 != v49);
  }

  v51 = [v47 copy];

  if (*&v59 != 0.0)
  {
    v60 = v59;
    operator delete(v59);
  }

  std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy(&v66, v67[0]);
  if (__src)
  {
    v69 = __src;
    operator delete(__src);
  }

  v52 = *MEMORY[0x277D85DE8];

  return v51;
}

- (void)recordSample:(id)sample
{
  v55 = *MEMORY[0x277D85DE8];
  __src = 0;
  v52 = 0;
  v53 = 0;
  sampleCopy = sample;
  pps::Histogram_Internal::categoriesPerAxis(self->_histogramPtr.__ptr_, &v49);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  selfCopy = self;
  obj = sampleCopy;
  v4 = [obj countByEnumeratingWithState:&v45 objects:v54 count:{16, sampleCopy}];
  if (v4)
  {
    v5 = 0;
    v6 = *v46;
    do
    {
      v7 = 0;
      do
      {
        if (*v46 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v45 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 doubleValue];
          v42 = v9;
          std::vector<double>::push_back[abi:ne200100](&__src, &v42);
          goto LABEL_17;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v50[0];
          if (!v50[0])
          {
            goto LABEL_16;
          }

          v11 = v50;
          do
          {
            if (*(v10 + 8) >= v5)
            {
              v11 = v10;
            }

            v10 = *&v10[8 * (*(v10 + 8) < v5)];
          }

          while (v10);
          if (v11 == v50 || *(v11 + 8) > v5)
          {
LABEL_16:
            v42 = [obj count];
            std::vector<double>::push_back[abi:ne200100](&__src, &v42);
            goto LABEL_17;
          }

          v42 = 0.0;
          v43 = 0;
          v44 = 0;
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v42, v11[5], v11[6], 0xAAAAAAAAAAAAAAABLL * ((v11[6] - v11[5]) >> 3));
          v13 = v42;
          v12 = v43;
          v14 = 0.0;
          if (*&v42 == v43)
          {
            goto LABEL_40;
          }

          while (1)
          {
            v15 = v8;
            std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
            v16 = *(*&v13 + 23);
            if (v16 >= 0)
            {
              v17 = *(*&v13 + 23);
            }

            else
            {
              v17 = *(*&v13 + 8);
            }

            v18 = v41;
            v19 = v41;
            if ((v41 & 0x80u) != 0)
            {
              v18 = __p[1];
            }

            if (v17 != v18)
            {
              break;
            }

            if (v16 >= 0)
            {
              v20 = v13;
            }

            else
            {
              v20 = **&v13;
            }

            if ((v41 & 0x80u) == 0)
            {
              v21 = __p;
            }

            else
            {
              v21 = __p[0];
            }

            v22 = memcmp(*&v20, v21, v17) == 0;
            if (v19 < 0)
            {
              goto LABEL_35;
            }

LABEL_36:
            if (v22)
            {
              self = selfCopy;
LABEL_40:
              v23 = v52;
              if (v52 >= v53)
              {
                v25 = __src;
                v26 = v52 - __src;
                v27 = (v52 - __src) >> 3;
                v28 = v27 + 1;
                if ((v27 + 1) >> 61)
                {
                  std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
                }

                v29 = v53 - __src;
                if ((v53 - __src) >> 2 > v28)
                {
                  v28 = v29 >> 2;
                }

                v30 = v29 >= 0x7FFFFFFFFFFFFFF8;
                v31 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v30)
                {
                  v31 = v28;
                }

                if (v31)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v31);
                }

                v32 = (8 * v27);
                v33 = &v32[-((v52 - __src) >> 3)];
                *v32 = v14;
                v24 = v32 + 1;
                memcpy(v33, v25, v26);
                v34 = __src;
                __src = v33;
                v52 = v24;
                v53 = 0;
                if (v34)
                {
                  operator delete(v34);
                }
              }

              else
              {
                *v52 = v14;
                v24 = v23 + 1;
              }

              v52 = v24;
              __p[0] = &v42;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
              goto LABEL_17;
            }

            v14 = v14 + 1.0;
            *&v13 += 24;
            self = selfCopy;
            if (*&v13 == v12)
            {
              goto LABEL_40;
            }
          }

          v22 = 0;
          if ((v41 & 0x80000000) == 0)
          {
            goto LABEL_36;
          }

LABEL_35:
          operator delete(__p[0]);
          goto LABEL_36;
        }

LABEL_17:
        ++v5;
        ++v7;
      }

      while (v7 != v4);
      v35 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
      v4 = v35;
    }

    while (v35);
  }

  pps::Histogram_Internal::record(self->_histogramPtr.__ptr_, &__src);
  std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy(&v49, v50[0]);
  if (__src)
  {
    v52 = __src;
    operator delete(__src);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)dictionary
{
  v3 = objc_opt_new();
  v4 = [(PPSHistogram *)self counts:0];
  [v3 setObject:v4 forKeyedSubscript:@"counts"];

  dimensions = [(PPSHistogram *)self dimensions];
  [v3 setObject:dimensions forKeyedSubscript:@"dimensions"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PPSHistogram sum:](self, "sum:", 0)}];
  [v3 setObject:v6 forKeyedSubscript:@"sum"];

  v7 = [v3 copy];

  return v7;
}

- (PPSHistogram)initWithHistogram:(id)histogram
{
  histogramCopy = histogram;
  v8.receiver = self;
  v8.super_class = PPSHistogram;
  if ([(PPSHistogram *)&v8 init])
  {
    v5 = histogramCopy[1];
    operator new();
  }

  v6 = 0;

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PPSHistogram *)self description];
  v7 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, v6];

  return v7;
}

- (id)description
{
  dictionary = [(PPSHistogram *)self dictionary];
  v3 = [dictionary description];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPSHistogram *)self isEqualToHistogram:equalCopy];
  }

  return v5;
}

- (__n128)counts:
{
  *a2 = &unk_286FF2690;
  result = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = result;
  return result;
}

- (void)counts:
{
  v11 = *a2;
  if (v11 && **(self + 8) < ((*(*(self + 16) + 8) - **(self + 16)) >> 3))
  {
    for (i = 0; i < [v11 count]; ++i)
    {
      v4 = [v11 objectAtIndexedSubscript:i];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v6 = *(self + 24);
        v7 = [v11 objectAtIndexedSubscript:i];
        std::function<void ()(NSMutableArray *)>::operator()(v6, v7);
      }

      else
      {
        v8 = [v11 objectAtIndexedSubscript:i];
        objc_opt_class();
        v9 = objc_opt_isKindOfClass();

        if (v9)
        {
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(**(self + 16) + 8 * **(self + 8))];
          [v11 setObject:v10 atIndexedSubscript:i];

          ++**(self + 8);
        }
      }
    }
  }
}

- (uint64_t)counts:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)initWithBinCount:range:metricName:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1(&dword_25E225000, v0, v1, "Couldn't initialize <PPSHistogram: %p> due to unknown exception", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithBinCount:range:metricName:.cold.2()
{
  OUTLINED_FUNCTION_5();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(v1, v2);
  (*(v3 + 16))(v4);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25E225000, v5, v6, "Couldn't initialize <PPSHistogram: %p> due to std::exception - %s", v7, v8, v9, v10, v12);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)initWithDimensions:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1(&dword_25E225000, v0, v1, "Couldn't initialize <PPSHistogram: %p> - invalid number of bins or edges in dimension", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithDimensions:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1(&dword_25E225000, v0, v1, "Couldn't initialize <PPSHistogram: %p> - maxRange < maxRange", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithDimensions:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1(&dword_25E225000, v0, v1, "Couldn't initialize <PPSHistogram: %p> - mismatch between number of bins and edges", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)JSONRepresentation
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_25E225000, v0, OS_LOG_TYPE_DEBUG, "Error while parsing JSON data: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)recordSample:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1(&dword_25E225000, v0, v1, "Couldn't record sample for <PPSHistogram: %p> due to unknown exception", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)recordSample:.cold.2()
{
  OUTLINED_FUNCTION_5();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(v1, v2);
  (*(v3 + 16))(v4);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25E225000, v5, v6, "Couldn't record sample for <PPSHistogram: %p> due to std::exception - %s", v7, v8, v9, v10, v12);
  v11 = *MEMORY[0x277D85DE8];
}

@end