void _HUDGPUTimeTrackerCommandBufferSnapshot(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[2];
  *(a2 + 16) = a1[1];
  *(a2 + 32) = v4;
  *a2 = v3;
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  *(a2 + 96) = *(a1 + 12);
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 48) = v5;
  if (a2 != a1)
  {
    std::vector<HUDGPUTimeTrackerEncoder>::__assign_with_size[abi:ne200100]<HUDGPUTimeTrackerEncoder*,HUDGPUTimeTrackerEncoder*>((a2 + 144), *(a1 + 18), *(a1 + 19), 0x6F96F96F96F96F97 * ((*(a1 + 19) - *(a1 + 18)) >> 3));
    *(a2 + 136) = *(a1 + 34);
    v10 = *(a1 + 15);

    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,unsigned long>,void *> *>>((a2 + 104), v10, 0);
  }
}

int64x2_t _HUDCompilerStatisticsAdd(HUDCompilerStatistics *a1, HUDCompilerStatistics *a2)
{
  v2 = *&a1->numLibrariesFromSource;
  *&a1->numDynamicLibraries = vaddq_s64(*&a1->numDynamicLibraries, *&a2->numDynamicLibraries);
  *&a1->numLibrariesFromSource = vaddq_s64(v2, *&a2->numLibrariesFromSource);
  *&a1->numComputePipelines = vaddq_s64(*&a1->numComputePipelines, *&a2->numComputePipelines);
  *&a1->totalCachedRequests = vaddq_s64(*&a1->totalCachedRequests, *&a2->totalCachedRequests);
  *&a1->totalSyncCompileTimeFragment = vaddq_s64(*&a1->totalSyncCompileTimeFragment, *&a2->totalSyncCompileTimeFragment);
  result = vaddq_s64(*&a1->totalSyncCompileTimeMesh, *&a2->totalSyncCompileTimeMesh);
  *&a1->totalSyncCompileTimeMesh = result;
  a1->totalSyncCompileTimeCompute += a2->totalSyncCompileTimeCompute;
  return result;
}

void _HUDCompilerStatisticsParse(HUDCompilerStatistics *a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  HUDCompilerStatisticsInit(v42);
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = v42;
  }

  v11 = [v7 objectForKeyedSubscript:{HUD_MTLCompileTimeStatisticsKeyDynamicLibraries[0], HUDCompilerStatisticsInit(a4)}];
  objc_opt_class();
  if (((v11 != 0) & objc_opt_isKindOfClass()) == 1)
  {
    v12 = [v11 count];
    numDynamicLibraries = v10->numDynamicLibraries;
    if (v12 <= v10->numDynamicLibraries)
    {
      v15 = 0;
    }

    else
    {
      v14 = [v11 count];
      numDynamicLibraries = v10->numDynamicLibraries;
      v15 = v14 - v10->numDynamicLibraries;
    }

    *a4 = v15;
    _HUDCompileStatisticsParseArray(v11, @"Dylib", a4, v15, numDynamicLibraries, v8);
  }

  v16 = [v7 objectForKeyedSubscript:HUD_MTLCompileTimeStatisticsKeyBinaryFunctions[0]];
  objc_opt_class();
  if (((v16 != 0) & objc_opt_isKindOfClass()) == 1)
  {
    v17 = [v16 count];
    if (a1)
    {
      v18 = a1;
    }

    else
    {
      v18 = v42;
    }

    numBinaryFunctions = v18->numBinaryFunctions;
    if (v17 <= numBinaryFunctions)
    {
      v21 = 0;
    }

    else
    {
      v20 = [v16 count];
      numBinaryFunctions = v18->numBinaryFunctions;
      v21 = v20 - numBinaryFunctions;
    }

    *(a4 + 8) = v21;
    _HUDCompileStatisticsParseArray(v16, @"BinaryFunction", a4, v21, numBinaryFunctions, v8);
  }

  v22 = [v7 objectForKeyedSubscript:HUD_MTLCompileTimeStatisticsKeyLibrariesFromSource[0]];
  objc_opt_class();
  if (((v22 != 0) & objc_opt_isKindOfClass()) == 1)
  {
    v23 = [v22 count];
    if (a1)
    {
      v24 = a1;
    }

    else
    {
      v24 = v42;
    }

    numLibrariesFromSource = v24->numLibrariesFromSource;
    if (v23 <= numLibrariesFromSource)
    {
      v27 = 0;
    }

    else
    {
      v26 = [v22 count];
      numLibrariesFromSource = v24->numLibrariesFromSource;
      v27 = v26 - numLibrariesFromSource;
    }

    *(a4 + 16) = v27;
    _HUDCompileStatisticsParseArray(v22, @"LibraryFromSource", a4, v27, numLibrariesFromSource, v8);
  }

  v28 = [v7 objectForKeyedSubscript:HUD_MTLCompileTimeStatisticsKeyPipelines[0]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & (v28 != 0)) == 1)
  {
    v41 = v9;
    v29 = [v28 objectForKeyedSubscript:HUD_MTLCompileTimeStatisticsKeyPipelinesRender[0]];
    v30 = [v28 objectForKeyedSubscript:HUD_MTLCompileTimeStatisticsKeyPipelinesCompute[0]];
    objc_opt_class();
    if (((v29 != 0) & objc_opt_isKindOfClass()) == 1)
    {
      v31 = [v29 count];
      if (a1)
      {
        v32 = a1;
      }

      else
      {
        v32 = v42;
      }

      numRenderPipelines = v32->numRenderPipelines;
      if (v31 <= numRenderPipelines)
      {
        v35 = 0;
      }

      else
      {
        v34 = [v29 count];
        numRenderPipelines = v32->numRenderPipelines;
        v35 = v34 - numRenderPipelines;
      }

      *(a4 + 24) = v35;
      _HUDCompileStatisticsParseRenderArray(v29, a4, v35, numRenderPipelines, v8);
    }

    objc_opt_class();
    if (((v30 != 0) & objc_opt_isKindOfClass()) == 1)
    {
      v36 = [v30 count];
      if (a1)
      {
        v37 = a1;
      }

      else
      {
        v37 = v42;
      }

      numComputePipelines = v37->numComputePipelines;
      if (v36 <= numComputePipelines)
      {
        v40 = 0;
      }

      else
      {
        v39 = [v30 count];
        numComputePipelines = v37->numComputePipelines;
        v40 = v39 - numComputePipelines;
      }

      *(a4 + 32) = v40;
      _HUDCompileStatisticsParseArray(v30, @"Compute", a4, v40, numComputePipelines, v8);
    }

    v9 = v41;
  }

  _HUDCompilerStatisticsAdd(v10, a4);
  objc_autoreleasePoolPop(v9);
}

void _HUDCompileStatisticsParseArray(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v14 = a1;
  v11 = a2;
  for (i = a6; a4; --a4)
  {
    if (a5 >= [v14 count])
    {
      break;
    }

    v13 = [v14 objectAtIndexedSubscript:a5];
    _HUDCompilerStatisticsParseDict(v13, v11, a3, i);

    ++a5;
  }
}

void _HUDCompileStatisticsParseRenderArray(void *a1, void *a2, uint64_t a3, unint64_t a4, void *a5)
{
  v15 = a1;
  for (i = a5; a3; --a3)
  {
    if (a4 >= [v15 count])
    {
      break;
    }

    v10 = [v15 objectAtIndexedSubscript:a4];
    v11 = [v10 objectForKeyedSubscript:MTLPipelinePerformanceKeyVertexShader];
    a2[10] += _HUDCompilerStatisticsParseDict(v11, @"Vertex", a2, i);

    v12 = [v10 objectForKeyedSubscript:MTLPipelinePerformanceKeyFragmentShader];
    a2[9] += _HUDCompilerStatisticsParseDict(v12, @"Fragment", a2, i);

    v13 = [v10 objectForKeyedSubscript:MTLPipelinePerformanceKeyObjectShader];
    a2[12] += _HUDCompilerStatisticsParseDict(v13, @"Object", a2, i);

    v14 = [v10 objectForKeyedSubscript:MTLPipelinePerformanceKeyMeshShader];
    a2[11] += _HUDCompilerStatisticsParseDict(v14, @"Mesh", a2, i);

    ++a4;
  }
}

void _HUDGPUTimeTrackerGetMetricDescriptors(void)
{
  {
    _HUDGPUTimeTrackerGetMetricDescriptors();
  }
}

uint64_t HUDGPUTimeTrackerGetGlobalInstance()
{
  if (_HUDGPUTimeTrackerGetInstance(void)::onceToken != -1)
  {
    HUDGPUTimeTrackerGetGlobalInstance_cold_1();
  }

  return _HUDGPUTimeTrackerGetInstance(void)::tracker;
}

uint64_t HUDGPUTimeTrackerGetCurrentFrame(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

void HUDGPUTimeTrackerReset(uint64_t a1)
{
  if (a1)
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = __HUDGPUTimeTrackerReset_block_invoke;
    v1[3] = &__block_descriptor_40_e5_v8__0l;
    v1[4] = a1;
    HUDDispatchQueueAsync(v1);
  }
}

void __HUDGPUTimeTrackerReset_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 16756);
  HUDTargetRebindingInsightContextInit(*(a1 + 32) + 67424);
  HUDBarrierInsightContextInit((*(a1 + 32) + 68280));
  HUDBarrierInsightContextInit((*(a1 + 32) + 68304));
  v3 = 59;
  v4 = 472;
  do
  {
    HUDValueHistoryRecordInit(*(a1 + 32) + v4, 0.0, 1000000000.0, 16666700.0);
    v4 += 1128;
    --v3;
  }

  while (v3);
  HUDValueHistoryRecordInit(*(a1 + 32) + 42208, 0.0, 2.16e14, 16666700.0);
  HUDValueHistoryRecordInit(*(a1 + 32) + 65896, 0.0, 2.16e14, 16666700.0);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear((*(a1 + 32) + 136));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear((*(a1 + 32) + 176));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear((*(a1 + 32) + 216));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear((*(a1 + 32) + 256));
  v5 = (*(a1 + 32) + 376);
  v5[3] = 0u;
  v5[4] = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  *v5 = 0u;
  v6 = (*(a1 + 32) + 296);
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;

  os_unfair_lock_unlock(v2 + 16756);
}

unint64_t _HUDGPUTimeTrackerAddLabel(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5)
{
  v8 = a3;
  v9 = v8;
  if (a1 && *(a1 + 26) == 1)
  {
    v17[0] = a5 | (4 * [v8 hash]);
    v10 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 96), v17);
    if (v10)
    {
      ++*(v10 + 10);
      v10[3] = a4;
    }

    else
    {
      v12 = v17[0];
      v13 = v9;
      v17[2] = v17;
      v14 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 96), v17);
      v14[3] = a4;
      v14[4] = v12;
      *(v14 + 10) = 1;
      *(v14 + 11) = a5;
      v15 = v14[6];
      v14[6] = v13;
    }

    v11 = v17[0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL _HUDGPUTimetrackerHeapValueCompare(unint64_t *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2 || (v3 = a2[1]) == 0)
  {
    v2 = *a1;
    v3 = *a2;
  }

  return v2 < v3;
}

double _HUDGPUTimeTrackerPushTopObjectHeap(uint64_t *a1, __int128 *a2)
{
  v6 = *a1;
  v5 = (a1 + 1);
  v7 = v5 + 40 * v6;
  v8 = *a2;
  v9 = a2[1];
  if (v6 > 9)
  {
    *(v7 - 8) = *(a2 + 4);
    *(v7 - 24) = v9;
    *(v7 - 40) = v8;
    v10 = *a1;
  }

  else
  {
    *(v7 + 32) = *(a2 + 4);
    *v7 = v8;
    *(v7 + 16) = v9;
    v10 = *a1 + 1;
    *a1 = v10;
  }

  v12[1] = v2;
  v12[2] = v3;
  v12[0] = _HUDGPUTimetrackerHeapValueCompare;
  return std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HUDGPUTimeTrackerTopObjectHeapValue const&,HUDGPUTimeTrackerTopObjectHeapValue const&),HUDGPUTimeTrackerTopObjectHeapValue*>(v5, v5 + 40 * v10, v12, v10);
}

void *_HUDGPUTimeTrackerGetCommonObjectRecord(uint64_t a1, unint64_t a2)
{
  v10 = a2;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 176), &v10);
  if (v3)
  {
    v4 = v3;
    return v4 + 3;
  }

  bzero(&v9, 0x8D8uLL);
  v8 = v10;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>>((a1 + 176), &v8);
  if (v7)
  {
    v4 = v6;
    HUDValueHistoryRecordInit((v6 + 3), 0.0, 1000000000.0, 16666666.0);
    HUDValueHistoryRecordInit((v4 + 144), 0.0, 1000000000.0, 16666666.0);
    if (v4)
    {
      return v4 + 3;
    }
  }

  return 0;
}

void _HUDGPUTimeTrackerTopObjectAssignCommonObjectRecord(uint64_t a1, unint64_t *a2)
{
  CommonObjectRecord = _HUDGPUTimeTrackerGetCommonObjectRecord(a1, a2[3]);
  if (CommonObjectRecord)
  {
    v4 = CommonObjectRecord;
    HUDValueHistoryRecordAddValue(CommonObjectRecord, *a2);
    v5 = a2[1];
    if (v5)
    {
      HUDValueHistoryRecordAddValue((v4 + 141), v5);
    }

    v4[282] = a2[4];
  }
}

void _HUDGPUTimeTrackerTopObjectHeapAssign(uint64_t a1, unint64_t *a2, void *a3, uint64_t a4)
{
  bzero(a3, 8 * a4);
  v7 = 126 - 2 * __clz(*a2);
  if (*a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,false>((a2 + 1), &a2[5 * *a2 + 1], v8, 1);
  if (*a2)
  {
    v9 = 0;
    v10 = (a2 + 4);
    do
    {
      _HUDGPUTimeTrackerTopObjectAssignCommonObjectRecord(a1, v10 - 3);
      v11 = *v10;
      v10 += 5;
      *(a3 + v9++) = v11;
    }

    while (v9 < *a2);
  }
}

uint64_t _HUDGPUTimeTrackerPurgeOldLabels(uint64_t result, unint64_t a2)
{
  if (*(result + 120))
  {
    v2 = result;
    v3 = *(result + 112);
    if (v3)
    {
      do
      {
        while (1)
        {
          v5 = v3[3];
          v7 = a2 >= v5;
          v6 = a2 - v5;
          v7 = v6 != 0 && v7 && v6 >= 0xA;
          if (v7)
          {
            break;
          }

          if (*(v3 + 10) >= 0x3Cu)
          {
            result = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v2 + 17, v3 + 2);
          }

          v3 = *v3;
          if (!v3)
          {
            return result;
          }
        }

        v8 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(v2 + 17, v3 + 4);
        if (v8)
        {
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(v2 + 17, v8);
        }

        v9 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(v2 + 22, v3 + 4);
        if (v9)
        {
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(v2 + 22, v9);
        }

        v10 = *v3;
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::remove(v2 + 12, v3, v11);
        result = std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,void *>>>>::~unique_ptr[abi:ne200100](v11);
        v3 = v10;
      }

      while (v10);
    }
  }

  return result;
}

void HUDGPUTimeTrackerEnableEncoderGPUTimeSampling(uint64_t a1, char a2)
{
  if (a1)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = __HUDGPUTimeTrackerEnableEncoderGPUTimeSampling_block_invoke;
    v2[3] = &__block_descriptor_41_e5_v8__0l;
    v3 = a2;
    v2[4] = a1;
    HUDDispatchQueueAsync(v2);
  }
}

void __HUDGPUTimeTrackerEnableEncoderGPUTimeSampling_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) != *(v1 + 26))
  {
    os_unfair_lock_lock((v1 + 67024));
    v3 = *(a1 + 32);
    *(v3 + 26) = *(a1 + 40);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear((v3 + 136));
    if (*(a1 + 40) == 1)
    {
      HUDValueHistoryRecordInit(*(a1 + 32) + 7240, 0.0, 1000000000.0, 16670000.0);
      HUDValueHistoryRecordInit(*(a1 + 32) + 8368, 0.0, 1000000000.0, 16670000.0);
      for (i = 17392; i != 28672; i += 1128)
      {
        HUDValueHistoryRecordInit(*(a1 + 32) + i, 0.0, 1000000000.0, 16670000.0);
      }
    }

    os_unfair_lock_unlock((v1 + 67024));
  }
}

uint64_t HUDGPUTimeTrackerInitGPUTimeSampling(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ((*(a1 + 25) & 1) == 0)
    {
      *(a1 + 27) = [v3 supportsCounterSampling:0];
      if (!*(a1 + 40))
      {
        v5 = [v4 counterSets];
        if ([v5 count])
        {
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = __HUDGPUTimeTrackerInitGPUTimeSampling_block_invoke;
          v13[3] = &__block_descriptor_40_e32_v32__0___MTLCounterSet__8Q16_B24l;
          v13[4] = a1;
          [v5 enumerateObjectsUsingBlock:v13];
        }

        if (*(a1 + 32))
        {
          v6 = objc_opt_new();
          [v6 setSampleCount:4096];
          [v6 setStorageMode:0];
          [v6 setLabel:@"libMTLHud counter sample buffer"];
          [v6 setCounterSet:*(a1 + 32)];
          v12 = 0;
          v7 = [v4 newCounterSampleBufferWithDescriptor:v6 error:&v12];
          v8 = v12;
          v9 = *(a1 + 40);
          *(a1 + 40) = v7;

          if (v8 || !*(a1 + 40))
          {
            *(a1 + 27) = 0;
          }

          *(a1 + 48) = 0;
        }

        else
        {
          *(a1 + 27) = 0;
        }
      }
    }

    if (*(a1 + 27) == 1)
    {
      *(a1 + 25) = 1;
    }

    else
    {
      *(a1 + 25) = 0;
      NSLog(@"[libMTLHud] Failed to enable encoder counter sampling. Device does not support encoder stage counter sample.");
    }

    v10 = *(a1 + 68336);
    *(a1 + 68336) = 0;

    LOBYTE(a1) = *(a1 + 25);
  }

  return a1 & 1;
}

void __HUDGPUTimeTrackerInitGPUTimeSampling_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 name];
  v8 = [v7 isEqualToString:MTLCommonCounterSetTimestamp];

  if (v8)
  {
    objc_storeStrong((*(a1 + 32) + 32), a2);
    *a4 = 1;
  }
}

uint64_t HUDGPUTimeTrackerCanEnableGPUTimeSampling(uint64_t a1)
{
  if (a1 && *(a1 + 25) == 1)
  {
    v1 = *(a1 + 27);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void HUDGPUTimeTrackerCommandBufferCreate(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v19[0] = [v3 globalTraceObjectID];
    os_unfair_lock_lock(a1 + 16756);
    if (!std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(&a1[14]._os_unfair_lock_opaque, v19))
    {
      v6 = v19[0];
      v7 = *&a1->_os_unfair_lock_opaque;
      v8 = v7;
      v9 = HUDCurrentTimeInNs();
      v10 = 0u;
      memset(v11, 0, sizeof(v11));
      v12 = 0u;
      memset(v13, 0, sizeof(v13));
      v14 = 1065353216;
      *__p = 0u;
      v16 = 0u;
      memset(v17, 0, sizeof(v17));
      v18 = 1065353216;
      v19[2] = v19;
      v5 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&a1[14]._os_unfair_lock_opaque, v19);
      HUDGPUTimeTrackerCommandBuffer::operator=((v5 + 3), &v6);
      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v17);
      objc_destroyWeak(&v16 + 1);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v13);
    }

    os_unfair_lock_unlock(a1 + 16756);
  }
}

void sub_2F3C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));

  _Unwind_Resume(a1);
}

uint64_t HUDGPUTimeTrackerCommandBuffer::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 48) = v6;
  if (a1 == a2)
  {
    WeakRetained = objc_loadWeakRetained(a2 + 21);
    objc_storeWeak((a1 + 168), WeakRetained);
  }

  else
  {
    *(a1 + 136) = *(a2 + 34);
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,unsigned long>,void *> *>>((a1 + 104), *(a2 + 15), 0);
    std::vector<HUDGPUTimeTrackerEncoder>::__assign_with_size[abi:ne200100]<HUDGPUTimeTrackerEncoder*,HUDGPUTimeTrackerEncoder*>((a1 + 144), *(a2 + 18), *(a2 + 19), 0x6F96F96F96F96F97 * ((*(a2 + 19) - *(a2 + 18)) >> 3));
    v9 = objc_loadWeakRetained(a2 + 21);
    objc_storeWeak((a1 + 168), v9);

    *(a1 + 208) = *(a2 + 52);
    std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,void *> *>>((a1 + 176), *(a2 + 24), 0);
  }

  return a1;
}

void HUDGPUTimeTrackerCommandBuffer::~HUDGPUTimeTrackerCommandBuffer(id *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table((this + 22));
  objc_destroyWeak(this + 21);
  v2 = this[18];
  if (v2)
  {
    this[19] = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table((this + 13));
}

uint64_t _HUDTimeRangeCompare(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

unint64_t _HUDGPUTimeTrackerPruneOldFramesUnlocked(unint64_t *a1)
{
  result = HUDCurrentTimeInNs();
  v3 = a1[9];
  if (v3)
  {
    v4 = result;
    do
    {
      while (1)
      {
        if (!*(v3 + 100))
        {
          v5 = *(v3 + 48);
          if (v5 < 4)
          {
            break;
          }

          v6 = *(v3 + 56);
          v7 = v6 && v4 > v6;
          if (v7 && v4 - v6 > 0x3B9ACA00)
          {
            break;
          }

          v10 = *a1 >= v5;
          v9 = *a1 - v5;
          v10 = v9 != 0 && v10 && v9 >= 6;
          if (v10)
          {
            break;
          }
        }

        v3 = *v3;
        if (!v3)
        {
          return result;
        }
      }

      result = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::erase(a1 + 7, v3);
      v3 = result;
    }

    while (result);
  }

  return result;
}

void _HUDGPUTimeTrackerWrapupFrameForPresentedDrawable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x4812000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = &unk_5D621;
  memset(v39, 0, sizeof(v39));
  v25 = 0;
  v26 = &v25;
  v27 = 0x5812000000;
  v28 = __Block_byref_object_copy__420;
  v29 = __Block_byref_object_dispose__421;
  v30 = &unk_5D621;
  memset(v31, 0, sizeof(v31));
  v32 = 1065353216;
  std::vector<HUDGPUTimeTrackerCommandBuffer>::reserve(v39, 0xAuLL);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  os_unfair_lock_lock((a1 + 67024));
  for (i = *(a1 + 72); i; i = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::erase((a1 + 56), i))
  {
    while (1)
    {
      if (*(i + 100))
      {
        v7 = *(i + 216);
        if (v7)
        {
          while (1)
          {
            while (*(v7 + 40) > v22[3])
            {
LABEL_9:
              v7 = *v7;
              if (!v7)
              {
                goto LABEL_16;
              }
            }

            if (!*(v7 + 80))
            {
              *(v7 + 40) = *a1;
              goto LABEL_9;
            }

            ++*(v18 + 6);
            *(v14 + 6) -= 1762037865 * ((*(v7 + 176) - *(v7 + 168)) >> 3);
            std::vector<HUDGPUTimeTrackerCommandBuffer>::push_back[abi:ne200100](v34 + 6, (v7 + 24));
            v7 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::erase((i + 200), v7);
            if (!v7)
            {
              goto LABEL_16;
            }
          }
        }

        goto LABEL_16;
      }

      if (*(i + 40) <= v22[3])
      {
        break;
      }

LABEL_16:
      i = *i;
      if (!i)
      {
        goto LABEL_17;
      }
    }

    if (!*(i + 80))
    {
      *(i + 40) = *a1;
      goto LABEL_16;
    }

    ++*(v18 + 6);
    *(v14 + 6) -= 1762037865 * ((*(i + 176) - *(i + 168)) >> 3);
    std::vector<HUDGPUTimeTrackerCommandBuffer>::push_back[abi:ne200100](v34 + 6, (i + 24));
  }

LABEL_17:
  _HUDGPUTimeTrackerPruneOldFramesUnlocked(a1);
  v8 = v26 + 6;
  if (v26 + 6 != (a1 + 136))
  {
    *(v26 + 20) = *(a1 + 168);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v8, *(a1 + 152), 0);
  }

  v9 = v22[3];
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v9, 1) <= 0x1999999999999999uLL)
  {
    _HUDGPUTimeTrackerPurgeOldLabels(a1, v9);
  }

  os_unfair_lock_unlock((a1 + 67024));
  v10 = *(a1 + 16);
  *(a1 + 16) = a3;
  if (v22[3] != 0xFFFFFFFFLL && v34[6] != v34[7])
  {
    v11 = a3 - v10;
    if (v11 <= 0x3B9AC9FF)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = ___Z49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermy_block_invoke;
      v12[3] = &unk_68B50;
      v12[4] = &v21;
      v12[5] = &v33;
      v12[6] = &v17;
      v12[7] = &v13;
      v12[8] = &v25;
      v12[9] = a3;
      v12[10] = a1;
      v12[11] = v11;
      HUDDispatchQueueAsync(v12);
    }
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v31);
  _Block_object_dispose(&v33, 8);
  v25 = v39;
  std::vector<HUDGPUTimeTrackerCommandBuffer>::__destroy_vector::operator()[abi:ne200100](&v25);
}

void sub_3530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v33 + 48);
  _Block_object_dispose((v34 - 152), 8);
  std::vector<HUDGPUTimeTrackerCommandBuffer>::__destroy_vector::operator()[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void *std::vector<HUDGPUTimeTrackerCommandBuffer>::reserve(void *result, unint64_t a2)
{
  if (0x84BDA12F684BDA13 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x12F684BDA12F685)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerCommandBuffer>>(result, a2);
    }

    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_36EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<HUDGPUTimeTrackerCommandBuffer>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<HUDGPUTimeTrackerCommandBuffer>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<HUDGPUTimeTrackerCommandBuffer>::__emplace_back_slow_path<HUDGPUTimeTrackerCommandBuffer const&>(a1, a2);
  }

  else
  {
    std::vector<HUDGPUTimeTrackerCommandBuffer>::__construct_one_at_end[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer const&>(a1, a2);
    result = v3 + 216;
  }

  a1[1] = result;
  return result;
}

void ___Z49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermy_block_invoke(void *a1)
{
  if (*(HUDGetGlobalConfig() + 16) == 1)
  {
    _ZZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E17_timeTrackerBegin = HUDCurrentTimeInNs();
  }

  bzero(&v337, 0x270uLL);
  v374 = *(*(a1[4] + 8) + 24);
  v373.i64[1] = a1[9];
  v2 = *(HUDGetGlobalConfig() + 3);
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v6 = 126 - 2 * __clz(0x84BDA12F684BDA13 * ((v5 - v4) >> 3));
  memset(v375, 0, sizeof(v375));
  v376 = 0;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferLb0EEEvT1_S8_T0_NS_15iterator_traitsIS8_E15difference_typeEb(v4, v5, v7, 1);
  v335 = 0u;
  v334 = 0u;
  v336 = 1065353216;
  v333 = 0;
  memset(v332, 0, sizeof(v332));
  v331 = 0;
  memset(v330, 0, sizeof(v330));
  v280 = v2;
  if (v2 == 1)
  {
    HUDTargetRebindingInsightContextBeginFrame(a1[10] + 67424, *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 24), *(*(a1[4] + 8) + 24));
    HUDGameModeInsightCheck();
  }

  v8 = *(*(a1[5] + 8) + 48);
  v282 = a1;
  if (*(*(a1[5] + 8) + 56) != v8)
  {
    v283 = 0;
    v9 = 0;
    while (1)
    {
      v278 = v9;
      v10 = v8 + 216 * v9;
      v281 = v10;
      if (*(v10 + 72) != 1)
      {
        std::vector<HUDTimeRange>::push_back[abi:ne200100](&v337, (v10 + 32));
        std::vector<HUDTimeRange>::push_back[abi:ne200100](&__base, (v10 + 48));
        std::vector<HUDTimeRange>::push_back[abi:ne200100](&v360[3 * *(v10 + 72) + 21], (v10 + 48));
        if (std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((*(a1[8] + 8) + 48), (v10 + 8)))
        {
          v11 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1[10] + 216), (v10 + 8));
          if (v11 || (v12 = a1[10], v310[0].i64[0] = *(v10 + 8), memset(&v310[0].u64[1], 0, 40), (v11 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>>((v12 + 216), v310)) != 0))
          {
            v13 = *(v10 + 32);
            v14 = v11[4];
            v11[3] += *(v10 + 40) - v13;
            if (v11[5] < v13)
            {
              v13 = v11[5];
            }

            v11[4] = *(v10 + 56) - *(v10 + 48) + v14;
            v11[5] = v13;
            v15 = v11[7] + 1;
            v11[6] = *(v10 + 8);
            v11[7] = v15;
          }
        }

        if (v280)
        {
          if (*(v10 + 8) && (v16 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1[10] + 96), (v10 + 8))) != 0)
          {
            v17 = v16[6];
          }

          else
          {
            v17 = 0;
          }

          HUDTargetRebindingInsightContextProcessCommandBuffer(a1[10] + 67424, *v10, *(v10 + 76), v17, *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56));
        }
      }

      v310[0].i64[0] = v10 + 88;
      v18 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v334, (v10 + 88))[3];
      v19 = *(v10 + 96);
      v310[0].i64[0] = v10 + 88;
      v20 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v334, (v10 + 88));
      v21 = v18 <= v19 ? v19 : v18;
      v20[3] = v21;
      v22 = *(v10 + 144);
      if (*(v10 + 152) != v22)
      {
        break;
      }

LABEL_91:
      v9 = v278 + 1;
      v8 = *(*(a1[5] + 8) + 48);
      if (v278 + 1 >= 0x84BDA12F684BDA13 * ((*(*(a1[5] + 8) + 56) - v8) >> 3))
      {
        v61 = v283;
        goto LABEL_94;
      }
    }

    v23 = 0;
    v24 = 0;
    v279 = *(v10 + 56) - *(v10 + 48) + 1000;
    while (1)
    {
      if (*(v10 + 72) != 1)
      {
        v25 = *(v22 + v23 + 8);
        if (*(v22 + v23 + 16) < v25)
        {
          *(v22 + v23 + 16) = v25;
        }

        std::vector<HUDTimeRange>::push_back[abi:ne200100](&v351, (v22 + v23 + 8));
        std::vector<HUDTimeRange>::push_back[abi:ne200100](&v360[3 * *(v22 + v23)], (v22 + v23 + 8));
      }

      v26 = *(&HUDInvalidTimeRange + 1);
      v27 = HUDInvalidTimeRange;
      v28 = v22 + v23;
      if (*(v22 + v23 + 24) == 0xFFFFFFFFLL)
      {
        v29 = 0;
      }

      else
      {
        v29 = 0;
        v283 += *(v28 + 304);
        v32 = *v28;
        if (v32 <= 2)
        {
          if (v32 == 1)
          {
            v29 = 0;
            v55 = (v22 + v23);
            v56 = *(v22 + v23 + 32);
            if (v56 == -1 || (v57 = v55[5], v57 == -1))
            {
              v31 = *(&HUDInvalidTimeRange + 1);
              v30 = HUDInvalidTimeRange;
            }

            else
            {
              v31 = *(&HUDInvalidTimeRange + 1);
              v30 = HUDInvalidTimeRange;
              if (v57 - v56 <= v279)
              {
                v58 = *(&HUDInvalidTimeRange + 1);
                v310[0].i64[0] = *(v22 + v23 + 32);
                v310[0].i64[1] = v57;
                std::vector<HUDTimeRange>::push_back[abi:ne200100](&v365[3 * *(v22 + v23 + 280)], v310);
                if (*(v22 + v23 + 280) != 1)
                {
                  std::vector<HUDTimeRange>::push_back[abi:ne200100](&__src, v310);
                }

                v31 = v310[0].i64[1];
                v30 = v310[0].i64[0];
                v29 = v310[0].i64[1] - v310[0].i64[0];
                v26 = v58;
                a1 = v282;
              }
            }

            v59 = v55[6];
            if (v59 != -1)
            {
              v60 = v55[7];
              if (v60 != -1 && v60 - v59 <= v279)
              {
                v310[0].i64[0] = v55[6];
                v310[0].i64[1] = v60;
                std::vector<HUDTimeRange>::push_back[abi:ne200100](&v365[3 * *(v22 + v23 + 280)], v310);
                if (*(v22 + v23 + 280) != 1)
                {
                  std::vector<HUDTimeRange>::push_back[abi:ne200100](&v341, v310);
                }

                v26 = v310[0].i64[1];
                v27 = v310[0].i64[0];
                v29 = v310[0].i64[1] + v29 - v310[0].i64[0];
              }
            }

            goto LABEL_62;
          }

          if (v32 == 2)
          {
            v29 = 0;
            v37 = *(v22 + v23 + 32);
            if (v37 != -1)
            {
              v38 = *(v22 + v23 + 40);
              if (v38 != -1 && v38 - v37 <= v279)
              {
                v35 = a1;
                v36 = *(&HUDInvalidTimeRange + 1);
                v310[0].i64[0] = *(v22 + v23 + 32);
                v310[0].i64[1] = v38;
                std::vector<HUDTimeRange>::push_back[abi:ne200100](&v365[3 * *(v22 + v23 + 280)], v310);
                if (*(v22 + v23 + 280) != 1)
                {
                  std::vector<HUDTimeRange>::push_back[abi:ne200100](&v345, v310);
                }

                goto LABEL_61;
              }
            }
          }
        }

        else
        {
          switch(v32)
          {
            case 3:
              v29 = 0;
              v39 = *(v22 + v23 + 32);
              if (v39 != -1)
              {
                v40 = *(v22 + v23 + 40);
                if (v40 != -1 && v40 - v39 <= v279)
                {
                  v35 = a1;
                  v36 = *(&HUDInvalidTimeRange + 1);
                  v310[0].i64[0] = *(v22 + v23 + 32);
                  v310[0].i64[1] = v40;
                  std::vector<HUDTimeRange>::push_back[abi:ne200100](&v365[3 * *(v22 + v23 + 280)], v310);
                  if (*(v22 + v23 + 280) != 1)
                  {
                    std::vector<HUDTimeRange>::push_back[abi:ne200100](&v347, v310);
                  }

                  goto LABEL_61;
                }
              }

              break;
            case 5:
              v29 = 0;
              v41 = *(v22 + v23 + 32);
              if (v41 != -1)
              {
                v42 = *(v22 + v23 + 40);
                if (v42 != -1 && v42 - v41 <= v279)
                {
                  v35 = a1;
                  v36 = *(&HUDInvalidTimeRange + 1);
                  v310[0].i64[0] = *(v22 + v23 + 32);
                  v310[0].i64[1] = v42;
                  std::vector<HUDTimeRange>::push_back[abi:ne200100](&v365[3 * *(v22 + v23 + 280)], v310);
                  if (*(v22 + v23 + 280) != 1)
                  {
                    std::vector<HUDTimeRange>::push_back[abi:ne200100](&v349, v310);
                  }

                  goto LABEL_61;
                }
              }

              break;
            case 6:
              v29 = 0;
              v33 = *(v22 + v23 + 32);
              if (v33 != -1)
              {
                v34 = *(v22 + v23 + 40);
                if (v34 != -1 && v34 - v33 <= v279)
                {
                  v35 = a1;
                  v36 = *(&HUDInvalidTimeRange + 1);
                  v310[0].i64[0] = *(v22 + v23 + 32);
                  v310[0].i64[1] = v34;
                  std::vector<HUDTimeRange>::push_back[abi:ne200100](&v365[3 * *(v22 + v23 + 280)], v310);
                  if (*(v22 + v23 + 280) != 1)
                  {
                    std::vector<HUDTimeRange>::push_back[abi:ne200100](&v358, v310);
                  }

LABEL_61:
                  v31 = v310[0].i64[1];
                  v30 = v310[0].i64[0];
                  v29 = v310[0].i64[1] - v310[0].i64[0];
                  v26 = v36;
                  a1 = v35;
                  goto LABEL_62;
                }
              }

              break;
          }
        }
      }

      v31 = *(&HUDInvalidTimeRange + 1);
      v30 = HUDInvalidTimeRange;
LABEL_62:
      if (*(v10 + 72) != 1)
      {
        v43 = v31;
        v44 = v30;
        v45 = v26;
        v46 = v22 + v23;
        if (std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((*(a1[8] + 8) + 48), (v22 + v23 + 296)))
        {
          v48 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1[10] + 256), (v46 + 296));
          if (v48 || (v49 = a1[10], v310[0].i64[0] = *(v46 + 296), memset(&v310[0].u64[1], 0, 40), (v48 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>>((v49 + 256), v310)) != 0))
          {
            v50 = *(v22 + v23 + 8);
            v51 = v48[4] + v29;
            v48[3] += *(v22 + v23 + 16) - v50;
            v48[4] = v51;
            if (v48[5] < v50)
            {
              v50 = v48[5];
            }

            v48[5] = v50;
            v52 = v48[7] + 1;
            v48[6] = *(v46 + 296);
            v48[7] = v52;
          }
        }

        if (v280)
        {
          *(v22 + v23 + 144) = *(v22 + v23);
          if (*(v46 + 296) && (v53 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((v282[10] + 96), (v46 + 296))) != 0)
          {
            v54 = v53[6];
          }

          else
          {
            v54 = 0;
          }

          HUDTargetRebindingInsightContextProcessEncoder((v282[10] + 67424), (v22 + v23 + 64), v54, *(v22 + v23 + 8), *(v22 + v23 + 16), v44, v43, v47, v27, v45);

          a1 = v282;
        }

        ++*(v375 + *(v22 + v23));
        v10 = v281;
      }

      ++v24;
      v22 = *(v10 + 144);
      v23 += 312;
      if (v24 >= 0x6F96F96F96F96F97 * ((*(v10 + 152) - v22) >> 3))
      {
        goto LABEL_91;
      }
    }
  }

  v61 = 0.0;
LABEL_94:
  v372 = 0u;
  v371 = 0u;
  v370 = 0u;
  v62 = __base;
  v63 = v340;
  v64 = (v340 - __base) >> 4;
  qsort(__base, v64, 0x10uLL, _HUDTimeRangeCompare);
  if (v63 == v62)
  {
    v65 = 0;
    v66 = 0;
  }

  else
  {
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = (v62 + 8);
    do
    {
      v70 = *(v68 - 1);
      v69 = *v68;
      v71 = *v68 - v70;
      if (*v68 >= v70)
      {
        if (v70 <= v67)
        {
          v70 = v67;
        }

        v72 = v69 >= v70;
        v73 = v69 - v70;
        if (!v72)
        {
          v73 = 0;
        }

        v66 += v73;
        if (v69 > v67)
        {
          v67 = *v68;
        }

        v65 += v71;
      }

      v68 += 2;
      --v64;
    }

    while (v64);
  }

  *&v370 = v65;
  *(&v370 + 1) = v66;
  v74 = a1[11];
  v373.i64[0] = v74;
  if (v340 != __base)
  {
    v75 = v66;
    if (!v74 || v74 * 2.5 >= v75)
    {
      HUDValueHistoryRecordAddValue(a1[10] + 4984, v75);
      HUDValueHistoryRecordAddValue(a1[10] + 6112, v65);
      v76 = v337;
      v77 = v338;
      v78 = (v338 - v337) >> 4;
      qsort(v337, v78, 0x10uLL, _HUDTimeRangeCompare);
      if (v77 == v76)
      {
        v80 = 0;
        v87 = 0.0;
      }

      else
      {
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v82 = (v76 + 8);
        do
        {
          v84 = *(v82 - 1);
          v83 = *v82;
          v85 = *v82 - v84;
          if (*v82 >= v84)
          {
            if (v84 <= v81)
            {
              v84 = v81;
            }

            v72 = v83 >= v84;
            v86 = v83 - v84;
            if (!v72)
            {
              v86 = 0;
            }

            v80 += v86;
            if (v83 > v81)
            {
              v81 = *v82;
            }

            v79 += v85;
          }

          v82 += 2;
          --v78;
        }

        while (v78);
        v87 = v79;
      }

      HUDValueHistoryRecordAddValue(a1[10] + 2728, v80);
      HUDValueHistoryRecordAddValue(a1[10] + 3856, v87);
      *(&v372 + 1) = v80;
      v88 = v351;
      v89 = v352;
      v90 = (v352 - v351) >> 4;
      qsort(v351, v90, 0x10uLL, _HUDTimeRangeCompare);
      if (v89 == v88)
      {
        v92 = 0;
        v99 = 0.0;
      }

      else
      {
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v94 = (v88 + 8);
        do
        {
          v96 = *(v94 - 1);
          v95 = *v94;
          v97 = *v94 - v96;
          if (*v94 >= v96)
          {
            if (v96 <= v93)
            {
              v96 = v93;
            }

            v72 = v95 >= v96;
            v98 = v95 - v96;
            if (!v72)
            {
              v98 = 0;
            }

            v92 += v98;
            if (v95 > v93)
            {
              v93 = *v94;
            }

            v91 += v97;
          }

          v94 += 2;
          --v90;
        }

        while (v90);
        v99 = v91;
      }

      HUDValueHistoryRecordAddValue(a1[10] + 7240, v92);
      HUDValueHistoryRecordAddValue(a1[10] + 8368, v99);
      *&v372 = v92;
      v100 = HUDValueHistoryRecordAddValue(a1[10] + 9496, ((v338 - v337) >> 4));
      if (*(a1[10] + 26) == 1)
      {
        v101 = v341;
        v102 = v342;
        v103 = (v342 - v341) >> 4;
        qsort(v341, v103, 0x10uLL, _HUDTimeRangeCompare);
        if (v102 == v101)
        {
          v113 = 0.0;
          v112 = 0.0;
        }

        else
        {
          v104 = 0;
          v105 = 0;
          v106 = 0;
          v107 = (v101 + 8);
          do
          {
            v109 = *(v107 - 1);
            v108 = *v107;
            v110 = *v107 - v109;
            if (*v107 >= v109)
            {
              if (v109 <= v106)
              {
                v109 = v106;
              }

              v72 = v108 >= v109;
              v111 = v108 - v109;
              if (!v72)
              {
                v111 = 0;
              }

              v105 += v111;
              if (v108 > v106)
              {
                v106 = *v107;
              }

              v104 += v110;
            }

            v107 += 2;
            --v103;
          }

          while (v103);
          v112 = v105;
          v113 = v104;
        }

        HUDValueHistoryRecordAddValue(a1[10] + 19648, v112);
        HUDValueHistoryRecordAddValue(a1[10] + 20776, v113);
        v114 = __src;
        v115 = v344;
        v116 = (v344 - __src) >> 4;
        qsort(__src, v116, 0x10uLL, _HUDTimeRangeCompare);
        if (v115 == v114)
        {
          v126 = 0.0;
          v125 = 0.0;
        }

        else
        {
          v117 = 0;
          v118 = 0;
          v119 = 0;
          v120 = (v114 + 8);
          do
          {
            v122 = *(v120 - 1);
            v121 = *v120;
            v123 = *v120 - v122;
            if (*v120 >= v122)
            {
              if (v122 <= v119)
              {
                v122 = v119;
              }

              v72 = v121 >= v122;
              v124 = v121 - v122;
              if (!v72)
              {
                v124 = 0;
              }

              v118 += v124;
              if (v121 > v119)
              {
                v119 = *v120;
              }

              v117 += v123;
            }

            v120 += 2;
            --v116;
          }

          while (v116);
          v125 = v118;
          v126 = v117;
        }

        HUDValueHistoryRecordAddValue(a1[10] + 17392, v125);
        HUDValueHistoryRecordAddValue(a1[10] + 18520, v126);
        v127 = v345;
        v128 = v346;
        v129 = (v346 - v345) >> 4;
        qsort(v345, v129, 0x10uLL, _HUDTimeRangeCompare);
        if (v128 == v127)
        {
          v139 = 0.0;
          v138 = 0.0;
        }

        else
        {
          v130 = 0;
          v131 = 0;
          v132 = 0;
          v133 = (v127 + 8);
          do
          {
            v135 = *(v133 - 1);
            v134 = *v133;
            v136 = *v133 - v135;
            if (*v133 >= v135)
            {
              if (v135 <= v132)
              {
                v135 = v132;
              }

              v72 = v134 >= v135;
              v137 = v134 - v135;
              if (!v72)
              {
                v137 = 0;
              }

              v131 += v137;
              if (v134 > v132)
              {
                v132 = *v133;
              }

              v130 += v136;
            }

            v133 += 2;
            --v129;
          }

          while (v129);
          v138 = v131;
          v139 = v130;
        }

        HUDValueHistoryRecordAddValue(a1[10] + 21904, v138);
        HUDValueHistoryRecordAddValue(a1[10] + 23032, v139);
        v140 = v347;
        v141 = v348;
        v142 = (v348 - v347) >> 4;
        qsort(v347, v142, 0x10uLL, _HUDTimeRangeCompare);
        if (v141 == v140)
        {
          v152 = 0.0;
          v151 = 0.0;
        }

        else
        {
          v143 = 0;
          v144 = 0;
          v145 = 0;
          v146 = (v140 + 8);
          do
          {
            v148 = *(v146 - 1);
            v147 = *v146;
            v149 = *v146 - v148;
            if (*v146 >= v148)
            {
              if (v148 <= v145)
              {
                v148 = v145;
              }

              v72 = v147 >= v148;
              v150 = v147 - v148;
              if (!v72)
              {
                v150 = 0;
              }

              v144 += v150;
              if (v147 > v145)
              {
                v145 = *v146;
              }

              v143 += v149;
            }

            v146 += 2;
            --v142;
          }

          while (v142);
          v151 = v144;
          v152 = v143;
        }

        HUDValueHistoryRecordAddValue(a1[10] + 24160, v151);
        HUDValueHistoryRecordAddValue(a1[10] + 25288, v152);
        v153 = v349;
        v154 = v350;
        v155 = (v350 - v349) >> 4;
        qsort(v349, v155, 0x10uLL, _HUDTimeRangeCompare);
        if (v154 == v153)
        {
          v165 = 0.0;
          v164 = 0.0;
        }

        else
        {
          v156 = 0;
          v157 = 0;
          v158 = 0;
          v159 = (v153 + 8);
          do
          {
            v161 = *(v159 - 1);
            v160 = *v159;
            v162 = *v159 - v161;
            if (*v159 >= v161)
            {
              if (v161 <= v158)
              {
                v161 = v158;
              }

              v72 = v160 >= v161;
              v163 = v160 - v161;
              if (!v72)
              {
                v163 = 0;
              }

              v157 += v163;
              if (v160 > v158)
              {
                v158 = *v159;
              }

              v156 += v162;
            }

            v159 += 2;
            --v155;
          }

          while (v155);
          v164 = v157;
          v165 = v156;
        }

        HUDValueHistoryRecordAddValue(a1[10] + 26416, v164);
        HUDValueHistoryRecordAddValue(a1[10] + 27544, v165);
        v166 = v356;
        v167 = v357;
        v168 = (v357 - v356) >> 4;
        qsort(v356, v168, 0x10uLL, _HUDTimeRangeCompare);
        if (v167 == v166)
        {
          v178 = 0.0;
          v177 = 0.0;
        }

        else
        {
          v169 = 0;
          v170 = 0;
          v171 = 0;
          v172 = (v166 + 8);
          do
          {
            v174 = *(v172 - 1);
            v173 = *v172;
            v175 = *v172 - v174;
            if (*v172 >= v174)
            {
              if (v174 <= v171)
              {
                v174 = v171;
              }

              v72 = v173 >= v174;
              v176 = v173 - v174;
              if (!v72)
              {
                v176 = 0;
              }

              v170 += v176;
              if (v173 > v171)
              {
                v171 = *v172;
              }

              v169 += v175;
            }

            v172 += 2;
            --v168;
          }

          while (v168);
          v177 = v170;
          v178 = v169;
        }

        HUDValueHistoryRecordAddValue(a1[10] + 47848, v177);
        HUDValueHistoryRecordAddValue(a1[10] + 48976, v178);
        v179 = v358;
        v180 = v359;
        v181 = (v359 - v358) >> 4;
        qsort(v358, v181, 0x10uLL, _HUDTimeRangeCompare);
        if (v180 == v179)
        {
          v188 = 0.0;
        }

        else
        {
          v182 = 0;
          v183 = 0;
          v184 = (v179 + 8);
          do
          {
            v186 = *(v184 - 1);
            v185 = *v184;
            if (*v184 >= v186)
            {
              if (v186 <= v183)
              {
                v186 = v183;
              }

              v72 = v185 >= v186;
              v187 = v185 - v186;
              if (!v72)
              {
                v187 = 0;
              }

              v182 += v187;
              if (v185 > v183)
              {
                v183 = *v184;
              }
            }

            v184 += 2;
            --v181;
          }

          while (v181);
          v188 = v182;
        }

        v100 = HUDValueHistoryRecordAddValue(a1[10] + 58000, v188);
      }

      for (i = 1; i != 7; ++i)
      {
        LODWORD(v100) = *(v375 + i);
        HUDValueHistoryRecordAddValue(v282[10] + 1128 * (i | 8) + 472, *&v100);
        v190 = &v360[3 * i];
        v191 = *v190;
        v192 = v190[1];
        v193 = (v192 - *v190) >> 4;
        qsort(*v190, v193, 0x10uLL, _HUDTimeRangeCompare);
        if (v192 == v191)
        {
          v203 = 0.0;
          v202 = 0.0;
        }

        else
        {
          v194 = 0;
          v195 = 0;
          v196 = 0;
          v197 = (v191 + 8);
          do
          {
            v199 = *(v197 - 1);
            v198 = *v197;
            v200 = *v197 - v199;
            if (*v197 >= v199)
            {
              if (v199 <= v196)
              {
                v199 = v196;
              }

              v72 = v198 >= v199;
              v201 = v198 - v199;
              if (!v72)
              {
                v201 = 0;
              }

              v195 += v201;
              if (v198 > v196)
              {
                v196 = *v197;
              }

              v194 += v200;
            }

            v197 += 2;
            --v193;
          }

          while (v193);
          v202 = v195;
          v203 = v194;
        }

        HUDValueHistoryRecordAddValue(v282[10] + 2256 * i + 26416, v202);
        v100 = HUDValueHistoryRecordAddValue(v282[10] + 2256 * i + 27544, v203);
      }

      a1 = v282;
      HUDValueHistoryRecordAddValue(v282[10] + 46720, v61);
      HUDValueHistoryRecordAddValue(v282[10] + 1600, v370);
      HUDValueHistoryRecordAddValue(v282[10] + 472, *(&v370 + 1));
      std::vector<HUDTimeRange>::reserve(&v353, ((v342 - v341) >> 4) + ((v344 - __src) >> 4) + ((v346 - v345) >> 4) + ((v350 - v349) >> 4) + ((v348 - v347) >> 4));
      if (v355 != v353 && *(v282[10] + 26) == 1)
      {
        std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<std::__wrap_iter<HUDTimeRange*>,std::__wrap_iter<HUDTimeRange*>>(&v353, __dst, __src, v344, (v344 - __src) >> 4);
        std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<std::__wrap_iter<HUDTimeRange*>,std::__wrap_iter<HUDTimeRange*>>(&v353, __dst, v341, v342, (v342 - v341) >> 4);
        std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<std::__wrap_iter<HUDTimeRange*>,std::__wrap_iter<HUDTimeRange*>>(&v353, __dst, v345, v346, (v346 - v345) >> 4);
        std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<std::__wrap_iter<HUDTimeRange*>,std::__wrap_iter<HUDTimeRange*>>(&v353, __dst, v349, v350, (v350 - v349) >> 4);
        std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<std::__wrap_iter<HUDTimeRange*>,std::__wrap_iter<HUDTimeRange*>>(&v353, __dst, v347, v348, (v348 - v347) >> 4);
        v204 = v353;
        v205 = __dst;
        v206 = (__dst - v353) >> 4;
        qsort(v353, v206, 0x10uLL, _HUDTimeRangeCompare);
        if (v205 == v204)
        {
          v207 = 0;
          v208 = 0;
        }

        else
        {
          v207 = 0;
          v208 = 0;
          v209 = 0;
          v210 = (v204 + 8);
          do
          {
            v212 = *(v210 - 1);
            v211 = *v210;
            v213 = *v210 - v212;
            if (*v210 >= v212)
            {
              if (v212 <= v209)
              {
                v212 = v209;
              }

              v72 = v211 >= v212;
              v214 = v211 - v212;
              if (!v72)
              {
                v214 = 0;
              }

              v208 += v214;
              if (v211 > v209)
              {
                v209 = *v210;
              }

              v207 += v213;
            }

            v210 += 2;
            --v206;
          }

          while (v206);
        }

        *&v371 = v207;
        *(&v371 + 1) = v208;
        HUDValueHistoryRecordAddValue(v282[10] + 51232, v207);
        HUDValueHistoryRecordAddValue(v282[10] + 50104, *(&v371 + 1));
      }

      v215 = v363;
      v216 = v364 - v363;
      if (v364 != v363)
      {
        v217 = v216 >> 4;
        qsort(v363, v216 >> 4, 0x10uLL, _HUDTimeRangeCompare);
        v218 = 0;
        v219 = 0;
        v220 = (v215 + 8);
        do
        {
          v222 = *(v220 - 1);
          v221 = *v220;
          if (*v220 >= v222)
          {
            if (v222 <= v219)
            {
              v222 = v219;
            }

            v72 = v221 >= v222;
            v223 = v221 - v222;
            if (!v72)
            {
              v223 = 0;
            }

            v218 += v223;
            if (v221 > v219)
            {
              v219 = *v220;
            }
          }

          v220 += 2;
          --v217;
        }

        while (v217);
        HUDValueHistoryRecordAddValue(v282[10] + 54616, v218);
      }

      v224 = v368;
      v225 = v369 - v368;
      if (v369 != v368)
      {
        v226 = v225 >> 4;
        qsort(v368, v225 >> 4, 0x10uLL, _HUDTimeRangeCompare);
        v227 = 0;
        v228 = 0;
        v229 = (v224 + 8);
        do
        {
          v231 = *(v229 - 1);
          v230 = *v229;
          if (*v229 >= v231)
          {
            if (v231 <= v228)
            {
              v231 = v228;
            }

            v72 = v230 >= v231;
            v232 = v230 - v231;
            if (!v72)
            {
              v232 = 0;
            }

            v227 += v232;
            if (v230 > v228)
            {
              v228 = *v229;
            }
          }

          v229 += 2;
          --v226;
        }

        while (v226);
        HUDValueHistoryRecordAddValue(v282[10] + 55744, v227);
      }

      v233 = v361;
      v234 = v362 - v361;
      if (v362 != v361)
      {
        v235 = v234 >> 4;
        qsort(v361, v234 >> 4, 0x10uLL, _HUDTimeRangeCompare);
        v236 = 0;
        v237 = 0;
        v238 = (v233 + 8);
        do
        {
          v240 = *(v238 - 1);
          v239 = *v238;
          if (*v238 >= v240)
          {
            if (v240 <= v237)
            {
              v240 = v237;
            }

            v72 = v239 >= v240;
            v241 = v239 - v240;
            if (!v72)
            {
              v241 = 0;
            }

            v236 += v241;
            if (v239 > v237)
            {
              v237 = *v238;
            }
          }

          v238 += 2;
          --v235;
        }

        while (v235);
        HUDValueHistoryRecordAddValue(v282[10] + 52360, v236);
      }

      v242 = v366;
      v243 = v367 - v366;
      if (v367 != v366)
      {
        v244 = v243 >> 4;
        qsort(v366, v243 >> 4, 0x10uLL, _HUDTimeRangeCompare);
        v245 = 0;
        v246 = 0;
        v247 = (v242 + 8);
        do
        {
          v249 = *(v247 - 1);
          v248 = *v247;
          if (*v247 >= v249)
          {
            if (v249 <= v246)
            {
              v249 = v246;
            }

            v72 = v248 >= v249;
            v250 = v248 - v249;
            if (!v72)
            {
              v250 = 0;
            }

            v245 += v250;
            if (v248 > v246)
            {
              v246 = *v247;
            }
          }

          v247 += 2;
          --v244;
        }

        while (v244);
        HUDValueHistoryRecordAddValue(v282[10] + 53488, v245);
      }

      if (*(HUDGetGlobalConfig() + 28) == 1)
      {
        v251 = v335;
        if (v335)
        {
          v252 = 0;
          do
          {
            v252 += v251[3];
            v251 = *v251;
          }

          while (v251);
          v253 = v252;
        }

        else
        {
          v253 = 0.0;
        }

        HUDValueHistoryRecordAddValue(v282[10] + 56872, v253);
      }

      v254 = *(v282[10] + 464);
      if (v254)
      {
        v310[0].i64[0] = v337;
        v310[0].i64[1] = (v338 - v337) >> 4;
        v310[2].i64[0] = __base;
        v310[2].i64[1] = (v340 - __base) >> 4;
        v310[1].i64[0] = v351;
        v310[1].i64[1] = (v352 - v351) >> 4;
        *&v312 = __src;
        *(&v312 + 1) = (v344 - __src) >> 4;
        *&v311 = v341;
        *(&v311 + 1) = (v342 - v341) >> 4;
        *&v313 = v345;
        *(&v313 + 1) = (v346 - v345) >> 4;
        *&v314 = v347;
        *(&v314 + 1) = (v348 - v347) >> 4;
        v318 = (v357 - v356) >> 4;
        v319 = v358;
        v320 = (v359 - v358) >> 4;
        v315 = v349;
        v316 = (v350 - v349) >> 4;
        v317 = v356;
        v325 = v374;
        v321 = v370;
        v322 = v371;
        v323 = v372;
        v324 = vextq_s8(v373, v373, 8uLL);
        (*(v254 + 16))(v254, v310);
      }

      if (v280)
      {
        HUDBarrierInsightCheck(v282[10] + 68280);
        HUDTessellationInsightCheck(v282[10] + 68304);
        v285 = v337;
        v286 = (v338 - v337) >> 4;
        v289 = __base;
        v290 = (v340 - __base) >> 4;
        v287 = v351;
        v288 = (v352 - v351) >> 4;
        v293 = __src;
        v294 = (v344 - __src) >> 4;
        v291 = v341;
        v292 = (v342 - v341) >> 4;
        v295 = v345;
        v296 = (v346 - v345) >> 4;
        v297 = v347;
        v298 = (v348 - v347) >> 4;
        v301 = v356;
        v302 = (v357 - v356) >> 4;
        v303 = v358;
        v304 = (v359 - v358) >> 4;
        v299 = v349;
        v300 = (v350 - v349) >> 4;
        v309 = v374;
        v305 = v370;
        v306 = v371;
        v307 = v372;
        v308 = vextq_s8(v373, v373, 8uLL);
        HUDTargetRebindingInsightContextNextFrame(v282[10] + 67424, v310, &v285, *(*(v282[4] + 8) + 24));
        LODWORD(v255) = v326;
        v256 = HUDValueHistoryRecordAddValue(v282[10] + 44464, v255);
        LODWORD(v256) = v327;
        v257 = HUDValueHistoryRecordAddValue(v282[10] + 45592, *&v256);
        LODWORD(v257) = v328;
        v258 = HUDValueHistoryRecordAddValue(v282[10] + 59128, *&v257);
        LODWORD(v258) = v329;
        HUDValueHistoryRecordAddValue(v282[10] + 60256, *&v258);
      }

      v259 = HUDCurrentTimeInNs();
      v260 = v282[10];
      if (v259 - *(v260 + 456) >= 0x3B9ACA01)
      {
        for (j = (v260 + 272); ; _HUDGPUTimeTrackerPushTopObjectHeap(v330, (j + 3)))
        {
          j = *j;
          if (!j)
          {
            break;
          }

          v262 = j[7];
          v263 = j[3] / v262;
          v264 = j[4] / v262;
          j[3] = v263;
          j[4] = v264;
        }

        for (k = v282[10] + 232; ; _HUDGPUTimeTrackerPushTopObjectHeap(v332, (k + 24)))
        {
          k = *k;
          if (!k)
          {
            break;
          }

          v266 = *(k + 56);
          v267 = *(k + 24) / v266;
          v268 = *(k + 32) / v266;
          *(k + 24) = v267;
          *(k + 32) = v268;
        }

        _HUDGPUTimeTrackerTopObjectHeapAssign(v282[10], v330, (v282[10] + 376), 10);
        _HUDGPUTimeTrackerTopObjectHeapAssign(v282[10], v332, (v282[10] + 296), 10);
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear((v282[10] + 256));
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear((v282[10] + 216));
        *(v282[10] + 456) = HUDCurrentTimeInNs();
      }
    }
  }

  v269 = _MTLCompileTimeStatistics();
  if (v269)
  {
    v285 = 0;
    v286 = &v285;
    v287 = 0x3032000000;
    v288 = __Block_byref_object_copy__423;
    v289 = __Block_byref_object_dispose__424;
    if (*(HUDGetGlobalConfig() + 2) == 1)
    {
      v290 = objc_opt_new();
    }

    else
    {
      v290 = 0;
    }

    v313 = 0u;
    v314 = 0u;
    v311 = 0u;
    v312 = 0u;
    memset(v310, 0, sizeof(v310));
    v270 = a1[10];
    v284[0] = _NSConcreteStackBlock;
    v284[1] = 3221225472;
    v284[2] = ___Z49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermy_block_invoke_426;
    v284[3] = &unk_68B28;
    v284[4] = &v285;
    _HUDCompilerStatisticsParse((v270 + 67032), v269, v284, v310);
    v271 = *(v286 + 40);
    if (v271 && [v271 length] >= 3)
    {
      v272 = [*(v286 + 40) substringToIndex:{objc_msgSend(*(v286 + 40), "length") - 2}];
      NSLog(@"[MTLHUD] Compiled %@, total %.2fms", v272, v312 / 1000000.0);
    }

    HUDValueHistoryRecordAddValue(a1[10] + 42208, v312);
    HUDValueHistoryRecordAddValue(a1[10] + 43336, v310[2].u64[1]);
    HUDValueHistoryRecordAddValue(a1[10] + 61384, *(a1[10] + 67072));
    HUDValueHistoryRecordAddValue(a1[10] + 64768, *(a1[10] + 67080));
    HUDValueHistoryRecordAddValue(a1[10] + 62512, *(a1[10] + 67088));
    HUDValueHistoryRecordAddValue(a1[10] + 63640, (*(a1[10] + 67064) + *(a1[10] + 67056)));
    HUDValueHistoryRecordAddValue(a1[10] + 65896, *(a1[10] + 67096));
    v273 = a1[10] + 67144;
    v274 = v313;
    *(v273 + 64) = v312;
    *(v273 + 80) = v274;
    *(v273 + 96) = v314;
    v275 = v310[1];
    *v273 = v310[0];
    *(v273 + 16) = v275;
    v276 = v311;
    *(v273 + 32) = v310[2];
    *(v273 + 48) = v276;
    if (v280)
    {
      HUDCompilerInsightHandleCompilerStatistics(a1[10] + 67256, v310, (a1[10] + 67032));
    }

    _Block_object_dispose(&v285, 8);
  }

  if (*(HUDGetGlobalConfig() + 16) == 1)
  {
    v277 = HUDCurrentTimeInNs();
    HUDInternalPerfMetricGPUTimeTrackerAdd(v277 - _ZZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E17_timeTrackerBegin);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(&v334);
  HUDGPUTimeTrackerFrameTimingDataStore::~HUDGPUTimeTrackerFrameTimingDataStore(&v337);
}

void sub_5484(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(&STACK[0x7C0]);
  HUDGPUTimeTrackerFrameTimingDataStore::~HUDGPUTimeTrackerFrameTimingDataStore(&STACK[0x7F0]);
  _Unwind_Resume(a1);
}

void std::vector<HUDTimeRange>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HUDTimeRange>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *std::vector<HUDTimeRange>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<HUDTimeRange>>(result, a2);
    }

    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t __Block_byref_object_copy__423(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___Z49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermy_block_invoke_426(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v3)
  {
    [v3 appendFormat:@"%@ (%.2fms), ", *(a3 + 16), *a3 / 1000000.0];
    v5 = HUDSignpostGetOSLog(0);
    if (os_signpost_enabled(v5))
    {
      v6 = *(a3 + 16);
      v7 = *a3;
      v8 = *(a3 + 12);
      *buf = 138543874;
      v10 = v6;
      v11 = 2050;
      v12 = v7;
      v13 = 1026;
      v14 = v8;
      _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CompileShader", "name: %{public, name=name}@\ncompilation-time: %{public, name=total-compilation-time}llu\ncached: %{public, name=cached}d\n", buf, 0x1Cu);
    }
  }
}

void HUDGPUTimeTrackerEnumerateCompilerStatistics(uint64_t a1@<X0>, HUDCompilerStatistics *a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = a3;
  HUDCompilerStatisticsInit(v12);
  if (a1)
  {
    v8 = _MTLCompileTimeStatistics();
    a4[5] = 0u;
    a4[6] = 0u;
    a4[3] = 0u;
    a4[4] = 0u;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
    _HUDCompilerStatisticsParse(a2, v8, v7, a4);
  }

  else
  {
    v9 = v12[5];
    a4[4] = v12[4];
    a4[5] = v9;
    a4[6] = v12[6];
    v10 = v12[1];
    *a4 = v12[0];
    a4[1] = v10;
    v11 = v12[3];
    a4[2] = v12[2];
    a4[3] = v11;
  }
}

void HUDGPUTimeTrackerSetFrameTimingSnapshotHandler(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = objc_retainBlock(v3);
    v5 = *(a1 + 464);
    *(a1 + 464) = v4;
  }
}

void _HUDGPUTimeTrackerCommandBufferComplete(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 globalTraceObjectID];
  [v3 GPUStartTime];
  v8 = v5;
  [v3 GPUEndTime];
  v6.f64[0] = v8;
  v6.f64[1] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = ___Z39_HUDGPUTimeTrackerCommandBufferCompleteP17HUDGPUTimeTrackerPU27objcproto16MTLCommandBuffer11objc_object_block_invoke;
  v9[3] = &__block_descriptor_64_e5_v8__0l;
  v9[4] = a1;
  v9[5] = v4;
  v10 = vcvtq_u64_f64(vmulq_f64(v6, vdupq_n_s64(0x41CDCD6500000000uLL)));
  HUDDispatchQueueAsync(v9);
}

void ___Z39_HUDGPUTimeTrackerCommandBufferCompleteP17HUDGPUTimeTrackerPU27objcproto16MTLCommandBuffer11objc_object_block_invoke(void *a1)
{
  if (*(HUDGetGlobalConfig() + 16) == 1)
  {
    _ZZZ39_HUDGPUTimeTrackerCommandBufferCompleteP17HUDGPUTimeTrackerPU27objcproto16MTLCommandBuffer11objc_objectEUb0_E17_timeTrackerBegin = HUDCurrentTimeInNs();
  }

  v15 = a1[4];
  os_unfair_lock_lock(v15 + 16756);
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1[4] + 56), a1 + 5);
  if (v2)
  {
    v3 = v2;
    v2[9] = a1[6];
    v2[10] = a1[7];
    v5 = v2[21];
    v4 = v2[22];
    if (v4 != v5)
    {
      v6 = 0;
      v7 = 32;
      do
      {
        v8 = v5 + 312 * v6;
        if (*(v8 + 24) != 0xFFFFFFFFLL)
        {
          if (*v8 == 1)
          {
            v9 = 4;
          }

          else
          {
            v9 = 2;
          }

          v10 = [*(a1[4] + 40) resolveCounterRange:?];
          v11 = [v10 bytes];
          if (v11)
          {
            v12 = (v5 + v7);
            do
            {
              v13 = *v11++;
              *v12++ = v13;
              --v9;
            }

            while (v9);
          }

          v5 = v3[21];
          v4 = v3[22];
        }

        ++v6;
        v7 += 312;
      }

      while (v6 < 0x6F96F96F96F96F97 * ((v4 - v5) >> 3));
    }
  }

  if (*(HUDGetGlobalConfig() + 16) == 1)
  {
    v14 = HUDCurrentTimeInNs();
    HUDInternalPerfMetricGPUTimeTrackerAdd(v14 - _ZZZ39_HUDGPUTimeTrackerCommandBufferCompleteP17HUDGPUTimeTrackerPU27objcproto16MTLCommandBuffer11objc_objectEUb0_E17_timeTrackerBegin);
  }

  os_unfair_lock_unlock(v15 + 16756);
}

void _HUDGPUTimeTrackerCommandBufferScheduled(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 globalTraceObjectID];
  os_unfair_lock_lock((a1 + 67024));
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v5);
  if (v4)
  {
    *(v4 + 88) = 1;
  }

  os_unfair_lock_unlock((a1 + 67024));
}

void HUDGPUTimeTrackerCommandBufferCommit(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v14 = [v3 globalTraceObjectID];
    os_unfair_lock_lock((a1 + 67024));
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v14);
    if (v5)
    {
      v6 = v5;
      if (!v5[8])
      {
        v5[8] = HUDCurrentTimeInNs();
        if (*(a1 + 26) == 1 && *(v6 + 24) != 1)
        {
          v7 = [v4 label];
          if (v7)
          {
            v8 = [v4 label];
            v9 = [v8 length];

            if (v9)
            {
              v10 = [v4 label];
              v6[4] = _HUDGPUTimeTrackerAddLabel(a1, v11, v10, v6[5], 0);
            }
          }
        }

        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = __HUDGPUTimeTrackerCommandBufferCommit_block_invoke;
        v13[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
        v13[4] = a1;
        [v4 addScheduledHandler:v13];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = __HUDGPUTimeTrackerCommandBufferCommit_block_invoke_2;
        v12[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
        v12[4] = a1;
        [v4 addCompletedHandler:v12];
      }
    }

    os_unfair_lock_unlock((a1 + 67024));
  }
}

void sub_5E3C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

_BYTE *HUDGPUTimeTrackerGetValueRecord(_BYTE *result, unsigned int a2)
{
  if (result)
  {
    if (a2 > 0x31 || ((1 << a2) & 0x2BC0001FF8000) == 0 || result[26] == 1 && result[27] == 1 && result[25] == 1)
    {
      result += 1128 * a2 + 472;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id HUDGPUTimeTrackerCreateRenderEncder(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1 && (isCreatingEncoder(), *v10 != 1))
  {
    if (_HUDGPUTimeTrackerCanSampleRenderEncoder(a1, v8))
    {
      v13 = _HUDGPUTimeTrackerPatchRenderPassDescriptor(a1, v8);
      v11 = v9[2](v9, v8);
      _HUDGPUTimeTrackerAddRenderEncoder(a1, v7, v11, 1, v13, v8);
    }

    else
    {
      v11 = v9[2](v9, v8);
      _HUDGPUTimeTrackerAddRenderEncoder(a1, v7, v11, 1, 0xFFFFFFFFLL, v8);
    }
  }

  else
  {
    v11 = v9[2](v9, v8);
  }

  return v11;
}

uint64_t _HUDGPUTimeTrackerCanSampleRenderEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  for (i = 0; i != 4; ++i)
  {
    v5 = [v3 sampleBufferAttachments];
    v6 = [v5 objectAtIndexedSubscript:i];
    v7 = [v6 sampleBuffer];
    if (v7)
    {
      v8 = [v3 sampleBufferAttachments];
      v9 = [v8 objectAtIndexedSubscript:i];
      v10 = [v9 sampleBuffer];
      v11 = *(a1 + 40);

      if (v10 != v11)
      {
        *(a1 + 24) = 1;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (*(a1 + 32) && *(a1 + 27) == 1 && (*(a1 + 24) & 1) == 0 && *(a1 + 26) == 1)
  {
    v12 = *(a1 + 25);
    goto LABEL_14;
  }

LABEL_13:
  v12 = 0;
LABEL_14:

  return v12 & 1;
}

uint64_t _HUDGPUTimeTrackerPatchRenderPassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 67024));
  isCreatingEncoder();
  v5 = v4;
  *v4 = 1;
  if ((*(a1 + 48) - 4093) <= 0xFFFFFFFFFFFFEFFELL)
  {
    *(a1 + 48) = 0;
  }

  v6 = [v3 sampleBufferAttachments];
  v7 = [v6 objectAtIndexedSubscript:0];

  [v7 setStartOfVertexSampleIndex:*(a1 + 48)];
  [v7 setEndOfVertexSampleIndex:*(a1 + 48) + 1];
  [v7 setStartOfFragmentSampleIndex:*(a1 + 48) + 2];
  [v7 setEndOfFragmentSampleIndex:*(a1 + 48) + 3];
  [v7 setSampleBuffer:*(a1 + 40)];
  v8 = *(a1 + 48);
  *(a1 + 48) = (v8 + 4) & 0xFFF;

  *v5 = 0;
  os_unfair_lock_unlock((a1 + 67024));

  return v8;
}

void sub_62F4(_Unwind_Exception *a1)
{
  v6 = v4;

  *v3 = 0;
  os_unfair_lock_unlock((v2 + v5));

  _Unwind_Resume(a1);
}

void _HUDGPUTimeTrackerAddRenderEncoder(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a6;
  v35[0] = [v12 globalTraceObjectID];
  v34 = [v11 globalTraceObjectID];
  os_unfair_lock_lock((a1 + 67024));
  isCreatingEncoder();
  v15 = v14;
  *v14 = 1;
  v16 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v34);
  if (v16)
  {
    v17 = v16;
    v18 = v16[22];
    v19 = v16[23];
    if (v18 >= v19)
    {
      v21 = v16[21];
      v22 = 0x6F96F96F96F96F97 * ((v18 - v21) >> 3);
      v23 = v22 + 1;
      if ((v22 + 1) > 0xD20D20D20D20D2)
      {
        std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
      }

      v24 = 0x6F96F96F96F96F97 * ((v19 - v21) >> 3);
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x69069069069069)
      {
        v25 = 0xD20D20D20D20D2;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerEncoder>>((v16 + 21), v25);
      }

      v26 = 312 * v22;
      *(v26 + 304) = 0;
      *(v26 + 272) = 0u;
      *(v26 + 288) = 0u;
      *(v26 + 240) = 0u;
      *(v26 + 256) = 0u;
      *(v26 + 208) = 0u;
      *(v26 + 224) = 0u;
      *(v26 + 176) = 0u;
      *(v26 + 192) = 0u;
      *(v26 + 144) = 0u;
      *(v26 + 160) = 0u;
      *(v26 + 112) = 0u;
      *(v26 + 128) = 0u;
      *(v26 + 80) = 0u;
      *(v26 + 96) = 0u;
      *(v26 + 48) = 0u;
      *(v26 + 64) = 0u;
      *(v26 + 16) = 0u;
      *(v26 + 32) = 0u;
      *v26 = 0u;
      v20 = 312 * v22 + 312;
      v27 = v16[21];
      v28 = v16[22] - v27;
      v29 = 312 * v22 - v28;
      memcpy((v26 - v28), v27, v28);
      v30 = v17[21];
      v17[21] = v29;
      v17[22] = v20;
      v17[23] = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *(v18 + 304) = 0;
      *(v18 + 272) = 0u;
      *(v18 + 288) = 0u;
      *(v18 + 240) = 0u;
      *(v18 + 256) = 0u;
      *(v18 + 208) = 0u;
      *(v18 + 224) = 0u;
      *(v18 + 176) = 0u;
      *(v18 + 192) = 0u;
      *(v18 + 144) = 0u;
      *(v18 + 160) = 0u;
      *(v18 + 112) = 0u;
      *(v18 + 128) = 0u;
      *(v18 + 80) = 0u;
      *(v18 + 96) = 0u;
      *(v18 + 48) = 0u;
      *(v18 + 64) = 0u;
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0u;
      *v18 = 0u;
      v20 = v18 + 312;
    }

    v17[22] = v20;
    v31 = (v20 - 312);
    *(v20 - 8) = 0;
    *(v20 - 24) = 0u;
    *(v20 - 40) = 0u;
    *(v20 - 56) = 0u;
    *(v20 - 72) = 0u;
    *(v20 - 88) = 0u;
    *(v20 - 104) = 0u;
    *(v20 - 120) = 0u;
    *(v20 - 136) = 0u;
    *(v20 - 152) = 0u;
    *(v20 - 168) = 0u;
    *(v20 - 184) = 0u;
    *(v20 - 200) = 0u;
    *(v20 - 216) = 0u;
    *(v20 - 232) = 0u;
    *(v20 - 248) = 0u;
    v31[2] = 0u;
    v31[3] = 0u;
    *v31 = 0u;
    v31[1] = 0u;
    *(v20 - 304) = HUDCurrentTimeInNs();
    *(v20 - 296) = HUDCurrentTimeInNs();
    *v31 = a4;
    *(v20 - 24) = v35[0];
    *(v20 - 288) = a5;
    v33 = v17[21];
    v32 = v17[22];
    v35[2] = v35;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v17 + 16, v35)[3] = 0x6F96F96F96F96F97 * ((v32 - v33) >> 3) - 1;
    HUDTargetRebindingInsightEncoderInitRender(v20 - 248, v13);
  }

  *v15 = 0;
  os_unfair_lock_unlock((a1 + 67024));
}

id HUDGPUTimeTrackerCreateComputeEncder(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1 && (isCreatingEncoder(), *v10 != 1))
  {
    if (_HUDGPUTimeTrackerCanSampleComputeEncoder(a1, v8))
    {
      v13 = _HUDGPUTimeTrackerPatchComputePassDescriptor(a1, v8);
      v11 = v9[2](v9, v8);
      _HUDGPUTimeTrackerAddEncoder(a1, v7, v11, 2, v13);
    }

    else
    {
      v11 = v9[2](v9, v8);
      _HUDGPUTimeTrackerAddEncoder(a1, v7, v11, 2, 0xFFFFFFFFLL);
    }
  }

  else
  {
    v11 = v9[2](v9, v8);
  }

  return v11;
}

uint64_t _HUDGPUTimeTrackerCanSampleComputeEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  for (i = 0; i != 4; ++i)
  {
    v5 = [v3 sampleBufferAttachments];
    v6 = [v5 objectAtIndexedSubscript:i];
    v7 = [v6 sampleBuffer];
    if (v7)
    {
      v8 = [v3 sampleBufferAttachments];
      v9 = [v8 objectAtIndexedSubscript:i];
      v10 = [v9 sampleBuffer];
      v11 = *(a1 + 40);

      if (v10 != v11)
      {
        *(a1 + 24) = 1;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (*(a1 + 32) && *(a1 + 27) == 1 && (*(a1 + 24) & 1) == 0 && *(a1 + 26) == 1)
  {
    v12 = *(a1 + 25);
    goto LABEL_14;
  }

LABEL_13:
  v12 = 0;
LABEL_14:

  return v12 & 1;
}

uint64_t _HUDGPUTimeTrackerPatchComputePassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 67024));
  isCreatingEncoder();
  v5 = v4;
  *v4 = 1;
  if ((*(a1 + 48) - 4095) <= 0xFFFFFFFFFFFFEFFELL)
  {
    *(a1 + 48) = 0;
  }

  v6 = [v3 sampleBufferAttachments];
  v7 = [v6 objectAtIndexedSubscript:0];

  [v7 setStartOfEncoderSampleIndex:*(a1 + 48)];
  [v7 setEndOfEncoderSampleIndex:*(a1 + 48) + 1];
  [v7 setSampleBuffer:*(a1 + 40)];
  v8 = *(a1 + 48);
  *(a1 + 48) = (v8 + 2) & 0xFFF;

  *v5 = 0;
  os_unfair_lock_unlock((a1 + 67024));

  return v8;
}

void sub_6A48(_Unwind_Exception *a1)
{
  v6 = v4;

  *v3 = 0;
  os_unfair_lock_unlock((v2 + v5));

  _Unwind_Resume(a1);
}

void _HUDGPUTimeTrackerAddEncoder(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v32[0] = [v10 globalTraceObjectID];
  v31 = [v9 globalTraceObjectID];
  os_unfair_lock_lock((a1 + 67024));
  isCreatingEncoder();
  v12 = v11;
  *v11 = 1;
  v13 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v31);
  if (v13)
  {
    v14 = v13;
    v15 = v13[22];
    v16 = v13[23];
    if (v15 >= v16)
    {
      v18 = v13[21];
      v19 = 0x6F96F96F96F96F97 * ((v15 - v18) >> 3);
      v20 = v19 + 1;
      if ((v19 + 1) > 0xD20D20D20D20D2)
      {
        std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
      }

      v21 = 0x6F96F96F96F96F97 * ((v16 - v18) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x69069069069069)
      {
        v22 = 0xD20D20D20D20D2;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerEncoder>>((v13 + 21), v22);
      }

      v23 = 312 * v19;
      *(v23 + 304) = 0;
      *(v23 + 272) = 0u;
      *(v23 + 288) = 0u;
      *(v23 + 240) = 0u;
      *(v23 + 256) = 0u;
      *(v23 + 208) = 0u;
      *(v23 + 224) = 0u;
      *(v23 + 176) = 0u;
      *(v23 + 192) = 0u;
      *(v23 + 144) = 0u;
      *(v23 + 160) = 0u;
      *(v23 + 112) = 0u;
      *(v23 + 128) = 0u;
      *(v23 + 80) = 0u;
      *(v23 + 96) = 0u;
      *(v23 + 48) = 0u;
      *(v23 + 64) = 0u;
      *(v23 + 16) = 0u;
      *(v23 + 32) = 0u;
      *v23 = 0u;
      v17 = 312 * v19 + 312;
      v24 = v13[21];
      v25 = v13[22] - v24;
      v26 = 312 * v19 - v25;
      memcpy((v23 - v25), v24, v25);
      v27 = v14[21];
      v14[21] = v26;
      v14[22] = v17;
      v14[23] = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *(v15 + 304) = 0;
      *(v15 + 272) = 0u;
      *(v15 + 288) = 0u;
      *(v15 + 240) = 0u;
      *(v15 + 256) = 0u;
      *(v15 + 208) = 0u;
      *(v15 + 224) = 0u;
      *(v15 + 176) = 0u;
      *(v15 + 192) = 0u;
      *(v15 + 144) = 0u;
      *(v15 + 160) = 0u;
      *(v15 + 112) = 0u;
      *(v15 + 128) = 0u;
      *(v15 + 80) = 0u;
      *(v15 + 96) = 0u;
      *(v15 + 48) = 0u;
      *(v15 + 64) = 0u;
      *(v15 + 16) = 0u;
      *(v15 + 32) = 0u;
      *v15 = 0u;
      v17 = v15 + 312;
    }

    v14[22] = v17;
    v28 = (v17 - 312);
    *(v17 - 8) = 0;
    *(v17 - 24) = 0u;
    *(v17 - 40) = 0u;
    *(v17 - 56) = 0u;
    *(v17 - 72) = 0u;
    *(v17 - 88) = 0u;
    *(v17 - 104) = 0u;
    *(v17 - 120) = 0u;
    *(v17 - 136) = 0u;
    *(v17 - 152) = 0u;
    *(v17 - 168) = 0u;
    *(v17 - 184) = 0u;
    *(v17 - 200) = 0u;
    *(v17 - 216) = 0u;
    *(v17 - 232) = 0u;
    *(v17 - 248) = 0u;
    v28[2] = 0u;
    v28[3] = 0u;
    *v28 = 0u;
    v28[1] = 0u;
    *(v17 - 304) = HUDCurrentTimeInNs();
    *(v17 - 296) = HUDCurrentTimeInNs();
    *v28 = a4;
    *(v17 - 24) = v32[0];
    *(v17 - 288) = a5;
    *(v17 - 32) = *(v14 + 24);
    v30 = v14[21];
    v29 = v14[22];
    v32[2] = v32;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v14 + 16, v32)[3] = 0x6F96F96F96F96F97 * ((v29 - v30) >> 3) - 1;
  }

  *v12 = 0;
  os_unfair_lock_unlock((a1 + 67024));
}

id HUDGPUTimeTrackerCreateBlitEncder(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1 && (isCreatingEncoder(), *v10 != 1))
  {
    if (_HUDGPUTimeTrackerCanSampleBlitEncoder(a1, v8))
    {
      v13 = _HUDGPUTimeTrackerPatchBlitPassDescriptor(a1, v8);
      v11 = v9[2](v9, v8);
      _HUDGPUTimeTrackerAddEncoder(a1, v7, v11, 3, v13);
    }

    else
    {
      v11 = v9[2](v9, v8);
      _HUDGPUTimeTrackerAddEncoder(a1, v7, v11, 3, 0xFFFFFFFFLL);
    }
  }

  else
  {
    v11 = v9[2](v9, v8);
  }

  return v11;
}

uint64_t _HUDGPUTimeTrackerCanSampleBlitEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  for (i = 0; i != 4; ++i)
  {
    v5 = [v3 sampleBufferAttachments];
    v6 = [v5 objectAtIndexedSubscript:i];
    v7 = [v6 sampleBuffer];
    if (v7)
    {
      v8 = [v3 sampleBufferAttachments];
      v9 = [v8 objectAtIndexedSubscript:i];
      v10 = [v9 sampleBuffer];
      v11 = *(a1 + 40);

      if (v10 != v11)
      {
        *(a1 + 24) = 1;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (*(a1 + 32) && *(a1 + 27) == 1 && (*(a1 + 24) & 1) == 0 && *(a1 + 26) == 1)
  {
    v12 = *(a1 + 25);
    goto LABEL_14;
  }

LABEL_13:
  v12 = 0;
LABEL_14:

  return v12 & 1;
}

uint64_t _HUDGPUTimeTrackerPatchBlitPassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 67024));
  isCreatingEncoder();
  v5 = v4;
  *v4 = 1;
  if ((*(a1 + 48) - 4095) <= 0xFFFFFFFFFFFFEFFELL)
  {
    *(a1 + 48) = 0;
  }

  v6 = [v3 sampleBufferAttachments];
  v7 = [v6 objectAtIndexedSubscript:0];

  [v7 setStartOfEncoderSampleIndex:*(a1 + 48)];
  [v7 setEndOfEncoderSampleIndex:*(a1 + 48) + 1];
  [v7 setSampleBuffer:*(a1 + 40)];
  v8 = *(a1 + 48);
  *(a1 + 48) = (v8 + 2) & 0xFFF;

  *v5 = 0;
  os_unfair_lock_unlock((a1 + 67024));

  return v8;
}

void sub_7164(_Unwind_Exception *a1)
{
  v6 = v4;

  *v3 = 0;
  os_unfair_lock_unlock((v2 + v5));

  _Unwind_Resume(a1);
}

id HUDGPUTimeTrackerCreateResourceStateEncder(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9[2](v9, v8);
  if (a1)
  {
    isCreatingEncoder();
    if ((*v11 & 1) == 0)
    {
      _HUDGPUTimeTrackerAddEncoder(a1, v7, v10, 4, 0xFFFFFFFFLL);
    }

    v12 = v10;
  }

  else
  {
    v12 = v9[2](v9, v8);
  }

  v13 = v12;

  return v13;
}

id HUDGPUTimeTrackerCreateAccelerationStructureEncder(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1 && (isCreatingEncoder(), *v10 != 1))
  {
    if (_HUDGPUTimeTrackerCanSampleASEncoder(a1, v8))
    {
      v13 = _HUDGPUTimeTrackerPatchAccelerationStructurePassDescriptor(a1, v8);
      v11 = v9[2](v9, v8);
      _HUDGPUTimeTrackerAddEncoder(a1, v7, v11, 5, v13);
    }

    else
    {
      v11 = v9[2](v9, v8);
      _HUDGPUTimeTrackerAddEncoder(a1, v7, v11, 5, 0xFFFFFFFFLL);
    }
  }

  else
  {
    v11 = v9[2](v9, v8);
  }

  return v11;
}

uint64_t _HUDGPUTimeTrackerCanSampleASEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  for (i = 0; i != 4; ++i)
  {
    v5 = [v3 sampleBufferAttachments];
    v6 = [v5 objectAtIndexedSubscript:i];
    v7 = [v6 sampleBuffer];
    if (v7)
    {
      v8 = [v3 sampleBufferAttachments];
      v9 = [v8 objectAtIndexedSubscript:i];
      v10 = [v9 sampleBuffer];
      v11 = *(a1 + 40);

      if (v10 != v11)
      {
        *(a1 + 24) = 1;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (*(a1 + 32) && *(a1 + 27) == 1 && (*(a1 + 24) & 1) == 0 && *(a1 + 26) == 1)
  {
    v12 = *(a1 + 25);
    goto LABEL_14;
  }

LABEL_13:
  v12 = 0;
LABEL_14:

  return v12 & 1;
}

uint64_t _HUDGPUTimeTrackerPatchAccelerationStructurePassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 67024));
  isCreatingEncoder();
  v5 = v4;
  *v4 = 1;
  if ((*(a1 + 48) - 4095) <= 0xFFFFFFFFFFFFEFFELL)
  {
    *(a1 + 48) = 0;
  }

  v6 = [v3 sampleBufferAttachments];
  v7 = [v6 objectAtIndexedSubscript:0];

  [v7 setStartOfEncoderSampleIndex:*(a1 + 48)];
  [v7 setEndOfEncoderSampleIndex:*(a1 + 48) + 1];
  [v7 setSampleBuffer:*(a1 + 40)];
  v8 = *(a1 + 48);
  *(a1 + 48) = (v8 + 2) & 0xFFF;

  *v5 = 0;
  os_unfair_lock_unlock((a1 + 67024));

  return v8;
}

void sub_767C(_Unwind_Exception *a1)
{
  v6 = v4;

  *v3 = 0;
  os_unfair_lock_unlock((v2 + v5));

  _Unwind_Resume(a1);
}

void HUDGPUTimeTrackerEndEncoding(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    isCreatingEncoder();
    if ((*v3 & 1) == 0)
    {
      _HUDGPUTimeTrackerEndEncoder(a1, v4);
    }
  }
}

uint64_t _HUDGPUTimeTrackerEndEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = [v3 globalTraceObjectID];
  v4 = [v3 commandBuffer];
  v5 = [v4 globalTraceObjectID];

  v16 = v5;
  os_unfair_lock_lock((a1 + 67024));
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v16);
  if (v6)
  {
    v7 = v6;
    v8 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(v6 + 16, &v17);
    if (v8)
    {
      v9 = v7[21] + 312 * v8[3];
      *(v9 + 16) = HUDCurrentTimeInNs();
      if (*(a1 + 26) == 1 && *(v9 + 280) != 1)
      {
        v10 = [v3 label];
        if (v10)
        {
          v11 = [v3 label];
          v12 = [v11 length];

          if (v12)
          {
            v13 = [v3 label];
            *(v9 + 296) = _HUDGPUTimeTrackerAddLabel(a1, v14, v13, v7[5], 1u);
          }
        }
      }
    }
  }

  os_unfair_lock_unlock((a1 + 67024));

  return 0;
}

void sub_7884(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

void HUDGPUTimeTrackerMarkFrameBoundary(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock((a1 + 67024));
  v2 = *(a1 + 68328);
  if (v2 == 1)
  {
    v4 = dispatch_time(0, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __HUDGPUTimeTrackerMarkFrameBoundary_block_invoke_2;
    v12[3] = &__block_descriptor_40_e5_v8__0l;
    v12[4] = a1;
    dispatch_after(v4, &_dispatch_main_q, v12);
  }

  else if (v2 == 2)
  {
    v3 = dispatch_time(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __HUDGPUTimeTrackerMarkFrameBoundary_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_after(v3, &_dispatch_main_q, block);
    *(a1 + 68328) = 0;
  }

  ++*a1;
  v5 = *(a1 + 72);
  while (v5)
  {
    if (*(v5 + 88))
    {
      goto LABEL_12;
    }

    if (*(v5 + 100))
    {
      v6 = *a1;
LABEL_11:
      *(v5 + 40) = v6;
LABEL_12:
      v5 = *v5;
    }

    else
    {
      v7 = *(v5 + 48);
      if (v7 >= 4)
      {
        v6 = *a1;
        v9 = *a1 >= v7;
        v8 = *a1 - v7;
        v9 = v8 != 0 && v9 && v8 >= 6;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      v5 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::erase((a1 + 56), v5);
    }
  }

  os_unfair_lock_unlock((a1 + 67024));
  if (*(HUDGetGlobalConfig() + 37))
  {
    v10 = *a1 - 1;
    v11 = HUDCurrentTimeInNs();
    if (*(a1 + 8) < v10)
    {
      *(a1 + 8) = v10;
      _HUDGPUTimeTrackerWrapupFrameForPresentedDrawable(a1, v10, v11);
    }
  }
}

void __HUDGPUTimeTrackerMarkFrameBoundary_block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 68336) endScope];
  v2 = *(a1 + 32);
  v3 = *(v2 + 68336);
  *(v2 + 68336) = 0;
}

id __HUDGPUTimeTrackerMarkFrameBoundary_block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 68336) beginScope];
  *(*(a1 + 32) + 68328) = 2;
  return result;
}

void HUDGPUTimeTrackerFramePresented(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 8) < a2)
    {
      *(a1 + 8) = a2;
      _HUDGPUTimeTrackerWrapupFrameForPresentedDrawable(a1, a2, a3);
    }
  }
}

const char *HUDGPUTimeTrackerGetRecordName(int a1)
{
  if (a1 > 58)
  {
    return "Unknown";
  }

  _HUDGPUTimeTrackerGetMetricDescriptors();
  v3 = _HUDGPUTimeTrackerGetMetricDescriptors(void)::_HUDGPUTimeTrackerMetricIdentifiers[9 * a1];

  return [(__CFString *)v3 UTF8String];
}

uint64_t HUDGPUTimeTrackerGetTotalCompilerStatistics(uint64_t a1)
{
  if (a1)
  {
    return a1 + 67032;
  }

  else
  {
    return 0;
  }
}

void HUDGPUTimeTrackerMarkCommandBuffer(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v8 = [v5 globalTraceObjectID];
    os_unfair_lock_lock((a1 + 67024));
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v8);
    if (v7)
    {
      *(v7 + 24) = a3;
    }

    os_unfair_lock_unlock((a1 + 67024));
  }
}

void HUDGPUTimeTrackerMarkEncoder(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 commandBuffer];
    if (v7)
    {
      v12 = [v6 globalTraceObjectID];
      v11 = [v7 globalTraceObjectID];
      os_unfair_lock_lock((a1 + 67024));
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v11);
      if (v8)
      {
        v9 = v8;
        v10 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(v8 + 16, &v12);
        if (v10)
        {
          *(v9[21] + 312 * v10[3] + 280) = a3;
        }
      }

      os_unfair_lock_unlock((a1 + 67024));
    }
  }
}

void sub_7D40(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v3 + v4));

  _Unwind_Resume(a1);
}

id HUDGPUTimeTrackerGetFrameCaptureScopeAndStartCapture(id a1)
{
  if (a1)
  {
    v1 = a1;
    if (MTLHudIsCaptureEnabled())
    {
      *(v1 + 17082) = 1;
      v2 = +[MTLCaptureManager sharedCaptureManager];
      v3 = MTLCreateSystemDefaultDevice();
      v4 = [v2 newCaptureScopeWithDevice:v3];
      v5 = *(v1 + 8542);
      *(v1 + 8542) = v4;

      a1 = *(v1 + 8542);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void _HUDGPUTimeTrackerEnumerateCommonObjectRecords(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = 0;
  v7 = 296;
  if (a2 == 1)
  {
    v7 = 376;
  }

  v8 = a1 + v7;
  do
  {
    v11 = *(v8 + v6);
    if (!v11)
    {
      break;
    }

    v9 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 176), &v11);
    v10 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 96), &v11);
    if (v9 && v10)
    {
      (*(v5 + 2))(v5, v10[6], *(v10 + 10), v9 + 3);
    }

    v6 += 8;
  }

  while (v6 != 80);
}

void HUDGPUTimeTrackerEnumerateTopCommandBufferRecords(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = v3;
    os_unfair_lock_lock(a1 + 16756);
    _HUDGPUTimeTrackerEnumerateCommonObjectRecords(a1, 0, v4);
    os_unfair_lock_unlock(a1 + 16756);
    v3 = v4;
  }
}

void sub_7F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 16756);

  _Unwind_Resume(a1);
}

void HUDGPUTimeTrackerEnumerateTopEncoderRecords(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = v3;
    os_unfair_lock_lock(a1 + 16756);
    _HUDGPUTimeTrackerEnumerateCommonObjectRecords(a1, 1, v4);
    os_unfair_lock_unlock(a1 + 16756);
    v3 = v4;
  }
}

void sub_8004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 16756);

  _Unwind_Resume(a1);
}

uint64_t HUDGPUTimeTrackerTopCommandBufferRecordsCount(uint64_t result)
{
  if (result)
  {
    v1 = 0;
    v2 = result + 296;
    result = 10;
    while (v1 != 10)
    {
      if (!*(v2 + 8 * v1++))
      {
        return v1 - 1;
      }
    }
  }

  return result;
}

uint64_t HUDGPUTimeTrackerTopEncoderRecordsCount(uint64_t result)
{
  if (result)
  {
    v1 = 0;
    v2 = result + 376;
    result = 10;
    while (v1 != 10)
    {
      if (!*(v2 + 8 * v1++))
      {
        return v1 - 1;
      }
    }
  }

  return result;
}

uint64_t HUDGPUTimeTrackerGetTargetRebindingInsightContext(uint64_t a1)
{
  if (a1)
  {
    return a1 + 67424;
  }

  else
  {
    return 0;
  }
}

void HUDGPUTimeTrackerMTL4CommandBufferCreate(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __HUDGPUTimeTrackerMTL4CommandBufferCreate_block_invoke;
    block[3] = &unk_68BB8;
    v5 = v3;
    v25 = v5;
    if (HUDGPUTimeTrackerMTL4CommandBufferCreate::onceToken != -1)
    {
      dispatch_once(&HUDGPUTimeTrackerMTL4CommandBufferCreate::onceToken, block);
    }

    v6 = v5;
    v7 = v6;
    if (_mtl4HasGlobalTraceObjectId)
    {
      v8 = [v6 globalTraceObjectID];
    }

    else
    {
      v8 = v6;
    }

    v23 = v8;
    os_unfair_lock_lock(a1 + 16756);
    if (!std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(&a1[14]._os_unfair_lock_opaque, &v23))
    {
      v10 = v23;
      v11 = *&a1->_os_unfair_lock_opaque;
      v12 = v11;
      memset(v14, 0, sizeof(v14));
      v13 = 0u;
      v15 = 1;
      memset(v17, 0, sizeof(v17));
      v16 = 0u;
      v18 = 1065353216;
      memset(v21, 0, sizeof(v21));
      v20 = 0u;
      *__p = 0u;
      v22 = 1065353216;
      v26 = &v23;
      v9 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&a1[14]._os_unfair_lock_opaque, &v23);
      HUDGPUTimeTrackerCommandBuffer::operator=((v9 + 3), &v10);
      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v21);
      objc_destroyWeak(&v20 + 1);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v17);
    }

    os_unfair_lock_unlock(a1 + 16756);
  }
}

uint64_t __HUDGPUTimeTrackerMTL4CommandBufferCreate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    _mtl4HasGlobalTraceObjectId = 1;
  }

  return result;
}

void _HUDGPUTimeTrackerMTL4CommandBufferComplete(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2;
  [v5 GPUStartTime];
  v7 = v6;
  [v5 GPUEndTime];
  v9 = v8;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x4812000000;
  v11[3] = __Block_byref_object_copy__439;
  v11[4] = __Block_byref_object_dispose__440;
  v11[5] = &unk_5D621;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<MTL4CommandBufferCommit>::__init_with_size[abi:ne200100]<MTL4CommandBufferCommit*,MTL4CommandBufferCommit*>(&__p, *a3, a3[1], (a3[1] - *a3) >> 4);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = ___Z43_HUDGPUTimeTrackerMTL4CommandBufferCompleteP17HUDGPUTimeTrackerPU29objcproto18MTL4CommitFeedback11objc_objectRKNSt3__16vectorI23MTL4CommandBufferCommitNS3_9allocatorIS5_EEEE_block_invoke;
  v10[3] = &unk_68BE0;
  v10[4] = v11;
  v10[5] = a1;
  v10[6] = (v7 * 1000000000.0);
  v10[7] = (v9 * 1000000000.0);
  HUDDispatchQueueAsync(v10);
  _Block_object_dispose(v11, 8);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_8408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__439(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__440(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___Z43_HUDGPUTimeTrackerMTL4CommandBufferCompleteP17HUDGPUTimeTrackerPU29objcproto18MTL4CommitFeedback11objc_objectRKNSt3__16vectorI23MTL4CommandBufferCommitNS3_9allocatorIS5_EEEE_block_invoke(void *a1)
{
  v23 = a1[5];
  os_unfair_lock_lock(v23 + 16756);
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 48);
  for (i = *(v2 + 56); v3 != i; v3 += 16)
  {
    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1[5] + 56), v3);
    if (v4)
    {
      v25 = *(v3 + 8);
      v5 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(v4 + 25, &v25);
      if (v5)
      {
        v6 = v5;
        v7 = a1[5];
        v5[9] = a1[6];
        v5[10] = a1[7];
        if (*(v7 + 68384))
        {
          v9 = v5[21];
          v8 = v5[22];
          if (v8 != v9)
          {
            v10 = 0;
            v11 = 32;
            do
            {
              v12 = v9 + 312 * v10;
              v13 = *(v12 + 24);
              if (v13 != 0xFFFFFFFFLL)
              {
                if (*v12 == 1)
                {
                  v14 = 4;
                }

                else
                {
                  v14 = 2;
                }

                v15 = [*(a1[5] + 68384) resolveCounterRange:{v13, v14}];
                v16 = [v15 bytes];
                v17 = a1[5] + 0x10000;
                if (v16)
                {
                  v18 = (v9 + v11);
                  v19 = v14;
                  do
                  {
                    v21 = *v16++;
                    v20 = v21;
                    v22 = *(v17 + 2864);
                    if (v22)
                    {
                      v20 = (v20 / (v22 / 1000000000.0));
                    }

                    *v18++ = v20;
                    --v19;
                  }

                  while (v19);
                }

                [*(v17 + 2848) invalidateCounterRange:{v13, v14}];

                v9 = v6[21];
                v8 = v6[22];
              }

              ++v10;
              v11 += 312;
            }

            while (v10 < 0x6F96F96F96F96F97 * ((v8 - v9) >> 3));
          }
        }
      }
    }
  }

  os_unfair_lock_unlock(v23 + 16756);
}

id HUDGPUTimeTrackerMTL4CommandBufferCommit(uint64_t a1, void *a2, id *a3, unint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 67024));
    *(HUDGetGlobalConfig() + 28) = 1;
    if (!v10)
    {
      v10 = objc_opt_new();
    }

    v42 = 0;
    v43 = &v42;
    v44 = 0x4812000000;
    v45 = __Block_byref_object_copy__439;
    v46 = __Block_byref_object_dispose__440;
    v47 = &unk_5D621;
    v49 = 0;
    v50 = 0;
    __p = 0;
    std::vector<MTL4CommandBufferCommit>::reserve(&__p, a4);
    for (; a4; --a4)
    {
      v11 = *a3;
      v12 = v11;
      if (_mtl4HasGlobalTraceObjectId)
      {
        v13 = [v11 globalTraceObjectID];
      }

      else
      {
        v13 = v11;
      }

      v41 = v13;
      v14 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v41);
      if (v14)
      {
        v15 = v14;
        if (v14[7])
        {
          v16 = v43;
          v17 = *(v14 + 26);
          v19 = v43[7];
          v18 = v43[8];
          if (v19 >= v18)
          {
            v21 = v43[6];
            v22 = v19 - v21;
            v23 = (v19 - v21) >> 4;
            v24 = v23 + 1;
            if ((v23 + 1) >> 60)
            {
              std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
            }

            v25 = v18 - v21;
            if (v25 >> 3 > v24)
            {
              v24 = v25 >> 3;
            }

            v26 = v25 >= 0x7FFFFFFFFFFFFFF0;
            v27 = 0xFFFFFFFFFFFFFFFLL;
            if (!v26)
            {
              v27 = v24;
            }

            if (v27)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<MTL4CommandBufferCommit>>((v43 + 6), v27);
            }

            v28 = v23;
            v29 = 16 * v23;
            *v29 = v41;
            *(v29 + 8) = v17;
            v20 = 16 * v23 + 16;
            v30 = (v29 - 16 * v28);
            memcpy(v30, v21, v22);
            v31 = v16[6];
            v16[6] = v30;
            v16[7] = v20;
            v16[8] = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *v19 = v41;
            *(v19 + 8) = v17;
            v20 = v19 + 16;
          }

          v16[7] = v20;
          if (*(a1 + 26) == 1 && *(v15 + 24) != 1)
          {
            v32 = [*a3 label];
            if (v32)
            {
              v33 = [*a3 label];
              v34 = [v33 length];

              if (v34)
              {
                v35 = [*a3 label];
                v15[4] = _HUDGPUTimeTrackerAddLabel(a1, v36, v35, v15[5], 0);
              }
            }
          }

          v40 = *(v15 + 26);
          v51 = &v40;
          v37 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 25, &v40);
          _HUDGPUTimeTrackerCommandBufferSnapshot((v15 + 3), (v37 + 3));
          v15[7] = 0;
          v15[22] = v15[21];
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(v15 + 16);
          v15[14] = 0;
          v15[15] = 0;
          ++*(v15 + 26);
        }
      }

      ++a3;
    }

    if (v43[6] != v43[7])
    {
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = __HUDGPUTimeTrackerMTL4CommandBufferCommit_block_invoke;
      v39[3] = &unk_68C08;
      v39[4] = &v42;
      v39[5] = a1;
      [v10 addFeedbackHandler:v39];
    }

    v10 = v10;
    _Block_object_dispose(&v42, 8);
    if (__p)
    {
      v49 = __p;
      operator delete(__p);
    }

    os_unfair_lock_unlock((a1 + 67024));
    a1 = v10;
  }

  return a1;
}

void sub_8A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  _Block_object_dispose(&a19, 8);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  os_unfair_lock_unlock(v26 + 16756);

  _Unwind_Resume(a1);
}

void *std::vector<MTL4CommandBufferCommit>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTL4CommandBufferCommit>>(result, a2);
    }

    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void HUDGPUTimeTrackerMTL4CommandBufferBegin(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __HUDGPUTimeTrackerMTL4CommandBufferBegin_block_invoke;
  block[3] = &unk_68BB8;
  v7 = v5;
  v21 = v7;
  if (HUDGPUTimeTrackerMTL4CommandBufferBegin::onceToken == -1)
  {
    if (!a1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    dispatch_once(&HUDGPUTimeTrackerMTL4CommandBufferBegin::onceToken, block);
    if (!a1)
    {
      goto LABEL_17;
    }
  }

  v8 = v7;
  v9 = v8;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v10 = [v8 globalTraceObjectID];
  }

  else
  {
    v10 = v8;
  }

  v19 = v10;
  os_unfair_lock_lock((a1 + 67024));
  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v19);
  if (v11 || (os_unfair_lock_unlock((a1 + 67024)), HUDGPUTimeTrackerMTL4CommandBufferCreate(a1, v9), os_unfair_lock_lock((a1 + 67024)), (v11 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v19)) != 0))
  {
    v12 = v11;
    if (*(a1 + 26) == 1 && *(a1 + 27) == 1 && *(a1 + 25) == 1 && !*(a1 + 68384))
    {
      v13 = [v9 device];
      *(a1 + 25) = _HUDMTL4CounterSetup(a1, v13);
    }

    v14 = v6;
    v15 = v14;
    if (_mtl4HasGlobalTraceObjectId)
    {
      v16 = [v14 globalTraceObjectID];
    }

    else
    {
      v16 = v14;
    }

    v18 = v16;
    v12[7] = HUDCurrentTimeInNs();
    v12[14] = v16;
    objc_storeWeak(v12 + 24, v15);
    v17 = v19;
    v22 = &v18;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 68344), &v18)[3] = v17;
    os_unfair_lock_unlock((a1 + 67024));
  }

LABEL_17:
}

uint64_t __HUDGPUTimeTrackerMTL4CommandBufferBegin_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    _mtl4HasGlobalTraceObjectId = 1;
  }

  return result;
}

uint64_t _HUDMTL4CounterSetup(uint64_t a1, void *a2)
{
  v3 = (a1 + 0x10000);
  v4 = a2;
  if (!v3[356])
  {
    if (*(a1 + 25) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v6 = objc_opt_new();
    [v6 setEntryCount:4096];
    [v6 setType:1];
    v12 = 0;
    v7 = [v4 newCounterHeapWithDescriptor:v6 error:&v12];
    v8 = v12;
    v9 = v3[356];
    v3[356] = v7;

    if (v8)
    {
      v10 = [v8 localizedDescription];
      NSLog(@"[libMTLHud] Failed to allocate MTL4CounterHeap: %@", v10);
    }

    v3[357] = 0;
    v3[358] = [v4 queryTimestampFrequency];
  }

  v5 = 1;
LABEL_9:

  return v5;
}

void sub_8F68(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void HUDGPUTimeTrackerMTL4CommandBufferEnd(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    v6 = v5;
    if (_mtl4HasGlobalTraceObjectId)
    {
      v7 = [v5 globalTraceObjectID];
    }

    else
    {
      v7 = v5;
    }

    v13 = v7;
    os_unfair_lock_lock((a1 + 67024));
    v8 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v13);
    if (v8)
    {
      v9 = v8;
      v8[8] = HUDCurrentTimeInNs();
      WeakRetained = objc_loadWeakRetained(v9 + 24);

      if (WeakRetained)
      {
        v11 = objc_loadWeakRetained(v9 + 24);
        v9[15] = [v11 allocatedSize];
      }

      v12 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 68344), v9 + 14);
      if (v12)
      {
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase((a1 + 68344), v12);
      }
    }

    os_unfair_lock_unlock((a1 + 67024));
  }
}

void sub_90A0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v1 + v4));

  _Unwind_Resume(a1);
}

id HUDGPUTimeTrackerCreateMTL4RenderEncder(os_unfair_lock_s *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1 && (isCreatingEncoder(), *v10 != 1))
  {
    v12 = v10;
    os_unfair_lock_lock(a1 + 16756);
    *v12 = 1;
    v11 = v9[2](v9, v8);
    _HUDGPUTimeTrackerAddMTL4RenderEncoder(a1, v7, v11, 1, 0xFFFFFFFFLL, v8);
    *v12 = 0;
    os_unfair_lock_unlock(a1 + 16756);
  }

  else
  {
    v11 = v9[2](v9, v8);
  }

  return v11;
}

void sub_91EC(_Unwind_Exception *a1)
{
  *v5 = 0;
  os_unfair_lock_unlock((v4 + v7));

  _Unwind_Resume(a1);
}

void _HUDGPUTimeTrackerAddMTL4RenderEncoder(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a6;
  v14 = v12;
  v15 = v14;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v16 = [v14 globalTraceObjectID];
  }

  else
  {
    v16 = v14;
  }

  v42[0] = v16;
  v17 = v11;
  v18 = v17;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v19 = [v17 globalTraceObjectID];
  }

  else
  {
    v19 = v17;
  }

  v41 = v19;
  v20 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v41);
  if (v20)
  {
    v21 = v20;
    v22 = v20[22];
    v23 = v20[23];
    if (v22 >= v23)
    {
      v25 = v20[21];
      v26 = 0x6F96F96F96F96F97 * ((v22 - v25) >> 3);
      v27 = v26 + 1;
      if ((v26 + 1) > 0xD20D20D20D20D2)
      {
        std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
      }

      v28 = 0x6F96F96F96F96F97 * ((v23 - v25) >> 3);
      if (2 * v28 > v27)
      {
        v27 = 2 * v28;
      }

      if (v28 >= 0x69069069069069)
      {
        v29 = 0xD20D20D20D20D2;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerEncoder>>((v20 + 21), v29);
      }

      v30 = 312 * v26;
      *(v30 + 304) = 0;
      *(v30 + 272) = 0u;
      *(v30 + 288) = 0u;
      *(v30 + 240) = 0u;
      *(v30 + 256) = 0u;
      *(v30 + 208) = 0u;
      *(v30 + 224) = 0u;
      *(v30 + 176) = 0u;
      *(v30 + 192) = 0u;
      *(v30 + 144) = 0u;
      *(v30 + 160) = 0u;
      *(v30 + 112) = 0u;
      *(v30 + 128) = 0u;
      *(v30 + 80) = 0u;
      *(v30 + 96) = 0u;
      *(v30 + 48) = 0u;
      *(v30 + 64) = 0u;
      *(v30 + 16) = 0u;
      *(v30 + 32) = 0u;
      *v30 = 0u;
      v24 = 312 * v26 + 312;
      v31 = v20[21];
      v32 = v20[22] - v31;
      v33 = 312 * v26 - v32;
      memcpy((v30 - v32), v31, v32);
      v34 = v21[21];
      v21[21] = v33;
      v21[22] = v24;
      v21[23] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *(v22 + 304) = 0;
      *(v22 + 272) = 0u;
      *(v22 + 288) = 0u;
      *(v22 + 240) = 0u;
      *(v22 + 256) = 0u;
      *(v22 + 208) = 0u;
      *(v22 + 224) = 0u;
      *(v22 + 176) = 0u;
      *(v22 + 192) = 0u;
      *(v22 + 144) = 0u;
      *(v22 + 160) = 0u;
      *(v22 + 112) = 0u;
      *(v22 + 128) = 0u;
      *(v22 + 80) = 0u;
      *(v22 + 96) = 0u;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      v24 = v22 + 312;
    }

    v21[22] = v24;
    v35 = (v24 - 312);
    *(v24 - 8) = 0;
    *(v24 - 24) = 0u;
    *(v24 - 40) = 0u;
    *(v24 - 56) = 0u;
    *(v24 - 72) = 0u;
    *(v24 - 88) = 0u;
    *(v24 - 104) = 0u;
    *(v24 - 120) = 0u;
    *(v24 - 136) = 0u;
    *(v24 - 152) = 0u;
    *(v24 - 168) = 0u;
    *(v24 - 184) = 0u;
    *(v24 - 200) = 0u;
    *(v24 - 216) = 0u;
    *(v24 - 232) = 0u;
    *(v24 - 248) = 0u;
    v35[2] = 0u;
    v35[3] = 0u;
    *v35 = 0u;
    v35[1] = 0u;
    *(v24 - 304) = HUDCurrentTimeInNs();
    *(v24 - 296) = HUDCurrentTimeInNs();
    *v35 = a4;
    *(v24 - 24) = v42[0];
    v36 = (v24 - 288);
    *(v24 - 288) = a5;
    v38 = v21[21];
    v37 = v21[22];
    v42[2] = v42;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v21 + 16, v42)[3] = 0x6F96F96F96F96F97 * ((v37 - v38) >> 3) - 1;
    if (*(HUDGetGlobalConfig() + 3) == 1)
    {
      HUDTargetRebindingInsightEncoderInitRender(v24 - 248, v13);
    }

    if (a1)
    {
      if (*(a1 + 26) == 1 && *(a1 + 27) == 1 && *(a1 + 25) == 1)
      {
        v39 = a1 + 0x10000;
        if (*(v39 + 2848))
        {
          v40 = *(v39 + 2856);
          if ((v40 - 4093) <= 0xFFFFFFFFFFFFEFFELL)
          {
            v40 = 0;
            *(v39 + 2856) = 0;
          }

          *v36 = v40;
          [v15 writeTimestampWithGranularity:0 afterStage:1 intoHeap:? atIndex:?];
          [v15 writeTimestampWithGranularity:0 afterStage:2 intoHeap:*(v39 + 2848) atIndex:*v36 + 2];
          *(v39 + 2856) = (*(v39 + 2856) + 4) & 0xFFF;
        }
      }
    }
  }
}

id HUDGPUTimeTrackerCreateMTL4ComputeEncoder(os_unfair_lock_s *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && (isCreatingEncoder(), *v7 != 1))
  {
    v9 = v7;
    os_unfair_lock_lock(a1 + 16756);
    *v9 = 1;
    v8 = v6[2](v6);
    _HUDGPUTimeTrackerAddMTL4ComputeEncoder(a1, v5, v8, 2, 0xFFFFFFFFLL);
    *v9 = 0;
    os_unfair_lock_unlock(a1 + 16756);
  }

  else
  {
    v8 = v6[2](v6);
  }

  return v8;
}

void sub_9714(_Unwind_Exception *a1)
{
  *v4 = 0;
  os_unfair_lock_unlock((v3 + v6));

  _Unwind_Resume(a1);
}

void _HUDGPUTimeTrackerAddMTL4ComputeEncoder(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v12 = [v10 globalTraceObjectID];
  }

  else
  {
    v12 = v10;
  }

  v36[0] = v12;
  v13 = v9;
  v14 = v13;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v15 = [v13 globalTraceObjectID];
  }

  else
  {
    v15 = v13;
  }

  v35 = v15;
  v16 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v35);
  if (v16)
  {
    v17 = v16;
    v18 = v16[22];
    v19 = v16[23];
    if (v18 >= v19)
    {
      v21 = v16[21];
      v22 = 0x6F96F96F96F96F97 * ((v18 - v21) >> 3);
      v23 = v22 + 1;
      if ((v22 + 1) > 0xD20D20D20D20D2)
      {
        std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
      }

      v24 = 0x6F96F96F96F96F97 * ((v19 - v21) >> 3);
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x69069069069069)
      {
        v25 = 0xD20D20D20D20D2;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerEncoder>>((v16 + 21), v25);
      }

      v26 = 312 * v22;
      *(v26 + 304) = 0;
      *(v26 + 272) = 0u;
      *(v26 + 288) = 0u;
      *(v26 + 240) = 0u;
      *(v26 + 256) = 0u;
      *(v26 + 208) = 0u;
      *(v26 + 224) = 0u;
      *(v26 + 176) = 0u;
      *(v26 + 192) = 0u;
      *(v26 + 144) = 0u;
      *(v26 + 160) = 0u;
      *(v26 + 112) = 0u;
      *(v26 + 128) = 0u;
      *(v26 + 80) = 0u;
      *(v26 + 96) = 0u;
      *(v26 + 48) = 0u;
      *(v26 + 64) = 0u;
      *(v26 + 16) = 0u;
      *(v26 + 32) = 0u;
      *v26 = 0u;
      v20 = 312 * v22 + 312;
      v27 = v16[21];
      v28 = v16[22] - v27;
      v29 = 312 * v22 - v28;
      memcpy((v26 - v28), v27, v28);
      v30 = v17[21];
      v17[21] = v29;
      v17[22] = v20;
      v17[23] = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *(v18 + 304) = 0;
      *(v18 + 272) = 0u;
      *(v18 + 288) = 0u;
      *(v18 + 240) = 0u;
      *(v18 + 256) = 0u;
      *(v18 + 208) = 0u;
      *(v18 + 224) = 0u;
      *(v18 + 176) = 0u;
      *(v18 + 192) = 0u;
      *(v18 + 144) = 0u;
      *(v18 + 160) = 0u;
      *(v18 + 112) = 0u;
      *(v18 + 128) = 0u;
      *(v18 + 80) = 0u;
      *(v18 + 96) = 0u;
      *(v18 + 48) = 0u;
      *(v18 + 64) = 0u;
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0u;
      *v18 = 0u;
      v20 = v18 + 312;
    }

    v17[22] = v20;
    v31 = (v20 - 312);
    *(v20 - 8) = 0;
    *(v20 - 24) = 0u;
    *(v20 - 40) = 0u;
    *(v20 - 56) = 0u;
    *(v20 - 72) = 0u;
    *(v20 - 88) = 0u;
    *(v20 - 104) = 0u;
    *(v20 - 120) = 0u;
    *(v20 - 136) = 0u;
    *(v20 - 152) = 0u;
    *(v20 - 168) = 0u;
    *(v20 - 184) = 0u;
    *(v20 - 200) = 0u;
    *(v20 - 216) = 0u;
    *(v20 - 232) = 0u;
    *(v20 - 248) = 0u;
    v31[2] = 0u;
    v31[3] = 0u;
    *v31 = 0u;
    v31[1] = 0u;
    *(v20 - 304) = HUDCurrentTimeInNs();
    *(v20 - 296) = HUDCurrentTimeInNs();
    *v31 = a4;
    *(v20 - 24) = v36[0];
    *(v20 - 288) = a5;
    v33 = v17[21];
    v32 = v17[22];
    v36[2] = v36;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v17 + 16, v36)[3] = 0x6F96F96F96F96F97 * ((v32 - v33) >> 3) - 1;
    if (a1 && *(a1 + 26) == 1 && *(a1 + 27) == 1 && *(a1 + 25) == 1 && *(a1 + 68384))
    {
      if ((*(a1 + 68392) - 4095) >= 0xFFFFFFFFFFFFEFFFLL)
      {
        v34 = *(a1 + 48);
      }

      else
      {
        v34 = 0;
        *(a1 + 48) = 0;
      }

      *(v20 - 288) = v34;
      [v11 writeTimestampWithGranularity:0 intoHeap:? atIndex:?];
      *(a1 + 68392) = (*(a1 + 68392) + 2) & 0xFFF;
    }
  }
}

id HUDGPUTimeTrackerCreateMTL4MLEncoder(os_unfair_lock_s *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && (isCreatingEncoder(), *v7 != 1))
  {
    v9 = v7;
    os_unfair_lock_lock(a1 + 16756);
    *v9 = 1;
    v8 = v6[2](v6);
    _HUDGPUTimeTrackerAddMTL4MLEncoder(a1, v5, v8, 6, 0xFFFFFFFFLL);
    *v9 = 0;
    os_unfair_lock_unlock(a1 + 16756);
  }

  else
  {
    v8 = v6[2](v6);
  }

  return v8;
}

void sub_9BDC(_Unwind_Exception *a1)
{
  *v4 = 0;
  os_unfair_lock_unlock((v3 + v6));

  _Unwind_Resume(a1);
}

void _HUDGPUTimeTrackerAddMTL4MLEncoder(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v12 = [v10 globalTraceObjectID];
  }

  else
  {
    v12 = v10;
  }

  v35[0] = v12;
  v13 = v9;
  v14 = v13;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v15 = [v13 globalTraceObjectID];
  }

  else
  {
    v15 = v13;
  }

  v34 = v15;
  v16 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v34);
  if (v16)
  {
    v17 = v16;
    v18 = v16[22];
    v19 = v16[23];
    if (v18 >= v19)
    {
      v21 = v16[21];
      v22 = 0x6F96F96F96F96F97 * ((v18 - v21) >> 3);
      v23 = v22 + 1;
      if ((v22 + 1) > 0xD20D20D20D20D2)
      {
        std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
      }

      v24 = 0x6F96F96F96F96F97 * ((v19 - v21) >> 3);
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x69069069069069)
      {
        v25 = 0xD20D20D20D20D2;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerEncoder>>((v16 + 21), v25);
      }

      v26 = 312 * v22;
      *(v26 + 304) = 0;
      *(v26 + 272) = 0u;
      *(v26 + 288) = 0u;
      *(v26 + 240) = 0u;
      *(v26 + 256) = 0u;
      *(v26 + 208) = 0u;
      *(v26 + 224) = 0u;
      *(v26 + 176) = 0u;
      *(v26 + 192) = 0u;
      *(v26 + 144) = 0u;
      *(v26 + 160) = 0u;
      *(v26 + 112) = 0u;
      *(v26 + 128) = 0u;
      *(v26 + 80) = 0u;
      *(v26 + 96) = 0u;
      *(v26 + 48) = 0u;
      *(v26 + 64) = 0u;
      *(v26 + 16) = 0u;
      *(v26 + 32) = 0u;
      *v26 = 0u;
      v20 = 312 * v22 + 312;
      v27 = v16[21];
      v28 = v16[22] - v27;
      v29 = 312 * v22 - v28;
      memcpy((v26 - v28), v27, v28);
      v30 = v17[21];
      v17[21] = v29;
      v17[22] = v20;
      v17[23] = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *(v18 + 304) = 0;
      *(v18 + 272) = 0u;
      *(v18 + 288) = 0u;
      *(v18 + 240) = 0u;
      *(v18 + 256) = 0u;
      *(v18 + 208) = 0u;
      *(v18 + 224) = 0u;
      *(v18 + 176) = 0u;
      *(v18 + 192) = 0u;
      *(v18 + 144) = 0u;
      *(v18 + 160) = 0u;
      *(v18 + 112) = 0u;
      *(v18 + 128) = 0u;
      *(v18 + 80) = 0u;
      *(v18 + 96) = 0u;
      *(v18 + 48) = 0u;
      *(v18 + 64) = 0u;
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0u;
      *v18 = 0u;
      v20 = v18 + 312;
    }

    v17[22] = v20;
    v31 = (v20 - 312);
    *(v20 - 8) = 0;
    *(v20 - 24) = 0u;
    *(v20 - 40) = 0u;
    *(v20 - 56) = 0u;
    *(v20 - 72) = 0u;
    *(v20 - 88) = 0u;
    *(v20 - 104) = 0u;
    *(v20 - 120) = 0u;
    *(v20 - 136) = 0u;
    *(v20 - 152) = 0u;
    *(v20 - 168) = 0u;
    *(v20 - 184) = 0u;
    *(v20 - 200) = 0u;
    *(v20 - 216) = 0u;
    *(v20 - 232) = 0u;
    *(v20 - 248) = 0u;
    v31[2] = 0u;
    v31[3] = 0u;
    *v31 = 0u;
    v31[1] = 0u;
    *(v20 - 304) = HUDCurrentTimeInNs();
    *(v20 - 296) = HUDCurrentTimeInNs();
    *v31 = a4;
    *(v20 - 24) = v35[0];
    *(v20 - 288) = a5;
    v33 = v17[21];
    v32 = v17[22];
    v35[2] = v35;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v17 + 16, v35)[3] = 0x6F96F96F96F96F97 * ((v32 - v33) >> 3) - 1;
  }
}

void HUDGPOUTimeTrackerEndMTL4RenderEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    os_unfair_lock_lock((a1 + 67024));
    v4 = _HUDGPUTimeTrackerEndMTL4Encoder(a1, v7);
    v5 = v4;
    if (v4)
    {
      if (*(a1 + 26) == 1 && *(a1 + 27) == 1 && *(a1 + 25) == 1)
      {
        v6 = *(a1 + 68384);
        if (v6)
        {
          [v7 writeTimestampWithGranularity:0 afterStage:1 intoHeap:v6 atIndex:*(v4 + 24) + 1];
          [v7 writeTimestampWithGranularity:0 afterStage:2 intoHeap:*(a1 + 68384) atIndex:*(v5 + 24) + 3];
        }
      }
    }

    os_unfair_lock_unlock((a1 + 67024));
    v3 = v7;
  }
}

void sub_9FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock((v10 + v11));

  _Unwind_Resume(a1);
}

uint64_t _HUDGPUTimeTrackerEndMTL4Encoder(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v5 = [v3 globalTraceObjectID];
  }

  else
  {
    v5 = v3;
  }

  v22 = v5;
  v6 = [v4 commandAllocator];
  v7 = v6;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v8 = [v6 globalTraceObjectID];
  }

  else
  {
    v8 = v6;
  }

  v21 = v8;
  v9 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 68344), &v21);
  if (v9 && (v20 = v9[3], (v10 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v20)) != 0) && (v11 = v10, (v12 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(v10 + 16, &v22)) != 0))
  {
    v13 = v11[21] + 312 * v12[3];
    *(v13 + 16) = HUDCurrentTimeInNs();
    if (*(a1 + 26) == 1 && *(v13 + 280) != 1)
    {
      v14 = [v4 label];
      if (v14)
      {
        v15 = [v4 label];
        v16 = [v15 length];

        if (v16)
        {
          v17 = [v4 label];
          *(v13 + 296) = _HUDGPUTimeTrackerAddLabel(a1, v18, v17, v11[5], 1u);
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void HUDGPOUTimeTrackerEndMTL4ComputeEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    os_unfair_lock_lock((a1 + 67024));
    v4 = _HUDGPUTimeTrackerEndMTL4Encoder(a1, v6);
    if (v4)
    {
      if (*(a1 + 26) == 1 && *(a1 + 27) == 1 && *(a1 + 25) == 1)
      {
        v5 = *(a1 + 68384);
        if (v5)
        {
          [v6 writeTimestampWithGranularity:0 intoHeap:v5 atIndex:*(v4 + 24) + 1];
        }
      }
    }

    os_unfair_lock_unlock((a1 + 67024));
    v3 = v6;
  }
}

void sub_A2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 16756);

  _Unwind_Resume(a1);
}

void HUDGPOUTimeTrackerEndMTL4MLEncoder(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = v3;
    os_unfair_lock_lock(a1 + 16756);
    _HUDGPUTimeTrackerEndMTL4Encoder(a1, v4);
    os_unfair_lock_unlock(a1 + 16756);
    v3 = v4;
  }
}

void sub_A334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 16756);

  _Unwind_Resume(a1);
}

uint64_t _HUDCompilerStatisticsParseDict(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = [v7 objectForKeyedSubscript:MTLCompileTimeStatisticsKeyFunctionName];
  v11 = v10;
  if (v10 && ([v10 hasPrefix:@"libMTLHud"] & 1) == 0)
  {
    v13 = [v7 objectForKeyedSubscript:MTLCompileTimeStatisticsKeyTotal];
    v14 = [v13 longLongValue];
    v12 = v14 & ~(v14 >> 63);
    v19 = v12;
    v22 = v11;
    v15 = [v7 objectForKeyedSubscript:MTLCompileTimeStatisticsKeyCachedFunction];
    v21 = [v15 BOOLValue];

    v16 = [v7 objectForKeyedSubscript:MTLPipelinePerformanceKeyTemporaryRegisterCount];
    v20 = [v16 intValue];

    if (v9)
    {
      v9[2](v9, v8, &v19);
    }

    if (v13)
    {
      *(a3 + 64) += v12;
      v17 = 40;
    }

    else
    {
      v17 = 48;
      if (v21)
      {
        v17 = 56;
      }
    }

    ++*(a3 + v17);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,void *> *>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v8[2] = v4[2];
        HUDGPUTimeTrackerCommandBuffer::operator=(v8 + 3, v4 + 3);
        v10 = *v8;
        v11 = v8[2];
        v8[1] = v11;
        inserted = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__node_insert_multi_prepare(a1, v11, v8 + 2);
        std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__node_insert_multi_perform(a1, v8, inserted);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__emplace_multi<std::pair<unsigned long long const,HUDGPUTimeTrackerCommandBuffer> const&>();
  }
}

void sub_A638(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v2 + 25);
      objc_destroyWeak(v2 + 24);
      v4 = v2[21];
      if (v4)
      {
        v2[22] = v4;
        operator delete(v4);
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table((v2 + 16));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_AC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_ACC8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::pair<unsigned long long const,HUDGPUTimeTrackerCommandBuffer>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  std::unordered_map<unsigned long long,unsigned long>::unordered_map(a1 + 112, a2 + 112);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<HUDGPUTimeTrackerEncoder>::__init_with_size[abi:ne200100]<HUDGPUTimeTrackerEncoder*,HUDGPUTimeTrackerEncoder*>(a1 + 152, *(a2 + 152), *(a2 + 160), 0x6F96F96F96F96F97 * ((*(a2 + 160) - *(a2 + 152)) >> 3));
  objc_copyWeak((a1 + 176), (a2 + 176));
  std::unordered_map<unsigned long long,HUDGPUTimeTrackerCommandBuffer>::unordered_map(a1 + 184, a2 + 184);
  return a1;
}

void sub_ADAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 176));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 160) = v4;
    operator delete(v4);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v1 + 112);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<unsigned long long,unsigned long>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long> const&>(a1, i + 2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long> const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::vector<HUDGPUTimeTrackerEncoder>::__init_with_size[abi:ne200100]<HUDGPUTimeTrackerEncoder*,HUDGPUTimeTrackerEncoder*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<HUDGPUTimeTrackerEncoder>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_B384(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<HUDGPUTimeTrackerEncoder>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xD20D20D20D20D3)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerEncoder>>(a1, a2);
  }

  std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerEncoder>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xD20D20D20D20D3)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t std::unordered_map<unsigned long long,HUDGPUTimeTrackerCommandBuffer>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = (a2 + 16); ; std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,HUDGPUTimeTrackerCommandBuffer> const&>(a1, i + 2))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,HUDGPUTimeTrackerCommandBuffer> const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__construct_node_hash<std::pair<unsigned long long const,HUDGPUTimeTrackerCommandBuffer> const&>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_B7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_B850(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(a2 + 200);
    objc_destroyWeak((a2 + 192));
    v3 = *(a2 + 168);
    if (v3)
    {
      *(a2 + 176) = v3;
      operator delete(v3);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(a2 + 128);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void HUDGPUTimeTrackerFrameTimingDataStore::~HUDGPUTimeTrackerFrameTimingDataStore(HUDGPUTimeTrackerFrameTimingDataStore *this)
{
  for (i = 0; i != -96; i -= 24)
  {
    v3 = *(this + i + 600);
    if (v3)
    {
      *(this + i + 608) = v3;
      operator delete(v3);
    }
  }

  for (j = 0; j != -96; j -= 24)
  {
    v5 = *(this + j + 504);
    if (v5)
    {
      *(this + j + 512) = v5;
      operator delete(v5);
    }
  }

  for (k = 0; k != -168; k -= 24)
  {
    v7 = *(this + k + 408);
    if (v7)
    {
      *(this + k + 416) = v7;
      operator delete(v7);
    }
  }

  v8 = *(this + 30);
  if (v8)
  {
    *(this + 31) = v8;
    operator delete(v8);
  }

  v9 = *(this + 27);
  if (v9)
  {
    *(this + 28) = v9;
    operator delete(v9);
  }

  v10 = *(this + 24);
  if (v10)
  {
    *(this + 25) = v10;
    operator delete(v10);
  }

  v11 = *(this + 21);
  if (v11)
  {
    *(this + 22) = v11;
    operator delete(v11);
  }

  v12 = *(this + 18);
  if (v12)
  {
    *(this + 19) = v12;
    operator delete(v12);
  }

  v13 = *(this + 15);
  if (v13)
  {
    *(this + 16) = v13;
    operator delete(v13);
  }

  v14 = *(this + 12);
  if (v14)
  {
    *(this + 13) = v14;
    operator delete(v14);
  }

  v15 = *(this + 9);
  if (v15)
  {
    *(this + 10) = v15;
    operator delete(v15);
  }

  v16 = *(this + 6);
  if (v16)
  {
    *(this + 7) = v16;
    operator delete(v16);
  }

  v17 = *(this + 3);
  if (v17)
  {
    *(this + 4) = v17;
    operator delete(v17);
  }

  v18 = *this;
  if (*this)
  {
    *(this + 1) = v18;
    operator delete(v18);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::vector<HUDGPUTimeTrackerEncoder>::__assign_with_size[abi:ne200100]<HUDGPUTimeTrackerEncoder*,HUDGPUTimeTrackerEncoder*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6F96F96F96F96F97 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xD20D20D20D20D2)
    {
      v9 = 0x6F96F96F96F96F97 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x69069069069069)
      {
        v11 = 0xD20D20D20D20D2;
      }

      else
      {
        v11 = v10;
      }

      std::vector<HUDGPUTimeTrackerEncoder>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x6F96F96F96F96F97 * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,unsigned long>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 1);
        *(v8 + 1) = v9;
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__node_insert_multi_prepare(a1, v9, v8 + 2);
        std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_multi<std::pair<unsigned long long const,unsigned long> const&>();
  }
}

void sub_BEA8(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_C2DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HUDGPUTimeTrackerTopObjectHeapValue const&,HUDGPUTimeTrackerTopObjectHeapValue const&),HUDGPUTimeTrackerTopObjectHeapValue*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v21 = v4;
    v22 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 40 * (v6 >> 1));
    v11 = (a2 - 40);
    if ((*a3)(v10, (a2 - 40)))
    {
      v13 = v11[1];
      v18 = *v11;
      v19 = v13;
      v20 = *(v11 + 4);
      do
      {
        v14 = v10;
        v15 = *v10;
        v16 = v10[1];
        *(v11 + 4) = *(v10 + 4);
        *v11 = v15;
        v11[1] = v16;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 40 * v9);
        v11 = v14;
      }

      while (((*a3)(v10, &v18) & 1) != 0);
      result = *&v18;
      v17 = v19;
      *v14 = v18;
      v14[1] = v17;
      *(v14 + 4) = v20;
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__introsort<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = (a2 - 40);
  i = a1;
  while (1)
  {
    a1 = i;
    v10 = a2 - i;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - i) >> 3);
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(i, (i + 40), (a2 - 40));
          return;
        case 4:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(i, (i + 40), (i + 80));
          v61 = *(a2 - 32);
          v62 = *(i + 88);
          if (!(v61 | v62))
          {
            v61 = *v8;
            v62 = *(i + 80);
          }

          if (v61 > v62)
          {
            v63 = *(i + 80);
            v166 = *(i + 96);
            v64 = *(i + 112);
            v66 = *v8;
            v65 = *(a2 - 24);
            *(i + 112) = *(a2 - 8);
            *(i + 80) = v66;
            *(i + 96) = v65;
            *(a2 - 8) = v64;
            *v8 = v63;
            *(a2 - 24) = v166;
            v67 = *(i + 88);
            v68 = *(i + 48);
            if (!(v67 | v68))
            {
              v67 = *(i + 80);
              v68 = *(i + 40);
            }

            if (v67 > v68)
            {
              v69 = *(i + 72);
              v70 = *(i + 40);
              v71 = *(i + 96);
              *(i + 40) = *(i + 80);
              v72 = *(i + 56);
              *(i + 56) = v71;
              *(i + 72) = *(i + 112);
              *(i + 80) = v70;
              *(i + 96) = v72;
              *(i + 112) = v69;
              v73 = *(i + 48);
              v74 = *(i + 8);
              if (!(v73 | v74))
              {
                v73 = *(i + 40);
                v74 = *i;
              }

              if (v73 > v74)
              {
                v176 = *(i + 32);
                v157 = *i;
                v167 = *(i + 16);
                v75 = *(i + 56);
                *i = *(i + 40);
                *(i + 16) = v75;
                *(i + 32) = *(i + 72);
                *(i + 40) = v157;
                *(i + 56) = v167;
                *(i + 72) = v176;
              }
            }
          }

          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(i, i + 40, i + 80, i + 120, (a2 - 40));
          return;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v57 = *(a2 - 32);
        v58 = *(i + 8);
        if (!(v57 | v58))
        {
          v57 = *v8;
          v58 = *i;
        }

        if (v57 > v58)
        {
          v175 = *(i + 32);
          v156 = *i;
          v165 = *(i + 16);
          v59 = *v8;
          v60 = *(a2 - 24);
          *(i + 32) = *(a2 - 8);
          *i = v59;
          *(i + 16) = v60;
          *(a2 - 8) = v175;
          *v8 = v156;
          *(a2 - 24) = v165;
        }

        return;
      }
    }

    if (v10 <= 959)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return;
      }

      v92 = (v11 - 2) >> 1;
      v93 = v92;
      while (1)
      {
        v94 = v93;
        if (v92 >= v93)
        {
          v95 = (2 * v93) | 1;
          v96 = i + 40 * v95;
          if (2 * v94 + 2 < v11)
          {
            v97 = *(v96 + 8);
            v98 = *(v96 + 48);
            if (!(v97 | v98))
            {
              v97 = *v96;
              v98 = *(v96 + 40);
            }

            if (v97 > v98)
            {
              v96 += 40;
              v95 = 2 * v94 + 2;
            }
          }

          v99 = i + 40 * v94;
          v100 = *(v96 + 8);
          v101 = *(v99 + 8);
          if (v100 | v101)
          {
            if (v100 <= v101)
            {
              v102 = *v99;
LABEL_159:
              v169 = *(v99 + 32);
              v159 = *(v99 + 16);
              v103 = *v96;
              v104 = *(v96 + 16);
              *(v99 + 32) = *(v96 + 32);
              *v99 = v103;
              *(v99 + 16) = v104;
              if (v92 >= v95)
              {
                do
                {
                  v106 = 2 * v95;
                  v95 = (2 * v95) | 1;
                  v105 = i + 40 * v95;
                  v107 = v106 + 2;
                  if (v107 < v11)
                  {
                    v108 = *(v105 + 8);
                    v109 = *(v105 + 48);
                    if (!(v108 | v109))
                    {
                      v108 = *v105;
                      v109 = *(v105 + 40);
                    }

                    if (v108 > v109)
                    {
                      v105 += 40;
                      v95 = v107;
                    }
                  }

                  v110 = *(v105 + 8);
                  if (v110 | v101)
                  {
                    if (v110 > v101)
                    {
                      goto LABEL_160;
                    }
                  }

                  else if (*v105 > v102)
                  {
                    goto LABEL_160;
                  }

                  v111 = *v105;
                  v112 = *(v105 + 16);
                  *(v96 + 32) = *(v105 + 32);
                  *v96 = v111;
                  *(v96 + 16) = v112;
                  v96 = v105;
                }

                while (v92 >= v95);
              }

              else
              {
LABEL_160:
                v105 = v96;
              }

              *v105 = v102;
              *(v105 + 8) = v101;
              *(v105 + 16) = v159;
              *(v105 + 32) = v169;
            }
          }

          else
          {
            v102 = *v99;
            if (*v96 <= *v99)
            {
              goto LABEL_159;
            }
          }
        }

        v93 = v94 - 1;
        if (!v94)
        {
          v113 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 3);
          while (1)
          {
            v114 = 0;
            v177 = *(i + 32);
            v160 = *i;
            v170 = *(i + 16);
            v115 = i;
            do
            {
              v116 = v115;
              v117 = &v115[5 * v114];
              v115 = v117 + 5;
              v118 = 2 * v114;
              v114 = (2 * v114) | 1;
              v119 = v118 + 2;
              if (v119 < v113)
              {
                v120 = v117[6];
                v121 = v117[11];
                if (!(v120 | v121))
                {
                  v120 = v117[5];
                  v121 = v117[10];
                }

                if (v120 > v121)
                {
                  v115 = v117 + 10;
                  v114 = v119;
                }
              }

              v122 = *v115;
              v123 = *(v115 + 1);
              v116[4] = v115[4];
              *v116 = v122;
              *(v116 + 1) = v123;
            }

            while (v114 <= ((v113 - 2) >> 1));
            a2 -= 40;
            if (v115 == a2)
            {
              v115[4] = v177;
              *v115 = v160;
              *(v115 + 1) = v170;
            }

            else
            {
              v124 = *a2;
              v125 = *(a2 + 16);
              v115[4] = *(a2 + 32);
              *v115 = v124;
              *(v115 + 1) = v125;
              *(a2 + 32) = v177;
              *a2 = v160;
              *(a2 + 16) = v170;
              v126 = v115 - i + 40;
              if (v126 >= 41)
              {
                v127 = -2 - 0x3333333333333333 * (v126 >> 3);
                v128 = v127 >> 1;
                v129 = i + 40 * (v127 >> 1);
                v130 = *(v129 + 8);
                v131 = v115[1];
                if (v130 | v131)
                {
                  if (v130 > v131)
                  {
                    v132 = *v115;
LABEL_189:
                    v152 = v115[4];
                    v149 = *(v115 + 1);
                    v133 = *(v129 + 32);
                    v134 = *(v129 + 16);
                    *v115 = *v129;
                    *(v115 + 1) = v134;
                    v115[4] = v133;
                    if (v127 >= 2)
                    {
                      do
                      {
                        v136 = v128 - 1;
                        v128 = (v128 - 1) >> 1;
                        v135 = i + 40 * v128;
                        v137 = *(v135 + 8);
                        if (v137 | v131)
                        {
                          if (v137 <= v131)
                          {
                            goto LABEL_190;
                          }
                        }

                        else if (*v135 <= v132)
                        {
                          goto LABEL_190;
                        }

                        v138 = *v135;
                        v139 = *(v135 + 16);
                        *(v129 + 32) = *(v135 + 32);
                        *v129 = v138;
                        *(v129 + 16) = v139;
                        v129 = i + 40 * v128;
                      }

                      while (v136 > 1);
                    }

                    else
                    {
LABEL_190:
                      v135 = v129;
                    }

                    *v135 = v132;
                    *(v135 + 8) = v131;
                    *(v135 + 16) = v149;
                    *(v135 + 32) = v152;
                  }
                }

                else
                {
                  v132 = *v115;
                  if (*v129 > *v115)
                  {
                    goto LABEL_189;
                  }
                }
              }
            }

            v30 = v113-- <= 2;
            if (v30)
            {
              return;
            }
          }
        }
      }
    }

    v12 = v11 >> 1;
    v13 = i + 40 * (v11 >> 1);
    if (v10 < 0x1401)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(v13, a1, (a2 - 40));
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(a1, v13, (a2 - 40));
      v14 = 5 * v12;
      v15 = (a1 + 40 * v12 - 40);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>((a1 + 40), v15, (a2 - 80));
      v16 = (a1 + 40 + 8 * v14);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>((a1 + 80), v16, (a2 - 120));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(v15, v13, v16);
      v172 = *(a1 + 32);
      v153 = *a1;
      v162 = *(a1 + 16);
      v17 = *v13;
      v18 = *(v13 + 16);
      *(a1 + 32) = *(v13 + 32);
      *a1 = v17;
      *(a1 + 16) = v18;
      *(v13 + 32) = v172;
      *v13 = v153;
      *(v13 + 16) = v162;
    }

    --a3;
    if (a4)
    {
      v20 = *a1;
      v19 = *(a1 + 8);
LABEL_20:
      v22 = 0;
      v147 = *(a1 + 16);
      v150 = *(a1 + 32);
      while (1)
      {
        v23 = *(a1 + v22 + 48);
        if (v23 | v19)
        {
          break;
        }

        if (*(a1 + v22 + 40) <= v20)
        {
          goto LABEL_26;
        }

LABEL_25:
        v22 += 40;
      }

      if (v23 > v19)
      {
        goto LABEL_25;
      }

LABEL_26:
      v24 = a1 + v22 + 40;
      v25 = (a2 - 40);
      if (v22)
      {
        do
        {
          while (1)
          {
            v26 = v25;
            v27 = v25[1];
            v25 -= 5;
            if (v27 | v19)
            {
              break;
            }

            if (*v26 > v20)
            {
              goto LABEL_42;
            }
          }
        }

        while (v27 <= v19);
      }

      else
      {
        v26 = a2;
        if (v24 < a2)
        {
          v28 = (a2 - 40);
          do
          {
            v26 = v28;
            v29 = v28[1];
            v28 -= 5;
            if (v29 | v19)
            {
              v30 = v29 > v19;
            }

            else
            {
              v30 = *v26 > v20;
            }
          }

          while (!v30 && v24 < v26);
        }
      }

LABEL_42:
      i = v24;
      if (v24 < v26)
      {
        v32 = v26;
        do
        {
          v173 = *(i + 32);
          v154 = *i;
          v163 = *(i + 16);
          v33 = *v32;
          v34 = *(v32 + 1);
          *(i + 32) = v32[4];
          *i = v33;
          *(i + 16) = v34;
          v32[4] = v173;
          *v32 = v154;
          *(v32 + 1) = v163;
          v35 = i + 40;
          do
          {
            while (1)
            {
              i = v35;
              v36 = *(v35 + 8);
              v35 += 40;
              if (v36 | v19)
              {
                break;
              }

              if (*i <= v20)
              {
                goto LABEL_49;
              }
            }
          }

          while (v36 > v19);
LABEL_49:
          v37 = v32 - 5;
          do
          {
            while (1)
            {
              v32 = v37;
              v38 = v37[1];
              v37 -= 5;
              if (v38 | v19)
              {
                break;
              }

              if (*v32 > v20)
              {
                goto LABEL_54;
              }
            }
          }

          while (v38 <= v19);
LABEL_54:
          ;
        }

        while (i < v32);
      }

      if (i - 40 != a1)
      {
        v39 = *(i - 40);
        v40 = *(i - 24);
        *(a1 + 32) = *(i - 8);
        *a1 = v39;
        *(a1 + 16) = v40;
      }

      *(i - 40) = v20;
      *(i - 32) = v19;
      *(i - 8) = v150;
      *(i - 24) = v147;
      if (v24 < v26)
      {
LABEL_60:
        std::__introsort<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,false>(a1, i - 40, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *>(a1, i - 40);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *>(i, a2))
        {
          a2 = i - 40;
          if (v41)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v41)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v21 = *(a1 - 32);
      v19 = *(a1 + 8);
      if (v21 | v19)
      {
        v20 = *a1;
        if (v21 > v19)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v20 = *a1;
        if (*(a1 - 40) > *a1)
        {
          v19 = 0;
          goto LABEL_20;
        }
      }

      v148 = *(a1 + 16);
      v151 = *(a1 + 32);
      v42 = *(a2 - 32);
      if (v19 | v42)
      {
        if (v19 > v42)
        {
LABEL_71:
          v44 = a1 + 40;
          do
          {
            while (1)
            {
              i = v44;
              v45 = *(v44 + 8);
              v44 += 40;
              if (v19 | v45)
              {
                break;
              }

              if (v20 > *i)
              {
                goto LABEL_76;
              }
            }
          }

          while (v19 <= v45);
          goto LABEL_76;
        }
      }

      else if (v20 > *v8)
      {
        goto LABEL_71;
      }

      for (i = a1 + 40; i < a2; i += 40)
      {
        v43 = *(i + 8);
        if (v19 | v43)
        {
          if (v19 > v43)
          {
            break;
          }
        }

        else if (v20 > *i)
        {
          break;
        }
      }

LABEL_76:
      v46 = a2;
      if (i >= a2)
      {
        goto LABEL_94;
      }

      v47 = (a2 - 72);
      while (!(v19 | v42))
      {
        if (v20 <= v47[4])
        {
          goto LABEL_83;
        }

LABEL_82:
        v48 = *v47;
        v47 -= 5;
        v42 = v48;
      }

      if (v19 > v42)
      {
        goto LABEL_82;
      }

LABEL_83:
      v46 = v47 + 4;
LABEL_94:
      while (i < v46)
      {
        v174 = *(i + 32);
        v155 = *i;
        v164 = *(i + 16);
        v49 = *v46;
        v50 = *(v46 + 1);
        *(i + 32) = v46[4];
        *i = v49;
        *(i + 16) = v50;
        v46[4] = v174;
        *v46 = v155;
        *(v46 + 1) = v164;
        v51 = i + 40;
        do
        {
          while (1)
          {
            i = v51;
            v52 = *(v51 + 8);
            v51 += 40;
            if (v19 | v52)
            {
              break;
            }

            if (v20 > *i)
            {
              goto LABEL_89;
            }
          }
        }

        while (v19 <= v52);
LABEL_89:
        v53 = v46 - 5;
        do
        {
          while (1)
          {
            v46 = v53;
            v54 = v53[1];
            v53 -= 5;
            if (v19 | v54)
            {
              break;
            }

            if (v20 <= *v46)
            {
              goto LABEL_94;
            }
          }
        }

        while (v19 > v54);
      }

      if (i - 40 != a1)
      {
        v55 = *(i - 40);
        v56 = *(i - 24);
        *(a1 + 32) = *(i - 8);
        *a1 = v55;
        *(a1 + 16) = v56;
      }

      a4 = 0;
      *(i - 40) = v20;
      *(i - 32) = v19;
      *(i - 8) = v151;
      *(i - 24) = v148;
    }
  }

  v76 = i + 40;
  v78 = i == a2 || v76 == a2;
  if ((a4 & 1) == 0)
  {
    if (v78)
    {
      return;
    }

    while (1)
    {
      v140 = a1;
      a1 = v76;
      v141 = *(v140 + 48);
      v142 = *(v140 + 8);
      if (v141 | v142)
      {
        if (v141 <= v142)
        {
          goto LABEL_212;
        }

        v143 = *a1;
      }

      else
      {
        v143 = *a1;
        if (*a1 <= *v140)
        {
          goto LABEL_212;
        }
      }

      v161 = *(v140 + 56);
      v171 = *(v140 + 72);
      do
      {
        while (1)
        {
          v144 = v140;
          v145 = *(v140 - 32);
          v146 = *(v140 + 16);
          *(v140 + 40) = *v140;
          *(v140 + 56) = v146;
          *(v140 + 72) = *(v140 + 32);
          v140 -= 40;
          if (v141 | v145)
          {
            break;
          }

          if (v143 <= *v140)
          {
            goto LABEL_211;
          }
        }
      }

      while (v141 > v145);
LABEL_211:
      *v144 = v143;
      *(v144 + 8) = v141;
      *(v144 + 16) = v161;
      *(v144 + 32) = v171;
LABEL_212:
      v76 = a1 + 40;
      if (a1 + 40 == a2)
      {
        return;
      }
    }
  }

  if (v78)
  {
    return;
  }

  v79 = 0;
  v80 = i;
  while (2)
  {
    v81 = v80;
    v80 = v76;
    v82 = *(v81 + 48);
    v83 = *(v81 + 8);
    if (v82 | v83)
    {
      if (v82 <= v83)
      {
        goto LABEL_144;
      }

      v84 = *v80;
    }

    else
    {
      v84 = *v80;
      if (*v80 <= *v81)
      {
        goto LABEL_144;
      }
    }

    v158 = *(v81 + 56);
    v168 = *(v81 + 72);
    v85 = *(v81 + 16);
    *v80 = *v81;
    *(v80 + 16) = v85;
    *(v80 + 32) = *(v81 + 32);
    v86 = i;
    if (v81 == i)
    {
      goto LABEL_143;
    }

    v87 = v79;
    while (2)
    {
      v88 = i + v87;
      v89 = *(i + v87 - 32);
      v90 = (i + v87 - 40);
      if (!(v82 | v89))
      {
        if (v84 <= *v90)
        {
          v86 = v81;
          goto LABEL_143;
        }

LABEL_140:
        v81 -= 40;
        v91 = *(i + v87 - 24);
        *v88 = *v90;
        *(v88 + 16) = v91;
        *(v88 + 32) = *(i + v87 - 8);
        v87 -= 40;
        if (!v87)
        {
          v86 = i;
          goto LABEL_143;
        }

        continue;
      }

      break;
    }

    if (v82 > v89)
    {
      goto LABEL_140;
    }

    v86 = i + v87;
LABEL_143:
    *v86 = v84;
    *(v86 + 8) = v82;
    *(v86 + 16) = v158;
    *(v86 + 32) = v168;
LABEL_144:
    v76 = v80 + 40;
    v79 += 40;
    if (v80 + 40 != a2)
    {
      continue;
    }

    break;
  }
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v3 = a2[1];
  v4 = a1[1];
  if (v3 | v4)
  {
    if (v3 > v4)
    {
      v5 = a3 + 1;
      v6 = a3[1];
      goto LABEL_12;
    }
  }

  else if (*a2 > *a1)
  {
    v5 = a3 + 1;
    v6 = a3[1];
    if (!v6)
    {
      if (*a3 <= *a2)
      {
LABEL_5:
        result = *a1;
        v8 = *(a1 + 1);
        v9 = a1[4];
        v10 = a2[4];
        v11 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v11;
        a1[4] = v10;
        a2[4] = v9;
        *a2 = result;
        *(a2 + 1) = v8;
        v12 = *v5;
        v13 = a2[1];
        if (!(v12 | v13))
        {
          v12 = *a3;
          v13 = *a2;
        }

        if (v12 > v13)
        {
          result = *a2;
          v14 = *(a2 + 1);
          v15 = a2[4];
          v16 = a3[4];
          v17 = *(a3 + 1);
          *a2 = *a3;
          *(a2 + 1) = v17;
          a2[4] = v16;
          a3[4] = v15;
          *a3 = result;
          *(a3 + 1) = v14;
        }

        return result;
      }

LABEL_13:
      result = *a1;
      v18 = *(a1 + 1);
      v19 = a1[4];
      v20 = a3[4];
      v21 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v21;
      a1[4] = v20;
      a3[4] = v19;
      *a3 = result;
      *(a3 + 1) = v18;
      return result;
    }

LABEL_12:
    if (v6 <= v3)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  v22 = a3[1];
  if (!(v22 | v3))
  {
    v22 = *a3;
    v3 = *a2;
  }

  if (v22 > v3)
  {
    result = *a2;
    v23 = *(a2 + 1);
    v24 = a2[4];
    v25 = a3[4];
    v26 = *(a3 + 1);
    *a2 = *a3;
    *(a2 + 1) = v26;
    a2[4] = v25;
    a3[4] = v24;
    *a3 = result;
    *(a3 + 1) = v23;
    v27 = a2[1];
    v28 = a1[1];
    if (!(v27 | v28))
    {
      v27 = *a2;
      v28 = *a1;
    }

    if (v27 > v28)
    {
      result = *a1;
      v29 = *(a1 + 1);
      v30 = a1[4];
      v31 = a2[4];
      v32 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v32;
      a1[4] = v31;
      a2[4] = v30;
      *a2 = result;
      *(a2 + 1) = v29;
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(a1, a2, a3).n128_u64[0];
  v11 = *(a4 + 8);
  v12 = *(a3 + 8);
  if (!(v11 | v12))
  {
    v11 = *a4;
    v12 = *a3;
  }

  if (v11 > v12)
  {
    result = *a3;
    v13 = *(a3 + 16);
    v14 = *(a3 + 32);
    v15 = *(a4 + 32);
    v16 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v16;
    *(a3 + 32) = v15;
    *(a4 + 32) = v14;
    *a4 = result;
    *(a4 + 16) = v13;
    v17 = *(a3 + 8);
    v18 = *(a2 + 8);
    if (!(v17 | v18))
    {
      v17 = *a3;
      v18 = *a2;
    }

    if (v17 > v18)
    {
      result = *a2;
      v19 = *(a2 + 16);
      v20 = *(a2 + 32);
      v21 = *(a3 + 32);
      v22 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v22;
      *(a2 + 32) = v21;
      *(a3 + 32) = v20;
      *a3 = result;
      *(a3 + 16) = v19;
      v23 = *(a2 + 8);
      v24 = *(a1 + 8);
      if (!(v23 | v24))
      {
        v23 = *a2;
        v24 = *a1;
      }

      if (v23 > v24)
      {
        result = *a1;
        v25 = *(a1 + 16);
        v26 = *(a1 + 32);
        v27 = *(a2 + 32);
        v28 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v28;
        *(a1 + 32) = v27;
        *(a2 + 32) = v26;
        *a2 = result;
        *(a2 + 16) = v25;
      }
    }
  }

  v29 = a5[1];
  v30 = *(a4 + 8);
  if (!(v29 | v30))
  {
    v29 = *a5;
    v30 = *a4;
  }

  if (v29 > v30)
  {
    result = *a4;
    v31 = *(a4 + 16);
    v32 = *(a4 + 32);
    v33 = a5[4];
    v34 = *(a5 + 1);
    *a4 = *a5;
    *(a4 + 16) = v34;
    *(a4 + 32) = v33;
    a5[4] = v32;
    *a5 = result;
    *(a5 + 1) = v31;
    v35 = *(a4 + 8);
    v36 = *(a3 + 8);
    if (!(v35 | v36))
    {
      v35 = *a4;
      v36 = *a3;
    }

    if (v35 > v36)
    {
      result = *a3;
      v37 = *(a3 + 16);
      v38 = *(a3 + 32);
      v39 = *(a4 + 32);
      v40 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v40;
      *(a3 + 32) = v39;
      *(a4 + 32) = v38;
      *a4 = result;
      *(a4 + 16) = v37;
      v41 = *(a3 + 8);
      v42 = *(a2 + 8);
      if (!(v41 | v42))
      {
        v41 = *a3;
        v42 = *a2;
      }

      if (v41 > v42)
      {
        result = *a2;
        v43 = *(a2 + 16);
        v44 = *(a2 + 32);
        v45 = *(a3 + 32);
        v46 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v46;
        *(a2 + 32) = v45;
        *(a3 + 32) = v44;
        *a3 = result;
        *(a3 + 16) = v43;
        v47 = *(a2 + 8);
        v48 = *(a1 + 8);
        if (!(v47 | v48))
        {
          v47 = *a2;
          v48 = *a1;
        }

        if (v47 > v48)
        {
          result = *a1;
          v49 = *(a1 + 16);
          v50 = *(a1 + 32);
          v51 = *(a2 + 32);
          v52 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v52;
          *(a1 + 32) = v51;
          *(a2 + 32) = v50;
          *a2 = result;
          *(a2 + 16) = v49;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(a1, (a1 + 40), (a2 - 40));
        return 1;
      case 4:
        v26 = (a2 - 40);
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(a1, (a1 + 40), (a1 + 80));
        v27 = *(a2 - 32);
        v28 = *(a1 + 88);
        if (!(v27 | v28))
        {
          v27 = *v26;
          v28 = *(a1 + 80);
        }

        if (v27 > v28)
        {
          v29 = *(a1 + 80);
          v30 = *(a1 + 96);
          v31 = *(a1 + 112);
          v32 = *(a2 - 8);
          v33 = *(a2 - 24);
          *(a1 + 80) = *v26;
          *(a1 + 96) = v33;
          *(a1 + 112) = v32;
          *(a2 - 8) = v31;
          *v26 = v29;
          *(a2 - 24) = v30;
          v34 = *(a1 + 88);
          v35 = *(a1 + 48);
          if (!(v34 | v35))
          {
            v34 = *(a1 + 80);
            v35 = *(a1 + 40);
          }

          if (v34 > v35)
          {
            v36 = *(a1 + 72);
            v37 = *(a1 + 40);
            v38 = *(a1 + 96);
            *(a1 + 40) = *(a1 + 80);
            v39 = *(a1 + 56);
            *(a1 + 56) = v38;
            *(a1 + 72) = *(a1 + 112);
            *(a1 + 80) = v37;
            *(a1 + 96) = v39;
            *(a1 + 112) = v36;
            v40 = *(a1 + 48);
            v41 = *(a1 + 8);
            if (!(v40 | v41))
            {
              v40 = *(a1 + 40);
              v41 = *a1;
            }

            if (v40 > v41)
            {
              v42 = *(a1 + 32);
              v44 = *a1;
              v43 = *(a1 + 16);
              v45 = *(a1 + 56);
              *a1 = *(a1 + 40);
              *(a1 + 16) = v45;
              *(a1 + 32) = *(a1 + 72);
              *(a1 + 40) = v44;
              *(a1 + 56) = v43;
              result = 1;
              *(a1 + 72) = v42;
              return result;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(a1, a1 + 40, a1 + 80, a1 + 120, (a2 - 40));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 40);
      v6 = *(a2 - 32);
      v7 = *(a1 + 8);
      if (!(v6 | v7))
      {
        v6 = *v5;
        v7 = *a1;
      }

      if (v6 > v7)
      {
        v8 = *a1;
        v9 = *(a1 + 16);
        v10 = *(a1 + 32);
        v11 = *(a2 - 8);
        v12 = *(a2 - 24);
        *a1 = *v5;
        *(a1 + 16) = v12;
        *(a1 + 32) = v11;
        *(a2 - 8) = v10;
        result = 1;
        *v5 = v8;
        *(a2 - 24) = v9;
        return result;
      }

      return 1;
    }
  }

  v14 = a1 + 80;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(a1, (a1 + 40), (a1 + 80));
  v15 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (2)
  {
    v18 = *(v15 + 8);
    v19 = *(v14 + 8);
    if (v18 | v19)
    {
      if (v18 <= v19)
      {
        goto LABEL_29;
      }

      v20 = *v15;
    }

    else
    {
      v20 = *v15;
      if (*v15 <= *v14)
      {
        goto LABEL_29;
      }
    }

    v47 = *(v15 + 32);
    v46 = *(v15 + 16);
    v21 = *(v14 + 16);
    *v15 = *v14;
    *(v15 + 16) = v21;
    *(v15 + 32) = *(v14 + 32);
    v22 = v16;
    while (1)
    {
      v23 = a1 + v22;
      v24 = *(a1 + v22 + 48);
      if (!(v18 | v24))
      {
        if (v20 <= *(v23 + 40))
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      if (v18 <= v24)
      {
        break;
      }

LABEL_25:
      v14 -= 40;
      v25 = *(v23 + 56);
      *(v23 + 80) = *(v23 + 40);
      *(v23 + 96) = v25;
      *(v23 + 112) = *(v23 + 72);
      v22 -= 40;
      if (v22 == -80)
      {
        v14 = a1;
        goto LABEL_28;
      }
    }

    v14 = a1 + v22 + 80;
LABEL_28:
    *v14 = v20;
    *(v14 + 8) = v18;
    *(v14 + 16) = v46;
    *(v14 + 32) = v47;
    if (++v17 != 8)
    {
LABEL_29:
      v14 = v15;
      v16 += 40;
      v15 += 40;
      if (v15 == a2)
      {
        return 1;
      }

      continue;
    }

    return v15 + 40 == a2;
  }
}

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::remove(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void std::vector<HUDGPUTimeTrackerCommandBuffer>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<HUDGPUTimeTrackerCommandBuffer>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<HUDGPUTimeTrackerCommandBuffer>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<HUDGPUTimeTrackerCommandBuffer>>::destroy[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer,0>(v3, i))
  {
    i -= 216;
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t std::allocator_traits<std::allocator<HUDGPUTimeTrackerCommandBuffer>>::destroy[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer,0>(uint64_t a1, uint64_t a2)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(a2 + 176);
  objc_destroyWeak((a2 + 168));
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(a2 + 104);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerCommandBuffer>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HUDGPUTimeTrackerCommandBuffer>,HUDGPUTimeTrackerCommandBuffer*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  v17 = 0;
  if (a2 == a3)
  {
    v17 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 104;
    do
    {
      v9 = *(v8 - 104);
      v10 = *(v8 - 72);
      *(v4 + 16) = *(v8 - 88);
      *(v4 + 32) = v10;
      *v4 = v9;
      v11 = *(v8 - 56);
      v12 = *(v8 - 40);
      v13 = *(v8 - 24);
      *(v4 + 96) = *(v8 - 8);
      *(v4 + 64) = v12;
      *(v4 + 80) = v13;
      *(v4 + 48) = v11;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v4 + 104, v8);
      *(v4 + 144) = 0;
      *(v4 + 152) = 0;
      *(v4 + 160) = 0;
      *(v4 + 144) = *(v8 + 40);
      *(v4 + 160) = *(v8 + 56);
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      objc_moveWeak((v4 + 168), (v8 + 64));
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v4 + 176, (v8 + 72));
      v4 = v19 + 216;
      v19 += 216;
      v14 = v8 + 112;
      v8 += 216;
    }

    while (v14 != a3);
    v17 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<HUDGPUTimeTrackerCommandBuffer>>::destroy[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer,0>(a1, v6);
      v6 += 216;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HUDGPUTimeTrackerCommandBuffer>,HUDGPUTimeTrackerCommandBuffer*>>::~__exception_guard_exceptions[abi:ne200100](v16);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HUDGPUTimeTrackerCommandBuffer>,HUDGPUTimeTrackerCommandBuffer*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<HUDGPUTimeTrackerCommandBuffer>,HUDGPUTimeTrackerCommandBuffer*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<HUDGPUTimeTrackerCommandBuffer>,HUDGPUTimeTrackerCommandBuffer*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 216;
      result = std::allocator_traits<std::allocator<HUDGPUTimeTrackerCommandBuffer>>::destroy[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer,0>(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__split_buffer<HUDGPUTimeTrackerCommandBuffer>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<HUDGPUTimeTrackerCommandBuffer>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<HUDGPUTimeTrackerCommandBuffer>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 216;
    result = std::allocator_traits<std::allocator<HUDGPUTimeTrackerCommandBuffer>>::destroy[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer,0>(v5, v4 - 216);
  }

  return result;
}

uint64_t std::vector<HUDGPUTimeTrackerCommandBuffer>::__construct_one_at_end[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[2];
  *(v4 + 16) = a2[1];
  *(v4 + 32) = v6;
  *v4 = v5;
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  *(v4 + 96) = *(a2 + 12);
  *(v4 + 64) = v8;
  *(v4 + 80) = v9;
  *(v4 + 48) = v7;
  std::unordered_map<unsigned long long,unsigned long>::unordered_map(v4 + 104, a2 + 104);
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  std::vector<HUDGPUTimeTrackerEncoder>::__init_with_size[abi:ne200100]<HUDGPUTimeTrackerEncoder*,HUDGPUTimeTrackerEncoder*>(v4 + 144, *(a2 + 18), *(a2 + 19), 0x6F96F96F96F96F97 * ((*(a2 + 19) - *(a2 + 18)) >> 3));
  objc_copyWeak((v4 + 168), a2 + 21);
  result = std::unordered_map<unsigned long long,HUDGPUTimeTrackerCommandBuffer>::unordered_map(v4 + 176, (a2 + 11));
  *(a1 + 8) = v4 + 216;
  return result;
}

void sub_E43C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 168));
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 152) = v5;
    operator delete(v5);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v3 + 104);
  *(v1 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t std::vector<HUDGPUTimeTrackerCommandBuffer>::__emplace_back_slow_path<HUDGPUTimeTrackerCommandBuffer const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x12F684BDA12F684)
  {
    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v6 = 0x12F684BDA12F684;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerCommandBuffer>>(a1, v6);
  }

  v7 = 216 * v2;
  v19 = 0;
  v20 = v7;
  v21 = 216 * v2;
  v8 = *a2;
  v9 = a2[1];
  *(v7 + 32) = a2[2];
  v11 = a2[4];
  v10 = a2[5];
  v12 = a2[3];
  *(v7 + 96) = *(a2 + 12);
  *(v7 + 64) = v11;
  *(v7 + 80) = v10;
  *(v7 + 48) = v12;
  *v7 = v8;
  *(v7 + 16) = v9;
  std::unordered_map<unsigned long long,unsigned long>::unordered_map(216 * v2 + 104, a2 + 104);
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  std::vector<HUDGPUTimeTrackerEncoder>::__init_with_size[abi:ne200100]<HUDGPUTimeTrackerEncoder*,HUDGPUTimeTrackerEncoder*>(216 * v2 + 144, *(a2 + 18), *(a2 + 19), 0x6F96F96F96F96F97 * ((*(a2 + 19) - *(a2 + 18)) >> 3));
  objc_copyWeak((216 * v2 + 168), a2 + 21);
  std::unordered_map<unsigned long long,HUDGPUTimeTrackerCommandBuffer>::unordered_map(216 * v2 + 176, (a2 + 11));
  *&v21 = v21 + 216;
  v13 = a1[1];
  v14 = v20 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HUDGPUTimeTrackerCommandBuffer>,HUDGPUTimeTrackerCommandBuffer*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<HUDGPUTimeTrackerCommandBuffer>::~__split_buffer(&v19);
  return v18;
}

void sub_E624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  objc_destroyWeak((v5 + 168));
  v7 = *v4;
  if (*v4)
  {
    *(v5 + 152) = v7;
    operator delete(v7);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v5 + 104);
  std::__split_buffer<HUDGPUTimeTrackerCommandBuffer>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[2] = v9;
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__node_insert_multi_prepare(a1, v9, v8 + 2);
        std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_multi<unsigned long long const&>();
  }
}

void sub_E740(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferLb0EEEvT1_S8_T0_NS_15iterator_traitsIS8_E15difference_typeEb(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = result;
LABEL_2:
  v6 = a2;
  v232 = (a2 - 384);
  v233 = (a2 - 216);
  v231 = (a2 - 600);
  v7 = v5;
  while (1)
  {
    v5 = v7;
    v8 = v6 - v7;
    v9 = 0x84BDA12F684BDA13 * ((v6 - v7) >> 3);
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      v6 = a2;
      if (v9 == 2)
      {
        if (*(a2 - 168) >= *(v5 + 48))
        {
          return result;
        }

LABEL_117:
        v97 = v5;
LABEL_118:
        v98 = (a2 - 216);
        return std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v97, v98);
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      return _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferLi0EEEvT1_S8_S8_S8_T0_(v5, v5 + 216, v5 + 432, v233);
    }

    if (v9 == 5)
    {
      result = _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferLi0EEEvT1_S8_S8_S8_T0_(v5, v5 + 216, v5 + 432, v5 + 648);
      if (*(v6 - 21) >= *(v5 + 696))
      {
        return result;
      }

      result = std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>((v5 + 648), v233);
      if (*(v5 + 696) >= *(v5 + 480))
      {
        return result;
      }

      result = std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>((v5 + 432), (v5 + 648));
      if (*(v5 + 480) >= *(v5 + 264))
      {
        return result;
      }

      v93 = (v5 + 216);
      v94 = (v5 + 432);
      goto LABEL_194;
    }

LABEL_10:
    if (v8 <= 5183)
    {
      if (a4)
      {
        if (v5 != v6)
        {
          v99 = v5 + 216;
          if (v5 + 216 != a2)
          {
            v100 = 0;
            v101 = v5;
            do
            {
              v102 = v99;
              if (*(v101 + 264) < *(v101 + 48))
              {
                v103 = *v99;
                v104 = *(v99 + 32);
                v249 = *(v99 + 16);
                v250 = v104;
                v248 = v103;
                v105 = *(v99 + 48);
                v106 = *(v99 + 64);
                v107 = *(v99 + 80);
                v254 = *(v99 + 96);
                v252 = v106;
                v253 = v107;
                v251 = v105;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v255, (v101 + 320));
                *__p = *(v101 + 360);
                __p[2] = *(v101 + 376);
                *(v101 + 368) = 0;
                *(v101 + 376) = 0;
                *(v101 + 360) = 0;
                objc_moveWeak(&v257, (v101 + 384));
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v258, (v101 + 392));
                v108 = v100;
                while (1)
                {
                  v109 = v5 + v108;
                  v110 = (v5 + v108 + 216);
                  v111 = *(v5 + v108 + 64);
                  v112 = *(v5 + v108 + 80);
                  v113 = *(v5 + v108 + 32);
                  v110[3] = *(v5 + v108 + 48);
                  v110[4] = v111;
                  v110[5] = v112;
                  v114 = *(v5 + v108 + 16);
                  *(v109 + 216) = *(v5 + v108);
                  *(v109 + 232) = v114;
                  *(v109 + 312) = *(v5 + v108 + 96);
                  *(v109 + 248) = v113;
                  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v5 + v108 + 320, (v5 + v108 + 104));
                  std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(v109 + 360, (v109 + 144));
                  WeakRetained = objc_loadWeakRetained((v5 + v108 + 168));
                  objc_storeWeak((v5 + v108 + 384), WeakRetained);

                  std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v109 + 392, (v109 + 176));
                  if (!v108)
                  {
                    break;
                  }

                  v108 -= 216;
                  if (v251 >= *(v109 - 168))
                  {
                    v116 = v5 + v108 + 216;
                    goto LABEL_131;
                  }
                }

                v116 = v5;
LABEL_131:
                v117 = v248;
                v118 = v250;
                *(v116 + 16) = v249;
                *(v116 + 32) = v118;
                *v116 = v117;
                v119 = v251;
                v120 = v252;
                v121 = v253;
                *(v116 + 96) = v254;
                *(v116 + 64) = v120;
                *(v116 + 80) = v121;
                *(v116 + 48) = v119;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v109 + 104, v255);
                v124 = *(v109 + 144);
                v123 = v109 + 144;
                v122 = v124;
                if (v124)
                {
                  *(v116 + 152) = v122;
                  operator delete(v122);
                  *v123 = 0;
                  *(v123 + 8) = 0;
                  *(v123 + 16) = 0;
                }

                *v123 = __p[0];
                *(v116 + 152) = *&__p[1];
                memset(__p, 0, sizeof(__p));
                v125 = objc_loadWeakRetained(&v257);
                objc_storeWeak((v123 + 24), v125);

                std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v123 + 32, v258);
                std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v258);
                objc_destroyWeak(&v257);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v255);
              }

              v99 = v102 + 216;
              v100 += 216;
              v101 = v102;
            }

            while (v102 + 216 != a2);
          }
        }
      }

      else if (v5 != v6)
      {
        v209 = v5 + 216;
        if (v5 + 216 != a2)
        {
          v210 = v5 - 168;
          do
          {
            v211 = v209;
            v212 = a2;
            if (*(v5 + 264) < *(v5 + 48))
            {
              v213 = *v209;
              v214 = *(v209 + 32);
              v249 = *(v209 + 16);
              v250 = v214;
              v248 = v213;
              v215 = *(v209 + 48);
              v216 = *(v209 + 64);
              v217 = *(v209 + 80);
              v254 = *(v209 + 96);
              v252 = v216;
              v253 = v217;
              v251 = v215;
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v255, (v5 + 320));
              *__p = *(v5 + 360);
              __p[2] = *(v5 + 376);
              *(v5 + 368) = 0;
              *(v5 + 376) = 0;
              *(v5 + 360) = 0;
              objc_moveWeak(&v257, (v5 + 384));
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v258, (v5 + 392));
              v218 = v210;
              do
              {
                v219 = *(v218 + 216);
                v220 = *(v218 + 248);
                *(v218 + 448) = *(v218 + 232);
                *(v218 + 464) = v220;
                *(v218 + 480) = *(v218 + 264);
                v221 = *(v218 + 184);
                *(v218 + 384) = *(v218 + 168);
                *(v218 + 400) = v221;
                *(v218 + 416) = *(v218 + 200);
                *(v218 + 432) = v219;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v218 + 488, (v218 + 272));
                std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(v218 + 528, (v218 + 312));
                v222 = objc_loadWeakRetained((v218 + 336));
                objc_storeWeak((v218 + 552), v222);

                std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v218 + 560, (v218 + 344));
                v223 = *v218;
                v218 -= 216;
              }

              while (v251 < v223);
              v224 = v248;
              v225 = v250;
              *(v218 + 400) = v249;
              *(v218 + 416) = v225;
              *(v218 + 384) = v224;
              v226 = v251;
              v227 = v252;
              v228 = v253;
              *(v218 + 480) = v254;
              *(v218 + 448) = v227;
              *(v218 + 464) = v228;
              *(v218 + 432) = v226;
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v218 + 488, v255);
              v229 = *(v218 + 528);
              if (v229)
              {
                *(v218 + 536) = v229;
                operator delete(v229);
                *(v218 + 528) = 0;
                *(v218 + 536) = 0;
                *(v218 + 544) = 0;
                v212 = a2;
              }

              *(v218 + 528) = *__p;
              *(v218 + 544) = __p[2];
              memset(__p, 0, sizeof(__p));
              v230 = objc_loadWeakRetained(&v257);
              objc_storeWeak((v218 + 552), v230);

              std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v218 + 560, v258);
              std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v258);
              objc_destroyWeak(&v257);
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v255);
            }

            v209 = v211 + 216;
            v210 += 216;
            v5 = v211;
          }

          while (v211 + 216 != v212);
        }
      }

      return result;
    }

    if (!a3)
    {
      if (v5 != v6)
      {
        v126 = v10 >> 1;
        v127 = v10 >> 1;
        do
        {
          v128 = v127;
          if (v126 >= v127)
          {
            v129 = (2 * v127) | 1;
            v130 = v5 + 216 * v129;
            if (2 * v127 + 2 < v9)
            {
              v131 = *(v130 + 48);
              v132 = *(v130 + 264);
              v133 = v131 >= v132;
              v134 = v131 >= v132 ? 0 : 216;
              v130 += v134;
              if (!v133)
              {
                v129 = 2 * v127 + 2;
              }
            }

            v135 = v5 + 216 * v127;
            if (*(v130 + 48) >= *(v135 + 48))
            {
              v136 = *v135;
              v137 = *(v135 + 32);
              v249 = *(v135 + 16);
              v250 = v137;
              v248 = v136;
              v138 = *(v135 + 48);
              v139 = *(v135 + 64);
              v140 = *(v135 + 80);
              v254 = *(v135 + 96);
              v252 = v139;
              v253 = v140;
              v251 = v138;
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v255, (v135 + 104));
              *__p = *(v135 + 144);
              __p[2] = *(v135 + 160);
              *(v135 + 144) = 0;
              *(v135 + 152) = 0;
              *(v135 + 160) = 0;
              objc_moveWeak(&v257, (v135 + 168));
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v258, (v135 + 176));
              do
              {
                v141 = v130;
                v142 = *v130;
                v143 = *(v130 + 32);
                *(v135 + 16) = *(v130 + 16);
                *(v135 + 32) = v143;
                *v135 = v142;
                v144 = *(v130 + 48);
                v145 = *(v130 + 64);
                v146 = *(v130 + 80);
                *(v135 + 96) = *(v130 + 96);
                *(v135 + 64) = v145;
                *(v135 + 80) = v146;
                *(v135 + 48) = v144;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v135 + 104, (v130 + 104));
                std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(v135 + 144, (v130 + 144));
                v147 = objc_loadWeakRetained((v130 + 168));
                objc_storeWeak((v135 + 168), v147);

                std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v135 + 176, (v141 + 176));
                if (v126 < v129)
                {
                  break;
                }

                v148 = (2 * v129) | 1;
                v130 = v5 + 216 * v148;
                if (2 * v129 + 2 < v9)
                {
                  v149 = *(v130 + 48);
                  v150 = *(v130 + 264);
                  v151 = v149 >= v150;
                  v152 = v149 >= v150 ? 0 : 216;
                  v130 += v152;
                  if (!v151)
                  {
                    v148 = 2 * v129 + 2;
                  }
                }

                v135 = v141;
                v129 = v148;
              }

              while (*(v130 + 48) >= v251);
              v153 = v248;
              v154 = v250;
              *(v141 + 16) = v249;
              *(v141 + 32) = v154;
              *v141 = v153;
              v155 = v251;
              v156 = v252;
              v157 = v253;
              *(v141 + 96) = v254;
              *(v141 + 64) = v156;
              *(v141 + 80) = v157;
              *(v141 + 48) = v155;
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v141 + 104, v255);
              v158 = *(v141 + 144);
              if (v158)
              {
                *(v141 + 152) = v158;
                operator delete(v158);
                *(v141 + 144) = 0;
                *(v141 + 152) = 0;
                *(v141 + 160) = 0;
              }

              *(v141 + 144) = *__p;
              *(v141 + 160) = __p[2];
              memset(__p, 0, sizeof(__p));
              v159 = objc_loadWeakRetained(&v257);
              objc_storeWeak((v141 + 168), v159);

              std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v141 + 176, v258);
              std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v258);
              objc_destroyWeak(&v257);
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v255);
            }
          }

          v127 = v128 - 1;
        }

        while (v128);
        v160 = 0x84BDA12F684BDA13 * (v8 >> 3);
        do
        {
          v161 = a2;
          v237 = *(v5 + 16);
          v238 = *(v5 + 32);
          v236 = *v5;
          v242 = *(v5 + 96);
          v240 = *(v5 + 64);
          v241 = *(v5 + 80);
          v239 = *(v5 + 48);
          std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v243, (v5 + 104));
          *v244 = *(v5 + 144);
          v245 = *(v5 + 160);
          *(v5 + 144) = 0;
          *(v5 + 152) = 0;
          *(v5 + 160) = 0;
          objc_moveWeak(&v246, (v5 + 168));
          std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v247, (v5 + 176));
          v162 = 0;
          v163 = v5;
          do
          {
            v164 = v163 + 216 * v162;
            v165 = v164 + 216;
            if (2 * v162 + 2 >= v160)
            {
              v162 = (2 * v162) | 1;
            }

            else
            {
              v166 = *(v164 + 264);
              v167 = *(v164 + 480);
              v168 = v164 + 432;
              if (v166 >= v167)
              {
                v162 = (2 * v162) | 1;
              }

              else
              {
                v165 = v168;
                v162 = 2 * v162 + 2;
              }
            }

            v169 = *v165;
            v170 = *(v165 + 32);
            *(v163 + 16) = *(v165 + 16);
            *(v163 + 32) = v170;
            *v163 = v169;
            v171 = *(v165 + 48);
            v172 = *(v165 + 64);
            v173 = *(v165 + 80);
            *(v163 + 96) = *(v165 + 96);
            *(v163 + 64) = v172;
            *(v163 + 80) = v173;
            *(v163 + 48) = v171;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v163 + 104, (v165 + 104));
            std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(v163 + 144, (v165 + 144));
            v174 = objc_loadWeakRetained((v165 + 168));
            objc_storeWeak((v163 + 168), v174);

            std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v163 + 176, (v165 + 176));
            v163 = v165;
          }

          while (v162 <= ((v160 - 2) >> 1));
          v175 = (a2 - 216);
          a2 -= 216;
          if (v165 == v161 - 216)
          {
            *(v165 + 16) = v237;
            *(v165 + 32) = v238;
            *v165 = v236;
            *(v165 + 96) = v242;
            *(v165 + 64) = v240;
            *(v165 + 80) = v241;
            *(v165 + 48) = v239;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v165 + 104, v243);
            v206 = *(v165 + 144);
            if (v206)
            {
              *(v165 + 152) = v206;
              operator delete(v206);
              *(v165 + 144) = 0;
              *(v165 + 152) = 0;
              *(v165 + 160) = 0;
            }

            *(v165 + 144) = *v244;
            *(v165 + 160) = v245;
            v244[0] = 0;
            v244[1] = 0;
            v245 = 0;
            v207 = objc_loadWeakRetained(&v246);
            objc_storeWeak((v165 + 168), v207);

            std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v165 + 176, v247);
          }

          else
          {
            v176 = *v175;
            v177 = *(v161 - 184);
            *(v165 + 16) = *(v161 - 200);
            *(v165 + 32) = v177;
            *v165 = v176;
            v178 = *(v161 - 168);
            v179 = *(v161 - 152);
            v180 = *(v161 - 136);
            *(v165 + 96) = *(v161 - 120);
            *(v165 + 64) = v179;
            *(v165 + 80) = v180;
            *(v165 + 48) = v178;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v165 + 104, (v161 - 112));
            std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(v165 + 144, (v161 - 72));
            v181 = objc_loadWeakRetained((v161 - 48));
            objc_storeWeak((v165 + 168), v181);

            std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v165 + 176, (v161 - 40));
            *(v161 - 200) = v237;
            *(v161 - 184) = v238;
            *v175 = v236;
            *(v161 - 120) = v242;
            *(v161 - 152) = v240;
            *(v161 - 136) = v241;
            *(v161 - 168) = v239;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v161 - 112, v243);
            v182 = *(v161 - 72);
            if (v182)
            {
              *(v161 - 64) = v182;
              operator delete(v182);
            }

            *(v161 - 72) = *v244;
            *(v161 - 56) = v245;
            v244[0] = 0;
            v244[1] = 0;
            v245 = 0;
            v183 = objc_loadWeakRetained(&v246);
            objc_storeWeak((v161 - 48), v183);

            std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v161 - 40, v247);
            v184 = v165 + 216 - v5;
            if (v184 >= 217)
            {
              v185 = (-2 - 0x7B425ED097B425EDLL * (v184 >> 3)) >> 1;
              v186 = v5 + 216 * v185;
              if (*(v186 + 48) < *(v165 + 48))
              {
                v187 = *v165;
                v188 = *(v165 + 32);
                v249 = *(v165 + 16);
                v250 = v188;
                v248 = v187;
                v189 = *(v165 + 48);
                v190 = *(v165 + 64);
                v191 = *(v165 + 80);
                v254 = *(v165 + 96);
                v252 = v190;
                v253 = v191;
                v251 = v189;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v255, (v165 + 104));
                *__p = *(v165 + 144);
                __p[2] = *(v165 + 160);
                *(v165 + 144) = 0;
                *(v165 + 152) = 0;
                *(v165 + 160) = 0;
                objc_moveWeak(&v257, (v165 + 168));
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v258, (v165 + 176));
                do
                {
                  v192 = v186;
                  v193 = *v186;
                  v194 = *(v186 + 32);
                  *(v165 + 16) = *(v186 + 16);
                  *(v165 + 32) = v194;
                  *v165 = v193;
                  v195 = *(v186 + 48);
                  v196 = *(v186 + 64);
                  v197 = *(v186 + 80);
                  *(v165 + 96) = *(v186 + 96);
                  *(v165 + 64) = v196;
                  *(v165 + 80) = v197;
                  *(v165 + 48) = v195;
                  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v165 + 104, (v186 + 104));
                  std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(v165 + 144, (v186 + 144));
                  v198 = objc_loadWeakRetained((v186 + 168));
                  objc_storeWeak((v165 + 168), v198);

                  std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v165 + 176, (v186 + 176));
                  if (!v185)
                  {
                    break;
                  }

                  v185 = (v185 - 1) >> 1;
                  v186 = v5 + 216 * v185;
                  v165 = v192;
                }

                while (*(v186 + 48) < v251);
                v199 = v248;
                v200 = v250;
                *(v192 + 16) = v249;
                *(v192 + 32) = v200;
                *v192 = v199;
                v201 = v251;
                v202 = v252;
                v203 = v253;
                *(v192 + 96) = v254;
                *(v192 + 64) = v202;
                *(v192 + 80) = v203;
                *(v192 + 48) = v201;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v192 + 104, v255);
                v204 = *(v192 + 144);
                if (v204)
                {
                  *(v192 + 152) = v204;
                  operator delete(v204);
                }

                *(v192 + 144) = *__p;
                *(v192 + 160) = __p[2];
                memset(__p, 0, sizeof(__p));
                v205 = objc_loadWeakRetained(&v257);
                objc_storeWeak((v192 + 168), v205);

                std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v192 + 176, v258);
                std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v258);
                objc_destroyWeak(&v257);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v255);
              }
            }
          }

          std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v247);
          objc_destroyWeak(&v246);
          if (v244[0])
          {
            v244[1] = v244[0];
            operator delete(v244[0]);
          }

          result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v243);
        }

        while (v160-- > 2);
      }

      return result;
    }

    v11 = v9 >> 1;
    v12 = v5 + 216 * (v9 >> 1);
    v13 = *(v6 - 21);
    if (v8 >= 0x6C01)
    {
      v14 = *(v12 + 48);
      if (v14 >= *(v5 + 48))
      {
        if (v13 < v14)
        {
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v12, v233);
          if (*(v12 + 48) < *(v5 + 48))
          {
            v15 = v5;
            v16 = v12;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v15 = v5;
        if (v13 < v14)
        {
          goto LABEL_17;
        }

        std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v5, v12);
        if (*(v6 - 21) < *(v12 + 48))
        {
          v15 = v12;
LABEL_17:
          v16 = (a2 - 216);
LABEL_26:
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v15, v16);
        }
      }

      v20 = v5 + 216 * v11;
      v21 = v20 - 216;
      v22 = *(v20 - 168);
      v23 = *v232;
      if (v22 >= *(v5 + 264))
      {
        if (v23 < v22)
        {
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v21, (a2 - 432));
          if (*(v21 + 48) < *(v5 + 264))
          {
            v24 = (v5 + 216);
            v25 = v21;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v24 = (v5 + 216);
        if (v23 < v22)
        {
          goto LABEL_31;
        }

        std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v24, v21);
        if (*v232 < *(v21 + 48))
        {
          v24 = v21;
LABEL_31:
          v25 = (a2 - 432);
LABEL_39:
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v24, v25);
        }
      }

      v26 = v5 + 216 * v11;
      v27 = *(v26 + 264);
      v28 = *v231;
      if (v27 >= *(v5 + 480))
      {
        if (v28 < v27)
        {
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>((v26 + 216), (a2 - 648));
          if (*(v26 + 264) < *(v5 + 480))
          {
            v29 = (v5 + 432);
            v30 = (v26 + 216);
            goto LABEL_48;
          }
        }
      }

      else
      {
        v29 = (v5 + 432);
        if (v28 < v27)
        {
          goto LABEL_44;
        }

        std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v29, (v26 + 216));
        if (*v231 < *(v26 + 264))
        {
          v29 = (v26 + 216);
LABEL_44:
          v30 = (a2 - 648);
LABEL_48:
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v29, v30);
        }
      }

      v31 = *(v12 + 48);
      v32 = *(v26 + 264);
      if (v31 >= *(v21 + 48))
      {
        if (v32 < v31)
        {
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v12, (v26 + 216));
          if (*(v12 + 48) < *(v21 + 48))
          {
            v34 = v21;
            v33 = v12;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (v32 < v31)
        {
          v33 = (v26 + 216);
          v34 = v21;
          goto LABEL_57;
        }

        std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v21, v12);
        if (*(v26 + 264) < *(v12 + 48))
        {
          v33 = (v26 + 216);
          v34 = v12;
LABEL_57:
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v34, v33);
        }
      }

      std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v5, v12);
      v6 = a2;
      goto LABEL_59;
    }

    v17 = *(v5 + 48);
    if (v17 >= *(v12 + 48))
    {
      if (v13 >= v17)
      {
        goto LABEL_59;
      }

      std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v5, v233);
      if (*(v5 + 48) >= *(v12 + 48))
      {
        goto LABEL_59;
      }

      v18 = v12;
      v19 = v5;
    }

    else
    {
      v18 = v12;
      if (v13 >= v17)
      {
        std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v12, v5);
        if (*(v6 - 21) >= *(v5 + 48))
        {
          goto LABEL_59;
        }

        v18 = v5;
      }

      v19 = (a2 - 216);
    }

    std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v18, v19);
LABEL_59:
    --a3;
    if ((a4 & 1) != 0 || *(v5 - 168) < *(v5 + 48))
    {
      v35 = *v5;
      v36 = *(v5 + 32);
      v249 = *(v5 + 16);
      v250 = v36;
      v248 = v35;
      v37 = *(v5 + 48);
      v38 = *(v5 + 64);
      v39 = *(v5 + 80);
      v254 = *(v5 + 96);
      v252 = v38;
      v253 = v39;
      v251 = v37;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v255, (v5 + 104));
      *__p = *(v5 + 144);
      __p[2] = *(v5 + 160);
      *(v5 + 144) = 0;
      *(v5 + 152) = 0;
      *(v5 + 160) = 0;
      objc_moveWeak(&v257, (v5 + 168));
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v258, (v5 + 176));
      v40 = 0;
      do
      {
        v41 = *(v5 + v40 + 264);
        v40 += 216;
      }

      while (v41 < v251);
      v42 = v5 + v40;
      v43 = v6;
      if (v40 == 216)
      {
        while (v42 < v6)
        {
          v44 = (v6 - 216);
          v46 = *(v6 - 21);
          v6 = (v6 - 216);
          if (v46 < v251)
          {
            goto LABEL_70;
          }
        }

        v44 = v6;
      }

      else
      {
        do
        {
          v44 = (v43 - 216);
          v45 = *(v43 - 21);
          v43 = (v43 - 216);
        }

        while (v45 >= v251);
      }

LABEL_70:
      v7 = v42;
      if (v42 < v44)
      {
        v47 = v44;
        do
        {
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v7, v47);
          do
          {
            v48 = *(v7 + 264);
            v7 += 216;
          }

          while (v48 < v251);
          do
          {
            v49 = *(v47 - 21);
            v47 = (v47 - 216);
          }

          while (v49 >= v251);
        }

        while (v7 < v47);
      }

      v50 = (v7 - 216);
      if (v7 - 216 != v5)
      {
        v51 = *v50;
        v52 = *(v7 - 184);
        *(v5 + 16) = *(v7 - 200);
        *(v5 + 32) = v52;
        *v5 = v51;
        v53 = *(v7 - 168);
        v54 = *(v7 - 152);
        v55 = *(v7 - 136);
        *(v5 + 96) = *(v7 - 120);
        *(v5 + 64) = v54;
        *(v5 + 80) = v55;
        *(v5 + 48) = v53;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v5 + 104, (v7 - 112));
        std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(v5 + 144, (v7 - 72));
        v56 = objc_loadWeakRetained((v7 - 48));
        objc_storeWeak((v5 + 168), v56);

        std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v5 + 176, (v7 - 40));
      }

      v57 = v248;
      v58 = v250;
      *(v7 - 200) = v249;
      *(v7 - 184) = v58;
      *v50 = v57;
      v59 = v251;
      v60 = v252;
      v61 = v253;
      *(v7 - 120) = v254;
      *(v7 - 152) = v60;
      *(v7 - 136) = v61;
      *(v7 - 168) = v59;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v7 - 112, v255);
      v62 = *(v7 - 72);
      if (v62)
      {
        *(v7 - 64) = v62;
        operator delete(v62);
        *(v7 - 72) = 0;
        *(v7 - 64) = 0;
        *(v7 - 56) = 0;
      }

      *(v7 - 72) = *__p;
      *(v7 - 56) = __p[2];
      memset(__p, 0, sizeof(__p));
      v63 = objc_loadWeakRetained(&v257);
      objc_storeWeak((v7 - 48), v63);

      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v7 - 40, v258);
      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v258);
      objc_destroyWeak(&v257);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v255);
      v6 = a2;
      if (v42 < v44)
      {
        goto LABEL_85;
      }

      v64 = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferEEbT1_S8_T0_(v5, v7 - 216);
      result = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferEEbT1_S8_T0_(v7, a2);
      if (result)
      {
        a2 = v7 - 216;
        if (!v64)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v64)
      {
LABEL_85:
        result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferLb0EEEvT1_S8_T0_NS_15iterator_traitsIS8_E15difference_typeEb(v5, v7 - 216, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v65 = *v5;
      v66 = *(v5 + 32);
      v249 = *(v5 + 16);
      v250 = v66;
      v248 = v65;
      v67 = *(v5 + 48);
      v68 = *(v5 + 64);
      v69 = *(v5 + 80);
      v254 = *(v5 + 96);
      v252 = v68;
      v253 = v69;
      v251 = v67;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v255, (v5 + 104));
      v70 = v5 + 144;
      *__p = *(v5 + 144);
      __p[2] = *(v5 + 160);
      *(v5 + 144) = 0;
      *(v5 + 152) = 0;
      *(v5 + 160) = 0;
      objc_moveWeak(&v257, (v5 + 168));
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v258, (v5 + 176));
      if (v251 >= *(v6 - 21))
      {
        v73 = v5 + 216;
        do
        {
          v7 = v73;
          if (v73 >= v6)
          {
            break;
          }

          v74 = *(v73 + 48);
          v73 += 216;
        }

        while (v251 >= v74);
      }

      else
      {
        v71 = v5;
        do
        {
          v7 = v71 + 216;
          v72 = *(v71 + 264);
          v71 += 216;
        }

        while (v251 >= v72);
      }

      v75 = v6;
      if (v7 < v6)
      {
        do
        {
          v75 = (v6 - 216);
          v76 = *(v6 - 21);
          v6 = (v6 - 216);
        }

        while (v251 < v76);
      }

      while (v7 < v75)
      {
        std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v7, v75);
        do
        {
          v77 = *(v7 + 264);
          v7 += 216;
        }

        while (v251 >= v77);
        do
        {
          v78 = *(v75 - 21);
          v75 = (v75 - 216);
        }

        while (v251 < v78);
      }

      v79 = (v7 - 216);
      if (v7 - 216 != v5)
      {
        v80 = *v79;
        v81 = *(v7 - 184);
        *(v5 + 16) = *(v7 - 200);
        *(v5 + 32) = v81;
        *v5 = v80;
        v82 = *(v7 - 168);
        v83 = *(v7 - 152);
        v84 = *(v7 - 136);
        *(v5 + 96) = *(v7 - 120);
        *(v5 + 64) = v83;
        *(v5 + 80) = v84;
        *(v5 + 48) = v82;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v5 + 104, (v7 - 112));
        std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(v5 + 144, (v7 - 72));
        v85 = objc_loadWeakRetained((v7 - 48));
        objc_storeWeak((v70 + 24), v85);

        std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v70 + 32, (v7 - 40));
      }

      v86 = v248;
      v87 = v250;
      *(v7 - 200) = v249;
      *(v7 - 184) = v87;
      *v79 = v86;
      v88 = v251;
      v89 = v252;
      v90 = v253;
      *(v7 - 120) = v254;
      *(v7 - 152) = v89;
      *(v7 - 136) = v90;
      *(v7 - 168) = v88;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v7 - 112, v255);
      v91 = *(v7 - 72);
      if (v91)
      {
        *(v7 - 64) = v91;
        operator delete(v91);
        *(v7 - 72) = 0;
        *(v7 - 64) = 0;
        *(v7 - 56) = 0;
      }

      *(v7 - 72) = *__p;
      *(v7 - 56) = __p[2];
      memset(__p, 0, sizeof(__p));
      v92 = objc_loadWeakRetained(&v257);
      objc_storeWeak((v7 - 48), v92);

      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v7 - 40, v258);
      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v258);
      objc_destroyWeak(&v257);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v255);
      a4 = 0;
      v6 = a2;
    }
  }

  v95 = *(v5 + 264);
  v96 = *(v6 - 21);
  if (v95 < *(v5 + 48))
  {
    if (v96 < v95)
    {
      goto LABEL_117;
    }

    result = std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v5, (v5 + 216));
    if (*(v6 - 21) < *(v5 + 264))
    {
      v97 = (v5 + 216);
      goto LABEL_118;
    }

    return result;
  }

  if (v96 >= v95)
  {
    return result;
  }

  v93 = (v5 + 216);
  v94 = (a2 - 216);
LABEL_194:
  result = std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v93, v94);
  if (*(v5 + 264) < *(v5 + 48))
  {
    v98 = (v5 + 216);
    v97 = v5;
    return std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v97, v98);
  }

  return result;
}