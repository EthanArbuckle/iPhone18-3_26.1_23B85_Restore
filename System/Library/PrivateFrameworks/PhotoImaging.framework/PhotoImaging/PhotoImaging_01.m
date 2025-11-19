void *_ZNSt3__16vectorIDv2_sNS_9allocatorIS1_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void _ZNSt3__16vectorIDv2_sNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 2;
    if ((v6 + 1) >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v9);
    }

    v10 = (4 * v6);
    *v10 = *a2;
    v5 = 4 * v6 + 4;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE6resizeEm(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

BOOL anonymous namespace::_NTKUltraCubeFiller::isLocationOpen(int a1, uint64_t a2, int a3)
{
  v3 = (a2 + (a3 >> 16) * a1 + a3);
  if (*v3)
  {
    return 0;
  }

  v5 = v3[-a1] == 1;
  if (v3[-a1] == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (v3[~a1] == 1)
  {
    v5 = v6;
  }

  if (v3[1 - a1] == 1)
  {
    ++v5;
  }

  v7 = &v3[a1];
  if (*v7 == 1)
  {
    ++v5;
  }

  if (*(v7 - 1) == 1)
  {
    ++v5;
  }

  if (v7[1] == 1)
  {
    ++v5;
  }

  if (*(v3 - 1) == 1)
  {
    ++v5;
  }

  if (v3[1] == 1)
  {
    v8 = v5 + 1;
  }

  else
  {
    v8 = v5;
  }

  return v8 > 2;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

void anonymous namespace::_NTKUltraCubeFiller::~_NTKUltraCubeFiller(_anonymous_namespace_::_NTKUltraCubeFiller *this)
{
  v2 = *(this + 338);
  if (v2)
  {
    *(this + 339) = v2;
    operator delete(v2);
  }

  for (i = 0; i != -72; i -= 24)
  {
    v4 = *(this + i + 2680);
    if (v4)
    {
      *(this + i + 2688) = v4;
      operator delete(v4);
    }
  }

  v5 = *(this + 326);
  if (v5)
  {
    *(this + 327) = v5;
    operator delete(v5);
  }

  v6 = *(this + 323);
  if (v6)
  {
    *(this + 324) = v6;
    operator delete(v6);
  }

  v7 = *(this + 320);
  if (v7)
  {
    *(this + 321) = v7;
    operator delete(v7);
  }

  v8 = *(this + 317);
  if (v8)
  {
    *(this + 318) = v8;
    operator delete(v8);
  }
}

void CGrNavigatorT<unsigned char,1ul>::~CGrNavigatorT(CGrNavigator *a1)
{
  CGrNavigator::~CGrNavigator(a1);
  if (v1)
  {
    --CMemEnv::excount;

    free(v1);
  }
}

void CGrNavigatorT<__simd128_float32_t,1ul>::~CGrNavigatorT(CGrNavigator *a1)
{
  CGrNavigator::~CGrNavigator(a1);
  if (v1)
  {
    --CMemEnv::excount;

    free(v1);
  }
}

id NUAssertLogger_28537()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_28562);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_28745()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_49);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_28934()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_208);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_29069()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_29086);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_29300()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_54_29318);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

BOOL PIAutoLoopFlavorProducesOnlyVideo(uint64_t a1)
{
  if (a1)
  {
    v1 = a1 == 3;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

__CFString *PIAutoLoopFlavorToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"AutoLoop";
  }

  else
  {
    return off_1E82ACBA0[a1];
  }
}

uint64_t PIAutoLoopFlavorFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"AutoLoop"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Mirror"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"LongExposure"])
  {
    v2 = 3;
  }

  else
  {
    [v1 isEqualToString:@"None"];
    v2 = 0;
  }

  return v2;
}

id PIAutoLoopFindVideoSourceNode(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v3 = 0;
    goto LABEL_13;
  }

  v2 = v1;
  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v2 isResolved])
      {
        break;
      }
    }

LABEL_7:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
      goto LABEL_13;
    }

    v3 = [v2 uniqueInputNode];

    v2 = v3;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  v6 = 0;
  v3 = [v2 resolvedSourceNode:&v6];
  v4 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_7;
  }

LABEL_13:

  return v3;
}

id PIAutoLoopRecipeForFlavor(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v11 = NUAssertLogger_29379();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "recipe != nil"];
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_29379();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(*v13);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v19;
        v25 = 2114;
        v26 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = v3;
  *buf = 0;
  if (MEMORY[0x1CCA61C40]())
  {
    v5 = [v4 objectForKeyedSubscript:@"loopRecipe_stabCropRect"];
    if (!v5)
    {
      if (a2)
      {
        if (a2 == 2)
        {
          v6 = @"PingPong";
        }

        else if (a2 == 3)
        {
          v6 = @"LongExposure";
        }

        else
        {
          v6 = @"AutoLoop";
        }
      }

      else
      {
        v6 = @"None";
      }

      v8 = [v4 objectForKeyedSubscript:v6];
      v9 = [v8 objectForKeyedSubscript:@"recipe"];

      v4 = v9;
    }

LABEL_19:
    v7 = v4;
    goto LABEL_20;
  }

  if (!a2)
  {
    [MEMORY[0x1E695DF30] raise:@"PI Exception" format:@"invalid recipe flavor"];
  }

  if (!liveAnalysisResultFromDictionary())
  {
    goto LABEL_19;
  }

  if (liveAnalysisResultCopyRecipe())
  {
    [MEMORY[0x1E695DF30] raise:@"PI Exception" format:@"Failed to extract from cookbook"];
  }

  v7 = alLoopRecipeToDict();

  liveAnalysisResultDestroy();
LABEL_20:

  return v7;
}

id NUAssertLogger_29379()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_93_29409);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id PIAutoLoopRecipeGetCropRectDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"loopRecipe_stabCropRect"];
  if (!v2)
  {
    v3 = [v1 objectForKeyedSubscript:*MEMORY[0x1E698E1C8]];
    v2 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698E1D8]];
  }

  return v2;
}

double PIAutoLoopRecipeGetCropRect(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v16 = NUAssertLogger_29379();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "recipe != nil"];
      *buf = 138543362;
      v30 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_29379();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(*v18);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v24;
        v31 = 2114;
        v32 = v28;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v23;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v2 = v1;
  v3 = PIAutoLoopRecipeGetCropRectDictionary(v1);
  v4 = MEMORY[0x1CCA61C40](v2);
  if (v4)
  {
    v5 = @"origin_x";
  }

  else
  {
    v5 = @"X";
  }

  if (v4)
  {
    v6 = @"origin_y";
  }

  else
  {
    v6 = @"Y";
  }

  if (v4)
  {
    v7 = @"width";
  }

  else
  {
    v7 = @"Width";
  }

  if (v4)
  {
    v8 = @"height";
  }

  else
  {
    v8 = @"Height";
  }

  v9 = [v3 objectForKeyedSubscript:v5];
  [v9 floatValue];
  v11 = v10;

  v12 = [v3 objectForKeyedSubscript:v6];
  [v12 floatValue];

  v13 = [v3 objectForKeyedSubscript:v7];
  [v13 floatValue];

  v14 = [v3 objectForKeyedSubscript:v8];
  [v14 floatValue];

  return v11;
}

BOOL PIAutoLoopRecipeHasGoodStabilization(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v9 = NUAssertLogger_29379();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "recipe != nil"];
      *buf = 138543362;
      v23 = v10;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v13 = NUAssertLogger_29379();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(*v11);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v17;
        v24 = 2114;
        v25 = v21;
        _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v16;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v2 = v1;
  v3 = [v1 objectForKeyedSubscript:*MEMORY[0x1E698E1C8]];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x1E698E1E0];
  }

  else
  {
    v5 = @"loopRecipe_stabilizeResult";
    v3 = v2;
  }

  v6 = [v3 objectForKeyedSubscript:v5];
  v7 = [v6 intValue] - 1 < 2;

  return v7;
}

void PIAutoLoopRecipeFrameTransformGetTime(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = NUAssertLogger_29379();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "frameTransform != nil"];
      *buf = 138543362;
      v20 = v6;
      _os_log_error_impl(&dword_1C7694000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v7 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_29379();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(*v7);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v20 = v13;
        v21 = 2114;
        v22 = v17;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v20 = v12;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v18 = v3;
  v4 = [v3 objectForKeyedSubscript:@"frameTransform_rawTime"];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  CMTimeMakeFromDictionary(a2, v4);
}

double PIAutoLoopRecipeFrameTransformGetHomography(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v11 = NUAssertLogger_29379();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "frameTransform != nil"];
      *buf = 138543362;
      v26 = v12;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_29379();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(*v13);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v19;
        v27 = 2114;
        v28 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v18;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v2 = v1;
  v3 = [v1 objectForKeyedSubscript:@"frameTransform_homography"];
  v4 = 0;
  memset(v24, 0, sizeof(v24));
  do
  {
    v5 = 0;
    v6 = v4;
    do
    {
      v7 = [v3 objectAtIndexedSubscript:v6];
      [v7 floatValue];
      v9 = v5;
      if ((v5 & 0xFFFFFFFE) != 0)
      {
        v9 = 2;
      }

      *(&v24[v4] + v9) = v8;

      ++v5;
      v6 += 3;
    }

    while (v5 != 3);
    ++v4;
  }

  while (v4 != 3);

  return *v24;
}

id PIAutoLoopRecipeComputeOutputGeometry(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v6 = NUAssertLogger_29379();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "recipe != NULL"];
      buf = 138543362;
      buf_4 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_29379();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v24 = dispatch_get_specific(*v8);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        v8 = [v25 callStackSymbols];
        v27 = [v8 componentsJoinedByString:@"\n"];
        buf = 138543618;
        buf_4 = v24;
        buf_12 = 2114;
        buf_14 = v27;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v8 = [v12 componentsJoinedByString:@"\n"];
      buf = 138543362;
      buf_4 = v8;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    v16 = _NUAssertFailHandler();
    goto LABEL_25;
  }

  v2 = v1;
  if ((NUOrientationIsValid() & 1) == 0)
  {
    v13 = NUAssertLogger_29379();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUOrientationIsValid(videoOrientation)"];
      buf = 138543362;
      buf_4 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    v15 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_29379();
    v16 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!v15)
    {
      if (v16)
      {
        v17 = [MEMORY[0x1E696AF00] callStackSymbols];
        v8 = [v17 componentsJoinedByString:@"\n"];
        buf = 138543362;
        buf_4 = v8;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
      }

LABEL_27:

      v21 = _NUAssertFailHandler();
      goto LABEL_28;
    }

LABEL_25:
    if (v16)
    {
      v28 = dispatch_get_specific(*v8);
      v29 = MEMORY[0x1E696AF00];
      v30 = v28;
      v8 = [v29 callStackSymbols];
      v31 = [v8 componentsJoinedByString:@"\n"];
      buf = 138543618;
      buf_4 = v28;
      buf_12 = 2114;
      buf_14 = v31;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
    }

    goto LABEL_27;
  }

  if ((NUScaleIsValid() & 1) == 0)
  {
    v18 = NUAssertLogger_29379();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUScaleIsValid(videoScale)"];
      buf = 138543362;
      buf_4 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    v20 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_29379();
    v21 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!v20)
    {
      if (v21)
      {
        v22 = [MEMORY[0x1E696AF00] callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        buf = 138543362;
        buf_4 = v23;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
      }

      goto LABEL_30;
    }

LABEL_28:
    if (v21)
    {
      v32 = dispatch_get_specific(*v8);
      v33 = MEMORY[0x1E696AF00];
      v34 = v32;
      v35 = [v33 callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      buf = 138543618;
      buf_4 = v32;
      buf_12 = 2114;
      buf_14 = v36;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
    }

LABEL_30:

    _NUAssertFailHandler();
  }

  PIAutoLoopRecipeGetCropRect(v2);
  NUPixelSizeFromCGSize();
  NUOrientationTransformImageSize();
  NUScaleInvert();
  NUScaleToDouble();
  NUPixelRectScale();
  v3 = objc_alloc(MEMORY[0x1E69B3B18]);
  v4 = [v3 initWithExtent:&buf renderScale:*MEMORY[0x1E69B3918] orientation:{*(MEMORY[0x1E69B3918] + 8), 1}];

  return v4;
}

id PIAutoLoopRecipeGetInstructionAtTime(void *a1, uint64_t a2)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v11 = NUAssertLogger_29379();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "recipe != nil"];
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v12;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &time, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_29379();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v24 = dispatch_get_specific(*v13);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        v13 = [v25 callStackSymbols];
        v27 = [v13 componentsJoinedByString:@"\n"];
        LODWORD(time.value) = 138543618;
        *(&time.value + 4) = v24;
        LOWORD(time.flags) = 2114;
        *(&time.flags + 2) = v27;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v17 componentsJoinedByString:@"\n"];
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v13;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time, 0xCu);
    }

    v21 = _NUAssertFailHandler();
    goto LABEL_22;
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    v18 = NUAssertLogger_29379();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CMTIME_IS_VALID(time)"];
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &time, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    v20 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_29379();
    v21 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!v20)
    {
      if (v21)
      {
        v22 = [MEMORY[0x1E696AF00] callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        LODWORD(time.value) = 138543362;
        *(&time.value + 4) = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time, 0xCu);
      }

      goto LABEL_24;
    }

LABEL_22:
    if (v21)
    {
      v28 = dispatch_get_specific(*v13);
      v29 = MEMORY[0x1E696AF00];
      v30 = v28;
      v31 = [v29 callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = v28;
      LOWORD(time.flags) = 2114;
      *(&time.flags + 2) = v32;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time, 0x16u);
    }

LABEL_24:

    _NUAssertFailHandler();
  }

  v4 = v3;
  v5 = [v3 objectForKeyedSubscript:@"loopRecipe_frameInstructions"];
  time = *a2;
  v34 = @"loopFrameData_presTime";
  v6 = CMTimeCopyAsDictionary(&time, 0);
  v35[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];

  v8 = [v5 indexOfObject:v7 inSortedRange:0 options:objc_msgSend(v5 usingComparator:{"count"), 1280, &__block_literal_global_29490}];
  if (v8 >= [v5 count])
  {
    [v5 lastObject];
  }

  else
  {
    [v5 objectAtIndexedSubscript:v8];
  }
  v9 = ;

  return v9;
}

uint64_t __PIAutoLoopRecipeGetInstructionAtTime_block_invoke(uint64_t a1, void *a2, void *a3)
{
  memset(&v11, 0, sizeof(v11));
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"loopFrameData_presTime"];
  CMTimeMakeFromDictionary(&v11, v5);

  memset(&v10, 0, sizeof(v10));
  v6 = [v4 objectForKeyedSubscript:@"loopFrameData_presTime"];

  CMTimeMakeFromDictionary(&v10, v6);
  time1 = v11;
  v8 = v10;
  if (CMTimeCompare(&time1, &v8) < 0)
  {
    return -1;
  }

  time1 = v11;
  v8 = v10;
  return CMTimeCompare(&time1, &v8) > 0;
}

void PIAutoLoopRecipeGetFrameDuration(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v9 = NUAssertLogger_29379();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "recipe != nil"];
      *buf = 138543362;
      v24 = v10;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v13 = NUAssertLogger_29379();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(*v11);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v17;
        v25 = 2114;
        v26 = v21;
        _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v16;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v22 = v3;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698E1C8]];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698E1D0]];
    CMTimeMakeFromDictionary(a2, v6);
  }

  else
  {
    v6 = [v22 objectForKeyedSubscript:@"loopRecipe_frameInstructions"];
    v7 = [(__CFDictionary *)v6 firstObject];
    v8 = [v7 objectForKeyedSubscript:@"loopFrameData_presDur"];
    CMTimeMakeFromDictionary(a2, v8);
  }
}

id PIAutoLoopRecipeGetFlavorParameters(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v8 = NUAssertLogger_29379();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "recipe != nil"];
      *buf = 138543362;
      v22 = v9;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v10 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v12 = NUAssertLogger_29379();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(*v10);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v22 = v16;
        v23 = 2114;
        v24 = v20;
        _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v15;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = v3;
  if ((a2 - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 objectForKeyedSubscript:**(&unk_1E82ACBC0 + a2 - 1)];
  }

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698E1E8]];

  return v6;
}

void PIAutoLoopRecipeGetTimeRangeForFlavor(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!v5)
  {
    v16 = NUAssertLogger_29379();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "recipe != nil"];
      LODWORD(buf.value) = 138543362;
      *(&buf.value + 4) = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_29379();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(*v18);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        LODWORD(buf.value) = 138543618;
        *(&buf.value + 4) = v24;
        LOWORD(buf.flags) = 2114;
        *(&buf.flags + 2) = v28;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      LODWORD(buf.value) = 138543362;
      *(&buf.value + 4) = v23;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v6 = v5;
  v7 = MEMORY[0x1E6960C98];
  v8 = *(MEMORY[0x1E6960C98] + 16);
  *a3 = *MEMORY[0x1E6960C98];
  *(a3 + 16) = v8;
  *(a3 + 32) = *(v7 + 32);
  memset(&buf, 0, sizeof(buf));
  PIAutoLoopRecipeGetFrameDuration(v5, &buf);
  v9 = PIAutoLoopRecipeGetFlavorParameters(v6, a2);
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E698E200]];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E698E1F8]];
  v12 = [v9 objectForKeyedSubscript:*MEMORY[0x1E698E1F0]];
  memset(&v32, 0, sizeof(v32));
  if (v10)
  {
    v13 = [v10 intValue];
    time = buf;
    CMTimeMultiply(&v32, &time, v13);
  }

  else
  {
    v32 = **&MEMORY[0x1E6960C70];
  }

  v14 = [v11 intValue];
  v15 = [v12 intValue];
  memset(&time, 0, sizeof(time));
  if (v11)
  {
    start = buf;
    CMTimeMultiply(&time, &start, v15 + v14);
  }

  else
  {
    time = **&MEMORY[0x1E6960C70];
  }

  if (v32.flags & 1) != 0 && (time.flags)
  {
    start = v32;
    duration = time;
    CMTimeRangeMake(a3, &start, &duration);
  }
}

id NUAssertLogger_29578()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_112);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

unint64_t CMedian::CxParms::IdealTSize(CMedian::CxParms *this, int a2)
{
  if (*(this + 49) == 1)
  {
    if (a2 == 16)
    {
      if (*(this + 6) >= 0xBu)
      {
        goto LABEL_21;
      }
    }

    else if (a2 != 8 || *(this + 6) >= 0x10u)
    {
LABEL_21:
      v6 = *(this + 6);
      if ((v6 - 48) > 0x4F)
      {
        if ((v6 - 24) > 0x67)
        {
          goto LABEL_29;
        }

        if (*(this + 48))
        {
          goto LABEL_42;
        }

        if (*(this + 46))
        {
          goto LABEL_30;
        }
      }

      else if (*(this + 48) & 1) != 0 || (*(this + 46))
      {
LABEL_29:
        if ((v6 - 3) <= 0x3C)
        {
LABEL_30:
          v5 = 256;
          v4 = 384;
          if ((*(this + 48) & 1) == 0)
          {
            if (*(this + 46))
            {
              v4 = 384;
            }

            else
            {
              v4 = 1024;
            }

            if (*(this + 46))
            {
              v5 = 256;
            }

            else
            {
              v5 = 192;
            }
          }

          return v5 | (v4 << 32);
        }

LABEL_42:
        v5 = 256;
        v4 = 384;
        return v5 | (v4 << 32);
      }

      v5 = 192;
      v4 = 1024;
      return v5 | (v4 << 32);
    }

    v4 = 160;
    v5 = 160;
    return v5 | (v4 << 32);
  }

  if (a2 == 8)
  {
    goto LABEL_21;
  }

  v2 = *(this + 6);
  if (v2 - 8 > 0x77)
  {
    if ((v2 & 0xFFFFFFFC) != 4 && v2 - 1 > 6)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (*(this + 48) & 1) != 0 || (*(this + 46))
  {
    if ((v2 & 0xFFFFFFFC) != 4 && v2 - 1 >= 7)
    {
      if (v2 - 8 <= 0x77 && ((*(this + 48) & 1) != 0 || *(this + 46) == 1))
      {
        v4 = sqrtf(*(this + 8) + 65536.0) - 2 * v2;
        v5 = v4;
        return v5 | (v4 << 32);
      }

      goto LABEL_42;
    }

LABEL_41:
    v5 = 93 - 2 * v2 - (93 - 2 * v2 - 9 * ((57 * (93 - 2 * v2)) >> 9));
    v4 = 0x2000u / (93 - 2 * v2 - (93 - 2 * v2 - 9 * ((57 * (93 - 2 * v2)) >> 9)) + 2 * v2) - 2 * v2;
    return v5 | (v4 << 32);
  }

  v5 = (2 * v2) & 0x70;
  if (v5 <= 0x40)
  {
    v5 = 64;
  }

  if (v2 >= 0x40)
  {
    v5 = 128;
  }

  LODWORD(v4) = (*(this + 7) + 0xFFFF) / (v5 + 2 * v2) - 2 * v2;
  if (v4 >= 4 * v5)
  {
    v4 = 4 * v5;
  }

  else
  {
    v4 = v4;
  }

  return v5 | (v4 << 32);
}

uint64_t CDeleter<CMemBlockT<unsigned char>>::~CDeleter(uint64_t a1)
{
  *a1 = &unk_1F46EA010;
  if (*(a1 + 16) == 1)
  {
    v2 = **(a1 + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
      **(a1 + 8) = 0;
    }
  }

  return a1;
}

void CDeleter<CMemBlockT<unsigned char>>::~CDeleter(uint64_t a1)
{
  v1 = CDeleter<CMemBlockT<unsigned char>>::~CDeleter(a1);
  if (v1)
  {
    --CMemEnv::excount;

    free(v1);
  }
}

double CMemBlockT<unsigned char>::Description@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *a2 = &unk_1F46EA620;
  *(a2 + 8) = v3;
  *(a2 + 32) = 1;
  *(a2 + 64) = v4;
  *(a2 + 40) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  return result;
}

void CMemBlockT<unsigned char>::~CMemBlockT(CMemBlock *a1)
{
  CMemBlock::~CMemBlock(a1);

  CBaseRef::operator delete(v1);
}

uint64_t CMedian::CxParms::CxParms(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = 0;
  *(a1 + 8) = *a2;
  v6 = *(a2 + 8);
  v7 = v6;
  v8 = ((2 * v7) | 1) * ((2 * v7) | 1);
  *(a1 + 24) = v6;
  *(a1 + 28) = v8;
  *(a1 + 36) = ((*(a2 + 12) * (v8 - 1)) + 0.5);
  v9 = vcvts_n_s32_f32(*(a2 + 16), 8uLL);
  v10 = v9 & ~(v9 >> 31);
  if (v10 >= 255)
  {
    v10 = 255;
  }

  *(a1 + 40) = v10;
  *(a1 + 44) = *(a2 + 20);
  v11 = *(a2 + 22);
  v12 = *(a2 + 23) & v11;
  *(a1 + 47) = v12;
  *(a1 + 46) = v11;
  *(a1 + 48) = *(a2 + 24);
  *(a1 + 50) = *(a2 + 26);
  *(a1 + 52) = *(a2 + 27);
  if (v12)
  {
    v13 = CBaseObject::operator new(0x40uLL);
    CMemBlock::CMemBlock(v13, *v4, 0x8000, 1, 16);
    *v13 = &unk_1F46E9F80;
    *v5 = v13;
    v58 = &unk_1F46EA010;
    v59 = v5;
    LOBYTE(v60) = 1;
    if ((*(v13 + 12) & 1) == 0)
    {
      CDeleter<CMemBlockT<unsigned char>>::~CDeleter(&v58);
      return a1;
    }

    LOBYTE(v60) = 0;
    CDeleter<CMemBlockT<unsigned char>>::~CDeleter(&v58);
    v6 = *(a2 + 8);
    v11 = *(a2 + 22);
    v7 = v6;
  }

  v14 = (a1 + 1590);
  if (v11)
  {
    if ((v6 * v6) <= 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = (v6 * v6);
    }

    v16 = 0;
    if (v7)
    {
      v17 = v7 + 1;
      if (v7 + 1 > 2)
      {
        v18 = v7 + 1;
      }

      else
      {
        v18 = 2;
      }

      v19 = v18 - 1;
      v20 = v7 - 1;
      v21 = 1;
      do
      {
        v22 = sqrtf((v15 - v21 * v21));
        v14[v17] = v7 - v22;
        v14[v20] = v7 - v22;
        v16 += 4 * v22 + 2;
        --v20;
        ++v17;
        ++v21;
        --v19;
      }

      while (v19);
    }

    v14[v7] = 0;
    v23 = v16 + 2 * v7 + 1;
  }

  else
  {
    v24 = (2 * v7) | 1;
    bzero(v14, v24);
    v23 = v24 * v24;
  }

  v25 = ((2 * *(a1 + 24)) | 1) * ((2 * *(a1 + 24)) | 1) - v23;
  *(a1 + 28) = v23;
  *(a1 + 32) = v25;
  *(a1 + 36) = ((*(a2 + 12) * (v23 - 1)) + 0.5);
  if (*(a1 + 47) != 1)
  {
LABEL_51:
    *a1 = 1;
    return a1;
  }

  v26 = *v5;
  if (*v5)
  {
    v58 = &unk_1F46EA6B8;
    LOBYTE(v59) = 0;
    v60 = v26;
    if ((*(*v26 + 80))(v26))
    {
      if ((v59 & 1) == 0)
      {
        CLock::~CLock(&v58);
        return a1;
      }
    }

    else
    {
      LOBYTE(v59) = 1;
    }

    v27 = 0;
    v28 = *(*(a1 + 16) + 32);
    v29 = *(a2 + 12);
    v30 = *(a2 + 8) * 0.000015379;
    v31 = a1 + 1334;
    v32 = a1 + 310;
    v33 = v28 + 3;
    v34.i64[0] = 0x200000002;
    v34.i64[1] = 0x200000002;
    v35 = vdupq_n_s64(4uLL);
    v57 = v35;
    while (1)
    {
      v36 = (v27 * v27) * v30;
      *(v31 + v27) = 0;
      if (*(a2 + 22) == 1)
      {
        if (v36 < 1.4142)
        {
          v37 = ((v36 * -180.31) + 255.0) & ~(((v36 * -180.31) + 255.0) >> 31);
          if (v37 >= 255)
          {
            LOBYTE(v37) = -1;
          }

          v36 = 1.4142;
          goto LABEL_33;
        }
      }

      else if (v36 < 1.0)
      {
        v37 = (255.0 - (v36 * 255.0));
        v36 = 1.0;
LABEL_33:
        *(v31 + v27) = v37;
      }

      v38 = v36;
      *(a1 + 53 + v27) = v38;
      if (*(a2 + 22) == 1)
      {
        if ((v38 & 0x80000000) != 0)
        {
          v54 = 1;
        }

        else
        {
          v39 = (v36 * v36);
          v40 = (v38 & 0x7FFFFFFC) + 4;
          v41 = vdupq_n_s64(v38);
          v42 = vdupq_n_s32(v39);
          v43 = 0uLL;
          v44 = v33;
          v45 = xmmword_1C7845C80;
          v46 = xmmword_1C7845DB0;
          do
          {
            v47 = v43;
            v48 = vcgeq_u64(v41, v45);
            v49 = vmovn_s64(v48);
            v50.i64[0] = (v45.i32[0] * v45.i32[0]);
            v50.i64[1] = (v45.i32[2] * v45.i32[2]);
            v51.i64[0] = (v46.i32[0] * v46.i32[0]);
            v51.i64[1] = (v46.i32[2] * v46.i32[2]);
            v52 = vcvtq_s32_f32(vsqrtq_f32(vcvtq_f32_s32(vsubq_s32(v42, vuzp1q_s32(v50, v51)))));
            if (vuzp1_s16(v49, *v41.i8).u8[0])
            {
              *(v44 - 3) = v52.i8[0] + 1;
            }

            if (vuzp1_s16(v49, *&v41).i8[2])
            {
              *(v44 - 2) = v52.i8[4] + 1;
            }

            v53 = vcgeq_u64(v41, v46);
            if (vuzp1_s16(*&v41, vmovn_s64(*&v53)).i32[1])
            {
              *(v44 - 1) = v52.i8[8] + 1;
              *v44 = v52.i8[12] + 1;
            }

            v43 = vaddq_s32(vaddq_s32(v47, v34), vshlq_n_s32(v52, 2uLL));
            v46 = vaddq_s64(v46, v35);
            v45 = vaddq_s64(v45, v35);
            v44 += 4;
            v40 -= 4;
          }

          while (v40);
          v54 = vaddvq_s32(vbslq_s8(vuzp1q_s32(v48, v53), v43, v47)) + 1;
        }

        v55 = v54 - 2 * *v28;
      }

      else
      {
        v55 = ((2 * v38) | 1) * ((2 * v38) | 1);
        *(v32 + 2 * v27) = ((2 * v38) | 1) * ((2 * v38) | 1);
        if ((v38 & 0x80000000) == 0)
        {
          memset(v28, v38 + 1, (v38 + 1));
          v35 = v57;
          v34.i64[0] = 0x200000002;
          v34.i64[1] = 0x200000002;
        }
      }

      *(v32 + 2 * v27) = v55;
      *(a1 + 822 + 2 * v27) = ((v29 * (v55 - 1)) + 0.5);
      v28 += 128;
      ++v27;
      v33 += 128;
      if (v27 == 256)
      {
        CLock::~CLock(&v58);
        goto LABEL_51;
      }
    }
  }

  return a1;
}

unint64_t CMedian::CKernel13x9::IdealTSize(CMedian::CKernel13x9 *this)
{
  v1 = *(this + 1587);
  if (v1)
  {
    return CMedian::CxParms::IdealTSize(v1, 16);
  }

  else
  {
    return 0x10000000100;
  }
}

void CMedian::CKernel13x9::~CKernel13x9(CMedian::CKernel13x9 *this)
{
  CKernel::~CKernel(this);

  JUMPOUT(0x1CCA60F70);
}

uint64_t CMedian::CKernel13x9::Process_(CMedian::CKernel13x9 *this, const CGrNavigator *a2, const CGrNavigator *a3, unsigned int a4, const CGrNavigator *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = malloc_type_calloc(0x2CD50uLL, 1uLL, 0x1000040B35A1309uLL);
  v9 = v8;
  v23[1] = 0;
  v23[2] = v8 + 150864;
  v10 = *(a2 + 3);
  v24 = xmmword_1C7845DE0;
  v25 = v10;
  v23[3] = 2 * v10;
  v26 = 1;
  v27 = 1;
  v23[0] = &unk_1F46EA458;
  v16[1] = 0;
  v17 = (v8 + 167248);
  v11 = *(a3 + 3);
  v19 = xmmword_1C7845DE0;
  v20 = v11;
  v18 = 2 * v11;
  v21 = 1;
  v22 = 1;
  v16[0] = &unk_1F46EA458;
  v12 = *(a2 + 4);
  if (v12 == 4)
  {
    CMedian::OrdinalTransform(a2, v23, v8 + 11600);
    v14 = *(this + 1587);
    bzero(v28, 0x540uLL);
    CMedian::Median13x9C_(v14, v23, v16, v28);
    CMedian::OrdinalTransform(v17, v18, a3, v9 + 118096);
  }

  else if (v12 == 2)
  {
    CMedian::OrdinalTransform(a2, v23, v8 + 725);
    v13 = *(this + 1587);
    bzero(v28, 0x540uLL);
    CMedian::Median13x9C_(v13, v23, v16, v28);
    CMedian::OrdinalTransform(v17, v18, a3, v9 + 101712);
  }

  free(v9);
  CGrNavigator::~CGrNavigator(v16);
  CGrNavigator::~CGrNavigator(v23);
  return 0;
}

uint64_t CMedian::OrdinalTransform(uint64_t result, void *a2, _OWORD *a3)
{
  v3 = a2[6];
  v4 = a2[7];
  a3[30] = 0u;
  a3[31] = 0u;
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  a3[287] = 0u;
  a3[286] = 0u;
  a3[285] = 0u;
  a3[284] = 0u;
  a3[283] = 0u;
  a3[282] = 0u;
  a3[281] = 0u;
  a3[280] = 0u;
  a3[279] = 0u;
  a3[278] = 0u;
  a3[277] = 0u;
  a3[276] = 0u;
  a3[275] = 0u;
  a3[274] = 0u;
  a3[273] = 0u;
  a3[272] = 0u;
  a3[271] = 0u;
  a3[270] = 0u;
  a3[269] = 0u;
  a3[268] = 0u;
  a3[267] = 0u;
  a3[266] = 0u;
  a3[265] = 0u;
  a3[264] = 0u;
  a3[263] = 0u;
  a3[262] = 0u;
  a3[261] = 0u;
  a3[260] = 0u;
  a3[259] = 0u;
  a3[258] = 0u;
  a3[257] = 0u;
  a3[256] = 0u;
  if (v4)
  {
    v5 = 0;
    v6 = *(result + 16);
    v7 = *(result + 24);
    do
    {
      if (v3)
      {
        v8 = v6;
        v9 = v3;
        do
        {
          v10 = *v8;
          v8 += 2;
          ++*(a3 + v10);
          --v9;
        }

        while (v9);
      }

      ++v5;
      v6 += v7;
    }

    while (v5 != v4);
  }

  v11 = 0;
  v12 = 0;
  v13 = a3 + 256;
  do
  {
    v14 = *(a3 + v11);
    *(a3 + v11) = v12;
    v12 += v14;
    v11 += 2;
  }

  while (v11 != 512);
  if (v4)
  {
    v15 = 0;
    v16 = *(result + 16);
    v17 = *(result + 24);
    do
    {
      if (v3)
      {
        v18 = 0;
        result = (v15 << 8);
        v19 = v16;
        do
        {
          v20 = *v19++;
          v21 = *(a3 + v20);
          *(a3 + v20) = v21 + 1;
          ++*(v13 + ((v20 >> 7) & 0x1FELL));
          *(a3 + v21 + 6144) = result | (v20 << 16) | v18++;
        }

        while (v3 != v18);
      }

      ++v15;
      v16 = (v16 + v17);
    }

    while (v15 != v4);
  }

  v22 = 0;
  v23 = 0;
  do
  {
    v24 = *(v13 + v22);
    *(v13 + v22) = v23;
    v23 += v24;
    v22 += 2;
  }

  while (v22 != 512);
  v25 = (v4 * v3);
  if (v25)
  {
    v26 = (a3 + 1536);
    v27 = v25;
    do
    {
      v28 = *v26++;
      v29 = (v28 >> 23) & 0x1FE;
      v30 = *(v13 + v29);
      *(v13 + v29) = v30 + 1;
      *(a3 + v30 + 14336) = v28;
      --v27;
    }

    while (v27);
    v31 = 0;
    v32 = a2[2];
    v33 = a2[3];
    v34 = a3 + 5632;
    do
    {
      v35 = *(v34 + v31 - 0x2000);
      *(2 * v35 + v32 + v33 * BYTE1(v35)) = v31;
      *(v34 + v31++) = HIWORD(v35);
    }

    while (v25 != v31);
  }

  return result;
}

uint64_t CMedian::Median13x9C_(uint64_t result, uint64_t a2, uint64_t a3, char *a4)
{
  v102 = *MEMORY[0x1E69E9840];
  v4 = *(result + 24);
  if ((2 * v4) <= 0x3F)
  {
    v6 = a3;
    v8 = 0;
    v9 = 0;
    v10 = *(a3 + 48);
    v11 = *(a3 + 56);
    v12 = *(result + 36);
    v13 = (2 * v4) | 1u;
    v14 = (result + 1590);
    v100 = 0u;
    memset(v101, 0, 496);
    v98 = 0u;
    memset(v99, 0, sizeof(v99));
    v15 = *(a2 + 24);
    do
    {
      v16 = v14[v9];
      *&v101[8 * v9 - 16] = v8 + 2 * v14[v9];
      *(&v99[-1] + v9++) = v8 + 2 * (2 * v4 + 1 - v16);
      v8 += v15;
    }

    while (v13 != v9);
    bzero(a4, 0x540uLL);
    v17 = 0;
    v18 = (a4 + 32);
    v19 = (a4 + 288);
    do
    {
      v20 = v14[v17];
      v21 = (*(a2 + 16) + 2 * v20 + *(a2 + 24) * v17);
      v22 = (v13 - 2 * v20);
      do
      {
        v23 = *v21++;
        v24 = v23 >> 5;
        v25 = v19[v24];
        ++v18[v24];
        v19[v24] = (1 << v23) ^ v25;
        --v22;
      }

      while (v22);
      ++v17;
    }

    while (v17 != v13);
    v87 = v14;
    v94 = v13;
    v26 = 0;
    v27 = 0;
    v96 = v12;
    v97 = 0;
    v92 = *(&v100 + 1);
    v93 = v100;
    v86 = v10 - 1;
    v28 = v10 - 1;
    v95 = 1;
    v90 = *(&v98 + 1);
    v91 = v98;
    while (1)
    {
      v29 = v27;
      v88 = v28;
      v30 = v28;
LABEL_11:
      v31 = v29;
      v89 = v29;
      while (1)
      {
        v32 = v6;
        v33 = *(v6 + 24) * v26;
        v34 = *(v6 + 16) + 2 * v31;
        result = Hist13x9CRead_(v18, v19, &v97, &v96);
        *(v34 + v33) = result;
        if (v31 == v30)
        {
          break;
        }

        v35 = *(a2 + 16) + 2 * v31 + *(a2 + 24) * v26;
        if (v95 == 1)
        {
          v56 = v96;
          v55 = v97;
          v57 = v101;
          v58 = v99;
          v60 = v93;
          v59 = v94;
          v61 = v90;
          v62 = v91;
          v63 = v92;
          v6 = v32;
          do
          {
            v64 = *(v60 + v35);
            v65 = *(v62 + v35);
            v66 = v65 >> 5;
            v67 = v18[v65 >> 5];
            v68 = v65 - v55;
            v19[v66] = v19[v65 >> 5] ^ (1 << v65);
            v69 = v64 >> 5;
            v70 = v19[v64 >> 5];
            v18[v66] = v67 + 1;
            LOBYTE(v66) = v18[v64 >> 5];
            v56 += (v68 >> 31) + ((v64 - v55) >> 31);
            v19[v69] = v70 ^ (1 << v64);
            v18[v69] = v66 - 1;
            v60 = v63;
            v71 = *v57++;
            v63 = v71;
            v62 = v61;
            v72 = *v58++;
            v61 = v72;
            --v59;
          }

          while (v59);
          v29 = v89 + 1;
          v95 = 1;
          v96 = v56;
          goto LABEL_11;
        }

        v36 = v35 - 2;
        v38 = v96;
        v37 = v97;
        v39 = v101;
        v40 = v99;
        v42 = v93;
        v41 = v94;
        v43 = v90;
        v44 = v91;
        v45 = v92;
        v6 = v32;
        do
        {
          v46 = *(v42 + v36);
          v47 = *(v44 + v36);
          v48 = v46 >> 5;
          v49 = v18[v46 >> 5];
          v50 = v46 - v37;
          v19[v48] = (1 << v46) ^ v19[v46 >> 5];
          v51 = v47 >> 5;
          v52 = v19[v47 >> 5];
          v18[v48] = v49 + 1;
          LOBYTE(v48) = v18[v47 >> 5];
          v38 += (v50 >> 31) + ((v47 - v37) >> 31);
          v19[v51] = v52 ^ (1 << v47);
          v18[v51] = v48 - 1;
          v42 = v45;
          v53 = *v39++;
          v45 = v53;
          v44 = v43;
          v54 = *v40++;
          v43 = v54;
          --v41;
        }

        while (v41);
        --v31;
        v96 = v38;
      }

      if (v26 == ((v11 - 1) & ~((v11 - 1) >> 31)))
      {
        break;
      }

      v74 = v96;
      v73 = v97;
      v75 = v94;
      v76 = v87;
      v27 = v88;
      v77 = v88;
      do
      {
        v78 = *v76++;
        v79 = *(a2 + 24);
        v80 = *(a2 + 16) + 2 * v77;
        v81 = *(v79 * (v26 + v78) + v80);
        v82 = *(v79 * (v94 + v26 - v78) + v80);
        v83 = v18[v82 >> 5];
        v19[v82 >> 5] ^= 1 << v82;
        v84 = v81 >> 5;
        v85 = v19[v81 >> 5];
        v18[v82 >> 5] = v83 + 1;
        LOBYTE(v80) = v18[v81 >> 5];
        v19[v84] = v85 ^ (1 << v81);
        v74 += ((v82 - v73) >> 31) + ((v81 - v73) >> 31);
        v18[v84] = v80 - 1;
        ++v77;
        --v75;
      }

      while (v75);
      v95 = -v95;
      v96 = v74;
      v28 = v86 - v88;
      ++v26;
      v6 = v32;
    }
  }

  return result;
}

uint64_t CMedian::OrdinalTransform(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 56);
  if (*(a3 + 56))
  {
    v5 = 0;
    v6 = *(a3 + 48);
    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    do
    {
      v9 = (result + v5 * a2);
      v10 = (v7 + v8 * v5);
      if (v6 >= 8)
      {
        for (i = 8; i <= v6; i += 8)
        {
          v13 = *(a4 + 2 * v9[1]);
          v14 = *(a4 + 2 * v9[2]);
          v15 = *(a4 + 2 * v9[3]);
          v16 = *(a4 + 2 * v9[4]);
          v17 = *(a4 + 2 * v9[5]);
          v18 = *(a4 + 2 * v9[6]);
          v19 = *(a4 + 2 * v9[7]);
          *v10 = *(a4 + 2 * *v9);
          v10[1] = v13;
          v10[2] = v14;
          v10[3] = v15;
          v10[4] = v16;
          v10[5] = v17;
          v9 += 8;
          v10[6] = v18;
          v10[7] = v19;
          v10 += 8;
        }

        v11 = v6 & 0xFFFFFFF8;
      }

      else
      {
        v11 = 0;
      }

      v20 = v6 >= v11;
      v21 = v6 - v11;
      if (v21 != 0 && v20)
      {
        do
        {
          v22 = *v9++;
          *v10++ = *(a4 + 2 * v22);
          --v21;
        }

        while (v21);
      }

      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

float CMedian::OrdinalTransform(uint64_t a1, void *a2, char *a3)
{
  v5 = (a3 + 57344);
  v6 = (a3 + 24576);
  v7 = (a3 + 0x2000);
  v8 = a2[6];
  v9 = a2[7];
  bzero(a3, 0x2000uLL);
  if (v9)
  {
    v10 = 0;
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    do
    {
      if (v8)
      {
        v13 = v11;
        v14 = v8;
        do
        {
          v15 = *v13++;
          ++*&a3[2 * ((v15 ^ (v15 >> 31)) & 0x7FF)];
          --v14;
        }

        while (v14);
      }

      ++v10;
      v11 = (v11 + v12);
    }

    while (v10 != v9);
  }

  v16 = 0;
  v17 = 0;
  v18 = a3 + 4096;
  do
  {
    v19 = *&a3[v16];
    *&a3[v16] = v17;
    v17 += v19;
    v16 += 2;
  }

  while (v16 != 4096);
  if (v9)
  {
    v20 = 0;
    v21 = *(a1 + 16);
    v22 = *(a1 + 24);
    do
    {
      if (v8)
      {
        v23 = 0;
        v24 = v21;
        do
        {
          v25 = *v24++;
          v26 = ((v25 >> 31) | 0x80000000) ^ v25;
          v27 = *&a3[2 * (v26 & 0x7FF)];
          *&a3[2 * (v26 & 0x7FF)] = v27 + 1;
          v28 = (v26 >> 11) & 0x7FF;
          ++*&v18[2 * v28];
          *&a3[2 * v27 + 0x2000] = v28;
          *&a3[4 * v27 + 24576] = (v20 << 11) | v23++ | v26 & 0xFFC00000;
        }

        while (v8 != v23);
      }

      ++v20;
      v21 = (v21 + v22);
    }

    while (v20 != v9);
  }

  v29 = 0;
  for (i = 4096; i != 0x2000; i += 2)
  {
    v31 = *&a3[i];
    *&a3[i] = v29;
    v29 += v31;
  }

  bzero(a3, 0x800uLL);
  v33 = (v9 * v8);
  if (v33)
  {
    v34 = (v9 * v8);
    do
    {
      v35 = *v7++;
      v36 = *&v18[2 * v35];
      *&v18[2 * v35] = v36 + 1;
      v37 = *v6++;
      ++*&a3[(v37 >> 21) & 0x7FE];
      *&a3[4 * v36 + 57344] = v37;
      --v34;
    }

    while (v34);
  }

  v38 = 0;
  v39 = 0;
  do
  {
    v40 = *&a3[v38];
    *&a3[v38] = v39;
    v39 += v40;
    v38 += 2;
  }

  while (v38 != 4096);
  if (v33)
  {
    v41 = (v9 * v8);
    do
    {
      v42 = *v5++;
      v43 = (v42 >> 21) & 0x7FE;
      v44 = *&a3[v43];
      *&a3[v43] = v44 + 1;
      *&a3[4 * v44 + 24576] = v42;
      --v41;
    }

    while (v41);
    v45 = 0;
    v46 = *(a1 + 16);
    v47 = *(a1 + 24);
    v48 = a2[2];
    v49 = a2[3];
    do
    {
      v50 = &a3[4 * v45];
      v51 = *(v50 + 6144);
      v52 = (v51 >> 11) & 0x7FF;
      v53 = v51 & 0x7FF;
      result = *(v46 + 4 * v53 + v47 * v52);
      v50[26624] = result;
      *(v48 + 2 * v53 + v49 * v52) = v45++;
    }

    while (v33 != v45);
  }

  return result;
}

uint64_t Hist13x9CRead_(unsigned __int8 *a1, unsigned int *a2, unsigned int *a3, int *a4)
{
  v4 = 0;
  if (a1 && a2)
  {
    v5 = *a3;
    v6 = v5 >> 5;
    v7 = -*a4;
    if (*a4 < 0)
    {
      v19 = a1 - 1;
      while (1)
      {
        v20 = &v19[v6];
        v7 -= v19[v6];
        if (v7 < 1)
        {
          LODWORD(v6) = v6 - 1;
          goto LABEL_33;
        }

        v7 -= *(v20 - 1);
        if (v7 < 1)
        {
          LODWORD(v6) = v6 - 2;
          goto LABEL_33;
        }

        v7 -= *(v20 - 2);
        if (v7 < 1)
        {
          LODWORD(v6) = v6 - 3;
          goto LABEL_33;
        }

        v7 -= *(v20 - 3);
        if (v7 < 1)
        {
          LODWORD(v6) = v6 - 4;
          goto LABEL_33;
        }

        v7 -= *(v20 - 4);
        if (v7 < 1)
        {
          LODWORD(v6) = v6 - 5;
          goto LABEL_33;
        }

        v7 -= *(v20 - 5);
        if (v7 < 1)
        {
          LODWORD(v6) = v6 - 6;
          goto LABEL_33;
        }

        v7 -= *(v20 - 6);
        if (v7 < 1)
        {
          break;
        }

        v21 = *(v20 - 7);
        v6 -= 8;
        v10 = __OFSUB__(v7, v21);
        v7 -= v21;
        if ((v7 < 0) ^ v10 | (v7 == 0))
        {
          goto LABEL_33;
        }
      }

      LODWORD(v6) = v6 - 7;
    }

    else
    {
      v8 = &a1[v5 >> 5];
      LODWORD(v6) = v6 - 1;
      while (1)
      {
        v9 = *v8;
        v10 = __OFADD__(v7, v9);
        v11 = v7 + v9;
        if (!((v11 < 0) ^ v10 | (v11 == 0)))
        {
          LODWORD(v6) = v6 + 1;
          goto LABEL_33;
        }

        v12 = v8[1];
        v10 = __OFADD__(v11, v12);
        v7 = v11 + v12;
        if (!((v7 < 0) ^ v10 | (v7 == 0)))
        {
          LODWORD(v6) = v6 + 2;
          goto LABEL_32;
        }

        v13 = v8[2];
        v10 = __OFADD__(v7, v13);
        v11 = v7 + v13;
        if (!((v11 < 0) ^ v10 | (v11 == 0)))
        {
          LODWORD(v6) = v6 + 3;
          goto LABEL_33;
        }

        v14 = v8[3];
        v10 = __OFADD__(v11, v14);
        v7 = v11 + v14;
        if (!((v7 < 0) ^ v10 | (v7 == 0)))
        {
          LODWORD(v6) = v6 + 4;
          goto LABEL_32;
        }

        v15 = v8[4];
        v10 = __OFADD__(v7, v15);
        v11 = v7 + v15;
        if (!((v11 < 0) ^ v10 | (v11 == 0)))
        {
          LODWORD(v6) = v6 + 5;
          goto LABEL_33;
        }

        v16 = v8[5];
        v10 = __OFADD__(v11, v16);
        v7 = v11 + v16;
        if (!((v7 < 0) ^ v10 | (v7 == 0)))
        {
          break;
        }

        v17 = v8[6];
        v10 = __OFADD__(v7, v17);
        v11 = v7 + v17;
        if (!((v11 < 0) ^ v10 | (v11 == 0)))
        {
          LODWORD(v6) = v6 + 7;
          goto LABEL_33;
        }

        v18 = v8[7];
        v8 += 8;
        v7 = v11 + v18;
        LODWORD(v6) = v6 + 8;
        if (v7 >= 1)
        {
          goto LABEL_32;
        }
      }

      LODWORD(v6) = v6 + 6;
LABEL_32:
      v7 = v11;
    }

LABEL_33:
    v22 = 32 * v6;
    *a3 = 32 * v6;
    *a4 = -v7;
    v23 = 1 - v7;
    v24 = a2[v6];
    if (v23 >= 9)
    {
      do
      {
        v25 = (((v24 - 1) & v24) - 1) & (v24 - 1) & v24;
        v26 = (((v25 - 1) & v25) - 1) & (v25 - 1) & v25;
        v27 = (((v26 - 1) & v26) - 1) & (v26 - 1) & v26;
        v24 = (((v27 - 1) & v27) - 1) & (v27 - 1) & v27;
        v23 -= 8;
      }

      while (v23 > 8);
    }

    if (v23 >= 4)
    {
      do
      {
        v28 = (((v24 - 1) & v24) - 1) & (v24 - 1) & v24;
        v24 = (v28 - 1) & v28;
        v23 -= 3;
      }

      while (v23 > 3);
    }

    if (v23 >= 2)
    {
      do
      {
        v24 &= v24 - 1;
        --v23;
      }

      while (v23 > 1);
    }

    return (v22 | 0x1F) - __clz((v24 - 1) ^ v24);
  }

  return v4;
}

void CGrNavigatorT<unsigned short,1ul>::~CGrNavigatorT(CGrNavigator *a1)
{
  CGrNavigator::~CGrNavigator(a1);
  if (v1)
  {
    --CMemEnv::excount;

    free(v1);
  }
}

unint64_t CMedian::CKernel13x9C::IdealTSize(CMedian::CKernel13x9C *this)
{
  v1 = *(this + 1587);
  if (v1)
  {
    return CMedian::CxParms::IdealTSize(v1, 16);
  }

  else
  {
    return 0x10000000100;
  }
}

void CMedian::CKernel13x9C::~CKernel13x9C(CMedian::CKernel13x9C *this)
{
  CKernel::~CKernel(this);

  JUMPOUT(0x1CCA60F70);
}

uint64_t CMedian::CKernel13x9C::Process_(CMedian::CKernel13x9C *this, const CGrNavigator *a2, const CGrNavigator *a3, unsigned int a4, int64x2_t *a5)
{
  puts("CKernel13x9C - local allocation");
  v9 = malloc_type_calloc(0x2A540uLL, 1uLL, 0x1000040160AFAE3uLL);
  v10 = v9;
  v38[1] = 0;
  v38[2] = v9 + 140608;
  v11 = *(a2 + 3);
  v39 = xmmword_1C7845DE0;
  v40 = v11;
  v38[3] = 2 * v11;
  v41 = 1;
  v42 = 1;
  v38[0] = &unk_1F46EA458;
  v31[1] = 0;
  v32 = (v9 + 156992);
  v12 = *(a3 + 3);
  v34 = xmmword_1C7845DE0;
  v35 = v12;
  v33 = 2 * v12;
  v36 = 1;
  v37 = 1;
  v31[0] = &unk_1F46EA458;
  v13 = *(a2 + 4);
  if (v13 == 4)
  {
    v18 = *(*(this + 1587) + 47);
    CMedian::OrdinalTransform(a2, v38, v9 + 1344);
    v19 = *(this + 1587);
    if (a5 && (v18 & 1) != 0)
    {
      v20 = a5[1].i64[1];
      v25 = a5[1].i64[0];
      v26 = v20;
      v21 = vshrq_n_s64(vshlq_n_s64(a5[3], 0x20uLL), 0x20uLL);
      v27 = a5[2];
      v28 = v21;
      v29 = a5[4].i64[0];
      v30 = 1;
      v23 = &unk_1F46EA598;
      v24 = 0;
      CMedian::Median13x9Comp_(v19, v38, v31, &v23, v10);
      CGrNavigator::~CGrNavigator(&v23);
    }

    else
    {
      CMedian::Median13x9C_(v19, v38, v31, v10);
    }

    CMedian::OrdinalTransform(v32, v33, a3, (v10 + 107840));
  }

  else if (v13 == 2)
  {
    v14 = *(*(this + 1587) + 47);
    CMedian::OrdinalTransform(a2, v38, v9 + 84);
    v15 = *(this + 1587);
    if (a5 && (v14 & 1) != 0)
    {
      v16 = a5[1].i64[1];
      v25 = a5[1].i64[0];
      v26 = v16;
      v17 = vshrq_n_s64(vshlq_n_s64(a5[3], 0x20uLL), 0x20uLL);
      v27 = a5[2];
      v28 = v17;
      v29 = a5[4].i64[0];
      v30 = 1;
      v23 = &unk_1F46EA598;
      v24 = 0;
      CMedian::Median13x9Comp_(v15, v38, v31, &v23, v10);
      CGrNavigator::~CGrNavigator(&v23);
    }

    else
    {
      CMedian::Median13x9C_(v15, v38, v31, v10);
    }

    CMedian::OrdinalTransform(v32, v33, a3, (v10 + 91456));
  }

  free(v10);
  CGrNavigator::~CGrNavigator(v31);
  CGrNavigator::~CGrNavigator(v38);
  return 0;
}

uint64_t CMedian::Median13x9Comp_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v205 = *(a3 + 48) - 1;
  v7 = **(a4 + 16);
  v199 = a1 + 822;
  v8 = *(a1 + 822 + 2 * v7);
  v198 = a1 + 53;
  v9 = *(a1 + 53 + v7);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(v10 + 32);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a3 + 56);
  v13 = *(a1 + 24);
  v197 = a1 + 310;
  bzero(a5, 0x540uLL);
  v14 = v13;
  v15 = (a5 + 32);
  v16 = (a5 + 288);
  v216 = v8;
  v217 = 0;
  v17 = -v9;
  v18 = v7;
  v19 = v11;
  do
  {
    if (v17 >= 0)
    {
      v20 = v17;
    }

    else
    {
      v20 = -v17;
    }

    v21 = *(v11 + (v7 << 7) + v20) - 1;
    v22 = (*(a2 + 16) + *(a2 + 24) * (v17 + v14) + 2 * (v14 - v21));
    v23 = (2 * v21) | 1u;
    do
    {
      v24 = *v22++;
      v25 = v24 >> 5;
      v26 = v16[v25];
      ++v15[v25];
      v16[v25] = (1 << v24) ^ v26;
      --v23;
    }

    while (v23);
  }

  while (v17++ != v9);
  v202 = v8;
  v203 = v14;
  LODWORD(v28) = 0;
  v29 = 0;
  v204 = v12;
  v30 = v14 - 1;
  v31 = v14 + 1;
  v194 = v11 + 1;
  v32 = v205;
  v33 = 1;
  v201 = v19;
  v195 = v14 + 1;
  v196 = v14 - 1;
LABEL_13:
  v34 = v19 + (v18 << 7);
  v208 = -v9;
  v28 = v28;
  v207 = v14 - v9;
  v35 = v30 + v28;
  v36 = v31 + v28;
  v206 = (2 * v9) | 1;
  v210 = v18;
  while (1)
  {
    v37 = *(a3 + 16);
    v38 = *(a3 + 24);
    if (v18)
    {
      v214 = v35;
      v212 = v36;
      v39 = v33;
      v40 = v28;
      v41 = v29;
      result = Hist13x9CRead_(v15, v16, &v217, &v216);
      v29 = v41;
      v28 = v40;
      v33 = v39;
      v36 = v212;
      v35 = v214;
      v14 = v203;
    }

    else
    {
      result = *(*(a2 + 16) + 2 * (v29 + v14) + *(a2 + 24) * (v14 + v28));
    }

    *(v38 * v28 + v37 + 2 * v29) = result;
    if (v29 != v32)
    {
      v61 = v29 - (v33 == -1);
      if (v33 < 1)
      {
        v63 = *(*(a4 + 16) + v61 + *(a4 + 24) * v28);
        v62 = v210;
        v18 = v63;
      }

      else
      {
        v62 = *(*(a4 + 16) + v29 + 1 + *(a4 + 24) * v28);
        v63 = v210;
        v18 = v62;
      }

      v19 = v201;
      v64 = v216 - v202;
      v215 = *(v198 + v18);
      v202 = *(v199 + 2 * v18);
      v65 = v64 + v202;
      if (*(v197 + 2 * v63) != *(v197 + 2 * v62))
      {
        v98 = v63;
        v99 = v62;
        v100 = v201 + (v63 << 7);
        v101 = v201 + (v99 << 7);
        LODWORD(v102) = *(v198 + v98);
        v103 = *(v198 + v99);
        v211 = v61;
        v213 = v28;
        v104 = v14 + v28;
        v105 = 2 * (v61 + v14);
        v106 = v217;
        if (v103 <= v102)
        {
          v102 = v102;
        }

        else
        {
          v102 = v103;
        }

        while (1)
        {
          v107 = *(v100 + v102);
          v108 = *(v101 + v102);
          v109 = *(a2 + 24);
          v110 = v105 + *(a2 + 16);
          v111 = v110 + v109 * (v104 - v102);
          v112 = v110 + v109 * (v104 + v102);
          if (*(v100 + v102))
          {
            v113 = 1 - v107;
            if (*(v101 + v102))
            {
              v114 = 2 - v108;
              if (v113 != 2 - v108)
              {
                if (v113 >= v114)
                {
                  v115 = 2 - v108;
                }

                else
                {
                  v115 = 1 - v107;
                }

                if (v113 > v114)
                {
                  v114 = 1 - v107;
                }

                if (v113 <= 2 - v108)
                {
                  v116 = -v33;
                }

                else
                {
                  v116 = v33;
                }

                v117 = v115;
                v118 = (v111 + 2 * v115);
                v119 = -(v114 - v115);
                v120 = v119;
                do
                {
                  v121 = *v118++;
                  v122 = v121 >> 5;
                  v123 = v16[v122];
                  v15[v122] += v116;
                  v65 -= v116 & ((v121 - v106) >> 31);
                  v16[v122] = (1 << v121) ^ v123;
                  v124 = __CFADD__(v120++, 1);
                }

                while (!v124);
                if (v102)
                {
                  v125 = (v112 + 2 * v117);
                  do
                  {
                    v126 = *v125++;
                    v127 = v126 >> 5;
                    v128 = v16[v127];
                    v15[v127] += v116;
                    v65 -= v116 & ((v126 - v106) >> 31);
                    v16[v127] = (1 << v126) ^ v128;
                    v124 = __CFADD__(v119++, 1);
                  }

                  while (!v124);
                }
              }

              v151 = v108 + 1;
              if (v108 + 1 != v107)
              {
                if (v151 >= v107)
                {
                  v152 = v107;
                }

                else
                {
                  v152 = v151;
                }

                if (v151 <= v107)
                {
                  v153 = v107;
                }

                else
                {
                  v153 = v151;
                }

                if (v151 >= v107)
                {
                  v154 = v33;
                }

                else
                {
                  v154 = -v33;
                }

                v155 = (v111 + 2 * v152);
                v156 = v153 - v152;
                v157 = v156;
                do
                {
                  v158 = *v155++;
                  v159 = v158 >> 5;
                  v160 = v16[v159];
                  v15[v159] += v154;
                  v65 -= v154 & ((v158 - v106) >> 31);
                  v16[v159] = (1 << v158) ^ v160;
                  --v157;
                }

                while (v157);
                if (!v102)
                {
LABEL_86:
                  v216 = v65;
                  v19 = v201;
                  v14 = v203;
                  LODWORD(v28) = v213;
                  v9 = v215;
                  v61 = v211;
                  goto LABEL_92;
                }

                v161 = (v112 + 2 * v152);
                do
                {
                  v162 = *v161++;
                  v163 = v162 >> 5;
                  v164 = v16[v163];
                  v15[v163] += v154;
                  v65 -= v154 & ((v162 - v106) >> 31);
                  v16[v163] = (1 << v162) ^ v164;
                  --v156;
                }

                while (v156);
              }
            }

            else
            {
              v140 = v113;
              v141 = (v111 + 2 * v113);
              v142 = 2 * v107 - 1;
              v143 = v142;
              do
              {
                v144 = *v141++;
                v145 = v144 >> 5;
                v146 = v16[v145];
                v15[v145] -= v33;
                v65 += v33 & ((v144 - v106) >> 31);
                v16[v145] = (1 << v144) ^ v146;
                --v143;
              }

              while (v143);
              if (!v102)
              {
                goto LABEL_86;
              }

              v147 = (v112 + 2 * v140);
              do
              {
                v148 = *v147++;
                v149 = v148 >> 5;
                v150 = v16[v149];
                v15[v149] -= v33;
                v65 += v33 & ((v148 - v106) >> 31);
                v16[v149] = (1 << v148) ^ v150;
                --v142;
              }

              while (v142);
            }
          }

          else
          {
            v129 = 2 - v108;
            v130 = (v111 + 2 * (2 - v108));
            v131 = (2 * v108 - 1);
            v132 = v131;
            do
            {
              v133 = *v130++;
              v134 = v133 >> 5;
              v135 = v16[v134];
              v15[v134] += v33;
              v65 -= v33 & ((v133 - v106) >> 31);
              v16[v134] = (1 << v133) ^ v135;
              --v132;
            }

            while (v132);
            if (!v102)
            {
              goto LABEL_86;
            }

            v136 = (v112 + 2 * v129);
            do
            {
              v137 = *v136++;
              v138 = v137 >> 5;
              v139 = v16[v138];
              v15[v138] += v33;
              v65 -= v33 & ((v137 - v106) >> 31);
              v16[v138] = (1 << v137) ^ v139;
              --v131;
            }

            while (v131);
          }

          if (v102-- <= 0)
          {
            goto LABEL_86;
          }
        }
      }

      v66 = v35;
      v67 = v18 << 7;
      v68 = v217;
      v69 = v61 + v14;
      v70 = v61 + v14 + 1;
      v71 = (v14 + v28);
      if (v33 == 1)
      {
        v9 = *(v198 + v18);
        if (*(v198 + v18))
        {
          v72 = v61;
          v73 = (v194 + v67);
          v74 = *(v198 + v18);
          v75 = v36;
          do
          {
            v76 = *v73++;
            v77 = *(a2 + 16) + *(a2 + 24) * v75;
            v78 = *(v77 + 2 * (v69 + v76));
            v79 = v78 >> 5;
            v80 = *(v77 + 2 * (v70 - v76));
            v81 = v15[v78 >> 5];
            v16[v79] = (1 << v78) ^ v16[v78 >> 5];
            v82 = v80 >> 5;
            v83 = v16[v80 >> 5];
            v15[v79] = v81 + 1;
            v15[v82] = v15[v80 >> 5] - 1;
            v84 = v65 + ((v78 - v68) >> 31) + ((v80 - v68) >> 31);
            v85 = *(a2 + 16);
            v86 = *(a2 + 24);
            v16[v82] = v83 ^ (1 << v80);
            v87 = v85 + v86 * v66;
            v88 = *(v87 + 2 * (v69 + v76));
            v89 = v88 >> 5;
            v90 = *(v87 + 2 * (v70 - v76));
            LOBYTE(v85) = v15[v88 >> 5];
            v16[v89] = (1 << v88) ^ v16[v88 >> 5];
            LODWORD(v82) = v16[v90 >> 5];
            v15[v89] = v85 + 1;
            LOBYTE(v89) = v15[v90 >> 5];
            v65 = v84 + ((v88 - v68) >> 31) + ((v90 - v68) >> 31);
            v16[v90 >> 5] = v82 ^ (1 << v90);
            v15[v90 >> 5] = v89 - 1;
            --v66;
            ++v75;
            --v74;
          }

          while (v74);
          v68 = v217;
          v19 = v201;
          v14 = v203;
          v61 = v72;
        }

        v91 = *(v19 + v67);
        v92 = *(a2 + 16) + *(a2 + 24) * v71;
        v93 = *(v92 + 2 * (v70 - v91));
        v94 = *(v92 + 2 * (v69 + v91));
        v95 = v94 >> 5;
        v96 = v15[v94 >> 5];
        v16[v95] = (1 << v94) ^ v16[v94 >> 5];
        v97 = v16[v93 >> 5];
        v15[v95] = v96 + 1;
        LOBYTE(v95) = v15[v93 >> 5];
        v216 = v65 + ((v94 - v68) >> 31) + ((v93 - v68) >> 31);
        v16[v93 >> 5] = v97 ^ (1 << v93);
        v15[v93 >> 5] = v95 - 1;
      }

      else
      {
        v9 = *(v198 + v18);
        if (*(v198 + v18))
        {
          v166 = v61;
          v167 = v28;
          v168 = (v194 + v67);
          v169 = *(v198 + v18);
          v170 = v36;
          do
          {
            v171 = *v168++;
            v172 = *(a2 + 16) + *(a2 + 24) * v170;
            v173 = *(v172 + 2 * (v70 - v171));
            v174 = v173 >> 5;
            v175 = *(v172 + 2 * (v69 + v171));
            v176 = v15[v173 >> 5];
            v16[v174] = v16[v173 >> 5] ^ (1 << v173);
            v177 = v175 >> 5;
            v178 = v16[v175 >> 5];
            v15[v174] = v176 + 1;
            v15[v177] = v15[v175 >> 5] - 1;
            v179 = v65 + ((v173 - v68) >> 31) + ((v175 - v68) >> 31);
            v180 = *(a2 + 16);
            v181 = *(a2 + 24);
            v16[v177] = v178 ^ (1 << v175);
            v182 = v180 + v181 * v66;
            v183 = *(v182 + 2 * (v70 - v171));
            v184 = v183 >> 5;
            v185 = *(v182 + 2 * (v69 + v171));
            LOBYTE(v180) = v15[v183 >> 5];
            v16[v184] = (1 << v183) ^ v16[v183 >> 5];
            v186 = v185 >> 5;
            LODWORD(v177) = v16[v185 >> 5];
            v15[v184] = v180 + 1;
            LOBYTE(v184) = v15[v185 >> 5];
            v65 = v179 + ((v183 - v68) >> 31) + ((v185 - v68) >> 31);
            v16[v186] = v177 ^ (1 << v185);
            v15[v186] = v184 - 1;
            --v66;
            ++v170;
            --v169;
          }

          while (v169);
          v68 = v217;
          v19 = v201;
          v14 = v203;
          LODWORD(v28) = v167;
          v61 = v166;
        }

        v187 = *(v19 + v67);
        v188 = *(a2 + 16) + *(a2 + 24) * v71;
        v189 = *(v188 + 2 * (v70 - v187));
        v190 = *(v188 + 2 * (v69 + v187));
        v191 = v189 >> 5;
        v192 = v15[v189 >> 5];
        v193 = v189 - v68;
        v16[v189 >> 5] ^= 1 << v189;
        LODWORD(v189) = v16[v190 >> 5];
        v15[v191] = v192 + 1;
        LOBYTE(v191) = v15[v190 >> 5];
        v216 = v65 + (v193 >> 31) + ((v190 - v68) >> 31);
        v16[v190 >> 5] = v189 ^ (1 << v190);
        v15[v190 >> 5] = v191 - 1;
      }

LABEL_92:
      if (v33 == 1)
      {
        v29 = v61 + 1;
      }

      else
      {
        v29 = v61;
      }

      v31 = v195;
      v30 = v196;
      goto LABEL_13;
    }

    v43 = v28 + 1;
    v18 = v210;
    if (v28 + 1 >= v204)
    {
      return result;
    }

    v44 = v216;
    v45 = v217;
    v46 = v14 + v28;
    v47 = v14 + v28 + 1;
    v48 = v206;
    v49 = v207 + v32;
    v50 = v208;
    do
    {
      if (v50 >= 0)
      {
        v51 = v50;
      }

      else
      {
        v51 = -v50;
      }

      v52 = *(v34 + v51);
      v53 = *(a2 + 24);
      v54 = *(a2 + 16) + 2 * v49;
      v55 = *(v53 * (v47 - v52) + v54);
      v56 = *(v53 * (v46 + v52) + v54);
      v57 = v56 >> 5;
      v58 = v15[v56 >> 5];
      v59 = v56 - v45;
      v16[v57] = (1 << v56) ^ v16[v56 >> 5];
      v60 = v55 >> 5;
      LODWORD(v53) = v16[v55 >> 5];
      v15[v57] = v58 + 1;
      LOBYTE(v57) = v15[v55 >> 5];
      v44 += (v59 >> 31) + ((v55 - v45) >> 31);
      v16[v60] = v53 ^ (1 << v55);
      v15[v60] = v57 - 1;
      ++v50;
      ++v49;
      --v48;
    }

    while (v48);
    v216 = v44;
    v33 = -v33;
    v29 = v32;
    v32 = v205 - v32;
    ++v35;
    ++v36;
    v28 = v43;
  }
}

CMedian::CKernel13x9 *CMedian::CKernel13x9::CKernel13x9(CMedian::CKernel13x9 *this, const CMedian::CxParms *a2)
{
  v4 = *(a2 + 1);
  *this = &unk_1F46EA510;
  *(this + 8) = 0;
  *(this + 2) = v4;
  *(this + 3) = 0x100000001;
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  bzero(this + 72, 0x3000uLL);
  *(this + 12616) = 0u;
  pthread_mutex_init((this + 12632), 0);
  *(this + 8) = 1;
  *(this + 1587) = a2;
  *this = &unk_1F46EA048;
  *(this + 6) = 9;
  return this;
}

CMedian::CKernel13x9C *CMedian::CKernel13x9C::CKernel13x9C(CMedian::CKernel13x9C *this, const CMedian::CxParms *a2)
{
  v4 = *(a2 + 1);
  *this = &unk_1F46EA510;
  *(this + 8) = 0;
  *(this + 2) = v4;
  *(this + 3) = 0x100000001;
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  bzero(this + 72, 0x3000uLL);
  *(this + 12616) = 0u;
  pthread_mutex_init((this + 12632), 0);
  *(this + 8) = 1;
  *(this + 1587) = a2;
  *this = &unk_1F46EA080;
  *(this + 6) = 9;
  return this;
}

void CBaseRef::operator delete(void *a1)
{
  if (a1)
  {
    v1 = *(a1 + 2);
    v2 = __OFSUB__(v1, 1);
    v3 = v1 - 1;
    if (v3 < 0 != v2)
    {
      --CMemEnv::excount;
      free(a1);
    }

    else
    {
      *(a1 + 2) = v3;
    }
  }
}

void *CBaseObject::operator new(size_t count)
{
  result = malloc_type_calloc(count, 1uLL, 0xE9B74867uLL);
  if (result)
  {
    ++CMemEnv::excount;
    if (result < CBaseObject::minaddr)
    {
      CBaseObject::minaddr = result;
    }

    if (result > CBaseObject::maxaddr)
    {
      CBaseObject::maxaddr = result;
    }
  }

  return result;
}

uint64_t bensort_(uint64_t result, int a2, int a3)
{
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = result + 8;
  v6 = xmmword_1C7845DB0;
  v7 = xmmword_1C7845C80;
  while (1)
  {
    v8 = a3 - a2;
    if (a3 - a2 <= 2)
    {
      break;
    }

    v9 = v4[(a2 + a3) >> 1];
    v10 = a2 + 1;
    v11 = v4[a2];
    v12 = -2;
    v13 = 2;
    v14 = a2;
    v15 = a3;
    do
    {
      v16 = v13;
      if (v11 >= v9)
      {
        v17 = v14;
      }

      else
      {
        v17 = v14 + 1;
      }

      if (v9 >= v11)
      {
        v18 = v10;
      }

      else
      {
        v14 = v15;
        v18 = v15;
      }

      v19 = v4[v18];
      v4[v14] = v11;
      if (v9 >= v11)
      {
        ++v10;
      }

      v20 = v15 - (v9 < v11);
      if (v19 >= v9)
      {
        v14 = v17;
      }

      else
      {
        v14 = v17 + 1;
      }

      result = v9 < v19;
      if (v9 >= v19)
      {
        v21 = v10;
      }

      else
      {
        v17 = v15 - (v9 < v11);
        v21 = v17;
      }

      v11 = v4[v21];
      v4[v17] = v19;
      if (v9 >= v19)
      {
        ++v10;
      }

      v15 = v20 - result;
      v22 = v12 + 4;
      v12 += 2;
      v13 = v16 + 2;
      v23 = v22 <= v8;
    }

    while (v22 < v8);
    while (v23)
    {
      if (v11 >= v9)
      {
        if (v11 > v9)
        {
          v24 = v4[v15];
          v4[v15--] = v11;
          v11 = v24;
          goto LABEL_28;
        }
      }

      else
      {
        v4[v14++] = v11;
      }

      v11 = v4[v10++];
LABEL_28:
      v23 = ++v16 <= v8;
    }

    v25 = (v15 - v14);
    if (v15 >= v14)
    {
      v26 = 0;
      v27 = (v25 + 4) & 0x1FFFFFFFCLL;
      v28 = vdupq_n_s64(v25);
      v29 = (v5 + 4 * v14);
      do
      {
        v30 = vdupq_n_s64(v26);
        v31 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, v7)));
        if (vuzp1_s16(v31, *v28.i8).u8[0])
        {
          *(v29 - 2) = v9;
        }

        if (vuzp1_s16(v31, *&v28).i8[2])
        {
          *(v29 - 1) = v9;
        }

        if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, v6)))).i32[1])
        {
          *v29 = v9;
          v29[1] = v9;
        }

        v26 += 4;
        v29 += 4;
      }

      while (v27 != v26);
    }

    if (v14 - 1 > a2)
    {
      result = bensort_(v4, a2, v14 - 1);
      v7 = xmmword_1C7845C80;
      v6 = xmmword_1C7845DB0;
    }

    a2 = v15 + 1;
    if (v15 + 1 >= a3)
    {
      return result;
    }
  }

  v32 = &v4[a2];
  v33 = *v32;
  if (v8 == 1)
  {
    v34 = v4[a3];
    if (v33 > v34)
    {
      *v32 = v34;
      v4[a3] = v33;
    }
  }

  else
  {
    v35 = v32[1];
    v36 = v32[2];
    if (v33 <= v35)
    {
      v37 = v32[1];
    }

    else
    {
      v37 = *v32;
    }

    if (v33 >= v35)
    {
      v33 = v32[1];
    }

    if (v33 <= v36)
    {
      v38 = v32[2];
    }

    else
    {
      v38 = v33;
    }

    if (v33 >= v36)
    {
      v33 = v32[2];
    }

    if (v37 <= v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = v37;
    }

    if (v37 < v38)
    {
      v38 = v37;
    }

    *v32 = v33;
    v32[1] = v38;
    v32[2] = v39;
  }

  return result;
}

void CMedian::CKernel8C::~CKernel8C(CMedian::CKernel8C *this)
{
  *this = &unk_1F46EA548;
  CLock::~CLock((this + 12704));

  CKernel::~CKernel(this);
}

{
  *this = &unk_1F46EA548;
  CLock::~CLock((this + 12704));
  CKernel::~CKernel(this);

  JUMPOUT(0x1CCA60F70);
}

uint64_t CMedian::Median(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v41 = *MEMORY[0x1E69E9840];
  if (*(v1 + 8) == 0.0)
  {
    v6 = v2[3].u32[2];
    if (v2[3].i32[2])
    {
      v7 = 0;
      v8 = 2 * v2[3].i64[0];
      do
      {
        memcpy((v3[1].i64[0] + v3[1].i64[1] * v7), (v5[1].i64[0] + v5[1].i64[1] * v7), v8);
        ++v7;
      }

      while (v6 != v7);
    }

    return 0;
  }

  if (*(v1 + 25) == 1)
  {
    CMedian::CxParms::CxParms(v35, v1);
    v10 = v5[3].u32[2];
    CGrNavigator::CGrNavigator(&v20, v36, v5[3].u32[0], v10, 1);
    v20.i64[0] = &unk_1F46EA598;
    if (v23 == 1)
    {
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v12 = (v5[1].i64[0] + v5[1].i64[1] * i);
          v13 = (v21 + v22 * i);
          v14 = v10;
          do
          {
            v15 = *v12++;
            v16 = v15 >> 7;
            if (v15 < 0)
            {
              v17 = -1;
            }

            else
            {
              v17 = v16;
            }

            *v13++ = v17;
            --v14;
          }

          while (v14);
        }
      }

      CMedian::CKernel8x16::CKernel8x16(&v24, v35);
      v9 = CKernel::Process(&v24, &v20, v3, 0);
      CKernel::~CKernel(&v24);
    }

    else
    {
      v9 = 7;
    }

    CGrNavigator::~CGrNavigator(&v20);
    goto LABEL_32;
  }

  CMedian::CxParms::CxParms(v35, v1);
  if (v35[0] == 1)
  {
    if ((v38 - 8) <= 0x77 && (v40 & 1) == 0 && (v39 & 1) == 0)
    {
      v26 = v36;
      v28 = 0;
      v29 = 0;
      v30 = 0u;
      v31 = 0;
      bzero(v32, 0x3000uLL);
      v32[784] = 0u;
      pthread_mutex_init(&v33, 0);
      v25 = 1;
      v34 = v35;
      v24 = &unk_1F46EA3B8;
      v27 = 0x1000000010;
      v18 = CKernel::Process(&v24, v5, v3, 0);
LABEL_31:
      v9 = v18;
      CKernel::~CKernel(&v24);
      goto LABEL_32;
    }

    if ((v38 & 0xFFFFFFFC) == 4)
    {
      if ((v40 & 1) == 0 && (v39 & 1) == 0)
      {
        CMedian::CKernel13x9::CKernel13x9(&v24, v35);
        v18 = CKernel::Process(&v24, v5, v3, 0);
        goto LABEL_31;
      }

LABEL_30:
      CMedian::CKernel13x9C::CKernel13x9C(&v24, v35);
      v18 = CKernel::Process(&v24, v5, v3, 0);
      goto LABEL_31;
    }

    if ((v38 - 1) <= 6)
    {
      goto LABEL_30;
    }

    if ((v38 - 8) <= 0x77 && ((v40 & 1) != 0 || v39 == 1))
    {
      CMedian::CKernel16C::CKernel16C(&v24, v35);
      v9 = CKernel::Process(&v24, v5, v3, 0);
      CMedian::CKernel16C::~CKernel16C(&v24);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 7;
  }

LABEL_32:
  if (v35[0] == 1 && v37)
  {
    (*(*v37 + 8))(v37);
  }

  return v9;
}

{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v58 = *MEMORY[0x1E69E9840];
  if (*(v1 + 8) == 0.0)
  {
    v6 = v2[3].u32[2];
    if (v2[3].i32[2])
    {
      v7 = 0;
      v8 = 4 * v2[3].i64[0];
      do
      {
        memcpy((v3[1].i64[0] + v3[1].i64[1] * v7), (v5[1].i64[0] + v5[1].i64[1] * v7), v8);
        ++v7;
      }

      while (v6 != v7);
    }

    return 0;
  }

  v10 = v1;
  CMedian::CxParms::CxParms(v51, v1);
  if (v51[0] == 1)
  {
    if (v57 == 1)
    {
      *&v42 = v52;
      *(&v42 + 1) = 0x100000001;
      v43 = 256;
      v44 = 0;
      v45 = 0u;
      v46 = 0;
      bzero(v47, 0x3000uLL);
      v48 = 0u;
      pthread_mutex_init(&v49, 0);
      BYTE8(v41) = 1;
      v50 = v51;
      *&v41 = &unk_1F46EA740;
      v11 = CKernel::Process(&v41, v5, v3, 0);
    }

    else
    {
      if (v54 - 8) > 0x77 || (v56 & 1) != 0 || (v55)
      {
        if ((v54 & 0xFFFFFFFC) == 4)
        {
          if ((v56 & 1) == 0 && (v55 & 1) == 0)
          {
            CMedian::CKernel13x9::CKernel13x9(&v41, v51);
            v11 = CKernel::Process(&v41, v5, v3, 0);
            goto LABEL_20;
          }
        }

        else if ((v54 - 1) > 6)
        {
          if (*(v10 + 20) == -1)
          {
            CGrNavigator::CGrNavigator(&v41, *v10, v5[3].i64[0], v5[3].i64[1], 2);
            *&v41 = &unk_1F46EA458;
            if (v47[0])
            {
              CGrNavigator::CGrNavigator(v39, *v10, v3[3].i64[0], v3[3].i64[1], 2);
              v39[0] = &unk_1F46EA458;
              if (v40 == 1)
              {
                v14 = v5[3].u64[1];
                if (v14)
                {
                  LODWORD(v15) = 0;
                  v16 = v5[3].u64[0];
                  v17 = v5[1].i64[0];
                  v18 = v5[1].i64[1];
                  v20 = *(&v42 + 1);
                  v19 = v42;
                  do
                  {
                    if (v16)
                    {
                      v21 = 1;
                      v22 = v17;
                      v23 = v19;
                      do
                      {
                        v24 = *v22++;
                        v25 = vcvts_n_s32_f32(v24, 0x10uLL);
                        v26 = v25 & ~(v25 >> 31);
                        if (v26 >= 0xFFFF)
                        {
                          LOWORD(v26) = -1;
                        }

                        *v23++ = v26;
                        v27 = v16 > v21++;
                      }

                      while (v27);
                    }

                    v15 = (v15 + 1);
                    v19 = (v19 + v20);
                    v17 = (v17 + v18);
                  }

                  while (v14 > v15);
                }

                v9 = CMedian::Median(v10);
                if (!v9)
                {
                  v28 = v3[3].u64[1];
                  if (v28)
                  {
                    LODWORD(v29) = 0;
                    v30 = v3[3].u64[0];
                    v31 = v39[2];
                    v32 = v39[3];
                    v33 = v3[1].i64[0];
                    v34 = v3[1].i64[1];
                    do
                    {
                      if (v30)
                      {
                        v35 = 1;
                        v36 = v31;
                        v37 = v33;
                        do
                        {
                          v38 = *v36++;
                          *v37++ = vcvts_n_f32_u32(v38, 0x10uLL);
                          v27 = v30 > v35++;
                        }

                        while (v27);
                      }

                      v29 = (v29 + 1);
                      v33 = (v33 + v34);
                      v31 = (v31 + v32);
                    }

                    while (v28 > v29);
                  }

                  v9 = 0;
                }
              }

              else
              {
                v9 = 7;
              }

              CGrNavigator::~CGrNavigator(v39);
            }

            else
            {
              v9 = 7;
            }

            CGrNavigator::~CGrNavigator(&v41);
          }

          else
          {
            v13 = *(v10 + 16);
            v41 = *v10;
            v42 = v13;
            WORD2(v42) = -1;
            v9 = CMedian::Median(&v41, v5, v3);
          }

          goto LABEL_21;
        }

        CMedian::CKernel13x9C::CKernel13x9C(&v41, v51);
        v11 = CKernel::Process(&v41, v5, v3, 0);
        goto LABEL_20;
      }

      *&v42 = v52;
      v43 = 0;
      v44 = 0;
      v45 = 0u;
      v46 = 0;
      bzero(v47, 0x3000uLL);
      v48 = 0u;
      pthread_mutex_init(&v49, 0);
      BYTE8(v41) = 1;
      v50 = v51;
      *&v41 = &unk_1F46EA3F0;
      *(&v42 + 1) = 0x800000010;
      v11 = CKernel::Process(&v41, v5, v3, 0);
    }

LABEL_20:
    v9 = v11;
    CKernel::~CKernel(&v41);
    goto LABEL_21;
  }

  v9 = 7;
LABEL_21:
  if (v51[0] == 1 && v53)
  {
    (*(*v53 + 8))(v53);
  }

  return v9;
}

void sub_1C7826BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  CMedian::CKernel16C::~CKernel16C(va);
  if (*v12 == 1)
  {
    if (STACK[0x3220])
    {
      (*(*STACK[0x3220] + 8))(STACK[0x3220]);
    }
  }

  _Unwind_Resume(a1);
}

void CMedian::CKernel16C::~CKernel16C(CMedian::CKernel16C *this)
{
  *this = &unk_1F46EA0E8;
  CLock::~CLock((this + 12704));

  CKernel::~CKernel(this);
}

{
  *this = &unk_1F46EA0E8;
  CLock::~CLock((this + 12704));
  CKernel::~CKernel(this);

  JUMPOUT(0x1CCA60F70);
}

void sub_1C78271BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  CGrNavigator::~CGrNavigator(&a9);
  CGrNavigator::~CGrNavigator(&a19);
  if (*v19 == 1)
  {
    if (STACK[0x3200])
    {
      (*(*STACK[0x3200] + 8))(STACK[0x3200]);
    }
  }

  _Unwind_Resume(a1);
}

unint64_t CMedian::CKernel16C::IdealTSize(CMedian::CKernel16C *this)
{
  v1 = *(this + 1587);
  if (v1)
  {
    return CMedian::CxParms::IdealTSize(v1, 16);
  }

  else
  {
    return 0x10000000100;
  }
}

uint64_t CMedian::CKernel16C::Process_(CMedian::CKernel16C *this, const CGrNavigator *a2, const CGrNavigator *a3, unsigned int a4, const CGrNavigator *a5)
{
  v5 = MEMORY[0x1EEE9AC00](this);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v5;
  v338 = *MEMORY[0x1E69E9840];
  v15 = CKernel::BorrowData(v5);
  if (!v15)
  {
    return 7;
  }

  v16 = v15;
  v17 = (*(v15 + 32) + 611256 * v9);
  v318[1] = 0;
  v319 = v17 + 337008;
  v18 = *(v13 + 48);
  v321 = xmmword_1C7845DE0;
  v322 = v18;
  v320 = 2 * v18;
  v323 = 1;
  v324 = 1;
  v318[0] = &unk_1F46EA458;
  v311[1] = 0;
  v312 = v17 + 496056;
  v19 = *(v11 + 48);
  v314 = xmmword_1C7845DE0;
  v315 = v19;
  v313 = 2 * v19;
  v316 = 1;
  v317 = 1;
  v311[0] = &unk_1F46EA458;
  v20 = *(v14 + 1587);
  if (v7 && *(v20 + 46) == 1 && *(v20 + 47) == 1)
  {
    CMedian::Median16CFlattenHistComp_(v20, v13, v318, (v17 + 9280));
    v21 = *(v14 + 1587);
    v22 = *(v7 + 16);
    v23 = *(v7 + 24);
    v25 = *(v7 + 32);
    v24 = *(v7 + 48);
    v331 = 0;
    v332 = v22;
    v334 = v25;
    v335 = vshrq_n_s64(vshlq_n_s64(v24, 0x20uLL), 0x20uLL);
    v26 = *(v7 + 64);
    v333 = v23;
    v336 = v26;
    v337 = 1;
    v330 = &unk_1F46EA598;
    v296 = v315 - 1;
    v27 = *v22;
    v286 = v14;
    v287 = v21 + 822;
    v279 = v21 + 53;
    v28 = *(v21 + 53 + v27);
    v29 = *(v21 + 16);
    v284 = v11;
    v290 = *(v21 + 822 + 2 * v27);
    if (v29)
    {
      v30 = *(v29 + 32);
    }

    else
    {
      v30 = 0;
    }

    v308 = DWORD2(v315);
    v109 = *(v21 + 24);
    v278 = v21 + 310;
    bzero(v17, 0x2440uLL);
    v110 = v109;
    v111 = (v17 + 32);
    v112 = (v17 + 1056);
    v113 = v28;
    v114 = -v28;
    v115 = v27;
    do
    {
      if (v114 >= 0)
      {
        v116 = v114;
      }

      else
      {
        v116 = -v114;
      }

      v117 = *(v30 + (v27 << 7) + v116) - 1;
      v118 = &v319[2 * (v110 - v117) + v320 * (v114 + v110)];
      v119 = (2 * v117) | 1u;
      do
      {
        v120 = *v118;
        v118 += 2;
        v121 = (v120 >> 3) & 0x1FFC;
        v122 = *(v112 + v121);
        ++v111[v120 >> 6];
        *(v112 + v121) = (0x80000000 >> v120) ^ v122;
        --v119;
      }

      while (v119);
    }

    while (v114++ != v28);
    v274 = v7;
    v275 = v13;
    v281 = v17;
    v283 = v16;
    LODWORD(v124) = 0;
    v125 = 0;
    v126 = v290 - *v111;
    v327[0] = 64;
    v295 = v308;
    v326 = v126;
    v127 = v110 - 1;
    v128 = v110 + 1;
    v273 = v30 + 1;
    v129 = v296;
    v130 = 1;
    v293 = v110;
    v289 = v30;
    v276 = v110 + 1;
    v277 = v110 - 1;
LABEL_43:
    v131 = v30 + (v115 << 7);
    v301 = -v113;
    v124 = v124;
    v299 = v110 - v113;
    v132 = v127 + v124;
    v133 = v128 + v124;
    v298 = (2 * v113) | 1;
    v303 = v115;
    while (1)
    {
      v309 = v132;
      v134 = v312;
      if (v115)
      {
        v135 = v130;
        v136 = v124;
        v137 = v133;
        v138 = v129;
        v139 = Hist16CRead_(v111, v112, v327, &v326);
        v134 = v312;
        v124 = v136;
        v130 = v135;
        v129 = v138;
        v133 = v137;
        v110 = v293;
      }

      else
      {
        v139 = *&v319[2 * (v125 + v110) + v320 * (v110 + v124)];
      }

      *(v313 * v124 + v134 + 2 * v125) = v139;
      if (v125 != v129)
      {
        v156 = v133;
        v157 = v125 - (v130 == -1);
        v30 = v289;
        v158 = v309;
        if (v130 < 1)
        {
          v160 = v332[v157 + v333 * v124];
          v159 = v303;
          v115 = v160;
        }

        else
        {
          v159 = v332[v125 + 1 + v333 * v124];
          v160 = v303;
          v115 = v159;
        }

        v161 = v326 - v290;
        v113 = *(v279 + v115);
        v290 = *(v287 + 2 * v115);
        v162 = v161 + v290;
        if (*(v278 + 2 * v160) == *(v278 + 2 * v159))
        {
          v163 = v129;
          v164 = v115 << 7;
          v165 = v327[0];
          v166 = v157 + v110;
          v167 = v157 + v110 + 1;
          v168 = (v110 + v124);
          if (v130 == 1)
          {
            if (*(v279 + v115))
            {
              v304 = v124;
              v169 = (v273 + v164);
              v170 = *(v279 + v115);
              v171 = *(v279 + v115);
              do
              {
                v172 = *v169++;
                v173 = &v319[v320 * v156];
                v174 = *&v173[2 * (v167 - v172)];
                v175 = *&v173[2 * (v166 + v172)];
                v176 = v175 - v165;
                v177 = v111[v175 >> 6];
                *(v112 + ((v175 >> 3) & 0x1FFC)) ^= 0x80000000 >> v175;
                v111[v175 >> 6] = v177 + 1;
                v178 = v111[v174 >> 6];
                *(v112 + ((v174 >> 3) & 0x1FFC)) ^= 0x80000000 >> v174;
                v111[v174 >> 6] = v178 - 1;
                v179 = &v319[v320 * v158];
                v180 = *&v179[2 * (v166 + v172)];
                v181 = *&v179[2 * (v167 - v172)];
                v162 += ((v174 - v165) >> 31) + (v176 >> 31) + ((v181 - v165) >> 31) + ((v180 - v165) >> 31);
                LOBYTE(v174) = v111[v180 >> 6];
                *(v112 + ((v180 >> 3) & 0x1FFC)) ^= 0x80000000 >> v180;
                v111[v180 >> 6] = v174 + 1;
                LOBYTE(v174) = v111[v181 >> 6];
                *(v112 + ((v181 >> 3) & 0x1FFC)) ^= 0x80000000 >> v181;
                v111[v181 >> 6] = v174 - 1;
                --v158;
                ++v156;
                --v171;
              }

              while (v171);
              v165 = v327[0];
              v30 = v289;
              v110 = v293;
              LODWORD(v124) = v304;
              v113 = v170;
            }

            v182 = *(v30 + v164);
            v183 = &v319[v320 * v168];
            v184 = *&v183[2 * (v167 - v182)];
            v185 = *&v183[2 * (v166 + v182)];
            v326 = v162 + ((v184 - v165) >> 31) + ((v185 - v165) >> 31);
            v186 = (v184 >> 3) & 0x1FFC;
            v187 = v184 >> 6;
            v188 = v111[v185 >> 6];
            *(v112 + ((v185 >> 3) & 0x1FFC)) ^= 0x80000000 >> v185;
            v189 = *(v112 + v186);
            v111[v185 >> 6] = v188 + 1;
            v190 = v111[v184 >> 6];
            v191 = 0x80000000 >> v184;
          }

          else
          {
            if (*(v279 + v115))
            {
              v306 = v124;
              v242 = (v273 + v164);
              v243 = *(v279 + v115);
              v244 = *(v279 + v115);
              do
              {
                v245 = *v242++;
                v246 = &v319[v320 * v156];
                v247 = *&v246[2 * (v167 - v245)];
                v248 = *&v246[2 * (v166 + v245)];
                v249 = v111[v247 >> 6];
                *(v112 + ((v247 >> 3) & 0x1FFC)) ^= 0x80000000 >> v247;
                v111[v247 >> 6] = v249 + 1;
                v250 = v111[v248 >> 6];
                *(v112 + ((v248 >> 3) & 0x1FFC)) ^= 0x80000000 >> v248;
                v251 = v162 + ((v248 - v165) >> 31);
                v111[v248 >> 6] = v250 - 1;
                v252 = &v319[v320 * v158];
                v253 = *&v252[2 * (v167 - v245)];
                v254 = *&v252[2 * (v166 + v245)];
                v162 = v251 + ((v247 - v165) >> 31) + ((v253 - v165) >> 31) + ((v254 - v165) >> 31);
                LOBYTE(v252) = v111[v253 >> 6];
                *(v112 + ((v253 >> 3) & 0x1FFC)) ^= 0x80000000 >> v253;
                v111[v253 >> 6] = v252 + 1;
                LOBYTE(v247) = v111[v254 >> 6];
                *(v112 + ((v254 >> 3) & 0x1FFC)) ^= 0x80000000 >> v254;
                v111[v254 >> 6] = v247 - 1;
                --v158;
                ++v156;
                --v244;
              }

              while (v244);
              v165 = v327[0];
              v30 = v289;
              v110 = v293;
              LODWORD(v124) = v306;
              v113 = v243;
            }

            v255 = *(v30 + v164);
            v256 = &v319[v320 * v168];
            v257 = *&v256[2 * (v167 - v255)];
            v258 = *&v256[2 * (v166 + v255)];
            v326 = v162 + ((v258 - v165) >> 31) + ((v257 - v165) >> 31);
            v186 = (v258 >> 3) & 0x1FFC;
            v187 = v258 >> 6;
            v259 = v111[v257 >> 6];
            *(v112 + ((v257 >> 3) & 0x1FFC)) ^= 0x80000000 >> v257;
            v189 = *(v112 + v186);
            v111[v257 >> 6] = v259 + 1;
            v190 = v111[v258 >> 6];
            v191 = 0x80000000 >> v258;
          }

          *(v112 + v186) = v189 ^ v191;
          v111[v187] = v190 - 1;
          v129 = v163;
          goto LABEL_131;
        }

        v305 = v124;
        v310 = *(v279 + v115);
        v192 = v160;
        v193 = v159;
        v194 = v289 + (v160 << 7);
        v195 = v289 + (v193 << 7);
        LODWORD(v196) = *(v279 + v192);
        v197 = *(v279 + v193);
        v198 = v110 + v124;
        v199 = 2 * (v157 + v110);
        v200 = v327[0];
        if (v197 <= v196)
        {
          v196 = v196;
        }

        else
        {
          v196 = v197;
        }

        while (1)
        {
          v201 = *(v194 + v196);
          v202 = *(v195 + v196);
          v203 = &v319[v199 + v320 * (v198 - v196)];
          v204 = &v319[v199 + v320 * (v198 + v196)];
          if (*(v194 + v196))
          {
            v205 = 1 - v201;
            v206 = v129;
            if (*(v195 + v196))
            {
              v207 = 2 - v202;
              if (v205 != 2 - v202)
              {
                if (v205 >= v207)
                {
                  v208 = 2 - v202;
                }

                else
                {
                  v208 = 1 - v201;
                }

                if (v205 > v207)
                {
                  v207 = 1 - v201;
                }

                if (v205 <= 2 - v202)
                {
                  v209 = -v130;
                }

                else
                {
                  v209 = v130;
                }

                v210 = v207 - v208;
                if (v203)
                {
                  v211 = (v203 + 2 * v208);
                  v212 = -v210;
                  do
                  {
                    v213 = *v211++;
                    v111[v213 >> 6] += v209;
                    v162 -= v209 & ((v213 - v200) >> 31);
                    *(v112 + ((v213 >> 3) & 0x1FFC)) ^= 0x80000000 >> v213;
                    v214 = __CFADD__(v212++, 1);
                  }

                  while (!v214);
                }

                if (v196 && v204)
                {
                  v215 = (v204 + 2 * v208);
                  v216 = -v210;
                  do
                  {
                    v217 = *v215++;
                    v111[v217 >> 6] += v209;
                    v162 -= v209 & ((v217 - v200) >> 31);
                    *(v112 + ((v217 >> 3) & 0x1FFC)) ^= 0x80000000 >> v217;
                    v214 = __CFADD__(v216++, 1);
                  }

                  while (!v214);
                }
              }

              v218 = v202 + 1;
              if (v202 + 1 == v201)
              {
                v110 = v293;
              }

              else
              {
                if (v218 >= v201)
                {
                  v232 = v201;
                }

                else
                {
                  v232 = v218;
                }

                if (v218 <= v201)
                {
                  v233 = v201;
                }

                else
                {
                  v233 = v218;
                }

                if (v218 >= v201)
                {
                  v234 = v130;
                }

                else
                {
                  v234 = -v130;
                }

                v235 = (v203 + 2 * v232);
                v236 = v233 - v232;
                v237 = v236;
                do
                {
                  v238 = *v235++;
                  v111[v238 >> 6] += v234;
                  v162 -= v234 & ((v238 - v200) >> 31);
                  *(v112 + ((v238 >> 3) & 0x1FFC)) ^= 0x80000000 >> v238;
                  --v237;
                }

                while (v237);
                if (!v196)
                {
                  goto LABEL_129;
                }

                v239 = (v204 + 2 * v232);
                v110 = v293;
                do
                {
                  v240 = *v239++;
                  v111[v240 >> 6] += v234;
                  v162 -= v234 & ((v240 - v200) >> 31);
                  *(v112 + ((v240 >> 3) & 0x1FFC)) ^= 0x80000000 >> v240;
                  --v236;
                }

                while (v236);
              }
            }

            else
            {
              v226 = 2 * v201 - 1;
              if (v203)
              {
                v227 = (v203 + 2 * v205);
                v228 = v226;
                do
                {
                  v229 = *v227++;
                  v111[v229 >> 6] -= v130;
                  v162 += v130 & ((v229 - v200) >> 31);
                  *(v112 + ((v229 >> 3) & 0x1FFC)) ^= 0x80000000 >> v229;
                  --v228;
                }

                while (v228);
              }

              if (!v196)
              {
                goto LABEL_129;
              }

              v110 = v293;
              if (v204)
              {
                v230 = (v204 + 2 * v205);
                do
                {
                  v231 = *v230++;
                  v111[v231 >> 6] -= v130;
                  v162 += v130 & ((v231 - v200) >> 31);
                  *(v112 + ((v231 >> 3) & 0x1FFC)) ^= 0x80000000 >> v231;
                  --v226;
                }

                while (v226);
              }
            }
          }

          else
          {
            v206 = v129;
            v219 = 2 - v202;
            v220 = (2 * v202 - 1);
            if (v203)
            {
              v221 = (v203 + 2 * v219);
              v222 = (2 * v202 - 1);
              do
              {
                v223 = *v221++;
                v111[v223 >> 6] += v130;
                v162 -= v130 & ((v223 - v200) >> 31);
                *(v112 + ((v223 >> 3) & 0x1FFC)) ^= 0x80000000 >> v223;
                --v222;
              }

              while (v222);
            }

            if (!v196)
            {
LABEL_129:
              v110 = v293;
              v129 = v206;
LABEL_130:
              v326 = v162;
              v30 = v289;
              LODWORD(v124) = v305;
              v113 = v310;
LABEL_131:
              if (v130 == 1)
              {
                v125 = v157 + 1;
              }

              else
              {
                v125 = v157;
              }

              v128 = v276;
              v127 = v277;
              goto LABEL_43;
            }

            v110 = v293;
            if (v204)
            {
              v224 = (v204 + 2 * v219);
              do
              {
                v225 = *v224++;
                v111[v225 >> 6] += v130;
                v162 -= v130 & ((v225 - v200) >> 31);
                *(v112 + ((v225 >> 3) & 0x1FFC)) ^= 0x80000000 >> v225;
                --v220;
              }

              while (v220);
            }
          }

          v241 = v196-- <= 0;
          v129 = v206;
          if (v241)
          {
            goto LABEL_130;
          }
        }
      }

      v140 = v124 + 1;
      v115 = v303;
      if (v124 + 1 >= v295)
      {
        break;
      }

      v141 = v326;
      v142 = v110 + v124;
      v143 = v110 + v124 + 1;
      v144 = v327[0];
      v145 = v299 + v129;
      v146 = v298;
      v147 = v301;
      do
      {
        if (v147 >= 0)
        {
          v148 = v147;
        }

        else
        {
          v148 = -v147;
        }

        v149 = *(v131 + v148);
        v150 = &v319[2 * v145];
        v151 = *&v150[v320 * (v143 - v149)];
        v152 = *&v150[v320 * (v142 + v149)];
        v141 += ((v151 - v144) >> 31) + ((v152 - v144) >> 31);
        v153 = (v151 >> 3) & 0x1FFC;
        v154 = v111[v152 >> 6];
        *(v112 + ((v152 >> 3) & 0x1FFC)) ^= 0x80000000 >> v152;
        LODWORD(v150) = *(v112 + v153);
        v111[v152 >> 6] = v154 + 1;
        v155 = v111[v151 >> 6];
        *(v112 + v153) = v150 ^ (0x80000000 >> v151);
        v111[v151 >> 6] = v155 - 1;
        ++v147;
        ++v145;
        --v146;
      }

      while (v146);
      v326 = v141;
      v130 = -v130;
      v125 = v129;
      v129 = v296 - v129;
      v132 = v309 + 1;
      ++v133;
      v124 = v140;
    }

    CGrNavigator::~CGrNavigator(&v330);
    CMedian::OrdinalTransform(v312, v313, v284, (v281 + 205936));
    v260 = *(&v315 + 1);
    v14 = v286;
    v16 = v283;
    if (*(&v315 + 1))
    {
      v261 = 0;
      v262 = v315;
      do
      {
        if (v262)
        {
          v263 = v274[4];
          v264 = *(v286 + 1587);
          v265 = v264 + 1334;
          v266 = v275[2];
          v267 = v275[3];
          v268 = v275[4];
          v269 = v284[4];
          v270 = (v284[2] + v284[3] * v261);
          v271 = (v274[2] + v274[3] * v261);
          v272 = 1;
          do
          {
            if (*(v265 + *v271))
            {
              *v270 += ((*(v266 + v267 * (*(v264 + 24) + v261) + v268 * (v272 + *(v264 + 24) - 1)) - *v270) * *(v265 + *v271)) >> 8;
            }

            v270 = (v270 + v269);
            v271 += v263;
            v241 = v262 > v272++;
          }

          while (v241);
        }

        ++v261;
      }

      while (v260 > v261);
    }
  }

  else
  {
    CMedian::Median16CFlattenHistComp_(v20, v13, v318, (v17 + 9280));
    v31 = *(v14 + 1587);
    v32 = *(v31 + 24);
    if (v32 <= 0x7F)
    {
      v282 = v16;
      v33 = v315;
      v34 = DWORD2(v315);
      v35 = *(v31 + 36);
      v36 = (2 * v32) | 1;
      v37 = (v31 + 1590);
      bzero(&v330, 0x800uLL);
      bzero(v327, 0x800uLL);
      v38 = 0;
      v39 = 0;
      v40 = v320;
      do
      {
        v41 = v37[v39];
        (&v330)[v39] = (v38 + 2 * v37[v39]);
        *&v327[2 * v39++] = v38 + 2 * (v36 - v41);
        v38 += v40;
      }

      while (v36 != v39);
      bzero(v17, 0x2440uLL);
      v42 = 0;
      v43 = (v17 + 32);
      v280 = v17;
      v44 = (v17 + 1056);
      do
      {
        v45 = v37[v42];
        v46 = &v319[2 * v45 + v320 * v42];
        v47 = (v36 - 2 * v45);
        do
        {
          v48 = *v46;
          v46 += 2;
          v49 = (v48 >> 3) & 0x1FFC;
          v50 = *(v44 + v49);
          ++v43[v48 >> 6];
          *(v44 + v49) = (0x80000000 >> v48) ^ v50;
          --v47;
        }

        while (v47);
        ++v42;
      }

      while (v42 != v36);
      v285 = v11;
      v51 = 0;
      v52 = 0;
      v326 = 0;
      v325 = v35;
      v53 = v34 - 1;
      v302 = v330;
      v307 = v36;
      v300 = v331;
      v54 = 1;
      v55 = v33 - 1;
      v56 = v328;
      v297 = *v327;
      v288 = v37;
      v291 = v53 & ~(v53 >> 31);
      while (1)
      {
        v57 = v52;
        v292 = v55;
        v58 = v55;
LABEL_16:
        v59 = v57;
        v294 = v57;
        while (1)
        {
          *&v312[2 * v59 + v313 * v51] = Hist16CRead_(v43, v44, &v326, &v325);
          if (v59 == v58)
          {
            break;
          }

          v60 = &v319[2 * v59 + v320 * v51];
          if (v54 == 1)
          {
            v79 = v326;
            v80 = &v332;
            v81 = v329;
            v83 = v302;
            v82 = v307;
            v84 = v325;
            v85 = v56;
            v86 = v300;
            v87 = v297;
            do
            {
              v88 = *&v83[v60];
              v89 = *(v87 + v60);
              v84 += ((v88 - v79) >> 31) + ((v89 - v79) >> 31);
              v90 = v89 >> 6;
              v91 = (v88 >> 3) & 0x1FFC;
              v92 = v43[v89 >> 6];
              *(v44 + ((v89 >> 3) & 0x1FFC)) ^= 0x80000000 >> v89;
              LODWORD(v89) = *(v44 + v91);
              v43[v90] = v92 + 1;
              v93 = v43[v88 >> 6];
              *(v44 + v91) = v89 ^ (0x80000000 >> v88);
              v43[v88 >> 6] = v93 - 1;
              v83 = v86;
              v94 = *v80++;
              v86 = v94;
              v87 = v85;
              v95 = *v81++;
              v85 = v95;
              --v82;
            }

            while (v82);
            v325 = v84;
            v57 = v294 + 1;
            v54 = 1;
            goto LABEL_16;
          }

          v61 = v60 - 2;
          v62 = v326;
          v63 = &v332;
          v64 = v329;
          v66 = v302;
          v65 = v307;
          v67 = v325;
          v68 = v56;
          v69 = v300;
          v70 = v297;
          do
          {
            v71 = *&v66[v61];
            v72 = *(v70 + v61);
            v67 += ((v72 - v62) >> 31) + ((v71 - v62) >> 31);
            v73 = v71 >> 6;
            v74 = (v72 >> 3) & 0x1FFC;
            v75 = v43[v71 >> 6];
            *(v44 + ((v71 >> 3) & 0x1FFC)) ^= 0x80000000 >> v71;
            LODWORD(v71) = *(v44 + v74);
            v43[v73] = v75 + 1;
            v76 = v43[v72 >> 6];
            *(v44 + v74) = v71 ^ (0x80000000 >> v72);
            v43[v72 >> 6] = v76 - 1;
            v66 = v69;
            v77 = *v63++;
            v69 = v77;
            v70 = v68;
            v78 = *v64++;
            v68 = v78;
            --v65;
          }

          while (v65);
          --v59;
          v325 = v67;
        }

        if (v51 == v291)
        {
          break;
        }

        v96 = v326;
        v97 = v325;
        v98 = v307;
        v99 = v288;
        v52 = v292;
        v100 = v292;
        do
        {
          v101 = *v99++;
          v102 = &v319[2 * v100];
          v103 = *&v102[v320 * (v51 + v101)];
          v104 = *&v102[v320 * (v307 + v51 - v101)];
          v105 = (v103 >> 3) & 0x1FFC;
          v106 = v43[v104 >> 6];
          *(v44 + ((v104 >> 3) & 0x1FFC)) ^= 0x80000000 >> v104;
          LODWORD(v102) = *(v44 + v105);
          v43[v104 >> 6] = v106 + 1;
          v107 = v43[v103 >> 6];
          *(v44 + v105) = v102 ^ (0x80000000 >> v103);
          v97 += ((v103 - v96) >> 31) + ((v104 - v96) >> 31);
          v43[v103 >> 6] = v107 - 1;
          ++v100;
          --v98;
        }

        while (v98);
        v325 = v97;
        v54 = -v54;
        v55 = v33 - 1 - v292;
        ++v51;
      }

      v11 = v285;
      v17 = v280;
      v16 = v282;
    }

    CMedian::OrdinalTransform(v312, v313, v11, (v17 + 205936));
  }

  CKernel::ReturnData(v14, v16);
  CGrNavigator::~CGrNavigator(v311);
  CGrNavigator::~CGrNavigator(v318);
  return 0;
}

void sub_1C7828474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  CGrNavigator::~CGrNavigator(&a30);
  CGrNavigator::~CGrNavigator(&a40);
  _Unwind_Resume(a1);
}

void CMedian::Median16CFlattenHistComp_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v109 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = (a4 + 16);
  v9 = a4 + 65568;
  v10 = a4 + 196656;
  bzero(v107, 0x808uLL);
  v11 = *(a1 + 24);
  bzero(v8, *(a1 + 44) + 1);
  v12 = v7;
  if (!v7)
  {
    v14 = 0;
    goto LABEL_36;
  }

  v13 = 0;
  v14 = 0;
  v15 = (v7 - v11);
  v16 = a1 + 1590;
  do
  {
    v17 = (*(a2 + 16) + *(a2 + 24) * v13);
    if (v13 < v11 || (v18 = v6, v13 >= v15))
    {
      v19 = v12 + ~v13;
      if (v13 < v11)
      {
        v19 = v13;
      }

      v20 = *(a1 + 1590 + v19);
      v17 += v20;
      v18 = v6 - 2 * v20;
    }

    if (v18 < 0xA)
    {
      v50 = 0;
    }

    else
    {
      v21 = v17[1];
      v22 = *v17;
      for (i = 9; i < v18; i += 8)
      {
        v24 = v17[2];
        v25 = v17[3];
        v26 = v8[v22] + 1;
        if (v8[v22] == 255)
        {
          v108[v14++] = v22;
        }

        v27 = v8[v21];
        v28 = v22 ^ v21;
        v8[v22] = v26;
        v29 = v17[4];
        v30 = v27 + ((v28 - 1) >> 31) - 255;
        if (v27 + ((v28 - 1) >> 31) == 255)
        {
          v108[v14++] = v21;
        }

        v31 = v8[v24];
        v32 = v24 ^ v21;
        v8[v21] = v30;
        v33 = v8[v25];
        v34 = v17[5];
        v35 = v31 + ((v32 - 1) >> 31) - 255;
        if (!v35)
        {
          v108[v14++] = v24;
        }

        v36 = v25 ^ v24;
        v8[v24] = v35;
        v37 = v8[v29];
        v38 = v17[6];
        v39 = v33 + ((v36 - 1) >> 31) - 255;
        if (!v39)
        {
          v108[v14++] = v25;
        }

        v40 = v29 ^ v25;
        v8[v25] = v39;
        v41 = v8[v34];
        v42 = v17[7];
        v43 = v37 + ((v40 - 1) >> 31) - 255;
        if (v37 + ((v40 - 1) >> 31) == 255)
        {
          v108[v14++] = v29;
        }

        v44 = v34 ^ v29;
        v8[v29] = v43;
        v45 = v8[v38];
        v46 = v17 + 8;
        v22 = v17[8];
        v47 = v41 + ((v44 - 1) >> 31) - 255;
        if (!v47)
        {
          v108[v14++] = v34;
        }

        v48 = v38 ^ v34;
        v8[v34] = v47;
        v49 = v8[v42];
        v21 = v17[9];
        if (v45 + ((v48 - 1) >> 31) == 255)
        {
          v108[v14++] = v38;
        }

        v8[v38] = v45 + (v48 - 1 < 0) + 1;
        if (v49 + (((v42 ^ v38) - 1) >> 31) == 255)
        {
          v108[v14++] = v42;
        }

        v8[v42] = v49 + (((v42 ^ v38) - 1) < 0) + 1;
        v17 += 8;
      }

      v50 = ((v18 - 10) & 0xFFFFFFF8) + 8;
      v17 = v46;
    }

    v51 = v18 >= v50;
    v52 = v18 - v50;
    if (v52 != 0 && v51)
    {
      do
      {
        v53 = *v17++;
        v54 = v8[v53] + 1;
        v108[v14] = v53;
        v14 += v54 >> 8;
        v8[v53] = v54;
        --v52;
      }

      while (v52);
    }

    ++v13;
  }

  while (v13 != v12);
  if (v14 >= 2)
  {
    v55 = v12;
    bensort_(v108, 0, v14 - 1);
    v12 = v55;
LABEL_36:
    v16 = a1 + 1590;
  }

  v108[v14] = -1;
  LODWORD(v56) = v108[0];
  v57 = *(a1 + 44);
  if (!*(a1 + 44))
  {
    LODWORD(v58) = 0;
    v59 = 1;
LABEL_67:
    v79 = v8[v58];
    if (v56 == v58)
    {
      v80 = v57 + 1;
      do
      {
        v79 += 256;
        v81 = v108[v80++];
      }

      while (v81 == v58);
    }

    for (*(v9 + 2 * v58) = v59; v79; --v79)
    {
      *(v10 + 2 * v59++) = v58;
    }

    goto LABEL_72;
  }

  v58 = 0;
  v57 = 0;
  v59 = 1;
  do
  {
    v60 = v58;
    v61 = *&v8[v58];
    v62 = bswap32(v61);
    if ((v56 ^ v60) < 4)
    {
      v73 = HIBYTE(v62);
      *(v9 + 2 * v60) = v59;
      if (v60 == v56)
      {
        do
        {
          v73 += 256;
          v56 = v108[++v57];
        }

        while (v60 == v56);
      }

      for (; v73; --v73)
      {
        *(v10 + 2 * v59++) = v60;
      }

      v74 = v60 | 1;
      v75 = BYTE2(v62);
      *(v9 + 2 * (v60 | 1)) = v59;
      if ((v60 | 1) == v56)
      {
        do
        {
          v75 += 256;
          v56 = v108[++v57];
        }

        while (v74 == v56);
      }

      for (; v75; --v75)
      {
        *(v10 + 2 * v59++) = v74;
      }

      v76 = v60 | 2;
      v77 = BYTE1(v62);
      *(v9 + 2 * (v60 | 2)) = v59;
      if ((v60 | 2) == v56)
      {
        do
        {
          v77 += 256;
          v56 = v108[++v57];
        }

        while (v76 == v56);
      }

      for (; v77; --v77)
      {
        *(v10 + 2 * v59++) = v76;
      }

      v78 = v60 | 3;
      v62 = v62;
      *(v9 + 2 * (v60 | 3)) = v59;
      if ((v60 | 3) == v56)
      {
        do
        {
          v62 += 256;
          v56 = v108[++v57];
        }

        while (v78 == v56);
      }

      for (; v62; --v62)
      {
        *(v10 + 2 * v59++) = v78;
      }
    }

    else if (v61)
    {
      v63 = (v9 + 2 * v60);
      *v63 = v59;
      v64 = v59 + HIBYTE(v62);
      v63[1] = v64;
      v65 = v64 + BYTE2(v62);
      v63[2] = v65;
      v66 = v65 + BYTE1(v62);
      v63[3] = v66;
      v67 = v66 + v62;
      v68 = v67 - v59;
      if (v67 != v59)
      {
        v69 = (v10 + 2 * v59);
        if (v68 <= 1)
        {
          v68 = 1;
        }

        v70 = 2 * v68;
        v71 = v60;
        do
        {
          v72 = __clz(v62);
          v71 += v72 >> 3;
          v62 = (v62 << (v72 & 0x18)) - 0x1000000;
          *v69++ = v71;
          v70 -= 2;
        }

        while (v70);
        v59 = v67;
      }
    }

    v58 = v60 + 4;
  }

  while (v60 + 4 < *(a1 + 44));
  if (v60 <= 0xFFFB)
  {
    goto LABEL_67;
  }

LABEL_72:
  v82 = v12 - 1;
  if (v12 - 1 >= 0)
  {
    v83 = *(a2 + 16);
    v84 = *(a2 + 24);
    v85 = (v12 - v11);
    v86 = (v12 - 1);
    v87 = *(a3 + 16);
    v88 = *(a3 + 24);
    do
    {
      v89 = (v83 + v84 * v86);
      v90 = (v87 + v88 * v86);
      if (v86 < v11 || v86 >= v85)
      {
        v92 = v82 - v86;
        if (v86 < v11)
        {
          v92 = v86;
        }

        v93 = *(v16 + v92);
        v89 += v93;
        v90 += v93;
        v91 = v6 - 2 * v93;
      }

      else
      {
        v91 = v6;
      }

      v94 = v91 - 1;
      if (v91 != 1)
      {
        v95 = 0;
        v96 = v89[1];
        v97 = *v89;
        do
        {
          v98 = *(v9 + 2 * v97);
          v99 = *(v9 + 2 * v96);
          v100 = 0x80000000 - (v96 ^ v97);
          *(v9 + 2 * v97) = v98 + (v100 >> 30);
          *(v9 + 2 * v96) = v99 + (v100 >> 30);
          v101 = v89[2];
          v89 += 2;
          v97 = v101;
          v96 = v89[1];
          *v90 = v98;
          v90[1] = v99 + (v100 >> 31);
          v90 += 2;
          v95 += 2;
        }

        while (v95 < v94);
        v94 = v91 & 0xFFFFFFFE;
      }

      v51 = v91 >= v94;
      v102 = v91 - v94;
      if (v102 != 0 && v51)
      {
        do
        {
          v103 = *v89++;
          v104 = *(v9 + 2 * v103);
          *v90++ = v104;
          *(v9 + 2 * v103) = v104 + 1;
          --v102;
        }

        while (v102);
      }
    }

    while (v86-- > 0);
  }
}

uint64_t Hist16CRead_(unsigned __int8 *a1, unsigned int *a2, unsigned int *a3, int *a4)
{
  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  v6 = *a3;
  v7 = v6 >> 6;
  v8 = *a4;
  v9 = -*a4;
  v10 = &a1[v6 >> 6];
  if ((*a4 & 0x80000000) == 0)
  {
    v11 = v7 - 1;
    if (v6 >> 7 > 0x1FE)
    {
      v18 = v11;
      v17 = -v8;
      v19 = v10;
LABEL_26:
      if (v9 > 0 || v18 > 1023)
      {
        v31 = v18;
        v32 = v9;
        v9 = v17;
      }

      else
      {
        v32 = v9;
        do
        {
          v9 = v32;
          v31 = v18 + 1;
          v26 = *v19++;
          v13 = __OFADD__(v32, v26);
          v32 += v26;
          if (!((v32 < 0) ^ v13 | (v32 == 0)))
          {
            break;
          }

          v25 = v18++ < 1023;
        }

        while (v25);
      }
    }

    else
    {
      while (1)
      {
        v12 = *v10;
        v13 = __OFADD__(v9, v12);
        v14 = v9 + v12;
        if (!((v14 < 0) ^ v13 | (v14 == 0)))
        {
          v31 = v11 + 1;
          v32 = v14;
          goto LABEL_46;
        }

        v15 = v10[1];
        v13 = __OFADD__(v14, v15);
        v9 = v14 + v15;
        if (!((v9 < 0) ^ v13 | (v9 == 0)))
        {
          v31 = v11 + 2;
          v32 = v9;
          v9 = v14;
          goto LABEL_46;
        }

        v16 = v10[2];
        v17 = v9 + v16;
        if (!((v9 + v16 < 0) ^ __OFADD__(v9, v16) | (v9 + v16 == 0)))
        {
          break;
        }

        v18 = v11 + 4;
        v19 = v10 + 4;
        v20 = v10[3];
        v13 = __OFADD__(v17, v20);
        v9 = v17 + v20;
        if ((v9 < 0) ^ v13 | (v9 == 0))
        {
          v10 += 4;
          v25 = v11 < 1017;
          v11 += 4;
          if (v25)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

      v31 = v11 + 3;
      v32 = v9 + v16;
    }

LABEL_46:
    if (v31 > 0x3FF)
    {
      *a3 = 65472;
      *a4 = a1[1023] - v9;
      return 0xFFFFLL;
    }

    goto LABEL_48;
  }

  if (v6 < 0x100)
  {
    v24 = v6 >> 6;
    v21 = -v8;
LABEL_35:
    if (v9 < 1 || v24 < 1)
    {
      v31 = v24;
      v32 = v21;
LABEL_48:
      v21 = v9;
      goto LABEL_49;
    }

    v28 = v10 - 1;
    v21 = v9;
    do
    {
      v29 = *v28--;
      v32 = v21;
      v21 -= v29;
      v31 = v24 - 1;
      v30 = v21 >= 1 && v24 > 1;
      LODWORD(v24) = v24 - 1;
    }

    while (v30);
  }

  else
  {
    while (1)
    {
      v21 = v9 - *(v10 - 1);
      if (v21 < 1)
      {
        v31 = v7 - 1;
        v32 = v9;
        goto LABEL_49;
      }

      v22 = v21 - *(v10 - 2);
      if (v22 < 1)
      {
        v31 = v7 - 2;
        v32 = v21;
        v21 = v22;
        goto LABEL_49;
      }

      v21 = v22 - *(v10 - 3);
      if (v21 < 1)
      {
        break;
      }

      v23 = *(v10 - 4);
      v10 -= 4;
      v9 = v21 - v23;
      LODWORD(v24) = v7 - 4;
      v25 = v21 - v23 < 1 || v7 <= 7;
      LODWORD(v7) = v7 - 4;
      if (v25)
      {
        goto LABEL_35;
      }
    }

    v31 = v7 - 3;
    v32 = v22;
  }

LABEL_49:
  result = v31 << 6;
  *a3 = result;
  *a4 = -v21;
  v33 = &a2[2 * (v31 & 0x3FFFFFF)];
  if (v21 + v32 < 0)
  {
    v36 = v33[1];
    v37 = v32 - (v36 & 1);
    if (v37 < 1)
    {
      return result | 0x3F;
    }

    v38 = v37 + (v36 << 30 >> 31);
    if (!v38)
    {
      return result | 0x3E;
    }

    v39 = v38 + (v36 << 29 >> 31);
    if (!v39)
    {
      goto LABEL_244;
    }

    v40 = v39 + (v36 << 28 >> 31);
    if (!v40)
    {
      return result | 0x3C;
    }

    v41 = v40 + (v36 << 27 >> 31);
    if (!v41)
    {
      goto LABEL_240;
    }

    v42 = v41 + (v36 << 26 >> 31);
    if (!v42)
    {
      goto LABEL_238;
    }

    v43 = v42 + (v36 << 25 >> 31);
    if (!v43)
    {
      goto LABEL_236;
    }

    v44 = v43 + (v36 >> 7);
    if (!v44)
    {
      return result | 0x38;
    }

    v45 = v44 + (v36 << 23 >> 31);
    if (!v45)
    {
      goto LABEL_232;
    }

    v46 = v45 + (v36 << 22 >> 31);
    if (!v46)
    {
      goto LABEL_230;
    }

    v47 = v46 + (v36 << 21 >> 31);
    if (!v47)
    {
      goto LABEL_228;
    }

    v48 = v47 + (v36 << 20 >> 31);
    if (!v48)
    {
      goto LABEL_226;
    }

    v49 = v48 + (v36 << 19 >> 31);
    if (!v49)
    {
      goto LABEL_224;
    }

    v50 = v49 + (v36 << 18 >> 31);
    if (!v50)
    {
      goto LABEL_222;
    }

    v51 = v50 + (v36 << 17 >> 31);
    if (!v51)
    {
      goto LABEL_220;
    }

    v52 = v51 + (v36 >> 15);
    if (!v52)
    {
      return result | 0x30;
    }

    v53 = v52 + (v36 << 15 >> 31);
    if (!v53)
    {
      goto LABEL_216;
    }

    v54 = v53 + (v36 << 14 >> 31);
    if (!v54)
    {
      goto LABEL_214;
    }

    v55 = v54 + (v36 << 13 >> 31);
    if (!v55)
    {
      goto LABEL_212;
    }

    v56 = v55 + (v36 << 12 >> 31);
    if (!v56)
    {
      goto LABEL_210;
    }

    v57 = v56 + (v36 << 11 >> 31);
    if (!v57)
    {
      goto LABEL_208;
    }

    v58 = v57 + (v36 << 10 >> 31);
    if (!v58)
    {
      goto LABEL_206;
    }

    v59 = v58 + (v36 << 9 >> 31);
    if (!v59)
    {
      goto LABEL_204;
    }

    v60 = v59 + (v36 << 8 >> 31);
    if (!v60)
    {
      goto LABEL_202;
    }

    v61 = v60 + (v36 << 7 >> 31);
    if (!v61)
    {
      goto LABEL_200;
    }

    v62 = v61 + (v36 << 6 >> 31);
    if (!v62)
    {
      goto LABEL_198;
    }

    v63 = v62 + ((32 * v36) >> 31);
    if (!v63)
    {
      goto LABEL_196;
    }

    v64 = v63 + ((16 * v36) >> 31);
    if (!v64)
    {
      goto LABEL_194;
    }

    v65 = v64 + ((8 * v36) >> 31);
    if (!v65)
    {
      goto LABEL_192;
    }

    v66 = v65 + ((4 * v36) >> 31);
    if (!v66)
    {
      goto LABEL_190;
    }

    v67 = v66 + ((2 * v36) >> 31);
    if (!v67)
    {
      goto LABEL_188;
    }

    v68 = v67 + (v36 >> 31);
    if (!v68)
    {
      return result | 0x20;
    }

    v69 = *v33;
    v70 = v68 - (v69 & 1);
    if (!v70)
    {
      return result | 0x1F;
    }

    v104 = v70 + ((v69 << 30) >> 31);
    if (!v104)
    {
      return result | 0x1E;
    }

    v105 = v104 + ((v69 << 29) >> 31);
    if (!v105)
    {
      goto LABEL_180;
    }

    v106 = v105 + ((v69 << 28) >> 31);
    if (!v106)
    {
      return result | 0x1C;
    }

    v107 = v106 + ((v69 << 27) >> 31);
    if (!v107)
    {
      goto LABEL_176;
    }

    v108 = v107 + ((v69 << 26) >> 31);
    if (!v108)
    {
      goto LABEL_174;
    }

    v109 = v108 + ((v69 << 25) >> 31);
    if (!v109)
    {
      goto LABEL_172;
    }

    v110 = v109 + (v69 >> 7);
    if (!v110)
    {
      return result | 0x18;
    }

    v111 = v110 + ((v69 << 23) >> 31);
    if (!v111)
    {
      goto LABEL_168;
    }

    v112 = v111 + ((v69 << 22) >> 31);
    if (!v112)
    {
      goto LABEL_166;
    }

    v113 = v112 + ((v69 << 21) >> 31);
    if (!v113)
    {
      goto LABEL_164;
    }

    v114 = v113 + ((v69 << 20) >> 31);
    if (!v114)
    {
      goto LABEL_162;
    }

    v115 = v114 + ((v69 << 19) >> 31);
    if (!v115)
    {
      goto LABEL_160;
    }

    v116 = v115 + ((v69 << 18) >> 31);
    if (!v116)
    {
      goto LABEL_158;
    }

    v117 = v116 + ((v69 << 17) >> 31);
    if (!v117)
    {
      goto LABEL_156;
    }

    v118 = v117 + (v69 >> 15);
    if (!v118)
    {
      return result | 0x10;
    }

    v119 = v118 + ((v69 << 15) >> 31);
    if (!v119)
    {
      return result | 0xF;
    }

    v120 = v119 + ((v69 << 14) >> 31);
    if (!v120)
    {
      return result | 0xE;
    }

    v121 = v120 + ((v69 << 13) >> 31);
    if (!v121)
    {
      goto LABEL_116;
    }

    v122 = v121 + ((v69 << 12) >> 31);
    if (!v122)
    {
      return result | 0xC;
    }

    v123 = v122 + ((v69 << 11) >> 31);
    if (!v123)
    {
      goto LABEL_112;
    }

    v124 = v123 + ((v69 << 10) >> 31);
    if (!v124)
    {
      goto LABEL_110;
    }

    v125 = v124 + ((v69 << 9) >> 31);
    if (!v125)
    {
      goto LABEL_108;
    }

    v126 = v125 + ((v69 << 8) >> 31);
    if (!v126)
    {
      return result | 8;
    }

    v127 = v126 + ((v69 << 7) >> 31);
    if (!v127)
    {
      return result | 7;
    }

    v128 = v127 + ((v69 << 6) >> 31);
    if (!v128)
    {
      return result | 6;
    }

    v129 = v128 + ((32 * v69) >> 31);
    if (!v129)
    {
LABEL_100:
      v81 = 5;
      return result | v81;
    }

    v130 = v129 + ((16 * v69) >> 31);
    if (!v130)
    {
      return result | 4;
    }

    v131 = v130 + ((8 * v69) >> 31);
    if (!v131)
    {
      return result | 3;
    }

    v132 = v131 + ((4 * v69) >> 31);
    if (!v132)
    {
      return result | 2;
    }

    if (v132 + ((2 * v69) >> 31))
    {
      return result;
    }

    else
    {
      return (result + 1);
    }
  }

  else
  {
    v34 = *v33;
    v35 = v21 + (*v33 >> 31);
    if (v35 > 0)
    {
      return result;
    }

    v71 = (v34 >> 30) & 1;
    v13 = __OFADD__(v35, v71);
    v72 = v35 + v71;
    if (!((v72 < 0) ^ v13 | (v72 == 0)))
    {
      return result | 1;
    }

    v73 = (v34 >> 29) & 1;
    v13 = __OFADD__(v72, v73);
    v74 = v72 + v73;
    if (!((v74 < 0) ^ v13 | (v74 == 0)))
    {
      return result | 2;
    }

    v75 = (v34 >> 28) & 1;
    v13 = __OFADD__(v74, v75);
    v76 = v74 + v75;
    if (!((v76 < 0) ^ v13 | (v76 == 0)))
    {
      return result | 3;
    }

    v77 = (v34 >> 27) & 1;
    v13 = __OFADD__(v76, v77);
    v78 = v76 + v77;
    if (!((v78 < 0) ^ v13 | (v78 == 0)))
    {
      return result | 4;
    }

    v79 = (v34 >> 26) & 1;
    v13 = __OFADD__(v78, v79);
    v80 = v78 + v79;
    if (!((v80 < 0) ^ v13 | (v80 == 0)))
    {
      goto LABEL_100;
    }

    v82 = (v34 >> 25) & 1;
    v13 = __OFADD__(v80, v82);
    v83 = v80 + v82;
    if (!((v83 < 0) ^ v13 | (v83 == 0)))
    {
      return result | 6;
    }

    v84 = HIBYTE(v34) & 1;
    v13 = __OFADD__(v83, v84);
    v85 = v83 + v84;
    if (!((v85 < 0) ^ v13 | (v85 == 0)))
    {
      return result | 7;
    }

    v86 = (v34 >> 23) & 1;
    v13 = __OFADD__(v85, v86);
    v87 = v85 + v86;
    if (!((v87 < 0) ^ v13 | (v87 == 0)))
    {
      return result | 8;
    }

    v88 = (v34 >> 22) & 1;
    v13 = __OFADD__(v87, v88);
    v89 = v87 + v88;
    if (!((v89 < 0) ^ v13 | (v89 == 0)))
    {
LABEL_108:
      v81 = 9;
      return result | v81;
    }

    v90 = (v34 >> 21) & 1;
    v13 = __OFADD__(v89, v90);
    v91 = v89 + v90;
    if (!((v91 < 0) ^ v13 | (v91 == 0)))
    {
LABEL_110:
      v81 = 10;
      return result | v81;
    }

    v92 = (v34 >> 20) & 1;
    v13 = __OFADD__(v91, v92);
    v93 = v91 + v92;
    if (!((v93 < 0) ^ v13 | (v93 == 0)))
    {
LABEL_112:
      v81 = 11;
      return result | v81;
    }

    v94 = (v34 >> 19) & 1;
    v13 = __OFADD__(v93, v94);
    v95 = v93 + v94;
    if (!((v95 < 0) ^ v13 | (v95 == 0)))
    {
      return result | 0xC;
    }

    v96 = (v34 >> 18) & 1;
    v13 = __OFADD__(v95, v96);
    v97 = v95 + v96;
    if (!((v97 < 0) ^ v13 | (v97 == 0)))
    {
LABEL_116:
      v81 = 13;
      return result | v81;
    }

    v98 = (v34 >> 17) & 1;
    v13 = __OFADD__(v97, v98);
    v99 = v97 + v98;
    if (!((v99 < 0) ^ v13 | (v99 == 0)))
    {
      return result | 0xE;
    }

    v100 = HIWORD(v34) & 1;
    v13 = __OFADD__(v99, v100);
    v101 = v99 + v100;
    if (!((v101 < 0) ^ v13 | (v101 == 0)))
    {
      return result | 0xF;
    }

    v102 = (v34 >> 15) & 1;
    v13 = __OFADD__(v101, v102);
    v103 = v101 + v102;
    if (!((v103 < 0) ^ v13 | (v103 == 0)))
    {
      return result | 0x10;
    }

    v133 = (v34 >> 14) & 1;
    v13 = __OFADD__(v103, v133);
    v134 = v103 + v133;
    if (!((v134 < 0) ^ v13 | (v134 == 0)))
    {
LABEL_156:
      v81 = 17;
      return result | v81;
    }

    v135 = (v34 >> 13) & 1;
    v13 = __OFADD__(v134, v135);
    v136 = v134 + v135;
    if (!((v136 < 0) ^ v13 | (v136 == 0)))
    {
LABEL_158:
      v81 = 18;
      return result | v81;
    }

    v137 = (v34 >> 12) & 1;
    v13 = __OFADD__(v136, v137);
    v138 = v136 + v137;
    if (!((v138 < 0) ^ v13 | (v138 == 0)))
    {
LABEL_160:
      v81 = 19;
      return result | v81;
    }

    v139 = (v34 >> 11) & 1;
    v13 = __OFADD__(v138, v139);
    v140 = v138 + v139;
    if (!((v140 < 0) ^ v13 | (v140 == 0)))
    {
LABEL_162:
      v81 = 20;
      return result | v81;
    }

    v141 = (v34 >> 10) & 1;
    v13 = __OFADD__(v140, v141);
    v142 = v140 + v141;
    if (!((v142 < 0) ^ v13 | (v142 == 0)))
    {
LABEL_164:
      v81 = 21;
      return result | v81;
    }

    v143 = (v34 >> 9) & 1;
    v13 = __OFADD__(v142, v143);
    v144 = v142 + v143;
    if (!((v144 < 0) ^ v13 | (v144 == 0)))
    {
LABEL_166:
      v81 = 22;
      return result | v81;
    }

    v145 = (v34 >> 8) & 1;
    v13 = __OFADD__(v144, v145);
    v146 = v144 + v145;
    if (!((v146 < 0) ^ v13 | (v146 == 0)))
    {
LABEL_168:
      v81 = 23;
      return result | v81;
    }

    v147 = (v34 >> 7) & 1;
    v13 = __OFADD__(v146, v147);
    v148 = v146 + v147;
    if (!((v148 < 0) ^ v13 | (v148 == 0)))
    {
      return result | 0x18;
    }

    v149 = (v34 >> 6) & 1;
    v13 = __OFADD__(v148, v149);
    v150 = v148 + v149;
    if (!((v150 < 0) ^ v13 | (v150 == 0)))
    {
LABEL_172:
      v81 = 25;
      return result | v81;
    }

    v151 = (v34 >> 5) & 1;
    v13 = __OFADD__(v150, v151);
    v152 = v150 + v151;
    if (!((v152 < 0) ^ v13 | (v152 == 0)))
    {
LABEL_174:
      v81 = 26;
      return result | v81;
    }

    v153 = (v34 >> 4) & 1;
    v13 = __OFADD__(v152, v153);
    v154 = v152 + v153;
    if (!((v154 < 0) ^ v13 | (v154 == 0)))
    {
LABEL_176:
      v81 = 27;
      return result | v81;
    }

    v155 = (v34 >> 3) & 1;
    v13 = __OFADD__(v154, v155);
    v156 = v154 + v155;
    if (!((v156 < 0) ^ v13 | (v156 == 0)))
    {
      return result | 0x1C;
    }

    v157 = (v34 >> 2) & 1;
    v13 = __OFADD__(v156, v157);
    v158 = v156 + v157;
    if (!((v158 < 0) ^ v13 | (v158 == 0)))
    {
LABEL_180:
      v81 = 29;
      return result | v81;
    }

    v159 = (v34 >> 1) & 1;
    v13 = __OFADD__(v158, v159);
    v160 = v158 + v159;
    if (!((v160 < 0) ^ v13 | (v160 == 0)))
    {
      return result | 0x1E;
    }

    v161 = *v33 & 1;
    v13 = __OFADD__(v160, v161);
    v162 = v160 + v161;
    if (!((v162 < 0) ^ v13 | (v162 == 0)))
    {
      return result | 0x1F;
    }

    v163 = v33[1];
    v164 = v162 + (v163 >> 31);
    if (v164 > 0)
    {
      return result | 0x20;
    }

    v165 = (v163 >> 30) & 1;
    v13 = __OFADD__(v164, v165);
    v166 = v164 + v165;
    if (!((v166 < 0) ^ v13 | (v166 == 0)))
    {
LABEL_188:
      v81 = 33;
      return result | v81;
    }

    v167 = (v163 >> 29) & 1;
    v13 = __OFADD__(v166, v167);
    v168 = v166 + v167;
    if (!((v168 < 0) ^ v13 | (v168 == 0)))
    {
LABEL_190:
      v81 = 34;
      return result | v81;
    }

    v169 = (v163 >> 28) & 1;
    v13 = __OFADD__(v168, v169);
    v170 = v168 + v169;
    if (!((v170 < 0) ^ v13 | (v170 == 0)))
    {
LABEL_192:
      v81 = 35;
      return result | v81;
    }

    v171 = (v163 >> 27) & 1;
    v13 = __OFADD__(v170, v171);
    v172 = v170 + v171;
    if (!((v172 < 0) ^ v13 | (v172 == 0)))
    {
LABEL_194:
      v81 = 36;
      return result | v81;
    }

    v173 = (v163 >> 26) & 1;
    v13 = __OFADD__(v172, v173);
    v174 = v172 + v173;
    if (!((v174 < 0) ^ v13 | (v174 == 0)))
    {
LABEL_196:
      v81 = 37;
      return result | v81;
    }

    v175 = (v163 >> 25) & 1;
    v13 = __OFADD__(v174, v175);
    v176 = v174 + v175;
    if (!((v176 < 0) ^ v13 | (v176 == 0)))
    {
LABEL_198:
      v81 = 38;
      return result | v81;
    }

    v177 = HIBYTE(v163) & 1;
    v13 = __OFADD__(v176, v177);
    v178 = v176 + v177;
    if (!((v178 < 0) ^ v13 | (v178 == 0)))
    {
LABEL_200:
      v81 = 39;
      return result | v81;
    }

    v179 = (v163 >> 23) & 1;
    v13 = __OFADD__(v178, v179);
    v180 = v178 + v179;
    if (!((v180 < 0) ^ v13 | (v180 == 0)))
    {
LABEL_202:
      v81 = 40;
      return result | v81;
    }

    v181 = (v163 >> 22) & 1;
    v13 = __OFADD__(v180, v181);
    v182 = v180 + v181;
    if (!((v182 < 0) ^ v13 | (v182 == 0)))
    {
LABEL_204:
      v81 = 41;
      return result | v81;
    }

    v183 = (v163 >> 21) & 1;
    v13 = __OFADD__(v182, v183);
    v184 = v182 + v183;
    if (!((v184 < 0) ^ v13 | (v184 == 0)))
    {
LABEL_206:
      v81 = 42;
      return result | v81;
    }

    v185 = (v163 >> 20) & 1;
    v13 = __OFADD__(v184, v185);
    v186 = v184 + v185;
    if (!((v186 < 0) ^ v13 | (v186 == 0)))
    {
LABEL_208:
      v81 = 43;
      return result | v81;
    }

    v187 = (v163 >> 19) & 1;
    v13 = __OFADD__(v186, v187);
    v188 = v186 + v187;
    if (!((v188 < 0) ^ v13 | (v188 == 0)))
    {
LABEL_210:
      v81 = 44;
      return result | v81;
    }

    v189 = (v163 >> 18) & 1;
    v13 = __OFADD__(v188, v189);
    v190 = v188 + v189;
    if (!((v190 < 0) ^ v13 | (v190 == 0)))
    {
LABEL_212:
      v81 = 45;
      return result | v81;
    }

    v191 = (v163 >> 17) & 1;
    v13 = __OFADD__(v190, v191);
    v192 = v190 + v191;
    if (!((v192 < 0) ^ v13 | (v192 == 0)))
    {
LABEL_214:
      v81 = 46;
      return result | v81;
    }

    v193 = HIWORD(v163) & 1;
    v13 = __OFADD__(v192, v193);
    v194 = v192 + v193;
    if (!((v194 < 0) ^ v13 | (v194 == 0)))
    {
LABEL_216:
      v81 = 47;
      return result | v81;
    }

    v195 = (v163 >> 15) & 1;
    v13 = __OFADD__(v194, v195);
    v196 = v194 + v195;
    if (!((v196 < 0) ^ v13 | (v196 == 0)))
    {
      return result | 0x30;
    }

    v197 = (v163 >> 14) & 1;
    v13 = __OFADD__(v196, v197);
    v198 = v196 + v197;
    if (!((v198 < 0) ^ v13 | (v198 == 0)))
    {
LABEL_220:
      v81 = 49;
      return result | v81;
    }

    v199 = (v163 >> 13) & 1;
    v13 = __OFADD__(v198, v199);
    v200 = v198 + v199;
    if (!((v200 < 0) ^ v13 | (v200 == 0)))
    {
LABEL_222:
      v81 = 50;
      return result | v81;
    }

    v201 = (v163 >> 12) & 1;
    v13 = __OFADD__(v200, v201);
    v202 = v200 + v201;
    if (!((v202 < 0) ^ v13 | (v202 == 0)))
    {
LABEL_224:
      v81 = 51;
      return result | v81;
    }

    v203 = (v163 >> 11) & 1;
    v13 = __OFADD__(v202, v203);
    v204 = v202 + v203;
    if (!((v204 < 0) ^ v13 | (v204 == 0)))
    {
LABEL_226:
      v81 = 52;
      return result | v81;
    }

    v205 = (v163 >> 10) & 1;
    v13 = __OFADD__(v204, v205);
    v206 = v204 + v205;
    if (!((v206 < 0) ^ v13 | (v206 == 0)))
    {
LABEL_228:
      v81 = 53;
      return result | v81;
    }

    v207 = (v163 >> 9) & 1;
    v13 = __OFADD__(v206, v207);
    v208 = v206 + v207;
    if (!((v208 < 0) ^ v13 | (v208 == 0)))
    {
LABEL_230:
      v81 = 54;
      return result | v81;
    }

    v209 = (v163 >> 8) & 1;
    v13 = __OFADD__(v208, v209);
    v210 = v208 + v209;
    if (!((v210 < 0) ^ v13 | (v210 == 0)))
    {
LABEL_232:
      v81 = 55;
      return result | v81;
    }

    v211 = (v163 >> 7) & 1;
    v13 = __OFADD__(v210, v211);
    v212 = v210 + v211;
    if (!((v212 < 0) ^ v13 | (v212 == 0)))
    {
      return result | 0x38;
    }

    v213 = (v163 >> 6) & 1;
    v13 = __OFADD__(v212, v213);
    v214 = v212 + v213;
    if (!((v214 < 0) ^ v13 | (v214 == 0)))
    {
LABEL_236:
      v81 = 57;
      return result | v81;
    }

    v215 = (v163 >> 5) & 1;
    v13 = __OFADD__(v214, v215);
    v216 = v214 + v215;
    if (!((v216 < 0) ^ v13 | (v216 == 0)))
    {
LABEL_238:
      v81 = 58;
      return result | v81;
    }

    v217 = (v163 >> 4) & 1;
    v13 = __OFADD__(v216, v217);
    v218 = v216 + v217;
    if (!((v218 < 0) ^ v13 | (v218 == 0)))
    {
LABEL_240:
      v81 = 59;
      return result | v81;
    }

    v219 = (v163 >> 3) & 1;
    v13 = __OFADD__(v218, v219);
    v220 = v218 + v219;
    if (!((v220 < 0) ^ v13 | (v220 == 0)))
    {
      return result | 0x3C;
    }

    v221 = (v163 >> 2) & 1;
    v13 = __OFADD__(v220, v221);
    v222 = v220 + v221;
    if (!((v222 < 0) ^ v13 | (v222 == 0)))
    {
LABEL_244:
      v81 = 61;
      return result | v81;
    }

    if ((v222 + ((v163 >> 1) & 1)) >= 1)
    {
      v223 = 62;
    }

    else
    {
      v223 = 63;
    }

    return v223 | result;
  }
}

CMedian::CKernel16C *CMedian::CKernel16C::CKernel16C(CMedian::CKernel16C *this, const CMedian::CxParms *a2)
{
  v4 = *(a2 + 1);
  *this = &unk_1F46EA510;
  *(this + 8) = 0;
  *(this + 2) = v4;
  *(this + 3) = 0x100000001;
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  bzero(this + 72, 0x3000uLL);
  *(this + 12616) = 0u;
  pthread_mutex_init((this + 12632), 0);
  *(this + 8) = 1;
  *(this + 1587) = a2;
  *this = &unk_1F46EA0E8;
  v5 = *(a2 + 2);
  *(this + 1588) = &unk_1F46EA6B8;
  *(this + 12712) = 0;
  *(this + 1590) = v5;
  if (!v5 || !(*(*v5 + 80))(v5))
  {
    *(this + 12712) = 1;
  }

  return this;
}

uint64_t CGrid::Zero(uint64_t a1, int32x2_t *a2)
{
  v3 = vmovn_s64(*(a1 + 104));
  if (a2)
  {
    v4 = vmax_s32(*a2, 0);
    v3 = vmin_s32(v3, a2[1]);
  }

  else
  {
    v4 = 0;
  }

  v5 = vcgt_s32(v3, v4);
  if (v5.i32[0] & v5.i32[1])
  {
    v18 = v4;
    v19[0] = &unk_1F46EA190;
    v19[1] = a1;
    v26 = 0;
    if (!(*(*a1 + 32))(a1))
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = (v7 + 32);
      }

      else
      {
        v8 = (a1 + 24);
      }

      v9 = *v8;
      v11 = *(a1 + 120);
      v10 = *(a1 + 128);
      v20 = v9;
      v21 = v10;
      v22 = v11;
      v23 = 0;
      v24 = *(a1 + 104);
      v25 = 1;
      v12 = vmin_s32(v3, vmovn_s64(v24));
      v13 = vcge_s32(v18, v12);
      if (((v13.i32[0] | v13.i32[1]) & 1) == 0)
      {
        v20 = v9 + v11 * v18.u32[0] + v10 * v18.u32[1];
        v14 = vsub_s32(v12, v18);
        v15.i64[0] = v14.i32[0];
        v15.i64[1] = v14.i32[1];
        v24 = v15;
        LOBYTE(v26) = 1;
        if (v14.i32[1])
        {
          v16 = 0;
          do
          {
            bzero((v20 + v21 * v16++), (v22 * v24.i32[0]));
          }

          while (v24.i64[1] != v16);
        }

        v6 = 0;
        goto LABEL_18;
      }

      (*(*a1 + 40))(a1);
      LOBYTE(v26) = 0;
    }

    v6 = 7;
LABEL_18:
    CGrNavigator::~CGrNavigator(v19);
    return v6;
  }

  return 0;
}

void CGrNavigator::~CGrNavigator(CGrNavigator *this)
{
  *this = &unk_1F46EA190;
  if (*(this + 72) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 40))(v2);
      if (*(this + 73) == 1)
      {
        v3 = *(this + 1);
        if (v3)
        {
          (*(*v3 + 8))(v3);
        }
      }

      *(this + 1) = 0;
    }
  }

  *(this + 72) = 0;
}

{
  CGrNavigator::~CGrNavigator(this);
  if (v1)
  {
    --CMemEnv::excount;

    free(v1);
  }
}

uint64_t CGrid::Locked(CGrid *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return (*(*v1 + 48))();
  }

  else
  {
    return 1;
  }
}

uint64_t CGrid::Unlock(CGrid *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 88))();
  }

  return result;
}

uint64_t CGrid::Lock(CGrid *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

uint64_t CGrid::Description@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 8);
  *a2 = &unk_1F46EA620;
  if (v2)
  {
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    v3 = *(v2 + 32);
    v4 = *(this + 104);
    v5 = *(this + 112);
    *(a2 + 32) = 2;
    v6 = *(this + 120);
    v7 = *(this + 128);
    *(a2 + 64) = v4;
    *(a2 + 72) = v5;
    *(a2 + 40) = v6;
    *(a2 + 48) = v7;
    *(a2 + 8) = v3;
    *(a2 + 16) = v7 * v5;
    *(a2 + 24) = 0;
  }

  else
  {
    *(a2 + 8) = *(this + 24);
    *(a2 + 16) = *(this + 32);
    *(a2 + 32) = *(this + 48);
    v8 = (a2 + 40);
    v9 = (this + 80);
    v10 = 3;
    do
    {
      *v8 = *(v9 - 3);
      v11 = *v9++;
      v8[3] = v11;
      ++v8;
      --v10;
    }

    while (v10);
  }

  return this;
}

double CGrid::Description(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 24))(v5);
  *(a2 + 8) = v5[1];
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  v3 = v9;
  *(a2 + 40) = v8;
  *(a2 + 56) = v3;
  result = *&v10;
  *(a2 + 72) = v10;
  return result;
}

void CGrid::~CGrid(CGrid *this)
{
  CGrid::~CGrid(this);
  if (v1)
  {
    --CMemEnv::excount;

    free(v1);
  }
}

{
  *this = &unk_1F46EA310;
  if (*(this + 137) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
      *(this + 1) = 0;
    }
  }

  *(this + 136) = 0;
}

uint64_t CGridP::Zero(uint64_t a1, int32x2_t *a2)
{
  v3 = vmovn_s64(*(a1 + 104));
  v4 = 0;
  if (a2)
  {
    v4 = vmax_s32(*a2, 0);
    v3 = vmin_s32(v3, a2[1]);
  }

  v20 = v4;
  v5 = vcgt_s32(v3, v4);
  if ((v5.i32[0] & v5.i32[1] & 1) == 0 || !*(a1 + 144))
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v21[0] = &unk_1F46EA190;
    v21[1] = a1;
    v28 = 0;
    if (!(*(*a1 + 32))(a1))
    {
      break;
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    v16 = v26.i64[1];
    if (v26.i64[1])
    {
      v17 = 0;
      v18 = (v24 * v26.i32[0]);
      do
      {
        bzero((v22 + v23 * v17++), v18);
      }

      while (v16 != v17);
    }

    CGrNavigator::~CGrNavigator(v21);
    if (++v6 >= *(a1 + 144))
    {
      return 0;
    }
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = (v7 + 32);
  }

  else
  {
    v8 = (a1 + 24);
  }

  v9 = *v8 + *(a1 + 152) * v6;
  v11 = *(a1 + 120);
  v10 = *(a1 + 128);
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = 0;
  v26 = *(a1 + 104);
  v27 = 1;
  v12 = vmin_s32(v3, vmovn_s64(v26));
  v13 = vcge_s32(v20, v12);
  if (((v13.i32[0] | v13.i32[1]) & 1) == 0)
  {
    v22 = v9 + v11 * v20.u32[0] + v10 * v20.u32[1];
    v14 = vsub_s32(v12, v20);
    v15.i64[0] = v14.i32[0];
    v15.i64[1] = v14.i32[1];
    v26 = v15;
    LOBYTE(v28) = 1;
    goto LABEL_14;
  }

  (*(*a1 + 40))(a1);
  LOBYTE(v28) = 0;
LABEL_20:
  CGrNavigator::~CGrNavigator(v21);
  return 7;
}

void CGridP::~CGridP(CGridP *this)
{
  CGrid::~CGrid(this);
  if (v1)
  {
    --CMemEnv::excount;

    free(v1);
  }
}

int32x2_t CGrNavigator::CGrNavigator(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *(a1 + 72) = 0;
  *a1 = &unk_1F46EA190;
  *(a1 + 8) = 0;
  result = vmovn_s64(*(a2 + 48));
  v4 = 0;
  if (!a3 || (v4 = vmax_s32(*a3, 0), result = vmin_s32(result, a3[1]), v5 = vcge_s32(v4, result), ((v5.i32[0] | v5.i32[1]) & 1) == 0))
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 16) + v6 * v4.u32[1];
    *(a1 + 24) = v6;
    v8 = *(a2 + 32);
    *(a1 + 16) = v7 + *(a2 + 32) * v4.u32[0];
    result = vsub_s32(result, v4);
    *&v9 = result.i32[0];
    *(&v9 + 1) = result.i32[1];
    result = result.i32[0];
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = 1;
  }

  return result;
}

void CGrNavigator::CGrNavigator(CGrNavigator *this, CMemEnv *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *this = &unk_1F46EA190;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = a5;
  *(this + 5) = 0;
  *(this + 6) = a3;
  *(this + 7) = a4;
  *(this + 8) = 1;
  *(this + 72) = 0;
  v10 = CBaseObject::operator new(0xA0uLL);
  *(v10 + 3) = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = &unk_1F46EA620;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0;
  *(v10 + 12) = 0;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *v10 = &unk_1F46EA138;
  *(v10 + 13) = a3;
  *(v10 + 14) = a4;
  *(v10 + 68) = 256;
  v11 = (a5 * a3 + 31) & 0xFFFFFFFFFFFFFFE0;
  *(v10 + 15) = a5;
  *(v10 + 16) = v11;
  v12 = v11 * a4;
  *(v10 + 18) = 1;
  *(v10 + 19) = v11 * a4;
  v13 = CBaseObject::operator new(0x40uLL);
  CMemBlock::CMemBlock(v13, a2, v12, 1, 32);
  *(v10 + 1) = v13;
  if (v13)
  {
    if ((*(*v13 + 32))(v13))
    {
      v10[136] = 1;
    }

    else
    {
      v14 = *(v10 + 1);
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      *(v10 + 1) = 0;
    }
  }

  v15 = *v10;
  if (v10[136])
  {
    if ((*(v15 + 32))(v10))
    {
      (*(*v10 + 8))(v10);
    }

    else
    {
      v16 = *(v10 + 1);
      if (v16)
      {
        v17 = (v16 + 32);
      }

      else
      {
        v17 = (v10 + 24);
      }

      v18 = *v17;
      *(this + 3) = *(v10 + 16);
      *(this + 5) = *(v10 + 19);
      *(this + 1) = v10;
      *(this + 2) = v18;
      *(this + 36) = 257;
    }
  }

  else
  {
    (*(v15 + 8))(v10);
  }
}

void sub_1C782A078(_Unwind_Exception *a1)
{
  CBaseRef::operator delete(v2);
  CGrid::~CGrid(v1);
  --CMemEnv::excount;
  free(v4);
  _Unwind_Resume(a1);
}

unint64_t CMedian::CKernel8x16::IdealTSize(CMedian::CKernel8x16 *this)
{
  v1 = *(this + 1587);
  if (v1)
  {
    return CMedian::CxParms::IdealTSize(v1, 8);
  }

  else
  {
    return 0x100000000C0;
  }
}

void CMedian::CKernel8x16::~CKernel8x16(CMedian::CKernel8x16 *this)
{
  CKernel::~CKernel(this);

  JUMPOUT(0x1CCA60F70);
}

uint64_t CMedian::CKernel8x16::Process_(CMedian::CKernel8x16 *this, const CGrNavigator *a2, const CGrNavigator *a3, unsigned int a4, const CGrNavigator *a5)
{
  v5 = *(a3 + 6);
  if (v5 >= 0x10)
  {
    v21 = *(this + 1587);
    v9 = *(v21 + 24);
    v10 = malloc_type_calloc(0x22E0uLL, 1uLL, 0x1000040BAB6B22EuLL);
    if (v5)
    {
      v11 = 0;
      v20 = 2 * v9;
      do
      {
        v12 = v5 - 16;
        if (v11 + 16 <= v5)
        {
          v12 = v11;
        }

        v11 = v12 + 16;
        v13 = *(a2 + 7);
        v29 = v12;
        v30 = v12 + 16 + v20;
        v31 = v13;
        v14 = *(a3 + 7);
        v26 = v12;
        v27 = v12 + 16;
        v28 = v14;
        CGrNavigator::CGrNavigator(v24, a2, &v29);
        v24[0] = &unk_1F46EA598;
        CGrNavigator::CGrNavigator(v23, a3, &v26);
        v23[0] = &unk_1F46EA600;
        v15 = (v25 - 15);
        bzero(v10, 0x22E0uLL);
        if (v15)
        {
          v17 = v24[2];
          v16 = v24[3];
          v18 = v15;
          do
          {
            Hist8x16Inc(v10, v17, v15);
            v17 += v16;
            --v18;
          }

          while (v18);
        }

        if (a5)
        {
          CGrNavigator::CGrNavigator(v22, a5, &v26);
          v22[0] = &unk_1F46EA598;
          Median8x16Strip_(v21, v24, v23, v10);
          CGrNavigator::~CGrNavigator(v22);
        }

        else
        {
          Median8x16Strip_(v21, v24, v23, v10);
        }

        CGrNavigator::~CGrNavigator(v23);
        CGrNavigator::~CGrNavigator(v24);
      }

      while (v11 < v5);
    }

    free(v10);
  }

  return 0;
}

uint64_t Hist8x16Inc(uint64_t result, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = (a3 + 8);
  v5 = result + 640;
  v6 = result + 4738;
  v7 = 1;
  do
  {
    v8 = 0;
    v9 = *(a2 + (v4 + v3));
    v10 = *(a2 + v3 + 8);
    v11 = v5 + 16 * *(a2 + (v3 + a3));
    v12 = v5 + 16 * *(a2 + v3);
    do
    {
      ++*(v12 + 2 * v8);
      --*(v11 + 2 * v8++);
    }

    while (v7 != v8);
    if (v3 <= 6)
    {
      v13 = v6 + 16 * v9;
      v14 = v3;
      v15 = v6 + 16 * v10;
      do
      {
        --*(v15 + 2 * v14);
        ++*(v13 + 2 * v14++);
      }

      while (v14 != 7);
    }

    ++v3;
    ++v7;
  }

  while (v3 != 8);
  if (v4 >= 9)
  {
    v16 = v4 - 8;
    v17 = (a2 + 8);
    do
    {
      v18 = *v17++;
      ++*(result + 128 + 2 * v18);
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t Median8x16Strip_(uint64_t result, uint64_t a2, void *a3, uint16x8_t *a4)
{
  v18 = result;
  v4 = a3[7];
  if (v4)
  {
    v8 = 0;
    v9 = *(result + 24);
    v10 = (2 * v9) | 1;
    v11 = *(result + 49);
    v12 = (v4 - 1);
    v13 = 2 * v9 + 1;
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_3:
    result = Hist8x16Read16(a4, a3[2] + a3[3] * v8, *(v18 + 36));
LABEL_4:
    while (v12 != v8)
    {
      v14 = *(a2 + 16);
      v15 = *(a2 + 24);
      v16 = (v14 + v15 * v8);
      v17 = (v14 + v15 * (v13 + v8));
      result = Hist8x16Step(a4, v17, v16, v10);
      if ((v11 & 1) == 0)
      {
        result = Hist8x16Delta2(a4, v17, v16, v10);
      }

      ++v8;
      if ((v11 & 1) == 0)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

unsigned __int8 *Hist8x16Read16(uint16x8_t *a1, uint64_t a2, unsigned int a3)
{
  v32 = vdupq_n_s16(a3);
  v6 = a1 + 554;
  v7 = a1 + 40;
  i64 = a1[8].i64;
  Hist8x16Adjust8x_(&a1[552], a1 + 554, a1[40].i64, a1[8].i64, v32);
  result = Hist8x16Adjust8x_(&a1[552].u8[1], a1 + 555, a1[296].i64, i64, v32);
  v10 = 0;
  v11 = a1 + 296;
  v12 = v7;
  do
  {
    v13 = a1[552].u8[0];
    v14 = v6->u16[v10];
    if (v14 <= a3)
    {
      v16 = v13 | 0xFFFFFFFFFFFFFF00;
      v17 = (i64 + 2 * v13);
      v18 = &v12[v13];
      while (1)
      {
        v20 = v18->i16[0];
        ++v18;
        v19 = v20;
        v21 = *v17++;
        v14 += (v21 + v19);
        if (v14 > a3)
        {
          break;
        }

        v22 = __CFADD__(v16++, 1);
        if (v22)
        {
          LOBYTE(v13) = 0;
          goto LABEL_14;
        }
      }

      LOBYTE(v13) = v16;
    }

    else if (a1[552].i8[0])
    {
      v15 = 8 * v13 - 8;
      do
      {
        LODWORD(v13) = v13 - 1;
        if (!v13)
        {
          break;
        }

        v14 -= (*(i64 + 2 * v13) + v7->i16[v10 + (v15 & 0xFFFFFFF8)]);
        v15 -= 8;
      }

      while (v14 > a3);
    }

LABEL_14:
    *(a2 + v10) = v13;
    v23 = a1[552].u8[1];
    v24 = v6->u16[v10 | 8];
    if (v24 <= a3)
    {
      v26 = v23 | 0xFFFFFFFFFFFFFF00;
      v27 = (i64 + 2 * v23);
      v28 = &v11[v23];
      while (1)
      {
        v30 = v28->i16[0];
        ++v28;
        v29 = v30;
        v31 = *v27++;
        v24 += (v31 + v29);
        if (v24 > a3)
        {
          break;
        }

        v22 = __CFADD__(v26++, 1);
        if (v22)
        {
          LOBYTE(v23) = 0;
          goto LABEL_26;
        }
      }

      LOBYTE(v23) = v26;
    }

    else if (a1[552].i8[1])
    {
      v25 = 8 * v23 - 8;
      do
      {
        LODWORD(v23) = v23 - 1;
        if (!v23)
        {
          break;
        }

        v24 -= (*(i64 + 2 * v23) + a1[296].i16[v10 + (v25 & 0xFFFFFFF8)]);
        v25 -= 8;
      }

      while (v24 > a3);
    }

LABEL_26:
    *(a2 + (v10++ | 8)) = v23;
    v12 = (v12 + 2);
    v11 = (v11 + 2);
  }

  while (v10 != 8);
  return result;
}

uint64_t Hist8x16Step(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  Hist8x16Inc(a1, a2, a4);

  return Hist8x16Dec(a1, a3, a4);
}

uint64_t Hist8x16Delta2(uint64_t result, uint8x8_t *a2, uint8x8_t *a3, unsigned int a4)
{
  v4 = *(result + 8832);
  v5 = *(result + 8833);
  v6 = (result + 8864);
  if (a4 >= 0x11)
  {
    v13 = 0;
    v14 = a4 & 0xFFFFFFF8;
    v15 = a4;
    do
    {
      v16 = v6->u16[v13];
      v17 = v13;
      v18 = v15 - (a4 & 0xFFFFFFF8);
      do
      {
        if (a2->u8[v17] < v4)
        {
          ++v16;
        }

        v16 = (__PAIR64__(v16, a3->u8[v17++]) - v4) >> 32;
      }

      while (v17 != 8);
      v6->i16[v13] = v16;
      v19 = (a2 + (a4 & 0xFFFFFFF8));
      v20 = (a3 + (a4 & 0xFFFFFFF8));
      if (v14 < v13 + a4)
      {
        do
        {
          v21 = v19->u8[0];
          v19 = (v19 + 1);
          if (v21 < v4)
          {
            ++v16;
          }

          v22 = v20->u8[0];
          v20 = (v20 + 1);
          v16 = (__PAIR64__(v16, v22) - v4) >> 32;
          --v18;
        }

        while (v18);
      }

      v6->i16[v13++] = v16;
      ++v15;
    }

    while (v13 != 8);
    v23 = vdup_n_s8(v4);
    v24 = vsub_s8(vcgt_u8(v23, a3[1]), vcgt_u8(v23, a2[1]));
    v25 = vpadd_s8(v24, v24);
    v26 = vpadd_s8(v25, v25);
    v27 = vaddw_s8(*v6, vpadd_s8(v26, v26));
    *v6 = v27;
    v28 = vdup_n_s8(v5);
    if (v14 < 0x11)
    {
      v31 = 0;
      v29 = 0;
    }

    else
    {
      v29 = 0;
      v30 = 16;
      v31 = 0;
      do
      {
        v32 = a2[v30 / 8];
        v33 = a3[v30 / 8];
        v29 = vadd_s8(vsub_s8(v29, vcgt_u8(v23, v32)), vcgt_u8(v23, v33));
        v31 = vadd_s8(vsub_s8(v31, vcgt_u8(v28, v32)), vcgt_u8(v28, v33));
        if ((v30 & 0x38) == 0)
        {
          v34 = vpadd_s8(v29, v29);
          v35 = vpadd_s8(v34, v34);
          v36 = vpadd_s8(v31, v31);
          v37 = vpadd_s8(v36, v36);
          v38 = *(result + 8880);
          v27 = vaddw_s8(v27, vpadd_s8(v35, v35));
          *(result + 8864) = v27;
          *(result + 8880) = vaddw_s8(v38, vpadd_s8(v37, v37));
          v31 = 0;
          v29 = 0;
        }

        v30 += 8;
      }

      while (v30 < v14);
    }

    v39 = 0;
    v40 = vpadd_s8(v29, v29);
    v41 = vpadd_s8(v40, v40);
    v42 = vpadd_s8(v31, v31);
    v43 = vpadd_s8(v42, v42);
    v44 = *(result + 8880);
    *(result + 8864) = vaddw_s8(v27, vpadd_s8(v41, v41));
    v45 = vaddw_s8(v44, vpadd_s8(v43, v43));
    *(result + 8880) = v45;
    v46 = vsub_s8(vcgt_u8(v28, *(a3 + v14)), vcgt_u8(v28, *(a2 + v14)));
    v47 = vpadd_s8(v46, v46);
    v48 = vpadd_s8(v47, v47);
    v49 = (v14 + 8);
    v50 = a4 + 8;
    v51 = a3 + 1;
    v52 = a2 + 1;
    *(result + 8880) = vaddw_s8(v45, vpadd_s8(v48, v48));
    v53 = (a3 + v49);
    v54 = (a2 + v49);
    for (result = 8; result != 16; ++result)
    {
      v55 = v6->u16[result];
      v56 = v39;
      v57 = v50 - v49;
      do
      {
        if (v52->u8[v56] < v5)
        {
          ++v55;
        }

        v55 = (__PAIR64__(v55, v51->u8[v56++]) - v5) >> 32;
      }

      while (v56 != 8);
      v6->i16[result] = v55;
      v58 = v54;
      v59 = v53;
      if (v49 < result + a4)
      {
        do
        {
          v60 = *v58++;
          if (v60 < v5)
          {
            ++v55;
          }

          v61 = *v59++;
          v55 = (__PAIR64__(v55, v61) - v5) >> 32;
          --v57;
        }

        while (v57);
      }

      v6->i16[result] = v55;
      ++v50;
      ++v39;
    }
  }

  else
  {
    for (i = 0; i != 8; ++i)
    {
      v8 = v6->u16[i];
      v9 = i;
      do
      {
        if (a2->u8[v9] < v4)
        {
          ++v8;
        }

        v8 = (__PAIR64__(v8, a3->u8[v9++]) - v4) >> 32;
      }

      while (v9 < i + a4);
      v6->i16[i] = v8;
    }

    for (j = 8; j != 16; ++j)
    {
      v11 = v6->u16[j];
      v12 = j;
      do
      {
        if (a2->u8[v12] < v5)
        {
          ++v11;
        }

        v11 = (__PAIR64__(v11, a3->u8[v12++]) - v5) >> 32;
      }

      while (v12 < j + a4);
      v6->i16[j] = v11;
    }
  }

  return result;
}

uint64_t Hist8x16Dec(uint64_t result, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = a3 + 7;
  v5 = (a3 + 8);
  v6 = result + 640;
  v7 = result + 4738;
  v8 = 8;
  do
  {
    v9 = 0;
    v10 = *(a2 + v3 + 8);
    v11 = *(a2 + (v5 + v3));
    v12 = v6 + 16 * *(a2 + (v4 - v3));
    v13 = v6 + 16 * *(a2 - v3 + 7);
    do
    {
      --*(v13 + 2 * v9);
      ++*(v12 + 2 * v9++);
    }

    while (v8 != v9);
    if (v3 <= 6)
    {
      v14 = v7 + 16 * v11;
      v15 = v3;
      v16 = v7 + 16 * v10;
      do
      {
        ++*(v16 + 2 * v15);
        --*(v14 + 2 * v15++);
      }

      while (v15 != 7);
    }

    ++v3;
    --v8;
  }

  while (v3 != 8);
  if (v5 >= 9)
  {
    v17 = v5 - 8;
    v18 = (a2 + 8);
    do
    {
      v19 = *v18++;
      --*(result + 128 + 2 * v19);
      --v17;
    }

    while (v17);
  }

  return result;
}

unsigned __int8 *Hist8x16Adjust8x_(unsigned __int8 *result, uint16x8_t *a2, uint64_t a3, uint64_t a4, uint16x8_t a5)
{
  v5 = a5;
  v8 = result;
  v9 = *result;
  v10 = (a4 + 2 * v9);
  v11 = *a2;
  if (vmaxv_u8(vmovn_s16(vcgtq_u16(*a2, a5))))
  {
    v12 = &v10[-2];
    v13 = (a3 + 16 * v9 - 64);
    while ((v9 != 0) | Hist8x16Adjust8x_(unsigned char *,unsigned short *,unsigned short *,unsigned short *,__simd128_uint16_t)::first & 1)
    {
      LODWORD(v9) = v9 - 8;
      v14 = *v12--;
      v15 = vnegq_s16(v14);
      v11 = vsubq_s16(vaddq_s16(vaddq_s16(vsubq_s16(vaddq_s16(vdupq_laneq_s16(v15, 7), v11), v13[3]), vaddq_s16(vaddq_s16(vdupq_laneq_s16(v15, 6), vdupq_laneq_s16(v15, 5)), vdupq_laneq_s16(v15, 4))), vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*v15.i8, 3), vdupq_lane_s16(*v15.i8, 2)), vdupq_lane_s16(*v15.i8, 1)), vdupq_lane_s16(*v15.i8, 0))), vaddq_s16(vaddq_s16(vaddq_s16(v13[2], v13[1]), vaddq_s16(*v13, v13[-1])), vaddq_s16(vaddq_s16(v13[-2], v13[-3]), v13[-4])));
      v13 -= 8;
      if ((vmaxv_u8(vmovn_s16(vcgtq_u16(v11, v5))) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    Hist8x16Adjust8x_(unsigned char *,unsigned short *,unsigned short *,unsigned short *,__simd128_uint16_t)::first = 1;
    v20 = v11;
    result = puts("Hist8x16Adjust8x -- attempting to adjust below zero!!");
    v11 = v20;
    LOBYTE(v9) = 0;
  }

  else
  {
    while (1)
    {
      v16 = (a3 + 16 * v9);
      v17 = vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*v10, 0), vaddq_s16(v11, *v16)), vaddq_s16(vdupq_lane_s16(*v10, 1), vdupq_lane_s16(*v10, 2))), vaddq_s16(vaddq_s16(vdupq_lane_s16(*v10, 3), vdupq_laneq_s16(*v10->i8, 4)), vdupq_laneq_s16(*v10->i8, 5))), vaddq_s16(vaddq_s16(vaddq_s16(vdupq_laneq_s16(*v10->i8, 6), vdupq_laneq_s16(*v10->i8, 7)), v16[1]), v16[2])), vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v16[3], v16[4]), v16[5]), v16[6]), v16[7]));
      if (vmaxv_u8(vmovn_s16(vcgtq_u16(v17, v5))))
      {
        break;
      }

      if ((v9 + 8) >= 0x100)
      {
        v19 = v17;
        result = puts("Hist8x16Adjust8x -- ind >= 256!!");
        v5 = a5;
        v17 = v19;
      }

      v10 += 2;
      v9 += 8;
      v11 = v17;
    }
  }

LABEL_11:
  *v8 = v9;
  *a2 = v11;
  return result;
}

void CGrNavigatorTC<unsigned char>::~CGrNavigatorTC(CGrNavigator *a1)
{
  CGrNavigator::~CGrNavigator(a1);
  if (v1)
  {
    --CMemEnv::excount;

    free(v1);
  }
}

CMedian::CKernel8x16 *CMedian::CKernel8x16::CKernel8x16(CMedian::CKernel8x16 *this, const CMedian::CxParms *a2)
{
  v4 = *(a2 + 1);
  *this = &unk_1F46EA510;
  *(this + 8) = 0;
  *(this + 2) = v4;
  *(this + 3) = 0x100000001;
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  bzero(this + 72, 0x3000uLL);
  *(this + 12616) = 0u;
  pthread_mutex_init((this + 12632), 0);
  *(this + 8) = 1;
  *(this + 1587) = a2;
  *this = &unk_1F46EA1C8;
  *(this + 6) = 16;
  return this;
}

void CGrNavigatorT<float,1ul>::~CGrNavigatorT(CGrNavigator *a1)
{
  CGrNavigator::~CGrNavigator(a1);
  if (v1)
  {
    --CMemEnv::excount;

    free(v1);
  }
}

uint64_t CInwardBlur::ProcessBuffer_(uint64_t a1, void *a2, void *a3)
{
  v180 = *MEMORY[0x1E69E9840];
  v7 = a2[6];
  v6 = a2[7];
  v8 = a3[7];
  LODWORD(v9) = v6;
  v10 = v6;
  if (v8)
  {
    v11 = 0;
    v12 = a3[6];
    v13 = v8;
    v14 = (v12 - 1);
    do
    {
      if (v14 >= 2)
      {
        for (i = 1; i != v14; ++i)
        {
          v16 = (i + a3[2] + v11 * a3[3]);
          if (!*v16 && ((v16[1] | *(v16 - 1)) & 4) != 0)
          {
            *v16 = 3;
          }
        }
      }

      v17 = (a3[2] + a3[3] * v11);
      if (!*v17 && (v17[1] & 4) != 0)
      {
        *v17 = 3;
      }

      if (!v17[v14] && (v17[(v12 - 2)] & 4) != 0)
      {
        v17[v14] = 3;
      }

      ++v11;
    }

    while (v11 != v8);
    v18 = 0;
    v19 = (v8 - 1);
    do
    {
      if (v18 - 1 >= 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v18 - 1 <= v19)
      {
        v20 = v18 - 1;
      }

      v21 = v18 + 1;
      if (v18 + 1 >= 0)
      {
        v22 = v19;
      }

      else
      {
        v22 = 0;
      }

      if (v18 < v19)
      {
        v22 = v18 + 1;
      }

      if (v12)
      {
        v23 = a3[2];
        v24 = a3[3];
        v25 = (v23 + v24 * v20);
        v26 = (v23 + v24 * v18);
        v27 = (v23 + v24 * v22);
        v28 = v12;
        do
        {
          if (!*v26 && ((*v27 | *v25) & 2) != 0)
          {
            *v26 = 1;
          }

          ++v27;
          ++v25;
          ++v26;
          --v28;
        }

        while (v28);
      }

      v18 = v21;
    }

    while (v21 != v13);
    v9 = a2[7];
    v10 = v9;
  }

  if (v9)
  {
    v29 = 0;
    v30 = a2[6];
    v31 = a3[2];
    v32 = a3[3];
    v33 = v9 - 1;
    v34 = -1;
    do
    {
      if (v30)
      {
        v35 = 0;
        v36 = a2[2] + a2[3] * v29;
        do
        {
          if ((*(v31 + v29 * v32 + v35) & 5) == 1)
          {
            v37 = 0;
            v38 = 0uLL;
            for (j = -1; j != 2; ++j)
            {
              v40 = j + v35;
              if (j + v35 >= 0)
              {
                LODWORD(v41) = v30 - 1;
              }

              else
              {
                LODWORD(v41) = 0;
              }

              if (v40 <= v30 - 1)
              {
                v41 = v40;
              }

              else
              {
                v41 = v41;
              }

              v42 = v41 + v31;
              v43 = a2[2] + 16 * v41;
              v44 = 3;
              v45 = v34;
              do
              {
                if (v45 >= 0)
                {
                  LODWORD(v46) = v33;
                }

                else
                {
                  LODWORD(v46) = 0;
                }

                if (v45 <= v33)
                {
                  v46 = v45;
                }

                else
                {
                  v46 = v46;
                }

                if ((*(v42 + v32 * v46) & 4) != 0)
                {
                  v38 = vaddq_f32(*(v43 + a2[3] * v46), v38);
                  ++v37;
                }

                ++v45;
                --v44;
              }

              while (v44);
            }

            *(v36 + 16 * v35) = vmulq_n_f32(v38, flt_1C784CEDC[v37 - 1]);
          }

          ++v35;
        }

        while (v35 != v30);
      }

      ++v29;
      ++v34;
    }

    while (v29 != v10);
  }

  v47 = *(a1 + 24);
  _ZF = v47 == 0;
  v49 = v47 >> CInwardBlur::ProcessBuffer_(CInwardBlur::CParms const&,CGrNavigatorT<__simd128_float32_t,1ul> const&,CGrNavigatorT const&<unsigned char,1ul>)::nesting;
  v51 = !_ZF && v49 < 2;
  if (v7 < 5 || v6 < 5 || (v51 & 1) != 0)
  {
LABEL_118:
    CMemBlock::CMemBlock(&v171, *a1, (48 * v7 + 96) & 0xFFFFFFFF0, 0, 16);
    v171 = &unk_1F46EA218;
    if (v172 != 1)
    {
      v94 = 7;
LABEL_153:
      CMemBlock::~CMemBlock(&v171);
      return v94;
    }

    v163 = &unk_1F46EA6B8;
    v164 = 0;
    v165 = &v171;
    if (CMemBlock::Lock(&v171))
    {
      if ((v164 & 1) == 0)
      {
        v94 = 7;
LABEL_152:
        CLock::~CLock(&v163);
        goto LABEL_153;
      }
    }

    else
    {
      v164 = 1;
    }

    v113 = 0;
    v114 = 1 << CInwardBlur::ProcessBuffer_(CInwardBlur::CParms const&,CGrNavigatorT<__simd128_float32_t,1ul> const&,CGrNavigatorT const&<unsigned char,1ul>)::nesting;
    if ((1 << CInwardBlur::ProcessBuffer_(CInwardBlur::CParms const&,CGrNavigatorT<__simd128_float32_t,1ul> const&,CGrNavigatorT const&<unsigned char,1ul>)::nesting) >= 0x10)
    {
      v114 = 16;
    }

    if (v114 <= 1)
    {
      v114 = 1;
    }

    v115 = vdupq_n_s32(0x3DE38E39u);
    do
    {
      v117 = a2[6];
      v116 = a2[7];
      v118 = (v175 + 16);
      v119 = (v175 + 16 + 16 * v117);
      v120 = v119 + 2;
      v121 = &v119[v117 + 2];
      v122 = v121 + 2;
      v123 = a2[2];
      v124 = v123;
      v125 = v119 + 2;
      v126 = v117;
      v127 = v117;
      if (v117)
      {
        do
        {
          v128 = *v124++;
          *v125++ = v128;
          --v127;
        }

        while (v127);
        v119[1] = v119[2];
        v129 = (v117 - 1);
        *v121 = v120[v129];
        v130 = v121 + 2;
        v131 = v126;
        do
        {
          v132 = *v123++;
          *v130++ = v132;
          --v131;
        }

        while (v131);
        v133 = v126;
      }

      else
      {
        v133 = 0;
        v134 = v119[0x100000001];
        v119[1] = v119[2];
        v119[2] = v134;
        v129 = 0xFFFFFFFFLL;
      }

      v121[1] = v121[2];
      v122[v133] = v122[v129];
      v135 = v116;
      if (v116)
      {
        v136 = 0;
        v137 = (v116 - 1);
        v138 = v122;
        do
        {
          if (v136 < v137)
          {
            if (v126)
            {
              v139 = (a2[3] + a2[3] * v136 + a2[2]);
              v140 = v118;
              v141 = v126;
              do
              {
                v142 = *v139++;
                *v140++ = v142;
                --v141;
              }

              while (v141);
              v143 = v126;
            }

            else
            {
              v143 = 0;
            }

            *(v118 - 1) = *v118;
            v118[v143] = v118[v129];
            v138 = v118;
          }

          if (v126)
          {
            v144 = 0;
            v145 = (a3[2] + a3[3] * v136);
            do
            {
              v146 = *v145++;
              if (v146 <= 3)
              {
                *(v144 * 16 + a2[2] + v136 * a2[3]) = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v120[v144], v120[v144 - 1]), vaddq_f32(v120[v144 + 1], v122[v144 - 1])), vaddq_f32(vaddq_f32(v122[v144], v122[v144 + 1]), v138[v144 - 1])), vaddq_f32(v138[v144], v138[v144 + 1])), v115);
              }

              ++v144;
            }

            while (v126 != v144);
          }

          ++v136;
          v118 = v120;
          v120 = v122;
          v122 = v138;
        }

        while (v136 != v135);
      }

      ++v113;
    }

    while (v113 != v114);
    v94 = 0;
    goto LABEL_152;
  }

  v52 = (v6 + 1) >> 1;
  CGrNavigator::CGrNavigator(&v171, *a1, (v7 + 1) >> 1, v52, 16);
  v171 = &unk_1F46EA368;
  if (v178)
  {
    CGrNavigator::CGrNavigator(&v163, *a1, (v7 + 1) >> 1, v52, 1);
    v163 = &unk_1F46EA598;
    if (v170)
    {
      v157 = v173;
      v158 = v174;
      v53 = vshrq_n_s64(vshlq_n_s64(v176, 0x20uLL), 0x20uLL);
      v159 = v175;
      v160 = v53;
      v161 = v177;
      v162 = 1;
      v155 = &unk_1F46EA368;
      v156 = 0;
      v154 = 1;
      v149 = v165;
      v150 = v166;
      v151 = v167;
      v152 = vshrq_n_s64(vshlq_n_s64(v168, 0x20uLL), 0x20uLL);
      v153 = v169;
      v148[0] = &unk_1F46EA598;
      v148[1] = 0;
      v54 = *(a2 + 12);
      v55 = *(a2 + 14);
      __asm { FMOV            V0.4S, #1.0 }

      *&v59 = 0x3F0000003F000000;
      *(&v59 + 1) = 0x3F0000003F000000;
      v179[0] = _Q0;
      v179[1] = v59;
      __asm { FMOV            V0.4S, #0.25 }

      v179[2] = vdupq_n_s32(0x3EAAAAABu);
      v179[3] = _Q0;
      v61 = v176.i32[2];
      if (v176.i32[2])
      {
        v62 = 0;
        v63 = v53.u32[0];
        do
        {
          if (v63)
          {
            v64 = 0;
            v65 = 0;
            v66 = 0;
            v67 = (2 * v62);
            if (((2 * v62) | 1u) >= v55)
            {
              v68 = v67;
            }

            else
            {
              v68 = (v67 + 1);
            }

            do
            {
              if (v64 + 1 >= v54)
              {
                v69 = v64;
              }

              else
              {
                v69 = v64 + 1;
              }

              v70 = a3[2];
              v71 = a3[3];
              v72 = v70 + v64;
              v73 = *(v72 + v71 * v67);
              v74 = v69 + v70;
              v75 = *(v74 + v71 * v67);
              v76 = v71 * v68;
              v77 = *(v72 + v76);
              v78 = *(v74 + v76);
              v79 = v149;
              v80 = v150;
              if ((v75 | v73 | v77 | v78))
              {
                v84 = a2[2];
                v85 = a2[3];
                v86 = v85 * v67;
                v87 = v84 + 16 * v64;
                v88 = 0uLL;
                if (v73)
                {
                  v88 = *(v87 + v86);
                }

                v89 = v84 + 16 * v69;
                v90 = v75 & 1;
                if (v75)
                {
                  v88 = vaddq_f32(*(v89 + v86), v88);
                }

                v91 = v85 * v68;
                v92 = v77 & 1;
                if (v92)
                {
                  v88 = vaddq_f32(*(v87 + v91), v88);
                }

                v93 = v78 & 1;
                if (v93)
                {
                  v88 = vaddq_f32(*(v89 + v91), v88);
                }

                *(v65 + v157 + v62 * v158) = vmulq_f32(v179[(v73 & 1u) - 1 + v90 + v92 + v93], v88);
                v81 = 7;
              }

              else
              {
                v81 = 0;
                v82 = a2[2];
                v83 = a2[3];
                *(v65 + v157 + v62 * v158) = vmulq_f32(vaddq_f32(vaddq_f32(*(v82 + 16 * v69 + v83 * v67), *(v82 + 16 * v64 + v83 * v67)), vaddq_f32(*(v82 + 16 * v64 + v83 * v68), *(v82 + 16 * v69 + v83 * v68))), _Q0);
              }

              *(v79 + v62 * v80 + v66++) = v81;
              v65 += 16;
              v64 += 2;
            }

            while (v63 != v66);
          }

          ++v62;
        }

        while (v62 != v61);
      }

      CGrNavigator::~CGrNavigator(v148);
      CGrNavigator::~CGrNavigator(&v155);
      ++CInwardBlur::ProcessBuffer_(CInwardBlur::CParms const&,CGrNavigatorT<__simd128_float32_t,1ul> const&,CGrNavigatorT const&<unsigned char,1ul>)::nesting;
      v94 = CInwardBlur::ProcessBuffer_(a1, &v171, &v163);
      --CInwardBlur::ProcessBuffer_(CInwardBlur::CParms const&,CGrNavigatorT<__simd128_float32_t,1ul> const&,CGrNavigatorT const&<unsigned char,1ul>)::nesting;
      if (v94)
      {
        v95 = 0;
      }

      else
      {
        v157 = v173;
        v158 = v174;
        v159 = v175;
        v160 = vshrq_n_s64(vshlq_n_s64(v176, 0x20uLL), 0x20uLL);
        v161 = v177;
        v162 = 1;
        v155 = &unk_1F46EA368;
        v156 = 0;
        v96 = *(a2 + 14);
        if (*(a2 + 14))
        {
          v97 = 0;
          v98 = (v176.i32[2] << 8) - 257;
          v99 = (v176.i32[0] << 8) - 257;
          v100 = *(a2 + 12);
          v101.i64[0] = 0x3F0000003F000000;
          v101.i64[1] = 0x3F0000003F000000;
          v102.i64[0] = 0x3F0000003F000000;
          v102.i64[1] = 0x3F0000003F000000;
          do
          {
            v102 = vsubq_f32(v101, v102);
            if (v100)
            {
              v103 = 0;
              v104 = 0;
              v105 = 0;
              v106 = v97 << 7;
              if ((v97 & 0x1000000) != 0)
              {
                v107 = 0;
              }

              else
              {
                v107 = v98;
              }

              if (v106 > v98)
              {
                v106 = v107;
              }

              v108 = v106 >> 8;
              v109.i64[0] = 0x3F0000003F000000;
              v109.i64[1] = 0x3F0000003F000000;
              do
              {
                v109 = vsubq_f32(v101, v109);
                if (!*(v105 + a3[2] + v97 * a3[3]))
                {
                  if (v104 >= 0)
                  {
                    v110 = v99;
                  }

                  else
                  {
                    v110 = 0;
                  }

                  if (v104 <= v99)
                  {
                    v110 = v104;
                  }

                  v111 = v157 + ((v110 >> 4) & 0xFFFFFF0);
                  v112 = vmlaq_f32(*(v111 + v158 * v108), v109, vsubq_f32(*(v111 + v158 * v108 + 16), *(v111 + v158 * v108)));
                  *(v103 + a2[2] + v97 * a2[3]) = vmlaq_f32(v112, v102, vmlaq_f32(vsubq_f32(*(v111 + v158 * (v108 + 1)), v112), v109, vsubq_f32(*(v111 + v158 * (v108 + 1) + 16), *(v111 + v158 * (v108 + 1)))));
                }

                ++v105;
                v104 += 128;
                v103 += 16;
              }

              while (v100 != v105);
            }

            ++v97;
          }

          while (v97 != v96);
        }

        CGrNavigator::~CGrNavigator(&v155);
        v94 = 0;
        v95 = 1;
      }
    }

    else
    {
      v95 = 0;
      v94 = 7;
    }

    CGrNavigator::~CGrNavigator(&v163);
    CGrNavigator::~CGrNavigator(&v171);
    if (v95)
    {
      goto LABEL_118;
    }
  }

  else
  {
    CGrNavigator::~CGrNavigator(&v171);
    return 7;
  }

  return v94;
}

void sub_1C782B870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  CGrNavigator::~CGrNavigator(&a29);
  CGrNavigator::~CGrNavigator(&a39);
  _Unwind_Resume(a1);
}

double CMemBlockT<__simd128_float32_t>::Description@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *a2 = &unk_1F46EA620;
  *(a2 + 8) = v3;
  *(a2 + 32) = 1;
  *(a2 + 64) = v4 >> 4;
  *(a2 + 40) = 16;
  *(a2 + 16) = v4 & 0xFFFFFFFFFFFFFFF0;
  *(a2 + 24) = 0;
  return result;
}

void CMemBlockT<__simd128_float32_t>::~CMemBlockT(CMemBlock *a1)
{
  CMemBlock::~CMemBlock(a1);

  CBaseRef::operator delete(v1);
}

BOOL LinesCross(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  v8 = a8 - a6;
  v9 = a3 - a1;
  v10 = a7 - a5;
  v11 = a4 - a2;
  v12 = -((v11 * v10) - (v9 * v8));
  return fabsf(v12) >= 0.0001 && fmaxf(fabsf(((1.0 / v12) * -((v11 * (a1 - a5)) - ((a2 - a6) * v9))) + -0.5), fabsf(((1.0 / v12) * -(((a1 - a5) * v8) - ((a2 - a6) * v10))) + -0.5)) < 0.5;
}

uint64_t ConnectIsophotes(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, __n128 _Q7)
{
  result = 0;
  v157 = *MEMORY[0x1E69E9840];
  if (!a1 || !a3)
  {
    return result;
  }

  v17 = 2 * a4;
  if (v17 + 2 > a2)
  {
    return 0;
  }

  v150 = 0;
  v151 = 0;
  v148 = 0;
  v149 = 0;
  memset(__src, 0, sizeof(__src));
  v115 = a2 - 1;
  if (v17 >= v115)
  {
    return 0;
  }

  v119 = 0;
  v120 = 0;
  v117 = 0;
  v18 = v17 | 1;
  v19 = a2;
  v116 = 0;
  v118 = 0.0;
  v20 = 0.1;
  v21 = 1.0;
  v22 = 0;
  v113 = 2 * a4;
  v23 = 2 * a4;
  *&v24 = 0.1;
  v126 = a2;
  v127 = a1;
  do
  {
    v121 = v23 + 1;
    v122 = v18;
    if (v23 + 1 < v19)
    {
      v25 = (a1 + 28 * v23);
      *&v12 = *v25;
      _Q7.n128_u64[0] = *(v25 + 1);
      v131 = v25;
      v130 = v25[4];
      v123 = (v25 + 4);
      v124 = *v25;
      LODWORD(v26) = HIDWORD(*v25);
      v27 = v22;
      v28 = *&v24;
      v125 = v23;
      v143 = v12;
      v134 = _Q7;
      do
      {
        v142 = v27;
        v29 = a1 + 28 * v18;
        v30 = *(v29 + 8);
        v31 = vsub_f32(*v29, *&v12);
        v32 = sqrtf(vaddv_f32(vmul_f32(v31, v31)));
        _D2 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v31), v21 / v32));
        v34 = vmul_f32(_Q7.n128_u64[0], _D2);
        v35 = vmul_f32(v30, _D2);
        if (vmul_f32(vadd_f32(vdup_lane_s32(v34, 1), v34), vadd_f32(vdup_lane_s32(v35, 1), v35)).f32[0] >= 0.0)
        {
          *&v13 = *v29;
          v144 = v13;
          v36 = *(v29 + 16);
          __asm { FMLS            S3, S7, V2.S[1] }

          v42 = vmul_lane_f32(_D2, v30, 1).f32[0] - (_D2.f32[1] * v30.f32[0]);
          if ((_S3 * v42) <= 0.0 || fabsf(_S3 + v42) <= 0.4)
          {
            v133 = (v29 + 16);
            v135 = *(v29 + 8);
            v43 = acosf(fminf(fabsf(vaddv_f32(v35)), fabsf(vaddv_f32(v34))));
            v44 = 0.0;
            if (v43 < 1.1781)
            {
              v44 = 0.4 / (v43 + 0.4);
            }

            v45 = v44 * fminf(v36, v130);
            __asm
            {
              FMOV            V2.2S, #5.0
              FMOV            V3.2S, #1.0
            }

            v48 = vmla_f32(_D3, _D2, vabd_f32(*(v131 + 5), *(v29 + 20)));
            v49 = v45 / vmul_lane_f32(v48, v48, 1).f32[0];
            if (v49 <= v28)
            {
              v22 = v142;
              *&v24 = v28;
LABEL_34:
              v21 = 1.0;
              v12 = v143;
LABEL_35:
              _Q7 = v134;
              goto LABEL_36;
            }

            v132 = v43;
            *&v129 = v49;
            v12 = v143;
            v50 = v144;
            if (a4)
            {
              v51 = 0;
              v52.i64[0] = v134.n128_u64[0];
              v53 = vmla_f32(vmul_f32(vext_s8(v134.n128_u64[0], v135, 4uLL), vrev64_s32(v31)), v31, __PAIR64__(v135.u32[1], v134.n128_u32[0]));
              v54.i16[0] = vcltz_f32(v53).u16[0];
              v54.i16[1] = v54.i16[0];
              v54.i16[2] = vcgtz_f32(v53).i16[2];
              v54.i16[3] = v54.i16[2];
              *&v52.u32[2] = v135;
              v55 = vbslq_s8(vmovl_s16(v54), vnegq_f32(v52), v52);
              v52.i64[0] = v143;
              v52.i64[1] = v144;
              v56 = vmlaq_n_f32(v52, v55, (((v132 * v132) * v20) + 0.333) * v32);
              v57 = *(&v144 + 1);
              v58.i64[0] = v143;
              v58.i64[1] = v56.i64[1];
              v59.i64[0] = v56.i64[0];
              v59.i64[1] = v144;
              v60 = vbslq_s8(vcgtq_f32(v52, v56), v58, v59);
              v61 = vbslq_s8(vcgtq_f32(v56, v52), v58, v59);
              v62 = vextq_s8(v61, v61, 8uLL);
              v63 = vcgtq_f32(v60, v62);
              v59.i64[1] = v62.i64[1];
              v62.i64[1] = v60.i64[1];
              v59.i64[0] = v60.i64[0];
              v64 = vbslq_s8(v63, v59, v62);
              v141 = vextq_s8(v64, v64, 8uLL);
              v140 = vextq_s8(v141, v141, 8uLL).u64[0];
              v137 = *v56.f32;
              v136 = vextq_s8(v56, v56, 8uLL).u64[0];
              v138 = v28;
              while (1)
              {
                v65 = (a3 + 352 * v51);
                v66 = *v65;
                v67 = *(v65 + 28);
                v146 = v65[1];
                v145 = *(v65 + 36);
                v68 = *(v65 + 15);
                v147 = *v65;
                if (LinesCross(*&v12, v26, *&v50, v57, COERCE_FLOAT(*v65), COERCE_FLOAT(HIDWORD(*v65)), v67.f32[0], v67.f32[1]))
                {
                  v22 = v142;
                  *&v24 = v28;
                  v19 = v126;
                  a1 = v127;
                  goto LABEL_34;
                }

                v69 = vsub_f32(v67, v147);
                *v70.f32 = v146;
                v71 = vmla_f32(vmul_f32(vext_s8(v146, v145, 4uLL), vrev64_s32(v69)), v69, __PAIR64__(v145.u32[1], v146.u32[0]));
                v72.i16[0] = vcltz_f32(v71).u16[0];
                v72.i16[1] = v72.i16[0];
                v72.i16[2] = vcgtz_f32(v71).i16[2];
                v73.i64[0] = v66;
                v72.i16[3] = v72.i16[2];
                *&v70.u32[2] = v145;
                *&v73.u32[2] = v67;
                v74 = vmlaq_n_f32(v73, vbslq_s8(vmovl_s16(v72), vnegq_f32(v70), v70), (((v68 * v68) * v20) + 0.333) * sqrtf(vaddv_f32(vmul_f32(v69, v69))));
                *v75.f32 = v147;
                *&v75.u32[2] = v67;
                v76 = vextq_s8(v74, v74, 8uLL).u64[0];
                *v77.i8 = v147;
                v77.u64[1] = v76;
                v78.i64[0] = v74.i64[0];
                v78.u64[1] = v67;
                v79 = vbslq_s8(vcgtq_f32(v75, v74), v77, v78);
                v80 = vbslq_s8(vcgtq_f32(v74, v75), v77, v78);
                v81 = vextq_s8(v80, v80, 8uLL);
                _Q4 = vcgtq_f32(v79, v81);
                v78.i64[1] = v81.i64[1];
                v81.i64[1] = v79.i64[1];
                v78.i64[0] = v79.i64[0];
                v83 = vbslq_s8(_Q4, v78, v81);
                v84 = vextq_s8(v83, v83, 8uLL);
                __asm { FMOV            V4.2S, #4.0 }

                *v84.i8 = vcge_f32(vmaxnm_f32(*v84.i8, *v141.i8), vadd_f32(vminnm_f32(*&vextq_s8(v84, v84, 8uLL), v140), *_Q4.i8));
                v12 = v143;
                if (((v84.i32[0] | v84.i32[1]) & 1) == 0)
                {
                  break;
                }

LABEL_30:
                ++v51;
                v50 = v144;
                if (v51 == a4)
                {
                  goto LABEL_31;
                }
              }

              v85 = v26;
              v86 = v20;
              v87 = 0;
              v156 = 0;
              memset(v155, 0, sizeof(v155));
              v154 = 0;
              v88 = 0.0;
              memset(v153, 0, sizeof(v153));
              *(&v13 + 1) = *(&v144 + 1);
              do
              {
                v89 = 1.0 - v88;
                v90 = (v89 * v89) * v89;
                v91 = (v88 * 3.0) * (v89 * v89);
                v92 = (1.0 - v88) * (3.0 * (v88 * v88));
                v93 = (v88 * v88) * v88;
                *(v155 + v87) = vmla_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(*&v143, v90), v137, v91), v136, v92), *&v144, v93);
                *(v153 + v87) = vmla_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(v147, v90), *v74.f32, v91), v76, v92), v67, v93);
                v88 = v88 + 0.0625;
                v87 += 8;
              }

              while (v87 != 136);
              v94 = 0;
              v95 = 1;
              v97 = *(v155 + 1);
              v96 = *v155;
LABEL_23:
              v98 = 0;
              v99 = v94 + 1;
              v100 = v155 + 2 * v94 + 2;
              v101 = *v100;
              v102 = v100[1];
              do
              {
                v103 = v98 + 8;
                if (v98 == 128)
                {
                  v95 = v94 < 0xF;
                  v97 = v102;
                  v96 = v101;
                  ++v94;
                  if (v99 != 16)
                  {
                    goto LABEL_23;
                  }

                  v20 = v86;
                  v12 = v143;
                  v26 = v85;
                  v28 = v138;
                  v57 = *(&v144 + 1);
                  goto LABEL_30;
                }

                v104 = LinesCross(v96, v97, v101, v102, *(v153 + v98), *(v153 + v98 + 4), *(v153 + v98 + 8), *(v153 + v98 + 12));
                v98 = v103;
              }

              while (!v104);
              v20 = v86;
              v12 = v143;
              v26 = v85;
              v28 = v138;
              v57 = *(&v144 + 1);
              if (!v95)
              {
                goto LABEL_30;
              }

              v22 = v142;
              *&v24 = v138;
              v19 = v126;
              a1 = v127;
              v21 = 1.0;
              goto LABEL_35;
            }

LABEL_31:
            v119 = v50;
            v150 = *v123;
            v151 = *(v123 + 2);
            v148 = *v133;
            v149 = *(v133 + 2);
            memset(__src, 0, sizeof(__src));
            v118 = v132;
            _Q7 = v134;
            v22 = v135;
            v116 = v134.n128_u64[0];
            v117 = v124;
            v120 = __PAIR64__(v18, v125);
            v19 = v126;
            a1 = v127;
            v21 = 1.0;
            v24 = v129;
          }

          else
          {
            v22 = v142;
            *&v24 = v28;
            v12 = v143;
          }
        }

        else
        {
          v22 = v142;
          *&v24 = v28;
        }

LABEL_36:
        ++v18;
        v27 = v22;
        v28 = *&v24;
      }

      while (v18 < v19);
    }

    v18 = v122 + 1;
    v23 = v121;
  }

  while (v121 != v115);
  if (v120 == HIDWORD(v120))
  {
    return 0;
  }

  v105 = (a1 + 28 * v120);
  v155[0] = *v105;
  *(v155 + 12) = *(v105 + 12);
  v106 = (a1 + 28 * v113);
  v107 = *(v106 + 12);
  *v105 = *v106;
  *(v105 + 12) = v107;
  *(v106 + 12) = *(v155 + 12);
  *v106 = v155[0];
  if (HIDWORD(v120) == v113)
  {
    v108 = v120;
  }

  else
  {
    v108 = HIDWORD(v120);
  }

  v109 = (a1 + 28 * v108);
  v155[0] = *v109;
  *(v155 + 12) = *(v109 + 12);
  v110 = (a1 + 28 * (v113 | 1));
  v111 = *(v110 + 12);
  *v109 = *v110;
  *(v109 + 12) = v111;
  *(v110 + 12) = *(v155 + 12);
  *v110 = v155[0];
  v112 = a3 + 352 * a4;
  *v112 = v117;
  *(v112 + 8) = v116;
  *(v112 + 16) = v150;
  *(v112 + 24) = v151;
  *(v112 + 28) = v119;
  *(v112 + 36) = v22;
  *(v112 + 44) = v148;
  *(v112 + 52) = v149;
  *(v112 + 56) = *&v24;
  *(v112 + 60) = v118;
  memcpy((v112 + 64), __src, 0x120uLL);
  return ConnectIsophotes(a1, a2, a3, a4 + 1) + 1;
}

__n128 ReadEdgeColors_(uint64_t a1, __n128 *a2, float32x2_t *a3, float32x2_t *a4)
{
  v4 = 0;
  v28 = *MEMORY[0x1E69E9840];
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  memset(v26, 0, sizeof(v26));
  __asm { FMOV            V0.4S, #1.0 }

  v27 = 0;
  do
  {
    for (i = 0; i != 9; ++i)
    {
      v11.f32[0] = v4;
      v11.f32[1] = i;
      v12 = vmul_f32(*a4, vsub_f32(v11, *a3));
      v13 = vcvts_n_s32_f32(vaddv_f32(v12), 8uLL);
      v14 = v13 + 1024;
      if (v13 >= -1024)
      {
        v15 = 2047;
      }

      else
      {
        v15 = 0;
      }

      if (v14 <= 0x7FF)
      {
        v15 = v14;
      }

      v12.f32[0] = vcvts_n_f32_u32(v15, 8uLL);
      v16 = *(16 * v4 + *(a1 + 16) + *(a1 + 24) * i);
      v17 = v15 >> 8;
      v18 = v17 + 1;
      v19 = *(v26 + v17 + 1);
      *(v26 + v17) = (*(v26 + v17) + 1.0) - v12.f32[0];
      v20 = v12.f32[0] + v19;
      v21 = a2[v17];
      *(v26 + v18) = v20;
      v22 = a2[v17 + 1];
      a2[v17] = vmlaq_f32(v21, v16, vsubq_f32(_Q0, vdupq_lane_s32(v12, 0)));
      a2[v18] = vmlaq_n_f32(v22, v16, v12.f32[0]);
    }

    ++v4;
  }

  while (v4 != 9);
  for (j = 0; j != 9; ++j)
  {
    v24 = *(v26 + j);
    if (v24 > 0.0)
    {
      v24 = 1.0 / v24;
      *(v26 + j) = v24;
    }

    a2[j] = vmulq_n_f32(a2[j], v24);
  }

  *a2 = a2[1];
  result = a2[7];
  a2[8] = result;
  return result;
}

uint64_t CInwardBlur::InwardBlur(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v414 = *MEMORY[0x1E69E9840];
  v9 = v6[3].u32[0];
  v10 = v6[3].u32[2];
  CGrNavigator::CGrNavigator(v365, *v1, v9, v10, 16);
  v365[0] = &unk_1F46EA368;
  if (v371 == 1)
  {
    CGrNavigator::CGrNavigator(v359, *v8, v9, v10, 1);
    v359[0] = &unk_1F46EA598;
    if ((v364 & 1) == 0)
    {
      v36 = 7;
LABEL_138:
      CGrNavigator::~CGrNavigator(v359);
      goto LABEL_139;
    }

    v11 = v369.u32[2];
    if (v369.i32[2])
    {
      v12 = 0;
      v13 = v369.u32[0];
      v14 = 16 * v369.u32[0];
      do
      {
        if (v13)
        {
          v15 = 0;
          do
          {
            *(v15 + v366 + v12 * v367) = *(v15 + v7[1].i64[0] + v12 * v7[1].i64[1]);
            v15 += 16;
          }

          while (v14 != v15);
        }

        ++v12;
      }

      while (v12 != v11);
    }

    v337 = v8;
    if (v3)
    {
      v16 = *(v3 + 32);
      if (v16 != 4)
      {
        if (v16 != 2)
        {
          if (v16 != 1)
          {
            goto LABEL_77;
          }

          v17 = *(v8 + 7);
          v18 = 256.0;
          if (v17 >= 1.0)
          {
            if (v17 < 256.0)
            {
LABEL_17:
              __len = v362;
              v19 = v363;
              v21 = *(v8 + 2);
              v20 = *(v8 + 3);
              v22 = *(v8 + 5);
              v346 = *(v8 + 4);
              v23 = *(v3 + 56);
              if (*(v3 + 56))
              {
                v24 = 0;
                v25 = *(v3 + 48);
                do
                {
                  if (v25)
                  {
                    v26 = 0;
                    v27 = v21;
                    v28 = v25;
                    do
                    {
                      if (v17 <= *(v26 + *(v3 + 16) + v24 * *(v3 + 24)))
                      {
                        v29 = 0;
                      }

                      else
                      {
                        v29 = 7;
                      }

                      *(v360 + v27 + v361 * (v20 + v24)) = v29;
                      ++v26;
                      ++v27;
                      --v28;
                    }

                    while (v28);
                  }

                  ++v24;
                }

                while (v24 != v23);
              }

              if (v19)
              {
                v30 = 0;
                v31 = v19;
                v32 = v19 - v22;
                do
                {
                  v33 = v360 + v361 * v30;
                  if (v30 < v20 || v30 >= v32)
                  {
                    v34 = (v360 + v361 * v30);
                    v35 = __len;
                  }

                  else
                  {
                    memset((v360 + v361 * v30), 7, v21);
                    v34 = (v33 + __len - v346);
                    v35 = v346;
                  }

                  memset(v34, 7, v35);
                  ++v30;
                }

                while (v31 != v30);
              }

              goto LABEL_77;
            }

            v18 = 0.0039062;
          }

          v17 = v17 * v18;
          goto LABEL_17;
        }

        v37 = *(v8 + 7);
        if (v37 >= 1.0)
        {
          v38 = 256.0;
          if (v37 >= 256.0)
          {
LABEL_61:
            __lenb = v362;
            v57 = v363;
            v59 = *(v8 + 2);
            v58 = *(v8 + 3);
            v60 = *(v8 + 5);
            v348 = *(v8 + 4);
            v61 = *(v3 + 56);
            if (*(v3 + 56))
            {
              v62 = 0;
              v63 = *(v3 + 48);
              do
              {
                if (v63)
                {
                  v64 = 0;
                  v65 = v59;
                  do
                  {
                    if (v37 <= *(v64 + *(v3 + 16) + v62 * *(v3 + 24)))
                    {
                      v66 = 0;
                    }

                    else
                    {
                      v66 = 7;
                    }

                    *(v360 + v65 + v361 * (v58 + v62)) = v66;
                    v64 += 2;
                    ++v65;
                  }

                  while (2 * v63 != v64);
                }

                ++v62;
              }

              while (v62 != v61);
            }

            if (v57)
            {
              v67 = 0;
              v68 = v57;
              v69 = v57 - v60;
              do
              {
                v70 = v360 + v361 * v67;
                if (v67 < v58 || v67 >= v69)
                {
                  v71 = (v360 + v361 * v67);
                  v72 = __lenb;
                }

                else
                {
                  memset((v360 + v361 * v67), 7, v59);
                  v71 = (v70 + __lenb - v348);
                  v72 = v348;
                }

                memset(v71, 7, v72);
                ++v67;
              }

              while (v68 != v67);
            }

            goto LABEL_77;
          }
        }

        else
        {
          v38 = 65536.0;
        }

        v37 = v37 * v38;
        goto LABEL_61;
      }

      v39 = *(v8 + 7);
      v40 = v39 * 0.000015259;
      if (v39 < 256.0)
      {
        v40 = v39 * 0.0039062;
      }

      if (v39 >= 1.0)
      {
        v39 = v40;
      }

      __lena = v362;
      v41 = v363;
      v43 = *(v8 + 2);
      v42 = *(v8 + 3);
      v44 = *(v8 + 5);
      v347 = *(v8 + 4);
      v45 = *(v3 + 56);
      if (*(v3 + 56))
      {
        v46 = 0;
        v47 = *(v3 + 48);
        do
        {
          if (v47)
          {
            v48 = 0;
            v49 = v43;
            do
            {
              if (*(v48 + *(v3 + 16) + v46 * *(v3 + 24)) < v39)
              {
                v50 = 7;
              }

              else
              {
                v50 = 0;
              }

              *(v360 + v49 + v361 * (v42 + v46)) = v50;
              v48 += 4;
              ++v49;
            }

            while (4 * v47 != v48);
          }

          ++v46;
        }

        while (v46 != v45);
      }

      if (v41)
      {
        v51 = 0;
        v52 = v41;
        v53 = v41 - v44;
        do
        {
          v54 = v360 + v361 * v51;
          if (v51 < v42 || v51 >= v53)
          {
            v55 = (v360 + v361 * v51);
            v56 = __lena;
          }

          else
          {
            memset((v360 + v361 * v51), 7, v43);
            v55 = (v54 + __lena - v347);
            v56 = v347;
          }

          memset(v55, 7, v56);
          ++v51;
        }

        while (v52 != v51);
      }
    }

LABEL_77:
    v73 = v337;
    if (*(v337 + 42) != 1)
    {
LABEL_137:
      v36 = CInwardBlur::ProcessBuffer_(v73, v365, v359);
      if (v36)
      {
        goto LABEL_138;
      }

      v398 = v367;
      v396.n128_u64[1] = 0;
      v397 = v366;
      v399 = v368;
      v400 = vshrq_n_s64(vshlq_n_s64(v369, 0x20uLL), 0x20uLL);
      v401 = v370;
      v402[0] = 1;
      v396.n128_u64[0] = &unk_1F46EA368;
      v181 = v5[3].u32[2];
      if (v5[3].i32[2])
      {
        v182 = 0;
        v183 = *(v73 + 8);
        v184 = *(v73 + 12);
        v185 = v5[3].u32[0];
        do
        {
          if (v185)
          {
            v186 = 0;
            v187 = v183;
            do
            {
              *(v186 + v5[1].i64[0] + v182 * v5[1].i64[1]) = *(v397 + 16 * v187 + v398 * (v184 + v182));
              v186 += 16;
              ++v187;
            }

            while (16 * v185 != v186);
          }

          ++v182;
        }

        while (v182 != v181);
      }

      CGrNavigator::~CGrNavigator(&v396);
      v36 = 0;
      if (!v3 || (*(v73 + 41) & 1) == 0)
      {
        goto LABEL_138;
      }

      v188 = *(v3 + 32);
      if (v188 != 4)
      {
        if (v188 != 2)
        {
          if (v188 == 1)
          {
            v189 = v5[3].u32[2];
            v190 = *(v73 + 28);
            v191 = 256.0;
            if (v190 >= 1.0)
            {
              if (v190 < 256.0)
              {
                goto LABEL_155;
              }

              v191 = 0.0039062;
            }

            v190 = v190 * v191;
LABEL_155:
            if (v5[3].i32[2])
            {
              v192 = 0;
              v193 = v190;
              v194 = (65535.0 / (((*(v73 + 36) * 0.999) + 0.001) * (255 - v190)));
              v195 = v5[3].u32[0];
              while (!v195)
              {
LABEL_165:
                v36 = 0;
                if (++v192 == v189)
                {
                  goto LABEL_138;
                }
              }

              v196 = 0;
              v197 = 0;
              while (1)
              {
                v198 = v7[1].i64[1] * (*(v73 + 12) + v192);
                v199 = v7[1].i64[0] + 16 * (v197 + *(v73 + 8));
                v200 = v5[1].i64[0] + v192 * v5[1].i64[1];
                v201 = *(v197 + *(v3 + 16) + v192 * *(v3 + 24));
                if (v201 <= v193)
                {
                  break;
                }

                if (v201 < (65535.0 / v194))
                {
                  v202 = vmlaq_n_f32(*(v199 + v198), vsubq_f32(*(v196 + v200), *(v199 + v198)), ((v201 - v193) * v194) * 0.000015259);
LABEL_163:
                  *(v196 + v200) = v202;
                }

                ++v197;
                v196 += 16;
                if (v195 == v197)
                {
                  goto LABEL_165;
                }
              }

              v202 = *(v198 + v199);
              goto LABEL_163;
            }
          }

LABEL_199:
          v36 = 0;
          goto LABEL_138;
        }

        v203 = v5[3].u32[2];
        v204 = *(v73 + 28);
        v205 = 256.0;
        if (v204 >= 1.0)
        {
          if (v204 < 256.0)
          {
LABEL_171:
            if (!v5[3].i32[2])
            {
              goto LABEL_199;
            }

            v206 = 0;
            v207 = v204;
            v208 = (4295000000.0 / (((*(v73 + 36) * 0.999) + 0.001) * (0xFFFF - v204)));
            v209 = v5[3].u32[0];
            while (!v209)
            {
LABEL_181:
              v36 = 0;
              if (++v206 == v203)
              {
                goto LABEL_138;
              }
            }

            v210 = 0;
            v211 = 0;
            v212 = 0;
            while (1)
            {
              v213 = v7[1].i64[1] * (*(v73 + 12) + v206);
              v214 = v7[1].i64[0] + 16 * (v212 + *(v73 + 8));
              v215 = v5[1].i64[0] + v206 * v5[1].i64[1];
              v216 = *(v211 + *(v3 + 16) + v206 * *(v3 + 24));
              if (v216 <= v207)
              {
                break;
              }

              if (0xFFFFFFFF / v208 + v204 > v216)
              {
                v217 = vmlaq_n_f32(*(v214 + v213), vsubq_f32(*(v210 + v215), *(v214 + v213)), (((v216 - v207) * v208) >> 16) * 0.000015259);
LABEL_179:
                *(v210 + v215) = v217;
              }

              ++v212;
              v211 += 2;
              v210 += 16;
              if (v209 == v212)
              {
                goto LABEL_181;
              }
            }

            v217 = *(v213 + v214);
            goto LABEL_179;
          }

          v205 = 0.0039062;
        }

        v204 = v204 * v205;
        goto LABEL_171;
      }

      v218 = v5[3].u32[2];
      v219 = *(v73 + 28);
      v220 = v219 * 0.000015259;
      if (v219 < 256.0)
      {
        v220 = v219 * 0.0039062;
      }

      if (v219 >= 1.0)
      {
        v219 = v220;
      }

      if (!v5[3].i32[2])
      {
        goto LABEL_199;
      }

      v221 = 0;
      v222 = v5[3].u32[0];
      v223 = ((*(v73 + 36) * 0.999) + 0.001) - (v219 * ((*(v73 + 36) * 0.999) + 0.001));
      v224 = v223 + v219;
      v225 = 1.0 / v223;
      while (!v222)
      {
LABEL_197:
        v36 = 0;
        if (++v221 == v218)
        {
          goto LABEL_138;
        }
      }

      v226 = 0;
      v227 = 0;
      v228 = 0;
      while (1)
      {
        v229 = v7[1].i64[1] * (*(v73 + 12) + v221);
        v230 = v7[1].i64[0] + 16 * (v228 + *(v73 + 8));
        v231 = v5[1].i64[0] + v221 * v5[1].i64[1];
        v232 = *(v227 + *(v3 + 16) + v221 * *(v3 + 24));
        if (v232 < v219)
        {
          break;
        }

        if (v232 <= v224)
        {
          v233 = vmlaq_n_f32(*(v230 + v229), vsubq_f32(*(v226 + v231), *(v230 + v229)), (v232 - v219) * v225);
          goto LABEL_195;
        }

LABEL_196:
        ++v228;
        v227 += 4;
        v226 += 16;
        if (v222 == v228)
        {
          goto LABEL_197;
        }
      }

      v233 = *(v229 + v230);
LABEL_195:
      *(v226 + v231) = v233;
      goto LABEL_196;
    }

    bzero(v394, 0x700uLL);
    bzero(v392, 0x2C00uLL);
    if (*(v337 + 44))
    {
      v74 = *(v337 + 48);
      __lenc = v7[3];
      bzero(v392, 352 * v74);
      if (v74 >= 1)
      {
        v75 = *(v337 + 8);
        v76 = vcvt_f32_u32(vsub_s32(vmovn_s64(__lenc), vadd_s32(v75, *(v337 + 16))));
        v77 = vcvt_f32_u32(v75);
        v78 = v393;
        v79 = (v337 + 72);
        v80 = v74;
        do
        {
          *(v78 - 5) = vmla_f32(v77, v76, *(v79 - 5));
          *(v78 - 3) = vmla_f32(v77, v76, *(v79 - 3));
          v81 = __sincosf_stret(*(v79 - 1));
          *(v78 - 8) = v81.__cosval;
          *(v78 - 7) = v81.__sinval;
          v82 = *v79;
          v79 += 6;
          v83 = __sincosf_stret(v82);
          *(v78 - 1) = v83.__cosval;
          *v78 = v83.__sinval;
          v78 += 88;
          --v80;
        }

        while (v80);
      }

LABEL_121:
      if (v74)
      {
        v131 = 0;
        do
        {
          v132 = &v392[22 * v131];
          v133 = vmovn_s64(v369);
          v134 = *(v132 + 8);
          v135 = vcvt_s32_f32(*v132);
          v136 = vadd_s32(v135, 0x300000003);
          v137 = vadd_s32(v133, 0x800000008);
          v138 = vbsl_s8(vcgt_u32(v136, v137), vbic_s8(v137, vcgt_s32(0x400000004, v135)), v136);
          v139 = *(v132 + 36);
          v140 = vsub_f32(*(v132 + 28), *v132);
          v342 = *(v132 + 28);
          v344 = *v132;
          v141 = vmul_f32(v140, v134);
          v142 = vmul_f32(v139, v140);
          v143 = vext_s8(v139, v134, 4uLL);
          v144 = vext_s8(v134, v139, 4uLL);
          v145.i32[0] = 0;
          v145.i32[1] = vadd_f32(vdup_lane_s32(v142, 1), v142).u32[0];
          v146 = vcgt_f32(v145, vadd_f32(vdup_lane_s32(v141, 1), v141).u32[0]);
          __lene = vbsl_s8(v146, vneg_f32(v144), v144);
          v350 = vbsl_s8(vrev64_s32(v146), vneg_f32(v143), v143);
          v147 = vcvt_s32_f32(v342);
          v148 = vadd_s32(v147, 0x300000003);
          v149 = vbsl_s8(vcgt_u32(v148, v137), vbic_s8(v137, vcgt_s32(0x400000004, v147)), v148);
          *v372.i8 = v138;
          v372.u64[1] = vadd_s32(v138, 0x900000009);
          v378 = v149;
          v379 = vadd_s32(v149, 0x900000009);
          CGrNavigator::CGrNavigator(v395, v365, &v372);
          v395[0] = &unk_1F46EA368;
          CGrNavigator::CGrNavigator(&v386, v365, &v378);
          v386.i64[0] = &unk_1F46EA368;
          v409.n128_u64[0] = vsub_f32(v344, vcvt_f32_u32(v138));
          v385.i32[0] = __lene.i32[0];
          v385.f32[1] = -v350.f32[1];
          ReadEdgeColors_(v395, &v396, &v409, &v385);
          v385 = vsub_f32(v342, vcvt_f32_u32(v149));
          v384.f32[0] = -v350.f32[0];
          v384.i32[1] = __lene.i32[1];
          ReadEdgeColors_(&v386, &v409, &v385, &v384);
          CGrNavigator::~CGrNavigator(&v386);
          CGrNavigator::~CGrNavigator(v395);
          v150 = *v132;
          v151 = *(v132 + 28);
          v152.i64[0] = *(v132 + 1);
          v153 = vsub_f32(v151, *v132);
          v154.i32[0] = v152.i32[0];
          v154.i32[1] = HIDWORD(*(v132 + 36));
          v155 = vmla_f32(vmul_f32(vext_s8(*v152.f32, *(v132 + 36), 4uLL), vrev64_s32(v153)), v153, v154);
          v154.i16[0] = vcltz_f32(v155).u16[0];
          v154.i16[1] = v154.i16[0];
          v154.i16[2] = vcgtz_f32(v155).i16[2];
          v154.i16[3] = v154.i16[2];
          v152.i64[1] = *(v132 + 36);
          v156 = vbslq_s8(vmovl_s16(v154), vnegq_f32(v152), v152);
          v152.i64[0] = *v132;
          *&v152.u32[2] = v151;
          v157 = vmlaq_n_f32(v152, v156, (((*(v132 + 15) * *(v132 + 15)) * 0.1) + 0.333) * sqrtf(vaddv_f32(vmul_f32(v153, v153))));
          v158 = 0.75 / sqrtf(vaddv_f32(vmul_f32(v140, v140)));
          v159 = vextq_s8(v157, v157, 8uLL).u64[0];
          v160 = 0;
          do
          {
            *v161.i32 = 1.0 - *v160.i32;
            v162 = vmla_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(v150, (*v161.i32 * *v161.i32) * *v161.i32), *v157.i8, (*v160.i32 * 3.0) * (*v161.i32 * *v161.i32)), v159, (1.0 - *v160.i32) * (3.0 * (*v160.i32 * *v160.i32))), v151, (*v160.i32 * *v160.i32) * *v160.i32);
            v161.i32[1] = v160.i32[0];
            v163 = vmla_f32(vneg_f32(vmul_f32(vrev64_s32(v161), v350)), __lene, v161);
            v164 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v163), 1.0 / sqrtf(vaddv_f32(vmul_f32(v163, v163)))));
            v165 = vadd_f32(v162, 0x3F0000003F000000);
            v166 = vmuls_lane_f32(256.0, v164, 1);
            v167 = vdupq_lane_s32(v160, 0);
            for (i = -4; i != 5; ++i)
            {
              v169 = vcvt_s32_f32(vmla_n_f32(v165, v164, i));
              v170 = vcgt_u32(v133, v169);
              if (v170.i32[0] & v170.i32[1])
              {
                v171 = v169.u32[0];
                v172 = v361 * v169.u32[1];
                v173 = v360 + v169.u32[0];
                if (!*(v173 + v172))
                {
                  v174 = (((v169.u32[0] - v162.f32[0]) * (256.0 * v164.f32[0])) + ((v169.u32[1] - v162.f32[1]) * v166));
                  v175 = v174 + 1024;
                  if (v174 >= -1024)
                  {
                    v176 = 2047;
                  }

                  else
                  {
                    v176 = 0;
                  }

                  if (v175 <= 0x7FF)
                  {
                    v176 = v175;
                  }

                  *v169.i32 = vcvts_n_f32_u32(v176, 8uLL);
                  v177 = v176 >> 8;
                  v178 = 16 * v177 + 16;
                  v179 = vmlaq_n_f32(*(&v396 + v177), vsubq_f32(*(&v396 + v178), *(&v396 + v177)), *v169.i32);
                  *(v366 + 16 * v171 + v367 * v169.u32[1]) = vmlaq_f32(v179, v167, vmlaq_n_f32(vsubq_f32(*(&v409 + v177), v179), vsubq_f32(*(&v409 + v178), *(&v409 + v177)), *v169.i32));
                  *(v172 + v173) = 7;
                }
              }
            }

            *v160.i32 = *v160.i32 + v158;
          }

          while (*v160.i32 < 1.0);
          ++v131;
        }

        while (v131 != v74);
      }

      v73 = v337;
      goto LABEL_137;
    }

    CGrNavigator::CGrNavigator(&v372, *v337, v7[3].i64[0], v7[3].i64[1], 1);
    v372.i64[0] = &unk_1F46EA598;
    if (v377 != 1)
    {
      goto LABEL_117;
    }

    v84 = *(v337 + 32);
    bzero(v395, 0x400uLL);
    v85 = v375;
    v86 = v376;
    v87 = v375;
    v88 = v376;
    if (v376)
    {
      v89 = 0;
      do
      {
        if (v85)
        {
          v90 = 0;
          v91 = 0;
          do
          {
            v92 = vcvts_n_s32_f32(*(v90 + v7[1].i64[0] + v89 * v7[1].i64[1] + 4 * v84), 8uLL);
            v93 = v92 & ~(v92 >> 31);
            if (v93 >= 255)
            {
              v93 = 255;
            }

            ++*(v395 + v93);
            *(v91 + v373 + v89 * v374) = v93;
            ++v91;
            v90 += 16;
          }

          while (v87 != v91);
        }

        ++v89;
      }

      while (v89 != v88);
    }

    if ((v86 * v85) >= 0x10)
    {
      v94 = (v86 * v85) >> 4;
      v95 = 255;
      do
      {
        v96 = v95 - 1;
        v94 -= *(v395 + v95);
      }

      while (v94 >= 1 && v95-- != 1);
      if (v86 && v96 <= 0x7F)
      {
        v98 = 0;
        if (v96 <= 0x10)
        {
          v96 = 16;
        }

        do
        {
          if (v85)
          {
            v99 = 0;
            v100 = 0;
            do
            {
              v101 = (*(v99 + v7[1].i64[0] + v98 * v7[1].i64[1] + 4 * v84) * 32768.0) * (1.0 / v96);
              v102 = v101 & ~(v101 >> 31);
              if (v102 >= 255)
              {
                v102 = 255;
              }

              v103 = v373;
              v104 = v374;
              ++*(v395 + v102);
              *(v100 + v103 + v98 * v104) = v102;
              ++v100;
              v99 += 16;
            }

            while (v87 != v100);
          }

          ++v98;
        }

        while (v98 != v88);
      }
    }

    v105 = vmaxvq_u32(*(v337 + 8));
    if (v105 < 8 || ((v106 = v105 - 5, v106 >= 8) ? (v107 = 8) : (v107 = v106), v375 >= v376 ? (v108 = v376) : (v108 = v375), v108 < (4 * v107)))
    {
LABEL_117:
      v109 = 0;
      goto LABEL_118;
    }

    __lenf = v107;
    CGrNavigator::CGrNavigator(&v386, *v337, v375 - (2 * v107), v376 - (2 * v107), 1);
    v386.i64[0] = &unk_1F46EA598;
    if (v391 == 1)
    {
      v379 = 0x3F00000042020000;
      v380 = 1065353216;
      v381 = -1;
      v382 = 0;
      v383 = 0;
      v378 = *v337;
      *v379.i32 = __lenf;
      CMedian::CxParms::CxParms(&v409, &v378);
      if (v409.n128_u8[0] == 1)
      {
        if (v411 - 3) > 0x3C || (v413 & 1) != 0 || (v412)
        {
          v396.n128_u8[8] = 0;
          v396.n128_u64[0] = &unk_1F46EA510;
          v397 = v409.n128_u64[1];
          v398 = 0x100000001;
          LOWORD(v399) = 0;
          *(&v399 + 1) = 0;
          v400 = 0u;
          LODWORD(v401) = 0;
          bzero(v402, 0x3000uLL);
          v403 = 0u;
          pthread_mutex_init(&v404, 0);
          v396.n128_u8[8] = 1;
          v405 = &v409;
          v396.n128_u64[0] = &unk_1F46EA548;
          v406 = &unk_1F46EA6B8;
          v407 = 0;
          v408 = v410;
          if (!v410 || !(*(*v410 + 80))(v410))
          {
            v407 = 1;
          }

          v234 = CKernel::Process(&v396, &v372, &v386, 0);
          v396.n128_u64[0] = &unk_1F46EA548;
          CLock::~CLock(&v406);
        }

        else
        {
          CMedian::CKernel8x16::CKernel8x16(&v396, &v409);
          v234 = CKernel::Process(&v396, &v372, &v386, 0);
        }

        CKernel::~CKernel(&v396);
      }

      else
      {
        v234 = 7;
      }

      if (v409.n128_u8[0] == 1 && v410)
      {
        (*(*v410 + 8))(v410);
      }

      if (!v234)
      {
        v235 = __lenf;
        v236 = (__lenf + 4);
        v237 = __lenf - 4 + v390;
        if (v237 > v236)
        {
          v345 = 0;
          v238 = __lenf - 4 + v389;
          v240 = v387;
          v239 = v388;
          v241 = v360;
          v330 = v361;
          v331 = -4 - __lenf;
          __asm { FMOV            V0.2S, #1.0 }

          v328 = _D0;
          v243 = (__lenf + 4);
          v244 = __lenf + 4;
          v329 = __lenf - 4 + v390;
          v333 = v388;
          v334 = v238;
          v332 = v360;
          while (v238 <= v236)
          {
            v327 = v244 + 1;
LABEL_322:
            v243 = v327;
            v244 = v327;
            if (v237 <= v327)
            {
              goto LABEL_325;
            }
          }

          v245 = v239 * (v244 - v235 - 2);
          v246 = v239 * (v244 - v235 + 2);
          v247 = v244;
          v248 = (v244 + 16);
          v249 = v330 * v243;
          v250 = v330 * v243 + v241;
          v251 = v330 * (v244 - 1);
          v336 = v244 + 1;
          v252 = v330 * v336;
          v253 = v236;
          v254 = v236;
          v341 = v246;
          v343 = v245;
          v335 = v244 - v235 - 4;
          v339 = v250;
          v340 = v330 * v243;
          v338 = v251;
          while (1)
          {
            v255 = v253 + v241;
            if (*(v253 + v241 + v249))
            {
              v253 = v254 + 1;
              v256 = *(v250 + v253);
              v257 = *(v255 + v251);
              v258 = *(v255 + v252);
              if (*(v250 + v254 - 1))
              {
                v259 = v256 == 0;
              }

              else
              {
                v259 = 1;
              }

              v262 = !v259 && v257 != 0 && v258 != 0 || (*(v250 + v254 - 1) | v256) == 0;
              v263 = v257 | v258;
              if (v262 || v263 == 0)
              {
                goto LABEL_261;
              }

              v265 = v240 + v254 - v235 - 2;
              v266 = v240 + v254 - v235 + 2;
              v267 = *(v266 + v245);
              v268 = *(v265 + v246);
              v269 = *(v266 + v246);
              v270 = (*(v265 + v245) - v269) * (*(v265 + v245) - v269);
              if (v270 <= (v267 - v268) * (v267 - v268))
              {
                v270 = (v267 - v268) * (v267 - v268);
              }

              if (v270 < 0x100)
              {
                goto LABEL_261;
              }

              v351 = *(v265 + v245);
              v271 = powf(v270, 0.25);
              if (v268 >= v269)
              {
                v272 = v269;
              }

              else
              {
                v272 = v268;
              }

              if (v268 <= v269)
              {
                v273 = v269;
              }

              else
              {
                v273 = v268;
              }

              v274 = v351;
              if (v351 >= v267)
              {
                v275 = v267;
              }

              else
              {
                v275 = v351;
              }

              if (v351 <= v267)
              {
                v274 = v267;
              }

              if (v275 >= v272)
              {
                v276 = v272;
              }

              else
              {
                v276 = v275;
              }

              if (v274 <= v273)
              {
                v277 = v273;
              }

              else
              {
                v277 = v274;
              }

              if (v277 - v276 >= 0x10)
              {
                v278 = v271 * 0.0625;
                bzero(&v396, 0x480uLL);
                v281 = 0;
                v282 = 0;
                v283 = 0;
                v284 = (v276 + v277) >> 1;
                v239 = v333;
                v251 = v338;
                do
                {
                  v285 = 0;
                  v286 = v240 + v333 * (v335 + v281);
                  do
                  {
                    v287 = *(v286 + v331 + v254 + v285);
                    v288 = *(v286 + -3 - __lenf + v254 + v285);
                    if (v287 != v288 && ((v288 - v284) * (v287 - v284)) <= 0)
                    {
                      if (v287 < v288)
                      {
                        ++v283;
                      }

                      else
                      {
                        --v283;
                      }

                      v290 = (v284 - v287) / (v288 - v287);
                      v291 = &v396.n128_f32[2 * v282];
                      *v291 = (v285 + -4.0) + v290;
                      v291[1] = v281 + -4.0;
                      ++v282;
                    }

                    ++v285;
                  }

                  while (v285 != 8);
                  ++v281;
                }

                while (v281 != 9);
                v292 = 0;
                v293 = 0;
                do
                {
                  v294 = 0;
                  v295 = (v335 + v292);
                  v296 = v333 * v295;
                  v297 = v333 * (v295 + 1);
                  do
                  {
                    v298 = v331 + v254 + v294 + v240;
                    v299 = *(v298 + v296);
                    v300 = *(v298 + v297);
                    if (v299 != v300 && ((v300 - v284) * (v299 - v284)) <= 0)
                    {
                      if (v299 < v300)
                      {
                        ++v293;
                      }

                      else
                      {
                        --v293;
                      }

                      v302 = (v284 - v299) / (v300 - v299);
                      v303 = &v396.n128_f32[2 * v282];
                      *v303 = v294 + -4.0;
                      v303[1] = (v292 + -4.0) + v302;
                      ++v282;
                    }

                    ++v294;
                  }

                  while (v294 != 9);
                  ++v292;
                }

                while (v292 != 8);
                if (v282)
                {
                  v304 = v282;
                  v305 = 0;
                  v306 = 0;
                  v307 = &v396;
                  v308 = 0;
                  v235 = __lenf;
                  v238 = v334;
                  v241 = v332;
                  v246 = v341;
                  v245 = v343;
                  v249 = v340;
                  v252 = v330 * v336;
                  do
                  {
                    v309 = *v307++;
                    v279 = v309;
                    v280 = vmul_lane_f32(v279, v279, 1);
                    *v306.i32 = *v280.i32 + *v306.i32;
                    v308 = vadd_f32(v309, v308);
                    v305 = vmla_f32(v305, v279, v279);
                    --v304;
                  }

                  while (v304);
                }

                else
                {
                  v305 = 0;
                  v306 = 0;
                  v308 = 0;
                  v235 = __lenf;
                  v238 = v334;
                  v241 = v332;
                  v246 = v341;
                  v245 = v343;
                  v249 = v340;
                  v252 = v330 * v336;
                }

                v279.i32[0] = 0;
                v280.i32[0] = 0;
                *v306.i32 = -(vmuls_lane_f32(v308.f32[0], v308, 1) - (*v306.i32 * v282));
                v310 = vmla_n_f32(vneg_f32(vmul_f32(v308, v308)), v305, v282);
                v305.f32[0] = sqrtf(((*v306.i32 / v310.f32[0]) * (*v306.i32 / v310.f32[0])) + 1.0);
                v311.i32[0] = v328;
                v311.f32[1] = *v306.i32 / v310.f32[0];
                v312 = vdiv_f32(v311, vdup_lane_s32(v305, 0));
                v311.i32[0] = v293;
                v313 = COERCE_DOUBLE(vbsl_s8(vdup_lane_s32(vcgt_s32(v311, v279), 0), vneg_f32(v312), v312));
                v314 = v310.f32[0] <= v310.f32[1];
                v315 = ((v308.f32[1] - ((*v306.i32 / v310.f32[0]) * v308.f32[0])) / v282) + v247;
                *v306.i32 = *v306.i32 / v310.f32[1];
                v316 = ((v308.f32[0] - (*v306.i32 * v308.f32[1])) / v282) + v254;
                v308.f32[0] = sqrtf((*v306.i32 * *v306.i32) + 1.0);
                v317 = __PAIR64__(HIDWORD(v328), v306.u32[0]);
                v306.i32[0] = v283;
                v318 = vdiv_f32(v317, vdup_lane_s32(v308, 0));
                v319 = COERCE_DOUBLE(vbsl_s8(vdup_lane_s32(vcgt_s32(v280, v306), 0), vneg_f32(v318), v318));
                if (v314)
                {
                  v320 = v247;
                }

                else
                {
                  v320 = v315;
                }

                if (v314)
                {
                  v321 = v316;
                }

                else
                {
                  v321 = v254;
                }

                if (v314)
                {
                  v313 = v319;
                }

                v250 = v339;
                if (v345)
                {
                  v322 = v345;
                  v323 = v394;
                  while (1)
                  {
                    if ((*v323 + 16.0) >= v254 && *v323 <= (v254 + 16))
                    {
                      v325 = v323[1];
                      if ((v325 + 16.0) >= v247 && v325 <= v248)
                      {
                        break;
                      }
                    }

                    v323 += 7;
                    if (!--v322)
                    {
                      goto LABEL_315;
                    }
                  }

                  if (v278 <= v323[4])
                  {
                    goto LABEL_261;
                  }

                  *(v323 + 1) = v313;
                  *v323 = v321;
                  v323[1] = v320;
                  goto LABEL_320;
                }

LABEL_315:
                if (v278 > 0.0)
                {
                  if (v345 + 1 > 0x3F)
                  {
                    break;
                  }

                  v323 = &v394[7 * v345];
                  *(v323 + 1) = v313;
                  *v323 = v321;
                  v323[1] = v320;
                  ++v345;
LABEL_320:
                  v323[4] = v278;
                  v323[5] = v276 * 0.0039216;
                  v323[6] = v277 * 0.0039216;
                }
              }

              else
              {
                v235 = __lenf;
                v239 = v333;
                v238 = v334;
                v241 = v332;
                v246 = v341;
                v245 = v343;
                v250 = v339;
                v249 = v340;
                v252 = v330 * v336;
                v251 = v338;
              }
            }

            else
            {
              v253 = v254 + 1;
            }

LABEL_261:
            v254 = v253;
            if (v238 <= v253)
            {
              v237 = v329;
              v236 = (__lenf + 4);
              v327 = v336;
              goto LABEL_322;
            }
          }
        }
      }

      v345 = 0;
LABEL_325:
      v73 = v337;
      v109 = v345;
    }

    else
    {
      v109 = 0;
    }

    CGrNavigator::~CGrNavigator(&v386);
LABEL_118:
    CGrNavigator::~CGrNavigator(&v372);
    v118 = ConnectIsophotes(v394, v109, v392, 0, v110, v111, v112, v113, v114, v115, v116, v117);
    LODWORD(v74) = v118;
    v119 = v5[3];
    *(v73 + 44) = 1;
    *(v73 + 48) = v118;
    if (v118 >= 1)
    {
      v120 = *(v73 + 8);
      *v121.f32 = vcvt_f32_u32(vsub_s32(vmovn_s64(v119), vadd_s32(v120, *(v73 + 16))));
      v121.i64[1] = v121.i64[0];
      *v122.f32 = vcvt_f32_u32(v120);
      v122.i64[1] = v122.i64[0];
      __lend = v122;
      v123 = v118;
      __asm { FMOV            V1.4S, #1.0 }

      v349 = vdivq_f32(_Q1, v121);
      v128 = (v73 + 72);
      v129 = v393;
      do
      {
        v130.i64[0] = *(v129 - 5);
        v130.i64[1] = *(v129 - 3);
        *(v128 - 5) = vmulq_f32(vsubq_f32(v130, __lend), v349);
        *(v128 - 1) = atan2f(*(v129 - 7), *(v129 - 8));
        *v128 = atan2f(*v129, *(v129 - 1));
        v128 += 6;
        v129 += 88;
        --v123;
      }

      while (v123);
    }

    goto LABEL_121;
  }

  v36 = 7;
LABEL_139:
  CGrNavigator::~CGrNavigator(v365);
  return v36;
}