@interface VisionCoreSparseOpticalFlowSession
- (VisionCoreSparseOpticalFlowSession)init;
- (__n128)setSceneHomography:(__n128)homography;
- (id).cxx_construct;
- (int)findClosestQuadIndex:(int)index candidateIndices:()vector<int;
- (unint64_t)updateKeypointsWithOpticalFlowResultsSourceBuffer:(VisionCoreSparseOpticalFlowSession *)self destBuffer:(SEL)buffer matchBuffer:matchCount:;
- (void)dealloc;
- (void)resetGroupingMemory;
- (void)saveCurrentMatchingToMemoryMatchCounts:(vector<unsigned)long;
- (void)setAllDstPoints:(void *)points;
- (void)setAllSrcPoints:(void *)points;
- (void)setGroupingMemoryDstPoints:(void *)points;
- (void)setGroupingMemoryQuadPointsCounts:(void *)counts;
- (void)setGroupingMemorySrcPoints:(void *)points;
- (void)setQuadPointCounts:(void *)counts;
- (void)updateMemoryKeypointsWithOpticalFlowResultsSourceBuffer:(VisionCoreSparseOpticalFlowSession *)self destBuffer:(SEL)buffer matchBuffer:start:;
- (void)updateReferenceTexture:(id)texture frame:(__CVBuffer *)frame;
@end

@implementation VisionCoreSparseOpticalFlowSession

- (id).cxx_construct
{
  *(self + 216) = 0u;
  *(self + 200) = 0u;
  *(self + 184) = 0u;
  *(self + 168) = 0u;
  *(self + 152) = 0u;
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  return self;
}

- (void)setGroupingMemoryDstPoints:(void *)points
{
  anon_d0 = self->_anon_d0;
  if (anon_d0 != points)
  {
    std::vector<half>::__assign_with_size[abi:ne200100]<half *,half *>(anon_d0, *points, *(points + 1), (*(points + 1) - *points) >> 1);
  }
}

- (void)setGroupingMemoryQuadPointsCounts:(void *)counts
{
  p_groupingMemoryQuadPointsCounts = &self->_groupingMemoryQuadPointsCounts;
  if (p_groupingMemoryQuadPointsCounts != counts)
  {
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(p_groupingMemoryQuadPointsCounts, *counts, *(counts + 1), (*(counts + 1) - *counts) >> 3);
  }
}

- (void)setGroupingMemorySrcPoints:(void *)points
{
  anon_a0 = self->_anon_a0;
  if (anon_a0 != points)
  {
    std::vector<half>::__assign_with_size[abi:ne200100]<half *,half *>(anon_a0, *points, *(points + 1), (*(points + 1) - *points) >> 1);
  }
}

- (void)setAllDstPoints:(void *)points
{
  anon_88 = self->_anon_88;
  if (anon_88 != points)
  {
    std::vector<half>::__assign_with_size[abi:ne200100]<half *,half *>(anon_88, *points, *(points + 1), (*(points + 1) - *points) >> 1);
  }
}

- (void)setQuadPointCounts:(void *)counts
{
  p_quadPointCounts = &self->_quadPointCounts;
  if (p_quadPointCounts != counts)
  {
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(p_quadPointCounts, *counts, *(counts + 1), (*(counts + 1) - *counts) >> 3);
  }
}

- (void)setAllSrcPoints:(void *)points
{
  anon_58 = self->_anon_58;
  if (anon_58 != points)
  {
    std::vector<half>::__assign_with_size[abi:ne200100]<half *,half *>(anon_58, *points, *(points + 1), (*(points + 1) - *points) >> 1);
  }
}

- (__n128)setSceneHomography:(__n128)homography
{
  result[15] = a2;
  result[16] = homography;
  result[17] = a4;
  return result;
}

- (void)updateMemoryKeypointsWithOpticalFlowResultsSourceBuffer:(VisionCoreSparseOpticalFlowSession *)self destBuffer:(SEL)buffer matchBuffer:start:
{
  anon_a0 = self->_anon_a0;
  v7 = *self->_anon_a0;
  *&self->_anon_d0[8] = *self->_anon_d0;
  p_groupingMemoryQuadPointsCounts = &self->_groupingMemoryQuadPointsCounts;
  begin = self->_groupingMemoryQuadPointsCounts.__begin_;
  end = self->_groupingMemoryQuadPointsCounts.__end_;
  if (end == begin)
  {
    v54 = 0;
    v50 = 0uLL;
  }

  else
  {
    v52 = self->_anon_a0;
    v53 = &self->_groupingMemoryQuadPointsCounts;
    v54 = 0;
    v11 = 0;
    v12 = (v3 + v4);
    v57 = 0u;
    v13 = (v2 + 4 * v4);
    do
    {
      if (v11 >= end - begin)
      {
LABEL_59:
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      v14 = 0;
      v15 = 0;
      v55 = v11;
      while (v14 < begin[v11])
      {
        if (*v12 == 1)
        {
          v56 = v15;
          v16 = v7[1];
          v17 = *v13;
          v18 = v13[1];
          v19 = (*(&v57 + 1) - v57) >> 1;
          if (v19 <= -2)
          {
            goto LABEL_60;
          }

          if (-v57 <= (v19 + 1))
          {
            v20 = v19 + 1;
          }

          else
          {
            v20 = -v57;
          }

          if (-v57 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v21 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<half>>(v21);
          }

          v22 = (2 * v19);
          *v22 = *v7;
          v23 = (v22 + 1);
          memcpy(0, v57, *(&v57 + 1) - v57);
          if (v57)
          {
            operator delete(v57);
          }

          v24 = v23;
          v25 = v23 >> 1;
          if (v25 < -1)
          {
LABEL_60:
            std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
          }

          if (v25 != -1)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<half>>(v25 + 1);
          }

          MEMORY[0xFFFFFFFFFFFFFFFE] = v16;
          memcpy(0, 0, v24);
          v11 = v55;
          v57 = 0u;
          v26 = *&self->_anon_d0[8];
          v27 = *&self->_anon_d0[16];
          if (v26 >= v27)
          {
            v29 = *self->_anon_d0;
            v30 = v26 - v29;
            v31 = (v26 - v29) >> 1;
            if (v31 < -1)
            {
              goto LABEL_60;
            }

            if (v27 - v29 <= v31 + 1)
            {
              v32 = v31 + 1;
            }

            else
            {
              v32 = v27 - v29;
            }

            if (v27 - v29 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v33 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v32;
            }

            if (v33)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<half>>(v33);
            }

            v34 = v31;
            v35 = (2 * v31);
            v27 = 0;
            v36 = &v35[-v34];
            *v35 = v17;
            v28 = (v35 + 1);
            memcpy(v36, v29, v30);
            v37 = *self->_anon_d0;
            *self->_anon_d0 = v36;
            *&self->_anon_d0[8] = v28;
            *&self->_anon_d0[16] = 0;
            if (v37)
            {
              operator delete(v37);
              v27 = *&self->_anon_d0[16];
            }
          }

          else
          {
            *v26 = v17;
            v28 = v26 + 2;
          }

          *&self->_anon_d0[8] = v28;
          if (v28 >= v27)
          {
            v39 = *self->_anon_d0;
            v40 = v28 - v39;
            v41 = (v28 - v39) >> 1;
            if (v41 < -1)
            {
              goto LABEL_60;
            }

            if (v27 - v39 <= v41 + 1)
            {
              v42 = v41 + 1;
            }

            else
            {
              v42 = v27 - v39;
            }

            if (v27 - v39 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v43 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v43 = v42;
            }

            if (v43)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<half>>(v43);
            }

            v44 = v41;
            v45 = (2 * v41);
            v46 = &v45[-v44];
            *v45 = v18;
            v38 = v45 + 1;
            memcpy(v46, v39, v40);
            v47 = *self->_anon_d0;
            *self->_anon_d0 = v46;
            *&self->_anon_d0[8] = v38;
            *&self->_anon_d0[16] = 0;
            if (v47)
            {
              operator delete(v47);
            }
          }

          else
          {
            *v28 = v18;
            v38 = v28 + 2;
          }

          *&self->_anon_d0[8] = v38;
          v15 = v56 + 1;
          begin = self->_groupingMemoryQuadPointsCounts.__begin_;
          end = self->_groupingMemoryQuadPointsCounts.__end_;
        }

        ++v14;
        v7 += 2;
        v13 += 2;
        ++v12;
        if (v11 >= end - begin)
        {
          goto LABEL_59;
        }
      }

      v48 = v54;
      v49 = v54 >> 3;
      if (((v54 >> 3) + 1) >> 61)
      {
        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      if (v54 >> 3 != -1)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>((v54 >> 3) + 1);
      }

      *(8 * v49) = v15;
      v54 = 8 * v49 + 8;
      memcpy(0, 0, v48);
      ++v11;
      begin = self->_groupingMemoryQuadPointsCounts.__begin_;
      end = self->_groupingMemoryQuadPointsCounts.__end_;
    }

    while (v11 < end - begin);
    anon_a0 = v52;
    p_groupingMemoryQuadPointsCounts = v53;
    v7 = *v52;
    v50 = v57;
  }

  *&self->_anon_a0[8] = v7;
  self->_groupingMemoryQuadPointsCounts.__end_ = begin;
  v51 = v50;
  std::__copy_impl::operator()[abi:ne200100]<half *,half *,std::back_insert_iterator<std::vector<half>>>(v50, *(&v50 + 1), anon_a0);
  std::__copy_impl::operator()[abi:ne200100]<unsigned long *,unsigned long *,std::back_insert_iterator<std::vector<unsigned long>>>(0, v54, p_groupingMemoryQuadPointsCounts);
  if (v51)
  {
    operator delete(v51);
  }
}

- (unint64_t)updateKeypointsWithOpticalFlowResultsSourceBuffer:(VisionCoreSparseOpticalFlowSession *)self destBuffer:(SEL)buffer matchBuffer:matchCount:
{
  v6 = v5;
  begin = self->_quadPointCounts.__begin_;
  *&self->_anon_58[8] = *self->_anon_58;
  *&self->_anon_88[8] = *self->_anon_88;
  p_quadPointCounts = &self->_quadPointCounts;
  end = self->_quadPointCounts.__end_;
  if (end == begin)
  {
    v13 = 0;
  }

  else
  {
    v10 = v4;
    v11 = v3;
    v12 = v2;
    v13 = 0;
    v14 = 0;
    v77 = v5;
    do
    {
      if (v14 >= end - begin)
      {
LABEL_78:
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      v15 = 0;
      v16 = 0;
      while (v15 < begin[v14])
      {
        if (*v10 == 1)
        {
          v78 = v16;
          v17 = *v12;
          v18 = v12[1];
          v19 = *v11;
          v20 = v11[1];
          v22 = *&self->_anon_58[8];
          v21 = *&self->_anon_58[16];
          if (v22 >= v21)
          {
            v24 = *self->_anon_58;
            v25 = v22 - v24;
            v26 = (v22 - v24) >> 1;
            if (v26 <= -2)
            {
              goto LABEL_79;
            }

            if (v21 - v24 <= v26 + 1)
            {
              v27 = v26 + 1;
            }

            else
            {
              v27 = v21 - v24;
            }

            if (v21 - v24 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v28 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v27;
            }

            if (v28)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<half>>(v28);
            }

            v29 = v26;
            v30 = (2 * v26);
            v21 = 0;
            v31 = &v30[-v29];
            *v30 = v17;
            v23 = (v30 + 1);
            memcpy(v31, v24, v25);
            v32 = *self->_anon_58;
            *self->_anon_58 = v31;
            *&self->_anon_58[8] = v23;
            *&self->_anon_58[16] = 0;
            if (v32)
            {
              operator delete(v32);
              v21 = *&self->_anon_58[16];
            }
          }

          else
          {
            *v22 = v17;
            v23 = v22 + 2;
          }

          *&self->_anon_58[8] = v23;
          if (v23 >= v21)
          {
            v34 = *self->_anon_58;
            v35 = v23 - v34;
            v36 = (v23 - v34) >> 1;
            if (v36 <= -2)
            {
              goto LABEL_79;
            }

            if (v21 - v34 <= v36 + 1)
            {
              v37 = v36 + 1;
            }

            else
            {
              v37 = v21 - v34;
            }

            if (v21 - v34 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v38 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v38 = v37;
            }

            if (v38)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<half>>(v38);
            }

            v39 = v36;
            v40 = (2 * v36);
            v41 = &v40[-v39];
            *v40 = v18;
            v33 = v40 + 1;
            memcpy(v41, v34, v35);
            v42 = *self->_anon_58;
            *self->_anon_58 = v41;
            *&self->_anon_58[8] = v33;
            *&self->_anon_58[16] = 0;
            if (v42)
            {
              operator delete(v42);
            }
          }

          else
          {
            *v23 = v18;
            v33 = v23 + 2;
          }

          *&self->_anon_58[8] = v33;
          v44 = *&self->_anon_88[8];
          v43 = *&self->_anon_88[16];
          if (v44 >= v43)
          {
            v46 = *self->_anon_88;
            v47 = v44 - v46;
            v48 = (v44 - v46) >> 1;
            if (v48 <= -2)
            {
              goto LABEL_79;
            }

            if (v43 - v46 <= v48 + 1)
            {
              v49 = v48 + 1;
            }

            else
            {
              v49 = v43 - v46;
            }

            if (v43 - v46 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v50 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v50 = v49;
            }

            if (v50)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<half>>(v50);
            }

            v51 = v48;
            v52 = (2 * v48);
            v43 = 0;
            v53 = &v52[-v51];
            *v52 = v19;
            v45 = (v52 + 1);
            memcpy(v53, v46, v47);
            v54 = *self->_anon_88;
            *self->_anon_88 = v53;
            *&self->_anon_88[8] = v45;
            *&self->_anon_88[16] = 0;
            if (v54)
            {
              operator delete(v54);
              v43 = *&self->_anon_88[16];
            }
          }

          else
          {
            *v44 = v19;
            v45 = v44 + 2;
          }

          *&self->_anon_88[8] = v45;
          if (v45 >= v43)
          {
            v56 = *self->_anon_88;
            v57 = v45 - v56;
            v58 = (v45 - v56) >> 1;
            if (v58 <= -2)
            {
LABEL_79:
              std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
            }

            if (v43 - v56 <= v58 + 1)
            {
              v59 = v58 + 1;
            }

            else
            {
              v59 = v43 - v56;
            }

            if (v43 - v56 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v60 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v60 = v59;
            }

            if (v60)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<half>>(v60);
            }

            v61 = v58;
            v62 = (2 * v58);
            v63 = &v62[-v61];
            *v62 = v20;
            v55 = v62 + 1;
            memcpy(v63, v56, v57);
            v64 = *self->_anon_88;
            *self->_anon_88 = v63;
            *&self->_anon_88[8] = v55;
            *&self->_anon_88[16] = 0;
            if (v64)
            {
              operator delete(v64);
            }
          }

          else
          {
            *v45 = v20;
            v55 = v45 + 2;
          }

          *&self->_anon_88[8] = v55;
          v16 = v78 + 1;
          begin = self->_quadPointCounts.__begin_;
          end = self->_quadPointCounts.__end_;
        }

        ++v15;
        v12 += 2;
        v11 += 2;
        ++v10;
        ++v13;
        if (v14 >= end - begin)
        {
          goto LABEL_78;
        }
      }

      v6 = v77;
      v66 = v77[1];
      v65 = v77[2];
      if (v66 >= v65)
      {
        v68 = *v77;
        v69 = v66 - *v77;
        v70 = (v69 >> 3) + 1;
        if (v70 >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v71 = v65 - v68;
        if (v71 >> 2 > v70)
        {
          v70 = v71 >> 2;
        }

        if (v71 >= 0x7FFFFFFFFFFFFFF8)
        {
          v72 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v72 = v70;
        }

        if (v72)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v72);
        }

        v73 = (8 * (v69 >> 3));
        *v73 = v16;
        v67 = v73 + 1;
        memcpy(0, v68, v69);
        v74 = *v77;
        *v77 = 0;
        v77[1] = v67;
        v77[2] = 0;
        if (v74)
        {
          operator delete(v74);
        }
      }

      else
      {
        *v66 = v16;
        v67 = v66 + 1;
      }

      v77[1] = v67;
      ++v14;
      begin = self->_quadPointCounts.__begin_;
      end = self->_quadPointCounts.__end_;
    }

    while (v14 < end - begin);
  }

  self->_quadPointCounts.__end_ = begin;
  std::__copy_impl::operator()[abi:ne200100]<unsigned long *,unsigned long *,std::back_insert_iterator<std::vector<unsigned long>>>(*v6, v6[1], p_quadPointCounts);
  return v13;
}

- (int)findClosestQuadIndex:(int)index candidateIndices:()vector<int
{
  var0 = a4->var0;
  if (a4->var1 == a4->var0)
  {
    return -1;
  }

  v8 = 0;
  indexCopy = index;
  v10 = -1;
  v11 = 1.79769313e308;
  do
  {
    if (var0[v8] != index)
    {
      v12 = [(NSMutableArray *)self->_trackedQuads objectAtIndexedSubscript:?];
      v13 = [(NSMutableArray *)self->_trackedQuads objectAtIndexedSubscript:indexCopy];
      [v12 getEmptyDistanceBetweenCenters:v13];
      v15 = v14;

      var0 = a4->var0;
      if (v15 < v11)
      {
        v10 = var0[v8];
        v11 = v15;
        if (v15 == 0.0)
        {
          break;
        }
      }
    }

    ++v8;
  }

  while (v8 < a4->var1 - var0);
  return v10;
}

- (void)saveCurrentMatchingToMemoryMatchCounts:(vector<unsigned)long
{
  anon_a0 = self->_anon_a0;
  *&self->_anon_a0[8] = *self->_anon_a0;
  anon_d0 = self->_anon_d0;
  *&self->_anon_d0[8] = *self->_anon_d0;
  begin = self->_groupingMemoryQuadPointsCounts.__begin_;
  self->_groupingMemoryQuadPointsCounts.__end_ = begin;
  end = a3->__end_;
  v8 = end - a3->__begin_;
  if (v8 >> 3 >= 1)
  {
    v9 = self->_groupingMemoryQuadPointsCounts.__cap_ - begin;
    if (v9 < v8)
    {
      v10 = v9 >> 2;
      if (v9 >> 2 <= (v8 >> 3))
      {
        v10 = v8 >> 3;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v11);
    }

    if (a3->__begin_ != end)
    {
      memmove(begin, a3->__begin_, end - a3->__begin_);
    }

    self->_groupingMemoryQuadPointsCounts.__end_ = (begin + v8);
  }

  std::vector<half>::__insert_with_size[abi:ne200100]<std::__wrap_iter<half *>,std::__wrap_iter<half *>>(anon_a0, *&self->_anon_a0[8], *self->_anon_58, *&self->_anon_58[8], (*&self->_anon_58[8] - *self->_anon_58) >> 1);
  v12 = *&self->_anon_d0[8];
  v13 = *self->_anon_88;
  v14 = *&self->_anon_88[8];

  std::vector<half>::__insert_with_size[abi:ne200100]<std::__wrap_iter<half *>,std::__wrap_iter<half *>>(anon_d0, v12, v13, v14, (v14 - v13) >> 1);
}

- (void)resetGroupingMemory
{
  v14 = *MEMORY[0x1E69E9840];
  *&self->_anon_d0[8] = *self->_anon_d0;
  *&self->_anon_a0[8] = *self->_anon_a0;
  [(NSMutableArray *)self->_groupingMemoryQuadIDs removeAllObjects];
  self->_groupingMemoryQuadPointsCounts.__end_ = self->_groupingMemoryQuadPointsCounts.__begin_;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_trackedQuads;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        groupingMemoryQuadIDs = self->_groupingMemoryQuadIDs;
        uUID = [*(*(&v9 + 1) + 8 * v6) UUID];
        [(NSMutableArray *)groupingMemoryQuadIDs addObject:uUID];

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)updateReferenceTexture:(id)texture frame:(__CVBuffer *)frame
{
  textureCopy = texture;
  CVBufferRelease(self->_prevFrame);
  objc_storeStrong(&self->_texture, texture);
  self->_prevFrame = CVBufferRetain(frame);
}

- (void)dealloc
{
  CVBufferRelease(self->_prevFrame);
  self->_prevFrame = 0;
  v3.receiver = self;
  v3.super_class = VisionCoreSparseOpticalFlowSession;
  [(VisionCoreSparseOpticalFlowSession *)&v3 dealloc];
}

- (VisionCoreSparseOpticalFlowSession)init
{
  v20.receiver = self;
  v20.super_class = VisionCoreSparseOpticalFlowSession;
  v2 = [(VisionCoreSparseOpticalFlowSession *)&v20 init];
  v3 = MEMORY[0x1E69E9B10];
  v4 = *(MEMORY[0x1E69E9B10] + 16);
  *&v2[1].super.isa = *MEMORY[0x1E69E9B10];
  *&v2[1]._texture = v4;
  *&v2[1]._trackedQuads = *(v3 + 32);
  v2->_frameCountSinceLastGrouping = 0;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  groupingMemoryQuadIDs = v2->_groupingMemoryQuadIDs;
  v2->_groupingMemoryQuadIDs = v5;

  lktSparseGPUContext = v2->_lktSparseGPUContext;
  v2->_lktSparseGPUContext = 0;

  v19 = 0;
  v8 = [VisionCoreMetalContext metalContextAndReturnError:&v19];
  v9 = v19;
  mtlContext = v2->_mtlContext;
  v2->_mtlContext = v8;

  if (v9 || !v2->_mtlContext)
  {
    VisionCoreValidatedLog(4, @"MTL Context creation failed with error %@", v11, v12, v13, v14, v15, v16, v9);

    v17 = 0;
  }

  else
  {
    v17 = v2;
  }

  return v17;
}

@end