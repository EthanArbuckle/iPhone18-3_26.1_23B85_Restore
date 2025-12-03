@interface CRNMS
- (BOOL)addTextDetectorQuadFeatures:(const void *)features withInputSize:(CGSize)size scoreMap:(vImage_Buffer *)map scoreMapScaleFactor:(double)factor andTileRects:(id)rects options:(id)options;
- (BOOL)buildRectForest:(void *)forest fromTextDetectorQuadFeatures:(const void *)features forestFeatureType:(unint64_t)type withInputSize:(CGSize)size scoreMap:(vImage_Buffer *)map scoreMapScaleFactor:(double)factor andTileRects:(id)rects options:(id)self0;
- (BOOL)preprocessScoreMaps;
- (CRNMS)initWithNMSMethodType:(unint64_t)type NMSScoreType:(unint64_t)scoreType;
- (id).cxx_construct;
- (id)buildTextFeaturesFromRectForest:(const void *)forest byEdge:(unint64_t)edge options:(id)options;
- (id)generateConsolidatedTextFeatures:(id)features;
- (id)generateConsolidatedTextFeatures:(id)features withScaleIds:(void *)ids;
- (id)getTextFeatureFromQuadAngleDatum:(const void *)datum;
- (id)initForRevision:(unint64_t)revision;
- (unint64_t)convertSubTextFeatures:(id)features toRects:(void *)rects;
- (void)fillRectForestDatum:(void *)datum asDimType:(unint64_t)type withCGRect:(const CGRect *)rect;
- (void)fillRectForestDatum:(void *)datum asDimType:(unint64_t)type withCRTextDetectorQuad:(const void *)quad andInputSize:(CGSize)size;
- (void)fillRectForestDatum:(void *)datum asDimType:(unint64_t)type withQuad:(const void *)quad andDimType:(unint64_t)dimType;
- (void)fillTextFeature:(id)feature withRectDatum:(const void *)datum;
@end

@implementation CRNMS

- (id)initForRevision:(unint64_t)revision
{
  if (revision == 3)
  {
    v9.receiver = self;
    v9.super_class = CRNMS;
    v3 = [(CRNMS *)&v9 init];
    if (v3)
    {
      nms::PyramidNMS<unsigned short,double,unsigned char>::PyramidNMS(&v6);
      p_preNMSForests = &v3->_preNMSForests;
      nms::PyramidNMS<unsigned short,double,unsigned char>::operator=(&v3->_pyrNMS, &v6);
      nms::PyramidNMS<unsigned short,double,unsigned char>::~PyramidNMS(&v6);
      nms::PyramidNMSConfig::PyramidNMSConfig(&v6, 1, 1uLL);
      v6 = &unk_1F2BAF6A8;
      v7[6] = xmmword_1B42AF980;
      *(&v7[18] + 1) = 0x3FC999999999999ALL;
      BYTE10(v7[1]) = 1;
      *(&v7[5] + 1) = 20;
      *&v7[2] = 0x4004000000000000;
      *(&v7[8] + 1) = 0x3FA1EB851EB851ECLL;
      *(&v7[9] + 1) = 0x3FE6666666666666;
      *&v7[13] = 0x3FE6666666666666;
      *&v7[11] = 0x3FE0000000000000;
      memcpy(&v3->_pyrNMS.config.methodType, v7, 0x148uLL);
      v3->_outputTextFeatureLevel = 6;
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CRNMS)initWithNMSMethodType:(unint64_t)type NMSScoreType:(unint64_t)scoreType
{
  v10.receiver = self;
  v10.super_class = CRNMS;
  v6 = [(CRNMS *)&v10 init];
  if (v6)
  {
    nms::PyramidNMS<unsigned short,double,unsigned char>::PyramidNMS(&v8);
    v9[120] = &v6->_preNMSForests;
    nms::PyramidNMS<unsigned short,double,unsigned char>::operator=(&v6->_pyrNMS, &v8);
    nms::PyramidNMS<unsigned short,double,unsigned char>::~PyramidNMS(&v8);
    nms::PyramidNMSConfig::PyramidNMSConfig(&v8, type, scoreType);
    if (type == 1)
    {
      v9[11] = 20;
    }

    memcpy(&v6->_pyrNMS.config.methodType, v9, 0x148uLL);
    v6->_outputTextFeatureLevel = 6;
  }

  return v6;
}

- (BOOL)addTextDetectorQuadFeatures:(const void *)features withInputSize:(CGSize)size scoreMap:(vImage_Buffer *)map scoreMapScaleFactor:(double)factor andTileRects:(id)rects options:(id)options
{
  height = size.height;
  width = size.width;
  rectsCopy = rects;
  optionsCopy = options;
  nms::RectForest<unsigned short,double>::RectForest(v19, 0);
  std::deque<nms::RectForest<unsigned short,double>>::push_back(&self->_preNMSForests.__map_.__first_, v19);
  nms::RectForest<unsigned short,double>::~RectForest(v19);
  v17 = self->_preNMSForests.__size_ + self->_preNMSForests.__start_ - 1;
  LOBYTE(map) = [(CRNMS *)self buildRectForest:self->_preNMSForests.__map_.__begin_[v17 / 0x14] + 200 * (v17 % 0x14) fromTextDetectorQuadFeatures:features forestFeatureType:0 withInputSize:map scoreMap:rectsCopy scoreMapScaleFactor:optionsCopy andTileRects:width options:height, factor];

  return map;
}

- (BOOL)preprocessScoreMaps
{
  if (self->_forestFeatureType)
  {
    return 1;
  }

  v27 = v2;
  v28 = v3;
  size = self->_preNMSForests.__size_;
  if (!size)
  {
    return 1;
  }

  start = self->_preNMSForests.__start_;
  v8 = 0uLL;
  do
  {
    v9 = self->_preNMSForests.__map_.__begin_[start / 0x14] + 200 * (start % 0x14);
    v11 = *(v9 + 2);
    v10 = v9 + 16;
    if (!v11)
    {
      goto LABEL_28;
    }

    v12 = vcvtq_f64_u64(*(v10 + 8));
    v8 = vbslq_s8(vcgtq_f64(v12, v8), v12, v8);
    ++start;
    --size;
  }

  while (size);
  if (v8.f64[0] <= 0.0 || v8.f64[1] <= 0.0)
  {
    goto LABEL_28;
  }

  v13 = 0;
  v14 = (v8.f64[0] * v8.f64[1]);
  v15 = v8.f64[0];
  v16 = v8.f64[1];
  while (1)
  {
    v17 = self->_preNMSForests.__map_.__begin_[(self->_preNMSForests.__start_ + v13) / 0x14] + 200 * ((self->_preNMSForests.__start_ + v13) % 0x14);
    memset(&v26, 0, sizeof(v26));
    v26.data = malloc_type_calloc(v14, 1uLL, 0x100004077774924uLL);
    v26.height = v15;
    v26.width = v16;
    v26.rowBytes = v16;
    if (vImageScale_Planar8((v17 + 16), &v26, 0, 0))
    {
      break;
    }

    if (v26.data)
    {
      height = v26.height;
      width = v26.width;
      *(v17 + 6) = v26.height;
      *(v17 + 7) = width;
      std::valarray<unsigned char>::resize((v17 + 64), width * height);
      if (v26.width * v26.height)
      {
        operator new();
      }

      v20 = *(v17 + 8);
      if (v20)
      {
        if (*(v17 + 9) != v20)
        {
          *(v17 + 9) = v20;
        }

        operator delete(v20);
      }

      *(v17 + 8) = 0;
      *(v17 + 9) = 0;
      if (v26.data)
      {
        free(v26.data);
      }
    }

    v21 = *(v17 + 2);
    if (v21)
    {
      free(v21);
      *(v17 + 2) = 0;
    }

    ++v13;
    result = 1;
    if (v13 >= self->_preNMSForests.__size_)
    {
      return result;
    }
  }

  if (v26.data)
  {
    free(v26.data);
  }

  if (self->_preNMSForests.__size_)
  {
LABEL_28:
    v22 = 0;
    do
    {
      v23 = self->_preNMSForests.__map_.__begin_[(v22 + self->_preNMSForests.__start_) / 0x14] + 200 * ((v22 + self->_preNMSForests.__start_) % 0x14);
      v24 = v23[2];
      if (v24)
      {
        free(v24);
        v23[2] = 0;
      }

      v25 = v23[8];
      v23[6] = 0;
      v23[7] = 0;
      if (v25)
      {
        if (v23[9] != v25)
        {
          v23[9] = v25;
        }

        operator delete(v25);
        v23[8] = 0;
        v23[9] = 0;
      }

      ++v22;
    }

    while (v22 < self->_preNMSForests.__size_);
  }

  return 0;
}

- (id)generateConsolidatedTextFeatures:(id)features
{
  memset(v5, 0, sizeof(v5));
  v3 = [(CRNMS *)self generateConsolidatedTextFeatures:features withScaleIds:v5];
  std::deque<unsigned char>::~deque[abi:ne200100](v5);

  return v3;
}

- (id)generateConsolidatedTextFeatures:(id)features withScaleIds:(void *)ids
{
  featuresCopy = features;
  self->_forestFeatureType = *(self->_preNMSForests.__map_.__begin_[self->_preNMSForests.__start_ / 0x14] + 25 * (self->_preNMSForests.__start_ % 0x14) + 1);
  [(CRNMS *)self preprocessScoreMaps];
  forestFeatureType = self->_forestFeatureType;
  nms::RectForest<unsigned short,double>::RectForest(v227, forestFeatureType);
  pForests = self->_pyrNMS.pForests;
  if (!pForests)
  {
    goto LABEL_257;
  }

  v8 = pForests[5];
  if (!v8)
  {
    goto LABEL_257;
  }

  v222 = featuresCopy;
  v9 = pForests[1];
  selfCopy = self;
  if (pForests[2] == v9)
  {
    goto LABEL_55;
  }

  v10 = pForests[4];
  v11 = *(v9 + 8 * (v10 / 0x14));
  v12 = &v11[25 * (v10 % 0x14)];
  v13 = *(v9 + 8 * ((v10 + v8) / 0x14)) + 200 * ((v10 + v8) % 0x14);
  if (v12 == v13)
  {
    goto LABEL_55;
  }

  v224 = (v9 + 8 * (v10 / 0x14));
  do
  {
    v14 = 0;
    v15 = 0;
    v16 = v12 + 23;
    do
    {
      if (v12[21] > v15)
      {
        v17 = *(*(v12[17] + 8 * ((v12[20] + v15) / 0x55)) + 48 * ((v12[20] + v15) % 0x55) + 40);
        if (v17)
        {
          v18 = qword_1B42AFA18[v15];
          v19 = qword_1B42AFA48[v15];
          v20 = v12[15];
          if (v20 <= v18)
          {
            v29 = 0;
          }

          else
          {
            v21 = v12[23];
            if (!v21)
            {
              if (v20 > v19)
              {
                goto LABEL_37;
              }

LABEL_38:
              v14 = 0;
              goto LABEL_39;
            }

            v22 = (*(*(v12[11] + (((v12[14] + v18) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v12 + 112) + v18) + 8) - *(*(v12[11] + (((v12[14] + v18) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v12 + 112) + v18))) >> 3;
            v23 = v12 + 23;
            do
            {
              v24 = v21[4];
              v25 = v24 >= v18;
              v26 = v24 < v18;
              if (v25)
              {
                v23 = v21;
              }

              v21 = v21[v26];
            }

            while (v21);
            if (v23 == v16 || v23[4] > v18 || (v27 = v23[5], v27 > 8))
            {
              v28 = 0.0;
            }

            else
            {
              v28 = dbl_1B42AFA98[v27];
            }

            v29 = v22 / *&v28;
          }

          if (v20 > v19 && v29 == v17)
          {
            v31 = v12[23];
            if (!v31)
            {
              goto LABEL_37;
            }

            v30 = v12[14];
            v32 = (*(*(v12[11] + (((v30 + v19) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v30 + v19) + 8) - *(*(v12[11] + (((v30 + v19) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v30 + v19))) >> 3;
            v33 = v12 + 23;
            do
            {
              v34 = v31[4];
              v25 = v34 >= v19;
              v35 = v34 < v19;
              if (v25)
              {
                v33 = v31;
              }

              v31 = v31[v35];
            }

            while (v31);
            if (v33 == v16 || v33[4] > v19 || (v36 = v33[5], v36 > 8) || *&dbl_1B42AFA98[v36] <= v32)
            {
LABEL_37:
              v14 = 1;
              goto LABEL_39;
            }
          }

          goto LABEL_38;
        }
      }

LABEL_39:
      ++v15;
    }

    while (v15 != 6);
    end = self->_pyrNMS.fullySpecifiedForests.__map_.__end_;
    begin = self->_pyrNMS.fullySpecifiedForests.__map_.__begin_;
    if (end == begin)
    {
      v39 = 0;
    }

    else
    {
      v39 = ((end - begin) << 9) - 1;
    }

    start = self->_pyrNMS.fullySpecifiedForests.__start_;
    size = self->_pyrNMS.fullySpecifiedForests.__size_;
    v42 = size + start;
    if (v39 == size + start)
    {
      if (start < 0x1000)
      {
        selfCopy2 = self;
        cap = self->_pyrNMS.fullySpecifiedForests.__map_.__cap_;
        first = selfCopy2->_pyrNMS.fullySpecifiedForests.__map_.__first_;
        if (end - begin < (cap - first))
        {
          operator new();
        }

        if (cap == first)
        {
          v46 = 1;
        }

        else
        {
          v46 = (cap - first) >> 2;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(v46);
      }

      self->_pyrNMS.fullySpecifiedForests.__start_ = start - 4096;
      v230 = *begin;
      self->_pyrNMS.fullySpecifiedForests.__map_.__begin_ = begin + 1;
      std::__split_buffer<int *>::emplace_back<int *&>(&self->_pyrNMS.fullySpecifiedForests.__map_.__first_, &v230);
      self = selfCopy;
      begin = selfCopy->_pyrNMS.fullySpecifiedForests.__map_.__begin_;
      size = selfCopy->_pyrNMS.fullySpecifiedForests.__size_;
      v42 = selfCopy->_pyrNMS.fullySpecifiedForests.__start_ + size;
      v11 = *v224;
    }

    (*(begin + ((v42 >> 9) & 0x7FFFFFFFFFFFF8)))[v42 & 0xFFF] = v14 & 1;
    self->_pyrNMS.fullySpecifiedForests.__size_ = size + 1;
    v12 += 25;
    if (v12 - v11 == 4000)
    {
      v11 = v224[1];
      ++v224;
      v12 = v11;
    }
  }

  while (v12 != v13);
LABEL_55:
  v47 = self->_pyrNMS.fullySpecifiedForests.__map_.__begin_;
  featuresCopy = v222;
  if (self->_pyrNMS.fullySpecifiedForests.__map_.__end_ == v47)
  {
    goto LABEL_257;
  }

  v48 = self->_pyrNMS.fullySpecifiedForests.__start_;
  v49 = &v47[v48 >> 12];
  v50 = *v49;
  v51 = &(*v49)[v48 & 0xFFF];
  v52 = &(*(v47 + (((self->_pyrNMS.fullySpecifiedForests.__size_ + v48) >> 9) & 0x7FFFFFFFFFFFF8)))[(self->_pyrNMS.fullySpecifiedForests.__size_ + v48) & 0xFFF];
  if (v51 == v52)
  {
    goto LABEL_257;
  }

  v53 = 0;
  do
  {
    v55 = *v51++;
    v54 = v55;
    if (v51 - v50 == 4096)
    {
      v56 = v49[1];
      ++v49;
      v50 = v56;
      v51 = v56;
    }

    v53 += v54;
  }

  while (v51 != v52);
  if (!v53 || self->_pyrNMS.config.methodType != 1)
  {
    goto LABEL_257;
  }

  memset(v229, 0, sizeof(v229));
  nms::PyramidNMS<unsigned short,double,unsigned char>::computeRectRelationships(&self->_pyrNMS, v229, self->_pyrNMS.config.computeIntrascaleGeometricRelationships);
  nms::PyramidNMS<unsigned short,double,unsigned char>::performNMSAtOneLevel(&self->_pyrNMS._vptr$PyramidNMS);
  nms::RectForest<unsigned short,double>::RectForest(v228, forestFeatureType);
  v57 = self->_pyrNMS.pForests;
  if (!v57)
  {
    goto LABEL_256;
  }

  v58 = v57[20];
  if (!v57[20])
  {
    goto LABEL_256;
  }

  v59 = 0;
  v243 = 0u;
  v244 = 0u;
  v242 = 0u;
  v241 = 0;
  do
  {
    nms::BOOLeanMaskToIndices<unsigned short>(&v230, *(self->_pyrNMS.masksValid.__map_.__begin_ + (((self->_pyrNMS.masksValid.__start_ + v59) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (LOBYTE(self->_pyrNMS.masksValid.__start_) + v59));
    if (v232 != v231)
    {
      v60 = (v231 + 8 * (v233 >> 11));
      v61 = (*v60 + 2 * (v233 & 0x7FF));
      v62 = *(v231 + (((v234 + v233) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v234 + v233) & 0x7FF);
      if (v61 != v62)
      {
        do
        {
          v240 = *v61;
          std::deque<std::pair<unsigned short,unsigned short>>::emplace_back<unsigned short &,unsigned short &>(&v242, &v241, &v240);
          v63 = *(ids + 2);
          v64 = *(ids + 1);
          v65 = v63 - v64;
          v66 = v241;
          if (v63 == v64)
          {
            v67 = 0;
          }

          else
          {
            v67 = ((v63 - v64) << 9) - 1;
          }

          v68 = *(ids + 4);
          v69 = *(ids + 5) + v68;
          if (v67 == v69)
          {
            if (v68 < 0x1000)
            {
              v70 = *(ids + 3);
              v71 = v70 - *ids;
              if (v65 < v71)
              {
                if (v70 != v63)
                {
                  operator new();
                }

                operator new();
              }

              if (v70 == *ids)
              {
                v72 = 1;
              }

              else
              {
                v72 = v71 >> 2;
              }

              idsCopy = ids;
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(ids, v72);
            }

            *(ids + 4) = v68 - 4096;
            v247 = *v64;
            *(ids + 1) = v64 + 1;
            std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(ids, &v247);
            v64 = *(ids + 1);
            v69 = *(ids + 5) + *(ids + 4);
          }

          *(*(v64 + ((v69 >> 9) & 0x7FFFFFFFFFFFF8)) + (v69 & 0xFFF)) = v66;
          ++*(ids + 5);
          if ((++v61 - *v60) == 4096)
          {
            v73 = v60[1];
            ++v60;
            v61 = v73;
          }
        }

        while (v61 != v62);
        v59 = v241;
      }
    }

    std::deque<unsigned short>::~deque[abi:ne200100](&v230);
    v241 = ++v59;
    self = selfCopy;
  }

  while (v58 > v59);
  v74 = selfCopy->_pyrNMS.pForests;
  nms::RectForest<unsigned short,double>::RectForest(&v230, forestFeatureType);
  featuresCopy = v222;
  if (forestFeatureType)
  {
    goto LABEL_255;
  }

  if (v243 == *(&v242 + 1) || (v75 = (*(&v242 + 1) + 8 * (v244 >> 10)), v76 = *v75, v77 = &(*v75)[2 * (v244 & 0x3FF)], v78 = *(*(&v242 + 1) + (((v244 + *(&v244 + 1)) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v244 + *(&v244 + 1)) & 0x3FF), v77 == v78))
  {
    v87 = 0;
  }

  else
  {
    v79 = 0;
    do
    {
      v80 = v77 + 2;
      if ((v77 + 2) - v76 == 4096)
      {
        v81 = v75[1];
        ++v75;
        v76 = v81;
        v80 = v81;
      }

      v82 = v74[4] + *v77;
      v83 = *(v74[1] + 8 * (v82 / 0x14)) + 200 * (v82 % 0x14);
      v84 = *(*(v83 + 136) + 8 * (*(v83 + 160) / 0x55uLL)) + 48 * (*(v83 + 160) % 0x55uLL);
      v85 = *(v84 + 32) + v77[1];
      v86 = (*(*(v84 + 8) + ((v85 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v85 & 0x3FF));
      v79 = v79 + v86[1] - *v86 + 1;
      v77 = v80;
    }

    while (v80 != v78);
    v87 = v79;
  }

  v88 = v239[0];
  if (!v239[0])
  {
    v102 = 0.0;
    v92 = 0.0;
    v96 = 0.0;
LABEL_137:
    v106 = 0;
    goto LABEL_138;
  }

  v89 = v239[0];
  do
  {
    v90 = v89;
    v89 = *v89;
  }

  while (v89);
  if (v90 == v239 || v90[4] || (v91 = v90[5], v91 >= 9))
  {
    v92 = 0.0;
  }

  else
  {
    v92 = dbl_1B42AFA98[v91];
  }

  v93 = v239;
  v94 = v239[0];
  do
  {
    if (v94[4])
    {
      v93 = v94;
    }

    v94 = v94[v94[4] == 0];
  }

  while (v94);
  if (v93 == v239 || v93[4] > 1uLL || (v95 = v93[5], v95 > 8))
  {
    v96 = 0.0;
  }

  else
  {
    v96 = dbl_1B42AFA98[v95];
  }

  v97 = v239;
  v98 = v239[0];
  do
  {
    v99 = v98[4];
    v25 = v99 >= 3;
    v100 = v99 < 3;
    if (v25)
    {
      v97 = v98;
    }

    v98 = v98[v100];
  }

  while (v98);
  if (v97 == v239 || v97[4] > 3uLL || (v101 = v97[5], v101 > 8))
  {
    v102 = 0.0;
  }

  else
  {
    v102 = dbl_1B42AFA98[v101];
  }

  v103 = v239;
  do
  {
    v104 = v88[4];
    v25 = v104 >= 4;
    v105 = v104 < 4;
    if (v25)
    {
      v103 = v88;
    }

    v88 = v88[v105];
  }

  while (v88);
  if (v103 == v239 || v103[4] > 4uLL)
  {
    goto LABEL_137;
  }

  v106 = 0;
  v107 = v103[5];
  if (v107 > 3)
  {
    if (v107 > 5)
    {
      switch(v107)
      {
        case 6:
          v106 = 9;
          break;
        case 7:
          v106 = 3;
          break;
        case 8:
          v106 = 14;
          break;
      }

      goto LABEL_138;
    }

    if (v107 != 4)
    {
      v106 = 5;
      goto LABEL_138;
    }

LABEL_297:
    v106 = 2;
    goto LABEL_138;
  }

  if (v107 > 1)
  {
    if (v107 == 2)
    {
      v106 = 8;
      goto LABEL_138;
    }

    goto LABEL_297;
  }

  if (v107 <= 1)
  {
    v106 = 4;
  }

LABEL_138:
  v108 = WORD4(v244);
  std::valarray<double>::resize(*(v235 + ((v236 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v236, *&v92 * WORD4(v244));
  std::valarray<double>::resize(*(v235 + (((v236 + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v236 + 1), *&v96 * v87);
  std::valarray<double>::resize(*(v235 + (((v236 + 3) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v236 + 3), *&v102 * v108);
  std::valarray<double>::resize(*(v235 + (((v236 + 4) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v236 + 4), v106 * v87);
  featuresCopy = v222;
  std::deque<std::pair<unsigned short,unsigned short>>::resize((*(v237 + 8 * (v238 / 0x55)) + 48 * (v238 % 0x55)), v108);
  std::deque<std::pair<unsigned short,unsigned short>>::resize((*(v237 + 8 * ((v238 + 4) / 0x55)) + 48 * ((v238 + 4) % 0x55)), v108);
  std::deque<std::pair<unsigned short,unsigned short>>::resize((*(v237 + 8 * ((v238 + 5) / 0x55)) + 48 * ((v238 + 5) % 0x55)), v87);
  if (v108)
  {
    v109 = 0;
    v110 = 0;
    v225 = v108;
    while (1)
    {
      v111 = (*(*(&v242 + 1) + (((v244 + v109) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v244 + v109) & 0x3FF));
      v112 = v74[4] + *v111;
      v113 = (*(v74[1] + 8 * (v112 / 0x14)) + 200 * (v112 % 0x14));
      v115 = v113 + 23;
      v114 = v113[23];
      if (!v114)
      {
        goto LABEL_146;
      }

      do
      {
        v116 = v114;
        v114 = *v114;
      }

      while (v114);
      if (v116 == v115 || v116[4] || (v117 = v116[5], v117 > 8))
      {
LABEL_146:
        v118 = 0.0;
      }

      else
      {
        v118 = dbl_1B42AFA98[v117];
      }

      v119 = *(v113[17] + 8 * (v113[20] / 0x55uLL)) + 48 * (v113[20] % 0x55uLL);
      v120 = v111[1];
      v121 = (*(*(v119 + 8) + (((*(v119 + 32) + v120) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v119 + 32) + v120) & 0x3FF));
      v122 = v121[1];
      v123 = *v121;
      v247 = *(v113[11] + ((v113[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v113[14];
      v248 = *&v118 * v120;
      v249 = v118;
      v250 = 1;
      std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v245, &v247);
      v124 = *v239;
      if (v239[0])
      {
        do
        {
          v125 = v124;
          v124 = **&v124;
        }

        while (v124 != 0.0);
        if (*&v125 == v239 || *(*&v125 + 32) || (v126 = *(*&v125 + 40), v126 > 8))
        {
          v124 = 0.0;
        }

        else
        {
          v124 = dbl_1B42AFA98[v126];
        }
      }

      v127 = v245;
      v128 = v246;
      if (v246 != v245)
      {
        break;
      }

      if (v246)
      {
        goto LABEL_161;
      }

LABEL_162:
      v133 = *(*(*(&v242 + 1) + (((v244 + v109) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v244 + v109) & 0x3FF) + 2);
      v134 = *v115;
      if (!*v115)
      {
        goto LABEL_172;
      }

      v135 = v113 + 23;
      do
      {
        v136 = v134[4];
        v25 = v136 >= 3;
        v137 = v136 < 3;
        if (v25)
        {
          v135 = v134;
        }

        v134 = v134[v137];
      }

      while (v134);
      if (v135 == v115 || v135[4] > 3uLL || (v138 = v135[5], v138 > 8))
      {
LABEL_172:
        v139 = 0.0;
      }

      else
      {
        v139 = dbl_1B42AFA98[v138];
      }

      v247 = *(v113[11] + (((v113[14] + 3) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v113 + 112) + 3);
      v248 = *&v139 * v133;
      v249 = v139;
      v250 = 1;
      std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v245, &v247);
      v140 = *v239;
      if (v239[0])
      {
        v141 = COERCE_DOUBLE(v239);
        do
        {
          v142 = *(*&v140 + 32);
          v25 = v142 >= 3;
          v143 = v142 < 3;
          if (v25)
          {
            v141 = v140;
          }

          v140 = *(*&v140 + 8 * v143);
        }

        while (v140 != 0.0);
        if (*&v141 == v239 || *(*&v141 + 32) > 3uLL || (v144 = *(*&v141 + 40), v144 > 8))
        {
          v140 = 0.0;
        }

        else
        {
          v140 = dbl_1B42AFA98[v144];
        }
      }

      v145 = v245;
      v146 = v246;
      if (v246 != v245)
      {
        v147 = (*(*(v235 + (((v236 + 3) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v236 + 3)) + 8 * *&v140 * v109);
        v148 = (v246 - v245) >> 3;
        if (v148 <= 1)
        {
          v148 = 1;
        }

        v149 = v245;
        do
        {
          v150 = *v149++;
          *v147++ = v150;
          --v148;
        }

        while (v148);
        v246 = &v146[(v145 - v146 + 7) & 0xFFFFFFFFFFFFFFF8];
LABEL_191:
        operator delete(v145);
        goto LABEL_192;
      }

      if (v246)
      {
        goto LABEL_191;
      }

LABEL_192:
      v151 = *v121;
      v152 = *v115;
      if (!*v115)
      {
        goto LABEL_201;
      }

      v153 = v113 + 23;
      do
      {
        if (v152[4])
        {
          v153 = v152;
        }

        v152 = v152[v152[4] == 0];
      }

      while (v152);
      if (v153 == v115 || v153[4] > 1uLL || (v154 = v153[5], v154 > 8))
      {
LABEL_201:
        v155 = 0.0;
      }

      else
      {
        v155 = dbl_1B42AFA98[v154];
      }

      v156 = v122 - v123 + 1;
      v247 = *(v113[11] + (((v113[14] + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v113 + 112) + 1);
      v248 = *&v155 * v151;
      *&v249 = *&v155 * v156;
      v250 = 1;
      std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v245, &v247);
      v157 = *v239;
      if (v239[0])
      {
        v158 = COERCE_DOUBLE(v239);
        do
        {
          if (*(*&v157 + 32))
          {
            v158 = v157;
          }

          v157 = *(*&v157 + 8 * (*(*&v157 + 32) == 0));
        }

        while (v157 != 0.0);
        if (*&v158 == v239 || *(*&v158 + 32) > 1uLL || (v159 = *(*&v158 + 40), v159 > 8))
        {
          v157 = 0.0;
        }

        else
        {
          v157 = dbl_1B42AFA98[v159];
        }
      }

      v160 = v110;
      v161 = v245;
      v162 = v246;
      if (v246 != v245)
      {
        v163 = (*(*(v235 + (((v236 + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v236 + 1)) + 8 * *&v157 * v110);
        v164 = (v246 - v245) >> 3;
        if (v164 <= 1)
        {
          v164 = 1;
        }

        v165 = v245;
        do
        {
          v166 = *v165++;
          *v163++ = v166;
          --v164;
        }

        while (v164);
        v246 = &v162[(v161 - v162 + 7) & 0xFFFFFFFFFFFFFFF8];
LABEL_219:
        operator delete(v161);
        goto LABEL_220;
      }

      if (v246)
      {
        goto LABEL_219;
      }

LABEL_220:
      v167 = *v115;
      if (!*v115)
      {
        goto LABEL_230;
      }

      v168 = v113 + 23;
      do
      {
        v169 = v167[4];
        v25 = v169 >= 4;
        v170 = v169 < 4;
        if (v25)
        {
          v168 = v167;
        }

        v167 = v167[v170];
      }

      while (v167);
      if (v168 == v115)
      {
LABEL_230:
        v172 = 0.0;
        featuresCopy = v222;
      }

      else
      {
        featuresCopy = v222;
        if (v168[4] > 4uLL || (v171 = v168[5], v171 > 8))
        {
          v172 = 0.0;
        }

        else
        {
          v172 = dbl_1B42AFA98[v171];
        }
      }

      v173 = *&v172 * *v121;
      v247 = *(v113[11] + (((v113[14] + 4) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v113 + 112) + 4);
      v248 = v173;
      *&v249 = *&v172 * v156;
      v250 = 1;
      std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v245, &v247);
      v174 = *v239;
      if (v239[0])
      {
        v175 = COERCE_DOUBLE(v239);
        do
        {
          v176 = *(*&v174 + 32);
          v25 = v176 >= 4;
          v177 = v176 < 4;
          if (v25)
          {
            v175 = v174;
          }

          v174 = *(*&v174 + 8 * v177);
        }

        while (v174 != 0.0);
        if (*&v175 == v239 || *(*&v175 + 32) > 4uLL || (v178 = *(*&v175 + 40), v178 > 8))
        {
          v174 = 0.0;
        }

        else
        {
          v174 = dbl_1B42AFA98[v178];
        }
      }

      v179 = v245;
      v180 = v246;
      if (v246 != v245)
      {
        v181 = (*(*(v235 + (((v236 + 4) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v236 + 4)) + 8 * *&v174 * v110);
        v182 = (v246 - v245) >> 3;
        if (v182 <= 1)
        {
          v182 = 1;
        }

        v183 = v245;
        do
        {
          v184 = *v183++;
          *v181++ = v184;
          --v182;
        }

        while (v182);
        v246 = &v180[(v179 - v180 + 7) & 0xFFFFFFFFFFFFFFF8];
LABEL_250:
        operator delete(v179);
        goto LABEL_251;
      }

      if (v246)
      {
        goto LABEL_250;
      }

LABEL_251:
      v185 = v156 + v110;
      v186 = v238;
      v187 = v237;
      v188 = *(v237 + 8 * (v238 / 0x55)) + 48 * (v238 % 0x55);
      v189 = (*(*(v188 + 8) + (((*(v188 + 32) + v109) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v188 + 32) + v109) & 0x3FF));
      *v189 = v110;
      v189[1] = v156 + v110 - 1;
      v190 = *(v187 + 8 * ((v186 + 4) / 0x55)) + 48 * ((v186 + 4) % 0x55);
      v191 = (*(*(v190 + 8) + (((*(v190 + 32) + v109) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v190 + 32) + v109) & 0x3FF));
      *v191 = v109;
      v191[1] = v109;
      if (v110 < v185)
      {
        v192 = *(v187 + 8 * ((v186 + 5) / 0x55)) + 48 * ((v186 + 5) % 0x55);
        v193 = *(v192 + 32);
        v194 = *(v192 + 8);
        do
        {
          v195 = (*(v194 + (((v193 + v160) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v193 + v160) & 0x3FF));
          *v195 = v160;
          v195[1] = v160++;
        }

        while (v185 != v160);
      }

      v110 += v156;
      if (++v109 == v225)
      {
        goto LABEL_255;
      }
    }

    v129 = (*(*(v235 + ((v236 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v236) + 8 * *&v124 * v109);
    v130 = (v246 - v245) >> 3;
    if (v130 <= 1)
    {
      v130 = 1;
    }

    v131 = v245;
    do
    {
      v132 = *v131++;
      *v129++ = v132;
      --v130;
    }

    while (v130);
    v246 = &v128[(v127 - v128 + 7) & 0xFFFFFFFFFFFFFFF8];
LABEL_161:
    operator delete(v127);
    goto LABEL_162;
  }

LABEL_255:
  nms::RectForest<unsigned short,double>::operator=(v228, &v230);
  nms::RectForest<unsigned short,double>::~RectForest(&v230);
  std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](&v242);
  self = selfCopy;
LABEL_256:
  nms::RectForest<unsigned short,double>::operator=(v227, v228);
  nms::RectForest<unsigned short,double>::~RectForest(v228);
  std::deque<std::valarray<unsigned char>>::~deque[abi:ne200100](v229);
LABEL_257:
  std::deque<nms::RectForest<unsigned short,double>>::push_back(&self->_postNMSForests.__map_.__first_, v227);
  nms::RectForest<unsigned short,double>::~RectForest(v227);
  v196 = self->_preNMSForests.__map_.__begin_;
  v197 = self->_preNMSForests.__map_.__end_;
  if (v197 == v196)
  {
    p_size = &self->_preNMSForests.__size_;
    v197 = self->_preNMSForests.__map_.__begin_;
  }

  else
  {
    p_size = &self->_preNMSForests.__size_;
    v199 = self->_preNMSForests.__start_;
    v200 = &v196[v199 / 0x14];
    v201 = v196[(self->_preNMSForests.__size_ + v199) / 0x14] + 200 * ((self->_preNMSForests.__size_ + v199) % 0x14);
    if (*v200 + 200 * (v199 % 0x14) != v201)
    {
      v202 = (*v200 + 200 * (v199 % 0x14));
      do
      {
        v203 = *v202;
        v202 += 25;
        (*v203)();
        if (v202 - *v200 == 4000)
        {
          v204 = v200[1];
          ++v200;
          v202 = v204;
        }
      }

      while (v202 != v201);
      v196 = self->_preNMSForests.__map_.__begin_;
      v197 = self->_preNMSForests.__map_.__end_;
    }
  }

  *p_size = 0;
  v205 = v197 - v196;
  if (v205 >= 3)
  {
    do
    {
      operator delete(*v196);
      v206 = self->_preNMSForests.__map_.__end_;
      v196 = self->_preNMSForests.__map_.__begin_ + 1;
      self->_preNMSForests.__map_.__begin_ = v196;
      v205 = v206 - v196;
    }

    while (v205 > 2);
  }

  if (v205 == 1)
  {
    v207 = 10;
LABEL_271:
    self->_preNMSForests.__start_ = v207;
  }

  else if (v205 == 2)
  {
    v207 = 20;
    goto LABEL_271;
  }

  v208 = [(CRNMS *)self buildTextFeaturesFromRectForest:self->_postNMSForests.__map_.__begin_[self->_postNMSForests.__start_ / 0x14] + 200 * (self->_postNMSForests.__start_ % 0x14) byEdge:self->_outputTextFeatureLevel options:featuresCopy];
  v209 = self->_postNMSForests.__map_.__begin_;
  v210 = self->_postNMSForests.__map_.__end_;
  if (v210 == v209)
  {
    v213 = &self->_postNMSForests.__size_;
    v210 = self->_postNMSForests.__map_.__begin_;
  }

  else
  {
    v211 = self->_postNMSForests.__start_;
    v212 = &v209[v211 / 0x14];
    v213 = &self->_postNMSForests.__size_;
    v214 = v209[(self->_postNMSForests.__size_ + v211) / 0x14] + 200 * ((self->_postNMSForests.__size_ + v211) % 0x14);
    if (*v212 + 200 * (v211 % 0x14) != v214)
    {
      v215 = featuresCopy;
      v216 = (*v212 + 200 * (v211 % 0x14));
      do
      {
        v217 = *v216;
        v216 += 25;
        (*v217)();
        if (v216 - *v212 == 4000)
        {
          v218 = v212[1];
          ++v212;
          v216 = v218;
        }
      }

      while (v216 != v214);
      v210 = self->_postNMSForests.__map_.__end_;
      v209 = self->_postNMSForests.__map_.__begin_;
      featuresCopy = v215;
    }
  }

  *v213 = 0;
  v219 = v210 - v209;
  if (v219 >= 3)
  {
    do
    {
      operator delete(*v209);
      v209 = self->_postNMSForests.__map_.__begin_ + 1;
      self->_postNMSForests.__map_.__begin_ = v209;
      v219 = self->_postNMSForests.__map_.__end_ - v209;
    }

    while (v219 > 2);
  }

  if (v219 == 1)
  {
    v220 = 10;
LABEL_286:
    self->_postNMSForests.__start_ = v220;
  }

  else if (v219 == 2)
  {
    v220 = 20;
    goto LABEL_286;
  }

  return v208;
}

- (unint64_t)convertSubTextFeatures:(id)features toRects:(void *)rects
{
  v33 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  v6 = featuresCopy;
  if (featuresCopy)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = featuresCopy;
    v8 = 0;
    v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v9)
    {
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (*(*(&v27 + 1) + 8 * i))
          {
            ++v8;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    std::valarray<double>::resize(rects, 4 * v8);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = 0;
      v15 = *v24;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * j);
          if (v17)
          {
            [*(*(&v23 + 1) + 8 * j) bounds];
            *(*rects + 32 * v14) = v18;
            [v17 bounds];
            *(*rects + 32 * v14 + 8) = v19;
            [v17 bounds];
            *(*rects + 32 * v14 + 16) = v20;
            [v17 bounds];
            *(*rects + 32 * v14++ + 24) = v21;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)buildRectForest:(void *)forest fromTextDetectorQuadFeatures:(const void *)features forestFeatureType:(unint64_t)type withInputSize:(CGSize)size scoreMap:(vImage_Buffer *)map scoreMapScaleFactor:(double)factor andTileRects:(id)rects options:(id)self0
{
  height = size.height;
  width = size.width;
  v136 = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  optionsCopy = options;
  v121 = rectsCopy;
  if (rectsCopy)
  {
    v113 = [rectsCopy count] > 1;
  }

  else
  {
    v113 = 0;
  }

  v17 = 0xCF3CF3CF3CF3CF3DLL * ((*(features + 1) - *features) >> 3);
  LOBYTE(dest.a) = 0;
  std::vector<BOOL>::vector(&__p, v17);
  nms::RectForest<unsigned short,double>::setDataRepresentationDims(forest, type);
  if (map->data)
  {
    v20 = (forest + 16);
    v19 = *(forest + 2);
    if (v19)
    {
      free(v19);
      *v20 = 0;
    }

    v21 = malloc_type_calloc(map->height * map->width, 1uLL, 0x100004077774924uLL);
    v22 = *&map->height;
    v23 = *&map->width;
    *&dest.a = v21;
    dest.b = v22;
    dest.c = v23;
    dest.d = v23;
    vImageConvert_PlanarFtoPlanar8(map, &dest, 1.0, 0.0, 0);
    if (factor == 1.0 || factor <= 0.0)
    {
      v25 = *&dest.c;
      *v20 = *&dest.a;
      *(forest + 2) = v25;
      if (!type)
      {
        goto LABEL_15;
      }

LABEL_49:
      v55 = 0;
      goto LABEL_50;
    }

    v116 = vcvtq_u64_f64(vrndpq_f64(vmulq_n_f64(vcvtq_f64_u64(*&map->height), factor)));
    *(forest + 2) = malloc_type_calloc(v116.i64[0] * v116.i64[1], 1uLL, 0x100004077774924uLL);
    *(forest + 24) = v116;
    *(forest + 5) = v116.i64[1];
    if (vImageScale_Planar8(&dest, (forest + 16), 0, 0))
    {
      free(*v20);
      v24 = *&dest.c;
      *v20 = *&dest.a;
      *(forest + 2) = v24;
    }

    free(*&dest.a);
  }

  if (type)
  {
    goto LABEL_49;
  }

LABEL_15:
  v26 = *features;
  if (*(features + 1) == *features)
  {
    goto LABEL_49;
  }

  forestCopy = forest;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = __p;
  do
  {
    v31 = v26 + 168 * v29;
    v32 = *(v31 + 144);
    v117 = (v31 + 144);
    v33 = *(v31 + 152);
    v34 = v32;
    v35 = v29 >> 6;
    v36 = 1 << v29;
    if (v32 == *(&v32 + 1))
    {
      v37 = v30[v35] & ~v36;
      v30[v35] = v37;
    }

    else
    {
      v37 = v30[v35] | v36;
      v30[v35] = v37;
      if (v113)
      {
        v111 = v28;
        do
        {
          CRDetectorUtils::convertPointToRect(v34, v18);
          v39 = v38;
          v41 = v40;
          v43 = v42;
          v45 = v44;
          CGAffineTransformMakeScale(&dest, 1.0 / width, 1.0 / height);
          v137.origin.x = v39;
          v137.origin.y = v41;
          v137.size.width = v43;
          v137.size.height = v45;
          v138 = CGRectApplyAffineTransform(v137, &dest);
          x = v138.origin.x;
          y = v138.origin.y;
          v48 = v138.size.width;
          v49 = v138.size.height;
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          v50 = v121;
          v51 = [v50 countByEnumeratingWithState:&v129 objects:v135 count:16];
          if (v51)
          {
            v52 = *v130;
            while (2)
            {
              for (i = 0; i != v51; ++i)
              {
                if (*v130 != v52)
                {
                  objc_enumerationMutation(v50);
                }

                [*(*(&v129 + 1) + 8 * i) rectValue];
                v140.origin.x = x;
                v140.origin.y = y;
                v140.size.width = v48;
                v140.size.height = v49;
                if (CGRectContainsRect(v139, v140))
                {
                  *(__p + v35) &= ~v36;
                  goto LABEL_30;
                }
              }

              v51 = [v50 countByEnumeratingWithState:&v129 objects:v135 count:16];
              if (v51)
              {
                continue;
              }

              break;
            }
          }

LABEL_30:

          v30 = __p;
          v37 = *(__p + v35);
          v34 += 144;
        }

        while ((v37 & v36) != 0 && v34 != v33);
        v28 = v111;
      }
    }

    if ((v37 & v36) != 0)
    {
      v28 -= 0x71C71C71C71C71C7 * ((v117[1] - *v117) >> 4);
      ++v27;
    }

    ++v29;
    v26 = *features;
  }

  while (v29 < 0xCF3CF3CF3CF3CF3DLL * ((*(features + 1) - *features) >> 3));
  v55 = 0;
  if (v27 && v28)
  {
    v57 = (forestCopy + 23);
    v56 = forestCopy[23];
    if (v56)
    {
      v58 = forestCopy[23];
      do
      {
        v59 = v58;
        v58 = *v58;
      }

      while (v58);
      if (v59 == v57 || v59[4] || (v60 = v59[5], v60 > 8))
      {
        v61 = 0.0;
      }

      else
      {
        v61 = dbl_1B42AFA98[v60];
      }

      v63 = forestCopy + 23;
      v64 = forestCopy[23];
      do
      {
        if (v64[4])
        {
          v63 = v64;
        }

        v64 = v64[v64[4] == 0];
      }

      while (v64);
      if (v63 == v57 || v63[4] > 1uLL || (v65 = v63[5], v65 > 8))
      {
        v109 = 0.0;
      }

      else
      {
        v109 = dbl_1B42AFA98[v65];
      }

      v66 = forestCopy + 23;
      v67 = forestCopy[23];
      do
      {
        v68 = v67[4];
        v69 = v68 >= 3;
        v70 = v68 < 3;
        if (v69)
        {
          v66 = v67;
        }

        v67 = v67[v70];
      }

      while (v67);
      if (v66 == v57 || v66[4] > 3uLL || (v71 = v66[5], v71 > 8))
      {
        v102 = 0.0;
      }

      else
      {
        v102 = dbl_1B42AFA98[v71];
      }

      v72 = forestCopy + 23;
      do
      {
        v73 = v56[4];
        v69 = v73 >= 4;
        v74 = v73 < 4;
        if (v69)
        {
          v72 = v56;
        }

        v56 = v56[v74];
      }

      while (v56);
      if (v72 != v57 && v72[4] <= 4uLL)
      {
        v110 = 0;
        v75 = v72[5];
        if (v75 <= 3)
        {
          if (v75 <= 1)
          {
            if (v75 <= 1)
            {
              v75 = 4;
              goto LABEL_118;
            }

LABEL_88:
            v100 = (*(forestCopy[11] + ((forestCopy[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * forestCopy[14]);
            std::valarray<double>::resize(v100, *&v61 * v27);
            v107 = (*(forestCopy[11] + (((forestCopy[14] + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(forestCopy + 112) + 1));
            std::valarray<double>::resize(v107, *&v109 * v28);
            v101 = (*(forestCopy[11] + (((forestCopy[14] + 3) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(forestCopy + 112) + 3));
            std::valarray<double>::resize(v101, *&v102 * v27);
            v108 = (*(forestCopy[11] + (((forestCopy[14] + 4) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(forestCopy + 112) + 4));
            std::valarray<double>::resize(v108, v110 * v28);
            v98 = (*(forestCopy[17] + 8 * (forestCopy[20] / 0x55uLL)) + 48 * (forestCopy[20] % 0x55uLL));
            std::deque<std::pair<unsigned short,unsigned short>>::resize(v98, v27);
            v99 = (*(forestCopy[17] + 8 * ((forestCopy[20] + 4) / 0x55uLL)) + 48 * ((forestCopy[20] + 4) % 0x55uLL));
            std::deque<std::pair<unsigned short,unsigned short>>::resize(v99, v27);
            v76 = (*(forestCopy[17] + 8 * ((forestCopy[20] + 5) / 0x55uLL)) + 48 * ((forestCopy[20] + 5) % 0x55uLL));
            std::deque<std::pair<unsigned short,unsigned short>>::resize(v76, v28);
            v77 = v28;
            v78 = (*(forestCopy[17] + 8 * ((forestCopy[20] + 2) / 0x55uLL)) + 48 * ((forestCopy[20] + 2) % 0x55uLL));
            std::deque<std::pair<unsigned short,unsigned short>>::resize(v78, v77);
            v80 = *features;
            v79 = *(features + 1);
            if (v79 != *features)
            {
              v81 = 0;
              v106 = 0;
              v82 = 0;
              v112 = 8 * v110;
              v114 = 8 * *&v109;
              v97 = v61;
              do
              {
                if ((*(__p + ((v81 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v81))
                {
                  v83 = v80 + 168 * v81;
                  v85 = *(v83 + 144);
                  v84 = *(v83 + 152);
                  *&dest.a = *v101 + 8 * v82 * *&v102;
                  dest.b = v102;
                  *&dest.c = 1;
                  std::map<nms::ForestLevelType,nms::RepresentationDimType>::at(*v57, 3uLL);
                  [(CRNMS *)self fillRectForestDatum:&dest asDimType:*std::map<nms::ForestLevelType withCRTextDetectorQuad:nms::RepresentationDimType>::at(*v57 andInputSize:3uLL), *features + 168 * v81, width, height];
                  v128[0] = *v100 + 8 * v82 * *&v61;
                  *&v128[1] = v61;
                  v128[2] = 1;
                  std::map<nms::ForestLevelType,nms::RepresentationDimType>::at(*v57, 0);
                  v86 = *std::map<nms::ForestLevelType,nms::RepresentationDimType>::at(*v57, 0);
                  std::valarray<double>::valarray(&v125, &dest);
                  v118 = v81;
                  [(CRNMS *)self fillRectForestDatum:v128 asDimType:v86 withQuad:&v125 andDimType:*std::map<nms::ForestLevelType, nms::RepresentationDimType>::at(*v57, 3uLL)];
                  if (v125)
                  {
                    if (v126 != v125)
                    {
                      v126 += (v125 - v126 + 7) & 0xFFFFFFFFFFFFFFF8;
                    }

                    operator delete(v125);
                  }

                  v104 = 0x8E38E38E38E38E39 * ((v84 - v85) >> 4);
                  v87 = (*(v99[1] + (((v99[4] + v82) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v99[4] + v82) & 0x3FF));
                  *v87 = v82;
                  v87[1] = v82;
                  if (v84 != v85)
                  {
                    v88 = 0;
                    v89 = v106;
                    if (v104 <= 1)
                    {
                      v90 = 1;
                    }

                    else
                    {
                      v90 = v104;
                    }

                    v91 = v114 * v106;
                    v92 = v112 * v106;
                    do
                    {
                      v125 = (*v108 + v92);
                      v126 = v110;
                      v127 = 1;
                      std::map<nms::ForestLevelType,nms::RepresentationDimType>::at(*v57, 4uLL);
                      [(CRNMS *)self fillRectForestDatum:&v125 asDimType:*std::map<nms::ForestLevelType withCRTextDetectorQuad:nms::RepresentationDimType>::at(*v57 andInputSize:4uLL), *(*features + 168 * v118 + 144) + v88, width, height];
                      v124[0] = *v107 + v91;
                      *&v124[1] = v109;
                      v124[2] = 1;
                      std::map<nms::ForestLevelType,nms::RepresentationDimType>::at(*v57, 1uLL);
                      v93 = *std::map<nms::ForestLevelType,nms::RepresentationDimType>::at(*v57, 1uLL);
                      std::valarray<double>::valarray(&v122, &v125);
                      [(CRNMS *)self fillRectForestDatum:v124 asDimType:v93 withQuad:&v122 andDimType:*std::map<nms::ForestLevelType, nms::RepresentationDimType>::at(*v57, 4uLL)];
                      if (v122)
                      {
                        if (v123 != v122)
                        {
                          v123 += (v122 - v123 + 7) & 0xFFFFFFFFFFFFFFF8;
                        }

                        operator delete(v122);
                      }

                      v94 = (*(v76[1] + (((v89 + v76[4]) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v89 + v76[4]) & 0x3FF));
                      *v94 = v89;
                      v94[1] = v89;
                      v95 = (*(v78[1] + (((v89 + v78[4]) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v89 + v78[4]) & 0x3FF));
                      ++v89;
                      *v95 = v82;
                      v95[1] = v82;
                      v88 += 144;
                      v91 += v114;
                      v92 += v112;
                      --v90;
                    }

                    while (v90);
                  }

                  v96 = (*(v98[1] + (((v98[4] + v82) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v98[4] + v82) & 0x3FF));
                  *v96 = v106;
                  v96[1] = v104 + v106 - 1;
                  ++v82;
                  v80 = *features;
                  v79 = *(features + 1);
                  v106 += v104;
                  v61 = v97;
                  v81 = v118;
                }

                ++v81;
              }

              while (v81 < 0xCF3CF3CF3CF3CF3DLL * ((v79 - v80) >> 3));
            }

            v55 = 1;
            goto LABEL_50;
          }

          if (v75 == 2)
          {
            v75 = 8;
            goto LABEL_118;
          }
        }

        else
        {
          if (v75 > 5)
          {
            switch(v75)
            {
              case 6:
                v75 = 9;
                goto LABEL_118;
              case 7:
                v75 = 3;
                goto LABEL_118;
              case 8:
                v75 = 14;
LABEL_118:
                v110 = v75;
                goto LABEL_88;
            }

            goto LABEL_88;
          }

          if (v75 != 4)
          {
            goto LABEL_118;
          }
        }

        v75 = 2;
        goto LABEL_118;
      }
    }

    else
    {
      v102 = 0.0;
      v61 = 0.0;
      v109 = 0.0;
    }

    v110 = 0;
    goto LABEL_88;
  }

LABEL_50:
  if (__p)
  {
    operator delete(__p);
  }

  return v55;
}

- (void)fillTextFeature:(id)feature withRectDatum:(const void *)datum
{
  featureCopy = feature;
  [featureCopy setBounds:{**datum, *(*datum + 8), *(*datum + 16), *(*datum + 24)}];
  [featureCopy bounds];
  v6 = v5;
  [featureCopy bounds];
  [featureCopy setTopLeft:v6];
  [featureCopy bounds];
  v8 = v7;
  [featureCopy bounds];
  v10 = v9;
  [featureCopy bounds];
  [featureCopy setTopRight:v8 + v10];
  [featureCopy bounds];
  v12 = v11;
  [featureCopy bounds];
  v14 = v13;
  [featureCopy bounds];
  v16 = v15;
  [featureCopy bounds];
  [featureCopy setBottomRight:{v12 + v14, v16 + v17}];
  [featureCopy bounds];
  v19 = v18;
  [featureCopy bounds];
  v21 = v20;
  [featureCopy bounds];
  [featureCopy setBottomLeft:{v19, v21 + v22}];
}

- (id)getTextFeatureFromQuadAngleDatum:(const void *)datum
{
  v4 = [[CRTextFeature alloc] initWithTopLeft:**datum topRight:*(*datum + 8) bottomLeft:*(*datum + 16) bottomRight:*(*datum + 24), *(*datum + 48), *(*datum + 56), *(*datum + 32), *(*datum + 40)];
  v5 = *(*datum + 72);
  *&v5 = v5;
  [(CRTextFeature *)v4 setBaselineAngle:v5];
  [(CRTextFeature *)v4 setIsCurved:*(*datum + 80) != 0.0];
  [(CRTextFeature *)v4 setFeatureID:*(*datum + 104)];

  return v4;
}

- (id)buildTextFeaturesFromRectForest:(const void *)forest byEdge:(unint64_t)edge options:(id)options
{
  optionsCopy = options;
  if (edge > 5)
  {
    v8 = 5;
    v9 = 5;
  }

  else
  {
    v8 = qword_1B42AFA18[edge];
    v9 = qword_1B42AFA48[edge];
  }

  v10 = [optionsCopy objectForKey:@"CRImageReaderTextDetector"];
  v11 = [v10 isEqualToString:@"CRImageReaderTextDetectorCI"];

  if (v11)
  {
    if ((edge | 2) == 3)
    {
      v12 = (*(*(forest + 17) + 8 * ((*(forest + 20) + edge) / 0x55)) + 48 * ((*(forest + 20) + edge) % 0x55));
      v85 = [MEMORY[0x1E695DF70] arrayWithCapacity:v12[5]];
      if (v12[5])
      {
        v13 = 0;
        v14 = forest + 184;
        do
        {
          v15 = *v14;
          if (!*v14)
          {
            goto LABEL_18;
          }

          v16 = forest + 184;
          do
          {
            v17 = *(v15 + 4);
            v18 = v17 >= v8;
            v19 = v17 < v8;
            if (v18)
            {
              v16 = v15;
            }

            v15 = *&v15[8 * v19];
          }

          while (v15);
          if (v16 == v14 || *(v16 + 4) > v8 || (v20 = *(v16 + 5), v20 > 8))
          {
LABEL_18:
            v21 = 0.0;
          }

          else
          {
            v21 = dbl_1B42AFA98[v20];
          }

          v95 = *(*(forest + 11) + (((*(forest + 14) + v8) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(forest + 112) + v8);
          v96 = *&v21 * v13;
          v97 = v21;
          v98 = 1;
          std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v93, &v95);
          v87 = objc_opt_new();
          [CRNMS fillTextFeature:"fillTextFeature:withRectDatum:" withRectDatum:?];
          v22 = objc_opt_new();
          v23 = (*(v12[1] + (((v12[4] + v13) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v12[4] + v13) & 0x3FF));
          v24 = *v23;
          if (v24 <= v23[1])
          {
            do
            {
              v25 = *v14;
              if (!*v14)
              {
                goto LABEL_30;
              }

              v26 = forest + 184;
              do
              {
                v27 = *(v25 + 4);
                v18 = v27 >= v9;
                v28 = v27 < v9;
                if (v18)
                {
                  v26 = v25;
                }

                v25 = *&v25[8 * v28];
              }

              while (v25);
              if (v26 == v14 || *(v26 + 4) > v9 || (v29 = *(v26 + 5), v29 > 8))
              {
LABEL_30:
                v30 = 0.0;
              }

              else
              {
                v30 = dbl_1B42AFA98[v29];
              }

              v95 = *(*(forest + 11) + (((*(forest + 14) + v9) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(forest + 112) + v9);
              v96 = *&v30 * v24;
              v97 = v30;
              v98 = 1;
              std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&__p, &v95);
              v31 = objc_opt_new();
              [(CRNMS *)self fillTextFeature:v31 withRectDatum:&__p];
              [v22 addObject:v31];

              if (__p)
              {
                if (v92 != __p)
                {
                  v92 += (__p - v92 + 7) & 0xFFFFFFFFFFFFFFF8;
                }

                operator delete(__p);
              }

              v18 = v24++ >= *(*(v12[1] + (((v12[4] + v13) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v12[4] + v13) & 0x3FF) + 2);
            }

            while (!v18);
          }

          [v87 setSubFeatures:v22];
          [v85 addObject:v87];

          if (v93)
          {
            if (v94 != v93)
            {
              v94 += (v93 - v94 + 7) & 0xFFFFFFFFFFFFFFF8;
            }

            operator delete(v93);
          }

          ++v13;
        }

        while (v13 < v12[5]);
      }
    }

    else
    {
      v52 = *(forest + 20);
      v53 = *(forest + 17);
      v54 = (*(v53 + 8 * (v52 / 0x55)) + 48 * (v52 % 0x55));
      v55 = v52 + 1;
      v56 = (v52 + 1) / 0x55;
      v57 = *(v53 + 8 * v56);
      v85 = [MEMORY[0x1E695DF70] arrayWithCapacity:v54[5]];
      if (v54[5])
      {
        v88 = 0;
        v58 = v57 + 48 * (v55 - 85 * v56);
        v59 = forest + 184;
        do
        {
          v60 = *v59;
          if (!*v59)
          {
            goto LABEL_88;
          }

          do
          {
            v61 = v60;
            v60 = *v60;
          }

          while (v60);
          if (v61 == v59 || *(v61 + 4) || (v62 = *(v61 + 5), v62 > 8))
          {
LABEL_88:
            v63 = 0.0;
          }

          else
          {
            v63 = dbl_1B42AFA98[v62];
          }

          v95 = *(*(forest + 11) + ((*(forest + 14) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(forest + 14);
          v96 = *&v63 * v88;
          v97 = v63;
          v98 = 1;
          std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v93, &v95);
          v84 = objc_opt_new();
          [CRNMS fillTextFeature:"fillTextFeature:withRectDatum:" withRectDatum:?];
          v86 = objc_opt_new();
          v64 = (*(v54[1] + (((v54[4] + v88) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v54[4] + v88) & 0x3FF));
          v65 = *v64;
          if (v65 <= v64[1])
          {
            do
            {
              v66 = *v59;
              if (!*v59)
              {
                goto LABEL_99;
              }

              v67 = forest + 184;
              do
              {
                if (*(v66 + 4))
                {
                  v67 = v66;
                }

                v66 = *&v66[8 * (*(v66 + 4) == 0)];
              }

              while (v66);
              if (v67 == v59 || *(v67 + 4) > 1uLL || (v68 = *(v67 + 5), v68 > 8))
              {
LABEL_99:
                v69 = 0.0;
              }

              else
              {
                v69 = dbl_1B42AFA98[v68];
              }

              v95 = *(*(forest + 11) + (((*(forest + 14) + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(forest + 112) + 1);
              v96 = *&v69 * v65;
              v97 = v69;
              v98 = 1;
              std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&__p, &v95);
              v70 = objc_opt_new();
              v71 = v54;
              [(CRNMS *)self fillTextFeature:v70 withRectDatum:&__p];
              v72 = objc_opt_new();
              v73 = (*(*(v58 + 8) + (((*(v58 + 32) + v65) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v58 + 32) + v65) & 0x3FF));
              v74 = *v73;
              if (v74 <= v73[1])
              {
                do
                {
                  v75 = *v59;
                  if (!*v59)
                  {
                    goto LABEL_111;
                  }

                  v76 = forest + 184;
                  do
                  {
                    v77 = *(v75 + 4);
                    v18 = v77 >= 2;
                    v78 = v77 < 2;
                    if (v18)
                    {
                      v76 = v75;
                    }

                    v75 = *&v75[8 * v78];
                  }

                  while (v75);
                  if (v76 == v59 || *(v76 + 4) > 2uLL || (v79 = *(v76 + 5), v79 > 8))
                  {
LABEL_111:
                    v80 = 0.0;
                  }

                  else
                  {
                    v80 = dbl_1B42AFA98[v79];
                  }

                  v95 = *(*(forest + 11) + (((*(forest + 14) + 2) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(forest + 112) + 2);
                  v96 = *&v80 * v74;
                  v97 = v80;
                  v98 = 1;
                  std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v89, &v95);
                  v81 = objc_opt_new();
                  [(CRNMS *)self fillTextFeature:v81 withRectDatum:&v89];
                  [v72 addObject:v81];

                  if (v89)
                  {
                    if (v90 != v89)
                    {
                      v90 += (v89 - v90 + 7) & 0xFFFFFFFFFFFFFFF8;
                    }

                    operator delete(v89);
                  }

                  v18 = v74++ >= *(*(*(v58 + 8) + (((*(v58 + 32) + v65) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v58 + 32) + v65) & 0x3FF) + 2);
                }

                while (!v18);
              }

              [v70 setSubFeatures:v72];
              [v86 addObject:v70];

              v54 = v71;
              if (__p)
              {
                if (v92 != __p)
                {
                  v92 += (__p - v92 + 7) & 0xFFFFFFFFFFFFFFF8;
                }

                operator delete(__p);
              }

              v18 = v65++ >= *(*(v71[1] + (((v71[4] + v88) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v71[4] + v88) & 0x3FF) + 2);
            }

            while (!v18);
          }

          [v84 setSubFeatures:v86];
          [v85 addObject:v84];

          if (v93)
          {
            if (v94 != v93)
            {
              v94 += (v93 - v94 + 7) & 0xFFFFFFFFFFFFFFF8;
            }

            operator delete(v93);
          }

          ++v88;
        }

        while (v88 < v54[5]);
      }
    }
  }

  else
  {
    v32 = (*(*(forest + 17) + 8 * (*(forest + 20) / 0x55uLL)) + 48 * (*(forest + 20) % 0x55uLL));
    v85 = [MEMORY[0x1E695DF70] arrayWithCapacity:v32[5]];
    if (v32[5])
    {
      v33 = 0;
      v34 = forest + 184;
      do
      {
        v35 = *v34;
        if (!*v34)
        {
          goto LABEL_55;
        }

        v36 = forest + 184;
        do
        {
          v37 = *(v35 + 4);
          v18 = v37 >= 3;
          v38 = v37 < 3;
          if (v18)
          {
            v36 = v35;
          }

          v35 = *&v35[8 * v38];
        }

        while (v35);
        if (v36 == v34 || *(v36 + 4) > 3uLL || (v39 = *(v36 + 5), v39 > 8))
        {
LABEL_55:
          v40 = 0.0;
        }

        else
        {
          v40 = dbl_1B42AFA98[v39];
        }

        v95 = *(*(forest + 11) + (((*(forest + 14) + 3) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(forest + 112) + 3);
        v96 = *&v40 * v33;
        v97 = v40;
        v98 = 1;
        std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v93, &v95);
        v41 = [(CRNMS *)self getTextFeatureFromQuadAngleDatum:&v93];
        v42 = objc_opt_new();
        v43 = (*(v32[1] + (((v32[4] + v33) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v32[4] + v33) & 0x3FF));
        v44 = *v43;
        if (v44 <= v43[1])
        {
          do
          {
            v45 = *v34;
            if (!*v34)
            {
              goto LABEL_67;
            }

            v46 = forest + 184;
            do
            {
              v47 = *(v45 + 4);
              v18 = v47 >= 4;
              v48 = v47 < 4;
              if (v18)
              {
                v46 = v45;
              }

              v45 = *&v45[8 * v48];
            }

            while (v45);
            if (v46 == v34 || *(v46 + 4) > 4uLL || (v49 = *(v46 + 5), v49 > 8))
            {
LABEL_67:
              v50 = 0.0;
            }

            else
            {
              v50 = dbl_1B42AFA98[v49];
            }

            v95 = *(*(forest + 11) + (((*(forest + 14) + 4) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(forest + 112) + 4);
            v96 = *&v50 * v44;
            v97 = v50;
            v98 = 1;
            std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&__p, &v95);
            v51 = [(CRNMS *)self getTextFeatureFromQuadAngleDatum:&__p];
            [v42 addObject:v51];

            if (__p)
            {
              if (v92 != __p)
              {
                v92 += (__p - v92 + 7) & 0xFFFFFFFFFFFFFFF8;
              }

              operator delete(__p);
            }

            v18 = v44++ >= *(*(v32[1] + (((v32[4] + v33) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v32[4] + v33) & 0x3FF) + 2);
          }

          while (!v18);
        }

        [v41 setSubFeatures:v42];
        [v85 addObject:v41];

        if (v93)
        {
          if (v94 != v93)
          {
            v94 += (v93 - v94 + 7) & 0xFFFFFFFFFFFFFFF8;
          }

          operator delete(v93);
        }

        ++v33;
      }

      while (v33 < v32[5]);
    }
  }

  return v85;
}

- (void)fillRectForestDatum:(void *)datum asDimType:(unint64_t)type withCGRect:(const CGRect *)rect
{
  v16 = 0;
  v17 = 0;
  std::valarray<double>::resize(&v16, 4uLL);
  if (type == 5)
  {
    std::valarray<double>::resize(&v16, 5uLL);
  }

  v8 = v16;
  v9 = v17;
  *v16 = rect->origin.x;
  v8[1] = rect->origin.y;
  v8[2] = rect->size.width;
  v8[3] = rect->size.height;
  v10 = v9 - v8;
  if (v10)
  {
    v11 = v10 >> 3;
    v12 = *datum;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v13 = 8 * *(datum + 2);
    v14 = v8;
    do
    {
      v15 = *v14++;
      *v12 = v15;
      v12 = (v12 + v13);
      --v11;
    }

    while (v11);
  }

  operator delete(v8);
}

- (void)fillRectForestDatum:(void *)datum asDimType:(unint64_t)type withQuad:(const void *)quad andDimType:(unint64_t)dimType
{
  v30 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = 0;
  if (type)
  {
    if (type != 5)
    {
      return;
    }

    std::valarray<double>::resize(&v27, 5uLL);
    if (dimType == 8 || dimType == 6)
    {
      v27[4] = *(*quad + 64);
    }
  }

  else
  {
    std::valarray<double>::resize(&v27, 4uLL);
  }

  v9 = **quad;
  v10 = *(*quad + 16);
  v11 = vbslq_s8(vcgtq_f64(v9, v10), v10, v9);
  v12 = *(*quad + 32);
  v13 = *(*quad + 48);
  v14 = vbslq_s8(vcgtq_f64(v11, v12), v12, v11);
  v15 = vbslq_s8(vcgtq_f64(v10, v9), v10, v9);
  v16 = vbslq_s8(vcgtq_f64(v12, v15), v12, v15);
  v29[0] = vbslq_s8(vcgtq_f64(v14, v13), v13, v14);
  v29[1] = vsubq_f64(vbslq_s8(vcgtq_f64(v13, v16), v13, v16), v29[0]);
  std::valarray<double>::valarray(&v25, v29, 4uLL);
  v17 = v25;
  v18 = v26;
  v19 = v27;
  *v27 = *v25;
  v19[1] = *(v17 + 1);
  v19[2] = *(v17 + 2);
  v19[3] = *(v17 + 3);
  if (v18 != v17)
  {
    v26 = &v18[(v17 - v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  }

  operator delete(v17);
  if (v28 != v19)
  {
    v20 = v28 - v19;
    v21 = *datum;
    if (v20 <= 1)
    {
      v20 = 1;
    }

    v22 = 8 * *(datum + 2);
    v23 = v19;
    do
    {
      v24 = *v23++;
      *v21 = v24;
      v21 = (v21 + v22);
      --v20;
    }

    while (v20);
  }

  operator delete(v19);
}

- (void)fillRectForestDatum:(void *)datum asDimType:(unint64_t)type withCRTextDetectorQuad:(const void *)quad andInputSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  __p = 0;
  v19 = 0;
  if (type == 2)
  {
    std::valarray<double>::resize(&__p, 8uLL);
    v10 = __p;
  }

  else
  {
    if (type == 6)
    {
      std::valarray<double>::resize(&__p, 9uLL);
      v10 = __p;
    }

    else
    {
      if (type != 8)
      {
        return;
      }

      std::valarray<double>::resize(&__p, 0xEuLL);
      v10 = __p;
      LOBYTE(v11) = *(quad + 136);
      *(__p + 9) = *(quad + 13);
      v10[10] = v11;
      v10[11] = *(quad + 15);
      v12 = *(quad + 35);
      v10[12] = *(quad + 16);
      v10[13] = v12;
    }

    v10[8] = *(quad + 14);
  }

  *v10 = *quad / width;
  v10[1] = *(quad + 1) / height;
  v10[2] = *(quad + 2) / width;
  v10[3] = *(quad + 3) / height;
  v10[4] = *(quad + 4) / width;
  v10[5] = *(quad + 5) / height;
  v10[6] = *(quad + 6) / width;
  v10[7] = *(quad + 7) / height;
  if (v19 != v10)
  {
    v13 = v19 - v10;
    v14 = *datum;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v15 = 8 * *(datum + 2);
    v16 = v10;
    do
    {
      v17 = *v16++;
      *v14 = v17;
      v14 = (v14 + v15);
      --v13;
    }

    while (v13);
  }

  operator delete(v10);
}

- (id).cxx_construct
{
  *&self->_preNMSForests.__start_ = 0u;
  *&self->_preNMSForests.__map_.__end_ = 0u;
  *&self->_preNMSForests.__map_.__first_ = 0u;
  nms::PyramidNMS<unsigned short,double,unsigned char>::PyramidNMS(&self->_pyrNMS._vptr$PyramidNMS);
  *&self->_postNMSForests.__map_.__end_ = 0u;
  *&self->_postNMSForests.__start_ = 0u;
  *&self->_postNMSForests.__map_.__first_ = 0u;
  return self;
}

@end