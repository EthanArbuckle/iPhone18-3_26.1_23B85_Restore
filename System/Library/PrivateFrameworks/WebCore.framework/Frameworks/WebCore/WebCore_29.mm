unint64_t *std::vector<webrtc::FrameDependencyTemplate>::__construct_at_end<webrtc::FrameDependencyTemplate*,webrtc::FrameDependencyTemplate*>(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[1];
  if (a2 == a3)
  {
LABEL_21:
    v3[1] = v4;
    return result;
  }

  v7 = 0;
  while (v4 + v7)
  {
    v8 = a2 + v7;
    v9 = v4 + v7;
    *(v4 + v7) = *(a2 + v7);
    *(v4 + v7 + 8) = 0;
    v10 = (v4 + v7 + 8);
    v11 = *(a2 + v7 + 8);
    if (v11 >= 2)
    {
      if (v11)
      {
        absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::InitFrom(v10, (a2 + v7 + 8));
        *(v9 + 56) = 0;
        v12 = (v9 + 56);
        v22 = *(v8 + 56);
        v14 = (v8 + 56);
        v13 = v22;
        if (v22 < 2)
        {
LABEL_8:
          *(v4 + v7 + 80) = 0;
          result = (v4 + v7 + 80);
          v16 = (a2 + v7 + 80);
          v17 = *v16;
          if (*v16 >= 2)
          {
            goto LABEL_9;
          }

          goto LABEL_4;
        }
      }

      else
      {
        *v10 = v11;
        v18 = v4 + v7;
        v19 = *(a2 + v7 + 16);
        v20 = *(a2 + v7 + 32);
        *(v18 + 48) = *(a2 + v7 + 48);
        *(v18 + 16) = v19;
        *(v18 + 32) = v20;
        *(v9 + 56) = 0;
        v12 = (v9 + 56);
        v21 = *(v8 + 56);
        v14 = (v8 + 56);
        v13 = v21;
        if (v21 < 2)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      *(v9 + 56) = 0;
      v12 = (v9 + 56);
      v15 = *(v8 + 56);
      v14 = (v8 + 56);
      v13 = v15;
      if (v15 < 2)
      {
        goto LABEL_8;
      }
    }

    if (v13)
    {
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::InitFrom(v12, v14);
      *(v4 + v7 + 80) = 0;
      result = (v4 + v7 + 80);
      v16 = (a2 + v7 + 80);
      v17 = *v16;
      if (*v16 >= 2)
      {
LABEL_9:
        if (v17)
        {
          result = absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::InitFrom(result, v16);
        }

        else
        {
          *result = v17;
          *(v4 + v7 + 88) = *(a2 + v7 + 88);
        }
      }
    }

    else
    {
      *v12 = v13;
      *(v4 + v7 + 64) = *(a2 + v7 + 64);
      *(v4 + v7 + 80) = 0;
      result = (v4 + v7 + 80);
      v16 = (a2 + v7 + 80);
      v17 = *v16;
      if (*v16 >= 2)
      {
        goto LABEL_9;
      }
    }

LABEL_4:
    v7 += 104;
    if (a2 + v7 == a3)
    {
      v4 += v7;
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

void *absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::InitFrom(unint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v2)
  {
    if (!(v2 >> 62))
    {
      operator new();
    }

LABEL_7:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result = memcpy(a1 + 1, a2 + 1, 8 * (v2 >> 1));
  *a1 = *a2;
  return result;
}

void webrtc::FieldTrialStructList<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::Params>::~FieldTrialStructList(uint64_t a1)
{
  *a1 = &unk_2882959C0;
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  *a1 = &unk_288293760;
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 64);
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = *(a1 + 64);
    }

    *(a1 + 72) = v3;
    operator delete(v5);
  }

  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    *(a1 + 16) = v8;
    operator delete(v8);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::FieldTrialStructList<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::Params>::ParseDone(void *a1)
{
  v1 = a1[8];
  v2 = a1[9];
  if (v1 != v2)
  {
    v4 = -1;
    while ((*((*(**v1 + 24))() + 57) & 1) == 0)
    {
      if (*((*(**v1 + 24))() + 58) == 1)
      {
        v5 = (*(**v1 + 24))();
        v6 = (*(*v5 + 32))(v5);
        if (v4 == -1)
        {
          v4 = v6;
        }

        else if (v4 != v6)
        {
          return;
        }
      }

      v1 += 8;
      if (v1 == v2)
      {
        if (v4 != -1)
        {
          if (v4)
          {
            if ((v4 & 0x80000000) == 0)
            {
              operator new();
            }

            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          v7 = a1[8];
          v8 = a1[9];
          while (v7 != v8)
          {
            v9 = *v7++;
            (*(*v9 + 24))(v9);
          }

          v10 = a1[11];
          a1[11] = 0;
          a1[12] = 0;
          a1[13] = 0;
          if (v10)
          {

            operator delete(v10);
          }
        }

        return;
      }
    }
  }
}

unint64_t std::vector<std::pair<int,webrtc::LibvpxVp9Encoder::PerformanceFlags::ParameterSet>>::emplace<int,webrtc::LibvpxVp9Encoder::PerformanceFlags::ParameterSet>(void *a1, char *a2, int *a3, __int128 *a4)
{
  v4 = a2;
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  if (v6 < v8)
  {
    if (a2 != v6)
    {
      v9 = *a3;
      v25 = *a4;
      v10 = a1[1];
      if (v6 >= 0x14)
      {
        v10 = v6 + 20;
        v11 = *(v6 - 20);
        *(v6 + 16) = *(v6 - 4);
        *v6 = v11;
      }

      a1[1] = v10;
      if (v6 != a2 + 20)
      {
        v12 = 0;
        do
        {
          v13 = &v12[v6];
          *(v13 - 5) = *&v12[v6 - 40];
          v14 = *&v12[v6 - 36];
          *(v13 - 11) = *&v12[v6 - 31];
          *(v13 - 2) = v14;
          v12 -= 20;
        }

        while (&a2[-v6 + 20] != v12);
      }

      *a2 = v9;
      *(a2 + 4) = v25;
      *(a2 + 9) = *(&v25 + 5);
      return v4;
    }

    if (v7)
    {
      *v6 = *a3;
      *(v6 + 4) = *a4;
      a1[1] = v6 + 20;
      return v4;
    }

    goto LABEL_29;
  }

  v15 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 2) + 1;
  if (v15 > 0xCCCCCCCCCCCCCCCLL)
  {
    goto LABEL_30;
  }

  v16 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 2);
  if (2 * v16 > v15)
  {
    v15 = 2 * v16;
  }

  if (v16 >= 0x666666666666666)
  {
    v17 = 0xCCCCCCCCCCCCCCCLL;
  }

  else
  {
    v17 = v15;
  }

  if (v17)
  {
    if (v17 <= 0xCCCCCCCCCCCCCCCLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v18 = 4 * ((a2 - v7) >> 2);
  if (!(0xCCCCCCCCCCCCCCCDLL * ((a2 - v7) >> 2)))
  {
    if (a2 - v7 < 1)
    {
      operator new();
    }

    v18 = 4 * ((a2 - v7) >> 2) - 20 * ((1 - 0x3333333333333333 * ((4 * ((a2 - v7) >> 2)) >> 2) + ((1 - 0x3333333333333333 * ((4 * ((a2 - v7) >> 2)) >> 2)) >> 63)) >> 1);
  }

  if (!v18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *v18 = *a3;
  *(v18 + 4) = *a4;
  memcpy((v18 + 20), a2, a1[1] - a2);
  v19 = *a1;
  v20 = v18 + 20 + a1[1] - v4;
  a1[1] = v4;
  v21 = v4 - v19;
  v22 = (v18 - (v4 - v19));
  memcpy(v22, v19, v21);
  v23 = *a1;
  *a1 = v22;
  a1[1] = v20;
  a1[2] = 0;
  if (v23)
  {
    operator delete(v23);
  }

  return v18;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_0,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_0>>(std::string_view,webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_0)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_0,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_0>>(std::string_view,webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_0)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2882959F0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_1,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_1>>(std::string_view,webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_1)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_1,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_1>>(std::string_view,webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_1)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_288295A38;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_2,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_2>>(std::string_view,webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_2)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_2,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_2>>(std::string_view,webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_2)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_288295A80;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_3,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_3>>(std::string_view,webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_3)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_3,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_3>>(std::string_view,webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_3)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_288295AC8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_4,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_4>>(std::string_view,webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_4)::{lambda(void *,BOOL)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_4,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_4>>(std::string_view,webrtc::LibvpxVp9Encoder::ParsePerformanceFlagsFromTrials(webrtc::FieldTrialsView const&)::$_4)::{lambda(void *,BOOL)#1}>,void ()(void *,BOOL)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_288295B10;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t webrtc::field_trial_list_impl::TypedFieldTrialListWrapper<BOOL>::~TypedFieldTrialListWrapper(uint64_t a1)
{
  *a1 = &unk_288295B58;
  v2 = a1 + 96;
  v3 = *(a1 + 120);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 + 8) = &unk_288295B88;
    v4 = *(a1 + 72);
    if (v4)
    {
LABEL_5:
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 + 8) = &unk_288295B88;
    v4 = *(a1 + 72);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  *(a1 + 8) = &unk_288293910;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
  }

  return a1;
}

void webrtc::field_trial_list_impl::TypedFieldTrialListWrapper<BOOL>::~TypedFieldTrialListWrapper(uint64_t a1)
{
  *a1 = &unk_288295B58;
  v2 = a1 + 96;
  v3 = *(a1 + 120);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 + 8) = &unk_288295B88;
    v4 = *(a1 + 72);
    if (v4)
    {
LABEL_5:
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 + 8) = &unk_288295B88;
    v4 = *(a1 + 72);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  *(a1 + 8) = &unk_288293910;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::field_trial_list_impl::TypedFieldTrialListWrapper<BOOL>::WriteElement(void *a1, uint64_t a2, int a3)
{
  if (a1[10] <= a3)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a1[9] + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8));
    v8 = a2;
    v7 = (v3 >> a3) & 1;
    v4 = a1[15];
    if (v4)
    {
      return (*(*v4 + 48))(v4, &v8, &v7);
    }
  }

  v6 = std::__throw_bad_function_call[abi:sn200100]();
  return webrtc::field_trial_list_impl::TypedFieldTrialListWrapper<BOOL>::GetList(v6);
}

uint64_t webrtc::FieldTrialList<BOOL>::~FieldTrialList(uint64_t a1)
{
  *a1 = &unk_288295B88;
  v2 = *(a1 + 64);
  if (v2)
  {
    operator delete(v2);
  }

  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

void webrtc::FieldTrialList<BOOL>::~FieldTrialList(uint64_t a1)
{
  *a1 = &unk_288295B88;
  v2 = *(a1 + 64);
  if (v2)
  {
    operator delete(v2);
  }

  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::FieldTrialList<BOOL>::Parse(uint64_t a1, uint64_t *a2)
{
  *(a1 + 58) = 1;
  if (a2[3])
  {
    v2 = a2;
    v3 = *(a2 + 23);
    if (v3 < 0)
    {
      v2 = *a2;
      v3 = a2[1];
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    else if (!*(a2 + 23))
    {
      goto LABEL_11;
    }

    v4 = 0;
    do
    {
      if (*(v2 + v4) == 124)
      {
        operator new();
      }

      ++v4;
    }

    while (v4 != v3);
LABEL_11:
    operator new();
  }

  *(a1 + 72) = 0;
  return 1;
}

void webrtc::Limiter::Process(float *a1, __int128 *a2)
{
  v2 = a2;
  v111 = *a2;
  v113 = 0;
  v4 = *(a2 + 6);
  if (v4 == 1)
  {
    v5 = *(a2 + 2);
    v113 = 1;
LABEL_5:
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    v112 = v5;
    webrtc::FixedDigitalLevelEstimator::ComputeLevel((a1 + 22), &v111, &v114);
    a1[30] = a1[531];
    v6 = a1 + 30;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *&v114);
    *(a1 + 31) = v7;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *(&v114 + 1));
    *(a1 + 32) = v8;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *(&v114 + 2));
    *(a1 + 33) = v9;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *(&v114 + 3));
    *(a1 + 34) = v10;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *&v115);
    *(a1 + 35) = v11;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *(&v115 + 1));
    *(a1 + 36) = v12;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *(&v115 + 2));
    *(a1 + 37) = v13;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *(&v115 + 3));
    *(a1 + 38) = v14;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *&v116);
    *(a1 + 39) = v15;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *(&v116 + 1));
    *(a1 + 40) = v16;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *(&v116 + 2));
    *(a1 + 41) = v17;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *(&v116 + 3));
    *(a1 + 42) = v18;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *&v117);
    *(a1 + 43) = v19;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *(&v117 + 1));
    *(a1 + 44) = v20;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *(&v117 + 2));
    *(a1 + 45) = v21;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *(&v117 + 3));
    *(a1 + 46) = v22;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *&v118);
    *(a1 + 47) = v23;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *(&v118 + 1));
    *(a1 + 48) = v24;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *(&v118 + 2));
    *(a1 + 49) = v25;
    webrtc::InterpolatedGainCurve::LookUpGainToApply(a1, *(&v118 + 3));
    *(a1 + 50) = v32;
    v33 = v2[1];
    if (v33)
    {
      v34 = (a1 + 51);
    }

    else
    {
      v34 = 0;
    }

    v35 = v33 / 0x14;
    v36 = v33 % 0x14;
    if (v33 % 0x14)
    {
      goto LABEL_81;
    }

    v37 = a1[30];
    v38 = a1[31];
    v39 = v35 << 32;
    if (!v33 || v37 <= v38)
    {
      goto LABEL_24;
    }

    if (v33 >= v35)
    {
      LODWORD(v40) = v33 / 0x14;
    }

    else
    {
      v40 = v2[1];
    }

    v41 = v39 ? v34 : 0;
    if (v40 < 1)
    {
      goto LABEL_24;
    }

    v42 = v37 - v38;
    v43 = v40 & 0x7FFFFFFF;
    if (v43 >= 2)
    {
      v109 = v33 / 0x14;
      v110 = v2;
      v45 = 0;
      v44 = v43 - (v40 & 1);
      v46 = (v41 + 4);
      do
      {
        v47 = powf(1.0 - (v45 / v40), 8.0);
        v48 = powf(1.0 - ((v45 + 1) / v40), 8.0);
        *(v46 - 1) = v38 + (v47 * v42);
        *v46 = v38 + (v48 * v42);
        v45 += 2;
        v46 += 2;
      }

      while (v44 != v45);
      LODWORD(v35) = v109;
      v2 = v110;
      if ((v40 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v44 = 0;
    }

    do
    {
      *(v41 + 4 * v44) = v38 + (powf(1.0 - (v44 / v40), 8.0) * v42);
      ++v44;
    }

    while (v43 != v44);
LABEL_24:
    if (v35 >= 1)
    {
      v49 = v37 > v38;
      v50 = v35 & 0x7FFFFFFF;
      v51.i64[0] = 0x400000004;
      v51.i64[1] = 0x400000004;
      v52.i64[0] = 0x800000008;
      v52.i64[1] = 0x800000008;
      do
      {
        v30.i32[0] = v6[v49];
        v53 = v49 + 1;
        *v31.i32 = (*&v6[v49 + 1] - *v30.i32) / v35;
        v54 = (v39 * v49) >> 30;
        if (v50 >= 8)
        {
          v56 = vdupq_lane_s32(v31, 0);
          v57 = vdupq_lane_s32(v30, 0);
          v58 = (v34 + 16 + v54);
          v59 = (v35 & 0x7FFFFFFF) - (v35 & 7);
          v60 = xmmword_273B90830;
          do
          {
            v58[-1] = vmlaq_f32(v57, vcvtq_f32_u32(v60), v56);
            *v58 = vmlaq_f32(v57, vcvtq_f32_u32(vaddq_s32(v60, v51)), v56);
            v60 = vaddq_s32(v60, v52);
            v58 += 2;
            v59 -= 8;
          }

          while (v59);
          v55 = (v35 & 0x7FFFFFFF) - (v35 & 7);
          if ((v35 & 7) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v55 = 0;
        }

        v61 = v34 + v54;
        do
        {
          *(v61 + 4 * v55) = *v30.i32 + (*v31.i32 * v55);
          ++v55;
        }

        while (v50 != v55);
LABEL_26:
        v49 = v53;
      }

      while (v53 != 20);
    }

    v62 = *v2;
    if (!*v2)
    {
LABEL_79:
      a1[531] = a1[50];
      return;
    }

    v63 = *(v2 + 6);
    if (v63 <= 1)
    {
      v64 = v2[1];
      if (v64 >= 1)
      {
        v65 = v2[2];
        v66 = v2[1] & 0x7FFFFFFF;
        if (v63)
        {
          v67 = 0;
          v68 = v65 >= v34 + 4 * v66 || v34 >= v65 + 4 * (v66 + v64 * (v62 - 1));
          v69 = (v64 >> 61) & 1;
          if (!v68)
          {
            LOBYTE(v69) = 1;
          }

          v70 = v2[1] & 7;
          v71 = (v65 + 16);
          v72 = 4 * v64;
          v73.i64[0] = 0xC7000000C7000000;
          v73.i64[1] = 0xC7000000C7000000;
          v74 = vdupq_n_s32(0x46FFFE00u);
          while (!((v66 < 8) | v69 & 1))
          {
            v76 = v66 - v70;
            v77 = (v34 + 16);
            v78 = v71;
            do
            {
              v79 = vmulq_f32(v78[-1], v77[-1]);
              v80 = vmulq_f32(*v78, *v77);
              v78[-1] = vbslq_s8(vcgeq_f32(v73, v79), v73, vbslq_s8(vcgeq_f32(v79, v74), v74, v79));
              *v78 = vbslq_s8(vcgeq_f32(v73, v80), v73, vbslq_s8(vcgeq_f32(v80, v74), v74, v80));
              v78 += 2;
              v77 += 2;
              v76 -= 8;
            }

            while (v76);
            v75 = v66 - v70;
            if (v70)
            {
              goto LABEL_51;
            }

LABEL_45:
            ++v67;
            v71 = (v71 + v72);
            v65 += v72;
            if (v67 == v62)
            {
              goto LABEL_79;
            }
          }

          v75 = 0;
LABEL_51:
          v81 = v66 - v75;
          v82 = 4 * v75;
          v83 = (v34 + 4 * v75);
          v84 = (v65 + v82);
          do
          {
            v85 = *v83++;
            v86 = *v84 * v85;
            v87 = 32767.0;
            if (v86 < 32767.0)
            {
              v87 = v86;
            }

            if (v86 > -32768.0)
            {
              v88 = v87;
            }

            else
            {
              v88 = -32768.0;
            }

            *v84++ = v88;
            --v81;
          }

          while (v81);
          goto LABEL_45;
        }

        v89 = 0;
        v90.i64[0] = 0xC7000000C7000000;
        v90.i64[1] = 0xC7000000C7000000;
        v91 = vdupq_n_s32(0x46FFFE00u);
        while (1)
        {
          v92 = *(v65 + 8 * v89);
          if (v66 < 8)
          {
            break;
          }

          if (v92 < v34 + 4 * v66 && v34 < v92 + 4 * v66)
          {
            break;
          }

          v94 = (v92 + 16);
          v95 = v66 - (v64 & 7);
          v96 = (v34 + 16);
          do
          {
            v97 = vmulq_f32(v94[-1], v96[-1]);
            v98 = vmulq_f32(*v94, *v96);
            v94[-1] = vbslq_s8(vcgeq_f32(v90, v97), v90, vbslq_s8(vcgeq_f32(v97, v91), v91, v97));
            *v94 = vbslq_s8(vcgeq_f32(v90, v98), v90, vbslq_s8(vcgeq_f32(v98, v91), v91, v98));
            v94 += 2;
            v96 += 2;
            v95 -= 8;
          }

          while (v95);
          v99 = v66 - (v64 & 7);
          if ((v64 & 7) != 0)
          {
            goto LABEL_71;
          }

LABEL_78:
          if (++v89 == v62)
          {
            goto LABEL_79;
          }
        }

        v99 = 0;
LABEL_71:
        v100 = v66 - v99;
        v101 = 4 * v99;
        v102 = (v34 + 4 * v99);
        v103 = (v92 + v101);
        do
        {
          v104 = *v102++;
          v105 = *v103 * v104;
          v106 = 32767.0;
          if (v105 < 32767.0)
          {
            v106 = v105;
          }

          if (v105 > -32768.0)
          {
            v107 = v106;
          }

          else
          {
            v107 = -32768.0;
          }

          *v103++ = v107;
          --v100;
        }

        while (v100);
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    goto LABEL_80;
  }

  if (!v4)
  {
    v5 = *(a2 + 2);
    goto LABEL_5;
  }

LABEL_80:
  std::__throw_bad_variant_access[abi:sn200100]();
LABEL_81:
  webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v26, v27, v28, v29, v36);
  webrtc::RefCountedObject<webrtc::LocalAudioSource>::AddRef(v108);
}

BOOL webrtc::RefCountedObject<webrtc::LocalAudioSource>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 30, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::LocalAudioSource>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_288295C78;
  *(a1 + 8) = &unk_288295CF8;
  if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *a1 = &unk_288295D28;
  *(a1 + 8) = &unk_288295DA8;
  if (*(a1 + 32))
  {
    v2 = *(a1 + 24);
    v3 = *(*(a1 + 16) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 32) = 0;
    if (v2 != (a1 + 16))
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (a1 + 16));
    }
  }

  return a1;
}

void webrtc::RefCountedObject<webrtc::LocalAudioSource>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_288295C78;
  *(a1 + 8) = &unk_288295CF8;
  if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *a1 = &unk_288295D28;
  *(a1 + 8) = &unk_288295DA8;
  if (*(a1 + 32))
  {
    v2 = *(a1 + 24);
    v3 = *(*(a1 + 16) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 32) = 0;
    if (v2 != (a1 + 16))
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (a1 + 16));
    }
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::LocalAudioSource::options@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 56);
  *a2 = *(this + 40);
  *(a2 + 16) = v2;
  *(a2 + 32) = *(this + 72);
  *(a2 + 40) = 0;
  *(a2 + 64) = 0;
  if (*(this + 104) == 1)
  {
    if (*(this + 103) < 0)
    {
      v3 = this;
      v4 = a2;
      std::string::__init_copy_ctor_external((a2 + 40), *(this + 80), *(this + 88));
      this = v3;
      a2 = v4;
    }

    else
    {
      *(a2 + 40) = *(this + 80);
      *(a2 + 56) = *(this + 96);
    }

    *(a2 + 64) = 1;
  }

  *(a2 + 72) = *(this + 112);
  return this;
}

void *non-virtual thunk towebrtc::RefCountedObject<webrtc::LocalAudioSource>::~RefCountedObject(void *result)
{
  *(result - 1) = &unk_288295C78;
  *result = &unk_288295CF8;
  if (*(result + 96) == 1 && *(result + 95) < 0)
  {
    v1 = result;
    operator delete(result[9]);
    result = v1;
  }

  *(result - 1) = &unk_288295D28;
  *result = &unk_288295DA8;
  if (result[3])
  {
    v2 = result + 1;
    v3 = result[2];
    v4 = *(result[1] + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    result[3] = 0;
    if (v3 != result + 1)
    {
      result = v3;
      do
      {
        v6 = result[1];
        operator delete(result);
        result = v6;
      }

      while (v6 != v2);
    }
  }

  return result;
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::LocalAudioSource>::~RefCountedObject(uint64_t a1)
{
  *(a1 - 8) = &unk_288295C78;
  *a1 = &unk_288295CF8;
  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    v1 = a1;
    operator delete(*(a1 + 72));
    a1 = v1;
  }

  *(a1 - 8) = &unk_288295D28;
  *a1 = &unk_288295DA8;
  if (*(a1 + 24))
  {
    v2 = (a1 + 8);
    v3 = *(a1 + 16);
    v4 = *(*(a1 + 8) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(a1 + 24) = 0;
    if (v3 != (a1 + 8))
    {
      v6 = v3;
      do
      {
        v7 = v6[1];
        operator delete(v6);
        v6 = v7;
      }

      while (v7 != v2);
    }
  }

  JUMPOUT(0x2743DA540);
}

double webrtc::LogLineRef::DefaultLogLine(std::string *this, uint64_t a2, char *a3)
{
  v71 = *MEMORY[0x277D85DE8];
  memset(&v69, 0, sizeof(v69));
  v5 = *(a2 + 56);
  if (v5 != 0x8000000000000000)
  {
    v6 = v5 / 0x3E8uLL;
    if (v5 % 0x3E8uLL > 0x1F3)
    {
      ++v6;
    }

    v7 = -v5 / 0x3E8uLL;
    v8 = -v5 % 0x3E8uLL;
    v9 = v8 > 0x1F4;
    if (v8 <= 0x1F4)
    {
      v10 = -v5 / 0x3E8uLL;
    }

    else
    {
      v10 = v7 + 1;
    }

    v11 = (v10 * 0x10624DD2F1A9FBFuLL) >> 64;
    if (v9)
    {
      v12 = -1;
    }

    else
    {
      v12 = 0;
    }

    v13 = -(v11 >> 2);
    v14 = v12 - v7;
    v15 = v5 >= 0;
    if (v5 < 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = ((v6 * 0x10624DD2F1A9FBFuLL) >> 64) >> 2;
    }

    if (!v15)
    {
      v6 = v14;
    }

    snprintf(__str, 0x32uLL, "[%03lld:%03lld]", v16, v6 % 1000);
    v17 = strlen(__str);
    v18 = v17;
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = 22;
    }

    else
    {
      v19 = (v69.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    v20 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    if (v19 - HIBYTE(v69.__r_.__value_.__r.__words[2]) < v17)
    {
      std::string::__grow_by_and_replace(&v69, v19, HIBYTE(v69.__r_.__value_.__r.__words[2]) + v17 - v19, HIBYTE(v69.__r_.__value_.__r.__words[2]), HIBYTE(v69.__r_.__value_.__r.__words[2]), 0, v17, __str);
      if (*(a2 + 48) != 1)
      {
        goto LABEL_66;
      }

      goto LABEL_22;
    }

    if (v17)
    {
      if ((v17 & 0x8000000000000000) != 0 || &v69 + HIBYTE(v69.__r_.__value_.__r.__words[2]) <= __str && &v69 + HIBYTE(v69.__r_.__value_.__r.__words[2]) + v17 > __str)
      {
        goto LABEL_162;
      }

      memmove(&v69 + HIBYTE(v69.__r_.__value_.__r.__words[2]), __str, v17);
      v23 = v20 + v18;
      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        v69.__r_.__value_.__l.__size_ = v20 + v18;
        v69.__r_.__value_.__s.__data_[v23] = 0;
        if (*(a2 + 48) != 1)
        {
          goto LABEL_66;
        }

        goto LABEL_22;
      }

      *(&v69.__r_.__value_.__s + 23) = v23 & 0x7F;
      v69.__r_.__value_.__s.__data_[v23] = 0;
    }
  }

  if (*(a2 + 48) != 1)
  {
    goto LABEL_66;
  }

LABEL_22:
  size = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = 22;
  }

  else
  {
    v22 = (v69.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v69.__r_.__value_.__l.__size_;
  }

  if (v22 == size)
  {
    std::string::__grow_by_and_replace(&v69, v22, 1uLL, v22, v22, 0, 1uLL, "[");
    if ((*(a2 + 48) & 1) == 0)
    {
      goto LABEL_162;
    }
  }

  else
  {
    v24 = &v69;
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v69.__r_.__value_.__r.__words[0];
    }

    if (v24 + size <= "[" && &v24->__r_.__value_.__l.__data_ + size + 1 > "[")
    {
      goto LABEL_162;
    }

    v24->__r_.__value_.__s.__data_[size] = 91;
    v26 = size + 1;
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      v69.__r_.__value_.__l.__size_ = v26;
      v24->__r_.__value_.__s.__data_[v26] = 0;
      if ((*(a2 + 48) & 1) == 0)
      {
        goto LABEL_162;
      }
    }

    else
    {
      *(&v69.__r_.__value_.__s + 23) = v26 & 0x7F;
      v24->__r_.__value_.__s.__data_[v26] = 0;
      if ((*(a2 + 48) & 1) == 0)
      {
        goto LABEL_162;
      }
    }
  }

  v27 = webrtc::StringBuilder::operator<<(&v69, *(a2 + 44), a3);
  v28 = SHIBYTE(v27->__r_.__value_.__r.__words[2]);
  if (v28 >= 0)
  {
    v29 = 22;
  }

  else
  {
    v29 = (v27->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v28 >= 0)
  {
    v30 = HIBYTE(v27->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v27->__r_.__value_.__l.__size_;
  }

  if (v29 - v30 >= 2)
  {
    if (v28 >= 0)
    {
      v31 = v27;
    }

    else
    {
      v31 = v27->__r_.__value_.__r.__words[0];
    }

    if (v31 + v30 <= "] " && &v31->__r_.__value_.__s.__data_[v30 + 2] > "] ")
    {
      goto LABEL_162;
    }

    *(&v31->__r_.__value_.__l.__data_ + v30) = 8285;
    v33 = v30 + 2;
    if (SHIBYTE(v27->__r_.__value_.__r.__words[2]) < 0)
    {
      v27->__r_.__value_.__l.__size_ = v33;
    }

    else
    {
      *(&v27->__r_.__value_.__s + 23) = v33 & 0x7F;
    }

    v31->__r_.__value_.__s.__data_[v33] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(v27, v29, v30 - v29 + 2, v30, v30, 0, 2uLL, "] ");
  }

LABEL_66:
  if (!*(a2 + 32))
  {
    goto LABEL_138;
  }

  v34 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = 22;
  }

  else
  {
    v35 = (v69.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v34 = v69.__r_.__value_.__l.__size_;
  }

  if (v35 == v34)
  {
    std::string::__grow_by_and_replace(&v69, v35, 1uLL, v35, v35, 0, 1uLL, "(");
    v37 = *(a2 + 24);
    v36 = *(a2 + 32);
    if (v37)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v38 = &v69;
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v38 = v69.__r_.__value_.__r.__words[0];
    }

    if (v38 + v34 <= "(" && &v38->__r_.__value_.__l.__data_ + v34 + 1 > "(")
    {
      goto LABEL_162;
    }

    v38->__r_.__value_.__s.__data_[v34] = 40;
    v40 = v34 + 1;
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      v69.__r_.__value_.__l.__size_ = v40;
      v38->__r_.__value_.__s.__data_[v40] = 0;
      v37 = *(a2 + 24);
      v36 = *(a2 + 32);
      if (v37)
      {
        goto LABEL_86;
      }
    }

    else
    {
      *(&v69.__r_.__value_.__s + 23) = v40 & 0x7F;
      v38->__r_.__value_.__s.__data_[v40] = 0;
      v37 = *(a2 + 24);
      v36 = *(a2 + 32);
      if (v37)
      {
        goto LABEL_86;
      }
    }
  }

  if (v36)
  {
    goto LABEL_162;
  }

LABEL_86:
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = 22;
  }

  else
  {
    v41 = (v69.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v69.__r_.__value_.__l.__size_;
  }

  if (v41 - v42 >= v36)
  {
    if (v36)
    {
      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v69;
      }

      else
      {
        v43 = v69.__r_.__value_.__r.__words[0];
      }

      if ((v36 & 0x8000000000000000) != 0)
      {
        goto LABEL_162;
      }

      v44 = v43 + v42;
      if (v43 + v42 <= v37 && &v44[v36] > v37)
      {
        goto LABEL_162;
      }

      v45 = v36;
      memmove(v44, v37, v36);
      v46 = v42 + v45;
      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        v69.__r_.__value_.__l.__size_ = v42 + v45;
      }

      else
      {
        *(&v69.__r_.__value_.__s + 23) = v46 & 0x7F;
      }

      v43->__r_.__value_.__s.__data_[v46] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v69, v41, v42 + v36 - v41, v42, v42, 0, v36, v37);
  }

  v47 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = 22;
  }

  else
  {
    v48 = (v69.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v47 = v69.__r_.__value_.__l.__size_;
  }

  if (v48 == v47)
  {
    std::string::__grow_by_and_replace(&v69, v48, 1uLL, v48, v48, 0, 1uLL, ":");
  }

  else
  {
    v49 = &v69;
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v49 = v69.__r_.__value_.__r.__words[0];
    }

    v50 = v49 + v47;
    if (v49 + v47 <= ":" && v50 + 1 > ":")
    {
      goto LABEL_162;
    }

    *v50 = 58;
    v51 = v47 + 1;
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      v69.__r_.__value_.__l.__size_ = v51;
    }

    else
    {
      *(&v69.__r_.__value_.__s + 23) = v51 & 0x7F;
    }

    v49->__r_.__value_.__s.__data_[v51] = 0;
  }

  v52 = webrtc::StringBuilder::operator<<(&v69, *(a2 + 40), a3);
  v53 = SHIBYTE(v52->__r_.__value_.__r.__words[2]);
  if (v53 >= 0)
  {
    v54 = 22;
  }

  else
  {
    v54 = (v52->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v53 >= 0)
  {
    v55 = HIBYTE(v52->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v55 = v52->__r_.__value_.__l.__size_;
  }

  if (v54 - v55 >= 3)
  {
    if (v53 >= 0)
    {
      v59 = v52;
    }

    else
    {
      v59 = v52->__r_.__value_.__r.__words[0];
    }

    v60 = v59 + v55;
    if (v59 + v55 <= "): " && v60 + 3 > "): ")
    {
      goto LABEL_162;
    }

    *(v60 + 2) = 32;
    *v60 = 14889;
    v61 = v55 + 3;
    if (SHIBYTE(v52->__r_.__value_.__r.__words[2]) < 0)
    {
      v52->__r_.__value_.__l.__size_ = v61;
      v59->__r_.__value_.__s.__data_[v61] = 0;
      v56 = *(a2 + 23);
      if ((v56 & 0x8000000000000000) != 0)
      {
        goto LABEL_128;
      }

      goto LABEL_139;
    }

    *(&v52->__r_.__value_.__s + 23) = v61 & 0x7F;
    v59->__r_.__value_.__s.__data_[v61] = 0;
LABEL_138:
    v56 = *(a2 + 23);
    if ((v56 & 0x8000000000000000) != 0)
    {
      goto LABEL_128;
    }

LABEL_139:
    v58 = v56 == 0;
    v57 = a2;
    goto LABEL_140;
  }

  std::string::__grow_by_and_replace(v52, v54, v55 - v54 + 3, v55, v55, 0, 3uLL, "): ");
  v56 = *(a2 + 23);
  if ((v56 & 0x8000000000000000) == 0)
  {
    goto LABEL_139;
  }

LABEL_128:
  v57 = *a2;
  v56 = *(a2 + 8);
  v58 = v56 == 0;
  if (!*a2 && v56)
  {
    goto LABEL_162;
  }

LABEL_140:
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = 22;
  }

  else
  {
    v62 = (v69.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v63 = v69.__r_.__value_.__l.__size_;
  }

  if (v62 - v63 < v56)
  {
    std::string::__grow_by_and_replace(&v69, v62, v63 + v56 - v62, v63, v63, 0, v56, v57);
    goto LABEL_161;
  }

  if (v58)
  {
    goto LABEL_161;
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v64 = &v69;
  }

  else
  {
    v64 = v69.__r_.__value_.__r.__words[0];
  }

  if ((v56 & 0x8000000000000000) != 0 || (v65 = v64 + v63, v64 + v63 <= v57) && &v65[v56] > v57)
  {
LABEL_162:
    __break(1u);
  }

  v66 = v56;
  memmove(v65, v57, v56);
  v67 = v63 + v66;
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    v69.__r_.__value_.__l.__size_ = v63 + v66;
  }

  else
  {
    *(&v69.__r_.__value_.__s + 23) = v67 & 0x7F;
  }

  v64->__r_.__value_.__s.__data_[v67] = 0;
LABEL_161:
  result = *&v69.__r_.__value_.__l.__data_;
  *this = v69;
  return result;
}

uint64_t webrtc::LogMessage::AddLogToStream(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(&qword_28100BA68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28100BA68))
  {
    operator new();
  }

  v4 = qword_28100BA60;
  pthread_mutex_lock(qword_28100BA60);
  *(a1 + 16) = a2;
  *(a1 + 8) = _MergedGlobals_15;
  _MergedGlobals_15 = a1;
  webrtc::LogMessage::streams_empty_ = 0;
  do
  {
    if (*(a1 + 16) < v5)
    {
      v5 = *(a1 + 16);
    }

    a1 = *(a1 + 8);
  }

  while (a1);

  return pthread_mutex_unlock(v4);
}

uint64_t webrtc::LogMessage::RemoveLogToStream(webrtc::LogMessage *this, webrtc::LogSink *a2)
{
  if ((atomic_load_explicit(&qword_28100BA68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28100BA68))
  {
    operator new();
  }

  v3 = qword_28100BA60;
  pthread_mutex_lock(qword_28100BA60);
  v4 = _MergedGlobals_15;
  if (_MergedGlobals_15)
  {
    if (_MergedGlobals_15 == this)
    {
      v7 = &_MergedGlobals_15;
LABEL_10:
      *v7 = *(v4 + 8);
      v4 = _MergedGlobals_15;
    }

    else
    {
      v5 = _MergedGlobals_15;
      while (1)
      {
        v6 = v5;
        v5 = *(v5 + 1);
        if (!v5)
        {
          break;
        }

        if (v5 == this)
        {
          v7 = (v6 + 8);
          v4 = v5;
          goto LABEL_10;
        }
      }
    }

    webrtc::LogMessage::streams_empty_ = v4 == 0;
    {
      if (*(v4 + 16) < i)
      {
        i = *(v4 + 16);
      }
    }
  }

  else
  {
    webrtc::LogMessage::streams_empty_ = 1;
  }

  return pthread_mutex_unlock(v3);
}

void webrtc::webrtc_logging_impl::Log(unsigned __int8 *a1, std::string::size_type a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v117 = *MEMORY[0x277D85DE8];
  v113 = &a9;
  v11 = *a1;
  if (v11 == 14)
  {
    v15 = v113++;
    v14 = *v15;
    v12 = *(v14 + 4);
    v13 = *(v14 + 5);
  }

  else
  {
    if (v11 != 13)
    {
      return;
    }

    v12 = 0;
    v13 = 0;
    v14 = v113;
    v113 += 2;
  }

  v16 = *v14;
  v17 = *(v14 + 2);
  v105 = 0;
  memset(__p, 0, 45);
  v106 = 0x8000000000000000;
  v107 = "libjingle";
  v108 = 9;
  *v110 = 0u;
  *__len = 0u;
  *__n_copy = 0u;
  v109 = v17 & 7;
  if (v16)
  {
    v18 = v17 >> 3;
    p_s = strrchr(v16, 47);
    v19 = strrchr(v16, 92);
    if (p_s <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = p_s;
    }

    if (p_s | v19)
    {
      v16 = v20 + 1;
    }

    __p[3] = v16;
    __p[4] = strlen(v16);
    LODWORD(__p[5]) = v18;
  }

  if (v12)
  {
    __s = __str;
    v115 = xmmword_273B8ED80;
    __str[0].__r_.__value_.__s.__data_[0] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "[0x%08X]", v13);
    if (v12 == 1)
    {
      v23 = v115;
      v24 = *(&v115 + 1) + 1;
      memcpy(&__s[*(&v115 + 1)], " ", v115 != *(&v115 + 1) + 1);
      v25 = *(&v115 + 1);
      if (v23 != v24)
      {
        v25 = *(&v115 + 1) + 1;
      }

      *(&v115 + 1) = v25;
      __s[v25] = 0;
      v26 = strerror(v13);
      if (!v26)
      {
        goto LABEL_240;
      }

      v13 = v26;
      v27 = strlen(v26);
      if (v27 >= v115 + ~*(&v115 + 1))
      {
        v28 = v115 + ~*(&v115 + 1);
      }

      else
      {
        v28 = v27;
      }

      memcpy(&__s[*(&v115 + 1)], v13, v28);
      v22 = __s;
      v21 = *(&v115 + 1) + v28;
      *(&v115 + 1) = v21;
      __s[v21] = 0;
    }

    if (!__s)
    {
      goto LABEL_240;
    }

    std::string::__assign_external(v110, __s);
  }

  v13 = &__len[1];
  v29 = a1 + 1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v32 = *v29++;
        v31 = v32;
        if (v32 <= 5)
        {
          break;
        }

        if (v31 > 9)
        {
          switch(v31)
          {
            case 10:
              v67 = v113++;
              v61 = *v67;
              v60 = *(*v67 + 23);
              if ((v60 & 0x8000000000000000) != 0)
              {
                v22 = *v61;
                v60 = v61[1];
                v21 = v60 == 0;
                if (*v61)
                {
                  v77 = 1;
                }

                else
                {
                  v77 = v60 == 0;
                }

                if (!v77)
                {
                  goto LABEL_240;
                }

                v61 = *v61;
              }

              else
              {
                LOBYTE(v21) = v60 == 0;
              }

              v22 = SHIBYTE(__n_copy[1]);
              if ((v22 & 0x80000000) == 0)
              {
                a2 = 22;
              }

              else
              {
                a2 = (__n_copy[1] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              }

              if ((v22 & 0x80000000) == 0)
              {
                p_s = HIBYTE(__n_copy[1]);
              }

              else
              {
                p_s = __n_copy[0];
              }

              if (a2 - p_s >= v60)
              {
                if ((v21 & 1) == 0)
                {
                  v21 = __len[1];
                  if ((v22 & 0x80000000) == 0)
                  {
                    v78 = &__len[1];
                  }

                  else
                  {
                    v78 = __len[1];
                  }

                  if ((v60 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_240;
                  }

                  v79 = v78 + p_s;
                  if ((v78 + p_s) <= v61)
                  {
                    v21 = &v79[v60];
                    if (&v79[v60] > v61)
                    {
                      goto LABEL_240;
                    }
                  }

                  v80 = v60;
                  memmove(v79, v61, v60);
                  v81 = p_s + v80;
                  if (SHIBYTE(__n_copy[1]) < 0)
                  {
                    __n_copy[0] = p_s + v80;
                  }

                  else
                  {
                    HIBYTE(__n_copy[1]) = v81 & 0x7F;
                  }

                  *(v78 + v81) = 0;
                }
              }

              else
              {
LABEL_180:
                std::string::__grow_by_and_replace(&__len[1], a2, p_s + v60 - a2, p_s, p_s, 0, v60, v61);
              }

              break;
            case 11:
              v59 = v113;
              v22 = ++v113;
              v21 = *v59;
              v61 = *v21;
              v60 = *(v21 + 8);
              if (*v21)
              {
                v62 = 1;
              }

              else
              {
                v62 = v60 == 0;
              }

              if (!v62)
              {
                goto LABEL_240;
              }

              v21 = SHIBYTE(__n_copy[1]);
              if ((v21 & 0x80000000) == 0)
              {
                a2 = 22;
              }

              else
              {
                a2 = (__n_copy[1] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              }

              if ((v21 & 0x80000000) == 0)
              {
                p_s = HIBYTE(__n_copy[1]);
              }

              else
              {
                p_s = __n_copy[0];
              }

              if (a2 - p_s < v60)
              {
                goto LABEL_180;
              }

              if (v60)
              {
                v22 = __len[1];
                if ((v21 & 0x80000000) == 0)
                {
                  v63 = &__len[1];
                }

                else
                {
                  v63 = __len[1];
                }

                if ((v60 & 0x8000000000000000) != 0)
                {
                  goto LABEL_240;
                }

                v21 = v63 + p_s + v60;
                if ((v63 + p_s) <= v61 && v21 > v61)
                {
                  goto LABEL_240;
                }

                v65 = v60;
                memmove(v63 + p_s, v61, v60);
                v66 = p_s + v65;
                if (SHIBYTE(__n_copy[1]) < 0)
                {
                  __n_copy[0] = p_s + v65;
                }

                else
                {
                  HIBYTE(__n_copy[1]) = v66 & 0x7F;
                }

                *(v63 + v66) = 0;
              }

              break;
            case 12:
              v43 = v113++;
              snprintf(__str, 0x32uLL, "%x", *v43);
              v44 = strlen(__str);
              if (v44 >= 0x7FFFFFFFFFFFFFF8)
              {
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

              p_s = v44;
              if (v44 > 0x16)
              {
                operator new();
              }

              HIBYTE(v115) = v44;
              v21 = &__s + v44 > __str;
              if (&__s <= __str && &__s + v44 > __str)
              {
                goto LABEL_240;
              }

              if (v44)
              {
                memcpy(&__s, __str, v44);
              }

              *(&__s + p_s) = 0;
              v21 = HIBYTE(v115);
              v22 = SHIBYTE(v115);
              v71 = (v22 & 0x80000000) == 0 ? &__s : __s;
              v72 = (v22 & 0x80000000) == 0 ? HIBYTE(v115) : v115;
              if (!v71 && v72)
              {
                goto LABEL_240;
              }

              v21 = SHIBYTE(__n_copy[1]);
              if ((v21 & 0x80000000) == 0)
              {
                a2 = 22;
              }

              else
              {
                a2 = (__n_copy[1] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              }

              if ((v21 & 0x80000000) == 0)
              {
                p_s = HIBYTE(__n_copy[1]);
              }

              else
              {
                p_s = __n_copy[0];
              }

              if (a2 - p_s >= v72)
              {
                if (v72)
                {
                  v22 = __len[1];
                  if ((v21 & 0x80000000) == 0)
                  {
                    v73 = &__len[1];
                  }

                  else
                  {
                    v73 = __len[1];
                  }

                  if ((v72 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_240;
                  }

                  v74 = v73 + p_s;
                  if (v73 + p_s <= v71)
                  {
                    v21 = &v74[v72];
                    if (&v74[v72] > v71)
                    {
                      goto LABEL_240;
                    }
                  }

                  v75 = v72;
                  memmove(v74, v71, v72);
                  v76 = p_s + v75;
                  if ((SHIBYTE(__n_copy[1]) & 0x80000000) == 0)
                  {
                    HIBYTE(__n_copy[1]) = v76 & 0x7F;
                    *(v73 + v76) = 0;
                    goto LABEL_162;
                  }

                  __n_copy[0] = p_s + v75;
                  *(v73 + v76) = 0;
                  if (SHIBYTE(v115) < 0)
                  {
LABEL_163:
                    operator delete(__s);
                  }
                }

                else
                {
LABEL_162:
                  if (SHIBYTE(v115) < 0)
                  {
                    goto LABEL_163;
                  }
                }
              }

              else
              {
                std::string::__grow_by_and_replace(&__len[1], a2, p_s + v72 - a2, p_s, p_s, 0, v72, v71);
                if (SHIBYTE(v115) < 0)
                {
                  goto LABEL_163;
                }
              }

              break;
            default:
              goto LABEL_196;
          }
        }

        else
        {
          if (v31 == 6)
          {
            goto LABEL_45;
          }

          if (v31 == 7)
          {
            v55 = v113++;
            v56 = *v55;
            __str[0].__r_.__value_.__r.__words[2] = 0x1000000000000000;
            *&__str[0].__r_.__value_.__l.__data_ = 0uLL;
            v57 = absl::numbers_internal::SixDigitsToBuffer(__str, v56, a2);
            if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              if (__str[0].__r_.__value_.__l.__size_ < v57)
              {
LABEL_267:
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

              v58 = __str[0].__r_.__value_.__r.__words[0];
              __str[0].__r_.__value_.__l.__size_ = v57;
            }

            else
            {
              if (v57 > SHIBYTE(__str[0].__r_.__value_.__r.__words[2]))
              {
                goto LABEL_267;
              }

              *(&__str[0].__r_.__value_.__s + 23) = v57;
              v58 = __str;
            }

            v58->__r_.__value_.__s.__data_[v57] = 0;
            goto LABEL_61;
          }

          if (v31 != 9)
          {
            goto LABEL_196;
          }

          v33 = v113++;
          v34 = *v33;
          if (v34)
          {
            p_s = v34;
          }

          else
          {
            p_s = "(null)";
          }

          v35 = strlen(p_s);
          v36 = v35;
          v21 = SHIBYTE(__n_copy[1]);
          if ((v21 & 0x80000000) == 0)
          {
            a2 = 22;
          }

          else
          {
            a2 = (__n_copy[1] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v21 & 0x80000000) == 0)
          {
            v37 = HIBYTE(__n_copy[1]);
          }

          else
          {
            v37 = __n_copy[0];
          }

          if (a2 - v37 >= v35)
          {
            if (v35)
            {
              v22 = __len[1];
              if ((v21 & 0x80000000) == 0)
              {
                v68 = &__len[1];
              }

              else
              {
                v68 = __len[1];
              }

              if ((v35 & 0x8000000000000000) != 0)
              {
                goto LABEL_240;
              }

              v69 = v68 + v37;
              if (v68 + v37 <= p_s)
              {
                v21 = &v69[v36];
                if (&v69[v36] > p_s)
                {
                  goto LABEL_240;
                }
              }

              memmove(v69, p_s, v36);
              v70 = v37 + v36;
              if (SHIBYTE(__n_copy[1]) < 0)
              {
                __n_copy[0] = v37 + v36;
              }

              else
              {
                HIBYTE(__n_copy[1]) = v70 & 0x7F;
              }

              *(v68 + v70) = 0;
            }
          }

          else
          {
            std::string::__grow_by_and_replace(&__len[1], a2, v37 + v35 - a2, v37, v37, 0, v35, p_s);
          }
        }
      }

      if (v31 <= 2)
      {
        break;
      }

      if (v31 == 3)
      {
        goto LABEL_57;
      }

      if (v31 != 4)
      {
        if (v31 != 5)
        {
          goto LABEL_196;
        }

LABEL_45:
        v38 = v113++;
        v39 = *v38;
        __str[0].__r_.__value_.__r.__words[2] = 0x1600000000000000;
        *&__str[0].__r_.__value_.__l.__data_ = 0uLL;
        v40 = absl::numbers_internal::FastIntToBuffer(v39, __str, a3) - __str;
        v41 = SHIBYTE(__str[0].__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          goto LABEL_58;
        }

        goto LABEL_46;
      }

      v53 = v113++;
      v54 = *v53;
      __str[0].__r_.__value_.__r.__words[2] = 0x1600000000000000;
      *&__str[0].__r_.__value_.__l.__data_ = 0uLL;
      v40 = absl::numbers_internal::FastIntToBuffer(v54, __str, a3) - __str;
      v41 = SHIBYTE(__str[0].__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
LABEL_58:
        if (__str[0].__r_.__value_.__l.__size_ < v40)
        {
          goto LABEL_267;
        }

        v42 = __str[0].__r_.__value_.__r.__words[0];
        __str[0].__r_.__value_.__l.__size_ = v40;
        goto LABEL_60;
      }

LABEL_46:
      if (v40 > v41)
      {
        goto LABEL_267;
      }

      *(&__str[0].__r_.__value_.__s + 23) = v40;
      v42 = __str;
LABEL_60:
      v42->__r_.__value_.__s.__data_[v40] = 0;
LABEL_61:
      v21 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
      v22 = SHIBYTE(__str[0].__r_.__value_.__r.__words[2]);
      if ((v22 & 0x80000000) == 0)
      {
        v47 = __str;
      }

      else
      {
        v47 = __str[0].__r_.__value_.__r.__words[0];
      }

      if ((v22 & 0x80000000) == 0)
      {
        size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str[0].__r_.__value_.__l.__size_;
      }

      if (!v47 && size)
      {
        goto LABEL_240;
      }

      v21 = SHIBYTE(__n_copy[1]);
      if ((v21 & 0x80000000) == 0)
      {
        a2 = 22;
      }

      else
      {
        a2 = (__n_copy[1] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v21 & 0x80000000) == 0)
      {
        p_s = HIBYTE(__n_copy[1]);
      }

      else
      {
        p_s = __n_copy[0];
      }

      if (a2 - p_s >= size)
      {
        if (size)
        {
          v22 = __len[1];
          if ((v21 & 0x80000000) == 0)
          {
            v49 = &__len[1];
          }

          else
          {
            v49 = __len[1];
          }

          if ((size & 0x8000000000000000) != 0)
          {
            goto LABEL_240;
          }

          v50 = v49 + p_s;
          if (v49 + p_s <= v47)
          {
            v21 = &v50[size];
            if (&v50[size] > v47)
            {
              goto LABEL_240;
            }
          }

          v51 = size;
          memmove(v50, v47, size);
          v52 = p_s + v51;
          if ((SHIBYTE(__n_copy[1]) & 0x80000000) == 0)
          {
            HIBYTE(__n_copy[1]) = v52 & 0x7F;
            *(v49 + v52) = 0;
            goto LABEL_87;
          }

          __n_copy[0] = p_s + v51;
          *(v49 + v52) = 0;
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_88:
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }
        }

        else
        {
LABEL_87:
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_88;
          }
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&__len[1], a2, p_s + size - a2, p_s, p_s, 0, size, v47);
        if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_88;
        }
      }
    }

    if (v31 != 1)
    {
      break;
    }

    v30 = v113++;
    webrtc::StringBuilder::operator<<(&__len[1], *v30, a3);
  }

  if (v31 == 2)
  {
LABEL_57:
    v45 = v113++;
    v46 = *v45;
    __str[0].__r_.__value_.__r.__words[2] = 0x1600000000000000;
    *&__str[0].__r_.__value_.__l.__data_ = 0uLL;
    v40 = absl::numbers_internal::FastIntToBuffer(v46, __str, a3) - __str;
    v41 = SHIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_46;
  }

LABEL_196:
  v82 = HIBYTE(__len[0]);
  if ((__len[0] & 0x8000000000000000) != 0)
  {
    v82 = v110[1];
  }

  p_s = &__s;
  v83 = v110;
  if (!v82)
  {
    goto LABEL_232;
  }

  v84 = SHIBYTE(__n_copy[1]);
  if ((SHIBYTE(__n_copy[1]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(__n_copy[1]) - 20) < 3)
    {
      v85 = 22;
      goto LABEL_203;
    }

    v21 = &__len[1];
    v22 = &__len[1] + SHIBYTE(__n_copy[1]);
    if (v22 > " : ")
    {
LABEL_209:
      *(v22 + 2) = 32;
      *v22 = 14880;
      v22 = v84 + 3;
      if (SHIBYTE(__n_copy[1]) < 0)
      {
        __n_copy[0] = v84 + 3;
        *(v21 + v22) = 0;
        v86 = SHIBYTE(__len[0]);
        if ((SHIBYTE(__len[0]) & 0x8000000000000000) != 0)
        {
          goto LABEL_211;
        }
      }

      else
      {
        HIBYTE(__n_copy[1]) = v22 & 0x7F;
        *(v21 + v22) = 0;
        v86 = SHIBYTE(__len[0]);
        if ((SHIBYTE(__len[0]) & 0x8000000000000000) != 0)
        {
          goto LABEL_211;
        }
      }

LABEL_204:
      LOBYTE(v21) = v86 == 0;
      goto LABEL_213;
    }

LABEL_208:
    if (v22 + 3 <= " : ")
    {
      goto LABEL_209;
    }

    goto LABEL_240;
  }

  v84 = __n_copy[0];
  v85 = (__n_copy[1] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v85 - __n_copy[0] >= 3)
  {
    v21 = __len[1];
    v22 = __len[1] + __n_copy[0];
    if (__len[1] + __n_copy[0] > " : ")
    {
      goto LABEL_209;
    }

    goto LABEL_208;
  }

LABEL_203:
  std::string::__grow_by_and_replace(&__len[1], v85, v84 - v85 + 3, v84, v84, 0, 3uLL, " : ");
  v86 = SHIBYTE(__len[0]);
  if ((SHIBYTE(__len[0]) & 0x8000000000000000) == 0)
  {
    goto LABEL_204;
  }

LABEL_211:
  v83 = v110[0];
  v86 = v110[1];
  v21 = v110[1] == 0;
  if (!v110[0] && v110[1])
  {
LABEL_240:
    __break(1u);
    goto LABEL_241;
  }

LABEL_213:
  v22 = SHIBYTE(__n_copy[1]);
  if ((v22 & 0x80000000) == 0)
  {
    v87 = 22;
  }

  else
  {
    v87 = (__n_copy[1] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v22 & 0x80000000) == 0)
  {
    v88 = HIBYTE(__n_copy[1]);
  }

  else
  {
    v88 = __n_copy[0];
  }

  if (v87 - v88 >= v86)
  {
    if ((v21 & 1) == 0)
    {
      v21 = __len[1];
      if ((v22 & 0x80000000) == 0)
      {
        v90 = &__len[1];
      }

      else
      {
        v90 = __len[1];
      }

      if ((v86 & 0x8000000000000000) != 0)
      {
        goto LABEL_240;
      }

      v91 = v90 + v88;
      if (v90 + v88 <= v83)
      {
        v21 = &v91[v86];
        if (&v91[v86] > v83)
        {
          goto LABEL_240;
        }
      }

      v92 = v83;
      v93 = v86;
      memmove(v91, v92, v86);
      v94 = v88 + v93;
      if (SHIBYTE(__n_copy[1]) < 0)
      {
        __n_copy[0] = v88 + v93;
        *(v90 + v94) = 0;
        v21 = SHIBYTE(__n_copy[1]);
        if ((SHIBYTE(__n_copy[1]) & 0x8000000000000000) == 0)
        {
          goto LABEL_233;
        }

        goto LABEL_221;
      }

      HIBYTE(__n_copy[1]) = v94 & 0x7F;
      *(v90 + v94) = 0;
    }

LABEL_232:
    v21 = SHIBYTE(__n_copy[1]);
    if ((SHIBYTE(__n_copy[1]) & 0x8000000000000000) == 0)
    {
      goto LABEL_233;
    }

LABEL_221:
    v21 = __n_copy[0];
    v89 = (__n_copy[1] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v89 == __n_copy[0])
    {
      goto LABEL_235;
    }

    v22 = __len[1];
LABEL_236:
    v95 = (v22 + v21);
    if (v22 + v21 <= "\n" && v95 + 1 > "\n")
    {
      goto LABEL_240;
    }

    *v95 = 10;
    ++v21;
    if ((SHIBYTE(__n_copy[1]) & 0x80000000) == 0)
    {
      HIBYTE(__n_copy[1]) = v21 & 0x7F;
LABEL_242:
      *(v22 + v21) = 0;
      goto LABEL_243;
    }

LABEL_241:
    __n_copy[0] = v21;
    goto LABEL_242;
  }

  std::string::__grow_by_and_replace(&__len[1], v87, v88 + v86 - v87, v88, v88, 0, v86, v83);
  v21 = SHIBYTE(__n_copy[1]);
  if ((SHIBYTE(__n_copy[1]) & 0x8000000000000000) != 0)
  {
    goto LABEL_221;
  }

LABEL_233:
  v22 = &__len[1];
  if (v21 != 22)
  {
    goto LABEL_236;
  }

  v89 = 22;
LABEL_235:
  std::string::__grow_by_and_replace(&__len[1], v89, 1uLL, v89, v89, 0, 1uLL, "\n");
LABEL_243:
  v96 = __len[1];
  __s = __n_copy[0];
  *(p_s + 7) = *(__n_copy + 7);
  v97 = HIBYTE(__n_copy[1]);
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v96;
  __p[1] = __s;
  *(&__p[1] + 7) = *(p_s + 7);
  HIBYTE(__p[2]) = v97;
  {
    webrtc::LogLineRef::DefaultLogLine(__str, __p, a3);
    v98 = MEMORY[0x277D85DF8];
    v99 = SHIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    v100 = __str[0].__r_.__value_.__r.__words[0];
    v101 = (__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __str : __str[0].__r_.__value_.__r.__words[0];
    fputs(v101, *MEMORY[0x277D85DF8]);
    fflush(*v98);
    if (v99 < 0)
    {
      operator delete(v100);
    }
  }

  if ((atomic_load_explicit(&qword_28100BA68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28100BA68))
  {
    operator new();
  }

  v102 = qword_28100BA60;
  pthread_mutex_lock(qword_28100BA60);
  for (i = _MergedGlobals_15; i; i = *(i + 8))
  {
    if (v109 >= *(i + 16))
    {
      (*(*i + 64))(i, __p);
    }
  }

  pthread_mutex_unlock(v102);
  if (SHIBYTE(__n_copy[1]) < 0)
  {
    operator delete(__len[1]);
    if (SHIBYTE(__len[0]) < 0)
    {
      goto LABEL_261;
    }

LABEL_255:
    if (SHIBYTE(__p[2]) < 0)
    {
LABEL_262:
      operator delete(__p[0]);
    }
  }

  else
  {
    if ((SHIBYTE(__len[0]) & 0x80000000) == 0)
    {
      goto LABEL_255;
    }

LABEL_261:
    operator delete(v110[0]);
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_262;
    }
  }
}

void webrtc::LogSink::OnLogMessage(webrtc::LogSink *this, const webrtc::LogLineRef *a2, char *a3)
{
  v5 = webrtc::LogLineRef::DefaultLogLine(&__p, a2, a3);
  (*(*this + 24))(this, &__p, *(a2 + 20), v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void webrtc::LogSink::OnLogMessage(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  std::operator+<char>();
  if (!a4)
  {
    goto LABEL_32;
  }

  v7 = strlen(a4);
  v8 = v7;
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = 22;
  }

  else
  {
    v10 = (v15.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v10 - size < v7)
  {
    std::string::__grow_by_and_replace(&v15, v10, size + v7 - v10, size, 0, 0, v7, a4);
    goto LABEL_27;
  }

  if (v7)
  {
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v15;
    }

    else
    {
      v11 = v15.__r_.__value_.__r.__words[0];
    }

    if (!size)
    {
      goto LABEL_23;
    }

    if ((size & 0x8000000000000000) == 0)
    {
      if (v11 + size <= a4 || v11 > a4)
      {
        v13 = 0;
      }

      else
      {
        v13 = v7;
      }

      a4 += v13;
      memmove(v11 + v7, v11, size);
LABEL_23:
      memmove(v11, a4, v8);
      v14 = size + v8;
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        v15.__r_.__value_.__l.__size_ = size + v8;
      }

      else
      {
        *(&v15.__r_.__value_.__s + 23) = v14 & 0x7F;
      }

      v11->__r_.__value_.__s.__data_[v14] = 0;
      goto LABEL_27;
    }

LABEL_32:
    __break(1u);
    return;
  }

LABEL_27:
  __p = v15;
  memset(&v15, 0, sizeof(v15));
  (*(*a1 + 24))(a1, &__p, a3);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_31:
    operator delete(v15.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_31;
  }
}

uint64_t webrtc::LogSink::OnLogMessage(uint64_t a1)
{
  return (*(*a1 + 32))();
}

{
  return (*(*a1 + 56))();
}

void webrtc::LogSink::OnLogMessage(uint64_t a1, std::string *a2, size_t a3, uint64_t a4, const char *a5)
{
  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_69:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  *(&v25.__r_.__value_.__s + 23) = a3;
  v8 = (&v25 + a3);
  if (&v25 <= a2 && v8 > a2)
  {
    goto LABEL_68;
  }

  if (a3)
  {
    memmove(&v25, a2, a3);
  }

  v8->__r_.__value_.__s.__data_[0] = 0;
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = 22;
  }

  else
  {
    v10 = (v25.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v10 - size < 2)
  {
    if (0x7FFFFFFFFFFFFFF6 - v10 >= size + 2 - v10)
    {
      operator new();
    }

    goto LABEL_69;
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v25;
  }

  else
  {
    v11 = v25.__r_.__value_.__r.__words[0];
  }

  v12 = ": ";
  if (size)
  {
    if ((size & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

    v13 = v11 + size <= ": " || v11 > ": ";
    v14 = 2;
    if (v13)
    {
      v14 = 0;
    }

    v12 = &asc_273C43A02[v14];
    v15 = &v25;
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v25.__r_.__value_.__r.__words[0];
    }

    memmove(&v15->__r_.__value_.__s.__data_[2], v11, size);
  }

  LOWORD(v11->__r_.__value_.__l.__data_) = *v12;
  v16 = size + 2;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    v25.__r_.__value_.__l.__size_ = size + 2;
  }

  else
  {
    *(&v25.__r_.__value_.__s + 23) = v16 & 0x7F;
  }

  v11->__r_.__value_.__s.__data_[v16] = 0;
  v26 = v25;
  memset(&v25, 0, sizeof(v25));
  if (!a5)
  {
    goto LABEL_68;
  }

  v17 = strlen(a5);
  v18 = v17;
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v26.__r_.__value_.__l.__size_;
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = 22;
  }

  else
  {
    v20 = (v26.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v20 - v19 < v17)
  {
    std::string::__grow_by_and_replace(&v26, v20, v19 + v17 - v20, v19, 0, 0, v17, a5);
    goto LABEL_61;
  }

  if (v17)
  {
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v26;
    }

    else
    {
      v21 = v26.__r_.__value_.__r.__words[0];
    }

    if (!v19)
    {
      goto LABEL_57;
    }

    if ((v19 & 0x8000000000000000) == 0)
    {
      if (v21 + v19 <= a5 || v21 > a5)
      {
        v23 = 0;
      }

      else
      {
        v23 = v17;
      }

      a5 += v23;
      memmove(v21 + v17, v21, v19);
LABEL_57:
      memmove(v21, a5, v18);
      v24 = v19 + v18;
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        v26.__r_.__value_.__l.__size_ = v19 + v18;
      }

      else
      {
        *(&v26.__r_.__value_.__s + 23) = v24 & 0x7F;
      }

      v21->__r_.__value_.__s.__data_[v24] = 0;
      goto LABEL_61;
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_61:
  __p = v26;
  memset(&v26, 0, sizeof(v26));
  (*(*a1 + 24))(a1, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_63:
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_67:
      operator delete(v25.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_63;
  }

  operator delete(v26.__r_.__value_.__l.__data_);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_67;
  }
}

void webrtc::LogSink::OnLogMessage(uint64_t a1, void **a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_12:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  v6 = a3;
  v4 = (&__p + a3);
  if (&__p <= a2 && v4 > a2)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a3)
  {
    memmove(&__p, a2, a3);
  }

  *v4 = 0;
  (*(*a1 + 32))(a1, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

uint64_t webrtc::LossBasedControlConfig::LossBasedControlConfig(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  (*(*a2 + 16))(&__p, a2, "WebRTC-Bwe-LossBasedControl", 27);
  v4 = HIBYTE(v17);
  if (v17 < 0)
  {
    v4 = v16;
  }

  if (v4 < 7)
  {
    v5 = 0;
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  p_p = __p;
  if (v17 >= 0)
  {
    p_p = &__p;
  }

  v7 = *p_p;
  v8 = *(p_p + 3);
  v5 = v7 == 1650552389 && v8 == 1684368482;
  if (SHIBYTE(v17) < 0)
  {
LABEL_15:
    operator delete(__p);
  }

LABEL_16:
  *a1 = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 63) = 8;
  if (a1 + 40 <= "min_incr" && a1 + 48 > "min_incr"
    || (strcpy((a1 + 40), "min_incr"), *(a1 + 64) = 0, *(a1 + 8) = &unk_2882937C0, *(a1 + 72) = 0x3FF051EB851EB852, *(a1 + 96) = 0, *(a1 + 104) = 0, *(a1 + 88) = 0, *(a1 + 135) = 8, a1 + 112 <= "max_incr") && a1 + 120 > "max_incr"
    || (strcpy((a1 + 112), "max_incr"), *(a1 + 136) = 0, *(a1 + 80) = &unk_2882937C0, *(a1 + 144) = 0x3FF147AE147AE148, *(a1 + 168) = 0, *(a1 + 176) = 0, *(a1 + 207) = 12, *(a1 + 160) = 0, a1 + 184 <= "incr_low_rtt") && a1 + 196 > "incr_low_rtt"
    || (strcpy((a1 + 184), "incr_low_rtt"), *(a1 + 208) = 0, *(a1 + 152) = &unk_28828FFD0, *(a1 + 216) = 200000, *(a1 + 240) = 0, *(a1 + 248) = 0, *(a1 + 232) = 0, *(a1 + 279) = 13, a1 + 256 <= "incr_high_rtt") && a1 + 269 > "incr_high_rtt"
    || (strcpy((a1 + 256), "incr_high_rtt"), *(a1 + 280) = 0, *(a1 + 224) = &unk_28828FFD0, *(a1 + 288) = 800000, *(a1 + 312) = 0, *(a1 + 320) = 0, *(a1 + 304) = 0, *(a1 + 351) = 4, a1 + 328 <= "decr") && a1 + 332 > "decr"
    || (strcpy((a1 + 328), "decr"), *(a1 + 352) = 0, *(a1 + 296) = &unk_2882937C0, *(a1 + 360) = 0x3FEFAE147AE147AELL, *(a1 + 384) = 0, *(a1 + 392) = 0, *(a1 + 423) = 8, *(a1 + 376) = 0, a1 + 400 <= "loss_win") && a1 + 408 > "loss_win"
    || (strcpy((a1 + 400), "loss_win"), *(a1 + 424) = 0, *(a1 + 368) = &unk_28828FFD0, *(a1 + 432) = 800000, *(a1 + 456) = 0, *(a1 + 464) = 0, *(a1 + 495) = 12, *(a1 + 448) = 0, a1 + 472 <= "loss_max_win") && a1 + 484 > "loss_max_win"
    || (strcpy((a1 + 472), "loss_max_win"), *(a1 + 496) = 0, *(a1 + 440) = &unk_28828FFD0, *(a1 + 504) = 800000, *(a1 + 520) = 0, *(a1 + 536) = 0, *(a1 + 528) = 0, *(a1 + 567) = 15, a1 + 544 <= "ackrate_max_win") && a1 + 559 > "ackrate_max_win"
    || (strcpy((a1 + 544), "ackrate_max_win"), *(a1 + 568) = 0, *(a1 + 512) = &unk_28828FFD0, *(a1 + 576) = 800000, *(a1 + 592) = 0, *(a1 + 608) = 0, *(a1 + 600) = 0, *(a1 + 639) = 11, a1 + 616 <= "incr_offset") && a1 + 627 > "incr_offset"
    || (strcpy((a1 + 616), "incr_offset"), *(a1 + 640) = 0, *(a1 + 584) = &unk_28828FF08, *(a1 + 648) = 1000, *(a1 + 664) = 0, *(a1 + 680) = 0, *(a1 + 672) = 0, *(a1 + 711) = 12, a1 + 688 <= "balance_incr") && a1 + 700 > "balance_incr"
    || (strcpy((a1 + 688), "balance_incr"), *(a1 + 712) = 0, *(a1 + 656) = &unk_28828FF08, *(a1 + 720) = 500, *(a1 + 736) = 0, *(a1 + 752) = 0, *(a1 + 744) = 0, *(a1 + 783) = 12, a1 + 760 <= "balance_decr") && a1 + 772 > "balance_decr"
    || (strcpy((a1 + 760), "balance_decr"), *(a1 + 784) = 0, *(a1 + 728) = &unk_28828FF08, *(a1 + 792) = 4000, *(a1 + 808) = 0, *(a1 + 824) = 0, *(a1 + 816) = 0, *(a1 + 855) = 13, a1 + 832 <= "balance_reset") && a1 + 845 > "balance_reset"
    || (strcpy((a1 + 832), "balance_reset"), *(a1 + 856) = 0, *(a1 + 800) = &unk_28828FF08, *(a1 + 864) = 100, *(a1 + 880) = 0, *(a1 + 896) = 0, *(a1 + 888) = 0, *(a1 + 927) = 8, a1 + 904 <= "exponent") && a1 + 912 > "exponent"
    || (strcpy((a1 + 904), "exponent"), *(a1 + 928) = 0, *(a1 + 872) = &unk_2882937C0, *(a1 + 936) = 0x3FE0000000000000, *(a1 + 952) = 0, *(a1 + 968) = 0, *(a1 + 999) = 6, *(a1 + 960) = 0, a1 + 976 <= "resets") && a1 + 982 > "resets"
    || (strcpy((a1 + 976), "resets"), *(a1 + 1000) = 0, *(a1 + 944) = &unk_288293790, *(a1 + 1016) = 0, *(a1 + 1032) = 0, *(a1 + 1063) = 10, *(a1 + 1024) = 0, a1 + 1040 <= "decr_intvl") && a1 + 1050 > "decr_intvl"
    || (strcpy((a1 + 1040), "decr_intvl"), *(a1 + 1064) = 0, *(a1 + 1008) = &unk_28828FFD0, *(a1 + 1072) = 300000, *(a1 + 1088) = 0, *(a1 + 1104) = 0, *(a1 + 1096) = 0, *(a1 + 1135) = 7, a1 + 1112 <= "timeout") && a1 + 1119 > "timeout")
  {
    __break(1u);
  }

  strcpy((a1 + 1112), "timeout");
  *(a1 + 1136) = 0;
  *(a1 + 1080) = &unk_28828FFD0;
  *(a1 + 1144) = 6000000;
  __p = (a1 + 8);
  v16 = a1 + 80;
  v17 = a1 + 152;
  v18 = a1 + 224;
  v19 = a1 + 296;
  v20 = a1 + 368;
  v21 = a1 + 440;
  v22 = a1 + 512;
  v23 = a1 + 584;
  v24 = a1 + 656;
  v25 = a1 + 728;
  v26 = a1 + 800;
  v27 = a1 + 872;
  v28 = a1 + 944;
  v29 = a1 + 1008;
  v30 = a1 + 1080;
  (*(*a2 + 16))(v13, a2, "WebRTC-Bwe-LossBasedControl", 27);
  if ((v14 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v11 = v14;
  }

  else
  {
    v11 = v13[1];
  }

  webrtc::ParseFieldTrial(&__p, 16, v10, v11);
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  return a1;
}

void webrtc::LossBasedControlConfig::~LossBasedControlConfig(webrtc::LossBasedControlConfig *this)
{
  *(this + 135) = &unk_288293910;
  if (*(this + 1135) < 0)
  {
    operator delete(*(this + 139));
  }

  v2 = *(this + 136);
  if (v2)
  {
    *(this + 137) = v2;
    operator delete(v2);
  }

  *(this + 126) = &unk_288293910;
  if (*(this + 1063) < 0)
  {
    operator delete(*(this + 130));
  }

  v3 = *(this + 127);
  if (v3)
  {
    *(this + 128) = v3;
    operator delete(v3);
  }

  *(this + 118) = &unk_288293910;
  if (*(this + 999) < 0)
  {
    operator delete(*(this + 122));
  }

  v4 = *(this + 119);
  if (v4)
  {
    *(this + 120) = v4;
    operator delete(v4);
  }

  *(this + 109) = &unk_288293910;
  if (*(this + 927) < 0)
  {
    operator delete(*(this + 113));
  }

  v5 = *(this + 110);
  if (v5)
  {
    *(this + 111) = v5;
    operator delete(v5);
  }

  *(this + 100) = &unk_288293910;
  if (*(this + 855) < 0)
  {
    operator delete(*(this + 104));
  }

  v6 = *(this + 101);
  if (v6)
  {
    *(this + 102) = v6;
    operator delete(v6);
  }

  *(this + 91) = &unk_288293910;
  if (*(this + 783) < 0)
  {
    operator delete(*(this + 95));
  }

  v7 = *(this + 92);
  if (v7)
  {
    *(this + 93) = v7;
    operator delete(v7);
  }

  *(this + 82) = &unk_288293910;
  if (*(this + 711) < 0)
  {
    operator delete(*(this + 86));
  }

  v8 = *(this + 83);
  if (v8)
  {
    *(this + 84) = v8;
    operator delete(v8);
  }

  *(this + 73) = &unk_288293910;
  if (*(this + 639) < 0)
  {
    operator delete(*(this + 77));
  }

  v9 = *(this + 74);
  if (v9)
  {
    *(this + 75) = v9;
    operator delete(v9);
  }

  *(this + 64) = &unk_288293910;
  if (*(this + 567) < 0)
  {
    operator delete(*(this + 68));
  }

  v10 = *(this + 65);
  if (v10)
  {
    *(this + 66) = v10;
    operator delete(v10);
  }

  *(this + 55) = &unk_288293910;
  if (*(this + 495) < 0)
  {
    operator delete(*(this + 59));
  }

  v11 = *(this + 56);
  if (v11)
  {
    *(this + 57) = v11;
    operator delete(v11);
  }

  *(this + 46) = &unk_288293910;
  if (*(this + 423) < 0)
  {
    operator delete(*(this + 50));
  }

  v12 = *(this + 47);
  if (v12)
  {
    *(this + 48) = v12;
    operator delete(v12);
  }

  *(this + 37) = &unk_288293910;
  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  v13 = *(this + 38);
  if (v13)
  {
    *(this + 39) = v13;
    operator delete(v13);
  }

  *(this + 28) = &unk_288293910;
  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  v14 = *(this + 29);
  if (v14)
  {
    *(this + 30) = v14;
    operator delete(v14);
  }

  *(this + 19) = &unk_288293910;
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  v15 = *(this + 20);
  if (v15)
  {
    *(this + 21) = v15;
    operator delete(v15);
  }

  *(this + 10) = &unk_288293910;
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  v16 = *(this + 11);
  if (v16)
  {
    *(this + 12) = v16;
    operator delete(v16);
  }

  *(this + 1) = &unk_288293910;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v17 = *(this + 2);
  if (v17)
  {
    *(this + 3) = v17;
    operator delete(v17);
  }
}

void webrtc::LossBasedBandwidthEstimation::UpdateLossStatistics(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return;
  }

  v6 = v3 - v4;
  v7 = v3 - v4 - 96;
  if (v7 > 0x5F)
  {
    v10 = 0;
    v11 = 0;
    v12 = v7 / 0x60 + 1;
    v9 = v4 + 96 * (v12 & 0x7FFFFFFFFFFFFFELL);
    v13 = (v4 + 168);
    v14 = v12 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      v15 = *(v13 - 12);
      v17 = *v13;
      v13 += 24;
      v16 = v17;
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        ++v10;
      }

      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        ++v11;
      }

      v14 -= 2;
    }

    while (v14);
    v8 = v11 + v10;
    if (v12 == (v12 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = 0;
    v9 = *a2;
  }

  do
  {
    if (*(v9 + 72) == 0x7FFFFFFFFFFFFFFFLL)
    {
      ++v8;
    }

    v9 += 96;
  }

  while (v9 != v3);
LABEL_14:
  v18 = v8 / (0xAAAAAAAAAAAAAAABLL * (v6 >> 5));
  *(a1 + 1216) = v18;
  v19 = *(a1 + 1208);
  v20 = v19 + 0x7FFFFFFFFFFFFFFFLL;
  v21 = a3 - v19;
  if (a3 == 0x8000000000000000)
  {
    v21 = 0x8000000000000000;
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v20 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v22 = 1000000;
  }

  else
  {
    v22 = v21;
  }

  *(a1 + 1208) = a3;
  *(a1 + 1200) = 0;
  v23 = *(a1 + 432);
  if (v23 < 1)
  {
    v26 = 1.0;
  }

  else
  {
    v24 = INFINITY;
    if (v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = v22;
    }

    if (v22 == 0x8000000000000000)
    {
      v24 = -INFINITY;
    }

    v25 = v23;
    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = INFINITY;
    }

    v26 = 1.0 - exp(-v24 / v25);
  }

  v27 = *(a1 + 1152) + v26 * (v18 - *(a1 + 1152));
  *(a1 + 1152) = v27;
  v28 = *(a1 + 1160);
  if (v27 <= v28)
  {
    v29 = *(a1 + 504);
    if (v29 < 1)
    {
      v32 = 1.0;
    }

    else
    {
      v30 = INFINITY;
      if (v22 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v30 = v22;
      }

      if (v22 == 0x8000000000000000)
      {
        v30 = -INFINITY;
      }

      v31 = v29;
      if (v29 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = INFINITY;
      }

      v32 = 1.0 - exp(-v30 / v31);
    }

    v27 = v28 + v32 * (v27 - v28);
  }

  *(a1 + 1160) = v27;
}

uint64_t webrtc::LossBasedBandwidthEstimation::Update(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5)
{
  v7 = *(a1 + 1168);
  if (v7)
  {
    if (*(a1 + 1216) >= *(a1 + 1152))
    {
      v8 = *(a1 + 1152);
    }

    else
    {
      v8 = *(a1 + 1216);
    }

    if (*(a1 + 1200))
    {
      goto LABEL_6;
    }

LABEL_12:
    v10 = *(a1 + 1192);
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 0x8000000000000000;
    v13 = a2 - v10;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL || a2 == 0x8000000000000000)
    {
      v13 = 0x8000000000000000;
    }

    if (v10 == 0x8000000000000000)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v16 = *(a1 + 1072);
    if (v16 != 0x8000000000000000 && a5 != 0x8000000000000000)
    {
      v12 = v16 + a5;
    }

    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (a5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v12;
    }

    v9 = v15 < v11;
    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_66;
    }

    goto LABEL_32;
  }

  *(a1 + 1168) = a4;
  v7 = a4;
  if (*(a1 + 1216) >= *(a1 + 1152))
  {
    v8 = *(a1 + 1152);
  }

  else
  {
    v8 = *(a1 + 1216);
  }

  if ((*(a1 + 1200) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v9 = 1;
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_66;
  }

LABEL_32:
  v18 = *(a1 + 1208);
  v19 = 0x8000000000000000;
  if (v18 != 0x8000000000000000)
  {
    if (v18 != 0x7FFFFFFFFFFFFFFFLL && a2 != 0x8000000000000000)
    {
      v19 = a2 - v18;
    }

    if (v19 < llround(6000000.0))
    {
      v21 = *(a1 + 1160);
      if (*(a1 + 1001) == 1)
      {
        v22 = *(a1 + 864);
        v23 = 1.0;
        if (v22 < v7)
        {
          v24 = v22;
          if (v22 == 0x8000000000000000)
          {
            v24 = -INFINITY;
          }

          v25 = v7;
          if (v7 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v25 = INFINITY;
          }

          v26 = a3;
          v27 = a5;
          v28 = a4;
          v23 = pow(v24 / v25, *(a1 + 936));
          a4 = v28;
          a5 = v27;
          a3 = v26;
        }

        if (v21 < v23)
        {
          goto LABEL_114;
        }
      }

      v29 = *(a1 + 720);
      v30 = 1.0;
      if (v29 < v7)
      {
        v31 = v29;
        if (v29 == 0x8000000000000000)
        {
          v31 = -INFINITY;
        }

        v32 = v7;
        if (v7 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v32 = INFINITY;
        }

        v33 = a3;
        v34 = a5;
        v30 = pow(v31 / v32, *(a1 + 936));
        a5 = v34;
        a3 = v33;
      }

      if (v21 < v30)
      {
        v35 = *(a1 + 216);
        v36 = *(a1 + 288);
        if (v36 >= a5)
        {
          v37 = a5;
        }

        else
        {
          v37 = *(a1 + 288);
        }

        if (v35 <= a5)
        {
          v38 = v37;
        }

        else
        {
          v38 = *(a1 + 216);
        }

        if (v36 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v39 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v39 = 0x7FFFFFFFFFFFFFFFLL;
          if (v35 != 0x8000000000000000)
          {
            if (v36 == 0x8000000000000000 || v35 == 0x7FFFFFFFFFFFFFFFLL || (v39 = v36 - v35, v36 <= v35))
            {
              v40 = *(a1 + 72);
LABEL_96:
              v52 = llround(v40 * a3);
              v53 = *(a1 + 648);
              v54 = 0x7FFFFFFFFFFFFFFFLL;
              if (v52 != 0x7FFFFFFFFFFFFFFFLL && v53 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v56 = v53 == 0x8000000000000000 || v52 == 0x8000000000000000;
                v57 = v52 + v53;
                if (v56)
                {
                  v54 = 0x8000000000000000;
                }

                else
                {
                  v54 = v57;
                }
              }

              v58 = 0x7FFFFFFFFFFFFFFFLL;
              if (v21 >= 0.00001)
              {
                v59 = *(a1 + 936);
                if (v59 > 0.0)
                {
                  v58 = llround(pow(v21, -1.0 / v59) * v29);
                }
              }

              if (v58 >= v54)
              {
                v58 = v54;
              }

              if (v58 <= v7)
              {
                a4 = v7;
              }

              else
              {
                a4 = v58;
              }

              goto LABEL_114;
            }
          }
        }

        v48 = INFINITY;
        if (v38 != 0x7FFFFFFFFFFFFFFFLL && v35 != 0x8000000000000000)
        {
          if (v38 == 0x8000000000000000 || v35 == 0x7FFFFFFFFFFFFFFFLL || (v49 = v38 - v35, v49 == 0x8000000000000000))
          {
            v48 = -INFINITY;
          }

          else
          {
            v48 = INFINITY;
            if (v49 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v48 = v49;
            }
          }
        }

        v50 = v39;
        if (v39 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v50 = INFINITY;
        }

        v51 = v48 / v50;
        if (v51 > 1.0)
        {
          v51 = 1.0;
        }

        v40 = *(a1 + 72) + (1.0 - fmax(v51, 0.0)) * (*(a1 + 144) - *(a1 + 72));
        goto LABEL_96;
      }
    }
  }

LABEL_66:
  v41 = *(a1 + 792);
  v42 = 1.0;
  if (v41 < v7)
  {
    v43 = v41;
    if (v41 == 0x8000000000000000)
    {
      v43 = -INFINITY;
    }

    v44 = v7;
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v44 = INFINITY;
    }

    v42 = pow(v43 / v44, *(a1 + 936));
  }

  if (v8 > v42 && !v9)
  {
    v45 = 0x7FFFFFFFFFFFFFFFLL;
    if (v8 >= 0.00001)
    {
      v46 = *(a1 + 936);
      if (v46 > 0.0)
      {
        v45 = llround(pow(v8, -1.0 / v46) * v41);
      }
    }

    v47 = llround(*(a1 + 360) * *(a1 + 1176));
    a4 = v47 <= v45 ? v45 : v47;
    if (a4 < v7)
    {
      *(a1 + 1192) = a2;
      *(a1 + 1200) = 1;
LABEL_114:
      *(a1 + 1168) = a4;
      return a4;
    }
  }

  return v7;
}

void webrtc::LossBasedBweV2::LossBasedBweV2(_BYTE *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[8] = 0;
  v7 = 0;
  v6 = 0;
  v8 = 0;
  v9[23] = 7;
  if (v9 <= "Enabled" && &v9[7] > "Enabled")
  {
    __break(1u);
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  strcpy(v9, "Enabled");
  v10 = 256;
  v5 = &unk_288293790;
  v1 = &unk_288293910;
  v2 = 0;
  v4 = 0;
  v3 = 0;
  operator new();
}

void webrtc::LossBasedBweV2::GetLossBasedResult(webrtc::LossBasedBweV2 *this)
{
  if (*(this + 304) != 1)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

    goto LABEL_12;
  }

  if ((*(this + 40) + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/loss_based_bwe_v2.cc");
    }
  }

  else if (*(this + 82) >= *(this + 63))
  {
    return;
  }

  if ((*(this + 304) & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (*(this + 82) <= *(this + 63) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
LABEL_12:
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/loss_based_bwe_v2.cc");
  }
}

void webrtc::LossBasedBweV2::SetAcknowledgedBitrate(uint64_t a1, uint64_t a2)
{
  if ((a2 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      *(a1 + 8) = 1;
    }

    *a1 = a2;
    if ((*(a1 + 8) & 1) == 0)
    {
      goto LABEL_12;
    }

    if ((*(a1 + 304) & 1) == 0)
    {
      __break(1u);
      return;
    }

    v3 = *(a1 + 256);
    if (v3 > 0.0)
    {
      v4 = llround(v3 * a2);
      v5 = *(a1 + 528);
      if (*(a1 + 456))
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_12:
      v4 = 0;
      v5 = *(a1 + 528);
      if (*(a1 + 456))
      {
LABEL_14:
        v13 = v5 + 0x7FFFFFFFFFFFFFFFLL;
        if (v4 > v5)
        {
          v5 = v4;
        }

        if (v13 < 0xFFFFFFFFFFFFFFFELL)
        {
          v4 = v5;
        }

        *(a1 + 448) = v4;
        return;
      }
    }

    *(a1 + 456) = 1;
    goto LABEL_14;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::ToString(a2, &__p);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/loss_based_bwe_v2.cc");
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }
}

void webrtc::LossBasedBweV2::SetMinMaxBitrate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = 0;
    *(a1 + 528) = a2;
    if ((*(a1 + 8) & 1) != 0 && (*a1 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      if ((*(a1 + 304) & 1) == 0)
      {
        __break(1u);
        return;
      }

      v7 = *(a1 + 256);
      if (v7 <= 0.0)
      {
        v6 = 0;
        if (*(a1 + 456))
        {
LABEL_9:
          if (v6 <= a2)
          {
            v6 = a2;
          }

          *(a1 + 448) = v6;
          if ((a3 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_21;
          }

LABEL_16:
          *(a1 + 536) = a3;
          return;
        }

LABEL_8:
        *(a1 + 456) = 1;
        goto LABEL_9;
      }

      v6 = llround(v7 * *a1);
    }

    if (*(a1 + 456))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0 && (webrtc::ToString(a2, __p), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/loss_based_bwe_v2.cc"), v23 < 0))
  {
    operator delete(__p[0]);
    if ((a3 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_16;
    }
  }

  else if ((a3 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_16;
  }

LABEL_21:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::ToString(a3, __p);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/loss_based_bwe_v2.cc");
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void webrtc::LossBasedBweV2::UpdateBandwidthEstimate(uint64_t a1, int64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a1 + 544) = a4;
  if ((*(a1 + 304) & 1) == 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

LABEL_128:
    webrtc::webrtc_logging_impl::Log("\r\t", v42, v43, v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/loss_based_bwe_v2.cc");
    return;
  }

  if (!a3)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
    {
      return;
    }

    goto LABEL_128;
  }

  v5 = a2;
  v210 = (a1 + 544);
  v7 = &a2[12 * a3];
  *(a1 + 360) += a3;
  v214 = (a1 + 384);
  v8 = 0x8000000000000000;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if (v5[9] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = v5[7];
      v19 = *(a1 + 376);
      if (v19)
      {
        v20 = vcnt_s8(v19);
        v20.i16[0] = vaddlv_u8(v20);
        if (v20.u32[0] > 1uLL)
        {
          v21 = v5[7];
          if (*&v19 <= v18)
          {
            v21 = v18 % *&v19;
          }
        }

        else
        {
          v21 = (*&v19 - 1) & v18;
        }

        v26 = *(*(a1 + 368) + 8 * v21);
        if (v26)
        {
          v27 = *v26;
          if (v27)
          {
            if (v20.u32[0] < 2uLL)
            {
              while (1)
              {
                v29 = v27[1];
                if (v29 == v18)
                {
                  if (v27[2] == v18)
                  {
                    goto LABEL_4;
                  }
                }

                else if ((v29 & (*&v19 - 1)) != v21)
                {
                  goto LABEL_44;
                }

                v27 = *v27;
                if (!v27)
                {
                  goto LABEL_44;
                }
              }
            }

            do
            {
              v28 = v27[1];
              if (v28 == v18)
              {
                if (v27[2] == v18)
                {
                  goto LABEL_4;
                }
              }

              else
              {
                if (v28 >= *&v19)
                {
                  v28 %= *&v19;
                }

                if (v28 != v21)
                {
                  break;
                }
              }

              v27 = *v27;
            }

            while (v27);
          }
        }
      }

LABEL_44:
      operator new();
    }

    v22 = *(a1 + 376);
    if (v22)
    {
      v23 = v5[7];
      v24 = vcnt_s8(v22);
      v24.i16[0] = vaddlv_u8(v24);
      if (v24.u32[0] > 1uLL)
      {
        v25 = v5[7];
        if (v23 >= *&v22)
        {
          v25 = v23 % *&v22;
        }
      }

      else
      {
        v25 = (*&v22 - 1) & v23;
      }

      v30 = *(a1 + 368);
      v31 = *(v30 + 8 * v25);
      if (v31)
      {
        v32 = *v31;
        if (*v31)
        {
          v33 = *&v22 - 1;
          if (v24.u32[0] < 2uLL)
          {
            while (1)
            {
              v34 = v32[1];
              if (v34 == v23)
              {
                if (v32[2] == v23)
                {
                  goto LABEL_63;
                }
              }

              else if ((v34 & v33) != v25)
              {
                goto LABEL_4;
              }

              v32 = *v32;
              if (!v32)
              {
                goto LABEL_4;
              }
            }
          }

          do
          {
            v35 = v32[1];
            if (v35 == v23)
            {
              if (v32[2] == v23)
              {
LABEL_63:
                if (v24.u32[0] > 1uLL)
                {
                  if (v23 >= *&v22)
                  {
                    v23 %= *&v22;
                  }
                }

                else
                {
                  v23 &= v33;
                }

                v36 = *(v30 + 8 * v23);
                do
                {
                  v37 = v36;
                  v36 = *v36;
                }

                while (v36 != v32);
                if (v37 == v214)
                {
                  goto LABEL_80;
                }

                v38 = v37[1];
                if (v24.u32[0] > 1uLL)
                {
                  if (v38 >= *&v22)
                  {
                    v38 %= *&v22;
                  }
                }

                else
                {
                  v38 &= v33;
                }

                if (v38 != v23)
                {
LABEL_80:
                  if (!*v32)
                  {
                    goto LABEL_81;
                  }

                  v39 = *(*v32 + 8);
                  if (v24.u32[0] > 1uLL)
                  {
                    if (v39 >= *&v22)
                    {
                      v39 %= *&v22;
                    }
                  }

                  else
                  {
                    v39 &= v33;
                  }

                  if (v39 != v23)
                  {
LABEL_81:
                    *(v30 + 8 * v23) = 0;
                  }
                }

                v40 = *v32;
                if (*v32)
                {
                  v41 = *(v40 + 8);
                  if (v24.u32[0] > 1uLL)
                  {
                    if (v41 >= *&v22)
                    {
                      v41 %= *&v22;
                    }
                  }

                  else
                  {
                    v41 &= v33;
                  }

                  if (v41 != v23)
                  {
                    *(v30 + 8 * v41) = v37;
                    v40 = *v32;
                  }
                }

                *v37 = v40;
                *v32 = 0;
                --*(a1 + 392);
                operator delete(v32);
                break;
              }
            }

            else
            {
              if (v35 >= *&v22)
              {
                v35 %= *&v22;
              }

              if (v35 != v25)
              {
                break;
              }
            }

            v32 = *v32;
          }

          while (v32);
        }
      }
    }

LABEL_4:
    v10 = v5[1];
    v11 = *(a1 + 408);
    v12 = v10 == 0x8000000000000000 || v11 == 0x8000000000000000;
    v13 = v11 + v10;
    if (v12)
    {
      v13 = 0x8000000000000000;
    }

    if (v11 == 0x7FFFFFFFFFFFFFFFLL || v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    *(a1 + 408) = v15;
    v17 = *v5;
    v5 += 12;
    v16 = v17;
    if (v8 <= v17)
    {
      v8 = v16;
    }

    if (v16 < v9)
    {
      v9 = v16;
    }
  }

  while (v5 != v7);
  v49 = *(a1 + 416);
  v50 = 0x7FFFFFFFFFFFFFFFLL;
  if ((v49 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
  {
    *(a1 + 416) = v9;
    v49 = v9;
  }

  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v49 != 0x8000000000000000)
  {
    if (v8 == 0x8000000000000000)
    {
      return;
    }

    if (v49 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    v50 = v8 - v49;
    if (v8 - v49 < 1)
    {
      return;
    }
  }

  if ((*(a1 + 304) & 1) == 0)
  {
    goto LABEL_504;
  }

  if (v50 < *(a1 + 168))
  {
    return;
  }

  *(a1 + 416) = v8;
  v51 = *(a1 + 360);
  v52 = *(a1 + 392);
  v53 = *(a1 + 328);
  v54 = (8000000 * v15) / v50;
  if (v53 >= 1)
  {
    v55 = ((v53 - 1) % *(a1 + 176));
    v56 = *(a1 + 336);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 344) - v56) >> 4) <= v55)
    {
      goto LABEL_504;
    }

    v57 = *(a1 + 184);
    v58 = llround(v57 * *(v56 + 48 * v55 + 16));
    v59 = llround((1.0 - v57) * v54);
    v54 = 0x7FFFFFFFFFFFFFFFLL;
    if (v58 != 0x7FFFFFFFFFFFFFFFLL && v59 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v54 = 0x8000000000000000;
      v61 = v59 == 0x8000000000000000 || v58 == 0x8000000000000000;
      v62 = v59 + v58;
      if (!v61)
      {
        v54 = v62;
      }
    }
  }

  v63 = *v214;
  if (*v214)
  {
    v64 = 0;
    do
    {
      v65 = v63[3];
      v66 = v65 == 0x8000000000000000 || v64 == 0x8000000000000000;
      v67 = v65 + v64;
      if (v66)
      {
        v67 = 0x8000000000000000;
      }

      if (v64 == 0x7FFFFFFFFFFFFFFFLL || v65 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v64 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v64 = v67;
      }

      v63 = *v63;
    }

    while (v63);
  }

  else
  {
    v64 = 0;
  }

  *(a1 + 328) = v53 + 1;
  v69 = v53 % *(a1 + 176);
  v70 = *(a1 + 336);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 344) - v70) >> 4) <= v69)
  {
    goto LABEL_504;
  }

  v71 = v70 + 48 * v69;
  *v71 = v51;
  *(v71 + 4) = v52;
  *(v71 + 8) = v51 - v52;
  *(v71 + 16) = v54;
  *(v71 + 24) = v15;
  *(v71 + 32) = v64;
  *(v71 + 40) = v53;
  *(a1 + 360) = 0;
  if (*(a1 + 392))
  {
    v72 = *v214;
    if (*v214)
    {
      do
      {
        v73 = *v72;
        operator delete(v72);
        v72 = v73;
      }

      while (v73);
    }

    *(a1 + 384) = 0;
    v74 = *(a1 + 376);
    if (v74)
    {
      bzero(*(a1 + 368), 8 * v74);
    }

    *(a1 + 392) = 0;
  }

  v75 = *(a1 + 368);
  *(a1 + 368) = 0;
  if (v75)
  {
    operator delete(v75);
  }

  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 1065353216;
  *(a1 + 408) = 0;
  v15 = *(a1 + 304);
  if ((v15 & 1) == 0)
  {
    goto LABEL_504;
  }

  v15 = *(a1 + 328);
  if (*(a1 + 272) != 1)
  {
    if (v15 >= 1)
    {
      v108 = *(a1 + 336);
      v109 = *(a1 + 344);
      if (v108 == v109)
      {
        v116 = NAN;
        goto LABEL_298;
      }

      v110 = 0.0;
      v111 = 0.0;
      while (1)
      {
        v112 = v108[10];
        if (v112 != -1)
        {
          v113 = v15 + ~v112;
          v114 = *(a1 + 464);
          if (v113 >= (*(a1 + 472) - v114) >> 3)
          {
            goto LABEL_504;
          }

          v115 = *(v114 + 8 * v113);
          v110 = v110 + v115 * *v108;
          v111 = v111 + v115 * v108[1];
        }

        v108 += 12;
        if (v108 == v109)
        {
          v116 = v111 / v110;
          goto LABEL_298;
        }
      }
    }

LABEL_202:
    v116 = 0.0;
    goto LABEL_298;
  }

  if (v15 < 1)
  {
    goto LABEL_202;
  }

  v76 = *(a1 + 336);
  v77 = *(a1 + 344);
  if (v76 == v77)
  {
    v123 = 0;
    v124 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v125 = 0.0;
    goto LABEL_227;
  }

  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0.0;
  v86 = 1.0;
  v87 = *(a1 + 336);
  do
  {
    while (1)
    {
      v88 = *(v87 + 40);
      if (v88 == -1)
      {
        goto LABEL_146;
      }

      v89 = v15 + ~v88;
      v90 = *(a1 + 464);
      if (v89 >= (*(a1 + 472) - v90) >> 3)
      {
        goto LABEL_504;
      }

      v91 = *(v90 + 8 * v89);
      v92 = *(v87 + 24);
      v93 = *(v87 + 32);
      v94 = v92;
      v95 = llround(v91 * v92);
      v96 = v95 == 0x8000000000000000 || v81 == 0x8000000000000000;
      v97 = v95 + v81;
      if (v96)
      {
        v97 = 0x8000000000000000;
      }

      if (v95 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v97 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v98 = v93;
      if (v81 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v81 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v81 = v97;
      }

      v99 = llround(v91 * v98);
      v100 = 0x7FFFFFFFFFFFFFFFLL;
      if (v82 != 0x7FFFFFFFFFFFFFFFLL && v99 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v101 = v99 == 0x8000000000000000 || v82 == 0x8000000000000000;
        v100 = v99 + v82;
        if (v101)
        {
          v100 = 0x8000000000000000;
        }
      }

      if (v92)
      {
        break;
      }

      v103 = 0.0;
      if (v15 >= 4)
      {
        goto LABEL_180;
      }

LABEL_145:
      v82 = v100;
LABEL_146:
      v87 += 48;
      if (v87 == v77)
      {
        goto LABEL_184;
      }
    }

    if (v93 == 0x8000000000000000)
    {
      v102 = 0xFFF0000000000000;
    }

    else
    {
      if (v93 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_174;
      }

      v102 = 0x7FF0000000000000;
    }

    v98 = *&v102;
LABEL_174:
    if (v92 == 0x8000000000000000)
    {
      v104 = 0xFFF0000000000000;
    }

    else
    {
      if (v92 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_179;
      }

      v104 = 0x7FF0000000000000;
    }

    v94 = *&v104;
LABEL_179:
    v103 = v98 / v94;
    if (v15 < 4)
    {
      goto LABEL_145;
    }

LABEL_180:
    if (v103 > v85)
    {
      v84 = *(v87 + 16);
      v83 = v95;
      v79 = v99;
      v85 = v103;
    }

    if (v103 >= v86)
    {
      goto LABEL_145;
    }

    v82 = v100;
    v80 = v95;
    v78 = v99;
    v87 += 48;
    v86 = v103;
  }

  while (v87 != v77);
LABEL_184:
  v209 = v78;
  v215 = v79;
  __p[0] = 0;
  __p[1] = 0;
  v218 = 0;
  do
  {
    if (*(v76 + 40) != -1)
    {
      v105 = *(v76 + 16);
      v106 = v105 == 0x8000000000000000 || v105 == 0;
      if (!v106 && v105 != 0x7FFFFFFFFFFFFFFFLL)
      {
        std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100](__p, (v76 + 16));
      }
    }

    v76 += 48;
  }

  while (v76 != v77);
  v117 = __p[0];
  if (__p[0] == __p[1])
  {
    if (__p[0])
    {
      v122 = 0;
      goto LABEL_225;
    }

    v125 = 0.0;
    goto LABEL_226;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,webrtc::DataRate *,false>(__p[0], __p[1], 126 - 2 * __clz((__p[1] - __p[0]) >> 3), 1);
  v117 = __p[0];
  v15 = (__p[1] - __p[0]) >> 3;
  if (((LODWORD(__p[1]) - LODWORD(__p[0])) & 8) != 0)
  {
    if (__p[1] != __p[0])
    {
      v122 = *(__p[0] + ((4 * v15) & 0xFFFFFFFFFFFFFFF8));
      goto LABEL_225;
    }

    goto LABEL_504;
  }

  v118 = (v15 >> 1) - 1;
  if (v15 <= v118)
  {
    goto LABEL_504;
  }

  v119 = *(__p[0] + (v15 >> 1));
  v120 = *(__p[0] + v118);
  if (v120 == 0x7FFFFFFFFFFFFFFFLL || v119 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v122 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v126 = v119 == 0x8000000000000000 || v120 == 0x8000000000000000;
    v127 = (v120 + v119) / 2;
    v122 = v126 ? 0xC000000000000000 : v127;
  }

LABEL_225:
  __p[1] = v117;
  operator delete(v117);
  v125 = v122;
LABEL_226:
  v124 = v215;
  v123 = v209;
LABEL_227:
  v15 = *(a1 + 304);
  if ((v15 & 1) == 0)
  {
    goto LABEL_504;
  }

  if (llround(v125 * *(a1 + 296)) <= v84)
  {
    if (v82 == 0x8000000000000000)
    {
      v131 = 0xFFF0000000000000;
    }

    else
    {
      if (v82 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v137 = v82;
LABEL_261:
        if (v81 != 0x8000000000000000)
        {
          if (v81 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_294;
          }

LABEL_270:
          v138 = v81;
          goto LABEL_297;
        }

        goto LABEL_295;
      }

      v131 = 0x7FF0000000000000;
    }

    v137 = *&v131;
    goto LABEL_261;
  }

  v128 = 0x7FFFFFFFFFFFFFFFLL;
  if (v83 != 0x7FFFFFFFFFFFFFFFLL && v80 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v128 = 0x8000000000000000;
    if (v80 != 0x8000000000000000 && v83 != 0x8000000000000000)
    {
      v128 = v83 + v80;
    }
  }

  if (v81 != v128)
  {
    v132 = 0x7FFFFFFFFFFFFFFFLL;
    if (v82 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v134 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v133 = 0x8000000000000000;
      v134 = 0x7FFFFFFFFFFFFFFFLL;
      if (v123 != 0x8000000000000000)
      {
        if (v123 != 0x7FFFFFFFFFFFFFFFLL && v82 != 0x8000000000000000)
        {
          v133 = v82 - v123;
        }

        if (v133 != 0x7FFFFFFFFFFFFFFFLL && v124 != 0x8000000000000000)
        {
          v134 = v133 - v124;
          if (v124 == 0x7FFFFFFFFFFFFFFFLL || v133 == 0x8000000000000000)
          {
            v134 = 0x8000000000000000;
          }
        }
      }
    }

    if (v81 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v139 = 0x8000000000000000;
      if (v83 != 0x8000000000000000)
      {
        if (v83 != 0x7FFFFFFFFFFFFFFFLL && v81 != 0x8000000000000000)
        {
          v139 = v81 - v83;
        }

        if (v139 != 0x7FFFFFFFFFFFFFFFLL && v80 != 0x8000000000000000)
        {
          v132 = v139 - v80;
          if (v80 == 0x7FFFFFFFFFFFFFFFLL || v139 == 0x8000000000000000)
          {
            v132 = 0x8000000000000000;
          }
        }
      }
    }

    if (v134 == 0x8000000000000000)
    {
      v142 = 0xFFF0000000000000;
    }

    else
    {
      if (v134 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v137 = v134;
LABEL_292:
        if (v132 != 0x8000000000000000)
        {
          if (v132 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_294;
          }

          v138 = v132;
          goto LABEL_297;
        }

LABEL_295:
        v143 = 0xFFF0000000000000;
        goto LABEL_296;
      }

      v142 = 0x7FF0000000000000;
    }

    v137 = *&v142;
    goto LABEL_292;
  }

  if (v82 == 0x8000000000000000)
  {
    v130 = 0xFFF0000000000000;
LABEL_266:
    v137 = *&v130;
  }

  else
  {
    if (v82 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v130 = 0x7FF0000000000000;
      goto LABEL_266;
    }

    v137 = v82;
  }

  if (v81 == 0x8000000000000000)
  {
    goto LABEL_295;
  }

  if (v81 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_270;
  }

LABEL_294:
  v143 = 0x7FF0000000000000;
LABEL_296:
  v138 = *&v143;
LABEL_297:
  v116 = v137 / v138;
LABEL_298:
  *(a1 + 608) = v116;
  v144 = *(a1 + 208);
  if (v116 <= v144)
  {
    v145 = *(a1 + 536);
    if (*(a1 + 440))
    {
      goto LABEL_303;
    }

    goto LABEL_302;
  }

  v145 = llround(*(a1 + 200) / (v116 - v144));
  if ((*(a1 + 440) & 1) == 0)
  {
LABEL_302:
    *(a1 + 440) = 1;
  }

LABEL_303:
  *(a1 + 432) = v145;
  v146 = *(a1 + 320);
  if ((v146 + 0x7FFFFFFFFFFFFFFFLL) < 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_306;
  }

  if ((a4 + 0x7FFFFFFFFFFFFFFFLL) < 0xFFFFFFFFFFFFFFFELL)
  {
    *(a1 + 320) = a4;
    *(a1 + 552) = a4;
    *(a1 + 560) = 3;
    v146 = a4;
LABEL_306:
    v213 = v146;
    v147 = *(a1 + 312);
    __p[0] = 0;
    __p[1] = 0;
    v218 = 0;
    if (*(a1 + 56) != *(a1 + 64))
    {
      v148 = (-__p[0] >> 3) + 1;
      if (!(v148 >> 61))
      {
        v149 = v218 - __p[0];
        if ((v218 - __p[0]) >> 2 > v148)
        {
          v148 = v149 >> 2;
        }

        v150 = v149 >= 0x7FFFFFFFFFFFFFF8;
        v15 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v150)
        {
          v15 = v148;
        }

        if (v15)
        {
          if (!(v15 >> 61))
          {
            operator new();
          }

          goto LABEL_510;
        }

        goto LABEL_504;
      }

LABEL_511:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v151 = v146;
    if (*(a1 + 8))
    {
      v15 = *(a1 + 304);
      if ((v15 & 1) == 0)
      {
        goto LABEL_504;
      }

      if (*(a1 + 160) == 1)
      {
        if (*(a1 + 249) != 1 || !a5)
        {
          goto LABEL_330;
        }

        v152 = *(a1 + 280);
        if (v152 >= 1)
        {
          if (v152 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_330;
          }

          v153 = *(a1 + 600);
          if (v153 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_330;
          }

          v154 = v153 + v152;
          if (v153 == 0x8000000000000000)
          {
            v154 = 0x8000000000000000;
          }

          if (v154 >= *(a1 + 416))
          {
LABEL_330:
            v162 = (-__p[0] >> 3) + 1;
            if (v162 >> 61)
            {
              goto LABEL_511;
            }

            v163 = v218 - __p[0];
            if ((v218 - __p[0]) >> 2 > v162)
            {
              v162 = v163 >> 2;
            }

            v150 = v163 >= 0x7FFFFFFFFFFFFFF8;
            v15 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v150)
            {
              v15 = v162;
            }

            if (!v15)
            {
              goto LABEL_504;
            }

            if (!(v15 >> 61))
            {
              operator new();
            }

            goto LABEL_510;
          }
        }
      }
    }

    v15 = *v210;
    if (*v210 + 0x7FFFFFFFFFFFFFFFLL <= 0xFFFFFFFFFFFFFFFDLL)
    {
      if ((*(a1 + 304) & 1) == 0)
      {
        goto LABEL_504;
      }

      if (*(a1 + 161) == 1 && v15 > v146)
      {
        std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100](__p, v210);
      }
    }

    if (a5)
    {
      v15 = *(a1 + 304);
      if ((v15 & 1) == 0)
      {
        goto LABEL_504;
      }

      if (*(a1 + 162) == 1)
      {
        v164 = 536;
        if (*(a1 + 440))
        {
          v164 = 432;
        }

        v165 = *(a1 + v164);
        if (v213 > v165)
        {
          v166 = __p[1];
          v15 = v218;
          if (__p[1] >= v218)
          {
            v167 = ((__p[1] - __p[0]) >> 3) + 1;
            if (v167 >> 61)
            {
              goto LABEL_511;
            }

            v168 = (v218 - __p[0]) >> 2;
            if (v168 <= v167)
            {
              v168 = ((__p[1] - __p[0]) >> 3) + 1;
            }

            v15 = 0x1FFFFFFFFFFFFFFFLL;
            if ((v218 - __p[0]) < 0x7FFFFFFFFFFFFFF8)
            {
              v15 = v168;
            }

            if (!v15)
            {
              goto LABEL_504;
            }

            if (!(v15 >> 61))
            {
              operator new();
            }

LABEL_510:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          if (!__p[1])
          {
            goto LABEL_504;
          }

          *__p[1] = v165;
          __p[1] = v166 + 8;
        }
      }
    }

    v15 = *(a1 + 536);
    if (*(a1 + 560) != 3 && (*(a1 + 520) + 0x7FFFFFFFFFFFFFFFLL) < 0xFFFFFFFFFFFFFFFELL)
    {
      v15 = *(a1 + 520);
    }

    if (*(a1 + 8) != 1 || (*(a1 + 304) & 1) != 0)
    {
      if (__p[1] != __p[0])
      {
        if (!(((__p[1] - __p[0]) >> 3) >> 60))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      __p[0] = v151;
      v169 = *(a1 + 320);
      if (v151 < v169)
      {
        *(a1 + 424) = *(a1 + 416);
      }

      if (*(a1 + 608) > v147)
      {
        v15 = *(a1 + 304);
        if ((v15 & 1) == 0)
        {
          goto LABEL_504;
        }

        if (v169 < v151 && (*(a1 + 248) & 1) != 0)
        {
          __p[0] = v169;
          v151 = v169;
        }
      }

      v15 = *(a1 + 560);
      if (v15 != 3)
      {
        v173 = *(a1 + 512);
        if ((v173 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          if ((*(a1 + 304) & 1) == 0)
          {
            goto LABEL_504;
          }

          v174 = *(a1 + 240);
          v175 = v174 + v173;
          if (v174 == 0x8000000000000000)
          {
            v175 = 0x8000000000000000;
          }

          if (v174 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v175 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v175 > *(a1 + 416))
          {
            if (v151 >= *(a1 + 520))
            {
              v151 = *(a1 + 520);
            }

            __p[0] = v151;
          }
        }

        if (v169 < v151 || v15 <= 1 && v169 == v151) && (*(a1 + 8))
        {
          v176 = *a1;
          if ((*a1 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            if ((*(a1 + 304) & 1) == 0)
            {
              goto LABEL_504;
            }

            v177 = *(a1 + 16);
            v178 = *(a1 + 584);
            if ((v178 + 0x7FFFFFFFFFFFFFFFLL) < 0xFFFFFFFFFFFFFFFELL && v176 < llround(*(a1 + 32) * v178))
            {
              v177 = *(a1 + 24);
            }

            v216 = llround(v177 * v176);
            v179 = __p;
            if (v216 < v151)
            {
              v179 = &v216;
            }

            if (v169 >= *v179)
            {
              v179 = (a1 + 320);
            }

            v151 = *v179;
            if (v15 == 2 && v151 == v169)
            {
              if (v169 == 0x8000000000000000)
              {
                v180 = 0x8000000000000000;
              }

              else
              {
                v180 = v169 + 1;
              }

              if (v169 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v151 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v151 = v180;
              }
            }
          }
        }
      }

      v170 = *(a1 + 544);
      v171 = *(a1 + 456);
      if ((v170 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
      {
        if (*(a1 + 456))
        {
          v172 = *(a1 + 448);
        }

        else
        {
          v172 = 0;
        }

        v183 = 536;
        if (*(a1 + 440))
        {
          v183 = 432;
        }

        v182 = *(a1 + v183);
        if (v182 >= v151)
        {
          v182 = v151;
        }
      }

      else
      {
        if (*(a1 + 456))
        {
          v172 = *(a1 + 448);
        }

        else
        {
          v172 = 0;
        }

        v181 = 536;
        if (*(a1 + 440))
        {
          v181 = 432;
        }

        v182 = *(a1 + v181);
        if (v182 >= v151)
        {
          v182 = v151;
        }

        if (v170 < v182)
        {
          v182 = *(a1 + 544);
        }
      }

      v184 = v172 <= v182 ? v182 : v172;
      if (*(a1 + 304))
      {
        if (*(a1 + 288) == 1 && v184 < v151)
        {
          *(a1 + 312) = 0;
          *(a1 + 320) = v184;
        }

        else
        {
          *(a1 + 312) = v147;
          *(a1 + 320) = v151;
          if (*(a1 + 256) > 0.0)
          {
            if (v171)
            {
              v185 = *(a1 + 448);
            }

            else
            {
              v185 = 0;
            }

            if (v151 > v185)
            {
              v185 = v151;
            }

            *(a1 + 320) = v185;
          }
        }

        if (v15 == 2 && *(a1 + 568) > *(a1 + 416) && v184 < v170)
        {
          if (*(a1 + 256) <= 0.0)
          {
            v186 = *(a1 + 584);
          }

          else
          {
            if (v171)
            {
              v186 = *(a1 + 448);
            }

            else
            {
              v186 = 0;
            }

            if (v186 <= *(a1 + 584))
            {
              v186 = *(a1 + 584);
            }

            *(a1 + 584) = v186;
          }

          if (v184 < v186)
          {
            v186 = v184;
          }

          *(a1 + 552) = v186;
          return;
        }

        v187 = *(a1 + 552);
        if (v187 >= v184)
        {
          if (v15 <= 1 && v187 == v184)
          {
            goto LABEL_452;
          }

LABEL_471:
          if (v184 >= v170 || v184 >= *(a1 + 536))
          {
            *(a1 + 568) = 0x8000000000000000;
            *(a1 + 576) = xmmword_273B94C40;
            *(a1 + 592) = vnegq_f64(0);
            *(a1 + 560) = 3;
            *(a1 + 552) = v184;
            return;
          }

          if (v15 != 2 && *(a1 + 264) > 0.0)
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
            {
              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v193, v194, v195, v196, v197, v198, v199, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/loss_based_bwe_v2.cc");
            }

            v15 = *(a1 + 576);
            v200 = *(a1 + 416);
            v201 = 0x7FFFFFFFFFFFFFFFLL;
            if (v200 != 0x7FFFFFFFFFFFFFFFLL && v15 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v201 = 0x8000000000000000;
              v202 = v15 == 0x8000000000000000 || v200 == 0x8000000000000000;
              v203 = v200 + v15;
              if (!v202)
              {
                v201 = v203;
              }
            }

            if ((*(a1 + 304) & 1) == 0)
            {
              goto LABEL_504;
            }

            v204 = llround(*(a1 + 264) * v15);
            if (v204 >= 60000000)
            {
              v204 = 60000000;
            }

            *(a1 + 568) = v201;
            *(a1 + 576) = v204;
            *(a1 + 584) = v184;
          }

          *(a1 + 592) = vnegq_f64(0);
          v192 = 2;
        }

        else
        {
          if (v15 == 3)
          {
            goto LABEL_471;
          }

LABEL_452:
          v188 = *(a1 + 280);
          if (v15 != 1)
          {
            goto LABEL_465;
          }

          if (!v188)
          {
            goto LABEL_465;
          }

          if (v188 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_465;
          }

          v189 = *(a1 + 600);
          if (v189 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_465;
          }

          v190 = v189 == 0x8000000000000000 || v188 == 0x8000000000000000;
          v191 = v189 + v188;
          if (v190)
          {
            v191 = 0x8000000000000000;
          }

          if (v191 >= *(a1 + 416))
          {
LABEL_465:
            if (v184 >= v170)
            {
              goto LABEL_471;
            }
          }

          else if (v184 >= v170 || *(a1 + 592) >= v184)
          {
            goto LABEL_471;
          }

          if (v184 >= *(a1 + 536))
          {
            goto LABEL_471;
          }

          if (v188 >= 1 && v184 > *(a1 + 592))
          {
            *(a1 + 592) = v184;
            *(a1 + 600) = *(a1 + 416);
          }

          v192 = v188 > 0;
        }

        *(a1 + 560) = v192;
        *(a1 + 552) = v184;
        v15 = *(a1 + 512);
        if (v15 - 0x7FFFFFFFFFFFFFFFLL <= 1)
        {
          v205 = *(a1 + 416);
          goto LABEL_501;
        }

LABEL_505:
        v207 = *(a1 + 240);
        if (v207 == 0x7FFFFFFFFFFFFFFFLL)
        {
          return;
        }

        v208 = v207 + v15;
        if (v207 != 0x8000000000000000)
        {
          v207 = v208;
        }

        v205 = *(a1 + 416);
        if (v207 >= v205)
        {
          return;
        }

LABEL_501:
        v206 = llround(*(a1 + 232) * *(a1 + 320));
        if (v206 <= 5000)
        {
          v206 = 5000;
        }

        *(a1 + 520) = v206;
        *(a1 + 512) = v205;
        return;
      }
    }

LABEL_504:
    __break(1u);
    goto LABEL_505;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::ToString(a4, __p);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v155, v156, v157, v158, v159, v160, v161, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/loss_based_bwe_v2.cc");
    if (SHIBYTE(v218) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t webrtc::FieldTrialList<double>::~FieldTrialList(uint64_t a1)
{
  *a1 = &unk_288295E30;
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

void webrtc::LossBasedBweV2::GetDerivatives(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 336);
  v3 = *(a1 + 344);
  if (v2 == v3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
LABEL_35:
      webrtc::webrtc_logging_impl::Log("\r\t\a\t", v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/loss_based_bwe_v2.cc");
    }
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      if (*(v2 + 40) != -1)
      {
        v14 = *(a1 + 328) + ~*(v2 + 40);
        v15 = *(a1 + 488);
        if (v14 >= (*(a1 + 496) - v15) >> 3 || (*(a1 + 304) & 1) == 0)
        {
          __break(1u);
          return;
        }

        v16 = *(v15 + 8 * v14);
        if (*(a1 + 272) == 1)
        {
          v18 = *(v2 + 24);
          v17 = *(v2 + 32);
          v19 = v17 / 1000.0;
          v21 = v18 == 0x7FFFFFFFFFFFFFFFLL || v17 == 0x8000000000000000;
          v22 = v18 - v17;
          if (v17 == 0x7FFFFFFFFFFFFFFFLL || v18 == 0x8000000000000000)
          {
            v24 = -9.22337204e18;
          }

          else
          {
            v24 = v22;
          }

          if (v21)
          {
            v24 = 9.22337204e18;
          }

          v25 = 1.0 - v13;
          v6 = v6 + v16 * (v19 / v13 + v24 / -1000.0 / (1.0 - v13));
          v11 = v19 / (v13 * v13);
          if (v17 == 0x7FFFFFFFFFFFFFFFLL || v18 == 0x8000000000000000)
          {
            v27 = -9.22337204e18;
          }

          else
          {
            v27 = v22;
          }

          if (v21)
          {
            v27 = 9.22337204e18;
          }

          v12 = v27 / 1000.0 / (v25 * v25);
        }

        else
        {
          v8 = *(v2 + 4);
          v9 = *(v2 + 8);
          v10 = 1.0 - v13;
          v6 = v6 + v16 * (v8 / v13 - v9 / (1.0 - v13));
          v11 = v8 / (v13 * v13);
          v12 = v9 / (v10 * v10);
        }

        v7 = v7 - v16 * (v11 + v12);
      }

      v2 += 48;
    }

    while (v2 != v3);
    if (v7 >= 0.0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_35;
    }
  }
}

void webrtc::anonymous namespace::GetLossProbability(uint64_t a1, uint64_t a2, double a3)
{
  v5 = a3 >= 0.0 && a3 <= 1.0;
  if (!v5 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t\a", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/loss_based_bwe_v2.cc");
  }

  if ((a2 + 0x7FFFFFFFFFFFFFFFLL) < 0xFFFFFFFFFFFFFFFELL)
  {
    if ((a1 + 0x7FFFFFFFFFFFFFFFLL) < 0xFFFFFFFFFFFFFFFELL)
    {
      return;
    }

    goto LABEL_14;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::ToString(a2, __p);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/loss_based_bwe_v2.cc");
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((a1 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
  {
LABEL_14:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::ToString(a1, __p);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/loss_based_bwe_v2.cc");
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void webrtc::FieldTrialList<double>::~FieldTrialList(uint64_t a1)
{
  *a1 = &unk_288295E30;
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::FieldTrialList<double>::Parse(uint64_t a1, uint64_t *a2)
{
  *(a1 + 58) = 1;
  if (a2[3])
  {
    v2 = a2;
    v3 = *(a2 + 23);
    if (v3 < 0)
    {
      v2 = *a2;
      v3 = a2[1];
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    else if (!*(a2 + 23))
    {
      goto LABEL_11;
    }

    v4 = 0;
    do
    {
      if (*(v2 + v4) == 124)
      {
        operator new();
      }

      ++v4;
    }

    while (v4 != v3);
LABEL_11:
    operator new();
  }

  *(a1 + 72) = *(a1 + 64);
  return 1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,webrtc::DataRate *,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v61 = *v8;
        v62 = v8[1];
        v63 = *(a2 - 1);
        if (v62 < *v8)
        {
          if (v63 >= v62)
          {
            *v8 = v62;
            v8[1] = v61;
            v123 = *(a2 - 1);
            if (v123 >= v61)
            {
              return result;
            }

            v8[1] = v123;
          }

          else
          {
            *v8 = v63;
          }

          *(a2 - 1) = v61;
          return result;
        }

        if (v63 >= v62)
        {
          return result;
        }

        v8[1] = v63;
        *(a2 - 1) = v62;
        v115 = v8[1];
        goto LABEL_226;
      }

      if (v9 != 4)
      {
        if (v9 != 5)
        {
          goto LABEL_10;
        }

        v64 = v8 + 1;
        v65 = v8[1];
        v67 = v8 + 2;
        v66 = v8[2];
        v68 = *v8;
        if (v65 >= *v8)
        {
          if (v66 >= v65)
          {
            v71 = *v8;
            v68 = v8[1];
            goto LABEL_217;
          }

          v69 = v8;
          v70 = v8 + 1;
          *v64 = v66;
          *v67 = v65;
          v71 = v66;
          result = v68;
          v72 = v65;
          if (v66 >= v68)
          {
            v71 = v68;
            v68 = v66;
            v66 = v65;
LABEL_217:
            v124 = v8[3];
            if (v124 >= v66)
            {
              v66 = v8[3];
            }

            else
            {
              v8[2] = v124;
              v8[3] = v66;
              if (v124 < v68)
              {
                *v64 = v124;
                *v67 = v68;
                if (v124 < v71)
                {
                  *v8 = v124;
                  v8[1] = v71;
                }
              }
            }

            v125 = *(a2 - 1);
            if (v125 >= v66)
            {
              return result;
            }

            v8[3] = v125;
            *(a2 - 1) = v66;
            v126 = v8[2];
            v115 = v8[3];
            if (v115 >= v126)
            {
              return result;
            }

            v8[2] = v115;
            v8[3] = v126;
            v127 = v8[1];
            if (v115 >= v127)
            {
              return result;
            }

            v8[1] = v115;
            v8[2] = v127;
LABEL_226:
            v128 = *v8;
            if (v115 < *v8)
            {
              *v8 = v115;
              v8[1] = v128;
            }

            return result;
          }
        }

        else if (v66 >= v65)
        {
          v69 = v8 + 1;
          v70 = v8 + 2;
          *v8 = v65;
          v8[1] = v68;
          v71 = v65;
          result = v66;
          v72 = v68;
          if (v66 >= v68)
          {
            v71 = v65;
            goto LABEL_217;
          }
        }

        else
        {
          v69 = v8;
          v70 = v8 + 2;
          v71 = v8[2];
          result = v8[1];
          v72 = *v8;
        }

        *v69 = v66;
        *v70 = v68;
        v68 = result;
        v66 = v72;
        goto LABEL_217;
      }

      v19 = v8 + 1;
      v75 = v8[1];
      v40 = v8 + 2;
      v12 = v8[2];
      v76 = *v8;
      if (v75 >= *v8)
      {
        if (v12 >= v75)
        {
          goto LABEL_206;
        }

        *v19 = v12;
        *v40 = v75;
        v77 = v8;
        v78 = v8 + 1;
        result = v75;
        if (v12 >= v76)
        {
LABEL_195:
          v116 = *(a2 - 1);
          if (v116 >= v75)
          {
            return result;
          }

LABEL_207:
          *v40 = v116;
          *(a2 - 1) = v75;
          v120 = *v40;
          v121 = *v19;
          if (v120 < v121)
          {
            v7[1] = v120;
            v7[2] = v121;
            v122 = *v7;
            if (v120 < *v7)
            {
              *v7 = v120;
              v7[1] = v122;
            }
          }

          return result;
        }
      }

      else
      {
        v77 = v8;
        v78 = v8 + 2;
        result = *v8;
        if (v12 >= v75)
        {
          *v8 = v75;
          v8[1] = v76;
          v77 = v8 + 1;
          v78 = v8 + 2;
          result = v76;
          if (v12 >= v76)
          {
            goto LABEL_206;
          }
        }
      }

      *v77 = v12;
      *v78 = v76;
      v75 = result;
      goto LABEL_195;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v73 = *(a2 - 1);
      v74 = *v8;
      if (v73 < *v8)
      {
        *v8 = v73;
        *(a2 - 1) = v74;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v88 = (v9 - 2) >> 1;
        v89 = v88;
        do
        {
          if (v88 >= v89)
          {
            v90 = (2 * (v89 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
            v91 = &v8[v90];
            if (2 * (v89 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v9)
            {
              v92 = *v91;
              v94 = &v8[v89];
              v95 = *v94;
              if (*v91 >= *v94)
              {
                goto LABEL_166;
              }
            }

            else
            {
              v92 = v91[1];
              v93 = *v91 < v92;
              if (*v91 > v92)
              {
                v92 = *v91;
              }

              if (v93)
              {
                ++v91;
                v90 = 2 * (v89 & 0x1FFFFFFFFFFFFFFFLL) + 2;
              }

              v94 = &v8[v89];
              v95 = *v94;
              if (v92 >= *v94)
              {
LABEL_166:
                while (1)
                {
                  *v94 = v92;
                  v94 = v91;
                  if (v88 < v90)
                  {
                    break;
                  }

                  v96 = (2 * (v90 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                  v91 = &v8[v96];
                  v90 = 2 * v90 + 2;
                  if (v90 < v9)
                  {
                    v92 = *v91;
                    result = v91[1];
                    if (*v91 <= result)
                    {
                      v92 = v91[1];
                    }

                    if (*v91 >= result)
                    {
                      v90 = v96;
                    }

                    else
                    {
                      ++v91;
                    }

                    if (v92 < v95)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v92 = *v91;
                    v90 = v96;
                    if (*v91 < v95)
                    {
                      break;
                    }
                  }
                }

                *v94 = v95;
              }
            }
          }

          v93 = v89-- <= 0;
        }

        while (!v93);
        do
        {
          v97 = 0;
          v98 = *v8;
          v99 = (v9 - 2) >> 1;
          v100 = v8;
          do
          {
            while (1)
            {
              v107 = &v100[v97];
              v106 = v107 + 1;
              v108 = (2 * v97) | 1;
              v97 = 2 * v97 + 2;
              if (v97 < v9)
              {
                break;
              }

              v97 = v108;
              *v100 = *v106;
              v100 = v107 + 1;
              if (v108 > v99)
              {
                goto LABEL_181;
              }
            }

            v103 = v107[2];
            v102 = v107 + 2;
            v101 = v103;
            v104 = *(v102 - 1);
            v105 = v104 < v103;
            if (v104 > v103)
            {
              v101 = *(v102 - 1);
            }

            if (v105)
            {
              v106 = v102;
            }

            else
            {
              v97 = v108;
            }

            *v100 = v101;
            v100 = v106;
          }

          while (v97 <= v99);
LABEL_181:
          if (v106 == --a2)
          {
            *v106 = v98;
          }

          else
          {
            *v106 = *a2;
            *a2 = v98;
            v109 = (v106 - v8 + 8) >> 3;
            v93 = v109 < 2;
            v110 = v109 - 2;
            if (!v93)
            {
              v111 = v110 >> 1;
              v112 = &v8[v111];
              v113 = *v112;
              v114 = *v106;
              if (*v112 < *v106)
              {
                do
                {
                  *v106 = v113;
                  v106 = v112;
                  if (!v111)
                  {
                    break;
                  }

                  v111 = (v111 - 1) >> 1;
                  v112 = &v8[v111];
                  v113 = *v112;
                }

                while (*v112 < v114);
                *v106 = v114;
              }
            }
          }

          v93 = v9-- <= 2;
        }

        while (!v93);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    if (v9 < 0x81)
    {
      v15 = *v8;
      v16 = *v11;
      if (*v8 >= *v11)
      {
        if (v12 < v15)
        {
          *v8 = v12;
          *(a2 - 1) = v15;
          v18 = *v11;
          if (*v8 < *v11)
          {
            *v11 = *v8;
            *v8 = v18;
            --a3;
            v19 = v18;
            if (a4)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          }
        }
      }

      else
      {
        if (v12 < v15)
        {
          *v11 = v12;
          goto LABEL_37;
        }

        *v11 = v15;
        *v8 = v16;
        v26 = *(a2 - 1);
        if (v26 < v16)
        {
          *v8 = v26;
LABEL_37:
          *(a2 - 1) = v16;
        }
      }

      --a3;
      v19 = *v8;
      if (a4)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v13 = *v10;
    v14 = *v8;
    if (*v10 >= *v8)
    {
      if (v12 < v13)
      {
        *v10 = v12;
        *(a2 - 1) = v13;
        v17 = *v8;
        if (*v10 < *v8)
        {
          *v8 = *v10;
          *v10 = v17;
        }
      }
    }

    else
    {
      if (v12 >= v13)
      {
        *v8 = v13;
        *v10 = v14;
        v20 = *(a2 - 1);
        if (v20 >= v14)
        {
          goto LABEL_29;
        }

        *v10 = v20;
      }

      else
      {
        *v8 = v12;
      }

      *(a2 - 1) = v14;
    }

LABEL_29:
    v21 = v10 - 1;
    v22 = *(v10 - 1);
    v23 = v8[1];
    v24 = *(a2 - 2);
    if (v22 >= v23)
    {
      if (v24 < v22)
      {
        *v21 = v24;
        *(a2 - 2) = v22;
        v25 = v8[1];
        if (*v21 < v25)
        {
          v8[1] = *v21;
          *v21 = v25;
        }
      }
    }

    else
    {
      if (v24 >= v22)
      {
        v8[1] = v22;
        *v21 = v23;
        v27 = *(a2 - 2);
        if (v27 >= v23)
        {
          goto LABEL_43;
        }

        *v21 = v27;
      }

      else
      {
        v8[1] = v24;
      }

      *(a2 - 2) = v23;
    }

LABEL_43:
    v30 = v10[1];
    v28 = v10 + 1;
    v29 = v30;
    v31 = v8[2];
    v32 = *(a2 - 3);
    if (v30 >= v31)
    {
      if (v32 < v29)
      {
        *v28 = v32;
        *(a2 - 3) = v29;
        v33 = v8[2];
        if (*v28 < v33)
        {
          v8[2] = *v28;
          *v28 = v33;
        }
      }
    }

    else
    {
      if (v32 >= v29)
      {
        v8[2] = v29;
        *v28 = v31;
        v34 = *(a2 - 3);
        if (v34 >= v31)
        {
          goto LABEL_52;
        }

        *v28 = v34;
      }

      else
      {
        v8[2] = v32;
      }

      *(a2 - 3) = v31;
    }

LABEL_52:
    v12 = *v11;
    v35 = *v21;
    v36 = *v28;
    if (*v11 < *v21)
    {
      if (v36 >= v12)
      {
        *v21 = v12;
        *v11 = v35;
        v21 = v11;
        v12 = v36;
        if (v36 >= v35)
        {
          v37 = *v8;
          *v8 = v35;
          *v11 = v37;
          --a3;
          v19 = *v8;
          if (a4)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }
      }

      goto LABEL_59;
    }

    if (v36 >= v12)
    {
      goto LABEL_60;
    }

    *v11 = v36;
    *v28 = v12;
    v28 = v11;
    v12 = v35;
    if (v36 >= v35)
    {
      v52 = *v8;
      *v8 = v36;
      *v11 = v52;
      --a3;
      v19 = *v8;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v39 = 0;
      do
      {
        v40 = &v8[v39 + 1];
        if (v40 == a2)
        {
          goto LABEL_205;
        }

        v12 = *v40;
        ++v39;
      }

      while (*v40 < v19);
      v40 = &v8[v39];
      v41 = a2;
      if (v39 != 1)
      {
        while (v41 != v8)
        {
          v42 = *--v41;
          if (v42 < v19)
          {
            goto LABEL_72;
          }
        }

        goto LABEL_205;
      }

      v41 = a2;
      do
      {
        if (v40 >= v41)
        {
          break;
        }

        v43 = *--v41;
      }

      while (v43 >= v19);
LABEL_72:
      if (v40 < v41)
      {
        v44 = *v41;
        v45 = &v8[v39];
        v46 = v41;
LABEL_74:
        *v45 = v44;
        *v46 = v12;
        v47 = v45 + 1;
        while (v47 != a2)
        {
          v48 = *v47++;
          v12 = v48;
          if (v48 >= v19)
          {
            v45 = v47 - 1;
            while (v46 != v8)
            {
              v49 = *--v46;
              v44 = v49;
              if (v49 < v19)
              {
                if (v45 < v46)
                {
                  goto LABEL_74;
                }

                v50 = v47 - 2;
                if (v47 - 2 != v8)
                {
                  goto LABEL_84;
                }

                goto LABEL_85;
              }
            }

            goto LABEL_205;
          }
        }

        goto LABEL_205;
      }

      v50 = v40 - 1;
      if (v40 - 1 != v8)
      {
LABEL_84:
        *v8 = *v50;
      }

LABEL_85:
      *v50 = v19;
      if (v40 < v41)
      {
LABEL_88:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,webrtc::DataRate *,false>(v7, v50, a3, a4 & 1);
        a4 = 0;
        v8 = v50 + 1;
        continue;
      }

      v51 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,webrtc::DataRate *>(v8, v50);
      v8 = v50 + 1;
      result = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,webrtc::DataRate *>(v50 + 1, a2);
      if (!result)
      {
        if (v51)
        {
          continue;
        }

        goto LABEL_88;
      }

      a2 = v50;
      if (v51)
      {
        return result;
      }

      goto LABEL_2;
    }

LABEL_59:
    *v21 = v36;
    *v28 = v35;
LABEL_60:
    v38 = *v8;
    *v8 = v12;
    *v11 = v38;
    --a3;
    v19 = *v8;
    if (a4)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v8 - 1) < v19)
    {
      goto LABEL_62;
    }

    if (v19 >= *(a2 - 1))
    {
      v54 = v8 + 1;
      do
      {
        v8 = v54;
        if (v54 >= a2)
        {
          break;
        }

        ++v54;
      }

      while (v19 >= *v8);
    }

    else
    {
      v40 = v8 + 1;
      do
      {
        if (v40 == a2)
        {
          goto LABEL_205;
        }

        v53 = *v40++;
      }

      while (v19 >= v53);
      v8 = v40 - 1;
    }

    v40 = a2;
    if (v8 < a2)
    {
      v40 = a2;
      while (v40 != v7)
      {
        v55 = *--v40;
        if (v19 >= v55)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_205;
    }

LABEL_103:
    if (v8 < v40)
    {
      v56 = *v8;
      v12 = *v40;
      do
      {
        *v8 = v12;
        v57 = v8 + 1;
        *v40 = v56;
        do
        {
          if (v57 == a2)
          {
            goto LABEL_205;
          }

          v58 = *v57++;
          v56 = v58;
        }

        while (v19 >= v58);
        v8 = v57 - 1;
        do
        {
          if (v40 == v7)
          {
            goto LABEL_205;
          }

          v59 = *--v40;
          v12 = v59;
        }

        while (v19 < v59);
      }

      while (v8 < v40);
    }

    v60 = v8 - 1;
    if (v8 - 1 != v7)
    {
      *v7 = *v60;
    }

    a4 = 0;
    *v60 = v19;
  }

  v19 = v8 + 1;
  v80 = v8 == a2 || v19 == a2;
  if ((a4 & 1) == 0)
  {
    if (v80)
    {
      return result;
    }

    v40 = 0;
    v117 = 8;
    while (1)
    {
      v12 = *(v40 + v8);
      v40 = v117;
      v118 = *v19;
      if (*v19 < v12)
      {
        break;
      }

LABEL_199:
      v117 = (v40 + 1);
      if (++v19 == a2)
      {
        return result;
      }
    }

    v119 = 0;
    while (1)
    {
      v19[v119] = v12;
      if (!&v40[v119])
      {
        break;
      }

      v12 = v19[v119 - 2];
      --v119;
      if (v118 >= v12)
      {
        v19[v119] = v118;
        goto LABEL_199;
      }
    }

LABEL_205:
    __break(1u);
LABEL_206:
    v75 = v12;
    v116 = *(a2 - 1);
    if (v116 >= v75)
    {
      return result;
    }

    goto LABEL_207;
  }

  if (!v80)
  {
    v81 = 8;
    v82 = v8;
    do
    {
      v84 = *v82;
      v82 = v19;
      v85 = *v19;
      if (v85 < v84)
      {
        v86 = v81;
        do
        {
          *(v8 + v86) = v84;
          v87 = v86 - 8;
          if (v86 == 8)
          {
            v83 = v8;
            goto LABEL_139;
          }

          v84 = *(v8 + v86 - 16);
          v86 -= 8;
        }

        while (v85 < v84);
        v83 = (v8 + v87);
LABEL_139:
        *v83 = v85;
      }

      v19 = v82 + 1;
      v81 += 8;
    }

    while (v82 + 1 != a2);
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,webrtc::DataRate *>(void *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v47 = *(a2 - 1);
          if (v47 >= v16)
          {
            return 1;
          }

          a1[1] = v47;
          *(a2 - 1) = v16;
          return 1;
        }

        else
        {
          *a1 = v18;
          *(a2 - 1) = v16;
          return 1;
        }
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v34 = *a1;
      v33 = a1[1];
      if (v33 >= *a1)
      {
        return 1;
      }

LABEL_66:
      *a1 = v33;
      a1[1] = v34;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
LABEL_57:
            a1[2] = v42;
            a1[3] = v6;
            if (v42 < v8)
            {
              *v4 = v42;
              *v7 = v8;
              if (v42 < v11)
              {
                *a1 = v42;
                a1[1] = v11;
              }
            }

LABEL_62:
            v48 = *(a2 - 1);
            if (v48 >= v6)
            {
              return 1;
            }

            a1[3] = v48;
            *(a2 - 1) = v6;
            v49 = a1[2];
            v33 = a1[3];
            if (v33 >= v49)
            {
              return 1;
            }

            a1[2] = v33;
            a1[3] = v49;
            v50 = a1[1];
            if (v33 >= v50)
            {
              return 1;
            }

            a1[1] = v33;
            a1[2] = v50;
            v34 = *a1;
            if (v33 >= *a1)
            {
              return 1;
            }

            goto LABEL_66;
          }

LABEL_61:
          v6 = v42;
          goto LABEL_62;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      v42 = a1[3];
      if (v42 < v13)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
        goto LABEL_49;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v43 = *(a2 - 1);
        if (v43 >= v26)
        {
          return 1;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
LABEL_49:
          v26 = v28;
          v43 = *(a2 - 1);
          if (v43 >= v26)
          {
            return 1;
          }

LABEL_50:
          *v27 = v43;
          *(a2 - 1) = v26;
          v44 = *v27;
          v45 = *v25;
          if (v44 >= v45)
          {
            return 1;
          }

          a1[1] = v44;
          a1[2] = v45;
          v46 = *a1;
          if (v44 >= *a1)
          {
            return 1;
          }

          *a1 = v44;
          a1[1] = v46;
          return 1;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v20 = a1 + 2;
    v19 = a1[2];
    v21 = a1[1];
    v22 = *a1;
    if (v21 >= *a1)
    {
      if (v19 >= v21)
      {
        goto LABEL_30;
      }

      a1[1] = v19;
      *v20 = v21;
      v23 = a1;
      v24 = a1 + 1;
    }

    else
    {
      v23 = a1;
      v24 = a1 + 2;
      if (v19 < v21)
      {
LABEL_29:
        *v23 = v19;
        *v24 = v22;
        goto LABEL_30;
      }

      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
    }

    if (v19 < v22)
    {
      goto LABEL_29;
    }

LABEL_30:
    v35 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v36 = 0;
    for (i = 24; ; i += 8)
    {
      v38 = *v35;
      v39 = *v20;
      if (*v35 < v39)
      {
        break;
      }

LABEL_33:
      v20 = v35++;
      if (v35 == a2)
      {
        return 1;
      }
    }

    v40 = i;
    do
    {
      *(a1 + v40) = v39;
      v41 = v40 - 8;
      if (v40 == 8)
      {
        *a1 = v38;
        if (++v36 != 8)
        {
          goto LABEL_33;
        }

        return v35 + 1 == a2;
      }

      v39 = *(a1 + v40 - 16);
      v40 -= 8;
    }

    while (v38 < v39);
    *(a1 + v41) = v38;
    if (++v36 != 8)
    {
      goto LABEL_33;
    }

    return v35 + 1 == a2;
  }

  v14 = *(a2 - 1);
  v15 = *a1;
  if (v14 >= *a1)
  {
    return 1;
  }

  *a1 = v14;
  *(a2 - 1) = v15;
  return 1;
}

uint64_t webrtc::rtcp::LossNotification::Create(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v12 = *a3;
  if ((*(*a1 + 16))(a1) + v12 <= a4)
  {
LABEL_4:
    (*(*a1 + 16))(a1);
    v13 = (*(*a1 + 16))(a1);
    *(a2 + *a3) = -113;
    *(a2 + *a3 + 1) = -50;
    *(a2 + *a3 + 2) = (v13 - 4) >> 10;
    *(a2 + *a3 + 3) = (v13 - 4) >> 2;
    v14 = *a3 + 4;
    *a3 = v14;
    v15 = (a2 + v14);
    *v15 = bswap32(*(a1 + 8));
    v15[1] = bswap32(*(a1 + 12));
    v16 = *a3 + 8;
    *a3 = v16;
    *(a2 + v16) = 1179930188;
    v17 = *a3 + 4;
    *a3 = v17;
    *(a2 + v17) = bswap32(*(a1 + 16)) >> 16;
    v18 = *a3 + 2;
    *a3 = v18;
    v19 = *(a1 + 18) - *(a1 + 16);
    v20 = *(a1 + 20);
    v21 = (a2 + v18);
    *v21 = v19 >> 7;
    v21[1] = v20 | (2 * v19);
    *a3 += 2;
    return 1;
  }

  else
  {
    while (*a3)
    {
      a6(a5, a2);
      *a3 = 0;
      if ((*(*a1 + 16))(a1) <= a4)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }
}

void webrtc::LossNotificationController::OnReceivedPacket(webrtc::LossNotificationController *this, unsigned int a2, uint64_t a3)
{
  if (*(this + 34) == 1)
  {
    v6 = *(this + 16);
    v7 = a2 >= v6;
    v8 = a2 - v6;
    if (!v8)
    {
      return;
    }

    v9 = v8 != 0 && v7;
    v10 = v8 == 0x8000 ? v9 : (v8 & 0x8000u) == 0;
    if (v10 != 1)
    {
      return;
    }
  }

  webrtc::LossNotificationController::DiscardOldInformation(this);
  if (*(this + 34) != 1)
  {
    *(this + 16) = a2;
    *(this + 34) = 1;
    if (a3)
    {
      v12 = 0;
      v13 = *(a3 + 8);
      if (*(this + 24) != 1)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_34:
    if (*(this + 36))
    {
      return;
    }

LABEL_35:
    *(this + 36) = 0;
    if (*(this + 40) == 1)
    {
      v22 = *(**(this + 1) + 16);
LABEL_41:

      v22();
      return;
    }

    goto LABEL_44;
  }

  v11 = *(this + 16) + 1;
  v12 = a2 != v11;
  *(this + 16) = a2;
  *(this + 34) = 1;
  if (!a3)
  {
    if (a2 != v11)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v13 = *(a3 + 8);
  if (*(this + 24) != 1)
  {
LABEL_17:
    *(this + 2) = v13;
    *(this + 24) = 1;
    if (*a3 == 1)
    {
      v15 = *(this + 7);
      v14 = (this + 56);
      std::__tree<sigslot::_signal_base_interface *>::destroy((v14 - 1), v15);
      *v14 = 0;
      v14[1] = 0;
      *(v14 - 1) = v14;
      *(v14 - 20) = 1;
      return;
    }

    v16 = *(a3 + 24);
    if (v16)
    {
      if (*(this + 7))
      {
        v17 = *(a3 + 16);
        v18 = &v17[v16];
        while (1)
        {
          v19 = *v17;
          v20 = (this + 56);
          v21 = *(this + 7);
          do
          {
            if (v21[4] >= v19)
            {
              v20 = v21;
            }

            v21 = v21[v21[4] < v19];
          }

          while (v21);
          if (v20 == (this + 56) || v19 < v20[4])
          {
            break;
          }

          if (++v17 == v18)
          {
            goto LABEL_30;
          }
        }
      }

      *(this + 36) = 0;
      if (*(this + 40) == 1)
      {
LABEL_40:
        v22 = *(**(this + 1) + 16);
        goto LABEL_41;
      }
    }

    else
    {
LABEL_30:
      *(this + 36) = 1;
      if (!v12)
      {
        return;
      }

      if (*(this + 40) == 1)
      {
        goto LABEL_40;
      }
    }

LABEL_44:
    v30 = ***this;

    v30();
    return;
  }

LABEL_16:
  if (v13 > *(this + 2))
  {
    goto LABEL_17;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/loss_notification_controller.cc");
  }
}

void webrtc::LossNotificationController::DiscardOldInformation(webrtc::LossNotificationController *this)
{
  v1 = *(this + 8);
  if (v1 >= 0x1771)
  {
    v3 = *(this + 6);
    v4 = v3;
    v5 = v1 - 3000;
    if (v5 >= 0)
    {
      do
      {
        v7 = v4[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v4[2];
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }

        v4 = v8;
      }

      while (v5-- > 1);
    }

    else
    {
      do
      {
        v11 = *v4;
        if (*v4)
        {
          do
          {
            v8 = v11;
            v11 = v11[1];
          }

          while (v11);
        }

        else
        {
          do
          {
            v8 = v4[2];
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (v9);
        }

        v4 = v8;
      }

      while (!__CFADD__(v5++, 1));
    }

    if (v3 != v8)
    {
      do
      {
        v13 = v3[1];
        v14 = v3;
        if (v13)
        {
          do
          {
            v15 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v15 = v14[2];
            v9 = *v15 == v14;
            v14 = v15;
          }

          while (!v9);
        }

        if (*(this + 6) == v3)
        {
          *(this + 6) = v15;
        }

        v12 = *(this + 7);
        --*(this + 8);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v12, v3);
        operator delete(v3);
        v3 = v15;
      }

      while (v15 != v8);
    }
  }
}

void webrtc::LossNotificationController::OnAssembledFrame(uint64_t a1, __int16 a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  webrtc::LossNotificationController::DiscardOldInformation(a1);
  if ((a4 & 1) == 0)
  {
    if (a6)
    {
      v12 = a5;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a1 + 56);
    if (a6)
    {
      if (v13)
      {
        v14 = &v12[a6];
        while (1)
        {
          v15 = *a5;
          v16 = a1 + 56;
          v17 = *(a1 + 56);
          do
          {
            if (*(v17 + 32) >= v15)
            {
              v16 = v17;
            }

            v17 = *(v17 + 8 * (*(v17 + 32) < v15));
          }

          while (v17);
          if (v16 == a1 + 56 || v15 < *(v16 + 32))
          {
            break;
          }

          if (++a5 == v14)
          {
            goto LABEL_15;
          }
        }
      }
    }

    else
    {
LABEL_15:
      *(a1 + 38) = a2;
      *(a1 + 40) = 1;
      if (!v13)
      {
LABEL_21:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v18 = v13;
          v19 = v13[4];
          if (v19 <= a3)
          {
            break;
          }

          v13 = *v18;
          if (!*v18)
          {
            goto LABEL_21;
          }
        }

        if (v19 >= a3)
        {
          break;
        }

        v13 = v18[1];
        if (!v13)
        {
          goto LABEL_21;
        }
      }
    }
  }
}

uint64_t webrtc::LoudnessHistogram::InsertNewestEntryAndUpdate(uint64_t this, int a2, int a3)
{
  v3 = *(this + 656);
  if (v3 < 1)
  {
    goto LABEL_17;
  }

  v4 = *(this + 660);
  if (a2 > 204)
  {
    if (v4 > 7)
    {
      goto LABEL_15;
    }

    v11 = v4 + 1;
  }

  else
  {
    if ((v4 - 1) <= 6)
    {
      if (*(this + 648) > 0)
      {
        v3 = *(this + 648);
      }

      v5 = *(this + 632);
      v6 = *(this + 640);
      do
      {
        v9 = *(v5 + 4 * (v3 - 1));
        v10 = *(v6 + 4 * (v3 - 1));
        *(this + 16 + 8 * v10) -= v9;
        *(this + 8) -= v9;
        v8 = __OFSUB__(v3--, 1);
        *(v5 + 4 * v3) = 0;
        if ((v3 < 0) ^ v8 | (v3 == 0))
        {
          v3 = *(this + 656);
        }

        v7 = *(this + 660);
        v8 = __OFSUB__(v7--, 1);
        *(this + 660) = v7;
      }

      while (!((v7 < 0) ^ v8 | (v7 == 0)));
    }

    v11 = 0;
    a2 = 0;
  }

  *(this + 660) = v11;
LABEL_15:
  *(*(this + 632) + 4 * *(this + 648)) = a2;
  *(*(this + 640) + 4 * *(this + 648)) = a3;
  v12 = *(this + 648) + 1;
  *(this + 648) = v12;
  if (v12 >= *(this + 656))
  {
    *(this + 648) = 0x100000000;
  }

LABEL_17:
  v13 = *this;
  if (*this > -2)
  {
    ++v13;
  }

  *this = v13;
  *(this + 8 * a3 + 16) += a2;
  *(this + 8) += a2;
  return this;
}

float webrtc::rnn_vad::ComputeAndPostProcessLpcCoefficients(float *a1, uint64_t a2, float *a3, double a4, int8x16_t a5, double a6, double a7, double a8, int8x16_t a9, float32x4_t a10)
{
  if (a2)
  {
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = &v13[a2];
  v15 = 0.0;
  a5.i64[0] = 0;
  if (a2)
  {
    v16 = v14 - a1 - 4;
    if (v16 < 4)
    {
      v17 = a1;
      do
      {
LABEL_10:
        v21 = *v17++;
        *a5.i32 = *a5.i32 + (v21 * v21);
      }

      while (v17 != v14);
      goto LABEL_11;
    }

    v18 = (v16 >> 2) + 1;
    v17 = &a1[v18 & 0x7FFFFFFFFFFFFFFELL];
    v19 = a1 + 1;
    v20 = v18 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      *a5.i32 = (*a5.i32 + (*(v19 - 1) * *(v19 - 1))) + (*v19 * *v19);
      v19 += 2;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x7FFFFFFFFFFFFFFELL))
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  if (v14 - 1 == v13)
  {
    goto LABEL_18;
  }

  v22 = *v13;
  v23 = v14 - a1 - 8;
  if (v23 < 4)
  {
    v15 = 0.0;
    v24 = a1;
    do
    {
LABEL_17:
      v31 = v24[1];
      ++v24;
      v15 = v15 + (v22 * v31);
      v22 = v31;
    }

    while (v24 != v14 - 1);
    goto LABEL_18;
  }

  v25 = (v23 >> 2) + 1;
  v24 = &a1[v25 & 0x7FFFFFFFFFFFFFFELL];
  v26 = a1 + 2;
  v15 = 0.0;
  v27 = v25 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v28 = *(v26 - 1);
    v29 = v22 * v28;
    v30 = *v26;
    v26 += 2;
    v22 = v30;
    v15 = (v15 + v29) + (v28 * v30);
    v27 -= 2;
  }

  while (v27);
  if (v25 != (v25 & 0x7FFFFFFFFFFFFFFELL))
  {
    goto LABEL_17;
  }

LABEL_18:
  v32 = 0.0;
  v33 = 0.0;
  if (v14 - 2 == v13)
  {
    goto LABEL_25;
  }

  v34 = v13 + 2;
  v35 = (a2 + 0x3FFFFFFFFFFFFFFDLL) & 0x3FFFFFFFFFFFFFFFLL;
  if (v35 < 7)
  {
    v36 = v13;
    do
    {
LABEL_24:
      v42 = *v36++;
      v43 = v42;
      v44 = *v34++;
      v33 = v33 + (v43 * v44);
    }

    while (v36 != v14 - 2);
    goto LABEL_25;
  }

  v37 = v35 + 1;
  v38 = (v35 + 1) & 0x7FFFFFFFFFFFFFF8;
  v34 += v38;
  v36 = &v13[v38];
  v39 = v13 + 4;
  v40 = v38;
  do
  {
    a10 = *(v39 - 2);
    v41 = vmulq_f32(*(v39 - 4), a10);
    a9 = vmulq_f32(*v39, *(v39 + 2));
    v33 = (((((((v33 + v41.f32[0]) + v41.f32[1]) + v41.f32[2]) + v41.f32[3]) + *a9.i32) + *&a9.i32[1]) + *&a9.i32[2]) + *&a9.i32[3];
    v39 += 8;
    v40 -= 8;
  }

  while (v40);
  if (v37 != v38)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (v14 - 3 == v13)
  {
    goto LABEL_32;
  }

  v45 = v13 + 3;
  v46 = (a2 + 0x3FFFFFFFFFFFFFFCLL) & 0x3FFFFFFFFFFFFFFFLL;
  if (v46 < 7)
  {
    v32 = 0.0;
    v47 = v13;
    do
    {
LABEL_31:
      v53 = *v47++;
      v54 = v53;
      v55 = *v45++;
      v32 = v32 + (v54 * v55);
    }

    while (v47 != v14 - 3);
    goto LABEL_32;
  }

  v48 = v46 + 1;
  v49 = (v46 + 1) & 0x7FFFFFFFFFFFFFF8;
  v45 += v49;
  v47 = &v13[v49];
  v50 = v13 + 4;
  v32 = 0.0;
  v51 = v49;
  do
  {
    a10 = *(v50 - 1);
    v52 = vmulq_f32(*(v50 - 4), a10);
    a9 = vmulq_f32(*v50, *(v50 + 3));
    v32 = (((((((v32 + v52.f32[0]) + v52.f32[1]) + v52.f32[2]) + v52.f32[3]) + *a9.i32) + *&a9.i32[1]) + *&a9.i32[2]) + *&a9.i32[3];
    v50 += 8;
    v51 -= 8;
  }

  while (v51);
  if (v48 != v49)
  {
    goto LABEL_31;
  }

LABEL_32:
  v56 = v14 - 4;
  if (v56 == v13)
  {
    v59 = 0.0;
    goto LABEL_40;
  }

  v57 = (v13 + 4);
  v58 = (a2 + 0x3FFFFFFFFFFFFFFBLL) & 0x3FFFFFFFFFFFFFFFLL;
  v59 = 0.0;
  if (v58 < 7)
  {
    v60 = v13 + 4;
    do
    {
LABEL_39:
      v64 = *v13++;
      v65 = v64;
      v66 = *v60++;
      v59 = v59 + (v65 * v66);
    }

    while (v13 != v56);
    goto LABEL_40;
  }

  v61 = v58 + 1;
  v62 = (v58 + 1) & 0x7FFFFFFFFFFFFFF8;
  v60 = &v57->f32[v62];
  v13 += v62;
  v63 = v62;
  do
  {
    a9 = vmulq_f32(v57[-1], *v57);
    a10 = vmulq_f32(*v57, v57[1]);
    v59 = (((((((v59 + *a9.i32) + *&a9.i32[1]) + *&a9.i32[2]) + *&a9.i32[3]) + a10.f32[0]) + a10.f32[1]) + a10.f32[2]) + a10.f32[3];
    v57 += 2;
    v63 -= 8;
  }

  while (v63);
  if (v61 != v62)
  {
    goto LABEL_39;
  }

LABEL_40:
  if (*a5.i32 == 0.0)
  {
    bzero(a3, 0x14uLL);
    return result;
  }

  a10.f32[0] = *a5.i32 * 1.0001;
  *a9.i32 = v15 + (v15 * -0.000064);
  v68 = 0.0;
  v10.i32[0] = 897988541;
  v69.i64[0] = 0x8000000080000000;
  v69.i64[1] = 0x8000000080000000;
  v70 = vbslq_s8(v69, v10, a10).u32[0];
  if (fabsf(*a5.i32 * 1.0001) >= 0.000001)
  {
    v71 = *a5.i32 * 1.0001;
  }

  else
  {
    v71 = *&v70;
  }

  v72 = (*a9.i32 + 0.0) / -v71;
  *v10.i32 = v71 + (-(v72 * v72) * v71);
  v73 = a10.f32[0] * 0.001;
  if (*v10.i32 < (a10.f32[0] * 0.001))
  {
    v75 = 0.0;
  }

  else
  {
    v74 = v33 + (v33 * -0.000256);
    v75 = 0.0;
    v11.i32[0] = 897988541;
    v76 = vbslq_s8(v69, v11, v10);
    if (fabsf(*v10.i32) >= 0.000001)
    {
      v76.i32[0] = v10.i32[0];
    }

    v68 = (((v72 * *a9.i32) + 0.0) + v74) / -*v76.i32;
    v72 = v72 + (v68 * v72);
    *v76.i32 = *v76.i32 + (-(v68 * v68) * *v76.i32);
    if (*v76.i32 >= v73)
    {
      v77 = v32 + (v32 * -0.000576);
      v78 = 0.0;
      v12.i32[0] = 897988541;
      v79.i64[0] = 0x8000000080000000;
      v79.i64[1] = 0x8000000080000000;
      v80 = vbslq_s8(v79, v12, v76).u32[0];
      if (fabsf(*v76.i32) >= 0.000001)
      {
        v81 = *v76.i32;
      }

      else
      {
        v81 = *&v80;
      }

      v75 = ((((v72 * v74) + 0.0) + (v68 * *a9.i32)) + v77) / -v81;
      v82 = v72 + (v75 * v68);
      v68 = v68 + (v75 * v72);
      *a5.i32 = v81 + (-(v75 * v75) * v81);
      if (*a5.i32 < v73)
      {
        v72 = v82;
      }

      else
      {
        v83 = ((((v82 * v77) + 0.0) + (v68 * v74)) + (v75 * *a9.i32)) + (v59 + (v59 * -0.001024));
        a9.i32[0] = 897988541;
        LODWORD(v84) = vbslq_s8(v79, a9, a5).u32[0];
        if (fabsf(*a5.i32) < 0.000001)
        {
          *a5.i32 = v84;
        }

        v85 = v83 / -*a5.i32;
        v72 = v82 + (v85 * v75);
        v75 = v75 + (v85 * v82);
        v68 = v68 + (v85 * v68);
        v78 = v85 * 0.6561;
      }

      goto LABEL_58;
    }
  }

  v78 = 0.0;
LABEL_58:
  v86 = v72 * 0.9;
  v87 = v68 * 0.81;
  v88 = v75 * 0.729;
  *a3 = v86 + 0.8;
  a3[1] = v87 + (v86 * 0.8);
  a3[2] = v88 + (v87 * 0.8);
  a3[3] = v78 + (v88 * 0.8);
  result = v78 * 0.8;
  a3[4] = v78 * 0.8;
  return result;
}

float *webrtc::rnn_vad::ComputeLpResidual(float *result, float *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = a2;
  v6 = *a2;
  *a4 = *a2;
  *(a4 + 4) = a2[1] + (v6 * *result);
  v9 = a2[2];
  if (a2 == a2 + 2)
  {
    *(a4 + 8) = v9;
    v7 = a2[3];
    if (a2 != a2 + 3)
    {
      goto LABEL_8;
    }

LABEL_3:
    *(a4 + 12) = v7;
    v8 = a2[4];
    if (a2 != a2 + 4)
    {
      goto LABEL_9;
    }

LABEL_4:
    *(a4 + 16) = v8;
    if (a5 <= 5)
    {
      return result;
    }

    goto LABEL_10;
  }

  *(a4 + 8) = (v9 + (a2[1] * *result)) + (*a2 * result[1]);
  v7 = a2[3];
  if (a2 == a2 + 3)
  {
    goto LABEL_3;
  }

LABEL_8:
  *(a4 + 12) = ((v7 + (a2[2] * *result)) + (a2[1] * result[1])) + (*a2 * result[2]);
  v8 = a2[4];
  if (a2 == a2 + 4)
  {
    goto LABEL_4;
  }

LABEL_9:
  *(a4 + 16) = (((v8 + (a2[3] * *result)) + (a2[2] * result[1])) + (a2[1] * result[2])) + (*a2 * result[3]);
  if (a5 <= 5)
  {
    return result;
  }

LABEL_10:
  v10 = a5 - 5;
  if (a5 - 5 <= 3)
  {
    v11 = 5;
LABEL_12:
    v12 = a5 - v11;
    v13 = v11;
    v14 = (a4 + 4 * v11);
    v15 = &a2[v13];
    v16 = v5 + 2;
    v17 = v5 + 2;
    do
    {
      v18 = *v15++;
      v19 = v18 + (v16[2] * *result);
      v20 = v17[1];
      ++v17;
      *v14++ = (((v19 + (v20 * result[1])) + (*v16 * result[2])) + (*(v16 - 1) * result[3])) + (*(v16 - 2) * result[4]);
      v16 = v17;
      --v12;
    }

    while (v12);
    return result;
  }

  v21 = a4 + 4 * a5;
  v23 = a4 < result && v21 > result;
  v24 = v21 <= a2 || a4 + 20 >= &a2[a5];
  v11 = 5;
  if (!v24)
  {
    goto LABEL_12;
  }

  if (v23)
  {
    goto LABEL_12;
  }

  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL) + 5;
  v5 = &a2[v10 & 0xFFFFFFFFFFFFFFFCLL];
  v25 = result;
  v26 = vld1q_dup_f32(v25++);
  v27 = vld1q_dup_f32(v25);
  v28 = result + 2;
  v29 = vld1q_dup_f32(v28);
  v30 = result + 3;
  v31 = vld1q_dup_f32(v30);
  v32 = result + 4;
  v33 = vld1q_dup_f32(v32);
  v34 = (a4 + 20);
  v35 = a2 + 3;
  v36 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    *v34++ = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(*(v35 + 2), v26, *(v35 + 1)), v27, *v35), v29, *(v35 - 1)), v31, *(v35 - 2)), v33, *(v35 - 3));
    v35 += 4;
    v36 -= 4;
  }

  while (v36);
  if (v10 != (v10 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

  return result;
}

void webrtc::anonymous namespace::MacIfAddrsConverter::~MacIfAddrsConverter(webrtc::_anonymous_namespace_::MacIfAddrsConverter *this)
{
  v1 = *(this + 1);
  *this = &unk_288295E98;
  *(this + 1) = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_288295E98;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::MacIfAddrsConverter::ConvertNativeAttributesToIPAttributes(webrtc::_anonymous_namespace_::MacIfAddrsConverter *this, const ifaddrs *a2, int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(*(this + 1) + 8);
  if (v3 < 0)
  {
    return 0;
  }

  ifa_addr = a2->ifa_addr;
  ifa_name = a2->ifa_name;
  v17 = 0;
  memset(&__dst[8], 0, 272);
  strncpy(__dst, ifa_name, 0xFuLL);
  memcpy(&__dst[16], ifa_addr, ifa_addr->sa_len);
  if (ioctl(v3, 0xC1206949uLL, __dst) < 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      __error();
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/mac_ifaddrs_converter.cc");
    }

    return 0;
  }

  v7 = __dst[16];
  if ((__dst[16] & 0xF) != 0)
  {
    return 0;
  }

  if (__dst[16] < 0)
  {
    *a3 |= 1u;
  }

  if ((v7 & 0x10) != 0)
  {
    *a3 |= 2u;
  }

  return 1;
}

void webrtc::anonymous namespace::IPv6AttributesGetter::~IPv6AttributesGetter(webrtc::_anonymous_namespace_::IPv6AttributesGetter *this)
{
  *this = &unk_288295EC8;
  if ((*(this + 2) & 0x80000000) == 0)
  {
    close(*(this + 2));
  }
}

{
  *this = &unk_288295EC8;
  if ((*(this + 2) & 0x80000000) == 0)
  {
    close(*(this + 2));
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t absl::EqualsIgnoreCase(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 == a4)
  {
    if (!a2)
    {
      return 1;
    }

    while (1)
    {
      v6 = *a1++;
      v5 = v6;
      v8 = *a3++;
      v7 = v8;
      if (v5 != v8)
      {
        if ((v5 - 65) < 0x1A)
        {
          LOBYTE(v5) = v5 + 32;
        }

        if ((v7 - 65) < 0x1A)
        {
          LOBYTE(v7) = v7 + 32;
        }

        if (v5 != v7)
        {
          break;
        }
      }

      if (!--a2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t absl::StartsWithIgnoreCase(unsigned __int8 *a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a2 < a4)
  {
    return 0;
  }

  if (a4)
  {
    while (1)
    {
      v6 = *a1++;
      v5 = v6;
      v8 = *a3++;
      v7 = v8;
      if (v5 != v8)
      {
        if ((v5 - 65) < 0x1A)
        {
          LOBYTE(v5) = v5 + 32;
        }

        if ((v7 - 65) < 0x1A)
        {
          LOBYTE(v7) = v7 + 32;
        }

        if (v5 != v7)
        {
          break;
        }
      }

      if (!--a4)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t webrtc::MatchedFilter::MatchedFilter(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, float a9, float a10, float a11, float a12)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a7 * a4;
  if (a5 * a4)
  {
    if (!((a5 * a4) >> 62))
    {
      operator new();
    }

    goto LABEL_31;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (a6)
  {
    if ((a6 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 56) = 0u;
  v13 = (a1 + 56);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 113) = 0u;
  *(a1 + 168) = -1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 204) = a9;
  *(a1 + 208) = a10;
  *(a1 + 212) = a11;
  *(a1 + 216) = a12;
  *(a1 + 220) = a8;
  if (a8)
  {
    if ((*(a1 + 16) * a5) >= 4)
    {
      operator new();
    }

    v14 = *v13;
    if (*v13)
    {
      v15 = *(a1 + 64);
      v16 = *v13;
      if (v15 != v14)
      {
        v17 = *(a1 + 64);
        do
        {
          v19 = *(v17 - 3);
          v17 -= 24;
          v18 = v19;
          if (v19)
          {
            *(v15 - 2) = v18;
            operator delete(v18);
          }

          v15 = v17;
        }

        while (v17 != v14);
        v16 = *v13;
      }

      *(a1 + 64) = v14;
      operator delete(v16);
    }

    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    if ((*(a1 + 16) * a5) >= 4)
    {
      operator new();
    }

    v20 = *(a1 + 80);
    if (v20)
    {
      *(a1 + 88) = v20;
      operator delete(v20);
    }

    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    v21 = *(a1 + 16) * a5;
    if (v21)
    {
      if (!(v21 >> 62))
      {
        operator new();
      }

LABEL_31:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v23 = *(a1 + 104);
    if (v23)
    {
      *(a1 + 112) = v23;
      operator delete(v23);
    }

    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  return a1;
}

void webrtc::MatchedFilter::~MatchedFilter(webrtc::MatchedFilter *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    v6 = *(this + 8);
    v7 = *(this + 7);
    if (v6 != v5)
    {
      v8 = *(this + 8);
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v6 - 16) = v9;
          operator delete(v9);
        }

        v6 = v8;
      }

      while (v8 != v5);
      v7 = *(this + 7);
    }

    *(this + 8) = v5;
    operator delete(v7);
  }

  v11 = *(this + 4);
  if (v11)
  {
    v12 = *(this + 5);
    v13 = *(this + 4);
    if (v12 != v11)
    {
      v14 = *(this + 5);
      do
      {
        v16 = *(v14 - 24);
        v14 -= 24;
        v15 = v16;
        if (v16)
        {
          *(v12 - 16) = v15;
          operator delete(v15);
        }

        v12 = v14;
      }

      while (v14 != v11);
      v13 = *(this + 4);
    }

    *(this + 5) = v11;
    operator delete(v13);
  }
}

void webrtc::MatchedFilter::Update(uint64_t a1, uint64_t a2, float32x4_t *a3, unint64_t a4, int a5, float a6)
{
  v12 = a1;
  v13 = 208;
  if (a5)
  {
    v13 = 212;
  }

  v15 = a1 + 32;
  v14 = *(a1 + 32);
  v16 = *(v15 + 8) - v14;
  if (!v16)
  {
    goto LABEL_190;
  }

  v17 = a2;
  v18 = v16 >> 3;
  if (!a4)
  {
    v20 = 0.0;
    goto LABEL_13;
  }

  if (a4 <= 7)
  {
    v19 = 0;
    v20 = 0.0;
LABEL_11:
    v25 = a4 - v19;
    v26 = &a3->f32[v19];
    do
    {
      v27 = *v26++;
      v20 = v20 + (v27 * v27);
      --v25;
    }

    while (v25);
    goto LABEL_13;
  }

  v19 = a4 & 0xFFFFFFFFFFFFFFF8;
  v21 = a3 + 1;
  v20 = 0.0;
  v22 = a4 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v23 = vmulq_f32(v21[-1], v21[-1]);
    v24 = vmulq_f32(*v21, *v21);
    v20 = (((((((v20 + v23.f32[0]) + v23.f32[1]) + v23.f32[2]) + v23.f32[3]) + v24.f32[0]) + v24.f32[1]) + v24.f32[2]) + v24.f32[3];
    v21 += 2;
    v22 -= 8;
  }

  while (v22);
  if (a4 != v19)
  {
    goto LABEL_11;
  }

LABEL_13:
  v8 = *v14;
  v28 = v14[1];
  v29 = 0xAAAAAAAAAAAAAAABLL * v18;
  v30 = *(v12 + 160);
  if (v30 == 1)
  {
    LOBYTE(v30) = 0;
    *(v12 + 160) = 0;
    v31 = *(v12 + 144);
    if (v31 != 1)
    {
      goto LABEL_15;
    }

LABEL_18:
    LOBYTE(v31) = 0;
    *(v12 + 144) = 0;
    if (v29 < 1)
    {
      return;
    }

    goto LABEL_19;
  }

  v31 = *(v12 + 144);
  if (v31 == 1)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v29 < 1)
  {
    return;
  }

LABEL_19:
  v169 = v30;
  v167 = v31;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v6 = 0;
  v10 = 0;
  v9 = 0;
  v35 = *(v12 + 204);
  v36 = *(v12 + v13);
  a6 = v35 * ((v28 - v8) >> 2);
  v37 = v35 * a6;
  if (a4)
  {
    v38 = a3;
  }

  else
  {
    v38 = 0;
  }

  a3 = (v29 & 0x7FFFFFFF);
  v39 = a4 & 0xFFFFFFFFFFFFFFE0;
  v7 = a4 & 0x1C;
  v40 = *(v12 + 220);
  v168 = a4 & 0xFFFFFFFFFFFFFFF8;
  v16 = &v38[4];
  v164 = v7;
  v166 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  v165 = -(a4 & 0xFFFFFFFFFFFFFFFCLL);
  v170 = -1;
  v171 = a4 & 0xFFFFFFFFFFFFFFE0;
  v41 = v20;
  v176 = v14;
  v177 = v12;
  v175 = v29;
  v172 = a3;
  v173 = a4;
  v178 = v40;
  do
  {
    if (v40)
    {
      v13 = v32 == *(v12 + 168);
    }

    else
    {
      v13 = 0;
    }

    if (v32 == v29)
    {
      goto LABEL_190;
    }

    v183 = v10;
    v184 = v6;
    v185 = v9;
    v42 = *(v17 + 16) - *(v17 + 8);
    if (v42)
    {
      v43 = *(v17 + 8);
    }

    else
    {
      v43 = 0;
    }

    v7 = *(v12 + 16);
    v44 = v42 >> 2;
    v45 = (v33 + *(v17 + 36) + v7 - 1) % (v42 >> 2);
    v46 = &v14[3 * v32];
    v47 = *v46;
    v48 = v46[1] - *v46;
    v49 = v48 >> 2;
    if (v48)
    {
      v50 = v47;
    }

    else
    {
      v50 = 0;
    }

    v51 = *(v12 + 80);
    v52 = *(v12 + 88);
    v53 = v52 - v51;
    if (v52 == v51)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v12 + 80);
    }

    v182 = *(v12 + 80);
    v181 = *(v12 + 88);
    if (v13)
    {
      if (v53 >= 1)
      {
        v54 = v32;
        v179 = v52 - v51;
        v180 = v33;
        v55 = v34;
        bzero(v11, v53);
        v53 = v179;
        v33 = v180;
        v34 = v55;
        v39 = v171;
        a3 = v172;
        v32 = v54;
        v29 = v175;
        v14 = v176;
        a4 = v173;
        v17 = a2;
        v12 = v177;
      }

      LOBYTE(v56) = 0;
      if (a4)
      {
        v57 = 0;
        v58 = v44 - 1;
        a6 = 0.0;
        v40 = v178;
        do
        {
          v59 = 0.0;
          v60 = 0.0;
          if (v49)
          {
            v61 = 0;
            v8 = v50;
            v62 = 1;
            v63 = v49;
            v64 = v45;
            do
            {
              v65 = *(v43 + 4 * v64);
              v59 = v59 + (*v8 * v65);
              if (v64 < v58)
              {
                ++v64;
              }

              else
              {
                v64 = 0;
              }

              if ((v62 & 3) == 0)
              {
                v11->f32[v61 >> 32] = v11->f32[v61 >> 32] + ((v38->f32[v57] - v59) * (v38->f32[v57] - v59));
              }

              v60 = v60 + (v65 * v65);
              v61 += 0x40000000;
              ++v62;
              v8 += 4;
              --v63;
            }

            while (v63);
          }

          v66 = v38->f32[v57];
          v67 = v66 - v59;
          v68 = fabsf(v66);
          if (v60 > v37 && v68 < 32000.0)
          {
            if (v49)
            {
              v70 = v50;
              v71 = v49;
              v8 = v45;
              v72 = (v36 * v67) / v60;
              do
              {
                *v70 = *v70 + (v72 * *(v43 + 4 * v8));
                ++v70;
                if (v8 < v58)
                {
                  ++v8;
                }

                else
                {
                  v8 = 0;
                }

                --v71;
              }

              while (v71);
            }

            LOBYTE(v56) = 1;
          }

          a6 = a6 + (v67 * v67);
          if (v45)
          {
            v7 = v45;
          }

          else
          {
            v7 = v44;
          }

          v45 = v7 - 1;
          ++v57;
        }

        while (v57 != a4);
      }

      else
      {
        a6 = 0.0;
        v40 = v178;
      }
    }

    else
    {
      if (!a4)
      {
        LOBYTE(v56) = 0;
        a6 = 0.0;
        goto LABEL_93;
      }

      if (v49)
      {
        LOBYTE(v56) = 0;
        v73 = 0;
        v74 = v44 - 1;
        a6 = 0.0;
        do
        {
          v75 = 0;
          v76 = 0.0;
          v8 = v45;
          v77 = 0.0;
          do
          {
            v78 = *(v43 + 4 * v8);
            v76 = v76 + (v78 * v78);
            v77 = v77 + (v50->f32[v75] * v78);
            if (v8 < v74)
            {
              ++v8;
            }

            else
            {
              v8 = 0;
            }

            ++v75;
          }

          while (v49 != v75);
          v79 = v38->f32[v73];
          v80 = v79 - v77;
          v81 = fabsf(v79);
          if (v76 > v37 && v81 < 32000.0)
          {
            v83 = v50;
            v84 = v49;
            v8 = v45;
            v85 = (v36 * v80) / v76;
            do
            {
              *v83 = *v83 + (v85 * *(v43 + 4 * v8));
              ++v83;
              if (v8 < v74)
              {
                ++v8;
              }

              else
              {
                v8 = 0;
              }

              --v84;
            }

            while (v84);
            LOBYTE(v56) = 1;
          }

          a6 = a6 + (v80 * v80);
          if (v45)
          {
            v7 = v45;
          }

          else
          {
            v7 = v44;
          }

          v45 = v7 - 1;
          ++v73;
        }

        while (v73 != a4);
      }

      else if (v37 < 0.0)
      {
        if (a4 < 4)
        {
          LOBYTE(v56) = 0;
          v96 = 0;
          a6 = 0.0;
LABEL_144:
          v130 = a4 - v96;
          v131 = &v38->f32[v96];
          do
          {
            v132 = *v131++;
            v7 = fabsf(v132) < 32000.0;
            a6 = a6 + (v132 * v132);
            LOBYTE(v56) = v7 | v56;
            --v130;
          }

          while (v130);
          goto LABEL_93;
        }

        v103 = vdupq_n_s32(0x46FA0000u);
        if (a4 >= 0x20)
        {
          a6 = 0.0;
          v105 = 0uLL;
          v106 = v39;
          v107 = v38 + 4;
          v108 = 0uLL;
          do
          {
            v110 = v107[-2];
            v109 = v107[-1];
            v112 = v107[-4];
            v111 = v107[-3];
            v114 = v107[2];
            v113 = v107[3];
            v116 = *v107;
            v115 = v107[1];
            v107 += 8;
            v105 = vornq_s8(v105, vuzp1q_s8(vuzp1q_s16(vcgeq_f32(vabsq_f32(v112), v103), vcgeq_f32(vabsq_f32(v111), v103)), vuzp1q_s16(vcgeq_f32(vabsq_f32(v110), v103), vcgeq_f32(vabsq_f32(v109), v103))));
            v117 = vmulq_f32(v112, v112);
            v108 = vornq_s8(v108, vuzp1q_s8(vuzp1q_s16(vcgeq_f32(vabsq_f32(v116), v103), vcgeq_f32(vabsq_f32(v115), v103)), vuzp1q_s16(vcgeq_f32(vabsq_f32(v114), v103), vcgeq_f32(vabsq_f32(v113), v103))));
            v118 = vmulq_f32(v111, v111);
            v119 = vmulq_f32(v110, v110);
            v120 = vmulq_f32(v109, v109);
            v121 = vmulq_f32(v116, v116);
            v122 = vmulq_f32(v115, v115);
            v123 = vmulq_f32(v114, v114);
            v124 = vmulq_f32(v113, v113);
            a6 = (((((((((((((((((((((((((((((((a6 + v117.f32[0]) + v117.f32[1]) + v117.f32[2]) + v117.f32[3]) + v118.f32[0]) + v118.f32[1]) + v118.f32[2]) + v118.f32[3]) + v119.f32[0]) + v119.f32[1]) + v119.f32[2]) + v119.f32[3]) + v120.f32[0]) + v120.f32[1]) + v120.f32[2]) + v120.f32[3]) + v121.f32[0]) + v121.f32[1]) + v121.f32[2]) + v121.f32[3]) + v122.f32[0]) + v122.f32[1]) + v122.f32[2]) + v122.f32[3]) + v123.f32[0]) + v123.f32[1]) + v123.f32[2]) + v123.f32[3]) + v124.f32[0]) + v124.f32[1]) + v124.f32[2]) + v124.f32[3];
            v106 -= 32;
          }

          while (v106);
          LODWORD(v56) = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v108, v105), 7uLL))) & 1;
          if (a4 == v39)
          {
            goto LABEL_93;
          }

          v96 = v39;
          v104 = v39;
          v7 = v164;
          if (!v164)
          {
            goto LABEL_144;
          }
        }

        else
        {
          LODWORD(v56) = 0;
          v104 = 0;
          a6 = 0.0;
        }

        v125 = vdup_n_s16(v56);
        v126 = (v38 + 4 * v104);
        v127 = v165 + v104;
        do
        {
          v128 = *v126++;
          v129 = vmulq_f32(v128, v128);
          v125 = vorr_s8(v125, vmovn_s32(vmvnq_s8(vcgeq_f32(vabsq_f32(v128), v103))));
          a6 = (((a6 + v129.f32[0]) + v129.f32[1]) + v129.f32[2]) + v129.f32[3];
          v127 += 4;
        }

        while (v127);
        LOBYTE(v56) = vmaxv_u16(vcltz_s16(vshl_n_s16(v125, 0xFuLL))) & 1;
        v96 = v166;
        if (a4 != v166)
        {
          goto LABEL_144;
        }
      }

      else
      {
        if (a4 >= 8)
        {
          a6 = 0.0;
          v97 = v168;
          v98 = v38 + 1;
          do
          {
            v99 = vmulq_f32(v98[-1], v98[-1]);
            v100 = vmulq_f32(*v98, *v98);
            a6 = (((((((a6 + v99.f32[0]) + v99.f32[1]) + v99.f32[2]) + v99.f32[3]) + v100.f32[0]) + v100.f32[1]) + v100.f32[2]) + v100.f32[3];
            v98 += 2;
            v97 -= 8;
          }

          while (v97);
          v95 = v168;
          if (a4 == v168)
          {
            LOBYTE(v56) = 0;
            goto LABEL_93;
          }
        }

        else
        {
          v95 = 0;
          a6 = 0.0;
        }

        v56 = a4 - v95;
        v101 = &v38->f32[v95];
        do
        {
          v102 = *v101++;
          a6 = a6 + (v102 * v102);
          --v56;
        }

        while (v56);
      }
    }

LABEL_93:
    if (v49 < 2)
    {
      v16 = v33;
    }

    else
    {
      v86 = vmul_f32(*v50, *v50);
      v87 = v49 - 1;
      if (v49 - 1 < 3)
      {
        v88 = 0;
        v7 = 1;
      }

      else
      {
        v88 = 0;
        v8 = &v50[1];
        v89 = 2;
        v7 = 1;
        do
        {
          v90 = *v8;
          v8 += 8;
          v91 = vmul_f32(v90, v90);
          v92 = vcgt_f32(v91, v86);
          v86 = vbsl_s8(v92, v91, v86);
          if (v92.i8[0])
          {
            v88 = v89;
          }

          if (v92.i8[4])
          {
            v7 = v89 + 1;
          }

          v89 += 2;
        }

        while (v89 < v87);
      }

      if (v86.f32[1] > v86.f32[0])
      {
        v88 = v7;
        v86.f32[0] = v86.f32[1];
      }

      if ((v50->f32[v87] * v50->f32[v87]) <= v86.f32[0])
      {
        v87 = v88;
      }

      if (v87 < 3 || v87 >= v49 - 10)
      {
        v16 = v87 + v33;
      }

      else
      {
        v16 = v87 + v33;
        if ((v56 & (a6 < (v20 * *(v12 + 216)))) == 1 && a6 < v41)
        {
          v7 = v185;
          if ((v185 & 1) != 0 && (v183 | v184) == v16)
          {
            *(v12 + 152) = v16;
            *(v12 + 160) = v185;
            v170 = v34 - 1;
            v169 = 1;
          }

          else
          {
            *(v12 + 152) = v16;
            v169 = 1;
            *(v12 + 160) = 1;
            v170 = v32;
          }

          v41 = a6;
        }
      }
    }

    v6 = v16 & 0xFFFFFFFFFFFFFF00;
    v13 = *(v12 + 24);
    v33 += v13;
    v32 = (v32 + 1);
    ++v34;
    v9 = 1;
    v10 = v16;
  }

  while (v32 != a3);
  LODWORD(a3) = v170;
  if (v170 != -1)
  {
    if (v169)
    {
      v16 = *(v12 + 152);
      *(v12 + 128) = v16;
      *(v12 + 136) = v16;
      if ((v167 & 1) == 0)
      {
        *(v12 + 144) = 1;
      }

      if (v40 && *(v12 + 168) == v170)
      {
        a6 = 1.0;
        if (v20 <= 1.0)
        {
          if (*(v12 + 200) >= 50)
          {
            v7 = *(v12 + 56);
            v6 = v170;
            v9 = 0xAAAAAAAAAAAAAAABLL;
            v8 = 0xAAAAAAAAAAAAAAABLL * ((*(v12 + 64) - v7) >> 3);
            goto LABEL_171;
          }
        }

        else
        {
          v6 = v170;
          v7 = *(v12 + 56);
          v9 = 0xAAAAAAAAAAAAAAABLL;
          v8 = 0xAAAAAAAAAAAAAAABLL * ((*(v12 + 64) - v7) >> 3);
          if (v8 <= v170)
          {
            goto LABEL_190;
          }

          v133 = (v7 + 24 * v170);
          if (v133[1] == *v133)
          {
            v9 = 0;
          }

          else
          {
            v9 = *v133;
          }

          if (v181 != v182)
          {
            v10 = v53 >> 2;
            a6 = 1.0 / v20;
            if ((v53 >> 2) >= 8 && (v9 >= v11 + v53 || v11 >= v9 + v53))
            {
              goto LABEL_191;
            }

            v134 = 0;
LABEL_163:
            v135 = v10 - v134;
            v136 = v134;
            v137 = (v9 + v136 * 4);
            v138 = &v11->f32[v136];
            do
            {
              v139 = *v138++;
              v140 = a6 * v139;
              v141 = *v137 + (((a6 * v139) - *v137) * 0.015);
              if ((a6 * v139) >= *v137)
              {
                v140 = v141;
              }

              *v137++ = v140;
              --v135;
            }

            while (v135);
          }

          while (1)
          {
            v9 = *(v12 + 200);
            v10 = (v9 + 1);
            *(v12 + 200) = v10;
            if (v9 <= 48)
            {
              break;
            }

LABEL_171:
            if (v8 > v6)
            {
              v142 = (v7 + 24 * v6);
              v144 = *v142;
              v143 = v142[1];
              v145 = v143 - v144;
              if (v143 == v144)
              {
                v146 = 0;
              }

              else
              {
                v146 = v144;
              }

              v147 = v13 * v6;
              v148 = v16 - v147;
              v149 = v148 >> 2;
              if (v145 >> 2 < v148 >> 2)
              {
                v149 = v145 >> 2;
              }

              if (v149 >= 1)
              {
                v150 = v149 & 0x7FFFFFFF;
                v151 = v146 + 4 * v150;
                if (*(v151 - 4) <= 0.5)
                {
                  v152 = 0;
                  v153 = 3;
                  if (v150)
                  {
                    v148 = 3;
                  }

                  else
                  {
                    v148 = -1;
                  }

                  v154 = v151 - 8;
                  while (v150 + v152 > 1)
                  {
                    v155 = *(v154 + 4 * v152);
                    v153 -= 4;
                    --v152;
                    if (v155 > 0.5)
                    {
                      v148 = v153 + 4 * v150;
                      break;
                    }
                  }
                }
              }

              v16 = v148 + v147;
              break;
            }

LABEL_190:
            __break(1u);
LABEL_191:
            v134 = v10 & 0xFFFFFFFFFFFFFFF8;
            v156 = v11 + 1;
            v157 = (v9 + 16);
            v158 = vdupq_n_s32(0x3C75C28Fu);
            v159 = v10 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v160 = vmulq_n_f32(v156[-1], a6);
              v161 = vmulq_n_f32(*v156, a6);
              v162 = vbslq_s8(vcgtq_f32(*v157, v161), v161, vmlaq_f32(*v157, v158, vsubq_f32(v161, *v157)));
              v157[-1] = vbslq_s8(vcgtq_f32(v157[-1], v160), v160, vmlaq_f32(v157[-1], v158, vsubq_f32(v160, v157[-1])));
              *v157 = v162;
              v156 += 2;
              v157 += 2;
              v159 -= 8;
            }

            while (v159);
            if (v10 != v134)
            {
              goto LABEL_163;
            }
          }
        }

        *(v12 + 136) = v16;
      }

      *(v12 + 168) = a3;
    }

    else
    {
      v163 = std::__throw_bad_optional_access[abi:sn200100]();
      webrtc::MatchedFilter::LogFilterProperties(v163);
    }
  }
}