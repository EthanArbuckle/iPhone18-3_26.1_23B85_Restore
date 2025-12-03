@interface MTMPULayoutInterpolator
- (Point3D)_pointForEntry:(Entry)entry andPrimaryReferenceMetric:(double)metric usingFallbackSecondaryReferenceMetric:(double)referenceMetric;
- (double)_interpolatedValueForPrimaryReferenceMetric:(double)metric secondaryReferenceMetric:(double)referenceMetric betweenFirstEntriesContainer:(void *)container andSecondEntriesContainer:(void *)entriesContainer;
- (double)valueForReferenceMetric:(double)metric secondaryReferenceMetric:(double)referenceMetric;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (vector<MTMPU::Point3D,)_sortedPointsFor3DInterpolationFromEntriesContainer:(MTMPULayoutInterpolator *)self usingQueriedPoint:(SEL)point fallbackSecondaryReferenceMetric:(void *)metric;
- (void)_sortPointsFor3DInterpolation:(double *)interpolation usingQueriedPoint:(uint64_t)point;
- (void)_sortPointsFor3DInterpolation:(void *)interpolation usingQueriedPoint:(Point3D)point;
- (void)addValue:(double)value forReferenceMetric:(double)metric secondaryReferenceMetric:(double)referenceMetric;
@end

@implementation MTMPULayoutInterpolator

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  begin = self->_entriesContainers.__begin_;
  end = self->_entriesContainers.__end_;
  if (begin == end)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v9 += MTMPU::LayoutInterpolator::EntriesContainer::entriesCount(begin);
      begin = (begin + 32);
    }

    while (begin != end);
  }

  [v6 appendFormat:@"; entries (%ld) = [", v9];
  v10 = self->_entriesContainers.__begin_;
  v11 = self->_entriesContainers.__end_;
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      v13 = MTMPU::LayoutInterpolator::EntriesContainer::primaryReferenceMetric(v10);
      MTMPU::LayoutInterpolator::EntriesContainer::copyEntriesVector(v10, &v19);
      v14 = v19;
      v15 = v20;
      if (v19 != v20)
      {
        do
        {
          v16 = *v14;
          v17 = *(v14 + 1);
          objc_msgSend(v6, "appendFormat:", @"\n    (referenceMetric: %f"), *&v13;
          if (!MTMPUFloatEqualToFloat(v16, -1.13427449e38))
          {
            [v6 appendFormat:@", secondaryReferenceMetric: %f", *&v16];
          }

          [v6 appendFormat:@", value: %f, "], v17);
          v14 += 2;
        }

        while (v14 != v15);
        v12 = 1;
        v14 = v19;
      }

      if (v14)
      {
        v20 = v14;
        operator delete(v14);
      }

      v10 = (v10 + 32);
    }

    while (v10 != v11);
    if (v12)
    {
      [v6 appendString:@"\n"];
    }
  }

  [v6 appendString:@"]"];
  [v6 appendString:@">"];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    if (v4 != self)
    {
      std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::__assign_with_size[abi:ne200100]<MTMPU::LayoutInterpolator::EntriesContainer*,MTMPU::LayoutInterpolator::EntriesContainer*>(&v4->_entriesContainers, self->_entriesContainers.__begin_, self->_entriesContainers.__end_, (self->_entriesContainers.__end_ - self->_entriesContainers.__begin_) >> 5);
    }

    v5->_hasEntryWithSpecificSecondaryReferenceMetric = self->_hasEntryWithSpecificSecondaryReferenceMetric;
  }

  return v5;
}

- (void)addValue:(double)value forReferenceMetric:(double)metric secondaryReferenceMetric:(double)referenceMetric
{
  MTMPU::LayoutInterpolator::EntriesContainer::EntriesContainer(v28, metric);
  begin = self->_entriesContainers.__begin_;
  end = self->_entriesContainers.__end_;
  if (end == begin)
  {
    begin = self->_entriesContainers.__end_;
  }

  else
  {
    v10 = (end - begin) >> 5;
    do
    {
      v11 = (begin + 32 * (v10 >> 1));
      v12 = MTMPU::LayoutInterpolator::EntriesContainer::primaryReferenceMetric(v11);
      v13 = MTMPU::LayoutInterpolator::EntriesContainer::primaryReferenceMetric(v28);
      if (v12 >= v13)
      {
        v10 >>= 1;
      }

      else
      {
        v10 += ~(v10 >> 1);
      }

      if (v12 < v13)
      {
        begin = (v11 + 32);
      }
    }

    while (v10);
    end = self->_entriesContainers.__end_;
  }

  v25 = 0;
  HIBYTE(v27) = 0;
  LOBYTE(__p) = 0;
  if (end == begin)
  {
    v29.n128_f64[0] = referenceMetric;
    v29.n128_f64[1] = value;
    MTMPU::LayoutInterpolator::EntriesContainer::insertEntry(v28, v29, &v22);
    v19 = v22;
    v25 = v22;
    __p = v23;
    v27 = v24;
    std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::insert(&self->_entriesContainers, begin, v28);
  }

  else
  {
    v14 = MTMPU::LayoutInterpolator::EntriesContainer::primaryReferenceMetric(begin);
    v15 = MTMPU::LayoutInterpolator::EntriesContainer::primaryReferenceMetric(v28);
    v16 = MTMPUFloatEqualToFloat(v14, v15);
    referenceMetricCopy = referenceMetric;
    valueCopy = value;
    if (v16)
    {
      MTMPU::LayoutInterpolator::EntriesContainer::insertEntry(begin, *&referenceMetricCopy, &v22);
      v19 = v22;
      v25 = v22;
      __p = v23;
      v27 = v24;
    }

    else
    {
      MTMPU::LayoutInterpolator::EntriesContainer::insertEntry(v28, *&referenceMetricCopy, &v22);
      v19 = v22;
      v25 = v22;
      __p = v23;
      v27 = v24;
      std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::insert(&self->_entriesContainers, begin, v28);
    }
  }

  if ((v19 - 2) >= 3)
  {
    if (v19 == 1)
    {
      if (v27 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      NSLog(&cfstr_S.isa, p_p);
    }

    else if (!v19 && !self->_hasEntryWithSpecificSecondaryReferenceMetric && !MTMPUFloatEqualToFloat(referenceMetric, -1.13427449e38))
    {
      self->_hasEntryWithSpecificSecondaryReferenceMetric = 1;
    }
  }

  else
  {
    if (v27 >= 0)
    {
      v20 = &__p;
    }

    else
    {
      v20 = __p;
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%s", v20}];
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }
}

- (double)valueForReferenceMetric:(double)metric secondaryReferenceMetric:(double)referenceMetric
{
  begin = self->_entriesContainers.__begin_;
  end = self->_entriesContainers.__end_;
  v8 = end - begin;
  if (end == begin)
  {
    v19 = MEMORY[0x277CBEAD8];
    v20 = objc_opt_class();
    v13 = NSStringFromClass(v20);
    v21 = NSStringFromSelector(a2);
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = NSStringFromSelector(sel_addValue_forReferenceMetric_);
    [v19 raise:*MEMORY[0x277CBE660] format:{@"Can't call -[%@ %@] before calling -[%@ %@] at least once.", v13, v21, v23, v24}];

    goto LABEL_10;
  }

  if (self->_hasEntryWithSpecificSecondaryReferenceMetric && MTMPUFloatEqualToFloat(referenceMetric, -1.13427449e38))
  {
    v11 = MEMORY[0x277CBEAD8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    [v11 raise:*MEMORY[0x277CBE660] format:{@"Can't call -[%@ valueForReferenceMetric:] without a valid secondary reference metric. Please use -[%@ %@] with a valid last argument.", v13, v15, v16}];

LABEL_10:
    return 0.0;
  }

  if (v8 != 32)
  {
    MTMPU::LayoutInterpolator::EntriesContainer::EntriesContainer(__p, metric);
    v27 = self->_entriesContainers.__begin_;
    v26 = self->_entriesContainers.__end_;
    if (v26 == v27)
    {
      v27 = self->_entriesContainers.__end_;
    }

    else
    {
      v28 = (v26 - v27) >> 5;
      do
      {
        v29 = (v27 + 32 * (v28 >> 1));
        v30 = MTMPU::LayoutInterpolator::EntriesContainer::primaryReferenceMetric(v29);
        v31 = MTMPU::LayoutInterpolator::EntriesContainer::primaryReferenceMetric(__p);
        if (v30 >= v31)
        {
          v28 >>= 1;
        }

        else
        {
          v28 += ~(v28 >> 1);
        }

        if (v30 < v31)
        {
          v27 = (v29 + 32);
        }
      }

      while (v28);
      v26 = self->_entriesContainers.__end_;
    }

    if (v26 == v27)
    {
      [(MTMPULayoutInterpolator *)self _interpolatedValueForPrimaryReferenceMetric:v27 - 64 secondaryReferenceMetric:v27 - 32 betweenFirstEntriesContainer:metric andSecondEntriesContainer:referenceMetric];
    }

    else
    {
      v32 = MTMPU::LayoutInterpolator::EntriesContainer::primaryReferenceMetric(v27);
      v33 = MTMPU::LayoutInterpolator::EntriesContainer::primaryReferenceMetric(__p);
      if (MTMPUFloatEqualToFloat(v32, v33))
      {
        v34 = MTMPU::LayoutInterpolator::EntriesContainer::valueForSecondaryReferenceMetric(v27, referenceMetric);
      }

      else if (self->_entriesContainers.__begin_ == v27)
      {
        [(MTMPULayoutInterpolator *)self _interpolatedValueForPrimaryReferenceMetric:v27 secondaryReferenceMetric:v27 + 32 betweenFirstEntriesContainer:metric andSecondEntriesContainer:referenceMetric];
      }

      else
      {
        [(MTMPULayoutInterpolator *)self _interpolatedValueForPrimaryReferenceMetric:v27 - 32 secondaryReferenceMetric:v27 betweenFirstEntriesContainer:metric andSecondEntriesContainer:referenceMetric];
      }
    }

    v25 = v34;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return v25;
  }

  v17 = self->_entriesContainers.__begin_;

  return MTMPU::LayoutInterpolator::EntriesContainer::valueForSecondaryReferenceMetric(v17, referenceMetric);
}

- (double)_interpolatedValueForPrimaryReferenceMetric:(double)metric secondaryReferenceMetric:(double)referenceMetric betweenFirstEntriesContainer:(void *)container andSecondEntriesContainer:(void *)entriesContainer
{
  v11 = MTMPU::LayoutInterpolator::EntriesContainer::entriesCount(container);
  v12 = MTMPU::LayoutInterpolator::EntriesContainer::entriesCount(entriesContainer);
  if (v11 == 1 && v12 == 1)
  {
    MTMPU::LayoutInterpolator::EntriesContainer::copyEntriesVector(container, &v62);
    v13 = *(v62.n128_u64[0] + 8);
    v14 = MTMPU::LayoutInterpolator::EntriesContainer::primaryReferenceMetric(container);
    MTMPU::LayoutInterpolator::EntriesContainer::copyEntriesVector(entriesContainer, &__p);
    v15 = *(__p + 1);
    v16 = MTMPU::LayoutInterpolator::EntriesContainer::primaryReferenceMetric(entriesContainer);
    v17 = MTMPULayoutLinearRelationMake(v14, v13, v16, v15);
    v19 = MTMPULayoutLinearRelationEvaluate(v17, v18, metric);
    if (*&__p != 0.0)
    {
      v60 = __p;
      operator delete(__p);
    }

    v20 = v62.n128_u64[0];
    if (v62.n128_u64[0])
    {
      v62.n128_u64[1] = v62.n128_u64[0];
LABEL_46:
      operator delete(v20);
    }
  }

  else
  {
    v19 = 0.0;
    MTMPU::Point3D::Point3D(&__p, metric, referenceMetric, 0.0);
    [(MTMPULayoutInterpolator *)self _sortedPointsFor3DInterpolationFromEntriesContainer:container usingQueriedPoint:*&__p fallbackSecondaryReferenceMetric:*&v60, v61, referenceMetric];
    [(MTMPULayoutInterpolator *)self _sortedPointsFor3DInterpolationFromEntriesContainer:entriesContainer usingQueriedPoint:*&__p fallbackSecondaryReferenceMetric:*&v60, v61, referenceMetric];
    __src = 0;
    v53 = 0;
    v54 = 0;
    v29 = v57;
    v30 = v55;
    do
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      if (v58 != v29)
      {
        v31 = v29;
        do
        {
          v32 = *v31;
          v63 = v31[1].n128_u64[0];
          v62 = v32;
          std::vector<MTMPU::Point3D>::insert(&__src, __src, &v62);
          std::vector<MTMPU::Point3D>::insert(&v49, v49, &v62);
          if (v31 == &v29[1].n128_i8[8])
          {
            break;
          }

          v31 = (v31 + 24);
        }

        while (v31 != v58);
      }

      v46 = 0;
      v47 = 0;
      v48 = 0;
      if (v56 != v30)
      {
        v33 = v30;
        do
        {
          v34 = *v33;
          v63 = v33[1].n128_u64[0];
          v62 = v34;
          std::vector<MTMPU::Point3D>::insert(&__src, __src, &v62);
          std::vector<MTMPU::Point3D>::insert(&v46, v46, &v62);
          if (v33 == &v30[1].n128_i8[8])
          {
            break;
          }

          v33 = (v33 + 24);
        }

        while (v33 != v56);
      }

      v35 = __src;
      if (0xAAAAAAAAAAAAAAABLL * ((v53 - __src) >> 3) >= 3)
      {
        if (v53 - __src != 72)
        {
          [(MTMPULayoutInterpolator *)self _sortPointsFor3DInterpolation:&__src usingQueriedPoint:*&__p, *&v60, v61];
        }

        v44 = 0.0;
        v45 = 0.0;
        v43 = 0.0;
        v37 = MTMPU::Point3D::resolveEquationOfPlaneDefinedByFirstThreePointsInVector(&__src, &v45, &v44, &v43, v21.n128_f64[0], v22, *&v23, v24, v25, v26, v27, v28);
        v36 = v37;
        if (v37)
        {
          v23 = __p;
          v24 = *&v60;
          v21.n128_f64[0] = v44 * *&v60 + v45 * *&__p;
          v22 = v43;
          v19 = v43 + v21.n128_f64[0];
          v35 = __src;
        }

        else
        {
          v35 = __src;
          v38 = 0;
          v39 = v50;
          v40 = __src;
          do
          {
            v21 = *v40;
            v63 = v40[1].n128_u64[0];
            v62 = v21;
            v41 = v49;
            if (v49 == v39)
            {
              v41 = v39;
            }

            else
            {
              while (!MTMPU::Point3D::operator==(v41, v62.n128_f64))
              {
                v41 += 3;
                if (v41 == v39)
                {
                  v41 = v39;
                  break;
                }
              }

              v39 = v50;
              v35 = __src;
            }

            if (v41 != v39)
            {
              ++v38;
            }

            v40 = (v40 + 24);
          }

          while (v40 != (v35 + 72));
          if (v38 == 2)
          {
            v29 = (v29 + 24);
          }

          else
          {
            v30 = (v30 + 24);
          }
        }
      }

      else
      {
        v36 = 1;
      }

      v53 = v35;
      if (v46)
      {
        v47 = v46;
        operator delete(v46);
      }

      if (v49)
      {
        v50 = v49;
        operator delete(v49);
      }
    }

    while ((v36 & 1) == 0);
    if (__src)
    {
      v53 = __src;
      operator delete(__src);
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    v20 = v57;
    if (v57)
    {
      v58 = v57;
      goto LABEL_46;
    }
  }

  return v19;
}

- (Point3D)_pointForEntry:(Entry)entry andPrimaryReferenceMetric:(double)metric usingFallbackSecondaryReferenceMetric:(double)referenceMetric
{
  var1 = entry.var1;
  var0 = entry.var0;
  if (MTMPUFloatEqualToFloat(entry.var0, -1.13427449e38))
  {
    referenceMetricCopy = referenceMetric;
  }

  else
  {
    referenceMetricCopy = var0;
  }

  MTMPU::Point3D::Point3D(v13, metric, referenceMetricCopy, var1);
  v10 = v13[0];
  v11 = v13[1];
  v12 = v13[2];
  result.var2 = v12;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (vector<MTMPU::Point3D,)_sortedPointsFor3DInterpolationFromEntriesContainer:(MTMPULayoutInterpolator *)self usingQueriedPoint:(SEL)point fallbackSecondaryReferenceMetric:(void *)metric
{
  var2 = a5.var2;
  var1 = a5.var1;
  var0 = a5.var0;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  MTMPU::LayoutInterpolator::EntriesContainer::copyEntriesVector(metric, &__p);
  v13 = __p;
  v14 = v22;
  while (v13 != v14)
  {
    [(MTMPULayoutInterpolator *)self _pointForEntry:*v13 andPrimaryReferenceMetric:v13[1] usingFallbackSecondaryReferenceMetric:MTMPU::LayoutInterpolator::EntriesContainer::primaryReferenceMetric(metric), a6];
    v19.n128_u64[0] = v15;
    v19.n128_u64[1] = v16;
    v20 = v17;
    std::vector<MTMPU::Point3D>::insert(retstr, retstr->var0, &v19);
    v13 += 2;
  }

  [(MTMPULayoutInterpolator *)self _sortPointsFor3DInterpolation:retstr usingQueriedPoint:var0, var1, var2];
  result = __p;
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  return result;
}

- (void)_sortPointsFor3DInterpolation:(void *)interpolation usingQueriedPoint:(Point3D)point
{
  v6 = *interpolation;
  v7 = *(interpolation + 1);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *interpolation) >> 3);
  if (v8 >= 2)
  {
    v12 = v4;
    v13 = v5;
    pointCopy = point;
    v9 = 126 - 2 * __clz(v8);
    if (v7 == v6)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    std::__introsort<std::_ClassicAlgPolicy,[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,false>(v6, v7, &pointCopy.var0, v10, 1);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)_sortPointsFor3DInterpolation:(double *)interpolation usingQueriedPoint:(uint64_t)point
{
  while (2)
  {
    selfCopy2 = self;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          self = selfCopy2;
          v11 = a2 - selfCopy2;
          v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - selfCopy2) >> 3);
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:

                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,0>(selfCopy2, (selfCopy2 + 24), (a2 - 24), interpolation);
                return;
              case 4:
                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,0>(selfCopy2, (selfCopy2 + 24), (selfCopy2 + 48), interpolation);
                v65 = *(a2 - 24);
                v66 = *(a2 - 16);
                v64 = a2 - 24;
                v67 = interpolation[1];
                if ((v67 - v66) * (v67 - v66) + (*interpolation - v65) * (*interpolation - v65) < (v67 - *(selfCopy2 + 56)) * (v67 - *(selfCopy2 + 56)) + (*interpolation - *(selfCopy2 + 48)) * (*interpolation - *(selfCopy2 + 48)))
                {
                  v68 = *(selfCopy2 + 48);
                  v69 = *(selfCopy2 + 64);
                  v70 = *(v64 + 16);
                  *(selfCopy2 + 48) = *v64;
                  *(selfCopy2 + 64) = v70;
                  *(v64 + 16) = v69;
                  *v64 = v68;
                  v71 = interpolation[1];
                  if ((v71 - *(selfCopy2 + 56)) * (v71 - *(selfCopy2 + 56)) + (*interpolation - *(selfCopy2 + 48)) * (*interpolation - *(selfCopy2 + 48)) < (v71 - *(selfCopy2 + 32)) * (v71 - *(selfCopy2 + 32)) + (*interpolation - *(selfCopy2 + 24)) * (*interpolation - *(selfCopy2 + 24)))
                  {
                    v72 = *(selfCopy2 + 40);
                    v73 = *(selfCopy2 + 24);
                    *(selfCopy2 + 24) = *(selfCopy2 + 48);
                    *(selfCopy2 + 40) = *(selfCopy2 + 64);
                    *(selfCopy2 + 48) = v73;
                    *(selfCopy2 + 64) = v72;
                    v74 = interpolation[1];
                    if ((v74 - *(selfCopy2 + 32)) * (v74 - *(selfCopy2 + 32)) + (*interpolation - *(selfCopy2 + 24)) * (*interpolation - *(selfCopy2 + 24)) < (v74 - *(selfCopy2 + 8)) * (v74 - *(selfCopy2 + 8)) + (*interpolation - *selfCopy2) * (*interpolation - *selfCopy2))
                    {
                      v144 = *(selfCopy2 + 16);
                      v138 = *selfCopy2;
                      *selfCopy2 = *(selfCopy2 + 24);
                      *(selfCopy2 + 16) = *(selfCopy2 + 40);
                      *(selfCopy2 + 24) = v138;
                      *(selfCopy2 + 40) = v144;
                    }
                  }
                }

                return;
              case 5:

                std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,0>(selfCopy2, selfCopy2 + 24, selfCopy2 + 48, selfCopy2 + 72, a2 - 24, interpolation);
                return;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return;
            }

            if (v12 == 2)
            {
              v60 = *(a2 - 24);
              v61 = *(a2 - 16);
              v59 = a2 - 24;
              v62 = interpolation[1];
              if ((v62 - v61) * (v62 - v61) + (*interpolation - v60) * (*interpolation - v60) < (v62 - *(selfCopy2 + 8)) * (v62 - *(selfCopy2 + 8)) + (*interpolation - *selfCopy2) * (*interpolation - *selfCopy2))
              {
                v143 = *(selfCopy2 + 16);
                v137 = *selfCopy2;
                v63 = *v59;
                *(selfCopy2 + 16) = *(v59 + 16);
                *selfCopy2 = v63;
                *(v59 + 16) = v143;
                *v59 = v137;
              }

              return;
            }
          }

          if (v11 <= 575)
          {
            if (a5)
            {
              if (selfCopy2 != a2)
              {
                v75 = selfCopy2 + 24;
                if (selfCopy2 + 24 != a2)
                {
                  v76 = 0;
                  v77 = *interpolation;
                  v78 = selfCopy2;
                  do
                  {
                    v79 = v75;
                    v80 = *(v78 + 24);
                    v81 = *(v78 + 32);
                    if ((interpolation[1] - v81) * (interpolation[1] - v81) + (v77 - v80) * (v77 - v80) < (interpolation[1] - *(v78 + 8)) * (interpolation[1] - *(v78 + 8)) + (v77 - *v78) * (v77 - *v78))
                    {
                      v82 = *(v78 + 40);
                      v83 = v76;
                      while (1)
                      {
                        v84 = selfCopy2 + v83;
                        *(v84 + 24) = *(selfCopy2 + v83);
                        *(v84 + 40) = *(selfCopy2 + v83 + 16);
                        if (!v83)
                        {
                          break;
                        }

                        v85 = interpolation[1];
                        v83 -= 24;
                        if ((v85 - v81) * (v85 - v81) + (*interpolation - v80) * (*interpolation - v80) >= (v85 - *(v84 - 16)) * (v85 - *(v84 - 16)) + (*interpolation - *(v84 - 24)) * (*interpolation - *(v84 - 24)))
                        {
                          v86 = selfCopy2 + v83 + 24;
                          goto LABEL_79;
                        }
                      }

                      v86 = selfCopy2;
LABEL_79:
                      *v86 = v80;
                      *(v86 + 8) = v81;
                      *(v86 + 16) = v82;
                      v77 = *interpolation;
                    }

                    v75 = v79 + 24;
                    v76 += 24;
                    v78 = v79;
                  }

                  while (v79 + 24 != a2);
                }
              }
            }

            else if (selfCopy2 != a2)
            {
              v126 = selfCopy2 + 24;
              if (selfCopy2 + 24 != a2)
              {
                v127 = *interpolation;
                do
                {
                  v128 = v126;
                  v129 = *(self + 24);
                  v130 = *(self + 32);
                  if ((interpolation[1] - v130) * (interpolation[1] - v130) + (v127 - v129) * (v127 - v129) < (interpolation[1] - *(self + 8)) * (interpolation[1] - *(self + 8)) + (v127 - *self) * (v127 - *self))
                  {
                    v131 = *(self + 40);
                    do
                    {
                      *v126 = *(v126 - 24);
                      *(v126 + 16) = *(v126 - 8);
                      v132 = *(v126 - 48);
                      v133 = *(v126 - 40);
                      v126 -= 24;
                    }

                    while ((interpolation[1] - v130) * (interpolation[1] - v130) + (*interpolation - v129) * (*interpolation - v129) < (interpolation[1] - v133) * (interpolation[1] - v133) + (*interpolation - v132) * (*interpolation - v132));
                    *v126 = v129;
                    *(v126 + 8) = v130;
                    *(v126 + 16) = v131;
                    v127 = *interpolation;
                  }

                  v126 = v128 + 24;
                  self = v128;
                }

                while (v128 + 24 != a2);
              }
            }

            return;
          }

          if (!point)
          {
            if (selfCopy2 != a2)
            {
              v87 = (v12 - 2) >> 1;
              v88 = v87;
              do
              {
                v89 = v88;
                if (v87 >= v88)
                {
                  v90 = (2 * v88) | 1;
                  v91 = selfCopy2 + 24 * v90;
                  v92 = *interpolation;
                  if (2 * v89 + 2 >= v12)
                  {
                    v93 = interpolation[1];
                  }

                  else
                  {
                    v93 = interpolation[1];
                    if ((v93 - *(v91 + 8)) * (v93 - *(v91 + 8)) + (v92 - *v91) * (v92 - *v91) < (v93 - *(v91 + 32)) * (v93 - *(v91 + 32)) + (v92 - *(v91 + 24)) * (v92 - *(v91 + 24)))
                    {
                      v91 += 24;
                      v90 = 2 * v89 + 2;
                    }
                  }

                  v94 = selfCopy2 + 24 * v89;
                  v95 = *v94;
                  v96 = *(v94 + 8);
                  if ((v93 - *(v91 + 8)) * (v93 - *(v91 + 8)) + (v92 - *v91) * (v92 - *v91) >= (v93 - *&v96) * (v93 - *&v96) + (v92 - *v94) * (v92 - *v94))
                  {
                    do
                    {
                      v97 = v91;
                      v98 = *v91;
                      *(v94 + 16) = *(v91 + 16);
                      *v94 = v98;
                      if (v87 < v90)
                      {
                        break;
                      }

                      v99 = 2 * v90;
                      v90 = (2 * v90) | 1;
                      v91 = selfCopy2 + 24 * v90;
                      v100 = v99 + 2;
                      v101 = *interpolation;
                      v102 = interpolation[1];
                      if (v100 < v12 && (v102 - *(v91 + 8)) * (v102 - *(v91 + 8)) + (v101 - *v91) * (v101 - *v91) < (v102 - *(v91 + 32)) * (v102 - *(v91 + 32)) + (v101 - *(v91 + 24)) * (v101 - *(v91 + 24)))
                      {
                        v91 += 24;
                        v90 = v100;
                      }

                      v94 = v97;
                    }

                    while ((v102 - *(v91 + 8)) * (v102 - *(v91 + 8)) + (v101 - *v91) * (v101 - *v91) >= (v102 - *&v96) * (v102 - *&v96) + (v101 - v95) * (v101 - v95));
                    *v97 = v95;
                    *(v97 + 8) = v96;
                  }
                }

                v88 = v89 - 1;
              }

              while (v89);
              v103 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
              do
              {
                v104 = 0;
                v145 = *(selfCopy2 + 16);
                v139 = *selfCopy2;
                v105 = selfCopy2;
                do
                {
                  v106 = v105;
                  v107 = v105 + 24 * v104;
                  v105 = v107 + 24;
                  v108 = 2 * v104;
                  v104 = (2 * v104) | 1;
                  v109 = v108 + 2;
                  if (v109 < v103)
                  {
                    v111 = *(v107 + 48);
                    v110 = v107 + 48;
                    v112 = interpolation[1];
                    if ((v112 - *(v110 - 16)) * (v112 - *(v110 - 16)) + (*interpolation - *(v110 - 24)) * (*interpolation - *(v110 - 24)) < (v112 - *(v110 + 8)) * (v112 - *(v110 + 8)) + (*interpolation - v111) * (*interpolation - v111))
                    {
                      v105 = v110;
                      v104 = v109;
                    }
                  }

                  v113 = *v105;
                  *(v106 + 16) = *(v105 + 16);
                  *v106 = v113;
                }

                while (v104 <= ((v103 - 2) >> 1));
                a2 -= 24;
                if (v105 == a2)
                {
                  *(v105 + 16) = v145;
                  *v105 = v139;
                }

                else
                {
                  v114 = *a2;
                  *(v105 + 16) = *(a2 + 16);
                  *v105 = v114;
                  *(a2 + 16) = v145;
                  *a2 = v139;
                  v115 = v105 - selfCopy2 + 24;
                  if (v115 >= 25)
                  {
                    v116 = (-2 - 0x5555555555555555 * (v115 >> 3)) >> 1;
                    v117 = selfCopy2 + 24 * v116;
                    v118 = *v105;
                    v119 = *(v105 + 8);
                    v120 = interpolation[1];
                    if ((v120 - *(v117 + 8)) * (v120 - *(v117 + 8)) + (*interpolation - *v117) * (*interpolation - *v117) < (v120 - v119) * (v120 - v119) + (*interpolation - *v105) * (*interpolation - *v105))
                    {
                      v121 = *(v105 + 16);
                      do
                      {
                        v122 = v117;
                        v123 = *v117;
                        *(v105 + 16) = *(v117 + 16);
                        *v105 = v123;
                        if (!v116)
                        {
                          break;
                        }

                        v116 = (v116 - 1) >> 1;
                        v117 = selfCopy2 + 24 * v116;
                        v124 = interpolation[1];
                        v105 = v122;
                      }

                      while ((v124 - *(v117 + 8)) * (v124 - *(v117 + 8)) + (*interpolation - *v117) * (*interpolation - *v117) < (v124 - v119) * (v124 - v119) + (*interpolation - v118) * (*interpolation - v118));
                      *v122 = v118;
                      *(v122 + 8) = v119;
                      *(v122 + 16) = v121;
                    }
                  }
                }
              }

              while (v103-- > 2);
            }

            return;
          }

          v13 = v12 >> 1;
          v14 = selfCopy2 + 24 * (v12 >> 1);
          if (v11 < 0xC01)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,0>((self + 24 * v13), self, (a2 - 24), interpolation);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,0>(self, (self + 24 * v13), (a2 - 24), interpolation);
            v15 = 3 * v13;
            v16 = (self + 24 * v13 - 24);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,0>((self + 24), v16, (a2 - 48), interpolation);
            v17 = (self + 24 + 8 * v15);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,0>((self + 48), v17, (a2 - 72), interpolation);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,0>(v16, v14, v17, interpolation);
            v140 = *(self + 16);
            v134 = *self;
            v18 = *(v14 + 16);
            *self = *v14;
            *(self + 16) = v18;
            *(v14 + 16) = v140;
            *v14 = v134;
          }

          --point;
          v19 = *self;
          if (a5)
          {
            break;
          }

          v20 = *(self + 8);
          v21 = *interpolation;
          v22 = interpolation[1];
          v23 = (v22 - *&v20) * (v22 - *&v20) + (*interpolation - v19) * (*interpolation - v19);
          if ((v22 - *(self - 16)) * (v22 - *(self - 16)) + (*interpolation - *(self - 24)) * (*interpolation - *(self - 24)) < v23)
          {
            goto LABEL_17;
          }

          if (v23 >= (v22 - *(a2 - 16)) * (v22 - *(a2 - 16)) + (v21 - *(a2 - 24)) * (v21 - *(a2 - 24)))
          {
            v45 = (self + 24);
            do
            {
              selfCopy2 = v45;
              if (v45 >= a2)
              {
                break;
              }

              v46 = (v22 - v45[1]) * (v22 - v45[1]) + (v21 - *v45) * (v21 - *v45);
              v45 += 3;
            }

            while (v23 >= v46);
          }

          else
          {
            selfCopy2 = self;
            do
            {
              v43 = *(selfCopy2 + 24);
              v44 = *(selfCopy2 + 32);
              selfCopy2 += 24;
            }

            while (v23 >= (v22 - v44) * (v22 - v44) + (v21 - v43) * (v21 - v43));
          }

          v47 = a2;
          if (selfCopy2 < a2)
          {
            v47 = a2;
            do
            {
              v48 = *(v47 - 24);
              v49 = *(v47 - 16);
              v47 -= 24;
            }

            while (v23 < (v22 - v49) * (v22 - v49) + (v21 - v48) * (v21 - v48));
          }

          while (selfCopy2 < v47)
          {
            v142 = *(selfCopy2 + 16);
            v136 = *selfCopy2;
            v50 = *v47;
            *(selfCopy2 + 16) = *(v47 + 16);
            *selfCopy2 = v50;
            *(v47 + 16) = v142;
            *v47 = v136;
            v51 = *interpolation;
            v52 = interpolation[1];
            v53 = (v52 - *&v20) * (v52 - *&v20) + (*interpolation - v19) * (*interpolation - v19);
            do
            {
              v54 = *(selfCopy2 + 24);
              v55 = *(selfCopy2 + 32);
              selfCopy2 += 24;
            }

            while (v53 >= (v52 - v55) * (v52 - v55) + (v51 - v54) * (v51 - v54));
            do
            {
              v56 = *(v47 - 24);
              v57 = *(v47 - 16);
              v47 -= 24;
            }

            while (v53 < (v52 - v57) * (v52 - v57) + (v51 - v56) * (v51 - v56));
          }

          if (selfCopy2 - 24 != self)
          {
            v58 = *(selfCopy2 - 24);
            *(self + 16) = *(selfCopy2 - 8);
            *self = v58;
          }

          a5 = 0;
          *(selfCopy2 - 24) = v19;
          *(selfCopy2 - 16) = v20;
        }

        v20 = *(self + 8);
        v21 = *interpolation;
        v22 = interpolation[1];
        v23 = (v22 - *&v20) * (v22 - *&v20) + (*interpolation - v19) * (*interpolation - v19);
LABEL_17:
        v24 = 0;
        do
        {
          v25 = (v22 - *(self + v24 + 32)) * (v22 - *(self + v24 + 32)) + (v21 - *(self + v24 + 24)) * (v21 - *(self + v24 + 24));
          v24 += 24;
        }

        while (v25 < v23);
        v26 = self + v24;
        v27 = a2;
        if (v24 == 24)
        {
          v27 = a2;
          do
          {
            if (v26 >= v27)
            {
              break;
            }

            v30 = *(v27 - 24);
            v31 = *(v27 - 16);
            v27 -= 24;
          }

          while ((v22 - v31) * (v22 - v31) + (v21 - v30) * (v21 - v30) >= v23);
        }

        else
        {
          do
          {
            v28 = *(v27 - 24);
            v29 = *(v27 - 16);
            v27 -= 24;
          }

          while ((v22 - v29) * (v22 - v29) + (v21 - v28) * (v21 - v28) >= v23);
        }

        selfCopy2 = self + v24;
        if (v26 < v27)
        {
          v32 = v27;
          do
          {
            v141 = *(selfCopy2 + 16);
            v135 = *selfCopy2;
            v33 = *v32;
            *(selfCopy2 + 16) = *(v32 + 16);
            *selfCopy2 = v33;
            *(v32 + 16) = v141;
            *v32 = v135;
            v34 = *interpolation;
            v35 = interpolation[1];
            v36 = (v35 - *&v20) * (v35 - *&v20) + (*interpolation - v19) * (*interpolation - v19);
            do
            {
              v37 = *(selfCopy2 + 24);
              v38 = *(selfCopy2 + 32);
              selfCopy2 += 24;
            }

            while ((v35 - v38) * (v35 - v38) + (v34 - v37) * (v34 - v37) < v36);
            do
            {
              v39 = *(v32 - 24);
              v40 = *(v32 - 16);
              v32 -= 24;
            }

            while ((v35 - v40) * (v35 - v40) + (v34 - v39) * (v34 - v39) >= v36);
          }

          while (selfCopy2 < v32);
        }

        if (selfCopy2 - 24 != self)
        {
          v41 = *(selfCopy2 - 24);
          *(self + 16) = *(selfCopy2 - 8);
          *self = v41;
        }

        *(selfCopy2 - 24) = v19;
        *(selfCopy2 - 16) = v20;
        if (v26 >= v27)
        {
          break;
        }

LABEL_36:
        std::__introsort<std::_ClassicAlgPolicy,[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,false>(self, selfCopy2 - 24, interpolation, point, a5 & 1);
        a5 = 0;
      }

      v42 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *>(self, selfCopy2 - 24, interpolation);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *>(selfCopy2, a2, interpolation))
      {
        break;
      }

      if (!v42)
      {
        goto LABEL_36;
      }
    }

    a2 = selfCopy2 - 24;
    if (!v42)
    {
      continue;
    }

    break;
  }
}

@end